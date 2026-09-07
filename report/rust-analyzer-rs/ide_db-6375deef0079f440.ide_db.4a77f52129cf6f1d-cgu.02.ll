Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.02?download=true
inline.NumInlined: 1320
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1D_NCNvMs_B25_NtB25_8TextEdit5union0ENtB5_8Iterator3nthB27_:bb.a
  br label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator3nthB1F_.exit

bb.t:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit37.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !2145, !noalias !2147, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !alias.scope !2146, !noalias !2148, !noundef !5
  %.not.i38.not.i = icmp ugt i32 %i.af, %i.ah
  br i1 %.not.i38.not.i, label %bb.x, label %bb.w

bb.u:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit37.thread.i
  %i.ai = tail call noundef align 8 ptr @_RNvXs3_NtCscFGNKo4Sl5v_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4fuse4FuseINtNtNtB11_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEENtNtNtBZ_6traits8iterator8Iterator3nthB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val, i64 noundef %i.u)
  br label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator3nthB1F_.exit

bb.v:                                             ; preds = %bb.x, %bb.w
  %i.aj = phi ptr [ %.sroa.06.0.i, %bb.w ], [ %i.ab, %bb.x ] ; 3 uses
  %i.ak = phi ptr [ %i.x, %bb.w ], [ %.sroa.05.0.i, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %.sroa.06.0.i, %bb.w ], [ null, %bb.x ]
  %.sink2.i53.i = phi ptr [ null, %bb.w ], [ %.sroa.05.0.i, %bb.x ]
  %i.am = icmp eq i64 %i.u, 0
  br i1 %i.am, label %bb.b, label %bb.l

bb.w:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.i) ]
  store ptr %.sroa.06.0.i, ptr %i.c, align 8, !alias.scope !2134
  br label %bb.v

bb.x:                                             ; preds = %bb.t
  store ptr %.sroa.05.0.i, ptr %i.a, align 8, !alias.scope !2134
  br label %bb.v

_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator3nthB1F_.exit: ; preds = %bb.g, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i, %bb.j, %bb.k, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit37.thread.i, %bb.s, %bb.u
  %.sroa.04.0.i = phi ptr [ %.sroa.01.0.i.i, %bb.j ], [ %i.ai, %bb.u ], [ %.sroa.01.0.i.i, %bb.g ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit37.thread.i ], [ %i.ad, %bb.s ], [ %.sroa.02.0.i.i, %bb.k ], [ %.sroa.02.0.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i ]
  ret ptr %.sroa.04.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtCs6oosyzwIepl_6ide_db10ra_fixtureNtBW_17RaFixtureAnalysis12map_range_ups0_0INtB7_5FnMutTNtNtCsuAhG64lL82_9text_size5range9TextRangeEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 264
  tail call void @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB8_9token_ext8IsString12map_range_upCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtB6_5Debug3fmtCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2155
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2157
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !2158 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not3.i.i = icmp eq ptr %i.g, null
  br i1 %.not3.i.i, label %_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.h = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.g, %bb.a ]
  %i.i = phi { ptr, ptr } [ %i.l, %.lr.ph.i.i ], [ %i.f, %bb.a ]
  %i.j = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2157
  store ptr %i.h, ptr %i.b, align 8, !noalias !2157, !captures !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2157
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.j, ptr %i.a, align 8, !noalias !2157, !captures !24
  %i.k = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15), !noalias !2159 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2157
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !2159 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i

_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6oosyzwIepl_6ide_db.exit: ; preds = %.lr.ph.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2157
  %i.n = call noundef zeroext i1 @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2155
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs8Xq8PKFYOms_3hir6ModuleNtB6_5Debug3fmtCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !29, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2163
  store ptr %i.b, ptr %i.a, align 8, !noalias !2163
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2163
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2167
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !2167
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2167
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs6oosyzwIepl_6ide_db5labelNtB5_5LabelNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 18 uses
  %i.e = icmp samesign ult i32 %0, 128
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.f = icmp samesign ult i32 %0, 2048
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 4 uses
  %i.j = lshr i32 %0, 6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 2 uses
  %i.n = lshr i32 %0, 12
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = lshr i32 %0, 18
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -16
  br i1 %i.f, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i8 %i.o, -32
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !2194
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i8 [ %i.v, %bb.d ], [ %i.t, %bb.e ]  ; 6 uses
  %.sink14 = phi i8 [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  store i8 %i.x, ptr %i.d, align 4, !alias.scope !2194
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sink14, ptr %i.y, align 1, !alias.scope !2194
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !2194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  %i.aa = icmp ult i64 %.sroa.0.05.i, %2
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i, label %bb.f

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread: ; preds = %bb.b
  %i.ab = or disjoint i8 %i.k, -64                ; 2 uses
  store i8 %i.ab, ptr %i.d, align 4, !alias.scope !2194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.ac, align 1, !alias.scope !2194
  %i.ad = icmp ugt i64 %2, 2
  br i1 %i.ad, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  %.sroa.0.05.i3 = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread ], [ %.sroa.0.05.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit ]
  %i.ae = icmp eq i64 %.sroa.0.05.i3, %2
  br i1 %i.ae, label %bb.q, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  %i.af = add nsw i64 %.sroa.0.05.i, -1
  %i.ag = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !2199, !noalias !2200, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ai, %i.x
  br i1 %.not.i.not.i.i.i, label %.preheader96.split.i.i, label %bb.g

.preheader96.split.i.i:                           ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i
  %.not.i3.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i3.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1: ; preds = %.preheader96.split.i.i
  %i.aj = add nsw i64 %.sroa.0.05.i, -2           ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !2199, !noalias !2200, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.al, %i.x
  br i1 %.not.i.not.i.i.i.1, label %.preheader96.split.i.i.1, label %bb.g

.preheader96.split.i.i.1:                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1
  %.not.i3.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i3.i.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2: ; preds = %.preheader96.split.i.i.1
  %i.am = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !2199, !noalias !2200, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.ao, %i.x
  br i1 %.not.i.not.i.i.i.2, label %.preheader96.split.i.i.2, label %bb.g

.preheader96.split.i.i.2:                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2
  %.not.i3.i.2 = icmp eq i64 %i.am, 0
  br i1 %.not.i3.i.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3: ; preds = %.preheader96.split.i.i.2
  %i.ap = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !2199, !noalias !2200, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.ar, %i.x
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i
  %.lcssa44 = phi i64 [ %i.ag, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %i.aj, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1 ], [ %i.am, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2 ], [ %i.ap, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3 ]
  %.lcssa42 = phi i8 [ %i.ai, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %i.al, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.1 ], [ %i.ao, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.2 ], [ %i.ar, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3 ]
  %i.as = add nuw nsw i64 %.sroa.0.05.i, 15
  %i.at = icmp ult i64 %2, %i.as
  br i1 %i.at, label %.lr.ph.split.us.i.i.i, label %.thread92.i.i

.thread.i.i:                                      ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread
  %i.au = icmp ult i64 %2, 17
  br i1 %i.au, label %.lr.ph.split.us.i.i.i, label %.thread92.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i25 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i25), !alias.scope !2201, !noalias !2202
  %i.av = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.av, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i
  %i.aw = add i64 %2, -1                          ; 2 uses
  %.not27.i.i.i37 = icmp ugt i64 %.sroa.0.05.i25, %i.aw
  br i1 %.not27.i.i.i37, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i
  %i.ax = phi i64 [ %i.ba, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i ], [ %i.aw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i38 = phi ptr [ %i.ay, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.i.i38, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ay, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i25), !alias.scope !2201, !noalias !2202
  %i.az = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.az, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i: ; preds = %.split.us.i.i.i
  %i.ba = add i64 %i.ax, -1                       ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %.sroa.0.05.i25, %i.ba
  br i1 %.not27.i.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.thread92.i.i:                                    ; preds = %bb.g, %.thread.i.i
  %.sink33 = phi i8 [ %i.ab, %.thread.i.i ], [ %i.x, %bb.g ]
  %i.bb = phi i64 [ 1, %.thread.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.sroa.0.05.i27 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 2 uses
  %i.bc = phi i8 [ %i.i, %.thread.i.i ], [ %.lcssa42, %bb.g ]
  %storemerge9194.i.i = phi i64 [ 1, %.thread.i.i ], [ %.lcssa44, %bb.g ] ; 6 uses
  %i.bd = insertelement <16 x i8> poison, i8 %.sink33, i64 0
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bf = insertelement <16 x i8> poison, i8 %i.bc, i64 0
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2201
  store ptr %1, ptr %i.a, align 8, !noalias !2201
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bi, align 8, !noalias !2201
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !2201
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bb, ptr %i.bk, align 8, !noalias !2201
  %i.bl = add nuw nsw i64 %.sroa.0.05.i27, 63     ; 2 uses
  %.not110.i.i = icmp ult i64 %i.bl, %2
  br i1 %.not110.i.i, label %.lr.ph.i7.i, label %.preheader.i4.i

.preheader.i4.i:                                  ; preds = %bb.k, %.thread92.i.i
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %.thread92.i.i ], [ %.sroa.014.2.3.i.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %.thread92.i.i ], [ %i.dh, %bb.k ] ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.05.i27, 15     ; 2 uses
  %i.bn = add i64 %.sroa.06.0.lcssa.i.i, %i.bm
  %i.bo = icmp uge i64 %i.bn, %2
  %i.bp = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond3105.i.i, label %._crit_edge.i5.i, label %.lr.ph107.i.i

.lr.ph.i7.i:                                      ; preds = %.thread92.i.i, %bb.k
  %.sroa.06.0103.i.i = phi i64 [ %i.dh, %bb.k ], [ 0, %.thread92.i.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0103.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !2203, !noalias !2204
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !2203, !noalias !2204
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.be
  %i.bt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.bg
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !2203, !noalias !2204
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !2203, !noalias !2204
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.be
  %i.bz = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.bg
  %i.ca = and <16 x i1> %i.by, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !2203, !noalias !2204
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !2203, !noalias !2204
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.be
  %i.cf = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.bg
  %i.cg = and <16 x i1> %i.ce, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !2203, !noalias !2204
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.cj, align 1, !alias.scope !2203, !noalias !2204
  %i.ck = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.be
  %i.cl = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.bg
  %i.cm = and <16 x i1> %i.ck, %i.cl
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %i.co = icmp eq i16 %i.bv, 0
  br i1 %i.co, label %.preheader95.1.i.i, label %bb.l

.preheader95.1.i.i:                               ; preds = %bb.l, %.lr.ph.i7.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i7.i ], [ %i.dm, %bb.l ] ; 3 uses
  %i.cp = icmp eq i16 %i.cb, 0
  br i1 %i.cp, label %.preheader95.2.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader95.1.i.i
  %i.cq = or disjoint i64 %.sroa.06.0103.i.i, 16
  %i.cr = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cq, i16 noundef %i.cb, i1 noundef zeroext %i.cr) #44
  %i.ct = zext i1 %i.cs to i8
  %i.cu = or i8 %.sroa.014.2.i.i, %i.ct
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %bb.h, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.cu, %bb.h ] ; 3 uses
  %i.cv = icmp eq i16 %i.ch, 0
  br i1 %i.cv, label %.preheader95.3.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader95.2.i.i
  %i.cw = or disjoint i64 %.sroa.06.0103.i.i, 32
  %i.cx = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cw, i16 noundef %i.ch, i1 noundef zeroext %i.cx) #44
  %i.cz = zext i1 %i.cy to i8
  %i.da = or i8 %.sroa.014.2.1.i.i, %i.cz
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %bb.i, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.da, %bb.i ] ; 3 uses
  %i.db = icmp eq i16 %i.cn, 0
  br i1 %i.db, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader95.3.i.i
  %i.dc = or disjoint i64 %.sroa.06.0103.i.i, 48
  %i.dd = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dc, i16 noundef %i.cn, i1 noundef zeroext %i.dd) #44
  %i.df = zext i1 %i.de to i8
  %i.dg = or i8 %.sroa.014.2.2.i.i, %i.df
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.dg, %bb.j ] ; 2 uses
  %i.dh = add i64 %.sroa.06.0103.i.i, 64          ; 3 uses
  %i.di = add i64 %i.dh, %i.bl
  %i.dj = icmp uge i64 %i.di, %2
  %i.dk = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %.preheader.i4.i, label %.lr.ph.i7.i

bb.l:                                             ; preds = %.lr.ph.i7.i
  %i.dl = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.bv, i1 noundef zeroext false) #44
  %i.dm = zext i1 %i.dl to i8
  br label %.preheader95.1.i.i

._crit_edge.i5.i:                                 ; preds = %bb.m, %.preheader.i4.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i4.i ], [ %.sroa.014.4.i.i, %bb.m ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bp, %.preheader.i4.i ], [ %i.eg, %bb.m ]
  %i.dn = sub nuw i64 %2, %i.bb
  %i.do = add i64 %i.dn, -16                      ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !2203, !noalias !2205
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !2203, !noalias !2205
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, %i.be
  %i.ds = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i, %i.bg
  %i.dt = and <16 x i1> %i.dr, %i.ds
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %i.dv = icmp eq i16 %i.du, 0
  br i1 %i.dv, label %bb.o, label %bb.p

.lr.ph107.i.i:                                    ; preds = %.preheader.i4.i, %bb.m
  %.sroa.06.1106.i.i = phi i64 [ %i.ed, %bb.m ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i4.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1106.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !2203, !noalias !2206
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i60.i.i = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !2203, !noalias !2206
  %i.dy = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i, %i.be
  %i.dz = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i, %i.bg
  %i.ea = and <16 x i1> %i.dy, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %i.ec = icmp eq i16 %i.eb, 0
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph107.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph107.i.i ], [ %i.ei, %bb.n ] ; 2 uses
  %i.ed = add i64 %.sroa.06.1106.i.i, 16          ; 2 uses
  %i.ee = add i64 %i.ed, %i.bm
  %i.ef = icmp uge i64 %i.ee, %2
  %i.eg = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.ef, %i.eg
  br i1 %or.cond3.i.i, label %._crit_edge.i5.i, label %.lr.ph107.i.i

bb.n:                                             ; preds = %.lr.ph107.i.i
  %i.eh = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i.i, i16 noundef %i.eb, i1 noundef zeroext false) #44
  %i.ei = zext i1 %i.eh to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i5.i
  %.sroa.014.5.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i5.i ], [ %i.el, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2201
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.p:                                             ; preds = %._crit_edge.i5.i
  %i.ej = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.do, i16 noundef %i.du, i1 noundef zeroext %.lcssa.i.i) #44
  %i.ek = zext i1 %i.ej to i8
  %i.el = or i8 %.sroa.014.3.lcssa.i.i, %i.ek
  br label %bb.o

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i.3, %.preheader96.split.i.i.2, %.preheader96.split.i.i.1, %.preheader96.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2207
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #44
  %i.em = load i64, ptr %i.c, align 8, !range !18, !noalias !2207, !noundef !5
  %i.en = trunc nuw nsw i64 %i.em to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2207
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.q:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.d, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !2207
  %i.eo = icmp eq i32 %bcmp.i, 0
  %i.ep = zext i1 %i.eo to i8
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i, %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader, %bb.f, %.lr.ph.split.us.i.i.i, %bb.o, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i, %bb.q
  %.sroa.0.0.i = phi i8 [ 0, %bb.f ], [ 1, %.lr.ph.split.us.i.i.i ], [ %i.ep, %bb.q ], [ %i.en, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i ], [ %.sroa.014.5.i.i, %bb.o ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i.preheader ], [ 1, %.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6oosyzwIepl_6ide_db.exit.backedge.us.i.i.i ]
  %i.eq = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit

bb.r:                                             ; preds = %bb.a
  %i.er = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.es = icmp samesign ult i64 %2, 16
  br i1 %i.es, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.r
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %i.et = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  %i.ev = icmp eq i64 %i.eu, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.ez, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2208, !noundef !5
  %i.ey = icmp eq i8 %i.ex, %i.er                 ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ez, %2
  %or.cond = select i1 %i.ey, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit, label %.lr.ph.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit: ; preds = %.lr.ph.i, %bb.s, %.preheader.i, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %i.eq, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ %i.ev, %bb.s ], [ false, %.preheader.i ], [ %i.ey, %.lr.ph.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBF_5LocalEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs6oosyzwIepl_6ide_db(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6
  %.sroa.01.09 = phi i64 [ %i.bh, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 12 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  %i.d = load i8, ptr %i.b, align 8, !range !30, !alias.scope !2222, !noalias !2223, !noundef !5 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !30, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %default.unreachable [
    i8 1, label %.split
    i8 2, label %.split32
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 0, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !2222, !noalias !2223, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

.split32:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.val.i.i = load i32, ptr %i.l, align 4, !alias.scope !2222, !noalias !2223, !noundef !5
  %.val2.i.i = load i32, ptr %i.m, align 4, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.n = icmp eq i32 %.val.i.i, %.val2.i.i
  br i1 %i.n, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !2222, !noalias !2223, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %.split31, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

.split31:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !31, !alias.scope !2222, !noalias !2223, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !31, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2222, !noalias !2223, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %.split29, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

.split29:                                         ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2222, !noalias !2223, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2223, !noalias !2222, !noundef !5
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %i.ak = load i32, ptr %i.ai, align 4, !range !32, !alias.scope !2226, !noalias !2227, !noundef !5 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !range !32, !alias.scope !2227, !noalias !2226, !noundef !5
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !2227, !noalias !2226, !noundef !5
  %i.ar = icmp eq i32 %i.ao, %i.aq                ; 3 uses
  switch i32 %i.ak, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.h:                                             ; preds = %bb.f
  br i1 %i.ar, label %.split28, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

bb.i:                                             ; preds = %bb.f
  br i1 %i.ar, label %.split30, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

.split28:                                         ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i32, ptr %i.at, align 8, !range !7, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.av = load i32, ptr %i.as, align 8, !range !7, !alias.scope !2227, !noalias !2226, !noundef !5
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

.split30:                                         ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !7, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.ba = load i32, ptr %i.ax, align 8, !range !7, !alias.scope !2227, !noalias !2226, !noundef !5
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !range !7, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.bf = load i32, ptr %i.bc, align 8, !range !7, !alias.scope !2227, !noalias !2226, !noundef !5
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread

_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread: ; preds = %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit, %.lr.ph, %bb.c, %bb.d, %bb.i, %bb.h, %bb.g, %bb.e, %.split, %.split28, %.split29, %.split30, %.split31, %.split32, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split32 ], [ false, %.split31 ], [ false, %.split30 ], [ false, %.split29 ], [ false, %.split28 ], [ false, %.split ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit ], [ true, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6 ]
  ret i1 %.lcssa

_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread6: ; preds = %.split32, %.split31, %.split30, %.split29, %.split28, %.split, %bb.b, %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit
  %i.bh = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not, label %_RNvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6oosyzwIepl_6ide_db.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs6oosyzwIepl_6ide_db5labelNtB5_5LabelNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
