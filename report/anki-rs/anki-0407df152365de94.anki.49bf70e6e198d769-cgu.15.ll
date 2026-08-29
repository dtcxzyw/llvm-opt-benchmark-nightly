Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN4anki6search7builder50_$LT$impl$u20$anki..search..parser..SearchNode$GT$12from_deck_id17h207edea93c16e456E":bb.a
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  br i1 %2, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10109
  store i64 0, ptr %i.c, align 8, !noalias !10109
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10109
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !10109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10109
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !10109
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !10109
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !10109
  store ptr %i.c, ptr %i.b, align 8, !noalias !10109
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @120, ptr %i.f, align 8, !noalias !10109
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$anki..decks..DeckId$u20$as$u20$core..fmt..Display$GT$3fmt17h2ed664db73e86c5dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !10113

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %bb.g unwind label %bb.f, !noalias !10113

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit", !prof !190

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @121, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @562, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #50
          to label %.noexc.i unwind label %bb.c, !noalias !10113

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !10113
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit": ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10109
  store i64 -9223372036854775802, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.k, align 8
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7builder50_$LT$impl$u20$anki..search..parser..SearchNode$GT$13from_tag_name17h0cab66f1417ad7a7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8
  store i64 -9223372036854775796, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7builder50_$LT$impl$u20$anki..search..parser..SearchNode$GT$14from_deck_name17h8bb24580d386a142E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  store i64 -9223372036854775803, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7builder50_$LT$impl$u20$anki..search..parser..SearchNode$GT$18from_notetype_name17h36a9f4fe795a42c0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  store i64 -9223372036854775798, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7builder50_$LT$impl$u20$anki..search..parser..SearchNode$GT$18from_template_name17ha4635aa271663d02E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  store i64 -9223372036854775804, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN4anki6search7builder85_$LT$impl$u20$core..convert..From$LT$T$GT$$u20$for$u20$anki..search..parser..Node$GT$4from17h17e4a52161921b0aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  store i64 -9223372036854775799, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN4anki6search7builder85_$LT$impl$u20$core..convert..From$LT$T$GT$$u20$for$u20$anki..search..parser..Node$GT$4from17h7a077fe96cb8cdd6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN4anki6search7builder85_$LT$impl$u20$core..convert..From$LT$T$GT$$u20$for$u20$anki..search..parser..Node$GT$4from17h85fa1ccfb9dd465aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki6search7builder85_$LT$impl$u20$core..convert..From$LT$T$GT$$u20$for$u20$anki..search..parser..Node$GT$4from17ha2d9e67731a5dabaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN4anki13import_export7service128_$LT$impl$u20$core..convert..From$LT$anki_proto..import_export..ExportLimit$GT$$u20$for$u20$anki..search..parser..SearchNode$GT$4from17h0e2bb680beef66b2E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7service11search_node117_$LT$impl$u20$core..convert..TryFrom$LT$anki_proto..search..SearchNode$GT$$u20$for$u20$anki..search..parser..Node$GT$8try_from17h2c605e8e295914b9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [19 x i8], align 1                ; 3 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.7244 = alloca [24 x i8], align 8         ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [176 x i8], align 8               ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [112 x i8], align 8               ; 9 uses
  %i.z = alloca [72 x i8], align 8                ; 7 uses
  %i.aa = alloca [72 x i8], align 8               ; 76 uses
  %i.ab = alloca [56 x i8], align 8               ; 5 uses
  %i.ac = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.7208 = alloca [72 x i8], align 8         ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 2 uses
  %i.af = alloca [88 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.7198 = alloca [72 x i8], align 8         ; 3 uses
  %i.ah = alloca [56 x i8], align 8               ; 4 uses
  %i.ai = alloca [112 x i8], align 8              ; 7 uses
  %i.aj = alloca [72 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.4120 = alloca [24 x i8], align 8         ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 3 uses
  %i.an = alloca [72 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [72 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  %i.ar = alloca [72 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = load i64, ptr %1, align 8, !range !10114, !noundef !4 ; 5 uses
  %.not = icmp eq i64 %i.at, -9223372036854775787
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 28 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %.sroa.2731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2731.0.copyload = load i64, ptr %.sroa.2731.0..sroa_idx, align 8 ; 4 uses
  %i.au = icmp ne i64 %i.at, -9223372036854775789
  tail call void @llvm.assume(i1 %i.au)
  %i.av = xor i64 %i.at, -9223372036854775808
  %i.aw = icmp slt i64 %i.at, 0
  %i.ax = select i1 %i.aw, i64 %i.av, i64 19
  switch i64 %i.ax, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %switch.lookup491
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.w
    i64 11, label %.thread478
    i64 12, label %bb.x
    i64 13, label %bb.y
    i64 14, label %bb.z
    i64 15, label %bb.aa
    i64 16, label %bb.ac
    i64 17, label %bb.ad
    i64 18, label %bb.ae
    i64 19, label %bb.af
    i64 20, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775789, ptr %i.aa, align 8
  br label %bb.dp

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.6.0.copyload, ptr %i.ag, align 8
  %.sroa.27.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  %.sroa.2731.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.2731.0.copyload, ptr %.sroa.2731.8..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 164703072086692426
  tail call void @llvm.assume(i1 %i.ba)
  switch i64 %i.az, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.an
  ]

bb.f:                                             ; preds = %bb.b
  %i.bb = inttoptr i64 %.sroa.6.0.copyload to ptr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i64 56, i1 false)
  invoke void @"_ZN4anki6search7service11search_node117_$LT$impl$u20$core..convert..TryFrom$LT$anki_proto..search..SearchNode$GT$$u20$for$u20$anki..search..parser..Node$GT$8try_from17h2c605e8e295914b9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.ah)
          to label %bb.bc unwind label %bb.bb

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.6.0.copyload, ptr %i.t, align 8
  %.sroa.27.8..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bc = load ptr, ptr %.sroa.27.8..sroa_idx23, align 8, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4
  invoke void @_ZN4anki6search6parser5parse17h572bb13a822b2e02E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %bb.bi unwind label %bb.bh

bb.h:                                             ; preds = %bb.b
  %i.bf = trunc i64 %.sroa.6.0.copyload to i16
  store i64 -9223372036854775804, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i16 %i.bf, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.dp

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10115
  %i.bg = icmp slt i64 %.sroa.6.0.copyload, 0
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10115
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = tail call noundef dereferenceable_or_null(19) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 19, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10118 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.noexc.i, label %bb.l

.noexc.i:                                         ; preds = %bb.j
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 19) #50, !noalias !10115
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bj = tail call noundef dereferenceable_or_null(20) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10121 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.noexc14.i, label %bb.n

.noexc14.i:                                       ; preds = %bb.k
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 20) #50, !noalias !10115
  unreachable

bb.l:                                             ; preds = %bb.j
  store i64 19, ptr %i.j, align 8, !noalias !10115
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bh, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !10115
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !10115
  br label %bb.m

bb.m:                                             ; preds = %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i, %bb.l
  %.sroa.011.0.i = call i64 @llvm.abs.i64(i64 %.sroa.6.0.copyload, i1 false)
  %i.bl = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h1e237402706b072cE"(i64 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.k, i64 noundef 19)
          to label %bb.o unwind label %bb.p, !noalias !10115 ; 2 uses

bb.n:                                             ; preds = %bb.k
  store i64 20, ptr %i.j, align 8, !noalias !10115
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.bj, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10115
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !10115
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i unwind label %bb.p, !noalias !10115

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i: ; preds = %bb.n
  %i.bm = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !10124, !noalias !10115, !nonnull !4, !noundef !4
  %i.bn = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !10124, !noalias !10115, !noundef !4 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 45, ptr %i.bp, align 1, !noalias !10115
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !10124, !noalias !10115
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bq = extractvalue { ptr, i64 } %i.bl, 0      ; 3 uses
  %i.br = extractvalue { ptr, i64 } %i.bl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bs)
          to label %"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hca8a0f6ad10a12b6E.exit" unwind label %bb.p, !noalias !10115

common.resume:                                    ; preds = %bb.dl, %bb.dm, %bb.da, %bb.db, %bb.cu, %bb.cv, %bb.co, %bb.cp, %bb.cd, %bb.by, %bb.bz, %bb.ba, %bb.bg, %bb.bs, %bb.cm, %bb.cs, %bb.cy, %bb.de, %bb.dj, %bb.bb, %bb.ay, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.fc, %bb.da ], [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.split-lp437, %bb.ay ], [ %i.el, %bb.by ], [ %i.ep, %bb.cd ], [ %i.et, %bb.co ], [ %i.ey, %bb.cu ], [ %lpad.thr_comm, %bb.ba ], [ %i.fp, %bb.dl ], [ %i.dt, %bb.bb ], [ %.pn349, %bb.bg ], [ %.pn344, %bb.bs ], [ %i.es, %bb.cm ], [ %i.ew, %bb.cs ], [ %i.fb, %bb.cy ], [ %.pn, %bb.de ], [ %i.fo, %bb.dj ], [ %i.fp, %bb.dm ], [ %i.el, %bb.bz ], [ %i.et, %bb.cp ], [ %i.ey, %bb.cv ], [ %i.fc, %bb.db ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #51
          to label %common.resume unwind label %bb.q, !noalias !10115

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !10115
  unreachable

"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hca8a0f6ad10a12b6E.exit": ; preds = %bb.o
  %.sroa.4.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx117, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10115
  store i64 -9223372036854775792, ptr %i.aa, align 8
  br label %bb.dp

bb.r:                                             ; preds = %bb.b
  %.sroa.4123.sroa.4.0..sroa.4123.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4123.sroa.4.0..sroa.4123.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  store i64 -9223372036854775795, ptr %i.aa, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4123.0..sroa_idx, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sroa.2731.0.copyload, ptr %.sroa.5124.0..sroa_idx, align 8
  br label %bb.dp

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.6.0.copyload, ptr %i.al, align 8
  %.sroa.27.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.bu = load ptr, ptr %.sroa.27.8..sroa_idx25, align 8, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  invoke fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw)
          to label %bb.bu unwind label %bb.bt

switch.lookup491:                                 ; preds = %bb.b
  %.sroa.6.8.extract.trunc6 = trunc i64 %.sroa.6.0.copyload to i32
  %.sroa.6.sroa.25.0.extract.shift = lshr i64 %.sroa.6.0.copyload, 32
  %.sroa.6.sroa.25.0.extract.trunc = trunc nuw i64 %.sroa.6.sroa.25.0.extract.shift to i32
  %switch = icmp ult i64 %.sroa.6.0.copyload, 25769803776
  %.sroa.0136.0 = select i1 %switch, i32 %.sroa.6.sroa.25.0.extract.trunc, i32 0 ; 2 uses
  %switch.cast = zext i32 %.sroa.0136.0 to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3
  %switch.downshift = lshr i48 17230332160, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %switch.cast492 = zext i32 %.sroa.0136.0 to i48
  %switch.shiftamt493 = shl nuw nsw i48 %switch.cast492, 3
  %switch.downshift494 = lshr i48 2199023255553, %switch.shiftamt493
  %switch.masked495 = trunc i48 %switch.downshift494 to i8
  store i64 -9223372036854775797, ptr %i.aa, align 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.sroa.6.8.extract.trunc6, ptr %.sroa.4131.0..sroa_idx, align 8
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 %switch.masked495, ptr %.sroa.5132.0..sroa_idx, align 4
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  store i8 %switch.masked, ptr %.sroa.6133.0..sroa_idx, align 1
  br label %bb.dp

bb.t:                                             ; preds = %bb.b
  %.sroa.6.8.extract.trunc8 = trunc i64 %.sroa.6.0.copyload to i32
  store i64 -9223372036854775806, ptr %i.aa, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.sroa.6.8.extract.trunc8, ptr %.sroa.4138.0..sroa_idx, align 8
  br label %bb.dp

bb.u:                                             ; preds = %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10127
  %i.bx = tail call noundef dereferenceable_or_null(2) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10127 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 2) #50, !noalias !10133
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %bb.u
  %.sroa.6.8.extract.trunc10 = trunc i64 %.sroa.6.0.copyload to i32
  store i16 15676, ptr %i.bx, align 1, !noalias !10134
  store i64 2, ptr %i.aa, align 8
  %.sroa.0146.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.bx, ptr %.sroa.0146.sroa.4.0..sroa_idx, align 8
  %.sroa.0146.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %.sroa.0146.sroa.5.0..sroa_idx, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -9223372036854775808, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %.sroa.6.8.extract.trunc10, ptr %.sroa.5148.0..sroa_idx, align 8
  br label %bb.dp

bb.w:                                             ; preds = %bb.b
  %.sroa.6.8.extract.trunc12 = trunc i64 %.sroa.6.0.copyload to i32
  switch i32 %.sroa.6.8.extract.trunc12, label %.thread461 [
    i32 0, label %bb.cc
    i32 8, label %bb.cl
    i32 2, label %bb.cf
    i32 3, label %bb.cg
    i32 4, label %bb.ch
    i32 5, label %bb.ci
    i32 6, label %bb.cj
    i32 7, label %bb.ck
  ]

.thread478:                                       ; preds = %bb.b
  %.sroa.6.8.extract.trunc14 = trunc i64 %.sroa.6.0.copyload to i32
  %i.bz = icmp ult i32 %.sroa.6.8.extract.trunc14, 6
  %i.ca = trunc i64 %.sroa.6.0.copyload to i48
  %switch.cast497 = shl i48 %i.ca, 3
  %switch.shiftamt498 = and i48 %switch.cast497, 34359738360
  %switch.downshift499 = lshr i48 4428161679872, %switch.shiftamt498
  %switch.masked500 = trunc i48 %switch.downshift499 to i8
  %.sroa.0163.0 = select i1 %i.bz, i8 %switch.masked500, i8 0
  store i64 -9223372036854775794, ptr %i.aa, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 %.sroa.0163.0, ptr %.sroa.4161.0..sroa_idx, align 8
  br label %bb.dp

bb.x:                                             ; preds = %bb.b
  store i64 %.sroa.6.0.copyload, ptr %i.am, align 8
  %.sroa.27.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4120)
  call void @_ZN4anki6search7service11search_node17id_list_to_string17h02a6216d2e5445c5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4120, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.am)
  store i64 -9223372036854775792, ptr %i.aa, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4120, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4120)
  br label %bb.dp

bb.y:                                             ; preds = %bb.b
  %.sroa.6.8.extract.trunc16 = trunc i64 %.sroa.6.0.copyload to i32
  store i64 -9223372036854775805, ptr %i.aa, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.sroa.6.8.extract.trunc16, ptr %.sroa.4158.0..sroa_idx, align 8
  br label %bb.dp

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %.sroa.6.0.copyload, ptr %i.aq, align 8
  %.sroa.27.8..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.cb = load ptr, ptr %.sroa.27.8..sroa_idx27, align 8, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  invoke fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cb, i64 noundef %i.cd)
          to label %bb.cn unwind label %bb.cm

bb.aa:                                            ; preds = %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10135
  %i.cf = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10135 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ab, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit366"

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 1) #50, !noalias !10141
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit366": ; preds = %bb.aa
  %.sroa.6.8.extract.trunc18 = trunc i64 %.sroa.6.0.copyload to i32
  store i8 61, ptr %i.cf, align 1, !noalias !10142
  store i64 1, ptr %i.aa, align 8
  %.sroa.0153.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.cf, ptr %.sroa.0153.sroa.4.0..sroa_idx, align 8
  %.sroa.0153.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.0153.sroa.5.0..sroa_idx, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -9223372036854775808, ptr %.sroa.4154.0..sroa_idx, align 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %.sroa.6.8.extract.trunc18, ptr %.sroa.5155.0..sroa_idx, align 8
  br label %bb.dp

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 %.sroa.6.0.copyload, ptr %i.as, align 8
  %.sroa.27.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx28, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ch = load ptr, ptr %.sroa.27.8..sroa_idx28, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  invoke fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.ct unwind label %bb.cs

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.sroa.6.0.copyload, ptr %i.ao, align 8
  %.sroa.27.8..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.cl = load ptr, ptr %.sroa.27.8..sroa_idx29, align 8, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke fastcc void @_ZN4anki4text37escape_anki_wildcards_for_search_node17h449ee01fb6aa3e82E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.co, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cl, i64 noundef %i.cn)
          to label %bb.cz unwind label %bb.cy

bb.ae:                                            ; preds = %bb.b
  %.sroa.6.8.extract.trunc20 = trunc i64 %.sroa.6.0.copyload to i32
  store i64 -9223372036854775800, ptr %i.aa, align 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.sroa.6.8.extract.trunc20, ptr %.sroa.4141.0..sroa_idx, align 8
  br label %bb.dp

bb.af:                                            ; preds = %bb.b
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.at, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.27.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  %.sroa.2731.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 %.sroa.2731.0.copyload, ptr %.sroa.2731.0..sroa_idx32, align 8
  %.sroa.28.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cp = inttoptr i64 %.sroa.6.0.copyload to ptr
  %i.cq = load i64, ptr %.sroa.27.0..sroa_idx22, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10143
  %i.cr = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, i64 32) acquire, align 8, !noalias !10143
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i, label %bb.ag, !prof !230

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10143
  store ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, ptr %i.h, align 8, !noalias !10143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10143
  store ptr %i.h, ptr %i.g, align 8, !noalias !10143
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc unwind label %bb.df

.noexc:                                           ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10143
  br label %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i

_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i: ; preds = %.noexc, %bb.af
  invoke fastcc void @_ZN5regex5regex6string5Regex8replacen17hffe933b165317b06E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cp, i64 noundef %i.cq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @260, i64 noundef 3)
          to label %.noexc367 unwind label %bb.df

.noexc367:                                        ; preds = %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i
  invoke void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.dg unwind label %bb.df

bb.ah:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.6.0.copyload, ptr %i.n, align 8
  %.sroa.27.8..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.8..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx, i64 16, i1 false)
  %i.ct = load ptr, ptr %.sroa.27.8..sroa_idx30, align 8, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10147
  %i.cw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, i64 32) acquire, align 8, !noalias !10147
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i369, label %bb.ai, !prof !230

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10147
  store ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, ptr %i.e, align 8, !noalias !10147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10147
  store ptr %i.e, ptr %i.d, align 8, !noalias !10147
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc370 unwind label %bb.dj

.noexc370:                                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10147
  br label %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i369

_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i369: ; preds = %.noexc370, %bb.ah
  invoke fastcc void @_ZN5regex5regex6string5Regex8replacen17hffe933b165317b06E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_ZN4anki4text21escape_anki_wildcards2RE17hfe92e15efb2af169E, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ct, i64 noundef %i.cv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @260, i64 noundef 3)
          to label %.noexc371 unwind label %bb.dj

.noexc371:                                        ; preds = %_ZN3std4sync4once4Once15call_once_force17h3758e1afdba14683E.exit.i369
  invoke void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.dk unwind label %bb.dj

bb.aj:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.cy = and i64 %.sroa.2731.0.copyload, 4294967295
  %.sroa.0219.0 = icmp eq i64 %i.cy, 1
  %storemerge = select i1 %.sroa.0219.0, i64 -9223372036854775781, i64 -9223372036854775782
  store i64 %storemerge, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cz = load ptr, ptr %.sroa.27.8..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw [56 x i8], ptr %i.cz, i64 %i.az
  store ptr %i.cz, ptr %i.x, align 8
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cz, ptr %.sroa.4227.0..sroa_idx, align 8
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5228.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.da, ptr %.sroa.6229.0..sroa_idx, align 8
  invoke void @_ZN4core4iter8adapters11try_process17h5321f4d73853a27aE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.au unwind label %bb.ay

bb.ak:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @533, ptr %i.ad, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.de, align 8
  invoke fastcc void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @532, i64 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.al unwind label %bb.ba

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535)
          to label %bb.am unwind label %bb.ba

bb.am:                                            ; preds = %bb.al
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4204.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ax

bb.an:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ay, align 8
  %i.df = icmp ne i64 %.sroa.6.0.copyload, 0
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = load ptr, ptr %.sroa.27.8..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0289.0.copyload = load i64, ptr %i.dg, align 8 ; 2 uses
  %.not353 = icmp eq i64 %.sroa.0289.0.copyload, -9223372036854775786
  br i1 %.not353, label %bb.ap, label %bb.ao, !prof !190

bb.ao:                                            ; preds = %bb.an
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %.sroa.0289.0.copyload, ptr %i.ab, align 8
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6214.0..sroa_idx215, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4290.0..sroa_idx, i64 48, i1 false)
  invoke void @"_ZN4anki6search7service11search_node117_$LT$impl$u20$core..convert..TryFrom$LT$anki_proto..search..SearchNode$GT$$u20$for$u20$anki..search..parser..Node$GT$8try_from17h2c605e8e295914b9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.ab)
          to label %bb.ar unwind label %bb.ba

bb.ap:                                            ; preds = %bb.an
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #50
          to label %bb.aq unwind label %bb.ba

bb.aq:                                            ; preds = %bb.bn, %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.dh = load i64, ptr %i.ac, align 8, !range !3480, !noundef !4 ; 2 uses
  %.not354 = icmp eq i64 %i.dh, -9223372036854775773
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7208, ptr noundef nonnull align 8 dereferenceable(72) %i.di, i64 72, i1 false)
  br i1 %.not354, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.sroa.3299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3299.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5296.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.2298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2298.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7208, i64 72, i1 false)
  store i64 %i.dh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7208)
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7208, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7208)
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..search..SearchNode$GT$$GT$17h9be6dd1a32425fd3E"(ptr noalias noundef align 8 dereferenceable(24) %i.ag)
  br label %bb.av

bb.au:                                            ; preds = %bb.aj
  %i.dj = load i64, ptr %i.y, align 8, !range !3480, !noundef !4 ; 2 uses
  %.not356 = icmp eq i64 %i.dj, -9223372036854775773
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0300.0.copyload = load i64, ptr %i.dk, align 8 ; 3 uses
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4301.0.copyload = load ptr, ptr %.sroa.4301.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5302.0.copyload = load i64, ptr %.sroa.5302.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not356, label %.critedge363, label %.critedge

.critedge:                                        ; preds = %bb.au
  %.sroa.7312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.5317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5317.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7312.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 %i.dj, ptr %0, align 8
  %.sroa.2314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0300.0.copyload, ptr %.sroa.2314.0..sroa_idx, align 8
  %.sroa.3315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4301.0.copyload, ptr %.sroa.3315.0..sroa_idx, align 8
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5302.0.copyload, ptr %.sroa.4316.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef align 8 dereferenceable(72) %i.z)
end_hunk_0
