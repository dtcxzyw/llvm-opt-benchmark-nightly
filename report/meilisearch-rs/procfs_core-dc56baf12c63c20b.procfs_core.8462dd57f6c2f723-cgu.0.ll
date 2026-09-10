Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core7cpuinfo7CpuInfo11physical_id17h2af5beba80d7f934E:bb.a

.lr.ph.split.us.i.preheader:                      ; preds = %bb.e, %bb.h, %bb.c
  %.sroa.03.188.us.i.ph = phi ptr [ %i.e, %bb.e ], [ %i.b, %bb.h ], [ %i.b, %bb.c ]
  %.sroa.16.187.us.i.ph = phi i64 [ %i.f, %bb.e ], [ %i.c, %bb.h ], [ 1, %bb.c ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.i
  %.sroa.03.188.us.i = phi ptr [ %i.y, %bb.i ], [ %.sroa.03.188.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.x, %bb.i ], [ %.sroa.16.187.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.019.186.us.i = phi i32 [ %i.z, %bb.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.s = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !1509, !noundef !4
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.w = mul i32 %.sroa.019.186.us.i, 10
  %i.x = add nsw i64 %.sroa.16.187.us.i, -1       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.z = add i32 %i.u, %i.w                       ; 2 uses
  %.not67.us.i = icmp eq i64 %i.x, 0
  br i1 %.not67.us.i, label %.loopexit.i, label %.lr.ph.split.us.i

.loopexit.i:                                      ; preds = %.preheader75.split.us.i, %bb.i, %.preheader75.i
  %.sroa.019.2.i = phi i32 [ %i.z, %bb.i ], [ 0, %.preheader75.i ], [ %i.q, %.preheader75.split.us.i ]
  %i.aa = zext i32 %.sroa.019.2.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.split.us.i:                                      ; preds = %.lr.ph
  %i.ac = add i8 %i.m, -48
  %i.ad = icmp ult i8 %i.ac, 10
  %spec.select.i = select i1 %i.ad, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %bb.f, %bb.g, %.lr.ph.split.us.i, %bb.b, %bb.c, %bb.c, %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ 1, %bb.b ], [ 257, %bb.c ], [ %i.ab, %.loopexit.i ], [ 257, %bb.c ], [ 257, %.lr.ph.split.us.i ], [ %spec.select.i, %.split.us.i ], [ 257, %bb.f ], [ 513, %bb.g ] ; 2 uses
  %.sroa.59.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ae = trunc i64 %.sroa.8.0.insert.insert.i to i32
  %not. = and i32 %i.ae, 1
  %. = xor i32 %not., 1
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.4.0 = phi i32 [ %.sroa.59.0.extract.trunc, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %., %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 0, %bb.a ]
  %i.af = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7cpuinfo7CpuInfo5flags17hf2f636147c71a4daE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  %i.b = tail call { ptr, i64 } @_ZN11procfs_core7cpuinfo7CpuInfo9get_field17ha171cfef1d165414E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 5) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i64 0, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %.sroa.715.0..sroa_idx, align 1
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hee7a6c659cfbaf0cE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7cpuinfo7CpuInfo8get_info17hfe6e1a52a83d2badE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1633, !noalias !1634, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1635
  %i.j = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1633, !noalias !1634, !noundef !4 ; 2 uses
  %i.n = bitcast <16 x i1> %i.j to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !1637, !noalias !1638, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i1.i = load <16 x i8>, ptr %i.o, align 16, !noalias !1639
  %i.p = icmp sgt <16 x i8> %.val3.i.i1.i, splat (i8 -1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1637, !noalias !1638, !noundef !4 ; 2 uses
  %i.t = bitcast <16 x i1> %i.p to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1640
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !8, !noalias !1641, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i.i.i", !prof !9

._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.c
  %.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !1642
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !1642
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc5e6a8e70e8f6b9aE.exit.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i.i.i": ; preds = %bb.c
  %i.y = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !1643 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !1643
  store i8 1, ptr %i.v, align 8, !noalias !1643
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc5e6a8e70e8f6b9aE.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc5e6a8e70e8f6b9aE.exit.i.i.i.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi47.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i.i.i ], [ %i.aa, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i.i.i" ]
  %i.ac = phi i64 [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i.i.i ], [ %i.z, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.u, align 8, !noalias !1642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false), !noalias !1640
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1640
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.pre-phi47.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1640
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.s) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i", label %bb.d, !prof !1644

bb.d:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc5e6a8e70e8f6b9aE.exit.i.i.i.i"
  %i.ag = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8b384cec0bd456f2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1640 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i": ; preds = %bb.d, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc5e6a8e70e8f6b9aE.exit.i.i.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i"
  %i.ai = phi i16 [ %i.an, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.n, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i" ] ; 2 uses
  %.lcssa2530.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i" ] ; 2 uses
  %.lcssa2428.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2427.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hn, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.m, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i" ] ; 2 uses
  %.not21.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not21.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.outer.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %.outer.i.i.i12.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i
  %.lcssa2529.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2530.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.hs, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa2427.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %i.hr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %.outer.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.al = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.lcssa2427.i.i.i.i.i.i.i.i.i.i, i64 %i.ao ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -40
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !1645, !nonnull !4, !noundef !4 ; 6 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -32
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !1645, !noundef !4 ; 7 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !1645, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ap, i64 -8
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !1645, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1647, !noalias !1648, !noundef !4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1647, !noalias !1648, !noundef !4 ; 2 uses
  %i.au = xor i64 %.val.i.i.i.i.i.i.i.i.i.i, 8317987319222330741 ; 2 uses
  %i.av = xor i64 %.val8.i.i.i.i.i.i.i.i.i.i, 7237128888997146477 ; 2 uses
  %i.aw = xor i64 %.val.i.i.i.i.i.i.i.i.i.i, 7816392313619706465 ; 2 uses
  %i.ax = xor i64 %.val8.i.i.i.i.i.i.i.i.i.i, 8387220255154660723 ; 2 uses
  %i.ay = and i64 %.val3.i.i.i.i.i.i.i.i.i.i.i, 7 ; 7 uses
  %i.az = and i64 %.val3.i.i.i.i.i.i.i.i.i.i.i, -8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i31.i.i.i.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.i.i.i

._crit_edge.i31.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i24.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.32.4.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.cf, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.22.4.i.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.cd, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.12.4.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.037.4.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ba = icmp samesign ugt i64 %i.ay, 3
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i31.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.az
  %.sroa.014.0.copyload.i18.i23.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 1, !alias.scope !1649, !noalias !1650
  %i.bc = zext i32 %.sroa.014.0.copyload.i18.i23.i.i.i.i.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i31.i.i.i.i.i.i.i.i.i
  %.sroa.011.0.i12.i15.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.e ], [ 0, %._crit_edge.i31.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i = phi i64 [ 4, %bb.e ], [ 0, %._crit_edge.i31.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bd = or disjoint i64 %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i, 1
  %i.be = icmp samesign ult i64 %i.bd, %i.ay
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.az
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i
  %.sroa.015.0.copyload.i17.i22.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bg, align 1, !alias.scope !1649, !noalias !1650
  %i.bh = zext i16 %.sroa.015.0.copyload.i17.i22.i.i.i.i.i.i.i.i.i to i64
  %i.bi = shl nuw nsw i64 %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i, 3
  %i.bj = shl nuw nsw i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, %.sroa.011.0.i12.i15.i.i.i.i.i.i.i.i.i
  %i.bl = or disjoint i64 %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.011.1.i14.i17.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.g ], [ %.sroa.011.0.i12.i15.i.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.0.1.i15.i18.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.g ], [ %.sroa.0.0.i13.i16.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.bm = icmp samesign ult i64 %.sroa.0.1.i15.i18.i.i.i.i.i.i.i.i.i, %i.ay
  br i1 %i.bm, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i"

.lr.ph.i24.i.i.i.i.i.i.i.i.i:                     ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i.i.i.i
  %i.bn = phi i64 [ %i.cg, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ], [ %i.aw, %.loopexit.i.i.i.i.i.i.i.i.i ]
  %i.bo = phi i64 [ %i.cd, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ], [ %i.av, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = phi i64 [ %i.cf, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ], [ %i.ax, %.loopexit.i.i.i.i.i.i.i.i.i ]
  %.sroa.04.020.i29.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bq = phi i64 [ %i.ch, %.lr.ph.i24.i.i.i.i.i.i.i.i.i ], [ %i.au, %.loopexit.i.i.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.04.020.i29.i.i.i.i.i.i.i.i.i
  %.sroa.08.0.copyload.i30.i.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !1651, !noalias !1650 ; 2 uses
  %i.bs = xor i64 %.sroa.08.0.copyload.i30.i.i.i.i.i.i.i.i.i, %i.bp ; 3 uses
  %i.bt = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bu = add i64 %i.bs, %i.bn                    ; 2 uses
  %i.bv = call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 13)
  %i.bw = xor i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 16)
  %i.by = xor i64 %i.bu, %i.bx                    ; 3 uses
  %i.bz = call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.ca = add i64 %i.bu, %i.bw                    ; 3 uses
  %i.cb = add i64 %i.by, %i.bz                    ; 2 uses
  %i.cc = call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.cd = xor i64 %i.ca, %i.cc                    ; 2 uses
  %i.ce = call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 21)
  %i.cf = xor i64 %i.ce, %i.cb                    ; 2 uses
  %i.cg = call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32) ; 2 uses
  %i.ch = xor i64 %i.cb, %.sroa.08.0.copyload.i30.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = add nuw i64 %.sroa.04.020.i29.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.az
  br i1 %i.cj, label %.lr.ph.i24.i.i.i.i.i.i.i.i.i, label %._crit_edge.i31.i.i.i.i.i.i.i.i.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i": ; preds = %bb.h
  %3 = icmp eq i64 %i.ay, 0
  br i1 %3, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i"
  %4 = shl nuw nsw i64 %i.ay, 3
  %5 = shl nuw nsw i64 255, %4
  %6 = or i64 %.sroa.011.1.i14.i17.i.i.i.i.i.i.i.i.i, %5
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %7 = add nuw i64 %.sroa.0.1.i15.i18.i.i.i.i.i.i.i.i.i, %i.az ; 2 uses
  %8 = icmp ult i64 %7, %.val3.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %8), !noalias !1652
  %9 = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %7
  %10 = load i8, ptr %9, align 1, !alias.scope !1649, !noalias !1650, !noundef !4
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %.sroa.0.1.i15.i18.i.i.i.i.i.i.i.i.i, 3
  %13 = shl nuw nsw i64 %11, %12
  %i.ck = shl nuw nsw i64 %i.ay, 3
  %i.cl = shl nuw i64 255, %i.ck
  %14 = or i64 %i.cl, %13
  %i.cm = or i64 %14, %.sroa.011.1.i14.i17.i.i.i.i.i.i.i.i.i ; 3 uses
  %.not65.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ay, 7
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i"

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i
  %i.cn = xor i64 %i.cm, %.sroa.32.4.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.co = add i64 %.sroa.037.4.i.i.i.i.i.i.i.i.i, %.sroa.22.4.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cp = add i64 %i.cn, %.sroa.12.4.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i.i.i.i.i.i.i.i.i, i64 %.sroa.22.4.i.i.i.i.i.i.i.i.i, i64 13)
  %i.cr = xor i64 %i.co, %i.cq                    ; 3 uses
  %i.cs = call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.ct = xor i64 %i.cp, %i.cs                    ; 3 uses
  %i.cu = call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cv = add i64 %i.cp, %i.cr                    ; 3 uses
  %i.cw = add i64 %i.ct, %i.cu                    ; 2 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 17)
  %i.cy = xor i64 %i.cv, %i.cx
  %i.cz = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.da = xor i64 %i.cz, %i.cw
  %i.db = call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32)
  %i.dc = xor i64 %i.cw, %i.cm
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.thread.i.i.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i"
  %.sroa.32.2.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.32.4.i.i.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.32.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a" ], [ %i.da, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.32.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i" ]
  %.sroa.22.2.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.22.4.i.i.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a" ], [ %i.cy, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.12.2.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.4.i.i.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a" ], [ %i.db, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i" ]
  %.sroa.037.2.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.037.4.i.i.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.037.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a" ], [ %i.dc, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.037.4.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i" ]
  %.sroa.50.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i.i.i.i.i.i.i.i ], [ %6, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i.a" ], [ 0, %.thread.i.i.i.i.i.i.i.i.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i.i.i.i.i.i.i.i" ]
  %15 = shl i64 %.val3.i.i.i.i.i.i.i.i.i.i.i, 56
  %16 = add i64 %15, 72057594037927936
  %i.dd = or i64 %.sroa.50.0.i.i.i.i.i.i.i.i.i, %16 ; 2 uses
  %i.de = xor i64 %i.dd, %.sroa.32.2.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.df = add i64 %.sroa.037.2.i.i.i.i.i.i.i.i.i, %.sroa.22.2.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.dg = add i64 %i.de, %.sroa.12.2.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dh = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i.i.i.i.i.i.i.i.i, i64 %.sroa.22.2.i.i.i.i.i.i.i.i.i, i64 13)
  %i.di = xor i64 %i.df, %i.dh                    ; 3 uses
  %i.dj = call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 16)
  %i.dk = xor i64 %i.dj, %i.dg                    ; 3 uses
  %i.dl = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32)
  %i.dm = add i64 %i.dg, %i.di                    ; 3 uses
  %i.dn = add i64 %i.dk, %i.dl                    ; 2 uses
  %i.do = call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 17)
  %i.dp = xor i64 %i.dm, %i.do                    ; 3 uses
  %i.dq = call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 21)
  %i.dr = xor i64 %i.dq, %i.dn                    ; 3 uses
  %i.ds = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 32)
  %i.dt = xor i64 %i.dn, %i.dd
  %i.du = xor i64 %i.ds, 255
  %i.dv = add i64 %i.dt, %i.dp                    ; 3 uses
  %i.dw = add i64 %i.dr, %i.du                    ; 2 uses
  %i.dx = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 13)
  %i.dy = xor i64 %i.dv, %i.dx                    ; 3 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 16)
  %i.ea = xor i64 %i.dz, %i.dw                    ; 3 uses
  %i.eb = call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 32)
  %i.ec = add i64 %i.dy, %i.dw                    ; 3 uses
  %i.ed = add i64 %i.ea, %i.eb                    ; 2 uses
  %i.ee = call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 17)
  %i.ef = xor i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 21)
  %i.eh = xor i64 %i.eg, %i.ed                    ; 3 uses
  %i.ei = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 32)
  %i.ej = add i64 %i.ef, %i.ed                    ; 3 uses
  %i.ek = add i64 %i.eh, %i.ei                    ; 2 uses
  %i.el = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 13)
  %i.em = xor i64 %i.el, %i.ej                    ; 3 uses
  %i.en = call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 16)
  %i.eo = xor i64 %i.en, %i.ek                    ; 3 uses
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32)
  %i.eq = add i64 %i.em, %i.ek                    ; 3 uses
  %i.er = add i64 %i.eo, %i.ep                    ; 2 uses
  %i.es = call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 17)
  %i.et = xor i64 %i.es, %i.eq                    ; 3 uses
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 21)
  %i.ev = xor i64 %i.eu, %i.er                    ; 3 uses
  %i.ew = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ex = add i64 %i.et, %i.er
  %i.ey = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ez = call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 13)
  %i.fa = xor i64 %i.ez, %i.ex                    ; 3 uses
  %i.fb = call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 16)
  %i.fc = xor i64 %i.fb, %i.ey                    ; 2 uses
  %i.fd = add i64 %i.fa, %i.ey                    ; 3 uses
  %i.fe = call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 17)
  %i.ff = call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 21)
  %i.fg = call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 32)
  %i.fh = xor i64 %i.ff, %i.fe
  %i.fi = xor i64 %i.fh, %i.fg
  %i.fj = xor i64 %i.fi, %i.fd                    ; 2 uses
  %i.fk = load i64, ptr %i.af, align 8, !alias.scope !1653, !noalias !1654, !noundef !4
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !10

bb.i:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i"
  %i.fm = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8b384cec0bd456f2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1640 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i.i.i.i.i.i.i.i"
  %.val.i.i1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1655, !noalias !1656, !nonnull !4, !noundef !4 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1655, !noalias !1656, !noundef !4 ; 4 uses
  %i.fn = lshr i64 %i.fj, 57
  %i.fo = trunc nuw nsw i64 %i.fn to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.fo, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.go, %bb.l ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %i.fp = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gn, %bb.l ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fq, align 1, !noalias !1657 ; 3 uses
  %i.fr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fs = bitcast <16 x i1> %i.fr to i16          ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.j, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gd, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fs, %bb.j ] ; 3 uses
  %i.ft = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.fu
  %i.fw = and i64 %i.fv, %.val7.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr inbounds [32 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.fx ; 4 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fz, align 8, !noalias !1658, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -32
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !noalias !1658, !nonnull !4, !align !6, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !1659, !noalias !1658
  %i.gb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %bb.p, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", !prof !12

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", %bb.j
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gd = and i16 %i.gc, %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.gf = bitcast <16 x i1> %i.ge to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gf, 0 ; 2 uses
  %i.gg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gf, i1 true)
  %i.gh = zext nneg i16 %i.gg to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.gh
  %i.gi = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = and i64 %i.gi, %.val7.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gj, %bb.k ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = icmp eq i16 %i.gl, 0
  br i1 %i.gm, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.k ]
  %i.gn = add i64 %i.fp, 16                       ; 2 uses
  %i.go = add i64 %i.gn, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.j

bb.m:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = load i8, ptr %i.gp, align 1, !noalias !1660, !noundef !4 ; 2 uses
  %i.gr = icmp sgt i8 %i.gq, -1
  br i1 %i.gr, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, align 16, !noalias !1660
  %i.gs = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.gt = bitcast <16 x i1> %i.gs to i16          ; 2 uses
  %i.gu = icmp ne i16 %i.gt, 0
  call void @llvm.assume(i1 %i.gu), !noalias !1661
  %i.gv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gt, i1 true)
  %i.gw = zext nneg i16 %i.gv to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.gw
  %.pre.i2.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1662
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.gx = phi i8 [ %.pre.i2.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.gq, %bb.m ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gw, %bb.n ], [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1663), !noalias !1661
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = and i8 %i.gx, 1
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.hc = and i64 %i.hb, %.val7.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.fo, ptr %i.gy, align 1, !noalias !1662
  %i.hd = getelementptr i8, ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  store i8 %i.fo, ptr %i.he, align 1, !noalias !1662
  %i.hf = load <2 x i64>, ptr %i.af, align 8, !alias.scope !1664, !noalias !1665
  %i.hg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ha, i64 0
  %i.hh = sub <2 x i64> %i.hf, %i.hg
  store <2 x i64> %i.hh, ptr %i.af, align 8, !alias.scope !1664, !noalias !1665
  %i.hi = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds [32 x i8], ptr %.val.i.i1.i.i.i.i.i.i.i.i.i, i64 %i.hi ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -32
  store ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hk, align 8, !noalias !1666
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hj, i64 -24
  store i64 %.val3.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1666
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hj, i64 -16
  store ptr %.val4.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1666
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hj, i64 -8
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1667
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.hl = getelementptr inbounds i8, ptr %i.fy, i64 -16
  %i.hm = getelementptr inbounds i8, ptr %i.fy, i64 -8
  store ptr %.val4.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hl, align 8, !noalias !1668
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hm, align 8, !noalias !1669
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  %i.hn = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.ho = phi ptr [ %i.hs, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2530.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hp = phi ptr [ %i.hr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2428.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.val17.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ho, align 16, !noalias !1645
  %i.hq = icmp sgt <16 x i8> %.val17.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 -768 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.outer.i.i.i12.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i"
  %i.ht = phi i16 [ %i.hy, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i" ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa2530.i.i.i13.i.i.i.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i18.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i" ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa2428.i.i.i14.i.i.i.i.i.i.i = phi ptr [ %.lcssa2427.i.i.i19.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i" ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i15.i.i.i.i.i.i.i = phi i64 [ %i.oy, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i" ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not21.i.i.i16.i.i.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not21.i.i.i16.i.i.i.i.i.i.i, label %.lr.ph.i.i.i90.i.i.i.i.i.i.i, label %.loopexit.i.i17.i.i.i.i.i.i.i

.lr.ph.i.i.i90.i.i.i.i.i.i.i:                     ; preds = %.outer.i.i.i12.i.i.i.i.i.i.i
  %i.hu = icmp eq i64 %.sroa.0.0.ph.i.i.i15.i.i.i.i.i.i.i, 0
  br i1 %i.hu, label %"_ZN11procfs_core7cpuinfo7CpuInfo8get_info28_$u7b$$u7b$closure$u7d$$u7d$17had4d777e402c3526E.exit", label %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i

.loopexit.i.i17.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i, %.outer.i.i.i12.i.i.i.i.i.i.i
  %.lcssa2529.i.i.i18.i.i.i.i.i.i.i = phi ptr [ %.lcssa2530.i.i.i13.i.i.i.i.i.i.i, %.outer.i.i.i12.i.i.i.i.i.i.i ], [ %i.pd, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i ]
  %.lcssa2427.i.i.i19.i.i.i.i.i.i.i = phi ptr [ %.lcssa2428.i.i.i14.i.i.i.i.i.i.i, %.outer.i.i.i12.i.i.i.i.i.i.i ], [ %i.pc, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i20.i.i.i.i.i.i.i = phi i16 [ %i.ht, %.outer.i.i.i12.i.i.i.i.i.i.i ], [ %.cast.i.i.i93.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i ] ; 3 uses
  %i.hv = add i16 %.lcssa.i.i.i20.i.i.i.i.i.i.i, -1
  %i.hw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i20.i.i.i.i.i.i.i, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = and i16 %i.hv, %.lcssa.i.i.i20.i.i.i.i.i.i.i
  %i.hz = sub nsw i64 0, %i.hx
  %i.ia = getelementptr inbounds [48 x i8], ptr %.lcssa2427.i.i.i19.i.i.i.i.i.i.i, i64 %i.hz ; 4 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -40
  %.val2.i.i.i.i21.i.i.i.i.i.i.i = load ptr, ptr %i.ib, align 8, !noalias !1670, !nonnull !4, !noundef !4 ; 6 uses
  %i.ic = getelementptr i8, ptr %i.ia, i64 -32
  %.val3.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !noalias !1670, !noundef !4 ; 7 uses
  %i.id = getelementptr i8, ptr %i.ia, i64 -16
  %.val4.i.i.i.i23.i.i.i.i.i.i.i = load ptr, ptr %i.id, align 8, !noalias !1670, !nonnull !4, !noundef !4 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ia, i64 -8
  %.val5.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %i.ie, align 8, !noalias !1670, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %.val.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1672, !noalias !1673, !noundef !4 ; 2 uses
  %.val8.i.i.i26.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1672, !noalias !1673, !noundef !4 ; 2 uses
  %i.if = xor i64 %.val.i.i.i25.i.i.i.i.i.i.i, 8317987319222330741 ; 2 uses
  %i.ig = xor i64 %.val8.i.i.i26.i.i.i.i.i.i.i, 7237128888997146477 ; 2 uses
  %i.ih = xor i64 %.val.i.i.i25.i.i.i.i.i.i.i, 7816392313619706465 ; 2 uses
  %i.ii = xor i64 %.val8.i.i.i26.i.i.i.i.i.i.i, 8387220255154660723 ; 2 uses
  %i.ij = and i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i, 7 ; 7 uses
  %i.ik = and i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i, -8 ; 5 uses
  %.not.i.i27.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i27.i.i.i.i.i.i.i, label %._crit_edge.i31.i.i31.i.i.i.i.i.i.i, label %.lr.ph.i24.i.i28.i.i.i.i.i.i.i

._crit_edge.i31.i.i31.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i24.i.i28.i.i.i.i.i.i.i, %.loopexit.i.i17.i.i.i.i.i.i.i
  %.sroa.32.4.i.i32.i.i.i.i.i.i.i = phi i64 [ %i.ii, %.loopexit.i.i17.i.i.i.i.i.i.i ], [ %i.jq, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.22.4.i.i33.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.loopexit.i.i17.i.i.i.i.i.i.i ], [ %i.jo, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.12.4.i.i34.i.i.i.i.i.i.i = phi i64 [ %i.ih, %.loopexit.i.i17.i.i.i.i.i.i.i ], [ %i.jr, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.037.4.i.i35.i.i.i.i.i.i.i = phi i64 [ %i.if, %.loopexit.i.i17.i.i.i.i.i.i.i ], [ %i.js, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ] ; 4 uses
  %i.il = icmp samesign ugt i64 %i.ij, 3
  br i1 %i.il, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i31.i.i31.i.i.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i21.i.i.i.i.i.i.i, i64 %i.ik
  %.sroa.014.0.copyload.i18.i23.i.i89.i.i.i.i.i.i.i = load i32, ptr %i.im, align 1, !alias.scope !1674, !noalias !1675
  %i.in = zext i32 %.sroa.014.0.copyload.i18.i23.i.i89.i.i.i.i.i.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i31.i.i31.i.i.i.i.i.i.i
  %.sroa.011.0.i12.i15.i.i36.i.i.i.i.i.i.i = phi i64 [ %i.in, %bb.q ], [ 0, %._crit_edge.i31.i.i31.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i = phi i64 [ 4, %bb.q ], [ 0, %._crit_edge.i31.i.i31.i.i.i.i.i.i.i ] ; 5 uses
  %i.io = or disjoint i64 %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i, 1
  %i.ip = icmp samesign ult i64 %i.io, %i.ij
  br i1 %i.ip, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iq = getelementptr i8, ptr %.val2.i.i.i.i21.i.i.i.i.i.i.i, i64 %i.ik
  %i.ir = getelementptr i8, ptr %i.iq, i64 %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i
  %.sroa.015.0.copyload.i17.i22.i.i88.i.i.i.i.i.i.i = load i16, ptr %i.ir, align 1, !alias.scope !1674, !noalias !1675
  %i.is = zext i16 %.sroa.015.0.copyload.i17.i22.i.i88.i.i.i.i.i.i.i to i64
  %i.it = shl nuw nsw i64 %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i, 3
  %i.iu = shl nuw nsw i64 %i.is, %i.it
  %i.iv = or i64 %i.iu, %.sroa.011.0.i12.i15.i.i36.i.i.i.i.i.i.i
  %i.iw = or disjoint i64 %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.011.1.i14.i17.i.i38.i.i.i.i.i.i.i = phi i64 [ %i.iv, %bb.s ], [ %.sroa.011.0.i12.i15.i.i36.i.i.i.i.i.i.i, %bb.r ] ; 2 uses
  %.sroa.0.1.i15.i18.i.i39.i.i.i.i.i.i.i = phi i64 [ %i.iw, %bb.s ], [ %.sroa.0.0.i13.i16.i.i37.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  %i.ix = icmp samesign ult i64 %.sroa.0.1.i15.i18.i.i39.i.i.i.i.i.i.i, %i.ij
  br i1 %i.ix, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i"

.lr.ph.i24.i.i28.i.i.i.i.i.i.i:                   ; preds = %.loopexit.i.i17.i.i.i.i.i.i.i, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i
  %i.iy = phi i64 [ %i.jr, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ], [ %i.ih, %.loopexit.i.i17.i.i.i.i.i.i.i ]
  %i.iz = phi i64 [ %i.jo, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ], [ %i.ig, %.loopexit.i.i17.i.i.i.i.i.i.i ] ; 3 uses
  %i.ja = phi i64 [ %i.jq, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ], [ %i.ii, %.loopexit.i.i17.i.i.i.i.i.i.i ]
  %.sroa.04.020.i29.i.i29.i.i.i.i.i.i.i = phi i64 [ %i.jt, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i17.i.i.i.i.i.i.i ] ; 2 uses
  %i.jb = phi i64 [ %i.js, %.lr.ph.i24.i.i28.i.i.i.i.i.i.i ], [ %i.if, %.loopexit.i.i17.i.i.i.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i21.i.i.i.i.i.i.i, i64 %.sroa.04.020.i29.i.i29.i.i.i.i.i.i.i
  %.sroa.08.0.copyload.i30.i.i30.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 1, !alias.scope !1676, !noalias !1675 ; 2 uses
  %i.jd = xor i64 %.sroa.08.0.copyload.i30.i.i30.i.i.i.i.i.i.i, %i.ja ; 3 uses
  %i.je = add i64 %i.jb, %i.iz                    ; 3 uses
  %i.jf = add i64 %i.jd, %i.iy                    ; 2 uses
  %i.jg = call i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 13)
  %i.jh = xor i64 %i.je, %i.jg                    ; 3 uses
  %i.ji = call i64 @llvm.fshl.i64(i64 %i.jd, i64 %i.jd, i64 16)
  %i.jj = xor i64 %i.jf, %i.ji                    ; 3 uses
  %i.jk = call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 32)
  %i.jl = add i64 %i.jf, %i.jh                    ; 3 uses
  %i.jm = add i64 %i.jj, %i.jk                    ; 2 uses
  %i.jn = call i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 17)
  %i.jo = xor i64 %i.jl, %i.jn                    ; 2 uses
  %i.jp = call i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 21)
  %i.jq = xor i64 %i.jp, %i.jm                    ; 2 uses
  %i.jr = call i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 32) ; 2 uses
  %i.js = xor i64 %i.jm, %.sroa.08.0.copyload.i30.i.i30.i.i.i.i.i.i.i ; 2 uses
  %i.jt = add nuw i64 %.sroa.04.020.i29.i.i29.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.ik
  br i1 %i.ju, label %.lr.ph.i24.i.i28.i.i.i.i.i.i.i, label %._crit_edge.i31.i.i31.i.i.i.i.i.i.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i": ; preds = %bb.t
  %17 = icmp eq i64 %i.ij, 0
  br i1 %17, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i"
  %18 = shl nuw nsw i64 %i.ij, 3
  %19 = shl nuw nsw i64 255, %18
  %20 = or i64 %.sroa.011.1.i14.i17.i.i38.i.i.i.i.i.i.i, %19
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i: ; preds = %bb.t
  %21 = add nuw i64 %.sroa.0.1.i15.i18.i.i39.i.i.i.i.i.i.i, %i.ik ; 2 uses
  %22 = icmp ult i64 %21, %.val3.i.i.i.i22.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %22), !noalias !1677
  %23 = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i21.i.i.i.i.i.i.i, i64 %21
  %24 = load i8, ptr %23, align 1, !alias.scope !1674, !noalias !1675, !noundef !4
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %.sroa.0.1.i15.i18.i.i39.i.i.i.i.i.i.i, 3
  %27 = shl nuw nsw i64 %25, %26
  %i.jv = shl nuw nsw i64 %i.ij, 3
  %i.jw = shl nuw i64 255, %i.jv
  %28 = or i64 %i.jw, %27
  %i.jx = or i64 %28, %.sroa.011.1.i14.i17.i.i38.i.i.i.i.i.i.i ; 3 uses
  %.not65.i.i43.i.i.i.i.i.i.i = icmp eq i64 %i.ij, 7
  br i1 %.not65.i.i43.i.i.i.i.i.i.i, label %.thread.i.i86.i.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i"

.thread.i.i86.i.i.i.i.i.i.i:                      ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i
  %i.jy = xor i64 %i.jx, %.sroa.32.4.i.i32.i.i.i.i.i.i.i ; 3 uses
  %i.jz = add i64 %.sroa.037.4.i.i35.i.i.i.i.i.i.i, %.sroa.22.4.i.i33.i.i.i.i.i.i.i ; 3 uses
  %i.ka = add i64 %i.jy, %.sroa.12.4.i.i34.i.i.i.i.i.i.i ; 2 uses
  %i.kb = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i.i33.i.i.i.i.i.i.i, i64 %.sroa.22.4.i.i33.i.i.i.i.i.i.i, i64 13)
  %i.kc = xor i64 %i.jz, %i.kb                    ; 3 uses
  %i.kd = call i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 16)
  %i.ke = xor i64 %i.ka, %i.kd                    ; 3 uses
  %i.kf = call i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 32)
  %i.kg = add i64 %i.ka, %i.kc                    ; 3 uses
  %i.kh = add i64 %i.ke, %i.kf                    ; 2 uses
  %i.ki = call i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 17)
  %i.kj = xor i64 %i.kg, %i.ki
  %i.kk = call i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 21)
  %i.kl = xor i64 %i.kk, %i.kh
  %i.km = call i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 32)
  %i.kn = xor i64 %i.kh, %i.jx
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i": ; preds = %.thread.i.i86.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i"
  %.sroa.32.2.i.i43.i.i.i.i.i.i.i = phi i64 [ %.sroa.32.4.i.i32.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i ], [ %.sroa.32.4.i.i32.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a" ], [ %i.kl, %.thread.i.i86.i.i.i.i.i.i.i ], [ %.sroa.32.4.i.i32.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i" ]
  %.sroa.22.2.i.i44.i.i.i.i.i.i.i = phi i64 [ %.sroa.22.4.i.i33.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i ], [ %.sroa.22.4.i.i33.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a" ], [ %i.kj, %.thread.i.i86.i.i.i.i.i.i.i ], [ %.sroa.22.4.i.i33.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.12.2.i.i45.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.4.i.i34.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i ], [ %.sroa.12.4.i.i34.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a" ], [ %i.km, %.thread.i.i86.i.i.i.i.i.i.i ], [ %.sroa.12.4.i.i34.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i" ]
  %.sroa.037.2.i.i46.i.i.i.i.i.i.i = phi i64 [ %.sroa.037.4.i.i35.i.i.i.i.i.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i ], [ %.sroa.037.4.i.i35.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a" ], [ %i.kn, %.thread.i.i86.i.i.i.i.i.i.i ], [ %.sroa.037.4.i.i35.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i" ]
  %.sroa.50.0.i.i47.i.i.i.i.i.i.i = phi i64 [ %i.jx, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i.i41.i.i.i.i.i.i.i ], [ %20, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i.a" ], [ 0, %.thread.i.i86.i.i.i.i.i.i.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit33.i.i40.i.i.i.i.i.i.i" ]
  %29 = shl i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i, 56
  %30 = add i64 %29, 72057594037927936
  %i.ko = or i64 %.sroa.50.0.i.i47.i.i.i.i.i.i.i, %30 ; 2 uses
  %i.kp = xor i64 %i.ko, %.sroa.32.2.i.i43.i.i.i.i.i.i.i ; 3 uses
  %i.kq = add i64 %.sroa.037.2.i.i46.i.i.i.i.i.i.i, %.sroa.22.2.i.i44.i.i.i.i.i.i.i ; 3 uses
  %i.kr = add i64 %i.kp, %.sroa.12.2.i.i45.i.i.i.i.i.i.i ; 2 uses
  %i.ks = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i.i44.i.i.i.i.i.i.i, i64 %.sroa.22.2.i.i44.i.i.i.i.i.i.i, i64 13)
  %i.kt = xor i64 %i.kq, %i.ks                    ; 3 uses
  %i.ku = call i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 16)
  %i.kv = xor i64 %i.ku, %i.kr                    ; 3 uses
  %i.kw = call i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 32)
  %i.kx = add i64 %i.kr, %i.kt                    ; 3 uses
  %i.ky = add i64 %i.kv, %i.kw                    ; 2 uses
  %i.kz = call i64 @llvm.fshl.i64(i64 %i.kt, i64 %i.kt, i64 17)
  %i.la = xor i64 %i.kx, %i.kz                    ; 3 uses
  %i.lb = call i64 @llvm.fshl.i64(i64 %i.kv, i64 %i.kv, i64 21)
  %i.lc = xor i64 %i.lb, %i.ky                    ; 3 uses
  %i.ld = call i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 32)
  %i.le = xor i64 %i.ky, %i.ko
  %i.lf = xor i64 %i.ld, 255
  %i.lg = add i64 %i.le, %i.la                    ; 3 uses
  %i.lh = add i64 %i.lc, %i.lf                    ; 2 uses
  %i.li = call i64 @llvm.fshl.i64(i64 %i.la, i64 %i.la, i64 13)
  %i.lj = xor i64 %i.lg, %i.li                    ; 3 uses
  %i.lk = call i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 16)
  %i.ll = xor i64 %i.lk, %i.lh                    ; 3 uses
  %i.lm = call i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 32)
  %i.ln = add i64 %i.lj, %i.lh                    ; 3 uses
  %i.lo = add i64 %i.ll, %i.lm                    ; 2 uses
  %i.lp = call i64 @llvm.fshl.i64(i64 %i.lj, i64 %i.lj, i64 17)
  %i.lq = xor i64 %i.ln, %i.lp                    ; 3 uses
  %i.lr = call i64 @llvm.fshl.i64(i64 %i.ll, i64 %i.ll, i64 21)
  %i.ls = xor i64 %i.lr, %i.lo                    ; 3 uses
  %i.lt = call i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 32)
  %i.lu = add i64 %i.lq, %i.lo                    ; 3 uses
  %i.lv = add i64 %i.ls, %i.lt                    ; 2 uses
  %i.lw = call i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 13)
  %i.lx = xor i64 %i.lw, %i.lu                    ; 3 uses
  %i.ly = call i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 16)
  %i.lz = xor i64 %i.ly, %i.lv                    ; 3 uses
  %i.ma = call i64 @llvm.fshl.i64(i64 %i.lu, i64 %i.lu, i64 32)
  %i.mb = add i64 %i.lx, %i.lv                    ; 3 uses
  %i.mc = add i64 %i.lz, %i.ma                    ; 2 uses
  %i.md = call i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 17)
  %i.me = xor i64 %i.md, %i.mb                    ; 3 uses
  %i.mf = call i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 21)
  %i.mg = xor i64 %i.mf, %i.mc                    ; 3 uses
  %i.mh = call i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 32)
  %i.mi = add i64 %i.me, %i.mc
  %i.mj = add i64 %i.mg, %i.mh                    ; 2 uses
  %i.mk = call i64 @llvm.fshl.i64(i64 %i.me, i64 %i.me, i64 13)
  %i.ml = xor i64 %i.mk, %i.mi                    ; 3 uses
  %i.mm = call i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 16)
  %i.mn = xor i64 %i.mm, %i.mj                    ; 2 uses
  %i.mo = add i64 %i.ml, %i.mj                    ; 3 uses
  %i.mp = call i64 @llvm.fshl.i64(i64 %i.ml, i64 %i.ml, i64 17)
  %i.mq = call i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 21)
  %i.mr = call i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 32)
  %i.ms = xor i64 %i.mq, %i.mp
  %i.mt = xor i64 %i.ms, %i.mr
  %i.mu = xor i64 %i.mt, %i.mo                    ; 2 uses
  %i.mv = load i64, ptr %i.af, align 8, !alias.scope !1678, !noalias !1679, !noundef !4
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %bb.u, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i", !prof !10

bb.u:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i"
  %i.mx = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8b384cec0bd456f2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i, !noalias !1640 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i": ; preds = %bb.u, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E.exit.i.i44.i.i.i.i.i.i.i"
  %.val.i.i1.i.i51.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1680, !noalias !1681, !nonnull !4, !noundef !4 ; 8 uses
  %.val7.i.i.i.i52.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1680, !noalias !1681, !noundef !4 ; 4 uses
  %i.my = lshr i64 %i.mu, 57
  %i.mz = trunc nuw nsw i64 %i.my to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i53.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.mz, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i54.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i53.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i55.i.i.i.i.i.i.i = phi i64 [ %i.mu, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i" ], [ %i.nz, %bb.x ]
  %.sroa.6.0.i.i.i.i.i56.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i82.i.i.i.i.i.i.i, %bb.x ]
  %.sroa.01.0.i.i.i.i.i57.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i81.i.i.i.i.i.i.i, %bb.x ]
  %i.na = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i.i.i50.i.i.i.i.i.i.i" ], [ %i.ny, %bb.x ]
  %.sroa.0.017.i.i.i.i.i58.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i55.i.i.i.i.i.i.i, %.val7.i.i.i.i52.i.i.i.i.i.i.i ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i58.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i59.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nb, align 1, !noalias !1682 ; 3 uses
  %i.nc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i59.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i54.i.i.i.i.i.i.i
  %i.nd = bitcast <16 x i1> %i.nc to i16          ; 2 uses
  %.not25.i.i.i.i.i60.i.i.i.i.i.i.i = icmp eq i16 %i.nd, 0
  br i1 %.not25.i.i.i.i.i60.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i61.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i61.i.i.i.i.i.i.i:                 ; preds = %bb.v, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i62.i.i.i.i.i.i.i = phi i16 [ %i.no, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i" ], [ %i.nd, %bb.v ] ; 3 uses
  %i.ne = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i62.i.i.i.i.i.i.i, i1 true)
  %i.nf = zext nneg i16 %i.ne to i64
  %i.ng = add i64 %.sroa.0.017.i.i.i.i.i58.i.i.i.i.i.i.i, %i.nf
  %i.nh = and i64 %i.ng, %.val7.i.i.i.i52.i.i.i.i.i.i.i
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds [32 x i8], ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %i.ni ; 4 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 -24
  %.val4.i.i.i.i.i63.i.i.i.i.i.i.i = load i64, ptr %i.nk, align 8, !noalias !1683, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i64.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i, %.val4.i.i.i.i.i63.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i64.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i83.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i83.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i61.i.i.i.i.i.i.i
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -32
  %.val3.i.i.i.i.i84.i.i.i.i.i.i.i = load ptr, ptr %i.nl, align 8, !noalias !1683, !nonnull !4, !align !6, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i85.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val2.i.i.i.i21.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i84.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i), !alias.scope !1684, !noalias !1683
  %i.nm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i85.i.i.i.i.i.i.i, 0
  br i1 %i.nm, label %bb.ab, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i", !prof !12

._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i:            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i", %bb.v
  %.not13.i.i.i.i.i68.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i57.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i68.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i71.i.i.i.i.i.i.i, label %bb.w, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i.i.i65.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i83.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i61.i.i.i.i.i.i.i
  %i.nn = add i16 %.sroa.05.026.i.i.i.i.i62.i.i.i.i.i.i.i, -1
  %i.no = and i16 %i.nn, %.sroa.05.026.i.i.i.i.i62.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i66.i.i.i.i.i.i.i = icmp eq i16 %i.no, 0
  br i1 %.not.i.i.i.i.i66.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i61.i.i.i.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i
  %i.np = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i59.i.i.i.i.i.i.i, zeroinitializer
  %i.nq = bitcast <16 x i1> %i.np to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i69.i.i.i.i.i.i.i = icmp eq i16 %i.nq, 0 ; 2 uses
  %i.nr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.nq, i1 true)
  %i.ns = zext nneg i16 %i.nr to i64
  %.sroa.6.0.i.i.i.i.i.i70.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i69.i.i.i.i.i.i.i, i64 undef, i64 %i.ns
  %i.nt = add i64 %.sroa.6.0.i.i.i.i.i.i70.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i58.i.i.i.i.i.i.i
  %i.nu = and i64 %i.nt, %.val7.i.i.i.i52.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i69.i.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i.i71.i.i.i.i.i.i.i

.thread.i.i.i.i.i71.i.i.i.i.i.i.i:                ; preds = %bb.w, %._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i72.i.i.i.i.i.i.i = phi i64 [ %i.nu, %bb.w ], [ %.sroa.6.0.i.i.i.i.i56.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i67.i.i.i.i.i.i.i ] ; 3 uses
  %i.nv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i59.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nw = bitcast <16 x i1> %i.nv to i16
  %i.nx = icmp eq i16 %i.nw, 0
  br i1 %i.nx, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %.thread.i.i.i.i.i71.i.i.i.i.i.i.i, %bb.w
  %.sroa.01.122.i.i.i.i.i81.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i71.i.i.i.i.i.i.i ], [ 0, %bb.w ]
  %.sroa.6.120.i.i.i.i.i82.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i72.i.i.i.i.i.i.i, %.thread.i.i.i.i.i71.i.i.i.i.i.i.i ], [ undef, %bb.w ]
  %i.ny = add i64 %i.na, 16                       ; 2 uses
  %i.nz = add i64 %i.ny, %.sroa.0.017.i.i.i.i.i58.i.i.i.i.i.i.i
  br label %bb.v

bb.y:                                             ; preds = %.thread.i.i.i.i.i71.i.i.i.i.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i72.i.i.i.i.i.i.i
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !1685, !noundef !4 ; 2 uses
  %i.oc = icmp sgt i8 %i.ob, -1
  br i1 %i.oc, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %.val2.i.i.i.i.i.i78.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, align 16, !noalias !1685
  %i.od = icmp slt <16 x i8> %.val2.i.i.i.i.i.i78.i.i.i.i.i.i.i, zeroinitializer
  %i.oe = bitcast <16 x i1> %i.od to i16          ; 2 uses
  %i.of = icmp ne i16 %i.oe, 0
  call void @llvm.assume(i1 %i.of), !noalias !1686
  %i.og = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.oe, i1 true)
  %i.oh = zext nneg i16 %i.og to i64              ; 2 uses
  %.phi.trans.insert.i.i.i79.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %i.oh
  %.pre.i2.i.i80.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i79.i.i.i.i.i.i.i, align 1, !noalias !1687
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.oi = phi i8 [ %.pre.i2.i.i80.i.i.i.i.i.i.i, %bb.z ], [ %i.ob, %bb.y ]
  %.sroa.3.0.i.ph.i.i.i.i73.i.i.i.i.i.i.i = phi i64 [ %i.oh, %bb.z ], [ %.sroa.6.121.i.i.i.i.i72.i.i.i.i.i.i.i, %bb.y ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1688), !noalias !1686
  %i.oj = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i73.i.i.i.i.i.i.i
  %i.ok = and i8 %i.oi, 1
  %i.ol = zext nneg i8 %i.ok to i64
  %i.om = add i64 %.sroa.3.0.i.ph.i.i.i.i73.i.i.i.i.i.i.i, -16
  %i.on = and i64 %i.om, %.val7.i.i.i.i52.i.i.i.i.i.i.i
  store i8 %i.mz, ptr %i.oj, align 1, !noalias !1687
  %i.oo = getelementptr i8, ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  store i8 %i.mz, ptr %i.op, align 1, !noalias !1687
  %i.oq = load <2 x i64>, ptr %i.af, align 8, !alias.scope !1689, !noalias !1690
  %i.or = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ol, i64 0
  %i.os = sub <2 x i64> %i.oq, %i.or
  store <2 x i64> %i.os, ptr %i.af, align 8, !alias.scope !1689, !noalias !1690
  %i.ot = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i73.i.i.i.i.i.i.i
  %i.ou = getelementptr inbounds [32 x i8], ptr %.val.i.i1.i.i51.i.i.i.i.i.i.i, i64 %i.ot ; 4 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -32
  store ptr %.val2.i.i.i.i21.i.i.i.i.i.i.i, ptr %i.ov, align 8, !noalias !1691
  %.sroa.4.0..sroa_idx.i.i.i74.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ou, i64 -24
  store i64 %.val3.i.i.i.i22.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i74.i.i.i.i.i.i.i, align 8, !noalias !1691
  %.sroa.5.0..sroa_idx.i.i.i75.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ou, i64 -16
  store ptr %.val4.i.i.i.i23.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i75.i.i.i.i.i.i.i, align 8, !noalias !1691
  %.sroa.6.0..sroa_idx.i.i.i76.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ou, i64 -8
  store i64 %.val5.i.i.i.i24.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i76.i.i.i.i.i.i.i, align 8, !noalias !1692
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i.i.i83.i.i.i.i.i.i.i"
  %i.ow = getelementptr inbounds i8, ptr %i.nj, i64 -16
  %i.ox = getelementptr inbounds i8, ptr %i.nj, i64 -8
  store ptr %.val4.i.i.i.i23.i.i.i.i.i.i.i, ptr %i.ow, align 8, !noalias !1693
  store i64 %.val5.i.i.i.i24.i.i.i.i.i.i.i, ptr %i.ox, align 8, !noalias !1694
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E.exit.i.i77.i.i.i.i.i.i.i": ; preds = %bb.ab, %bb.aa
  %i.oy = add i64 %.sroa.0.0.ph.i.i.i15.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i12.i.i.i.i.i.i.i

.lr.ph.split.i.i.i91.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i90.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i
  %i.oz = phi ptr [ %i.pd, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i ], [ %.lcssa2530.i.i.i13.i.i.i.i.i.i.i, %.lr.ph.i.i.i90.i.i.i.i.i.i.i ] ; 2 uses
  %i.pa = phi ptr [ %i.pc, %.lr.ph.split.i.i.i91.i.i.i.i.i.i.i ], [ %.lcssa2428.i.i.i14.i.i.i.i.i.i.i, %.lr.ph.i.i.i90.i.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v16i8
!1451 = distinct !{!1451, !1448, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1452 = distinct !{!1452, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1453 = distinct !{!1453, !1452, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1454 = distinct !{!1454, !1452, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1455 = !{!1439}
!1456 = !{!1440}
!1457 = !{!1447, !1446, !1444, !1443, !1442}
!1458 = !{!1447, !1444, !1443}
!1459 = !{!1454, !1453, !1451, !1450, !1449}
!1460 = !{!1454, !1451, !1450}
!1461 = distinct !{!1461, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"}
!1462 = distinct !{!1462, !1461, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 1"}
!1463 = distinct !{!1463, !1461, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 0"}
!1464 = distinct !{!1464, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1465 = distinct !{!1465, !1464, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1466 = distinct !{!1466, !1464, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1467 = distinct !{!1467, !1464, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1468 = distinct !{!1468, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1469 = distinct !{!1469, !1468, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1470 = distinct !{!1470, !1468, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1471 = distinct !{!1471, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1472 = distinct !{!1472, !1471, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1473 = distinct !{!1473, !1471, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1474 = distinct !{!1474, !1471, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1475 = distinct !{!1475, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1476 = distinct !{!1476, !1475, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1477 = distinct !{!1477, !1475, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1478 = !{!1462}
!1479 = !{!1463}
!1480 = !{!1470, !1469, !1467, !1466, !1465}
!1481 = !{!1470, !1467, !1466}
!1482 = !{!1477, !1476, !1474, !1473, !1472}
!1483 = !{!1477, !1474, !1473}
!1484 = distinct !{!1484, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"}
!1485 = distinct !{!1485, !1484, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 1"}
!1486 = distinct !{!1486, !1484, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 0"}
!1487 = distinct !{!1487, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1488 = distinct !{!1488, !1487, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1489 = distinct !{!1489, !1487, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1490 = distinct !{!1490, !1487, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1491 = distinct !{!1491, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1492 = distinct !{!1492, !1491, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1493 = distinct !{!1493, !1491, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1494 = distinct !{!1494, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1495 = distinct !{!1495, !1494, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1496 = distinct !{!1496, !1494, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1497 = distinct !{!1497, !1494, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1498 = distinct !{!1498, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1499 = distinct !{!1499, !1498, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1500 = distinct !{!1500, !1498, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1501 = !{!1485}
!1502 = !{!1486}
!1503 = !{!1493, !1492, !1490, !1489, !1488}
!1504 = !{!1493, !1490, !1489}
!1505 = !{!1500, !1499, !1497, !1496, !1495}
!1506 = !{!1500, !1497, !1496}
!1507 = distinct !{!1507, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"}
!1508 = distinct !{!1508, !1507, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E: argument 0"}
!1509 = !{!1508}
!1510 = distinct !{!1510, !"_ZN11procfs_core7cpuinfo7CpuInfo8get_info28_$u7b$$u7b$closure$u7d$$u7d$17had4d777e402c3526E"}
!1511 = distinct !{!1511, !1510, !"_ZN11procfs_core7cpuinfo7CpuInfo8get_info28_$u7b$$u7b$closure$u7d$$u7d$17had4d777e402c3526E: argument 1"}
!1512 = distinct !{!1512, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E"}
!1513 = distinct !{!1513, !1512, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E: argument 1"}
!1514 = distinct !{!1514, !1510, !"_ZN11procfs_core7cpuinfo7CpuInfo8get_info28_$u7b$$u7b$closure$u7d$$u7d$17had4d777e402c3526E: argument 0"}
!1515 = distinct !{!1515, !1512, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E: argument 0"}
!1516 = distinct !{!1516, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h11d8e6ba3c89a446E"}
!1517 = distinct !{!1517, !1516, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h11d8e6ba3c89a446E: argument 0"}
!1518 = distinct !{!1518, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E"}
!1519 = distinct !{!1519, !1518, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E: argument 1"}
!1520 = distinct !{!1520, !1518, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hfdcef9257b3de775E: argument 0"}
!1521 = distinct !{!1521, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h11d8e6ba3c89a446E"}
!1522 = distinct !{!1522, !1521, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h11d8e6ba3c89a446E: argument 0"}
!1523 = distinct !{!1523, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf4b93bc3cd480285E"}
!1524 = distinct !{!1524, !1523, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf4b93bc3cd480285E: argument 1"}
!1525 = distinct !{!1525, !1523, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf4b93bc3cd480285E: argument 0"}
!1526 = distinct !{!1526, !"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h69b6a2c27fd9197aE"}
!1527 = distinct !{!1527, !1526, !"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h69b6a2c27fd9197aE: argument 1"}
!1528 = distinct !{!1528, !1526, !"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h69b6a2c27fd9197aE: argument 0"}
!1529 = distinct !{!1529, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6e2c0fbba3857467E"}
!1530 = distinct !{!1530, !1529, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6e2c0fbba3857467E: argument 0"}
!1531 = distinct !{!1531, !"_ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE"}
!1532 = distinct !{!1532, !1531, !"_ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE: argument 0"}
!1533 = distinct !{!1533, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1d990150c4a134d2E"}
!1534 = distinct !{!1534, !1533, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1d990150c4a134d2E: argument 0"}
!1535 = distinct !{!1535, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h1b4a56d04f85db62E"}
!1536 = distinct !{!1536, !1535, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h1b4a56d04f85db62E: argument 0"}
!1537 = distinct !{!1537, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE"}
!1538 = distinct !{!1538, !1537, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE: argument 0"}
!1539 = distinct !{!1539, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h185711d015d4aea2E"}
!1540 = distinct !{!1540, !1539, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h185711d015d4aea2E: argument 1"}
!1541 = distinct !{!1541, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h7c6d4f19381abefeE"}
!1542 = distinct !{!1542, !1541, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h7c6d4f19381abefeE: argument 0"}
!1543 = distinct !{!1543, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h63d5fb53a8b09b61E"}
!1544 = distinct !{!1544, !1543, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h63d5fb53a8b09b61E: argument 0"}
!1545 = distinct !{!1545, !"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h01e2a4a5584d30d8E"}
!1546 = distinct !{!1546, !1545, !"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h01e2a4a5584d30d8E: argument 0"}
!1547 = distinct !{!1547, !"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hac87bd9e93bec5aaE"}
!1548 = distinct !{!1548, !1547, !"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hac87bd9e93bec5aaE: argument 0"}
!1549 = distinct !{!1549, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h92e57a8bbe15f7e5E"}
!1550 = distinct !{!1550, !1549, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h92e57a8bbe15f7e5E: argument 1"}
!1551 = distinct !{!1551, !1549, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h92e57a8bbe15f7e5E: argument 0"}
!1552 = distinct !{!1552, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17hcf223997d647f701E"}
!1553 = distinct !{!1553, !1552, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17hcf223997d647f701E: argument 1"}
!1554 = distinct !{!1554, !1552, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17hcf223997d647f701E: argument 0"}
!1555 = distinct !{!1555, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E"}
!1556 = distinct !{!1556, !1555, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 0"}
!1557 = distinct !{!1557, !1539, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h185711d015d4aea2E: argument 0"}
!1558 = distinct !{!1558, !1541, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h7c6d4f19381abefeE: argument 1"}
!1559 = distinct !{!1559, !1543, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h63d5fb53a8b09b61E: argument 1"}
!1560 = distinct !{!1560, !1545, !"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h01e2a4a5584d30d8E: argument 1"}
!1561 = distinct !{!1561, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he0d62bd29e1ce36cE"}
!1562 = distinct !{!1562, !1561, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he0d62bd29e1ce36cE: argument 0"}
!1563 = distinct !{!1563, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17hf9d82b1b5c36cd65E"}
!1564 = distinct !{!1564, !1563, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17hf9d82b1b5c36cd65E: argument 0"}
!1565 = distinct !{!1565, !1555, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 2"}
!1566 = distinct !{!1566, !1555, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 1"}
!1567 = distinct !{!1567, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E"}
!1568 = distinct !{!1568, !1567, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E: argument 1"}
!1569 = distinct !{!1569, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E"}
!1570 = distinct !{!1570, !1569, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E: argument 0"}
!1571 = distinct !{!1571, !"_ZN4core4hash11BuildHasher8hash_one17h1cf9e105f0a290eeE"}
!1572 = distinct !{!1572, !1571, !"_ZN4core4hash11BuildHasher8hash_one17h1cf9e105f0a290eeE: argument 0"}
!1573 = distinct !{!1573, !1567, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E: argument 0"}
!1574 = distinct !{!1574, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E"}
!1575 = distinct !{!1575, !1574, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 0"}
!1576 = distinct !{!1576, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE"}
!1577 = distinct !{!1577, !1576, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE: argument 0"}
!1578 = distinct !{!1578, !1574, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 2"}
!1579 = distinct !{!1579, !1574, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 1"}
!1580 = distinct !{!1580, !1576, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE: argument 1"}
!1581 = distinct !{!1581, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!1582 = distinct !{!1582, !1581, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!1583 = distinct !{!1583, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E"}
!1584 = distinct !{!1584, !1583, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E: argument 0"}
!1585 = distinct !{!1585, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE"}
!1586 = distinct !{!1586, !1585, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 1"}
!1587 = distinct !{!1587, !1585, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 0"}
!1588 = distinct !{!1588, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E"}
!1589 = distinct !{!1589, !1588, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E: argument 1"}
!1590 = distinct !{!1590, !1588, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E: argument 0"}
!1591 = distinct !{!1591, !"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc055dc9793118e91E"}
!1592 = distinct !{!1592, !1591, !"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc055dc9793118e91E: argument 0"}
!1593 = distinct !{!1593, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1dcbd1db0a5c9705E"}
!1594 = distinct !{!1594, !1593, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1dcbd1db0a5c9705E: argument 0"}
!1595 = distinct !{!1595, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h816f04c52fa95f21E"}
!1596 = distinct !{!1596, !1595, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h816f04c52fa95f21E: argument 1"}
!1597 = distinct !{!1597, !1595, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h816f04c52fa95f21E: argument 0"}
!1598 = distinct !{!1598, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E"}
!1599 = distinct !{!1599, !1598, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 0"}
!1600 = distinct !{!1600, !1591, !"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc055dc9793118e91E: argument 1"}
!1601 = distinct !{!1601, !1593, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1dcbd1db0a5c9705E: argument 1"}
!1602 = distinct !{!1602, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he0d62bd29e1ce36cE"}
!1603 = distinct !{!1603, !1602, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he0d62bd29e1ce36cE: argument 0"}
!1604 = distinct !{!1604, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17hf9d82b1b5c36cd65E"}
!1605 = distinct !{!1605, !1604, !"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17hf9d82b1b5c36cd65E: argument 0"}
!1606 = distinct !{!1606, !1598, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 2"}
!1607 = distinct !{!1607, !1598, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91edf431efa832f8E: argument 1"}
!1608 = distinct !{!1608, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E"}
!1609 = distinct !{!1609, !1608, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E: argument 1"}
!1610 = distinct !{!1610, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E"}
!1611 = distinct !{!1611, !1610, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E: argument 0"}
!1612 = distinct !{!1612, !"_ZN4core4hash11BuildHasher8hash_one17h1cf9e105f0a290eeE"}
!1613 = distinct !{!1613, !1612, !"_ZN4core4hash11BuildHasher8hash_one17h1cf9e105f0a290eeE: argument 0"}
!1614 = distinct !{!1614, !1608, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E: argument 0"}
!1615 = distinct !{!1615, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E"}
!1616 = distinct !{!1616, !1615, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 0"}
!1617 = distinct !{!1617, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE"}
!1618 = distinct !{!1618, !1617, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE: argument 0"}
!1619 = distinct !{!1619, !1615, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 2"}
!1620 = distinct !{!1620, !1615, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h3df8f5c0b03052e7E: argument 1"}
!1621 = distinct !{!1621, !1617, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE: argument 1"}
!1622 = distinct !{!1622, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!1623 = distinct !{!1623, !1622, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!1624 = distinct !{!1624, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E"}
!1625 = distinct !{!1625, !1624, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E: argument 0"}
!1626 = distinct !{!1626, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE"}
!1627 = distinct !{!1627, !1626, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 1"}
!1628 = distinct !{!1628, !1626, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 0"}
!1629 = distinct !{!1629, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E"}
!1630 = distinct !{!1630, !1629, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E: argument 1"}
!1631 = distinct !{!1631, !1629, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hca2ff575557507d1E: argument 0"}
!1632 = !{!1511}
!1633 = !{!1513}
!1634 = !{!1515, !1514, !1511}
!1635 = !{!1517, !1515, !1513, !1514, !1511}
!1636 = !{!1519}
!1637 = !{!1519, !1511}
!1638 = !{!1520, !1514}
!1639 = !{!1522, !1520, !1519, !1514, !1511}
!1640 = !{!1528, !1527, !1525, !1524, !1514, !1511}
!1641 = !{!1536, !1534, !1532, !1530, !1528, !1527, !1525, !1524, !1514, !1511}
!1642 = !{!1530, !1528, !1527, !1525, !1524, !1514, !1511}
!1643 = !{!1538, !1530, !1528, !1527, !1525, !1524, !1514, !1511}
!1644 = !{!"branch_weights", !"expected", i32 2146350698, i32 1132950}
!1645 = !{!1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1646 = !{!1556}
!1647 = !{!1556, !1560, !1559, !1558, !1557}
!1648 = !{!1566, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1649 = !{!1570, !1568}
!1650 = !{!1573, !1572, !1556, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1651 = !{!1568}
!1652 = !{!1572, !1556, !1565, !1564, !1562, !1554, !1553}
!1653 = !{!1577, !1575, !1556, !1560, !1559, !1558, !1557}
!1654 = !{!1580, !1579, !1578, !1566, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1655 = !{!1575, !1556, !1560, !1559, !1558, !1557}
!1656 = !{!1579, !1578, !1566, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1657 = !{!1582, !1579, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1658 = !{!1584, !1579, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1659 = !{!1587, !1586}
!1660 = !{!1579, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1661 = !{!1564, !1562, !1554, !1553}
!1662 = !{!1590, !1589, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1663 = !{!1590}
!1664 = !{!1590, !1556, !1560, !1559, !1558, !1557}
!1665 = !{!1589, !1566, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1666 = !{!1590, !1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1667 = !{!1590, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1668 = !{!1565, !1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1669 = !{!1564, !1562, !1554, !1553, !1551, !1550, !1548, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1670 = !{!1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1671 = !{!1599}
!1672 = !{!1599, !1601, !1600, !1560, !1559, !1558, !1557}
!1673 = !{!1607, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1674 = !{!1611, !1609}
!1675 = !{!1614, !1613, !1599, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1676 = !{!1609}
!1677 = !{!1613, !1599, !1606, !1605, !1603, !1597, !1596}
!1678 = !{!1618, !1616, !1599, !1601, !1600, !1560, !1559, !1558, !1557}
!1679 = !{!1621, !1620, !1619, !1607, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1680 = !{!1616, !1599, !1601, !1600, !1560, !1559, !1558, !1557}
!1681 = !{!1620, !1619, !1607, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1682 = !{!1623, !1620, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1683 = !{!1625, !1620, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1684 = !{!1628, !1627}
!1685 = !{!1620, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1686 = !{!1605, !1603, !1597, !1596}
!1687 = !{!1631, !1630, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1688 = !{!1631}
!1689 = !{!1631, !1599, !1601, !1600, !1560, !1559, !1558, !1557}
!1690 = !{!1630, !1607, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1691 = !{!1631, !1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1692 = !{!1631, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1693 = !{!1606, !1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1694 = !{!1605, !1603, !1597, !1596, !1594, !1592, !1546, !1544, !1542, !1540, !1528, !1527, !1525, !1524, !1514, !1511}
!1695 = distinct !{!1695, !"_ZN11procfs_core7cpuinfo7CpuInfo9get_field28_$u7b$$u7b$closure$u7d$$u7d$17hd58a39b97c87dca1E"}
!1696 = distinct !{!1696, !1695, !"_ZN11procfs_core7cpuinfo7CpuInfo9get_field28_$u7b$$u7b$closure$u7d$$u7d$17hd58a39b97c87dca1E: argument 0"}
!1697 = distinct !{!1697, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E"}
!1698 = distinct !{!1698, !1697, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E: argument 0"}
!1699 = distinct !{!1699, !1697, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E: argument 1"}
!1700 = distinct !{!1700, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E"}
!1701 = distinct !{!1701, !1700, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E: argument 0"}
!1702 = distinct !{!1702, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!1703 = distinct !{!1703, !1702, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!1704 = distinct !{!1704, !1700, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E: argument 1"}
!1705 = distinct !{!1705, !1702, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!1706 = distinct !{!1706, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!1707 = distinct !{!1707, !1706, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!1708 = distinct !{!1708, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h93d0243866b8de1cE"}
!1709 = distinct !{!1709, !1708, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h93d0243866b8de1cE: argument 0"}
!1710 = distinct !{!1710, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE"}
!1711 = distinct !{!1711, !1710, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 1"}
!1712 = distinct !{!1712, !1710, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 0"}
!1713 = distinct !{!1713, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E"}
!1714 = distinct !{!1714, !1713, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E: argument 0"}
!1715 = distinct !{!1715, !"_ZN4core6option15Option$LT$T$GT$7or_else17hd75e652b71fedcd0E"}
!1716 = distinct !{!1716, !1715, !"_ZN4core6option15Option$LT$T$GT$7or_else17hd75e652b71fedcd0E: argument 0"}
!1717 = distinct !{!1717, !1713, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0713be4c8e3f3b52E: argument 1"}
!1718 = distinct !{!1718, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E"}
!1719 = distinct !{!1719, !1718, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E: argument 0"}
!1720 = distinct !{!1720, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!1721 = distinct !{!1721, !1720, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!1722 = distinct !{!1722, !1718, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h491546c4f1419c75E: argument 1"}
!1723 = distinct !{!1723, !1720, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!1724 = distinct !{!1724, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!1725 = distinct !{!1725, !1724, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!1726 = distinct !{!1726, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h93d0243866b8de1cE"}
!1727 = distinct !{!1727, !1726, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h93d0243866b8de1cE: argument 0"}
!1728 = distinct !{!1728, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE"}
!1729 = distinct !{!1729, !1728, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 1"}
!1730 = distinct !{!1730, !1728, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 0"}
!1731 = !{!1696}
!1732 = !{!1698}
!1733 = !{!1698, !1696}
!1734 = !{!1699}
!1735 = !{!1701}
!1736 = !{!1703}
!1737 = !{!1703, !1701, !1698, !1696}
!1738 = !{!1705, !1704, !1699}
!1739 = !{!1707, !1703, !1705, !1701, !1704, !1698, !1699, !1696}
!1740 = !{!1709, !1703, !1705, !1701, !1704, !1698, !1699, !1696}
!1741 = !{!1712, !1711}
!1742 = !{!1709, !1703, !1705, !1701, !1698, !1696}
!1743 = !{!1714}
!1744 = !{!1717, !1716, !1696}
!1745 = !{!1714, !1716, !1696}
!1746 = !{!1719}
!1747 = !{!1721}
!1748 = !{!1721, !1719, !1714}
!1749 = !{!1723, !1722, !1717, !1716, !1696}
!1750 = !{!1725, !1721, !1723, !1719, !1722, !1714, !1717, !1716, !1696}
!1751 = !{!1727, !1721, !1723, !1719, !1722, !1714, !1717, !1716, !1696}
!1752 = !{!1730, !1729}
!1753 = !{!1727, !1721, !1723, !1719, !1714, !1716, !1696}
!1754 = distinct !{!1754, !"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E"}
!1755 = distinct !{!1755, !1754, !"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E: argument 1"}
!1756 = distinct !{!1756, !1754, !"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E: argument 0"}
!1757 = distinct !{!1757, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"}
!1758 = distinct !{!1758, !1757, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 1"}
!1759 = distinct !{!1759, !1757, !"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE: argument 0"}
!1760 = distinct !{!1760, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1761 = distinct !{!1761, !1760, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1762 = distinct !{!1762, !1760, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1763 = distinct !{!1763, !1760, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1764 = distinct !{!1764, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1765 = distinct !{!1765, !1764, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1766 = distinct !{!1766, !1764, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1767 = distinct !{!1767, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1768 = distinct !{!1768, !1767, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1769 = distinct !{!1769, !1767, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1770 = distinct !{!1770, !1767, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1771 = distinct !{!1771, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1772 = distinct !{!1772, !1771, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1773 = distinct !{!1773, !1771, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1774 = distinct !{!1774, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1775 = distinct !{!1775, !1774, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1776 = distinct !{!1776, !1774, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1777 = distinct !{!1777, !1774, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1778 = distinct !{!1778, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1779 = distinct !{!1779, !1778, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1780 = distinct !{!1780, !1778, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1781 = distinct !{!1781, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1782 = distinct !{!1782, !1781, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1783 = distinct !{!1783, !1781, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1784 = distinct !{!1784, !1781, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1785 = distinct !{!1785, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1786 = distinct !{!1786, !1785, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1787 = distinct !{!1787, !1785, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1788 = !{!1755}
!1789 = !{!1756}
!1790 = !{!1758}
!1791 = !{!1759}
!1792 = !{!1766, !1765, !1763, !1762, !1761}
!1793 = !{!1766, !1763, !1762}
!1794 = !{!1773, !1772, !1770, !1769, !1768}
!1795 = !{!1773, !1770, !1769}
!1796 = !{!1780, !1779, !1777, !1776, !1775}
!1797 = !{!1780, !1777, !1776}
!1798 = !{!1787, !1786, !1784, !1783, !1782}
!1799 = !{!1787, !1784, !1783}
!1800 = distinct !{!1800, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!1801 = distinct !{!1801, !1800, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!1802 = distinct !{!1802, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"}
!1803 = distinct !{!1803, !1802, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E: argument 0"}
!1804 = distinct !{!1804, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1805 = distinct !{!1805, !1804, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1806 = distinct !{!1806, !1804, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1807 = distinct !{!1807, !1804, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1808 = distinct !{!1808, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1809 = distinct !{!1809, !1808, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1810 = distinct !{!1810, !1808, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1811 = distinct !{!1811, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1812 = distinct !{!1812, !1811, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1813 = distinct !{!1813, !1811, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1814 = distinct !{!1814, !1811, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1815 = distinct !{!1815, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1816 = distinct !{!1816, !1815, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1817 = distinct !{!1817, !1815, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1818 = distinct !{!1818, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hc1891f1b9478a4b4E"}
!1819 = distinct !{!1819, !1818, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hc1891f1b9478a4b4E: argument 1"}
!1820 = distinct !{!1820, !1818, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hc1891f1b9478a4b4E: argument 0"}
!1821 = distinct !{!1821, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1822 = distinct !{!1822, !1821, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1823 = distinct !{!1823, !1821, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1824 = distinct !{!1824, !1821, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1825 = distinct !{!1825, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1826 = distinct !{!1826, !1825, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1827 = distinct !{!1827, !1825, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1828 = distinct !{!1828, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1829 = distinct !{!1829, !1828, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1830 = distinct !{!1830, !1828, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1831 = distinct !{!1831, !1828, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1832 = distinct !{!1832, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1833 = distinct !{!1833, !1832, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1834 = distinct !{!1834, !1832, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1835 = distinct !{!1835, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!1836 = distinct !{!1836, !1835, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!1837 = distinct !{!1837, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"}
!1838 = distinct !{!1838, !1837, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E: argument 0"}
!1839 = distinct !{!1839, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1840 = distinct !{!1840, !1839, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1841 = distinct !{!1841, !1839, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1842 = distinct !{!1842, !1839, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1843 = distinct !{!1843, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1844 = distinct !{!1844, !1843, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1845 = distinct !{!1845, !1843, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1846 = distinct !{!1846, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1847 = distinct !{!1847, !1846, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1848 = distinct !{!1848, !1846, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1849 = distinct !{!1849, !1846, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1850 = distinct !{!1850, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1851 = distinct !{!1851, !1850, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1852 = distinct !{!1852, !1850, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1853 = distinct !{!1853, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h480cfad3e0966632E"}
!1854 = distinct !{!1854, !1853, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h480cfad3e0966632E: argument 1"}
!1855 = distinct !{!1855, !1853, !"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h480cfad3e0966632E: argument 0"}
!1856 = distinct !{!1856, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1857 = distinct !{!1857, !1856, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1858 = distinct !{!1858, !1856, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1859 = distinct !{!1859, !1856, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1860 = distinct !{!1860, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1861 = distinct !{!1861, !1860, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1862 = distinct !{!1862, !1860, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1863 = distinct !{!1863, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1864 = distinct !{!1864, !1863, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1865 = distinct !{!1865, !1863, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1866 = distinct !{!1866, !1863, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
!1867 = distinct !{!1867, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E"}
!1868 = distinct !{!1868, !1867, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 1"}
!1869 = distinct !{!1869, !1867, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h23012924115ccc16E: argument 0"}
!1870 = distinct !{!1870, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!1871 = distinct !{!1871, !1870, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!1872 = distinct !{!1872, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"}
!1873 = distinct !{!1873, !1872, !"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E: argument 0"}
!1874 = distinct !{!1874, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE"}
!1875 = distinct !{!1875, !1874, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 2"}
!1876 = distinct !{!1876, !1874, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 1"}
!1877 = distinct !{!1877, !1874, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE: argument 0"}
end_hunk_1
