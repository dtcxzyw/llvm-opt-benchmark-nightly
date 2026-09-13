Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE":bb.a

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
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 8 uses
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
  br i1 %i.m, label %.preheader105.i.i.i.i.i.i.i, label %.lr.ph.a

.preheader105.i.i.i.i.i.i.i:                      ; preds = %bb.f
  %.not91118.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
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
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.a

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.preheader108.i.i.i.i.i.i.i, %bb.i, %bb.g, %bb.l, %.preheader102.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.be, %bb.l ], [ %i.p, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i ], [ %i.s, %.preheader108.i.i.i.i.i.i.i ]
  %i.t = zext i32 %.sroa.033.3.i.i.i.i.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i

.lr.ph.a:                                         ; preds = %bb.f, %.preheader108.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i79 = phi ptr [ %i.q, %.preheader108.i.i.i.i.i.i.i ], [ %i.k, %bb.f ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i78 = phi i64 [ %i.r, %.preheader108.i.i.i.i.i.i.i ], [ %i.l, %bb.f ]
  %.sroa.033.2.i.i.i.i.i.i.i77 = phi i32 [ %i.s, %.preheader108.i.i.i.i.i.i.i ], [ 0, %bb.f ]
  %i.v = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i77, i32 10) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i79, align 1, !alias.scope !105, !noalias !106, !noundef !6
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9                    ; 2 uses
  %brmerge.i.i.i.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.w
  br i1 %brmerge.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.a
  %i.ab = extractvalue { i32, i1 } %i.v, 0
  %i.ac = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ab, i32 %i.z) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit101.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i:    ; preds = %.lr.ph84
  %.mux97.le.i.i.i.i.i.i.i = select i1 %i.at, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i:    ; preds = %.lr.ph.a
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
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i ], [ 257, %bb.c ], [ 257, %bb.c ], [ 1, %bb.b ]
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
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary10dictionary18unknown_dictionary9parse_unk17h28e043b3653d2519E:.lr.ph
  %.not66.i.i = icmp ult i32 %i.jp, %i.jh
  br i1 %.not66.i.i, label %.thread133.i.invoke, label %bb.an

.lr.ph.i.i66:                                     ; preds = %.lr.ph.i.i66.preheader, %bb.as
  %.sroa.03.182.i.i = phi ptr [ %i.jw, %bb.as ], [ %.sroa.03.182.i.i.ph, %.lr.ph.i.i66.preheader ] ; 2 uses
  %.sroa.16.181.i.i = phi i64 [ %i.jv, %bb.as ], [ %.sroa.16.181.i.i.ph, %.lr.ph.i.i66.preheader ]
  %.sroa.019.180.i.i = phi i32 [ %i.jx, %bb.as ], [ 0, %.lr.ph.i.i66.preheader ]
  %i.jq = load i8, ptr %.sroa.03.182.i.i, align 1, !alias.scope !2585, !noalias !2580, !noundef !6
  %i.jr = zext i8 %i.jq to i32
  %i.js = add nsw i32 %i.jr, -48                  ; 2 uses
  %i.jt = icmp ult i32 %i.js, 10
  br i1 %i.jt, label %bb.as, label %.thread133.i.invoke

bb.as:                                            ; preds = %.lr.ph.i.i66
  %i.ju = mul i32 %.sroa.019.180.i.i, 10
  %i.jv = add nsw i64 %.sroa.16.181.i.i, -1       ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i.i, i64 1
  %i.jx = add i32 %i.js, %i.ju                    ; 2 uses
  %.not67.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not67.i.i, label %.loopexit.i.i, label %.lr.ph.i.i66

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i": ; preds = %bb.aq, %.loopexit.i.i
  %.sroa.8.0.insert.insert.i.i = phi i64 [ %i.jd, %.loopexit.i.i ], [ %spec.select.i.i, %bb.aq ] ; 3 uses
  %i.jy = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.jy, label %.thread99.i, label %bb.at, !prof !28

.thread99.i:                                      ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"
  %.sroa.441.0.extract.shift101.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 8
  %.sroa.441.0.extract.trunc102.i = trunc i64 %.sroa.441.0.extract.shift101.i to i8
  br label %.thread133.i.invoke

.invoke834.loopexit:                              ; preds = %bb.ai
  br label %.invoke834

.invoke834:                                       ; preds = %bb.ai, %.invoke834.loopexit
  %i.jz = phi ptr [ @98, %.invoke834.loopexit ], [ @99, %bb.ai ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jz) #46
          to label %.cont835 unwind label %bb.bt

.cont835:                                         ; preds = %.invoke834
  unreachable

bb.at:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"
  %.sroa.643.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.01.0.extract.trunc.i = trunc nuw i64 %.sroa.643.0.extract.shift.i to i32
  br i1 %i.aa, label %bb.au, label %.invoke832

bb.au:                                            ; preds = %bb.at
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload141149159, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !2579, !noalias !2582, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload141149159, i64 40
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !2579, !noalias !2582, !noundef !6 ; 6 uses
  switch i64 %i.kd, label %bb.aw [
    i64 0, label %.thread133.i.invoke
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.ke = load i8, ptr %i.kb, align 1, !alias.scope !2586, !noalias !2580, !noundef !6
  switch i8 %i.ke, label %.lr.ph.i59.i.preheader [
    i8 43, label %.thread133.i.invoke
    i8 45, label %.thread133.i.invoke
  ]

.lr.ph.i59.i.preheader:                           ; preds = %bb.az, %bb.ax, %bb.av
  %.sroa.03.182.i60.i.ph = phi ptr [ %i.kf, %bb.ax ], [ %i.kb, %bb.az ], [ %i.kb, %bb.av ]
  %.sroa.16.181.i61.i.ph = phi i64 [ %i.kg, %bb.ax ], [ %i.kd, %bb.az ], [ 1, %bb.av ]
  br label %.lr.ph.i59.i

bb.aw:                                            ; preds = %bb.au
  %.pr.i66.i = load i8, ptr %i.kb, align 1, !alias.scope !2586, !noalias !2580
  %cond.i67.i = icmp eq i8 %.pr.i66.i, 43
  br i1 %cond.i67.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 2 uses
  %i.kg = add i64 %i.kd, -1                       ; 2 uses
  %i.kh = icmp ult i64 %i.kd, 10
  br i1 %i.kh, label %.lr.ph.i59.i.preheader, label %.preheader71.i68.i

.preheader71.i68.i:                               ; preds = %bb.az, %bb.ax
  %.sroa.16.0.ph.i69.i = phi i64 [ %i.kd, %bb.az ], [ %i.kg, %bb.ax ] ; 2 uses
  %.sroa.03.0.ph.i70.i = phi ptr [ %i.kb, %bb.az ], [ %i.kf, %bb.ax ]
  %.not.i74.i813 = icmp eq i64 %.sroa.16.0.ph.i69.i, 0
  br i1 %.not.i74.i813, label %.loopexit.i64.i, label %.lr.ph817

bb.ay:                                            ; preds = %bb.bc
  %.not.i74.i = icmp eq i64 %i.km, 0
  br i1 %.not.i74.i, label %.loopexit.i64.i, label %.lr.ph817

bb.az:                                            ; preds = %bb.aw
  %i.ki = icmp ult i64 %i.kd, 9
  br i1 %i.ki, label %.lr.ph.i59.i.preheader, label %.preheader71.i68.i

.loopexit.i64.i:                                  ; preds = %bb.ay, %bb.bd, %.preheader71.i68.i
  %.sroa.019.2.i65.i = phi i32 [ %i.le, %bb.bd ], [ 0, %.preheader71.i68.i ], [ %i.kw, %bb.ay ]
  %i.kj = zext i32 %.sroa.019.2.i65.i to i64
  %i.kk = shl nuw i64 %i.kj, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit79.i"

.lr.ph817:                                        ; preds = %.preheader71.i68.i, %bb.ay
  %.sroa.03.0.i73.i816 = phi ptr [ %i.kl, %bb.ay ], [ %.sroa.03.0.ph.i70.i, %.preheader71.i68.i ] ; 2 uses
  %.sroa.16.0.i72.i815 = phi i64 [ %i.km, %bb.ay ], [ %.sroa.16.0.ph.i69.i, %.preheader71.i68.i ]
  %.sroa.019.0.i71.i814 = phi i32 [ %i.kw, %bb.ay ], [ 0, %.preheader71.i68.i ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i73.i816, i64 1
  %i.km = add i64 %.sroa.16.0.i72.i815, -1        ; 2 uses
  %i.kn = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i71.i814, i32 10) ; 2 uses
  %i.ko = extractvalue { i32, i1 } %i.kn, 0       ; 2 uses
  %i.kp = extractvalue { i32, i1 } %i.kn, 1
  %i.kq = load i8, ptr %.sroa.03.0.i73.i816, align 1, !alias.scope !2586, !noalias !2580, !noundef !6 ; 2 uses
  br i1 %i.kp, label %bb.bb, label %bb.ba, !prof !16

bb.ba:                                            ; preds = %.lr.ph817
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nsw i32 %i.kr, -48                  ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 10
  br i1 %i.kt, label %bb.bc, label %.thread133.i.invoke

bb.bb:                                            ; preds = %.lr.ph817
  %i.ku = add i8 %i.kq, -48
  %i.kv = icmp ult i8 %i.ku, 10
  %spec.select.i76.i = select i1 %i.kv, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit79.i"

bb.bc:                                            ; preds = %bb.ba
  %i.kw = add i32 %i.ks, %i.ko                    ; 3 uses
  %.not66.i75.i = icmp ult i32 %i.kw, %i.ko
  br i1 %.not66.i75.i, label %.thread133.i.invoke, label %bb.ay

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader, %bb.bd
  %.sroa.03.182.i60.i = phi ptr [ %i.ld, %bb.bd ], [ %.sroa.03.182.i60.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %.sroa.16.181.i61.i = phi i64 [ %i.lc, %bb.bd ], [ %.sroa.16.181.i61.i.ph, %.lr.ph.i59.i.preheader ]
  %.sroa.019.180.i62.i = phi i32 [ %i.le, %bb.bd ], [ 0, %.lr.ph.i59.i.preheader ]
  %i.kx = load i8, ptr %.sroa.03.182.i60.i, align 1, !alias.scope !2586, !noalias !2580, !noundef !6
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add nsw i32 %i.ky, -48                  ; 2 uses
  %i.la = icmp ult i32 %i.kz, 10
  br i1 %i.la, label %bb.bd, label %.thread133.i.invoke

bb.bd:                                            ; preds = %.lr.ph.i59.i
  %i.lb = mul i32 %.sroa.019.180.i62.i, 10
  %i.lc = add nsw i64 %.sroa.16.181.i61.i, -1     ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i60.i, i64 1
  %i.le = add i32 %i.kz, %i.lb                    ; 2 uses
  %.not67.i63.i = icmp eq i64 %i.lc, 0
  br i1 %.not67.i63.i, label %.loopexit.i64.i, label %.lr.ph.i59.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit79.i": ; preds = %bb.bb, %.loopexit.i64.i
  %.sroa.8.0.insert.insert.i55.i = phi i64 [ %i.kk, %.loopexit.i64.i ], [ %spec.select.i76.i, %bb.bb ] ; 3 uses
  %i.lf = trunc i64 %.sroa.8.0.insert.insert.i55.i to i1
  br i1 %i.lf, label %.thread113.i, label %bb.be, !prof !28

.thread113.i:                                     ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit79.i"
  %.sroa.445.0.extract.shift115.i = lshr i64 %.sroa.8.0.insert.insert.i55.i, 8
  %.sroa.445.0.extract.trunc116.i = trunc i64 %.sroa.445.0.extract.shift115.i to i8
  br label %.thread133.i.invoke

bb.be:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit79.i"
  %.sroa.647.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i55.i, 32
  %.sroa.09.0.extract.trunc.i = trunc nuw i64 %.sroa.647.0.extract.shift.i to i32
  br i1 %.not54.i, label %.invoke832, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload141149159, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !2579, !noalias !2582, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload141149159, i64 56
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !2579, !noalias !2582, !noundef !6 ; 8 uses
  switch i64 %i.lj, label %thread-pre-split.i.i [
    i64 0, label %.thread133.i.invoke
    i64 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.lk = load i8, ptr %i.lh, align 1, !alias.scope !2587, !noalias !2580, !noundef !6 ; 2 uses
  switch i8 %i.lk, label %bb.bh [
    i8 43, label %.thread133.i.invoke
    i8 45, label %.thread133.i.invoke
  ]

thread-pre-split.i.i:                             ; preds = %bb.bf
  %.pr.i86.i = load i8, ptr %i.lh, align 1, !alias.scope !2587, !noalias !2580
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split.i.i, %bb.bg
  %i.ll = phi i8 [ %.pr.i86.i, %thread-pre-split.i.i ], [ %i.lk, %bb.bg ]
  switch i8 %i.ll, label %bb.bn [
    i8 43, label %bb.bi
    i8 45, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  %i.ln = add i64 %i.lj, -1                       ; 3 uses
  %i.lo = icmp ult i64 %i.lj, 9
  br i1 %i.lo, label %.preheader.i85.i, label %.preheader102.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  %i.lq = add i64 %i.lj, -1                       ; 3 uses
  %i.lr = icmp ult i64 %i.lj, 9
  br i1 %i.lr, label %.preheader105.i.i, label %.lr.ph823

.preheader105.i.i:                                ; preds = %bb.bj
  %.not91118.i.i = icmp eq i64 %i.lq, 0
  br i1 %.not91118.i.i, label %.loopexit.i81.i, label %.lr.ph.i82.i

bb.bk:                                            ; preds = %bb.bo
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i84.i828, i64 1
  %i.lt = add i64 %.sroa.27.0.i.i827, -1          ; 2 uses
  %i.lu = extractvalue { i32, i1 } %i.na, 0       ; 2 uses
  %.not92.i.i = icmp eq i64 %i.lt, 0
  br i1 %.not92.i.i, label %.loopexit.i81.i, label %.lr.ph829

.preheader108.i.i:                                ; preds = %bb.bl
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i822, i64 1
  %i.lw = add i64 %.sroa.27.2.i.i821, -1          ; 2 uses
  %i.lx = extractvalue { i32, i1 } %i.mh, 0       ; 2 uses
  %.not.i80.i = icmp eq i64 %i.lw, 0
  br i1 %.not.i80.i, label %.loopexit.i81.i, label %.lr.ph823

.loopexit.i81.i:                                  ; preds = %.preheader108.i.i, %bb.bm, %bb.bk, %bb.bp, %.preheader102.i.i, %.preheader.i85.i, %.preheader105.i.i
  %.sroa.033.3.i.i = phi i32 [ %i.mr, %bb.bm ], [ %i.nj, %bb.bp ], [ %i.lu, %bb.bk ], [ 0, %.preheader.i85.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader102.i.i ], [ %i.lx, %.preheader108.i.i ]
  %i.ly = zext i32 %.sroa.033.3.i.i to i64
  %i.lz = shl nuw i64 %i.ly, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"

.lr.ph823:                                        ; preds = %bb.bj, %.preheader108.i.i
  %.sroa.03.2.i.i822 = phi ptr [ %i.lv, %.preheader108.i.i ], [ %i.lp, %bb.bj ] ; 2 uses
  %.sroa.27.2.i.i821 = phi i64 [ %i.lw, %.preheader108.i.i ], [ %i.lq, %bb.bj ]
  %.sroa.033.2.i.i820 = phi i32 [ %i.lx, %.preheader108.i.i ], [ 0, %bb.bj ]
  %i.ma = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i820, i32 10) ; 2 uses
  %i.mb = extractvalue { i32, i1 } %i.ma, 1
  %i.mc = load i8, ptr %.sroa.03.2.i.i822, align 1, !alias.scope !2587, !noalias !2580, !noundef !6
  %i.md = zext i8 %i.mc to i32
  %i.me = add nsw i32 %i.md, -48                  ; 2 uses
  %i.mf = icmp ugt i32 %i.me, 9                   ; 2 uses
  %brmerge.i.i = select i1 %i.mf, i1 true, i1 %i.mb
  br i1 %brmerge.i.i, label %.loopexit110.split.loop.exit116.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph823
  %i.mg = extractvalue { i32, i1 } %i.ma, 0
  %i.mh = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mg, i32 %i.me) ; 2 uses
  %i.mi = extractvalue { i32, i1 } %i.mh, 1
  br i1 %i.mi, label %.loopexit101.i.i, label %.preheader108.i.i

.loopexit104.split.loop.exit122.i.i:              ; preds = %.lr.ph829
  %.mux97.le.i.i = select i1 %i.my, i64 256, i64 512
  br label %.loopexit101.i.i

.loopexit110.split.loop.exit116.i.i:              ; preds = %.lr.ph823
  %.mux.le.i.i = select i1 %i.mf, i64 256, i64 768
  br label %.loopexit101.i.i

.loopexit101.i.i:                                 ; preds = %bb.bl, %.lr.ph.i82.i, %bb.bo, %.lr.ph129.i.i, %.loopexit110.split.loop.exit116.i.i, %.loopexit104.split.loop.exit122.i.i
  %.sroa.12.2.i.i = phi i64 [ 256, %.lr.ph129.i.i ], [ 512, %bb.bo ], [ 256, %.lr.ph.i82.i ], [ %.mux97.le.i.i, %.loopexit104.split.loop.exit122.i.i ], [ %.mux.le.i.i, %.loopexit110.split.loop.exit116.i.i ], [ 768, %bb.bl ]
  %i.mj = or disjoint i64 %.sroa.12.2.i.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"

.lr.ph.i82.i:                                     ; preds = %.preheader105.i.i, %bb.bm
  %.sroa.03.3121.i.i = phi ptr [ %i.mq, %bb.bm ], [ %i.lp, %.preheader105.i.i ] ; 2 uses
  %.sroa.27.3120.i.i = phi i64 [ %i.mp, %bb.bm ], [ %i.lq, %.preheader105.i.i ]
  %.sroa.033.4119.i.i = phi i32 [ %i.mr, %bb.bm ], [ 0, %.preheader105.i.i ]
  %i.mk = load i8, ptr %.sroa.03.3121.i.i, align 1, !alias.scope !2587, !noalias !2580, !noundef !6
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -48                  ; 2 uses
  %i.mn = icmp ult i32 %i.mm, 10
  br i1 %i.mn, label %bb.bm, label %.loopexit101.i.i

bb.bm:                                            ; preds = %.lr.ph.i82.i
  %i.mo = mul i32 %.sroa.033.4119.i.i, 10
  %i.mp = add nsw i64 %.sroa.27.3120.i.i, -1      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i, i64 1
  %i.mr = sub i32 %i.mo, %i.mm                    ; 2 uses
  %.not91.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not91.i.i, label %.loopexit.i81.i, label %.lr.ph.i82.i

bb.bn:                                            ; preds = %bb.bh
  %i.ms = icmp ult i64 %i.lj, 8
  br i1 %i.ms, label %.lr.ph129.i.i.preheader, label %.preheader102.i.i

.lr.ph129.i.i.preheader:                          ; preds = %.preheader.i85.i, %bb.bn
  %.sroa.03.1128.i.i.ph = phi ptr [ %i.lh, %bb.bn ], [ %i.lm, %.preheader.i85.i ]
  %.sroa.27.1127.i.i.ph = phi i64 [ %i.lj, %bb.bn ], [ %i.ln, %.preheader.i85.i ]
  br label %.lr.ph129.i.i

.preheader102.i.i:                                ; preds = %bb.bn, %bb.bi
  %.sroa.27.0.ph.i.i = phi i64 [ %i.lj, %bb.bn ], [ %i.ln, %bb.bi ] ; 2 uses
  %.sroa.03.0.ph.i83.i = phi ptr [ %i.lh, %bb.bn ], [ %i.lm, %bb.bi ]
  %.not92.i.i825 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not92.i.i825, label %.loopexit.i81.i, label %.lr.ph829

.preheader.i85.i:                                 ; preds = %bb.bi
  %.not93125.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not93125.i.i, label %.loopexit.i81.i, label %.lr.ph129.i.i.preheader

.lr.ph829:                                        ; preds = %.preheader102.i.i, %bb.bk
  %.sroa.03.0.i84.i828 = phi ptr [ %i.ls, %bb.bk ], [ %.sroa.03.0.ph.i83.i, %.preheader102.i.i ] ; 2 uses
  %.sroa.27.0.i.i827 = phi i64 [ %i.lt, %bb.bk ], [ %.sroa.27.0.ph.i.i, %.preheader102.i.i ]
  %.sroa.033.0.i.i826 = phi i32 [ %i.lu, %bb.bk ], [ 0, %.preheader102.i.i ]
  %i.mt = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i826, i32 10) ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1
  %i.mv = load i8, ptr %.sroa.03.0.i84.i828, align 1, !alias.scope !2587, !noalias !2580, !noundef !6
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 9                   ; 2 uses
  %brmerge96.i.i = select i1 %i.my, i1 true, i1 %i.mu
  br i1 %brmerge96.i.i, label %.loopexit104.split.loop.exit122.i.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph829
  %i.mz = extractvalue { i32, i1 } %i.mt, 0
  %i.na = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.mz, i32 %i.mx) ; 2 uses
  %i.nb = extractvalue { i32, i1 } %i.na, 1
  br i1 %i.nb, label %.loopexit101.i.i, label %bb.bk

.lr.ph129.i.i:                                    ; preds = %.lr.ph129.i.i.preheader, %bb.bp
  %.sroa.03.1128.i.i = phi ptr [ %i.ni, %bb.bp ], [ %.sroa.03.1128.i.i.ph, %.lr.ph129.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i = phi i64 [ %i.nh, %bb.bp ], [ %.sroa.27.1127.i.i.ph, %.lr.ph129.i.i.preheader ]
  %.sroa.033.1126.i.i = phi i32 [ %i.nj, %bb.bp ], [ 0, %.lr.ph129.i.i.preheader ]
  %i.nc = load i8, ptr %.sroa.03.1128.i.i, align 1, !alias.scope !2587, !noalias !2580, !noundef !6
  %i.nd = zext i8 %i.nc to i32
  %i.ne = add nsw i32 %i.nd, -48                  ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 10
  br i1 %i.nf, label %bb.bp, label %.loopexit101.i.i

bb.bp:                                            ; preds = %.lr.ph129.i.i
  %i.ng = mul i32 %.sroa.033.1126.i.i, 10
  %i.nh = add nsw i64 %.sroa.27.1127.i.i, -1      ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i, i64 1
  %i.nj = add i32 %i.ne, %i.ng                    ; 2 uses
  %.not93.i.i = icmp eq i64 %i.nh, 0
  br i1 %.not93.i.i, label %.loopexit.i81.i, label %.lr.ph129.i.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i": ; preds = %.loopexit101.i.i, %.loopexit.i81.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.lz, %.loopexit.i81.i ], [ %i.mj, %.loopexit101.i.i ] ; 3 uses
  %i.nk = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.nk, label %.thread128.i, label %bb.bq, !prof !28

.thread128.i:                                     ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
  %.sroa.449.0.extract.shift130.i = lshr i64 %.sroa.12.0.insert.insert.i.i, 8
  %i.nl = trunc i64 %.sroa.449.0.extract.shift130.i to i8
  br label %.thread133.i.invoke

.invoke832:                                       ; preds = %bb.be, %bb.at
  %i.nm = phi i64 [ 2, %bb.at ], [ 3, %bb.be ]    ; 2 uses
  %i.nn = phi ptr [ @100, %bb.at ], [ @101, %bb.be ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.nm, i64 noundef %i.nm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nn) #46
          to label %.cont833 unwind label %bb.bt

.cont833:                                         ; preds = %.invoke832
  unreachable

.thread133.i.invoke:                              ; preds = %bb.bf, %bb.bg, %bb.bg, %bb.au, %bb.av, %bb.av, %.thread152, %bb.ak, %bb.ak, %bb.ap, %bb.ar, %.lr.ph.i.i66, %bb.ba, %bb.bc, %.lr.ph.i59.i, %.thread128.i, %.thread113.i, %.thread99.i
  %i.no = phi i8 [ 2, %bb.ar ], [ %.sroa.445.0.extract.trunc116.i, %.thread113.i ], [ %.sroa.441.0.extract.trunc102.i, %.thread99.i ], [ %i.nl, %.thread128.i ], [ 1, %.lr.ph.i59.i ], [ 2, %bb.bc ], [ 1, %.lr.ph.i.i66 ], [ 1, %bb.ba ], [ 1, %bb.ap ], [ 1, %bb.av ], [ 1, %bb.av ], [ 0, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.ak ], [ 1, %bb.ak ], [ 1, %bb.bg ], [ 0, %.thread152 ], [ 0, %bb.au ]
  %i.np = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %i.no)
          to label %bb.bv unwind label %bb.bt

bb.bq:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
  %.sroa.651.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.020.0.extract.trunc.i = trunc nuw i64 %.sroa.651.0.extract.shift.i to i32
  %i.nq = icmp slt i64 %i.iv, 0
  br i1 %i.nq, label %bb.bs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.bq
  %i.nr = icmp eq i64 %i.iv, 0                    ; 2 uses
  br i1 %i.nr, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !2588
  %i.ns = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iv, i64 noundef range(i64 1, 9) 1) #47, !noalias !2588 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.br ], [ 0, %bb.bq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc77 unwind label %bb.bt

.noexc77:                                         ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %.invoke834, %.invoke832, %.thread133.i.invoke, %bb.bs, %.noexc68, %bb.aj
  %.sroa.8.0.copyload143 = phi ptr [ %.sroa.8.0.copyload141149159, %bb.bs ], [ %.sroa.8.0.copyload141149159, %.thread133.i.invoke ], [ %.sroa.8.0.copyload141149159, %.invoke832 ], [ %.sroa.8.0.copyload140, %bb.aj ], [ %.sroa.8.0.copyload, %.invoke834 ], [ %.sroa.8.0.copyload140, %.noexc68 ]
  %.sroa.0.0.copyload138 = phi i64 [ %.sroa.0.0.copyload136150158, %bb.bs ], [ %.sroa.0.0.copyload136150158, %.thread133.i.invoke ], [ %.sroa.0.0.copyload136150158, %.invoke832 ], [ %.sroa.0.0.copyload135, %bb.aj ], [ %.sroa.0.0.copyload, %.invoke834 ], [ %.sroa.0.0.copyload135, %.noexc68 ]
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.bz, %bb.ca, %bb.bt
  %.sroa.8.0.copyload142 = phi ptr [ %.sroa.8.0.copyload143, %bb.bt ], [ %.sroa.8.0.copyload141149159, %bb.ca ], [ %.sroa.8.0.copyload141149159, %bb.bz ] ; 2 uses
  %.sroa.0.0.copyload137 = phi i64 [ %.sroa.0.0.copyload138, %bb.bt ], [ %.sroa.0.0.copyload136150158, %bb.ca ], [ %.sroa.0.0.copyload136150158, %bb.bz ] ; 2 uses
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.nu, %bb.bt ], [ %i.oe, %bb.ca ], [ %i.oe, %bb.bz ] ; 2 uses
  %i.nv = icmp eq i64 %.sroa.0.0.copyload137, 0
  br i1 %i.nv, label %.body, label %bb.bu

bb.bu:                                            ; preds = %.body81
  %i.nw = shl nuw i64 %.sroa.0.0.copyload137, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload142) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload142, i64 noundef %i.nw, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %.body

bb.bv:                                            ; preds = %.thread133.i.invoke, %.noexc68
  %.sroa.8.0.copyload139.ph = phi ptr [ %.sroa.8.0.copyload141149159, %.thread133.i.invoke ], [ %.sroa.8.0.copyload140, %.noexc68 ] ; 2 uses
  %.sroa.0.0.copyload134.ph = phi i64 [ %.sroa.0.0.copyload136150158, %.thread133.i.invoke ], [ %.sroa.0.0.copyload135, %.noexc68 ] ; 2 uses
  %.sroa.16.sroa.0.0.ph = phi i8 [ 5, %.thread133.i.invoke ], [ 1, %.noexc68 ]
  %.sroa.9.0.ph = phi ptr [ %i.np, %.thread133.i.invoke ], [ %i.is, %.noexc68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.ph, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.16.sroa.0.0.ph, ptr %i.ny, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %i.nz = icmp eq i64 %.sroa.0.0.copyload134.ph, 0
  br i1 %i.nz, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oa = shl nuw i64 %.sroa.0.0.copyload134.ph, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload139.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload139.ph, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78"

bb.bx:                                            ; preds = %bb.br, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ns, %bb.br ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.iw, i64 %i.iv, i1 false), !noalias !2589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  %i.ob = load i64, ptr %i.r, align 8, !alias.scope !2590, !noalias !2591, !noundef !6 ; 3 uses
  %i.oc = load i64, ptr %i.p, align 8, !range !14, !alias.scope !2590, !noalias !2591, !noundef !6
  %i.od = icmp eq i64 %i.ob, %i.oc
end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary18dictionary_builder15user_dictionary21UserDictionaryBuilder5build17h0c4c5c9a5cf6970fE:bb.a
"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit564"
  %.val2.i = load i64, ptr %i.aq, align 8, !range !14, !alias.scope !3695, !noundef !6 ; 2 uses
  %i.adm = icmp eq i64 %.val2.i, 0
  br i1 %i.adm, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit", label %bb.hm

bb.hm:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i"
  %i.adn = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acg, i64 noundef %i.adn, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !3695
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit": ; preds = %bb.hm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ado = icmp eq ptr %.sroa.0349.11385, %i.pr   ; 2 uses
  %.sroa.0349.1.idx = select i1 %i.ado, i64 0, i64 8
  %.sroa.0349.1 = getelementptr inbounds nuw i8, ptr %.sroa.0349.11385, i64 %.sroa.0349.1.idx
  br i1 %i.ado, label %._crit_edge1388, label %bb.dq

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit555": ; preds = %bb.he, %bb.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  %i.adp = icmp eq i64 %i.ach, 0
  br i1 %i.adp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i575", label %.lr.ph.i.i.i570

.lr.ph.i.i.i570:                                  ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit555", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574"
  %.sroa.0.010.i.i.i571 = phi i64 [ %i.adr, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit555" ] ; 2 uses
  %i.adq = getelementptr inbounds nuw [24 x i8], ptr %i.acg, i64 %.sroa.0.010.i.i.i571 ; 2 uses
  %i.adr = add nuw i64 %.sroa.0.010.i.i.i571, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  %.val.i.i.i.i572 = load i64, ptr %i.adq, align 8, !alias.scope !3703, !noalias !3700 ; 2 uses
  %i.ads = icmp eq i64 %.val.i.i.i.i572, 0
  br i1 %i.ads, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574", label %bb.hn

bb.hn:                                            ; preds = %.lr.ph.i.i.i570
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %.val1.i.i.i.i573 = load ptr, ptr %i.adt, align 8, !alias.scope !3703, !noalias !3700, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i573, i64 noundef %.val.i.i.i.i572, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !3704
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574": ; preds = %bb.hn, %.lr.ph.i.i.i570
  %i.adu = icmp eq i64 %i.adr, %i.ach
  br i1 %i.adu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i575", label %.lr.ph.i.i.i570

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i575": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i574", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit555"
  %.val2.i576 = load i64, ptr %i.aq, align 8, !range !14, !alias.scope !3700, !noundef !6 ; 2 uses
  %i.adv = icmp eq i64 %.val2.i576, 0
  br i1 %i.adv, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577", label %bb.ho

bb.ho:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i575"
  %i.adw = mul nuw i64 %.val2.i576, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acg, i64 noundef %i.adw, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !3700
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E.exit577"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit518": ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.val406 = load i64, ptr %i.as, align 8         ; 2 uses
  %i.adx = icmp eq i64 %.val406, 0
  br i1 %i.adx, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit578", label %bb.hp

bb.hp:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit518"
  %.val407 = load ptr, ptr %i.xk, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val407, i64 noundef %.val406, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit578"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit578": ; preds = %bb.hp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit518"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit599"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit599": ; preds = %bb.io, %bb.ip, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit578"
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$lindera_dictionary..viterbi..WordEntry$GT$$GT$$GT$17h2bd0b5f0f27c1545E"(ptr noalias noundef align 8 dereferenceable(24) %i.au)
          to label %bb.jq unwind label %bb.t

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit": ; preds = %.loopexit998, %.loopexit.split-lp999, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit", %.body531, %bb.gl, %bb.gm, %.body.i.i.i.i543, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517", %bb.dy
  %i.ady = phi ptr [ %i.rj, %bb.dy ], [ %i.qn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit" ], [ %i.qn, %.body531 ], [ %i.rj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517" ], [ %i.qn, %bb.gm ], [ %i.qn, %.body.i.i.i.i543 ], [ %i.qn, %bb.gl ], [ %i.qn, %.loopexit998 ], [ %i.qn, %.loopexit.split-lp999 ]
  %i.adz = phi ptr [ %i.rk, %bb.dy ], [ %i.ql, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit" ], [ %i.ql, %.body531 ], [ %i.rk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517" ], [ %i.ql, %bb.gm ], [ %i.ql, %.body.i.i.i.i543 ], [ %i.ql, %bb.gl ], [ %i.ql, %.loopexit998 ], [ %i.ql, %.loopexit.split-lp999 ]
  %.pn384 = phi { ptr, i32 } [ %.pn, %bb.dy ], [ %.pn382, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit" ], [ %eh.lpad-body532, %.body531 ], [ %.pn, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit517" ], [ %i.aar, %bb.gm ], [ %eh.lpad-body.i.i.i.i544, %.body.i.i.i.i543 ], [ %i.aar, %bb.gl ], [ %lpad.loopexit1000, %.loopexit998 ], [ %lpad.loopexit.split-lp1001, %.loopexit.split-lp999 ] ; 2 uses
  %.val404 = load i64, ptr %i.ar, align 8         ; 2 uses
  %i.aea = icmp eq i64 %.val404, 0
  br i1 %i.aea, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579", label %bb.hq

bb.hq:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"
  %.val405 = load ptr, ptr %i.ady, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val405, i64 noundef %.val404, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579": ; preds = %bb.hq, %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"
  %.val = load i64, ptr %i.as, align 8            ; 2 uses
  %i.aeb = icmp eq i64 %.val, 0
  br i1 %i.aeb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit580", label %bb.hr

bb.hr:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit579"
  %.val403 = load ptr, ptr %i.adz, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val403, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit580"

bb.hs:                                            ; preds = %bb.do
  %i.aec = getelementptr inbounds nuw i8, ptr %.val424, i64 40
  %i.aed = load ptr, ptr %i.aec, align 8, !nonnull !6, !noundef !6
  %i.aee = icmp slt i64 %i.qi, 0
  br i1 %i.aee, label %bb.hu, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i581, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i581: ; preds = %bb.hs
  %i.aef = icmp eq i64 %i.qi, 0                   ; 4 uses
  br i1 %i.aef, label %bb.hx, label %bb.ht

bb.ht:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i581
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3705
  %i.aeg = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.qi, i64 noundef range(i64 1, 9) 1) #47, !noalias !3705 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.sroa.4.0.ph.i.i585 = phi i64 [ 1, %bb.ht ], [ 0, %bb.hs ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i585, i64 %i.qi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc586 unwind label %bb.dm

.noexc586:                                        ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %bb.dn
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #46
          to label %bb.hw unwind label %bb.dm

bb.hw:                                            ; preds = %bb.hv
  unreachable

bb.hx:                                            ; preds = %bb.ht, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i581
  %.sroa.10.0.i.i582 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i581 ], [ %i.aeg, %bb.ht ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i582, ptr nonnull readonly align 1 %i.aed, i64 %i.qi, i1 false), !noalias !3706
  %i.aei = load ptr, ptr %.sroa.0693.01381, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 80
  %i.aek = load i64, ptr %i.aej, align 8, !noundef !6 ; 4 uses
  %i.ael = icmp eq i64 %i.aek, %i.ps
  br i1 %i.ael, label %.thread1881, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  %.not.i.i588 = icmp ugt i64 %i.aek, 3
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aei, i64 72
  %i.aen = load i64, ptr %i.aem, align 8, !alias.scope !3707, !noalias !3708
  %i.aeo = icmp ugt i64 %i.aen, 3
  %or.cond.i.i589 = select i1 %.not.i.i588, i1 %i.aeo, i1 false
  br i1 %or.cond.i.i589, label %bb.hz, label %.invoke2652

bb.hz:                                            ; preds = %bb.hy
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aei, i64 64
  %i.aeq = load ptr, ptr %i.aep, align 8, !alias.scope !3707, !noalias !3708, !nonnull !6, !noundef !6 ; 2 uses
  %i.aer = getelementptr i8, ptr %i.aeq, i64 24
  %i.aes = load i64, ptr %i.aer, align 8, !noalias !3709, !noundef !6 ; 4 uses
  %i.aet = getelementptr i8, ptr %i.aeq, i64 16
  %i.aeu = load i64, ptr %i.aet, align 8, !noalias !3709, !noundef !6 ; 4 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aei, i64 48
  %i.aew = load i64, ptr %i.aev, align 8, !noundef !6 ; 2 uses
  %i.aex = icmp ult i64 %i.aes, %i.aeu
  %.not.i592 = icmp ugt i64 %i.aes, %i.aew
  %or.cond.i593 = or i1 %i.aex, %.not.i592
  br i1 %or.cond.i593, label %.invoke2654, label %bb.ib, !prof !9

bb.ia:                                            ; preds = %bb.jw, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb39ca07ebc1a7187E.exit"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit580"

bb.ib:                                            ; preds = %bb.hz
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aei, i64 40
  %i.aez = load ptr, ptr %i.aey, align 8, !nonnull !6, !noundef !6
  %i.afa = sub nuw i64 %i.aes, %i.aeu             ; 8 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aeu ; 6 uses
  switch i64 %i.afa, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i64 1, label %bb.ic
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.afc = load i8, ptr %i.afb, align 1, !alias.scope !3710, !noundef !6 ; 2 uses
  switch i8 %i.afc, label %bb.id [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.ib
  %.pr.i = load i8, ptr %i.afb, align 1, !alias.scope !3710
  br label %bb.id

bb.id:                                            ; preds = %thread-pre-split.i, %bb.ic
  %i.afd = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.afc, %bb.ic ]
  switch i8 %i.afd, label %bb.ij [
    i8 43, label %bb.ie
    i8 45, label %bb.if
  ]

bb.ie:                                            ; preds = %bb.id
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 1 ; 2 uses
  %i.aff = add i64 %i.afa, -1                     ; 3 uses
  %i.afg = icmp ult i64 %i.afa, 5
  br i1 %i.afg, label %.preheader.i, label %.preheader101.i

bb.if:                                            ; preds = %bb.id
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afb, i64 1 ; 2 uses
  %i.afi = add i64 %i.afa, -1                     ; 3 uses
  %i.afj = icmp ult i64 %i.afa, 5
  br i1 %i.afj, label %.preheader104.i, label %.lr.ph2615

.preheader104.i:                                  ; preds = %bb.if
  %.not90117.i = icmp eq i64 %i.afi, 0
  br i1 %.not90117.i, label %.loopexit.i, label %.lr.ph.i

bb.ig:                                            ; preds = %bb.ik
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i2619, i64 1
  %i.afl = add i64 %.sroa.27.0.i2618, -1          ; 2 uses
  %i.afm = extractvalue { i16, i1 } %i.agv, 0     ; 2 uses
  %.not91.i = icmp eq i64 %i.afl, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph2620

.preheader107.i:                                  ; preds = %bb.ih
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i2614, i64 1
  %i.afo = add i64 %.sroa.27.2.i2613, -1          ; 2 uses
  %i.afp = extractvalue { i16, i1 } %i.aga, 0     ; 2 uses
  %.not.i596 = icmp eq i64 %i.afo, 0
  br i1 %.not.i596, label %.loopexit.i, label %.lr.ph2615

.loopexit.i:                                      ; preds = %.preheader107.i, %bb.ii, %bb.ig, %bb.il, %.preheader101.i, %.preheader.i, %.preheader104.i
  %.sroa.032.3.i = phi i16 [ %i.agl, %bb.ii ], [ %i.ahf, %bb.il ], [ %i.afm, %bb.ig ], [ 0, %.preheader.i ], [ 0, %.preheader104.i ], [ 0, %.preheader101.i ], [ %i.afp, %.preheader107.i ]
  %i.afq = zext i16 %.sroa.032.3.i to i32
  %i.afr = shl nuw i32 %i.afq, 16
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph2615:                                       ; preds = %bb.if, %.preheader107.i
  %.sroa.02.2.i2614 = phi ptr [ %i.afn, %.preheader107.i ], [ %i.afh, %bb.if ] ; 2 uses
  %.sroa.27.2.i2613 = phi i64 [ %i.afo, %.preheader107.i ], [ %i.afi, %bb.if ]
  %.sroa.032.2.i2612 = phi i16 [ %i.afp, %.preheader107.i ], [ 0, %bb.if ]
  %i.afs = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.2.i2612, i16 10) ; 2 uses
  %i.aft = extractvalue { i16, i1 } %i.afs, 1
  %i.afu = load i8, ptr %.sroa.02.2.i2614, align 1, !alias.scope !3710, !noundef !6
  %i.afv = zext i8 %i.afu to i32
  %i.afw = add nsw i32 %i.afv, -48                ; 2 uses
  %i.afx = icmp ugt i32 %i.afw, 9                 ; 2 uses
  %brmerge.i = select i1 %i.afx, i1 true, i1 %i.aft
  br i1 %brmerge.i, label %.loopexit109.split.loop.exit115.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph2615
  %i.afy = extractvalue { i16, i1 } %i.afs, 0
  %i.afz = trunc nuw nsw i32 %i.afw to i16
  %i.aga = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.afy, i16 %i.afz) ; 2 uses
  %i.agb = extractvalue { i16, i1 } %i.aga, 1
  br i1 %i.agb, label %.loopexit100.i, label %.preheader107.i

.loopexit103.split.loop.exit121.i:                ; preds = %.lr.ph2620
  %.mux96.le.i = select i1 %i.ags, i32 256, i32 512
  br label %.loopexit100.i

.loopexit109.split.loop.exit115.i:                ; preds = %.lr.ph2615
  %.mux.le.i = select i1 %i.afx, i32 256, i32 768
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %bb.ih, %.lr.ph.i, %bb.ik, %.lr.ph128.i, %.loopexit109.split.loop.exit115.i, %.loopexit103.split.loop.exit121.i
  %.sroa.12.2.i = phi i32 [ 256, %.lr.ph128.i ], [ 512, %bb.ik ], [ 256, %.lr.ph.i ], [ %.mux96.le.i, %.loopexit103.split.loop.exit121.i ], [ %.mux.le.i, %.loopexit109.split.loop.exit115.i ], [ 768, %bb.ih ]
  %i.agc = or disjoint i32 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph.i:                                         ; preds = %.preheader104.i, %bb.ii
  %.sroa.02.3120.i = phi ptr [ %i.agj, %bb.ii ], [ %i.afh, %.preheader104.i ] ; 2 uses
  %.sroa.27.3119.i = phi i64 [ %i.agi, %bb.ii ], [ %i.afi, %.preheader104.i ]
  %.sroa.032.4118.i = phi i16 [ %i.agl, %bb.ii ], [ 0, %.preheader104.i ]
  %i.agd = load i8, ptr %.sroa.02.3120.i, align 1, !alias.scope !3710, !noundef !6
  %i.age = zext i8 %i.agd to i32
  %i.agf = add nsw i32 %i.age, -48                ; 2 uses
  %i.agg = icmp ult i32 %i.agf, 10
  br i1 %i.agg, label %bb.ii, label %.loopexit100.i

bb.ii:                                            ; preds = %.lr.ph.i
  %i.agh = mul i16 %.sroa.032.4118.i, 10
  %i.agi = add nsw i64 %.sroa.27.3119.i, -1       ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.02.3120.i, i64 1
  %i.agk = trunc nuw nsw i32 %i.agf to i16
  %i.agl = sub i16 %i.agh, %i.agk                 ; 2 uses
  %.not90.i = icmp eq i64 %i.agi, 0
  br i1 %.not90.i, label %.loopexit.i, label %.lr.ph.i

bb.ij:                                            ; preds = %bb.id
  %i.agm = icmp ult i64 %i.afa, 4
  br i1 %i.agm, label %.lr.ph128.i.preheader, label %.preheader101.i

.lr.ph128.i.preheader:                            ; preds = %.preheader.i, %bb.ij
  %.sroa.02.1127.i.ph = phi ptr [ %i.afb, %bb.ij ], [ %i.afe, %.preheader.i ]
  %.sroa.27.1126.i.ph = phi i64 [ %i.afa, %bb.ij ], [ %i.aff, %.preheader.i ]
  br label %.lr.ph128.i

.preheader101.i:                                  ; preds = %bb.ij, %bb.ie
  %.sroa.27.0.ph.i = phi i64 [ %i.afa, %bb.ij ], [ %i.aff, %bb.ie ] ; 2 uses
  %.sroa.02.0.ph.i = phi ptr [ %i.afb, %bb.ij ], [ %i.afe, %bb.ie ]
  %.not91.i2616 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not91.i2616, label %.loopexit.i, label %.lr.ph2620

.preheader.i:                                     ; preds = %bb.ie
  %.not92124.i = icmp eq i64 %i.aff, 0
  br i1 %.not92124.i, label %.loopexit.i, label %.lr.ph128.i.preheader

.lr.ph2620:                                       ; preds = %.preheader101.i, %bb.ig
  %.sroa.02.0.i2619 = phi ptr [ %i.afk, %bb.ig ], [ %.sroa.02.0.ph.i, %.preheader101.i ] ; 2 uses
  %.sroa.27.0.i2618 = phi i64 [ %i.afl, %bb.ig ], [ %.sroa.27.0.ph.i, %.preheader101.i ]
  %.sroa.032.0.i2617 = phi i16 [ %i.afm, %bb.ig ], [ 0, %.preheader101.i ]
  %i.agn = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.0.i2617, i16 10) ; 2 uses
  %i.ago = extractvalue { i16, i1 } %i.agn, 1
  %i.agp = load i8, ptr %.sroa.02.0.i2619, align 1, !alias.scope !3710, !noundef !6
  %i.agq = zext i8 %i.agp to i32
  %i.agr = add nsw i32 %i.agq, -48                ; 2 uses
  %i.ags = icmp ugt i32 %i.agr, 9                 ; 2 uses
  %brmerge95.i = select i1 %i.ags, i1 true, i1 %i.ago
  br i1 %brmerge95.i, label %.loopexit103.split.loop.exit121.i, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph2620
  %i.agt = extractvalue { i16, i1 } %i.agn, 0
  %i.agu = trunc nuw nsw i32 %i.agr to i16
  %i.agv = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.agt, i16 %i.agu) ; 2 uses
  %i.agw = extractvalue { i16, i1 } %i.agv, 1
  br i1 %i.agw, label %.loopexit100.i, label %bb.ig

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.preheader, %bb.il
  %.sroa.02.1127.i = phi ptr [ %i.ahd, %bb.il ], [ %.sroa.02.1127.i.ph, %.lr.ph128.i.preheader ] ; 2 uses
  %.sroa.27.1126.i = phi i64 [ %i.ahc, %bb.il ], [ %.sroa.27.1126.i.ph, %.lr.ph128.i.preheader ]
  %.sroa.032.1125.i = phi i16 [ %i.ahf, %bb.il ], [ 0, %.lr.ph128.i.preheader ]
  %i.agx = load i8, ptr %.sroa.02.1127.i, align 1, !alias.scope !3710, !noundef !6
  %i.agy = zext i8 %i.agx to i32
  %i.agz = add nsw i32 %i.agy, -48                ; 2 uses
  %i.aha = icmp ult i32 %i.agz, 10
  br i1 %i.aha, label %bb.il, label %.loopexit100.i

bb.il:                                            ; preds = %.lr.ph128.i
  %i.ahb = mul i16 %.sroa.032.1125.i, 10
  %i.ahc = add nsw i64 %.sroa.27.1126.i, -1       ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.02.1127.i, i64 1
  %i.ahe = trunc nuw nsw i32 %i.agz to i16
  %i.ahf = add i16 %i.ahb, %i.ahe                 ; 2 uses
  %.not92.i = icmp eq i64 %i.ahc, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph128.i

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit": ; preds = %.loopexit100.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i32 [ %i.afr, %.loopexit.i ], [ %i.agc, %.loopexit100.i ] ; 2 uses
  %i.ahg = trunc i32 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.ahg, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread", label %bb.in, !prof !28

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread": ; preds = %bb.ic, %bb.ic, %bb.ib, %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr @140, ptr %i.ah, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.ahh, align 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %i.ahi, align 8
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ahj, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %i.ahk, align 8
  %i.ahl = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.im unwind label %bb.jy

bb.im:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.io

bb.in:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  %.sroa.5355.0.extract.shift = lshr i32 %.sroa.12.0.insert.insert.i, 16
  %i.ahm = trunc nuw i32 %.sroa.5355.0.extract.shift to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  %.not.i.i600 = icmp ugt i64 %i.aek, 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aei, i64 72
  %i.aho = load i64, ptr %i.ahn, align 8, !alias.scope !3711, !noalias !3712 ; 2 uses
  %i.ahp = icmp ugt i64 %i.aho, 1
  %or.cond.i.i601 = select i1 %.not.i.i600, i1 %i.ahp, i1 false
  br i1 %or.cond.i.i601, label %bb.iq, label %.invoke2652

bb.io:                                            ; preds = %bb.iy, %bb.jh, %bb.im
  %.sink = phi ptr [ %i.ajo, %bb.iy ], [ %i.alc, %bb.jh ], [ %i.ahl, %bb.im ]
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ahq, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.ahr, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br i1 %i.aef, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit599", label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i582, i64 noundef %i.qi, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !3713
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit599"

bb.iq:                                            ; preds = %bb.in
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aei, i64 64
  %i.aht = load ptr, ptr %i.ahs, align 8, !alias.scope !3711, !noalias !3712, !nonnull !6, !noundef !6 ; 3 uses
  %i.ahu = getelementptr i8, ptr %i.aht, i64 8
  %i.ahv = load i64, ptr %i.ahu, align 8, !noalias !3714, !noundef !6 ; 8 uses
  %i.ahw = load i64, ptr %i.aht, align 8, !noalias !3714, !noundef !6 ; 4 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aei, i64 48
  %i.ahy = load i64, ptr %i.ahx, align 8, !noundef !6 ; 4 uses
  %i.ahz = icmp ult i64 %i.ahv, %i.ahw
  %.not.i604 = icmp ugt i64 %i.ahv, %i.ahy
  %or.cond.i605 = or i1 %i.ahz, %.not.i604
  br i1 %or.cond.i605, label %.invoke2654, label %bb.ir, !prof !9

.invoke2654:                                      ; preds = %bb.iz, %bb.iq, %bb.hz
  %i.aia = phi i64 [ %i.aeu, %bb.hz ], [ %i.ahw, %bb.iq ], [ %i.ahv, %bb.iz ]
  %i.aib = phi i64 [ %i.aes, %bb.hz ], [ %i.ahv, %bb.iq ], [ %i.ajs, %bb.iz ]
  %i.aic = phi i64 [ %i.aew, %bb.hz ], [ %i.ahy, %bb.iq ], [ %i.ahy, %bb.iz ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aia, i64 noundef %i.aib, i64 noundef %i.aic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.cont2655 unwind label %bb.jy

.cont2655:                                        ; preds = %.invoke2654
  unreachable

bb.ir:                                            ; preds = %bb.iq
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aei, i64 40
  %i.aie = load ptr, ptr %i.aid, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aif = sub nuw i64 %i.ahv, %i.ahw             ; 6 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.ahw ; 6 uses
  switch i64 %i.aif, label %bb.it [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i64 1, label %bb.is
  ]

.loopexit61.split.loop.exit64.i:                  ; preds = %.lr.ph2626
  %.mux.le.i612 = select i1 %i.ais, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

bb.is:                                            ; preds = %bb.ir
  %i.aih = load i8, ptr %i.aig, align 1, !alias.scope !3715, !noundef !6
  switch i8 %i.aih, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  ]

bb.it:                                            ; preds = %bb.ir
  %.pr.i610 = load i8, ptr %i.aig, align 1, !alias.scope !3715
  %cond.i = icmp eq i8 %.pr.i610, 43
end_hunk_2
begin_hunk_3_@_ZN18lindera_dictionary18dictionary_builder17prefix_dictionary23PrefixDictionaryBuilder5build17hbad6ca231061bd78E:bb.a
  br i1 %i.ne, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628", label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nf = shl nuw i64 %.val584, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mz, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628": ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628"
  %.sroa.12892.0 = phi i64 [ %.sroa.12892.0.copyload894, %bb.df ], [ %.sroa.12892.0.copyload, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628" ] ; 4 uses
  %.sroa.8889.0 = phi ptr [ %.sroa.8889.0.copyload891, %bb.df ], [ %.sroa.8889.0.copyload, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628" ] ; 8 uses
  %.sroa.0887.0 = phi i64 [ %.sroa.0887.0.copyload888, %bb.df ], [ %.sroa.0887.0.copyload, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit628" ] ; 6 uses
  %i.ng = icmp sgt i64 %.sroa.12892.0, -1
  call void @llvm.assume(i1 %i.ng)
  %i.nh = icmp samesign ugt i64 %.sroa.12892.0, 4294967295
  br i1 %i.nh, label %bb.dg, label %bb.dl, !prof !16

._crit_edge2760:                                  ; preds = %bb.cw
  %i.ni = load ptr, ptr %.sroa.0445.01700, align 8, !nonnull !6, !noundef !6
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 80
  %i.nk = load i64, ptr %i.nj, align 8, !noundef !6
  store ptr %.sroa.0445.01700, ptr %i.an, align 8
  store i64 %i.mv, ptr %.sroa.0128.sroa.4.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0128.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.nk, ptr %.sroa.0128.sroa.7.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.4129.0..sroa_idx, align 8
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h946800fb2149df5bE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.an)
          to label %bb.dd unwind label %.loopexit1106

bb.dd:                                            ; preds = %._crit_edge2760
  %i.nl = load ptr, ptr %i.iv, align 8, !nonnull !6, !noundef !6
  %i.nm = load i64, ptr %i.iw, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h2606226660a086ceE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.nl, i64 noundef %i.nm)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #48
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

bb.df:                                            ; preds = %bb.dd
  %.sroa.0887.0.copyload888 = load i64, ptr %i.ab, align 8
  %.sroa.8889.0.copyload891 = load ptr, ptr %.sroa.8889.0..sroa_idx890, align 8
  %.sroa.12892.0.copyload894 = load i64, ptr %.sroa.12892.0..sroa_idx893, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.dc

bb.dg:                                            ; preds = %bb.dc
  %i.no = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h296e593591d3ecfcE"()
          to label %bb.dj unwind label %.loopexit.split-lp1112 ; 2 uses

.loopexit1111:                                    ; preds = %bb.dm, %bb.dl
  %lpad.loopexit1113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.loopexit.split-lp1112:                           ; preds = %bb.dg
  %lpad.loopexit.split-lp1114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.split-lp1112, %.loopexit1111
  %lpad.phi1115 = phi { ptr, i32 } [ %lpad.loopexit1113, %.loopexit1111 ], [ %lpad.loopexit.split-lp1114, %.loopexit.split-lp1112 ] ; 2 uses
  %i.np = icmp eq i64 %.sroa.0887.0, 0
  br i1 %i.np, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit", label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8889.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8889.0, i64 noundef %.sroa.0887.0, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !4089
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$$u5b$u8$u5d$$C$u32$RP$$GT$$GT$17haf639663cec57a3bE.exit"

bb.dj:                                            ; preds = %bb.dg
  %i.nq = icmp eq i64 %.sroa.0887.0, 0
  br i1 %i.nq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit635", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8889.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8889.0, i64 noundef %.sroa.0887.0, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !4090
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit635"

bb.dl:                                            ; preds = %bb.dc
  %.sroa.0130.0.extract.trunc = trunc nuw i64 %.sroa.12892.0 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %.sroa.0130.0.extract.trunc, ptr %i.z, align 4, !alias.scope !4091, !noalias !4092
  invoke fastcc void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7d8015056143605eE"(ptr noalias noundef align 8 dereferenceable(24) %i.aq, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ix)
          to label %bb.dm unwind label %.loopexit1111

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8889.0) ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.8889.0, i64 %.sroa.12892.0
  invoke fastcc void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7d8015056143605eE"(ptr noalias noundef align 8 dereferenceable(24) %i.aq, ptr noundef nonnull %.sroa.8889.0, ptr noundef nonnull %i.nr)
          to label %bb.dn unwind label %.loopexit1111

bb.dn:                                            ; preds = %bb.dm
  %i.ns = icmp eq i64 %.sroa.0887.0, 0
  br i1 %i.ns, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit638", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8889.0, i64 noundef %.sroa.0887.0, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !4093
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit638"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit638": ; preds = %bb.do, %bb.dn
  %i.nt = icmp eq ptr %.sroa.0445.11701, %i.gg    ; 2 uses
  %.sroa.0445.1.idx = select i1 %i.nt, i64 0, i64 8
  %.sroa.0445.1 = getelementptr inbounds nuw i8, ptr %.sroa.0445.11701, i64 %.sroa.0445.1.idx
  br i1 %i.nt, label %._crit_edge1704.loopexit, label %bb.ct

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit627": ; preds = %bb.cr, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit635"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.val = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.nu = icmp eq i64 %.val, 0
  br i1 %i.nu, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639", label %bb.dp

bb.dp:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit627"
  %.val547 = load ptr, ptr %i.in, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val547, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639": ; preds = %bb.dp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit627"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17hf10b9bd782791098E"(ptr noalias noundef align 8 dereferenceable(32) %i.as)
          to label %bb.dq unwind label %bb.an

bb.dq:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639", %bb.aq
  %.sroa.29.7 = phi i8 [ 4, %bb.aq ], [ %.sroa.29.4, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639" ]
  %.sroa.0.7 = phi ptr [ %i.ik, %bb.aq ], [ %.sroa.0.4, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit639" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17hf10b9bd782791098E"(ptr noalias noundef align 8 dereferenceable(32) %i.av)
          to label %bb.dr unwind label %.loopexit.split-lp1127

bb.dr:                                            ; preds = %bb.dq, %bb.aj
  %.sroa.29.8 = phi i8 [ 4, %bb.aj ], [ %.sroa.29.7, %bb.dq ]
  %.sroa.0.8 = phi ptr [ %i.ic, %bb.aj ], [ %.sroa.0.7, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.fh, %bb.fm, %bb.fr, %bb.dr
  %.sroa.29.9 = phi i8 [ %.sroa.29.8, %bb.dr ], [ 5, %bb.fr ], [ 5, %bb.fm ], [ 5, %bb.fh ]
  %.sroa.0.9 = phi ptr [ %.sroa.0.8, %bb.dr ], [ %i.ul, %bb.fr ], [ %i.ud, %bb.fm ], [ %i.tv, %bb.fh ]
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$lindera_dictionary..viterbi..WordEntry$GT$$GT$$GT$17h2bd0b5f0f27c1545E"(ptr noalias noundef align 8 dereferenceable(24) %i.bk)
          to label %bb.fs unwind label %bb.cf

bb.dt:                                            ; preds = %bb.ag
  %i.nv = getelementptr inbounds nuw i8, ptr %.val577, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.nx = sub nuw i64 %i.hq, %i.hs
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.hs
  %i.nz = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hea74a311e3f859b4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ny, i64 noundef %i.nx) ; 2 uses
  %i.oa = extractvalue { ptr, i64 } %i.nz, 0      ; 6 uses
  %i.ob = extractvalue { ptr, i64 } %i.nz, 1      ; 8 uses
  switch i64 %i.ob, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i64 1, label %bb.du
  ]

.invoke:                                          ; preds = %bb.fb, %bb.ex, %bb.af
  %i.oc = phi ptr [ @155, %bb.ex ], [ @154, %bb.af ], [ @156, %bb.fb ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc) #46
          to label %.cont unwind label %.loopexit.split-lp1127

.cont:                                            ; preds = %.invoke
  unreachable

bb.du:                                            ; preds = %bb.dt
  %i.od = load i8, ptr %i.oa, align 1, !alias.scope !4094, !noundef !6 ; 2 uses
  switch i8 %i.od, label %bb.dv [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.dt
  %.pr.i = load i8, ptr %i.oa, align 1, !alias.scope !4094
  br label %bb.dv

bb.dv:                                            ; preds = %thread-pre-split.i, %bb.du
  %i.oe = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.od, %bb.du ]
  switch i8 %i.oe, label %bb.eb [
    i8 43, label %bb.dw
    i8 45, label %bb.dx
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 1 ; 2 uses
  %i.og = add i64 %i.ob, -1                       ; 3 uses
  %i.oh = icmp ult i64 %i.ob, 5
  br i1 %i.oh, label %.preheader.i, label %.preheader101.i

bb.dx:                                            ; preds = %bb.dv
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 1 ; 2 uses
  %i.oj = add i64 %i.ob, -1                       ; 3 uses
  %i.ok = icmp ult i64 %i.ob, 5
  br i1 %i.ok, label %.preheader104.i, label %.lr.ph3119

.preheader104.i:                                  ; preds = %bb.dx
  %.not90117.i = icmp eq i64 %i.oj, 0
  br i1 %.not90117.i, label %.loopexit.i, label %.lr.ph.i

bb.dy:                                            ; preds = %bb.ec
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i3123, i64 1
  %i.om = add i64 %.sroa.27.0.i3122, -1           ; 2 uses
  %i.on = extractvalue { i16, i1 } %i.pw, 0       ; 2 uses
  %.not91.i = icmp eq i64 %i.om, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph3124

.preheader107.i:                                  ; preds = %bb.dz
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i3118, i64 1
  %i.op = add i64 %.sroa.27.2.i3117, -1           ; 2 uses
  %i.oq = extractvalue { i16, i1 } %i.pb, 0       ; 2 uses
  %.not.i640 = icmp eq i64 %i.op, 0
  br i1 %.not.i640, label %.loopexit.i, label %.lr.ph3119

.loopexit.i:                                      ; preds = %.preheader107.i, %bb.ea, %bb.dy, %bb.ed, %.preheader101.i, %.preheader.i, %.preheader104.i
  %.sroa.032.3.i = phi i16 [ %i.pm, %bb.ea ], [ %i.qg, %bb.ed ], [ %i.on, %bb.dy ], [ 0, %.preheader.i ], [ 0, %.preheader104.i ], [ 0, %.preheader101.i ], [ %i.oq, %.preheader107.i ]
  %i.or = zext i16 %.sroa.032.3.i to i32
  %i.os = shl nuw i32 %i.or, 16
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph3119:                                       ; preds = %bb.dx, %.preheader107.i
  %.sroa.02.2.i3118 = phi ptr [ %i.oo, %.preheader107.i ], [ %i.oi, %bb.dx ] ; 2 uses
  %.sroa.27.2.i3117 = phi i64 [ %i.op, %.preheader107.i ], [ %i.oj, %bb.dx ]
  %.sroa.032.2.i3116 = phi i16 [ %i.oq, %.preheader107.i ], [ 0, %bb.dx ]
  %i.ot = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.2.i3116, i16 10) ; 2 uses
  %i.ou = extractvalue { i16, i1 } %i.ot, 1
  %i.ov = load i8, ptr %.sroa.02.2.i3118, align 1, !alias.scope !4094, !noundef !6
  %i.ow = zext i8 %i.ov to i32
  %i.ox = add nsw i32 %i.ow, -48                  ; 2 uses
  %i.oy = icmp ugt i32 %i.ox, 9                   ; 2 uses
  %brmerge.i = select i1 %i.oy, i1 true, i1 %i.ou
  br i1 %brmerge.i, label %.loopexit109.split.loop.exit115.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph3119
  %i.oz = extractvalue { i16, i1 } %i.ot, 0
  %i.pa = trunc nuw nsw i32 %i.ox to i16
  %i.pb = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.oz, i16 %i.pa) ; 2 uses
  %i.pc = extractvalue { i16, i1 } %i.pb, 1
  br i1 %i.pc, label %.loopexit100.i, label %.preheader107.i

.loopexit103.split.loop.exit121.i:                ; preds = %.lr.ph3124
  %.mux96.le.i = select i1 %i.pt, i32 256, i32 512
  br label %.loopexit100.i

.loopexit109.split.loop.exit115.i:                ; preds = %.lr.ph3119
  %.mux.le.i = select i1 %i.oy, i32 256, i32 768
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %bb.dz, %.lr.ph.i, %bb.ec, %.lr.ph128.i, %.loopexit109.split.loop.exit115.i, %.loopexit103.split.loop.exit121.i
  %.sroa.12.2.i = phi i32 [ 256, %.lr.ph128.i ], [ 512, %bb.ec ], [ 256, %.lr.ph.i ], [ %.mux96.le.i, %.loopexit103.split.loop.exit121.i ], [ %.mux.le.i, %.loopexit109.split.loop.exit115.i ], [ 768, %bb.dz ]
  %i.pd = or disjoint i32 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph.i:                                         ; preds = %.preheader104.i, %bb.ea
  %.sroa.02.3120.i = phi ptr [ %i.pk, %bb.ea ], [ %i.oi, %.preheader104.i ] ; 2 uses
  %.sroa.27.3119.i = phi i64 [ %i.pj, %bb.ea ], [ %i.oj, %.preheader104.i ]
  %.sroa.032.4118.i = phi i16 [ %i.pm, %bb.ea ], [ 0, %.preheader104.i ]
  %i.pe = load i8, ptr %.sroa.02.3120.i, align 1, !alias.scope !4094, !noundef !6
  %i.pf = zext i8 %i.pe to i32
  %i.pg = add nsw i32 %i.pf, -48                  ; 2 uses
  %i.ph = icmp ult i32 %i.pg, 10
  br i1 %i.ph, label %bb.ea, label %.loopexit100.i

bb.ea:                                            ; preds = %.lr.ph.i
  %i.pi = mul i16 %.sroa.032.4118.i, 10
  %i.pj = add nsw i64 %.sroa.27.3119.i, -1        ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.02.3120.i, i64 1
  %i.pl = trunc nuw nsw i32 %i.pg to i16
  %i.pm = sub i16 %i.pi, %i.pl                    ; 2 uses
  %.not90.i = icmp eq i64 %i.pj, 0
  br i1 %.not90.i, label %.loopexit.i, label %.lr.ph.i

bb.eb:                                            ; preds = %bb.dv
  %i.pn = icmp ult i64 %i.ob, 4
  br i1 %i.pn, label %.lr.ph128.i.preheader, label %.preheader101.i

.lr.ph128.i.preheader:                            ; preds = %.preheader.i, %bb.eb
  %.sroa.02.1127.i.ph = phi ptr [ %i.oa, %bb.eb ], [ %i.of, %.preheader.i ]
  %.sroa.27.1126.i.ph = phi i64 [ %i.ob, %bb.eb ], [ %i.og, %.preheader.i ]
  br label %.lr.ph128.i

.preheader101.i:                                  ; preds = %bb.eb, %bb.dw
  %.sroa.27.0.ph.i = phi i64 [ %i.ob, %bb.eb ], [ %i.og, %bb.dw ] ; 2 uses
  %.sroa.02.0.ph.i = phi ptr [ %i.oa, %bb.eb ], [ %i.of, %bb.dw ]
  %.not91.i3120 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not91.i3120, label %.loopexit.i, label %.lr.ph3124

.preheader.i:                                     ; preds = %bb.dw
  %.not92124.i = icmp eq i64 %i.og, 0
  br i1 %.not92124.i, label %.loopexit.i, label %.lr.ph128.i.preheader

.lr.ph3124:                                       ; preds = %.preheader101.i, %bb.dy
  %.sroa.02.0.i3123 = phi ptr [ %i.ol, %bb.dy ], [ %.sroa.02.0.ph.i, %.preheader101.i ] ; 2 uses
  %.sroa.27.0.i3122 = phi i64 [ %i.om, %bb.dy ], [ %.sroa.27.0.ph.i, %.preheader101.i ]
  %.sroa.032.0.i3121 = phi i16 [ %i.on, %bb.dy ], [ 0, %.preheader101.i ]
  %i.po = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.0.i3121, i16 10) ; 2 uses
  %i.pp = extractvalue { i16, i1 } %i.po, 1
  %i.pq = load i8, ptr %.sroa.02.0.i3123, align 1, !alias.scope !4094, !noundef !6
  %i.pr = zext i8 %i.pq to i32
  %i.ps = add nsw i32 %i.pr, -48                  ; 2 uses
  %i.pt = icmp ugt i32 %i.ps, 9                   ; 2 uses
  %brmerge95.i = select i1 %i.pt, i1 true, i1 %i.pp
  br i1 %brmerge95.i, label %.loopexit103.split.loop.exit121.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph3124
  %i.pu = extractvalue { i16, i1 } %i.po, 0
  %i.pv = trunc nuw nsw i32 %i.ps to i16
  %i.pw = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.pu, i16 %i.pv) ; 2 uses
  %i.px = extractvalue { i16, i1 } %i.pw, 1
  br i1 %i.px, label %.loopexit100.i, label %bb.dy

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.preheader, %bb.ed
  %.sroa.02.1127.i = phi ptr [ %i.qe, %bb.ed ], [ %.sroa.02.1127.i.ph, %.lr.ph128.i.preheader ] ; 2 uses
  %.sroa.27.1126.i = phi i64 [ %i.qd, %bb.ed ], [ %.sroa.27.1126.i.ph, %.lr.ph128.i.preheader ]
  %.sroa.032.1125.i = phi i16 [ %i.qg, %bb.ed ], [ 0, %.lr.ph128.i.preheader ]
  %i.py = load i8, ptr %.sroa.02.1127.i, align 1, !alias.scope !4094, !noundef !6
  %i.pz = zext i8 %i.py to i32
  %i.qa = add nsw i32 %i.pz, -48                  ; 2 uses
  %i.qb = icmp ult i32 %i.qa, 10
  br i1 %i.qb, label %bb.ed, label %.loopexit100.i

bb.ed:                                            ; preds = %.lr.ph128.i
  %i.qc = mul i16 %.sroa.032.1125.i, 10
  %i.qd = add nsw i64 %.sroa.27.1126.i, -1        ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.02.1127.i, i64 1
  %i.qf = trunc nuw nsw i32 %i.qa to i16
  %i.qg = add i16 %i.qc, %i.qf                    ; 2 uses
  %.not92.i = icmp eq i64 %i.qd, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph128.i

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit": ; preds = %.loopexit100.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i32 [ %i.os, %.loopexit.i ], [ %i.pd, %.loopexit100.i ] ; 2 uses
  %.sroa.5450.0.extract.shift = lshr i32 %.sroa.12.0.insert.insert.i, 16
  %.sroa.5450.0.extract.trunc = trunc nuw i32 %.sroa.5450.0.extract.shift to i16
  %i.qh = trunc i32 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.qh, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread", label %bb.ee

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread": ; preds = %bb.du, %bb.du, %bb.dt, %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  br i1 %i.gk, label %bb.fu, label %bb.fq, !prof !7

bb.ee:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  %i.qi = getelementptr i8, ptr %i.ho, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !4095, !noundef !6 ; 8 uses
  %i.qk = load i64, ptr %i.ho, align 8, !noalias !4095, !noundef !6 ; 4 uses
  %i.ql = icmp ult i64 %i.qj, %i.qk
  %.not.i645 = icmp ugt i64 %i.qj, %i.hu
  %or.cond.i646 = or i1 %i.ql, %.not.i645
  br i1 %or.cond.i646, label %.invoke2748, label %bb.ef, !prof !9

bb.ef:                                            ; preds = %bb.ee
  %i.qm = sub nuw i64 %i.qj, %i.qk
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.qk
  %i.qo = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hea74a311e3f859b4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm) ; 2 uses
  %i.qp = extractvalue { ptr, i64 } %i.qo, 0      ; 6 uses
  %i.qq = extractvalue { ptr, i64 } %i.qo, 1      ; 6 uses
  switch i64 %i.qq, label %bb.eh [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i64 1, label %bb.eg
  ]

.loopexit61.split.loop.exit64.i:                  ; preds = %.lr.ph3130
  %.mux.le.i653 = select i1 %i.rc, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

bb.eg:                                            ; preds = %bb.ef
  %i.qr = load i8, ptr %i.qp, align 1, !alias.scope !4096, !noundef !6
  switch i8 %i.qr, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  ]

bb.eh:                                            ; preds = %bb.ef
  %.pr.i651 = load i8, ptr %i.qp, align 1, !alias.scope !4096
  %cond.i = icmp eq i8 %.pr.i651, 43
  br i1 %cond.i, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 1 ; 2 uses
  %i.qt = add i64 %i.qq, -1                       ; 2 uses
  %i.qu = icmp ult i64 %i.qq, 6
  br i1 %i.qu, label %.lr.ph.split.us.i.preheader, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.ek, %bb.ei
  %.sroa.16.0.ph.i = phi i64 [ %i.qq, %bb.ek ], [ %i.qt, %bb.ei ] ; 2 uses
  %.sroa.02.0.ph.i652 = phi ptr [ %i.qp, %bb.ek ], [ %i.qs, %bb.ei ]
  %.not.us.i3126 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i3126, label %.loopexit.i650, label %.lr.ph3130

.preheader59.split.us.i:                          ; preds = %bb.ej
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.us.i3129, i64 1
  %i.qw = add i64 %.sroa.16.0.us.i3128, -1        ; 2 uses
  %.not.us.i = icmp eq i64 %i.qw, 0
  br i1 %.not.us.i, label %.loopexit.i650, label %.lr.ph3130

.lr.ph3130:                                       ; preds = %.preheader59.i, %.preheader59.split.us.i
  %.sroa.02.0.us.i3129 = phi ptr [ %i.qv, %.preheader59.split.us.i ], [ %.sroa.02.0.ph.i652, %.preheader59.i ] ; 2 uses
  %.sroa.16.0.us.i3128 = phi i64 [ %i.qw, %.preheader59.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader59.i ]
  %.sroa.018.0.us.i3127 = phi i16 [ %i.rf, %.preheader59.split.us.i ], [ 0, %.preheader59.i ]
  %i.qx = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.018.0.us.i3127, i16 10) ; 2 uses
  %i.qy = extractvalue { i16, i1 } %i.qx, 1
  %i.qz = load i8, ptr %.sroa.02.0.us.i3129, align 1, !alias.scope !4096, !noundef !6
  %i.ra = zext i8 %i.qz to i32
  %i.rb = add nsw i32 %i.ra, -48                  ; 2 uses
  %i.rc = icmp ugt i32 %i.rb, 9                   ; 2 uses
  %brmerge.us.i = or i1 %i.qy, %i.rc
  br i1 %brmerge.us.i, label %.loopexit61.split.loop.exit64.i, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph3130
  %i.rd = extractvalue { i16, i1 } %i.qx, 0       ; 2 uses
  %i.re = trunc nuw nsw i32 %i.rb to i16
  %i.rf = add i16 %i.rd, %i.re                    ; 3 uses
  %.not52.us.i = icmp ult i16 %i.rf, %i.rd
  br i1 %.not52.us.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread", label %.preheader59.split.us.i

bb.ek:                                            ; preds = %bb.eh
  %i.rg = icmp ult i64 %i.qq, 5
  br i1 %i.rg, label %.lr.ph.split.us.i.preheader, label %.preheader59.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.ei, %bb.ek, %bb.eg
  %.sroa.02.171.us.i.ph = phi ptr [ %i.qs, %bb.ei ], [ %i.qp, %bb.ek ], [ %i.qp, %bb.eg ]
  %.sroa.16.170.us.i.ph = phi i64 [ %i.qt, %bb.ei ], [ %i.qq, %bb.ek ], [ 1, %bb.eg ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.el
end_hunk_3
begin_hunk_4_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a
  br label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i"
  %.lcssa1725.i.i.i = phi i64 [ %.lcssa1723.i.i.i, %select.unfold.i.i.i ], [ %.promoted22.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.jq = phi ptr [ %i.mc, %select.unfold.i.i.i ], [ %.promoted21.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.pre.i.i.i20.i.i.i = phi i64 [ %.pre.i.i.i19.i.i.i, %select.unfold.i.i.i ], [ %.promoted18.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.jr = phi i8 [ %i.md, %select.unfold.i.i.i ], [ %.promoted.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6948), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6949), !noalias !6944
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !6950), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6951), !noalias !6944
  %i.jt = icmp eq ptr %i.jq, %i.jn
  br i1 %i.jt, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bn, %bb.bw
  %i.ju = phi i64 [ %i.lj, %bb.bw ], [ %.lcssa1725.i.i.i, %bb.bn ] ; 2 uses
  %i.jv = phi ptr [ %i.lf, %bb.bw ], [ %i.jq, %bb.bn ] ; 6 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !6952), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6953), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6954), !noalias !6944
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1 ; 4 uses
  store ptr %i.jx, ptr %i.at, align 8, !alias.scope !6955, !noalias !6956
  %i.jy = load i8, ptr %i.jv, align 1, !noalias !6957, !noundef !6 ; 5 uses
  %i.jz = icmp sgt i8 %i.jy, -1
  br i1 %i.jz, label %bb.bo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ka = and i8 %i.jy, 31
  %i.kb = zext nneg i8 %i.ka to i32               ; 3 uses
  %i.kc = icmp ne ptr %i.jx, %i.jn
  call void @llvm.assume(i1 %i.kc), !noalias !6944
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 2 ; 4 uses
  store ptr %i.kd, ptr %i.at, align 8, !alias.scope !6958, !noalias !6956
  %i.ke = load i8, ptr %i.jx, align 1, !noalias !6957, !noundef !6
  %i.kf = shl nuw nsw i32 %i.kb, 6
  %i.kg = and i8 %i.ke, 63
  %i.kh = zext nneg i8 %i.kg to i32               ; 2 uses
  %i.ki = or disjoint i32 %i.kf, %i.kh
  %i.kj = icmp samesign ugt i8 %i.jy, -33
  br i1 %i.kj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kk = zext nneg i8 %i.jy to i32
  br label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.kl = icmp ne ptr %i.kd, %i.jn
  call void @llvm.assume(i1 %i.kl), !noalias !6944
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 3 ; 4 uses
  store ptr %i.km, ptr %i.at, align 8, !alias.scope !6959, !noalias !6956
  %i.kn = load i8, ptr %i.kd, align 1, !noalias !6957, !noundef !6
  %i.ko = shl nuw nsw i32 %i.kh, 6
  %i.kp = and i8 %i.kn, 63
  %i.kq = zext nneg i8 %i.kp to i32
  %i.kr = or disjoint i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = shl nuw nsw i32 %i.kb, 12
  %i.kt = or disjoint i32 %i.kr, %i.ks
  %i.ku = icmp samesign ugt i8 %i.jy, -17
  br i1 %i.ku, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i"
  %i.kv = icmp ne ptr %i.km, %i.jn
  call void @llvm.assume(i1 %i.kv), !noalias !6944
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  store ptr %i.kw, ptr %i.at, align 8, !alias.scope !6960, !noalias !6956
  %i.kx = load i8, ptr %i.km, align 1, !noalias !6957, !noundef !6
  %i.ky = shl nuw nsw i32 %i.kb, 18
  %i.kz = and i32 %i.ky, 1835008
  %i.la = shl nuw nsw i32 %i.kr, 6
  %i.lb = and i8 %i.kx, 63
  %i.lc = zext nneg i8 %i.lb to i32
  %i.ld = or disjoint i32 %i.la, %i.lc
  %i.le = or disjoint i32 %i.ld, %i.kz
  br label %bb.bp

bb.bp:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", %bb.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.lf = phi ptr [ %i.km, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.kw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.kd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.jx, %bb.bo ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.le, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.ki, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.kk, %bb.bo ] ; 8 uses
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.lg), !noalias !6944
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lh, %i.jw
  %i.lj = add i64 %i.li, %i.ju                    ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, label %bb.bq [
    i32 32, label %bb.bx
    i32 13, label %bb.bx
    i32 12, label %bb.bx
    i32 11, label %bb.bx
    i32 10, label %bb.bx
    i32 9, label %bb.bx
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.lk = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 127
  br i1 %i.lk, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ll = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ll, label %bb.bw [
    i32 0, label %bb.bu
    i32 22, label %bb.bs
    i32 32, label %bb.bv
    i32 48, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.lm = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 5760
  %i.ln = zext i1 %i.lm to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.br
  %i.lo = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 12288
  %i.lp = zext i1 %i.lo to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bu:                                            ; preds = %bb.br
  %i.lq = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !6961, !noundef !6
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.br
  %i.lu = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !6961, !noundef !6
  %i.ly = lshr i8 %i.lx, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lp, %bb.bt ], [ %i.lt, %bb.bu ], [ %i.ln, %bb.bs ], [ %i.ly, %bb.bv ]
  %i.lz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.lz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.br, %bb.bq
  %i.ma = icmp eq ptr %i.lf, %i.jn
  br i1 %i.ma, label %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.bw
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6962, !noalias !6956
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i"

bb.bx:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6962, !noalias !6956
  store i64 %i.lj, ptr %i.aq, align 8, !alias.scope !6946, !noalias !6944
  br label %select.unfold.i.i.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i": ; preds = %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", %bb.bn
  %.lcssa1724.i.i.i = phi i64 [ %i.lj, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %.lcssa1725.i.i.i, %bb.bn ]
  %i.mb = phi ptr [ %i.lf, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %i.jq, %bb.bn ]
  store i8 1, ptr %i.ar, align 1, !alias.scope !6963, !noalias !6944
  %.not.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.pre.i.i.i20.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.jp, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

select.unfold.i.i.i:                              ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %bb.bx
  %.lcssa1723.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.lcssa1724.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.mc = phi ptr [ %i.lf, %bb.bx ], [ %i.mb, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pre.i.i.i19.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.pre.i.i.i20.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.md = phi i8 [ 0, %bb.bx ], [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pn28.i.i.i = phi i64 [ %i.ju, %bb.bx ], [ %.pre2.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn28.i.i.i, %.pre.i.i.i20.i.i.i ; 15 uses
  %.not.i.i.i.i316 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i316, label %bb.bm, label %bb.by

bb.by:                                            ; preds = %select.unfold.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i.i.i20.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6964), !noalias !6934
  %cond = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 1
  %i.me = load i8, ptr %.sroa.0.1.i.i.i.i.i, align 1, !alias.scope !6965, !noalias !6966 ; 2 uses
  br i1 %cond, label %bb.bz, label %thread-pre-split.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  switch i8 %i.me, label %bb.cl [
    i8 43, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
    i8 45, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i:                 ; preds = %bb.by
  switch i8 %i.me, label %bb.cl [
    i8 43, label %bb.ca
    i8 45, label %bb.cb
  ]

bb.ca:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mg = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 3 uses
  %i.mh = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  br i1 %i.mh, label %.preheader.i.i.i.i.i.i.i.i, label %.preheader102.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mj = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  %i.mk = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  br i1 %i.mk, label %.preheader105.i.i.i.i.i.i.i.i, label %.lr.ph937

.preheader105.i.i.i.i.i.i.i.i:                    ; preds = %bb.cb
  %.not91118.i.i.i.i.i.i.i.i = icmp eq i64 %i.mj, 0
  br i1 %.not91118.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cm
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, i64 1
  %i.mm = add i64 %.sroa.27.0.i.i.i.i.i.i.i.i940, -1 ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.pg, 0       ; 2 uses
  %.not92.i.i.i.i.i.i.i.i = icmp eq i64 %i.mm, 0
  br i1 %.not92.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.preheader108.i.i.i.i.i.i.i.i:                    ; preds = %bb.cd
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, i64 1
  %i.mp = add i64 %.sroa.27.2.i.i.i.i.i.i.i.i935, -1 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.na, 0       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph937

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.preheader108.i.i.i.i.i.i.i.i, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cc, %bb.cn, %.preheader102.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i.i = phi i32 [ %i.ox, %bb.ck ], [ %i.pp, %bb.cn ], [ %i.mn, %bb.cc ], [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ], [ %i.nh, %bb.ce ], [ %i.no, %bb.cf ], [ %i.nv, %bb.cg ], [ %i.oc, %bb.ch ], [ %i.oj, %bb.ci ], [ %i.oq, %bb.cj ], [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ]
  %i.mr = zext i32 %.sroa.033.3.i.i.i.i.i.i.i.i to i64
  %i.ms = shl nuw i64 %i.mr, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph937:                                        ; preds = %bb.cb, %.preheader108.i.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i.i936 = phi ptr [ %i.mo, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mi, %bb.cb ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i.i935 = phi i64 [ %i.mp, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mj, %bb.cb ]
  %.sroa.033.2.i.i.i.i.i.i.i.i934 = phi i32 [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ], [ 0, %bb.cb ]
  %i.mt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i.i934, i32 10) ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1
  %i.mv = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 9                   ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %i.mu
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph937
  %i.mz = extractvalue { i32, i1 } %i.mt, 0
  %i.na = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mz, i32 %i.mx) ; 2 uses
  %i.nb = extractvalue { i32, i1 } %i.na, 1
  br i1 %i.nb, label %.loopexit101.i.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph942
  %.mux97.le.i.i.i.i.i.i.i.i = select i1 %i.pe, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph937
  %.mux.le.i.i.i.i.i.i.i.i = select i1 %i.my, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i.i:                     ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.6, %bb.cm, %.lr.ph129.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i.i ], [ 512, %bb.cm ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.mux97.le.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.6 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.5 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.4 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ 768, %bb.cd ]
  %i.nc = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader105.i.i.i.i.i.i.i.i
  %i.nd = load i8, ptr %i.mi, align 1, !alias.scope !6965, !noalias !6966, !noundef !6 ; 2 uses
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
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %i.ol = load i8, ptr %i.ok, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %.not92.i.i.i.i.i.i.i.i938 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i.i938, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.ca
  %.not93125.i.i.i.i.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not93125.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader

.lr.ph942:                                        ; preds = %.preheader102.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.03.0.i.i.i.i.i.i.i.i941 = phi ptr [ %i.ml, %bb.cc ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i.i940 = phi i64 [ %i.mm, %bb.cc ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i.i939 = phi i32 [ %i.mn, %bb.cc ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ]
  %i.oz = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i.i939, i32 10) ; 2 uses
  %i.pa = extractvalue { i32, i1 } %i.oz, 1
  %i.pb = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.pc = zext i8 %i.pb to i32
  %i.pd = add nsw i32 %i.pc, -48                  ; 2 uses
  %i.pe = icmp ugt i32 %i.pd, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i.i = select i1 %i.pe, i1 true, i1 %i.pa
  br i1 %brmerge96.i.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph942
  %i.pf = extractvalue { i32, i1 } %i.oz, 0
  %i.pg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pf, i32 %i.pd) ; 2 uses
  %i.ph = extractvalue { i32, i1 } %i.pg, 1
  br i1 %i.ph, label %.loopexit101.i.i.i.i.i.i.i.i, label %bb.cc

.lr.ph129.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph129.i.i.i.i.i.i.i.i.preheader, %bb.cn
  %.sroa.03.1128.i.i.i.i.i.i.i.i = phi ptr [ %i.po, %bb.cn ], [ %.sroa.03.1128.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i.i = phi i64 [ %i.pn, %bb.cn ], [ %.sroa.27.1127.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i.i = phi i32 [ %i.pp, %bb.cn ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %i.pi = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
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
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i ], [ 257, %bb.bz ], [ 257, %bb.bz ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.pr = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, 5
  call void @llvm.assume(i1 %i.pr), !noalias !6934
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, ptr %i.jm, align 1, !alias.scope !6941, !noalias !6967
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit": ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ps = landingpad { ptr, i32 }
end_hunk_4
