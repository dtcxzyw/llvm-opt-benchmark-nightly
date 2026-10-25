Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE":bb.a
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.d
  %i.t = load i64, ptr %i.s, align 8, !noalias !63, !noundef !6 ; 5 uses
  %i.u = add nuw i64 %i.d, 1
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !63
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !63, !noundef !6 ; 2 uses
  %i.x = icmp ult i64 %i.t, %i.i
  %.not5.i.i.i = icmp ugt i64 %i.t, %i.w
  %or.cond.i.i.i = or i1 %i.x, %.not5.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.d, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !63
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.i, i64 noundef %i.t, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !63
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !noalias !63, !nonnull !6, !noundef !6
  %i.aa = sub nuw i64 %i.t, %i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  br label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i"

"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i": ; preds = %bb.i, %bb.b
  %.sroa.3.0.i.i.i = phi i64 [ %i.aa, %bb.i ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ab, %bb.i ], [ null, %bb.b ] ; 2 uses
  %i.ac = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i, 0
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 undef, i64 %.sroa.3.0.i.i.i
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.3.0.i.i, 1
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"

bb.j:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !60
  %i.ae = tail call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator3nth17h162c338b0ae2ad79E(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.b)
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit": ; preds = %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i", %bb.j
  %.pn.i = phi { ptr, i64 } [ %i.ae, %bb.j ], [ %i.ad, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i" ] ; 2 uses
  %i.af = extractvalue { ptr, i64 } %.pn.i, 0     ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"
  %i.ag = extractvalue { ptr, i64 } %.pn.i, 1
  tail call fastcc void @_ZN18lindera_dictionary18dictionary_builder17prefix_dictionary9normalize17h1d09413059a58d40E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %i.ag)
  br label %bb.m

bb.l:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he19e450f808b21faE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !80, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !83, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !83, !noundef !6
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !83, !noundef !6 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !83, !nonnull !6, !align !8, !noundef !6
  %i.k = load ptr, ptr %i.j, align 8, !noalias !83, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load i64, ptr %i.l, align 8, !noalias !83, !noundef !6 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !noalias !83, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.q = load i64, ptr %i.p, align 8, !noalias !83, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.m, %i.q
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !83
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %i.d, %i.m
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.d
  %i.t = load i64, ptr %i.s, align 8, !noalias !83, !noundef !6 ; 5 uses
  %i.u = add nuw i64 %i.d, 1
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !83
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !83, !noundef !6 ; 2 uses
  %i.x = icmp ult i64 %i.t, %i.i
  %.not5.i.i.i = icmp ugt i64 %i.t, %i.w
  %or.cond.i.i.i = or i1 %i.x, %.not5.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.d, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !83
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.i, i64 noundef %i.t, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !83
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !noalias !83, !nonnull !6, !noundef !6
  %i.aa = sub nuw i64 %i.t, %i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  br label %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i"

"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i": ; preds = %bb.i, %bb.b
  %.sroa.3.0.i.i.i = phi i64 [ %i.aa, %bb.i ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ab, %bb.i ], [ null, %bb.b ] ; 2 uses
  %i.ac = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i, 0
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 undef, i64 %.sroa.3.0.i.i.i
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.3.0.i.i, 1
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"

bb.j:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !80
  %i.ae = tail call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator3nth17h162c338b0ae2ad79E(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.b)
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit": ; preds = %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i", %bb.j
  %.pn.i = phi { ptr, i64 } [ %i.ae, %bb.j ], [ %i.ad, %"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c6ff42515ea0ea3E.exit.i" ] ; 2 uses
  %i.af = extractvalue { ptr, i64 } %.pn.i, 0     ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"
  %i.ag = extractvalue { ptr, i64 } %.pn.i, 1     ; 7 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %"_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build28_$u7b$$u7b$closure$u7d$$u7d$17hfa3425a90c150ee2E.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !84
  %i.aj = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 1) #47, !noalias !84 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %"_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build28_$u7b$$u7b$closure$u7d$$u7d$17hfa3425a90c150ee2E.exit"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46, !noalias !85
  unreachable

"_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build28_$u7b$$u7b$closure$u7d$$u7d$17hfa3425a90c150ee2E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.aj, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.af, i64 %i.ag, i1 false), !noalias !86
  store i64 %i.ag, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfae6afcec31dd285E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build28_$u7b$$u7b$closure$u7d$$u7d$17hfa3425a90c150ee2E.exit"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc { i32, i32 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !alias.scope !102, !nonnull !6, !align !11, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.c = tail call fastcc { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a), !noalias !103 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  switch i64 %i.e, label %thread-pre-split.i.i.i.i.i.i.i [
    i64 0, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !alias.scope !105, !noalias !106, !noundef !6 ; 2 uses
  switch i8 %i.f, label %bb.d [
    i8 43, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i
    i8 45, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.d, align 1, !alias.scope !105, !noalias !106
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.c
  %i.g = phi i8 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %bb.c ]
  switch i8 %i.g, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.i = add i64 %i.e, -1                         ; 3 uses
  %i.j = icmp ult i64 %i.e, 9
  br i1 %i.j, label %.preheader.i.i.i.i.i.i.i, label %.preheader102.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.l = add i64 %i.e, -1                         ; 3 uses
  %i.m = icmp ult i64 %i.e, 9
  %.not91118.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0  ; 2 uses
  br i1 %i.m, label %.preheader105.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.preheader

.preheader108.i.i.i.i.i.i.i.preheader:            ; preds = %bb.f
  br i1 %.not91118.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph

.preheader105.i.i.i.i.i.i.i:                      ; preds = %bb.f
  br i1 %.not91118.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i83, i64 1
  %i.o = add i64 %.sroa.27.0.i.i.i.i.i.i.i82, -1  ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.av, 0        ; 2 uses
  %.not92.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not92.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph84

.preheader108.i.i.i.i.i.i.i:                      ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i.i.i.i79, i64 1
  %i.r = add i64 %.sroa.27.2.i.i.i.i.i.i.i78, -1  ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.ac, 0        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.preheader108.i.i.i.i.i.i.i, %bb.i, %bb.g, %bb.l, %.preheader108.i.i.i.i.i.i.i.preheader, %.preheader102.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.be, %bb.l ], [ %i.p, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.preheader ], [ %i.s, %.preheader108.i.i.i.i.i.i.i ]
  %i.t = zext i32 %.sroa.033.3.i.i.i.i.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i

.lr.ph:                                           ; preds = %.preheader108.i.i.i.i.i.i.i.preheader, %.preheader108.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i79 = phi ptr [ %i.q, %.preheader108.i.i.i.i.i.i.i ], [ %i.k, %.preheader108.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i78 = phi i64 [ %i.r, %.preheader108.i.i.i.i.i.i.i ], [ %i.l, %.preheader108.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i.i.i.i77 = phi i32 [ %i.s, %.preheader108.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.preheader ]
  %i.v = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i77, i32 10) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i79, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9                    ; 2 uses
  %brmerge.i.i.i.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.w
  br i1 %brmerge.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = extractvalue { i32, i1 } %i.v, 0
  %i.ac = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ab, i32 %i.z) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit101.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i:    ; preds = %.lr.ph84
  %.mux97.le.i.i.i.i.i.i.i = select i1 %i.at, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i:    ; preds = %.lr.ph
  %.mux.le.i.i.i.i.i.i.i = select i1 %i.aa, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i:                       ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i, %bb.k, %.lr.ph129.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i ], [ 512, %bb.k ], [ 256, %.lr.ph.i.i.i.i.i.i.i ], [ %.mux97.le.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i ], [ 768, %bb.h ]
  %i.ae = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader105.i.i.i.i.i.i.i, %bb.i
  %.sroa.03.3121.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.k, %.preheader105.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.l, %.preheader105.i.i.i.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ 0, %.preheader105.i.i.i.i.i.i.i ]
  %i.af = load i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.i, label %.loopexit101.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = mul i32 %.sroa.033.4119.i.i.i.i.i.i.i, 10
  %i.ak = add nsw i64 %.sroa.27.3120.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i, i64 1
  %i.am = sub i32 %i.aj, %i.ah                    ; 2 uses
  %.not91.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not91.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %i.e, 8
  br i1 %i.an, label %.lr.ph129.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i

.lr.ph129.i.i.i.i.i.i.i.preheader:                ; preds = %.preheader.i.i.i.i.i.i.i, %bb.j
  %.sroa.03.1128.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.j ], [ %i.h, %.preheader.i.i.i.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.i.i.i.ph = phi i64 [ %i.e, %bb.j ], [ %i.i, %.preheader.i.i.i.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i.i.i.i

.preheader102.i.i.i.i.i.i.i:                      ; preds = %bb.j, %bb.e
  %.sroa.27.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.e, %bb.j ], [ %i.i, %bb.e ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.j ], [ %i.h, %bb.e ]
  %.not92.i.i.i.i.i.i.i80 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i80, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph84

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.e
  %.not93125.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not93125.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.preheader

.lr.ph84:                                         ; preds = %.preheader102.i.i.i.i.i.i.i, %bb.g
  %.sroa.03.0.i.i.i.i.i.i.i83 = phi ptr [ %i.n, %bb.g ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i82 = phi i64 [ %i.o, %bb.g ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i81 = phi i32 [ %i.p, %bb.g ], [ 0, %.preheader102.i.i.i.i.i.i.i ]
  %i.ao = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i81, i32 10) ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  %i.aq = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i83, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ugt i32 %i.as, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i = select i1 %i.at, i1 true, i1 %i.ap
  br i1 %brmerge96.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph84
  %i.au = extractvalue { i32, i1 } %i.ao, 0
  %i.av = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.as) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit101.i.i.i.i.i.i.i, label %bb.g

.lr.ph129.i.i.i.i.i.i.i:                          ; preds = %.lr.ph129.i.i.i.i.i.i.i.preheader, %bb.l
  %.sroa.03.1128.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.l ], [ %.sroa.03.1128.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %.sroa.27.1127.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.l ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.preheader ]
  %i.ax = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.l, label %.loopexit101.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph129.i.i.i.i.i.i.i
  %i.bb = mul i32 %.sroa.033.1126.i.i.i.i.i.i.i, 10
  %i.bc = add nsw i64 %.sroa.27.1127.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i, i64 1
  %i.be = add i32 %i.az, %i.bb                    ; 2 uses
  %.not93.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not93.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i: ; preds = %.loopexit101.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i.i.i.i = phi i64 [ %i.u, %.loopexit.i.i.i.i.i.i.i ], [ %i.ae, %.loopexit101.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i to i1
  br i1 %i.bf, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i, label %bb.m

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i, %bb.c, %bb.c, %bb.b
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i ], [ 256, %bb.c ], [ 256, %bb.c ], [ %i.e, %bb.b ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i to i8 ; 2 uses
  %i.bg = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i, 5
  tail call void @llvm.assume(i1 %i.bg)
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i, ptr %i.b, align 1, !alias.scope !103, !noalias !107
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread"

bb.m:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i to i32
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h182e90a280bb351fE.exit.thread": ; preds = %bb.a, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i, %bb.m
  %.sroa.0.0.i45 = phi i32 [ 1, %bb.m ], [ 0, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i ], [ 0, %bb.a ]
  %i.bh = phi i32 [ %.sroa.617.0.extract.trunc.i.i.i.i.i, %bb.m ], [ undef, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i ], [ undef, %bb.a ]
  %i.bi = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i45, 0
  %i.bj = insertvalue { i32, i32 } %i.bi, i32 %i.bh, 1
  ret { i32, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb69d40a40b35ebE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.e = load i64, ptr %0, align 8, !range !12, !alias.scope !125, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !125, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.d, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge": ; preds = %bb.c
  %.sroa.26.0.copyload.i.pre = load i64, ptr %i.i, align 8, !alias.scope !126
  %.sroa.37.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.37.0.copyload.i.pre = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !126
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !125, !noundef !6 ; 5 uses
  %.sroa.012.013.i = load ptr, ptr %i.i, align 8, !alias.scope !125, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.012.015.i.prol = phi ptr [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.012.013.i, %.lr.ph.i.preheader ]
  %.sroa.011.014.i.prol = phi i64 [ %i.n, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.prol, i64 544
  %i.n = add i64 %.sroa.011.014.i.prol, -1        ; 2 uses
  %.sroa.012.0.i.prol = load ptr, ptr %i.m, align 8, !noalias !125, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !112

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.012.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.012.015.i.unr = phi ptr [ %.sroa.012.013.i, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.014.i.unr = phi i64 [ %i.k, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.k, 8
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.013.i, %bb.d ], [ %.sroa.012.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.012.0.i.7, %.lr.ph.i ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !125
  store ptr %.sroa.012.0.lcssa.i, ptr %i.g, align 8, !alias.scope !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !125
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.012.015.i = phi ptr [ %.sroa.012.0.i.7, %.lr.ph.i ], [ %.sroa.012.015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.014.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.sroa.011.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i, i64 544
  %.sroa.012.0.i = load ptr, ptr %i.p, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 544
  %.sroa.012.0.i.1 = load ptr, ptr %i.q, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.1, i64 544
  %.sroa.012.0.i.2 = load ptr, ptr %i.r, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.2, i64 544
  %.sroa.012.0.i.3 = load ptr, ptr %i.s, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.3, i64 544
  %.sroa.012.0.i.4 = load ptr, ptr %i.t, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.4, i64 544
  %.sroa.012.0.i.5 = load ptr, ptr %i.u, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.5, i64 544
  %.sroa.012.0.i.6 = load ptr, ptr %i.v, align 8, !noalias !125, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.6, i64 544
  %i.x = add i64 %.sroa.011.014.i, -8             ; 2 uses
  %.sroa.012.0.i.7 = load ptr, ptr %i.w, align 8, !noalias !125, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit": ; preds = %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge", %._crit_edge.i
  %.sroa.37.0.copyload.i = phi i64 [ %.sroa.37.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.26.0.copyload.i = phi i64 [ %.sroa.26.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.05.0.copyload.i = phi ptr [ %i.h, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit_crit_edge" ], [ %.sroa.012.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 538
  %i.aa = load i16, ptr %i.z, align 2, !noalias !127, !noundef !6
  %i.ab = zext i16 %i.aa to i64
  %i.ac = icmp ult i64 %.sroa.37.0.copyload.i, %i.ab
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.a, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit
  %.sroa.3.0 = phi ptr [ %i.bi, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit ], [ null, %bb.a ]
  %i.ad = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ae

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit", %bb.f
  %.sroa.0.038.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ] ; 2 uses
  %.sroa.5.037.i.i.i = phi i64 [ %i.ah, %bb.f ], [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ]
  %i.af = load ptr, ptr %.sroa.0.038.i.i.i, align 8, !noalias !128, !noundef !6 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.ag = zext i16 %i.aj to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = add i64 %.sroa.5.037.i.i.i, 1           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 536
  %i.aj = load i16, ptr %i.ai, align 8, !noalias !128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 538
  %i.al = load i16, ptr %i.ak, align 2, !noalias !127, !noundef !6
  %i.am = icmp ult i16 %i.aj, %i.al
  br i1 %i.am, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit"
  %.sroa.6.sroa.4.0.ph.i.i = phi i64 [ %.sroa.37.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.ag, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i = phi i64 [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.ah, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b5dde279f672dc5E.exit" ], [ %i.af, %._crit_edge.loopexit.i.i.i ] ; 4 uses
  %i.an = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i, 0
  %i.ao = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i, 1 ; 2 uses
  br i1 %i.an, label %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 544
  %i.aq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %xtraiter25 = and i64 %.sroa.6.sroa.0.0.ph.i.i, 7 ; 2 uses
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.prol = phi ptr [ %i.as, %.prol.preheader ], [ %i.ar, %bb.h ]
  %.pn28.in.i.i.i.prol = phi i64 [ %.pn28.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i, %bb.h ]
  %prol.iter27 = phi i64 [ %prol.iter27.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.prol = add i64 %.pn28.in.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.prol, align 8, !noalias !129, !nonnull !6, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter27.next = add i64 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i64 %prol.iter27.next, %xtraiter25
  br i1 %prol.iter27.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !124

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.unr = phi ptr [ %i.ar, %bb.h ], [ %i.as, %.prol.preheader ]
  %.pn28.in.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i, %bb.h ], [ %.pn28.i.i.i.prol, %.prol.preheader ]
  %i.at = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i, 8
  br i1 %i.at, label %_ZN5alloc11collections5btree3mem7replace17hab96113abcff5af0E.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i = phi ptr [ %i.bc, %.new ], [ %.pn30.in.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i = phi i64 [ %.pn28.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i = load ptr, ptr %.pn30.in.i.i.i, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 544
  %.pn30.i.i.i.1 = load ptr, ptr %i.au, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.1, i64 544
  %.pn30.i.i.i.2 = load ptr, ptr %i.av, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.2, i64 544
  %.pn30.i.i.i.3 = load ptr, ptr %i.aw, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.3, i64 544
  %.pn30.i.i.i.4 = load ptr, ptr %i.ax, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.4, i64 544
  %.pn30.i.i.i.5 = load ptr, ptr %i.ay, align 8, !noalias !129, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.5, i64 544
  %.pn30.i.i.i.6 = load ptr, ptr %i.az, align 8, !noalias !129, !nonnull !6, !noundef !6
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary18dictionary_builder18unknown_dictionary31UnknownDictionaryBuilderOptions7builder17ha86968dd83284528E:bb.a
  %.not.i = icmp eq i64 %i.b, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4549, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4549, !noundef !6 ; 8 uses
  br i1 %.not.i, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4550
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 1) #47, !noalias !4550 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46, !noalias !4551
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !noalias !4552
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit": ; preds = %bb.a, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", %bb.b
  %.sroa.9.0 = phi i64 [ %i.f, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.f, %bb.b ], [ 5, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.d, %bb.b ], [ @186, %bb.a ]
  %.sroa.04.0 = phi i64 [ %i.f, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ -9223372036854775808, %bb.b ], [ -9223372036854775808, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i8, ptr %i.k, align 8, !range !34, !noundef !6 ; 2 uses
  %.not3 = icmp eq i8 %i.l, 4
  %. = select i1 %.not3, i8 0, i8 %i.l
  %i.m = load i64, ptr %1, align 8, !range !12, !noundef !6
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.sroa.02.0 = select i1 %i.n, i64 %i.p, i64 11
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %., ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18lindera_dictionary18dictionary_builder20character_definition19parse_hex_codepoint17hdaa298bad32d966eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [2 x i8], align 2                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4608
  call void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 2)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4609
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f), !noalias !4610
  %i.g = load i64, ptr %i.e, align 8, !range !33, !noalias !4609, !noundef !6
  switch i64 %i.g, label %default.unreachable [
    i64 1, label %bb.d
    i64 2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit"
    i64 0, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4609
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !4609, !noundef !6
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit": ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.d ], [ %2, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4609
  %i.j = sub nuw i64 %2, %.sroa.0.0.i             ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4608
  switch i64 %i.j, label %bb.f [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i64 1, label %bb.e
  ]

.loopexit61.split.loop.exit64.i:                  ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.aa, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

bb.e:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit"
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !4611, !noundef !6
  switch i8 %i.l, label %.lr.ph.split.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  ]

.lr.ph.split.i.preheader:                         ; preds = %bb.g, %bb.h, %bb.e
  %.sroa.02.171.i.ph = phi ptr [ %i.m, %bb.g ], [ %i.k, %bb.h ], [ %i.k, %bb.e ]
  %.sroa.16.170.i.ph = phi i64 [ %i.n, %bb.g ], [ %i.j, %bb.h ], [ 1, %bb.e ]
  br label %.lr.ph.split.i

bb.f:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit"
  %.pr.i = load i8, ptr %i.k, align 1, !alias.scope !4611
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.n = add i64 %i.j, -1                         ; 2 uses
  %i.o = icmp ult i64 %i.j, 6
  br i1 %i.o, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f
  %i.p = icmp ult i64 %i.j, 5
  br i1 %i.p, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.sroa.02.0.i19.ph = phi ptr [ %i.m, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.16.0.i18.ph = phi i64 [ %i.n, %bb.g ], [ %i.j, %bb.h ]
  br label %.lr.ph

.loopexit.i:                                      ; preds = %.preheader59.split.i, %bb.i
  %.sroa.018.2.i = phi i16 [ %i.as, %bb.i ], [ %i.af, %.preheader59.split.i ]
  %i.q = zext i16 %.sroa.018.2.i to i32
  %i.r = shl nuw i32 %i.q, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader59.split.i
  %.sroa.02.0.i19 = phi ptr [ %i.ad, %.preheader59.split.i ], [ %.sroa.02.0.i19.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.0.i18 = phi i64 [ %i.ac, %.preheader59.split.i ], [ %.sroa.16.0.i18.ph, %.lr.ph.preheader ]
  %.sroa.018.0.i17 = phi i16 [ %i.af, %.preheader59.split.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.s = icmp ugt i16 %.sroa.018.0.i17, 4095
  %i.t = load i8, ptr %.sroa.02.0.i19, align 1, !alias.scope !4611, !noundef !6 ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp ugt i8 %i.t, 57
  %i.w = add nsw i32 %i.u, -65
  %i.x = and i32 %i.w, -33
  %i.y = add nuw nsw i32 %i.x, 10
  %i.z = add nsw i32 %i.u, -48
  %spec.select.i = select i1 %i.v, i32 %i.y, i32 %i.z ; 2 uses
  %i.aa = icmp ugt i32 %spec.select.i, 15         ; 2 uses
  %brmerge.i = or i1 %i.s, %i.aa
  br i1 %brmerge.i, label %.loopexit61.split.loop.exit64.i, label %.preheader59.split.i

.preheader59.split.i:                             ; preds = %.lr.ph
  %i.ab = shl nuw i16 %.sroa.018.0.i17, 4
  %i.ac = add i64 %.sroa.16.0.i18, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i19, i64 1
  %i.ae = trunc nuw nsw i32 %spec.select.i to i16
  %i.af = or disjoint i16 %i.ab, %i.ae            ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.i
  %.sroa.02.171.i = phi ptr [ %i.aq, %bb.i ], [ %.sroa.02.171.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.170.i = phi i64 [ %i.ap, %bb.i ], [ %.sroa.16.170.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.018.169.i = phi i16 [ %i.as, %bb.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.ag = load i8, ptr %.sroa.02.171.i, align 1, !alias.scope !4611, !noundef !6 ; 2 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = icmp ugt i8 %i.ag, 57
  %i.aj = add nsw i32 %i.ah, -65
  %i.ak = and i32 %i.aj, -33
  %i.al = add nuw nsw i32 %i.ak, 10
  %i.am = add nsw i32 %i.ah, -48
  %spec.select75.i = select i1 %i.ai, i32 %i.al, i32 %i.am ; 2 uses
  %i.an = icmp ult i32 %spec.select75.i, 16
  br i1 %i.an, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ao = shl i16 %.sroa.018.169.i, 4
  %i.ap = add nsw i64 %.sroa.16.170.i, -1         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.171.i, i64 1
  %i.ar = trunc nuw nsw i32 %spec.select75.i to i16
  %i.as = or disjoint i16 %i.ao, %i.ar            ; 2 uses
  %.not53.i = icmp eq i64 %i.ap, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.split.i

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit": ; preds = %.loopexit61.split.loop.exit64.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %i.r, %.loopexit.i ], [ %.mux.le.i, %.loopexit61.split.loop.exit64.i ] ; 3 uses
  %i.at = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.at, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread", label %bb.j, !prof !28

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread": ; preds = %.lr.ph.split.i, %bb.e, %bb.e, %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit", %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.8.0.insert.insert.i10 = phi i32 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit" ], [ 256, %bb.e ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit" ], [ 256, %bb.e ], [ 256, %.lr.ph.split.i ]
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i10, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.au = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.4.0.extract.trunc)
  store ptr %i.au, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.av, align 8
  br label %bb.ag

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.56.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.56.0.extract.trunc = trunc nuw i32 %.sroa.56.0.extract.shift to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4612
  store i16 %.sroa.56.0.extract.trunc, ptr %i.d, align 2, !alias.scope !4613, !noalias !4612
  %i.aw = load ptr, ptr @_ZN11encoding_rs8UTF_16LE17h3b3082c5d516bb32E, align 8, !noalias !4612, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4612
  %.not = icmp eq i32 %.sroa.56.0.extract.shift, 65279
  br i1 %.not, label %select.unfold.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i": ; preds = %bb.j
  %i.ax = load i16, ptr %i.d, align 2
  %i.ay = icmp ne i16 -2, %i.ax
  %i.az = zext i1 %i.ay to i32
  %bcmp.i.i7.fr.i.i.i = freeze i32 %i.az
  %i.ba = icmp eq i32 %bcmp.i.i7.fr.i.i.i, 0
  br i1 %i.ba, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i", label %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"
  %.sroa.0.0.i.ph.i.pre.i = load ptr, ptr @_ZN11encoding_rs8UTF_16BE17h2120dfeca5c381d9E, align 8, !noalias !4614
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i", %bb.j
  %.sroa.0.0.i.ph.i.i = phi ptr [ %.sroa.0.0.i.ph.i.pre.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i" ], [ %i.aw, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i

_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i: ; preds = %select.unfold.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"
  %.sroa.55.0.i.i = phi i64 [ 0, %select.unfold.i.i ], [ 2, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  %.sroa.04.0.i.i = phi ptr [ %i.bb, %select.unfold.i.i ], [ %i.d, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  %.sroa.03.0.i.i = phi ptr [ %.sroa.0.0.i.ph.i.i, %select.unfold.i.i ], [ %i.aw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  call void @_ZN11encoding_rs8Encoding27decode_without_bom_handling17h95ee650c38e11c0dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.04.0.i.i, i64 noundef %.sroa.55.0.i.i), !noalias !4615
  %.sroa.021.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !4616 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4616 ; 3 uses
  %.sroa.5.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload23.i = load i64, ptr %.sroa.5.0..sroa_idx22.i, align 8, !noalias !4616 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4612
  %.not.i7 = icmp eq i64 %.sroa.021.0.copyload.i, -9223372036854775808
  br i1 %.not.i7, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.bc = icmp slt i64 %.sroa.5.0.copyload23.i, 0
  br i1 %i.bc, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.bd = icmp eq i64 %.sroa.5.0.copyload23.i, 0
  br i1 %i.bd, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4617
  %i.be = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.0.copyload23.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !4617 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.5.0.copyload23.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46, !noalias !4618
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload23.i, i1 false), !noalias !4619
  br label %bb.n

bb.n:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i", %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i
  %.sroa.6.0.i = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i" ], [ %.sroa.4.0.copyload.i, %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i ] ; 9 uses
  %.sroa.0.0.i8 = phi i64 [ %.sroa.5.0.copyload23.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i" ], [ %.sroa.021.0.copyload.i, %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 %.sroa.5.0.copyload23.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4620
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.5.0.copyload23.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.sroa.6.0.i, align 1, !noalias !4621, !noundef !6 ; 5 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i": ; preds = %bb.o
  %i.bk = and i8 %i.bi, 31
  %i.bl = zext nneg i8 %i.bk to i32               ; 3 uses
  %i.bm = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 2 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !noalias !4621, !noundef !6
  %i.bp = shl nuw nsw i32 %i.bl, 6
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i32               ; 2 uses
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = icmp samesign ugt i8 %i.bi, -33
  br i1 %i.bt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bu = zext nneg i8 %i.bi to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"
  %i.bv = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 2
  call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 3 ; 2 uses
  %i.bx = load i8, ptr %i.bn, align 1, !noalias !4621, !noundef !6
  %i.by = shl nuw nsw i32 %i.br, 6
  %i.bz = and i8 %i.bx, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca            ; 2 uses
  %i.cc = shl nuw nsw i32 %i.bl, 12
  %i.cd = or disjoint i32 %i.cb, %i.cc
  %i.ce = icmp samesign ugt i8 %i.bi, -17
  br i1 %i.ce, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i"
  %i.cf = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 3
  call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 4
  %i.ch = load i8, ptr %i.bw, align 1, !noalias !4621, !noundef !6
  %i.ci = shl nuw nsw i32 %i.bl, 18
  %i.cj = and i32 %i.ci, 1835008
  %i.ck = shl nuw nsw i32 %i.cb, 6
  %i.cl = and i8 %i.ch, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = or disjoint i32 %i.cn, %i.cj            ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.co, 1114112
  br i1 %.not.i.i.i.i.i, label %.sink.split, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i", %bb.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"
  %spec.select.i8.i.i.i.i.i = phi i32 [ %i.co, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.cd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i" ], [ %i.bu, %bb.p ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cg, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.bw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i" ], [ %i.bn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i" ], [ %i.bh, %bb.p ] ; 3 uses
  %i.cp = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.07.i.i.i.i.i to i64
  %i.cr = sub nuw i64 %i.cp, %i.cq                ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = and i64 %i.cr, 3
  %.not.i10.i.i.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not.i10.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 2 uses
  %i.cv = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 3) ; 2 uses
  %.sroa.0.0.i11.i.i.i.i.i = add nuw nsw i64 %i.cv, 1 ; 2 uses
  %i.cw = shl i64 %.sroa.0.0.i11.i.i.i.i.i, 2     ; 4 uses
  %i.cx = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 4611686018427387902
  %i.cy = icmp ugt i64 %i.cw, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cx, i1 true, i1 %i.cy, !prof !10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4622
  %i.da = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cw, i64 noundef range(i64 1, 9) 4) #47, !noalias !4622 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i"

bb.r:                                             ; preds = %bb.q, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.q ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc.i unwind label %bb.w, !noalias !4612

.noexc.i:                                         ; preds = %bb.r
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i": ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.626.0.copyload41.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.da, %bb.q ] ; 4 uses
  %.sroa.025.0.copyload40.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i11.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.dc = icmp samesign ult i64 %i.cv, %.sroa.025.0.copyload40.i
  call void @llvm.assume(i1 %i.dc)
  store i32 %spec.select.i8.i.i.i.i.i, ptr %.sroa.626.0.copyload41.i, align 4, !noalias !4620
  store i64 %.sroa.025.0.copyload40.i, ptr %i.a, align 8, !noalias !4620
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.626.0.copyload41.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4620
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4620
  call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  call void @llvm.experimental.noalias.scope.decl(metadata !4624)
  %.not.i11.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i.i, %i.bg
  br i1 %.not.i11.i.i.i.i.i.i.i, label %.thread38.i, label %.lr.ph.i.i.i.i.i.i.i

.thread38.i:                                      ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4620
  br label %bb.z

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i", %.noexc.i.i.i.i.i
  %i.dd = phi ptr [ %i.ev, %.noexc.i.i.i.i.i ], [ %.sroa.626.0.copyload41.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ]
  %.sroa.1027.0.copyload.pr.i = phi i64 [ %i.ex, %.noexc.i.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ] ; 7 uses
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.15.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.df = load i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, align 1, !noalias !4625, !noundef !6 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.fp, align 8, !noalias !5794
  %i.fq = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ao)
          to label %.noexc87 unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5794
  br label %bb.eo

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  %i.fr = load i16, ptr %i.fk, align 1
  %i.fs = icmp ne i16 30768, %i.fr
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.bn, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !5806)
  call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5794
  store ptr %i.fk, ptr %i.an, align 8, !noalias !5808
  store i64 %i.fl, ptr %i.bx, align 8, !noalias !5808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5809
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i"
  %.val921.i.i.i.i.i.i = phi i1 [ %.val9.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ]
  %i.fv = phi i64 [ %.val.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ] ; 5 uses
  %i.fw = phi ptr [ %.sroa.01.0.copyload.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ] ; 6 uses
  %i.fx = phi i1 [ %i.gh, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ]
  br i1 %i.fx, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  %i.fz = icmp samesign eq i64 %i.fv, 0
  br i1 %i.fz, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.u, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.u ] ; 3 uses
  %i.ga = phi ptr [ %i.gb, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fw, %bb.u ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ga, align 1, !alias.scope !5807, !noalias !5810, !noundef !6
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 9, label %bb.v
    i8 10, label %bb.v
    i8 12, label %bb.v
    i8 13, label %bb.v
    i8 32, label %bb.v
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.gc = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gd = icmp eq ptr %i.gb, %i.fy
  br i1 %i.gd, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gf = sub nuw i64 %i.fv, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ge
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.v, %bb.u
  %.val9.i.i.i.i.i.i = phi i1 [ %.val921.i.i.i.i.i.i, %bb.v ], [ true, %bb.u ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val.i.i.i.i.i.i = phi i64 [ %i.gf, %bb.v ], [ 0, %bb.u ], [ %i.fv, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.v ], [ %i.fw, %bb.u ], [ %i.fw, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.gh = phi i1 [ false, %bb.v ], [ true, %bb.u ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ], [ %i.fv, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i"

"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5811
  %i.gi = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #47, !noalias !5811 ; 5 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i": ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i"
  store ptr %i.fw, ptr %i.gi, align 8, !noalias !5812
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gk, align 8, !noalias !5812
  store i64 4, ptr %i.aj, align 8, !noalias !5809
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5809
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5809
  call void @llvm.experimental.noalias.scope.decl(metadata !5813)
  call void @llvm.experimental.noalias.scope.decl(metadata !5814)
  br label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i"
  %i.gl = phi ptr [ %i.hk, %.noexc.i.i.i.i.i.i ], [ %i.gi, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ]
  %.sroa.16.0.copyload.i.i = phi i64 [ %i.hn, %.noexc.i.i.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 8 uses
  %i.gm = phi i64 [ %i.hc, %.noexc.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i = phi ptr [ %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.gn = phi i1 [ %i.hd, %.noexc.i.i.i.i.i.i ], [ %.val9.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w
  %i.go = phi i64 [ %i.hc, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %bb.w ] ; 2 uses
  %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i = phi ptr [ %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.gp = phi i1 [ %i.hd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.w ]
  %i.gq = phi i64 [ %i.he, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %bb.w ] ; 5 uses
  %i.gr = phi ptr [ %i.hf, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i, %bb.w ] ; 6 uses
  %i.gs = phi i1 [ %i.hg, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.w ]
  br i1 %i.gs, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %i.gu = icmp samesign eq i64 %i.gq, 0
  br i1 %i.gu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.y, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.y ] ; 3 uses
  %i.gv = phi ptr [ %i.gw, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gr, %bb.y ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gv, align 1, !alias.scope !5807, !noalias !5815, !noundef !6
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 9, label %bb.z
    i8 10, label %bb.z
    i8 12, label %bb.z
    i8 13, label %bb.z
    i8 32, label %bb.z
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  %i.gx = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gy = icmp eq ptr %i.gw, %i.gt
  br i1 %i.gy, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ha = sub nuw i64 %i.gq, %i.gz                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gz ; 2 uses
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y
  %i.hc = phi i64 [ %i.ha, %bb.z ], [ %i.go, %bb.y ], [ %i.go, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.z ], [ %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i, %bb.y ], [ %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hd = phi i1 [ %i.gp, %bb.z ], [ true, %bb.y ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.he = phi i64 [ %i.ha, %bb.z ], [ 0, %bb.y ], [ %i.gq, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.hf = phi ptr [ %i.hb, %bb.z ], [ %i.gr, %bb.y ], [ %i.gr, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.hg = phi i1 [ false, %bb.z ], [ true, %bb.y ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ 0, %bb.y ], [ %i.gq, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i.i.i"

"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = icmp samesign ult i64 %.sroa.16.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.hh)
  %i.hi = load i64, ptr %i.aj, align 8, !range !14, !alias.scope !5816, !noalias !5809, !noundef !6
  %i.hj = icmp eq i64 %.sroa.16.0.copyload.i.i, %i.hi
  br i1 %i.hj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %.sroa.16.0.copyload.i.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i" unwind label %bb.aa, !noalias !5812

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5816, !noalias !5809
  br label %.noexc.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i", %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i.i.i"
  %i.hk = phi ptr [ %.pre.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc_crit_edge.i.i.i.i.i.i" ], [ %i.gl, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %.sroa.16.0.copyload.i.i ; 2 uses
  store ptr %i.gr, ptr %i.hl, align 8, !noalias !5817
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hm, align 8, !noalias !5817
  %i.hn = add nuw nsw i64 %.sroa.16.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.hn, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5816, !noalias !5809
  br label %bb.w

bb.aa:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i.i"
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !5809 ; 2 uses
  %i.hp = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.hp, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val11.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5809, !nonnull !6, !noundef !6
  %i.hq = shl nuw i64 %.val10.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i.i.i, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !5812
  br label %.body

_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5809
  br label %.loopexit.i

_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i: ; preds = %bb.x
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8, !noalias !5818 ; 6 uses
  %.sroa.8.0.copyload.i.i84 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5818 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5809
  %i.hr = icmp samesign ult i64 %.sroa.16.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp eq i64 %.sroa.16.0.copyload.i.i, 4
  br i1 %i.hs, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !5806, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !5806, !noundef !6 ; 7 uses
  switch i64 %i.hw, label %bb.ae [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.hx = load i8, ptr %i.hu, align 1, !alias.scope !5819, !noalias !5806, !noundef !6
  switch i8 %i.hx, label %.lr.ph.i.i99.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
  ]

.lr.ph.i.i99.i.preheader:                         ; preds = %bb.ah, %bb.af, %bb.ad
  %.sroa.03.182.i.i.i.ph = phi ptr [ %i.hy, %bb.af ], [ %i.hu, %bb.ah ], [ %i.hu, %bb.ad ]
  %.sroa.16.181.i.i.i.ph = phi i64 [ %i.hz, %bb.af ], [ %i.hw, %bb.ah ], [ 1, %bb.ad ]
  br label %.lr.ph.i.i99.i

bb.ae:                                            ; preds = %bb.ac
  %.pr.i.i.i = load i8, ptr %i.hu, align 1, !alias.scope !5819, !noalias !5806
  %cond.i.i.i = icmp eq i8 %.pr.i.i.i, 43
  br i1 %cond.i.i.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %i.hz = add i64 %i.hw, -1                       ; 2 uses
  %i.ia = icmp ult i64 %i.hw, 10
  br i1 %i.ia, label %.lr.ph.i.i99.i.preheader, label %.preheader71.i.i.i

.preheader71.i.i.i:                               ; preds = %bb.ah, %bb.af
  %.sroa.16.0.ph.i.i.i = phi i64 [ %i.hw, %bb.ah ], [ %i.hz, %bb.af ] ; 2 uses
  %.sroa.03.0.ph.i.i.i = phi ptr [ %i.hu, %bb.ah ], [ %i.hy, %bb.af ]
  %.not.i.i100.i1836 = icmp eq i64 %.sroa.16.0.ph.i.i.i, 0
  br i1 %.not.i.i100.i1836, label %.loopexit.i.i.i, label %.lr.ph

bb.ag:                                            ; preds = %bb.ak
  %.not.i.i100.i = icmp eq i64 %i.if, 0
  br i1 %.not.i.i100.i, label %.loopexit.i.i.i, label %.lr.ph

bb.ah:                                            ; preds = %bb.ae
  %i.ib = icmp ult i64 %i.hw, 9
  br i1 %i.ib, label %.lr.ph.i.i99.i.preheader, label %.preheader71.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ag, %bb.al, %.preheader71.i.i.i
  %.sroa.019.2.i.i.i = phi i32 [ %i.ix, %bb.al ], [ 0, %.preheader71.i.i.i ], [ %i.ip, %bb.ag ]
  %i.ic = zext i32 %.sroa.019.2.i.i.i to i64
  %i.id = shl nuw i64 %i.ic, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i"

.lr.ph:                                           ; preds = %.preheader71.i.i.i, %bb.ag
  %.sroa.03.0.i.i.i1839 = phi ptr [ %i.ie, %bb.ag ], [ %.sroa.03.0.ph.i.i.i, %.preheader71.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i1838 = phi i64 [ %i.if, %bb.ag ], [ %.sroa.16.0.ph.i.i.i, %.preheader71.i.i.i ]
  %.sroa.019.0.i.i.i1837 = phi i32 [ %i.ip, %bb.ag ], [ 0, %.preheader71.i.i.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i1839, i64 1
  %i.if = add i64 %.sroa.16.0.i.i.i1838, -1       ; 2 uses
  %i.ig = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i.i.i1837, i32 10) ; 2 uses
  %i.ih = extractvalue { i32, i1 } %i.ig, 0       ; 2 uses
  %i.ii = extractvalue { i32, i1 } %i.ig, 1
  %i.ij = load i8, ptr %.sroa.03.0.i.i.i1839, align 1, !alias.scope !5819, !noalias !5806, !noundef !6 ; 2 uses
  br i1 %i.ii, label %bb.aj, label %bb.ai, !prof !16

bb.ai:                                            ; preds = %.lr.ph
  %i.ik = zext i8 %i.ij to i32
  %i.il = add nsw i32 %i.ik, -48                  ; 2 uses
  %i.im = icmp ult i32 %i.il, 10
  br i1 %i.im, label %bb.ak, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.aj:                                            ; preds = %.lr.ph
  %i.in = add i8 %i.ij, -48
  %i.io = icmp ult i8 %i.in, 10
  %spec.select.i.i.i = select i1 %i.io, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i"

bb.ak:                                            ; preds = %bb.ai
  %i.ip = add i32 %i.il, %i.ih                    ; 3 uses
  %.not66.i.i.i = icmp ult i32 %i.ip, %i.ih
  br i1 %.not66.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %bb.ag

.lr.ph.i.i99.i:                                   ; preds = %.lr.ph.i.i99.i.preheader, %bb.al
  %.sroa.03.182.i.i.i = phi ptr [ %i.iw, %bb.al ], [ %.sroa.03.182.i.i.i.ph, %.lr.ph.i.i99.i.preheader ] ; 2 uses
  %.sroa.16.181.i.i.i = phi i64 [ %i.iv, %bb.al ], [ %.sroa.16.181.i.i.i.ph, %.lr.ph.i.i99.i.preheader ]
  %.sroa.019.180.i.i.i = phi i32 [ %i.ix, %bb.al ], [ 0, %.lr.ph.i.i99.i.preheader ]
  %i.iq = load i8, ptr %.sroa.03.182.i.i.i, align 1, !alias.scope !5819, !noalias !5806, !noundef !6
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -48                  ; 2 uses
  %i.it = icmp ult i32 %i.is, 10
  br i1 %i.it, label %bb.al, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.al:                                            ; preds = %.lr.ph.i.i99.i
  %i.iu = mul i32 %.sroa.019.180.i.i.i, 10
  %i.iv = add nsw i64 %.sroa.16.181.i.i.i, -1     ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i.i.i, i64 1
  %i.ix = add i32 %i.is, %i.iu                    ; 2 uses
  %.not67.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not67.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i99.i

.loopexit.i:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i
  %.sroa.0.0149158.i.i = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i ] ; 3 uses
  %.sroa.8.0155.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i ], [ %.sroa.8.0.copyload.i.i84, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i ] ; 3 uses
  %.sroa.16.0153.i.i = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i ], [ %.sroa.16.0.copyload.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5808
  store i64 %.sroa.16.0153.i.i, ptr %i.al, align 8, !noalias !5808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5808
  store ptr %i.al, ptr %i.ak, align 8, !noalias !5808
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.448.0..sroa_idx.i.i, align 8, !noalias !5808
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.iy, align 8, !noalias !5808
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h723775f099bd1798E", ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !5808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5820
  store ptr @204, ptr %i.ai, align 8, !noalias !5821
  %.sroa.4146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 2, ptr %.sroa.4146.0..sroa_idx.i.i, align 8, !noalias !5821
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5821
  %.sroa.6147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 2, ptr %.sroa.6147.0..sroa_idx.i.i, align 8, !noalias !5821
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5821
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.bm unwind label %.loopexit.split-lp.i, !noalias !5806

.loopexit219.i:                                   ; preds = %bb.bh, %.thread177.i.i
  %lpad.loopexit220.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp.i:                             ; preds = %bb.bm, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", %.loopexit.i
  %.sroa.0.0149159.i.ph.i = phi i64 [ %.sroa.0.0149158.i.i, %.loopexit.i ], [ %.sroa.0.0.copyload.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ], [ %.sroa.0.0149158.i.i, %bb.bm ]
  %.sroa.8.0156.i.ph.i = phi ptr [ %.sroa.8.0155.i.i, %.loopexit.i ], [ %.sroa.8.0.copyload.i.i84, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ], [ %.sroa.8.0155.i.i, %bb.bm ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp.i, %.loopexit219.i
  %.sroa.0.0149159.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.loopexit219.i ], [ %.sroa.0.0149159.i.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0156.i.i = phi ptr [ %.sroa.8.0.copyload.i.i84, %.loopexit219.i ], [ %.sroa.8.0156.i.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi221.i = phi { ptr, i32 } [ %lpad.loopexit220.i, %.loopexit219.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.iz = icmp eq i64 %.sroa.0.0149159.i.i, 0
  br i1 %i.iz, label %.body, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = shl nuw i64 %.sroa.0.0149159.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0156.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0156.i.i, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %.body

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i": ; preds = %bb.aj, %.loopexit.i.i.i
  %.sroa.8.0.insert.insert.i.i.i = phi i64 [ %i.id, %.loopexit.i.i.i ], [ %spec.select.i.i.i, %bb.aj ] ; 3 uses
  %i.jb = trunc i64 %.sroa.8.0.insert.insert.i.i.i to i1
  br i1 %i.jb, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %.thread.i.i, !prof !28

.thread.i.i:                                      ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i"
  %.sroa.659.0.extract.shift.mask.i.i = and i64 %.sroa.8.0.insert.insert.i.i.i, -4294967296
  %i.jc = icmp eq i64 %.sroa.659.0.extract.shift.mask.i.i, 4294967296
  %i.jd = select i1 %i.jc, i64 4294967296, i64 0
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !5806, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 40
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !5806, !noundef !6 ; 7 uses
  switch i64 %i.jh, label %bb.ap [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %.thread.i.i
  %i.ji = load i8, ptr %i.jf, align 1, !alias.scope !5822, !noalias !5806, !noundef !6
  switch i8 %i.ji, label %.lr.ph.i86.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
  ]

.lr.ph.i86.i.i.preheader:                         ; preds = %bb.as, %bb.aq, %bb.ao
  %.sroa.03.182.i87.i.i.ph = phi ptr [ %i.jj, %bb.aq ], [ %i.jf, %bb.as ], [ %i.jf, %bb.ao ]
  %.sroa.16.181.i88.i.i.ph = phi i64 [ %i.jk, %bb.aq ], [ %i.jh, %bb.as ], [ 1, %bb.ao ]
  br label %.lr.ph.i86.i.i

bb.ap:                                            ; preds = %.thread.i.i
  %.pr.i93.i.i = load i8, ptr %i.jf, align 1, !alias.scope !5822, !noalias !5806
  %cond.i94.i.i = icmp eq i8 %.pr.i93.i.i, 43
  br i1 %cond.i94.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 2 uses
  %i.jk = add i64 %i.jh, -1                       ; 2 uses
  %i.jl = icmp ult i64 %i.jh, 10
  br i1 %i.jl, label %.lr.ph.i86.i.i.preheader, label %.preheader71.i95.i.i

.preheader71.i95.i.i:                             ; preds = %bb.as, %bb.aq
  %.sroa.16.0.ph.i96.i.i = phi i64 [ %i.jh, %bb.as ], [ %i.jk, %bb.aq ] ; 2 uses
  %.sroa.03.0.ph.i97.i.i = phi ptr [ %i.jf, %bb.as ], [ %i.jj, %bb.aq ]
  %.not.i101.i.i1840 = icmp eq i64 %.sroa.16.0.ph.i96.i.i, 0
  br i1 %.not.i101.i.i1840, label %.loopexit.i91.i.i, label %.lr.ph1844

bb.ar:                                            ; preds = %bb.av
  %.not.i101.i.i = icmp eq i64 %i.jq, 0
  br i1 %.not.i101.i.i, label %.loopexit.i91.i.i, label %.lr.ph1844

bb.as:                                            ; preds = %bb.ap
  %i.jm = icmp ult i64 %i.jh, 9
  br i1 %i.jm, label %.lr.ph.i86.i.i.preheader, label %.preheader71.i95.i.i

.loopexit.i91.i.i:                                ; preds = %bb.ar, %bb.aw, %.preheader71.i95.i.i
  %.sroa.019.2.i92.i.i = phi i32 [ %i.ki, %bb.aw ], [ 0, %.preheader71.i95.i.i ], [ %i.ka, %bb.ar ]
  %i.jn = zext i32 %.sroa.019.2.i92.i.i to i64
  %i.jo = shl nuw i64 %i.jn, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i"

.lr.ph1844:                                       ; preds = %.preheader71.i95.i.i, %bb.ar
  %.sroa.03.0.i100.i.i1843 = phi ptr [ %i.jp, %bb.ar ], [ %.sroa.03.0.ph.i97.i.i, %.preheader71.i95.i.i ] ; 2 uses
  %.sroa.16.0.i99.i.i1842 = phi i64 [ %i.jq, %bb.ar ], [ %.sroa.16.0.ph.i96.i.i, %.preheader71.i95.i.i ]
  %.sroa.019.0.i98.i.i1841 = phi i32 [ %i.ka, %bb.ar ], [ 0, %.preheader71.i95.i.i ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i100.i.i1843, i64 1
  %i.jq = add i64 %.sroa.16.0.i99.i.i1842, -1     ; 2 uses
  %i.jr = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i98.i.i1841, i32 10) ; 2 uses
  %i.js = extractvalue { i32, i1 } %i.jr, 0       ; 2 uses
  %i.jt = extractvalue { i32, i1 } %i.jr, 1
  %i.ju = load i8, ptr %.sroa.03.0.i100.i.i1843, align 1, !alias.scope !5822, !noalias !5806, !noundef !6 ; 2 uses
  br i1 %i.jt, label %bb.au, label %bb.at, !prof !16

bb.at:                                            ; preds = %.lr.ph1844
  %i.jv = zext i8 %i.ju to i32
  %i.jw = add nsw i32 %i.jv, -48                  ; 2 uses
  %i.jx = icmp ult i32 %i.jw, 10
  br i1 %i.jx, label %bb.av, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.au:                                            ; preds = %.lr.ph1844
  %i.jy = add i8 %i.ju, -48
  %i.jz = icmp ult i8 %i.jy, 10
  %spec.select.i103.i.i = select i1 %i.jz, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i"

bb.av:                                            ; preds = %bb.at
  %i.ka = add i32 %i.jw, %i.js                    ; 3 uses
  %.not66.i102.i.i = icmp ult i32 %i.ka, %i.js
  br i1 %.not66.i102.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %bb.ar

.lr.ph.i86.i.i:                                   ; preds = %.lr.ph.i86.i.i.preheader, %bb.aw
  %.sroa.03.182.i87.i.i = phi ptr [ %i.kh, %bb.aw ], [ %.sroa.03.182.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.sroa.16.181.i88.i.i = phi i64 [ %i.kg, %bb.aw ], [ %.sroa.16.181.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ]
  %.sroa.019.180.i89.i.i = phi i32 [ %i.ki, %bb.aw ], [ 0, %.lr.ph.i86.i.i.preheader ]
  %i.kb = load i8, ptr %.sroa.03.182.i87.i.i, align 1, !alias.scope !5822, !noalias !5806, !noundef !6
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -48                  ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 10
  br i1 %i.ke, label %bb.aw, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.aw:                                            ; preds = %.lr.ph.i86.i.i
  %i.kf = mul i32 %.sroa.019.180.i89.i.i, 10
  %i.kg = add nsw i64 %.sroa.16.181.i88.i.i, -1   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i87.i.i, i64 1
  %i.ki = add i32 %i.kd, %i.kf                    ; 2 uses
  %.not67.i90.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not67.i90.i.i, label %.loopexit.i91.i.i, label %.lr.ph.i86.i.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i": ; preds = %bb.au, %.loopexit.i91.i.i
  %.sroa.8.0.insert.insert.i82.i.i = phi i64 [ %i.jo, %.loopexit.i91.i.i ], [ %spec.select.i103.i.i, %bb.au ] ; 3 uses
  %i.kj = trunc i64 %.sroa.8.0.insert.insert.i82.i.i to i1
  br i1 %i.kj, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %.thread167.i.i, !prof !28

.thread167.i.i:                                   ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i"
  %.sroa.663.0.extract.shift.mask.i.i = and i64 %.sroa.8.0.insert.insert.i82.i.i, -4294967296
  %i.kk = icmp eq i64 %.sroa.663.0.extract.shift.mask.i.i, 4294967296
  %i.kl = select i1 %i.kk, i64 1099511627776, i64 0
  %i.km = or disjoint i64 %i.kl, %i.jd
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 48
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !5806, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 56
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !5806, !noundef !6 ; 7 uses
  switch i64 %i.kq, label %bb.ay [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i64 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %.thread167.i.i
  %i.kr = load i8, ptr %i.ko, align 1, !alias.scope !5823, !noalias !5806, !noundef !6
  switch i8 %i.kr, label %.lr.ph.i112.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
  ]

.lr.ph.i112.i.i.preheader:                        ; preds = %bb.bb, %bb.az, %bb.ax
  %.sroa.03.182.i113.i.i.ph = phi ptr [ %i.ks, %bb.az ], [ %i.ko, %bb.bb ], [ %i.ko, %bb.ax ]
  %.sroa.16.181.i114.i.i.ph = phi i64 [ %i.kt, %bb.az ], [ %i.kq, %bb.bb ], [ 1, %bb.ax ]
  br label %.lr.ph.i112.i.i

bb.ay:                                            ; preds = %.thread167.i.i
  %.pr.i119.i.i = load i8, ptr %i.ko, align 1, !alias.scope !5823, !noalias !5806
  %cond.i120.i.i = icmp eq i8 %.pr.i119.i.i, 43
  br i1 %cond.i120.i.i, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 2 uses
  %i.kt = add i64 %i.kq, -1                       ; 2 uses
  %i.ku = icmp ult i64 %i.kq, 10
  br i1 %i.ku, label %.lr.ph.i112.i.i.preheader, label %.preheader71.i121.i.i

.preheader71.i121.i.i:                            ; preds = %bb.bb, %bb.az
  %.sroa.16.0.ph.i122.i.i = phi i64 [ %i.kq, %bb.bb ], [ %i.kt, %bb.az ] ; 2 uses
  %.sroa.03.0.ph.i123.i.i = phi ptr [ %i.ko, %bb.bb ], [ %i.ks, %bb.az ]
  %.not.i127.i.i1846 = icmp eq i64 %.sroa.16.0.ph.i122.i.i, 0
  br i1 %.not.i127.i.i1846, label %.loopexit.i117.i.i, label %.lr.ph1850

bb.ba:                                            ; preds = %bb.be
  %.not.i127.i.i = icmp eq i64 %i.kz, 0
  br i1 %.not.i127.i.i, label %.loopexit.i117.i.i, label %.lr.ph1850

bb.bb:                                            ; preds = %bb.ay
  %i.kv = icmp ult i64 %i.kq, 9
  br i1 %i.kv, label %.lr.ph.i112.i.i.preheader, label %.preheader71.i121.i.i

.loopexit.i117.i.i:                               ; preds = %bb.ba, %bb.bf, %.preheader71.i121.i.i
  %.sroa.019.2.i118.i.i = phi i32 [ %i.lr, %bb.bf ], [ 0, %.preheader71.i121.i.i ], [ %i.lj, %bb.ba ]
  %i.kw = zext i32 %.sroa.019.2.i118.i.i to i64
  %i.kx = shl nuw i64 %i.kw, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i"

.lr.ph1850:                                       ; preds = %.preheader71.i121.i.i, %bb.ba
  %.sroa.03.0.i126.i.i1849 = phi ptr [ %i.ky, %bb.ba ], [ %.sroa.03.0.ph.i123.i.i, %.preheader71.i121.i.i ] ; 2 uses
  %.sroa.16.0.i125.i.i1848 = phi i64 [ %i.kz, %bb.ba ], [ %.sroa.16.0.ph.i122.i.i, %.preheader71.i121.i.i ]
  %.sroa.019.0.i124.i.i1847 = phi i32 [ %i.lj, %bb.ba ], [ 0, %.preheader71.i121.i.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i126.i.i1849, i64 1
  %i.kz = add i64 %.sroa.16.0.i125.i.i1848, -1    ; 2 uses
  %i.la = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i124.i.i1847, i32 10) ; 2 uses
  %i.lb = extractvalue { i32, i1 } %i.la, 0       ; 2 uses
  %i.lc = extractvalue { i32, i1 } %i.la, 1
  %i.ld = load i8, ptr %.sroa.03.0.i126.i.i1849, align 1, !alias.scope !5823, !noalias !5806, !noundef !6 ; 2 uses
  br i1 %i.lc, label %bb.bd, label %bb.bc, !prof !16

bb.bc:                                            ; preds = %.lr.ph1850
  %i.le = zext i8 %i.ld to i32
  %i.lf = add nsw i32 %i.le, -48                  ; 2 uses
  %i.lg = icmp ult i32 %i.lf, 10
  br i1 %i.lg, label %bb.be, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.bd:                                            ; preds = %.lr.ph1850
  %i.lh = add i8 %i.ld, -48
  %i.li = icmp ult i8 %i.lh, 10
  %spec.select.i129.i.i = select i1 %i.li, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i"

bb.be:                                            ; preds = %bb.bc
  %i.lj = add i32 %i.lf, %i.lb                    ; 3 uses
  %.not66.i128.i.i = icmp ult i32 %i.lj, %i.lb
  br i1 %.not66.i128.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %bb.ba

.lr.ph.i112.i.i:                                  ; preds = %.lr.ph.i112.i.i.preheader, %bb.bf
  %.sroa.03.182.i113.i.i = phi ptr [ %i.lq, %bb.bf ], [ %.sroa.03.182.i113.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %.sroa.16.181.i114.i.i = phi i64 [ %i.lp, %bb.bf ], [ %.sroa.16.181.i114.i.i.ph, %.lr.ph.i112.i.i.preheader ]
  %.sroa.019.180.i115.i.i = phi i32 [ %i.lr, %bb.bf ], [ 0, %.lr.ph.i112.i.i.preheader ]
  %i.lk = load i8, ptr %.sroa.03.182.i113.i.i, align 1, !alias.scope !5823, !noalias !5806, !noundef !6
  %i.ll = zext i8 %i.lk to i32
  %i.lm = add nsw i32 %i.ll, -48                  ; 2 uses
  %i.ln = icmp ult i32 %i.lm, 10
  br i1 %i.ln, label %bb.bf, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"

bb.bf:                                            ; preds = %.lr.ph.i112.i.i
  %i.lo = mul i32 %.sroa.019.180.i115.i.i, 10
  %i.lp = add nsw i64 %.sroa.16.181.i114.i.i, -1  ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i113.i.i, i64 1
  %i.lr = add i32 %i.lm, %i.lo                    ; 2 uses
  %.not67.i116.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not67.i116.i.i, label %.loopexit.i117.i.i, label %.lr.ph.i112.i.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i": ; preds = %bb.bd, %.loopexit.i117.i.i
  %.sroa.8.0.insert.insert.i108.i.i = phi i64 [ %i.kx, %.loopexit.i117.i.i ], [ %spec.select.i129.i.i, %bb.bd ] ; 3 uses
  %i.ls = trunc i64 %.sroa.8.0.insert.insert.i108.i.i to i1
  br i1 %i.ls, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i", label %.thread177.i.i, !prof !28

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i", %bb.ax, %bb.ax, %.thread167.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i", %bb.ao, %bb.ao, %.thread.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i", %bb.ad, %bb.ad, %bb.ac, %bb.ak, %bb.ai, %.lr.ph.i.i99.i, %bb.av, %bb.at, %.lr.ph.i86.i.i, %bb.be, %bb.bc, %.lr.ph.i112.i.i
  %.sroa.8.0.insert.insert.i161.sink.i.i = phi i64 [ 512, %bb.ak ], [ 512, %bb.be ], [ 512, %bb.av ], [ 256, %.lr.ph.i86.i.i ], [ 256, %.lr.ph.i112.i.i ], [ 256, %.lr.ph.i.i99.i ], [ 256, %bb.bc ], [ 256, %bb.at ], [ 256, %bb.ai ], [ %i.hw, %bb.ac ], [ 256, %bb.ad ], [ %.sroa.8.0.insert.insert.i82.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit106.i.i" ], [ 256, %bb.ao ], [ %i.jh, %.thread.i.i ], [ 256, %bb.ao ], [ %.sroa.8.0.insert.insert.i108.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i" ], [ 256, %bb.ax ], [ %i.kq, %.thread167.i.i ], [ 256, %bb.ax ], [ %.sroa.8.0.insert.insert.i.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i" ], [ 256, %bb.ad ]
  %.sroa.457.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i161.sink.i.i, 8
  %.sroa.457.0.extract.trunc.i.i = trunc i64 %.sroa.457.0.extract.shift.i.i to i8
  %i.lt = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.457.0.extract.trunc.i.i)
          to label %bb.bk unwind label %.loopexit.split-lp.i, !noalias !5806

.thread177.i.i:                                   ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.i.i"
  %.sroa.667.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i108.i.i, 32
  %i.lu = or disjoint i64 %i.km, %.sroa.667.0.extract.shift.i.i
  %i.lv = load ptr, ptr %.sroa.8.0.copyload.i.i84, align 8, !noalias !5806, !nonnull !6, !align !11, !noundef !6
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i84, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !noalias !5806, !noundef !6
  %i.ly = invoke noundef i64 @_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11category_id17had50c71a38f65706E(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lv, i64 noundef %i.lx)
          to label %bb.bg unwind label %.loopexit219.i ; 0 uses

bb.bg:                                            ; preds = %.thread177.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5824)
  %i.lz = load i64, ptr %i.by, align 8, !alias.scope !5825, !noundef !6 ; 3 uses
  %i.ma = load i64, ptr %1, align 8, !range !14, !alias.scope !5825, !noundef !6
  %i.mb = icmp eq i64 %i.lz, %i.ma
  br i1 %i.mb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf2c8a728dad7f077E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @201)
          to label %bb.bi unwind label %.loopexit219.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mc = load ptr, ptr %i.bz, align 8, !alias.scope !5825, !nonnull !6, !noundef !6
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.lz
  store i64 %i.lu, ptr %i.md, align 4, !noalias !5824
  %i.me = add i64 %i.lz, 1
  store i64 %i.me, ptr %i.by, align 8, !alias.scope !5825
  %i.mf = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.mf, label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder14parse_category17h57db40bbce2aeb73E.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mg = shl nuw i64 %.sroa.0.0.copyload.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i.i84, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder14parse_category17h57db40bbce2aeb73E.exit.thread.i

bb.bk:                                            ; preds = %bb.bm, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i"
  %.sroa.0.0149157.i.i = phi i64 [ %.sroa.0.0149158.i.i, %bb.bm ], [ %.sroa.0.0.copyload.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ] ; 2 uses
  %.sroa.8.0154.i.i = phi ptr [ %.sroa.8.0155.i.i, %bb.bm ], [ %.sroa.8.0.copyload.i.i84, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ] ; 2 uses
  %.sroa.6.1.i.i = phi i8 [ 1, %bb.bm ], [ 5, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ]
  %.sroa.0.1.i98.i = phi ptr [ %i.mj, %bb.bm ], [ %i.lt, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit132.thread.invoke.i.i" ]
  %i.mh = icmp eq i64 %.sroa.0.0149157.i.i, 0
  br i1 %i.mh, label %bb.em, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mi = shl nuw i64 %.sroa.0.0149157.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0154.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0154.i.i, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !5806
  br label %bb.em

bb.bm:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5808
  %i.mj = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hba822881bcddadacE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.bk unwind label %.loopexit.split-lp.i, !noalias !5806

_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder14parse_category17h57db40bbce2aeb73E.exit.thread.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5794
  br label %.backedge.i

bb.bn:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !5826)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5794
  store ptr %i.fk, ptr %i.ah, align 8, !noalias !5827
  store i64 %i.fl, ptr %i.ca, align 8, !noalias !5827
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5828
  store i64 0, ptr %i.aa, align 8, !alias.scope !5829, !noalias !5830
  store i64 %i.fl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store ptr %i.fk, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store i64 %i.fl, ptr %.sroa.592.sroa.4.0..sroa.592.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store ptr %i.fk, ptr %.sroa.592.sroa.5.0..sroa.592.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store ptr %i.mk, ptr %.sroa.592.sroa.6.0..sroa.592.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store i64 0, ptr %.sroa.592.sroa.7.0..sroa.592.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !5829, !noalias !5830
  store i8 0, ptr %.sroa.7.0..sroa_idx.i101.i, align 1, !alias.scope !5829, !noalias !5830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5831
  %i.ml = call fastcc { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aa), !noalias !5832 ; 2 uses
  %i.mm = extractvalue { ptr, i64 } %i.ml, 0      ; 3 uses
  %i.mn = extractvalue { ptr, i64 } %i.ml, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cf, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5833
  %i.mo = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #47, !noalias !5833 ; 6 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i102.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i102.i": ; preds = %bb.bo
  store ptr %i.mm, ptr %i.mo, align 8, !noalias !5834
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %i.mn, ptr %i.mq, align 8, !noalias !5834
  store i64 4, ptr %i.z, align 8, !noalias !5831
  store ptr %i.mo, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i103.i, align 8, !noalias !5831
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i104.i, align 8, !noalias !5831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !noalias !5835
  call void @llvm.experimental.noalias.scope.decl(metadata !5836)
  call void @llvm.experimental.noalias.scope.decl(metadata !5837)
  %i.mr = call fastcc { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.y), !noalias !5838 ; 2 uses
  %i.ms = extractvalue { ptr, i64 } %i.mr, 0      ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf2053fac5a11e54bE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.preheader.i:                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i102.i"
  %i.mt = extractvalue { ptr, i64 } %i.mr, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i", %.lr.ph.i.i.i.i.i.i.i.preheader.i
  %i.mu = phi ptr [ %i.na, %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i" ], [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.mv = phi i64 [ %i.nb, %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i" ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.mw = phi i64 [ %i.ne, %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i" ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i.i.i, %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i" ], [ %i.mt, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.mx = phi ptr [ %.sroa.0.1.i.i.i.i.i.i, %"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE.exit.i" ], [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.my = icmp samesign ult i64 %i.mw, 576460752303423488
  call void @llvm.assume(i1 %i.my)
  %i.mz = icmp eq i64 %i.mw, %i.mv
  br i1 %i.mz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i114.i", label %bb.bp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i114.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.mv, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i.i.i.i.i117.i unwind label %bb.cc, !noalias !5834

.noexc.i.i.i.i.i117.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i.i114.i"
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !14, !alias.scope !5839, !noalias !5831
  %.pre.i.i.i.i.i118.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i103.i, align 8, !alias.scope !5839, !noalias !5831
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc.i.i.i.i.i117.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.na = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i118.i, %.noexc.i.i.i.i.i117.i ] ; 2 uses
  %i.nb = phi i64 [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i117.i ]
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.mw ; 2 uses
  store ptr %i.mx, ptr %i.nc, align 8, !noalias !5840
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store i64 %.pn.i.i.i.i.i.i.i.i, ptr %i.nd, align 8, !noalias !5840
  %i.ne = add nuw nsw i64 %i.mw, 1                ; 3 uses
  store i64 %i.ne, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i104.i, align 8, !alias.scope !5839, !noalias !5831
  call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  call void @llvm.experimental.noalias.scope.decl(metadata !5842), !noalias !5838
  call void @llvm.experimental.noalias.scope.decl(metadata !5843), !noalias !5838
  %.promoted.i.i.i.i = load i8, ptr %i.cb, align 1, !alias.scope !5844, !noalias !5845
  %.promoted18.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !5846, !noalias !5845
  %.val.i.i.i.i.i124.i = load ptr, ptr %i.cc, align 8, !alias.scope !5846, !noalias !5845, !nonnull !6, !align !11
  %i.nf = load ptr, ptr %i.ce, align 8, !alias.scope !5846, !noalias !5845, !nonnull !6 ; 5 uses
  %i.ng = load i8, ptr %i.cg, align 8, !range !23, !alias.scope !5846, !noalias !5845
  %i.nh = trunc nuw i8 %i.ng to i1
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !5846, !noalias !5845 ; 2 uses
  %.promoted21.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !5846, !noalias !5845
  %.promoted22.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !5846, !noalias !5845
  br label %bb.bq

bb.bq:                                            ; preds = %select.unfold.i.i.i.i, %bb.bp
  %.lcssa1725.i.i.i.i = phi i64 [ %.lcssa1723.i.i.i.i, %select.unfold.i.i.i.i ], [ %.promoted22.i.i.i.i, %bb.bp ] ; 2 uses
  %i.ni = phi ptr [ %i.pu, %select.unfold.i.i.i.i ], [ %.promoted21.i.i.i.i, %bb.bp ] ; 3 uses
  %.pre.i.i.i20.i.i.i.i = phi i64 [ %.pre.i.i.i19.i.i.i.i, %select.unfold.i.i.i.i ], [ %.promoted18.i.i.i.i, %bb.bp ] ; 5 uses
  %i.nj = phi i8 [ %i.pv, %select.unfold.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.bp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5847), !noalias !5838
  call void @llvm.experimental.noalias.scope.decl(metadata !5848), !noalias !5838
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf2053fac5a11e54bE.exit.thread144.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !5849), !noalias !5838
  call void @llvm.experimental.noalias.scope.decl(metadata !5850), !noalias !5838
  %i.nl = icmp eq ptr %i.ni, %i.nf
  br i1 %i.nl, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i125.i

.lr.ph.i.i.i.i.i.i.i125.i:                        ; preds = %bb.br, %bb.ca
  %i.nm = phi i64 [ %i.pb, %bb.ca ], [ %.lcssa1725.i.i.i.i, %bb.br ] ; 2 uses
  %i.nn = phi ptr [ %i.ox, %bb.ca ], [ %i.ni, %bb.br ] ; 6 uses
  %i.no = ptrtoint ptr %i.nn to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !5851), !noalias !5838
  call void @llvm.experimental.noalias.scope.decl(metadata !5852), !noalias !5838
  call void @llvm.experimental.noalias.scope.decl(metadata !5853), !noalias !5838
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 1 ; 4 uses
  store ptr %i.np, ptr %i.cd, align 8, !alias.scope !5854, !noalias !5845
  %i.nq = load i8, ptr %i.nn, align 1, !noalias !5855, !noundef !6 ; 5 uses
  %i.nr = icmp sgt i8 %i.nq, -1
  br i1 %i.nr, label %bb.bs, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i125.i
  %i.ns = and i8 %i.nq, 31
  %i.nt = zext nneg i8 %i.ns to i32               ; 3 uses
  %i.nu = icmp ne ptr %i.np, %i.nf
  call void @llvm.assume(i1 %i.nu), !noalias !5838
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 2 ; 4 uses
  store ptr %i.nv, ptr %i.cd, align 8, !alias.scope !5856, !noalias !5845
  %i.nw = load i8, ptr %i.np, align 1, !noalias !5855, !noundef !6
  %i.nx = shl nuw nsw i32 %i.nt, 6
  %i.ny = and i8 %i.nw, 63
  %i.nz = zext nneg i8 %i.ny to i32               ; 2 uses
  %i.oa = or disjoint i32 %i.nx, %i.nz
  %i.ob = icmp samesign ugt i8 %i.nq, -33
end_hunk_2
begin_hunk_3_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a
  %i.mp = add i64 %.sroa.27.2.i.i.i.i.i.i.i.i936, -1 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.na, 0       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph938

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.preheader108.i.i.i.i.i.i.i.i, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cc, %bb.cn, %.preheader108.i.i.i.i.i.i.i.i.preheader, %.preheader102.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i.i = phi i32 [ %i.ox, %bb.ck ], [ %i.pp, %bb.cn ], [ %i.mn, %bb.cc ], [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.i.preheader ], [ %i.nh, %bb.ce ], [ %i.no, %bb.cf ], [ %i.nv, %bb.cg ], [ %i.oc, %bb.ch ], [ %i.oj, %bb.ci ], [ %i.oq, %bb.cj ], [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ]
  %i.mr = zext i32 %.sroa.033.3.i.i.i.i.i.i.i.i to i64
  %i.ms = shl nuw i64 %i.mr, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph938:                                        ; preds = %.preheader108.i.i.i.i.i.i.i.i.preheader, %.preheader108.i.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i.i937 = phi ptr [ %i.mo, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mi, %.preheader108.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i.i936 = phi i64 [ %i.mp, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mj, %.preheader108.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i.i.i.i.i935 = phi i32 [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.i.preheader ]
  %i.mt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i.i935, i32 10) ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1
  %i.mv = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i937, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 9                   ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %i.mu
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph938
  %i.mz = extractvalue { i32, i1 } %i.mt, 0
  %i.na = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mz, i32 %i.mx) ; 2 uses
  %i.nb = extractvalue { i32, i1 } %i.na, 1
  br i1 %i.nb, label %.loopexit101.i.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph943
  %.mux97.le.i.i.i.i.i.i.i.i = select i1 %i.pe, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph938
  %.mux.le.i.i.i.i.i.i.i.i = select i1 %i.my, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i.i:                     ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.6, %bb.cm, %.lr.ph129.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i.i ], [ 512, %bb.cm ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.mux97.le.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.6 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.5 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.4 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ 768, %bb.cd ]
  %i.nc = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader105.i.i.i.i.i.i.i.i
  %i.nd = load i8, ptr %i.mi, align 1, !alias.scope !6619, !noalias !6620, !noundef !6 ; 2 uses
  %i.ne = add i8 %i.nd, -48
  %i.nf = icmp ult i8 %i.ne, 10
  br i1 %i.nf, label %bb.ce, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ng = zext i8 %i.nd to i32
  %i.nh = sub nsw i32 48, %i.ng                   ; 2 uses
  %.not91.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 2
  br i1 %.not91.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %bb.ce
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.cf, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.nn = mul nsw i32 %i.nh, 10
  %i.no = sub nsw i32 %i.nn, %i.nl                ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 3
  br i1 %.not91.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.cf
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -48                  ; 2 uses
  %i.nt = icmp ult i32 %i.ns, 10
  br i1 %i.nt, label %bb.cg, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  %i.nu = mul nsw i32 %i.no, 10
  %i.nv = sub nsw i32 %i.nu, %i.ns                ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 4
  br i1 %.not91.i.i.i.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %bb.cg
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 4
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.ny = zext i8 %i.nx to i32
  %i.nz = add nsw i32 %i.ny, -48                  ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 10
  br i1 %i.oa, label %bb.ch, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.3
  %i.ob = mul nsw i32 %i.nv, 10
  %i.oc = sub i32 %i.ob, %i.nz                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.3 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 5
  br i1 %.not91.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %bb.ch
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 5
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.of = zext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, -48                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, 10
  br i1 %i.oh, label %bb.ci, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  %i.oi = mul i32 %i.oc, 10
  %i.oj = sub i32 %i.oi, %i.og                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 6
  br i1 %.not91.i.i.i.i.i.i.i.i.4, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.i.5:                         ; preds = %bb.ci
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 6
  %i.ol = load i8, ptr %i.ok, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.om = zext i8 %i.ol to i32
  %i.on = add nsw i32 %i.om, -48                  ; 2 uses
  %i.oo = icmp ult i32 %i.on, 10
  br i1 %i.oo, label %bb.cj, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.5
  %i.op = mul i32 %i.oj, 10
  %i.oq = sub i32 %i.op, %i.on                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.5 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 7
  br i1 %.not91.i.i.i.i.i.i.i.i.5, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.i.i.i.6:                         ; preds = %bb.cj
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 7
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.ot = zext i8 %i.os to i32
  %i.ou = add nsw i32 %i.ot, -48                  ; 2 uses
  %i.ov = icmp ult i32 %i.ou, 10
  br i1 %i.ov, label %bb.ck, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.6
  %i.ow = mul i32 %i.oq, 10
  %i.ox = sub i32 %i.ow, %i.ou
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.bz, %thread-pre-split.i.i.i.i.i.i.i.i
  %i.oy = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 8
  br i1 %i.oy, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i.i

.lr.ph129.i.i.i.i.i.i.i.i.preheader:              ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.cl
  %.sroa.03.1128.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cl ], [ %i.mf, %.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cl ], [ %i.mg, %.preheader.i.i.i.i.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i.i.i.i.i

.preheader102.i.i.i.i.i.i.i.i:                    ; preds = %bb.cl, %bb.ca
  %.sroa.27.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cl ], [ %i.mg, %bb.ca ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cl ], [ %i.mf, %bb.ca ]
  %.not92.i.i.i.i.i.i.i.i939 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i.i939, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph943

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.ca
  %.not93125.i.i.i.i.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not93125.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader

.lr.ph943:                                        ; preds = %.preheader102.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.03.0.i.i.i.i.i.i.i.i942 = phi ptr [ %i.ml, %bb.cc ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i.i941 = phi i64 [ %i.mm, %bb.cc ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i.i940 = phi i32 [ %i.mn, %bb.cc ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ]
  %i.oz = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i.i940, i32 10) ; 2 uses
  %i.pa = extractvalue { i32, i1 } %i.oz, 1
  %i.pb = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i942, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.pc = zext i8 %i.pb to i32
  %i.pd = add nsw i32 %i.pc, -48                  ; 2 uses
  %i.pe = icmp ugt i32 %i.pd, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i.i = select i1 %i.pe, i1 true, i1 %i.pa
  br i1 %brmerge96.i.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph943
  %i.pf = extractvalue { i32, i1 } %i.oz, 0
  %i.pg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pf, i32 %i.pd) ; 2 uses
  %i.ph = extractvalue { i32, i1 } %i.pg, 1
  br i1 %i.ph, label %.loopexit101.i.i.i.i.i.i.i.i, label %bb.cc

.lr.ph129.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph129.i.i.i.i.i.i.i.i.preheader, %bb.cn
  %.sroa.03.1128.i.i.i.i.i.i.i.i = phi ptr [ %i.po, %bb.cn ], [ %.sroa.03.1128.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i.i = phi i64 [ %i.pn, %bb.cn ], [ %.sroa.27.1127.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i.i = phi i32 [ %i.pp, %bb.cn ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %i.pi = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, align 1, !alias.scope !6619, !noalias !6620, !noundef !6
  %i.pj = zext i8 %i.pi to i32
  %i.pk = add nsw i32 %i.pj, -48                  ; 2 uses
  %i.pl = icmp ult i32 %i.pk, 10
  br i1 %i.pl, label %bb.cn, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph129.i.i.i.i.i.i.i.i
  %i.pm = mul i32 %.sroa.033.1126.i.i.i.i.i.i.i.i, 10
  %i.pn = add nsw i64 %.sroa.27.1127.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, i64 1
  %i.pp = add i32 %i.pk, %i.pm                    ; 2 uses
  %.not93.i.i.i.i.i.i.i.i = icmp eq i64 %i.pn, 0
  br i1 %.not93.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i: ; preds = %.loopexit101.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i = phi i64 [ %i.ms, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.nc, %.loopexit101.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.pq = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i to i1
  br i1 %i.pq, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit"

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i: ; preds = %bb.bz, %bb.bz, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i ], [ 256, %bb.bz ], [ 256, %bb.bz ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.pr = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, 5
  call void @llvm.assume(i1 %i.pr), !noalias !6590
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, ptr %i.jm, align 1, !alias.scope !6596, !noalias !6621
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit": ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6585 ; 2 uses
  %i.pt = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.pt, label %.body298, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6585, !nonnull !6, !noundef !6
  %i.pu = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i.i.i, i64 noundef %i.pu, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6585
  br label %.body298

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i": ; preds = %bb.bm, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  %.sroa.0.0.copyload10.pre.i.i.i = load i64, ptr %i.c, align 8, !noalias !6622 ; 4 uses
  %.sroa.7.0.copyload12.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6622 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6581
  %i.pv = load i8, ptr %i.e, align 1, !range !6623, !noalias !6580, !noundef !6 ; 2 uses
  %.not.not.i.i.i = icmp eq i8 %i.pv, 5
  br i1 %.not.not.i.i.i, label %bb.cs, label %bb.cq

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6581
  %i.pw = load i8, ptr %i.e, align 1, !range !6623, !noalias !6580, !noundef !6 ; 2 uses
  %.not.not39.i.i.i = icmp eq i8 %i.pw, 5
  br i1 %.not.not39.i.i.i, label %.thread586, label %.thread42.i.i.i

.thread42.i.i.i:                                  ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.7329.8.insert.ext331 = zext nneg i8 %i.pw to i64
  %i.px = inttoptr i64 %.sroa.7329.8.insert.ext331 to ptr
  br label %bb.cr

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i": ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6581
  %i.py = load i8, ptr %i.e, align 1, !range !6623, !noalias !6580, !noundef !6 ; 2 uses
  %.not.not21.i.i.i = icmp eq i8 %i.py, 5
  br i1 %.not.not21.i.i.i, label %.thread586, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i"
  %.sroa.7329.8.insert.ext = zext nneg i8 %i.py to i64
  %i.pz = inttoptr i64 %.sroa.7329.8.insert.ext to ptr
  br label %.thread579

bb.cq:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  %.sroa.7329.8.insert.ext335 = zext nneg i8 %i.pv to i64
  %i.qa = inttoptr i64 %.sroa.7329.8.insert.ext335 to ptr ; 2 uses
  %i.qb = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, 0
  br i1 %i.qb, label %.thread579, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.thread42.i.i.i
  %.sroa.7329.0 = phi ptr [ %i.qa, %bb.cq ], [ %i.px, %.thread42.i.i.i ]
  %.sroa.7.0.copyload124046.i.i.i = phi ptr [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.cq ], [ %i.ix, %.thread42.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload104145.i.i.i = phi i64 [ %.sroa.0.0.copyload10.pre.i.i.i, %bb.cq ], [ 4, %.thread42.i.i.i ]
  %i.qc = shl nuw i64 %.sroa.0.0.copyload104145.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload124046.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload124046.i.i.i, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6580
  br label %.thread579

.thread579:                                       ; preds = %.thread.i.i.i, %bb.cq, %bb.cr
  %.sroa.7329.1.ph = phi ptr [ %.sroa.7329.0, %bb.cr ], [ %i.qa, %bb.cq ], [ %i.pz, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6580
  br label %.loopexit622

.thread586:                                       ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i", %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.13.0.ph = phi i64 [ 1, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.7329.1.ph585 = phi ptr [ %i.ix, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ inttoptr (i64 4 to ptr), %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.0328.1.ph = phi i64 [ 4, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6580
  br label %bb.ct

bb.cs:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6580
  %i.qd = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, -9223372036854775808
  br i1 %i.qd, label %.loopexit622, label %._crit_edge762, !prof !28

._crit_edge762:                                   ; preds = %bb.cs
  %.pre = load i64, ptr %i.ap, align 8, !alias.scope !6624
  br label %bb.ct

.loopexit622:                                     ; preds = %bb.cs, %.thread579
  %.sroa.7329.1583 = phi ptr [ %.sroa.7329.1.ph, %.thread579 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.cs ]
  %i.qe = ptrtoint ptr %.sroa.7329.1583 to i64
  %.sroa.7329.8.extract.trunc = trunc i64 %i.qe to i8
  %i.qf = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.7329.8.extract.trunc)
          to label %.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.split:                                           ; preds = %.loopexit622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !6625)
  %.val4.i303 = load ptr, ptr %i.ao, align 8, !alias.scope !6625, !nonnull !6, !noundef !6 ; 2 uses
  %.val5.i = load i64, ptr %i.ap, align 8, !alias.scope !6625, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6626)
  %i.qg = icmp eq i64 %.val5.i, 0
  br i1 %i.qg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i", label %.lr.ph.i.i.i304

bb.ct:                                            ; preds = %._crit_edge762, %.thread586
  %i.qh = phi i64 [ %i.ax, %.thread586 ], [ %.pre, %._crit_edge762 ] ; 3 uses
  %.sroa.0328.1592 = phi i64 [ %.sroa.0328.1.ph, %.thread586 ], [ %.sroa.0.0.copyload10.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.7329.1591 = phi ptr [ %.sroa.7329.1.ph585, %.thread586 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.13.0590 = phi i64 [ %.sroa.13.0.ph, %.thread586 ], [ %i.jl, %._crit_edge762 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6624)
  %i.qi = load i64, ptr %i.p, align 8, !range !14, !alias.scope !6624, !noundef !6
  %i.qj = icmp eq i64 %i.qh, %i.qi
  br i1 %i.qj, label %bb.cu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"

bb.cu:                                            ; preds = %bb.ct
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h517e963947e5db70E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" unwind label %bb.cv, !noalias !6627

bb.cv:                                            ; preds = %bb.cu
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ql = icmp eq i64 %.sroa.0328.1592, 0
  br i1 %i.ql, label %.body298, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7329.1591) ]
  %i.qm = shl nuw i64 %.sroa.0328.1592, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7329.1591, i64 noundef %i.qm, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6628
  br label %.body298

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit": ; preds = %bb.ct, %bb.cu
  %i.qn = load ptr, ptr %i.ao, align 8, !alias.scope !6624, !nonnull !6, !noundef !6 ; 3 uses
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qn, i64 %i.qh ; 3 uses
  store i64 %.sroa.0328.1592, ptr %i.qo, align 8, !noalias !6624
  %.sroa.3343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %.sroa.7329.1591, ptr %.sroa.3343.0..sroa_idx, align 8, !noalias !6624
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i64 %.sroa.13.0590, ptr %.sroa.5344.0..sroa_idx, align 8, !noalias !6624
  %i.qp = add i64 %i.qh, 1                        ; 3 uses
  store i64 %i.qp, ptr %i.ap, align 8, !alias.scope !6624
  %i.qq = load i8, ptr %.sroa.5135.0..sroa_idx, align 1, !range !23, !alias.scope !6629, !noundef !6
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %.thread441, label %bb.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread", %bb.cz, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i"
  %.sroa.0.4573 = phi ptr [ %i.qf, %bb.cz ], [ %.sroa.0.3569, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ %i.qf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
  %.sroa.9.4571 = phi i8 [ 5, %bb.cz ], [ %.sroa.9.3568, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ 5, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.qs = icmp eq i64 %i.ai, 0
  br i1 %i.qs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302", label %bb.cx

bb.cx:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6630
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302"

.lr.ph.i.i.i304:                                  ; preds = %.split, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308"
  %.sroa.0.011.i.i.i305 = phi i64 [ %i.qu, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308" ], [ 0, %.split ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [24 x i8], ptr %.val4.i303, i64 %.sroa.0.011.i.i.i305 ; 2 uses
  %i.qu = add nuw i64 %.sroa.0.011.i.i.i305, 1    ; 2 uses
  %.val8.i.i.i306 = load i64, ptr %i.qt, align 8, !alias.scope !6626, !noalias !6625 ; 2 uses
  %i.qv = icmp eq i64 %.val8.i.i.i306, 0
  br i1 %i.qv, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308", label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i304
  %i.qw = getelementptr i8, ptr %i.qt, i64 8
  %.val9.i.i.i307 = load ptr, ptr %i.qw, align 8, !alias.scope !6626, !noalias !6625, !nonnull !6, !noundef !6
  %i.qx = shl nuw i64 %.val8.i.i.i306, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i307, i64 noundef %i.qx, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6631
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308": ; preds = %bb.cy, %.lr.ph.i.i.i304
  %i.qy = icmp eq i64 %i.qu, %.val5.i
  br i1 %i.qy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i", label %.lr.ph.i.i.i304

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308", %.split
  %.val.i309 = load i64, ptr %i.p, align 8, !range !14, !alias.scope !6625, !noundef !6 ; 2 uses
  %i.qz = icmp eq i64 %.val.i309, 0
  br i1 %i.qz, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit", label %bb.cz

bb.cz:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i"
  %i.ra = mul nuw i64 %.val.i309, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i303, i64 noundef %i.ra, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6625
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit"

.thread431:                                       ; preds = %bb.bi, %.body298, %bb.p
  %.pn212 = phi { ptr, i32 } [ %eh.lpad-body295, %.body298 ], [ %.pn205.pn.pn, %bb.p ], [ %.pn205.pn.pn.pn457, %bb.bi ] ; 2 uses
  %i.rb = icmp eq i64 %i.ai, 0
  br i1 %i.rb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312", label %bb.da

bb.da:                                            ; preds = %.thread431
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6632
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"
end_hunk_3
