Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_sentry-9300998c0d3c1440.foundations_sentry.b52da1572b7dc9f0-cgu.4?download=true
inline.NumInlined: 97
inline.NumDeleted: 65
begin_hunk_0_@_RINvXs_NtNtCskfQLOxWbF12_10prometools5serde3topNtB5_16StructSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCsiuGV5U9TODe_12sentry_types8protocol2v75LevelECsfypgzpEsCtg_18foundations_sentry:bb.a
bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !dbg !677
  br label %bb.e, !dbg !678

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2), !dbg !679 ; 2 uses
  %.not16 = icmp eq ptr %i.e, null, !dbg !680
  br i1 %.not16, label %bb.e, label %bb.h, !dbg !681

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !682 ; 2 uses
  %.not17 = icmp eq ptr %i.f, null, !dbg !683
  br i1 %.not17, label %bb.f, label %bb.h, !dbg !684

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2), !dbg !685 ; 2 uses
  %.not18 = icmp eq ptr %i.g, null, !dbg !686
  br i1 %.not18, label %bb.g, label %bb.h, !dbg !687

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %0, align 8, !dbg !688, !nonnull !38, !noundef !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !688
  %i.j = load ptr, ptr %i.i, align 8, !dbg !688, !nonnull !38, !align !68, !noundef !38
  %i.k = tail call noundef ptr @_RINvXs3i_NtNtCsiuGV5U9TODe_12sentry_types8protocol2v7NtB7_5LevelNtNtCs5FjQZcNRzHx_10serde_core3ser9Serialize9serializeNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j), !dbg !689
  br label %bb.h, !dbg !690

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ %i.k, %bb.g ], [ %i.a, %bb.a ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], !dbg !691
  ret ptr %.sroa.0.0, !dbg !690
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB14_11nonstandard28NonstandardUnsuffixedCounterNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !692 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !809 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !dbg !810 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786), !dbg !811
  call void @llvm.experimental.noalias.scope.decl(metadata !787), !dbg !812
  %i.d = lshr i64 %i.c, 57, !dbg !813
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !814
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !815
  %i.g = load i64, ptr %i.f, align 8, !dbg !815, !alias.scope !788, !noundef !38 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !788, !nonnull !38, !noundef !38 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !816

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.d ], !dbg !817
  %.pn.i = phi i64 [ %i.c, %bb.a ], [ %i.ab, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.g, !dbg !817 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i, !dbg !818
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.k, align 1, !dbg !819, !noalias !789 ; 2 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.j, !dbg !820
  %i.m = bitcast <16 x i1> %i.l to i16, !dbg !821 ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.m, 0, !dbg !822
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !823

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.z, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true), !dbg !824
  %i.o = zext nneg i16 %i.n to i64, !dbg !825
  %i.p = add i64 %.sroa.01.0.i.i, %i.o, !dbg !826
  %i.q = and i64 %i.p, %i.g, !dbg !826
  %i.r = sub nsw i64 0, %i.q, !dbg !827
  %i.s = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.r, !dbg !828 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16, !dbg !829
  %.val2.i.i = load i8, ptr %i.t, align 1, !dbg !830, !range !792, !noalias !793, !noundef !38
  %i.u = icmp eq i8 %.val2.i.i, %2, !dbg !831
  br i1 %i.u, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB1E_.exit, label %bb.c, !dbg !832, !prof !82

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1), !dbg !833
  %i.w = bitcast <16 x i1> %i.v to i16, !dbg !834
  %i.x = icmp eq i16 %i.w, 0, !dbg !835
  br i1 %i.x, label %bb.d, label %bb.e, !dbg !835, !prof !85

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add i16 %.sroa.06.0.i31.i, -1, !dbg !836
  %i.z = and i16 %i.y, %.sroa.06.0.i31.i, !dbg !837 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.z, 0, !dbg !822
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !823

bb.d:                                             ; preds = %._crit_edge.i
  %i.aa = add i64 %.sroa.9.0.i.i, 16, !dbg !838   ; 2 uses
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa, !dbg !839
  br label %bb.b, !dbg !816

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB1E_.exit: ; preds = %.lr.ph.i
  store ptr %i.s, ptr %0, align 8, !dbg !840
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !840
  store ptr %1, ptr %i.ac, align 8, !dbg !840
  br label %bb.f, !dbg !841

bb.e:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE7reserveNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !842
  store ptr %1, ptr %0, align 8, !dbg !843
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !843
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !843
  br label %bb.f, !dbg !841

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB1E_.exit
  %.sink = phi i8 [ %2, %bb.e ], [ -1, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB1E_.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !844
  store i8 %.sink, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBS_11nonstandard28NonstandardUnsuffixedCounterNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 !dbg !846 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !856, !nonnull !38, !noundef !38 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !857
  %i.c = load i64, ptr %i.b, align 8, !dbg !857, !noundef !38
  %i.d = add i64 %i.c, 1, !dbg !857
  tail call void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBZ_11nonstandard28NonstandardUnsuffixedCounterEE3newB1I_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d), !dbg !858
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !859
  %i.f = load i64, ptr %i.e, align 8, !dbg !859, !noundef !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !860
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsfypgzpEsCtg_18foundations_sentry8settingsNtB2_14SentrySettingsNtNtCsbaWXNhtWAp9_11foundations8settings8Settings8add_docs(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !862 {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1250, !noalias !1146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1251, !noalias !1146
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !1251, !noalias !1146
  %i.h = load i64, ptr %i.a, align 8, !dbg !1251, !range !1162, !noalias !1146, !noundef !38
  %i.i = trunc nuw i64 %i.h to i1, !dbg !1252
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1253
  %i.k = load i64, ptr %i.j, align 8, !dbg !1253, !range !1163, !noalias !1146, !noundef !38 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1253 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i, !dbg !1252, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !1254, !noalias !1146
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #15, !dbg !1255, !noalias !1146
  unreachable, !dbg !1255

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !1256, !noalias !1146, !nonnull !38, !noundef !38 ; 2 uses
  %i.o = icmp samesign ule i64 %2, %i.k, !dbg !1257
  tail call void @llvm.assume(i1 %i.o), !dbg !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1259, !noalias !1146
  store i64 %i.k, ptr %i.c, align 8, !dbg !1260, !noalias !1146
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1260
  store ptr %i.n, ptr %i.p, align 8, !dbg !1260, !noalias !1146
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1260 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2, !dbg !1261
  %i.s = icmp eq i64 %i.k, 0, !dbg !1262
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.i, !dbg !1262

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1, !dbg !1263  ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r, !dbg !1264
  br i1 %i.u, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, label %bb.c, !dbg !1265

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1266, !noalias !1146
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !1267, !noalias !1175

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !1268
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24, !dbg !1269
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.022.i, !dbg !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1271, !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1272, !noalias !1146
  %i.y = icmp eq i64 %i.t, 0, !dbg !1262
  br i1 %i.y, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.i, !dbg !1262

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !dbg !1273, !noalias !1175
  unreachable, !dbg !1273

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !dbg !1274, !noalias !1146
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %common.resume unwind label %bb.e, !dbg !1275, !noalias !1175

common.resume:                                    ; preds = %.body.thread, %bb.v, %.loopexit.split-lp.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.f ], [ %eh.lpad-body12, %.body.thread ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.ck, %bb.v ]
  resume { ptr, i32 } %common.resume.op, !dbg !1276

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfypgzpEsCtg_18foundations_sentry.exit.i
  store i64 %2, ptr %i.q, align 8, !dbg !1277, !noalias !1146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1278, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1275, !noalias !1146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1280
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 21, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %.body.thread16, !dbg !1280

.body.thread16:                                   ; preds = %bb.h, %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !1281

bb.g:                                             ; preds = %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %i.aa = load i64, ptr %i.d, align 8, !dbg !1280, !range !1162, !noundef !38
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !1282
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1283
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !1283, !range !1163, !noundef !38 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1283 ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i, !dbg !1282, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.ae, align 8, !dbg !1284
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #15
          to label %bb.aa unwind label %.body.thread16, !dbg !1285

bb.i:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ae, align 8, !dbg !1286, !nonnull !38, !noundef !38 ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ad, 20, !dbg !1287
  tail call void @llvm.assume(i1 %i.ah), !dbg !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ag, ptr noundef nonnull align 1 dereferenceable(21) @7, i64 21, i1 false), !dbg !1290
  store i64 %i.ad, ptr %i.f, align 8, !dbg !1291
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1291
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1291
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1291
  store i64 21, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !1291
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !1292 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !1292, !alias.scope !1221, !noundef !38 ; 3 uses
  %i.ak = load i64, ptr %i.g, align 8, !dbg !1293, !range !1222, !alias.scope !1221, !noundef !38
  %i.al = icmp eq i64 %i.aj, %i.ak, !dbg !1294
  br i1 %i.al, label %bb.j, label %bb.m, !dbg !1294

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaL1QbXo9JQH_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.m unwind label %bb.k, !dbg !1295, !noalias !1223

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #14
          to label %.body.thread unwind label %bb.l, !dbg !1296

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !dbg !1297
  unreachable, !dbg !1297

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1298
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !1298, !alias.scope !1221, !nonnull !38, !noundef !38
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aj, !dbg !1299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1300
  %i.ar = add i64 %i.aj, 1, !dbg !1301
  store i64 %i.ar, ptr %i.ai, align 8, !dbg !1301, !alias.scope !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !1279
  call void @llvm.experimental.noalias.scope.decl(metadata !1224), !dbg !1303
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !1304 ; 2 uses
  %i.at = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1K_6string6StringEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.n unwind label %.loopexit.split-lp.i, !dbg !1305 ; 2 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringERSReEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !1306

.noexc.i:                                         ; preds = %bb.n
  %.val.i.i = load ptr, ptr %3, align 8, !dbg !1307, !alias.scope !1232, !nonnull !38, !noundef !38 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !1307 ; 2 uses
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !1307, !alias.scope !1232, !noundef !38 ; 3 uses
  %i.av = lshr i64 %i.at, 57, !dbg !1308
  %i.aw = trunc nuw nsw i64 %i.av to i8, !dbg !1309 ; 3 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o, !dbg !1310

bb.o:                                             ; preds = %bb.r, %.noexc.i
  %.pn.i.i.i = phi i64 [ %i.at, %.noexc.i ], [ %i.by, %bb.r ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.4.124.i.i.i, %bb.r ], !dbg !1311
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc.i ], [ %.sroa.04.126.i.i.i, %bb.r ], !dbg !1311
  %i.az = phi i64 [ 0, %.noexc.i ], [ %i.bx, %bb.r ]
  %.sroa.0.021.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i, !dbg !1312 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.021.i.i.i, !dbg !1313
  %.sroa.0.0.copyload.i31.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !dbg !1314, !noalias !1233 ; 3 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, %i.ay, !dbg !1315
  %i.bc = bitcast <16 x i1> %i.bb to i16, !dbg !1316 ; 2 uses
  %.not32.i.i.i = icmp eq i16 %i.bc, 0, !dbg !1317
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !1318

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %.sroa.01.033.i.i.i = phi i16 [ %i.bn, %bb.p ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i.i, i1 true), !dbg !1319
  %i.be = zext nneg i16 %i.bd to i64, !dbg !1320
  %i.bf = add i64 %.sroa.0.021.i.i.i, %i.be, !dbg !1321
  %i.bg = and i64 %i.bf, %.val5.i.i, !dbg !1321
  %i.bh = load ptr, ptr %3, align 8, !dbg !1322, !alias.scope !1232, !noalias !1235, !nonnull !38, !noundef !38
  %i.bi = sub nsw i64 0, %i.bg, !dbg !1323        ; 2 uses
  %i.bj = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.bi, !dbg !1324
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -40, !dbg !1325
  %i.bl = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBv_6string6StringEINtB2_10EquivalentBq_E10equivalentCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !dbg !1326

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.bl, label %bb.u, label %bb.p, !dbg !1327, !prof !82

._crit_edge.i.i.i:                                ; preds = %bb.p, %bb.o
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1, !dbg !1328
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.q, !dbg !1329, !prof !85

bb.p:                                             ; preds = %.noexc7.i
  %i.bm = add i16 %.sroa.01.033.i.i.i, -1, !dbg !1330
  %i.bn = and i16 %i.bm, %.sroa.01.033.i.i.i, !dbg !1331 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bn, 0, !dbg !1317
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !1318

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, zeroinitializer, !dbg !1332
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !1332 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !1333
  br i1 %.not.i.i.i.i, label %bb.r, label %.thread28.i.i.i, !dbg !1334, !prof !85

.thread28.i.i.i:                                  ; preds = %bb.q
  %i.bq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bp, i1 true), !dbg !1335
  %i.br = zext nneg i16 %i.bq to i64, !dbg !1336
  %i.bs = add i64 %.sroa.0.021.i.i.i, %i.br, !dbg !1337
  %i.bt = and i64 %i.bs, %.val5.i.i, !dbg !1337
  br label %.thread.i.i.i, !dbg !1338

.thread.i.i.i:                                    ; preds = %.thread28.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.125.i.i.i = phi i64 [ %i.bt, %.thread28.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, splat (i8 -1), !dbg !1339
  %i.bv = bitcast <16 x i1> %i.bu to i16, !dbg !1340
  %i.bw = icmp eq i16 %i.bv, 0, !dbg !1341
  br i1 %i.bw, label %bb.r, label %bb.s, !dbg !1341, !prof !85

bb.r:                                             ; preds = %.thread.i.i.i, %bb.q
  %.sroa.04.126.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.q ]
  %.sroa.4.124.i.i.i = phi i64 [ %.sroa.4.125.i.i.i, %.thread.i.i.i ], [ undef, %bb.q ]
  %i.bx = add i64 %i.az, 16, !dbg !1342           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.021.i.i.i, !dbg !1343
  br label %bb.o, !dbg !1310

bb.s:                                             ; preds = %.thread.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.125.i.i.i, !dbg !1344
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !1345, !noundef !38
  %i.cb = icmp sgt i8 %i.ca, -1, !dbg !1346
  br i1 %i.cb, label %bb.t, label %bb.x, !dbg !1347, !prof !85

bb.t:                                             ; preds = %bb.s
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !dbg !1348
  %i.cc = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer, !dbg !1349
  %i.cd = bitcast <16 x i1> %i.cc to i16, !dbg !1349 ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.cd, 0, !dbg !1350
  %i.ce = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cd, i1 true), !dbg !1351
  %i.cf = zext nneg i16 %i.ce to i64, !dbg !1351
  call void @llvm.assume(i1 %.not.i23.i.i.i), !dbg !1352
  br label %bb.x, !dbg !1353

bb.u:                                             ; preds = %.noexc7.i
  %i.cg = load ptr, ptr %3, align 8, !dbg !1354, !alias.scope !1232, !nonnull !38
  %i.ch = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.bi, !dbg !1354 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16, !dbg !1355
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -8, !dbg !1355
  store ptr @9, ptr %i.ci, align 8, !dbg !1356, !captures !1240
  store i64 1, ptr %i.cj, align 8, !dbg !1356
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry.exit.i unwind label %bb.v, !dbg !1357

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.w, !dbg !1358

bb.w:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !dbg !1357
  unreachable, !dbg !1357

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry.exit.i: ; preds = %bb.u
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !1359
  br label %bb.z, !dbg !1359

bb.x:                                             ; preds = %bb.t, %bb.s
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.cf, %bb.t ], [ %.sroa.4.125.i.i.i, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !1361, !noalias !1224
  call void @llvm.experimental.noalias.scope.decl(metadata !1241), !dbg !1362
  %i.cm = load ptr, ptr %3, align 8, !dbg !1363, !alias.scope !1242, !nonnull !38, !noundef !38 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.3.0.i.ph.i.i, !dbg !1364 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !dbg !1365, !noalias !1243, !noundef !38
  %i.cp = and i8 %i.co, 1, !dbg !1366
  %i.cq = zext nneg i8 %i.cp to i64, !dbg !1366
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !1367 ; 2 uses
  %i.cs = add i64 %.sroa.3.0.i.ph.i.i, -16, !dbg !1368
  %i.ct = load i64, ptr %i.au, align 8, !dbg !1369, !alias.scope !1242, !noundef !38
  %i.cu = and i64 %i.ct, %i.cs, !dbg !1370
  store i8 %i.aw, ptr %i.cn, align 1, !dbg !1371, !noalias !1243
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu, !dbg !1372
  %i.cw = getelementptr i8, ptr %i.cv, i64 16, !dbg !1372
  store i8 %i.aw, ptr %i.cw, align 1, !dbg !1373, !noalias !1243
  %i.cx = load <2 x i64>, ptr %i.cr, align 8, !dbg !1367, !alias.scope !1242
  %i.cy = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cq, i64 0, !dbg !1367
  %i.cz = sub <2 x i64> %i.cx, %i.cy, !dbg !1367
  store <2 x i64> %i.cz, ptr %i.cr, align 8, !dbg !1367, !alias.scope !1242
  %i.da = sub nsw i64 0, %.sroa.3.0.i.ph.i.i, !dbg !1374
  %i.db = getelementptr inbounds [40 x i8], ptr %i.cm, i64 %i.da, !dbg !1375 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -40, !dbg !1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !dbg !1377, !noalias !1241
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.db, i64 -16, !dbg !1377
  store ptr @9, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !1377, !noalias !1241
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.db, i64 -8, !dbg !1377
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !1377, !noalias !1241
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !1378
  br label %bb.z, !dbg !1379

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i.i, %bb.n, %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #14
          to label %common.resume unwind label %bb.y, !dbg !1379

bb.y:                                             ; preds = %.loopexit.split-lp.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !dbg !1380
  unreachable, !dbg !1380

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1281
  ret void, !dbg !1382

bb.aa:                                            ; preds = %bb.h
  unreachable

.body.thread:                                     ; preds = %bb.k, %.body.thread16
  %eh.lpad-body12 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread16 ], [ %i.am, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #14
          to label %common.resume unwind label %bb.ab, !dbg !1281

bb.ab:                                            ; preds = %.body.thread
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !dbg !1383
  unreachable, !dbg !1383
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1402, !nonnull !38, !noundef !38
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !1403 ; 3 uses
  %.not = icmp ne ptr %i.c, null, !dbg !1402      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f, !dbg !1404

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1405 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !1405, !noundef !38 ; 4 uses
  %i.e = icmp eq ptr %.val, null, !dbg !1406
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfypgzpEsCtg_18foundations_sentry.exit, label %bb.c, !dbg !1406

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1407
  %i.f = ptrtoint ptr %.val to i64, !dbg !1408    ; 2 uses
  %i.g = and i64 %i.f, 3, !dbg !1409
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i
    i64 1, label %bb.e
  ], !dbg !1410, !prof !78

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr), !dbg !1411
  %i.i = and i64 %i.f, 1095216660480, !dbg !1412
  %i.j = icmp ne i64 %i.i, 1095216660480, !dbg !1412
  tail call void @llvm.assume(i1 %i.h), !dbg !1413
  tail call void @llvm.assume(i1 %i.j), !dbg !1413
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i, !dbg !1414

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1, !dbg !1415 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ], !dbg !1416
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1417 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !dbg !1417, !alias.scope !1401
  store i8 3, ptr %i.a, align 8, !dbg !1418, !alias.scope !1401
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i unwind label %bb.g, !dbg !1419

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1420
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1406

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfypgzpEsCtg_18foundations_sentry.exit
  ret i1 %.not, !dbg !1421

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8, !dbg !1405
  resume { ptr, i32 } %i.m, !dbg !1422

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfypgzpEsCtg_18foundations_sentry.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8, !dbg !1405
  br label %bb.f, !dbg !1423
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsfypgzpEsCtg_18foundations_sentry8settingss_1__NtB7_14SentrySettingsNtNtCs5FjQZcNRzHx_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1i_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !1424 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16), !dbg !1426
  ret i1 %i.a, !dbg !1427
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsfypgzpEsCtg_18foundations_sentry8settingss_1__NtBa_14SentrySettingsNtNtCs5FjQZcNRzHx_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1l_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !1428 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 21), !dbg !1430
  ret i1 %i.a, !dbg !1431
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1n_CscuJkFUZt1a2_4slogTINtB6_8SingleKVNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEuENtB6_2KV9serializeCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %3) unnamed_addr #1 !dbg !1432 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1445
  %i.b = load ptr, ptr %0, align 8, !dbg !1446, !alias.scope !1443, !nonnull !38, !noundef !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1446
  %i.d = load i64, ptr %i.c, align 8, !dbg !1446, !alias.scope !1443, !noundef !38
  %i.e = tail call { i64, ptr } @_RNvXsR_CscuJkFUZt1a2_4slogNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsNtB5_5Value9serialize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %3), !dbg !1447 ; 3 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0, !dbg !1448
  %.not = icmp eq i64 %i.f, -1, !dbg !1449
  %i.g = extractvalue { i64, ptr } %i.e, 1
  %spec.select = select i1 %.not, ptr undef, ptr %i.g, !dbg !1450
  %i.h = insertvalue { i64, ptr } %i.e, ptr %spec.select, 1, !dbg !1451
  ret { i64, ptr } %i.h, !dbg !1451
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBP_11nonstandard28NonstandardUnsuffixedCounterENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1y_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #1 !dbg !1452 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1466 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1466, !noundef !38
  %i.c = icmp eq i64 %i.b, 0, !dbg !1466
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !1466

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB10_11nonstandard28NonstandardUnsuffixedCounterEE9next_implKb0_EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !1467 ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !dbg !1468, !noundef !38
  %i.f = add i64 %i.e, -1, !dbg !1468
  store i64 %i.f, ptr %i.a, align 8, !dbg !1468
  %.not = icmp eq ptr %i.d, null, !dbg !1469
  br i1 %.not, label %bb.d, label %bb.c, !dbg !1470

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16, !dbg !1471
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8, !dbg !1472
  br label %bb.d, !dbg !1473

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ], !dbg !1474
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], !dbg !1474
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !1475
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !1475
  ret { ptr, ptr } %i.j, !dbg !1475
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1476 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1527
  store i32 0, ptr %i.b, align 4, !dbg !1527
  %i.c = icmp samesign ult i32 %1, 128, !dbg !1528
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1528

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048, !dbg !1529
  %i.e = trunc i32 %1 to i8, !dbg !1530
  %i.f = and i8 %i.e, 63, !dbg !1530
  %i.g = or disjoint i8 %i.f, -128, !dbg !1530    ; 3 uses
  %i.h = lshr i32 %1, 6, !dbg !1531
  %i.i = trunc i32 %i.h to i8, !dbg !1532         ; 2 uses
  %i.j = and i8 %i.i, 63, !dbg !1532
  %i.k = or disjoint i8 %i.j, -128, !dbg !1532    ; 2 uses
  %i.l = lshr i32 %1, 12, !dbg !1533
  %i.m = trunc i32 %i.l to i8, !dbg !1534         ; 2 uses
  %i.n = and i8 %i.m, 63, !dbg !1534
  %i.o = or disjoint i8 %i.n, -128, !dbg !1534
  %i.p = lshr i32 %1, 18, !dbg !1535
  %i.q = trunc nuw nsw i32 %i.p to i8, !dbg !1536
  %i.r = or disjoint i8 %i.q, -16, !dbg !1536
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !1537

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8, !dbg !1538
  store i8 %i.s, ptr %i.b, align 4, !dbg !1538, !alias.scope !1521
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, !dbg !1539

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64, !dbg !1540
  store i8 %i.t, ptr %i.b, align 4, !dbg !1540, !alias.scope !1521
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !1541
  store i8 %i.g, ptr %i.u, align 1, !dbg !1542, !alias.scope !1521
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, !dbg !1543

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536, !dbg !1529
  br i1 %i.v, label %bb.f, label %bb.g, !dbg !1544

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32, !dbg !1545
  store i8 %i.w, ptr %i.b, align 4, !dbg !1545, !alias.scope !1521
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !1546
  store i8 %i.k, ptr %i.x, align 1, !dbg !1547, !alias.scope !1521
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !1548
  store i8 %i.g, ptr %i.y, align 2, !dbg !1549, !alias.scope !1521
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, !dbg !1543
end_hunk_0
