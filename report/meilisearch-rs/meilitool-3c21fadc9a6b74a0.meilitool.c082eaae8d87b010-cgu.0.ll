Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha414ff0c07f20a93E":bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !15, !align !569, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i64 32, i1 false)
  invoke fastcc void @_ZN10serde_core2de7Visitor10visit_some17he159bb55d43720d2E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.bx unwind label %bb.bw

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !720
  store i8 7, ptr %i.l, align 8, !noalias !720
  %i.dl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !720
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !720
  store i32 1, ptr %0, align 8, !alias.scope !720
  br label %bb.bv

bb.u:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !15, !align !569, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 32, i1 false)
  invoke fastcc void @_ZN10serde_core2de7Visitor20visit_newtype_struct17h931150f4315e60cdE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.bz unwind label %bb.by

bb.v:                                             ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.019.0.copyload = load i64, ptr %i.dp, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !726
  %i.dq = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.dq)
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.k, align 8, !noalias !726
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !726
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.019.0.copyload, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !726
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.dr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !726
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 0, ptr %i.ds, align 8, !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.dt = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.dt, label %bb.y, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i": ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  store ptr %i.du, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !748 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !749
  store i64 1, ptr %i.ds, align 8, !alias.scope !750, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !749
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.i, align 8, !noalias !749
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd0da1d48312768f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i)
          to label %.noexc.i unwind label %bb.ac, !noalias !726

.noexc.i:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !749
  %i.dv = load i32, ptr %i.j, align 8, !range !752, !noalias !749, !noundef !15
  %i.dw = trunc nuw i32 %i.dv to i1
  br i1 %i.dw, label %bb.x, label %.noexc9.i

bb.x:                                             ; preds = %.noexc.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !749, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !749
  br label %bb.z

bb.y:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i", %bb.v
  %i.dz = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef 0, ptr noundef nonnull align 1 @845, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.z unwind label %bb.ac, !noalias !726

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.5.0.ph.i = phi ptr [ %i.dz, %bb.y ], [ %i.dy, %bb.x ]
  store i32 1, ptr %0, align 8, !alias.scope !723, !noalias !753
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !723, !noalias !753
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k), !noalias !726
  br label %_ZN5serde7private2de7content17visit_content_seq17h925bfea8d6e16026E.exit

.noexc9.i:                                        ; preds = %.noexc.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !749, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !749
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k), !noalias !726
  %i.ec = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.ec, label %bb.ab, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %.noexc9.i
  %gepdiff = add nsw i64 %.idx.i, -32
  %i.ed = lshr exact i64 %gepdiff, 5
  %i.ee = add nuw nsw i64 %i.ed, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !754
  store i64 1, ptr %i.h, align 8, !noalias !754
  %i.ef = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ee, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !754
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !alias.scope !723, !noalias !753
  store i32 1, ptr %0, align 8, !alias.scope !723, !noalias !753
  br label %_ZN5serde7private2de7content17visit_content_seq17h925bfea8d6e16026E.exit

bb.ab:                                            ; preds = %.noexc9.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.eb, ptr %i.eh, align 4, !alias.scope !723, !noalias !753
  store i32 0, ptr %0, align 8, !alias.scope !723, !noalias !753
  br label %_ZN5serde7private2de7content17visit_content_seq17h925bfea8d6e16026E.exit

bb.ac:                                            ; preds = %bb.y, %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k)
          to label %common.resume unwind label %bb.ad, !noalias !726

bb.ad:                                            ; preds = %bb.ac
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !726
  unreachable

common.resume.sink.split:                         ; preds = %bb.by, %bb.bw
  %.sink = phi ptr [ %i.dk, %bb.bw ], [ %i.do, %bb.by ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ho, %bb.bw ], [ %i.hp, %bb.by ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #45
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.bn, %bb.bo, %.thread.i, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread.i ], [ %i.ei, %bb.ac ], [ %i.he, %bb.bn ], [ %i.he, %bb.bo ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN5serde7private2de7content17visit_content_seq17h925bfea8d6e16026E.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !726
  br label %bb.bv

bb.ae:                                            ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.020.0.copyload = load i64, ptr %i.ek, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 10 uses
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.322.0.copyload = load i64, ptr %.sroa.322.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.el = icmp ult i64 %.sroa.322.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.el)
  %.idx.i12 = shl nuw nsw i64 %.sroa.322.0.copyload, 6
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 %.idx.i12
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %.sroa.221.0.copyload, ptr %i.en, align 8, !noalias !760
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store ptr %.sroa.221.0.copyload, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !760
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.020.0.copyload, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !760
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.em, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !760
  store i8 22, ptr %i.g, align 8, !noalias !760
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  store i64 0, ptr %i.eo, align 8, !noalias !760
  %i.ep = icmp eq i64 %.sroa.322.0.copyload, 0
  br i1 %i.ep, label %.critedge.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i": ; preds = %bb.ae
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  %.sroa.61.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 64 ; 2 uses
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !760
  %.sroa.0.0.copyload14.i.i.i.i.i = load i8, ptr %.sroa.221.0.copyload, align 8, !noalias !762 ; 3 uses
  %.not.i.i.i.not.i.i = icmp eq i8 %.sroa.0.0.copyload14.i.i.i.i.i, 22
  br i1 %.not.i.i.i.not.i.i, label %.critedge.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 1
  store i64 1, ptr %i.eo, align 8, !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !776
  store i8 %.sroa.0.0.copyload14.i.i.i.i.i, ptr %i.e, align 8, !noalias !776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !776
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i64 32, i1 false), !noalias !760
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 1, !noalias !776 ; 2 uses
  %.sroa.61.0.copyload.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i, align 8, !noalias !776 ; 9 uses
  %.sroa.11.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !776 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !776 ; 3 uses
  switch i8 %.sroa.0.0.copyload14.i.i.i.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i" [
    i8 1, label %bb.af
    i8 4, label %bb.ah
    i8 12, label %bb.aj
    i8 13, label %bb.am
    i8 14, label %bb.ao
    i8 15, label %bb.ar
  ], !prof !777

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i", %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.ev = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
          to label %.loopexit.i.i unwind label %bb.bl, !noalias !760

bb.af:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.ew = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i, 0
  br i1 %i.ew, label %bb.as, label %bb.ag, !prof !16

bb.ag:                                            ; preds = %bb.af
  %i.ex = zext i8 %.sroa.5.0.copyload.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !778
  store i64 %i.ex, ptr %i.er, align 8, !noalias !778
  store i8 1, ptr %i.d, align 8, !noalias !778
  %i.ey = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @852, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.at, !noalias !778

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !778
  br label %bb.as

bb.ah:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.ez = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i, 0
  br i1 %i.ez, label %bb.as, label %bb.ai, !prof !16

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !778
  store i64 %.sroa.61.0.copyload.i.i.i.i, ptr %i.eq, align 8, !noalias !778
  store i8 1, ptr %i.c, align 8, !noalias !778
  %i.fa = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @852, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %bb.at, !noalias !778

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !778
  br label %bb.as

bb.aj:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.fb = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i to ptr ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i, 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.fc = load i64, ptr %i.fb, align 1
  %i.fd = icmp ne i64 %i.fc, 7957695015293251440
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i", label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !16

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ak, %bb.aj
  %i.fg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %.sroa.15.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @848, i64 noundef 1)
          to label %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.al, !noalias !785

bb.al:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.1.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i
  %.sroa.61.0.copyload.i.i.lcssa70.i.i = phi i64 [ %.sroa.61.0.copyload.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.61.0.copyload.i.i.1.i.i, %.sink.split.i.i.i.i.i.i.i.i.1.i.i ] ; 2 uses
  %.lcssa67.i.i = phi ptr [ %i.fb, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %.sink.split.i.i.i.i.i.i.i.i.1.i.i ]
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = icmp eq i64 %.sroa.61.0.copyload.i.i.lcssa70.i.i, 0
  br i1 %i.fi, label %.thread.i, label %.sink.split.i.i.i.i

"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ak
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.ak ], [ %i.fg, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fj = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i, 0
  br i1 %i.fj, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.sink.split.i"

bb.am:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.fk = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i to ptr ; 2 uses
  %.not.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i, 8
  br i1 %.not.i.i7.i.i.i.i.i.i.i.i, label %bb.an, label %.sink.split.i.i8.i.i.i.i.i.i.i.i, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = icmp ne i64 %i.fl, 7957695015293251440
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.as, label %.sink.split.i.i8.i.i.i.i.i.i.i.i, !prof !16

.sink.split.i.i8.i.i.i.i.i.i.i.i:                 ; preds = %bb.an, %bb.am
  %i.fp = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fk, i64 noundef %.sroa.11.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @848, i64 noundef 1)
          to label %bb.as unwind label %bb.at, !noalias !778

bb.ao:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.fq = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i to ptr ; 3 uses
  %i.fr = invoke fastcc noundef align 8 ptr @"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hbd9a62b39a9328d9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fq, i64 noundef %.sroa.15.0.copyload.i.i.i.i)
          to label %bb.aq unwind label %bb.ap, !noalias !788 ; 2 uses

bb.ap:                                            ; preds = %bb.ba, %bb.ao
  %.sroa.61.0.copyload.i.i.lcssa69.i.i = phi i64 [ %.sroa.61.0.copyload.i.i.i.i, %bb.ao ], [ %.sroa.61.0.copyload.i.i.1.i.i, %bb.ba ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.fq, %bb.ao ], [ %i.gh, %bb.ba ]
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = icmp eq i64 %.sroa.61.0.copyload.i.i.lcssa69.i.i, 0
  br i1 %i.ft, label %.thread.i, label %.sink.split.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fu = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i, 0
  br i1 %i.fu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.sink.split.i"

bb.ar:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i"
  %i.fv = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i to ptr
  %i.fw = invoke fastcc noundef align 8 ptr @"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hbd9a62b39a9328d9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.11.0.copyload.i.i.i.i)
          to label %bb.as unwind label %bb.at, !noalias !778

bb.as:                                            ; preds = %bb.ar, %.sink.split.i.i8.i.i.i.i.i.i.i.i, %bb.an, %.noexc5.i.i.i.i.i.i.i.i, %bb.ah, %.noexc.i.i.i.i.i.i.i.i, %bb.af
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.fw, %bb.ar ], [ null, %bb.an ], [ %i.fa, %.noexc5.i.i.i.i.i.i.i.i ], [ %i.ey, %.noexc.i.i.i.i.i.i.i.i ], [ null, %bb.ah ], [ null, %bb.af ], [ %i.fp, %.sink.split.i.i8.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i" unwind label %bb.bl, !noalias !760

bb.at:                                            ; preds = %bb.bj, %bb.bh, %.sink.split.i.i8.i.i.i.i.i.i.1.i.i, %bb.az, %bb.ar, %.sink.split.i.i8.i.i.i.i.i.i.i.i, %bb.ai, %bb.ag
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e) #44
          to label %.thread.i unwind label %bb.au, !noalias !776

bb.au:                                            ; preds = %bb.at
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !778
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.sink.split.i": ; preds = %bb.aq, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i"
  %.sink.i = phi ptr [ %i.fb, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.fq, %bb.aq ]
  %.sroa.0.1.i.i.i.i.i.i.i.ph.i = phi ptr [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.fr, %bb.aq ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i, i64 noundef %.sroa.61.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !778
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.sink.split.i", %bb.as, %bb.aq, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.fr, %bb.aq ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.as ], [ %.sroa.0.1.i.i.i.i.i.i.i.ph.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.sink.split.i" ] ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i, label %bb.av, label %.loopexit.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.ap, %bb.al
  %.sroa.61.0.copyload.i.i75.i.i = phi i64 [ %.sroa.61.0.copyload.i.i.lcssa70.i.i, %bb.al ], [ %.sroa.61.0.copyload.i.i.lcssa69.i.i, %bb.ap ]
  %.sink.i.i.i.i = phi ptr [ %.lcssa67.i.i, %bb.al ], [ %.lcssa.i.i, %bb.ap ]
  %.pn19.i.ph.i.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.al ], [ %i.fs, %bb.ap ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.i.i.i, i64 noundef %.sroa.61.0.copyload.i.i75.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !778
  br label %.thread.i

.loopexit.i.i:                                    ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i"
  %.sroa.917.0.ph.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.1.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i" ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i" ], [ %i.ev, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  br label %bb.bm

bb.av:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !791
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.g, align 8, !noalias !760 ; 2 uses
  store i8 22, ptr %i.g, align 8, !noalias !760
  %.not.i.i.i15.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i.i15.i.i, label %bb.ax, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit.i.i", !prof !122

bb.aw:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !792
  %i.fy = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17h3f45938cd93675c4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 8)
          to label %bb.bm unwind label %bb.bl, !noalias !760

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2732) #46
          to label %.noexc11.i unwind label %bb.bl, !noalias !760

.noexc11.i:                                       ; preds = %bb.ax
  unreachable

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit.i.i": ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i15, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !760
  store i8 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.b, align 8, !noalias !795
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd0da1d48312768f3E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc12.i unwind label %bb.bl, !noalias !760

.noexc12.i:                                       ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !795
  %i.fz = load i32, ptr %i.f, align 8, !range !752, !noalias !791, !noundef !15
  %i.ga = trunc nuw i32 %i.fz to i1
  br i1 %i.ga, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit._crit_edge.i.i", label %bb.ay

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit._crit_edge.i.i": ; preds = %.noexc12.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !791
  br label %bb.bm

bb.ay:                                            ; preds = %.noexc12.i
  %i.gb = load i32, ptr %i.es, align 4, !noalias !791, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !791
  %i.gc = icmp eq i64 %.sroa.322.0.copyload, 1
  br i1 %i.gc, label %"_ZN233_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h03e3888ce71adb28E.exit.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.1.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.1.i.i": ; preds = %bb.ay
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 128
  store ptr %i.gd, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !760
  %.sroa.0.0.copyload14.i.i.i.1.i.i = load i8, ptr %i.et, align 8, !noalias !804 ; 3 uses
  %.not.i.i.i.1.i.i = icmp eq i8 %.sroa.0.0.copyload14.i.i.i.1.i.i, 22
  br i1 %.not.i.i.i.1.i.i, label %"_ZN233_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h03e3888ce71adb28E.exit.i", label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.1.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 65
  store i64 2, ptr %i.eo, align 8, !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !792
  store i8 %.sroa.0.0.copyload14.i.i.i.1.i.i, ptr %i.e, align 8, !noalias !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.1.i.i, i64 31, i1 false), !noalias !792
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i64 32, i1 false), !noalias !760
  %.sroa.5.0.copyload.i.i.1.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 1, !noalias !792 ; 2 uses
  %.sroa.61.0.copyload.i.i.1.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i, align 8, !noalias !792 ; 9 uses
  %.sroa.11.0.copyload.i.i.1.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !792 ; 5 uses
  %.sroa.15.0.copyload.i.i.1.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !792 ; 3 uses
  switch i8 %.sroa.0.0.copyload14.i.i.i.1.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i" [
    i8 1, label %bb.bi
    i8 4, label %bb.bg
    i8 12, label %bb.be
    i8 13, label %bb.bc
    i8 14, label %bb.ba
    i8 15, label %bb.az
  ], !prof !777

bb.az:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gf = inttoptr i64 %.sroa.61.0.copyload.i.i.1.i.i to ptr
  %i.gg = invoke fastcc noundef align 8 ptr @"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hbd9a62b39a9328d9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %.sroa.11.0.copyload.i.i.1.i.i)
          to label %bb.bk unwind label %bb.at, !noalias !806

bb.ba:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gh = inttoptr i64 %.sroa.11.0.copyload.i.i.1.i.i to ptr ; 3 uses
  %i.gi = invoke fastcc noundef align 8 ptr @"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hbd9a62b39a9328d9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %.sroa.15.0.copyload.i.i.1.i.i)
          to label %bb.bb unwind label %bb.ap, !noalias !807 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gj = icmp eq i64 %.sroa.61.0.copyload.i.i.1.i.i, 0
  br i1 %i.gj, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.sink.split.i"

bb.bc:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gk = inttoptr i64 %.sroa.61.0.copyload.i.i.1.i.i to ptr ; 2 uses
  %.not.i.i7.i.i.i.i.i.i.1.i.i = icmp eq i64 %.sroa.11.0.copyload.i.i.1.i.i, 8
  br i1 %.not.i.i7.i.i.i.i.i.i.1.i.i, label %bb.bd, label %.sink.split.i.i8.i.i.i.i.i.i.1.i.i, !prof !16

bb.bd:                                            ; preds = %bb.bc
  %i.gl = load i64, ptr %i.gk, align 1
  %i.gm = icmp ne i64 %i.gl, 7957695015293251440
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.bk, label %.sink.split.i.i8.i.i.i.i.i.i.1.i.i, !prof !16

.sink.split.i.i8.i.i.i.i.i.i.1.i.i:               ; preds = %bb.bd, %bb.bc
  %i.gp = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gk, i64 noundef %.sroa.11.0.copyload.i.i.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @848, i64 noundef 1)
          to label %bb.bk unwind label %bb.at, !noalias !806

bb.be:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gq = inttoptr i64 %.sroa.11.0.copyload.i.i.1.i.i to ptr ; 4 uses
  %.not.i.i.i.i.i.i.i.i.1.i.i = icmp eq i64 %.sroa.15.0.copyload.i.i.1.i.i, 8
  br i1 %.not.i.i.i.i.i.i.i.i.1.i.i, label %bb.bf, label %.sink.split.i.i.i.i.i.i.i.i.1.i.i, !prof !16

bb.bf:                                            ; preds = %bb.be
  %i.gr = load i64, ptr %i.gq, align 1
  %i.gs = icmp ne i64 %i.gr, 7957695015293251440
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i", label %.sink.split.i.i.i.i.i.i.i.i.1.i.i, !prof !16

.sink.split.i.i.i.i.i.i.i.i.1.i.i:                ; preds = %bb.bf, %bb.be
  %i.gv = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gq, i64 noundef %.sroa.15.0.copyload.i.i.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @848, i64 noundef 1)
          to label %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i" unwind label %bb.al, !noalias !808

"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i": ; preds = %.sink.split.i.i.i.i.i.i.i.i.1.i.i, %bb.bf
  %.sroa.0.0.i.i6.i.i.i.i.i.i.1.i.i = phi ptr [ null, %bb.bf ], [ %i.gv, %.sink.split.i.i.i.i.i.i.i.i.1.i.i ] ; 2 uses
  %i.gw = icmp eq i64 %.sroa.61.0.copyload.i.i.1.i.i, 0
  br i1 %i.gw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.sink.split.i"

bb.bg:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gx = icmp eq i64 %.sroa.61.0.copyload.i.i.1.i.i, 0
  br i1 %i.gx, label %bb.bk, label %bb.bh, !prof !16

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !806
  store i64 %.sroa.61.0.copyload.i.i.1.i.i, ptr %i.eq, align 8, !noalias !806
  store i8 1, ptr %i.c, align 8, !noalias !806
  %i.gy = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @852, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc5.i.i.i.i.i.i.1.i.i unwind label %bb.at, !noalias !806

.noexc5.i.i.i.i.i.i.1.i.i:                        ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !806
  br label %bb.bk

bb.bi:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.1.i.i"
  %i.gz = icmp eq i8 %.sroa.5.0.copyload.i.i.1.i.i, 0
  br i1 %i.gz, label %bb.bk, label %bb.bj, !prof !16

bb.bj:                                            ; preds = %bb.bi
  %i.ha = zext i8 %.sroa.5.0.copyload.i.i.1.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !806
  store i64 %i.ha, ptr %i.er, align 8, !noalias !806
  store i8 1, ptr %i.d, align 8, !noalias !806
  %i.hb = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @852, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc.i.i.i.i.i.i.1.i.i unwind label %bb.at, !noalias !806

.noexc.i.i.i.i.i.i.1.i.i:                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !806
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc.i.i.i.i.i.i.1.i.i, %bb.bi, %.noexc5.i.i.i.i.i.i.1.i.i, %bb.bg, %.sink.split.i.i8.i.i.i.i.i.i.1.i.i, %bb.bd, %bb.az
  %.sroa.0.0.ph.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gg, %bb.az ], [ null, %bb.bd ], [ %i.gy, %.noexc5.i.i.i.i.i.i.1.i.i ], [ %i.hb, %.noexc.i.i.i.i.i.i.1.i.i ], [ null, %bb.bg ], [ null, %bb.bi ], [ %i.gp, %.sink.split.i.i8.i.i.i.i.i.i.1.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i" unwind label %bb.bl, !noalias !760

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.sink.split.i": ; preds = %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i", %bb.bb
  %.sink29.i = phi ptr [ %i.gh, %bb.bb ], [ %i.gq, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i" ]
  %.sroa.0.1.i.i.i.i.i.i.1.i.ph.i = phi ptr [ %i.gi, %bb.bb ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.1.i.i, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink29.i, i64 noundef %.sroa.61.0.copyload.i.i.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !806
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.sink.split.i", %bb.bk, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i", %bb.bb
  %.sroa.0.1.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gi, %bb.bb ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.1.i.i, %"_ZN238_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h77d4b37af11657e5E.exit.i.i.i.i.i.i.i.1.i.i" ], [ %.sroa.0.0.ph.i.i.i.i.i.i.1.i.i, %bb.bk ], [ %.sroa.0.1.i.i.i.i.i.i.1.i.ph.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.i.i.i.1.i.sink.split.i" ] ; 2 uses
  %.not11.i.i.i.1.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.1.i.i, null
  br i1 %.not11.i.i.i.1.i.i, label %bb.aw, label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i", %bb.ae
  %i.hc = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17he310008b26efb4f9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 8)
          to label %bb.bm unwind label %bb.bl, !noalias !760

bb.bl:                                            ; preds = %.critedge.i.i, %bb.bk, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit.i.i", %bb.ax, %bb.aw, %bb.as, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc2f907112bffc8beE.exit.thread.i.i.i.i.i"
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.bm:                                            ; preds = %.critedge.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit._crit_edge.i.i", %bb.aw, %.loopexit.i.i
  %.sroa.5.0.ph.i16 = phi ptr [ %i.hc, %.critedge.i.i ], [ %.pre.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hdd3a0d8f0d246a88E.exit._crit_edge.i.i" ], [ %.sroa.917.0.ph.i.i, %.loopexit.i.i ], [ %i.fy, %bb.aw ]
  store i32 1, ptr %0, align 8, !alias.scope !757, !noalias !809
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph.i16, ptr %.sroa.5.0..sroa_idx.i17, align 8, !alias.scope !757, !noalias !809
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.en)
          to label %bb.bp unwind label %bb.bn, !noalias !760

bb.bn:                                            ; preds = %bb.bm
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load i8, ptr %i.g, align 8, !range !625, !noalias !760, !noundef !15
  %i.hg = icmp eq i8 %i.hf, 22
  br i1 %i.hg, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g)
          to label %common.resume unwind label %bb.br, !noalias !760

bb.bp:                                            ; preds = %bb.bm
  %i.hh = load i8, ptr %i.g, align 8, !range !625, !noalias !760, !noundef !15
  %i.hi = icmp eq i8 %i.hh, 22
  br i1 %i.hi, label %_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g), !noalias !760
  br label %_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit

bb.br:                                            ; preds = %bb.bo
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !810
  unreachable

"_ZN233_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h03e3888ce71adb28E.exit.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.1.i.i", %bb.ay
  %i.hk = call fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h318e8eaaf6cf2148E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g), !noalias !760 ; 2 uses
  %.not.i = icmp eq ptr %i.hk, null
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %"_ZN233_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h03e3888ce71adb28E.exit.i"
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hk, ptr %i.hl, align 8, !alias.scope !757, !noalias !809
  store i32 1, ptr %0, align 8, !alias.scope !757, !noalias !809
  br label %_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit

bb.bt:                                            ; preds = %"_ZN233_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleAction$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h03e3888ce71adb28E.exit.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.gb, ptr %i.hm, align 4, !alias.scope !757, !noalias !809
  store i32 0, ptr %0, align 8, !alias.scope !757, !noalias !809
  br label %_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit

.thread.i:                                        ; preds = %bb.bl, %.sink.split.i.i.i.i, %bb.at, %bb.ap, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hd, %bb.bl ], [ %.pn19.i.ph.i.i.i.i, %.sink.split.i.i.i.i ], [ %i.fh, %bb.al ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %bb.at ], [ %i.fs, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h527133af2ebcf491E"(ptr noalias noundef align 8 dereferenceable(72) %i.g) #44
          to label %common.resume unwind label %bb.bu, !noalias !760

bb.bu:                                            ; preds = %.thread.i
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !760
  unreachable

_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit: ; preds = %bb.bp, %bb.bq, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bz, %bb.bx, %_ZN5serde7private2de7content17visit_content_map17hccc6e200fde4d304E.exit, %_ZN5serde7private2de7content17visit_content_seq17h925bfea8d6e16026E.exit, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.bw:                                            ; preds = %bb.s
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.bx:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dk, i64 noundef 32, i64 noundef 8) #45
  br label %bb.bv

bb.by:                                            ; preds = %bb.u
end_hunk_0
begin_hunk_1_@"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hda0fc8bbc0ce3abdE":bb.a
    i8 2, label %bb.az
  ]

default.unreachable:                              ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  switch i8 %i.dj, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit" [
    i8 22, label %bb.bb
    i8 18, label %.sink.split
    i8 21, label %bb.aw
  ], !prof !2227

bb.aw:                                            ; preds = %bb.av
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !8293, !noundef !15 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 144115188075855872
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.dl, 0
  br i1 %i.dn, label %.sink.split, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit", !prof !16

bb.ax:                                            ; preds = %bb.au
  switch i8 %i.dj, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit16" [
    i8 22, label %bb.bb
    i8 18, label %.sink.split
    i8 21, label %bb.ay
  ], !prof !2227

bb.ay:                                            ; preds = %bb.ax
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !8298, !noundef !15 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 144115188075855872
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %i.dp, 0
  br i1 %i.dr, label %.sink.split, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit16", !prof !16

bb.az:                                            ; preds = %bb.au
  switch i8 %i.dj, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit18" [
    i8 22, label %bb.bb
    i8 18, label %.sink.split
    i8 21, label %bb.ba
  ], !prof !2227

bb.ba:                                            ; preds = %bb.az
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !8303, !noundef !15 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 144115188075855872
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.sink.split, label %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit18", !prof !16

"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit": ; preds = %bb.aw, %bb.av
  %i.dw = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  br label %bb.bc

.sink.split:                                      ; preds = %bb.az, %bb.ba, %bb.ax, %bb.ay, %bb.av, %bb.aw
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.av, %bb.az, %bb.ax
  %.sink = phi i8 [ 2, %bb.az ], [ 0, %bb.av ], [ 1, %bb.ax ], [ %i.dh, %.sink.split ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.dx, align 1
  br label %bb.bd

bb.bc:                                            ; preds = %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit18", %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit16", %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit", %bb.at
  %.sroa.0.0.i17.sink = phi ptr [ %i.ea, %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit18" ], [ %i.dz, %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit16" ], [ %i.dw, %"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit" ], [ %i.db, %bb.at ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i17.sink, ptr %i.dy, align 8
  br label %bb.bd

"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit16": ; preds = %bb.ay, %bb.ax
  %i.dz = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  br label %bb.bc

"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E.exit18": ; preds = %bb.ba, %bb.az
  %i.ea = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  br label %bb.bc

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink31 = phi i8 [ 1, %bb.bc ], [ 0, %bb.bb ]
  store i8 %.sink31, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN174_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1a54ff5b3fc62e5cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h52df77dacf8c4f82E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit"
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit" ] ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.22.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.22.0.copyload ; 2 uses
  %i.h = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  br i1 %i.h, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit", label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17h1c991e4005274718E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %"_ZN4core3ptr287drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hf0c06988a0eb36ceE.exit" unwind label %bb.e, !inline_history !8308

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !8309, !inline_history !8312
  unreachable

"_ZN4core3ptr287drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hf0c06988a0eb36ceE.exit": ; preds = %bb.d
  resume { ptr, i32 } %i.i

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit": ; preds = %.noexc, %bb.c
  tail call void @"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17h1c991e4005274718E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !8313, !inline_history !8318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h52df77dacf8c4f82E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.k = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a26108068af3eeE.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17haa9bd09e69f6fe06E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 14 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.13.sroa.6 = alloca [72 x i8], align 8    ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 15 uses
  %i.v = alloca [72 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8322)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !8325, !noalias !8326, !nonnull !15, !noundef !15 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !8325, !noalias !8326, !nonnull !15, !noundef !15 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %.thread, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.z, align 8, !alias.scope !8325, !noalias !8326
  %.sroa.0.0.copyload13.i.i = load i8, ptr %i.aa, align 8, !noalias !8331 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload13.i.i, 22
  br i1 %.not.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !8319, !noalias !8332, !noundef !15
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !alias.scope !8319, !noalias !8332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8333
  store i8 %.sroa.0.0.copyload13.i.i, ptr %i.m, align 8, !noalias !8333
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, i64 31, i1 false), !noalias !8333
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !8333
  %i.ah = load i8, ptr %1, align 8, !range !625, !alias.scope !8334, !noalias !8332, !noundef !15
  %i.ai = icmp eq i8 %i.ah, 22
  br i1 %i.ai, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %1)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i" unwind label %bb.n, !noalias !8332

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i": ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !8332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !8333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8350)
  %i.aj = load i8, ptr %i.j, align 8, !range !446, !alias.scope !8352, !noalias !8353, !noundef !15
  switch i8 %i.aj, label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.thread20.i.i" [
    i8 12, label %bb.d
    i8 13, label %bb.i
    i8 14, label %bb.j
    i8 15, label %bb.k
  ], !prof !252

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.thread20.i.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i"
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29), !noalias !8333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8333
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread138"

bb.d:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !8352, !noalias !8353 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8352, !noalias !8353 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8352, !noalias !8353 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8357)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 30
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i) ]
  %i.am = load i128, ptr %.sroa.3.0.copyload.i.i.i.i.i, align 1
  %i.an = xor i128 %i.am, 140163137642481810540487027204030821156
  %i.ao = getelementptr i8, ptr %.sroa.3.0.copyload.i.i.i.i.i, i64 14
  %i.ap = load i128, ptr %i.ao, align 1
  %i.aq = xor i128 %i.ap, 134861724518854068863416560771000592754
  %i.ar = or i128 %i.an, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8, !alias.scope !8359, !noalias !8360
  %.sroa.3.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i, align 8, !alias.scope !8359, !noalias !8360
  %.sroa.4.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx7.i.i.i.i.i, align 8, !alias.scope !8359, !noalias !8360
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i"

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8361
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread"

bb.i:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i"
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !8352, !noalias !8353, !nonnull !15, !align !533, !noundef !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !8352, !noalias !8353, !noundef !15
  invoke fastcc void @"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbf6bff4b91110196E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az)
          to label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17haf63c05ef3de079eE.exit.i.i.i.i.i" unwind label %bb.l, !noalias !8360

bb.j:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call fastcc void @_ZN10serde_core2de7Visitor14visit_byte_buf17h2a0c2bc6de7a55e0E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ba), !noalias !8333
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exitthread-pre-split.i.i"

bb.k:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !8352, !noalias !8353, !nonnull !15, !align !533, !noundef !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !8352, !noalias !8353, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8372
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bc, ptr %i.bf, align 8, !noalias !8372
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !noalias !8372
  store i8 6, ptr %i.i, align 8, !noalias !8372
  %i.bh = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
          to label %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h75bace97a8843ac7E.exit.i.i.i.i.i unwind label %bb.l, !noalias !8375

_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h75bace97a8843ac7E.exit.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8372
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !8376, !noalias !8377
  store i64 -9223372036854775807, ptr %i.k, align 8, !alias.scope !8376, !noalias !8377
  br label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17haf63c05ef3de079eE.exit.i.i.i.i.i"

"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17haf63c05ef3de079eE.exit.i.i.i.i.i": ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h75bace97a8843ac7E.exit.i.i.i.i.i, %bb.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m), !noalias !8333
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exitthread-pre-split.i.i"

bb.l:                                             ; preds = %bb.k, %bb.i
  %lpad.thr_comm15.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m) #44
          to label %common.resume unwind label %bb.m, !noalias !8333

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !8375
  unreachable

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exitthread-pre-split.i.i": ; preds = %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17haf63c05ef3de079eE.exit.i.i.i.i.i", %bb.j
  %.pr.i.i = load i64, ptr %i.k, align 8, !noalias !8333
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8333
  br label %bb.q

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exitthread-pre-split.i.i", %bb.f
  %i.bk = phi i64 [ %.pr.i.i, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exitthread-pre-split.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.f ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8333
  %i.bl = icmp eq i64 %i.bk, -9223372036854775807
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !8319 ; 7 uses
  br i1 %i.bl, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread138", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit"

bb.n:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !8332
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.m) #44
          to label %common.resume unwind label %bb.o, !noalias !8333

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !8333
  unreachable

common.resume:                                    ; preds = %.thread12.i.i.i.i.i, %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit", %bb.be, %bb.bf, %bb.bi, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.fk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i" ], [ %lpad.thr_comm15.i.i.i.i.i, %bb.l ], [ %i.bm, %bb.n ], [ %i.cf, %.thread12.i.i.i.i.i ], [ %i.ff, %bb.bf ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit" ], [ %i.ff, %bb.be ], [ %i.fk, %bb.bi ], [ %lpad.thr_comm15.i.i.i.i.i23, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread138": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i", %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.thread20.i.i"
  %.sroa.7.0.ph = phi ptr [ %i.ak, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.thread20.i.i" ], [ %.pre.i.i, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8333
  br label %bb.p

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h71f61e714e17e21aE.exit.i.i"
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !8319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8333
  switch i64 %i.bk, label %bb.ae [
    i64 -9223372036854775806, label %bb.p
    i64 -9223372036854775808, label %bb.q
  ]

bb.p:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread138"
  %.sroa.7.0142 = phi ptr [ %.sroa.7.0.ph, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit.thread138" ], [ %.pre.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0142) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0142, ptr %i.bo, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h34ee574550bd1cafE.exit50"

.thread:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.a
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !447, !noalias !8378, !noundef !15
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i", !prof !16

._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i: ; preds = %.thread
  %.pre.i.i20 = load i64, ptr %i.bp, align 8, !noalias !8387
  %.phi.trans.insert.i.i21 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i21, align 8, !noalias !8387
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbd542d324aa40437E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i": ; preds = %.thread
  %i.bt = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !8388 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17haa9bd09e69f6fe06E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8465
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !8468, !noalias !8469
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h51772b02994cfce3E.exit.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h59d42da4fc9c0255E.exit.i.i.i.i.i
  %.pr190 = phi ptr [ null, %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h51772b02994cfce3E.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h59d42da4fc9c0255E.exit.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !8416
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit"

bb.ab:                                            ; preds = %bb.z, %bb.x
  %lpad.thr_comm15.i.i.i.i.i23 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h) #44
          to label %common.resume unwind label %bb.ac, !noalias !8416

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !8455
  unreachable

bb.ad:                                            ; preds = %bb.q
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2732) #46, !noalias !8400
  unreachable

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit": ; preds = %bb.y, %bb.aa, %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hd2cac4eca329386bE.exit.i.i.i.i.i"
  %i.db = phi ptr [ %.sroa.42.0.copyload.i.i.i.i.i.i.i, %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hd2cac4eca329386bE.exit.i.i.i.i.i" ], [ %.pr190, %bb.aa ], [ %.pr.pre, %bb.y ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8400
  %i.dc = icmp eq ptr %i.db, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.dc, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit._crit_edge", label %bb.bh

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit._crit_edge": ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit"
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bg

bb.ae:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h604b929e557616b3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dd = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !range !447, !noalias !8470, !noundef !15
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i29, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i27", !prof !16

._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i29: ; preds = %bb.ae
  %.pre.i.i30 = load i64, ptr %i.dd, align 8, !noalias !8479
  %.phi.trans.insert.i.i31 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre1.i.i32 = load i64, ptr %.phi.trans.insert.i.i31, align 8, !noalias !8479
  br label %bb.af

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i27": ; preds = %bb.ae
  %i.dh = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.be    ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i27"
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !8480
  store i8 1, ptr %i.de, align 8, !noalias !8480
  br label %bb.af

bb.af:                                            ; preds = %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i29, %.noexc
  %.pre-phi197 = phi i64 [ %.pre1.i.i32, %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i29 ], [ %i.dj, %.noexc ]
  %i.dl = phi i64 [ %.pre.i.i30, %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i.i29 ], [ %i.di, %.noexc ] ; 2 uses
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dd, align 8, !noalias !8479
  store i64 0, ptr %i.u, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.597.0..sroa_idx, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @2313, i64 32, i1 false)
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.dl, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.pre-phi197, ptr %.sroa.8100.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.bk, ptr %i.s, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.pre.i.i, ptr %.sroa.677.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8483)
  call void @llvm.experimental.noalias.scope.decl(metadata !8486)
  %.sroa.0.0.copyload.i.i51 = load i8, ptr %1, align 8, !alias.scope !8489, !noalias !8490 ; 2 uses
  store i8 22, ptr %1, align 8, !alias.scope !8489, !noalias !8490
  %.not.i.i53 = icmp eq i8 %.sroa.0.0.copyload.i.i51, 22
  br i1 %.not.i.i53, label %bb.ag, label %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcedca2cda6aeb86eE.exit.i", !prof !122

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2732) #46
          to label %.noexc55 unwind label %bb.ah, !inline_history !8493

.noexc55:                                         ; preds = %bb.ag
  unreachable

"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcedca2cda6aeb86eE.exit.i": ; preds = %bb.af
  %.sroa.3.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.2.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i54, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i.i52, i64 31, i1 false)
  store i8 %.sroa.0.0.copyload.i.i51, ptr %i.f, align 8, !noalias !8494
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h833a12ea92918c29E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.aj unwind label %bb.ah, !inline_history !8495

bb.ah:                                            ; preds = %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcedca2cda6aeb86eE.exit.i", %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = icmp eq i64 %i.bk, 0
  br i1 %i.do, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8496
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

bb.aj:                                            ; preds = %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcedca2cda6aeb86eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8494
  %i.dp = load i64, ptr %i.r, align 8, !range !594, !noundef !15
  %i.dq = icmp eq i64 %i.dp, -9223372036854775803
  br i1 %i.dq, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %i.dr = icmp eq i64 %i.bk, 0
  br i1 %i.dr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit40", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8501
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit40"

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h8245d9d866f0fe4dE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.o, ptr noalias noundef align 8 dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r)
          to label %bb.an unwind label %.loopexit.split-lp

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit": ; preds = %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.at, %bb.as, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %i.dn, %bb.ah ], [ %i.ef, %bb.as ], [ %i.en, %bb.ax ], [ %i.ef, %bb.at ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hba9a2e3ae4cc0792E"(ptr noalias noundef align 8 dereferenceable(72) %i.u) #44
          to label %common.resume unwind label %bb.bd

.loopexit:                                        ; preds = %bb.az, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

.loopexit.split-lp:                               ; preds = %bb.am, %bb.ao, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.ds, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dt = load i64, ptr %i.t, align 8, !range !594, !alias.scope !8506, !noundef !15
  %i.du = icmp eq i64 %i.dt, -9223372036854775803
  br i1 %i.du, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit" unwind label %.loopexit.split-lp

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit": ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dv = icmp eq ptr %i.ac, %i.y
  br i1 %i.dv, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.lr.ph": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit"
  %.sroa.2.0..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.lr.ph", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44"
  %i.dx = phi i64 [ %i.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.lr.ph" ], [ %i.ea, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44" ]
  %i.dy = phi ptr [ %i.ac, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.lr.ph" ], [ %i.dz, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8509)
  call void @llvm.experimental.noalias.scope.decl(metadata !8512)
  call void @llvm.experimental.noalias.scope.decl(metadata !8515)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64 ; 3 uses
  store ptr %i.dz, ptr %i.z, align 8, !alias.scope !8515, !noalias !8518
  %.sroa.0121.0.copyload = load i8, ptr %i.dy, align 8, !noalias !8522 ; 2 uses
  %.not.i.i58 = icmp eq i8 %.sroa.0121.0.copyload, 22
  br i1 %.not.i.i58, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread", label %bb.ap

bb.ap:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit"
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = add i64 %i.dx, 1                        ; 2 uses
  store i64 %i.ea, ptr %i.ad, align 8, !alias.scope !8523, !noalias !8524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i60, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7122.0..sroa_idx, i64 31, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8525
  store i8 %.sroa.0121.0.copyload, ptr %i.d, align 8, !noalias !8525
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17he89761fc396e38d6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit" unwind label %bb.ax

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit": ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8525
  %i.ec = load i64, ptr %i.e, align 8, !range !286, !noalias !8525, !noundef !15 ; 6 uses
  %i.ed = icmp eq i64 %i.ec, -9223372036854775808
  %i.ee = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !noalias !8525 ; 6 uses
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8525
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.ay unwind label %.loopexit.split-lp, !inline_history !8526

bb.ar:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit"
  %.sroa.5111.0.copyload = load i64, ptr %.sroa.5111.0..sroa_idx, align 8, !noalias !8525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8525
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h833a12ea92918c29E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6cc4d4dde0e8eab0E.exit70" unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = icmp eq i64 %i.ec, 0
  br i1 %i.eg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8527
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6cc4d4dde0e8eab0E.exit70": ; preds = %bb.ar
  %i.eh = load i64, ptr %i.c, align 8, !range !594, !noalias !8525, !noundef !15
  %i.ei = icmp eq i64 %i.eh, -9223372036854775803
  br i1 %i.ei, label %bb.au, label %bb.az

bb.au:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6cc4d4dde0e8eab0E.exit70"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !8525, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8525
  %i.el = icmp eq i64 %i.ec, 0
  br i1 %i.el, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8532
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ax
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !8525, !inline_history !8537
  unreachable

bb.ax:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #44
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit" unwind label %bb.aw, !inline_history !8537

bb.ay:                                            ; preds = %bb.au, %bb.av, %bb.aq
  %.sroa.9.0 = phi ptr [ %i.ee, %bb.aq ], [ %i.ek, %bb.av ], [ %i.ek, %bb.au ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %i.eo, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bc

bb.az:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6cc4d4dde0e8eab0E.exit70"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8525
  store i64 %i.ec, ptr %i.q, align 8
  store ptr %i.ee, ptr %.sroa.3.0..sroa_idx6, align 8
  store i64 %.sroa.5111.0.copyload, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx6.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h8245d9d866f0fe4dE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.n, ptr noalias noundef align 8 dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(72) %.sroa.13.sroa.6)
          to label %bb.ba unwind label %.loopexit

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h34ee574550bd1cafE.exit50"

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.dw, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.p, align 8, !range !594, !alias.scope !8538, !noundef !15
  %i.eq = icmp eq i64 %i.ep, -9223372036854775803
  br i1 %i.eq, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.p)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44" unwind label %.loopexit

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h342c5ef8f55b41a0E.exit44": ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.er = icmp eq ptr %i.dz, %i.y
  br i1 %i.er, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit"

bb.bc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit40", %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !8541)
  call void @llvm.experimental.noalias.scope.decl(metadata !8544)
  call void @llvm.experimental.noalias.scope.decl(metadata !8547)
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !8550, !noundef !15 ; 4 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %bb.bc
  %.val.i.i.i = load ptr, ptr %.sroa.698.0..sroa_idx, align 8, !alias.scope !8550, !nonnull !15, !noundef !15
  %i.eu = shl i64 %.val1.i.i.i, 3
  %i.ev = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ev), !noalias !8547
  %i.ew = and i64 %i.eu, -16                      ; 2 uses
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add nsw i64 %.val1.i.i.i, 17
  %i.ez = add i64 %i.ey, %i.ex                    ; 3 uses
  %i.fa = icmp uge i64 %i.ez, %i.ex
  call void @llvm.assume(i1 %i.fa), !noalias !8547
  %i.fb = icmp ult i64 %i.ez, 9223372036854775793
  call void @llvm.assume(i1 %i.fb), !noalias !8547
  %i.fc = sub nuw nsw i64 -16, %i.ew
  %i.fd = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.fc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !8550, !inline_history !7309
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i, %bb.bc
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hb7cc6aabef92b088E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u), !inline_history !7326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h34ee574550bd1cafE.exit50"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit40": ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

bb.bd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.be:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i27"
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = icmp eq i64 %i.bk, 0
  br i1 %i.fg, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8551
  br label %common.resume

bb.bg:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit._crit_edge", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit.thread"
  %i.fh = phi ptr [ %.pre, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit._crit_edge" ], [ %i.bz, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit.thread" ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fh, ptr %i.fi, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h34ee574550bd1cafE.exit50"

bb.bh:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hc5eef5ae11f21293E.exit"
  %i.fj = load i64, ptr %.phi.trans.insert, align 8, !noundef !15 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke fastcc void @_ZN10serde_json2de8from_str17hc1a7e7f3c21b02feE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %i.fj)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 0
  br i1 %i.fl, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.fj, i64 noundef 1) #45
  br label %common.resume

bb.bj:                                            ; preds = %bb.bh
  %i.fm = load i64, ptr %i.v, align 8, !range !594, !noundef !15
  %i.fn = icmp eq i64 %i.fm, -9223372036854775803
  br i1 %i.fn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !15, !align !569, !noundef !15
  %i.fq = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hd87136fe7670cdbdE"(ptr noalias noundef nonnull align 8 %i.fp)
          to label %bb.bn unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fr = icmp eq i64 %i.fj, 0
end_hunk_2
begin_hunk_3_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7a8b038d4c7ff60fE":bb.a
"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb526f6e6eb9286beE.exit.i": ; preds = %bb.bg, %bb.az, %bb.w, %bb.v
  %.sroa.4.0.i = phi i8 [ %.sroa.5.0.i.i.i.i.i, %bb.az ], [ 1, %bb.v ], [ 2, %bb.bg ], [ 0, %bb.w ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.i, ptr %i.fr, align 1, !alias.scope !62281, !noalias !62284
  br label %"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hf7423af763746374E.exit"

"_ZN89_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hf7423af763746374E.exit": ; preds = %bb.bi, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb526f6e6eb9286beE.exit.i"
  %storemerge.i = phi i8 [ 0, %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hb526f6e6eb9286beE.exit.i" ], [ 1, %bb.bi ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !62281, !noalias !62284
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h820ccdb7a9ecf821E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62517)
  %i.o = load i8, ptr %1, align 8, !range !446, !alias.scope !62519, !noalias !62520, !noundef !15
  %i.p = icmp eq i8 %i.o, 20
  br i1 %i.p, label %bb.b, label %bb.ap, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 8, !alias.scope !62519, !noalias !62520
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !62519, !noalias !62520, !nonnull !15, !noundef !15 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !62519, !noalias !62520 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62521)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !62524
  %i.r = icmp ult i64 %.sroa.3.0.copyload.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.r)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 5 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.n, align 8, !noalias !62524
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 10 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !62524
  %.sroa.540.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.540.0..sroa_idx.i.i.i, align 8, !noalias !62524
  %.sroa.641.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.s, ptr %.sroa.641.0..sroa_idx.i.i.i, align 8, !noalias !62524
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 10 uses
  store i64 0, ptr %i.t, align 8, !noalias !62524
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62526)
  %i.u = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.copyload.i.i, i64 1048576) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !62529
  %i.v = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.v, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !62531
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 1) #45, !noalias !62531 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @623) #46
          to label %.noexc.i.i.i unwind label %bb.af, !noalias !62524

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.c
  store i64 %i.u, ptr %i.m, align 8, !noalias !62529
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.w, ptr %i.y, align 8, !noalias !62529
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !62529
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.sroa.819.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ai = add nsw i64 %.idx.i.i.i, -32
  %i.aj = lshr exact i64 %i.ai, 5
  %i.ak = add nuw nsw i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32 ; 3 uses
  %.sroa.0.0.copyload2.i.i.i.i.i21.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !62536 ; 2 uses
  %.not.i.i.i.i.i22.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i21.i.i, 22
  br i1 %.not.i.i.i.i.i22.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i"
  store ptr %i.al, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 0, ptr %i.t, align 8, !noalias !62524
  br label %.sink.split.i.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i": ; preds = %bb.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.0.0.copyload2.i.i.i.i.i.i.i = load i8, ptr %i.an, align 8, !noalias !62553 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"
  %.sroa.0.0.copyload2.i.i.i.i.i23.i.i = phi i8 [ %.sroa.0.0.copyload2.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload2.i.i.i.i.i21.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ] ; 2 uses
  %i.an = phi ptr [ %i.am, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.al, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ] ; 11 uses
  %i.ao = phi ptr [ %i.an, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ]
  %i.ap = phi i64 [ %i.aq, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62557)
  call void @llvm.experimental.noalias.scope.decl(metadata !62558)
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !62559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !62559
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !62559
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i23.i.i, ptr %i.k, align 8, !noalias !62559
  call void @llvm.experimental.noalias.scope.decl(metadata !62560)
  call void @llvm.experimental.noalias.scope.decl(metadata !62563)
  call void @llvm.experimental.noalias.scope.decl(metadata !62565)
  call void @llvm.experimental.noalias.scope.decl(metadata !62568)
  call void @llvm.experimental.noalias.scope.decl(metadata !62570)
  call void @llvm.experimental.noalias.scope.decl(metadata !62573)
  switch i8 %.sroa.0.0.copyload2.i.i.i.i.i23.i.i, label %bb.e [
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 21, label %bb.g
  ], !prof !8241

bb.e:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62575
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !62576
  %i.ar = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.x unwind label %bb.w, !noalias !62575

bb.f:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !62577
  store i8 22, ptr %i.ag, align 8, !noalias !62575
  invoke fastcc void @"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha23663a63465809eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.y, !noalias !62529

.noexc.i.i.i.i:                                   ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62575
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"

bb.g:                                             ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !62578, !noalias !62576
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62578, !noalias !62576, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62578, !noalias !62576 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !62575
  %i.as = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.as)
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 6
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !62579, !noalias !62582
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !alias.scope !62579, !noalias !62582
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !62579, !noalias !62582
  store ptr %i.at, ptr %i.ad, align 8, !alias.scope !62579, !noalias !62582
  call void @llvm.experimental.noalias.scope.decl(metadata !62584)
  %i.au = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.r, %bb.i
  %.pn24.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.r ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.j) #44
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !62575

bb.i:                                             ; preds = %bb.t, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  %i.av = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  br label %bb.h

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.aw, ptr %i.ac, align 8, !alias.scope !62584, !noalias !62587
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62589 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i", label %bb.j, !prof !4913

bb.j:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !62575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !62575
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !noalias !62575
  store i8 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !62575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62575
  call void @llvm.experimental.noalias.scope.decl(metadata !62590)
  %i.ay = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i", %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62575
  store i8 11, ptr %i.g, align 8, !noalias !62575
  %i.az = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.k unwind label %bb.i, !noalias !62575

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !62575
  store ptr %i.az, ptr %i.af, align 8, !alias.scope !62593, !noalias !62594
  store i8 1, ptr %i.l, align 8, !alias.scope !62593, !noalias !62594
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %bb.k
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %.noexc9.i.i.i.i unwind label %bb.y, !noalias !62529

.noexc9.i.i.i.i:                                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62575
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.ba, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %bb.r unwind label %bb.v, !noalias !62575

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 128
  store ptr %i.bb, ptr %i.ac, align 8, !alias.scope !62590, !noalias !62595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false), !noalias !62597
  %.pr.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !62575
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.f) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.o, !noalias !62575, !inline_history !28052

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #49
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !62575, !inline_history !28052

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !62598, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.n
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.m, !noalias !62575

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !62575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62575
  store i8 11, ptr %i.e, align 8, !noalias !62575
  %i.be = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.q unwind label %bb.m, !noalias !62575

bb.q:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !62575
  store ptr %i.be, ptr %i.af, align 8, !alias.scope !62593, !noalias !62594
  store i8 1, ptr %i.l, align 8, !alias.scope !62593, !noalias !62594
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.h)
          to label %bb.t unwind label %bb.s, !noalias !62575

bb.r:                                             ; preds = %bb.s, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #44
          to label %bb.h unwind label %bb.v, !noalias !62575

bb.s:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62575
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %bb.u unwind label %bb.i, !noalias !62575

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62575
  br label %bb.l

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !62575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !62575
  %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !62575
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.bg, i64 31, i1 false), !noalias !62575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !62575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62575
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %.noexc10.i.i.i.i unwind label %bb.y, !noalias !62529

.noexc10.i.i.i.i:                                 ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !62575
  store i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !62575
  invoke fastcc void @"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17ha23663a63465809eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c)
          to label %.noexc11.i.i.i.i unwind label %bb.y, !noalias !62529

.noexc11.i.i.i.i:                                 ; preds = %.noexc10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62575
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.w, %bb.r, %.body.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !62575
  unreachable

bb.w:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k) #44
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !62576

bb.x:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62575
  store ptr %i.ar, ptr %i.af, align 8, !alias.scope !62593, !noalias !62594
  store i8 1, ptr %i.l, align 8, !alias.scope !62593, !noalias !62594
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i" unwind label %bb.y, !noalias !62529

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i": ; preds = %bb.x, %.noexc11.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !62559
  %i.bj = load i8, ptr %i.l, align 8, !range !447, !noalias !62559, !noundef !15
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.aa, label %bb.ac

bb.y:                                             ; preds = %bb.ad, %bb.x, %.noexc10.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", %bb.l, %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.w, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.y ], [ %.pn24.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.bi, %bb.w ] ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !62529 ; 2 uses
  %i.bm = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.bm, label %.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %.body.i.i.i.i
  %.val6.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !62529, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %.val5.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62529
  br label %.thread.i.i.i

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !62547, !noalias !62551
  store i64 %i.aq, ptr %i.t, align 8, !noalias !62524
  %i.bn = load ptr, ptr %i.af, align 8, !noalias !62559, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !62559
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !62529 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bo, label %.thread46.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val4.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !62529, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62529
  br label %.thread46.i.i.i

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74fb45f2781aee9cE.exit.i.i.i.i.i.i.i"
  %i.bp = load i8, ptr %i.ah, align 1, !range !14291, !noalias !62559, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !62559
  %i.bq = load i64, ptr %i.z, align 8, !alias.scope !62603, !noalias !62529, !noundef !15 ; 3 uses
  %i.br = load i64, ptr %i.m, align 8, !range !10, !alias.scope !62603, !noalias !62529, !noundef !15
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624)
          to label %bb.ae unwind label %bb.y, !noalias !62529

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bt = load ptr, ptr %i.y, align 8, !alias.scope !62603, !noalias !62529, !nonnull !15, !noundef !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bp, ptr %i.bu, align 1, !noalias !62529
end_hunk_3
begin_hunk_4_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h023020cf56060574E":bb.a
  %.sroa.11.2 = phi i64 [ %.sroa.650.0.i.i.i.i, %bb.dx ], [ %i.iv, %bb.dw ]
  %.sroa.0.2 = phi i64 [ %.sroa.049.0.i.i.i.i, %bb.dx ], [ 3, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !75661
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.ds
  %.sroa.11.3 = phi i64 [ %.sroa.22.11.ph.i.i.i, %bb.ds ], [ %.sroa.11.2, %.thread.sink.split.i.i ]
  %.sroa.0.3 = phi i64 [ 3, %bb.ds ], [ %.sroa.0.2, %.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !75661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.62.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i)
  br label %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit"

bb.dz:                                            ; preds = %bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ix, align 8, !alias.scope !75657, !noalias !75658
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !75657, !noalias !75658, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !75657, !noalias !75658 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5372.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5366.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5352.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5346.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5340.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5334.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5328.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !75871
  %i.iy = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.iy)
  %.idx.i12.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i12.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.ja, align 8, !noalias !75875
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !75875
  %.sroa.583.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.583.0..sroa_idx.i.i.i, align 8, !noalias !75875
  %.sroa.684.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  store ptr %i.iz, ptr %.sroa.684.0..sroa_idx.i.i.i, align 8, !noalias !75875
  store i8 22, ptr %i.az, align 8, !noalias !75875
  %i.jb = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 3 uses
  store i64 0, ptr %i.jb, align 8, !noalias !75875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !75875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !75879
  store i64 3, ptr %i.ay, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !75879
  store i64 3, ptr %i.ax, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !75879
  store i64 -9223372036854775801, ptr %i.aw, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !75879
  store i64 -9223372036854775801, ptr %i.av, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !75879
  store i64 3, ptr %i.au, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !75879
  store i64 -9223372036854775801, ptr %i.at, align 8, !noalias !75879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !75879
  store i64 -9223372036854775801, ptr %i.as, align 8, !noalias !75879
  %i.jc = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.jc, label %.thread916.thread.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.dz
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 37 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3.0..sroa_idx.i.i.i659.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 10 uses
  %.sroa.2.0..sroa_idx.i.i.i660.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i656.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6269.0..sroa_idx270.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.7272.0..sroa_idx273.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.2.0..sroa_idx.i.i.i653.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.4449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5450.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.6239.0..sroa_idx240.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %.sroa.7242.0..sroa_idx243.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.2.0..sroa_idx.i.i.i640.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i636.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6222.0..sroa_idx223.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.7225.0..sroa_idx226.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.2.0..sroa_idx.i.i.i632.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6205.0..sroa_idx206.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.7208.0..sroa_idx209.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4440.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.6188.0..sroa_idx189.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %.sroa.7191.0..sroa_idx192.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4437.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.6171.0..sroa_idx172.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %.sroa.7174.0..sroa_idx175.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.2.0..sroa_idx.i.i.i619.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i812.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx10.i.i821.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.2.0..sroa_idx.i.i.i609.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.12.0..sroa_idx.i.i787.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.12.0..sroa_idx10.i.i796.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0..sroa_idx.i.i.i599.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.12.0..sroa_idx.i.i762.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.12.0..sroa_idx10.i.i771.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.sroa.2.0..sroa_idx.i.i.i589.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.12.0..sroa_idx.i.i737.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.12.0..sroa_idx10.i.i746.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.12.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.sroa.2.0..sroa_idx.i.i.i672.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i668.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6286.0..sroa_idx287.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.7289.0..sroa_idx290.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.kk = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mx, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 4 uses
  %.sroa.0.03307.i.i.i.i = phi i8 [ 8, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.026.03306.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.026.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.029.03305.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.029.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.8.03304.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.034.03303.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.034.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.837.03302.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.837.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.040.03301.i.i.i.i = phi i32 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.040.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.843.03300.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.843.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.046.03299.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.046.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %i.kl = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mv, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 95 uses
  %i.km = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mu, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 95 uses
  %i.kn = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mt, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 121 uses
  %i.ko = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ms, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 121 uses
  %i.kp = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mr, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 95 uses
  %i.kq = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mq, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 121 uses
  %i.kr = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mp, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 86 uses
  %.sroa.0830.03298.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0830.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 118 uses
  %.sroa.13.03297.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 26 uses
  %.sroa.19.03296.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 22 uses
  %.sroa.0837.03295.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0837.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 118 uses
  %.sroa.13844.03294.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13844.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 26 uses
  %.sroa.19845.03293.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19845.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 22 uses
  %.sroa.0846.03292.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0846.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 118 uses
  %.sroa.13853.03291.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13853.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 26 uses
  %.sroa.19854.03290.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19854.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 22 uses
  %.sroa.0855.03289.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0855.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 118 uses
  %.sroa.13862.03288.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13862.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 26 uses
  %.sroa.19863.03287.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19863.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 22 uses
  %.sroa.0864.03286.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0864.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 118 uses
  %.sroa.13871.03285.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13871.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 26 uses
  %.sroa.19872.03284.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19872.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 22 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  store ptr %i.ks, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !75875
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.kk, align 8, !noalias !75883 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %.thread916.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.kt = load i64, ptr %i.jb, align 8, !noalias !75875, !noundef !15
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %i.jb, align 8, !noalias !75875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !75894
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.ai, align 8, !noalias !75894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !75895
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.kv, i64 32, i1 false), !noalias !75895
  %i.kw = load i8, ptr %i.az, align 8, !range !625, !noalias !75875, !noundef !15
  %i.kx = icmp eq i8 %i.kw, 22
  br i1 %i.kx, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.az)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.gd, !noalias !75875

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.eb, %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !75875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !75894
  %.sroa.4.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !75894 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i, align 8, !noalias !75894 ; 11 uses
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !75894 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !75894 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75896)
  call void @llvm.experimental.noalias.scope.decl(metadata !75899)
  call void @llvm.experimental.noalias.scope.decl(metadata !75902)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.ec
    i8 4, label %bb.ew
    i8 12, label %bb.fq
    i8 13, label %bb.fu
    i8 14, label %bb.fv
    i8 15, label %bb.fz
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ky = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ai, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !75905

.noexc.i.i.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.ky, ptr %i.jf, align 8, !alias.scope !75906, !noalias !75907
  store i8 1, ptr %i.ag, align 8, !alias.scope !75906, !noalias !75907
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc9839f3ba6d62822E.exit.i.i.i.i.i.i.i"

bb.ec:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !75911)
  call void @llvm.experimental.noalias.scope.decl(metadata !75914)
  switch i8 %.sroa.4.0.copyload.i.i.i.i.i, label %bb.ed [
    i8 0, label %bb.ee
    i8 1, label %bb.ef
    i8 2, label %bb.eg
    i8 3, label %bb.eh
    i8 4, label %bb.ei
    i8 5, label %bb.ej
    i8 6, label %bb.ek
    i8 7, label %bb.el
    i8 8, label %bb.em
    i8 9, label %bb.en
    i8 10, label %bb.eo
    i8 11, label %bb.ep
    i8 12, label %bb.eq
    i8 13, label %bb.er
    i8 14, label %bb.es
    i8 15, label %bb.et
    i8 16, label %bb.eu
    i8 17, label %bb.ev
  ], !prof !75917

bb.ed:                                            ; preds = %bb.ec
  %i.kz = zext i8 %.sroa.4.0.copyload.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !75918
  store i64 %i.kz, ptr %i.jg, align 8, !noalias !75918
  store i8 1, ptr %i.af, align 8, !noalias !75918
  %i.la = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull align 1 @773, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.gb, !noalias !75919

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !75918
  store ptr %i.la, ptr %i.jf, align 8, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  store i8 0, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ec
  store i8 1, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ec
  store i8 2, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.eh:                                            ; preds = %bb.ec
  store i8 3, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.ec
  store i8 4, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ec
  store i8 5, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ek:                                            ; preds = %bb.ec
  store i8 6, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.ec
  store i8 7, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.ec
  store i8 8, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.ec
  store i8 9, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.eo:                                            ; preds = %bb.ec
  store i8 10, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.ec
  store i8 11, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ec
  store i8 12, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.ec
  store i8 13, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.ec
  store i8 14, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.et:                                            ; preds = %bb.ec
  store i8 15, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %bb.ec
  store i8 16, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.ec
  store i8 17, ptr %i.jd, align 1, !alias.scope !75920, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ew:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !75921)
  switch i64 %.sroa.51.0.copyload.i.i.i.i.i, label %bb.ex [
    i64 0, label %bb.ey
    i64 1, label %bb.ez
    i64 2, label %bb.fa
    i64 3, label %bb.fb
    i64 4, label %bb.fc
    i64 5, label %bb.fd
    i64 6, label %bb.fe
    i64 7, label %bb.ff
    i64 8, label %bb.fg
    i64 9, label %bb.fh
    i64 10, label %bb.fi
    i64 11, label %bb.fj
    i64 12, label %bb.fk
    i64 13, label %bb.fl
    i64 14, label %bb.fm
    i64 15, label %bb.fn
    i64 16, label %bb.fo
    i64 17, label %bb.fp
  ], !prof !75917

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !75924
  store i64 %.sroa.51.0.copyload.i.i.i.i.i, ptr %i.je, align 8, !noalias !75924
  store i8 1, ptr %i.ae, align 8, !noalias !75924
  %i.lb = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull align 1 @773, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc4.i.i.i.i.i.i.i.i.i.i unwind label %bb.gb, !noalias !75919

.noexc4.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !75924
  store ptr %i.lb, ptr %i.jf, align 8, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ew
  store i8 0, ptr %i.jd, align 1, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ew
  store i8 1, ptr %i.jd, align 1, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ew
  store i8 2, ptr %i.jd, align 1, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.ew
  store i8 3, ptr %i.jd, align 1, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.ew
  store i8 4, ptr %i.jd, align 1, !alias.scope !75925, !noalias !75907
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h023020cf56060574E":bb.a

bb.nn:                                            ; preds = %bb.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i19.i.i, i64 48, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i23.i.i, i64 32, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i25.i.i, i64 32, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.13.0..sroa_idx.i27.i.i, i64 192, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.0..sroa_idx.i44.i.i, i64 72, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.32.0..sroa_idx.i46.i.i, i64 72, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.34.0..sroa_idx.i48.i.i, i64 72, i1 false), !noalias !76240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !76240
  br label %.sink.split.i.i

bb.no:                                            ; preds = %bb.np, %bb.nk
  %i.ul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !75875
  unreachable

bb.np:                                            ; preds = %bb.nd, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit723.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h527133af2ebcf491E"(ptr noalias noundef align 8 dereferenceable(72) %i.az) #44
          to label %.body.thread.i.i unwind label %bb.no, !noalias !75875

.body.thread11.i.i:                               ; preds = %bb.nm, %bb.ni, %bb.dw, %bb.ds
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.sink.split.i.i:                                  ; preds = %bb.nn, %bb.nm
  %.sroa.11.1 = phi i64 [ %..sroa.8.0.i.i.i.i, %bb.nn ], [ %i.uk, %bb.nm ]
  %.sroa.0.1 = phi i64 [ %..sroa.029.0.i.i.i.i, %bb.nn ], [ 3, %bb.nm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !75875
  br label %bb.nq

bb.nq:                                            ; preds = %.sink.split.i.i, %bb.ni, %bb.nh
  %.sroa.11.0 = phi i64 [ %.sroa.11.1, %.sink.split.i.i ], [ %.sroa.41.1.i.i.i, %bb.nh ], [ %.sroa.41.1.i.i.i, %bb.ni ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %.sink.split.i.i ], [ 3, %bb.nh ], [ 3, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5372.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5366.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5352.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5346.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5340.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5334.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5328.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !75871
  br label %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit"

.body.thread.thread.i.i:                          ; preds = %bb.nr, %.body.thread.i.i, %.thread163.i.i.i, %bb.dv
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i, %.body.thread.i.i ], [ %eh.lpad-body9.i.i, %bb.nr ], [ %eh.lpad-body166.i.i.i, %.thread163.i.i.i ], [ %i.iu, %bb.dv ]
  resume { ptr, i32 } %eh.lpad-body8.i.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %bb.np, %bb.nk, %bb.ng, %bb.nf
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread11.i.i ], [ %i.uj, %bb.nk ], [ %.pn516.i.i.i.i, %bb.np ], [ %i.ud, %bb.ng ], [ %i.ud, %bb.nf ] ; 2 uses
  %i.um = and i8 %i.ck, 30
  %switch5.i.i = icmp eq i8 %i.um, 20
  br i1 %switch5.i.i, label %.body.thread.thread.i.i, label %bb.nr

bb.nr:                                            ; preds = %.body.thread.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.body.thread.thread.i.i unwind label %bb.ns, !noalias !75658

bb.ns:                                            ; preds = %bb.nr
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !75871
  unreachable

"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit": ; preds = %.thread.i.i, %bb.nq
  %.sroa.11.4 = phi i64 [ %.sroa.11.0, %bb.nq ], [ %.sroa.11.3, %.thread.i.i ] ; 2 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.0, %bb.nq ], [ %.sroa.0.3, %.thread.i.i ] ; 2 uses
  %i.uo = icmp eq i64 %.sroa.0.4, 3
  br i1 %i.uo, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit.thread", %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit"
  %.sroa.11.435 = phi i64 [ %i.cm, %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit.thread" ], [ %.sroa.11.4, %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit" ]
  %i.up = inttoptr i64 %.sroa.11.435 to ptr
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.up, ptr %i.uq, align 8
  store i64 4, ptr %0, align 8
  br label %bb.nv

bb.nu:                                            ; preds = %"_ZN5milli6vector8settings1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..SubEmbeddingSettings$GT$11deserialize17he2c2ba144e7570d1E.exit"
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, i64 48, i1 false)
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19, i64 32, i1 false)
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.728.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, i64 32, i1 false)
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.829.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.23, i64 192, i1 false)
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.930.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.25, i64 72, i1 false)
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1031.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.27, i64 72, i1 false)
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1132.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.29, i64 72, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31, i64 16, i1 false)
  store i64 %.sroa.0.4, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.4, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h034be92708578ea4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76252)
  %i.j = load i8, ptr %1, align 8, !range !446, !alias.scope !76254, !noalias !76255, !noundef !15
  switch i8 %i.j, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !8241

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76256
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !76255
  %i.k = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.u unwind label %bb.t, !noalias !76256

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !76244
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.l, align 8, !noalias !76256
  call fastcc void @"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h067b8f4744e630daE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !76254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76256
  br label %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !76254, !noalias !76255
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !76254, !noalias !76255, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !76254, !noalias !76255 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !76256
  %i.n = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.n)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !76257, !noalias !76260
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !76257, !noalias !76260
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !alias.scope !76257, !noalias !76260
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !76257, !noalias !76260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76262)
  %i.s = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !76256

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !alias.scope !76262, !noalias !76265
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !76267 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %bb.g, !prof !4913

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !76256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !76256
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !76256
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !76256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !76256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76268)
  %i.w = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.w, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !76256
  store i8 11, ptr %i.e, align 8, !noalias !76256
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.f, !noalias !76256

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !76256
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !76255, !noalias !76254
  store i8 1, ptr %i.i, align 8, !alias.scope !76255, !noalias !76254
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !76256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !76256
  br label %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.z, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %bb.o unwind label %bb.s, !noalias !76256

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !76268, !noalias !76271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !76273
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !76256
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i" unwind label %bb.l, !noalias !76256, !inline_history !28052

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac) #49
          to label %.body.i.i unwind label %bb.m, !noalias !76256, !inline_history !28052

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !76274, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i": ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i" unwind label %bb.j, !noalias !76256

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !76256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76256
  store i8 11, ptr %i.c, align 8, !noalias !76256
  %i.af = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.n unwind label %bb.j, !noalias !76256

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !76255, !noalias !76254
  store i8 1, ptr %i.i, align 8, !alias.scope !76255, !noalias !76254
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !76256

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #44
          to label %bb.e unwind label %bb.s, !noalias !76256

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76256
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !76256

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !76256
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !76256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !76256
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !76256
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ai, i64 31, i1 false), !noalias !76256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !76256
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !76256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !76256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.aj, align 8, !noalias !76256
  call fastcc void @"_ZN192_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h067b8f4744e630daE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !76254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76256
  br label %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !76256
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !76255

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76256
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !76255, !noalias !76254
  store i8 1, ptr %i.i, align 8, !alias.scope !76255, !noalias !76254
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !76255
  br label %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.al, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", %bb.u
  %i.an = load i8, ptr %i.i, align 8, !range !447, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !15, !align !569, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN5milli6vector8settings1_97_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbedderSource$GT$11deserialize17h1b298da5bab91871E.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !1118, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h099057a84a4ea4d4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 22 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.18.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76282)
  %i.x = load i8, ptr %1, align 8, !range !446, !alias.scope !76285, !noalias !76286, !noundef !15
  %i.y = icmp eq i8 %i.x, 20
  br i1 %i.y, label %bb.b, label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h29cb4a3c6ed2dcd0E.exit.thread", !prof !16

bb.b:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h099057a84a4ea4d4E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !76373)
  call void @llvm.experimental.noalias.scope.decl(metadata !76376)
  %i.bj = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.n, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 64
  store ptr %i.bk, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !76379, !noalias !76380
  %.sroa.0.0.copyload4.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bf, align 8, !noalias !76386 ; 2 uses
  %.not.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !76387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !76387
  store i64 2, ptr %i.ap, align 8, !alias.scope !76388, !noalias !76389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !76387
  store i8 %.sroa.0.0.copyload4.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !76387
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17he89761fc396e38d6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !76390

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !76387
  %i.bl = load i64, ptr %i.n, align 8, !range !286, !noalias !76387, !noundef !15 ; 4 uses
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  %i.bn = load ptr, ptr %i.ar, align 8, !noalias !76391 ; 3 uses
  br i1 %i.bm, label %bb.m, label %bb.s

bb.j:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.e
  %i.bo = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef 0, ptr noundef nonnull align 1 @232, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.r unwind label %bb.q, !noalias !76341

bb.k:                                             ; preds = %bb.n, %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !76314, !noalias !76318
  store i64 %i.ba, ptr %i.ac, align 8, !noalias !76289
  %i.bq = icmp eq i64 %i.bg, 0
  br i1 %i.bq, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76392
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76387
  br label %bb.o

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i", %bb.h
  %i.br = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef 1, ptr noundef nonnull align 1 @232, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.o unwind label %bb.k, !noalias !76390

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink82.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.m ], [ %i.br, %bb.n ] ; 2 uses
  %i.bs = icmp eq i64 %i.bg, 0
  br i1 %i.bs, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76397
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !76314, !noalias !76318
  store i64 %i.ba, ptr %i.ac, align 8, !noalias !76289
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.j, %bb.g
  %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.j ], [ %i.bi, %bb.g ], [ %.sink82.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.sink82.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !76341
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.r)
          to label %.thread.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread11.i.i.i.i.i.i.i.i.i.i, !noalias !76402

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1053.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.1053.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76387
  store i64 %i.bg, ptr %i.q, align 8, !noalias !76341
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76341
  store i64 %.sroa.1050.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76341
  store i64 %i.bl, ptr %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76341
  store ptr %i.bn, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76341
  store i64 %.sroa.1053.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76341
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.r)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !76341

.noexc9.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.s
  %i.bu = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.bu, label %bb.y, label %bb.t, !prof !16

bb.t:                                             ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, -64
  %i.bv = lshr exact i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, 5
  %i.bw = add nuw nsw i64 %i.bv, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !76403
  store i64 2, ptr %i.l, align 8, !noalias !76403
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.bw, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.v unwind label %bb.u, !noalias !76341 ; 2 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !76314, !noalias !76318
  store i64 %i.ba, ptr %i.ac, align 8, !noalias !76289
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$milli..foreign_key..ForeignKey$GT$17hf5b109e2a6c2ea9eE"(ptr noalias noundef align 8 dereferenceable(48) %i.q) #44, !noalias !76341
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !76403
  %i.bz = icmp eq i64 %i.bg, 0
  br i1 %i.bz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76406
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w, %bb.v
  %i.ca = icmp eq i64 %i.bl, 0
  br i1 %i.ca, label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76413
  br label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !76418
  br label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !76341
  unreachable

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.q, %bb.l, %bb.k
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.r)
          to label %.body.i.i.i.i unwind label %bb.z, !noalias !76341

.thread.sink.split.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.y, %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.07.2.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.y ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775808, %bb.x ]
  %.sroa.12.2.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.y ], [ %i.bx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !76341
  br label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.r
  %.sroa.07.3.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.r ], [ %.sroa.07.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.12.3.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.12.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !76341
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1b803586ca99e9c5E.exit.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !76336, !noalias !76337
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !76336, !noalias !76337, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !76336, !noalias !76337 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !76402
  %i.cc = icmp ult i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.cc)
  %.idx.i11.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i11.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !76419
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76419
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76419
  store ptr %i.cd, ptr %.sroa.625.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76419
  store i8 22, ptr %i.j, align 8, !noalias !76419
  store i64 0, ptr %i.am, align 8, !noalias !76419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !76419
  %i.ce = icmp eq i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.cf = add nsw i64 %.idx.i11.i.i.i.i.i.i.i.i.i.i, -64
  %i.cg = lshr exact i64 %i.cf, 6
  %i.ch = add nuw nsw i64 %i.cg, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ci = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cl, %bb.bb ] ; 2 uses
  %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0156.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 17 uses
  %.sroa.14.0307.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 13 uses
  %.sroa.19.0306.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 3 uses
  %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0161.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 17 uses
  %.sroa.13.0304.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 11 uses
  %.sroa.19168.0303.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19168.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 3 uses
  %i.cj = phi ptr [ %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ck, %bb.bb ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 12 uses
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.cj, align 8, !noalias !76423 ; 3 uses
  %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i, label %.thread199.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = add nuw nsw i64 %i.ci, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !76437
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !76437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !76437
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 32, i1 false), !noalias !76419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76437
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !76437 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76437 ; 8 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76437 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76437 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76438)
  call void @llvm.experimental.noalias.scope.decl(metadata !76441)
  call void @llvm.experimental.noalias.scope.decl(metadata !76444)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.ab
    i8 4, label %bb.ac
    i8 12, label %bb.ad
    i8 13, label %bb.ai
    i8 14, label %bb.al
    i8 15, label %bb.an
  ], !prof !777

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
          to label %.noexc.i.i21.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !76447

.noexc.i.i21.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.cn, ptr %i.ao, align 8, !alias.scope !76448, !noalias !76449
  store i8 1, ptr %i.f, align 8, !alias.scope !76448, !noalias !76449
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !alias.scope !76453, !noalias !76449
  store i8 0, ptr %i.f, align 8, !alias.scope !76453, !noalias !76449
  br label %bb.ao

bb.ac:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !alias.scope !76458, !noalias !76449
  store i8 0, ptr %i.f, align 8, !alias.scope !76458, !noalias !76449
  br label %bb.ao

bb.ad:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.co = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76461)
  call void @llvm.experimental.noalias.scope.decl(metadata !76464)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag [
    i64 15, label %bb.ae
    i64 9, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = xor i64 %i.cp, 5291280314578136934
  %i.cr = getelementptr i8, ptr %i.co, i64 7
  %i.cs = load i64, ptr %i.cr, align 1
  %i.ct = xor i64 %i.cs, 7235408251932929609
  %i.cu = or i64 %i.cq, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cx, i8 0, i8 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cy = load i64, ptr %i.co, align 1
  %i.cz = xor i64 %i.cy, 7881667016097360230
  %i.da = getelementptr i8, ptr %i.co, i64 8
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %i.dc, 101
  %i.de = or i64 %i.cz, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dh, i8 1, i8 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ad ], [ %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !alias.scope !76467, !noalias !76468
  store i8 0, ptr %i.f, align 8, !alias.scope !76467, !noalias !76468
  %i.di = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76471
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ai:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76476)
  call void @llvm.experimental.noalias.scope.decl(metadata !76479)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h952be55d6fa84253E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 15, label %bb.aj
    i64 9, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load i64, ptr %i.dj, align 1
  %i.dl = xor i64 %i.dk, 5291280314578136934
  %i.dm = getelementptr i8, ptr %i.dj, i64 7
  %i.dn = load i64, ptr %i.dm, align 1
  %i.do = xor i64 %i.dn, 7235408251932929609
  %i.dp = or i64 %i.dl, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ds, i8 0, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h952be55d6fa84253E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.dj, align 1
  %i.du = xor i64 %i.dt, 7881667016097360230
  %i.dv = getelementptr i8, ptr %i.dj, i64 8
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.dx, 101
  %i.dz = or i64 %i.du, %i.dy
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ec, i8 1, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h952be55d6fa84253E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17h952be55d6fa84253E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ai ], [ %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  store i8 %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !alias.scope !76482, !noalias !76483
  store i8 0, ptr %i.f, align 8, !alias.scope !76482, !noalias !76483
  br label %bb.ao

bb.al:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ed = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN183_$LT$milli..foreign_key.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..foreign_key..ForeignKey$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hef0d5d77092adde1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ed, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !76486
  %i.ee = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ee, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ed, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76489
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.an:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ef = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN183_$LT$milli..foreign_key.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..foreign_key..ForeignKey$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hef0d5d77092adde1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ef, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !76493, !noalias !76449
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h952be55d6fa84253E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !76447

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao, %bb.am, %bb.al, %bb.ah, %bb.ag, %.noexc.i.i21.i.i.i.i.i.i.i.i.i.i
  %i.eg = load i8, ptr %i.f, align 8, !range !447, !noalias !76437, !noundef !15
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ap, label %bb.aq

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.0289.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.0304.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0291.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.13.0304.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0161.0271.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0161.0305.lcssa332.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0161.0273.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.0161.0273.i.i.i.i.i.i.i.i.ph22.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.14.0246.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.0307.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0248.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.14.0307.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0156.0226.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0156.0308.lcssa354.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0156.0228.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.0156.0228.i.i.i.i.i.i.i.i.ph23.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 3 uses
  switch i64 %.sroa.0161.0271.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp [
    i64 -9223372036854775808, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i130.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0156.0308.lcssa354.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i130.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0161.0305.lcssa332.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i130.i.i.i.i.i.i.i.i.i.i.i.i ]
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !76314, !noalias !76318
  store i64 %i.ba, ptr %i.ac, align 8, !noalias !76289
  store ptr %i.ck, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76419
  store i64 %i.cl, ptr %i.am, align 8, !noalias !76419
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i: ; preds = %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc, %bb.av
  %.sroa.13.0291.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi ptr [ %.sroa.13.0.lcssa374.i.i.i.i.i.i.i.i.i.i.i.i, %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0304.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.13.0304.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  %.sroa.0161.0273.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi i64 [ %.sroa.0161.0.lcssa375.i.i.i.i.i.i.i.i.i.i.i.i, %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  %.sroa.14.0248.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi ptr [ %.sroa.14.0.lcssa376.i.i.i.i.i.i.i.i.i.i.i.i, %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0307.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.14.0307.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  %.sroa.0156.0228.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi i64 [ -9223372036854775808, %.thread199.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !76314, !noalias !76318
  store i64 %i.ba, ptr %i.ac, align 8, !noalias !76289
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i: ; preds = %bb.be, %bb.ax, %bb.au
  %.sroa.0161.0273.i.i.i.i.i.i.i.i.ph22.i.i.i.i = phi i64 [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ -9223372036854775808, %bb.be ], [ %.sroa.0161.0305.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ax ]
  %.sroa.0156.0228.i.i.i.i.i.i.i.i.ph23.i.i.i.i = phi i64 [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.0156.0308.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be ], [ -9223372036854775808, %bb.ax ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd7489fdb86eafd5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store ptr %i.ck, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76419
  store i64 %i.cl, ptr %i.am, align 8, !noalias !76419
end_hunk_6
begin_hunk_7_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h2700ff2140fd6a9fE":bb.a

"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h92e224ad5c1fe1ddE.exit110.i.i.i.i": ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17h7a8e288d4c087fccE.exit.i109.i.i.i.i", %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h92e224ad5c1fe1ddE.exit.i.i.i.i", %bb.p
  %.sroa.9.1.i.i.i = phi ptr [ %i.bv, %bb.p ], [ %.sroa.9.0.i.i.i, %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17h7a8e288d4c087fccE.exit.i109.i.i.i.i" ], [ %.sroa.9.0.i.i.i, %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h92e224ad5c1fe1ddE.exit.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !76738
  br label %bb.am

.thread47.loopexit.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hfc129e49236ca24cE.exit.i.i.i.i.i.i107.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread42.i.i.i

.thread47.loopexit.split-lp.i.i.i:                ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb955ed3f428f4b2E.exit.i.i.i.i98.i.i.i.i", %bb.o, %bb.k, %bb.h, %bb.c
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread42.i.i.i

bb.am:                                            ; preds = %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h92e224ad5c1fe1ddE.exit110.i.i.i.i", %bb.n, %bb.d
  %.sroa.9.2.ph.i.i.i = phi ptr [ %i.az, %bb.d ], [ %i.br, %bb.n ], [ %.sroa.9.1.i.i.i, %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h92e224ad5c1fe1ddE.exit110.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.434.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false), !noalias !76824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !76673
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.i.i unwind label %.body.thread11.i.i, !noalias !76825

bb.an:                                            ; preds = %bb.ag, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i76.i.i.i.i", %._crit_edge.i.i
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.ch, %bb.ag ], [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i.i ], [ %.sroa.6.0.copyload.pre266.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i76.i.i.i.i" ] ; 2 uses
  %.sroa.4.0.copyload.i.i = phi ptr [ %i.cg, %bb.ag ], [ %i.cd, %._crit_edge.i.i ], [ %i.cg, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i76.i.i.i.i" ] ; 2 uses
  %i.dl = phi i8 [ %i.cz, %bb.ag ], [ 3, %._crit_edge.i.i ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i76.i.i.i.i" ]
  %.sroa.045.sroa.0.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045.sroa.0.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045.sroa.0.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !76673
  %.sroa.045.sroa.0.i.sroa.5.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.045.sroa.0.i.sroa.5.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !76673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !76738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !76738
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.434.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421.i.i.i.i)
  store i64 %i.bx, ptr %i.am, align 8, !noalias !76673
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !76673
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false), !noalias !76673
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  store i8 %..sroa.013.0.extract.trunc.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !76673
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 65
  store i24 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !76673
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  store i8 %i.be, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !76673
  %.sroa.934.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 69
  store i8 %i.dl, ptr %.sroa.934.0..sroa_idx.i.i.i, align 1, !noalias !76673
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %.noexc13.i.i.i unwind label %bb.ap, !noalias !76673

.noexc13.i.i.i:                                   ; preds = %bb.an
  %i.dm = icmp eq ptr %i.cd, %.sroa.4.0.copyload.i.i
  br i1 %i.dm, label %bb.ar, label %bb.ao, !prof !16

bb.ao:                                            ; preds = %.noexc13.i.i.i
  %i.dn = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.do = ptrtoint ptr %i.cd to i64
  %i.dp = sub nuw i64 %i.do, %i.dn
  %i.dq = lshr exact i64 %i.dp, 5
  %i.dr = add i64 %i.dq, %.sroa.6.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !76826
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.w, align 8, !noalias !76826
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.dr, ptr noundef nonnull align 1 %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.aq unwind label %bb.ap, !noalias !76673

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..settings..TypoSettings$GT$17hcb85f0388904c70eE"(ptr noalias noundef align 8 dereferenceable(72) %i.am) #44
          to label %.body.thread.thread.i.i unwind label %bb.as, !noalias !76673

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !76826
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..settings..TypoSettings$GT$17hcb85f0388904c70eE"(ptr noalias noundef align 8 dereferenceable(72) %i.am)
          to label %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i unwind label %.body.thread11.i.i, !noalias !76825

bb.ar:                                            ; preds = %.noexc13.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false)
  %.sroa.20.0.copyload12 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !76824
  br label %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i

bb.as:                                            ; preds = %.thread42.i.i.i, %bb.ap
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !76673
  unreachable

.thread42.i.i.i:                                  ; preds = %.thread47.loopexit.split-lp.i.i.i, %.thread47.loopexit.i.i.i, %bb.t, %bb.l
  %eh.lpad-body45.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.i.i.i.i, %bb.t ], [ %lpad.loopexit.i.i.i, %.thread47.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.thread47.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %.body.thread.i.i unwind label %bb.as, !noalias !76673

_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.20.3 = phi i64 [ %.sroa.20.0.copyload12, %bb.ar ], [ undef, %bb.aq ]
  %.sroa.11.3 = phi ptr [ %i.bw, %bb.ar ], [ %i.ds, %bb.aq ]
  %.sroa.0.3 = phi i64 [ %i.bx, %bb.ar ], [ 3, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !76673
  br label %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.i.i

_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i, %bb.am
  %.sroa.20.4 = phi i64 [ undef, %bb.am ], [ %.sroa.20.3, %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i ]
  %.sroa.11.4 = phi ptr [ %.sroa.9.2.ph.i.i.i, %bb.am ], [ %.sroa.11.3, %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i ]
  %.sroa.0.4 = phi i64 [ 3, %bb.am ], [ %.sroa.0.3, %_ZN5serde7private2de7content17visit_content_seq17h2656adf69dbb9be3E.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !76673
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i)
  br label %bb.dq

bb.at:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.dv, align 8, !alias.scope !76669, !noalias !76670
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !76669, !noalias !76670, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !76669, !noalias !76670 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !76825
  %i.dw = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.dw)
  %.idx.i12.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i12.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.dy, align 8, !noalias !76829
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !76829
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.531.0..sroa_idx.i.i.i, align 8, !noalias !76829
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr %i.dx, ptr %.sroa.632.0..sroa_idx.i.i.i, align 8, !noalias !76829
  store i8 22, ptr %i.u, align 8, !noalias !76829
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !noalias !76829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !76829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !76833
  store i64 3, ptr %i.t, align 8, !noalias !76833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !76833
  store i64 3, ptr %i.s, align 8, !noalias !76833
  %i.ea = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.ea, label %bb.dk, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.at
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i180.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i181.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.654.0..sroa_idx55.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 9 uses
  %.sroa.757.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.499.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.5100.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.637.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 11 uses
  %.sroa.740.0..sroa_idx41.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i13.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.2.0..sroa_idx.i.i.i135.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.654.0..sroa_idx55.promoted.i.i.i.i = load ptr, ptr %.sroa.654.0..sroa_idx55.i.i.i.i, align 8, !noalias !76833
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.bt, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %.sroa.499.0.copyload473.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.499.0.copyload472.i.i.i.i, %bb.bt ] ; 20 uses
  %.sroa.4102.0.copyload452.i.i.i.i = phi ptr [ %.sroa.654.0..sroa_idx55.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.4102.0.copyload451.i.i.i.i, %bb.bt ] ; 15 uses
  %i.ei = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fu, %bb.bt ] ; 4 uses
  %.sroa.0.0435.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.bt ] ; 7 uses
  %.sroa.06.0434.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.06.1.i.i.i.i, %bb.bt ] ; 7 uses
  %.sroa.010.0433.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.010.1.i.i.i.i, %bb.bt ] ; 7 uses
  %.sroa.8.sroa.0.0432.i.i.i.i = phi i24 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.sroa.0.1.i.i.i.i, %bb.bt ] ; 6 uses
  %i.ej = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fs, %bb.bt ] ; 25 uses
  %i.ek = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fr, %bb.bt ] ; 20 uses
  %i.el = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fq, %bb.bt ] ; 11 uses
  %i.em = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fp, %bb.bt ] ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store ptr %i.en, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !76829
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.ei, align 8, !noalias !76837 ; 3 uses
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i15.i.i, label %.thread.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.eo = load i64, ptr %i.dz, align 8, !noalias !76829, !noundef !15
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.dz, align 8, !noalias !76829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !76848
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !76848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !76848
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 32, i1 false), !noalias !76848
  %i.er = load i8, ptr %i.u, align 8, !range !625, !noalias !76829, !noundef !15
  %i.es = icmp eq i8 %i.er, 22
  br i1 %i.es, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.bf, !noalias !76829

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !76829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !76848
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !76848
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !76848 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !76848 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !76848 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76849)
  call void @llvm.experimental.noalias.scope.decl(metadata !76852)
  call void @llvm.experimental.noalias.scope.decl(metadata !76855)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.aw
    i8 4, label %bb.ax
    i8 12, label %bb.ay
    i8 13, label %bb.ba
    i8 14, label %bb.bb
    i8 15, label %bb.bd
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.et = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.n, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
          to label %.noexc.i.i33.i.i unwind label %.loopexit269.i.i.i.i, !noalias !76833

.noexc.i.i33.i.i:                                 ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.et, ptr %i.ec, align 8, !alias.scope !76858, !noalias !76859
  store i8 1, ptr %i.l, align 8, !alias.scope !76858, !noalias !76859
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i"

bb.aw:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.eu = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i.i.i, i8 5)
  store i8 %i.eu, ptr %i.eb, align 1, !alias.scope !76863, !noalias !76859
  store i8 0, ptr %i.l, align 8, !alias.scope !76863, !noalias !76859
  br label %bb.be

bb.ax:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i.i.i, i64 5)
  %.sink.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eb, align 1, !alias.scope !76868, !noalias !76859
  store i8 0, ptr %i.l, align 8, !alias.scope !76868, !noalias !76859
  br label %bb.be

bb.ay:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ev = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN203_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0fd8c79737467de9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ev, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !76871
  %i.ew = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ew, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76874
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i"

bb.ba:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ex = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN203_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0fd8c79737467de9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ex, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !76880, !noalias !76859
  br label %bb.be

bb.bb:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ey = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN203_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h98a5c1ff99b57510E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !76884
  %i.ez = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ez, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !76887
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i"

bb.bd:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.fa = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN203_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..TypoSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h98a5c1ff99b57510E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fa, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !76891, !noalias !76859
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba, %bb.ax, %bb.aw
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.n)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i" unwind label %.loopexit269.i.i.i.i, !noalias !76833

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i": ; preds = %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %.noexc.i.i33.i.i
  %i.fb = load i8, ptr %i.l, align 8, !range !447, !noalias !76848, !noundef !15
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.bh, label %bb.bi

bb.bf:                                            ; preds = %bb.av
  %i.fd = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4102.0.copyload452.i.i.i.i, ptr %.sroa.654.0..sroa_idx55.i.i.i.i, align 8, !noalias !76833
  store ptr %.sroa.499.0.copyload473.i.i.i.i, ptr %.sroa.637.0..sroa_idx38.i.i.i.i, align 8, !noalias !76833
  store i64 %i.el, ptr %i.s, align 8, !noalias !76833
  store i64 %i.em, ptr %i.t, align 8, !noalias !76833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !76829
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #44
          to label %.body.i.i.i.i unwind label %bb.bg, !noalias !76848

bb.bg:                                            ; preds = %bb.bf
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !76848
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.ca, %.loopexit.split-lp270.i.i.i.i, %.loopexit269.i.i.i.i, %bb.bf
  %i.ff = phi i64 [ %i.ej, %bb.bf ], [ %i.ej, %bb.ca ], [ %.lcssa559.i.i.i.i, %.loopexit269.i.i.i.i ], [ %i.ej, %.loopexit.split-lp270.i.i.i.i ] ; 2 uses
  %i.fg = phi i64 [ %i.ek, %bb.bf ], [ %i.ek, %bb.ca ], [ %.lcssa538.i.i.i.i, %.loopexit269.i.i.i.i ], [ %i.ek, %.loopexit.split-lp270.i.i.i.i ]
  %.pn.i.i16.i.i = phi { ptr, i32 } [ %i.fd, %bb.bf ], [ %i.fx, %bb.ca ], [ %lpad.loopexit271.i.i.i.i, %.loopexit269.i.i.i.i ], [ %lpad.loopexit.split-lp272.i.i.i.i, %.loopexit.split-lp270.i.i.i.i ] ; 2 uses
  %.not116.i.i.i.i = icmp eq i64 %i.fg, 3
  br i1 %.not116.i.i.i.i, label %bb.cv, label %bb.db

.loopexit269.i.i.i.i:                             ; preds = %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i179.i.i.i.i, %bb.ch, %bb.cd, %bb.bz, %bb.bw, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %bb.be, %.noexc9.i.i.i.i.i.i.i
  %.lcssa559.i.i.i.i = phi i64 [ %i.ej, %bb.ch ], [ 3, %bb.cd ], [ %i.ej, %.noexc9.i.i.i.i.i.i.i ], [ %i.ej, %bb.be ], [ %i.ej, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.ej, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.ej, %bb.bw ], [ %i.ej, %bb.bz ], [ %i.ej, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i179.i.i.i.i ]
  %.lcssa538.i.i.i.i = phi i64 [ 3, %bb.ch ], [ %i.ek, %bb.cd ], [ %i.ek, %.noexc9.i.i.i.i.i.i.i ], [ %i.ek, %bb.be ], [ %i.ek, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.ek, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.ek, %bb.bw ], [ %i.ek, %bb.bz ], [ %i.ek, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i179.i.i.i.i ]
  %lpad.loopexit271.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4102.0.copyload452.i.i.i.i, ptr %.sroa.654.0..sroa_idx55.i.i.i.i, align 8, !noalias !76833
  store ptr %.sroa.499.0.copyload473.i.i.i.i, ptr %.sroa.637.0..sroa_idx38.i.i.i.i, align 8, !noalias !76833
  store i64 %i.el, ptr %i.s, align 8, !noalias !76833
  store i64 %i.em, ptr %i.t, align 8, !noalias !76833
  br label %.body.i.i.i.i

.loopexit.split-lp270.i.i.i.i:                    ; preds = %.invoke535, %.invoke, %bb.cg
  %lpad.loopexit.split-lp272.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.bh:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i"
  store ptr %.sroa.499.0.copyload473.i.i.i.i, ptr %.sroa.637.0..sroa_idx38.i.i.i.i, align 8, !noalias !76833
  store i64 %i.em, ptr %i.t, align 8, !noalias !76833
  %i.fh = load ptr, ptr %i.ec, align 8, !noalias !76848, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !76848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76848
  br label %bb.cm

bb.bi:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd63be4bd9074432cE.exit.i.i.i.i.i.i.i"
  %i.fi = load i8, ptr %i.eb, align 1, !range !1118, !noalias !76848, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !76848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76848
  switch i8 %i.fi, label %default.unreachable [
    i8 5, label %bb.bo
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
    i8 4, label %bb.bn
  ]

.thread.i.i.i.i:                                  ; preds = %bb.bt, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.4102.0.copyload451.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.4102.0.copyload452.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.4102.0.copyload451.i.i.i.i, %bb.bt ]
  %.sroa.499.0.copyload472.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.499.0.copyload473.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.499.0.copyload472.i.i.i.i, %bb.bt ]
  %.lcssa371.i.i.i.i = phi i64 [ %i.ek, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.fr, %bb.bt ] ; 2 uses
  %.lcssa351.i.i.i.i = phi i64 [ %i.ej, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.fs, %bb.bt ] ; 2 uses
  %.sroa.8.sroa.0.0.lcssa.i.i.i.i = phi i24 [ %.sroa.8.sroa.0.0432.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.8.sroa.0.1.i.i.i.i, %bb.bt ]
  %.sroa.010.0.lcssa.i.i.i.i = phi i8 [ %.sroa.010.0433.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.010.1.i.i.i.i, %bb.bt ]
  %.sroa.06.0.lcssa.i.i.i.i = phi i8 [ %.sroa.06.0434.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.06.1.i.i.i.i, %bb.bt ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i8 [ %.sroa.0.0435.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.bt ]
  %.sroa.010.0.lcssa.fr.i.i.i.i = freeze i8 %.sroa.010.0.lcssa.i.i.i.i ; 2 uses
  %.sroa.0.0.lcssa.fr.i.i.i.i = freeze i8 %.sroa.0.0.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.4102.0.copyload451.lcssa.sink.i.i.i.i, ptr %.sroa.654.0..sroa_idx55.i.i.i.i, align 8, !noalias !76833
  %.not105.i.i.i.i = icmp eq i8 %.sroa.0.0.lcssa.fr.i.i.i.i, 4
  %i.fj = select i1 %.not105.i.i.i.i, i8 3, i8 %.sroa.0.0.lcssa.fr.i.i.i.i
  %.not106.i.i.i.i = icmp eq i8 %.sroa.06.0.lcssa.i.i.i.i, 5 ; 2 uses
  %.sroa.569.sroa.0.0.i.i.i.i = select i1 %.not106.i.i.i.i, i24 undef, i24 %.sroa.8.sroa.0.0.lcssa.i.i.i.i
  %.sroa.067.0.i.i.i.i = select i1 %.not106.i.i.i.i, i8 4, i8 %.sroa.06.0.lcssa.i.i.i.i
  %.not107.i.i.i.i = icmp eq i64 %.lcssa351.i.i.i.i, 3
  br i1 %.not107.i.i.i.i, label %bb.cs, label %bb.cr

default.unreachable:                              ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %.not114.i.i.i.i = icmp eq i8 %.sroa.0.0435.i.i.i.i, 4
  br i1 %.not114.i.i.i.i, label %bb.bp, label %.invoke535, !prof !16

bb.bk:                                            ; preds = %bb.bi
  %.not113.i.i.i.i = icmp eq i8 %.sroa.06.0434.i.i.i.i, 5
  br i1 %.not113.i.i.i.i, label %bb.bu, label %.invoke535, !prof !16

bb.bl:                                            ; preds = %bb.bi
  %.not112.i.i.i.i = icmp eq i64 %i.ej, 3
  br i1 %.not112.i.i.i.i, label %bb.cd, label %.invoke535, !prof !16

bb.bm:                                            ; preds = %bb.bi
  %.not111.i.i.i.i = icmp eq i64 %i.ek, 3
  br i1 %.not111.i.i.i.i, label %bb.ch, label %bb.cg, !prof !16

bb.bn:                                            ; preds = %bb.bi
  %.not110.i.i.i.i = icmp eq i8 %.sroa.010.0433.i.i.i.i, 4
  br i1 %.not110.i.i.i.i, label %bb.cj, label %.invoke535, !prof !16

bb.bo:                                            ; preds = %bb.bi
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.u, align 8, !noalias !76829 ; 2 uses
  store i8 22, ptr %i.u, align 8, !noalias !76829
  %.not.i.i.i129.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i129.i.i.i.i, label %.invoke, label %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, !prof !122

_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i: ; preds = %bb.bo
end_hunk_7
begin_hunk_8_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h40c028bcd51c67a3E":bb.a
  %i.bh = add nuw nsw i64 %i.bg, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !77111
  store i64 %i.bb, ptr %i.v, align 8, !noalias !77111
  %i.bi = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.bh, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.t unwind label %bb.s, !noalias !77028

bb.s:                                             ; preds = %bb.r, %.thread.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$meilisearch_types..settings..FacetingSettings$GT$17he183b48f0a58ce0aE"(ptr noalias noundef align 8 dereferenceable(48) %i.z) #44
          to label %.body.thread.thread.i.i unwind label %bb.z, !noalias !77028

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !77111
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77114)
  call void @llvm.experimental.noalias.scope.decl(metadata !77117)
  %i.bl = icmp eq i64 %.sroa.06.0.i.i.i.i, 0
  br i1 %i.bl, label %bb.u, label %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !77120)
  call void @llvm.experimental.noalias.scope.decl(metadata !77123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !77126
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.68.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c6e79f0bee9340bE.exit.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !77127, !noalias !77028
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !77127, !noalias !77028 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.68.sroa.0.0.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %.sroa.68.sroa.0.0.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !77128, !noalias !77131
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c6e79f0bee9340bE.exit.i.i.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c6e79f0bee9340bE.exit.i.i.i.i.i.i.i": ; preds = %bb.v, %bb.u
  %.sink23.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ]
  store i64 %.sink23.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !77128, !noalias !77131
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %.sink23.i.i.i.i.i.i.i.i, ptr %i.bm, align 8, !alias.scope !77128, !noalias !77131
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !alias.scope !77128, !noalias !77131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !77133
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h25c65f1e73e66752E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %.noexc6.i.i unwind label %.body.thread12.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !77110

.noexc6.i.i:                                      ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c6e79f0bee9340bE.exit.i.i.i.i.i.i.i"
  %i.bo = load ptr, ptr %i.t, align 8, !noalias !77133, !noundef !15 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc6.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.noexc7.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bu, %.noexc7.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !77133
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77138)
  call void @llvm.experimental.noalias.scope.decl(metadata !77141)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !77144, !noalias !77133 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17haa9e2fb8f2bca9bbE.exit.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !77144, !noalias !77133, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77145
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17haa9e2fb8f2bca9bbE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17haa9e2fb8f2bca9bbE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !77133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !77133
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h25c65f1e73e66752E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %.noexc7.i.i unwind label %.body.thread12.loopexit.i.i, !noalias !77110

.noexc7.i.i:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17haa9e2fb8f2bca9bbE.exit.i.i.i.i.i.i.i.i.i"
  %i.bu = load ptr, ptr %i.t, align 8, !noalias !77133, !noundef !15 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i", label %bb.w

"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i": ; preds = %.noexc7.i.i, %.noexc6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !77133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !77126
  br label %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i

bb.y:                                             ; preds = %.noexc11.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !77146
  br label %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i

bb.z:                                             ; preds = %bb.aa, %bb.s
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !77028
  unreachable

bb.aa:                                            ; preds = %.thread56.i.i.i, %.thread48.i.i.i, %.thread52.i.i.i
  %eh.lpad-body51.i.i.i = phi { ptr, i32 } [ %i.ay, %.thread48.i.i.i ], [ %lpad.thr_comm.i.i.i, %.thread56.i.i.i ], [ %i.am, %.thread52.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.aa)
          to label %.body.thread.thread.i.i unwind label %bb.z, !noalias !77028

_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i: ; preds = %bb.y, %"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i", %bb.t
  %.sroa.11.3 = phi i64 [ %..i.i.i.i, %bb.y ], [ %i.bk, %"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i" ], [ %i.bk, %bb.t ]
  %.sroa.0.3 = phi i64 [ %.33.i.i.i.i, %bb.y ], [ 3, %"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$GT$$GT$17h142ee606acaeb8baE.exit.i.i.i.i.i" ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !77028
  br label %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.i.i

_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i, %bb.q
  %.sroa.11.4 = phi i64 [ %.sroa.11.3, %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i ], [ %.sroa.6.0.ph.i.i.i, %bb.q ]
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %_ZN5serde7private2de7content17visit_content_seq17h4f3123602a72dbefE.exit.sink.split.i.i ], [ 3, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !77028
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.5.i.i.i.i.i.i.i)
  br label %bb.co

bb.ab:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bw, align 8, !alias.scope !77024, !noalias !77025
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !77024, !noalias !77025, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !77024, !noalias !77025 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !77110
  %i.bx = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.bx)
  %.idx.i13.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i13.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.bz, align 8, !noalias !77147
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !77147
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !77147
  %.sroa.624.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  store ptr %i.by, ptr %.sroa.624.0..sroa_idx.i.i.i, align 8, !noalias !77147
  store i8 22, ptr %i.o, align 8, !noalias !77147
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store i64 0, ptr %i.ca, align 8, !noalias !77147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !77147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !77151
  store i64 3, ptr %i.n, align 8, !noalias !77151
  %i.cb = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.cb, label %bb.ce, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.ab
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i64.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i65.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.623.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 9 uses
  %.sroa.7.0..sroa_idx26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.623.0..sroa_idx24.promoted.i.i.i.i = load ptr, ptr %.sroa.623.0..sroa_idx24.i.i.i.i, align 8, !noalias !77151
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.ch = phi ptr [ %i.by, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ez, %bb.bf ] ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.0.0185.i.i.i.i = phi ptr [ %.sroa.623.0..sroa_idx24.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.5.i.i.i.i.i.sroa.0.0184.i.i.i.i, %bb.bf ] ; 12 uses
  %i.ci = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ey, %bb.bf ] ; 4 uses
  %.sroa.0.0176.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.bf ] ; 4 uses
  %.sroa.8.0175.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %bb.bf ] ; 3 uses
  %i.cj = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fa, %bb.bf ] ; 14 uses
  %.sroa.01.0.i.i.i.i.i162174.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.01.0.i.i.i.i.i161.i.i.i.i, %bb.bf ] ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 3 uses
  store ptr %i.ck, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !77147
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.ci, align 8, !noalias !77155 ; 3 uses
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i15.i.i, label %.thread.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cl = load i64, ptr %i.ca, align 8, !noalias !77147, !noundef !15
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ca, align 8, !noalias !77147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !77166
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !77166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77166
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !noalias !77166
  %i.co = load i8, ptr %i.o, align 8, !range !625, !noalias !77147, !noundef !15
  %i.cp = icmp eq i8 %i.co, 22
  br i1 %i.cp, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.o)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.as, !noalias !77147

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ad, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !77147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !77166
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !77166 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77166 ; 8 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77166 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77166 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77167)
  call void @llvm.experimental.noalias.scope.decl(metadata !77170)
  call void @llvm.experimental.noalias.scope.decl(metadata !77173)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.ae
    i8 4, label %bb.af
    i8 12, label %bb.ag
    i8 13, label %bb.al
    i8 14, label %bb.ao
    i8 15, label %bb.aq
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cq = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !77151

.noexc.i.i.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.cq, ptr %i.cd, align 8, !alias.scope !77176, !noalias !77177
  store i8 1, ptr %i.j, align 8, !alias.scope !77176, !noalias !77177
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i"

bb.ae:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 1, !alias.scope !77181, !noalias !77177
  store i8 0, ptr %i.j, align 8, !alias.scope !77181, !noalias !77177
  br label %bb.ar

bb.af:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 1, !alias.scope !77186, !noalias !77177
  store i8 0, ptr %i.j, align 8, !alias.scope !77186, !noalias !77177
  br label %bb.ar

bb.ag:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cr = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77189)
  call void @llvm.experimental.noalias.scope.decl(metadata !77192)
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.14.0.copyload.i.i.i.i.i.i, 17
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = xor i128 %i.cs, 134768037938378153854463268821268980077
  %i.cu = getelementptr i8, ptr %i.cr, i64 16
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i128
  %i.cx = xor i128 %i.cw, 116
  %i.cy = or i128 %i.ct, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load i128, ptr %i.cr, align 1
  %i.dd = xor i128 %i.dc, 88328219687142990912426105941158686579
  %i.de = getelementptr i8, ptr %i.cr, i64 16
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i128
  %i.dh = xor i128 %i.dg, 121
  %i.di = or i128 %i.dd, %i.dh
  %i.dj = icmp ne i128 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dl, i8 1, i8 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ah ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ 2, %bb.ag ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 1, !alias.scope !77195, !noalias !77196
  store i8 0, ptr %i.j, align 8, !alias.scope !77195, !noalias !77196
  %i.dm = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.dm, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77199
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dn = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77204)
  call void @llvm.experimental.noalias.scope.decl(metadata !77207)
  %cond.i.i4.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, 17
  br i1 %cond.i.i4.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2bfbf14e300bb564E.exit.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.do = load i128, ptr %i.dn, align 1
  %i.dp = xor i128 %i.do, 134768037938378153854463268821268980077
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i128
  %i.dt = xor i128 %i.ds, 116
  %i.du = or i128 %i.dp, %i.dt
  %i.dv = icmp ne i128 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2bfbf14e300bb564E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = load i128, ptr %i.dn, align 1
  %i.dz = xor i128 %i.dy, 88328219687142990912426105941158686579
  %i.ea = getelementptr i8, ptr %i.dn, i64 16
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i128
  %i.ed = xor i128 %i.ec, 121
  %i.ee = or i128 %i.dz, %i.ed
  %i.ef = icmp ne i128 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i = select i1 %i.eh, i8 1, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2bfbf14e300bb564E.exit.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17h2bfbf14e300bb564E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %.sink.i.i5.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.am ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ 2, %bb.al ]
  store i8 %.sink.i.i5.i.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 1, !alias.scope !77210, !noalias !77211
  store i8 0, ptr %i.j, align 8, !alias.scope !77210, !noalias !77211
  br label %bb.ar

bb.ao:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ei = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN207_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..FacetingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h84ee2ab277e22327E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ei, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !77214
  %i.ej = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ej, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77217
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i"

bb.aq:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ek = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN207_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..FacetingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h84ee2ab277e22327E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ek, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !77221, !noalias !77177
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h2bfbf14e300bb564E.exit.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.l)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !77151

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i": ; preds = %bb.ar, %bb.ap, %bb.ao, %bb.ak, %bb.aj, %.noexc.i.i.i.i
  %i.el = load i8, ptr %i.j, align 8, !range !447, !noalias !77166, !noundef !15
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.ad
  %i.en = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.i.i.i.i.i.sroa.0.0185.i.i.i.i, ptr %.sroa.623.0..sroa_idx24.i.i.i.i, align 8, !noalias !77151
  store i64 %.sroa.01.0.i.i.i.i.i162174.i.i.i.i, ptr %i.n, align 8, !noalias !77151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !77147
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %.body.i.i.i.i unwind label %bb.at, !noalias !77166

bb.at:                                            ; preds = %bb.as
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !77166
  unreachable

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.as
  %i.ep = phi i64 [ %i.cj, %bb.as ], [ %.lcssa211.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.eq, %.loopexit.split-lp.i.i.i.i ]
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.en, %bb.as ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.ep, 3
  br i1 %.not52.i.i.i.i, label %.thread28.i.i.i, label %bb.bw

.loopexit.i.i.i.i:                                ; preds = %.thread.i.i.i.i.i.i.i17.i.i, %bb.bj, %bb.bb, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %bb.ar, %.noexc9.i.i.i.i.i.i.i
  %.lcssa211.i.i.i.i = phi i64 [ %i.cj, %bb.bb ], [ %i.cj, %.noexc9.i.i.i.i.i.i.i ], [ %i.cj, %bb.ar ], [ %i.cj, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ 3, %bb.bj ], [ 3, %.thread.i.i.i.i.i.i.i17.i.i ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.i.i.i.i.i.sroa.0.0185.i.i.i.i, ptr %.sroa.623.0..sroa_idx24.i.i.i.i, align 8, !noalias !77151
  store i64 %.sroa.01.0.i.i.i.i.i162174.i.i.i.i, ptr %i.n, align 8, !noalias !77151
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bo, %bb.bg, %bb.ba, %bb.az
  %i.eq = phi i64 [ %i.cj, %bb.ba ], [ %i.cj, %bb.bg ], [ %i.cj, %bb.az ], [ 3, %bb.bo ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.au:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7dcf998e30bcdc87E.exit.i.i.i.i.i.i.i"
end_hunk_8
begin_hunk_9_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h439978d2d697ec65E":bb.a
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ae)
          to label %.thread.i.i unwind label %.body.thread11.i.i, !noalias !77440

.sink.split.i.thread.i.i.i:                       ; preds = %bb.z, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i87.i.i.i.i", %..sink.split.i.thread.i_crit_edge.i.i
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bm, %bb.z ], [ %.sroa.6.0.copyload.pre366.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i87.i.i.i.i" ], [ %.sroa.6.0.copyload.pre.i.i, %..sink.split.i.thread.i_crit_edge.i.i ] ; 2 uses
  %.sroa.4.0.copyload.i.i = phi ptr [ %i.bl, %bb.z ], [ %i.bl, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i87.i.i.i.i" ], [ %i.av, %..sink.split.i.thread.i_crit_edge.i.i ] ; 2 uses
  %.sroa.031.0.i.i.i.i = phi i64 [ %.sroa.0106.0119.i.i.i.i, %bb.z ], [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i87.i.i.i.i" ], [ 4, %..sink.split.i.thread.i_crit_edge.i.i ] ; 2 uses
  %.sroa.633.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.7107.0120.i.i.i.i, %bb.z ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i87.i.i.i.i" ], [ undef, %..sink.split.i.thread.i_crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11108.i.i.i.i)
  store i64 %.72.i.i.i.i, ptr %i.ad, align 8, !noalias !77334
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %..i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store i64 %.sroa.031.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.633.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.733.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.733.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.633.sroa.5.i.i.i.i, i64 128, i1 false), !noalias !77334
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160 ; 2 uses
  store i64 %.sroa.0100.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  store ptr %.sroa.8.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  store i64 %.sroa.11.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  store i64 %.sroa.0101.0.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.1234.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  store ptr %.sroa.8102.0.i.i.i.i, ptr %.sroa.1234.0..sroa_idx.i.i.i, align 8, !noalias !77334
  %.sroa.1335.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i64 %.sroa.11103.0.i.i.i.i, ptr %.sroa.1335.0..sroa_idx.i.i.i, align 8, !noalias !77334
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ae)
          to label %.noexc8.i.i.i unwind label %bb.ag, !noalias !77334

.noexc8.i.i.i:                                    ; preds = %.sink.split.i.thread.i.i.i
  %i.bv = icmp eq ptr %i.av, %.sroa.4.0.copyload.i.i
  br i1 %i.bv, label %bb.al, label %bb.af, !prof !16

bb.af:                                            ; preds = %.noexc8.i.i.i
  %i.bw = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.bx = ptrtoint ptr %i.av to i64
  %i.by = sub nuw i64 %i.bx, %i.bw
  %i.bz = lshr exact i64 %i.by, 5
  %i.ca = add i64 %i.bz, %.sroa.6.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !77441
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.u, align 8, !noalias !77441
  %i.cb = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ca, ptr noundef nonnull align 1 %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.ah unwind label %bb.ag, !noalias !77334

bb.ag:                                            ; preds = %bb.af, %.sink.split.i.thread.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$milli..update..chat..ChatSettings$GT$17h669fd83026c41dbdE"(ptr noalias noundef align 8 dereferenceable(208) %i.ad) #44, !noalias !77334
  br label %.body.thread.thread.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !77441
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %or.cond.i.i10.i.i.i = icmp slt i64 %.sroa.0100.0.i.i.i.i, 1
  br i1 %or.cond.i.i10.i.i.i, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i.i.i, i64 noundef %.sroa.0100.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77444
  br label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i.i.i.i": ; preds = %bb.ai, %bb.ah
  %or.cond.i9.i.i.i.i = icmp slt i64 %.sroa.0101.0.i.i.i.i, 1
  br i1 %or.cond.i9.i.i.i.i, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8102.0.i.i.i.i, i64 noundef %.sroa.0101.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77451
  br label %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i": ; preds = %bb.aj, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit.i.i.i.i"
  %i.ce = icmp samesign ult i64 %.sroa.031.0.i.i.i.i, 3
  br i1 %i.ce, label %bb.ak, label %.thread.sink.split.i.i

bb.ak:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i"
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %.sroa.5.0..sroa_idx.i.i.i), !noalias !77334
  br label %.thread.sink.split.i.i

bb.al:                                            ; preds = %.noexc8.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.0..sroa_idx.i.i.i, i64 144, i1 false), !noalias !77439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !77439
  br label %.thread.sink.split.i.i

bb.am:                                            ; preds = %.thread.i.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !77334
  unreachable

.thread.i.i.i:                                    ; preds = %bb.ad, %bb.e, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit86.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.ad ], [ %.pn.i.i.i.i, %bb.e ], [ %.pn.i.i.i.i, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit86.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ae)
          to label %.body.thread.thread.i.i unwind label %bb.am, !noalias !77334

.thread.sink.split.i.i:                           ; preds = %bb.al, %bb.ak, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i"
  %.sroa.11.2 = phi i64 [ %..i.i.i.i, %bb.al ], [ %i.cd, %bb.ak ], [ %i.cd, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i" ]
  %.sroa.0.2 = phi i64 [ %.72.i.i.i.i, %bb.al ], [ 3, %bb.ak ], [ 3, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h118d6aa1f116a91fE.exit10.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !77334
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.ae
  %.sroa.11.3 = phi i64 [ %.sroa.7.2.ph.i.i.i, %bb.ae ], [ %.sroa.11.2, %.thread.sink.split.i.i ]
  %.sroa.0.3 = phi i64 [ 3, %bb.ae ], [ %.sroa.0.2, %.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !77334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633.sroa.5.i.i.i.i)
  br label %"_ZN5milli6update4chat1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$11deserialize17h9fd4f83310913f43E.exit"

bb.an:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cg, align 8, !alias.scope !77330, !noalias !77331
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !77330, !noalias !77331, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !77330, !noalias !77331 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.587.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !77440
  %i.ch = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ch)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.cj, align 8, !noalias !77456
  %.sroa.436.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !noalias !77456
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.537.0..sroa_idx.i.i.i, align 8, !noalias !77456
  %.sroa.638.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  store ptr %i.ci, ptr %.sroa.638.0..sroa_idx.i.i.i, align 8, !noalias !77456
  store i8 22, ptr %i.s, align 8, !noalias !77456
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 3 uses
  store i64 0, ptr %i.ck, align 8, !noalias !77456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !77456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !77460
  store i64 5, ptr %i.r, align 8, !noalias !77460
  %i.cl = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.cl, label %.thread253.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.an
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i172.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i173.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.664.0..sroa_idx65.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 20 uses
  %.sroa.767.0..sroa_idx68.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i164.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i197.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx10.i.i206.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0..sroa_idx.i.i.i157.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.12.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.664.0..sroa_idx65.promoted.i.i.i.i = load ptr, ptr %.sroa.664.0..sroa_idx65.i.i.i.i, align 8, !noalias !77460
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.cx = phi ptr [ %i.ci, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.gk, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 6 uses
  %.sroa.5.i.i.i.i.i.sroa.0.0287603.i.i.i.i = phi ptr [ %.sroa.664.0..sroa_idx65.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.5.i.i.i.i.i.sroa.0.0287602.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %i.cy = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.gj, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 4 uses
  %.sroa.0.0582.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 8 uses
  %.sroa.8.0581.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 7 uses
  %i.cz = phi i64 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.gl, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.0215.0579.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0215.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 28 uses
  %.sroa.13.0577.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 10 uses
  %.sroa.19.0576.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 6 uses
  %.sroa.0222.0574.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0222.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 28 uses
  %.sroa.13229.0572.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13229.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 10 uses
  %.sroa.19230.0571.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19230.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 6 uses
  %.sroa.03.0.i.i.i.i.i288547570.i.i.i.i = phi i64 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.03.0.i.i.i.i.i288546.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 7 uses
  store ptr %i.da, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !noalias !77456
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.cy, align 8, !noalias !77464 ; 3 uses
  %.not.i.i.i.i.i12.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i12.i.i, label %.thread253.sink.split.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.db = load i64, ptr %i.ck, align 8, !noalias !77456, !noundef !15
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.ck, align 8, !noalias !77456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !77475
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !77475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77475
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false), !noalias !77475
  %i.de = load i8, ptr %i.s, align 8, !range !625, !noalias !77456, !noundef !15
  %i.df = icmp eq i8 %i.de, 22
  br i1 %i.df, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.bk, !noalias !77456

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ap, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !77456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !77475
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !77475
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77475 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77475 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77475 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77476)
  call void @llvm.experimental.noalias.scope.decl(metadata !77479)
  call void @llvm.experimental.noalias.scope.decl(metadata !77482)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.aq
    i8 4, label %bb.ar
    i8 12, label %bb.as
    i8 13, label %bb.ba
    i8 14, label %bb.bg
    i8 15, label %bb.bi
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dg = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !77460

.noexc.i.i.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.dg, ptr %i.cn, align 8, !alias.scope !77485, !noalias !77486
  store i8 1, ptr %i.n, align 8, !alias.scope !77485, !noalias !77486
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i"

bb.aq:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dh = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i.i.i, i8 4)
  store i8 %i.dh, ptr %i.cm, align 1, !alias.scope !77490, !noalias !77486
  store i8 0, ptr %i.n, align 8, !alias.scope !77490, !noalias !77486
  br label %bb.bj

bb.ar:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i.i.i, i64 4)
  %.sink.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cm, align 1, !alias.scope !77495, !noalias !77486
  store i8 0, ptr %i.n, align 8, !alias.scope !77495, !noalias !77486
  br label %bb.bj

bb.as:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.di = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77498)
  call void @llvm.experimental.noalias.scope.decl(metadata !77501)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i, label %bb.ax [
    i64 11, label %bb.at
    i64 16, label %bb.au
    i64 24, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.dj = load i64, ptr %i.di, align 1
  %i.dk = xor i64 %i.dj, 8390322045806929252
  %i.dl = getelementptr i8, ptr %i.di, i64 3
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 7957695015410037347
  %i.do = or i64 %i.dk, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ay, label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.ds = load i128, ptr %i.di, align 1
  %i.dt = icmp ne i128 %i.ds, 134856309995034221452033302628246187876
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ay, label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.dw = load i128, ptr %i.di, align 1
  %i.dx = xor i128 %i.dw, 134856309995034221452033302628246187876
  %i.dy = getelementptr i8, ptr %i.di, i64 16
  %i.dz = load i64, ptr %i.dy, align 1
  %i.ea = zext i64 %i.dz to i128
  %i.eb = xor i128 %i.ea, 8315180351164539213
  %i.ec = or i128 %i.dx, %i.eb
  %i.ed = icmp ne i128 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.eg = load i128, ptr %i.di, align 1
  %i.eh = icmp ne i128 %i.eg, 153455199102365335292749996713115215219
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at, %bb.as
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.av ], [ 4, %bb.ax ], [ 1, %bb.au ], [ 3, %bb.aw ], [ 0, %bb.at ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cm, align 1, !alias.scope !77504, !noalias !77505
  store i8 0, ptr %i.n, align 8, !alias.scope !77504, !noalias !77505
  %i.ek = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ek, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77508
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i"

bb.ba:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.el = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77513)
  call void @llvm.experimental.noalias.scope.decl(metadata !77516)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i, label %bb.bf [
    i64 11, label %bb.bb
    i64 16, label %bb.bc
    i64 24, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.em = load i64, ptr %i.el, align 1
  %i.en = xor i64 %i.em, 8390322045806929252
  %i.eo = getelementptr i8, ptr %i.el, i64 3
  %i.ep = load i64, ptr %i.eo, align 1
  %i.eq = xor i64 %i.ep, 7957695015410037347
  %i.er = or i64 %i.en, %i.eq
  %i.es = icmp ne i64 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.ev = load i128, ptr %i.el, align 1
  %i.ew = icmp ne i128 %i.ev, 134856309995034221452033302628246187876
  %i.ex = zext i1 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.ez = load i128, ptr %i.el, align 1
  %i.fa = xor i128 %i.ez, 134856309995034221452033302628246187876
  %i.fb = getelementptr i8, ptr %i.el, i64 16
  %i.fc = load i64, ptr %i.fb, align 1
  %i.fd = zext i64 %i.fc to i128
  %i.fe = xor i128 %i.fd, 8315180351164539213
  %i.ff = or i128 %i.fa, %i.fe
  %i.fg = icmp ne i128 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fj = load i128, ptr %i.el, align 1
  %i.fk = icmp ne i128 %i.fj, 153455199102365335292749996713115215219
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.sink.i.i5.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.bd ], [ 4, %bb.bf ], [ 1, %bb.bc ], [ 3, %bb.be ], [ 0, %bb.bb ]
  store i8 %.sink.i.i5.i.i.i.i.i.i.i.i.i.i, ptr %i.cm, align 1, !alias.scope !77519, !noalias !77520
  store i8 0, ptr %i.n, align 8, !alias.scope !77519, !noalias !77520
  br label %bb.bj

bb.bg:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.fn = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN187_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hf341644d0d4ab879E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !77523
  %i.fo = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.fo, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77526
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i"

bb.bi:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.fp = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN187_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hf341644d0d4ab879E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fp, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !77530, !noalias !77486
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbd0cd1510c843341E.exit.i.i.i.i.i.i.i.i.i.i, %bb.ar, %bb.aq
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !77460

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he9ca49295351d318E.exit.i.i.i.i.i.i.i": ; preds = %bb.bj, %bb.bh, %bb.bg, %bb.az, %bb.ay, %.noexc.i.i.i.i
  %i.fq = load i8, ptr %i.n, align 8, !range !447, !noalias !77475, !noundef !15
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.bm, label %bb.bn

bb.bk:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.i.i.i.i.i.sroa.0.0287603.i.i.i.i, ptr %.sroa.664.0..sroa_idx65.i.i.i.i, align 8, !noalias !77460
  store i64 %.sroa.03.0.i.i.i.i.i288547570.i.i.i.i, ptr %i.r, align 8, !noalias !77460
end_hunk_9
begin_hunk_10_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h475f82d090a79661E":bb.a
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.j, align 8, !noalias !77677
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !77677
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !77677
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !77677
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !77677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77690)
  %i.r = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.r, label %select.unfold.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i": ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32 ; 3 uses
  store ptr %i.s, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !alias.scope !77693, !noalias !77694
  %.sroa.0.0.copyload2.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !77701 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !77702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77702
  store i64 1, ptr %i.q, align 8, !alias.scope !77703, !noalias !77704
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !77702
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77711)
  switch i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i, label %bb.d [
    i8 17, label %bb.e
    i8 16, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i"
    i8 18, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = invoke fastcc { i64, ptr } @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h5140ddbcb9493d14E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.i)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8c843ee1b25a9297E.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !77677

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !77714, !noalias !77715, !nonnull !15, !align !569, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !77718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !77718
  %i.w = invoke fastcc { i64, ptr } @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h5140ddbcb9493d14E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %.thread11.i.i.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !77718

.thread11.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !77718
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 32, i64 noundef 8) #45, !noalias !77718
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8c843ee1b25a9297E.exit.i.i.i.i.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.c
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.i)
          to label %bb.g unwind label %bb.h, !noalias !77677

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 32, i64 noundef 8) #45, !noalias !77718
  br label %.thread.i.i.i

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8c843ee1b25a9297E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.thread11.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.pn.i.i.i.i.i.i.i.i.i = phi { i64, ptr } [ %i.w, %.thread11.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i.i.i.i.i, 0
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.y = trunc nuw i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.y, label %bb.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.i.i.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8c843ee1b25a9297E.exit.i.i.i.i.i.i.i.i.i"
  %i.z = ptrtoint ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i.i, null
  %..i.i.i.i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i"
  %..i.i15.i.i.i.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.i.i.i.i.i.i.i" ], [ 1, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i" ]
  %i.aa = phi i64 [ %i.z, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !77702
  br label %select.unfold.i.i.i

bb.h:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hecb36c1eae8c767fE.exit.thread11.i.i.i.i.i.i.i", %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.i:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h8c843ee1b25a9297E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !77702
  %i.ac = ptrtoint ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i.i to i64
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j)
          to label %.thread.i.i unwind label %.body.thread12.i.i, !noalias !77719

select.unfold.i.i.i:                              ; preds = %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i", %bb.b
  %i.ad = phi i64 [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.2.0.copyload.i.i, %bb.b ], [ %i.s, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %..i29.i.i.i = phi i64 [ %i.aa, %bb.g ], [ undef, %bb.b ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ]
  %.sroa.0.0.ph.i.i.i = phi i64 [ %..i.i15.i.i.i.i.i.i.i, %bb.g ], [ 2, %bb.b ], [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j)
          to label %.noexc6.i.i unwind label %.body.thread12.i.i, !noalias !77719

.noexc6.i.i:                                      ; preds = %select.unfold.i.i.i
  %i.ae = icmp eq ptr %i.p, %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i
  br i1 %i.ae, label %.thread.i.i, label %bb.j, !prof !16

bb.j:                                             ; preds = %.noexc6.i.i
  %i.af = ptrtoint ptr %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i to i64
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub nuw i64 %i.ag, %i.af
  %i.ai = lshr exact i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ai, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !77720
  store i64 %i.ad, ptr %i.g, align 8, !noalias !77720
  %i.ak = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.aj, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %.noexc7.i.i unwind label %.body.thread12.i.i, !noalias !77719

.noexc7.i.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !77720
  %i.al = ptrtoint ptr %i.ak to i64
  br label %.thread.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.x, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j)
          to label %.body.thread.thread.i.i unwind label %bb.k, !noalias !77677

bb.k:                                             ; preds = %.thread.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !77677
  unreachable

.thread.i.i:                                      ; preds = %.noexc6.i.i, %.noexc7.i.i, %bb.i
  %.sroa.10.1 = phi i64 [ %i.ac, %bb.i ], [ %i.al, %.noexc7.i.i ], [ %..i29.i.i.i, %.noexc6.i.i ]
  %.sroa.0.1 = phi i64 [ 3, %bb.i ], [ 3, %.noexc7.i.i ], [ %.sroa.0.0.ph.i.i.i, %.noexc6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !77677
  br label %"_ZN17meilisearch_types8settings1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PaginationSettings$GT$11deserialize17h689b5e1a1d440e26E.exit"

bb.l:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.an, align 8, !alias.scope !77673, !noalias !77674
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !77673, !noalias !77674, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !77673, !noalias !77674 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !77719
  %i.ao = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ao)
  %.idx.i13.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i13.i.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.aq, align 8, !noalias !77723
  %.sroa.4.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 8 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !77723
  %.sroa.5.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i15.i.i, align 8, !noalias !77723
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.ap, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !77723
  store i8 22, ptr %i.f, align 8, !noalias !77723
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 8 uses
  store i64 0, ptr %i.ar, align 8, !noalias !77723
  %i.as = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.as, label %"_ZN204_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PaginationSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h76f09b42d708d2b4E.exit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.l
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.2.0..sroa_idx.i.i.i26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = add nsw i64 %.idx.i13.i.i, -64
  %i.av = lshr exact i64 %i.au, 6
  %i.aw = add nuw nsw i64 %i.av, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.bd, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.ax = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ba, %bb.bd ] ; 2 uses
  %.sroa.0.064.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.bd ] ; 3 uses
  %.sroa.8.063.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %bb.bd ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.az, %bb.bd ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 9 uses
  %.sroa.012.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.ay, align 8, !noalias !77727 ; 3 uses
  %.not.i.i.i.i.i17.i.i = icmp eq i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i17.i.i, label %.thread.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = add nuw nsw i64 %i.ax, 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77741
  store i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !77741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77741
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !77723
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77741 ; 6 uses
  %.sroa.11.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77741 ; 4 uses
  %.sroa.15.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77741 ; 2 uses
  switch i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, label %bb.au [
    i8 1, label %bb.m
    i8 4, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.r
    i8 14, label %bb.t
    i8 15, label %bb.ah
  ], !prof !777

bb.m:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !77741
  %i.bc = icmp ne i8 %.sroa.5.0.copyload.i.i.i.i.i.i, 0
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.bd = icmp ne i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.be = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 7809651250344517997
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = xor i64 %i.bj, 1937008968
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0                    ; 2 uses
  %i.bn = zext i1 %i.bm to i32                    ; 0 uses
  %spec.select.i.i4.i.i.i.i.i.i.i.i.i.i = zext i1 %i.bm to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.bo = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.noexc.i.i.i, label %.noexc.sink.split.i.i.i

bb.r:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.not.i.i5.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i.i.i, 12
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bp = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = xor i64 %i.bq, 7809651250344517997
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = xor i64 %i.bu, 1937008968
  %i.bw = or i64 %i.br, %i.bv
  %i.bx = icmp ne i64 %i.bw, 0                    ; 2 uses
  %i.by = zext i1 %i.bx to i32                    ; 0 uses
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.bz = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 13 uses
  %i.ca = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 12
  br i1 %i.ca, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.cb = load i8, ptr %i.bz, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cc = icmp eq i8 %i.cb, 109
  br i1 %i.cc, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cf = icmp eq i8 %i.ce, 97
  br i1 %i.cf, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.ci = icmp eq i8 %i.ch, 120
  br i1 %i.ci, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cl = icmp eq i8 %i.ck, 84
  br i1 %i.cl, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.co = icmp eq i8 %i.cn, 111
  br i1 %i.co, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cr = icmp eq i8 %i.cq, 116
  br i1 %i.cr, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cu = icmp eq i8 %i.ct, 97
  br i1 %i.cu, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.cx = icmp eq i8 %i.cw, 108
  br i1 %i.cx, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.da = icmp eq i8 %i.cz, 72
  br i1 %i.da, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.dd = icmp eq i8 %i.dc, 105
  br i1 %i.dd, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.dg = icmp eq i8 %i.df, 116
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !77742, !noalias !77745, !noundef !15
  %i.dj = icmp ne i8 %i.di, 115
  %spec.select.i.i10.i.i.i.i.i.i.i.i.i.i = zext i1 %i.dj to i8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink.i.i9.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.t ], [ %spec.select.i.i10.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ 1, %bb.ae ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ] ; 2 uses
  %i.dk = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.dk, label %.noexc.i.i.i, label %.noexc.sink.split.i.i.i

bb.ah:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dl = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 12 uses
  %i.dm = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i.i.i, 12
  br i1 %i.dm, label %bb.ai, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i8, ptr %i.dl, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.do = icmp eq i8 %i.dn, 109
  br i1 %i.do, label %bb.aj, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.dr = icmp eq i8 %i.dq, 97
  br i1 %i.dr, label %bb.ak, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.du = icmp eq i8 %i.dt, 120
  br i1 %i.du, label %bb.al, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.dx = icmp eq i8 %i.dw, 84
  br i1 %i.dx, label %bb.am, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.ea = icmp eq i8 %i.dz, 111
  br i1 %i.ea, label %bb.an, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 5
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.ed = icmp eq i8 %i.ec, 116
  br i1 %i.ed, label %bb.ao, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.eg = icmp eq i8 %i.ef, 97
  br i1 %i.eg, label %bb.ap, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dl, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.ej = icmp eq i8 %i.ei, 108
  br i1 %i.ej, label %bb.aq, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !77759, !noalias !77764, !noundef !15
  %i.em = icmp eq i8 %i.el, 72
  br i1 %i.em, label %bb.ar, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hf724125a4fe59c82E.exit.i.i.i.i.i.i.i.i.i.i
end_hunk_10
begin_hunk_11_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h480eef7da6c6205dE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !77834
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !77834
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h112352039dd91995E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !77809

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !77834
  %i.x = load i32, ptr %i.n, align 8, !range !752, !noalias !77834, !noundef !15
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aa = load float, ptr %i.z, align 4, !noalias !77834, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !77834
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !77834, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !77834
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i", %bb.b
  %i.ad = phi i64 [ 1, %bb.b ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ 2, %bb.d ] ; 3 uses
  %i.ae = phi ptr [ %.sroa.2.0.copyload.i.i, %bb.b ], [ %i.w, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.w, %bb.d ] ; 4 uses
  %.sroa.732.0.ph.i.i.i.i = phi float [ 5.000000e-01, %bb.b ], [ 5.000000e-01, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.aa, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77843)
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %bb.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i27.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i27.i.i.i.i": ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  store ptr %i.ag, ptr %.sroa.440.0..sroa_idx.i.i.i, align 8, !alias.scope !77846, !noalias !77847
  %.sroa.0.0.copyload4.i.i.i.i.i.i.i = load i8, ptr %i.ae, align 8, !noalias !77853 ; 2 uses
  %.not.i.i.i28.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i28.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i27.i.i.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.2.0..sroa_idx.i.i.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !77854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i29.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77854
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !77855, !noalias !77856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !77854
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !77854
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17he89761fc396e38d6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc11.i.i.i unwind label %bb.r, !noalias !77809

.noexc11.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !77854
  %i.ah = load i64, ptr %i.l, align 8, !range !286, !noalias !77854, !noundef !15 ; 6 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !77857 ; 6 uses
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !77854
  br label %bb.j

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i27.i.i.i.i", %bb.f
  %i.al = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef 1, ptr noundef nonnull align 1 @615, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.j unwind label %bb.r, !noalias !77809

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.sroa.6.0.ph.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ak, %bb.h ], [ %i.ac, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.thread.i.i unwind label %.body.thread11.i.i, !noalias !77858

bb.k:                                             ; preds = %.noexc11.i.i.i
  %.sroa.1036.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.1036.0.copyload.i.i.i.i = load i64, ptr %.sroa.1036.0..sroa_idx.i.i.i.i, align 8, !noalias !77857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !77854
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.noexc13.i.i.i unwind label %bb.m, !noalias !77809

.noexc13.i.i.i:                                   ; preds = %bb.k
  %i.am = icmp eq ptr %i.t, %i.ag
  br i1 %i.am, label %.thread.i.i, label %bb.l, !prof !16

bb.l:                                             ; preds = %.noexc13.i.i.i
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = ptrtoint ptr %i.t to i64
  %i.ap = sub nuw i64 %i.ao, %i.an
  %i.aq = lshr exact i64 %i.ap, 5
  %i.ar = add nuw nsw i64 %i.aq, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !77859
  store i64 %i.ad, ptr %i.j, align 8, !noalias !77859
  %i.as = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ar, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.o unwind label %bb.m, !noalias !77809 ; 2 uses

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = icmp eq i64 %i.ah, 0
  br i1 %i.au, label %.body.thread.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77862
  br label %.body.thread.thread.i.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !77859
  %i.av = icmp eq i64 %i.ah, 0
  br i1 %i.av, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77867
  br label %.thread.i.i

bb.q:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !77809
  unreachable

bb.r:                                             ; preds = %bb.i, %bb.g, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body.thread.thread.i.i unwind label %bb.q, !noalias !77809

.thread.i.i:                                      ; preds = %.noexc13.i.i.i, %bb.p, %bb.o, %bb.j
  %.sroa.21.1 = phi float [ undef, %bb.j ], [ undef, %bb.p ], [ undef, %bb.o ], [ %.sroa.732.0.ph.i.i.i.i, %.noexc13.i.i.i ]
  %.sroa.19.1 = phi i64 [ undef, %bb.j ], [ undef, %bb.p ], [ undef, %bb.o ], [ %.sroa.1036.0.copyload.i.i.i.i, %.noexc13.i.i.i ]
  %.sroa.11.1 = phi ptr [ %.sroa.6.0.ph.i.i.i, %bb.j ], [ %i.as, %bb.p ], [ %i.as, %bb.o ], [ %i.ak, %.noexc13.i.i.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775808, %bb.j ], [ -9223372036854775808, %bb.p ], [ -9223372036854775808, %bb.o ], [ %i.ah, %.noexc13.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !77809
  br label %"_ZN5milli6update4chat1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..HybridQuery$GT$11deserialize17hfdc9e87c37661f64E.exit"

bb.s:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ay, align 8, !alias.scope !77805, !noalias !77806
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !77805, !noalias !77806, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !77805, !noalias !77806 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !77858
  %i.az = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.az)
  %.idx.i11.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i11.i.i ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.bb, align 8, !noalias !77872
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 10 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !77872
  %.sroa.535.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !noalias !77872
  %.sroa.636.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.ba, ptr %.sroa.636.0..sroa_idx.i.i.i, align 8, !noalias !77872
  store i8 22, ptr %i.i, align 8, !noalias !77872
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 10 uses
  store i64 0, ptr %i.bc, align 8, !noalias !77872
  %i.bd = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.bd, label %.thread.thread.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.s
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i93.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i94.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.564.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.665.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0..sroa_idx.i.i.i88.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.2.0..sroa_idx.i.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bh = add nsw i64 %.idx.i11.i.i, -64
  %i.bi = lshr exact i64 %i.bh, 6
  %i.bj = add nuw nsw i64 %i.bi, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.ar, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.bk = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.bn, %bb.ar ] ; 2 uses
  %.sroa.0.0194.i.i.i.i = phi i32 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.ar ] ; 4 uses
  %.sroa.7.0193.i.i.i.i = phi float [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.7.1.i.i.i.i, %bb.ar ] ; 3 uses
  %.sroa.0101.0192.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0101.1.i.i.i.i, %bb.ar ] ; 14 uses
  %.sroa.13.0191.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %bb.ar ] ; 10 uses
  %.sroa.19.0190.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i, %bb.ar ] ; 3 uses
  %i.bl = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.bm, %bb.ar ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 11 uses
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.bl, align 8, !noalias !77876 ; 3 uses
  %.not.i.i.i.i.i13.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i13.i.i, label %.thread.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = add nuw nsw i64 %i.bk, 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !77890
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !77890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !77890
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false), !noalias !77872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77890
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !77890 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77890 ; 8 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77890 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !77890 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77891)
  call void @llvm.experimental.noalias.scope.decl(metadata !77894)
  call void @llvm.experimental.noalias.scope.decl(metadata !77897)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.t
    i8 4, label %bb.u
    i8 12, label %bb.v
    i8 13, label %bb.aa
    i8 14, label %bb.ad
    i8 15, label %bb.af
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !77900

.noexc.i.i.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.bp, ptr %i.bf, align 8, !alias.scope !77901, !noalias !77902
  store i8 1, ptr %i.e, align 8, !alias.scope !77901, !noalias !77902
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i"

bb.t:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 1, !alias.scope !77906, !noalias !77902
  store i8 0, ptr %i.e, align 8, !alias.scope !77906, !noalias !77902
  br label %bb.ag

bb.u:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 1, !alias.scope !77911, !noalias !77902
  store i8 0, ptr %i.e, align 8, !alias.scope !77911, !noalias !77902
  br label %bb.ag

bb.v:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.bq = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77914)
  call void @llvm.experimental.noalias.scope.decl(metadata !77917)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i, label %bb.y [
    i64 13, label %bb.w
    i64 8, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = xor i64 %i.br, 7163384699739268467
  %i.bt = getelementptr i8, ptr %i.bq, i64 5
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 8028075772107516276
  %i.bw = or i64 %i.bs, %i.bv
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bz, i8 0, i8 2
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ca = load i64, ptr %i.bq, align 1
  %i.cb = icmp ne i64 %i.ca, 8243105075332017509
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cd, i8 1, i8 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.v ], [ %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 1, !alias.scope !77920, !noalias !77921
  store i8 0, ptr %i.e, align 8, !alias.scope !77920, !noalias !77921
  %i.ce = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77924
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cf = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77929)
  call void @llvm.experimental.noalias.scope.decl(metadata !77932)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h07db974cdc968598E.exit.i.i.i.i.i.i.i.i.i.i [
    i64 13, label %bb.ab
    i64 8, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = xor i64 %i.cg, 7163384699739268467
  %i.ci = getelementptr i8, ptr %i.cf, i64 5
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 8028075772107516276
  %i.cl = or i64 %i.ch, %i.ck
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i = select i1 %i.co, i8 0, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h07db974cdc968598E.exit.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %i.cf, align 1
  %i.cq = icmp ne i64 %i.cp, 8243105075332017509
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i = select i1 %i.cs, i8 1, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h07db974cdc968598E.exit.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17h07db974cdc968598E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sink.i.i6.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.aa ], [ %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i, %bb.ab ]
  store i8 %.sink.i.i6.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 1, !alias.scope !77935, !noalias !77936
  store i8 0, ptr %i.e, align 8, !alias.scope !77935, !noalias !77936
  br label %bb.ag

bb.ad:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ct = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN186_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..HybridQuery$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h4e89e63c3a8c2c9bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ct, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !77939
  %i.cu = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !77942
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cv = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN186_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..HybridQuery$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h4e89e63c3a8c2c9bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cv, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !77946, !noalias !77902
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h07db974cdc968598E.exit.i.i.i.i.i.i.i.i.i.i, %bb.u, %bb.t
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !77900

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i": ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.z, %bb.y, %.noexc.i.i.i.i
  %i.cw = load i8, ptr %i.e, align 8, !range !447, !noalias !77890, !noundef !15
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ah, label %bb.ai

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.13.0174.i.i.i.i = phi ptr [ %.sroa.13.0176.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %.sroa.13.0191.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %.sroa.0101.0158.i.i.i.i = phi i64 [ %.sroa.0101.0160.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %.sroa.0101.0192.lcssa218.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  switch i64 %.sroa.0101.0158.i.i.i.i, label %bb.ba [
    i64 -9223372036854775808, label %bb.bo
    i64 0, label %bb.bo
  ]

.loopexit.i.i.i.i:                                ; preds = %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hd2c82be0b626635bE.exit.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %bb.ag, %.noexc9.i.i.i.i.i.i.i
  %.sroa.0101.0192.lcssa218.i.i.i.i = phi i64 [ %.sroa.0101.0192.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0101.0192.i.i.i.i, %bb.ag ], [ %.sroa.0101.0192.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0101.0192.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hd2c82be0b626635bE.exit.i.i.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hf6a380983282e7f0E.exit.i.i.i.i.i ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bm, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !77872
  store i64 %i.bn, ptr %i.bc, align 8, !noalias !77872
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke, %.thread.thread.i.i.i.i, %bb.au, %bb.as, %bb.am
  %.sroa.13.0176.i.i.i.i = phi ptr [ %.sroa.13.0191.i.i.i.i, %bb.am ], [ %.sroa.13.0191.i.i.i.i, %bb.as ], [ %.sroa.13.0.lcssa237.i.i.i.i, %.thread.thread.i.i.i.i ], [ %.sroa.13.0191.i.i.i.i, %.invoke ], [ %.sroa.13.0191.i.i.i.i, %bb.au ]
  %.sroa.0101.0160.i.i.i.i = phi i64 [ %.sroa.0101.0192.i.i.i.i, %bb.am ], [ %.sroa.0101.0192.i.i.i.i, %bb.as ], [ -9223372036854775808, %.thread.thread.i.i.i.i ], [ %.sroa.0101.0192.i.i.i.i, %.invoke ], [ -9223372036854775808, %bb.au ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ah:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i"
  store ptr %i.bm, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !77872
  store i64 %i.bn, ptr %i.bc, align 8, !noalias !77872
  %i.cy = load ptr, ptr %i.bf, align 8, !noalias !77890, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !77890
  br label %bb.ay

bb.ai:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hea599057ff67af0bE.exit.i.i.i.i.i.i.i"
  %i.cz = load i8, ptr %i.be, align 1, !range !934, !noalias !77890, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !77890
  switch i8 %i.cz, label %default.unreachable [
    i8 2, label %bb.al
    i8 0, label %bb.aj
    i8 1, label %bb.ak
  ]

.thread.i.i.i.i:                                  ; preds = %bb.ar, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.lcssa74.i.i = phi ptr [ %i.ba, %bb.ar ], [ %i.bm, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %i.da = phi i64 [ %i.bj, %bb.ar ], [ %i.bk, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.19.0.lcssa.ph.i.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i, %bb.ar ], [ %.sroa.19.0190.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.13.0.lcssa.ph.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i, %bb.ar ], [ %.sroa.13.0191.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.0101.0.lcssa.ph.i.i.i.i = phi i64 [ %.sroa.0101.1.i.i.i.i, %bb.ar ], [ %.sroa.0101.0192.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.7.0.lcssa.ph.i.i.i.i = phi float [ %.sroa.7.1.i.i.i.i, %bb.ar ], [ %.sroa.7.0193.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.0.0.lcssa.ph.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ar ], [ %.sroa.0.0194.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  store ptr %.lcssa74.i.i, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !77872
  store i64 %i.da, ptr %i.bc, align 8, !noalias !77872
  %.not71.i.i.i.i = icmp eq i64 %.sroa.0101.0.lcssa.ph.i.i.i.i, -9223372036854775808
  br i1 %.not71.i.i.i.i, label %.thread.thread.i.i.i.i, label %bb.bh

end_hunk_11
begin_hunk_12_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h65c5ecfd64198870E":bb.a
bb.k:                                             ; preds = %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i", %bb.b
  %i.ak = phi i64 [ 0, %bb.b ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i" ], [ 1, %bb.i ] ; 2 uses
  %i.al = phi i64 [ 1, %bb.b ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i" ], [ 2, %bb.i ] ; 2 uses
  %i.am = phi ptr [ %.sroa.2.0.copyload.i.i, %bb.b ], [ %i.w, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i" ], [ %i.w, %bb.i ] ; 4 uses
  %.sroa.853.0.ph.i.i.i = phi i8 [ undef, %bb.b ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i26.i.i.i, %bb.i ]
  %.sroa.552.0.ph.i.i.i = phi i8 [ 3, %bb.b ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i19.i.i.i" ], [ %not..i.i.i.i.i25.i.i.i, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78314)
  %i.an = icmp eq ptr %i.am, %i.t
  br i1 %i.an, label %.noexc14.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i": ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !78317, !noalias !78318
  %.sroa.0.0.copyload2.i.i.i.i.i.i = load i8, ptr %i.am, align 8, !noalias !78324 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.l

bb.l:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !78325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i, i64 31, i1 false), !noalias !78325
  store i64 %i.al, ptr %i.u, align 8, !alias.scope !78326, !noalias !78327
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !78325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !78334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78340)
  switch i8 %.sroa.0.0.copyload2.i.i.i.i.i.i, label %bb.m [
    i8 16, label %bb.p
    i8 17, label %bb.n
    i8 18, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h0a03fe943458da7aE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i" unwind label %bb.t, !noalias !78266

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !78342, !noalias !78343, !nonnull !15, !align !569, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !78344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !78344
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h0a03fe943458da7aE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.o unwind label %bb.q, !noalias !78345

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !78344
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 32, i64 noundef 8) #45, !noalias !78344
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.ar, align 1, !alias.scope !78337, !noalias !78345
  store i8 0, ptr %i.l, align 8, !alias.scope !78337, !noalias !78345
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i" unwind label %bb.t, !noalias !78266

bb.q:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 32, i64 noundef 8) #45, !noalias !78344
  br label %.thread.i.i.i

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.m
  %i.at = load i8, ptr %i.l, align 8, !range !447, !noalias !78334, !noundef !15
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !447, !noalias !78334, !noundef !15 ; 2 uses
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !noalias !78334
  %not..i.i.i.i.i.i.i.i = xor i8 %i.aw, 1
  %.sroa.5.0.i.i.i.i.i.i.i.i = select i1 %i.ax, i8 %i.az, i8 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !78334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !78325
  br label %.noexc14.i.i.i

bb.s:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hfad3c26123e75d61E.exit.i.i.i.i.i.i.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !78334, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !78334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !78325
  br label %bb.u

bb.t:                                             ; preds = %bb.p, %bb.m, %bb.g, %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.u:                                             ; preds = %bb.s, %bb.j
  %.sroa.834.0.ph.i.i.i = phi ptr [ %i.bb, %bb.s ], [ %i.aj, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %"_ZN17meilisearch_types8settings1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..MinWordSizeTyposSetting$GT$11deserialize17hf1c30d481ae525f1E.exit.thread13" unwind label %.body.thread12.i.i, !noalias !78346

.noexc14.i.i.i:                                   ; preds = %bb.r, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i", %bb.k
  %i.bd = phi i64 [ %i.ak, %bb.k ], [ %i.ak, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i" ], [ %i.al, %bb.r ] ; 2 uses
  %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i = phi ptr [ %i.t, %bb.k ], [ %i.ao, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i" ], [ %i.ao, %bb.r ] ; 2 uses
  %.sroa.556.0.ph.i.i.i = phi i8 [ 3, %bb.k ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i" ], [ %not..i.i.i.i.i.i.i.i, %bb.r ] ; 2 uses
  %.sroa.857.0.ph.i.i.i = phi i8 [ undef, %bb.k ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.r ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.noexc6.i.i unwind label %.body.thread12.i.i, !noalias !78346

.noexc6.i.i:                                      ; preds = %.noexc14.i.i.i
  %i.be = icmp eq ptr %i.t, %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i
  br i1 %i.be, label %"_ZN17meilisearch_types8settings1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..MinWordSizeTyposSetting$GT$11deserialize17hf1c30d481ae525f1E.exit", label %bb.v, !prof !16

bb.v:                                             ; preds = %.noexc6.i.i
  %i.bf = ptrtoint ptr %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i to i64
  %i.bg = ptrtoint ptr %i.t to i64
  %i.bh = sub nuw i64 %i.bg, %i.bf
  %i.bi = lshr exact i64 %i.bh, 5
  %i.bj = add nuw nsw i64 %i.bi, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !78347
  store i64 %i.bd, ptr %i.n, align 8, !noalias !78347
  %i.bk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.bj, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %.noexc7.i.i unwind label %.body.thread12.i.i, !noalias !78346

.noexc7.i.i:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !78347
  br label %"_ZN17meilisearch_types8settings1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..MinWordSizeTyposSetting$GT$11deserialize17hf1c30d481ae525f1E.exit.thread13"

.thread.i.i.i:                                    ; preds = %bb.t, %bb.q, %bb.h
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.as, %bb.q ], [ %i.bc, %bb.t ], [ %i.aa, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body.thread.thread.i.i unwind label %bb.w, !noalias !78266

bb.w:                                             ; preds = %.thread.i.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78266
  unreachable

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bm, align 8, !alias.scope !78262, !noalias !78263
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !78262, !noalias !78263, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !78262, !noalias !78263 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78346
  %i.bn = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.bn)
  %.idx.i13.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i13.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.bp, align 8, !noalias !78350
  %.sroa.4.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !78350
  %.sroa.5.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i15.i.i, align 8, !noalias !78350
  %.sroa.6.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store ptr %i.bo, ptr %.sroa.6.0..sroa_idx.i16.i.i, align 8, !noalias !78350
  store i8 22, ptr %i.g, align 8, !noalias !78350
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  store i64 0, ptr %i.bq, align 8, !noalias !78350
  %i.br = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.br, label %.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.x
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.ce, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.bw = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.he, %bb.ce ] ; 4 uses
  %.sroa.0.091.i.i.i.i = phi i8 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.ce ] ; 4 uses
  %.sroa.8.090.i.i.i.i = phi i8 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %bb.ce ] ; 3 uses
  %.sroa.05.089.i.i.i.i = phi i8 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.05.1.i.i.i.i, %bb.ce ] ; 4 uses
  %.sroa.88.088.i.i.i.i = phi i8 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.88.1.i.i.i.i, %bb.ce ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !78350
  %.sroa.012.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.bw, align 8, !noalias !78354 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.y

bb.y:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i64, ptr %i.bq, align 8, !noalias !78350, !noundef !15
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bq, align 8, !noalias !78350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78368
  store i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !78368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !78368
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !78368
  %i.cb = load i8, ptr %i.g, align 8, !range !625, !noalias !78350, !noundef !15
  %i.cc = icmp eq i8 %i.cb, 22
  br i1 %i.cc, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.bq, !noalias !78350

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !78350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78368 ; 6 uses
  %.sroa.11.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78368 ; 4 uses
  %.sroa.15.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78368 ; 2 uses
  switch i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, label %bb.bs [
    i8 1, label %bb.aa
    i8 4, label %bb.ab
    i8 12, label %bb.ac
    i8 13, label %bb.af
    i8 14, label %bb.ai
    i8 15, label %bb.ba
  ], !prof !777

bb.aa:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !78368
  switch i8 %.sroa.5.0.copyload.i.i.i.i.i.i, label %bb.bv [
    i8 0, label %bb.bw
    i8 1, label %bb.bu
  ]

bb.ab:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  switch i64 %.sroa.61.0.copyload.i.i.i.i.i.i, label %bb.bv [
    i64 0, label %bb.bw
    i64 1, label %bb.bu
  ]

bb.ac:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cd = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 4 uses
  switch i64 %.sroa.15.0.copyload.i.i.i.i.i.i, label %spec.select.i.i.i.i.i.i.i.i.si.unfold.false.i.i.i.i [
    i64 7, label %bb.ad
    i64 8, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = xor i32 %i.ce, 1415933551
  %i.cg = getelementptr i8, ptr %i.cd, i64 3
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = xor i32 %i.ch, 1869642068
  %i.cj = or i32 %i.cf, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  %spec.select = select i1 %i.cm, i8 0, i8 2
  br label %spec.select.i.i.i.i.i.i.i.i.si.unfold.false.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cn = load i64, ptr %i.cd, align 1
  %i.co = icmp ne i64 %i.cn, 8317990703186540404
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  %spec.select20 = select i1 %i.cq, i8 1, i8 2
  br label %spec.select.i.i.i.i.i.i.i.i.si.unfold.false.i.i.i.i

spec.select.i.i.i.i.i.i.i.i.si.unfold.false.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ac ], [ %spec.select, %bb.ad ], [ %spec.select20, %bb.ae ] ; 2 uses
  %i.cr = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cr, label %bb.bt, label %.sink.split.i.i.i.i

bb.af:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cs = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  switch i64 %.sroa.11.0.copyload.i.i.i.i.i.i, label %bb.bv [
    i64 7, label %bb.ag
    i64 8, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = xor i32 %i.ct, 1415933551
  %i.cv = getelementptr i8, ptr %i.cs, i64 3
  %i.cw = load i32, ptr %i.cv, align 1
  %i.cx = xor i32 %i.cw, 1869642068
  %i.cy = or i32 %i.cu, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.bw, label %bb.bv

bb.ah:                                            ; preds = %bb.af
  %i.dc = load i64, ptr %i.cs, align 1
  %i.dd = icmp ne i64 %i.dc, 8317990703186540404
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.bu, label %bb.bv

bb.ai:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dg = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 16 uses
  switch i64 %.sroa.15.0.copyload.i.i.i.i.i.i, label %bb.al [
    i64 7, label %bb.aj
    i64 8, label %bb.ar
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.di = icmp eq i8 %i.dh, 111
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.dl = icmp eq i8 %i.dk, 110
  br i1 %i.dl, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai
  br label %bb.az

bb.am:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.do = icmp eq i8 %i.dn, 101
  br i1 %i.do, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.dr = icmp eq i8 %i.dq, 84
  br i1 %i.dr, label %bb.ao, label %bb.al

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.du = icmp eq i8 %i.dt, 121
  br i1 %i.du, label %bb.ap, label %bb.al

bb.ap:                                            ; preds = %bb.ao
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.dx = icmp eq i8 %i.dw, 112
  br i1 %i.dx, label %bb.aq, label %bb.al

bb.aq:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.ea = icmp eq i8 %i.dz, 111
  br i1 %i.ea, label %bb.az, label %bb.al

bb.ar:                                            ; preds = %bb.ai
  %i.eb = load i8, ptr %i.dg, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.ec = icmp eq i8 %i.eb, 116
  br i1 %i.ec, label %bb.as, label %bb.al

bb.as:                                            ; preds = %bb.ar
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.ef = icmp eq i8 %i.ee, 119
  br i1 %i.ef, label %bb.at, label %bb.al

bb.at:                                            ; preds = %bb.as
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.ei = icmp eq i8 %i.eh, 111
  br i1 %i.ei, label %bb.au, label %bb.al

bb.au:                                            ; preds = %bb.at
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.el = icmp eq i8 %i.ek, 84
  br i1 %i.el, label %bb.av, label %bb.al

bb.av:                                            ; preds = %bb.au
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.eo = icmp eq i8 %i.en, 121
  br i1 %i.eo, label %bb.aw, label %bb.al

bb.aw:                                            ; preds = %bb.av
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.er = icmp eq i8 %i.eq, 112
  br i1 %i.er, label %bb.ax, label %bb.al

bb.ax:                                            ; preds = %bb.aw
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.eu = icmp eq i8 %i.et, 111
  br i1 %i.eu, label %bb.ay, label %bb.al

bb.ay:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 7
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !78369, !noalias !78372, !noundef !15
  %i.ex = icmp eq i8 %i.ew, 115
  br i1 %i.ex, label %bb.az, label %bb.al

bb.az:                                            ; preds = %bb.ay, %bb.aq, %bb.al
  %.sink.i.i9.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.al ], [ 1, %bb.ay ], [ 0, %bb.aq ] ; 2 uses
  %i.ey = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ey, label %bb.bt, label %.sink.split.i.i.i.i

bb.ba:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ez = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 15 uses
end_hunk_12
begin_hunk_13_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h679b836a0baf9d76E":bb.a
  store i64 %.sroa.063.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store double %.sroa.664.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %.sroa.0169.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.sroa.8170.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, i64 16, i1 false), !noalias !78414
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i.i, i64 24, i1 false), !noalias !78414
  %.sroa.1140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 88 ; 2 uses
  store i64 %.sroa.0177.0.i.i.i.i, ptr %.sroa.1140.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  store ptr %.sroa.8178.0.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store i64 %.sroa.11179.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !78414
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.i.i, i64 24, i1 false), !noalias !78414
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 2 uses
  store i8 %i.df, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !78414
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.aw)
          to label %.noexc9.i.i.i unwind label %bb.bl, !noalias !78414

.noexc9.i.i.i:                                    ; preds = %bb.bj
  %i.em = icmp eq ptr %i.cn, %.sroa.4.0.copyload.i.i
  br i1 %i.em, label %bb.bn, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %.noexc9.i.i.i
  %i.en = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.eo = ptrtoint ptr %i.cn to i64
  %i.ep = sub nuw i64 %i.eo, %i.en
  %i.eq = lshr exact i64 %i.ep, 5
  %i.er = add i64 %i.eq, %.sroa.6.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !78672
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.ae, align 8, !noalias !78672
  %i.es = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.er, ptr noundef nonnull align 1 %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.bm unwind label %bb.bl, !noalias !78414

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.et = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef align 8 dereferenceable(144) %i.av) #44, !noalias !78414
  br label %.body.thread.thread.i.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !78672
  %i.eu = ptrtoint ptr %i.es to i64
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef align 8 dereferenceable(144) %i.av), !noalias !78414
  br label %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i

bb.bn:                                            ; preds = %.noexc9.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !78670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1140.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !78670
  %.sroa.23.0.copyload17 = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !78670
  br label %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i

bb.bo:                                            ; preds = %.thread57.i.i.i
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78414
  unreachable

.thread57.i.i.i:                                  ; preds = %.thread62.i.i.i, %bb.p, %.body14.i.i.i, %bb.g
  %eh.lpad-body60.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.thread62.i.i.i ], [ %.pn103.i.i.i.i, %.body14.i.i.i ], [ %.pn103.i.i.i.i, %bb.p ], [ %i.bi, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.aw)
          to label %.body.thread.thread.i.i unwind label %bb.bo, !noalias !78414

_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.23.3 = phi i64 [ %.sroa.23.0.copyload17, %bb.bn ], [ undef, %bb.bm ]
  %.sroa.11.3 = phi i64 [ %..i104.i.i.i, %bb.bn ], [ %i.eu, %bb.bm ]
  %.sroa.0.3 = phi i64 [ %.107.i106.i.i.i, %bb.bn ], [ 3, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !78414
  br label %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i

_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i, %bb.bi
  %.sroa.23.4 = phi i64 [ undef, %bb.bi ], [ %.sroa.23.3, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i ]
  %.sroa.11.4 = phi i64 [ %.sroa.11.5.ph.i.i.i, %bb.bi ], [ %.sroa.11.3, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i ]
  %.sroa.0.4 = phi i64 [ 3, %bb.bi ], [ %.sroa.0.3, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !78414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.i.i)
  br label %bb.fn

bb.bp:                                            ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ew, align 8, !alias.scope !78410, !noalias !78411
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !78410, !noalias !78411, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !78410, !noalias !78411 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5132.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5119.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !78671
  %i.ex = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ex)
  %.idx.i11.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i11.i.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.ez, align 8, !noalias !78675
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !78675
  %.sroa.539.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.539.0..sroa_idx.i.i.i, align 8, !noalias !78675
  %.sroa.640.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  store ptr %i.ey, ptr %.sroa.640.0..sroa_idx.i.i.i, align 8, !noalias !78675
  store i8 22, ptr %i.z, align 8, !noalias !78675
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 3 uses
  store i64 0, ptr %i.fa, align 8, !noalias !78675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !78675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !78679
  store i64 -9223372036854775806, ptr %i.y, align 8, !noalias !78679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !78679
  store i64 -9223372036854775806, ptr %i.x, align 8, !noalias !78679
  %i.fb = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.fb, label %bb.fg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.bp
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i276.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i277.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i259.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i255.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.697.0..sroa_idx98.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 26 uses
  %.sroa.7100.0..sroa_idx101.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 25 uses
  %.sroa.2.0..sroa_idx.i.i.i249.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i242.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0..sroa_idx.i.i.i234.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i230.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.655.0..sroa_idx56.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 27 uses
  %.sroa.758.0..sroa_idx59.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 26 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0..sroa_idx.i.i.i224.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.697.0..sroa_idx98.promoted.i.i.i.i = load ptr, ptr %.sroa.697.0..sroa_idx98.i.i.i.i, align 8, !noalias !78679
  %.sroa.7100.0..sroa_idx101.promoted.i.i.i.i = load i64, ptr %.sroa.7100.0..sroa_idx101.i.i.i.i, align 8, !noalias !78679
  %.sroa.655.0..sroa_idx56.promoted.i.i.i.i = load ptr, ptr %.sroa.655.0..sroa_idx56.i.i.i.i, align 8, !noalias !78679
  %.sroa.758.0..sroa_idx59.promoted.i.i.i.i = load i64, ptr %.sroa.758.0..sroa_idx59.i.i.i.i, align 8, !noalias !78679
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.fq = phi ptr [ %i.ey, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.gz, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 8 uses
  %.sroa.9333.0.ph1041.i.i.i.i = phi i64 [ %.sroa.758.0..sroa_idx59.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.9333.0.ph1040.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 32 uses
  %.sroa.5332.0.ph1008.i.i.i.i = phi ptr [ %.sroa.655.0..sroa_idx56.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.5332.0.ph1007.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 32 uses
  %.sroa.9343.0.ph975.i.i.i.i = phi i64 [ %.sroa.7100.0..sroa_idx101.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.9343.0.ph974.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 31 uses
  %.sroa.5342.0.ph942.i.i.i.i = phi ptr [ %.sroa.697.0..sroa_idx98.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.5342.0.ph941.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 31 uses
  %i.fr = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.gy, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 4 uses
  %.sroa.0.0913.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 10 uses
  %.sroa.8.0912.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 9 uses
  %.sroa.012.0911.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.012.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 10 uses
  %.sroa.015.0910.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.015.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 10 uses
  %.sroa.818.0909.i.i.i.i = phi double [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.818.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 9 uses
  %i.fs = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.hd, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 44 uses
  %i.ft = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.hc, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 38 uses
  %.sroa.0311.0908.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0311.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 42 uses
  %.sroa.13.0907.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 13 uses
  %.sroa.0318.0905.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0318.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 40 uses
  %.sroa.13325.0903.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13325.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 12 uses
  %.sroa.19326.0902.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19326.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 8 uses
  %i.fu = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.hb, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 30 uses
  %i.fv = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ha, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 31 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 64 ; 9 uses
  store ptr %i.fw, ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !78675
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.fr, align 8, !noalias !78683 ; 3 uses
  %.not.i.i.i.i.i13.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i13.i.i, label %.thread358.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fx = load i64, ptr %i.fa, align 8, !noalias !78675, !noundef !15
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %i.fa, align 8, !noalias !78675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !78694
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !78694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !78694
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.fz, i64 32, i1 false), !noalias !78694
  %i.ga = load i8, ptr %i.z, align 8, !range !625, !noalias !78675, !noundef !15
  %i.gb = icmp eq i8 %i.ga, 22
  br i1 %i.gb, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.z)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.cb, !noalias !78675

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.br, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !78675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !78694
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !78694
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78694 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78694 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !78694 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78695)
  call void @llvm.experimental.noalias.scope.decl(metadata !78698)
  call void @llvm.experimental.noalias.scope.decl(metadata !78701)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.bs
    i8 4, label %bb.bt
    i8 12, label %bb.bu
    i8 13, label %bb.bw
    i8 14, label %bb.bx
    i8 15, label %bb.bz
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.gc = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.v, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
          to label %.noexc.i.i37.i.i unwind label %.loopexit.i.i.i.i, !noalias !78679

.noexc.i.i37.i.i:                                 ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.gc, ptr %i.fd, align 8, !alias.scope !78704, !noalias !78705
  store i8 1, ptr %i.t, align 8, !alias.scope !78704, !noalias !78705
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i"

bb.bs:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.gd = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i.i.i, i8 7)
  store i8 %i.gd, ptr %i.fc, align 1, !alias.scope !78709, !noalias !78705
  store i8 0, ptr %i.t, align 8, !alias.scope !78709, !noalias !78705
  br label %bb.ca

bb.bt:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i.i.i, i64 7)
  %.sink.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fc, align 1, !alias.scope !78714, !noalias !78705
  store i8 0, ptr %i.t, align 8, !alias.scope !78714, !noalias !78705
  br label %bb.ca

bb.bu:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ge = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN191_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h4f2e969ba4f99d19E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ge, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !78717
  %i.gf = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.gf, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !78720
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i"

bb.bw:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.gg = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN191_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h4f2e969ba4f99d19E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gg, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !78726, !noalias !78705
  br label %bb.ca

bb.bx:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.gh = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN191_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h88433005ca4a9a74E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !78730
  %i.gi = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.gi, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i", label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !78733
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i"

bb.bz:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.gj = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN191_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h88433005ca4a9a74E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gj, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !78737, !noalias !78705
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bt, %bb.bs
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.v)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !78679

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i": ; preds = %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bu, %.noexc.i.i37.i.i
  %i.gk = load i8, ptr %i.t, align 8, !range !447, !noalias !78694, !noundef !15
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.cd, label %bb.ce

bb.cb:                                            ; preds = %bb.br
  %i.gm = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5342.0.ph942.i.i.i.i, ptr %.sroa.697.0..sroa_idx98.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9343.0.ph975.i.i.i.i, ptr %.sroa.7100.0..sroa_idx101.i.i.i.i, align 8, !noalias !78679
  store ptr %.sroa.5332.0.ph1008.i.i.i.i, ptr %.sroa.655.0..sroa_idx56.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9333.0.ph1041.i.i.i.i, ptr %.sroa.758.0..sroa_idx59.i.i.i.i, align 8, !noalias !78679
  store i64 %i.fu, ptr %i.x, align 8, !noalias !78679
  store i64 %i.fv, ptr %i.y, align 8, !noalias !78679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !78675
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.v) #44
          to label %.body.i.i14.i.i unwind label %bb.cc, !noalias !78694

bb.cc:                                            ; preds = %bb.cb
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78694
  unreachable

.body.i.i14.i.i:                                  ; preds = %bb.ed, %bb.dq, %bb.di, %bb.cs, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.cb
  %i.go = phi i64 [ %i.fs, %bb.di ], [ %i.fs, %bb.cb ], [ %i.fs, %bb.cs ], [ %i.fs, %bb.dq ], [ %i.fs, %bb.ed ], [ %.lcssa1368.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.gq, %.loopexit.split-lp.i.i.i.i ]
  %i.gp = phi i64 [ %i.ft, %bb.di ], [ %i.ft, %bb.cb ], [ %i.ft, %bb.cs ], [ %i.ft, %bb.dq ], [ %i.ft, %bb.ed ], [ %.lcssa1335.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.gr, %.loopexit.split-lp.i.i.i.i ]
  %.sroa.0311.09081331.i.i.i.i = phi i64 [ %.sroa.0311.0908.i.i.i.i, %bb.di ], [ %.sroa.0311.0908.i.i.i.i, %bb.cb ], [ -9223372036854775806, %bb.cs ], [ %.sroa.0311.0908.i.i.i.i, %bb.dq ], [ %.sroa.0311.0908.i.i.i.i, %bb.ed ], [ %.sroa.0311.0908.lcssa1295.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0311.09081332.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0318.09051253.i.i.i.i = phi i64 [ -9223372036854775806, %bb.di ], [ %.sroa.0318.0905.i.i.i.i, %bb.cb ], [ %.sroa.0318.0905.i.i.i.i, %bb.cs ], [ %.sroa.0318.0905.i.i.i.i, %bb.dq ], [ %.sroa.0318.0905.i.i.i.i, %bb.ed ], [ %.sroa.0318.0905.lcssa1217.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0318.09051254.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn.i.i15.i.i = phi { ptr, i32 } [ %i.hr, %bb.di ], [ %i.gm, %bb.cb ], [ %i.gv, %bb.cs ], [ %i.hv, %bb.dq ], [ %i.ik, %bb.ed ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.not185.i.i.i.i = icmp eq i64 %i.gp, -9223372036854775806
  br i1 %.not185.i.i.i.i, label %.body.thread.i.i.i.i, label %.thread.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h833b70a750807930E.exit.thread.i.i.i.i.i.i.i18.i.i", %bb.ea, %bb.dv, %bb.dp, %bb.dm, %.thread.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %bb.db, %bb.cx, %.thread.i.i.i.i.i.i.i34.i.i, %bb.cp, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %bb.ca, %.noexc9.i.i.i.i.i.i.i
  %.lcssa1368.i.i.i.i = phi i64 [ %i.fs, %bb.cx ], [ %i.fs, %.noexc9.i.i.i.i.i.i.i ], [ %i.fs, %bb.ca ], [ %i.fs, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.fs, %bb.cp ], [ %i.fs, %.thread.i.i.i.i.i.i.i34.i.i ], [ -9223372036854775806, %bb.db ], [ %i.fs, %bb.dm ], [ %i.fs, %bb.dp ], [ %i.fs, %bb.dv ], [ %i.fs, %bb.ea ], [ %i.fs, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h833b70a750807930E.exit.thread.i.i.i.i.i.i.i18.i.i" ], [ %i.fs, %.noexc.i.i.i.i.i.i.i ], [ %i.fs, %.thread.i.i.i.i.i.i ]
  %.lcssa1335.i.i.i.i = phi i64 [ %i.ft, %bb.cx ], [ %i.ft, %.noexc9.i.i.i.i.i.i.i ], [ %i.ft, %bb.ca ], [ %i.ft, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.ft, %bb.cp ], [ %i.ft, %.thread.i.i.i.i.i.i.i34.i.i ], [ %i.ft, %bb.db ], [ %i.ft, %bb.dm ], [ %i.ft, %bb.dp ], [ -9223372036854775806, %bb.dv ], [ %i.ft, %bb.ea ], [ %i.ft, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h833b70a750807930E.exit.thread.i.i.i.i.i.i.i18.i.i" ], [ %i.ft, %.noexc.i.i.i.i.i.i.i ], [ %i.ft, %.thread.i.i.i.i.i.i ]
  %.sroa.0311.0908.lcssa1295.i.i.i.i = phi i64 [ %.sroa.0311.0908.i.i.i.i, %bb.cx ], [ %.sroa.0311.0908.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0311.0908.i.i.i.i, %bb.ca ], [ %.sroa.0311.0908.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ -9223372036854775806, %bb.cp ], [ -9223372036854775806, %.thread.i.i.i.i.i.i.i34.i.i ], [ %.sroa.0311.0908.i.i.i.i, %bb.db ], [ %.sroa.0311.0908.i.i.i.i, %bb.dm ], [ %.sroa.0311.0908.i.i.i.i, %bb.dp ], [ %.sroa.0311.0908.i.i.i.i, %bb.dv ], [ %.sroa.0311.0908.i.i.i.i, %bb.ea ], [ %.sroa.0311.0908.i.i.i.i, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h833b70a750807930E.exit.thread.i.i.i.i.i.i.i18.i.i" ], [ %.sroa.0311.0908.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0311.0908.i.i.i.i, %.thread.i.i.i.i.i.i ]
  %.sroa.0318.0905.lcssa1217.i.i.i.i = phi i64 [ %.sroa.0318.0905.i.i.i.i, %bb.cx ], [ %.sroa.0318.0905.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0318.0905.i.i.i.i, %bb.ca ], [ %.sroa.0318.0905.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0318.0905.i.i.i.i, %bb.cp ], [ %.sroa.0318.0905.i.i.i.i, %.thread.i.i.i.i.i.i.i34.i.i ], [ %.sroa.0318.0905.i.i.i.i, %bb.db ], [ %.sroa.0318.0905.i.i.i.i, %bb.dm ], [ %.sroa.0318.0905.i.i.i.i, %bb.dp ], [ %.sroa.0318.0905.i.i.i.i, %bb.dv ], [ %.sroa.0318.0905.i.i.i.i, %bb.ea ], [ %.sroa.0318.0905.i.i.i.i, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h833b70a750807930E.exit.thread.i.i.i.i.i.i.i18.i.i" ], [ -9223372036854775806, %.noexc.i.i.i.i.i.i.i ], [ -9223372036854775806, %.thread.i.i.i.i.i.i ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5342.0.ph942.i.i.i.i, ptr %.sroa.697.0..sroa_idx98.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9343.0.ph975.i.i.i.i, ptr %.sroa.7100.0..sroa_idx101.i.i.i.i, align 8, !noalias !78679
  store ptr %.sroa.5332.0.ph1008.i.i.i.i, ptr %.sroa.655.0..sroa_idx56.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9333.0.ph1041.i.i.i.i, ptr %.sroa.758.0..sroa_idx59.i.i.i.i, align 8, !noalias !78679
  store i64 %i.fu, ptr %i.x, align 8, !noalias !78679
  store i64 %i.fv, ptr %i.y, align 8, !noalias !78679
  br label %.body.i.i14.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke1623, %.invoke, %bb.dx, %bb.dt, %bb.dg, %bb.dd, %bb.ct
  %i.gq = phi i64 [ %i.fs, %bb.dx ], [ %i.fs, %bb.ct ], [ -9223372036854775806, %bb.dd ], [ %i.fs, %bb.dg ], [ %i.fs, %.invoke ], [ %i.fs, %bb.dt ], [ %i.fs, %.invoke1623 ]
  %i.gr = phi i64 [ -9223372036854775806, %bb.dx ], [ %i.ft, %bb.ct ], [ %i.ft, %bb.dd ], [ %i.ft, %bb.dg ], [ %i.ft, %.invoke ], [ %i.ft, %bb.dt ], [ %i.ft, %.invoke1623 ]
  %.sroa.0311.09081332.i.i.i.i = phi i64 [ %.sroa.0311.0908.i.i.i.i, %bb.dx ], [ -9223372036854775806, %bb.ct ], [ %.sroa.0311.0908.i.i.i.i, %bb.dd ], [ %.sroa.0311.0908.i.i.i.i, %bb.dg ], [ %.sroa.0311.0908.i.i.i.i, %.invoke ], [ %.sroa.0311.0908.i.i.i.i, %bb.dt ], [ %.sroa.0311.0908.i.i.i.i, %.invoke1623 ]
  %.sroa.0318.09051254.i.i.i.i = phi i64 [ %.sroa.0318.0905.i.i.i.i, %bb.dx ], [ %.sroa.0318.0905.i.i.i.i, %bb.ct ], [ %.sroa.0318.0905.i.i.i.i, %bb.dd ], [ -9223372036854775806, %bb.dg ], [ %.sroa.0318.0905.i.i.i.i, %.invoke ], [ %.sroa.0318.0905.i.i.i.i, %bb.dt ], [ %.sroa.0318.0905.i.i.i.i, %.invoke1623 ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i14.i.i

bb.cd:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i"
  store ptr %.sroa.5342.0.ph942.i.i.i.i, ptr %.sroa.697.0..sroa_idx98.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9343.0.ph975.i.i.i.i, ptr %.sroa.7100.0..sroa_idx101.i.i.i.i, align 8, !noalias !78679
  store ptr %.sroa.5332.0.ph1008.i.i.i.i, ptr %.sroa.655.0..sroa_idx56.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9333.0.ph1041.i.i.i.i, ptr %.sroa.758.0..sroa_idx59.i.i.i.i, align 8, !noalias !78679
  store i64 %i.fu, ptr %i.x, align 8, !noalias !78679
  store i64 %i.fv, ptr %i.y, align 8, !noalias !78679
  %i.gs = load ptr, ptr %i.fd, align 8, !noalias !78694, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !78694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !78694
  br label %bb.eh

bb.ce:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h03f1469f2492e3bcE.exit.i.i.i.i.i.i.i"
  %i.gt = load i8, ptr %i.fc, align 1, !range !60262, !noalias !78694, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !78694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !78694
  switch i8 %i.gt, label %default.unreachable [
    i8 7, label %bb.cm
    i8 0, label %bb.cf
    i8 1, label %bb.cg
    i8 2, label %bb.ch
    i8 3, label %bb.ci
    i8 4, label %bb.cj
    i8 5, label %bb.ck
    i8 6, label %bb.cl
  ]

.thread358.i.i.i.i:                               ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.5342.0.ph941.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.5342.0.ph942.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.5342.0.ph941.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.9343.0.ph974.lcssa.sink.i.i.i.i = phi i64 [ %.sroa.9343.0.ph975.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.9343.0.ph974.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.5332.0.ph1007.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.5332.0.ph1008.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.5332.0.ph1007.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.9333.0.ph1040.lcssa.sink.i.i.i.i = phi i64 [ %.sroa.9333.0.ph1041.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.9333.0.ph1040.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.19326.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19326.0902.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19326.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13325.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13325.0903.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13325.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0318.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0318.0905.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0318.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.13.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13.0907.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0311.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0311.0908.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0311.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.lcssa618.i.i.i.i = phi i64 [ %i.ft, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.hc, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.lcssa586.i.i.i.i = phi i64 [ %i.fs, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.hd, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.818.0.lcssa.i.i.i.i = phi double [ %.sroa.818.0909.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.818.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.015.0.lcssa.i.i.i.i = phi i64 [ %.sroa.015.0910.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.015.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.012.0.lcssa.i.i.i.i = phi i8 [ %.sroa.012.0911.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.012.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.8.0912.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.0913.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.012.0.lcssa.fr.i.i.i.i = freeze i8 %.sroa.012.0.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.5342.0.ph941.lcssa.sink.i.i.i.i, ptr %.sroa.697.0..sroa_idx98.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9343.0.ph974.lcssa.sink.i.i.i.i, ptr %.sroa.7100.0..sroa_idx101.i.i.i.i, align 8, !noalias !78679
  store ptr %.sroa.5332.0.ph1007.lcssa.sink.i.i.i.i, ptr %.sroa.655.0..sroa_idx56.i.i.i.i, align 8, !noalias !78679
  store i64 %.sroa.9333.0.ph1040.lcssa.sink.i.i.i.i, ptr %.sroa.758.0..sroa_idx59.i.i.i.i, align 8, !noalias !78679
  %.not170.i.i.i.i = icmp eq i64 %.sroa.0311.0.lcssa.i.i.i.i, -9223372036854775806
  br i1 %.not170.i.i.i.i, label %bb.en, label %bb.em

default.unreachable:                              ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %.not183.i.i.i.i = icmp eq i64 %.sroa.0311.0908.i.i.i.i, -9223372036854775806
  br i1 %.not183.i.i.i.i, label %bb.cn, label %.invoke1623, !prof !16

end_hunk_13
begin_hunk_14_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h679b836a0baf9d76E":bb.a

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ju = ptrtoint ptr %i.js to i64
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$milli..update..chat..ChatSearchParams$GT$17h7c0f6fb38a619701E"(ptr noalias noundef align 8 dereferenceable(144) %i.aa), !noalias !78675
  br label %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i21.i.i, i64 48, i1 false), !noalias !78956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i26.i.i, i64 24, i1 false), !noalias !78956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx.i28.i.i, i64 48, i1 false), !noalias !78956
  %.sroa.23.0.copyload15 = load i64, ptr %.sroa.17.0..sroa_idx.i.i.i, align 8, !noalias !78956
  br label %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i

bb.fl:                                            ; preds = %bb.fm
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78675
  unreachable

bb.fm:                                            ; preds = %bb.ez, %bb.ew
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h527133af2ebcf491E"(ptr noalias noundef align 8 dereferenceable(72) %i.z) #44
          to label %.body.thread.i.i unwind label %bb.fl, !noalias !78675

_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i: ; preds = %bb.fk, %bb.fj
  %.sroa.23.2 = phi i64 [ %.sroa.23.0.copyload15, %bb.fk ], [ undef, %bb.fj ]
  %.sroa.11.2 = phi i64 [ %..sroa.8.0175217751816.i.i.i.i, %bb.fk ], [ %i.ju, %bb.fj ]
  %.sroa.0.2 = phi i64 [ %..sroa.0.0175317731817.i.i.i.i, %bb.fk ], [ 3, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !78675
  br label %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i

_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i, %bb.fe, %bb.fd
  %.sroa.23.0 = phi i64 [ %.sroa.23.2, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i ], [ undef, %bb.fd ], [ undef, %bb.fe ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.2, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i ], [ %.sroa.19.2.i.i.i, %bb.fd ], [ %.sroa.19.2.i.i.i, %bb.fe ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.2, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.sink.split.i.i ], [ 3, %bb.fd ], [ 3, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5132.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5119.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !78671
  br label %bb.fn

.body.thread11.i.i:                               ; preds = %bb.fe, %bb.bi
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.fn:                                            ; preds = %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i
  %.sroa.23.1 = phi i64 [ %.sroa.23.4, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i ], [ %.sroa.23.0, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i ]
  %.sroa.11.1 = phi i64 [ %.sroa.11.4, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i ], [ %.sroa.11.0, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.4, %_ZN5serde7private2de7content17visit_content_seq17h19aed9a97f4ca96bE.exit.i.i ], [ %.sroa.0.0, %_ZN5serde7private2de7content17visit_content_map17h02c5c92b184cd157E.exit.i.i ] ; 2 uses
  %i.jw = and i8 %i.ax, 30
  %switch.i.i = icmp eq i8 %i.jw, 20
  br i1 %switch.i.i, label %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit", label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !78411
  br label %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit"

.body.thread.thread.i.i:                          ; preds = %bb.fp, %.body.thread.i.i, %.thread57.i.i.i, %bb.bl
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i, %.body.thread.i.i ], [ %eh.lpad-body9.i.i, %bb.fp ], [ %eh.lpad-body60.i.i.i, %.thread57.i.i.i ], [ %i.et, %bb.bl ]
  resume { ptr, i32 } %eh.lpad-body8.i.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %bb.fm, %bb.fh, %bb.fc, %bb.fb
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread11.i.i ], [ %i.jt, %bb.fh ], [ %.pn.i.i15.i.i, %bb.fm ], [ %i.jl, %bb.fc ], [ %i.jl, %bb.fb ] ; 2 uses
  %i.jx = and i8 %i.ax, 30
  %switch5.i.i = icmp eq i8 %i.jx, 20
  br i1 %switch5.i.i, label %.body.thread.thread.i.i, label %bb.fp

bb.fp:                                            ; preds = %.body.thread.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.body.thread.thread.i.i unwind label %bb.fq, !noalias !78411

bb.fq:                                            ; preds = %bb.fp
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78671
  unreachable

"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit": ; preds = %bb.fn, %bb.fo
  %i.jz = icmp eq i64 %.sroa.0.1, 3
  br i1 %i.jz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit.thread", %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit"
  %.sroa.11.526 = phi i64 [ %i.az, %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit.thread" ], [ %.sroa.11.1, %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit" ]
  %i.ka = inttoptr i64 %.sroa.11.526 to ptr
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ka, ptr %i.kb, align 8
  store i64 4, ptr %0, align 8
  br label %bb.ft

bb.fs:                                            ; preds = %"_ZN5milli6update4chat1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSearchParams$GT$11deserialize17h8baee2bb63f96e4aE.exit"
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, i64 48, i1 false)
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, i64 48, i1 false)
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.1, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.23.1, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6d4bb384b8043ca9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78968)
  %i.j = load i8, ptr %1, align 8, !range !446, !alias.scope !78970, !noalias !78971, !noundef !15
  switch i8 %i.j, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !8241

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78972
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !78971
  %i.k = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.u unwind label %bb.t, !noalias !78972

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !78960
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.l, align 8, !noalias !78972
  call fastcc void @"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hda0fc8bbc0ce3abdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !78970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78972
  br label %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !78970, !noalias !78971
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !78970, !noalias !78971, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !78970, !noalias !78971 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !78972
  %i.n = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.n)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !78973, !noalias !78976
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !78973, !noalias !78976
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !alias.scope !78973, !noalias !78976
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !78973, !noalias !78976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78978)
  %i.s = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !78972

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !alias.scope !78978, !noalias !78981
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !78983 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %bb.g, !prof !4913

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !78972
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !78972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !78972
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !78972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78984)
  %i.w = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.w, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78972
  store i8 11, ptr %i.e, align 8, !noalias !78972
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.f, !noalias !78972

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78972
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !78971, !noalias !78970
  store i8 1, ptr %i.i, align 8, !alias.scope !78971, !noalias !78970
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !78972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !78972
  br label %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.z, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %bb.o unwind label %bb.s, !noalias !78972

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !78984, !noalias !78987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !78989
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !78972
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i" unwind label %bb.l, !noalias !78972, !inline_history !28052

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac) #49
          to label %.body.i.i unwind label %bb.m, !noalias !78972, !inline_history !28052

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78990, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i": ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i" unwind label %bb.j, !noalias !78972

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !78972
  store i8 11, ptr %i.c, align 8, !noalias !78972
  %i.af = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.n unwind label %bb.j, !noalias !78972

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !78972
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !78971, !noalias !78970
  store i8 1, ptr %i.i, align 8, !alias.scope !78971, !noalias !78970
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !78972

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #44
          to label %bb.e unwind label %bb.s, !noalias !78972

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78972
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !78972

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78972
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !78972
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !78972
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ai, i64 31, i1 false), !noalias !78972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78972
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !78972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !78972
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.aj, align 8, !noalias !78972
  call fastcc void @"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hda0fc8bbc0ce3abdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !78970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78972
  br label %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !78972
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !78971

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78972
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !78971, !noalias !78970
  store i8 1, ptr %i.i, align 8, !alias.scope !78971, !noalias !78970
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !78971
  br label %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.al, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", %bb.u
  %i.an = load i8, ptr %i.i, align 8, !range !447, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !15, !align !569, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN5milli5index1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$11deserialize17hd6878bf26b4164b2E.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !934, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h70415bb4ae6b4d9aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79001)
  %i.f = load i8, ptr %1, align 8, !range !446, !alias.scope !79004, !noundef !15
  switch i8 %i.f, label %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17h9b312d0a1623e0ceE.exit.thread" [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.i
    i8 7, label %bb.l
    i8 8, label %bb.o
  ], !prof !3411

"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17h9b312d0a1623e0ceE.exit.thread": ; preds = %bb.a
  %i.g = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !79004, !noundef !15
  %i.j = zext i8 %i.i to i64
  br label %bb.t

bb.c:                                             ; preds = %bb.a
end_hunk_14
begin_hunk_15_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h70911ba21402f133E":bb.a
          to label %.body.thread.thread.i.i unwind label %bb.ee, !noalias !79015

.thread.sink.split.i.i:                           ; preds = %bb.ed, %bb.ec
  %.sroa.11.2 = phi i64 [ %.sroa.650.0.i.i.i.i, %bb.ed ], [ %i.je, %bb.ec ]
  %.sroa.0.2 = phi i64 [ %.sroa.049.0.i.i.i.i, %bb.ed ], [ 3, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !79015
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.dy
  %.sroa.11.3 = phi i64 [ %.sroa.22.11.ph.i.i.i, %bb.dy ], [ %.sroa.11.2, %.thread.sink.split.i.i ]
  %.sroa.0.3 = phi i64 [ 3, %bb.dy ], [ %.sroa.0.2, %.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !79015
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i.i.i)
  br label %"_ZN5milli6vector8settings1_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbeddingSettings$GT$11deserialize17he02e9a121912dea0E.exit"

bb.ef:                                            ; preds = %bb.a
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.jg, align 8, !alias.scope !79011, !noalias !79012
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !79011, !noalias !79012, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !79011, !noalias !79012 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5369.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5363.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5357.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5351.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5345.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5339.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5333.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !79253
  %i.jh = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.jh)
  %.idx.i12.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i12.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.jj, align 8, !noalias !79257
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !79257
  %.sroa.583.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.583.0..sroa_idx.i.i.i, align 8, !noalias !79257
  %.sroa.684.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  store ptr %i.ji, ptr %.sroa.684.0..sroa_idx.i.i.i, align 8, !noalias !79257
  store i8 22, ptr %i.aw, align 8, !noalias !79257
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 3 uses
  store i64 0, ptr %i.jk, align 8, !noalias !79257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !79257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !79261
  store i64 3, ptr %i.av, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !79261
  store i64 3, ptr %i.au, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !79261
  store i64 -9223372036854775801, ptr %i.at, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !79261
  store i64 -9223372036854775801, ptr %i.as, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !79261
  store i64 3, ptr %i.ar, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !79261
  store i64 5, ptr %i.aq, align 8, !noalias !79261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !79261
  store i64 5, ptr %i.ap, align 8, !noalias !79261
  %i.jl = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.jl, label %.thread899.thread.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.ef
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.4459.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5460.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6277.0..sroa_idx278.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7280.0..sroa_idx281.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.4456.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5457.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6260.0..sroa_idx261.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.7263.0..sroa_idx264.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5454.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.6243.0..sroa_idx244.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %.sroa.7246.0..sroa_idx247.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.3.0..sroa_idx.i.i.i656.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i657.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i653.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6226.0..sroa_idx227.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.7229.0..sroa_idx230.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.2.0..sroa_idx.i.i.i649.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.5.i.i.i.i.i.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6209.0..sroa_idx210.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.7212.0..sroa_idx213.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.4444.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5445.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.6192.0..sroa_idx193.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %.sroa.7195.0..sroa_idx196.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6175.0..sroa_idx176.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %.sroa.7178.0..sroa_idx179.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.2.0..sroa_idx.i.i.i636.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i801.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx10.i.i810.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0..sroa_idx.i.i.i626.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.12.0..sroa_idx.i.i776.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.12.0..sroa_idx10.i.i785.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx.i.i.i619.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.2.0..sroa_idx.i.i.i610.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.12.0..sroa_idx.i.i751.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.12.0..sroa_idx10.i.i760.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.2.0..sroa_idx.i.i.i600.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.12.0..sroa_idx.i.i726.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.12.0..sroa_idx10.i.i735.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.2.0..sroa_idx.i.i.i593.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.12.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i13.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.kp = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mv, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 4 uses
  %.sroa.0.03080.i.i.i.i = phi i8 [ 8, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.026.03079.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.026.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.029.03078.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.029.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.8.03077.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.034.03076.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.034.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.037.03075.i.i.i.i = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.037.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.840.03074.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.840.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %.sroa.043.03073.i.i.i.i = phi i32 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.043.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 25 uses
  %.sroa.846.03072.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.846.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 24 uses
  %i.kq = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mt, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 93 uses
  %i.kr = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ms, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 93 uses
  %i.ks = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mr, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 117 uses
  %i.kt = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mq, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 117 uses
  %i.ku = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mp, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 93 uses
  %i.kv = phi i64 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mo, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 93 uses
  %i.kw = phi i64 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.mn, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 58 uses
  %.sroa.0819.03071.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0819.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 114 uses
  %.sroa.13.03070.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 27 uses
  %.sroa.19.03069.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.0826.03068.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0826.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 114 uses
  %.sroa.13833.03067.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13833.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 27 uses
  %.sroa.19834.03066.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19834.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.0835.03065.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0835.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 114 uses
  %.sroa.13842.03064.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13842.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 27 uses
  %.sroa.19843.03063.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19843.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.0844.03062.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0844.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 114 uses
  %.sroa.13851.03061.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13851.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 27 uses
  %.sroa.19852.03060.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19852.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %.sroa.0853.03059.i.i.i.i = phi i64 [ -9223372036854775806, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0853.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 114 uses
  %.sroa.13860.03058.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.13860.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 27 uses
  %.sroa.19861.03057.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.19861.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ] ; 23 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  store ptr %i.kx, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !79257
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.kp, align 8, !noalias !79265 ; 3 uses
  %.not.i.i.i.i.i14.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14.i.i, label %.thread899.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.ky = load i64, ptr %i.jk, align 8, !noalias !79257, !noundef !15
  %i.kz = add i64 %i.ky, 1
  store i64 %i.kz, ptr %i.jk, align 8, !noalias !79257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !79276
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !79276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !79277
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.la, i64 32, i1 false), !noalias !79277
  %i.lb = load i8, ptr %i.aw, align 8, !range !625, !noalias !79257, !noundef !15
  %i.lc = icmp eq i8 %i.lb, 22
  br i1 %i.lc, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i", label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.aw)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i" unwind label %bb.er, !noalias !79257

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %bb.eh, %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !79257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !79276
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !79276
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !79276 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !79276 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !79276 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79278)
  call void @llvm.experimental.noalias.scope.decl(metadata !79281)
  call void @llvm.experimental.noalias.scope.decl(metadata !79284)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.ei
    i8 4, label %bb.ej
    i8 12, label %bb.ek
    i8 13, label %bb.em
    i8 14, label %bb.en
    i8 15, label %bb.ep
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ld = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ad, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !79287

.noexc.i.i.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.ld, ptr %i.jn, align 8, !alias.scope !79288, !noalias !79289
  store i8 1, ptr %i.ab, align 8, !alias.scope !79288, !noalias !79289
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i"

bb.ei:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.le = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i.i.i, i8 18)
  store i8 %i.le, ptr %i.jm, align 1, !alias.scope !79293, !noalias !79289
  store i8 0, ptr %i.ab, align 8, !alias.scope !79293, !noalias !79289
  br label %bb.eq

bb.ej:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i.i.i, i64 18)
  %.sink.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.jm, align 1, !alias.scope !79298, !noalias !79289
  store i8 0, ptr %i.ab, align 8, !alias.scope !79298, !noalias !79289
  br label %bb.eq

bb.ek:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.lf = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN200_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbeddingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hb229bd172010a821E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lf, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !79301
  %i.lg = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.lg, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i", label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lf, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !79304
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i"

bb.em:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.lh = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN200_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbeddingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hb229bd172010a821E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lh, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !79310, !noalias !79314
  br label %bb.eq

bb.en:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.li = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN200_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbeddingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hc4b212f4ea6b0318E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.li, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i), !noalias !79315
  %i.lj = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.lj, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.li, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !79318
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i"

bb.ep:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.lk = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN200_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..EmbeddingSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hc4b212f4ea6b0318E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lk, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !79322, !noalias !79314
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em, %bb.ej, %bb.ei
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ad)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i, !noalias !79287

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i": ; preds = %bb.eq, %bb.eo, %bb.en, %bb.el, %bb.ek, %.noexc.i.i.i.i
  %i.ll = load i8, ptr %i.ab, align 8, !range !447, !noalias !79276, !noundef !15
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.et, label %bb.eu

bb.er:                                            ; preds = %bb.eh
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !79257
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #44
          to label %.body.i.i15.i.i unwind label %bb.es, !noalias !79277

bb.es:                                            ; preds = %bb.er
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !79277
  unreachable

.body.i.i15.i.i:                                  ; preds = %bb.hr, %bb.hg, %bb.gq, %bb.ge, %bb.fx, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.er
  %i.lp = phi i64 [ %i.kq, %bb.hr ], [ %i.kq, %bb.er ], [ %i.kq, %bb.hg ], [ %i.kq, %bb.gq ], [ %i.kq, %bb.ge ], [ %i.kq, %bb.fx ], [ %.lcssa4274.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.kq, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lq = phi i64 [ %i.kr, %bb.hr ], [ %i.kr, %bb.er ], [ %i.kr, %bb.hg ], [ %i.kr, %bb.gq ], [ %i.kr, %bb.ge ], [ %i.kr, %bb.fx ], [ %.lcssa4214.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.kr, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lr = phi i64 [ %i.ks, %bb.hr ], [ %i.ks, %bb.er ], [ %i.ks, %bb.hg ], [ %i.ks, %bb.gq ], [ %i.ks, %bb.ge ], [ %i.ks, %bb.fx ], [ %.lcssa4154.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.lx, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ls = phi i64 [ %i.kt, %bb.hr ], [ %i.kt, %bb.er ], [ %i.kt, %bb.hg ], [ %i.kt, %bb.gq ], [ %i.kt, %bb.ge ], [ %i.kt, %bb.fx ], [ %.lcssa4094.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.ly, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lt = phi i64 [ %i.ku, %bb.hr ], [ %i.ku, %bb.er ], [ %i.ku, %bb.hg ], [ %i.ku, %bb.gq ], [ %i.ku, %bb.ge ], [ %i.ku, %bb.fx ], [ %.lcssa4034.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.ku, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lu = phi i64 [ %i.kv, %bb.hr ], [ %i.kv, %bb.er ], [ %i.kv, %bb.hg ], [ %i.kv, %bb.gq ], [ %i.kv, %bb.ge ], [ %i.kv, %bb.fx ], [ %.lcssa3974.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.kv, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lv = phi i64 [ %i.kw, %bb.hr ], [ %i.kw, %bb.er ], [ %i.kw, %bb.hg ], [ %i.kw, %bb.gq ], [ %i.kw, %bb.ge ], [ %i.kw, %bb.fx ], [ %.lcssa3914.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.kw, %.loopexit.split-lp.i.i.i.i ]
  %.sroa.0819.030713903.i.i.i.i = phi i64 [ %.sroa.0819.03071.i.i.i.i, %bb.hr ], [ %.sroa.0819.03071.i.i.i.i, %bb.er ], [ %.sroa.0819.03071.i.i.i.i, %bb.hg ], [ %.sroa.0819.03071.i.i.i.i, %bb.gq ], [ %.sroa.0819.03071.i.i.i.i, %bb.ge ], [ -9223372036854775806, %bb.fx ], [ %.sroa.0819.03071.lcssa3838.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0819.030713904.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0826.030683753.i.i.i.i = phi i64 [ %.sroa.0826.03068.i.i.i.i, %bb.hr ], [ %.sroa.0826.03068.i.i.i.i, %bb.er ], [ %.sroa.0826.03068.i.i.i.i, %bb.hg ], [ %.sroa.0826.03068.i.i.i.i, %bb.gq ], [ -9223372036854775806, %bb.ge ], [ %.sroa.0826.03068.i.i.i.i, %bb.fx ], [ %.sroa.0826.03068.lcssa3688.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0826.030683754.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0835.030653603.i.i.i.i = phi i64 [ %.sroa.0835.03065.i.i.i.i, %bb.hr ], [ %.sroa.0835.03065.i.i.i.i, %bb.er ], [ %.sroa.0835.03065.i.i.i.i, %bb.hg ], [ -9223372036854775806, %bb.gq ], [ %.sroa.0835.03065.i.i.i.i, %bb.ge ], [ %.sroa.0835.03065.i.i.i.i, %bb.fx ], [ %.sroa.0835.03065.lcssa3538.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0835.030653604.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0844.030623453.i.i.i.i = phi i64 [ %.sroa.0844.03062.i.i.i.i, %bb.hr ], [ %.sroa.0844.03062.i.i.i.i, %bb.er ], [ -9223372036854775806, %bb.hg ], [ %.sroa.0844.03062.i.i.i.i, %bb.gq ], [ %.sroa.0844.03062.i.i.i.i, %bb.ge ], [ %.sroa.0844.03062.i.i.i.i, %bb.fx ], [ %.sroa.0844.03062.lcssa3388.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0844.030623454.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0853.030593303.i.i.i.i = phi i64 [ -9223372036854775806, %bb.hr ], [ %.sroa.0853.03059.i.i.i.i, %bb.er ], [ %.sroa.0853.03059.i.i.i.i, %bb.hg ], [ %.sroa.0853.03059.i.i.i.i, %bb.gq ], [ %.sroa.0853.03059.i.i.i.i, %bb.ge ], [ %.sroa.0853.03059.i.i.i.i, %bb.fx ], [ %.sroa.0853.03059.lcssa3238.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0853.030593304.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn.i.i16.i.i = phi { ptr, i32 } [ %i.qd, %bb.hr ], [ %i.ln, %bb.er ], [ %i.pl, %bb.hg ], [ %i.om, %bb.gq ], [ %i.ns, %bb.ge ], [ %i.nf, %bb.fx ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lw = icmp samesign ult i64 %i.lv, 3
  br i1 %i.lw, label %bb.kz, label %"_ZN4core3ptr106drop_in_place$LT$milli..update..settings..Setting$LT$milli..vector..settings..SubEmbeddingSettings$GT$$GT$17h9b8ed4602bb11220E.exit.i.i17.i.i"

.loopexit.i.i.i.i:                                ; preds = %bb.jq, %bb.jl, %bb.jf, %bb.iz, %bb.ir, %bb.ii, %bb.ib, %bb.hv, %.thread.i.i794.i.i.i.i, %.noexc.i.i.i809.i.i.i.i, %bb.hk, %.thread.i.i769.i.i.i.i, %.noexc.i.i.i784.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i, %bb.gu, %.thread.i.i744.i.i.i.i, %.noexc.i.i.i759.i.i.i.i, %bb.gi, %.thread.i.i719.i.i.i.i, %.noexc.i.i.i734.i.i.i.i, %.thread.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %bb.fp, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %bb.eq, %.noexc9.i.i.i.i.i.i.i
  %.lcssa4274.i.i.i.i = phi i64 [ %i.kq, %bb.hk ], [ %i.kq, %bb.gu ], [ %i.kq, %bb.fp ], [ %i.kq, %bb.gi ], [ %i.kq, %bb.ib ], [ 3, %bb.hv ], [ %i.kq, %bb.iz ], [ %i.kq, %bb.jq ], [ %i.kq, %bb.jl ], [ %i.kq, %bb.jf ], [ %i.kq, %.noexc9.i.i.i.i.i.i.i ], [ %i.kq, %bb.eq ], [ %i.kq, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.kq, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.kq, %bb.ii ], [ %i.kq, %bb.ir ], [ %i.kq, %.noexc.i.i.i.i.i.i.i ], [ %i.kq, %.thread.i.i.i.i.i.i ], [ %i.kq, %.noexc.i.i.i734.i.i.i.i ], [ %i.kq, %.thread.i.i719.i.i.i.i ], [ %i.kq, %.noexc.i.i.i759.i.i.i.i ], [ %i.kq, %.thread.i.i744.i.i.i.i ], [ %i.kq, %.noexc.i.i.i784.i.i.i.i ], [ %i.kq, %.thread.i.i769.i.i.i.i ], [ %i.kq, %.noexc.i.i.i809.i.i.i.i ], [ %i.kq, %.thread.i.i794.i.i.i.i ]
  %.lcssa4214.i.i.i.i = phi i64 [ %i.kr, %bb.hk ], [ %i.kr, %bb.gu ], [ %i.kr, %bb.fp ], [ %i.kr, %bb.gi ], [ 3, %bb.ib ], [ %i.kr, %bb.hv ], [ %i.kr, %bb.iz ], [ %i.kr, %bb.jq ], [ %i.kr, %bb.jl ], [ %i.kr, %bb.jf ], [ %i.kr, %.noexc9.i.i.i.i.i.i.i ], [ %i.kr, %bb.eq ], [ %i.kr, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.kr, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.kr, %bb.ii ], [ %i.kr, %bb.ir ], [ %i.kr, %.noexc.i.i.i.i.i.i.i ], [ %i.kr, %.thread.i.i.i.i.i.i ], [ %i.kr, %.noexc.i.i.i734.i.i.i.i ], [ %i.kr, %.thread.i.i719.i.i.i.i ], [ %i.kr, %.noexc.i.i.i759.i.i.i.i ], [ %i.kr, %.thread.i.i744.i.i.i.i ], [ %i.kr, %.noexc.i.i.i784.i.i.i.i ], [ %i.kr, %.thread.i.i769.i.i.i.i ], [ %i.kr, %.noexc.i.i.i809.i.i.i.i ], [ %i.kr, %.thread.i.i794.i.i.i.i ]
  %.lcssa4154.i.i.i.i = phi i64 [ %i.ks, %bb.hk ], [ %i.ks, %bb.gu ], [ %i.ks, %bb.fp ], [ %i.ks, %bb.gi ], [ %i.ks, %bb.ib ], [ %i.ks, %bb.hv ], [ %i.ks, %bb.iz ], [ %i.ks, %bb.jq ], [ %i.ks, %bb.jl ], [ %i.ks, %bb.jf ], [ %i.ks, %.noexc9.i.i.i.i.i.i.i ], [ %i.ks, %bb.eq ], [ %i.ks, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.ks, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ -9223372036854775801, %bb.ii ], [ %i.ks, %bb.ir ], [ %i.ks, %.noexc.i.i.i.i.i.i.i ], [ %i.ks, %.thread.i.i.i.i.i.i ], [ %i.ks, %.noexc.i.i.i734.i.i.i.i ], [ %i.ks, %.thread.i.i719.i.i.i.i ], [ %i.ks, %.noexc.i.i.i759.i.i.i.i ], [ %i.ks, %.thread.i.i744.i.i.i.i ], [ %i.ks, %.noexc.i.i.i784.i.i.i.i ], [ %i.ks, %.thread.i.i769.i.i.i.i ], [ %i.ks, %.noexc.i.i.i809.i.i.i.i ], [ %i.ks, %.thread.i.i794.i.i.i.i ]
  %.lcssa4094.i.i.i.i = phi i64 [ %i.kt, %bb.hk ], [ %i.kt, %bb.gu ], [ %i.kt, %bb.fp ], [ %i.kt, %bb.gi ], [ %i.kt, %bb.ib ], [ %i.kt, %bb.hv ], [ %i.kt, %bb.iz ], [ %i.kt, %bb.jq ], [ %i.kt, %bb.jl ], [ %i.kt, %bb.jf ], [ %i.kt, %.noexc9.i.i.i.i.i.i.i ], [ %i.kt, %bb.eq ], [ %i.kt, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.kt, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.kt, %bb.ii ], [ -9223372036854775801, %bb.ir ], [ %i.kt, %.noexc.i.i.i.i.i.i.i ], [ %i.kt, %.thread.i.i.i.i.i.i ], [ %i.kt, %.noexc.i.i.i734.i.i.i.i ], [ %i.kt, %.thread.i.i719.i.i.i.i ], [ %i.kt, %.noexc.i.i.i759.i.i.i.i ], [ %i.kt, %.thread.i.i744.i.i.i.i ], [ %i.kt, %.noexc.i.i.i784.i.i.i.i ], [ %i.kt, %.thread.i.i769.i.i.i.i ], [ %i.kt, %.noexc.i.i.i809.i.i.i.i ], [ %i.kt, %.thread.i.i794.i.i.i.i ]
  %.lcssa4034.i.i.i.i = phi i64 [ %i.ku, %bb.hk ], [ %i.ku, %bb.gu ], [ %i.ku, %bb.fp ], [ %i.ku, %bb.gi ], [ %i.ku, %bb.ib ], [ %i.ku, %bb.hv ], [ 3, %bb.iz ], [ %i.ku, %bb.jq ], [ %i.ku, %bb.jl ], [ %i.ku, %bb.jf ], [ %i.ku, %.noexc9.i.i.i.i.i.i.i ], [ %i.ku, %bb.eq ], [ %i.ku, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.ku, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.ku, %bb.ii ], [ %i.ku, %bb.ir ], [ %i.ku, %.noexc.i.i.i.i.i.i.i ], [ %i.ku, %.thread.i.i.i.i.i.i ], [ %i.ku, %.noexc.i.i.i734.i.i.i.i ], [ %i.ku, %.thread.i.i719.i.i.i.i ], [ %i.ku, %.noexc.i.i.i759.i.i.i.i ], [ %i.ku, %.thread.i.i744.i.i.i.i ], [ %i.ku, %.noexc.i.i.i784.i.i.i.i ], [ %i.ku, %.thread.i.i769.i.i.i.i ], [ %i.ku, %.noexc.i.i.i809.i.i.i.i ], [ %i.ku, %.thread.i.i794.i.i.i.i ]
  %.lcssa3974.i.i.i.i = phi i64 [ %i.kv, %bb.hk ], [ %i.kv, %bb.gu ], [ %i.kv, %bb.fp ], [ %i.kv, %bb.gi ], [ %i.kv, %bb.ib ], [ %i.kv, %bb.hv ], [ %i.kv, %bb.iz ], [ %i.kv, %bb.jq ], [ %i.kv, %bb.jl ], [ 5, %bb.jf ], [ %i.kv, %.noexc9.i.i.i.i.i.i.i ], [ %i.kv, %bb.eq ], [ %i.kv, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.kv, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.kv, %bb.ii ], [ %i.kv, %bb.ir ], [ %i.kv, %.noexc.i.i.i.i.i.i.i ], [ %i.kv, %.thread.i.i.i.i.i.i ], [ %i.kv, %.noexc.i.i.i734.i.i.i.i ], [ %i.kv, %.thread.i.i719.i.i.i.i ], [ %i.kv, %.noexc.i.i.i759.i.i.i.i ], [ %i.kv, %.thread.i.i744.i.i.i.i ], [ %i.kv, %.noexc.i.i.i784.i.i.i.i ], [ %i.kv, %.thread.i.i769.i.i.i.i ], [ %i.kv, %.noexc.i.i.i809.i.i.i.i ], [ %i.kv, %.thread.i.i794.i.i.i.i ]
  %.lcssa3914.i.i.i.i = phi i64 [ %i.kw, %bb.hk ], [ %i.kw, %bb.gu ], [ %i.kw, %bb.fp ], [ %i.kw, %bb.gi ], [ %i.kw, %bb.ib ], [ %i.kw, %bb.hv ], [ %i.kw, %bb.iz ], [ %i.kw, %bb.jq ], [ 5, %bb.jl ], [ %i.kw, %bb.jf ], [ %i.kw, %.noexc9.i.i.i.i.i.i.i ], [ %i.kw, %bb.eq ], [ %i.kw, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %i.kw, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %i.kw, %bb.ii ], [ %i.kw, %bb.ir ], [ %i.kw, %.noexc.i.i.i.i.i.i.i ], [ %i.kw, %.thread.i.i.i.i.i.i ], [ %i.kw, %.noexc.i.i.i734.i.i.i.i ], [ %i.kw, %.thread.i.i719.i.i.i.i ], [ %i.kw, %.noexc.i.i.i759.i.i.i.i ], [ %i.kw, %.thread.i.i744.i.i.i.i ], [ %i.kw, %.noexc.i.i.i784.i.i.i.i ], [ %i.kw, %.thread.i.i769.i.i.i.i ], [ %i.kw, %.noexc.i.i.i809.i.i.i.i ], [ %i.kw, %.thread.i.i794.i.i.i.i ]
  %.sroa.0819.03071.lcssa3838.i.i.i.i = phi i64 [ %.sroa.0819.03071.i.i.i.i, %bb.hk ], [ %.sroa.0819.03071.i.i.i.i, %bb.gu ], [ %.sroa.0819.03071.i.i.i.i, %bb.fp ], [ %.sroa.0819.03071.i.i.i.i, %bb.gi ], [ %.sroa.0819.03071.i.i.i.i, %bb.ib ], [ %.sroa.0819.03071.i.i.i.i, %bb.hv ], [ %.sroa.0819.03071.i.i.i.i, %bb.iz ], [ %.sroa.0819.03071.i.i.i.i, %bb.jq ], [ %.sroa.0819.03071.i.i.i.i, %bb.jl ], [ %.sroa.0819.03071.i.i.i.i, %bb.jf ], [ %.sroa.0819.03071.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %bb.eq ], [ %.sroa.0819.03071.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %bb.ii ], [ %.sroa.0819.03071.i.i.i.i, %bb.ir ], [ -9223372036854775806, %.noexc.i.i.i.i.i.i.i ], [ -9223372036854775806, %.thread.i.i.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.noexc.i.i.i734.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.thread.i.i719.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.noexc.i.i.i759.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.thread.i.i744.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.noexc.i.i.i784.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.thread.i.i769.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.noexc.i.i.i809.i.i.i.i ], [ %.sroa.0819.03071.i.i.i.i, %.thread.i.i794.i.i.i.i ]
  %.sroa.0826.03068.lcssa3688.i.i.i.i = phi i64 [ %.sroa.0826.03068.i.i.i.i, %bb.hk ], [ %.sroa.0826.03068.i.i.i.i, %bb.gu ], [ %.sroa.0826.03068.i.i.i.i, %bb.fp ], [ %.sroa.0826.03068.i.i.i.i, %bb.gi ], [ %.sroa.0826.03068.i.i.i.i, %bb.ib ], [ %.sroa.0826.03068.i.i.i.i, %bb.hv ], [ %.sroa.0826.03068.i.i.i.i, %bb.iz ], [ %.sroa.0826.03068.i.i.i.i, %bb.jq ], [ %.sroa.0826.03068.i.i.i.i, %bb.jl ], [ %.sroa.0826.03068.i.i.i.i, %bb.jf ], [ %.sroa.0826.03068.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %bb.eq ], [ %.sroa.0826.03068.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %bb.ii ], [ %.sroa.0826.03068.i.i.i.i, %bb.ir ], [ %.sroa.0826.03068.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.thread.i.i.i.i.i.i ], [ -9223372036854775806, %.noexc.i.i.i734.i.i.i.i ], [ -9223372036854775806, %.thread.i.i719.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.noexc.i.i.i759.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.thread.i.i744.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.noexc.i.i.i784.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.thread.i.i769.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.noexc.i.i.i809.i.i.i.i ], [ %.sroa.0826.03068.i.i.i.i, %.thread.i.i794.i.i.i.i ]
  %.sroa.0835.03065.lcssa3538.i.i.i.i = phi i64 [ %.sroa.0835.03065.i.i.i.i, %bb.hk ], [ %.sroa.0835.03065.i.i.i.i, %bb.gu ], [ %.sroa.0835.03065.i.i.i.i, %bb.fp ], [ %.sroa.0835.03065.i.i.i.i, %bb.gi ], [ %.sroa.0835.03065.i.i.i.i, %bb.ib ], [ %.sroa.0835.03065.i.i.i.i, %bb.hv ], [ %.sroa.0835.03065.i.i.i.i, %bb.iz ], [ %.sroa.0835.03065.i.i.i.i, %bb.jq ], [ %.sroa.0835.03065.i.i.i.i, %bb.jl ], [ %.sroa.0835.03065.i.i.i.i, %bb.jf ], [ %.sroa.0835.03065.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %bb.eq ], [ %.sroa.0835.03065.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %bb.ii ], [ %.sroa.0835.03065.i.i.i.i, %bb.ir ], [ %.sroa.0835.03065.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.noexc.i.i.i734.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.thread.i.i719.i.i.i.i ], [ -9223372036854775806, %.noexc.i.i.i759.i.i.i.i ], [ -9223372036854775806, %.thread.i.i744.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.noexc.i.i.i784.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.thread.i.i769.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.noexc.i.i.i809.i.i.i.i ], [ %.sroa.0835.03065.i.i.i.i, %.thread.i.i794.i.i.i.i ]
  %.sroa.0844.03062.lcssa3388.i.i.i.i = phi i64 [ %.sroa.0844.03062.i.i.i.i, %bb.hk ], [ %.sroa.0844.03062.i.i.i.i, %bb.gu ], [ %.sroa.0844.03062.i.i.i.i, %bb.fp ], [ %.sroa.0844.03062.i.i.i.i, %bb.gi ], [ %.sroa.0844.03062.i.i.i.i, %bb.ib ], [ %.sroa.0844.03062.i.i.i.i, %bb.hv ], [ %.sroa.0844.03062.i.i.i.i, %bb.iz ], [ %.sroa.0844.03062.i.i.i.i, %bb.jq ], [ %.sroa.0844.03062.i.i.i.i, %bb.jl ], [ %.sroa.0844.03062.i.i.i.i, %bb.jf ], [ %.sroa.0844.03062.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %bb.eq ], [ %.sroa.0844.03062.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %bb.ii ], [ %.sroa.0844.03062.i.i.i.i, %bb.ir ], [ %.sroa.0844.03062.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.noexc.i.i.i734.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.thread.i.i719.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.noexc.i.i.i759.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.thread.i.i744.i.i.i.i ], [ -9223372036854775806, %.noexc.i.i.i784.i.i.i.i ], [ -9223372036854775806, %.thread.i.i769.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.noexc.i.i.i809.i.i.i.i ], [ %.sroa.0844.03062.i.i.i.i, %.thread.i.i794.i.i.i.i ]
  %.sroa.0853.03059.lcssa3238.i.i.i.i = phi i64 [ %.sroa.0853.03059.i.i.i.i, %bb.hk ], [ %.sroa.0853.03059.i.i.i.i, %bb.gu ], [ %.sroa.0853.03059.i.i.i.i, %bb.fp ], [ %.sroa.0853.03059.i.i.i.i, %bb.gi ], [ %.sroa.0853.03059.i.i.i.i, %bb.ib ], [ %.sroa.0853.03059.i.i.i.i, %bb.hv ], [ %.sroa.0853.03059.i.i.i.i, %bb.iz ], [ %.sroa.0853.03059.i.i.i.i, %bb.jq ], [ %.sroa.0853.03059.i.i.i.i, %bb.jl ], [ %.sroa.0853.03059.i.i.i.i, %bb.jf ], [ %.sroa.0853.03059.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %bb.eq ], [ %.sroa.0853.03059.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h4f430e569a2572ccE.exit.i.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %bb.ii ], [ %.sroa.0853.03059.i.i.i.i, %bb.ir ], [ %.sroa.0853.03059.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.noexc.i.i.i734.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.thread.i.i719.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.noexc.i.i.i759.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.thread.i.i744.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.noexc.i.i.i784.i.i.i.i ], [ %.sroa.0853.03059.i.i.i.i, %.thread.i.i769.i.i.i.i ], [ -9223372036854775806, %.noexc.i.i.i809.i.i.i.i ], [ -9223372036854775806, %.thread.i.i794.i.i.i.i ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i15.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.invoke, %bb.jp, %bb.jk, %bb.je, %bb.iy, %bb.iu, %bb.ip, %bb.il, %bb.ig, %bb.ia, %bb.hu, %bb.hp, %bb.hn, %bb.hj, %bb.he, %bb.hc, %bb.gx, %bb.gt, %bb.go, %bb.gm, %bb.gh, %bb.gc, %bb.ga, %bb.fv, %bb.ft, %bb.fo
  %i.lx = phi i64 [ %i.ks, %bb.fo ], [ %i.ks, %bb.ft ], [ %i.ks, %bb.ga ], [ %i.ks, %bb.gh ], [ %i.ks, %bb.gm ], [ %i.ks, %bb.gt ], [ %i.ks, %bb.gx ], [ %i.ks, %bb.hc ], [ %i.ks, %bb.hj ], [ %i.ks, %bb.hn ], [ %i.ks, %bb.hu ], [ %i.ks, %bb.ia ], [ %i.ks, %bb.ig ], [ %i.ks, %bb.ip ], [ %i.ks, %bb.iy ], [ %i.ks, %bb.je ], [ %i.ks, %bb.jk ], [ %i.ks, %bb.jp ], [ %i.ks, %bb.iu ], [ %i.ks, %bb.fv ], [ %i.ks, %bb.gc ], [ %i.ks, %bb.go ], [ %i.ks, %.invoke ], [ %i.ks, %bb.he ], [ %i.ks, %bb.hp ], [ -9223372036854775801, %bb.il ]
  %i.ly = phi i64 [ %i.kt, %bb.fo ], [ %i.kt, %bb.ft ], [ %i.kt, %bb.ga ], [ %i.kt, %bb.gh ], [ %i.kt, %bb.gm ], [ %i.kt, %bb.gt ], [ %i.kt, %bb.gx ], [ %i.kt, %bb.hc ], [ %i.kt, %bb.hj ], [ %i.kt, %bb.hn ], [ %i.kt, %bb.hu ], [ %i.kt, %bb.ia ], [ %i.kt, %bb.ig ], [ %i.kt, %bb.ip ], [ %i.kt, %bb.iy ], [ %i.kt, %bb.je ], [ %i.kt, %bb.jk ], [ %i.kt, %bb.jp ], [ -9223372036854775801, %bb.iu ], [ %i.kt, %bb.fv ], [ %i.kt, %bb.gc ], [ %i.kt, %bb.go ], [ %i.kt, %.invoke ], [ %i.kt, %bb.he ], [ %i.kt, %bb.hp ], [ %i.kt, %bb.il ]
  %.sroa.0819.030713904.i.i.i.i = phi i64 [ %.sroa.0819.03071.i.i.i.i, %bb.fo ], [ %.sroa.0819.03071.i.i.i.i, %bb.ft ], [ %.sroa.0819.03071.i.i.i.i, %bb.ga ], [ %.sroa.0819.03071.i.i.i.i, %bb.gh ], [ %.sroa.0819.03071.i.i.i.i, %bb.gm ], [ %.sroa.0819.03071.i.i.i.i, %bb.gt ], [ %.sroa.0819.03071.i.i.i.i, %bb.gx ], [ %.sroa.0819.03071.i.i.i.i, %bb.hc ], [ %.sroa.0819.03071.i.i.i.i, %bb.hj ], [ %.sroa.0819.03071.i.i.i.i, %bb.hn ], [ %.sroa.0819.03071.i.i.i.i, %bb.hu ], [ %.sroa.0819.03071.i.i.i.i, %bb.ia ], [ %.sroa.0819.03071.i.i.i.i, %bb.ig ], [ %.sroa.0819.03071.i.i.i.i, %bb.ip ], [ %.sroa.0819.03071.i.i.i.i, %bb.iy ], [ %.sroa.0819.03071.i.i.i.i, %bb.je ], [ %.sroa.0819.03071.i.i.i.i, %bb.jk ], [ %.sroa.0819.03071.i.i.i.i, %bb.jp ], [ %.sroa.0819.03071.i.i.i.i, %bb.iu ], [ -9223372036854775806, %bb.fv ], [ %.sroa.0819.03071.i.i.i.i, %bb.gc ], [ %.sroa.0819.03071.i.i.i.i, %bb.go ], [ %.sroa.0819.03071.i.i.i.i, %.invoke ], [ %.sroa.0819.03071.i.i.i.i, %bb.he ], [ %.sroa.0819.03071.i.i.i.i, %bb.hp ], [ %.sroa.0819.03071.i.i.i.i, %bb.il ]
  %.sroa.0826.030683754.i.i.i.i = phi i64 [ %.sroa.0826.03068.i.i.i.i, %bb.fo ], [ %.sroa.0826.03068.i.i.i.i, %bb.ft ], [ %.sroa.0826.03068.i.i.i.i, %bb.ga ], [ %.sroa.0826.03068.i.i.i.i, %bb.gh ], [ %.sroa.0826.03068.i.i.i.i, %bb.gm ], [ %.sroa.0826.03068.i.i.i.i, %bb.gt ], [ %.sroa.0826.03068.i.i.i.i, %bb.gx ], [ %.sroa.0826.03068.i.i.i.i, %bb.hc ], [ %.sroa.0826.03068.i.i.i.i, %bb.hj ], [ %.sroa.0826.03068.i.i.i.i, %bb.hn ], [ %.sroa.0826.03068.i.i.i.i, %bb.hu ], [ %.sroa.0826.03068.i.i.i.i, %bb.ia ], [ %.sroa.0826.03068.i.i.i.i, %bb.ig ], [ %.sroa.0826.03068.i.i.i.i, %bb.ip ], [ %.sroa.0826.03068.i.i.i.i, %bb.iy ], [ %.sroa.0826.03068.i.i.i.i, %bb.je ], [ %.sroa.0826.03068.i.i.i.i, %bb.jk ], [ %.sroa.0826.03068.i.i.i.i, %bb.jp ], [ %.sroa.0826.03068.i.i.i.i, %bb.iu ], [ %.sroa.0826.03068.i.i.i.i, %bb.fv ], [ -9223372036854775806, %bb.gc ], [ %.sroa.0826.03068.i.i.i.i, %bb.go ], [ %.sroa.0826.03068.i.i.i.i, %.invoke ], [ %.sroa.0826.03068.i.i.i.i, %bb.he ], [ %.sroa.0826.03068.i.i.i.i, %bb.hp ], [ %.sroa.0826.03068.i.i.i.i, %bb.il ]
  %.sroa.0835.030653604.i.i.i.i = phi i64 [ %.sroa.0835.03065.i.i.i.i, %bb.fo ], [ %.sroa.0835.03065.i.i.i.i, %bb.ft ], [ %.sroa.0835.03065.i.i.i.i, %bb.ga ], [ %.sroa.0835.03065.i.i.i.i, %bb.gh ], [ %.sroa.0835.03065.i.i.i.i, %bb.gm ], [ %.sroa.0835.03065.i.i.i.i, %bb.gt ], [ %.sroa.0835.03065.i.i.i.i, %bb.gx ], [ %.sroa.0835.03065.i.i.i.i, %bb.hc ], [ %.sroa.0835.03065.i.i.i.i, %bb.hj ], [ %.sroa.0835.03065.i.i.i.i, %bb.hn ], [ %.sroa.0835.03065.i.i.i.i, %bb.hu ], [ %.sroa.0835.03065.i.i.i.i, %bb.ia ], [ %.sroa.0835.03065.i.i.i.i, %bb.ig ], [ %.sroa.0835.03065.i.i.i.i, %bb.ip ], [ %.sroa.0835.03065.i.i.i.i, %bb.iy ], [ %.sroa.0835.03065.i.i.i.i, %bb.je ], [ %.sroa.0835.03065.i.i.i.i, %bb.jk ], [ %.sroa.0835.03065.i.i.i.i, %bb.jp ], [ %.sroa.0835.03065.i.i.i.i, %bb.iu ], [ %.sroa.0835.03065.i.i.i.i, %bb.fv ], [ %.sroa.0835.03065.i.i.i.i, %bb.gc ], [ -9223372036854775806, %bb.go ], [ %.sroa.0835.03065.i.i.i.i, %.invoke ], [ %.sroa.0835.03065.i.i.i.i, %bb.he ], [ %.sroa.0835.03065.i.i.i.i, %bb.hp ], [ %.sroa.0835.03065.i.i.i.i, %bb.il ]
  %.sroa.0844.030623454.i.i.i.i = phi i64 [ %.sroa.0844.03062.i.i.i.i, %bb.fo ], [ %.sroa.0844.03062.i.i.i.i, %bb.ft ], [ %.sroa.0844.03062.i.i.i.i, %bb.ga ], [ %.sroa.0844.03062.i.i.i.i, %bb.gh ], [ %.sroa.0844.03062.i.i.i.i, %bb.gm ], [ %.sroa.0844.03062.i.i.i.i, %bb.gt ], [ %.sroa.0844.03062.i.i.i.i, %bb.gx ], [ %.sroa.0844.03062.i.i.i.i, %bb.hc ], [ %.sroa.0844.03062.i.i.i.i, %bb.hj ], [ %.sroa.0844.03062.i.i.i.i, %bb.hn ], [ %.sroa.0844.03062.i.i.i.i, %bb.hu ], [ %.sroa.0844.03062.i.i.i.i, %bb.ia ], [ %.sroa.0844.03062.i.i.i.i, %bb.ig ], [ %.sroa.0844.03062.i.i.i.i, %bb.ip ], [ %.sroa.0844.03062.i.i.i.i, %bb.iy ], [ %.sroa.0844.03062.i.i.i.i, %bb.je ], [ %.sroa.0844.03062.i.i.i.i, %bb.jk ], [ %.sroa.0844.03062.i.i.i.i, %bb.jp ], [ %.sroa.0844.03062.i.i.i.i, %bb.iu ], [ %.sroa.0844.03062.i.i.i.i, %bb.fv ], [ %.sroa.0844.03062.i.i.i.i, %bb.gc ], [ %.sroa.0844.03062.i.i.i.i, %bb.go ], [ %.sroa.0844.03062.i.i.i.i, %.invoke ], [ -9223372036854775806, %bb.he ], [ %.sroa.0844.03062.i.i.i.i, %bb.hp ], [ %.sroa.0844.03062.i.i.i.i, %bb.il ]
  %.sroa.0853.030593304.i.i.i.i = phi i64 [ %.sroa.0853.03059.i.i.i.i, %bb.fo ], [ %.sroa.0853.03059.i.i.i.i, %bb.ft ], [ %.sroa.0853.03059.i.i.i.i, %bb.ga ], [ %.sroa.0853.03059.i.i.i.i, %bb.gh ], [ %.sroa.0853.03059.i.i.i.i, %bb.gm ], [ %.sroa.0853.03059.i.i.i.i, %bb.gt ], [ %.sroa.0853.03059.i.i.i.i, %bb.gx ], [ %.sroa.0853.03059.i.i.i.i, %bb.hc ], [ %.sroa.0853.03059.i.i.i.i, %bb.hj ], [ %.sroa.0853.03059.i.i.i.i, %bb.hn ], [ %.sroa.0853.03059.i.i.i.i, %bb.hu ], [ %.sroa.0853.03059.i.i.i.i, %bb.ia ], [ %.sroa.0853.03059.i.i.i.i, %bb.ig ], [ %.sroa.0853.03059.i.i.i.i, %bb.ip ], [ %.sroa.0853.03059.i.i.i.i, %bb.iy ], [ %.sroa.0853.03059.i.i.i.i, %bb.je ], [ %.sroa.0853.03059.i.i.i.i, %bb.jk ], [ %.sroa.0853.03059.i.i.i.i, %bb.jp ], [ %.sroa.0853.03059.i.i.i.i, %bb.iu ], [ %.sroa.0853.03059.i.i.i.i, %bb.fv ], [ %.sroa.0853.03059.i.i.i.i, %bb.gc ], [ %.sroa.0853.03059.i.i.i.i, %bb.go ], [ %.sroa.0853.03059.i.i.i.i, %.invoke ], [ %.sroa.0853.03059.i.i.i.i, %bb.he ], [ -9223372036854775806, %bb.hp ], [ %.sroa.0853.03059.i.i.i.i, %bb.il ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i15.i.i

bb.et:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i"
  %i.lz = load ptr, ptr %i.jn, align 8, !noalias !79276, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !79276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !79276
  %i.ma = ptrtoint ptr %i.lz to i64
  br label %.loopexit.i.i.i

bb.eu:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h063a809b56532832E.exit.i.i.i.i.i.i.i"
  %i.mb = load i8, ptr %i.jm, align 1, !range !74910, !noalias !79276, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !79276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !79276
  switch i8 %i.mb, label %default.unreachable [
    i8 18, label %bb.fn
    i8 0, label %bb.ev
    i8 1, label %bb.ew
    i8 2, label %bb.ex
    i8 3, label %bb.ey
    i8 4, label %bb.ez
    i8 5, label %bb.fa
    i8 6, label %bb.fb
    i8 7, label %bb.fc
    i8 8, label %bb.fd
    i8 9, label %bb.fe
    i8 10, label %bb.ff
    i8 11, label %bb.fg
    i8 12, label %bb.fh
    i8 13, label %bb.fi
    i8 14, label %bb.fj
    i8 15, label %bb.fk
    i8 16, label %bb.fl
    i8 17, label %bb.fm
  ]

.thread899.i.i.i.i:                               ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.19861.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19861.03057.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19861.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13860.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13860.03058.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13860.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0853.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0853.03059.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0853.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.19852.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19852.03060.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19852.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13851.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13851.03061.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13851.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0844.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0844.03062.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0844.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.19843.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19843.03063.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19843.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13842.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13842.03064.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13842.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0835.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0835.03065.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0835.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.19834.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19834.03066.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19834.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13833.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13833.03067.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13833.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0826.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0826.03068.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0826.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.19.0.lcssa.i.i.i.i = phi i64 [ %.sroa.19.03069.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.13.0.lcssa.i.i.i.i = phi ptr [ %.sroa.13.03070.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.sroa.0819.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0819.03071.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0819.1.i.i.i.i, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.lcssa1942.i.i.i.i = phi i64 [ %i.kw, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.mn, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.lcssa1882.i.i.i.i = phi i64 [ %i.kv, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.mo, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
  %.lcssa1822.i.i.i.i = phi i64 [ %i.ku, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ], [ %i.mp, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$$GT$17hd24ff06e8ee1872fE.exit.i.i.i.i" ]
end_hunk_15
begin_hunk_16_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h7cca331497e1f075E":bb.a

._crit_edge.i.i:                                  ; preds = %bb.u, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"
  %.lcssa68.i.ph.i.i = phi ptr [ %i.ae, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.p, %bb.u ] ; 2 uses
  %.ph.i.i = phi i64 [ %i.ai, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.ac, %bb.u ] ; 2 uses
  %.sroa.0.0.copyload14.pre.i.pre.i.i = load i64, ptr %i.i, align 8, !noalias !79662 ; 2 uses
  store ptr %.lcssa68.i.ph.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !79633, !noalias !79637
  store i64 %.ph.i.i, ptr %i.q, align 8, !noalias !79608
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79608
  %i.bc = icmp eq i64 %.sroa.0.0.copyload14.pre.i.pre.i.i, -9223372036854775808
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i, %.thread38.i.i.i
  %.sroa.5.043.i.i.i = phi ptr [ %.sroa.8.017.i.i.i.i, %.thread38.i.i.i ], [ %i.ay, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79608
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k), !noalias !79663
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread12"

.sink.split.i.i:                                  ; preds = %._crit_edge.thread.i.i, %bb.b
  %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i = phi ptr [ %i.ad, %._crit_edge.thread.i.i ], [ %.sroa.2.0.copyload.i.i, %bb.b ]
  %.sroa.0.0.copyload1490.i.ph.i.i = phi i64 [ %i.r, %._crit_edge.thread.i.i ], [ 0, %bb.b ]
  %.sroa.5.0.copyload1889.i.ph.i.i = phi ptr [ %i.u, %._crit_edge.thread.i.i ], [ inttoptr (i64 8 to ptr), %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79608
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i, %._crit_edge.i.i
  %i.bd = phi i64 [ %.ph.i.i, %._crit_edge.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i = phi ptr [ %.lcssa68.i.ph.i.i, %._crit_edge.i.i ], [ %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.0.0.copyload1490.i.i.i = phi i64 [ %.sroa.0.0.copyload14.pre.i.pre.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.copyload1490.i.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.5.0.copyload1889.i.i.i = phi ptr [ %i.ay, %._crit_edge.i.i ], [ %.sroa.5.0.copyload1889.i.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.6.0.copyload2288.i.i.i = phi i64 [ %i.ba, %._crit_edge.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload1490.i.i.i, ptr %i.j, align 8, !noalias !79608
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5.0.copyload1889.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !79608
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload2288.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !79608
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k)
          to label %.noexc10.i.i.i unwind label %bb.y, !noalias !79608

.noexc10.i.i.i:                                   ; preds = %bb.w
  %i.be = icmp eq ptr %i.p, %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i
  br i1 %i.be, label %bb.ad, label %bb.x, !prof !16

bb.x:                                             ; preds = %.noexc10.i.i.i
  %i.bf = ptrtoint ptr %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i to i64
  %i.bg = ptrtoint ptr %i.p to i64
  %i.bh = sub nuw i64 %i.bg, %i.bf
  %i.bi = lshr exact i64 %i.bh, 5
  %i.bj = add i64 %i.bi, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79664
  store i64 %i.bd, ptr %i.b, align 8, !noalias !79664
  %i.bk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.bj, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.z unwind label %bb.y, !noalias !79608

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$17hb6c20d1adcec0a8bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #44, !noalias !79608
  br label %.body.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79664
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$17hb6c20d1adcec0a8bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j), !noalias !79608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79608
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread12"

bb.aa:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !79608
  unreachable

bb.ab:                                            ; preds = %.thread32.i.i.i, %.thread36.i.i.i
  %eh.lpad-body35.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.thread32.i.i.i ], [ %i.w, %.thread36.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.k)
          to label %.body.i.i unwind label %bb.aa, !noalias !79608

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread": ; preds = %bb.a
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !noalias !79605
  br label %bb.ac

.body.i.i:                                        ; preds = %bb.ab, %bb.y
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bl, %bb.y ], [ %eh.lpad-body35.i.i.i, %bb.ab ]
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread12": ; preds = %bb.z, %bb.v
  %.sroa.8.0.ph = phi ptr [ %.sroa.5.043.i.i.i, %bb.v ], [ %i.bk, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79608
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread12", %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread"
  %.sroa.8.111 = phi ptr [ %i.bn, %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread" ], [ %.sroa.8.0.ph, %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h24a7a69fcb18e3f5E.exit.thread12" ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.111, ptr %i.bo, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79608
  store i64 %.sroa.0.0.copyload1490.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload1889.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload2288.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h88947d5084cc563cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79675)
  %i.j = load i8, ptr %1, align 8, !range !446, !alias.scope !79677, !noalias !79678, !noundef !15
  switch i8 %i.j, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !8241

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79679
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !79678
  %i.k = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.u unwind label %bb.t, !noalias !79679

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !79667
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.l, align 8, !noalias !79679
  call fastcc void @"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h151b52908ede91d0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !79677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79679
  br label %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !79677, !noalias !79678
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !79677, !noalias !79678, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !79677, !noalias !79678 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !79679
  %i.n = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.n)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !79680, !noalias !79683
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !79680, !noalias !79683
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !alias.scope !79680, !noalias !79683
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !79680, !noalias !79683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79685)
  %i.s = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !79679

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !alias.scope !79685, !noalias !79688
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !79690 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %bb.g, !prof !4913

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !79679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !79679
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !79679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !79679
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !79679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79691)
  %i.w = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.w, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79679
  store i8 11, ptr %i.e, align 8, !noalias !79679
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.f, !noalias !79679

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79679
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !79678, !noalias !79677
  store i8 1, ptr %i.i, align 8, !alias.scope !79678, !noalias !79677
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !79679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79679
  br label %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.z, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %bb.o unwind label %bb.s, !noalias !79679

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !79691, !noalias !79694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !79696
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !79679
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i" unwind label %bb.l, !noalias !79679, !inline_history !28052

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac) #49
          to label %.body.i.i unwind label %bb.m, !noalias !79679, !inline_history !28052

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !79697, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i": ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i" unwind label %bb.j, !noalias !79679

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79679
  store i8 11, ptr %i.c, align 8, !noalias !79679
  %i.af = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.n unwind label %bb.j, !noalias !79679

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79679
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !79678, !noalias !79677
  store i8 1, ptr %i.i, align 8, !alias.scope !79678, !noalias !79677
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !79679

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #44
          to label %bb.e unwind label %bb.s, !noalias !79679

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79679
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !79679

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79679
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !79679
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !79679
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ai, i64 31, i1 false), !noalias !79679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79679
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !79679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79679
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.aj, align 8, !noalias !79679
  call fastcc void @"_ZN201_$LT$milli..vector..embedder..hf.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h151b52908ede91d0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !79677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79679
  br label %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !79679
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !79678

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79679
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !79678, !noalias !79677
  store i8 1, ptr %i.i, align 8, !alias.scope !79678, !noalias !79677
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !79678
  br label %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.al, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", %bb.u
  %i.an = load i8, ptr %i.i, align 8, !range !447, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !15, !align !569, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN5milli6vector8embedder2hf1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..embedder..hf..OverridePooling$GT$11deserialize17h662f0519f6c195c1E.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !934, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h8f2a14d2cd8e04c9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79705)
  %i.c = load i8, ptr %1, align 8, !range !446, !alias.scope !79708, !noalias !79709, !noundef !15
  switch i8 %i.c, label %"_ZN5milli5index1_93_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..RankingScoreThreshold$GT$11deserialize17hb33efb4c3872d870E.exit.thread" [
    i8 19, label %bb.b
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
    i8 7, label %bb.u
    i8 8, label %bb.v
    i8 9, label %bb.w
    i8 10, label %bb.x
  ], !prof !79712

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !79708, !noalias !79709, !nonnull !15, !align !569, !noundef !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !79713
  %i.f = load i8, ptr %i.b, align 8, !range !446, !alias.scope !79714, !noalias !79721, !noundef !15
  switch i8 %i.f, label %bb.m [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
end_hunk_16
begin_hunk_17_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17habdc7b2c111ea251E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !alias.scope !80082, !noalias !80083
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !80082, !noalias !80083, !nonnull !15, !noundef !15 ; 6 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !80082, !noalias !80083 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !80086
  %i.q = icmp ult i64 %.sroa.3.0.copyload.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.q)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.m, align 8, !noalias !80086
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !80086
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !80086
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.r, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !80086
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !80086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80099)
  %i.t = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.t, label %bb.e, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i": ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  store ptr %i.u, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !alias.scope !80102, !noalias !80103
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !80110 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx2.i.i.i.i.i.i, i64 31, i1 false), !noalias !80112
  store i64 1, ptr %i.s, align 8, !alias.scope !80113, !noalias !80114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80111
  store i8 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !80111
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h833a12ea92918c29E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.j)
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !80086

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80111
  %i.v = load i64, ptr %i.k, align 8, !range !594, !noalias !80111, !noundef !15 ; 3 uses
  %i.w = icmp eq i64 %i.v, -9223372036854775803
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !80115 ; 3 uses
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80111
  br label %bb.f

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i", %bb.b
  %i.z = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef 0, ptr noundef nonnull align 1 @638, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.f unwind label %bb.l, !noalias !80086

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.ph.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80086
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.m)
          to label %.thread.i.i unwind label %.body.thread11.i.i, !noalias !80116

bb.g:                                             ; preds = %.noexc.i.i.i
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !80086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80111
  store i64 %i.v, ptr %i.l, align 8, !noalias !80086
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !80086
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.m)
          to label %.noexc10.i.i.i unwind label %bb.i, !noalias !80086

.noexc10.i.i.i:                                   ; preds = %bb.g
  %i.aa = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.aa, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %.noexc10.i.i.i
  %gepdiff.i.i = add nsw i64 %.idx.i.i.i, -32
  %i.ab = lshr exact i64 %gepdiff.i.i, 5
  %i.ac = add nuw nsw i64 %i.ab, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80117
  store i64 1, ptr %i.i, align 8, !noalias !80117
  %i.ad = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ac, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %"_ZN4core3ptr54drop_in_place$LT$milli..vector..settings..Fragment$GT$17h168c9817efadfeb5E.exit14.i.i.i" unwind label %bb.i, !noalias !80086

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l)
          to label %.body.thread.thread.i.i unwind label %bb.k, !noalias !80086

"_ZN4core3ptr54drop_in_place$LT$milli..vector..settings..Fragment$GT$17h168c9817efadfeb5E.exit14.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80117
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l)
          to label %.thread.sink.split.i.i unwind label %.body.thread11.i.i, !noalias !80116

bb.j:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !80120
  br label %.thread.sink.split.i.i

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80086
  unreachable

bb.l:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.m)
          to label %.body.thread.thread.i.i unwind label %bb.k, !noalias !80086

.thread.sink.split.i.i:                           ; preds = %bb.j, %"_ZN4core3ptr54drop_in_place$LT$milli..vector..settings..Fragment$GT$17h168c9817efadfeb5E.exit14.i.i.i"
  %.sroa.11.2 = phi ptr [ %i.y, %bb.j ], [ %i.ad, %"_ZN4core3ptr54drop_in_place$LT$milli..vector..settings..Fragment$GT$17h168c9817efadfeb5E.exit14.i.i.i" ]
  %.sroa.0.2 = phi i64 [ %i.v, %bb.j ], [ -9223372036854775803, %"_ZN4core3ptr54drop_in_place$LT$milli..vector..settings..Fragment$GT$17h168c9817efadfeb5E.exit14.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80086
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.f
  %.sroa.11.3 = phi ptr [ %.sroa.5.0.ph.i.i.i, %bb.f ], [ %.sroa.11.2, %.thread.sink.split.i.i ]
  %.sroa.0.3 = phi i64 [ -9223372036854775803, %bb.f ], [ %.sroa.0.2, %.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !80086
  br label %"_ZN5milli6vector8settings1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..Fragment$GT$11deserialize17h2382da6d4b0e5a1dE.exit"

bb.m:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ag, align 8, !alias.scope !80082, !noalias !80083
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !80082, !noalias !80083, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !80082, !noalias !80083 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80116
  %i.ah = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ah)
  %.idx.i12.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i12.i.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.aj, align 8, !noalias !80121
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 8 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !80121
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !80121
  %.sroa.6.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx.i13.i.i, align 8, !noalias !80121
  store i8 22, ptr %i.g, align 8, !noalias !80121
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 8 uses
  store i64 0, ptr %i.ak, align 8, !noalias !80121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80125
  %i.al = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.al, label %.thread98.thread.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

.thread98.thread.i.i.i.i:                         ; preds = %bb.m
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !80125
  br label %bb.au

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.m
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.2.0..sroa_idx.i.i.i74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.551.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.652.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.617.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %.sroa.7.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.am = add nsw i64 %.idx.i12.i.i, -64
  %i.an = lshr exact i64 %i.am, 6
  %i.ao = add nuw nsw i64 %i.an, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.at, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.ap = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.au, %bb.at ] ; 2 uses
  %.sroa.551.0.copyload134.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.551.0.copyload133.i.i.i.i, %bb.at ] ; 7 uses
  %i.aq = phi i64 [ -9223372036854775803, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.dj, %bb.at ] ; 9 uses
  %.sroa.551.0.copyload80127.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.551.0.copyload79.i.i.i.i, %bb.at ] ; 2 uses
  %i.ar = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.at, %bb.at ] ; 4 uses
  %i.as = phi i64 [ -9223372036854775803, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.di, %bb.at ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 9 uses
  %.sroa.012.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.ar, align 8, !noalias !80129 ; 3 uses
  %.not.i.i.i.i.i14.i.i = icmp eq i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14.i.i, label %.thread98.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = add nuw nsw i64 %i.ap, 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80140
  store i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !80140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.713.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80140
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !80121
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80140 ; 6 uses
  %.sroa.11.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80140 ; 4 uses
  %.sroa.15.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80140 ; 2 uses
  switch i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i, label %bb.n [
    i8 1, label %bb.o
    i8 4, label %bb.p
    i8 12, label %bb.q
    i8 13, label %bb.t
    i8 14, label %bb.v
    i8 15, label %bb.ac
  ], !prof !777

bb.n:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  store ptr %i.at, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !80121
  store i64 %i.au, ptr %i.ak, align 8, !noalias !80121
  store ptr %.sroa.551.0.copyload134.i.i.i.i, ptr %.sroa.617.0..sroa_idx18.i.i.i.i, align 8, !noalias !80125
  store i64 %i.as, ptr %i.f, align 8, !noalias !80125
  %i.aw = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
          to label %bb.av unwind label %.loopexit.split-lp.i.i.i.i, !noalias !80125 ; 2 uses

bb.o:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !80140
  %i.ax = icmp ne i8 %.sroa.5.0.copyload.i.i.i.i.i.i, 0
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ay = icmp ne i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.az = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = xor i32 %i.ba, 1970037110
  %i.bc = getelementptr i8, ptr %i.az, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.be, 101
  %i.bg = or i32 %i.bb, %i.bf
  %i.bh = icmp ne i32 %i.bg, 0                    ; 2 uses
  %i.bi = zext i1 %i.bh to i32                    ; 0 uses
  %spec.select.i.i4.i.i.i.i.i.i.i.i.i.i = zext i1 %i.bh to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %i.bj = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.aj, label %.sink.split.i.i.i.i

bb.t:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %.not.i.i5.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bk = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 1970037110
  %i.bn = getelementptr i8, ptr %i.bk, i64 4
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = xor i32 %i.bp, 101
  %i.br = or i32 %i.bm, %i.bq
  %i.bs = icmp ne i32 %i.br, 0                    ; 2 uses
  %i.bt = zext i1 %i.bs to i32                    ; 0 uses
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.bu = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 6 uses
  %i.bv = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 5
  br i1 %i.bv, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !80141, !noalias !80144, !noundef !15
  %i.bx = icmp eq i8 %i.bw, 118
  br i1 %i.bx, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !80141, !noalias !80144, !noundef !15
  %i.ca = icmp eq i8 %i.bz, 97
  br i1 %i.ca, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !80141, !noalias !80144, !noundef !15
  %i.cd = icmp eq i8 %i.cc, 108
  br i1 %i.cd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !80141, !noalias !80144, !noundef !15
  %i.cg = icmp eq i8 %i.cf, 117
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !80141, !noalias !80144, !noundef !15
  %i.cj = icmp ne i8 %i.ci, 101
  %spec.select.i.i10.i.i.i.i.i.i.i.i.i.i = zext i1 %i.cj to i8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sink.i.i9.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.v ], [ %spec.select.i.i10.i.i.i.i.i.i.i.i.i.i, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.ck = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.aj, label %.sink.split.i.i.i.i

bb.ac:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.cl = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 5 uses
  %i.cm = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i.i.i, 5
  br i1 %i.cm, label %bb.ad, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load i8, ptr %i.cl, align 1, !alias.scope !80158, !noalias !80163, !noundef !15
  %i.co = icmp eq i8 %i.cn, 118
  br i1 %i.co, label %bb.ae, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !80158, !noalias !80163, !noundef !15
  %i.cr = icmp eq i8 %i.cq, 97
  br i1 %i.cr, label %bb.af, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !80158, !noalias !80163, !noundef !15
  %i.cu = icmp eq i8 %i.ct, 108
  br i1 %i.cu, label %bb.ag, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !80158, !noalias !80163, !noundef !15
  %i.cx = icmp eq i8 %i.cw, 117
  br i1 %i.cx, label %bb.ah, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !80158, !noalias !80163, !noundef !15
  %i.da = icmp ne i8 %i.cz, 101
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.u, %bb.t, %bb.p, %bb.o
  %.sink.i.i11.sink.shrunk.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.t ], [ %i.ax, %bb.o ], [ %i.ay, %bb.p ], [ %i.bs, %bb.u ], [ true, %bb.ac ], [ %i.da, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ]
  %.sink.i.i11.sink.i.i.i.i.i.i.i.i.i.i = zext i1 %.sink.i.i11.sink.shrunk.i.i.i.i.i.i.i.i.i.i to i8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %bb.aj unwind label %.loopexit.i.i.i.i, !noalias !80125

bb.ai:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %i.db = phi i64 [ %i.dc, %.loopexit.split-lp.i.i.i.i ], [ %.lcssa162.i.i.i.i, %.loopexit.i.i.i.i ]
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %.not61.i.i.i.i = icmp eq i64 %i.db, -9223372036854775803
  br i1 %.not61.i.i.i.i, label %.thread23.i.i.i, label %bb.aw

.loopexit.i.i.i.i:                                ; preds = %_ZN10serde_core2de9MapAccess10next_value17had01def39ea7df70E.exit.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i
  %.lcssa162.i.i.i.i = phi i64 [ %i.aq, %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i ], [ -9223372036854775803, %_ZN10serde_core2de9MapAccess10next_value17had01def39ea7df70E.exit.i.i.i.i.i ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !80121
  store i64 %i.au, ptr %i.ak, align 8, !noalias !80121
  store ptr %.sroa.551.0.copyload134.i.i.i.i, ptr %.sroa.617.0..sroa_idx18.i.i.i.i, align 8, !noalias !80125
  store i64 %i.as, ptr %i.f, align 8, !noalias !80125
  br label %bb.ai

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.au, %bb.ap, %bb.an, %bb.al, %bb.n
  %i.dc = phi i64 [ %i.aq, %bb.an ], [ %i.aq, %bb.n ], [ %i.aq, %bb.al ], [ -9223372036854775803, %bb.ap ], [ -9223372036854775803, %bb.au ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.sink.split.i.i.i.i:                              ; preds = %bb.ab, %bb.s
  %.sink.i.i.i.i = phi ptr [ %i.az, %bb.s ], [ %i.bu, %bb.ab ]
  %.sroa.6.0.ph.ph.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sink.i.i9.i.i.i.i.i.i.i.i.i.i, %bb.ab ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.i.i.i, i64 noundef %.sroa.61.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80166
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.s
  %.sroa.6.0.ph.i.i.i.i = phi i8 [ %.sink.i.i11.sink.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha5a177cdcb3ecfabE.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sink.i.i9.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.sroa.6.0.ph.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80140
  %cond.i.i.i.i = icmp eq i8 %.sroa.6.0.ph.i.i.i.i, 0
  br i1 %cond.i.i.i.i, label %bb.am, label %bb.ak

.thread98.i.i.i.i:                                ; preds = %bb.at, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.lcssa58.i.i = phi ptr [ %i.ai, %bb.at ], [ %i.at, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %i.dd = phi i64 [ %i.ao, %bb.at ], [ %i.ap, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.551.0.copyload133.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.551.0.copyload133.i.i.i.i, %bb.at ], [ %.sroa.551.0.copyload134.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.lcssa119.i.i.i.i = phi i64 [ %i.di, %bb.at ], [ %i.as, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.551.0.copyload80.lcssa.i.i.i.i = phi ptr [ %.sroa.551.0.copyload79.i.i.i.i, %bb.at ], [ %.sroa.551.0.copyload80127.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.dj, %bb.at ], [ %i.aq, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  store ptr %.lcssa58.i.i, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !80121
  store i64 %i.dd, ptr %i.ak, align 8, !noalias !80121
  store ptr %.sroa.551.0.copyload133.lcssa.sink.i.i.i.i, ptr %.sroa.617.0..sroa_idx18.i.i.i.i, align 8, !noalias !80125
  store i64 %.lcssa119.i.i.i.i, ptr %i.f, align 8, !noalias !80125
  %.not58.i.i.i.i = icmp eq i64 %.lcssa.i.i.i.i, -9223372036854775803
  br i1 %.not58.i.i.i.i, label %bb.au, label %bb.be

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.g, align 8, !noalias !80121 ; 2 uses
  store i8 22, ptr %i.g, align 8, !noalias !80121
end_hunk_17
begin_hunk_18_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb7024da67302d5a7E":bb.a

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4c0cd62acb405a18E.exit.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80319
  %i.av = icmp eq ptr %i.aa, %i.o
  br i1 %i.av, label %.loopexit.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80273
  unreachable

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i), !noalias !80269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !80269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80269
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.p), !noalias !80268
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread7"

.loopexit.loopexit.i.i.i:                         ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4c0cd62acb405a18E.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.lcssa30.i.i = phi i64 [ %i.y, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4c0cd62acb405a18E.exit.i.i.i.i" ], [ %i.ad, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.lcssa36.ph.i.i.i = phi ptr [ %i.o, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4c0cd62acb405a18E.exit.i.i.i.i" ], [ %i.z, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i" ]
  %.sroa.4.8.copyload9.pre.pre.i.i.i = load ptr, ptr %i.h, align 8, !noalias !80321
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %.sroa.4.8.copyload9.pre.i.i.i = phi ptr [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.4.8.copyload9.pre.pre.i.i.i, %.loopexit.loopexit.i.i.i ]
  %i.ax = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.lcssa30.i.i, %.loopexit.loopexit.i.i.i ]
  %.lcssa36.i.i.i = phi ptr [ %i.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.lcssa36.ph.i.i.i, %.loopexit.loopexit.i.i.i ]
  store ptr %.lcssa36.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80269
  store i64 %i.ax, ptr %i.q, align 8, !noalias !80269
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i.i, %bb.b
  %.sroa.4.8.copyload9.i.i.i = phi ptr [ %.sroa.4.8.copyload9.pre.i.i.i, %.loopexit.i.i.i ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80307
  %.sroa.7.8..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx10.i.i.i, i64 16, i1 false), !noalias !80269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i), !noalias !80269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !80269
  store ptr %.sroa.4.8.copyload9.i.i.i, ptr %i.j, align 8, !noalias !80269
  %i.ay = invoke fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h318e8eaaf6cf2148E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.i)
          to label %bb.t unwind label %bb.s, !noalias !80269 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h7612682c21b0a5cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #44
          to label %.body.i.i unwind label %bb.u, !noalias !80269

bb.t:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.w, label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %bb.t
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h7612682c21b0a5cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.j), !noalias !80268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80269
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread7"

bb.u:                                             ; preds = %.thread18.i.i.i, %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80269
  unreachable

.thread18.i.i.i:                                  ; preds = %.thread22.i.i.i, %.body.i.i.i.i
  %eh.lpad-body21.i.i.i = phi { ptr, i32 } [ %i.ar, %.thread22.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h527133af2ebcf491E"(ptr noalias noundef align 8 dereferenceable(72) %i.i) #44
          to label %.body.i.i unwind label %bb.u, !noalias !80269

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread": ; preds = %bb.a
  %i.bb = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10), !noalias !80265
  br label %bb.v

.body.i.i:                                        ; preds = %.thread18.i.i.i, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.az, %bb.s ], [ %eh.lpad-body21.i.i.i, %.thread18.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread7": ; preds = %.noexc4.i.i, %bb.q
  %.sroa.7.0.ph = phi ptr [ %.sroa.9.0.ph.i.i.i.i, %bb.q ], [ %i.ay, %.noexc4.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80268
  br label %bb.v

bb.v:                                             ; preds = %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread7", %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread"
  %.sroa.7.16 = phi ptr [ %i.bb, %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread" ], [ %.sroa.7.0.ph, %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hdda301d0e73009a2E.exit.thread7" ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.16, ptr %i.bc, align 8
  store i64 2, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80268
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload9.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb77d2fcb21f560fdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [1512 x i8], align 8              ; 9 uses
  %.sroa.1029.i.i.i.i.i.i.i = alloca [1496 x i8], align 8 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [1512 x i8], align 8              ; 5 uses
  %i.h = alloca [1512 x i8], align 8              ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.19.i.i.i.i = alloca [1496 x i8], align 8 ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80325)
  %i.m = load i8, ptr %1, align 8, !range !446, !alias.scope !80328, !noalias !80329, !noundef !15
  %i.n = icmp eq i8 %i.m, 21
  br i1 %i.n, label %bb.b, label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hfc169baaecce8411E.exit.thread", !prof !16

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !alias.scope !80328, !noalias !80329
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !80328, !noalias !80329, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !80328, !noalias !80329 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80332
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.p = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.p)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.r, align 8, !noalias !80333
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 10 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !80333
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i8 22, ptr %i.k, align 8, !noalias !80333
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 10 uses
  store i64 0, ptr %i.s, align 8, !noalias !80333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80337
  store ptr null, ptr %i.j, align 8, !noalias !80337
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.t, align 8, !noalias !80337
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i.i)
  %i.u = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.u, label %bb.u, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.sroa.2.0..sroa.4.24..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = add nsw i64 %.idx.i.i.i, -64
  %i.y = lshr exact i64 %i.x, 6
  %i.z = add nuw nsw i64 %i.y, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h8bda5206a5a8fddcE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.aa = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ad, %"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h8bda5206a5a8fddcE.exit.i.i.i.i" ] ; 2 uses
  %i.ab = phi ptr [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ac, %"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h8bda5206a5a8fddcE.exit.i.i.i.i" ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 11 uses
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.ab, align 8, !noalias !80341 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.043.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.744.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = add nuw nsw i64 %i.aa, 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.744.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80352
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !80352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !80352
  store i8 %.sroa.043.0.copyload.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !80352
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17he89761fc396e38d6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i" unwind label %bb.o, !noalias !80352

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80352
  %i.af = load i64, ptr %i.e, align 8, !range !286, !noalias !80352, !noundef !15 ; 7 uses
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  %i.ah = load ptr, ptr %i.v, align 8, !noalias !80352 ; 6 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i"
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80352
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i" unwind label %.loopexit.split-lp.i.i.i.i, !noalias !80337

bb.e:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !80352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80352
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1029.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !80352
  %.sroa.61.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80352 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80353
  switch i8 %.sroa.0.0.copyload.i.i.i.i.i.i, label %bb.f [
    i8 16, label %.thread.i.i.i.i.i.i.i.i.i
    i8 17, label %bb.g
    i8 18, label %.thread.i.i.i.i.i.i.i.i.i
  ]

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h70911ba21402f133E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1512) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.j, !noalias !80352

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.61.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.61.0.copyload.i.i.i.i.i.i, i64 32, i1 false), !noalias !80357
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h70911ba21402f133E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1512) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.i, !noalias !80364

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80357
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61.0.copyload.i.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #45, !noalias !80357
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i"

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.e
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i" unwind label %bb.j, !noalias !80352

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61.0.copyload.i.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #45, !noalias !80357
  br label %.body.i.i.i.i.i.i.i

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.h, %bb.f
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !80364 ; 4 uses
  %i.aj = load ptr, ptr %i.w, align 8, !noalias !80364 ; 4 uses
  switch i64 %.pr.i.i.i.i.i.i.i.i.i, label %bb.l [
    i64 4, label %.thread51.i.i.i.i.i.i.i
    i64 3, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i"
  ]

.thread51.i.i.i.i.i.i.i:                          ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80353
  br label %.loopexit.i.i.i.i

bb.j:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %i.al = icmp eq i64 %i.af, 0
  br i1 %i.al, label %.body.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.body.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80365
  br label %.body.i.i.i.i

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i": ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80353
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1029.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80352
  br label %bb.p

bb.l:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h95e212b6ae008b83E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.1029.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, i64 1496, i1 false), !noalias !80370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80353
  %i.am = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 5
  br i1 %i.am, label %.loopexit.i.loopexit.i.i.i, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i"

.loopexit.i.loopexit.i.i.i:                       ; preds = %bb.l
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.loopexit.i.i.i, %.thread51.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1029.i.i.i.i.i.i.i)
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80371
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i": ; preds = %bb.m, %.loopexit.i.i.i.i, %bb.d
  %.sroa.05.0.in.i.i.i.i = phi ptr [ %i.aj, %bb.m ], [ %i.aj, %.loopexit.i.i.i.i ], [ %i.ah, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80352
  br label %.loopexit38.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80352
  unreachable

bb.o:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %.body.i.i.i.i unwind label %bb.n, !noalias !80352

.loopexit39.i.i.i.i:                              ; preds = %bb.r, %bb.p
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit39.i.i.i.i, %bb.o, %bb.k, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.k ], [ %lpad.loopexit.i.i.i.i, %.loopexit39.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h74558d5d2f9ab19bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #44
          to label %.thread18.i.i.i unwind label %bb.s, !noalias !80337

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i": ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.1029.i.i.i.i.i.i.i, i64 1496, i1 false), !noalias !80376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1029.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80352
  %i.aq = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 6
  br i1 %i.aq, label %.loopexit38.loopexit.i.i.i.i, label %bb.p

.loopexit38.loopexit.i.i.i.i:                     ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i"
  store ptr %i.ac, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !80333
  store i64 %i.ad, ptr %i.s, align 8, !noalias !80333
  %i.ar = inttoptr i64 %i.af to ptr
  br label %.loopexit38.i.i.i.i

.loopexit38.i.i.i.i:                              ; preds = %.loopexit38.loopexit.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i"
  %.sroa.05.123.i.i.i.i = phi ptr [ %.sroa.05.0.in.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread17.i.i.i.i" ], [ %i.ar, %.loopexit38.loopexit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i.i.i)
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h74558d5d2f9ab19bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.t unwind label %.thread22.i.i.i, !noalias !80333

.thread22.i.i.i:                                  ; preds = %.loopexit38.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread18.i.i.i

bb.p:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i"
  %.sroa.17.016.ph.i.i.i.i = phi ptr [ undef, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i" ], [ %i.aj, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i" ]
  %.sroa.11.112.ph.i.i.i.i = phi i64 [ 3, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.thread24.i.i.i.i" ], [ %.pr.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17h0149dd7ba13ddc42E.exit.i.i.i.i" ]
  store i64 %i.af, ptr %i.i, align 8, !noalias !80337
  store ptr %i.ah, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !80337
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !80337
  store i64 %.sroa.11.112.ph.i.i.i.i, ptr %i.h, align 8, !noalias !80337
  store ptr %.sroa.17.016.ph.i.i.i.i, ptr %.sroa.4.24..sroa_idx.i.i.i.i, align 8, !noalias !80337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.4.sroa.2.0..sroa.4.24..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1496) %.sroa.19.i.i.i.i, i64 1496, i1 false), !noalias !80337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80337
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd9bca3b3073d9158E"(ptr noalias noundef align 8 captures(address) dereferenceable(1512) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(1512) %i.h)
          to label %bb.q unwind label %.loopexit39.i.i.i.i, !noalias !80337

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr %i.g, align 8, !range !4649, !alias.scope !80377, !noalias !80337, !noundef !15
  %i.au = icmp samesign ult i64 %i.at, 3
  br i1 %i.au, label %bb.r, label %"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h8bda5206a5a8fddcE.exit.i.i.i.i"

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$milli..vector..settings..EmbeddingSettings$GT$17h31d9079f9b6055dcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(1512) %i.g)
          to label %"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$meilisearch_types..settings..SettingEmbeddingSettings$GT$$GT$17h8bda5206a5a8fddcE.exit.i.i.i.i" unwind label %.loopexit39.i.i.i.i, !noalias !80337
end_hunk_18
begin_hunk_19_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17he9dbc1b9746b2555E":bb.a
  store i8 %.sroa.0.0.copyload2.i.i.i14.i.i.i.i, ptr %i.j, align 8, !noalias !80444
  switch i8 %.sroa.0.0.copyload2.i.i.i14.i.i.i.i, label %bb.aa [
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %bb.x
    i8 9, label %bb.y
    i8 10, label %bb.z
  ], !prof !51183

bb.q:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i17.i.i.i.i, align 1, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bb = uitofp i8 %i.ba to float
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.be = uitofp i16 %i.bd to float
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bh = uitofp i32 %i.bg to float
  br label %bb.ab

bb.t:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bk = uitofp i64 %i.bj to float
  br label %bb.ab

bb.u:                                             ; preds = %bb.p
  %i.bl = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i17.i.i.i.i, align 1, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bm = sitofp i8 %i.bl to float
  br label %bb.ab

bb.v:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bp = sitofp i16 %i.bo to float
  br label %bb.ab

bb.w:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bs = sitofp i32 %i.br to float
  br label %bb.ab

bb.x:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !80447, !noalias !80452, !noundef !15
  %i.bv = sitofp i64 %i.bu to float
  br label %bb.ab

bb.y:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !alias.scope !80447, !noalias !80452, !noundef !15
  br label %bb.ab

bb.z:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bz = load double, ptr %i.by, align 8, !alias.scope !80447, !noalias !80452, !noundef !15 ; 2 uses
  %i.ca = bitcast double %i.bz to i64
  %.not.i.i.i.i.i.i18.i.i.i.i = icmp sgt i64 %i.ca, -1
  %..i.i.i.i.i.i19.i.i.i.i = select i1 %.not.i.i.i.i.i.i18.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  %i.cb = fptrunc double %i.bz to float
  %i.cc = tail call float @llvm.copysign.f32(float %i.cb, float %..i.i.i.i.i.i19.i.i.i.i)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.p
  %i.cd = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126)
          to label %.noexc10.i.i.i unwind label %bb.ad, !noalias !80391

.noexc10.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80444
  br label %.noexc9.i.i.i

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i.i.i.i.i20.i.i.i.i = phi float [ %i.cc, %bb.z ], [ %i.bx, %bb.y ], [ %i.bv, %bb.x ], [ %i.bs, %bb.w ], [ %i.bp, %bb.v ], [ %i.bm, %bb.u ], [ %i.bk, %bb.t ], [ %i.bh, %bb.s ], [ %i.be, %bb.r ], [ %i.bb, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.j)
          to label %.noexc13.i.i.i unwind label %bb.ad, !noalias !80391

.invoke.i.i.i:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i13.i.i.i.i", %.noexc8.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i", %bb.b
  %i.ce = phi i64 [ 0, %bb.b ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i13.i.i.i.i" ], [ 1, %.noexc8.i.i.i ]
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ce, ptr noundef nonnull align 1 @822, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc9.i.i.i unwind label %bb.ad, !noalias !80391

.noexc9.i.i.i:                                    ; preds = %.invoke.i.i.i, %.noexc10.i.i.i, %.noexc.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.cf, %.invoke.i.i.i ], [ %i.ax, %.noexc.i.i.i ], [ %i.cd, %.noexc10.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.l)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread71.i" unwind label %.body.thread11.i.i, !noalias !80455

.noexc13.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80444
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.l)
          to label %.noexc6.i.i unwind label %.body.thread11.i.i, !noalias !80455

.noexc6.i.i:                                      ; preds = %.noexc13.i.i.i
  %i.cg = icmp eq i64 %.sroa.3.0.copyload.i.i, 2
  br i1 %i.cg, label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.i", label %bb.ac, !prof !16

bb.ac:                                            ; preds = %.noexc6.i.i
  %gepdiff.i.i = add nsw i64 %.idx.i.i.i, -64
  %i.ch = lshr exact i64 %gepdiff.i.i, 5
  %i.ci = add nuw nsw i64 %i.ch, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80456
  store i64 2, ptr %i.i, align 8, !noalias !80456
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.ci, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %.noexc7.i.i unwind label %.body.thread11.i.i, !noalias !80455

.noexc7.i.i:                                      ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80456
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread71.i"

bb.ad:                                            ; preds = %.invoke.i.i.i, %bb.ab, %bb.aa, %bb.o, %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.l)
          to label %.body.thread.thread.i.i unwind label %bb.ae, !noalias !80391

bb.ae:                                            ; preds = %bb.ad
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80391
  unreachable

bb.af:                                            ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cm, align 8, !alias.scope !80387, !noalias !80388
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !80387, !noalias !80388, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !80387, !noalias !80388 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80455
  %i.cn = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.cn)
  %.idx.i13.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i13.i.i ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.cp, align 8, !noalias !80459
  %.sroa.4.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 11 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !80459
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !80459
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.co, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !noalias !80459
  store i8 22, ptr %i.h, align 8, !noalias !80459
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 11 uses
  store i64 0, ptr %i.cq, align 8, !noalias !80459
  %i.cr = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.cr, label %.thread.thread.i.invoke.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.af
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx.i.i.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dc = add nsw i64 %.idx.i13.i.i, -64
  %i.dd = lshr exact i64 %i.dc, 6
  %i.de = add nuw nsw i64 %i.dd, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.cc, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.df = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.di, %bb.cc ] ; 2 uses
  %.sroa.0.0132.i.i.i.i = phi i32 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.cc ] ; 3 uses
  %.sroa.7.0131.i.i.i.i = phi float [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.7.1.i.i.i.i, %bb.cc ] ; 2 uses
  %.sroa.04.0130.i.i.i.i = phi i32 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.04.1.i.i.i.i, %bb.cc ] ; 3 uses
  %.sroa.76.0129.i.i.i.i = phi float [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.76.1.i.i.i.i, %bb.cc ] ; 2 uses
  %i.dg = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.dh, %bb.cc ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64 ; 12 uses
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.dg, align 8, !noalias !80463 ; 3 uses
  %.not.i.i.i.i.i17.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i17.i.i, label %.thread.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = add nuw nsw i64 %i.df, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80477
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !80477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80477
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false), !noalias !80459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80477
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !80477 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80477 ; 11 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80477 ; 5 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80477 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80478)
  call void @llvm.experimental.noalias.scope.decl(metadata !80481)
  call void @llvm.experimental.noalias.scope.decl(metadata !80484)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.ag
    i8 4, label %bb.ak
    i8 12, label %bb.ao
    i8 13, label %bb.ax
    i8 14, label %bb.bd
    i8 15, label %bb.bh
  ], !prof !777

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.dk = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
          to label %.noexc.i22.i.i unwind label %.loopexit.i.i.i, !noalias !80459

.noexc.i22.i.i:                                   ; preds = %.noexc9.i.i.i.i.i.i.i
  store ptr %i.dk, ptr %i.ct, align 8, !alias.scope !80487, !noalias !80488
  store i8 1, ptr %i.f, align 8, !alias.scope !80487, !noalias !80488
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc020908a9ff0fbb2E.exit.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !80492)
  call void @llvm.experimental.noalias.scope.decl(metadata !80495)
  switch i8 %.sroa.4.0.copyload.i.i.i.i.i.i, label %bb.ah [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
  ], !prof !1014

bb.ah:                                            ; preds = %bb.ag
  %i.dl = zext i8 %.sroa.4.0.copyload.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !80498
  store i64 %i.dl, ptr %i.cv, align 8, !noalias !80498
  store i8 1, ptr %i.e, align 8, !noalias !80498
  %i.dm = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @836, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !80499

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80498
  store ptr %i.dm, ptr %i.ct, align 8, !alias.scope !80500, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  store i8 0, ptr %i.cs, align 1, !alias.scope !80500, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ag
  store i8 1, ptr %i.cs, align 1, !alias.scope !80500, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !80501)
  switch i64 %.sroa.51.0.copyload.i.i.i.i.i.i, label %bb.al [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !1014

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80504
  store i64 %.sroa.51.0.copyload.i.i.i.i.i.i, ptr %i.cu, align 8, !noalias !80504
  store i8 1, ptr %i.d, align 8, !noalias !80504
  %i.dn = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @836, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc4.i.i.i.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !80499

.noexc4.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80504
  store ptr %i.dn, ptr %i.ct, align 8, !alias.scope !80505, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  store i8 0, ptr %i.cs, align 1, !alias.scope !80505, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  store i8 1, ptr %i.cs, align 1, !alias.scope !80505, !noalias !80488
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.do = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80506)
  call void @llvm.experimental.noalias.scope.decl(metadata !80509)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i, label %bb.as [
    i64 4, label %bb.ap
    i64 5, label %bb.ar
  ], !prof !935

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = icmp ne i32 %i.dp, 1851876717
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %i.cs, align 1, !alias.scope !80512, !noalias !80513
  br label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.dt = load i32, ptr %i.do, align 1
  %i.du = xor i32 %i.dt, 1835493747
  %i.dv = getelementptr i8, ptr %i.do, i64 4
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = xor i32 %i.dx, 97
  %i.dz = or i32 %i.du, %i.dy
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.at, label %bb.as, !prof !16

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.ed = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @839, i64 noundef 2)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !80516

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.as
  store ptr %i.ed, ptr %i.ct, align 8, !alias.scope !80512, !noalias !80513
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  store i8 1, ptr %i.cs, align 1, !alias.scope !80512, !noalias !80513
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !80459
  store i64 %i.di, ptr %i.cq, align 8, !noalias !80459
  %i.ef = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ef, label %.thread.i.i.i, label %.sink.split.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %.sink.i.i5.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.at ], [ 1, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aq ]
  store i8 %.sink.i.i5.i.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !80512, !noalias !80513
  %i.eg = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.eg, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc020908a9ff0fbb2E.exit.i.i.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80517
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc020908a9ff0fbb2E.exit.i.i.i.i.i.i.i"

bb.ax:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.eh = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80522)
  call void @llvm.experimental.noalias.scope.decl(metadata !80525)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i, label %bb.bb [
    i64 4, label %bb.ay
    i64 5, label %bb.ba
  ], !prof !935

bb.ay:                                            ; preds = %bb.ax
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = icmp ne i32 %i.ei, 1851876717
  %i.ek = zext i1 %i.ej to i32
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  store i8 0, ptr %i.cs, align 1, !alias.scope !80528, !noalias !80529
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.em = load i32, ptr %i.eh, align 1
  %i.en = xor i32 %i.em, 1835493747
  %i.eo = getelementptr i8, ptr %i.eh, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 97
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.bc, label %bb.bb, !prof !16

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.ax
  %i.ew = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h2e4a2c10bf20c527E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eh, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @839, i64 noundef 2)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !80499

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bb
  store ptr %i.ew, ptr %i.ct, align 8, !alias.scope !80528, !noalias !80529
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  store i8 1, ptr %i.cs, align 1, !alias.scope !80528, !noalias !80529
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i"
  %i.ex = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  invoke fastcc void @"_ZN220_$LT$milli..vector..distribution.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..distribution..DistributionShiftSerializable$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h0b60807abeef7346E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ex, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i)
          to label %bb.bf unwind label %bb.be, !noalias !80532

bb.be:                                            ; preds = %bb.bd
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !noalias !80459
  store i64 %i.di, ptr %i.cq, align 8, !noalias !80459
end_hunk_19
begin_hunk_20_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17he9dbc1b9746b2555E":bb.a
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.cp)
          to label %bb.ct unwind label %bb.cr, !noalias !80459

bb.cr:                                            ; preds = %.noexc10.i19.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load i8, ptr %i.h, align 8, !range !625, !noalias !80459, !noundef !15
  %i.hl = icmp eq i8 %i.hk, 22
  br i1 %i.hl, label %.body.thread.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.h)
          to label %.body.thread.i.i unwind label %bb.cv, !noalias !80459

bb.ct:                                            ; preds = %.noexc10.i19.i.i
  %i.hm = load i8, ptr %i.h, align 8, !range !625, !noalias !80459, !noundef !15
  %i.hn = icmp eq i8 %i.hm, 22
  br i1 %i.hn, label %.sink.split.i.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.h)
          to label %.sink.split.i.thread.i unwind label %.body.thread11.i.i, !noalias !80455

bb.cv:                                            ; preds = %bb.cs
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80573
  unreachable

bb.cw:                                            ; preds = %bb.cq
  %i.hp = invoke fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h318e8eaaf6cf2148E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h)
          to label %.noexc27.i.i unwind label %.body.thread11.i.i, !noalias !80455 ; 2 uses

.noexc27.i.i:                                     ; preds = %bb.cw
  %.not.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %.sink.split.i.thread.i

.thread.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %.sink.split.i.i.i.i.i.i, %bb.bj, %bb.be, %bb.au
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn16.i.ph.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.ee, %bb.au ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i, %bb.bj ], [ %i.ey, %bb.be ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h527133af2ebcf491E"(ptr noalias noundef align 8 dereferenceable(72) %i.h) #44
          to label %.body.thread.i.i unwind label %bb.cx, !noalias !80459

bb.cx:                                            ; preds = %.thread.i.i.i
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80459
  unreachable

.body.thread11.i.i:                               ; preds = %bb.cw, %bb.cu, %bb.ac, %.noexc13.i.i.i, %.noexc9.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.sink.split.i.thread.i:                           ; preds = %.noexc27.i.i, %bb.cu, %bb.ct
  %.sroa.11.i.0 = phi ptr [ %.sroa.5.0..sroa.5.0..sroa.5.0.copyload.i.i.i, %bb.ct ], [ %.sroa.5.0..sroa.5.0..sroa.5.0.copyload.i.i.i, %bb.cu ], [ %i.hp, %.noexc27.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80455
  br label %bb.da

.sink.split.i.i:                                  ; preds = %.noexc27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80455
  br label %bb.db

.body.thread.thread.i.i:                          ; preds = %bb.cy, %.body.thread.i.i, %bb.ad
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i, %.body.thread.i.i ], [ %eh.lpad-body9.i.i, %bb.cy ], [ %i.ck, %bb.ad ]
  resume { ptr, i32 } %eh.lpad-body8.i.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %.thread.i.i.i, %bb.cs, %bb.cr
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread11.i.i ], [ %eh.lpad-body.i.i.i, %.thread.i.i.i ], [ %i.hj, %bb.cs ], [ %i.hj, %bb.cr ] ; 2 uses
  %i.hr = and i8 %i.m, 30
  %switch5.i.i = icmp eq i8 %i.hr, 20
  br i1 %switch5.i.i, label %.body.thread.thread.i.i, label %bb.cy

bb.cy:                                            ; preds = %.body.thread.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.body.thread.thread.i.i unwind label %bb.cz, !noalias !80388

bb.cz:                                            ; preds = %bb.cy
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80455
  unreachable

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread71.i": ; preds = %.noexc7.i.i, %.noexc9.i.i.i
  %.sroa.11.i.2 = phi ptr [ %storemerge.i.i.i, %.noexc9.i.i.i ], [ %i.cj, %.noexc7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80391
  br label %bb.da

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.i": ; preds = %.noexc6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80391
  br label %bb.db

bb.da:                                            ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread.i", %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread71.i", %.sink.split.i.thread.i
  %.sroa.11.0..sroa.11.0..sroa.11.8..i = phi ptr [ %i.n, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread.i" ], [ %.sroa.11.i.2, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.thread71.i" ], [ %.sroa.11.i.0, %.sink.split.i.thread.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.8..i, ptr %i.ht, align 8
  br label %bb.dc

bb.db:                                            ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.i", %.sink.split.i.i
  %.sroa.8.470.i = phi float [ %.sroa.7.0.lcssa.ph.i.i.i.i, %.sink.split.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.i" ]
  %.sroa.11.0..sroa.11.0..sroa.11.8.169.i = phi float [ %.sroa.76.0.lcssa.ph.i.i.i.i, %.sink.split.i.i ], [ %.sink.i.i.i.i.i20.i.i.i.i, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h98b1a21cf96f59d2E.exit.i" ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.hu, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.8.470.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.11.0..sroa.11.0..sroa.11.8.169.i, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %storemerge = phi i32 [ 0, %bb.db ], [ 1, %bb.da ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hedb117a5a1a47118E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80584)
  %i.j = load i8, ptr %1, align 8, !range !446, !alias.scope !80586, !noalias !80587, !noundef !15
  switch i8 %i.j, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !8241

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80588
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !80587
  %i.k = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.u unwind label %bb.t, !noalias !80588

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !80576
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.l, align 8, !noalias !80588
  call fastcc void @"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h283129841b186bb6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !80586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80588
  br label %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !80586, !noalias !80587
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !80586, !noalias !80587, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !80586, !noalias !80587 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80588
  %i.n = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.n)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !80589, !noalias !80592
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !80589, !noalias !80592
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !alias.scope !80589, !noalias !80592
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !80589, !noalias !80592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80594)
  %i.s = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !80588

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !alias.scope !80594, !noalias !80597
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !80599 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %bb.g, !prof !4913

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !80588
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !80588
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !80588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80600)
  %i.w = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.w, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !80588
  store i8 11, ptr %i.e, align 8, !noalias !80588
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.f, !noalias !80588

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80588
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !80587, !noalias !80586
  store i8 1, ptr %i.i, align 8, !alias.scope !80587, !noalias !80586
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !80588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80588
  br label %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.z, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %bb.o unwind label %bb.s, !noalias !80588

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !80600, !noalias !80603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !80605
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !80588
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i" unwind label %bb.l, !noalias !80588, !inline_history !28052

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac) #49
          to label %.body.i.i unwind label %bb.m, !noalias !80588, !inline_history !28052

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80606, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i": ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i" unwind label %bb.j, !noalias !80588

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80588
  store i8 11, ptr %i.c, align 8, !noalias !80588
  %i.af = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.n unwind label %bb.j, !noalias !80588

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80588
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !80587, !noalias !80586
  store i8 1, ptr %i.i, align 8, !alias.scope !80587, !noalias !80586
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !80588

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #44
          to label %bb.e unwind label %bb.s, !noalias !80588

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80588
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !80588

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !80588
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !80588
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !80588
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ai, i64 31, i1 false), !noalias !80588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !80588
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !80588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80588
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.aj, align 8, !noalias !80588
  call fastcc void @"_ZN206_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h283129841b186bb6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !80586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80588
  br label %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80588
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !80587

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80588
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !80587, !noalias !80586
  store i8 1, ptr %i.i, align 8, !alias.scope !80587, !noalias !80586
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !80587
  br label %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.al, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", %bb.u
  %i.an = load i8, ptr %i.i, align 8, !range !447, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !15, !align !569, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN17meilisearch_types8settings1_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PrefixSearchSettings$GT$11deserialize17hc6691782c42366e2E.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !447, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hf8ec8d7e8e543880E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80614)
  %i.v = load i8, ptr %1, align 8, !range !446, !alias.scope !80617, !noalias !80618, !noundef !15
  %i.w = icmp eq i8 %i.v, 21
  br i1 %i.w, label %bb.b, label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h80ca0e7a9e602469E.exit.thread", !prof !16

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !alias.scope !80617, !noalias !80618
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !80617, !noalias !80618, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !80617, !noalias !80618 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !80621
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.y = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.y)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aa, align 8, !noalias !80622
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 11 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !80622
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i8 22, ptr %i.t, align 8, !noalias !80622
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !80622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !80622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !80626
  store ptr null, ptr %i.s, align 8, !noalias !80626
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !80626
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %.sroa.819.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.al = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.al, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i._crit_edge.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.preheader.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.preheader.i.i": ; preds = %bb.b
  %i.am = add nsw i64 %.idx.i.i.i, -64
  %i.an = lshr exact i64 %i.am, 6
  %i.ao = add nuw nsw i64 %i.an, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.ak
  %i.ap = icmp eq ptr %i.as, %i.z
  br i1 %i.ap, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i._crit_edge.loopexit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i": ; preds = %bb.c, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.preheader.i.i"
  %i.aq = phi ptr [ %i.as, %bb.c ], [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.preheader.i.i" ] ; 4 uses
  %i.ar = phi i64 [ %i.at, %bb.c ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.preheader.i.i" ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 13 uses
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.aq, align 8, !noalias !80630 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.039.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i._crit_edge.loopexit.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = add nuw nsw i64 %i.ar, 1                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !80641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !80641
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !80641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !80641
  store i8 %.sroa.039.0.copyload.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !80641
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17he89761fc396e38d6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i" unwind label %bb.af, !noalias !80641

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !80641
  %i.av = load i64, ptr %i.p, align 8, !range !286, !noalias !80641, !noundef !15 ; 6 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  %i.ax = load ptr, ptr %i.ad, align 8, !noalias !80641 ; 6 uses
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i"
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !80641
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.i.i.i.i, !noalias !80626

bb.f:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc2734fb2e685e2bE.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !80641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !80641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !80641
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.q, align 8, !noalias !80641
  %.sroa.41.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80641
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80641 ; 10 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !80641 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80642)
  call void @llvm.experimental.noalias.scope.decl(metadata !80645)
  call void @llvm.experimental.noalias.scope.decl(metadata !80648)
  switch i8 %.sroa.0.0.copyload.i.i.i.i.i.i, label %bb.g [
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 21, label %bb.i
  ], !prof !8241

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80651
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !80641
  %i.ay = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.z unwind label %bb.y, !noalias !80651

bb.h:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !80641
  store i8 22, ptr %i.aj, align 8, !noalias !80651
  invoke fastcc void @"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4a42c978abbb0ce7E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !80641

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80651
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !80651
  %i.az = icmp ult i64 %.sroa.6.0.copyload.i.i.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.az)
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.copyload.i.i.i.i.i.i, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !80655, !noalias !80658
  store i64 %.sroa.41.0.copyload.i.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !80655, !noalias !80658
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !80655, !noalias !80658
  store ptr %i.ba, ptr %i.ag, align 8, !alias.scope !80655, !noalias !80658
  call void @llvm.experimental.noalias.scope.decl(metadata !80660)
  %i.bb = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.t, %bb.k
  %.pn24.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.m) #44
          to label %.body.i.i.i.i.i.i.i unwind label %bb.x, !noalias !80651

bb.k:                                             ; preds = %bb.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  br label %bb.j

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.bd, ptr %i.af, align 8, !alias.scope !80660, !noalias !80663
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, align 8, !noalias !80665 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i", label %bb.l, !prof !4913

bb.l:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80651
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !noalias !80651
  store i8 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !80651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80651
  call void @llvm.experimental.noalias.scope.decl(metadata !80666)
  %i.bf = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i.i, 1
  br i1 %i.bf, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i", %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80651
  store i8 11, ptr %i.j, align 8, !noalias !80651
  %i.bg = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.m unwind label %bb.k, !noalias !80651

bb.m:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80651
  store ptr %i.bg, ptr %i.ai, align 8, !alias.scope !80669, !noalias !80670
  store i8 1, ptr %i.n, align 8, !alias.scope !80669, !noalias !80670
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %bb.m
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %.noexc21.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !80641

.noexc21.i.i.i.i.i.i.i:                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !80651
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.q, %bb.o
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.bh, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.k) #44
          to label %bb.t unwind label %bb.x, !noalias !80651

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 128
  store ptr %i.bi, ptr %i.af, align 8, !alias.scope !80666, !noalias !80671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !noalias !80673
  %.pr.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.i, align 8, !noalias !80651
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.i) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.q, !noalias !80651, !inline_history !28052

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ah) #49
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !80651, !inline_history !28052

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80674, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ah) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.o, !noalias !80651

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80651
  store i8 11, ptr %i.h, align 8, !noalias !80651
  %i.bl = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.s unwind label %bb.o, !noalias !80651

bb.s:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80651
  store ptr %i.bl, ptr %i.ai, align 8, !alias.scope !80669, !noalias !80670
  store i8 1, ptr %i.n, align 8, !alias.scope !80669, !noalias !80670
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.k)
          to label %bb.v unwind label %bb.u, !noalias !80651

bb.t:                                             ; preds = %bb.u, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.u ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %bb.j unwind label %bb.x, !noalias !80651

bb.u:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80651
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.w unwind label %bb.k, !noalias !80651

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80651
  br label %bb.n

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i.i.i.i.i.i.i.i.i", %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !80651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !80651
  %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.k, align 8, !noalias !80651
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.bn, i64 31, i1 false), !noalias !80651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80651
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %.noexc22.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !80641

.noexc22.i.i.i.i.i.i.i:                           ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !80651
  store i8 %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !80651
  invoke fastcc void @"_ZN219_$LT$meilisearch_types..facet_values_sort.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..facet_values_sort..FacetValuesSort$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4a42c978abbb0ce7E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f)
          to label %.noexc23.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !80641

.noexc23.i.i.i.i.i.i.i:                           ; preds = %.noexc22.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !80651
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.y, %bb.t, %.body.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80651
  unreachable

bb.y:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q) #44
          to label %.body.i.i.i.i.i.i.i unwind label %bb.x, !noalias !80641

bb.z:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !80651
  store ptr %i.ay, ptr %i.ai, align 8, !alias.scope !80669, !noalias !80670
  store i8 1, ptr %i.n, align 8, !alias.scope !80669, !noalias !80670
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i" unwind label %bb.aa, !noalias !80641

bb.aa:                                            ; preds = %bb.z, %.noexc22.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i.i.i.i.i.i.i.i.i", %bb.n, %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.aa, %bb.y, %bb.j
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %.pn24.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %i.bp, %bb.y ] ; 2 uses
  %i.br = icmp eq i64 %i.av, 0
  br i1 %i.br, label %.body.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.body.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80679
  br label %.body.i.i.i.i

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i": ; preds = %bb.z, %.noexc23.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.bs = load i8, ptr %i.n, align 8, !range !447, !noalias !80641, !noundef !15
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h65c5663b73e317e7E.exit.i.i.i.i.i.i.i"
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  %i.bu = load ptr, ptr %i.ai, align 8, !noalias !80641, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !80641
  %i.bv = icmp eq i64 %i.av, 0
  br i1 %i.bv, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80684
  br label %bb.ag

bb.ae:                                            ; preds = %bb.af
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80641
  unreachable

bb.af:                                            ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #44
          to label %.body.i.i.i.i unwind label %bb.ae, !noalias !80641

.loopexit.i.i.i.i:                                ; preds = %bb.ak
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.as, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !80622
  store i64 %i.at, ptr %i.ab, align 8, !noalias !80622
end_hunk_20
begin_hunk_21_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hfc5248802f3ffcf6E":bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink74.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.l ], [ %i.bq, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80870)
  %i.br = icmp eq i64 %.sroa.9.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bt, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bt = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80873)
  call void @llvm.experimental.noalias.scope.decl(metadata !80876)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !80879, !noalias !80880 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !80879, !noalias !80880, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80885
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = icmp eq i64 %i.bt, %.sroa.9.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.n
  %i.bx = icmp eq i64 %i.bg, 0
  br i1 %i.bx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.by = mul nuw i64 %i.bg, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !80880
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.j, %bb.g
  %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.j ], [ %i.bi, %bb.g ], [ %.sink74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.sink74.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !80819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !80812
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread11.i.i.i.i.i.i.i.i.i.i, !noalias !80886

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !80866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !80819
  store i64 %i.bg, ptr %i.s, align 8, !noalias !80812
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80812
  store i64 %.sroa.9.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80812
  store i64 %i.bl, ptr %.sroa.637.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80812
  store ptr %i.bn, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80812
  store i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.838.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80812
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !80812

.noexc10.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.s
  %i.ca = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ca, label %bb.z, label %bb.t, !prof !16

bb.t:                                             ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, -64
  %i.cb = lshr exact i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, 5
  %i.cc = add nuw nsw i64 %i.cb, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !80887
  store i64 2, ptr %i.m, align 8, !noalias !80887
  %i.cd = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.cc, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.v unwind label %bb.u, !noalias !80812 ; 2 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$17h47ed25735a5c5fb6E"(ptr noalias noundef align 8 dereferenceable(48) %i.s) #44, !noalias !80812
  br label %.thread32.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !80887
  call void @llvm.experimental.noalias.scope.decl(metadata !80890)
  %i.cf = icmp eq i64 %.sroa.9.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i17.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.v ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.sroa.0.010.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = add nuw i64 %.sroa.0.010.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80893)
  call void @llvm.experimental.noalias.scope.decl(metadata !80896)
  %.val.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !80899, !noalias !80900 ; 2 uses
  %i.ci = icmp eq i64 %.val.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val1.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !80899, !noalias !80900, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80907
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w, %.lr.ph.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = icmp eq i64 %i.ch, %.sroa.9.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ck, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i17.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i17.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i", %bb.v
  %i.cl = icmp eq i64 %i.bg, 0
  br i1 %i.cl, label %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i17.i.i.i.i.i.i.i.i.i.i.i"
  %i.cm = mul nuw i64 %i.bg, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !80900
  br label %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i.i17.i.i.i.i.i.i.i.i.i.i.i"
  %i.cn = icmp eq i64 %i.bl, 0
  br i1 %i.cn, label %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80908
  br label %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !80909
  br label %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80812
  unreachable

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.q, %bb.k
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.bp, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %.thread32.i.i.i unwind label %bb.aa, !noalias !80812

_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.07.3.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.z ], [ -9223372036854775808, %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775808, %bb.y ]
  %.sroa.12.3.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.z ], [ %i.cd, %"_ZN4core3ptr65drop_in_place$LT$milli..attribute_patterns..AttributePatterns$GT$17h133318ca6a2f81f2E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cd, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !80812
  br label %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.i.i.i.i.i.i.i.i.i.i

_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.r
  %.sroa.07.4.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.r ], [ %.sroa.07.3.i.i.i.i.i.i.i, %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.12.4.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.12.3.i.i.i.i.i.i.i, %_ZN5serde7private2de7content17visit_content_seq17hda12ae8a50df948aE.exit.sink.split.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !80812
  br label %bb.cf

bb.ab:                                            ; preds = %.lr.ph.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !80807, !noalias !80808
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !80807, !noalias !80808, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !80807, !noalias !80808 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80886
  %i.cp = icmp ult i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.cp)
  %.idx.i11.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i11.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ao, align 8, !noalias !80910
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80910
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80910
  store ptr %i.cq, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80910
  store i8 22, ptr %i.k, align 8, !noalias !80910
  store i64 0, ptr %i.ap, align 8, !noalias !80910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80914
  %i.cr = icmp eq i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %.thread192.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"

.thread192.thread.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ab
  store i64 -9223372036854775808, ptr %i.j, align 8, !noalias !80914
  br label %bb.bh

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ab
  %i.cs = add nsw i64 %.idx.i11.i.i.i.i.i.i.i.i.i.i, -64
  %i.ct = lshr exact i64 %i.cs, 6
  %i.cu = add nuw nsw i64 %i.ct, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cv = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cz, %bb.bb ] ; 2 uses
  %.sroa.9177.0.copyload290.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.9177.0.copyload289.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 17 uses
  %.sroa.6176.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6176.0.copyload276.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 17 uses
  %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0166.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 16 uses
  %.sroa.13.0267.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 11 uses
  %.sroa.19.0266.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 3 uses
  %i.cw = phi ptr [ %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cy, %bb.bb ] ; 4 uses
  %i.cx = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fe, %bb.bb ] ; 21 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 64 ; 12 uses
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.cw, align 8, !noalias !80918 ; 3 uses
  %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i, label %.thread192.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cz = add nuw nsw i64 %i.cv, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80929
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !80929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !80929
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.da, i64 32, i1 false), !noalias !80910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80929
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !80929 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80929 ; 8 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80929 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80929 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80930)
  call void @llvm.experimental.noalias.scope.decl(metadata !80933)
  call void @llvm.experimental.noalias.scope.decl(metadata !80936)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.ac
    i8 4, label %bb.ad
    i8 12, label %bb.ae
    i8 13, label %bb.aj
    i8 14, label %bb.am
    i8 15, label %bb.ao
  ], !prof !777

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.db = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
          to label %.noexc.i.i26.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !80914

.noexc.i.i26.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.db, ptr %i.ar, align 8, !alias.scope !80939, !noalias !80940
  store i8 1, ptr %i.g, align 8, !alias.scope !80939, !noalias !80940
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 1, !alias.scope !80944, !noalias !80940
  store i8 0, ptr %i.g, align 8, !alias.scope !80944, !noalias !80940
  br label %bb.ap

bb.ad:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %switch.select2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 1, !alias.scope !80949, !noalias !80940
  store i8 0, ptr %i.g, align 8, !alias.scope !80949, !noalias !80940
  br label %bb.ap

bb.ae:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dc = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80952)
  call void @llvm.experimental.noalias.scope.decl(metadata !80955)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah [
    i64 17, label %bb.af
    i64 7, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dd = load i128, ptr %i.dc, align 1
  %i.de = xor i128 %i.dd, 146809059128068443447057382439856141409
  %i.df = getelementptr i8, ptr %i.dc, i64 16
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i128
  %i.di = xor i128 %i.dh, 115
  %i.dj = or i128 %i.de, %i.di
  %i.dk = icmp ne i128 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dm, i8 0, i8 2
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dn = load i32, ptr %i.dc, align 1
  %i.do = xor i32 %i.dn, 1633906540
  %i.dp = getelementptr i8, ptr %i.dc, i64 3
  %i.dq = load i32, ptr %i.dp, align 1
  %i.dr = xor i32 %i.dq, 1936026721
  %i.ds = or i32 %i.do, %i.dr
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dv, i8 1, i8 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ae ], [ %spec.select6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 1, !alias.scope !80958, !noalias !80959
  store i8 0, ptr %i.g, align 8, !alias.scope !80958, !noalias !80959
  %i.dw = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80962
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dx = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80967)
  call void @llvm.experimental.noalias.scope.decl(metadata !80970)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8b5188929d990859E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 17, label %bb.ak
    i64 7, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load i128, ptr %i.dx, align 1
  %i.dz = xor i128 %i.dy, 146809059128068443447057382439856141409
  %i.ea = getelementptr i8, ptr %i.dx, i64 16
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i128
  %i.ed = xor i128 %i.ec, 115
  %i.ee = or i128 %i.dz, %i.ed
  %i.ef = icmp ne i128 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eh, i8 0, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8b5188929d990859E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ei = load i32, ptr %i.dx, align 1
  %i.ej = xor i32 %i.ei, 1633906540
  %i.ek = getelementptr i8, ptr %i.dx, i64 3
  %i.el = load i32, ptr %i.ek, align 1
  %i.em = xor i32 %i.el, 1936026721
  %i.en = or i32 %i.ej, %i.em
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eq, i8 1, i8 2
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8b5188929d990859E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17h8b5188929d990859E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.aj ], [ %spec.select6.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ]
  store i8 %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 1, !alias.scope !80973, !noalias !80974
  store i8 0, ptr %i.g, align 8, !alias.scope !80973, !noalias !80974
  br label %bb.ap

bb.am:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.er = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN216_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..LocalizedAttributesRuleView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h11bbad32142c4895E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.er, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !80977
  %i.es = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.es, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !80980
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h8ff66a3715a2ec3eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.et = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN216_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..LocalizedAttributesRuleView$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h11bbad32142c4895E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.et, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !80984, !noalias !80940
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8b5188929d990859E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad, %bb.ac
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !80914

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ap, %bb.an, %bb.am, %bb.ai, %bb.ah, %.noexc.i.i26.i.i.i.i.i.i.i.i.i.i
  %i.eu = load i8, ptr %i.g, align 8, !range !447, !noalias !80929, !noundef !15
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.aq, label %bb.ar

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = phi i64 [ %.lcssa304.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.ph21.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ]
  %.sroa.13.0238.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.0267.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0240.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.13.0267.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0166.0222.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0166.0268.lcssa340.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0166.0224.i.i.i.i.i.i.i.i.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %.sroa.0166.0224.i.i.i.i.i.i.i.i.ph22.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  switch i64 %.sroa.0166.0222.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp [
    i64 -9223372036854775808, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZN10serde_core2de9MapAccess10next_value17he3e96f1de6c156bdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0166.0268.lcssa340.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17he3e96f1de6c156bdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa304.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.ap ], [ %i.cx, %_ZN10serde_core2de9MapAccess10next_value17h835a5c1755aa08a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -9223372036854775808, %bb.ay ], [ %i.cx, %_ZN10serde_core2de9MapAccess10next_value17he3e96f1de6c156bdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cy, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80910
  store i64 %i.cz, ptr %i.ap, align 8, !noalias !80910
  store ptr %.sroa.6176.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.622.0..sroa_idx23.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80914
  store i64 %.sroa.9177.0.copyload290.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx25.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80914
  store i64 %.lcssa304.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !80914
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.i.i.i.i: ; preds = %bb.bh, %bb.bc, %bb.aw
  %.ph.i.i.i.i = phi i64 [ -9223372036854775808, %bb.bh ], [ %i.cx, %bb.bc ], [ %i.cx, %bb.aw ]
  %.sroa.13.0240.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi ptr [ %.sroa.13.0.lcssa391.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %.sroa.13.0267.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.13.0267.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw ]
  %.sroa.0166.0224.i.i.i.i.i.i.i.i.ph.i.i.i.i = phi i64 [ %.sroa.0166.0.lcssa393.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw ]
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i: ; preds = %bb.be, %bb.az, %bb.av
  %.ph21.i.i.i.i = phi i64 [ %i.cx, %bb.av ], [ %i.cx, %bb.be ], [ -9223372036854775808, %bb.az ]
  %.sroa.0166.0224.i.i.i.i.i.i.i.i.ph22.i.i.i.i = phi i64 [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ -9223372036854775808, %bb.be ], [ %.sroa.0166.0268.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8cae9bdebadb32e8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store ptr %i.cy, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80910
  store i64 %i.cz, ptr %i.ap, align 8, !noalias !80910
  store ptr %.sroa.6176.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.622.0..sroa_idx23.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80914
  store i64 %.sroa.9177.0.copyload290.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx25.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !80914
  store i64 %i.cx, ptr %i.j, align 8, !noalias !80914
end_hunk_21
begin_hunk_22_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hfc5248802f3ffcf6E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hf, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !80759
  %i.hg = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hg, ptr %i.am, align 8, !alias.scope !81074, !noalias !81077
  %i.hh = icmp eq ptr %i.ax, %i.ad
  br i1 %i.hh, label %.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i:                                  ; preds = %bb.ck, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i"
  %.lcssa81.ph.i.i = phi ptr [ %i.aw, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.i.i.i.i" ], [ %i.ad, %bb.ck ]
  %.sroa.0.0.copyload14.pre.i.pre.i.i = load i64, ptr %i.w, align 8, !noalias !81079 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !80759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !80752
  %i.hi = icmp eq i64 %.sroa.0.0.copyload14.pre.i.pre.i.i, -9223372036854775808
  br i1 %i.hi, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.loopexit.i.i.i, %.thread38.i.i.i
  %.sroa.5.043.i.i.i = phi ptr [ %.sroa.12.527.i.i.i.i.i.i.i, %.thread38.i.i.i ], [ %i.he, %.loopexit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !80752
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.y), !noalias !81080
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread12"

.sink.split.i.i:                                  ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i", %bb.b
  %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i = phi ptr [ %.sroa.2.0.copyload.i.i, %bb.b ], [ %i.av, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ]
  %.sroa.0.0.copyload14223.i.ph.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ]
  %.sroa.5.0.copyload18222.i.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.ai, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec4ec64ea82d606fE.exit.i.i.i.lr.ph.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !80759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !80752
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split.i.i, %.loopexit.i.i.i
  %i.hj = phi i64 [ %i.ba, %.loopexit.i.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i = phi ptr [ %.lcssa81.ph.i.i, %.loopexit.i.i.i ], [ %.sroa.2.8..sroa.4.0.copyload.i.i6.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.0.0.copyload14223.i.i.i = phi i64 [ %.sroa.0.0.copyload14.pre.i.pre.i.i, %.loopexit.i.i.i ], [ %.sroa.0.0.copyload14223.i.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.5.0.copyload18222.i.i.i = phi ptr [ %i.he, %.loopexit.i.i.i ], [ %.sroa.5.0.copyload18222.i.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.6.0.copyload22221.i.i.i = phi i64 [ %i.hg, %.loopexit.i.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload14223.i.i.i, ptr %i.x, align 8, !noalias !80752
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.copyload18222.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !80752
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6.0.copyload22221.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !80752
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.y)
          to label %.noexc10.i.i.i unwind label %bb.co, !noalias !80752

.noexc10.i.i.i:                                   ; preds = %bb.cm
  %i.hk = icmp eq ptr %i.ad, %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i
  br i1 %i.hk, label %bb.ct, label %bb.cn, !prof !16

bb.cn:                                            ; preds = %.noexc10.i.i.i
  %i.hl = ptrtoint ptr %.sroa.2.8..sroa.4.0.copyload.i.i6.i.i to i64
  %i.hm = ptrtoint ptr %i.ad to i64
  %i.hn = sub nuw i64 %i.hm, %i.hl
  %i.ho = lshr exact i64 %i.hn, 5
  %i.hp = add i64 %i.ho, %i.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81081
  store i64 %i.hj, ptr %i.b, align 8, !noalias !81081
  %i.hq = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hf596cb3f43666544E(i64 noundef %i.hp, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1441)
          to label %bb.cp unwind label %bb.co, !noalias !80752

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$17hd2f07402362569deE"(ptr noalias noundef align 8 dereferenceable(24) %i.x) #44, !noalias !80752
  br label %.body.i.i

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81081
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$17hd2f07402362569deE"(ptr noalias noundef align 8 dereferenceable(24) %i.x), !noalias !80752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !80752
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread12"

bb.cq:                                            ; preds = %bb.cr
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !80752
  unreachable

bb.cr:                                            ; preds = %.thread32.i.i.i, %.thread36.i.i.i
  %eh.lpad-body35.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.thread32.i.i.i ], [ %i.ak, %.thread36.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h3d95dde61646ab0eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.y)
          to label %.body.i.i unwind label %bb.cq, !noalias !80752

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread": ; preds = %bb.a
  %i.ht = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19), !noalias !80749
  br label %bb.cs

.body.i.i:                                        ; preds = %bb.cr, %bb.co
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hr, %bb.co ], [ %eh.lpad-body35.i.i.i, %bb.cr ]
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread12": ; preds = %bb.cp, %bb.cl
  %.sroa.8.0.ph = phi ptr [ %.sroa.5.043.i.i.i, %bb.cl ], [ %i.hq, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !80752
  br label %bb.cs

bb.cs:                                            ; preds = %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread12", %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread"
  %.sroa.8.111 = phi ptr [ %i.ht, %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread" ], [ %.sroa.8.0.ph, %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h2974bdbe5cfe7912E.exit.thread12" ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.111, ptr %i.hu, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.cu

bb.ct:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !80752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !80752
  store i64 %.sroa.0.0.copyload14223.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload18222.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload22221.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hfffaa91fa6fa696eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81092)
  %i.j = load i8, ptr %1, align 8, !range !446, !alias.scope !81094, !noalias !81095, !noundef !15
  switch i8 %i.j, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !8241

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81096
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !81095
  %i.k = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.u unwind label %bb.t, !noalias !81096

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !81084
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.l, align 8, !noalias !81096
  call fastcc void @"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2942b4dad8c106adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !81094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81096
  br label %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !81094, !noalias !81095
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !81094, !noalias !81095, !nonnull !15, !noundef !15 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !81094, !noalias !81095 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !81096
  %i.n = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.n)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !81097, !noalias !81100
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !81097, !noalias !81100
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !alias.scope !81097, !noalias !81100
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !81097, !noalias !81100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81102)
  %i.s = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !81096

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !alias.scope !81102, !noalias !81105
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !81107 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i", label %bb.g, !prof !4913

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !81096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !81096
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !81096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !81096
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !81096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !81096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81108)
  %i.w = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.w, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !81096
  store i8 11, ptr %i.e, align 8, !noalias !81096
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.f, !noalias !81096

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !81096
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !81095, !noalias !81094
  store i8 1, ptr %i.i, align 8, !alias.scope !81095, !noalias !81094
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !81096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !81096
  br label %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.z, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #44
          to label %bb.o unwind label %bb.s, !noalias !81096

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !81108, !noalias !81111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !81113
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !81096
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #48
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i" unwind label %bb.l, !noalias !81096, !inline_history !28052

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac) #49
          to label %.body.i.i unwind label %bb.m, !noalias !81096, !inline_history !28052

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !81114, !inline_history !28052
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i": ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ae) #48
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i" unwind label %bb.j, !noalias !81096

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17hdd0c4b32c0309470E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !81096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81096
  store i8 11, ptr %i.c, align 8, !noalias !81096
  %i.af = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.n unwind label %bb.j, !noalias !81096

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h29117a6cd3a37120E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !81096
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !81095, !noalias !81094
  store i8 1, ptr %i.i, align 8, !alias.scope !81095, !noalias !81094
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !81096

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #44
          to label %bb.e unwind label %bb.s, !noalias !81096

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !81096
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !81096

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !81096
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !81096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !81096
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !81096
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ai, i64 31, i1 false), !noalias !81096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !81096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !81096
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h8c4e1c9dcae34308E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !81096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !81096
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.aj, align 8, !noalias !81096
  call fastcc void @"_ZN208_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2942b4dad8c106adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !81094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81096
  br label %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !81096
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #44
          to label %.thread14.i.i unwind label %bb.s, !noalias !81095

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81096
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !81095, !noalias !81094
  store i8 1, ptr %i.i, align 8, !alias.scope !81095, !noalias !81094
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !81095
  br label %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.al, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d916bd484b1b966E.exit28.thread.i.i", %bb.u
  %i.an = load i8, ptr %i.i, align 8, !range !447, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !15, !align !569, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN17meilisearch_types8settings1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..ProximityPrecisionView$GT$11deserialize17h27f20d5210b6d5b9E.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !447, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h8245d9d866f0fe4dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val3 = load i64, ptr %i.c, align 8, !noundef !15
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3a53ffae8c40b778E(i64 %.val, i64 %.val3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81122)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !81122, !noalias !81124, !nonnull !15, !noundef !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !81122, !noalias !81124, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !81127, !noalias !81134, !noundef !15
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h81da9ae1ff78e6bdE.exit.i.i.i", !prof !122

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h81da9ae1ff78e6bdE.exit.i.i.i" unwind label %bb.v, !noalias !81124 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h81da9ae1ff78e6bdE.exit.i.i.i": ; preds = %bb.b, %bb.a
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !81141, !noalias !81142, !nonnull !15, !noundef !15 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !81141, !noalias !81142, !noundef !15 ; 4 uses
end_hunk_22
