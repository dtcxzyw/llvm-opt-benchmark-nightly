Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core9from_iter17he4a3c70bf1efc902E:bb.a
bb.f:                                             ; preds = %bb.b
  %.pr.i.i = load i8, ptr %i.f, align 1, !alias.scope !5263, !noalias !5264
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.t = add i64 %i.g, -1                         ; 2 uses
  %i.u = icmp ult i64 %i.g, 18
  br i1 %i.u, label %.lr.ph.split.us.i.i.preheader, label %.preheader57.i.i

.preheader57.i.i:                                 ; preds = %bb.g, %bb.d
  %.sroa.16.0.ph.i.i = phi i64 [ %i.t, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.s, %bb.g ], [ %i.f, %bb.d ]
  %.not.us.i.i62 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.us.i.i62, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit", label %.lr.ph

.preheader57.split.us.i.i:                        ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i.i65, i64 1
  %i.w = add i64 %.sroa.16.0.us.i.i64, -1         ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.us.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i.i, %.preheader57.split.us.i.i
  %.sroa.01.0.us.i.i65 = phi ptr [ %i.v, %.preheader57.split.us.i.i ], [ %.sroa.01.0.ph.i.i, %.preheader57.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i64 = phi i64 [ %i.w, %.preheader57.split.us.i.i ], [ %.sroa.16.0.ph.i.i, %.preheader57.i.i ]
  %.sroa.017.0.us.i.i63 = phi i64 [ %i.af, %.preheader57.split.us.i.i ], [ 0, %.preheader57.i.i ]
  %i.x = load i8, ptr %.sroa.01.0.us.i.i65, align 1, !alias.scope !5263, !noalias !5264, !noundef !4
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i.i63, i64 10) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 0       ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ab, 1
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = add i64 %i.ac, %i.ae                    ; 3 uses
  %.not50.us.i.i = icmp ult i64 %i.af, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %.not50.us.i.i
  br i1 %or.cond, label %.loopexit, label %.preheader57.split.us.i.i

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.425.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5265
  store ptr @31, ptr %i.b, align 8, !noalias !5266
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5266
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5266
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5266
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5266
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @32, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 326, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE.exit", %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit", %bb.i
  ret void

.loopexit:                                        ; preds = %bb.h, %.lr.ph, %.lr.ph.split.us.i.i, %bb.c, %bb.c, %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5267
  %i.ag = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #38, !noalias !5267 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE.exit"

bb.k:                                             ; preds = %.loopexit
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !5268
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h684d49b513f9dfcdE.exit": ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(40) @262, i64 40, i1 false), !noalias !5269
  store i64 40, ptr %0, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @32, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 329, ptr %.sroa.620.0..sroa_idx, align 8
  br label %bb.j

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit": ; preds = %.preheader57.split.us.i.i, %bb.e, %.preheader57.i.i
  %.sroa.1034.0 = phi i64 [ %i.r, %bb.e ], [ 0, %.preheader57.i.i ], [ %i.af, %.preheader57.split.us.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1034.0, ptr %i.ai, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_ZN3std2io5error5Error3new17h91b3354b797be098E(i8 noundef range(i8 0, 42) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef %0, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !5280, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i", !prof !9

._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load i64, ptr %i.a, align 8, !noalias !5281 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !5281
  %i.e = insertvalue { i64, i64 } poison, i64 %.pre.i, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.pre1.i, 1
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i": ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !5282 ; 3 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !5282
  store i8 1, ptr %i.b, align 8, !noalias !5282
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i", %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i
  %i.k = phi i64 [ %.pre.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i ], [ %i.h, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i" ]
  %.merged = phi { i64, i64 } [ %i.f, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i" ]
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !noalias !5281
  ret { i64, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4199ad441967e3a8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5286, !noalias !5287, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5286, !noalias !5287, !noundef !4
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !5286
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd03f059972506b8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcc13148a5272027dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5294
  store ptr %i.d, ptr %i.b, align 8, !noalias !5294
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb6d5ea4173f85fbE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5294
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8, !noalias !5294
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !5294
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.g, align 8, !noalias !5294
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !5294
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.h, align 8, !alias.scope !5293, !noalias !5295
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !5293, !noalias !5295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5296
  store ptr @309, ptr %i.a, align 8, !noalias !5294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5294
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !5294
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !5294
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !5294
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5294
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb6d5ea4173f85fbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0c770b88a03a2bacE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hbdd1b888145b2e22E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc75b951ccc96bebbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5298, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5299, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -4294967295) i64 @"_ZN49_$LT$i32$u20$as$u20$procfs_core..FromStrRadix$GT$14from_str_radix17h4d994d23f49a1a5eE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN49_$LT$u64$u20$as$u20$procfs_core..FromStrRadix$GT$14from_str_radix17hc1268520f81435a1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hb83082f1ca683b9aE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i64 0, -4294967295) i64 @"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = add i32 %2, -37
  %or.cond = icmp ult i32 %i.a, -35
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core3num22from_ascii_radix_panic17hbd13ec38c0e6ecfbE(i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %thread-pre-split [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.e, %bb.e, %bb.c, %.loopexit110, %.loopexit
  %.sroa.12.0.insert.insert = phi i64 [ 1, %bb.c ], [ %i.bc, %.loopexit110 ], [ %i.ao, %.loopexit ], [ 257, %bb.e ], [ 257, %bb.e ]
  ret i64 %.sroa.12.0.insert.insert

bb.e:                                             ; preds = %bb.c
  %i.b = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.f:                                             ; preds = %bb.h
  %i.c = icmp samesign ult i32 %2, 17
  %i.d = icmp ult i64 %1, 8
  %or.cond97 = and i1 %i.d, %i.c
  br i1 %or.cond97, label %.lr.ph138, label %.preheader111

.preheader111:                                    ; preds = %bb.i, %bb.f
  %.sroa.27.0.ph = phi i64 [ %i.q, %bb.i ], [ %1, %bb.f ] ; 2 uses
  %.sroa.03.0.ph = phi ptr [ %i.p, %bb.i ], [ %0, %bb.f ]
  %i.e = icmp samesign ugt i32 %2, 10
  %.not92225 = icmp eq i64 %.sroa.27.0.ph, 0
  br i1 %.not92225, label %.loopexit, label %.lr.ph229

.preheader:                                       ; preds = %bb.i
  %.not93134 = icmp eq i64 %i.q, 0
  br i1 %.not93134, label %.loopexit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.f, %.preheader
  %.sroa.03.1.ph177 = phi ptr [ %i.p, %.preheader ], [ %0, %bb.f ] ; 2 uses
  %.sroa.27.1.ph176 = phi i64 [ %i.q, %.preheader ], [ %1, %bb.f ] ; 2 uses
  %i.f = icmp samesign ugt i32 %2, 10
  br i1 %i.f, label %.lr.ph138.split, label %.lr.ph138.split.us

.lr.ph138.split.us:                               ; preds = %.lr.ph138, %bb.g
  %.sroa.03.1137.us = phi ptr [ %i.m, %bb.g ], [ %.sroa.03.1.ph177, %.lr.ph138 ] ; 2 uses
  %.sroa.27.1136.us = phi i64 [ %i.l, %bb.g ], [ %.sroa.27.1.ph176, %.lr.ph138 ]
  %.sroa.033.1135.us = phi i32 [ %i.n, %bb.g ], [ 0, %.lr.ph138 ]
  %i.g = load i8, ptr %.sroa.03.1137.us, align 1, !noundef !4
  %i.h = zext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = icmp ult i32 %i.i, %2
  br i1 %i.j, label %bb.g, label %.loopexit110

bb.g:                                             ; preds = %.lr.ph138.split.us
  %i.k = mul i32 %.sroa.033.1135.us, %2
  %i.l = add nsw i64 %.sroa.27.1136.us, -1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.1137.us, i64 1
  %i.n = add i32 %i.i, %i.k                       ; 2 uses
  %.not93.us = icmp eq i64 %i.l, 0
  br i1 %.not93.us, label %.loopexit, label %.lr.ph138.split.us

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i8, ptr %0, align 1
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.e
  %i.o = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.e ]
  switch i8 %i.o, label %bb.f [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = add i64 %1, -1                           ; 3 uses
  %i.r = icmp samesign ult i32 %2, 17
  %i.s = icmp ult i64 %1, 9
  %or.cond94 = and i1 %i.s, %i.r
  br i1 %or.cond94, label %.preheader, label %.preheader111

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.u = add i64 %1, -1                           ; 5 uses
  %i.v = icmp samesign ult i32 %2, 17
  %i.w = icmp ult i64 %1, 9
  %or.cond95 = and i1 %i.w, %i.v
  br i1 %or.cond95, label %.preheader114, label %.preheader117

.preheader117:                                    ; preds = %bb.j
end_hunk_0
begin_hunk_1_@"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2d28541b5a905683E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5856
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.i, align 8, !alias.scope !5856, !nonnull !4, !noundef !4
  %i.k = shl nuw nsw i64 %i.c, 2
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5857, !noalias !5856
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5857, !noalias !5856
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 4, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !5857, !noalias !5856
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h05887035d267cc66E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 4, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5856
  %i.m = load i64, ptr %i.b, align 8, !range !16, !noalias !5856, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !14, !noalias !5856, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !5856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5856
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !5856, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5856
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !5856
  store i64 %i.e, ptr %0, align 8, !alias.scope !5856
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h7561c13cd4ee5955E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !15, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 1152921504606846975
  %i.h = icmp ugt i64 %i.f, 9223372036854775804
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !7
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5862
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.i, align 8, !alias.scope !5862, !nonnull !4, !noundef !4
  %i.k = shl nuw nsw i64 %i.c, 3
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5863, !noalias !5862
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5863, !noalias !5862
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 4, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !5863, !noalias !5862
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h05887035d267cc66E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 4, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5862
  %i.m = load i64, ptr %i.b, align 8, !range !16, !noalias !5862, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !14, !noalias !5862, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !5862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5862
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !5862, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5862
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !5862
  store i64 %i.e, ptr %0, align 8, !alias.scope !5862
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h93637df415de0a1bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5868)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !15, !alias.scope !5868, !noundef !4 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %.sroa.012.0.i = select i1 %i.g, i64 8, i64 4
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.012.0.i) ; 3 uses
  %i.h = add nsw i64 %3, -1
  %i.i = add nuw nsw i64 %i.h, %4
  %i.j = sub nsw i64 0, %3
  %i.k = and i64 %i.i, %i.j
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 %.sroa.0.0.i32.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = sub nuw i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !7
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5868
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.q, align 8, !alias.scope !5868, !nonnull !4, !noundef !4
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !5869, !noalias !5868
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5869, !noalias !5868
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !5869, !noalias !5868
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h05887035d267cc66E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5868
  %i.u = load i64, ptr %i.b, align 8, !range !16, !noalias !5868, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !14, !noalias !5868, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5868
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #37
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0a964fc31ed7efeE.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !5868, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5868
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !5868
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !5868
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !noalias !5872, !nonnull !4
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @287, i64 noundef 9), !noalias !5872, !inline_history !0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = load i64, ptr %0, align 8, !range !25, !noundef !4 ; 2 uses
  %i.x = xor i64 %i.w, -9223372036854775808
  %i.y = icmp slt i64 %i.w, 0
  %i.z = select i1 %i.y, i64 %i.x, i64 5
  switch i64 %i.z, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit58
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !14, !noundef !4
  %.not34 = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not34, label %bb.g, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit63

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !14, !noundef !4
  %.not33 = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not33, label %bb.h, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit73

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noundef !4
  %.not32 = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not32, label %bb.i, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit83

bb.f:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !14, !noundef !4
  %.not = icmp eq i64 %i.ah, -9223372036854775808
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit98, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit93

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4199ad441967e3a8E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val52 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val53 = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5893
  store ptr @303, ptr %i.g, align 8
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.5142.0..sroa_idx, align 8
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %.sroa.7143.0..sroa_idx, align 8
  %.sroa.8144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8144.0..sroa_idx, align 8
  %.sroa.10145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10145.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val52, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val53, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !5893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit58: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcc13148a5272027dE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val50 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val51 = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5894
  store ptr @305, ptr %i.f, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.5148.0..sroa_idx, align 8
  %.sroa.7149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %.sroa.7149.0..sroa_idx, align 8
  %.sroa.8150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8150.0..sroa_idx, align 8
  %.sroa.10151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10151.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val50, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !5894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit63: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  store ptr %i.ap, ptr %i.u, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  store ptr %i.u, ptr %i.v, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val48 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val49 = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5895
  store ptr @290, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !5895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

bb.g:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val47 = load ptr, ptr %i.av, align 8
  %.val46 = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val47, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !4, !noalias !5896, !nonnull !4
  %i.ay = tail call noundef zeroext i1 %i.ax(ptr noundef nonnull align 1 %.val46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @288, i64 noundef 17), !noalias !5896, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68: ; preds = %bb.i, %bb.h, %bb.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit98, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit93, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit83, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit73, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit63, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit58, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.au, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit63 ], [ %i.an, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit58 ], [ %i.bf, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit73 ], [ %i.bj, %bb.h ], [ %i.bq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit83 ], [ %i.bu, %bb.i ], [ %i.cc, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit93 ], [ %i.ce, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit98 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.ay, %bb.g ]
  ret i1 %.sroa.0.0.in

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit73: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4
  store ptr %i.ba, ptr %i.s, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.bc, ptr %i.bd, align 8
  store ptr %i.s, ptr %i.t, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.419.0..sroa_idx, align 8
  %.val44 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val45 = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5897
  store ptr @293, ptr %i.d, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.t, ptr %.sroa.7101.0..sroa_idx, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8102.0..sroa_idx, align 8
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10103.0..sroa_idx, align 8
  %i.bf = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val45, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !5897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

bb.h:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val43 = load ptr, ptr %i.bg, align 8
  %.val42 = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val43, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !4, !noalias !5898, !nonnull !4
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull align 1 %.val42, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @291, i64 noundef 14), !noalias !5898, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit83: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  store ptr %i.bl, ptr %i.q, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.423.0..sroa_idx, align 8
  %.val40 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val41 = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5899
  store ptr @296, ptr %i.c, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.7107.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10109.0..sroa_idx, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !5899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

bb.i:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val39 = load ptr, ptr %i.br, align 8
  %.val38 = load ptr, ptr %1, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.val39, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !4, !noalias !5900, !nonnull !4
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 1 %.val38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @294, i64 noundef 15), !noalias !5900, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit93: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ai, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4
  store ptr %i.bw, ptr %i.o, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.by, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.427.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.ca, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd03f059972506b8E", ptr %.sroa.431.0..sroa_idx, align 8
  %.val36 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5901
  store ptr @301, ptr %i.b, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %.sroa.7113.0..sroa_idx, align 8
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.8114.0..sroa_idx, align 8
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10115.0..sroa_idx, align 8
  %i.cc = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val37, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !5901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit98: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ai, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd03f059972506b8E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35 = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5902
  store ptr @298, ptr %i.a, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5136.0..sroa_idx, align 8
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %.sroa.7137.0..sroa_idx, align 8
  %.sroa.8138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8138.0..sroa_idx, align 8
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10139.0..sroa_idx, align 8
  %i.ce = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val35, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit68
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$procfs_core..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc09041431bf3d3ffE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb6d5ea4173f85fbE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %0, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.410.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.g, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5905
  store ptr @309, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN65_$LT$procfs_core..InternalError$u20$as$u20$core..fmt..Display$GT$3fmt17h9f3e8746ff355acbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb6d5ea4173f85fbE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %0, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.410.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.g, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5908
  store ptr @309, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$procfs_core..IoErrorWrapper$u20$as$u20$core..fmt..Display$GT$3fmt17h16909127c64bb0d9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store ptr %i.e, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5911
  store ptr @311, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !25, !noundef !4 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 5
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit", %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noundef !4
  %.not13 = icmp eq i64 %i.h, -9223372036854775808
  br i1 %.not13, label %bb.g, label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noundef !4
  %.not12 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not12, label %bb.g, label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !14, !noundef !4
  %.not11 = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not11, label %bb.g, label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !14, !noundef !4
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %1) #39
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.val = load i64, ptr %.sroa.0.0, align 8, !range !14, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.sroa.0.0.val, 0
  br i1 %switch, label %bb.j, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit"

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.val15 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.val15, i64 noundef %.sroa.0.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit": ; preds = %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he74793d6c11471b0E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !5920
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !5920
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5920, !noundef !4
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !5921
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !5921
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !5922, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5922, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !5922, !noundef !4
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
end_hunk_1
begin_hunk_2_@"_ZN76_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h8a53723d516637f5E":.peel.begin
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5943)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i32 %i.e, 2
  %or.cond.i.i.peel.not = icmp eq i32 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i32 %i.e, 4
  %or.cond.i.i.1.peel.not = icmp eq i32 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i32 %i.e, 8
  %or.cond.i.i.2.peel.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i32 %i.e, 16
  %or.cond.i.i.3.peel.not = icmp eq i32 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i32 %i.e, 32
  %or.cond.i.i.4.peel.not = icmp eq i32 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i32 %i.e, 64
  %or.cond.i.i.5.peel.not = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @409, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @409, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @409, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @409, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @409, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @409, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.m = phi i32 [ -3, %.lr.ph.split.i.i.peel ], [ -5, %.lr.ph.split.i.i.1.peel ], [ -9, %.lr.ph.split.i.i.2.peel ], [ -17, %.lr.ph.split.i.i.3.peel ], [ -33, %.lr.ph.split.i.i.4.peel ], [ -65, %.lr.ph.split.i.i.5.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !5944, !noundef !4
  %i.p = and i32 %i.e, %i.m
  %i.q = load ptr, ptr %.lcssa56.peel, align 8, !noalias !5944, !nonnull !4, !align !6, !noundef !4
  %i.r = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.o)
  br i1 %i.r, label %_ZN8bitflags6parser9to_writer17hf543189297371479E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i32 [ %i.bn, %bb.h ], [ %i.p, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.s = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.t = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.t, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5943
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %.sroa.7.0.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val.i.i = load i32, ptr %i.w, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.x = and i32 %.val.i.i, %i.e
  %i.y = icmp eq i32 %i.x, %.val.i.i
  %i.z = and i32 %.val.i.i, %.sroa.13.0.i
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond.i.i = and i1 %i.aa, %i.y
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %i.v ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val.i.i.1 = load i32, ptr %i.ad, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.ae = and i32 %.val.i.i.1, %i.e
  %i.af = icmp eq i32 %i.ae, %.val.i.i.1
  %i.ag = and i32 %.val.i.i.1, %.sroa.13.0.i
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.i.i.1 = and i1 %i.ah, %i.af
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ac, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %i.ac ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.2 = load i32, ptr %i.ak, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.al = and i32 %.val.i.i.2, %i.e
  %i.am = icmp eq i32 %i.al, %.val.i.i.2
  %i.an = and i32 %.val.i.i.2, %.sroa.13.0.i
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.i.i.2 = and i1 %i.ao, %i.am
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.aj, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %i.aj ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val.i.i.3 = load i32, ptr %i.ar, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.as = and i32 %.val.i.i.3, %i.e
  %i.at = icmp eq i32 %i.as, %.val.i.i.3
  %i.au = and i32 %.val.i.i.3, %.sroa.13.0.i
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i.i.3 = and i1 %i.av, %i.at
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.aq, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %i.aq ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.4 = load i32, ptr %i.ay, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.az = and i32 %.val.i.i.4, %i.e
  %i.ba = icmp eq i32 %i.az, %.val.i.i.4
  %i.bb = and i32 %.val.i.i.4, %.sroa.13.0.i
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond.i.i.4 = and i1 %i.bc, %i.ba
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr @409, i64 %i.ax ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.5 = load i32, ptr %i.bf, align 8, !noalias !5944, !noundef !4 ; 4 uses
  %i.bg = and i32 %.val.i.i.5, %i.e
  %i.bh = icmp eq i32 %i.bg, %.val.i.i.5
  %i.bi = and i32 %.val.i.i.5, %.sroa.13.0.i
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond.i.i.5 = and i1 %i.bj, %i.bh
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i32 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !5944, !noundef !4
  %i.bm = xor i32 %.val.i.i.lcssa, -1
  %i.bn = and i32 %.sroa.13.0.i, %i.bm
  %i.bo = load ptr, ptr %.lcssa56, align 8, !noalias !5944, !nonnull !4, !align !6, !noundef !4
  %i.bp = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bp, label %_ZN8bitflags6parser9to_writer17hf543189297371479E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i32 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5943
  store i32 %.sroa.13.0.i65, ptr %i.d, align 4, !noalias !5943
  %.not.i = icmp eq i32 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.br = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5943
  store ptr %i.d, ptr %i.c, align 8, !noalias !5946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5946
  store ptr %i.c, ptr %i.b, align 8, !noalias !5946
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5946
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !5947, !noalias !5948
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !5947, !noalias !5948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5949
  store ptr @313, ptr %i.a, align 8, !noalias !5946
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !5946
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5946
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5946
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !5946
  %i.bt = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5943
  br i1 %i.bt, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5943
  br label %_ZN8bitflags6parser9to_writer17hf543189297371479E.exit

bb.h:                                             ; preds = %bb.b
  %i.bu = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bl)
  br i1 %i.bu, label %_ZN8bitflags6parser9to_writer17hf543189297371479E.exit, label %.peel.newph, !llvm.loop !5942

_ZN8bitflags6parser9to_writer17hf543189297371479E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h8dbee7b892e46ab0E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5963)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i32 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 15
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5963
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @427, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i32, ptr %i.k, align 8, !noalias !5964, !noundef !4 ; 4 uses
  %i.l = and i32 %.val.i.i, %i.e
  %i.m = icmp eq i32 %i.l, %.val.i.i
  %i.n = and i32 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 15
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !5964, !noundef !4
  %i.r = xor i32 %.val.i.i, -1
  %i.s = and i32 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !5964, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5963
  store i32 %.sroa.13.0.i, ptr %i.d, align 4, !noalias !5963
  %.not.i = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5963
  store ptr %i.d, ptr %i.c, align 8, !noalias !5966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5966
  store ptr %i.c, ptr %i.b, align 8, !noalias !5966
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5966
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !5967, !noalias !5968
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !5967, !noalias !5968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5969
  store ptr @313, ptr %i.a, align 8, !noalias !5966
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !5966
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5966
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5966
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !5966
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5963
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5963
  br label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5978
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !5978 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !5979
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !5980
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0d6d16e9cac358a0E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h38f1cc12d7c92be1E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h5a4b0025ca75098eE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h9560621536337938E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str16strip_first_last17h128881958b492dd2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %2, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.c = load i8, ptr %1, align 1, !noalias !5985, !noundef !4 ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i": ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = icmp samesign ugt i8 %i.c, -33
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"
  %i.h = icmp samesign ugt i8 %i.c, -17
  %spec.select.v = select i1 %i.h, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i", %bb.d
  %.sroa.0.0 = phi ptr [ %i.e, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i" ], [ %i.g, %bb.d ], [ %spec.select, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i" ] ; 5 uses
  %i.i = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %i.i, label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !5986, !noundef !4
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i": ; preds = %bb.e
  %i.m = icmp ne ptr %.sroa.0.0, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !5986, !noundef !4
  %i.p = icmp slt i8 %i.o, -64
  br i1 %i.p, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i", label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i"
  %i.q = icmp ne ptr %.sroa.0.0, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !5986, !noundef !4
  %i.t = icmp slt i8 %i.s, -64
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -4
  %spec.select8 = select i1 %i.t, ptr %i.u, ptr %i.r
  br label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit

_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit: ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i", %bb.e, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit
  %.sroa.10.2 = phi ptr [ %i.b, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit ], [ %i.j, %bb.e ], [ %spec.select8, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i" ], [ %i.n, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i" ]
  %i.v = ptrtoint ptr %.sroa.10.2 to i64
  %i.w = ptrtoint ptr %.sroa.0.0 to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8c85920c345884f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
end_hunk_2
begin_hunk_3_@"_ZN80_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h5a6af0d8cd8ebf3fE":.peel.begin
  %i.h = and i32 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i32 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i32 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i32 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i32 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i32 %i.e, 16
  %or.cond.i.i.4.peel.not = icmp eq i32 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i32 %i.e, 32
  %or.cond.i.i.5.peel.not = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @148, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @148, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @148, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @148, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @148, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @148, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.m = phi i32 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ], [ -17, %.lr.ph.split.i.i.4.peel ], [ -33, %.lr.ph.split.i.i.5.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !6259, !noundef !4
  %i.p = and i32 %i.e, %i.m
  %i.q = load ptr, ptr %.lcssa56.peel, align 8, !noalias !6259, !nonnull !4, !align !6, !noundef !4
  %i.r = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.o)
  br i1 %i.r, label %_ZN8bitflags6parser9to_writer17h38f6e55b280cc9ddE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i32 [ %i.bu, %bb.h ], [ %i.p, %bb.a ] ; 17 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 9 uses
  %i.s = icmp ult i64 %.sroa.7.0.i, 7
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.t = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.t, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6258
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %.sroa.7.0.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val.i.i = load i32, ptr %i.w, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.x = and i32 %.val.i.i, %i.e
  %i.y = icmp eq i32 %i.x, %.val.i.i
  %i.z = and i32 %.val.i.i, %.sroa.13.0.i
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond.i.i = and i1 %i.aa, %i.y
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.v ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val.i.i.1 = load i32, ptr %i.ad, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.ae = and i32 %.val.i.i.1, %i.e
  %i.af = icmp eq i32 %i.ae, %.val.i.i.1
  %i.ag = and i32 %.val.i.i.1, %.sroa.13.0.i
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.i.i.1 = and i1 %i.ah, %i.af
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ac, 7
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.ac ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.2 = load i32, ptr %i.ak, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.al = and i32 %.val.i.i.2, %i.e
  %i.am = icmp eq i32 %i.al, %.val.i.i.2
  %i.an = and i32 %.val.i.i.2, %.sroa.13.0.i
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.i.i.2 = and i1 %i.ao, %i.am
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.aj, 7
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.aj ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val.i.i.3 = load i32, ptr %i.ar, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.as = and i32 %.val.i.i.3, %i.e
  %i.at = icmp eq i32 %i.as, %.val.i.i.3
  %i.au = and i32 %.val.i.i.3, %.sroa.13.0.i
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i.i.3 = and i1 %i.av, %i.at
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.aq, 7
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.aq ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.4 = load i32, ptr %i.ay, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.az = and i32 %.val.i.i.4, %i.e
  %i.ba = icmp eq i32 %i.az, %.val.i.i.4
  %i.bb = and i32 %.val.i.i.4, %.sroa.13.0.i
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond.i.i.4 = and i1 %i.bc, %i.ba
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 7
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.ax ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.5 = load i32, ptr %i.bf, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.bg = and i32 %.val.i.i.5, %i.e
  %i.bh = icmp eq i32 %i.bg, %.val.i.i.5
  %i.bi = and i32 %.val.i.i.5, %.sroa.13.0.i
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond.i.i.5 = and i1 %i.bj, %i.bh
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.be, 7
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr @148, i64 %i.be ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.7.0.i, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val.i.i.6 = load i32, ptr %i.bm, align 8, !noalias !6259, !noundef !4 ; 4 uses
  %i.bn = and i32 %.val.i.i.6, %i.e
  %i.bo = icmp eq i32 %i.bn, %.val.i.i.6
  %i.bp = and i32 %.val.i.i.6, %.sroa.13.0.i
  %i.bq = icmp ne i32 %i.bp, 0
  %or.cond.i.i.6 = and i1 %i.bq, %i.bo
  br i1 %or.cond.i.i.6, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ], [ %i.bk, %.lr.ph.split.i.i.6 ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ], [ %i.bl, %.lr.ph.split.i.i.6 ]
  %.val.i.i.lcssa = phi i32 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ], [ %.val.i.i.6, %.lr.ph.split.i.i.6 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !6259, !noundef !4
  %i.bt = xor i32 %.val.i.i.lcssa, -1
  %i.bu = and i32 %.sroa.13.0.i, %i.bt
  %i.bv = load ptr, ptr %.lcssa56, align 8, !noalias !6259, !nonnull !4, !align !6, !noundef !4
  %i.bw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bw, label %_ZN8bitflags6parser9to_writer17h38f6e55b280cc9ddE.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4, %.backedge.i.i.5
  %.sroa.13.0.i65 = phi i32 [ %.sroa.13.0.i, %.backedge.i.i.5 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.6 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.5 ], [ false, %.lr.ph.split.i.i.6 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.backedge.i.i.4 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6258
  store i32 %.sroa.13.0.i65, ptr %i.d, align 4, !noalias !6258
  %.not.i = icmp eq i32 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.by = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6258
  store ptr %i.d, ptr %i.c, align 8, !noalias !6261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6261
  store ptr %i.c, ptr %i.b, align 8, !noalias !6261
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6261
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !6262, !noalias !6263
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6262, !noalias !6263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6264
  store ptr @313, ptr %i.a, align 8, !noalias !6261
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6261
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6261
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6261
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6261
  %i.ca = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6258
  br i1 %i.ca, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6258
  br label %_ZN8bitflags6parser9to_writer17h38f6e55b280cc9ddE.exit

bb.h:                                             ; preds = %bb.b
  %i.cb = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bs)
  br i1 %i.cb, label %_ZN8bitflags6parser9to_writer17h38f6e55b280cc9ddE.exit, label %.peel.newph, !llvm.loop !6257

_ZN8bitflags6parser9to_writer17h38f6e55b280cc9ddE.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hfc0c2d2e6b0d5cdcE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6279)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i32 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i32 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i32 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i32 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i32 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i32 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i32 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i32 %i.e, 16
  %or.cond.i.i.4.peel.not = icmp eq i32 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i32 %i.e, 32
  %or.cond.i.i.5.peel.not = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.lr.ph.split.i.i.6.peel, label %bb.a

.lr.ph.split.i.i.6.peel:                          ; preds = %.lr.ph.split.i.i.5.peel
  %i.m = and i32 %i.e, 64
  %or.cond.i.i.6.peel.not = icmp eq i32 %i.m, 0
  br i1 %or.cond.i.i.6.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.6.peel, %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @346, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @346, i64 144), %.lr.ph.split.i.i.6.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ], [ 7, %.lr.ph.split.i.i.6.peel ]
  %i.n = phi i32 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ], [ -17, %.lr.ph.split.i.i.4.peel ], [ -33, %.lr.ph.split.i.i.5.peel ], [ -65, %.lr.ph.split.i.i.6.peel ]
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !6280, !noundef !4
  %i.q = and i32 %i.e, %i.n
  %i.r = load ptr, ptr %.lcssa56.peel, align 8, !noalias !6280, !nonnull !4, !align !6, !noundef !4
  %i.s = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.p)
  br i1 %i.s, label %_ZN8bitflags6parser9to_writer17h228bd9137bda3392E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i32 [ %i.bv, %bb.h ], [ %i.q, %bb.a ] ; 17 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 9 uses
  %i.t = icmp ult i64 %.sroa.7.0.i, 7
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.u = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.u, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6279
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %.sroa.7.0.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val.i.i = load i32, ptr %i.x, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.y = and i32 %.val.i.i, %i.e
  %i.z = icmp eq i32 %i.y, %.val.i.i
  %i.aa = and i32 %.val.i.i, %.sroa.13.0.i
  %i.ab = icmp ne i32 %i.aa, 0
  %or.cond.i.i = and i1 %i.ab, %i.z
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.w, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.w ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val.i.i.1 = load i32, ptr %i.ae, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.af = and i32 %.val.i.i.1, %i.e
  %i.ag = icmp eq i32 %i.af, %.val.i.i.1
  %i.ah = and i32 %.val.i.i.1, %.sroa.13.0.i
  %i.ai = icmp ne i32 %i.ah, 0
  %or.cond.i.i.1 = and i1 %i.ai, %i.ag
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, 7
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.ad ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val.i.i.2 = load i32, ptr %i.al, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.am = and i32 %.val.i.i.2, %i.e
  %i.an = icmp eq i32 %i.am, %.val.i.i.2
  %i.ao = and i32 %.val.i.i.2, %.sroa.13.0.i
  %i.ap = icmp ne i32 %i.ao, 0
  %or.cond.i.i.2 = and i1 %i.ap, %i.an
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ak, 7
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.ak ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val.i.i.3 = load i32, ptr %i.as, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.at = and i32 %.val.i.i.3, %i.e
  %i.au = icmp eq i32 %i.at, %.val.i.i.3
  %i.av = and i32 %.val.i.i.3, %.sroa.13.0.i
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond.i.i.3 = and i1 %i.aw, %i.au
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.ar, 7
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.ar ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val.i.i.4 = load i32, ptr %i.az, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.ba = and i32 %.val.i.i.4, %i.e
  %i.bb = icmp eq i32 %i.ba, %.val.i.i.4
  %i.bc = and i32 %.val.i.i.4, %.sroa.13.0.i
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond.i.i.4 = and i1 %i.bd, %i.bb
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ay, 7
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.be = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.ay ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.val.i.i.5 = load i32, ptr %i.bg, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.bh = and i32 %.val.i.i.5, %i.e
  %i.bi = icmp eq i32 %i.bh, %.val.i.i.5
  %i.bj = and i32 %.val.i.i.5, %.sroa.13.0.i
  %i.bk = icmp ne i32 %i.bj, 0
  %or.cond.i.i.5 = and i1 %i.bk, %i.bi
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.bf, 7
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr @346, i64 %i.bf ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.7.0.i, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val.i.i.6 = load i32, ptr %i.bn, align 8, !noalias !6280, !noundef !4 ; 4 uses
  %i.bo = and i32 %.val.i.i.6, %i.e
  %i.bp = icmp eq i32 %i.bo, %.val.i.i.6
  %i.bq = and i32 %.val.i.i.6, %.sroa.13.0.i
  %i.br = icmp ne i32 %i.bq, 0
  %or.cond.i.i.6 = and i1 %i.br, %i.bp
  br i1 %or.cond.i.i.6, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ], [ %i.bl, %.lr.ph.split.i.i.6 ] ; 2 uses
  %.lcssa = phi i64 [ %i.w, %.lr.ph.split.i.i ], [ %i.ad, %.lr.ph.split.i.i.1 ], [ %i.ak, %.lr.ph.split.i.i.2 ], [ %i.ar, %.lr.ph.split.i.i.3 ], [ %i.ay, %.lr.ph.split.i.i.4 ], [ %i.bf, %.lr.ph.split.i.i.5 ], [ %i.bm, %.lr.ph.split.i.i.6 ]
  %.val.i.i.lcssa = phi i32 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ], [ %.val.i.i.6, %.lr.ph.split.i.i.6 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !6280, !noundef !4
  %i.bu = xor i32 %.val.i.i.lcssa, -1
  %i.bv = and i32 %.sroa.13.0.i, %i.bu
  %i.bw = load ptr, ptr %.lcssa56, align 8, !noalias !6280, !nonnull !4, !align !6, !noundef !4
  %i.bx = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bx, label %_ZN8bitflags6parser9to_writer17h228bd9137bda3392E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.6.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4, %.backedge.i.i.5
  %.sroa.13.0.i65 = phi i32 [ %.sroa.13.0.i, %.backedge.i.i.5 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.6 ], [ %i.e, %.lr.ph.split.i.i.6.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.5 ], [ false, %.lr.ph.split.i.i.6 ], [ true, %.lr.ph.split.i.i.6.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.backedge.i.i.4 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6279
  store i32 %.sroa.13.0.i65, ptr %i.d, align 4, !noalias !6279
  %.not.i = icmp eq i32 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.by, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bz = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6279
  store ptr %i.d, ptr %i.c, align 8, !noalias !6282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6282
  store ptr %i.c, ptr %i.b, align 8, !noalias !6282
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6282
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !6283, !noalias !6284
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6283, !noalias !6284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6285
  store ptr @313, ptr %i.a, align 8, !noalias !6282
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6282
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6282
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6282
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6282
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6279
  br i1 %i.cb, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6279
  br label %_ZN8bitflags6parser9to_writer17h228bd9137bda3392E.exit

bb.h:                                             ; preds = %bb.b
  %i.cc = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bw, i64 noundef %i.bt)
  br i1 %i.cc, label %_ZN8bitflags6parser9to_writer17h228bd9137bda3392E.exit, label %.peel.newph, !llvm.loop !6278

_ZN8bitflags6parser9to_writer17h228bd9137bda3392E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h46f1d8296b5bbc61E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6299)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i32 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 33
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6299
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @388, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i32, ptr %i.k, align 8, !noalias !6300, !noundef !4 ; 4 uses
  %i.l = and i32 %.val.i.i, %i.e
  %i.m = icmp eq i32 %i.l, %.val.i.i
  %i.n = and i32 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 33
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6300, !noundef !4
  %i.r = xor i32 %.val.i.i, -1
  %i.s = and i32 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !6300, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6299
  store i32 %.sroa.13.0.i, ptr %i.d, align 4, !noalias !6299
  %.not.i = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6299
  store ptr %i.d, ptr %i.c, align 8, !noalias !6302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6302
  store ptr %i.c, ptr %i.b, align 8, !noalias !6302
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6302
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6303, !noalias !6304
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6303, !noalias !6304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6305
  store ptr @313, ptr %i.a, align 8, !noalias !6302
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6302
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6302
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6302
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6302
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6299
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6299
  br label %_ZN8bitflags6parser9to_writer17h376f70d868f5c78aE.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h376f70d868f5c78aE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h376f70d868f5c78aE.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h376f70d868f5c78aE.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h5d4e60842d45ad50E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !4    ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6320)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.1.peel

.lr.ph.split.i.i.1.peel:                          ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.4.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.k = and i8 %i.e, 16
  %or.cond.i.i.5.peel.not = icmp eq i8 %i.k, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel
  %.lcssa56.peel = phi ptr [ getelementptr inbounds nuw (i8, ptr @392, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @392, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @392, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @392, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @392, i64 96), %.lr.ph.split.i.i.4.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 6, %.lr.ph.split.i.i.5.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ]
  %i.l = phi i8 [ -17, %.lr.ph.split.i.i.5.peel ], [ -2, %.lr.ph.split.i.i.1.peel ], [ -3, %.lr.ph.split.i.i.2.peel ], [ -5, %.lr.ph.split.i.i.3.peel ], [ -9, %.lr.ph.split.i.i.4.peel ]
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !6321, !noundef !4
  %i.o = and i8 %i.e, %i.l
  %i.p = load ptr, ptr %.lcssa56.peel, align 8, !noalias !6321, !nonnull !4, !align !6, !noundef !4
  %i.q = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %i.n)
  br i1 %i.q, label %_ZN8bitflags6parser9to_writer17h594d81afd1a1ecbbE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.bm, %bb.h ], [ %i.o, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.r = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.s = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.s, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6320
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %.sroa.7.0.i ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i.i = load i8, ptr %i.v, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.w = and i8 %.val.i.i, %i.e
  %i.x = icmp eq i8 %i.w, %.val.i.i
  %i.y = and i8 %.val.i.i, %.sroa.13.0.i
  %i.z = icmp ne i8 %i.y, 0
  %or.cond.i.i = and i1 %i.z, %i.x
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %i.u ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val.i.i.1 = load i8, ptr %i.ac, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.ad = and i8 %.val.i.i.1, %i.e
  %i.ae = icmp eq i8 %i.ad, %.val.i.i.1
  %i.af = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ag = icmp ne i8 %i.af, 0
  %or.cond.i.i.1 = and i1 %i.ag, %i.ae
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ab, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %i.ab ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val.i.i.2 = load i8, ptr %i.aj, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.ak = and i8 %.val.i.i.2, %i.e
  %i.al = icmp eq i8 %i.ak, %.val.i.i.2
  %i.am = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.an = icmp ne i8 %i.am, 0
  %or.cond.i.i.2 = and i1 %i.an, %i.al
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ai, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %i.ai ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.val.i.i.3 = load i8, ptr %i.aq, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.ar = and i8 %.val.i.i.3, %i.e
  %i.as = icmp eq i8 %i.ar, %.val.i.i.3
  %i.at = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.au = icmp ne i8 %i.at, 0
  %or.cond.i.i.3 = and i1 %i.au, %i.as
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.ap, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.av = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %i.ap ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val.i.i.4 = load i8, ptr %i.ax, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.ay = and i8 %.val.i.i.4, %i.e
  %i.az = icmp eq i8 %i.ay, %.val.i.i.4
  %i.ba = and i8 %.val.i.i.4, %.sroa.13.0.i
  %i.bb = icmp ne i8 %i.ba, 0
  %or.cond.i.i.4 = and i1 %i.bb, %i.az
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.aw, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr @392, i64 %i.aw ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.val.i.i.5 = load i8, ptr %i.be, align 8, !noalias !6321, !noundef !4 ; 4 uses
  %i.bf = and i8 %.val.i.i.5, %i.e
  %i.bg = icmp eq i8 %i.bf, %.val.i.i.5
  %i.bh = and i8 %.val.i.i.5, %.sroa.13.0.i
  %i.bi = icmp ne i8 %i.bh, 0
  %or.cond.i.i.5 = and i1 %i.bi, %i.bg
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.t, %.lr.ph.split.i.i ], [ %i.aa, %.lr.ph.split.i.i.1 ], [ %i.ah, %.lr.ph.split.i.i.2 ], [ %i.ao, %.lr.ph.split.i.i.3 ], [ %i.av, %.lr.ph.split.i.i.4 ], [ %i.bc, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !6321, !noundef !4
  %i.bl = xor i8 %.val.i.i.lcssa, -1
  %i.bm = and i8 %.sroa.13.0.i, %i.bl
  %i.bn = load ptr, ptr %.lcssa56, align 8, !noalias !6321, !nonnull !4, !align !6, !noundef !4
  %i.bo = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bo, label %_ZN8bitflags6parser9to_writer17h594d81afd1a1ecbbE.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6320
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !6320
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bp, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6322)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6320
  store ptr %i.d, ptr %i.c, align 8, !noalias !6323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6323
  store ptr %i.c, ptr %i.b, align 8, !noalias !6323
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hbdd1b888145b2e22E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6323
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !6324, !noalias !6325
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6324, !noalias !6325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6326
  store ptr @313, ptr %i.a, align 8, !noalias !6323
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6323
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6323
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6323
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6323
  %i.bs = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6320
  br i1 %i.bs, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6320
  br label %_ZN8bitflags6parser9to_writer17h594d81afd1a1ecbbE.exit

bb.h:                                             ; preds = %bb.b
  %i.bt = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bk)
  br i1 %i.bt, label %_ZN8bitflags6parser9to_writer17h594d81afd1a1ecbbE.exit, label %.peel.newph, !llvm.loop !6319

_ZN8bitflags6parser9to_writer17h594d81afd1a1ecbbE.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h6f779e1f50df1ce0E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6340)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i32 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 31
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6340
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @192, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i32, ptr %i.k, align 8, !noalias !6341, !noundef !4 ; 4 uses
  %i.l = and i32 %.val.i.i, %i.e
  %i.m = icmp eq i32 %i.l, %.val.i.i
  %i.n = and i32 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 31
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6341, !noundef !4
  %i.r = xor i32 %.val.i.i, -1
  %i.s = and i32 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !6341, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6340
  store i32 %.sroa.13.0.i, ptr %i.d, align 4, !noalias !6340
  %.not.i = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6340
  store ptr %i.d, ptr %i.c, align 8, !noalias !6343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6343
  store ptr %i.c, ptr %i.b, align 8, !noalias !6343
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6343
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6344, !noalias !6345
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6344, !noalias !6345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6346
  store ptr @313, ptr %i.a, align 8, !noalias !6343
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6343
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6343
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6343
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6343
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6340
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6340
  br label %_ZN8bitflags6parser9to_writer17h16e7e37dd6f8e1cbE.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h16e7e37dd6f8e1cbE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h16e7e37dd6f8e1cbE.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h16e7e37dd6f8e1cbE.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hc69ecd45faf1871aE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i32 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 9
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6360
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @402, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i32, ptr %i.k, align 8, !noalias !6361, !noundef !4 ; 4 uses
  %i.l = and i32 %.val.i.i, %i.e
  %i.m = icmp eq i32 %i.l, %.val.i.i
  %i.n = and i32 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 9
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6361, !noundef !4
  %i.r = xor i32 %.val.i.i, -1
  %i.s = and i32 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !6361, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6360
  store i32 %.sroa.13.0.i, ptr %i.d, align 4, !noalias !6360
  %.not.i = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6360
  store ptr %i.d, ptr %i.c, align 8, !noalias !6363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6363
  store ptr %i.c, ptr %i.b, align 8, !noalias !6363
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6363
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6364, !noalias !6365
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6364, !noalias !6365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6366
  store ptr @313, ptr %i.a, align 8, !noalias !6363
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6363
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6363
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6363
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6363
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6360
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6360
  br label %_ZN8bitflags6parser9to_writer17h1aa969df5e0d708fE.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h1aa969df5e0d708fE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h1aa969df5e0d708fE.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h1aa969df5e0d708fE.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$procfs_core..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h2c2c17f270c0127cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN11procfs_core3sys6kernel7Version8from_str17h9872cb7e42a5d291E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h21b970e0ad03c93fE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hbfbdb28e72d348f2E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h09eaa38936a8a13dE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17haff0d4c9131ad82fE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..kpageflags.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17he9b19ca0101550beE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN83_$LT$procfs_core..kpageflags.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h4903f3d93ab2441dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @330, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6370
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..kpageflags.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h03442628fb065a30E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u64$GT$3fmt17hf8f3888457998b8bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h33cf4e68ee08ad3aE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h6586413a84aebf27E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h855eeefe6660859eE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hac70a306701acacaE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h10933ef54f595045E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h5ef03f15ac19d8c7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17ha489098c8825ac56E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hf218d3fcc03f419aE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$procfs_core..kpageflags.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h63fc2dc7fb2838a4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u64$GT$3fmt17hfc625514a71e025dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef range(i8 0, 32) i8 @"_ZN82_$LT$procfs_core..process..MMPermissions$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hc8cc44ead88240d3E"(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not11.i = icmp samesign eq i64 %1, 0
  br i1 %.not11.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hdde8cf1861955502E.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i64 %1, 32
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %1, 16
  %n.vec = and i64 %1, -32                        ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi2 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !6376 ; 5 uses
  %wide.load3 = load <16 x i8>, ptr %i.d, align 1, !noalias !6376 ; 5 uses
  %i.e = icmp eq <16 x i8> %wide.load, splat (i8 114)
  %i.f = icmp eq <16 x i8> %wide.load3, splat (i8 114)
  %i.g = icmp eq <16 x i8> %wide.load, splat (i8 119)
  %i.h = icmp eq <16 x i8> %wide.load3, splat (i8 119)
  %i.i = icmp eq <16 x i8> %wide.load, splat (i8 120)
  %i.j = icmp eq <16 x i8> %wide.load3, splat (i8 120)
  %i.k = icmp eq <16 x i8> %wide.load, splat (i8 115)
  %i.l = icmp eq <16 x i8> %wide.load3, splat (i8 115)
  %i.m = icmp eq <16 x i8> %wide.load, splat (i8 112)
  %i.n = icmp eq <16 x i8> %wide.load3, splat (i8 112)
  %predphi = select <16 x i1> %i.m, <16 x i8> splat (i8 16), <16 x i8> zeroinitializer
  %predphi4 = select <16 x i1> %i.k, <16 x i8> splat (i8 8), <16 x i8> %predphi
  %predphi5 = select <16 x i1> %i.i, <16 x i8> splat (i8 4), <16 x i8> %predphi4
  %predphi6 = select <16 x i1> %i.g, <16 x i8> splat (i8 2), <16 x i8> %predphi5
  %predphi7 = select <16 x i1> %i.e, <16 x i8> splat (i8 1), <16 x i8> %predphi6
  %predphi8 = select <16 x i1> %i.n, <16 x i8> splat (i8 16), <16 x i8> zeroinitializer
  %predphi9 = select <16 x i1> %i.l, <16 x i8> splat (i8 8), <16 x i8> %predphi8
  %predphi10 = select <16 x i1> %i.j, <16 x i8> splat (i8 4), <16 x i8> %predphi9
  %predphi11 = select <16 x i1> %i.h, <16 x i8> splat (i8 2), <16 x i8> %predphi10
  %predphi12 = select <16 x i1> %i.f, <16 x i8> splat (i8 1), <16 x i8> %predphi11
  %i.o = or <16 x i8> %predphi7, %vec.phi         ; 2 uses
  %i.p = or <16 x i8> %predphi12, %vec.phi2       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !6373

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.p, %i.o
  %i.r = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN4core4iter6traits8iterator8Iterator4fold17hdde8cf1861955502E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.r, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %1, -16                      ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %n.vec13
  %i.t = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi15 = phi <16 x i8> [ %i.t, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %next.gep16 = getelementptr i8, ptr %0, i64 %index14
  %wide.load17 = load <16 x i8>, ptr %next.gep16, align 1, !noalias !6376 ; 5 uses
  %i.u = icmp eq <16 x i8> %wide.load17, splat (i8 114)
  %i.v = icmp eq <16 x i8> %wide.load17, splat (i8 119)
  %i.w = icmp eq <16 x i8> %wide.load17, splat (i8 120)
  %i.x = icmp eq <16 x i8> %wide.load17, splat (i8 115)
  %i.y = icmp eq <16 x i8> %wide.load17, splat (i8 112)
  %predphi18 = select <16 x i1> %i.y, <16 x i8> splat (i8 16), <16 x i8> zeroinitializer
  %predphi19 = select <16 x i1> %i.x, <16 x i8> splat (i8 8), <16 x i8> %predphi18
  %predphi20 = select <16 x i1> %i.w, <16 x i8> splat (i8 4), <16 x i8> %predphi19
  %predphi21 = select <16 x i1> %i.v, <16 x i8> splat (i8 2), <16 x i8> %predphi20
  %predphi22 = select <16 x i1> %i.u, <16 x i8> splat (i8 1), <16 x i8> %predphi21
  %i.z = or <16 x i8> %predphi22, %vec.phi15      ; 2 uses
  %index.next23 = add nuw i64 %index14, 16        ; 2 uses
  %i.aa = icmp eq i64 %index.next23, %n.vec13
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6374

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %i.z) ; 2 uses
  %cmp.n24 = icmp eq i64 %1, %n.vec13
  br i1 %cmp.n24, label %_ZN4core4iter6traits8iterator8Iterator4fold17hdde8cf1861955502E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.013.i.ph = phi i8 [ 0, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.sroa.0.0612.i.ph = phi ptr [ %0, %iter.check ], [ %i.c, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i"
  %.sroa.0.013.i = phi i8 [ %.sroa.0.0.i.i.i.i, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i" ], [ %.sroa.0.013.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.0612.i = phi ptr [ %i.ac, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i" ], [ %.sroa.0.0612.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0612.i, align 1, !noalias !6376, !noundef !4
  %switch.tableidx = add i8 %i.ad, -112           ; 2 uses
  %i.ae = icmp ult i8 %switch.tableidx, 9
  br i1 %i.ae, label %switch.lookup, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i"

switch.lookup:                                    ; preds = %.lr.ph.i
  %i.af = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$procfs_core..process..MMPermissions$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hc8cc44ead88240d3E", i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ag = or i8 %switch.load, %.sroa.0.013.i
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i": ; preds = %switch.lookup, %.lr.ph.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.013.i, %.lr.ph.i ], [ %i.ag, %switch.lookup ] ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.a
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hdde8cf1861955502E.exit, label %.lr.ph.i, !llvm.loop !6375

_ZN4core4iter6traits8iterator8Iterator4fold17hdde8cf1861955502E.exit: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i", %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.ab, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %.sroa.0.0.i.i.i.i, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h46a6df8ba117ffe8E.exit.i" ]
  ret i8 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$procfs_core..process..clear_refs..ClearRefs$u20$as$u20$core..fmt..Display$GT$3fmt17h05d1e4a364d1451aE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i8, ptr %0, align 1, !range !6379, !noundef !4
  %i.e = zext nneg i8 %i.d to i32
  store i32 %i.e, ptr %i.b, align 4
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6380
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$procfs_core..sys..kernel..BuildInfo$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1144fbd1e82129f9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [48 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !8, !noalias !6476, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i", !prof !9

._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !6477
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !6477
  br label %.lr.ph.split.i.i

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i": ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !6478
  store i8 1, ptr %i.j, align 8, !noalias !6478
  br label %.lr.ph.split.i.i

.loopexit133:                                     ; preds = %.split.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i58
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit138, %bb.h, %bb.p, %bb.q, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split.i.i:                                 ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i ], [ %i.o, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i" ]
  %i.q = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i.i.i ], [ %i.n, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i.i.i" ] ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.i, align 8, !noalias !6477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 %i.q, ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5112.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx18, align 8
  store i64 0, ptr %i.c, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %2, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store i32 32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 32, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 1, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 1, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %rhsc240 = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %i.s = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.af, %bb.d ] ; 6 uses
  %i.t = sub nuw i64 %2, %i.s                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.v = icmp ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %2, %i.s
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !6479, !noalias !6480, !noundef !4
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.t
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.aa = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.t)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc47:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc47
  %.sroa.4.0.i27.i.i = phi i64 [ %i.ac, %.noexc47 ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ae = add i64 %i.s, 1
  %i.af = add i64 %i.ae, %.sroa.4.0.i27.i.i       ; 7 uses
  %.not21.i.i = icmp ugt i64 %i.af, %2
  %i.ag = add i64 %i.s, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.ag, %2
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %bb.b

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.ah = add i64 %i.s, %.sroa.4.0.i27.i.i        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %lhsc = load i8, ptr %i.ai, align 1
  %i.aj = icmp eq i8 %lhsc, %rhsc240
  br i1 %i.aj, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.d

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.e
  store i64 %i.af, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 %i.af, ptr %i.c, align 8
  br label %bb.f

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i": ; preds = %bb.d, %.preheader.i.i.i, %.noexc47, %bb.c
  %.promoted174212 = phi i64 [ %2, %bb.c ], [ %2, %.preheader.i.i.i ], [ %2, %.noexc47 ], [ %i.af, %bb.d ] ; 2 uses
  store i64 %.promoted174212, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.promoted174 = phi i64 [ %.promoted174212, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.af, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ]
  %.promoted170 = phi i64 [ 0, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.af, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ]
  %.sroa.7.0..sroa_idx.promoted = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ false, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ]
  %.sroa.4.1.i = phi i64 [ %2, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.ah, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ] ; 2 uses
  %.not.i.i48 = icmp eq i64 %.sroa.4.1.i, 0
  br i1 %.not.i.i48, label %bb.ao, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i": ; preds = %bb.f
  %rhsc = load i8, ptr %1, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.ak = icmp eq i8 %rhsc.fr, 35
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  br i1 %i.ak, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6481)
  %gepdiff = add i64 %.sroa.4.1.i, -1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  %.not = icmp eq i64 %gepdiff, 0
  br i1 %.not, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h608205da508a9f10E.exit", label %bb.h, !prof !9

end_hunk_3
begin_hunk_4_@"_ZN82_$LT$procfs_core..sys..kernel..BuildInfo$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h1144fbd1e82129f9E":bb.a
  %i.hn = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i, i64 %i.hm ; 2 uses
  %i.ho = add i64 %.sroa.109.015.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.hp, align 8, !noalias !6520 ; 2 uses
  %i.hq = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.hq, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i.i"
  %i.hr = getelementptr i8, ptr %i.hn, i64 -16
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.hr, align 8, !noalias !6520, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !6520
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i.i": ; preds = %bb.as, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i.i"
  %i.hs = icmp eq i64 %i.ho, 0
  br i1 %i.hs, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i.i, label %bb.ar

_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i.i", %bb.ap
  %i.ht = mul i64 %i.gu, 24
  %i.hu = icmp slt i64 %i.gu, 768614336404564650
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = and i64 %i.ht, -16                      ; 2 uses
  %i.hw = add i64 %i.hv, 32                       ; 2 uses
  %i.hx = add nsw i64 %i.gu, 17
  %i.hy = add i64 %i.hx, %i.hw                    ; 4 uses
  %i.hz = icmp uge i64 %i.hy, %i.hw
  %i.ia = icmp ult i64 %i.hy, 9223372036854775793
  tail call void @llvm.assume(i1 %i.hz)
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp eq i64 %i.hy, 0
  br i1 %i.ib, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit102", label %bb.at

bb.at:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i.i
  %i.ic = load ptr, ptr %i.g, align 8, !alias.scope !6518, !nonnull !4, !noundef !4
  %i.id = sub i64 -32, %i.hv
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ie, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !6518
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit102"

.body:                                            ; preds = %.loopexit133, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.am, %bb.an, %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  %.pn27 = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.gq, %bb.am ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit" ], [ %i.gq, %bb.an ], [ %lpad.loopexit, %.loopexit133 ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit139, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val32 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.if = icmp eq i64 %.val32, 0
  br i1 %i.if, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.body
  %.val33 = load ptr, ptr %.sroa.3.0..sroa_idx16, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33, i64 noundef %.val32, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.aw

bb.av:                                            ; preds = %bb.ax, %bb.aw
  resume { ptr, i32 } %.pn27

bb.aw:                                            ; preds = %.body, %bb.au
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h35699aac6566ae35E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #39
  %.val.pre = load i64, ptr %i.h, align 8         ; 2 uses
  %i.ig = icmp eq i64 %.val.pre, 0
  br i1 %i.ig, label %bb.av, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val31 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.av
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h5dbcb52db5ca61f1E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i16, ptr %0, align 2, !noundef !4
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN84_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hb26ba8d409ec2879E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @332, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6525
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17he083248dfa2d4151E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u16$GT$3fmt17h67f4e3110ad583bbE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$procfs_core..kpageflags.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h4903f3d93ab2441dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6538)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i64 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 27
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6538
  br label %.loopexit12.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @29, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i64, ptr %i.k, align 8, !noalias !6539, !noundef !4 ; 4 uses
  %i.l = and i64 %.val.i.i, %i.e
  %i.m = icmp eq i64 %i.l, %.val.i.i
  %i.n = and i64 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i64 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 27
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6539, !noundef !4
  %i.r = xor i64 %.val.i.i, -1
  %i.s = and i64 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !6539, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6538
  store i64 %.sroa.13.0.i, ptr %i.d, align 8, !noalias !6538
  %.not.i = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit12.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit12.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6538
  store ptr %i.d, ptr %i.c, align 8, !noalias !6541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6541
  store ptr %i.c, ptr %i.b, align 8, !noalias !6541
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0c770b88a03a2bacE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6541
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6542, !noalias !6543
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6542, !noalias !6543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6544
  store ptr @313, ptr %i.a, align 8, !noalias !6541
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6541
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6541
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6541
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6541
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6538
  br i1 %i.x, label %bb.g, label %.loopexit12.sink.split.i

.loopexit12.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6538
  br label %_ZN8bitflags6parser9to_writer17he5cb81bb1663dc31E.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17he5cb81bb1663dc31E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17he5cb81bb1663dc31E.exit, label %bb.b

_ZN8bitflags6parser9to_writer17he5cb81bb1663dc31E.exit: ; preds = %bb.i, %bb.j, %.loopexit12.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit12.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$procfs_core..locks..LockKind$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hd6d8249eee64a61cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.f [
    i64 4, label %bb.b
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1145128274
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1414091351
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 69
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.f:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %2, 0
  br i1 %i.o, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.b, %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6553
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6553 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6554
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6555
  store i64 %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$procfs_core..locks..LockMode$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h5f8346e54c832e9bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.f [
    i64 8, label %bb.b
    i64 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = icmp ne i64 %i.a, 6436294036597130305
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 1
  %i.f = xor i64 %i.e, 5931051873565819213
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 89
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.f:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %2, 0
  br i1 %i.o, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.b, %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6563
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6563 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6564
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6565
  store i64 %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$procfs_core..locks..LockType$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17ha7ead4e078fe22e4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.h [
    i64 5, label %bb.b
    i64 6, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1129270342
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 75
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %bb.f, %bb.c
  ret void

end_hunk_4
begin_hunk_5_@"_ZN84_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hb26ba8d409ec2879E":.peel.begin
  %or.cond.i.i.6.peel.not = icmp eq i16 %i.m, 0
  br i1 %or.cond.i.i.6.peel.not, label %.lr.ph.split.i.i.7.peel, label %bb.a

.lr.ph.split.i.i.7.peel:                          ; preds = %.lr.ph.split.i.i.6.peel
  %i.n = and i16 %i.e, 256
  %or.cond.i.i.7.peel.not = icmp eq i16 %i.n, 0
  br i1 %or.cond.i.i.7.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.7.peel, %.lr.ph.split.i.i.6.peel, %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @68, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 144), %.lr.ph.split.i.i.6.peel ], [ getelementptr inbounds nuw (i8, ptr @68, i64 168), %.lr.ph.split.i.i.7.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ], [ 7, %.lr.ph.split.i.i.6.peel ], [ 8, %.lr.ph.split.i.i.7.peel ]
  %i.o = phi i16 [ -3, %.lr.ph.split.i.i.peel ], [ -5, %.lr.ph.split.i.i.1.peel ], [ -9, %.lr.ph.split.i.i.2.peel ], [ -17, %.lr.ph.split.i.i.3.peel ], [ -33, %.lr.ph.split.i.i.4.peel ], [ -65, %.lr.ph.split.i.i.5.peel ], [ -129, %.lr.ph.split.i.i.6.peel ], [ -257, %.lr.ph.split.i.i.7.peel ]
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6720, !noundef !4
  %i.r = and i16 %i.e, %i.o
  %i.s = load ptr, ptr %.lcssa56.peel, align 8, !noalias !6720, !nonnull !4, !align !6, !noundef !4
  %i.t = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.q)
  br i1 %i.t, label %_ZN8bitflags6parser9to_writer17hd5c128c404db9cabE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i16 [ %i.cd, %bb.h ], [ %i.r, %bb.a ] ; 19 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 10 uses
  %i.u = icmp ult i64 %.sroa.7.0.i, 8
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.v = icmp eq i16 %.sroa.13.0.i, 0
  br i1 %i.v, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6719
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %.sroa.7.0.i ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val.i.i = load i16, ptr %i.y, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.z = and i16 %.val.i.i, %i.e
  %i.aa = icmp eq i16 %i.z, %.val.i.i
  %i.ab = and i16 %.val.i.i, %.sroa.13.0.i
  %i.ac = icmp ne i16 %i.ab, 0
  %or.cond.i.i = and i1 %i.ac, %i.aa
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.x, 8
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.x ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val.i.i.1 = load i16, ptr %i.af, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.ag = and i16 %.val.i.i.1, %i.e
  %i.ah = icmp eq i16 %i.ag, %.val.i.i.1
  %i.ai = and i16 %.val.i.i.1, %.sroa.13.0.i
  %i.aj = icmp ne i16 %i.ai, 0
  %or.cond.i.i.1 = and i1 %i.aj, %i.ah
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ae, 8
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.ae ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val.i.i.2 = load i16, ptr %i.am, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.an = and i16 %.val.i.i.2, %i.e
  %i.ao = icmp eq i16 %i.an, %.val.i.i.2
  %i.ap = and i16 %.val.i.i.2, %.sroa.13.0.i
  %i.aq = icmp ne i16 %i.ap, 0
  %or.cond.i.i.2 = and i1 %i.aq, %i.ao
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.al, 8
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.al ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i16, ptr %i.at, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.au = and i16 %.val.i.i.3, %i.e
  %i.av = icmp eq i16 %i.au, %.val.i.i.3
  %i.aw = and i16 %.val.i.i.3, %.sroa.13.0.i
  %i.ax = icmp ne i16 %i.aw, 0
  %or.cond.i.i.3 = and i1 %i.ax, %i.av
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.as, 8
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.as ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.val.i.i.4 = load i16, ptr %i.ba, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.bb = and i16 %.val.i.i.4, %i.e
  %i.bc = icmp eq i16 %i.bb, %.val.i.i.4
  %i.bd = and i16 %.val.i.i.4, %.sroa.13.0.i
  %i.be = icmp ne i16 %i.bd, 0
  %or.cond.i.i.4 = and i1 %i.be, %i.bc
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.az, 8
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.az ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val.i.i.5 = load i16, ptr %i.bh, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.bi = and i16 %.val.i.i.5, %i.e
  %i.bj = icmp eq i16 %i.bi, %.val.i.i.5
  %i.bk = and i16 %.val.i.i.5, %.sroa.13.0.i
  %i.bl = icmp ne i16 %i.bk, 0
  %or.cond.i.i.5 = and i1 %i.bl, %i.bj
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.bg, 8
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.bg ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.7.0.i, 7         ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.val.i.i.6 = load i16, ptr %i.bo, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.bp = and i16 %.val.i.i.6, %i.e
  %i.bq = icmp eq i16 %i.bp, %.val.i.i.6
  %i.br = and i16 %.val.i.i.6, %.sroa.13.0.i
  %i.bs = icmp ne i16 %i.br, 0
  %or.cond.i.i.6 = and i1 %i.bs, %i.bq
  br i1 %or.cond.i.i.6, label %bb.b, label %.backedge.i.i.6

.backedge.i.i.6:                                  ; preds = %.lr.ph.split.i.i.6
  %exitcond.not.i.i.6 = icmp eq i64 %i.bn, 8
  br i1 %exitcond.not.i.i.6, label %.loopexit.i, label %.lr.ph.split.i.i.7

.lr.ph.split.i.i.7:                               ; preds = %.backedge.i.i.6
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr @68, i64 %i.bn ; 2 uses
  %i.bu = or disjoint i64 %.sroa.7.0.i, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.val.i.i.7 = load i16, ptr %i.bv, align 8, !noalias !6720, !noundef !4 ; 4 uses
  %i.bw = and i16 %.val.i.i.7, %i.e
  %i.bx = icmp eq i16 %i.bw, %.val.i.i.7
  %i.by = and i16 %.val.i.i.7, %.sroa.13.0.i
  %i.bz = icmp ne i16 %i.by, 0
  %or.cond.i.i.7 = and i1 %i.bz, %i.bx
  br i1 %or.cond.i.i.7, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.7, %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.w, %.lr.ph.split.i.i ], [ %i.ad, %.lr.ph.split.i.i.1 ], [ %i.ak, %.lr.ph.split.i.i.2 ], [ %i.ar, %.lr.ph.split.i.i.3 ], [ %i.ay, %.lr.ph.split.i.i.4 ], [ %i.bf, %.lr.ph.split.i.i.5 ], [ %i.bm, %.lr.ph.split.i.i.6 ], [ %i.bt, %.lr.ph.split.i.i.7 ] ; 2 uses
  %.lcssa = phi i64 [ %i.x, %.lr.ph.split.i.i ], [ %i.ae, %.lr.ph.split.i.i.1 ], [ %i.al, %.lr.ph.split.i.i.2 ], [ %i.as, %.lr.ph.split.i.i.3 ], [ %i.az, %.lr.ph.split.i.i.4 ], [ %i.bg, %.lr.ph.split.i.i.5 ], [ %i.bn, %.lr.ph.split.i.i.6 ], [ %i.bu, %.lr.ph.split.i.i.7 ]
  %.val.i.i.lcssa = phi i16 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ], [ %.val.i.i.6, %.lr.ph.split.i.i.6 ], [ %.val.i.i.7, %.lr.ph.split.i.i.7 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !6720, !noundef !4
  %i.cc = xor i16 %.val.i.i.lcssa, -1
  %i.cd = and i16 %.sroa.13.0.i, %i.cc
  %i.ce = load ptr, ptr %.lcssa56, align 8, !noalias !6720, !nonnull !4, !align !6, !noundef !4
  %i.cf = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.cf, label %_ZN8bitflags6parser9to_writer17hd5c128c404db9cabE.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.7, %.lr.ph.split.i.i.7.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4, %.backedge.i.i.5, %.backedge.i.i.6
  %.sroa.13.0.i65 = phi i16 [ %.sroa.13.0.i, %.backedge.i.i.6 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.7 ], [ %i.e, %.lr.ph.split.i.i.7.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.backedge.i.i.5 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.6 ], [ false, %.lr.ph.split.i.i.7 ], [ true, %.lr.ph.split.i.i.7.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.backedge.i.i.4 ], [ false, %.backedge.i.i.5 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6719
  store i16 %.sroa.13.0.i65, ptr %i.d, align 2, !noalias !6719
  %.not.i = icmp eq i16 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.cg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ch = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6719
  store ptr %i.d, ptr %i.c, align 8, !noalias !6722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6722
  store ptr %i.c, ptr %i.b, align 8, !noalias !6722
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc75b951ccc96bebbE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6722
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !6723, !noalias !6724
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6723, !noalias !6724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6725
  store ptr @313, ptr %i.a, align 8, !noalias !6722
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6722
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6722
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6722
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6722
  %i.cj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6719
  br i1 %i.cj, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6719
  br label %_ZN8bitflags6parser9to_writer17hd5c128c404db9cabE.exit

bb.h:                                             ; preds = %bb.b
  %i.ck = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cb)
  br i1 %i.ck, label %_ZN8bitflags6parser9to_writer17hd5c128c404db9cabE.exit, label %.peel.newph, !llvm.loop !6718

_ZN8bitflags6parser9to_writer17hd5c128c404db9cabE.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4ea1dd08eb23513E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17heb99df4095260a15E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @312, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6729
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h17519ffd2099cbffE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hd88230e324065d1eE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$procfs_core..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h755838e7c1b1bb06E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h1a6d6988b6104a81E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$procfs_core..process..limit..LimitValue$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hcd6a39a1cae149c4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = icmp eq i64 %2, 9
  br i1 %i.i, label %bb.h, label %.split23

.split23:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %i.j, align 8
  switch i64 %2, label %bb.e [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %.split23
  %i.k = load i8, ptr %1, align 1, !alias.scope !6750, !noalias !6751, !noundef !4
  switch i8 %i.k, label %.lr.ph.split.us.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.e
  %i.l = icmp ult i64 %2, 17
  br i1 %i.l, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.f, %bb.b, %bb.c
  %.sroa.01.170.us.i.ph = phi ptr [ %i.v, %bb.f ], [ %1, %bb.c ], [ %1, %bb.b ]
  %.sroa.16.169.us.i.ph = phi i64 [ %i.w, %bb.f ], [ %2, %bb.c ], [ 1, %bb.b ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.d
  %.sroa.01.170.us.i = phi ptr [ %i.s, %bb.d ], [ %.sroa.01.170.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i = phi i64 [ %i.r, %bb.d ], [ %.sroa.16.169.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.017.168.us.i = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.m = load i8, ptr %.sroa.01.170.us.i, align 1, !alias.scope !6750, !noalias !6751, !noundef !4
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.q = mul i64 %.sroa.017.168.us.i, 10
  %i.r = add i64 %.sroa.16.169.us.i, -1           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i, i64 1
  %i.t = zext nneg i32 %i.o to i64
  %i.u = add i64 %i.q, %i.t                       ; 2 uses
  %.not51.us.i = icmp eq i64 %i.r, 0
  br i1 %.not51.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph.split.us.i

bb.e:                                             ; preds = %.split23
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6750, !noalias !6751
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.w = add i64 %2, -1                           ; 2 uses
  %i.x = icmp ult i64 %2, 18
  br i1 %i.x, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.f, %bb.c
  %.sroa.16.0.ph.i = phi i64 [ %i.w, %bb.f ], [ %2, %bb.c ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.v, %bb.f ], [ %1, %bb.c ]
  %.not.us.i94 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i94, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.preheader57.split.us.i:                          ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i97, i64 1
  %i.z = add i64 %.sroa.16.0.us.i96, -1           ; 2 uses
  %.not.us.i = icmp eq i64 %i.z, 0
  br i1 %.not.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i, %.preheader57.split.us.i
  %.sroa.01.0.us.i97 = phi ptr [ %i.y, %.preheader57.split.us.i ], [ %.sroa.01.0.ph.i, %.preheader57.i ] ; 2 uses
  %.sroa.16.0.us.i96 = phi i64 [ %i.z, %.preheader57.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader57.i ]
  %.sroa.017.0.us.i95 = phi i64 [ %i.ai, %.preheader57.split.us.i ], [ 0, %.preheader57.i ]
  %i.aa = load i8, ptr %.sroa.01.0.us.i97, align 1, !alias.scope !6750, !noalias !6751, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.g, label %.loopexit
end_hunk_5
begin_hunk_6_@"_ZN87_$LT$procfs_core..crypto..SelfTest$u20$as$u20$core..convert..TryFrom$LT$$RF$str$GT$$GT$8try_from17h69b85c7e412af113E":bb.a
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  switch i64 %2, label %.thread [
    i64 6, label %bb.b
    i64 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 1
  %i.j = xor i32 %i.i, 1936941424
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = xor i32 %i.m, 25701
  %i.o = or i32 %i.j, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0, ptr %i.s, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 1
  %i.u = xor i32 %i.t, 1852534389
  %i.v = getelementptr i8, ptr %1, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1853321070
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb6d5ea4173f85fbE", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6777
  store ptr @337, ptr %i.b, align 8, !noalias !6778
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx, align 8, !noalias !6778
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.535.0..sroa_idx, align 8, !noalias !6778
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !6778
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.737.0..sroa_idx, align 8, !noalias !6778
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6779
  store ptr @31, ptr %i.a, align 8, !noalias !6780
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !6780
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6780
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !6780
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6780
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit32", %bb.c
  ret void

bb.f:                                             ; preds = %.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.val30 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.ad = icmp eq i64 %.val30, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val31 = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val30, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6779
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.af = icmp eq i64 %.val, 0
  br i1 %i.af, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit32", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val29 = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit32"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit32": ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @338, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 101, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 109, ptr %.sroa.65.0..sroa_idx, align 8
  br label %bb.e

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17heb99df4095260a15E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i32 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 26
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6793
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @227, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i32, ptr %i.k, align 8, !noalias !6794, !noundef !4 ; 4 uses
  %i.l = and i32 %.val.i.i, %i.e
  %i.m = icmp eq i32 %i.l, %.val.i.i
  %i.n = and i32 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 26
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !6794, !noundef !4
  %i.r = xor i32 %.val.i.i, -1
  %i.s = and i32 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !6794, !nonnull !4, !align !6, !noundef !4
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6793
  store i32 %.sroa.13.0.i, ptr %i.d, align 4, !noalias !6793
  %.not.i = icmp eq i32 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6793
  store ptr %i.d, ptr %i.c, align 8, !noalias !6796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6796
  store ptr %i.c, ptr %i.b, align 8, !noalias !6796
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6796
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6797, !noalias !6798
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !6797, !noalias !6798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6799
  store ptr @313, ptr %i.a, align 8, !noalias !6796
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !6796
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6796
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6796
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6796
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6793
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6793
  br label %_ZN8bitflags6parser9to_writer17h2d864f862e0fe6e6E.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h2d864f862e0fe6e6E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h2d864f862e0fe6e6E.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h2d864f862e0fe6e6E.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h08dc3c343bb14509E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN89_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h2e4ce958492f9c83E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @330, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6803
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h137249be25be44a1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN89_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h8f57f30cf64f003eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @330, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6806
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h326a8e149f3a75b8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u64$GT$3fmt17hf8f3888457998b8bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17heb8e92b53ebf5b33E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u64$GT$3fmt17hf8f3888457998b8bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h222dcb4149cafe41E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h4fc9474bce370149E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !6859
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %.lr.ph.i
  %.lcssa142155.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa142153.i, %bb.x ] ; 3 uses
  %.sroa.0.0150.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cp, %bb.x ]
  %.lcssa120145149.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa120144.i, %bb.x ] ; 7 uses
  %i.e = icmp ult i64 %2, %.lcssa142155.i
  br i1 %i.e, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.b, %bb.d
  %i.f = phi i64 [ %i.s, %bb.d ], [ %.lcssa142155.i, %bb.b ] ; 5 uses
  %i.g = sub nuw i64 %2, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = icmp ult i64 %i.g, 16
  br i1 %i.i, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %2, %i.f
  br i1 %.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.05.i.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !6860, !noalias !6861, !noundef !4
  %i.l = icmp eq i8 %i.k, 124
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.n = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 124, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g), !noalias !6861 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.p, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.r = add i64 %i.f, 1
  %i.s = add i64 %i.r, %.sroa.4.0.i27.i.i.i       ; 5 uses
end_hunk_6
begin_hunk_7_@"_ZN89_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h2e4ce958492f9c83E":.peel.begin
.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.k = and i64 %i.e, 36028797018963968
  %or.cond.i.i.2.peel.not = icmp eq i64 %i.k, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.l = and i64 %i.e, 72057594037927936
  %or.cond.i.i.3.peel.not = icmp eq i64 %i.l, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.m = and i64 %i.e, 2305843009213693952
  %or.cond.i.i.4.peel.not = icmp eq i64 %i.m, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.n = and i64 %i.e, 4611686018427387904
  %or.cond.i.i.5.peel.not = icmp eq i64 %i.n, 0
  br i1 %or.cond.i.i.5.peel.not, label %.lr.ph.split.i.i.6.peel, label %bb.a

.lr.ph.split.i.i.6.peel:                          ; preds = %.lr.ph.split.i.i.5.peel
  %i.o = icmp slt i64 %i.e, 0
  br i1 %i.o, label %bb.a, label %.loopexit.i

bb.a:                                             ; preds = %.lr.ph.split.i.i.6.peel, %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @354, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 144), %.lr.ph.split.i.i.6.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ], [ 7, %.lr.ph.split.i.i.6.peel ]
  %i.p = phi i64 [ -32, %.lr.ph.split.i.i.peel ], [ -36028797018963937, %.lr.ph.split.i.i.1.peel ], [ -36028797018963969, %.lr.ph.split.i.i.2.peel ], [ -72057594037927937, %.lr.ph.split.i.i.3.peel ], [ -2305843009213693953, %.lr.ph.split.i.i.4.peel ], [ -4611686018427387905, %.lr.ph.split.i.i.5.peel ], [ 9223372036854775807, %.lr.ph.split.i.i.6.peel ]
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !7260, !noundef !4
  %i.s = and i64 %i.e, %i.p
  %i.t = load ptr, ptr %.lcssa56.peel, align 8, !noalias !7260, !nonnull !4, !align !6, !noundef !4
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.r)
  br i1 %i.u, label %_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i64 [ %i.bx, %bb.h ], [ %i.s, %bb.a ] ; 17 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 9 uses
  %i.v = icmp ult i64 %.sroa.7.0.i, 7
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.w = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %i.w, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7259
  br label %.loopexit12.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %.sroa.7.0.i ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val.i.i = load i64, ptr %i.z, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.aa = and i64 %.val.i.i, %i.e
  %i.ab = icmp eq i64 %i.aa, %.val.i.i
  %i.ac = and i64 %.val.i.i, %.sroa.13.0.i
  %i.ad = icmp ne i64 %i.ac, 0
  %or.cond.i.i = and i1 %i.ad, %i.ab
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.y, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.y ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i.i.1 = load i64, ptr %i.ag, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.ah = and i64 %.val.i.i.1, %i.e
  %i.ai = icmp eq i64 %i.ah, %.val.i.i.1
  %i.aj = and i64 %.val.i.i.1, %.sroa.13.0.i
  %i.ak = icmp ne i64 %i.aj, 0
  %or.cond.i.i.1 = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.af, 7
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.af ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val.i.i.2 = load i64, ptr %i.an, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.ao = and i64 %.val.i.i.2, %i.e
  %i.ap = icmp eq i64 %i.ao, %.val.i.i.2
  %i.aq = and i64 %.val.i.i.2, %.sroa.13.0.i
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond.i.i.2 = and i1 %i.ar, %i.ap
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.am, 7
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.as = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.am ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val.i.i.3 = load i64, ptr %i.au, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.av = and i64 %.val.i.i.3, %i.e
  %i.aw = icmp eq i64 %i.av, %.val.i.i.3
  %i.ax = and i64 %.val.i.i.3, %.sroa.13.0.i
  %i.ay = icmp ne i64 %i.ax, 0
  %or.cond.i.i.3 = and i1 %i.ay, %i.aw
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.at, 7
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.at ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val.i.i.4 = load i64, ptr %i.bb, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.bc = and i64 %.val.i.i.4, %i.e
  %i.bd = icmp eq i64 %i.bc, %.val.i.i.4
  %i.be = and i64 %.val.i.i.4, %.sroa.13.0.i
  %i.bf = icmp ne i64 %i.be, 0
  %or.cond.i.i.4 = and i1 %i.bf, %i.bd
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ba, 7
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.ba ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val.i.i.5 = load i64, ptr %i.bi, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.bj = and i64 %.val.i.i.5, %i.e
  %i.bk = icmp eq i64 %i.bj, %.val.i.i.5
  %i.bl = and i64 %.val.i.i.5, %.sroa.13.0.i
  %i.bm = icmp ne i64 %i.bl, 0
  %or.cond.i.i.5 = and i1 %i.bm, %i.bk
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.bh, 7
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.bh ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.7.0.i, 7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.val.i.i.6 = load i64, ptr %i.bp, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.bq = and i64 %.val.i.i.6, %i.e
  %i.br = icmp eq i64 %i.bq, %.val.i.i.6
  %i.bs = and i64 %.val.i.i.6, %.sroa.13.0.i
  %i.bt = icmp ne i64 %i.bs, 0
  %or.cond.i.i.6 = and i1 %i.bt, %i.br
  br i1 %or.cond.i.i.6, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.x, %.lr.ph.split.i.i ], [ %i.ae, %.lr.ph.split.i.i.1 ], [ %i.al, %.lr.ph.split.i.i.2 ], [ %i.as, %.lr.ph.split.i.i.3 ], [ %i.az, %.lr.ph.split.i.i.4 ], [ %i.bg, %.lr.ph.split.i.i.5 ], [ %i.bn, %.lr.ph.split.i.i.6 ] ; 2 uses
  %.lcssa = phi i64 [ %i.y, %.lr.ph.split.i.i ], [ %i.af, %.lr.ph.split.i.i.1 ], [ %i.am, %.lr.ph.split.i.i.2 ], [ %i.at, %.lr.ph.split.i.i.3 ], [ %i.ba, %.lr.ph.split.i.i.4 ], [ %i.bh, %.lr.ph.split.i.i.5 ], [ %i.bo, %.lr.ph.split.i.i.6 ]
  %.val.i.i.lcssa = phi i64 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ], [ %.val.i.i.6, %.lr.ph.split.i.i.6 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !7260, !noundef !4
  %i.bw = xor i64 %.val.i.i.lcssa, -1
  %i.bx = and i64 %.sroa.13.0.i, %i.bw
  %i.by = load ptr, ptr %.lcssa56, align 8, !noalias !7260, !nonnull !4, !align !6, !noundef !4
  %i.bz = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bz, label %_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.6.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4, %.backedge.i.i.5
  %.sroa.13.0.i65 = phi i64 [ %.sroa.13.0.i, %.backedge.i.i.5 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.6 ], [ %i.e, %.lr.ph.split.i.i.6.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.5 ], [ false, %.lr.ph.split.i.i.6 ], [ true, %.lr.ph.split.i.i.6.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.backedge.i.i.4 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7259
  store i64 %.sroa.13.0.i65, ptr %i.d, align 8, !noalias !7259
  %.not.i = icmp eq i64 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit12.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.ca, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cb = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7259
  store ptr %i.d, ptr %i.c, align 8, !noalias !7262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7262
  store ptr %i.c, ptr %i.b, align 8, !noalias !7262
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0c770b88a03a2bacE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7262
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !7263, !noalias !7264
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !7263, !noalias !7264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7265
  store ptr @313, ptr %i.a, align 8, !noalias !7262
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !7262
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !7262
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !7262
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !7262
  %i.cd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !7266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7259
  br i1 %i.cd, label %bb.f, label %.loopexit12.sink.split.i

.loopexit12.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7259
  br label %_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit

bb.h:                                             ; preds = %bb.b
  %i.ce = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %i.bv)
  br i1 %i.ce, label %_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit, label %.peel.newph, !llvm.loop !7258

_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit12.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit12.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h8f57f30cf64f003eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = load i64, ptr %0, align 8, !noundef !4   ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7280)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i64 %i.e, 36028797018963967
  %i.h = icmp eq i64 %i.g, 36028797018963967
  br i1 %i.h, label %bb.a, label %.lr.ph.split.i.i.1.peel

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.i = and i64 %i.e, 36028797018963968
  %or.cond.i.i.1.peel.not = icmp eq i64 %i.i, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.j = and i64 %i.e, 72057594037927936
  %or.cond.i.i.2.peel.not = icmp eq i64 %i.j, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.k = and i64 %i.e, 2305843009213693952
  %or.cond.i.i.3.peel.not = icmp eq i64 %i.k, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.l = and i64 %i.e, 4611686018427387904
  %or.cond.i.i.4.peel.not = icmp eq i64 %i.l, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.m = icmp slt i64 %i.e, 0
  br i1 %i.m, label %bb.a, label %.loopexit.i

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @411, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @411, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @411, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @411, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @411, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @411, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.n = phi i64 [ -36028797018963968, %.lr.ph.split.i.i.peel ], [ -36028797018963969, %.lr.ph.split.i.i.1.peel ], [ -72057594037927937, %.lr.ph.split.i.i.2.peel ], [ -2305843009213693953, %.lr.ph.split.i.i.3.peel ], [ -4611686018427387905, %.lr.ph.split.i.i.4.peel ], [ 9223372036854775807, %.lr.ph.split.i.i.5.peel ]
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !7281, !noundef !4
  %i.q = and i64 %i.e, %i.n
  %i.r = load ptr, ptr %.lcssa56.peel, align 8, !noalias !7281, !nonnull !4, !align !6, !noundef !4
  %i.s = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.p)
  br i1 %i.s, label %_ZN8bitflags6parser9to_writer17h7a6c266451048b8bE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i64 [ %i.bo, %bb.h ], [ %i.q, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.t = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.u = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %i.u, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7280
  br label %.loopexit12.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %.sroa.7.0.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val.i.i = load i64, ptr %i.x, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.y = and i64 %.val.i.i, %i.e
  %i.z = icmp eq i64 %i.y, %.val.i.i
  %i.aa = and i64 %.val.i.i, %.sroa.13.0.i
  %i.ab = icmp ne i64 %i.aa, 0
  %or.cond.i.i = and i1 %i.ab, %i.z
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.w, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %i.w ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val.i.i.1 = load i64, ptr %i.ae, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.af = and i64 %.val.i.i.1, %i.e
  %i.ag = icmp eq i64 %i.af, %.val.i.i.1
  %i.ah = and i64 %.val.i.i.1, %.sroa.13.0.i
  %i.ai = icmp ne i64 %i.ah, 0
  %or.cond.i.i.1 = and i1 %i.ai, %i.ag
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %i.ad ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val.i.i.2 = load i64, ptr %i.al, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.am = and i64 %.val.i.i.2, %i.e
  %i.an = icmp eq i64 %i.am, %.val.i.i.2
  %i.ao = and i64 %.val.i.i.2, %.sroa.13.0.i
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond.i.i.2 = and i1 %i.ap, %i.an
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ak, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %i.ak ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val.i.i.3 = load i64, ptr %i.as, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.at = and i64 %.val.i.i.3, %i.e
  %i.au = icmp eq i64 %i.at, %.val.i.i.3
  %i.av = and i64 %.val.i.i.3, %.sroa.13.0.i
  %i.aw = icmp ne i64 %i.av, 0
  %or.cond.i.i.3 = and i1 %i.aw, %i.au
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.ar, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %i.ar ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val.i.i.4 = load i64, ptr %i.az, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.ba = and i64 %.val.i.i.4, %i.e
  %i.bb = icmp eq i64 %i.ba, %.val.i.i.4
  %i.bc = and i64 %.val.i.i.4, %.sroa.13.0.i
  %i.bd = icmp ne i64 %i.bc, 0
  %or.cond.i.i.4 = and i1 %i.bd, %i.bb
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ay, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.be = getelementptr inbounds nuw [24 x i8], ptr @411, i64 %i.ay ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.val.i.i.5 = load i64, ptr %i.bg, align 8, !noalias !7281, !noundef !4 ; 4 uses
  %i.bh = and i64 %.val.i.i.5, %i.e
  %i.bi = icmp eq i64 %i.bh, %.val.i.i.5
  %i.bj = and i64 %.val.i.i.5, %.sroa.13.0.i
  %i.bk = icmp ne i64 %i.bj, 0
  %or.cond.i.i.5 = and i1 %i.bk, %i.bi
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.w, %.lr.ph.split.i.i ], [ %i.ad, %.lr.ph.split.i.i.1 ], [ %i.ak, %.lr.ph.split.i.i.2 ], [ %i.ar, %.lr.ph.split.i.i.3 ], [ %i.ay, %.lr.ph.split.i.i.4 ], [ %i.bf, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i64 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !7281, !noundef !4
  %i.bn = xor i64 %.val.i.i.lcssa, -1
  %i.bo = and i64 %.sroa.13.0.i, %i.bn
  %i.bp = load ptr, ptr %.lcssa56, align 8, !noalias !7281, !nonnull !4, !align !6, !noundef !4
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.bq, label %_ZN8bitflags6parser9to_writer17h7a6c266451048b8bE.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i64 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7280
  store i64 %.sroa.13.0.i65, ptr %i.d, align 8, !noalias !7280
  %.not.i = icmp eq i64 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit12.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.br, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bs = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @428, i64 noundef 2)
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7280
  store ptr %i.d, ptr %i.c, align 8, !noalias !7283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7283
  store ptr %i.c, ptr %i.b, align 8, !noalias !7283
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0c770b88a03a2bacE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7283
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !7284, !noalias !7285
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !7284, !noalias !7285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7286
  store ptr @313, ptr %i.a, align 8, !noalias !7283
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !7283
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !7283
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !7283
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !7283
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !7287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7280
  br i1 %i.bu, label %bb.f, label %.loopexit12.sink.split.i

.loopexit12.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7280
  br label %_ZN8bitflags6parser9to_writer17h7a6c266451048b8bE.exit

bb.h:                                             ; preds = %bb.b
  %i.bv = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bp, i64 noundef %i.bm)
  br i1 %i.bv, label %_ZN8bitflags6parser9to_writer17h7a6c266451048b8bE.exit, label %.peel.newph, !llvm.loop !7279

_ZN8bitflags6parser9to_writer17h7a6c266451048b8bE.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit12.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit12.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN90_$LT$procfs_core..process..clear_refs..ClearRefs$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h6c2d4c096915a2d7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 10) ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @431, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 30, ptr %i.c, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.56.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  switch i32 %.sroa.56.0.extract.trunc, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  store ptr @430, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 24, ptr %i.d, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.h, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.i, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h5b506a799c9af9a2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hf89d0bbc6f72ad7eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h42c6e98f51096fd8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h7ba1a81a413c3e95E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.g
  ], !prof !23

default.unreachable:                              ; preds = %bb.m, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 32
  %i.e = trunc nuw i64 %i.d to i32
  switch i32 %i.e, label %.thread [
    i32 1, label %.thread134
    i32 13, label %.thread134
    i32 2, label %.critedge
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 32
  %i.g = trunc nuw i64 %i.f to i32
  %spec.select43.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 42)
  %spec.select.i.i.i = trunc nuw nsw i32 %spec.select43.i.i.i to i8
  %i.h = icmp ult ptr %1, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !7291, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i107117 = phi i8 [ %i.j, %bb.d ], [ %spec.select.i.i.i, %bb.c ]
  switch i8 %.sroa.0.0.i107117, label %.thread [
    i8 0, label %.critedge
    i8 1, label %.thread134
  ]

.thread:                                          ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.l, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.f

.thread134:                                       ; preds = %bb.b, %bb.b, %bb.e
  br label %.critedge

bb.f:                                             ; preds = %bb.u, %bb.k, %.critedge, %bb.t, %.thread
end_hunk_7
