Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN124_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h8d31c68dd1763153E":bb.a
  store i8 %i.cl, ptr %i.cj, align 1, !alias.scope !7341, !noalias !7338
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3566600fc00e6391E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7366
  store i64 %.sroa.038.0.i, ptr %i.k, align 8, !noalias !7366
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !7366
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i, i64 56, i1 false), !noalias !7366
  %i.cm = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h6d35f487b6871c3fE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.ac unwind label %bb.ab, !noalias !7338 ; 10 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$serde_json..error..Error$GT$$GT$17h4b4228007dbd8ce2E"(ptr noalias noundef align 8 dereferenceable(72) %i.k) #44
          to label %common.resume.i unwind label %bb.ag, !noalias !7338

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !7366
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.cm, ptr %i.co, align 8, !noalias !7366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7366
  %i.cp = load i64, ptr %i.l, align 8, !range !286, !noalias !7366, !noundef !15 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.am, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !7366, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not67.i = icmp eq ptr %i.cm, null
  br i1 %.not67.i, label %.thread61.i, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7414)
  call void @llvm.experimental.noalias.scope.decl(metadata !7417)
  call void @llvm.experimental.noalias.scope.decl(metadata !7420)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !7423, !noalias !7366, !noundef !15 ; 4 uses
  %i.cu = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !7423, !noalias !7366, !nonnull !15, !noundef !15
  %i.cw = shl i64 %.val1.i.i.i.i, 3
  %i.cx = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.cx), !noalias !7420
  %i.cy = and i64 %i.cw, -16                      ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add nsw i64 %.val1.i.i.i.i, 17
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  call void @llvm.assume(i1 %i.dc), !noalias !7420
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  call void @llvm.assume(i1 %i.dd), !noalias !7420
  %i.de = sub nuw nsw i64 -16, %i.cy
  %i.df = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !7424, !inline_history !7309
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.af
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hb7cc6aabef92b088E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l), !noalias !7338, !inline_history !7326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7366
  br label %bb.al

bb.ag:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !7338
  unreachable

.thread61.i:                                      ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7366
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !7425)
  call void @llvm.experimental.noalias.scope.decl(metadata !7428)
  %i.dh = load i64, ptr %i.cm, align 8, !range !1131, !alias.scope !7431, !noalias !7432, !noundef !15
  switch i64 %i.dh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i" [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.val1.i.i.i.i32.i = load i64, ptr %i.di, align 8, !alias.scope !7431, !noalias !7432, !noundef !15 ; 2 uses
  %i.dj = icmp eq i64 %.val1.i.i.i.i32.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.val.i.i.i.i33.i = load ptr, ptr %i.dk, align 8, !alias.scope !7431, !noalias !7432, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i33.i, i64 noundef %.val1.i.i.i.i32.i, i64 noundef 1) #45, !noalias !7435
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dl)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i" unwind label %bb.ak, !noalias !7432

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #45, !noalias !7432
  br label %common.resume.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i": ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ai, %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #45, !noalias !7432
  br label %.thread61.i

bb.al:                                            ; preds = %.thread61.i, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i.i", %bb.k
  %.sroa.9.2.i = phi ptr [ %i.cm, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h8c01716fc72667d5E.exit.i.i" ], [ %i.ao, %bb.k ], [ %i.cs, %.thread61.i ]
  %.val29.i = load i64, ptr %i.p, align 8, !alias.scope !7341, !noalias !7338
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i = load i64, ptr %i.dn, align 8, !alias.scope !7341, !noalias !7338
  %i.do = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h4af53494c9accba3E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i, i64 %.val29.i, i64 %.val30.i), !noalias !7338
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !7338, !noalias !7341
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !7338, !noalias !7341
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h58107da8850022eaE.exit"

bb.am:                                            ; preds = %bb.ad
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.211.0.copyload.i = load ptr, ptr %.sroa.211.0..sroa_idx.i, align 8, !noalias !7366
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.318.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i, i64 56, i1 false), !noalias !7341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7366
  store i64 %i.cp, ptr %0, align 8, !alias.scope !7338, !noalias !7341
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.211.0.copyload.i, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !7338, !noalias !7341
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h58107da8850022eaE.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h58107da8850022eaE.exit": ; preds = %bb.al, %bb.am, %bb.i, %bb.y
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17hee44ea33d732442dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 6, 20) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 7 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.l, %.backedge.i ], [ 0, %bb.a ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i = load i64, ptr %i.j, align 8, !noalias !7436, !noundef !15
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i, %3
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %.backedge.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.g, align 8, !noalias !7436, !nonnull !15, !align !533, !noundef !15
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.val8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %3), !alias.scope !7441, !noalias !7436
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = icmp eq ptr %i.i, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7445)
  %i.n = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp samesign ult i64 %i.h, %i.d
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit", label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #46, !noalias !7445
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !7445, !nonnull !15, !align !533, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !7445, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.h, -1                         ; 2 uses
  %i.u = add nsw i64 %i.d, %i.t
  %i.v = shl nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.v, i1 false), !noalias !7445
  %i.w = add nsw i64 %i.d, -1
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !7445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !7448, !noalias !7451, !noundef !15 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i10 = icmp samesign ult i64 %i.h, %i.y
  br i1 %.not.i10, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17ha993bbb243f4dc5cE.exit", label %bb.d, !prof !16

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit"
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #46, !noalias !7453
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17ha993bbb243f4dc5cE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !7448, !noalias !7451, !nonnull !15, !noundef !15
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.h ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = add nsw i64 %i.y, %i.t
  %i.af = mul nsw i64 %i.ae, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false), !noalias !7453
  %i.ag = add nsw i64 %i.y, -1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !7448, !noalias !7451
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17ha993bbb243f4dc5cE.exit"
  %.sink24 = phi i64 [ 8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17ha993bbb243f4dc5cE.exit" ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17ha993bbb243f4dc5cE.exit" ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hf26d93a5d4feee8cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 5 uses
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
  %.val9 = load i64, ptr %i.i, align 8, !noundef !15
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !15, !noundef !15
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !10, !alias.scope !7454, !noalias !7459, !noundef !15
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @156)
          to label %._crit_edge unwind label %bb.g, !noalias !7464

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !7454, !noalias !7459
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !7465
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !7466
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !7454, !noalias !7459
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7467, !noalias !7470, !noundef !15 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7467, !noalias !7470, !noundef !15
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157)
          to label %bb.i unwind label %bb.e, !noalias !7472

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #44
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !7472
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #44
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !7464
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !7467, !noalias !7470, !nonnull !15, !noundef !15
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !7467, !noalias !7470
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !15 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !15, !noundef !15
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8, !alias.scope !7473, !noalias !15
  %i.al = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !7477, !noalias !15
  store <2 x i64> %i.ak, ptr %i.aj, align 1, !alias.scope !7477, !noalias !15
  store <2 x i64> %i.al, ptr %4, align 8, !alias.scope !7473, !noalias !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !7480, !noalias !15
  %i.ap = load <2 x i64>, ptr %i.am, align 1, !alias.scope !7483, !noalias !15
  store <2 x i64> %i.ao, ptr %i.am, align 1, !alias.scope !7483, !noalias !15
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !7480, !noalias !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !7486, !noalias !15
  %i.at = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !7489, !noalias !15
  store <2 x i64> %i.as, ptr %i.aq, align 1, !alias.scope !7489, !noalias !15
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !7486, !noalias !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !7492, !noalias !15
  %i.ax = load <2 x i64>, ptr %i.au, align 1, !alias.scope !7495, !noalias !15
  store <2 x i64> %i.aw, ptr %i.au, align 1, !alias.scope !7495, !noalias !15
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !7492, !noalias !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !7498, !noalias !15
  %i.bb = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !7501, !noalias !15
  store <2 x i64> %i.ba, ptr %i.ay, align 1, !alias.scope !7501, !noalias !15
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !7498, !noalias !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !7504, !noalias !15
  %i.bf = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !7507, !noalias !15
  store <2 x i64> %i.be, ptr %i.bc, align 1, !alias.scope !7507, !noalias !15
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !7504, !noalias !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7512)
  %.sroa.0.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bg, align 1, !alias.scope !7510, !noalias !7512
  %.sroa.02.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bh, align 8, !alias.scope !7512, !noalias !7510
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i, ptr %i.bg, align 1, !alias.scope !7510, !noalias !7512
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i, ptr %i.bh, align 8, !alias.scope !7512, !noalias !7510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #46
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef align 8 dereferenceable(104) %4) #44
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h9a7498ca29cfe748E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN9meilitool4main17hd80a340b4e16eae7E:bb.a
  %i.afs = icmp eq i32 %i.afr, 0
  br i1 %i.afs, label %bb.dt, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit294.i.i.i"

bb.dt:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit245.i.i.i"
  %i.aft = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17h10728f5cb85abf59E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.qk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.du unwind label %bb.cy, !noalias !86467

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit245.thread.i.i.i": ; preds = %.thread-pre-split458_crit_edge.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit241.thread.i.i.i"
  %.val223.i.i.i = phi i64 [ %.val223.pr.pre.i.i.i, %.thread-pre-split458_crit_edge.i.i.i ], [ %.val227.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit241.thread.i.i.i" ] ; 2 uses
  %.not.i254.i.i.i = icmp eq i64 %.val223.i.i.i, 15
  br i1 %.not.i254.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit257.i.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit285.thread.i.i.i"

bb.du:                                            ; preds = %bb.dt
  br i1 %i.aft, label %.thread-pre-split458_crit_edge.i.i.i, label %bb.dv

.thread-pre-split458_crit_edge.i.i.i:             ; preds = %bb.du
  %.val223.pr.pre.i.i.i = load i64, ptr %i.aec, align 8, !noalias !86462
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit245.thread.i.i.i"

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qe), !noalias !86462
  invoke fastcc void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17hf4bcbf2111fb9344E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.qe, ptr noalias noundef align 8 dereferenceable(56) %i.qk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2234, i64 noundef 10)
          to label %bb.dw unwind label %bb.cy, !noalias !86467

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !86494)
  call void @llvm.experimental.noalias.scope.decl(metadata !86497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pr), !noalias !86462
  store ptr @2234, ptr %i.pr, align 8, !noalias !86499
  %i.afu = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i64 10, ptr %i.afu, align 8, !noalias !86499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pq), !noalias !86499
  %i.afv = load i64, ptr %i.qe, align 8, !range !1177, !alias.scope !86497, !noalias !86501, !noundef !15
  %.not.i258.i.i.i = icmp eq i64 %i.afv, 2
  br i1 %.not.i258.i.i.i, label %bb.dy, label %bb.dx, !prof !16

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pq, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.qe, i64 40, i1 false), !noalias !86501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pp), !noalias !86499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.po), !noalias !86499
  store ptr %i.pr, ptr %i.po, align 8, !noalias !86499
  br label %.invoke.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.afw = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %.sroa.0392.0.copyload.i.i.i = load i64, ptr %i.afw, align 8, !alias.scope !86502, !noalias !86503 ; 8 uses
  %.sroa.4393.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %.sroa.4393.0.copyload.i.i.i = load ptr, ptr %.sroa.4393.0..sroa_idx.i.i.i, align 8, !alias.scope !86502, !noalias !86503 ; 7 uses
  %.sroa.5394.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %.sroa.5394.0.copyload.i.i.i = load i64, ptr %.sroa.5394.0..sroa_idx.i.i.i, align 8, !alias.scope !86502, !noalias !86503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pq), !noalias !86499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pr), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qe), !noalias !86462
  %.not186.i.i.i = icmp eq i64 %.sroa.0392.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not186.i.i.i, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.afx = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h52e74e03c5c07fcdE"(i8 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2365, i64 noundef 60)
          to label %bb.ea unwind label %bb.cy, !noalias !86467

bb.ea:                                            ; preds = %bb.dz
  %i.afy = ptrtoint ptr %i.afx to i64
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit253.i.i.i"

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qd), !noalias !86462
  invoke fastcc void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2cfa5706d08b1b6aE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.qd, ptr noalias noundef align 8 dereferenceable(56) %i.qk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2235, i64 noundef 14)
          to label %bb.ee unwind label %bb.ec, !noalias !86467

bb.ec:                                            ; preds = %bb.eh, %bb.ef, %bb.eb
  %i.afz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aga = icmp eq i64 %.sroa.0392.0.copyload.i.i.i, 0
  br i1 %i.aga, label %.body312.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4393.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4393.0.copyload.i.i.i, i64 noundef %.sroa.0392.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !86504
  br label %.body312.i.i.i

bb.ee:                                            ; preds = %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !86509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pn), !noalias !86462
  store ptr @2235, ptr %i.pn, align 8, !noalias !86512
  %i.agb = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i64 14, ptr %i.agb, align 8, !noalias !86512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pm), !noalias !86512
  %i.agc = load i64, ptr %i.qd, align 8, !range !1177, !alias.scope !86509, !noalias !86514, !noundef !15
  %.not.i262.i.i.i = icmp eq i64 %i.agc, 2
  br i1 %.not.i262.i.i.i, label %bb.eg, label %bb.ef, !prof !16

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pm, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.qd, i64 40, i1 false), !noalias !86514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pl), !noalias !86512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pk), !noalias !86512
  store ptr %i.pn, ptr %i.pk, align 8, !noalias !86512
  %.sroa.42.0..sroa_idx.i263.i.i.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4852a3551b3f801cE", ptr %.sroa.42.0..sroa_idx.i263.i.i.i, align 8, !noalias !86512
  %i.agd = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store ptr %i.pm, ptr %i.agd, align 8, !noalias !86512
  %.sroa.46.0..sroa_idx.i264.i.i.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store ptr @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E", ptr %.sroa.46.0..sroa_idx.i264.i.i.i, align 8, !noalias !86512
  store ptr @169, ptr %i.pl, align 8, !noalias !86512
  %i.age = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store i64 2, ptr %i.age, align 8, !noalias !86512
  %i.agf = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  store ptr null, ptr %i.agf, align 8, !noalias !86512
  %i.agg = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store ptr %i.pk, ptr %i.agg, align 8, !noalias !86512
  %i.agh = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  store i64 2, ptr %i.agh, align 8, !noalias !86512
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.pl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #46
          to label %.noexc265.i.i.i unwind label %bb.ec, !noalias !86467

.noexc265.i.i.i:                                  ; preds = %bb.ef
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.agi = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.agj = load i8, ptr %i.agi, align 8, !range !934, !alias.scope !86509, !noalias !86514, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pm), !noalias !86512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pn), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qd), !noalias !86462
  %.not187.i.i.i = icmp eq i8 %i.agj, 2
  br i1 %.not187.i.i.i, label %bb.eh, label %.critedge199.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.agk = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h52e74e03c5c07fcdE"(i8 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2366, i64 noundef 64)
          to label %bb.ei unwind label %bb.ec, !noalias !86467

bb.ei:                                            ; preds = %bb.eh
  %i.agl = ptrtoint ptr %i.agk to i64             ; 2 uses
  %i.agm = icmp eq i64 %.sroa.0392.0.copyload.i.i.i, 0
  br i1 %i.agm, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit253.i.i.i", label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4393.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4393.0.copyload.i.i.i, i64 noundef %.sroa.0392.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !86515
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit253.i.i.i"

.critedge199.i.i.i:                               ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ph), !noalias !86462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pj), !noalias !86462
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pf), !noalias !86520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11442.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !86524)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !alias.scope !86524, !noalias !86527, !nonnull !15, !noundef !15 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.qk, i64 16 ; 2 uses
  %i.agq = load i64, ptr %i.agp, align 8, !alias.scope !86524, !noalias !86527, !noundef !15 ; 7 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.agq, 4
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 %.idx.i.i.i.i
  %i.ags = icmp eq i64 %i.agq, 0
  br i1 %i.ags, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge199.i.i.i, %.backedge.i.i.i.i.i
  %i.agt = phi ptr [ %i.agv, %.backedge.i.i.i.i.i ], [ %i.ago, %.critedge199.i.i.i ] ; 3 uses
  %i.agu = phi i64 [ %i.ahh, %.backedge.i.i.i.i.i ], [ 0, %.critedge199.i.i.i ] ; 7 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 16 ; 2 uses
  %i.agw = getelementptr i8, ptr %i.agt, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.agw, align 8, !noalias !86530, !noundef !15
  %.not.i.i.i.i.i.i.i.i14.i = icmp eq i64 %.val9.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i14.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i.i", label %.backedge.i.i.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.val8.i.i.i.i.i = load ptr, ptr %i.agt, align 8, !noalias !86530, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  %i.agx = load i32, ptr %.val8.i.i.i.i.i, align 1
  %i.agy = xor i32 %i.agx, 1936090735
  %i.agz = getelementptr i8, ptr %.val8.i.i.i.i.i, i64 4
  %i.aha = load i16, ptr %i.agz, align 1
  %i.ahb = zext i16 %i.aha to i32
  %i.ahc = xor i32 %i.ahb, 29797
  %i.ahd = or i32 %i.agy, %i.ahc
  %i.ahe = icmp ne i32 %i.ahd, 0
  %i.ahf = zext i1 %i.ahe to i32
  %bcmp.i.fr.i.i.i.i.i.i.i.i = freeze i32 %i.ahf
  %i.ahg = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahg, label %bb.ek, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.ahh = add nuw nsw i64 %i.agu, 1
  %i.ahi = icmp eq ptr %i.agv, %i.agr
  br i1 %i.ahi, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ek:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !86535)
  %i.ahj = icmp ult i64 %i.agq, 576460752303423488
  call void @llvm.assume(i1 %i.ahj)
  %.not.i.i364.i.i.i = icmp samesign ult i64 %i.agu, %i.agq
  br i1 %.not.i.i364.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i", label %.invoke603.i.i.i, !prof !16

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i": ; preds = %bb.ek
  %i.ahk = getelementptr inbounds nuw [16 x i8], ptr %i.ago, i64 %i.agu ; 4 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !noalias !86538, !nonnull !15, !align !533, !noundef !15
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahn = load i64, ptr %i.ahm, align 8, !noalias !86538, !noundef !15
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahp = xor i64 %i.agu, -1                     ; 2 uses
  %i.ahq = add nsw i64 %i.agq, %i.ahp
  %i.ahr = shl nsw i64 %i.ahq, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahk, ptr nonnull align 8 %i.aho, i64 %i.ahr, i1 false), !noalias !86538
  %i.ahs = add nsw i64 %i.agq, -1
  store i64 %i.ahs, ptr %i.agp, align 8, !alias.scope !86539, !noalias !86527
  call void @llvm.experimental.noalias.scope.decl(metadata !86540)
  %i.aht = getelementptr inbounds nuw i8, ptr %i.qk, i64 40 ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 8, !alias.scope !86543, !noalias !86544, !noundef !15 ; 5 uses
  %i.ahv = icmp ult i64 %i.ahu, 88686269585142076
  call void @llvm.assume(i1 %i.ahv)
  %.not.i10.i.i.i.i = icmp samesign ult i64 %i.agu, %i.ahu
  br i1 %.not.i10.i.i.i.i, label %.noexc270.i.i.i, label %.invoke603.i.i.i, !prof !16

.invoke603.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i", %bb.ek
  %i.ahw = phi i64 [ %i.agq, %bb.ek ], [ %i.ahu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i" ]
  %i.ahx = phi ptr [ @154, %bb.ek ], [ @155, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.agu, i64 noundef %i.ahw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahx) #46
          to label %.cont604.i.i.i unwind label %bb.fl, !noalias !86467

.cont604.i.i.i:                                   ; preds = %.invoke603.i.i.i
  unreachable

.noexc270.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i.i.i.i"
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.ahz = load ptr, ptr %i.ahy, align 8, !alias.scope !86543, !noalias !86544, !nonnull !15, !noundef !15
  %i.aia = getelementptr inbounds nuw [104 x i8], ptr %i.ahz, i64 %i.agu ; 4 uses
  %.sroa.7440.16.copyload441.i.i.i = load i64, ptr %i.aia, align 8, !noalias !86546 ; 4 uses
  %.sroa.11442.16..sroa_idx443.i.i.i = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11442.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11442.16..sroa_idx443.i.i.i, i64 96, i1 false), !noalias !86546
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 104
  %i.aic = add nsw i64 %i.ahu, %i.ahp
  %i.aid = mul nsw i64 %i.aic, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aia, ptr nonnull align 8 %i.aib, i64 %i.aid, i1 false), !noalias !86547
  %i.aie = add nsw i64 %i.ahu, -1
  store i64 %i.aie, ptr %i.aht, align 8, !alias.scope !86543, !noalias !86544
  %.not.i.i.i.i15.i = icmp eq i64 %.sroa.7440.16.copyload441.i.i.i, 2
  br i1 %.not.i.i.i.i15.i, label %.thread.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %.noexc270.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pg), !noalias !86548
  store i64 %.sroa.7440.16.copyload441.i.i.i, ptr %i.pg, align 8, !noalias !86548
  %.sroa.11442.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11442.16..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11442.i.i.i, i64 96, i1 false), !noalias !86548
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11442.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pc), !noalias !86548
  store i128 157166153014986124439104429225962660038, ptr %i.pc, align 16, !noalias !86548
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.pf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.pg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.pc)
          to label %bb.em unwind label %bb.ep, !noalias !86552

.thread.i.i.i.i:                                  ; preds = %.backedge.i.i.i.i.i, %.noexc270.i.i.i, %.critedge199.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11442.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf), !noalias !86520
  br label %.thread.i.i.i

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pc), !noalias !86548
  %.sroa.04.0.copyload.i.i.i.i.i = load i128, ptr %i.pf, align 16, !noalias !86548 ; 3 uses
  %i.aif = icmp eq i128 %.sroa.04.0.copyload.i.i.i.i.i, 157166153014986124439104429225962660038
  %i.aig = trunc i128 %.sroa.04.0.copyload.i.i.i.i.i to i64
  %i.aih = lshr i128 %.sroa.04.0.copyload.i.i.i.i.i, 64
  %i.aii = trunc nuw i128 %i.aih to i64
  br i1 %i.aif, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h219ffb1dcececd89E.exit.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pe), !noalias !86548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pd), !noalias !86548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.pd, ptr noundef nonnull align 8 dereferenceable(104) %i.pg, i64 104, i1 false), !noalias !86548
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hf26d93a5d4feee8cE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.pe, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.qk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ahl, i64 noundef %i.ahn, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.pd)
          to label %.noexc271.i.i.i unwind label %bb.fl, !noalias !86467

.noexc271.i.i.i:                                  ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pd), !noalias !86548
  %i.aij = load i64, ptr %i.pe, align 8, !range !1177, !alias.scope !86553, !noalias !86548, !noundef !15
  %i.aik = icmp eq i64 %i.aij, 2
  br i1 %i.aik, label %.thread478.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.noexc271.i.i.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.pe)
          to label %.thread478.i.i.i unwind label %bb.fl, !noalias !86467

.thread478.i.i.i:                                 ; preds = %bb.eo, %.noexc271.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pe), !noalias !86548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg), !noalias !86548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf), !noalias !86520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ph), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pj), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ox), !noalias !86462
  store ptr @2236, ptr %i.ox, align 8, !noalias !86556
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store i64 6, ptr %i.ail, align 8, !noalias !86556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ow), !noalias !86556
  br label %bb.fo

bb.ep:                                            ; preds = %bb.el
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef align 8 dereferenceable(104) %i.pg) #44
          to label %.body.i.i.i unwind label %bb.eq, !noalias !86552

bb.eq:                                            ; preds = %bb.ep
  %i.aim = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86552
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h219ffb1dcececd89E.exit.i.i.i.i: ; preds = %bb.em
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.11442.16..sroa_idx.i.i.i, align 8, !noalias !86559 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %.sroa.10.i.sroa.0.0.copyload434.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !86520 ; 3 uses
  %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %.sroa.10.i.sroa.6.0.copyload436.i.i.i = load i64, ptr %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !86520 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %.sroa.11.0.copyload.i.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !86559 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !86520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg), !noalias !86548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf), !noalias !86520
  %cond538.i.i.i = icmp eq i64 %.sroa.7440.16.copyload441.i.i.i, 3
  br i1 %cond538.i.i.i, label %bb.fn, label %bb.er

bb.er:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h219ffb1dcececd89E.exit.i.i.i.i
  store i64 %.sroa.7440.16.copyload441.i.i.i, ptr %i.pj, align 8, !noalias !86520
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i.i, align 8, !noalias !86520
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store i64 %.sroa.10.i.sroa.0.0.copyload434.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !86520
  %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  store i64 %.sroa.10.i.sroa.6.0.copyload436.i.i.i, ptr %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !86520
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  store i128 %.sroa.11.0.copyload.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !86520
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, i64 56, i1 false), !noalias !86520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pi), !noalias !86520
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.pi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.pj)
          to label %.noexc273.i.i.i unwind label %bb.fl, !noalias !86467

.noexc273.i.i.i:                                  ; preds = %bb.er
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcae5b005df8673afE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ph, ptr noalias noundef align 8 dereferenceable(96) %i.pi)
          to label %bb.et unwind label %bb.es, !noalias !86560

bb.es:                                            ; preds = %.noexc273.i.i.i
  %i.ain = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i16.i

.body.i.i.i16.i:                                  ; preds = %bb.fh, %bb.fg, %bb.ew, %bb.ev, %bb.es
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.aiy, %bb.ev ], [ %i.ain, %bb.es ], [ %i.aiy, %bb.ew ], [ %i.ajq, %bb.fh ], [ %i.ajq, %bb.fg ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h0245602e5adff287E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.pi)
          to label %.body.i.i.i unwind label %bb.fk, !noalias !86560

bb.et:                                            ; preds = %.noexc273.i.i.i
  %i.aio = load ptr, ptr %i.ph, align 8, !noalias !86520, !noundef !15 ; 13 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aio, null
  br i1 %.not5.i.i.i.i, label %bb.fe, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.sroa.25.0.copyload.i.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !noalias !86520, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.36.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !86561)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pb), !noalias !86564
  store ptr %i.aio, ptr %i.pb, align 8, !noalias !86568
  %i.aip = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i.i, ptr %i.aip, align 8, !noalias !86568
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 16
  %i.air = load i64, ptr %i.aiq, align 8, !range !1666, !invariant.load !15, !alias.scope !86561, !noalias !86570
  %i.ais = add i64 %i.air, -1
  %i.ait = and i64 %i.ais, -16
  %i.aiu = getelementptr i8, ptr %i.aio, i64 %i.ait
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pa), !noalias !86568
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8, !invariant.load !15, !alias.scope !86561, !noalias !86570, !nonnull !15
  invoke void %i.aix(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.pa, ptr noundef align 1 %i.aiv)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h254d8cef99c5c676E.exit.i.i.i.i.i" unwind label %bb.ev, !noalias !86570

bb.ev:                                            ; preds = %bb.eu
  %i.aiy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aiz = atomicrmw sub ptr %i.aio, i64 1 release, align 8, !noalias !86571
  %i.aja = icmp eq i64 %i.aiz, 1
  br i1 %i.aja, label %bb.ew, label %.body.i.i.i16.i

bb.ew:                                            ; preds = %bb.ev
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pb)
          to label %.body.i.i.i16.i unwind label %bb.ex, !noalias !86570

bb.ex:                                            ; preds = %bb.ew
  %i.ajb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86570
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h254d8cef99c5c676E.exit.i.i.i.i.i": ; preds = %bb.eu
  %i.ajc = load i128, ptr %i.pa, align 16, !noalias !86568, !noundef !15
  %i.ajd = icmp eq i128 %i.ajc, 157166153014986124439104429225962660038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pa), !noalias !86568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pb), !noalias !86564
  br i1 %i.ajd, label %bb.ey, label %bb.ff

bb.ey:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h254d8cef99c5c676E.exit.i.i.i.i.i"
  %i.aje = cmpxchg ptr %i.aio, i64 1, i64 0 monotonic monotonic, align 8, !noalias !86576
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.aje, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  fence acquire
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %i.ajg = load i64, ptr %i.ajf, align 8, !noalias !86576, !noundef !15 ; 3 uses
  %i.ajh = icmp eq ptr %i.aio, inttoptr (i64 -1 to ptr)
  br i1 %i.ajh, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.ajj = atomicrmw sub ptr %i.aji, i64 1 release, align 8, !noalias !86576
  %i.ajk = icmp eq i64 %i.ajj, 1
  br i1 %i.ajk, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef 24, i64 noundef 8) #45, !noalias !86576
  br label %bb.fe

bb.fc:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oz), !noalias !86564
  store ptr %i.aio, ptr %i.oz, align 8, !noalias !86564
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %i.ajm = load i64, ptr %i.ajl, align 8, !alias.scope !86577, !noalias !86576, !noundef !15
  %i.ajn = atomicrmw sub ptr %i.aio, i64 1 release, align 8, !noalias !86580
  %i.ajo = icmp eq i64 %i.ajn, 1
end_hunk_1
begin_hunk_2_@_ZN9meilitool4main17hd80a340b4e16eae7E:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %.noexc.i.i.i.i.i.i393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !86717
  %i.ana = load ptr, ptr %i.k, align 8, !alias.scope !86720, !noalias !86721, !nonnull !15, !noundef !15
  invoke void %i.ana(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.hk unwind label %bb.hj, !noalias !86716, !inline_history !86691

.thread.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !86717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !86716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !86716
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h7a2daf09e7e3fc5eE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i": ; preds = %bb.hn, %bb.hm, %bb.hj
  %.pn.i.i.i.i.i.i390 = phi { ptr, i32 } [ %i.anb, %bb.hj ], [ %i.ank, %bb.hm ], [ %i.ank, %bb.hn ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h0245602e5adff287E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.amw)
          to label %.body.i.i.i.i391 unwind label %bb.hp, !noalias !86719

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i"

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !86717
  %i.anc = load i64, ptr %i.amx, align 8, !alias.scope !86720, !noalias !86721, !noundef !15
  %i.and = add i64 %i.anc, -1                     ; 2 uses
  store i64 %i.and, ptr %i.amx, align 8, !alias.scope !86720, !noalias !86721
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !86722 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !86722 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !86722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !86716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !86716
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h7a2daf09e7e3fc5eE.exit.i.i.i.i.i", label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ane = icmp samesign ult i64 %.sroa.7500.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ane), !noalias !86467
  %i.anf = load i64, ptr %i.l, align 8, !range !10, !alias.scope !86723, !noalias !86724, !noundef !15
  %i.ang = icmp eq i64 %.sroa.7500.0.copyload, %i.anf
  br i1 %i.ang, label %bb.ho, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i", %bb.hl
  %i.anh = phi ptr [ %.pre.i.i.i.i394, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.amy, %bb.hl ] ; 2 uses
  %i.ani = getelementptr inbounds nuw [24 x i8], ptr %i.anh, i64 %.sroa.7500.0.copyload ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ani, align 8, !noalias !86716
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !86716
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !86716
  %i.anj = add nuw nsw i64 %.sroa.7500.0.copyload, 1 ; 2 uses
  store i64 %i.anj, ptr %.sroa.6.0..sroa_idx.i.i.i.i389, align 8, !alias.scope !86723, !noalias !86724
  br label %bb.hh

bb.hm:                                            ; preds = %bb.ho
  %i.ank = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.anl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i", label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i) ], !noalias !86467
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !86725
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i"

bb.ho:                                            ; preds = %bb.hl
  %i.anm = call i64 @llvm.uadd.sat.i64(i64 %i.and, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.sroa.7500.0.copyload, i64 noundef %i.anm, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.hm, !noalias !86724

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.ho
  %.pre.i.i.i.i394 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i388, align 8, !alias.scope !86723, !noalias !86724
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i"

bb.hp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i"
  %i.ann = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86716
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h7a2daf09e7e3fc5eE.exit.i.i.i.i.i": ; preds = %bb.hk, %.thread.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h0245602e5adff287E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.amw)
          to label %bb.ht unwind label %bb.hq, !noalias !86680

bb.hq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h7a2daf09e7e3fc5eE.exit.i.i.i.i.i"
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i391

.body.i.i.i.i391:                                 ; preds = %bb.hq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i392 = phi { ptr, i32 } [ %i.ano, %bb.hq ], [ %.pn.i.i.i.i.i.i390, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i.i" ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #44, !noalias !86680
  br label %.body312.i.i.i

bb.hr:                                            ; preds = %bb.hs
  %i.anp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86680
  unreachable

bb.hs:                                            ; preds = %bb.hc, %bb.hb, %bb.gy
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.aml, %bb.gy ], [ %i.amo, %bb.hb ], [ %i.amo, %bb.hc ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h0245602e5adff287E"(ptr noalias noundef readonly align 8 dereferenceable(96) %.sroa.5496.0..sroa_idx)
          to label %.body312.i.i.i unwind label %bb.hr, !noalias !86688

bb.ht:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h7a2daf09e7e3fc5eE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !86680
  %.sroa.0498.0.copyload = load i64, ptr %i.l, align 8, !noalias !86730 ; 2 uses
  %.sroa.5499.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i388, align 8, !noalias !86730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !86680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !86662
  %.not192.i.i.i = icmp eq i64 %.sroa.0498.0.copyload, -9223372036854775808
  br i1 %.not192.i.i.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.thread, %bb.ht
  %.sroa.0498.0525 = phi i64 [ 0, %.thread ], [ %.sroa.0498.0.copyload, %bb.ht ] ; 2 uses
  %.sroa.5499.0524 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %.sroa.5499.0.copyload, %bb.ht ] ; 2 uses
  %.sroa.7500.0523 = phi i64 [ 0, %.thread ], [ %.sroa.7500.0.copyload, %bb.ht ] ; 2 uses
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %.sroa.5499.0524, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !86462
  %.sroa.6132.i.i.i.sroa.4.0..sroa.4175.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i64 %.sroa.7500.0523, ptr %.sroa.6132.i.i.i.sroa.4.0..sroa.4175.0..sroa_idx.i.i.i.sroa_idx, align 8, !noalias !86462
  store i64 %.sroa.0498.0525, ptr %i.qj, align 8, !noalias !86462
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht, %.thread522.i.i.i
  store i64 0, ptr %i.qj, align 8, !noalias !86462
  %i.anq = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.anq, align 8, !noalias !86462
  %i.anr = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i64 0, ptr %i.anr, align 8, !noalias !86462
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.ans = phi i64 [ 0, %bb.hv ], [ %.sroa.7500.0523, %bb.hu ]
  %i.ant = phi ptr [ inttoptr (i64 8 to ptr), %bb.hv ], [ %.sroa.5499.0524, %bb.hu ]
  %i.anu = phi i64 [ 0, %bb.hv ], [ %.sroa.0498.0525, %bb.hu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9430.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nw), !noalias !86462
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i317.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i318.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ny), !noalias !86731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nu), !noalias !86731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11448.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !86735)
  %i.anv = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.anw = load ptr, ptr %i.anv, align 8, !alias.scope !86735, !noalias !86738, !nonnull !15, !noundef !15 ; 3 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.qk, i64 16 ; 2 uses
  %i.any = load i64, ptr %i.anx, align 8, !alias.scope !86735, !noalias !86738, !noundef !15 ; 7 uses
  %.idx.i369.i.i.i = shl nuw nsw i64 %i.any, 4
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i369.i.i.i
  %i.aoa = icmp eq i64 %i.any, 0
  br i1 %i.aoa, label %.loopexit2451, label %.lr.ph.i.i370.i.i.i

.lr.ph.i.i370.i.i.i:                              ; preds = %bb.hw, %.backedge.i.i373.i.i.i
  %i.aob = phi ptr [ %i.aod, %.backedge.i.i373.i.i.i ], [ %i.anw, %bb.hw ] ; 3 uses
  %i.aoc = phi i64 [ %i.aop, %.backedge.i.i373.i.i.i ], [ 0, %bb.hw ] ; 7 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 16 ; 2 uses
  %i.aoe = getelementptr i8, ptr %i.aob, i64 8
  %.val9.i.i371.i.i.i = load i64, ptr %i.aoe, align 8, !noalias !86741, !noundef !15
  %.not.i.i.i.i.i.i372.i.i.i = icmp eq i64 %.val9.i.i371.i.i.i, 10
  br i1 %.not.i.i.i.i.i.i372.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i375.i.i.i", label %.backedge.i.i373.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i375.i.i.i": ; preds = %.lr.ph.i.i370.i.i.i
  %.val8.i.i376.i.i.i = load ptr, ptr %i.aob, align 8, !noalias !86741, !nonnull !15, !align !533, !noundef !15 ; 2 uses
  %i.aof = load i64, ptr %.val8.i.i376.i.i.i, align 1
  %i.aog = xor i64 %i.aof, 7021216789772398185
  %i.aoh = getelementptr i8, ptr %.val8.i.i376.i.i.i, i64 8
  %i.aoi = load i16, ptr %i.aoh, align 1
  %i.aoj = zext i16 %i.aoi to i64
  %i.aok = xor i64 %i.aoj, 29810
  %i.aol = or i64 %i.aog, %i.aok
  %i.aom = icmp ne i64 %i.aol, 0
  %i.aon = zext i1 %i.aom to i32
  %bcmp.i.fr.i.i.i.i.i378.i.i.i = freeze i32 %i.aon
  %i.aoo = icmp eq i32 %bcmp.i.fr.i.i.i.i.i378.i.i.i, 0
  br i1 %i.aoo, label %bb.hx, label %.backedge.i.i373.i.i.i

.backedge.i.i373.i.i.i:                           ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i375.i.i.i", %.lr.ph.i.i370.i.i.i
  %i.aop = add nuw nsw i64 %i.aoc, 1
  %i.aoq = icmp eq ptr %i.aod, %i.anz
  br i1 %i.aoq, label %.loopexit2451, label %.lr.ph.i.i370.i.i.i

bb.hx:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i375.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !86746)
  %i.aor = icmp ult i64 %i.any, 576460752303423488
  call void @llvm.assume(i1 %i.aor)
  %.not.i.i379.i.i.i = icmp samesign ult i64 %i.aoc, %i.any
  br i1 %.not.i.i379.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i", label %.invoke618.i.i.i, !prof !16

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i": ; preds = %bb.hx
  %i.aos = getelementptr inbounds nuw [16 x i8], ptr %i.anw, i64 %i.aoc ; 4 uses
  %i.aot = load ptr, ptr %i.aos, align 8, !noalias !86749, !nonnull !15, !align !533, !noundef !15
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aov = load i64, ptr %i.aou, align 8, !noalias !86749, !noundef !15
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aos, i64 16
  %i.aox = xor i64 %i.aoc, -1                     ; 2 uses
  %i.aoy = add nsw i64 %i.any, %i.aox
  %i.aoz = shl nsw i64 %i.aoy, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aos, ptr nonnull align 8 %i.aow, i64 %i.aoz, i1 false), !noalias !86749
  %i.apa = add nsw i64 %i.any, -1
  store i64 %i.apa, ptr %i.anx, align 8, !alias.scope !86750, !noalias !86738
  call void @llvm.experimental.noalias.scope.decl(metadata !86751)
  %i.apb = getelementptr inbounds nuw i8, ptr %i.qk, i64 40 ; 2 uses
  %i.apc = load i64, ptr %i.apb, align 8, !alias.scope !86754, !noalias !86755, !noundef !15 ; 5 uses
  %i.apd = icmp ult i64 %i.apc, 88686269585142076
  call void @llvm.assume(i1 %i.apd)
  %.not.i10.i381.i.i.i = icmp samesign ult i64 %i.aoc, %i.apc
  br i1 %.not.i10.i381.i.i.i, label %.noexc338.i.i.i, label %.invoke618.i.i.i, !prof !16

.invoke618.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i", %bb.hx
  %i.ape = phi i64 [ %i.any, %bb.hx ], [ %i.apc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i" ]
  %i.apf = phi ptr [ @154, %bb.hx ], [ @155, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.aoc, i64 noundef %i.ape, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apf) #46
          to label %.cont619.i.i.i unwind label %bb.ii, !noalias !86467

.cont619.i.i.i:                                   ; preds = %.invoke618.i.i.i
  unreachable

.noexc338.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9c1476c2832fd1f9E.exit.i380.i.i.i"
  %i.apg = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.aph = load ptr, ptr %i.apg, align 8, !alias.scope !86754, !noalias !86755, !nonnull !15, !noundef !15
  %i.api = getelementptr inbounds nuw [104 x i8], ptr %i.aph, i64 %i.aoc ; 4 uses
  %.sroa.7446.16.copyload447.i.i.i = load i64, ptr %i.api, align 8, !noalias !86757 ; 4 uses
  %.sroa.11448.16..sroa_idx449.i.i.i = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11448.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11448.16..sroa_idx449.i.i.i, i64 96, i1 false), !noalias !86757
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 104
  %i.apk = add nsw i64 %i.apc, %i.aox
  %i.apl = mul nsw i64 %i.apk, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.api, ptr nonnull align 8 %i.apj, i64 %i.apl, i1 false), !noalias !86758
  %i.apm = add nsw i64 %i.apc, -1
  store i64 %i.apm, ptr %i.apb, align 8, !alias.scope !86754, !noalias !86755
  %.not.i.i319.i.i.i = icmp eq i64 %.sroa.7446.16.copyload447.i.i.i, 2
  br i1 %.not.i.i319.i.i.i, label %.loopexit2451, label %bb.hy

bb.hy:                                            ; preds = %.noexc338.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nv), !noalias !86759
  store i64 %.sroa.7446.16.copyload447.i.i.i, ptr %i.nv, align 8, !noalias !86759
  %.sroa.11448.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11448.16..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11448.i.i.i, i64 96, i1 false), !noalias !86759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11448.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nr), !noalias !86759
  store i128 -74687719156054235336057053653797632530, ptr %i.nr, align 16, !noalias !86759
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.nu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.nr)
          to label %bb.hz unwind label %bb.ic, !noalias !86763

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nr), !noalias !86759
  %.sroa.04.0.copyload.i.i323.i.i.i = load i128, ptr %i.nu, align 16, !noalias !86759
  %i.apn = icmp eq i128 %.sroa.04.0.copyload.i.i323.i.i.i, -74687719156054235336057053653797632530
  br i1 %i.apn, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nt), !noalias !86759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ns), !noalias !86759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ns, ptr noundef nonnull align 8 dereferenceable(104) %i.nv, i64 104, i1 false), !noalias !86759
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hf26d93a5d4feee8cE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.nt, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.qk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aot, i64 noundef %i.aov, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ns)
          to label %.noexc339.i.i.i unwind label %bb.ii, !noalias !86467

.noexc339.i.i.i:                                  ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ns), !noalias !86759
  %i.apo = load i64, ptr %i.nt, align 8, !range !1177, !alias.scope !86764, !noalias !86759, !noundef !15
  %i.app = icmp eq i64 %i.apo, 2
  br i1 %i.app, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %.noexc339.i.i.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.nt)
          to label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i unwind label %bb.ii, !noalias !86467

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i: ; preds = %bb.ib, %.noexc339.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nt), !noalias !86759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i317.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.nu, i64 16, i1 false), !noalias !86731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !noalias !86759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !noalias !86731
  br label %bb.ij

bb.ic:                                            ; preds = %bb.hy
  %lpad.thr_comm.split-lp.i.i320.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef align 8 dereferenceable(104) %i.nv) #44
          to label %.body341.i.i.i unwind label %bb.id, !noalias !86763

bb.id:                                            ; preds = %bb.ic
  %i.apq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86763
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i: ; preds = %bb.hz
  %.sroa.7.0.copyload.i329.i.i.i = load i64, ptr %.sroa.11448.16..sroa_idx.i.i.i, align 8, !noalias !86767 ; 2 uses
  %.sroa.10.0..sroa_idx.i330.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i317.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i330.i.i.i, i64 16, i1 false), !noalias !86731
  %.sroa.11.0..sroa_idx.i331.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %.sroa.11.0.copyload.i332.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i331.i.i.i, align 8, !noalias !86767 ; 2 uses
  %.sroa.12.0..sroa_idx.i333.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i318.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i333.i.i.i, i64 56, i1 false), !noalias !86731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !noalias !86759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !noalias !86731
  %cond.i.i.i = icmp eq i64 %.sroa.7446.16.copyload447.i.i.i, 3
  br i1 %cond.i.i.i, label %bb.ij, label %bb.ie

bb.ie:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i317.i.i.i, i64 16, i1 false), !noalias !86731
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i318.i.i.i, i64 56, i1 false), !noalias !86731
  store i64 %.sroa.7446.16.copyload447.i.i.i, ptr %i.ny, align 8, !noalias !86731
  %.sroa.4.0..sroa_idx.i334.i.i.i = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i64 %.sroa.7.0.copyload.i329.i.i.i, ptr %.sroa.4.0..sroa_idx.i334.i.i.i, align 8, !noalias !86731
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  store i128 %.sroa.11.0.copyload.i332.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !86731
  %i.apr = invoke noundef i64 @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg8num_vals17h903afd81f5e147a0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ny)
          to label %bb.if unwind label %bb.ig, !noalias !86768

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nx), !noalias !86731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.nx, ptr noundef nonnull align 8 dereferenceable(104) %i.ny, i64 104, i1 false), !noalias !86731
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.nw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.nx)
          to label %bb.ik unwind label %bb.ii, !noalias !86467

bb.ig:                                            ; preds = %bb.ie
  %i.aps = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h2ff9786eb421c7cbE"(ptr noalias noundef align 8 dereferenceable(104) %i.ny) #44
          to label %.body341.i.i.i unwind label %bb.ih, !noalias !86768

bb.ih:                                            ; preds = %bb.ig
  %i.apt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !86768
  unreachable

bb.ii:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4092fd2b2f85a52bE.exit.i.i.i.i.i", %bb.in, %bb.ij, %bb.if, %bb.ib, %bb.ia, %.invoke618.i.i.i
  %i.apu = landingpad { ptr, i32 }
          cleanup
  br label %.body341.i.i.i

.body341.i.i.i:                                   ; preds = %bb.im, %bb.ir, %bb.ii, %bb.ig, %bb.ic
  %eh.lpad-body342.i.i.i = phi { ptr, i32 } [ %i.aps, %bb.ig ], [ %lpad.thr_comm.split-lp.i.i320.i.i.i, %bb.ic ], [ %i.apu, %bb.ii ], [ %.pn.i.i.i.i.i.i, %bb.ir ], [ %i.aqd, %bb.im ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qj) #44, !noalias !86467
  br label %.body312.i.i.i

bb.ij:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i
  %.sroa.7.015.i.i.i.i = phi i64 [ 0, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i ], [ %.sroa.7.0.copyload.i329.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i ]
  %.sroa.11.014.i.i.i.i = phi i128 [ -74687719156054235336057053653797632530, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.thread10.i.i.i.i ], [ %.sroa.11.0.copyload.i332.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h3788f857b8a58738E.exit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9430.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i317.i.i.i, i64 16, i1 false), !noalias !86769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ny), !noalias !86731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i317.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i318.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nq), !noalias !86462
  store ptr @2263, ptr %i.nq, align 8, !noalias !86770
  %i.apv = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 10, ptr %i.apv, align 8, !noalias !86770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.np), !noalias !86770
  store i64 %.sroa.7.015.i.i.i.i, ptr %i.np, align 8, !noalias !86774
  %.sroa.9430.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9430.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9430.i.i.i, i64 16, i1 false), !noalias !86774
  %.sroa.12.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store i128 %.sroa.11.014.i.i.i.i, ptr %.sroa.12.8..sroa_idx.i.i.i, align 8, !noalias !86774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !noalias !86770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nn), !noalias !86770
  store ptr %i.nq, ptr %i.nn, align 8, !noalias !86770
  %.sroa.42.0..sroa_idx.i344.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4852a3551b3f801cE", ptr %.sroa.42.0..sroa_idx.i344.i.i.i, align 8, !noalias !86770
  %i.apw = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store ptr %i.np, ptr %i.apw, align 8, !noalias !86770
  %.sroa.46.0..sroa_idx.i345.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  store ptr @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E", ptr %.sroa.46.0..sroa_idx.i345.i.i.i, align 8, !noalias !86770
  store ptr @169, ptr %i.no, align 8, !noalias !86770
  %i.apx = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i64 2, ptr %i.apx, align 8, !noalias !86770
  %i.apy = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  store ptr null, ptr %i.apy, align 8, !noalias !86770
  %i.apz = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store ptr %i.nn, ptr %i.apz, align 8, !noalias !86770
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  store i64 2, ptr %i.aqa, align 8, !noalias !86770
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #46
          to label %.noexc346.i.i.i unwind label %bb.ii, !noalias !86467

.noexc346.i.i.i:                                  ; preds = %bb.ij
  unreachable

bb.ik:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nx), !noalias !86731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9430.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.nw, i64 16, i1 false), !noalias !86769
  %.sroa.12.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %.sroa.12.16.copyload431.i.i.i = load i128, ptr %.sroa.12.16..sroa_idx.i.i.i, align 8, !noalias !86769
  %.sroa.13432.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %.sroa.7504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !86775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7504.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13432.16..sroa_idx.i.i.i, i64 64, i1 false), !noalias !86467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ny), !noalias !86731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i317.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i318.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nq), !noalias !86462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.np), !noalias !86782
  %.sroa.5502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5502.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9430.i.i.i, i64 16, i1 false), !noalias !86467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.np), !noalias !86770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nq), !noalias !86462
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9430.i.i.i)
  store ptr @"_ZN12clap_builder6parser7matches11arg_matches50unwrap_downcast_into$u7b$$u7b$reify.shim$u7d$$u7d$17h6bd6d4a010e9386bE", ptr %i.s, align 8, !alias.scope !86785, !noalias !86789
  %.sroa.6503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i128 %.sroa.12.16.copyload431.i.i.i, ptr %.sroa.6503.0..sroa_idx, align 8, !alias.scope !86785, !noalias !86789
  %.sroa.8505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 3 uses
  store i64 %i.apr, ptr %.sroa.8505.0..sroa_idx, align 8, !alias.scope !86785, !noalias !86789
  call void @llvm.experimental.noalias.scope.decl(metadata !86790), !noalias !86467
  call void @llvm.experimental.noalias.scope.decl(metadata !86793), !noalias !86467
  call void @llvm.experimental.noalias.scope.decl(metadata !86796), !noalias !86467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !86799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !86802
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcae5b005df8673afE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef align 8 dereferenceable(96) %.sroa.5502.0..sroa_idx)
          to label %.noexc.i.i.i.i376 unwind label %bb.im, !noalias !86803

.noexc.i.i.i.i376:                                ; preds = %bb.ik
  %i.aqb = load ptr, ptr %i.q, align 8, !noalias !86802, !noundef !15
  %.not.i.not.i.i.i.i = icmp eq ptr %i.aqb, null
  br i1 %.not.i.not.i.i.i.i, label %bb.in, label %bb.il

bb.il:                                            ; preds = %.noexc.i.i.i.i376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !86802
  %i.aqc = load ptr, ptr %i.s, align 8, !alias.scope !86804, !noalias !86803, !nonnull !15, !noundef !15
  invoke void %i.aqc(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.io unwind label %bb.im, !noalias !86799, !inline_history !86805

bb.im:                                            ; preds = %bb.il, %bb.ik
end_hunk_2
