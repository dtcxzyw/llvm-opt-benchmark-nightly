Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.5?download=true
inline.NumInlined: 119
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE10init_frontCseHTIzroA4w0_6object:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 5512
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !60

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 5512
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 5512
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 5512
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 5512
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 5512
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 5512
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 5512
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 5512
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache18DyldRelocationAuthNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !65, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7), !noalias !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 3, ptr noundef nonnull readonly %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  store ptr %i.d, ptr %i.a, align 8, !noalias !66
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !66
  store ptr @6, ptr %i.b, align 8, !noalias !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.g, align 8, !noalias !66
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 8, ptr noundef nonnull readonly %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs22_NtCseHTIzroA4w0_6object5machoNtB6_10PtrauthKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !68, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs22_NtCseHTIzroA4w0_6object5machoNtB6_10PtrauthKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 2)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E3newB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1j_12LittleEndianEENCNvMs5_NtNtNtB1l_4read2pe6exportNtB2l_11ExportTable9name_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1j_12LittleEndianNtNtNtNtB1l_4read2pe6export18ExportAddressIndexEENCNvMs5_B2d_NtB2d_11ExportTable9name_iters_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB5_14DyldRelocationNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @6, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @6, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.i, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache18DyldRelocationAuthENtNtB7_3fmt5Debug3fmtBS_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.c = load i8, ptr %i.b, align 1, !range !69, !noundef !4
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !74, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !74
  %i.e = load ptr, ptr %0, align 8, !alias.scope !75, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !75, !nonnull !4, !noundef !4
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.i, ptr %0, align 8, !alias.scope !75
  %1 = load i8, ptr %i.e, align 1, !noundef !4
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object.exit.thread

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %.not5 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  %.sroa.3.0 = phi i8 [ %1, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %i.j = insertvalue { i1, i8 } poison, i1 %.not5, 0
  %i.k = insertvalue { i1, i8 } %i.j, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB5_18DyldRelocationAuthNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 3, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @6, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 8, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBT_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBT_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #15

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseHTIzroA4w0_6object(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1j_12LittleEndianEENCNvMs5_NtNtNtB1l_4read2pe6exportNtB2l_11ExportTable9name_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1j_12LittleEndianNtNtNtNtB1l_4read2pe6export18ExportAddressIndexEENCNvMs5_B2d_NtB2d_11ExportTable9name_iters_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCskKLDkoKarTP_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold }
attributes #21 = { noinline noreturn }
attributes #22 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = distinct !{!6, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_"}
!7 = distinct !{!7, !6, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_: argument 0"}
!8 = distinct !{!8, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!9 = distinct !{!9, !8, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!10 = !{!9, !7}
!11 = distinct !{!11, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_"}
!12 = distinct !{!12, !11, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_: argument 0"}
!13 = distinct !{!13, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!14 = distinct !{!14, !13, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!15 = distinct !{!15, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyyNCNvMB1i_INtB1i_9SymbolMapB1g_E3new0E0EB1m_"}
!16 = distinct !{!16, !15, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyyNCNvMB1i_INtB1i_9SymbolMapB1g_E3new0E0EB1m_: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0EB1a_"}
!18 = distinct !{!18, !17, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0EB1a_: argument 1"}
!19 = distinct !{!19, !17, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0EB1a_: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_11sort_by_keyyNCNvMB19_INtB19_9SymbolMapB17_E3new0E0EB1d_"}
!21 = distinct !{!21, !20, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_11sort_by_keyyNCNvMB19_INtB19_9SymbolMapB17_E3new0E0EB1d_: argument 1"}
!22 = distinct !{!22, !20, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_11sort_by_keyyNCNvMB19_INtB19_9SymbolMapB17_E3new0E0EB1d_: argument 0"}
!23 = distinct !{!23, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_"}
!24 = distinct !{!24, !23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEEB1z_: argument 0"}
!25 = distinct !{!25, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!26 = distinct !{!26, !25, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!27 = !{!14, !12}
!28 = !{!16}
!29 = !{!19, !18}
!30 = !{!22, !21}
!31 = !{!"branch_weights", i32 4001, i32 4000000}
!32 = !{!26, !24}
!33 = distinct !{!33, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvMB15_INtB15_9SymbolMapB13_E3new0E0EB19_"}
!34 = distinct !{!34, !33, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvMB15_INtB15_9SymbolMapB13_E3new0E0EB19_: argument 0"}
end_hunk_0
