Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 641
loop-unroll.NumUnrolled: 647
begin_hunk_0_@_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNvMB1y_NtNtB1y_9dataframe9DataFrame14should_rechunk0ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equalB1A_:bb.a
_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1j_NtNtB1j_9dataframe9DataFrame14should_rechunk0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkjNCNvYINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB2P_ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0E0E0B1l_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not14.i.i.i = icmp eq ptr %i.s, %i.q, !dbg !290577
  br i1 %.not14.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNvMB1z_NtNtB1z_9dataframe9DataFrame14should_rechunk0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0EB1B_.exit, label %.lr.ph.i.i.i, !dbg !290584

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNvMB1z_NtNtB1z_9dataframe9DataFrame14should_rechunk0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0EB1B_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1j_NtNtB1j_9dataframe9DataFrame14should_rechunk0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkjNCNvYINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB2P_ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0E0E0B1l_.exit.backedge.i.i.i, %.split.i.i.i, %bb.d, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNvMB1E_NtNtB1E_9dataframe9DataFrame14should_rechunk0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNvMB1E_NtNtB1E_9dataframe9DataFrame14should_rechunk0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit ], [ true, %bb.d ], [ true, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1j_NtNtB1j_9dataframe9DataFrame14should_rechunk0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkjNCNvYINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB2P_ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0E0E0B1l_.exit.backedge.i.i.i ], [ false, %.split.i.i.i ], !dbg !290618
  ret i1 %.sroa.0.0, !dbg !290619
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 576460752303423488) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 !dbg !261915 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !290620, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !290620
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !290620, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !290621
  %i.c = ptrtoint ptr %.val to i64, !dbg !290621
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !290621
  %i.e = lshr exact i64 %i.d, 5, !dbg !290621
  ret i64 %i.e, !dbg !290627
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkops12CHECK_LENGTH0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1w_6option6OptionQIB2b_INtNtB1w_4cell4CellbEEEEE9call_onceBe_(ptr noalias nofree readnone captures(none) %0) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !290628 {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkops12CHECK_LENGTH0s_023___RUST_STD_INTERNAL_VAL), !dbg !290629
  ret ptr %i.a, !dbg !290634
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !290635 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290636), !dbg !290639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !290640, !noalias !290636
  call void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtB7_6pl_str10PlSmallStrINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newB33_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g), !dbg !290644, !noalias !290636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !290645, !noalias !290636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !290647, !noalias !290636
  %i.h = load ptr, ptr @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field28POLARS_OBJECT_EXTENSION_NAME, align 8, !dbg !290648, !noalias !290636, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field28POLARS_OBJECT_EXTENSION_NAME, i64 8), align 8, !dbg !290648, !noalias !290636, !noundef !14 ; 5 uses
  %i.j = icmp ult i64 %i.i, 25, !dbg !290649
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !290649

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !290656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.b, i8 0, i64 23, i1 false), !dbg !290656, !noalias !290660
  %i.k = trunc nuw nsw i64 %i.i to i8, !dbg !290664
  %i.l = or disjoint i8 %i.k, -64, !dbg !290666
  %.23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !290666
  store i8 %i.l, ptr %.23..23..23..23..23..23..sroa_idx, align 1, !dbg !290666, !noalias !290660
  %.not5.i.i = icmp eq i64 %i.i, 0, !dbg !290667
  br i1 %.not5.i.i, label %bb.e, label %.lr.ph.preheader.i.i, !dbg !290667

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %i.h, i64 range(i64 0, 25) %i.i, i1 false), !dbg !290670, !noalias !290671
  %.0..0..0..0..0..sroa.0.0.copyload.pre.i = load ptr, ptr %i.b, align 8, !dbg !290672, !noalias !290673
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !290672
  %.8..8..8..8..8..sroa.4.0.copyload.pre.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !dbg !290672, !noalias !290673
  br label %bb.e, !dbg !290672

bb.c:                                             ; preds = %bb.e, %bb.a
  %.sroa.6.0.i = phi i64 [ %.16..16..16..16..16..sroa.5.0.copyload.i, %bb.e ], [ -2810246167479189504, %bb.a ], !dbg !290674
  %.sroa.53.0.i = phi i64 [ %.8..8..sroa.4.0.copyload.i, %bb.e ], [ %i.i, %bb.a ], !dbg !290674
  %.sroa.01.0.i = phi ptr [ %.0..0..sroa.0.0.copyload.i, %bb.e ], [ %i.h, %bb.a ], !dbg !290674
  store ptr %.sroa.01.0.i, ptr %i.e, align 8, !dbg !290675, !noalias !290636
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !290675
  store i64 %.sroa.53.0.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !dbg !290675, !noalias !290636
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !290675
  store i64 %.sroa.6.0.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !dbg !290675, !noalias !290636
  invoke fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertB2T_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(40) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.d, !dbg !290676, !noalias !290636

bb.d:                                             ; preds = %bb.p, %bb.k, %bb.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !290677
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 40, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB3b_.exit.i unwind label %bb.q, !dbg !290684, !noalias !290636

bb.e:                                             ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.8..8..sroa.4.0.copyload.i = phi i64 [ %.8..8..8..8..8..sroa.4.0.copyload.pre.i, %.lr.ph.preheader.i.i ], [ 0, %bb.b ], !dbg !290672
  %.0..0..sroa.0.0.copyload.i = phi ptr [ %.0..0..0..0..0..sroa.0.0.copyload.pre.i, %.lr.ph.preheader.i.i ], [ null, %bb.b ], !dbg !290672
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !290672
  %.16..16..16..16..16..sroa.5.0.copyload.i = load i64, ptr %.16..16..16..16..16..sroa_idx, align 8, !dbg !290672, !noalias !290673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !290685
  br label %bb.c, !dbg !290686

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !290687, !noalias !290636
  call void @llvm.experimental.noalias.scope.decl(metadata !290688), !dbg !290691
  %i.o = load i64, ptr %i.f, align 8, !dbg !290692, !range !16, !alias.scope !290688, !noalias !290636, !noundef !14
  %i.p = icmp eq i64 %i.o, 0, !dbg !290692
  br i1 %i.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i, label %bb.g, !dbg !290692

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !290692 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290695), !dbg !290692
  %i.r = load ptr, ptr %i.q, align 8, !dbg !290698, !alias.scope !290700, !noalias !290636, !noundef !14 ; 2 uses
  %i.s = icmp eq ptr %i.r, null, !dbg !290698
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i, label %bb.h, !dbg !290698

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !290701, !noalias !290706
  %i.u = icmp eq i64 %i.t, 1, !dbg !290711
  br i1 %i.u, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i, !dbg !290711

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !290712
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i unwind label %bb.d, !dbg !290714, !noalias !290636

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !290691, !noalias !290636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !290715, !noalias !290636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !290716, !noalias !290636
  %i.v = load ptr, ptr @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field25ARROW_UUID_EXTENSION_NAME, align 8, !dbg !290717, !noalias !290636, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field25ARROW_UUID_EXTENSION_NAME, i64 8), align 8, !dbg !290717, !noalias !290636, !noundef !14 ; 5 uses
  %i.x = icmp ult i64 %i.w, 25, !dbg !290718
  br i1 %i.x, label %bb.j, label %bb.k, !dbg !290718

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !290724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !290724, !noalias !290726
  %i.y = trunc nuw nsw i64 %i.w to i8, !dbg !290730
  %i.z = or disjoint i8 %i.y, -64, !dbg !290731
  %.23..23..23..23..23..23..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !290731
  store i8 %i.z, ptr %.23..23..23..23..23..23..sroa_idx13, align 1, !dbg !290731, !noalias !290726
  %.not5.i42.i = icmp eq i64 %i.w, 0, !dbg !290732
  br i1 %.not5.i42.i, label %bb.l, label %.lr.ph.preheader.i43.i, !dbg !290732

.lr.ph.preheader.i43.i:                           ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.v, i64 range(i64 0, 25) %i.w, i1 false), !dbg !290733, !noalias !290734
  %.0..0..0..0..0..sroa.01.0.copyload.pre.i = load ptr, ptr %i.a, align 8, !dbg !290735, !noalias !290736
  %.8..8..8..8..8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !290735
  %.8..8..8..8..8..sroa.42.0.copyload.pre.i = load i64, ptr %.8..8..8..8..8..sroa_idx11, align 8, !dbg !290735, !noalias !290736
  br label %bb.l, !dbg !290735

bb.k:                                             ; preds = %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i
  %.sroa.621.0.i = phi i64 [ %.16..16..16..16..16..sroa.53.0.copyload.i, %bb.l ], [ -2810246167479189504, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i ], !dbg !290737
  %.sroa.518.0.i = phi i64 [ %.8..8..sroa.42.0.copyload.i, %bb.l ], [ %i.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i ], !dbg !290737
  %.sroa.016.0.i = phi ptr [ %.0..0..sroa.01.0.copyload.i, %bb.l ], [ %i.v, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_INtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EEEEB1L_.exit.i ], !dbg !290737
  store ptr %.sroa.016.0.i, ptr %i.c, align 8, !dbg !290738, !noalias !290636
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !290738
  store i64 %.sroa.518.0.i, ptr %.sroa.425.0..sroa_idx.i, align 8, !dbg !290738, !noalias !290636
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !290738
  store i64 %.sroa.621.0.i, ptr %.sroa.526.0..sroa_idx.i, align 8, !dbg !290738, !noalias !290636
  invoke fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertB2T_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(40) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.d, !dbg !290739, !noalias !290636

bb.l:                                             ; preds = %.lr.ph.preheader.i43.i, %bb.j
  %.8..8..sroa.42.0.copyload.i = phi i64 [ %.8..8..8..8..8..sroa.42.0.copyload.pre.i, %.lr.ph.preheader.i43.i ], [ 0, %bb.j ], !dbg !290735
  %.0..0..sroa.01.0.copyload.i = phi ptr [ %.0..0..0..0..0..sroa.01.0.copyload.pre.i, %.lr.ph.preheader.i43.i ], [ null, %bb.j ], !dbg !290735
  %.16..16..16..16..16..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !290735
  %.16..16..16..16..16..sroa.53.0.copyload.i = load i64, ptr %.16..16..16..16..16..sroa_idx12, align 8, !dbg !290735, !noalias !290736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !290740
  br label %bb.k, !dbg !290741

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !290742, !noalias !290636
  call void @llvm.experimental.noalias.scope.decl(metadata !290743), !dbg !290746
  %i.aa = load i64, ptr %i.d, align 8, !dbg !290747, !range !16, !alias.scope !290743, !noalias !290636, !noundef !14
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !290747
  br i1 %i.ab, label %_RNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0B9_.exit, label %bb.n, !dbg !290747

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !290747 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290749), !dbg !290747
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !290752, !alias.scope !290754, !noalias !290636, !noundef !14 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !290752
  br i1 %i.ae, label %_RNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0B9_.exit, label %bb.o, !dbg !290752

bb.o:                                             ; preds = %bb.n
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !290755, !noalias !290760
  %i.ag = icmp eq i64 %i.af, 1, !dbg !290765
  br i1 %i.ag, label %bb.p, label %_RNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0B9_.exit, !dbg !290765

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !290766
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #51
          to label %_RNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0B9_.exit unwind label %bb.d, !dbg !290768, !noalias !290636

bb.q:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !290769, !noalias !290636
  unreachable, !dbg !290769

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension20ExtensionTypeFactoryEL_EENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB3b_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.m, !dbg !290769

_RNCNvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension8registry8REGISTRY0B9_.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !290746, !noalias !290636
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !290770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !dbg !290773
  store i64 0, ptr %0, align 8, !dbg !290770, !alias.scope !290636
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !290770
  store i8 0, ptr %1, align 8, !dbg !290770, !alias.scope !290636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !290774, !noalias !290636
  ret void, !dbg !290639
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags10intersectsB8_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !290775 {
bb.a:
  %.val = load i32, ptr %0, align 4, !dbg !290780, !noundef !14
  %i.a = and i32 %.val, %1, !dbg !290781
  %i.b = icmp ne i32 %i.a, 0, !dbg !290787
  ret i1 %i.b, !dbg !290790
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags10iter_namesB8_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 !dbg !290791 {
bb.a:
  tail call void @_RNvMs1_NtCsc91YB1gQebm_8bitflags4iterINtB5_9IterNamesNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsE3newBV_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1), !dbg !290792
  ret void, !dbg !290793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i32 @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags5emptyB8_() unnamed_addr #18 !dbg !290794 {
bb.a:
  ret i32 0, !dbg !290795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags6insertB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !290796 {
bb.a:
  %.val = load i32, ptr %0, align 4, !dbg !290797, !noundef !14
  %i.a = or i32 %.val, %1, !dbg !290798
  store i32 %i.a, ptr %0, align 4, !dbg !290804
  ret void, !dbg !290805
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags6removeB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !290806 {
bb.a:
  %.val = load i32, ptr %0, align 4, !dbg !290807, !noundef !14
  %i.a = xor i32 %1, -1, !dbg !290808
  %i.b = and i32 %.val, %i.a, !dbg !290814
  store i32 %i.b, ptr %0, align 4, !dbg !290816
  ret void, !dbg !290817
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags8containsB8_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !290818 {
bb.a:
  %.val2 = load i32, ptr %0, align 4, !dbg !290819, !noundef !14
  %i.a = and i32 %.val2, %1, !dbg !290820
  %i.b = icmp eq i32 %i.a, %1, !dbg !290822
  ret i1 %i.b, !dbg !290824
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags8is_emptyB8_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #6 !dbg !290825 {
bb.a:
  %.val2 = load i32, ptr %0, align 4, !dbg !290826, !noundef !14
  %i.a = icmp eq i32 %.val2, 0, !dbg !290827
  ret i1 %i.a, !dbg !290829
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsNtNtCsc91YB1gQebm_8bitflags6traits5Flags9from_nameB8_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #6 !dbg !290830 {
bb.a:
  switch i64 %1, label %.loopexit [
    i64 20, label %bb.g
    i64 13, label %bb.b
    i64 21, label %bb.e
    i64 39, label %bb.f
  ], !dbg !290831

.loopexit:                                        ; preds = %bb.a, %bb.e, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.4.0 = phi i32 [ %.val, %bb.h ], [ undef, %bb.e ], [ undef, %bb.a ], [ undef, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], !dbg !290832
  %i.a = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !290833
  %i.b = insertvalue { i32, i32 } %i.a, i32 %.sroa.4.0, 1, !dbg !290833
  ret { i32, i32 } %i.b, !dbg !290833

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1, !dbg !290834
  %i.d = xor i64 4995708387315372873, %i.c, !dbg !290834
  %i.e = getelementptr i8, ptr %0, i64 5, !dbg !290834
  %i.f = load i64, ptr %i.e, align 1, !dbg !290834
  %i.g = xor i64 6435152794982110290, %i.f, !dbg !290834
  %i.h = or i64 %i.d, %i.g, !dbg !290834
  %i.i = icmp ne i64 %i.h, 0, !dbg !290834
  %i.j = zext i1 %i.i to i32, !dbg !290834
  %i.k = icmp eq i32 %i.j, 0, !dbg !290834
  br i1 %i.k, label %bb.h, label %bb.c, !dbg !290847

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %0, align 1, !dbg !290834
  %i.m = xor i64 4995708387315372873, %i.l, !dbg !290834
  %i.n = getelementptr i8, ptr %0, i64 5, !dbg !290834
  %i.o = load i64, ptr %i.n, align 1, !dbg !290834
  %i.p = xor i64 4851293101031248978, %i.o, !dbg !290834
  %i.q = or i64 %i.m, %i.p, !dbg !290834
  %i.r = icmp ne i64 %i.q, 0, !dbg !290834
  %i.s = zext i1 %i.r to i32, !dbg !290834
  %i.t = icmp eq i32 %i.s, 0, !dbg !290834
  br i1 %i.t, label %bb.h, label %bb.d, !dbg !290847

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %0, align 1, !dbg !290834
  %i.v = xor i64 4995708387315372873, %i.u, !dbg !290834
  %i.w = getelementptr i8, ptr %0, i64 5, !dbg !290834
  %i.x = load i64, ptr %i.w, align 1, !dbg !290834
  %i.y = xor i64 4851296399566132306, %i.x, !dbg !290834
  %i.z = or i64 %i.v, %i.y, !dbg !290834
  %i.aa = icmp ne i64 %i.z, 0, !dbg !290834
  %i.ab = zext i1 %i.aa to i32, !dbg !290834
  %i.ac = icmp eq i32 %i.ab, 0, !dbg !290834
  br i1 %i.ac, label %bb.h, label %.loopexit, !dbg !290847

bb.e:                                             ; preds = %bb.a
  %i.ad = load i128, ptr %0, align 1, !dbg !290834
  %i.ae = xor i128 92071416252104116934793879817961750851, %i.ad, !dbg !290834
  %i.af = getelementptr i8, ptr %0, i64 5, !dbg !290834
  %i.ag = load i128, ptr %i.af, align 1, !dbg !290834
  %i.ah = xor i128 112087598951917556071412229618391077697, %i.ag, !dbg !290834
  %i.ai = or i128 %i.ae, %i.ah, !dbg !290834
  %i.aj = icmp ne i128 %i.ai, 0, !dbg !290834
  %i.ak = zext i1 %i.aj to i32, !dbg !290834
  %i.al = icmp eq i32 %i.ak, 0, !dbg !290834
  br i1 %i.al, label %bb.h, label %.loopexit, !dbg !290847

bb.f:                                             ; preds = %bb.a
  %bcmp.4 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(39) @266, ptr noundef nonnull dereferenceable(39) %0, i64 39), !dbg !290834
  %i.am = icmp eq i32 %bcmp.4, 0, !dbg !290834
  br i1 %i.am, label %bb.h, label %.loopexit, !dbg !290847

bb.g:                                             ; preds = %bb.a
  %i.an = load i128, ptr %0, align 1, !dbg !290834
  %i.ao = xor i128 104174436569456166005148989977275875656, %i.an, !dbg !290834
  %i.ap = getelementptr i8, ptr %0, i64 16, !dbg !290834
  %i.aq = load i32, ptr %i.ap, align 1, !dbg !290834
  %i.ar = zext i32 %i.aq to i128, !dbg !290834
  %i.as = xor i128 1397509205, %i.ar, !dbg !290834
  %i.at = or i128 %i.ao, %i.as, !dbg !290834
  %i.au = icmp ne i128 %i.at, 0, !dbg !290834
  %i.av = zext i1 %i.au to i32, !dbg !290834
  %i.aw = icmp eq i32 %i.av, 0, !dbg !290834
  br i1 %i.aw, label %bb.h, label %.loopexit, !dbg !290847

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.03.0.ptr9.lcssa = phi ptr [ @268, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @268, i64 24), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @268, i64 48), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @268, i64 72), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @268, i64 96), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @268, i64 120), %bb.g ], !dbg !290850
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr9.lcssa, i64 16, !dbg !290858
  %.val = load i32, ptr %i.ax, align 4, !dbg !290862, !noundef !14
  br label %.loopexit, !dbg !290863
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 !dbg !290865 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565) #47, !dbg !290866
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !290868

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !290869 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !290869, !noundef !14
  %.not.i = icmp eq ptr %i.c, null, !dbg !290869
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !290872

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !290875
  %i.e = load i64, ptr %i.d, align 8, !dbg !290875, !noundef !14
  br label %bb.e, !dbg !290878

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !290879
  br label %bb.e, !dbg !290885

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !290888
  ret i64 %.sroa.0.1, !dbg !290878
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #29 !dbg !290889 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !290890
  %i.b = load ptr, ptr %i.a, align 8, !dbg !290890, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !290890
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !290893

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !290896
  %i.d = load i64, ptr %i.c, align 8, !dbg !290896, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !290907
  %i.f = load ptr, ptr %i.e, align 8, !dbg !290907, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !290909
  %i.h = load i64, ptr %i.g, align 8, !dbg !290909, !noundef !14
  %i.i = add i64 %i.h, %1, !dbg !290909           ; 2 uses
  %i.j = lshr i64 %i.i, 3, !dbg !290910           ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.d, !dbg !290913
  tail call void @llvm.assume(i1 %i.k), !dbg !290918
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !290919
  %i.m = load i8, ptr %i.l, align 1, !dbg !290920, !noundef !14
  %i.n = trunc i64 %i.i to i8, !dbg !290921
end_hunk_0
