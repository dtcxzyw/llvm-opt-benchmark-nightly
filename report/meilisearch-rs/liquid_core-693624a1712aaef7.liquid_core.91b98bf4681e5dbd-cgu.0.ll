Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15245
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !align !9, !noundef !6
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !inline_history !15242
  %i.ac = load i64, ptr %i.d, align 8, !range !40, !noundef !6
  %.not23 = icmp eq i64 %i.ac, 3
  br i1 %.not23, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ag, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.r, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.j:                                             ; preds = %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hed8e3f471dd68c74E.exit.i"
  %i.aj = sub nuw i64 %4, %i.g
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %i.am, align 8
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h4a5dea040f70d644E.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h4a5dea040f70d644E.exit.thread": ; preds = %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hed8e3f471dd68c74E.exit.i", %bb.b, %bb.j
  %storemerge = phi i64 [ 3, %bb.j ], [ 0, %bb.b ], [ 0, %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hed8e3f471dd68c74E.exit.i" ]
  store i64 %storemerge, ptr %0, align 8
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit

_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit: ; preds = %._crit_edge40, %bb.f, %bb.k, %bb.l, %bb.s, %bb.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h4a5dea040f70d644E.exit.thread", %bb.c
  ret void

bb.k:                                             ; preds = %bb.h
  store i64 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit

bb.m:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.01.034 = phi i64 [ 3, %.lr.ph ], [ %.sroa.01.1, %bb.q ] ; 2 uses
  %.sroa.017.033 = phi ptr [ %i.ae, %.lr.ph ], [ %i.an, %bb.q ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.017.033, i64 24 ; 2 uses
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.033, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !inline_history !15242
  %i.ao = load i64, ptr %i.c, align 8, !range !40, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ao, 3
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not21 = icmp eq i64 %.sroa.01.034, 3
  br i1 %.not21, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.01.1 = phi i64 [ %i.ao, %bb.p ], [ %.sroa.01.034, %bb.n ] ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ah
  br i1 %i.ap, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.q
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.ar, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.sroa.01.0.lcssa.sink = phi i64 [ 3, %bb.r ], [ %.sroa.01.1, %._crit_edge ]
  store i64 %.sroa.01.0.lcssa.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17h26822d221683550eE.exit
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6775506a02a8f7d6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @557) ; 0 uses
  %i.f = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @557) ; 0 uses
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i64 %.0.val, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !6
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(19) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 19, i64 noundef range(i64 1, 9) 1) #59, !noalias !15267 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, 9) 1) #59, !noalias !15268 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc14, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

.noexc14:                                         ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 19, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %bb.d
  %i.h = phi ptr [ %i.f, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ %i.d, %bb.d ]
  %i.i = phi i64 [ 20, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 19, %bb.d ]
  %i.j = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0 = tail call i64 @llvm.abs.i64(i64 %.0.val, i1 false)
  %i.k = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h04203418c0187945E"(i64 noundef %.sroa.011.0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 19)
          to label %bb.f unwind label %bb.i       ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.c
  store i64 20, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15269)
  store i8 45, ptr %i.f, align 1, !noalias !15269
  store i64 1, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !15269
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { ptr, i64 } %i.k, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15270)
  call void @llvm.experimental.noalias.scope.decl(metadata !15271)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = sub nuw nsw i64 %i.i, %i.j
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j, i64 noundef %i.l, i64 noundef 1, i64 noundef 1)
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !15272
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !15272
  br label %bb.h

bb.h:                                             ; preds = %.noexc17, %bb.f
  %i.p = phi ptr [ %i.h, %bb.f ], [ %.pre, %.noexc17 ]
  %i.q = phi i64 [ %i.j, %bb.f ], [ %.pre.i.i, %.noexc17 ] ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.r, i64 %i.l, i1 false), !noalias !15272
  %i.u = add i64 %i.q, %i.l
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !15272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15273)
  call void @llvm.experimental.noalias.scope.decl(metadata !15274)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !21, !alias.scope !15275, !noundef !6 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i, 0
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !15275, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !15275
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @559, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN55_$LT$time..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17h0f8237e02a95de36E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %.val = load i32, ptr %0, align 4
  %i.a = tail call fastcc noundef zeroext i1 @_ZN8powerfmt13smart_display12SmartDisplay3fmt17hb984493e88a38bbeE(i32 %.val, ptr noalias noundef align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN55_$LT$time..time..Time$u20$as$u20$core..fmt..Display$GT$3fmt17h6cfec7d8e342aa76E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15283
  call void @"_ZN113_$LT$powerfmt..smart_display..FormatterOptions$u20$as$u20$core..convert..From$LT$$RF$core..fmt..Formatter$GT$$GT$4from17hded540aebc368e28E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !15284
  call fastcc void @"_ZN74_$LT$time..time..Time$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$8metadata17h90b6633ca5d60b93E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15283
  call void @llvm.experimental.noalias.scope.decl(metadata !15285)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.h = load i8, ptr %i.g, align 4, !alias.scope !15285, !noalias !15286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15287
  %i.i = load i32, ptr %i.f, align 8, !alias.scope !15285, !noalias !15286, !noundef !6
  store i32 %i.i, ptr %i.c, align 4, !noalias !15287
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !15285, !noalias !15286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15287
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.n = zext i8 %i.h to i16
  store ptr %i.m, ptr %i.a, align 8, !noalias !15287
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN70_$LT$deranged..RangedU8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h576c7dd1b17ca98aE", ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !15287
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.o, align 8, !noalias !15287
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN70_$LT$deranged..RangedU8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5d70e58e1174c89bE", ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !15287
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.k, ptr %i.p, align 8, !noalias !15287
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN70_$LT$deranged..RangedU8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5d70e58e1174c89bE", ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !15287
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.q, align 8, !noalias !15287
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !15287
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.r, align 8, !noalias !15287
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i16 %i.n, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !15287
  store ptr @678, ptr %i.b, align 8, !noalias !15287
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.s, align 8, !noalias !15287
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @679, ptr %i.t, align 8, !noalias !15287
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 4, ptr %i.u, align 8, !noalias !15287
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.v, align 8, !noalias !15287
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 5, ptr %i.w, align 8, !noalias !15287
  %i.x = call noundef zeroext i1 @"_ZN68_$LT$core..fmt..Formatter$u20$as$u20$powerfmt..ext..FormatterExt$GT$14pad_with_width17ha25c628238c85746E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !15285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15292)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !15292, !noundef !6 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !21, !alias.scope !15293, !noundef !6
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91d1e107de84b611E.exit.i", !prof !12

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !15292
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91d1e107de84b611E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91d1e107de84b611E.exit.i": ; preds = %bb.e, %bb.d
  %i.j = phi i64 [ %i.b, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15292, !nonnull !6, !noundef !6
  %i.m = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91d1e107de84b611E.exit.i"
  %i.o = icmp samesign ult i32 %1, 2048
  %i.p = trunc i32 %1 to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128                ; 3 uses
  %i.s = lshr i32 %1, 6
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 2 uses
  %i.w = lshr i32 %1, 12
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = lshr i32 %1, 18
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -16
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91d1e107de84b611E.exit.i"
  %i.ad = trunc nuw nsw i32 %1 to i8
  store i8 %i.ad, ptr %i.n, align 1, !noalias !15292
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = or disjoint i8 %i.t, -64
  store i8 %i.ae, ptr %i.n, align 1, !noalias !15292
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.r, ptr %i.af, align 1, !noalias !15292
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %1, 65536
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = or disjoint i8 %i.x, -32
  store i8 %i.ah, ptr %i.n, align 1, !noalias !15292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1
end_hunk_0
begin_hunk_1_@"_ZN71_$LT$liquid_core..error..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h5abd3d47d35a46c1E":_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  store i64 %.sroa.3.0.i.ph, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15897
  store ptr @651, ptr %i.b, align 8
  store i64 2, ptr %.sroa.559.0..sroa_idx, align 8
  store ptr %i.g, ptr %.sroa.760.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.861.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1062.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !15897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.am, label %.loopexit86, label %_ZN11liquid_core5error5trace5Trace9get_trace17h057c21b0724a3ff5E.exit

_ZN11liquid_core5error5trace5Trace9get_trace17h057c21b0724a3ff5E.exit: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit47, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.093, i64 48 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.split82

bb.g:                                             ; preds = %.split82
  %.pre = load i64, ptr %i.an, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.093, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.idx96 = mul nuw nsw i64 %.pre, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx96
  %i.at = icmp eq i64 %.pre, 0
  br i1 %i.at, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57.preheader

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57.preheader: ; preds = %bb.g
  %.sroa.033.188 = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57

.split82:                                         ; preds = %_ZN11liquid_core5error5trace5Trace9get_trace17h057c21b0724a3ff5E.exit
  %i.au = load ptr, ptr %i.v, align 8, !invariant.load !6, !noalias !15898, !nonnull !6
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @652, i64 noundef 8), !noalias !15898, !inline_history !2
  br i1 %i.av, label %.loopexit86, label %bb.g

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57.preheader, %bb.h
  %.sroa.033.190 = phi ptr [ %.sroa.033.1, %bb.h ], [ %.sroa.033.188, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57.preheader ] ; 3 uses
  %.sroa.033.089 = phi ptr [ %.sroa.033.190, %bb.h ], [ %i.ar, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.033.089, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.033.089, i64 24
  store ptr %i.aw, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf970ff48485b4997E", ptr %.sroa.427.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.w, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf970ff48485b4997E", ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15899
  store ptr @654, ptr %i.a, align 8
  store i64 3, ptr %.sroa.571.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.772.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.873.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1074.0..sroa_idx, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !15899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ax, label %.loopexit86, label %bb.h

bb.h:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57
  %i.ay = icmp eq ptr %.sroa.033.190, %i.as       ; 2 uses
  %.sroa.033.1.idx = select i1 %i.ay, i64 0, i64 48
  %.sroa.033.1 = getelementptr inbounds nuw i8, ptr %.sroa.033.190, i64 %.sroa.033.1.idx
  br i1 %i.ay, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$pest..error..ErrorVariant$LT$R$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f76261cf7ad90ddE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @660, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @661, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @601)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @657, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @658, i64 noundef 9, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @655, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @659, i64 noundef 9, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @656)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hc9320606c4d0fd62E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 1 %i.a, i64 noundef %1)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h897c3aee670be69aE"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.e(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 1 %i.a, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h656ff0f85e676c7aE"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.e(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h86e45d347a6e1ec3E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 1 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$core..num..dec2flt..ParseFloatError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6db8bd8ea777a1c1E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @665, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @610, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @664)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN72_$LT$liquid_core..model..ser..SerError$u20$as$u20$core..error..Error$GT$6source17h9a6cfbf77b921c79E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15902)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !15902, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !noalias !15902, !align !8, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %"_ZN71_$LT$liquid_core..error..error..Error$u20$as$u20$core..error..Error$GT$6source17he4b8fa937e4e7bb9E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !noalias !15902, !nonnull !6, !align !9, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !6, !noalias !15902, !nonnull !6
  %i.h = tail call { ptr, ptr } %i.g(ptr noundef nonnull align 1 %i.c), !noalias !15902, !inline_history !15903 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  br label %"_ZN71_$LT$liquid_core..error..error..Error$u20$as$u20$core..error..Error$GT$6source17he4b8fa937e4e7bb9E.exit"

"_ZN71_$LT$liquid_core..error..error..Error$u20$as$u20$core..error..Error$GT$6source17he4b8fa937e4e7bb9E.exit": ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$liquid_core..model..ser..SerError$u20$as$u20$core..fmt..Display$GT$3fmt17he5ce6e6a0c1be119E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN71_$LT$liquid_core..error..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h5abd3d47d35a46c1E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15906
  store ptr @666, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !15906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hbaccc9f8d80862e1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.6.0 = phi i64 [ %i.i, %bb.e ], [ %i.e, %bb.b ], [ %.val1, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.e ], [ %i.c, %bb.b ], [ %.val, %bb.d ]
  %i.f = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f

bb.d:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.g, align 8, !noundef !6
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 8, !noundef !6
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..fmt..Debug$GT$3fmt17h73afa6ad16ec48ffE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15910)
  %i.g = load i64, ptr %0, align 8, !range !7, !alias.scope !15910, !noalias !15911, !noundef !6 ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = icmp samesign ugt i64 %i.g, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 5
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15912
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.f, align 8, !noalias !15912
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @743, i64 noundef 7, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @742)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15912
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.e, align 8, !noalias !15912
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 5, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @744)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15912
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.d, align 8, !noalias !15912
  %i.p = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @747, i64 noundef 4, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @746)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15912
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.c, align 8, !noalias !15912
  %i.r = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @749, i64 noundef 8, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @748)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15912
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.b, align 8, !noalias !15912
  %i.t = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @681, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @750)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15912
  store ptr %0, ptr %i.a, align 8, !noalias !15912
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @752, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @751)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15912
  br label %"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit"

"_ZN78_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..fmt..Debug$GT$3fmt17h7852c2021aa7fd67E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN74_$LT$time..date..Date$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$8metadata17hb8eeda8efb6f59aeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = and i32 %.0.val, 511                     ; 2 uses
  %i.f = lshr i32 %.0.val, 9
  %.lobit.i = and i32 %i.f, 1
  %i.g = add nuw nsw i32 %.lobit.i, 59            ; 2 uses
  %.not.i = icmp samesign ugt i32 %i.e, %i.g      ; 2 uses
  %..i = select i1 %.not.i, i32 2, i32 0
  %.7.i = select i1 %.not.i, i32 %i.g, i32 0
  %i.h = sub nsw i32 %i.e, %.7.i                  ; 2 uses
  %i.i = mul nsw i32 %i.h, 268
  %i.j = add nsw i32 %i.i, 8028
  %i.k = lshr i32 %i.j, 13                        ; 2 uses
  %i.l = add nuw nsw i32 %i.k, %..i               ; 2 uses
  %i.m = and i32 %i.l, 255
  %i.n = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = mul nuw nsw i32 %i.k, 3917
  %i.p = add nuw nsw i32 %i.o, 28902
  %i.q = lshr i32 %i.p, 7
  %i.r = sub nsw i32 %i.h, %i.q
  %i.s = ashr i32 %.0.val, 10                     ; 4 uses
  %.sroa.526.0.extract.trunc = trunc i32 %i.r to i8 ; 2 uses
  store i8 %.sroa.526.0.extract.trunc, ptr %i.d, align 1
  %.not.i28.not = icmp eq i32 %i.s, 0
  br i1 %.not.i28.not, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$14checked_ilog1017he21049f5fdb2dd8cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.020.0 = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 3 uses
  %i.t = icmp samesign ugt i32 %.sroa.020.0, 99999 ; 2 uses
  %i.u = udiv i32 %.sroa.020.0, 100000
  %.sroa.06.0.i = select i1 %i.t, i32 5, i32 0
  %.sroa.03.0.i = select i1 %i.t, i32 %i.u, i32 %.sroa.020.0 ; 4 uses
  %i.v = add nuw nsw i32 %.sroa.03.0.i, 393206
  %i.w = add nuw nsw i32 %.sroa.03.0.i, 524188
  %i.x = and i32 %i.v, %i.w
  %i.y = add nuw nsw i32 %.sroa.03.0.i, 916504
  %i.z = add nuw nsw i32 %.sroa.03.0.i, 514288
  %i.aa = and i32 %i.y, %i.z
  %i.ab = xor i32 %i.x, %i.aa
  %i.ac = lshr i32 %i.ab, 17
  %i.ad = add nuw nsw i32 %i.ac, %.sroa.06.0.i
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.ae, i8 3)
  %i.ag = add nuw nsw i8 %i.af, 1
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$14checked_ilog1017he21049f5fdb2dd8cE.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$14checked_ilog1017he21049f5fdb2dd8cE.exit": ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i8 [ %i.ag, %bb.b ], [ 4, %bb.a ]
  %spec.select.i = icmp ugt i32 %i.s, 9999
  %i.ah = zext i1 %spec.select.i to i8            ; 2 uses
  %.sroa.01.0 = add nuw nsw i8 %.sroa.04.0, %i.ah ; 2 uses
  %.sroa.425.0.extract.trunc = trunc i32 %i.l to i8 ; 2 uses
  %i.ai = zext nneg i8 %.sroa.01.0 to i64
  store i8 %.sroa.425.0.extract.trunc, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15919
  store i64 2, ptr %i.b, align 8, !noalias !15920
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 32, ptr %.sroa.54.0..sroa_idx, align 8, !noalias !15920
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 3, ptr %.sroa.65.0..sroa_idx, align 4, !noalias !15920
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 16, ptr %.sroa.7.0..sroa_idx6, align 1, !noalias !15920
  %i.aj = call noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$u8$GT$8metadata17hd252eef89a2dc0d3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !15921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15919
  %.sroa.0.0.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
end_hunk_1
begin_hunk_2_@"_ZN74_$LT$time..time..Time$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$8metadata17h90b6633ca5d60b93E":bb.a
  store i8 %i.ah, ptr %i.f, align 1
  %i.ai = icmp ult i8 %i.ah, 24
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15934
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 32, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !15935
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !15935
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 0, ptr %.sroa.6.0..sroa_idx2, align 1, !noalias !15935
  %i.aj = call noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$u8$GT$8metadata17hd252eef89a2dc0d3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !15936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.al = load i8, ptr %i.ak, align 1, !noundef !6 ; 2 uses
  store i8 %i.al, ptr %i.e, align 1
  %i.am = icmp ult i8 %i.al, 60
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15937
  store i64 2, ptr %i.b, align 8, !noalias !15938
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 48, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !15938
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 3, ptr %.sroa.612.0..sroa_idx, align 4, !noalias !15938
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 16, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !15938
  %i.an = call noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$u8$GT$8metadata17hd252eef89a2dc0d3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !15939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15937
  %.sroa.0.0.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.an, i64 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !noundef !6 ; 2 uses
  store i8 %i.ap, ptr %i.d, align 1
  %i.aq = icmp ult i8 %i.ap, 60
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15940
  store i64 2, ptr %i.a, align 8, !noalias !15941
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 48, ptr %.sroa.522.0..sroa_idx, align 8, !noalias !15941
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 3, ptr %.sroa.623.0..sroa_idx, align 4, !noalias !15941
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 16, ptr %.sroa.724.0..sroa_idx, align 1, !noalias !15941
  %i.ar = call noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$u8$GT$8metadata17hd252eef89a2dc0d3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !15942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15940
  %.sroa.0.0.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ar, i64 2)
  %i.as = add nuw nsw i64 %.sroa.013.0, 3
  %i.at = add i64 %i.as, %i.aj
  %i.au = add i64 %i.at, %.sroa.0.0.i.i.i20
  %i.av = add i64 %i.au, %.sroa.0.0.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aw = trunc nuw nsw i64 %.sroa.013.0 to i8
  store i64 %i.av, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.012.0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.aw, ptr %i.ay, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @443, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$liquid_core..model..scalar..date..Date$u20$as$u20$core..fmt..Debug$GT$3fmt17h921821452b2ed3c0E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @681, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @585, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hc7b69062c92b8214E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.6.0 = phi i64 [ %i.i, %bb.e ], [ %i.e, %bb.b ], [ %.val1, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.e ], [ %i.c, %bb.b ], [ %.val, %bb.d ]
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f

bb.d:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.g, align 8, !noundef !6
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 8, !noundef !6
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$liquid_core..model..object..map..Object$u20$as$u20$core..fmt..Debug$GT$3fmt17hde2fa95f31cab0c2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15963
  call void @_ZN4core3fmt9Formatter9debug_map17h02a3602f78cbe3e0E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !15962, !inline_history !15946
  call void @llvm.experimental.noalias.scope.decl(metadata !15964)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !15965, !noalias !15966, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8167b51a73a19e2bE.exit", label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !alias.scope !15965, !noalias !15966, !nonnull !6, !noundef !6 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !15967
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = bitcast <16 x i1> %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.1.i.i, %.loopexit.i.i ], [ %i.g, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %.sroa.6.1.i.i, %.loopexit.i.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.86.020.i.i = phi i16 [ %i.s, %.loopexit.i.i ], [ %i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.v, %.loopexit.i.i ], [ %i.e, %.lr.ph.i.preheader.i ]
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022.i.i, %.lr.ph.i.i ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !15968
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %.lr.ph.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.86.020.i.i, %.lr.ph.i.i ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i, -1
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.0.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -80
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15969
  store ptr %i.w, ptr %i.b, align 8, !noalias !15969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15969
  store ptr %i.x, ptr %i.a, align 8, !noalias !15969
  %i.y = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugMap5entry17h9bc0bada64a71a06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @447, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @448), !noalias !15970, !inline_history !15961 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15969
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8167b51a73a19e2bE.exit", label %.lr.ph.i.i

"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8167b51a73a19e2bE.exit": ; preds = %.loopexit.i.i, %bb.a
  %i.aa = call noundef zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17he22c9d5a587142dfE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !15962, !inline_history !15946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15963
  ret i1 %i.aa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$liquid_core..model..scalar..StrSource$u20$as$u20$core..fmt..Display$GT$3fmt17h64d6ae3a95a4a421E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15973
  store ptr @683, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !15973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$liquid_core..model..value..state..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he56aa5f4105bc531E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !17, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN76_$LT$liquid_core..model..value..state..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he56aa5f4105bc531E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN76_$LT$liquid_core..model..value..state..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he56aa5f4105bc531E.808", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$liquid_core..model..scalar..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17h07b247962bc50c52E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 22 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [8 x i8], align 4                 ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = load i32, ptr %0, align 4, !range !38, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16008
  store i64 0, ptr %i.d, align 8, !noalias !16008
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !noalias !16008
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !16008
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16009
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h759bd10a2198b2fdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @113, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 %i.h, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !16010, !inline_history !15982

.noexc.i:                                         ; preds = %bb.a
  %i.m = load i64, ptr %i.b, align 8, !range !57, !noalias !16009, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 4
  br i1 %.not.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16009
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h759bd10a2198b2fdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 24), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 %i.h, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc.1.i unwind label %.loopexit.i, !noalias !16010, !inline_history !15982

.noexc.1.i:                                       ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !range !57, !noalias !16009, !noundef !6 ; 2 uses
  %.not.i.1.i = icmp eq i64 %i.n, 4
  br i1 %.not.i.1.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.noexc.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16009
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h759bd10a2198b2fdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 48), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 %i.h, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc.2.i unwind label %.loopexit.i, !noalias !16010, !inline_history !15982

.noexc.2.i:                                       ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !range !57, !noalias !16009, !noundef !6 ; 2 uses
  %.not.i.2.i = icmp eq i64 %i.o, 4
  br i1 %.not.i.2.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16009
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h759bd10a2198b2fdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 72), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 %i.h, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc.3.i unwind label %.loopexit.i, !noalias !16010, !inline_history !15982

.noexc.3.i:                                       ; preds = %bb.d
  %i.p = load i64, ptr %i.b, align 8, !range !57, !noalias !16009, !noundef !6 ; 2 uses
  %.not.i.3.i = icmp eq i64 %i.p, 4
  br i1 %.not.i.3.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.noexc.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16009
  invoke fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h759bd10a2198b2fdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 96), ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 %i.h, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc.4.i unwind label %.loopexit.i, !noalias !16010, !inline_history !15982

.noexc.4.i:                                       ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !range !57, !noalias !16009, !noundef !6 ; 2 uses
  %.not.i.4.i = icmp eq i64 %i.q, 4
  br i1 %.not.i.4.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc.4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16008
  %i.r = load ptr, ptr %i.j, align 8, !noalias !16008, !nonnull !6, !noundef !6
  %i.s = load i64, ptr %i.k, align 8, !noalias !16008, !noundef !6
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s)
          to label %bb.j unwind label %.loopexit.split-lp.i, !noalias !16010

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.l, %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16011)
  %.val.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16011, !noalias !16008, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i, 0
  br i1 %i.t, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !16011, !noalias !16008, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16012
  br label %common.resume

bb.i:                                             ; preds = %.noexc.4.i, %.noexc.3.i, %.noexc.2.i, %.noexc.1.i, %.noexc.i
  %.lcssa.i = phi i64 [ %i.m, %.noexc.i ], [ %i.n, %.noexc.1.i ], [ %i.o, %.noexc.2.i ], [ %i.p, %.noexc.3.i ], [ %i.q, %.noexc.4.i ]
  %.sroa.512.0.copyload.i.i = load i64, ptr %i.l, align 8, !noalias !16009 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16009
  %.val.i18.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16013, !noalias !16008, !noundef !6 ; 2 uses
  %i.u = icmp eq i64 %.val.i18.i, 0
  br i1 %i.u, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread55

_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread55: ; preds = %bb.i
  %.val1.i23.i61 = load ptr, ptr %i.j, align 8, !noalias !16008, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i23.i61, i64 noundef %.val.i18.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16010
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !range !10, !noalias !16008, !noundef !6 ; 2 uses
  %.not17.i = icmp eq i64 %i.v, -9223372036854775808
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !16008 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !16008 ; 7 uses
  br i1 %.not17.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %bb.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16014
  %i.ac = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 1) #59, !noalias !16014 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.k ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !16010

.noexc21.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ac, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false), !noalias !16015
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.54.0.i = phi ptr [ %.sroa.10.0.i.i.i, %bb.m ], [ %i.x, %bb.j ]
  %.sroa.02.0.i = phi i64 [ %i.z, %bb.m ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16008
  %i.ae = ptrtoint ptr %.sroa.54.0.i to i64
  %.val.i22.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16016, !noalias !16008, !noundef !6 ; 2 uses
  %i.af = icmp eq i64 %.val.i22.i, 0
  br i1 %i.af, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread47, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit

common.resume:                                    ; preds = %bb.q, %bb.r, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.g ], [ %lpad.phi.i, %bb.h ], [ %i.ak, %bb.r ], [ %i.ak, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit: ; preds = %bb.n
end_hunk_2
begin_hunk_3_@"_ZN77_$LT$liquid_core..model..scalar..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17h07b247962bc50c52E":bb.a

bb.q:                                             ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread47
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16019)
  call void @llvm.experimental.noalias.scope.decl(metadata !16020)
  %.val.i.i8 = load i64, ptr %i.f, align 8, !range !21, !alias.scope !16021, !noundef !6 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i8, 0
  br i1 %i.al, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i9 = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !16021, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9, i64 noundef %.val.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16021
  br label %common.resume

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16018
  call void @llvm.experimental.noalias.scope.decl(metadata !16022)
  call void @llvm.experimental.noalias.scope.decl(metadata !16023)
  %.val.i.i11 = load i64, ptr %i.f, align 8, !range !21, !alias.scope !16024, !noundef !6 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i11, 0
  br i1 %i.am, label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit", label %bb.s

bb.s:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.val1.i.i12 = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !16024, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i12, i64 noundef %.val.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16024
  br label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"

"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit": ; preds = %bb.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.p, %bb.o, %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread, %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread ], [ true, %_ZN4time10formatting11formattable6sealed6Sealed6format17h9b8f1a2cc57adf44E.exit.thread ], [ true, %bb.o ], [ %i.aj, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.aj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..fmt..Debug$GT$3fmt17h0b1ac830b1578015E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !15, !noundef !6
  switch i8 %i.e, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @687, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @452)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @689, i64 noundef 5, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @688)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.b, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @691, i64 noundef 6, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @690)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.l, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @693, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @692)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @694, i64 noundef 3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$liquid_core..parser..parser..inner..Rule$u20$as$u20$core..fmt..Debug$GT$3fmt17hb86e28a64ba426d7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !28, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN77_$LT$liquid_core..parser..parser..inner..Rule$u20$as$u20$core..fmt..Debug$GT$3fmt17hb86e28a64ba426d7E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN77_$LT$liquid_core..parser..parser..inner..Rule$u20$as$u20$core..fmt..Debug$GT$3fmt17hb86e28a64ba426d7E.809", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$core..fmt..Debug$GT$3fmt17h238bc8d3ff6be6f7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$5names17h0806a9ed684ca9e4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16032
  invoke void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %.val5, 4
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 %.idx.i.i
  %i.g = icmp eq i64 %.val5, 0
  br i1 %i.g, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb325ece91e01a8e7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc, %.noexc6
  %.sroa.0.07.i.i.i = phi ptr [ %i.i, %.noexc6 ], [ %.val4, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16033
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !16033
  %i.h = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @454)
          to label %.noexc6 unwind label %.loopexit ; 0 uses

.noexc6:                                          ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16033
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb325ece91e01a8e7E.exit.i", label %.lr.ph.i.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb325ece91e01a8e7E.exit.i": ; preds = %.noexc6, %.noexc
  %i.k = invoke noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb325ece91e01a8e7E.exit.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val2 = load i64, ptr %i.c, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val2, 0
  br i1 %i.l, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw i64 %.val2, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit"

bb.d:                                             ; preds = %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb325ece91e01a8e7E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16032
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit8", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit8"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit8": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN78_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$GT$2eq17h544fa3df4f9941ceE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$liquid_core..model..value..state..State$u20$as$u20$core..fmt..Display$GT$3fmt17ha54078f521d28b18E"(ptr noalias readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !6, !noalias !16036, !nonnull !6
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !16036, !inline_history !2
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$core..fmt..Debug$GT$3fmt17hb99980c1c84ccc2bE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @753, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$pest..parser_state..ParseAttempt$LT$R$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h01dd0c444d25508aE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !50, !noundef !6
  %i.c = icmp eq i8 %i.b, 46
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @755, i64 noundef 5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @754, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN79_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8d6b625b4c184883E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = tail call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN79_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..clone..Clone$GT$5clone17h04699453d7d13ce2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #5 {
bb.a:
  %.sroa.6.i = alloca [7 x i8], align 8           ; 8 uses
  %i.a = load i8, ptr %1, align 8, !range !15, !noundef !6
  switch i8 %i.a, label %default.unreachable42 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

default.unreachable42:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16046)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !16047, !noalias !16046, !noundef !6 ; 8 uses
  %i.d = add nsw i64 %i.c, -2
  %i.e = icmp samesign ugt i64 %i.c, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 5
  switch i64 %i.f, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload15 = load ptr, ptr %.sroa.9.0..sroa_idx14, align 8, !alias.scope !16048
  %.sroa.10.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload25 = load i64, ptr %.sroa.10.0..sroa_idx24, align 8, !alias.scope !16048
  %.sroa.11.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx30, i64 7, i1 false)
  %.sroa.12.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.12.0.copyload40 = load i8, ptr %.sroa.12.0..sroa_idx39, align 1, !alias.scope !16048
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.e:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload13 = load ptr, ptr %.sroa.9.0..sroa_idx12, align 8, !alias.scope !16048
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload23 = load i64, ptr %.sroa.10.0..sroa_idx22, align 8, !alias.scope !16048
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx29, i64 7, i1 false)
  %.sroa.12.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.12.0.copyload38 = load i8, ptr %.sroa.12.0..sroa_idx37, align 1, !alias.scope !16048
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload11 = load ptr, ptr %.sroa.9.0..sroa_idx10, align 8, !alias.scope !16048
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload21 = load i64, ptr %.sroa.10.0..sroa_idx20, align 8, !alias.scope !16048
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx28, i64 7, i1 false)
  %.sroa.12.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.12.0.copyload36 = load i8, ptr %.sroa.12.0..sroa_idx35, align 1, !alias.scope !16048
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.g:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload9 = load ptr, ptr %.sroa.9.0..sroa_idx8, align 8, !alias.scope !16048
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload19 = load i64, ptr %.sroa.10.0..sroa_idx18, align 8, !alias.scope !16048
  %.sroa.11.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx27, i64 7, i1 false)
  %.sroa.12.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.12.0.copyload34 = load i8, ptr %.sroa.12.0..sroa_idx33, align 1, !alias.scope !16048
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.h:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload7 = load ptr, ptr %.sroa.9.0..sroa_idx6, align 8, !alias.scope !16048
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload17 = load i64, ptr %.sroa.10.0..sroa_idx16, align 8, !alias.scope !16048
  %.sroa.11.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.0..sroa_idx26, i64 7, i1 false)
  %.sroa.12.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.12.0.copyload32 = load i8, ptr %.sroa.12.0..sroa_idx31, align 1, !alias.scope !16048
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.i:                                             ; preds = %bb.b
  %i.g = trunc nuw i64 %i.c to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.g, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16049)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !16050, !noalias !16051, !noundef !6 ; 2 uses
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !16051 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload4.i = load ptr, ptr %i.h, align 8, !alias.scope !16052, !noalias !16046
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload7.i = load i64, ptr %.sroa.55.0..sroa_idx6.i, align 8, !alias.scope !16052, !noalias !16046
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.6.0..sroa_idx8.i, i64 7, i1 false)
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

bb.m:                                             ; preds = %bb.i
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !alias.scope !16047, !noalias !16046
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !16047, !noalias !16046
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 7, i1 false)
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.5.sroa.7.0.copyload.i = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !16047, !noalias !16046
  br label %"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit"

"_ZN80_$LT$liquid_core..model..scalar..ScalarCowEnum$u20$as$u20$core..clone..Clone$GT$5clone17h0752097face36cbcE.exit": ; preds = %bb.k, %bb.l, %bb.m, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload40, %bb.d ], [ %.sroa.12.0.copyload38, %bb.e ], [ %.sroa.12.0.copyload36, %bb.f ], [ %.sroa.12.0.copyload34, %bb.g ], [ %.sroa.12.0.copyload32, %bb.h ], [ %.sroa.5.sroa.7.0.copyload.i, %bb.m ], [ -1, %bb.k ], [ %i.j, %bb.l ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload25, %bb.d ], [ %.sroa.10.0.copyload23, %bb.e ], [ %.sroa.10.0.copyload21, %bb.f ], [ %.sroa.10.0.copyload19, %bb.g ], [ %.sroa.10.0.copyload17, %bb.h ], [ %.sroa.5.sroa.5.0.copyload.i, %bb.m ], [ %i.n, %bb.k ], [ %.sroa.55.0.copyload7.i, %bb.l ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload15, %bb.d ], [ %.sroa.9.0.copyload13, %bb.e ], [ %.sroa.9.0.copyload11, %bb.f ], [ %.sroa.9.0.copyload9, %bb.g ], [ %.sroa.9.0.copyload7, %bb.h ], [ %.sroa.5.sroa.0.0.copyload.i, %bb.m ], [ %i.m, %bb.k ], [ %.sroa.0.0.copyload4.i, %bb.l ]
  %.sroa.0.0 = phi i64 [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ 0, %bb.m ], [ 1, %bb.k ], [ 1, %bb.l ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, i64 7, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.12.0, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 0, ptr %0, align 8
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc02c99a3bc49159bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 1, ptr %0, align 8
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfff25d08c22a1c41E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
  store i8 2, ptr %0, align 8
end_hunk_3
begin_hunk_4_@"_ZN79_$LT$liquid_core..runtime..variable..Variable$u20$as$u20$core..fmt..Display$GT$3fmt17h233e926b97bffcb4E":bb.a
bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i17, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !21, !invariant.load !6, !noalias !16069 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i17, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !31, !invariant.load !6, !noalias !16069 ; 2 uses
  %i.av = icmp ult i64 %i.au, -9223372036854775807
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21": ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i16, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.au) #59, !noalias !16069
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22"

bb.s:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i17, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !21, !invariant.load !6, !noalias !16069 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i17, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !31, !invariant.load !6, !noalias !16069 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i19"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i19": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i16, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #59, !noalias !16069
  br label %common.resume

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22": ; preds = %bb.o, %bb.r, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i21"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bh, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27.lr.ph

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27.lr.ph: ; preds = %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22"
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27.lr.ph, %bb.u
  %.sroa.09.034 = phi ptr [ %i.bf, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27.lr.ph ], [ %i.bl, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.09.034, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h63a12435c0678448E", ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16070
  store ptr @756, ptr %i.a, align 8
  store i64 2, ptr %.sroa.529.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.730.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.831.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1032.0..sroa_idx, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !16070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16070
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.u:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.09.034, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bm = icmp eq ptr %i.bl, %i.bi
  br i1 %i.bm, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27

.loopexit:                                        ; preds = %bb.u, %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22", %bb.t, %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit" ], [ true, %bb.t ], [ false, %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit22" ], [ false, %bb.u ]
  ret i1 %.sroa.0.0

bb.v:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7kstring6string5inner21KStringInner$LT$B$GT$12into_cow_str17ha2411fa7b261527bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.b
    i8 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !16089
  store i64 %.val1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %.sroa.510.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #59, !noalias !16090
  br label %"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E.exit"

"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E.exit": ; preds = %.thread, %bb.b, %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %1, align 8, !noundef !6    ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = icmp eq i8 %i.h, 0
  br i1 %i.k, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16091
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 1) #59, !noalias !16091 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %bb.f

bb.d:                                             ; preds = %.invoke
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E"(ptr noalias noundef align 8 dereferenceable(24) %1) #58
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.o, align 8, !noundef !6 ; 12 uses
  %i.p = icmp slt i64 %.val1, 0
  br i1 %i.p, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.e
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2"

.thread:                                          ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !16089
  store i64 %.val1, ptr %0, align 8
  %.sroa.49.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx19, align 8
  %.sroa.510.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %.sroa.510.0..sroa_idx20, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16092
  %i.r = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #59, !noalias !16092 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.invoke, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.invoke:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2"
  %i.t = phi i64 [ 0, %bb.e ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ]
  %i.u = phi i64 [ %.val1, %bb.e ], [ %.val1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i2" ], [ %i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.t, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.c
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.j, i64 %i.i, i1 false), !noalias !16093
  store i64 %i.i, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.516.0..sroa_idx, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$kstring..string..inner..KStringInner$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h4cf2a4313ec29986E.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$liquid_core..error..clone..CloneableError$u20$as$u20$core..fmt..Display$GT$3fmt17h8c53ec73ec52d8adE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16096
  store ptr @666, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$liquid_core..runtime..runtime..NullPartials$u20$as$u20$core..fmt..Debug$GT$3fmt17h2cb102c2c4eb3805E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$12contains_key17h4d924033a98ac2d0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp slt i64 %1, 0
  %i.e = icmp samesign ult i64 %1, %i.b
  %.sroa.0.0 = select i1 %i.d, i1 true, i1 %i.e
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @"_ZN81_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hcf118343ef86301bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp slt i64 %1, 0
  %i.e = select i1 %i.d, i64 %i.b, i64 0
  %.sroa.01.0 = add nsw i64 %i.e, %1              ; 2 uses
  %i.f = icmp ult i64 %.sroa.01.0, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.sroa.01.0
  %.sroa.0.0 = select i1 %i.f, ptr %i.i, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @61, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef range(i64 0, 164703072086692426) i64 @"_ZN81_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$4size17h5a9f1c46723a9410E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN81_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17hbacb905501f5d120E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.e = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @773, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN81_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$8as_value17h21e0b8e1c02a245eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @58, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf253d8ddedc159dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !16099, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !16099, !noundef !6
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.d
    i8 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !16099, !nonnull !6, !align !8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16099, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !16099, !nonnull !6, !align !8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !16099, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.e:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !16099, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !16099, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.f:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 8, !alias.scope !16099, !noundef !6
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i = phi i64 [ %i.h, %bb.c ], [ %i.n, %bb.f ], [ %i.k, %bb.d ], [ %.val2.i, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %i.o, %bb.f ], [ %i.i, %bb.d ], [ %.val.i, %bb.e ]
  %i.p = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$liquid_core..model..value..cow..ValueCow$u20$as$u20$core..cmp..PartialEq$GT$2eq17h57516638cdd86ba8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !19, !alias.scope !16104, !noundef !6
  switch i8 %i.a, label %default.unreachable [
    i8 5, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !16104, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !16104, !nonnull !6, !align !9, !noundef !6
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

default.unreachable:                              ; preds = %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i = phi ptr [ %i.e, %bb.b ], [ @57, %bb.c ], [ @58, %bb.d ], [ @59, %bb.e ], [ @60, %bb.f ], [ @61, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %0, %bb.a ]
  %i.j = load i8, ptr %1, align 8, !range !19, !alias.scope !16105, !noundef !6
  switch i8 %i.j, label %default.unreachable [
    i8 5, label %bb.g
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit4
  ]

bb.g:                                             ; preds = %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit
end_hunk_4
begin_hunk_5_@"_ZN85_$LT$liquid_core..model..scalar..datetime..DateTime$u20$as$u20$core..fmt..Display$GT$3fmt17hf319bb3f54238d02E":bb.a
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16246)
  %.val.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16246, !noalias !16243, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i, 0
  br i1 %i.t, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !16246, !noalias !16243, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16247
  br label %common.resume

bb.f:                                             ; preds = %.noexc.i
  %.sroa.512.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !16244 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16244
  %.val.i18.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16248, !noalias !16243, !noundef !6 ; 2 uses
  %i.u = icmp eq i64 %.val.i18.i, 0
  br i1 %i.u, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread56

_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread56: ; preds = %bb.f
  %.val1.i23.i62 = load ptr, ptr %i.m, align 8, !noalias !16243, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i23.i62, i64 noundef %.val.i18.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16249
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16243
  %i.v = load ptr, ptr %i.m, align 8, !noalias !16243, !nonnull !6, !noundef !6
  %i.w = load i64, ptr %i.n, align 8, !noalias !16243, !noundef !6
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %bb.h unwind label %.loopexit.split-lp.i, !noalias !16249

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.c, align 8, !range !10, !noalias !16243, !noundef !6 ; 2 uses
  %.not17.i = icmp eq i64 %i.x, -9223372036854775808
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !16243 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !16243 ; 7 uses
  br i1 %.not17.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.i
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %bb.k, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16250
  %i.ae = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 9) 1) #59, !noalias !16250 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !16249

.noexc21.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ae, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.z, i64 %i.ab, i1 false), !noalias !16251
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sroa.528.0.i = phi ptr [ %.sroa.10.0.i.i.i, %bb.k ], [ %i.z, %bb.h ]
  %.sroa.026.0.i = phi i64 [ %i.ab, %bb.k ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16243
  %i.ag = ptrtoint ptr %.sroa.528.0.i to i64
  %.val.i22.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !16252, !noalias !16243, !noundef !6 ; 2 uses
  %i.ah = icmp eq i64 %.val.i22.i, 0
  br i1 %i.ah, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread48, label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.d ], [ %lpad.phi.i, %bb.e ], [ %i.am, %bb.p ], [ %i.am, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit: ; preds = %bb.l
  %.val1.i23.i = load ptr, ptr %i.m, align 8, !noalias !16243, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i23.i, i64 noundef %.val.i22.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16249
  br label %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread48

_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread: ; preds = %bb.f, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  switch i64 %i.q, label %default.unreachable [
    i64 0, label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"
    i64 1, label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"
    i64 2, label %bb.n
    i64 3, label %bb.m
  ]

default.unreachable:                              ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread
  unreachable

bb.m:                                             ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread
  %i.ai = inttoptr i64 %.sroa.512.0.copyload.i.i to ptr
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hcacf76e9f129423eE"(ptr nonnull %i.ai), !noalias !16253
  br label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"

bb.n:                                             ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread
  %i.aj = inttoptr i64 %.sroa.512.0.copyload.i.i to ptr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 24, i64 noundef 8) #59, !noalias !16253
  br label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"

_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread48: ; preds = %bb.l, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.026.0.i, ptr %i.g, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %i.ag, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ab, ptr %.sroa.541.0..sroa_idx, align 8
  store ptr %i.g, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.5.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16254
  store ptr @34, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %i.al = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit unwind label %bb.o ; 2 uses

bb.o:                                             ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread48
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16255)
  call void @llvm.experimental.noalias.scope.decl(metadata !16256)
  %.val.i.i10 = load i64, ptr %i.g, align 8, !range !21, !alias.scope !16257, !noundef !6 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i10, 0
  br i1 %i.an, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i11 = load ptr, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !16257, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16257
  br label %common.resume

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16254
  call void @llvm.experimental.noalias.scope.decl(metadata !16258)
  call void @llvm.experimental.noalias.scope.decl(metadata !16259)
  %.val.i.i13 = load i64, ptr %i.g, align 8, !range !21, !alias.scope !16260, !noundef !6 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i13, 0
  br i1 %i.ao, label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit", label %bb.q

bb.q:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.val1.i.i14 = load ptr, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !16260, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i14, i64 noundef %.val.i.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16260
  br label %"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit"

"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h431e8e6cf1308dc8E.exit": ; preds = %bb.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.n, %bb.m, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread
  %.sroa.0.0 = phi i1 [ true, %bb.n ], [ true, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread ], [ true, %_ZN4time10formatting11formattable6sealed6Sealed6format17h8bf5617d595dce94E.exit.thread ], [ true, %bb.m ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.al, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !9
  %.sroa.5.0 = select i1 %i.b, ptr @781, ptr %i.f
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !nonnull !6
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.sroa.0.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$liquid_core..model..value..display..StrDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h77a2519f9e6854beE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16263
  store ptr @34, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !16263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$liquid_core..parser..filter_chain..FilterChain$u20$as$u20$core..fmt..Display$GT$3fmt17hc9d0b13628c228bbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val11 = load i64, ptr %i.m, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16312)
  %.idx.i = shl nuw nsw i64 %.val11, 4            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16313)
  %i.o = icmp eq i64 %.val11, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16314
  store ptr %.val10, ptr %i.i, align 8, !noalias !16314
  %gepdiff.i = add nsw i64 %.idx.i, -16
  %i.q = lshr exact i64 %gepdiff.i, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16314
  %i.r = mul nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.s = icmp eq i64 %.val11, 1                   ; 2 uses
  br i1 %i.s, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16315
  %i.t = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 1) #59, !noalias !16315 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16314
  unreachable

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ]
  store i64 %i.r, ptr %i.h, align 8, !noalias !16314
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !16314
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !16314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16314
  store ptr %i.i, ptr %i.g, align 8, !noalias !16314
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcde7e7d432706daeE", ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !16314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16316
  store ptr @34, ptr %i.f, align 8, !noalias !16317
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !16317
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !16317
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !16317
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !16317
  %i.v = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @443, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i" unwind label %.loopexit.split-lp.i.i, !noalias !16314, !inline_history !33

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.k, align 8, !alias.scope !16318, !noalias !16319
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16318, !noalias !16319
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16318, !noalias !16319
  br label %bb.i

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.e ], [ %lpad.phi.i.i, %bb.f ], [ %i.ao, %bb.k ], [ %i.ao, %bb.j ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i.i:                                    ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i", %bb.h
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i, %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16320)
  call void @llvm.experimental.noalias.scope.decl(metadata !16321)
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !range !21, !alias.scope !16322, !noalias !16314, !noundef !6 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !16322, !noalias !16314, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16323
  br label %common.resume

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16316
  br i1 %i.v, label %.invoke.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i", !prof !34

.invoke.i.i:                                      ; preds = %.noexc19.i.i, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i"
  %i.x = phi ptr [ @803, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i" ], [ @804, %.noexc19.i.i ]
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @475, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #57
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !16314

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16314
  call void @llvm.experimental.noalias.scope.decl(metadata !16324)
  call void @llvm.experimental.noalias.scope.decl(metadata !16325)
  br i1 %i.s, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h869d398871381cb0E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i"
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hfa8cb18314e65bb1E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.z, %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hfa8cb18314e65bb1E.exit.i.i.i.i" ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16326
  store ptr %i.y, ptr %i.e, align 8, !noalias !16327
  call void @llvm.experimental.noalias.scope.decl(metadata !16328)
  call void @llvm.experimental.noalias.scope.decl(metadata !16329)
  %i.aa = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !16330, !noalias !16331, !noundef !6 ; 3 uses
  %i.ab = load i64, ptr %i.h, align 8, !range !21, !alias.scope !16330, !noalias !16331, !noundef !6
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %bb.h, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i", !prof !12

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aa, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i unwind label %.loopexit.i.i, !noalias !16314

.noexc18.i.i:                                     ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !16332, !noalias !16331
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i": ; preds = %.noexc18.i.i, %bb.g
  %i.ae = phi i64 [ %i.aa, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc18.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !16332, !noalias !16331, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ah, ptr noundef nonnull readonly align 1 dereferenceable(3) @503, i64 3, i1 false), !noalias !16333
  %i.ai = add nuw i64 %i.ae, 3
  store i64 %i.ai, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !16332, !noalias !16331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16327
  store ptr %i.e, ptr %i.d, align 8, !noalias !16327
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcde7e7d432706daeE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16334
  store ptr @34, ptr %i.c, align 8, !noalias !16335
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16335
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16335
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16335
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16335
  %i.aj = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @443, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc19.i.i unwind label %.loopexit.i.i, !noalias !16314

.noexc19.i.i:                                     ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17haf7529d998548c8eE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16334
  br i1 %i.aj, label %.invoke.i.i, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hfa8cb18314e65bb1E.exit.i.i.i.i", !prof !36

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hfa8cb18314e65bb1E.exit.i.i.i.i": ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16326
  %i.ak = icmp eq ptr %i.z, %i.n
  br i1 %i.ak, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h869d398871381cb0E.exit.i.i", label %bb.g

end_hunk_5
begin_hunk_6_@"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$i32$GT$$GT$2eq17h524f32bdbd30565fE"
define noundef zeroext i1 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$i32$GT$$GT$2eq17h524f32bdbd30565fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %1, align 4, !noundef !6
  %i.c = sext i32 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$i64$GT$$GT$2eq17h6b15e6f5ee09f633E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !6
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$str$GT$$GT$2eq17h9856780338baf9deE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.57.0..sroa_idx, align 8
  %i.b = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$u16$GT$$GT$2eq17h219ee070c108d1b0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %1, align 2, !noundef !6
  %i.c = zext i16 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$u32$GT$$GT$2eq17h484e5be746940c16E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %1, align 4, !noundef !6
  %i.c = zext i32 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$i8$GT$$GT$11partial_cmp17h67c4e9c95b30c921E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %1, align 1, !noundef !6
  %i.c = sext i8 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN89_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$u8$GT$$GT$11partial_cmp17hb94e9c5a822d6f1aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %1, align 1, !noundef !6
  %i.c = zext i8 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$12serialize_i817h991a5ecd735775fcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [3 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16636
  %i.d = icmp slt i8 %1, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16636
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef dereferenceable_or_null(3) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, 9) 1) #59, !noalias !16637 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16636
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #59, !noalias !16638 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc14.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

.noexc14.i:                                       ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16636
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 3, ptr %i.b, align 8, !noalias !16636
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !16636
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !16636
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, %bb.d
  %i.i = phi ptr [ %i.g, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %i.e, %bb.d ]
  %i.j = phi i64 [ 4, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 3, %bb.d ]
  %i.k = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0.i = tail call i8 @llvm.abs.i8(i8 %1, i1 false)
  %i.l = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp20_$LT$impl$u20$u8$GT$4_fmt17h0aba84ed63f64164E"(i8 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 3)
          to label %bb.f unwind label %bb.h, !noalias !16636 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %bb.c
  store i64 4, ptr %i.b, align 8, !noalias !16636
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !16636
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  store i8 45, ptr %i.g, align 1, !noalias !16640
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16639, !noalias !16636
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16641)
  call void @llvm.experimental.noalias.scope.decl(metadata !16642)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16636

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16643, !noalias !16636
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16643, !noalias !16636
  br label %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16644)
  call void @llvm.experimental.noalias.scope.decl(metadata !16645)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16646, !noalias !16636, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16646, !noalias !16636, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16647
  br label %common.resume

"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16648
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16649 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16650

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16651
  br label %common.resume

bb.m:                                             ; preds = %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16652
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16652
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16653
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16653 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16654
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$12serialize_u817h7cc275e868f2b326E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp20_$LT$impl$u20$u8$GT$4_fmt17h0aba84ed63f64164E"(i8 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 3) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16669
  %i.h = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #59, !noalias !16669 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !16670
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  %.sroa.10.0.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread" ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16672
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.10.0.i.i13, i64 %i.e, i1 false), !noalias !16672
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.a, align 8, !noalias !16673
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or i64 %.sroa.04.1.insert.shift, %i.e
  %i.k = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.65.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16673 ; 2 uses
  br i1 %i.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i13, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16674
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", %bb.c, %bb.d
  %.sroa.04.0 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.77.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.65.0 = phi i64 [ %.7..7..7..sroa.65.1.copyload, %bb.c ], [ %.7..7..7..sroa.65.1.copyload, %bb.d ], [ %i.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.65.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.611.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_f3217hc199fdada695f7feE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noalias noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_f6417h87a03d2b3a59506fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noalias noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i1617hb6f59d1f380f4213E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [5 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16712
  %i.d = icmp slt i16 %1, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16712
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #59, !noalias !16713 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16712
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #59, !noalias !16714 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc14.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

.noexc14.i:                                       ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16712
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 5, ptr %i.b, align 8, !noalias !16712
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !16712
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !16712
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, %bb.d
  %i.i = phi ptr [ %i.g, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %i.e, %bb.d ]
  %i.j = phi i64 [ 6, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 5, %bb.d ]
  %i.k = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0.i = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.l = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17h58c92274f7b16df7E"(i16 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 5)
          to label %bb.f unwind label %bb.h, !noalias !16712 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %bb.c
  store i64 6, ptr %i.b, align 8, !noalias !16712
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !16712
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16715)
  store i8 45, ptr %i.g, align 1, !noalias !16716
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16715, !noalias !16712
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16717)
  call void @llvm.experimental.noalias.scope.decl(metadata !16718)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16712

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16719, !noalias !16712
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16719, !noalias !16712
  br label %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16720)
  call void @llvm.experimental.noalias.scope.decl(metadata !16721)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16722, !noalias !16712, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16722, !noalias !16712, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16723
  br label %common.resume

"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16724
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16725 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16726

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16727
  br label %common.resume

bb.m:                                             ; preds = %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16728
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16728
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16729
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16729 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16730
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217hd4f6f0147880feafE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16768
  %i.d = icmp slt i32 %1, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16768
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef dereferenceable_or_null(10) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 9) 1) #59, !noalias !16769 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16768
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef dereferenceable_or_null(11) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 9) 1) #59, !noalias !16770 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc14.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

.noexc14.i:                                       ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16768
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 10, ptr %i.b, align 8, !noalias !16768
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !16768
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !16768
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, %bb.d
  %i.i = phi ptr [ %i.g, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %i.e, %bb.d ]
  %i.j = phi i64 [ 11, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 10, %bb.d ]
  %i.k = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.l = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h90579d648c67d9beE"(i32 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 10)
          to label %bb.f unwind label %bb.h, !noalias !16768 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %bb.c
  store i64 11, ptr %i.b, align 8, !noalias !16768
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !16768
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16771)
  store i8 45, ptr %i.g, align 1, !noalias !16772
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16771, !noalias !16768
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16773)
  call void @llvm.experimental.noalias.scope.decl(metadata !16774)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16768

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16775, !noalias !16768
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16775, !noalias !16768
  br label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16776)
  call void @llvm.experimental.noalias.scope.decl(metadata !16777)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16778, !noalias !16768, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16778, !noalias !16768, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16779
  br label %common.resume

"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16780
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16781 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16782

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16783
  br label %common.resume

bb.m:                                             ; preds = %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16784
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16784
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16785
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16785 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16786
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h77600f56556e548eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !16804, !noalias !16805, !noundef !6 ; 9 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 16
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !16804, !noalias !16805 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !16804, !noalias !16805 ; 4 uses
  %i.g = icmp ugt i64 %.sroa.018.0.copyload.i, %i.d
  br i1 %i.g, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.d) #59, !noalias !16806 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16807

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

.body.i:                                          ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16808
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !16804, !noalias !16805, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16809
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.d, i1 false), !noalias !16809
  %.0..0..0..sroa.01.1.copyload = load i56, ptr %i.a, align 8, !noalias !16804
  %.sroa.01.1.insert.ext = zext i56 %.0..0..0..sroa.01.1.copyload to i64
  %.sroa.01.1.insert.shift = shl nuw i64 %.sroa.01.1.insert.ext, 8
  %.sroa.01.1.insert.insert = or disjoint i64 %.sroa.01.1.insert.shift, %i.d
  %i.m = inttoptr i64 %.sroa.01.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16804 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16811)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16812, !noalias !16805, !noundef !6 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16813
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.01.0 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %bb.c ], [ %.sroa.219.0.copyload.i, %bb.b ]
  %.sroa.72.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.e ], [ %.7..7..7..sroa.6.1.copyload, %bb.f ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.72.0, ptr %.sroa.64.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h3682d48c3bdf71f5E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noalias noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hbbd2eb67cbe50c29E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noalias noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u1617h9da1074cd534e0aaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17h58c92274f7b16df7E"(i16 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 5) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_6
