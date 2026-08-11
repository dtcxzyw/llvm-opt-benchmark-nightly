inline.NumInlined: 10066
inline.NumDeleted: 5164
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs_NtCslpwjCj2YNBy_9polars_io8pl_asyncINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtB4_7GetSize4sizeCs2g09Ig8GZd6_13polars_stream:bb.a
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.epil, !dbg !87893
  %i.u = getelementptr i8, ptr %i.t, i64 16, !dbg !87896
  %.val.i.epil = load i64, ptr %i.u, align 8, !dbg !87896, !noundef !13
  %i.v = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !87897 ; 2 uses
  %i.w = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !87903
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !87887 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !87887
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1L_8adapters3map8map_foldRBQ_yyNCNvXs_NtCslpwjCj2YNBy_9polars_io8pl_asyncINtNtCsgZ49sUHp3tW_5alloc3vec3VecBQ_ENtB3c_7GetSize4size0NCINvXsC_NtB1J_5accumyNtB4P_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %.preheader.epil, !dbg !87887, !llvm.loop !87906

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1L_8adapters3map8map_foldRBQ_yyNCNvXs_NtCslpwjCj2YNBy_9polars_io8pl_asyncINtNtCsgZ49sUHp3tW_5alloc3vec3VecBQ_ENtB3c_7GetSize4size0NCINvXsC_NtB1J_5accumyNtB4P_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1L_8adapters3map8map_foldRBQ_yyNCNvXs_NtCslpwjCj2YNBy_9polars_io8pl_asyncINtNtCsgZ49sUHp3tW_5alloc3vec3VecBQ_ENtB3c_7GetSize4size0NCINvXsC_NtB1J_5accumyNtB4P_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1L_8adapters3map8map_foldRBQ_yyNCNvXs_NtCslpwjCj2YNBy_9polars_io8pl_asyncINtNtCsgZ49sUHp3tW_5alloc3vec3VecBQ_ENtB3c_7GetSize4size0NCINvXsC_NtB1J_5accumyNtB4P_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit.loopexit.unr-lcssa ], [ %i.v, %.preheader.epil ], !dbg !87892
  ret i64 %.sroa.0.0.i, !dbg !87907
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3q_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EE11spec_extendB4G_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !87908 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87909), !dbg !87912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87913), !dbg !87912
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !87915
  %.val.i = load i64, ptr %i.b, align 8, !dbg !87915, !alias.scope !87918, !noalias !87921, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !87915
  %.val5.i = load i64, ptr %i.c, align 8, !dbg !87915, !alias.scope !87923, !noalias !87924, !noundef !13
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val5.i, i64 %.val.i), !dbg !87925 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !87929 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !87929, !alias.scope !87934, !noalias !87913, !noundef !13 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !dbg !87937, !range !2568, !alias.scope !87934, !noalias !87913, !noundef !13
  %i.g = sub i64 %i.f, %i.e, !dbg !87946
  %i.h = icmp ugt i64 %spec.select.i.i.i, %i.g, !dbg !87949
  br i1 %i.h, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB38_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EEB4o_.exit, !dbg !87950, !prof !2580

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %spec.select.i.i.i, i64 noundef 8, i64 noundef 8), !dbg !87951, !noalias !87913
  %.pre.i = load i64, ptr %i.d, align 8, !dbg !87952, !alias.scope !87909, !noalias !87913
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB38_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EEB4o_.exit, !dbg !87951

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB38_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EEB4o_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %bb.b ], !dbg !87952
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !87956
  %i.k = load ptr, ptr %i.j, align 8, !dbg !87956, !alias.scope !87909, !noalias !87913, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !87965, !noalias !87967
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !87965
  store ptr %i.k, ptr %i.l, align 8, !dbg !87965, !noalias !87967
  store ptr %i.d, ptr %i.a, align 8, !dbg !87965, !noalias !87967
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !87965
  store i64 %i.i, ptr %i.m, align 8, !dbg !87965, !noalias !87967
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2G_8for_each4callINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENCINvMsj_NtB3O_3vecINtB6b_3VecB3J_E14extend_trustedBN_E0E0EB1x_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !87968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !87971, !noalias !87967
  ret void, !dbg !87972
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB3q_5slice4iter4IterBT_EEE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !87973 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87974), !dbg !87977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !87974
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !87974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !87978, !noalias !87974
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !87981, !noalias !87974
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !87982
  %i.f = load i64, ptr %i.e, align 8, !dbg !87982, !range !4165, !noalias !87974, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !87982
  %i.h = load i64, ptr %i.g, align 8, !dbg !87982, !noalias !87974 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !87983, !noalias !87974
  %i.i = trunc nuw i64 %i.f to i1, !dbg !87984
  br i1 %i.i, label %bb.b, label %bb.d, !dbg !87984, !prof !4170

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !87987 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !87987, !alias.scope !87989, !noundef !13 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !dbg !87992, !range !2568, !alias.scope !87989, !noundef !13
  %i.m = sub i64 %i.l, %i.k, !dbg !87997
  %i.n = icmp ugt i64 %i.h, %i.m, !dbg !87999
  br i1 %i.n, label %bb.c, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB38_5slice4iter4IterBG_EEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !88000, !prof !2580

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 8), !dbg !88001
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !88002, !alias.scope !87974
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB38_5slice4iter4IterBG_EEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !88001

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88006, !noalias !87974
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB38_5slice4iter4IterBG_EEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i, %bb.c ], !dbg !88002
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88007
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88007, !alias.scope !87974, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88016, !noalias !88020
  store ptr %i.j, ptr %i.a, align 8, !dbg !88023, !noalias !87974
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88023
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !88023, !noalias !87974
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88023
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !88023, !noalias !87974
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3N_8for_each4callB1s_NCINvMsj_NtB1x_3vecINtB53_3VecB1s_E14extend_trustedBP_E0E0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !88026, !noalias !88027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88028, !noalias !88020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !88029
  ret void, !dbg !88030
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEINtB4_10SpecExtendBT_INtNtCscgRAwXFJnXP_4core6option8IntoIterBT_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88031 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88032), !dbg !88035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !88032
  %i.b = icmp ne ptr %1, null, !dbg !88036
  %i.c = zext i1 %i.b to i64, !dbg !88036         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88045 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !88045, !alias.scope !88050, !noundef !13 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !dbg !88053, !range !2568, !alias.scope !88050, !noundef !13
  %i.g = sub i64 %i.f, %i.e, !dbg !88062
  %i.h = icmp ult i64 %i.g, %i.c, !dbg !88065
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !88066, !prof !2580

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i unwind label %bb.c, !dbg !88067

._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.d, align 8, !dbg !88068, !alias.scope !88032
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !88067

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i, %bb.a
  %i.i = phi i64 [ %.pre.i, %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i ], [ %i.e, %bb.a ], !dbg !88068 ; 3 uses
  %.not9.i.i.i = icmp eq ptr %1, null, !dbg !88072
  br i1 %.not9.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit, label %._crit_edge.i.i.i, !dbg !88080

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88081
  %i.k = load ptr, ptr %i.j, align 8, !dbg !88081, !alias.scope !88032, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i, !dbg !88090
  store ptr %1, ptr %i.l, align 8, !dbg !88097, !noalias !88100
  %i.m = add i64 %i.i, 1, !dbg !88109
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !88080

.noexc5.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.n, !dbg !88112

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq ptr %1, null, !dbg !88113
  br i1 %i.o, label %.noexc5.i, label %bb.d, !dbg !88113

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %1, i64 1 release, align 8, !dbg !88120, !noalias !88125
  %i.q = icmp eq i64 %i.p, 1, !dbg !88136
  br i1 %i.q, label %bb.e, label %.noexc5.i, !dbg !88136

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !88137
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %.noexc5.i unwind label %bb.f, !dbg !88139

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !88112
  unreachable, !dbg !88112

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, %._crit_edge.i.i.i
  %.val7.i.i.i = phi i64 [ %i.m, %._crit_edge.i.i.i ], [ %i.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !88140
  store i64 %.val7.i.i.i, ptr %i.d, align 8, !dbg !88141, !alias.scope !88032, !noalias !88148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88149
  ret void, !dbg !88150
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3h_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtB1Y_5graph14LogicalPipeKeyB1z_E5entry0EE11spec_extendB1Y_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88151 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88152), !dbg !88155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88156), !dbg !88155
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88158
  %i.c = load i8, ptr %i.b, align 8, !dbg !88158, !range !37148, !alias.scope !88171, !noalias !88176, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88158
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88158

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88179
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88180), !dbg !88183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88184), !dbg !88183
  %i.f = load i64, ptr %1, align 8, !dbg !88186, !alias.scope !88189, !noalias !88190, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88191, !alias.scope !88192, !noalias !88193, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88186
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88194

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88195
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_.exit, !dbg !88200

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88205      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88208
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88218, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88195 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88195, !alias.scope !88220, !noalias !88156, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88223, !range !2568, !alias.scope !88220, !noalias !88156, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88228
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88231
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_.exit, !dbg !88200, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 32), !dbg !88233, !noalias !88156
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_.exit, !dbg !88233

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88234, !noalias !88235
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88236
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88236, !alias.scope !88152, !noalias !88156, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88245, !alias.scope !88152, !noalias !88156, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88249, !noalias !88235
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88249
  store ptr %i.q, ptr %i.s, align 8, !dbg !88249, !noalias !88235
  store ptr %i.o, ptr %i.a, align 8, !dbg !88249, !noalias !88235
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88249
  store i64 %i.r, ptr %i.t, align 8, !dbg !88249, !noalias !88235
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3x_4sync3ArcNtNtB2D_4pipe11PipeMetricsEEE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4S_8for_each4callINtB1G_4SlotB3s_ENCINvMsj_B3v_IB3t_B5V_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88254, !noalias !88235
  ret void, !dbg !88255
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3k_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1z_E5entry0EE11spec_extendB5a_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88256 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88257), !dbg !88260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88261), !dbg !88260
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88263
  %i.c = load i8, ptr %i.b, align 8, !dbg !88263, !range !37148, !alias.scope !88270, !noalias !88275, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88263
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88263

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88279), !dbg !88282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88283), !dbg !88282
  %i.f = load i64, ptr %1, align 8, !dbg !88285, !alias.scope !88287, !noalias !88288, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88289, !alias.scope !88290, !noalias !88291, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88285
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88292

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88293
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_.exit, !dbg !88298

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88303      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88305
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88309, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88293 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88293, !alias.scope !88310, !noalias !88261, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88313, !range !2568, !alias.scope !88310, !noalias !88261, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88318
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88321
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_.exit, !dbg !88298, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 32), !dbg !88322, !noalias !88261
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_.exit, !dbg !88322

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88323, !noalias !88324
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88325
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88325, !alias.scope !88257, !noalias !88261, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88334, !alias.scope !88257, !noalias !88261, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88338, !noalias !88324
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88338
  store ptr %i.q, ptr %i.s, align 8, !dbg !88338, !noalias !88324
  store ptr %i.o, ptr %i.a, align 8, !dbg !88338, !noalias !88324
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88338
  store i64 %i.r, ptr %i.t, align 8, !dbg !88338, !noalias !88324
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3v_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5i_8for_each4callINtB1G_4SlotB3q_ENCINvMsj_B3t_IB3r_B6l_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88343, !noalias !88324
  ret void, !dbg !88344
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB38_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtB1F_11PhysNodeKeyB1z_E6insert0EE11spec_extendB1H_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88345 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88346), !dbg !88349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88350), !dbg !88349
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88352
  %i.c = load i8, ptr %i.b, align 8, !dbg !88352, !range !37148, !alias.scope !88359, !noalias !88364, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88352
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88352

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88368), !dbg !88371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88372), !dbg !88371
  %i.f = load i64, ptr %1, align 8, !dbg !88374, !alias.scope !88376, !noalias !88377, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88378, !alias.scope !88379, !noalias !88380, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88374
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88381

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88382
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_.exit, !dbg !88387

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88392      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88394
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88398, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88382 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88382, !alias.scope !88399, !noalias !88350, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88402, !range !2568, !alias.scope !88399, !noalias !88350, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88407
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88410
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_.exit, !dbg !88387, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 32), !dbg !88411, !noalias !88350
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_.exit, !dbg !88411

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88412, !noalias !88413
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88414
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88414, !alias.scope !88346, !noalias !88350, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88423, !alias.scope !88346, !noalias !88350, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88427, !noalias !88413
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88427
  store ptr %i.q, ptr %i.s, align 8, !dbg !88427, !noalias !88413
  store ptr %i.o, ptr %i.a, align 8, !dbg !88427, !noalias !88413
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88427
  store i64 %i.r, ptr %i.t, align 8, !dbg !88427, !noalias !88413
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_10PhysStreamEE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callINtB1G_4SlotB3y_ENCINvMsj_B3B_IB3z_B5B_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88432, !noalias !88413
  ret void, !dbg !88433
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3n_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyB1z_E5entry0EE11spec_extendB5d_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88434 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88435), !dbg !88438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88439), !dbg !88438
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88441
  %i.c = load i8, ptr %i.b, align 8, !dbg !88441, !range !37148, !alias.scope !88448, !noalias !88453, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88441
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88441

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88457), !dbg !88460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88461), !dbg !88460
  %i.f = load i64, ptr %1, align 8, !dbg !88463, !alias.scope !88465, !noalias !88466, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88467, !alias.scope !88468, !noalias !88469, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88463
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88470

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88471
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB35_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyB1m_E5entry0EEB4V_.exit, !dbg !88476

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88481      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88483
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88487, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88471 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88471, !alias.scope !88488, !noalias !88439, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88491, !range !2568, !alias.scope !88488, !noalias !88439, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88496
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88499
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB35_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyB1m_E5entry0EEB4V_.exit, !dbg !88476, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 16), !dbg !88500, !noalias !88439
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB35_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyB1m_E5entry0EEB4V_.exit, !dbg !88500

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88501, !noalias !88502
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB35_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyB1m_E5entry0EEB4V_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88503
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88503, !alias.scope !88435, !noalias !88439, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88512, !alias.scope !88435, !noalias !88439, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88516, !noalias !88502
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88516
  store ptr %i.q, ptr %i.s, align 8, !dbg !88516, !noalias !88502
  store ptr %i.o, ptr %i.a, align 8, !dbg !88516, !noalias !88502
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88516
  store i64 %i.r, ptr %i.t, align 8, !dbg !88516, !noalias !88502
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5a_8for_each4callINtB1G_4SlotB3s_ENCINvMsj_NtB3x_3vecINtB6D_3VecB6d_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88521, !noalias !88502
  ret void, !dbg !88522
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB37_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1z_E5entry0EE11spec_extendB4X_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88523 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88524), !dbg !88527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88528), !dbg !88527
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88530
  %i.c = load i8, ptr %i.b, align 8, !dbg !88530, !range !37148, !alias.scope !88537, !noalias !88542, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88530
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88530

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88546), !dbg !88549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88550), !dbg !88549
  %i.f = load i64, ptr %1, align 8, !dbg !88552, !alias.scope !88554, !noalias !88555, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88556, !alias.scope !88557, !noalias !88558, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88552
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88559

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88560
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2P_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4F_.exit, !dbg !88565

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88570      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88572
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88576, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88560 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88560, !alias.scope !88577, !noalias !88528, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88580, !range !2568, !alias.scope !88577, !noalias !88528, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88585
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88588
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2P_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4F_.exit, !dbg !88565, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 16), !dbg !88589, !noalias !88528
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2P_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4F_.exit, !dbg !88589

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88590, !noalias !88591
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2P_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4F_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88592
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88592, !alias.scope !88524, !noalias !88528, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88601, !alias.scope !88524, !noalias !88528, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88605, !noalias !88591
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88605
  store ptr %i.q, ptr %i.s, align 8, !dbg !88605, !noalias !88591
  store ptr %i.o, ptr %i.a, align 8, !dbg !88605, !noalias !88591
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88605
  store i64 %i.r, ptr %i.t, align 8, !dbg !88605, !noalias !88591
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsEE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4S_8for_each4callINtB1G_4SlotB3q_ENCINvMsj_NtB3v_3vecINtB6l_3VecB5V_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88610, !noalias !88591
  ret void, !dbg !88611
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan8PhysNodeEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtB1B_11PhysNodeKeyB1z_E6insert0EE11spec_extendB1D_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88612 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88613), !dbg !88616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88617), !dbg !88616
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88619
  %i.c = load i8, ptr %i.b, align 8, !dbg !88619, !range !37148, !alias.scope !88626, !noalias !88631, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88619
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88619

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88635), !dbg !88638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88639), !dbg !88638
  %i.f = load i64, ptr %1, align 8, !dbg !88641, !alias.scope !88643, !noalias !88644, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88645, !alias.scope !88646, !noalias !88647, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88641
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtB2A_8PhysNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88648

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88649
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan8PhysNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1o_11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88654

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtB2A_8PhysNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88659      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88661
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88665, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtB2A_8PhysNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88649 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88649, !alias.scope !88666, !noalias !88617, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88669, !range !2568, !alias.scope !88666, !noalias !88617, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88674
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88677
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan8PhysNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1o_11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88654, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 16, i64 noundef 448), !dbg !88678, !noalias !88617
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan8PhysNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1o_11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88678

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtB2A_8PhysNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88679, !noalias !88680
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan8PhysNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1o_11PhysNodeKeyB1m_E6insert0EEB1q_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88681
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88681, !alias.scope !88613, !noalias !88617, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88690, !alias.scope !88613, !noalias !88617, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88694, !noalias !88680
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88694
  store ptr %i.q, ptr %i.s, align 8, !dbg !88694, !noalias !88680
  store ptr %i.o, ptr %i.a, align 8, !dbg !88694, !noalias !88680
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88694
  store i64 %i.r, ptr %i.t, align 8, !dbg !88694, !noalias !88680
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtB2B_8PhysNodeE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callINtB1G_4SlotB3y_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecB50_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88699, !noalias !88680
  ret void, !dbg !88700
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2V_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtB1D_5graph14LogicalPipeKeyB1z_E6insert0EE11spec_extendB1D_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88701 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88702), !dbg !88705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88706), !dbg !88705
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88708
  %i.c = load i8, ptr %i.b, align 8, !dbg !88708, !range !37148, !alias.scope !88715, !noalias !88720, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88708
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88708

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88724), !dbg !88727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88728), !dbg !88727
  %i.f = load i64, ptr %1, align 8, !dbg !88730, !alias.scope !88732, !noalias !88733, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88734, !alias.scope !88735, !noalias !88736, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88730
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtNtB2C_4pipe12PhysicalPipeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88737

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88738
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph14LogicalPipeKeyB1m_E6insert0EEB1q_.exit, !dbg !88743

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtNtB2C_4pipe12PhysicalPipeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88748      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88750
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88754, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtNtB2C_4pipe12PhysicalPipeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88738 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88738, !alias.scope !88755, !noalias !88706, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88758, !range !2568, !alias.scope !88755, !noalias !88706, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88763
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88766
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph14LogicalPipeKeyB1m_E6insert0EEB1q_.exit, !dbg !88743, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 80), !dbg !88767, !noalias !88706
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph14LogicalPipeKeyB1m_E6insert0EEB1q_.exit, !dbg !88767

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtNtB2C_4pipe12PhysicalPipeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88768, !noalias !88769
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph14LogicalPipeKeyB1m_E6insert0EEB1q_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88770
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88770, !alias.scope !88702, !noalias !88706, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88779, !alias.scope !88702, !noalias !88706, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88783, !noalias !88769
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88783
  store ptr %i.q, ptr %i.s, align 8, !dbg !88783, !noalias !88769
  store ptr %i.o, ptr %i.a, align 8, !dbg !88783, !noalias !88769
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88783
  store i64 %i.r, ptr %i.t, align 8, !dbg !88783, !noalias !88769
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtNtB2D_4pipe12PhysicalPipeE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callINtB1G_4SlotB3s_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5w_3VecB56_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88788, !noalias !88769
  ret void, !dbg !88789
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2W_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtB1D_13physical_plan11PhysNodeKeyB1z_E6insert0EE11spec_extendB1D_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88790 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88791), !dbg !88794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88795), !dbg !88794
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88797
  %i.c = load i8, ptr %i.b, align 8, !dbg !88797, !range !37148, !alias.scope !88804, !noalias !88809, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88797
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88797

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88813), !dbg !88816
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88817), !dbg !88816
  %i.f = load i64, ptr %1, align 8, !dbg !88819, !alias.scope !88821, !noalias !88822, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88823, !alias.scope !88824, !noalias !88825, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88819
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtNtB2C_5graph12GraphNodeKeyE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88826

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88827
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_13physical_plan11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88832

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtNtB2C_5graph12GraphNodeKeyE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88837      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88839
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88843, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtNtB2C_5graph12GraphNodeKeyE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88827 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88827, !alias.scope !88844, !noalias !88795, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88847, !range !2568, !alias.scope !88844, !noalias !88795, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88852
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88855
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_13physical_plan11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88832, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 4, i64 noundef 12), !dbg !88856, !noalias !88795
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_13physical_plan11PhysNodeKeyB1m_E6insert0EEB1q_.exit, !dbg !88856

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtNtB2C_5graph12GraphNodeKeyE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88857, !noalias !88858
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_13physical_plan11PhysNodeKeyB1m_E6insert0EEB1q_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88859
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88859, !alias.scope !88791, !noalias !88795, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88868, !alias.scope !88791, !noalias !88795, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88872, !noalias !88858
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88872
  store ptr %i.q, ptr %i.s, align 8, !dbg !88872, !noalias !88858
  store ptr %i.o, ptr %i.a, align 8, !dbg !88872, !noalias !88858
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88872
  store i64 %i.r, ptr %i.t, align 8, !dbg !88872, !noalias !88858
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtNtB2D_5graph12GraphNodeKeyE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callINtB1G_4SlotB3y_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecB5d_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88877, !noalias !88858
  ret void, !dbg !88878
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream7metrics11NodeMetricsEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtB1D_5graph12GraphNodeKeyB1z_E5entry0EE11spec_extendB1D_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88879 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88880), !dbg !88883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88884), !dbg !88883
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88886
  %i.c = load i8, ptr %i.b, align 8, !dbg !88886, !range !37148, !alias.scope !88893, !noalias !88898, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88886
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88886

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88902), !dbg !88905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88906), !dbg !88905
  %i.f = load i64, ptr %1, align 8, !dbg !88908, !alias.scope !88910, !noalias !88911, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !88912, !alias.scope !88913, !noalias !88914, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88908
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtB2C_7metrics11NodeMetricsE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !88915

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88916
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream7metrics11NodeMetricsEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph12GraphNodeKeyB1m_E5entry0EEB1q_.exit, !dbg !88921

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtB2C_7metrics11NodeMetricsE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !88926      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !88928
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !88932, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtB2C_7metrics11NodeMetricsE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88916 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88916, !alias.scope !88933, !noalias !88884, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !88936, !range !2568, !alias.scope !88933, !noalias !88884, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !88941
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !88944
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream7metrics11NodeMetricsEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph12GraphNodeKeyB1m_E5entry0EEB1q_.exit, !dbg !88921, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 152), !dbg !88945, !noalias !88884
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream7metrics11NodeMetricsEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph12GraphNodeKeyB1m_E5entry0EEB1q_.exit, !dbg !88945

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtB2C_7metrics11NodeMetricsE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !88946, !noalias !88947
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtCs2g09Ig8GZd6_13polars_stream7metrics11NodeMetricsEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1q_5graph12GraphNodeKeyB1m_E5entry0EEB1q_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88948
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88948, !alias.scope !88880, !noalias !88884, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !88957, !alias.scope !88880, !noalias !88884, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88961, !noalias !88947
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88961
  store ptr %i.q, ptr %i.s, align 8, !dbg !88961, !noalias !88947
  store ptr %i.o, ptr %i.a, align 8, !dbg !88961, !noalias !88947
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88961
  store i64 %i.r, ptr %i.t, align 8, !dbg !88961, !noalias !88947
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtB2D_7metrics11NodeMetricsE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1G_4SlotB3q_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecB55_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !88963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88966, !noalias !88947
  ret void, !dbg !88967
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapB1z_B1z_E6insert0EE11spec_extendB1F_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88968 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88969), !dbg !88972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88973), !dbg !88972
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88975
  %i.c = load i8, ptr %i.b, align 8, !dbg !88975, !range !37148, !alias.scope !88982, !noalias !88987, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !88975
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !88975

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88991), !dbg !88994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88995), !dbg !88994
  %i.f = load i64, ptr %1, align 8, !dbg !88997, !alias.scope !88999, !noalias !89000, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89001, !alias.scope !89002, !noalias !89003, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !88997
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyB2y_E6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i, !dbg !89004

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89005
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapB1m_B1m_E6insert0EEB1s_.exit, !dbg !89010

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyB2y_E6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89015      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89017
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89021, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyB2y_E6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89005 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89005, !alias.scope !89022, !noalias !88973, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89025, !range !2568, !alias.scope !89022, !noalias !88973, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89030
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89033
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapB1m_B1m_E6insert0EEB1s_.exit, !dbg !89010, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 4, i64 noundef 12), !dbg !89034, !noalias !88973
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapB1m_B1m_E6insert0EEB1s_.exit, !dbg !89034

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyB2y_E6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89035, !noalias !89036
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapB1m_B1m_E6insert0EEB1s_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89037
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89037, !alias.scope !88969, !noalias !88973, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89046, !alias.scope !88969, !noalias !88973, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89050, !noalias !89036
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89050
  store ptr %i.q, ptr %i.s, align 8, !dbg !89050, !noalias !89036
  store ptr %i.o, ptr %i.a, align 8, !dbg !89050, !noalias !89036
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89050
  store i64 %i.r, ptr %i.t, align 8, !dbg !89050, !noalias !89036
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyB2z_E6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3F_8for_each4callINtB1G_4SlotB2z_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecB4I_E14extend_trustedBN_E0E0EB2F_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89055, !noalias !89036
  ret void, !dbg !89056
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotQNtNtCs2g09Ig8GZd6_13polars_stream5graph9GraphNodeEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2T_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtB1C_12GraphNodeKeyB1z_E6insert0EE11spec_extendB1E_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89057 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89058), !dbg !89061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89062), !dbg !89061
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89064
  %i.c = load i8, ptr %i.b, align 8, !dbg !89064, !range !37148, !alias.scope !89071, !noalias !89076, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89064
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89064

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89079
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89080), !dbg !89083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89084), !dbg !89083
  %i.f = load i64, ptr %1, align 8, !dbg !89086, !alias.scope !89088, !noalias !89089, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89090, !alias.scope !89091, !noalias !89092, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89086
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyQNtB2A_9GraphNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !89093

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89094
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotQNtNtCs2g09Ig8GZd6_13polars_stream5graph9GraphNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1p_12GraphNodeKeyB1m_E6insert0EEB1r_.exit, !dbg !89099

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyQNtB2A_9GraphNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89104      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89106
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89110, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyQNtB2A_9GraphNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89094 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89094, !alias.scope !89111, !noalias !89062, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89114, !range !2568, !alias.scope !89111, !noalias !89062, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89119
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89122
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotQNtNtCs2g09Ig8GZd6_13polars_stream5graph9GraphNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1p_12GraphNodeKeyB1m_E6insert0EEB1r_.exit, !dbg !89099, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 16), !dbg !89123, !noalias !89062
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotQNtNtCs2g09Ig8GZd6_13polars_stream5graph9GraphNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1p_12GraphNodeKeyB1m_E6insert0EEB1r_.exit, !dbg !89123

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyQNtB2A_9GraphNodeE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89124, !noalias !89125
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotQNtNtCs2g09Ig8GZd6_13polars_stream5graph9GraphNodeEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1p_12GraphNodeKeyB1m_E6insert0EEB1r_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89126
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89126, !alias.scope !89058, !noalias !89062, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89135, !alias.scope !89058, !noalias !89062, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89139, !noalias !89125
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89139
  store ptr %i.q, ptr %i.s, align 8, !dbg !89139, !noalias !89125
  store ptr %i.o, ptr %i.a, align 8, !dbg !89139, !noalias !89125
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89139
  store i64 %i.r, ptr %i.t, align 8, !dbg !89139, !noalias !89125
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyQNtB2B_9GraphNodeE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3R_8for_each4callINtB1G_4SlotB3q_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5k_3VecB4U_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89144, !noalias !89125
  ret void, !dbg !89145
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB26_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0EE11spec_extendB3W_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89146 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89147), !dbg !89150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89151), !dbg !89150
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89153
  %i.c = load i8, ptr %i.b, align 8, !dbg !89153, !range !37148, !alias.scope !89160, !noalias !89165, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89153
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89153

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89169), !dbg !89172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89173), !dbg !89172
  %i.f = load i64, ptr %1, align 8, !dbg !89175, !alias.scope !89177, !noalias !89178, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89179, !alias.scope !89180, !noalias !89181, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89175
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !89182

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89183
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0EEB3E_.exit, !dbg !89188

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89193      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89195
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89199, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89183 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89183, !alias.scope !89200, !noalias !89151, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89203, !range !2568, !alias.scope !89200, !noalias !89151, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89208
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89211
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0EEB3E_.exit, !dbg !89188, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 16), !dbg !89212, !noalias !89151
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0EEB3E_.exit, !dbg !89212

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89213, !noalias !89214
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0EEB3E_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89215
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89215, !alias.scope !89147, !noalias !89151, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89224, !alias.scope !89147, !noalias !89151, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89228, !noalias !89214
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89228
  store ptr %i.q, ptr %i.s, align 8, !dbg !89228, !noalias !89214
  store ptr %i.o, ptr %i.a, align 8, !dbg !89228, !noalias !89214
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89228
  store i64 %i.r, ptr %i.t, align 8, !dbg !89228, !noalias !89214
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyjE5entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callINtB1G_4SlotjENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecB4L_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89233, !noalias !89214
  ret void, !dbg !89234
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB26_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0EE11spec_extendB3W_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89235 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89236), !dbg !89239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89240), !dbg !89239
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89242
  %i.c = load i8, ptr %i.b, align 8, !dbg !89242, !range !37148, !alias.scope !89249, !noalias !89254, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89242
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89242

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89257
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89258), !dbg !89261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89262), !dbg !89261
  %i.f = load i64, ptr %1, align 8, !dbg !89264, !alias.scope !89266, !noalias !89267, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89268, !alias.scope !89269, !noalias !89270, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89264
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !89271

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89272
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0EEB3E_.exit, !dbg !89276

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89279      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89281
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89285, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89272 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89272, !alias.scope !89286, !noalias !89240, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89289, !range !2568, !alias.scope !89286, !noalias !89240, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89292
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89294
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0EEB3E_.exit, !dbg !89276, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 16), !dbg !89295, !noalias !89240
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0EEB3E_.exit, !dbg !89295

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89296, !noalias !89297
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotjEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0EEB3E_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89298
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89298, !alias.scope !89236, !noalias !89240, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89307, !alias.scope !89236, !noalias !89240, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89311, !noalias !89297
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89311
  store ptr %i.q, ptr %i.s, align 8, !dbg !89311, !noalias !89297
  store ptr %i.o, ptr %i.a, align 8, !dbg !89311, !noalias !89297
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89311
  store i64 %i.r, ptr %i.t, align 8, !dbg !89311, !noalias !89297
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyjE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callINtB1G_4SlotjENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecB4E_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89316, !noalias !89297
  ret void, !dbg !89317
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB26_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0EE11spec_extendB3W_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89318 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89319), !dbg !89322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89323), !dbg !89322
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89325
  %i.c = load i8, ptr %i.b, align 8, !dbg !89325, !range !37148, !alias.scope !89332, !noalias !89337, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89325
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89325

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89341), !dbg !89344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89345), !dbg !89344
  %i.f = load i64, ptr %1, align 8, !dbg !89347, !alias.scope !89349, !noalias !89350, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89351, !alias.scope !89352, !noalias !89353, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89347
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !89354

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89355
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0EEB3E_.exit, !dbg !89360

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89365      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89367
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89371, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89355 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89355, !alias.scope !89372, !noalias !89323, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89375, !range !2568, !alias.scope !89372, !noalias !89323, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89380
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89383
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0EEB3E_.exit, !dbg !89360, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 4, i64 noundef 4), !dbg !89384, !noalias !89323
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0EEB3E_.exit, !dbg !89384

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89385, !noalias !89386
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0EEB3E_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89387
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89387, !alias.scope !89319, !noalias !89323, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89396, !alias.scope !89319, !noalias !89323, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89400, !noalias !89386
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89400
  store ptr %i.q, ptr %i.s, align 8, !dbg !89400, !noalias !89386
  store ptr %i.o, ptr %i.a, align 8, !dbg !89400, !noalias !89386
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89400
  store i64 %i.r, ptr %i.t, align 8, !dbg !89400, !noalias !89386
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyuE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3J_8for_each4callINtB1G_4SlotuENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecB4M_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89405, !noalias !89386
  ret void, !dbg !89406
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB26_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0EE11spec_extendB3W_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89407 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89408), !dbg !89411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89412), !dbg !89411
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89414
  %i.c = load i8, ptr %i.b, align 8, !dbg !89414, !range !37148, !alias.scope !89421, !noalias !89426, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89414
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89414

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89430), !dbg !89433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89434), !dbg !89433
  %i.f = load i64, ptr %1, align 8, !dbg !89436, !alias.scope !89438, !noalias !89439, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89440, !alias.scope !89441, !noalias !89442, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89436
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i, !dbg !89443

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89444
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0EEB3E_.exit, !dbg !89448

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89451      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89453
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89457, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89444 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89444, !alias.scope !89458, !noalias !89412, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89461, !range !2568, !alias.scope !89458, !noalias !89412, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89464
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89466
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0EEB3E_.exit, !dbg !89448, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 4, i64 noundef 4), !dbg !89467, !noalias !89412
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0EEB3E_.exit, !dbg !89467

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89468, !noalias !89469
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0EEB3E_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89470
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89470, !alias.scope !89408, !noalias !89412, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89479, !alias.scope !89408, !noalias !89412, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89483, !noalias !89469
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89483
  store ptr %i.q, ptr %i.s, align 8, !dbg !89483, !noalias !89469
  store ptr %i.o, ptr %i.a, align 8, !dbg !89483, !noalias !89469
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89483
  store i64 %i.r, ptr %i.t, align 8, !dbg !89483, !noalias !89469
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callINtB1G_4SlotuENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecB4E_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89488, !noalias !89469
  ret void, !dbg !89489
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB26_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0EE11spec_extendB3Y_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89490 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89491), !dbg !89494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89495), !dbg !89494
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89497
  %i.c = load i8, ptr %i.b, align 8, !dbg !89497, !range !37148, !alias.scope !89504, !noalias !89509, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !89497
  br i1 %i.d, label %.thread.i, label %bb.b, !dbg !89497

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89513), !dbg !89516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89517), !dbg !89516
  %i.f = load i64, ptr %1, align 8, !dbg !89519, !alias.scope !89521, !noalias !89522, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !89523, !alias.scope !89524, !noalias !89525, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g, !dbg !89519
  br i1 %.not.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i, !dbg !89526

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89527
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0EEB3G_.exit, !dbg !89531

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i: ; preds = %bb.b
  %i.i = sub nuw i64 %i.g, %i.f, !dbg !89534      ; 2 uses
  %.not.i = icmp eq i64 %i.i, -1, !dbg !89536
  %i.j = add i64 %i.i, 1                          ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c, !dbg !89540, !prof !88219

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89527 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !89527, !alias.scope !89541, !noalias !89495, !noundef !13 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !dbg !89544, !range !2568, !alias.scope !89541, !noalias !89495, !noundef !13
  %i.n = sub i64 %i.m, %i.l, !dbg !89547
  %2 = icmp ugt i64 %i.j, %i.n, !dbg !89549
  br i1 %2, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0EEB3G_.exit, !dbg !89531, !prof !88232

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 4, i64 noundef 4), !dbg !89550, !noalias !89495
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0EEB3G_.exit, !dbg !89550

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2E_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34, !dbg !89551, !noalias !89552
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotuEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0EEB3G_.exit: ; preds = %.thread.i, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89553
  %i.q = load ptr, ptr %i.p, align 8, !dbg !89553, !alias.scope !89491, !noalias !89495, !nonnull !13, !noundef !13
  %i.r = load i64, ptr %i.o, align 8, !dbg !89562, !alias.scope !89491, !noalias !89495, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89566, !noalias !89552
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89566
  store ptr %i.q, ptr %i.s, align 8, !dbg !89566, !noalias !89552
  store ptr %i.o, ptr %i.a, align 8, !dbg !89566, !noalias !89552
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89566
  store i64 %i.r, ptr %i.t, align 8, !dbg !89566, !noalias !89552
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1G_12SecondaryMapNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5top_k6DfsKeyuE6insert0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callINtB1G_4SlotuENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecB4F_E14extend_trustedBN_E0E0EB2F_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !89568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89571, !noalias !89552
  ret void, !dbg !89572
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEINtB4_10SpecExtendBT_INtNtCscgRAwXFJnXP_4core6option8IntoIterBT_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89573 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89574), !dbg !89577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89578), !dbg !89577
  %.val.i = load ptr, ptr %1, align 8, !dbg !89580, !alias.scope !89578, !noalias !89574, !noundef !13 ; 4 uses
  %i.a = icmp ne ptr %.val.i, null, !dbg !89583
  %i.b = zext i1 %i.a to i64, !dbg !89583         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89590 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !89590, !alias.scope !89594, !noalias !89578, !noundef !13 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !dbg !89597, !range !2568, !alias.scope !89594, !noalias !89578, !noundef !13
  %i.f = sub i64 %i.e, %i.d, !dbg !89602
  %i.g = icmp ult i64 %i.f, %i.b, !dbg !89604
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89605, !prof !2580

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i unwind label %bb.c, !dbg !89606, !noalias !89578

._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !dbg !89607, !alias.scope !89574, !noalias !89578
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89606

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit_crit_edge.i ], [ %i.d, %bb.a ], !dbg !89607 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %.val.i, null, !dbg !89611
  br i1 %.not12.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit, label %._crit_edge.i.i.i, !dbg !89619

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89620
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89621
  %i.j = load ptr, ptr %i.i, align 8, !dbg !89621, !alias.scope !89574, !noalias !89578, !nonnull !13, !noundef !13
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h, !dbg !89630 ; 2 uses
  store ptr %.val.i, ptr %i.k, align 8, !dbg !89637, !noalias !89640
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !89637
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !dbg !89637
  %i.l = add i64 %i.h, 1, !dbg !89651
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !89619

.noexc5.i:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.m, !dbg !89654

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq ptr %.val.i, null, !dbg !89655
  br i1 %i.n, label %.noexc5.i, label %bb.d, !dbg !89655

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc5.i unwind label %bb.e, !dbg !89662

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !89654
  unreachable, !dbg !89654

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !89665
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !dbg !89666, !alias.scope !89574, !noalias !89673
  ret void, !dbg !89674
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB4_10SpecExtendBT_INtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBT_Kj1_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89675 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89676), !dbg !89679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89680), !dbg !89679
  %.val.i = load i64, ptr %1, align 8, !dbg !89682, !alias.scope !89680, !noalias !89676, !noundef !13 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89682
  %.val5.i = load i64, ptr %i.a, align 8, !dbg !89682, !alias.scope !89680, !noalias !89676, !noundef !13 ; 4 uses
  %i.b = sub nuw i64 %.val5.i, %.val.i, !dbg !89685 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89694 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !89694, !alias.scope !89698, !noalias !89680, !noundef !13 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !dbg !89701, !range !2568, !alias.scope !89698, !noalias !89680, !noundef !13
  %i.f = sub i64 %i.e, %i.d, !dbg !89706
  %i.g = icmp ugt i64 %i.b, %i.f, !dbg !89708
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89709, !prof !2580

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 8), !dbg !89710, !noalias !89680
  %.pre.i = load i64, ptr %i.c, align 8, !dbg !89711, !alias.scope !89676, !noalias !89680
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89710

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ], !dbg !89711 ; 3 uses
  %i.i = icmp ule i64 %.val.i, %.val5.i, !dbg !89715
  tail call void @llvm.assume(i1 %i.i), !dbg !89731
  %.not6.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !89734
  br i1 %.not6.i.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj1_EECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i.preheader.i.i.i, !dbg !89734

.lr.ph.i.preheader.i.i.i:                         ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !89735
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !89735, !alias.scope !89680, !noalias !89676
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89736
  %i.k = load ptr, ptr %i.j, align 8, !dbg !89736, !alias.scope !89676, !noalias !89680, !nonnull !13, !noundef !13
  %.not.i.i.i.i = icmp eq i64 %.val5.i, 1
  %i.l = icmp eq i64 %.val.i, 0, !dbg !89745
  tail call void @llvm.assume(i1 %i.l), !dbg !89755
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h, !dbg !89756
  store i64 %.sroa.57.0.copyload.i, ptr %i.m, align 8, !dbg !89770, !noalias !89773
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.n = add i64 %i.h, 1, !dbg !89791
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj1_EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !89734

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj1_EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, %.lr.ph.i.preheader.i.i.i
  %.val3.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.preheader.i.i.i ], [ %i.h, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !89794
  store i64 %.val3.i.i.i.i, ptr %i.c, align 8, !dbg !89795, !alias.scope !89676, !noalias !89806
  ret void, !dbg !89807
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB4_10SpecExtendBT_INtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89808 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89809), !dbg !89812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89813), !dbg !89812
  %.val.i = load i64, ptr %1, align 8, !dbg !89815, !alias.scope !89813, !noalias !89809, !noundef !13 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89815
  %.val5.i = load i64, ptr %i.a, align 8, !dbg !89815, !alias.scope !89813, !noalias !89809, !noundef !13 ; 3 uses
  %i.b = sub i64 %.val5.i, %.val.i, !dbg !89818   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89827 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !89827, !alias.scope !89831, !noalias !89813, !noundef !13 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !dbg !89834, !range !2568, !alias.scope !89831, !noalias !89813, !noundef !13
  %i.f = sub i64 %i.e, %i.d, !dbg !89839
  %i.g = icmp ugt i64 %i.b, %i.f, !dbg !89841
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89842, !prof !2580

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 8), !dbg !89843, !noalias !89813
  %.pre.i = load i64, ptr %i.c, align 8, !dbg !89844, !alias.scope !89809, !noalias !89813
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89843

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ], !dbg !89844 ; 3 uses
  %i.i = icmp ule i64 %.val.i, %.val5.i, !dbg !89848
  tail call void @llvm.assume(i1 %i.i), !dbg !89863
  %.not6.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !89866
  br i1 %.not6.i.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj2_EECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i.preheader.i.i.i, !dbg !89866

.lr.ph.i.preheader.i.i.i:                         ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89867
  %i.k = load ptr, ptr %i.j, align 8, !dbg !89867, !alias.scope !89809, !noalias !89813, !nonnull !13, !noundef !13
  %i.l = shl i64 %i.h, 3, !dbg !89866
  %scevgep.i.i.i = getelementptr i8, ptr %i.k, i64 %i.l, !dbg !89866
  %i.m = shl i64 %.val.i, 3, !dbg !89866
  %i.n = getelementptr i8, ptr %1, i64 %i.m, !dbg !89866
  %scevgep1.i.i.i = getelementptr i8, ptr %i.n, i64 16, !dbg !89866
  %i.o = shl i64 %i.b, 3, !dbg !89866
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.i.i.i, ptr readonly align 8 %scevgep1.i.i.i, i64 %i.o, i1 false), !dbg !89876, !noalias !89889
  %i.p = add i64 %i.b, %i.h, !dbg !89866
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj2_EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !89866

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj2_EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, %.lr.ph.i.preheader.i.i.i
  %.val3.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.preheader.i.i.i ], [ %i.h, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !89899
  store i64 %.val3.i.i.i.i, ptr %i.c, align 8, !dbg !89900, !alias.scope !89809, !noalias !89911
  ret void, !dbg !89914
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB4_10SpecExtendBT_INtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBT_Kj3_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89915 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89916), !dbg !89919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89920), !dbg !89919
  %.val.i = load i64, ptr %1, align 8, !dbg !89922, !alias.scope !89920, !noalias !89916, !noundef !13 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !89922
  %.val5.i = load i64, ptr %i.a, align 8, !dbg !89922, !alias.scope !89920, !noalias !89916, !noundef !13 ; 3 uses
  %i.b = sub i64 %.val5.i, %.val.i, !dbg !89925   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89934 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !89934, !alias.scope !89938, !noalias !89920, !noundef !13 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !dbg !89941, !range !2568, !alias.scope !89938, !noalias !89920, !noundef !13
  %i.f = sub i64 %i.e, %i.d, !dbg !89946
  %i.g = icmp ugt i64 %i.b, %i.f, !dbg !89948
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !89949, !prof !2580

end_hunk_0
begin_hunk_1_@llvm.umin.i8
!88032 = !{!88033}
!88033 = distinct !{!88033, !88034, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88034 = distinct !{!88034, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream"}
!88035 = !DILocation(line: 27, column: 14, scope: !88031)
!88036 = !DILocation(line: 812, column: 35, scope: !88037, inlinedAt: !88038)
!88037 = distinct !DISubprogram(name: "len<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE3lenCs2g09Ig8GZd6_13polars_stream", scope: !3843, file: !3842, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88038 = distinct !DILocation(line: 2502, column: 28, scope: !88039, inlinedAt: !88040)
!88039 = distinct !DISubprogram(name: "size_hint<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RNvXsi_NtCscgRAwXFJnXP_4core6optionINtB5_4ItemINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream", scope: !3847, file: !3842, line: 2501, type: !12, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88040 = distinct !DILocation(line: 2636, column: 20, scope: !88041, inlinedAt: !88042)
!88041 = distinct !DISubprogram(name: "size_hint<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RNvXsy_NtCscgRAwXFJnXP_4core6optionINtB5_8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream", scope: !3850, file: !3842, line: 2635, type: !2622, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88042 = distinct !DILocation(line: 4016, column: 36, scope: !88043, inlinedAt: !88044)
!88043 = distinct !DISubprogram(name: "extend_trusted<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EECs2g09Ig8GZd6_13polars_stream", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88044 = distinct !DILocation(line: 27, column: 14, scope: !88031)
!88045 = !DILocation(line: 1472, column: 26, scope: !88046, inlinedAt: !88047)
!88046 = distinct !DISubprogram(name: "reserve<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream", scope: !9, file: !8, line: 1471, type: !12, scopeLine: 1471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88047 = distinct !DILocation(line: 4024, column: 18, scope: !88048, inlinedAt: !88044)
!88048 = distinct !DILexicalBlock(scope: !88049, file: !8, line: 4017, column: 40)
!88049 = distinct !DILexicalBlock(scope: !88043, file: !8, line: 4016, column: 9)
!88050 = !{!88051, !88033}
!88051 = distinct !{!88051, !88052, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88052 = distinct !{!88052, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream"}
!88053 = !DILocation(line: 619, column: 49, scope: !88054, inlinedAt: !88055)
!88054 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 618, type: !12, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88055 = distinct !DILocation(line: 767, column: 27, scope: !88056, inlinedAt: !88057)
!88056 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 766, type: !12, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88057 = distinct !DILocation(line: 673, column: 17, scope: !88058, inlinedAt: !88059)
!88058 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner7reserveCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 655, type: !12, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88059 = distinct !DILocation(line: 341, column: 29, scope: !88060, inlinedAt: !88061)
!88060 = distinct !DISubprogram(name: "reserve<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE7reserveCs2g09Ig8GZd6_13polars_stream", scope: !35, file: !28, line: 339, type: !12, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88061 = distinct !DILocation(line: 1472, column: 18, scope: !88046, inlinedAt: !88047)
!88062 = !DILocation(line: 2548, column: 13, scope: !88063, inlinedAt: !88064)
!88063 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !2575, file: !2574, line: 2547, type: !12, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88064 = distinct !DILocation(line: 767, column: 56, scope: !88056, inlinedAt: !88057)
!88065 = !DILocation(line: 767, column: 9, scope: !88056, inlinedAt: !88057)
!88066 = !DILocation(line: 673, column: 12, scope: !88058, inlinedAt: !88059)
!88067 = !DILocation(line: 675, column: 17, scope: !88058, inlinedAt: !88059)
!88068 = !DILocation(line: 14, column: 35, scope: !88069, inlinedAt: !88070)
!88069 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !2585, file: !2584, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88070 = distinct !DILocation(line: 4027, column: 37, scope: !88071, inlinedAt: !88044)
!88071 = distinct !DILexicalBlock(scope: !88048, file: !8, line: 4026, column: 17)
!88072 = !DILocation(line: 2686, column: 29, scope: !88073, inlinedAt: !88076)
!88073 = distinct !DILexicalBlock(scope: !88074, file: !3350, line: 2686, column: 41)
!88074 = distinct !DILexicalBlock(scope: !88075, file: !3350, line: 2685, column: 9)
!88075 = distinct !DISubprogram(name: "fold<core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>>>", linkageName: "_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2j_8for_each4callBH_NCINvMsj_NtBM_3vecINtB3F_3VecBH_E14extend_trustedB3_E0E0ECs2g09Ig8GZd6_13polars_stream", scope: !3351, file: !3350, line: 2680, type: !12, scopeLine: 2680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88076 = distinct !DILocation(line: 887, column: 14, scope: !88077, inlinedAt: !88078)
!88077 = distinct !DISubprogram(name: "for_each<core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>>", linkageName: "_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtBM_3vecINtB3g_3VecBH_E14extend_trustedB3_E0ECs2g09Ig8GZd6_13polars_stream", scope: !3351, file: !3350, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88078 = distinct !DILocation(line: 4028, column: 26, scope: !88079, inlinedAt: !88044)
!88079 = distinct !DILexicalBlock(scope: !88071, file: !8, line: 4027, column: 17)
!88080 = !DILocation(line: 2686, column: 19, scope: !88073, inlinedAt: !88076)
!88081 = !DILocation(line: 614, column: 9, scope: !88082, inlinedAt: !88083)
!88082 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEECs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88083 = distinct !DILocation(line: 609, column: 14, scope: !88084, inlinedAt: !88085)
!88084 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEECs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88085 = distinct !DILocation(line: 296, column: 20, scope: !88086, inlinedAt: !88087)
!88086 = distinct !DISubprogram(name: "ptr<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88087 = distinct !DILocation(line: 2026, column: 18, scope: !88088, inlinedAt: !88089)
!88088 = distinct !DISubprogram(name: "as_mut_ptr<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE10as_mut_ptrCs2g09Ig8GZd6_13polars_stream", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88089 = distinct !DILocation(line: 4026, column: 32, scope: !88048, inlinedAt: !88044)
!88090 = !DILocation(line: 961, column: 18, scope: !88091, inlinedAt: !88092)
!88091 = distinct !DISubprogram(name: "add<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryE3addCs2g09Ig8GZd6_13polars_stream", scope: !52, file: !51, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88092 = distinct !DILocation(line: 4029, column: 36, scope: !88093, inlinedAt: !88094)
!88093 = distinct !DISubprogram(name: "{closure#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBI_EE0Cs2g09Ig8GZd6_13polars_stream", scope: !2639, file: !8, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88094 = distinct !DILocation(line: 884, column: 29, scope: !88095, inlinedAt: !88096)
!88095 = distinct !DISubprogram(name: "{closure#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENCINvMsj_NtB1k_3vecINtB2Z_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0Cs2g09Ig8GZd6_13polars_stream", scope: !3903, file: !3350, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88096 = distinct !DILocation(line: 2687, column: 21, scope: !88073, inlinedAt: !88076)
!88097 = !DILocation(line: 1921, column: 41, scope: !88098, inlinedAt: !88099)
!88098 = distinct !DISubprogram(name: "write<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88099 = distinct !DILocation(line: 4029, column: 21, scope: !88093, inlinedAt: !88094)
!88100 = !{!88101, !88103, !88105, !88107}
!88101 = distinct !{!88101, !88102, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBI_EE0Cs2g09Ig8GZd6_13polars_stream: argument 0"}
!88102 = distinct !{!88102, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecINtNtBa_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBI_EE0Cs2g09Ig8GZd6_13polars_stream"}
!88103 = distinct !{!88103, !88104, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENCINvMsj_NtB1k_3vecINtB2Z_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0Cs2g09Ig8GZd6_13polars_stream: argument 0"}
!88104 = distinct !{!88104, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENCINvMsj_NtB1k_3vecINtB2Z_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0Cs2g09Ig8GZd6_13polars_stream"}
!88105 = distinct !{!88105, !88106, !"_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2j_8for_each4callBH_NCINvMsj_NtBM_3vecINtB3F_3VecBH_E14extend_trustedB3_E0E0ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88106 = distinct !{!88106, !"_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2j_8for_each4callBH_NCINvMsj_NtBM_3vecINtB3F_3VecBH_E14extend_trustedB3_E0E0ECs2g09Ig8GZd6_13polars_stream"}
!88107 = distinct !{!88107, !88108, !"_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtBM_3vecINtB3g_3VecBH_E14extend_trustedB3_E0ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88108 = distinct !{!88108, !"_RINvYINtNtCscgRAwXFJnXP_4core6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtBM_3vecINtB3g_3VecBH_E14extend_trustedB3_E0ECs2g09Ig8GZd6_13polars_stream"}
!88109 = !DILocation(line: 19, column: 9, scope: !88110, inlinedAt: !88111)
!88110 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !2585, file: !2584, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88111 = distinct !DILocation(line: 4033, column: 31, scope: !88093, inlinedAt: !88094)
!88112 = !DILocation(line: 4015, column: 5, scope: !88043, inlinedAt: !88044)
!88113 = !DILocation(line: 810, column: 1, scope: !88114, inlinedAt: !88115)
!88114 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88115 = distinct !DILocation(line: 810, column: 1, scope: !88116, inlinedAt: !88117)
!88116 = distinct !DISubprogram(name: "drop_in_place<core::option::Item<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option4ItemINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88117 = distinct !DILocation(line: 810, column: 1, scope: !88118, inlinedAt: !88119)
!88118 = distinct !DISubprogram(name: "drop_in_place<core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88119 = distinct !DILocation(line: 4044, column: 5, scope: !88043, inlinedAt: !88044)
!88120 = !DILocation(line: 3956, column: 24, scope: !9285, inlinedAt: !88121)
!88121 = distinct !DILocation(line: 3193, column: 26, scope: !9287, inlinedAt: !88122)
!88122 = distinct !DILocation(line: 2814, column: 32, scope: !9279, inlinedAt: !88123)
!88123 = distinct !DILocation(line: 810, column: 1, scope: !9272, inlinedAt: !88124)
!88124 = distinct !DILocation(line: 810, column: 1, scope: !88114, inlinedAt: !88115)
!88125 = !{!88126, !88128, !88130, !88132, !88134, !88033}
!88126 = distinct !{!88126, !88127, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88127 = distinct !{!88127, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream"}
!88128 = distinct !{!88128, !88129, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88129 = distinct !{!88129, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEECs2g09Ig8GZd6_13polars_stream"}
!88130 = distinct !{!88130, !88131, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88131 = distinct !{!88131, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream"}
!88132 = distinct !{!88132, !88133, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option4ItemINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88133 = distinct !{!88133, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option4ItemINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream"}
!88134 = distinct !{!88134, !88135, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!88135 = distinct !{!88135, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEECs2g09Ig8GZd6_13polars_stream"}
!88136 = !DILocation(line: 2814, column: 12, scope: !9279, inlinedAt: !88123)
!88137 = !DILocation(line: 4387, column: 24, scope: !4753, inlinedAt: !88138)
!88138 = distinct !DILocation(line: 64, column: 9, scope: !9279, inlinedAt: !88123)
!88139 = !DILocation(line: 2857, column: 18, scope: !9279, inlinedAt: !88123)
!88140 = !DILocation(line: 2690, column: 5, scope: !88075, inlinedAt: !88076)
!88141 = !DILocation(line: 31, column: 9, scope: !2659, inlinedAt: !88142)
!88142 = distinct !DILocation(line: 810, column: 1, scope: !2662, inlinedAt: !88143)
!88143 = distinct !DILocation(line: 810, column: 1, scope: !88144, inlinedAt: !88145)
!88144 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecINtNtBR_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEE14extend_trustedINtNtB4_6option8IntoIterB1p_EE0ECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 810, type: !2622, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88145 = distinct !DILocation(line: 810, column: 1, scope: !88146, inlinedAt: !88147)
!88146 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global, core::option::IntoIter<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryENCINvMsj_NtB1L_3vecINtB3q_3VecB1G_E14extend_trustedINtNtB4_6option8IntoIterB1G_EE0E0ECs2g09Ig8GZd6_13polars_stream", scope: !44, file: !2649, line: 810, type: !2622, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88147 = distinct !DILocation(line: 2690, column: 5, scope: !88075, inlinedAt: !88076)
!88148 = !{!88105, !88107}
!88149 = !DILocation(line: 4044, column: 6, scope: !88043, inlinedAt: !88044)
!88150 = !DILocation(line: 28, column: 6, scope: !88031)
!88151 = distinct !DISubprogram(name: "spec_extend<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::LogicalPipeKey, alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3h_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtB1Y_5graph14LogicalPipeKeyB1z_E5entry0EE11spec_extendB1Y_", scope: !43613, file: !37969, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88152 = !{!88153}
!88153 = distinct !{!88153, !88154, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_: argument 0"}
!88154 = distinct !{!88154, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_"}
!88155 = !DILocation(line: 27, column: 14, scope: !88151)
!88156 = !{!88157}
!88157 = distinct !{!88157, !88154, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_: argument 1"}
!88158 = !DILocation(line: 563, column: 9, scope: !88159, inlinedAt: !88163)
!88159 = distinct !DISubprogram(name: "is_empty<usize>", linkageName: "_RNvMs8_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusivejE8is_emptyCs2g09Ig8GZd6_13polars_stream", scope: !88161, file: !88160, line: 559, type: !12, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88160 = !DIFile(filename: "library/core/src/ops/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "aa9e58e587ecf6fc84aabc8815f8ac79")
!88161 = !DINamespace(name: "RangeInclusive", scope: !88162)
!88162 = !DINamespace(name: "range", scope: !2629)
!88163 = distinct !DILocation(line: 1274, column: 17, scope: !88164, inlinedAt: !88166)
!88164 = distinct !DISubprogram(name: "size_hint<usize>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream", scope: !88165, file: !4477, line: 1273, type: !12, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88165 = !DINamespace(name: "{impl#15}", scope: !4479)
!88166 = distinct !DILocation(line: 112, column: 19, scope: !88167, inlinedAt: !88168)
!88167 = distinct !DISubprogram(name: "size_hint<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::LogicalPipeKey, alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_", scope: !3259, file: !3258, line: 111, type: !12, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88168 = distinct !DILocation(line: 4016, column: 36, scope: !88169, inlinedAt: !88170)
!88169 = distinct !DISubprogram(name: "extend_trusted<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::LogicalPipeKey, alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Z_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtB1L_5graph14LogicalPipeKeyB1m_E5entry0EEB1L_", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88170 = distinct !DILocation(line: 27, column: 14, scope: !88151)
!88171 = !{!88172, !88174, !88157}
!88172 = distinct !{!88172, !88173, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 1"}
!88173 = distinct !{!88173, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream"}
!88174 = distinct !{!88174, !88175, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 1"}
!88175 = distinct !{!88175, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_"}
!88176 = !{!88177, !88178, !88153}
!88177 = distinct !{!88177, !88173, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88178 = distinct !{!88178, !88175, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3w_4sync3ArcNtNtB2C_4pipe11PipeMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 0"}
!88179 = !DILocation(line: 563, column: 43, scope: !88159, inlinedAt: !88163)
!88180 = !{!88181}
!88181 = distinct !{!88181, !88182, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!88182 = distinct !{!88182, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!88183 = !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88163)
!88184 = !{!88185}
!88185 = distinct !{!88185, !88182, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!88186 = !DILocation(line: 1919, column: 50, scope: !88187, inlinedAt: !88188)
!88187 = distinct !DISubprogram(name: "le", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le", scope: !36438, file: !3303, line: 1919, type: !12, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88188 = distinct !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88163)
!88189 = !{!88181, !88172, !88174, !88157}
!88190 = !{!88185, !88177, !88178, !88153}
!88191 = !DILocation(line: 1919, column: 59, scope: !88187, inlinedAt: !88188)
!88192 = !{!88185, !88172, !88174, !88157}
!88193 = !{!88181, !88177, !88178, !88153}
!88194 = !DILocation(line: 1274, column: 12, scope: !88164, inlinedAt: !88166)
!88195 = !DILocation(line: 1472, column: 26, scope: !88196, inlinedAt: !88197)
!88196 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE7reserveB1J_", scope: !9, file: !8, line: 1471, type: !12, scopeLine: 1471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88197 = distinct !DILocation(line: 4024, column: 18, scope: !88198, inlinedAt: !88170)
!88198 = distinct !DILexicalBlock(scope: !88199, file: !8, line: 4017, column: 40)
!88199 = distinct !DILexicalBlock(scope: !88169, file: !8, line: 4016, column: 9)
!88200 = !DILocation(line: 673, column: 12, scope: !88201, inlinedAt: !88202)
!88201 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner7reserveCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 655, type: !12, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88202 = distinct !DILocation(line: 341, column: 29, scope: !88203, inlinedAt: !88204)
!88203 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecINtNtB7_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE7reserveB23_", scope: !35, file: !28, line: 339, type: !12, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88204 = distinct !DILocation(line: 1472, column: 18, scope: !88196, inlinedAt: !88197)
!88205 = !DILocation(line: 275, column: 37, scope: !88206, inlinedAt: !88207)
!88206 = distinct !DISubprogram(name: "steps_between", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step13steps_between", scope: !36464, file: !4477, line: 272, type: !2622, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88207 = distinct !DILocation(line: 1278, column: 20, scope: !88164, inlinedAt: !88166)
!88208 = !DILocation(line: 823, column: 37, scope: !88209, inlinedAt: !88210)
!88209 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !2575, file: !2574, line: 815, type: !12, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88210 = distinct !DILocation(line: 1279, column: 66, scope: !88211, inlinedAt: !88213)
!88211 = distinct !DISubprogram(name: "{closure#0}<usize>", linkageName: "_RNCNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBb_3ops5range14RangeInclusivejENtNtNtB9_6traits8iterator8Iterator9size_hint0Cs2g09Ig8GZd6_13polars_stream", scope: !88212, file: !4477, line: 1279, type: !12, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88212 = !DINamespace(name: "size_hint", scope: !88165)
!88213 = distinct !DILocation(line: 1546, column: 24, scope: !88214, inlinedAt: !88216)
!88214 = distinct !DILexicalBlock(scope: !88215, file: !3842, line: 1546, column: 13)
!88215 = distinct !DISubprogram(name: "and_then<usize, usize, core::iter::range::{impl#15}::size_hint::{closure_env#0}<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE8and_thenjNCNvXsd_NtNtB5_4iter5rangeINtNtNtB5_3ops5range14RangeInclusivejENtNtNtB14_6traits8iterator8Iterator9size_hint0ECs2g09Ig8GZd6_13polars_stream", scope: !3843, file: !3842, line: 1541, type: !12, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88216 = distinct !DILocation(line: 1279, column: 43, scope: !88217, inlinedAt: !88166)
!88217 = distinct !DILexicalBlock(scope: !88164, file: !4477, line: 1278, column: 9)
!88218 = !DILocation(line: 4017, column: 16, scope: !88198, inlinedAt: !88170)
!88219 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!88220 = !{!88221, !88153}
!88221 = distinct !{!88221, !88222, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE7reserveB1J_: argument 0"}
!88222 = distinct !{!88222, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE7reserveB1J_"}
!88223 = !DILocation(line: 619, column: 49, scope: !88224, inlinedAt: !88225)
!88224 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 618, type: !12, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88225 = distinct !DILocation(line: 767, column: 27, scope: !88226, inlinedAt: !88227)
!88226 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 766, type: !12, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88227 = distinct !DILocation(line: 673, column: 17, scope: !88201, inlinedAt: !88202)
!88228 = !DILocation(line: 2548, column: 13, scope: !88229, inlinedAt: !88230)
!88229 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !2575, file: !2574, line: 2547, type: !12, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88230 = distinct !DILocation(line: 767, column: 56, scope: !88226, inlinedAt: !88227)
!88231 = !DILocation(line: 767, column: 9, scope: !88226, inlinedAt: !88227)
!88232 = !{!"branch_weights", !"expected", i32 4299269, i32 2143184379}
!88233 = !DILocation(line: 675, column: 17, scope: !88201, inlinedAt: !88202)
!88234 = !DILocation(line: 4042, column: 13, scope: !88199, inlinedAt: !88170)
!88235 = !{!88153, !88157}
!88236 = !DILocation(line: 614, column: 9, scope: !88237, inlinedAt: !88238)
!88237 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecINtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEEB2i_", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88238 = distinct !DILocation(line: 609, column: 14, scope: !88239, inlinedAt: !88240)
!88239 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecINtNtB8_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEEB2d_", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88240 = distinct !DILocation(line: 296, column: 20, scope: !88241, inlinedAt: !88242)
!88241 = distinct !DISubprogram(name: "ptr<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecINtNtB7_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE3ptrB23_", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88242 = distinct !DILocation(line: 2026, column: 18, scope: !88243, inlinedAt: !88244)
!88243 = distinct !DISubprogram(name: "as_mut_ptr<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCs2g09Ig8GZd6_13polars_stream4pipe11PipeMetricsEEEE10as_mut_ptrB1J_", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88244 = distinct !DILocation(line: 4026, column: 32, scope: !88198, inlinedAt: !88170)
!88245 = !DILocation(line: 14, column: 35, scope: !88246, inlinedAt: !88247)
!88246 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !2585, file: !2584, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88247 = distinct !DILocation(line: 4027, column: 37, scope: !88248, inlinedAt: !88170)
!88248 = distinct !DILexicalBlock(scope: !88198, file: !8, line: 4026, column: 17)
!88249 = !DILocation(line: 4028, column: 35, scope: !88250, inlinedAt: !88170)
!88250 = distinct !DILexicalBlock(scope: !88248, file: !8, line: 4027, column: 17)
!88251 = !DILocation(line: 887, column: 14, scope: !88252, inlinedAt: !88253)
!88252 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::LogicalPipeKey, alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::LogicalPipeKey, alloc::vec::Vec<alloc::sync::Arc<polars_stream::pipe::PipeMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1A_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3r_4sync3ArcNtNtB2x_4pipe11PipeMetricsEEE5entry0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_B3p_IB3n_INtB1A_4SlotB3m_EE14extend_trustedB3_E0EB2x_", scope: !3351, file: !3350, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88253 = distinct !DILocation(line: 4028, column: 26, scope: !88250, inlinedAt: !88170)
!88254 = !DILocation(line: 4034, column: 18, scope: !88250, inlinedAt: !88170)
!88255 = !DILocation(line: 28, column: 6, scope: !88151)
!88256 = distinct !DISubprogram(name: "spec_extend<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::GraphNodeKey, alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3k_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1z_E5entry0EE11spec_extendB5a_", scope: !43613, file: !37969, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88257 = !{!88258}
!88258 = distinct !{!88258, !88259, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_: argument 0"}
!88259 = distinct !{!88259, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_"}
!88260 = !DILocation(line: 27, column: 14, scope: !88256)
!88261 = !{!88262}
!88262 = distinct !{!88262, !88259, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_: argument 1"}
!88263 = !DILocation(line: 563, column: 9, scope: !88159, inlinedAt: !88264)
!88264 = distinct !DILocation(line: 1274, column: 17, scope: !88164, inlinedAt: !88265)
!88265 = distinct !DILocation(line: 112, column: 19, scope: !88266, inlinedAt: !88267)
!88266 = distinct !DISubprogram(name: "size_hint<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::GraphNodeKey, alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_", scope: !3259, file: !3258, line: 111, type: !12, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88267 = distinct !DILocation(line: 4016, column: 36, scope: !88268, inlinedAt: !88269)
!88268 = distinct !DISubprogram(name: "extend_trusted<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::GraphNodeKey, alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_INtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB32_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyB1m_E5entry0EEB4S_", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88269 = distinct !DILocation(line: 27, column: 14, scope: !88256)
!88270 = !{!88271, !88273, !88262}
!88271 = distinct !{!88271, !88272, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 1"}
!88272 = distinct !{!88272, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream"}
!88273 = distinct !{!88273, !88274, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 1"}
!88274 = distinct !{!88274, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_"}
!88275 = !{!88276, !88277, !88258}
!88276 = distinct !{!88276, !88272, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88277 = distinct !{!88277, !88274, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3u_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 0"}
!88278 = !DILocation(line: 563, column: 43, scope: !88159, inlinedAt: !88264)
!88279 = !{!88280}
!88280 = distinct !{!88280, !88281, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!88281 = distinct !{!88281, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!88282 = !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88264)
!88283 = !{!88284}
!88284 = distinct !{!88284, !88281, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!88285 = !DILocation(line: 1919, column: 50, scope: !88187, inlinedAt: !88286)
!88286 = distinct !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88264)
!88287 = !{!88280, !88271, !88273, !88262}
!88288 = !{!88284, !88276, !88277, !88258}
!88289 = !DILocation(line: 1919, column: 59, scope: !88187, inlinedAt: !88286)
!88290 = !{!88284, !88271, !88273, !88262}
!88291 = !{!88280, !88276, !88277, !88258}
!88292 = !DILocation(line: 1274, column: 12, scope: !88164, inlinedAt: !88265)
!88293 = !DILocation(line: 1472, column: 26, scope: !88294, inlinedAt: !88295)
!88294 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE7reserveCs2g09Ig8GZd6_13polars_stream", scope: !9, file: !8, line: 1471, type: !12, scopeLine: 1471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88295 = distinct !DILocation(line: 4024, column: 18, scope: !88296, inlinedAt: !88269)
!88296 = distinct !DILexicalBlock(scope: !88297, file: !8, line: 4017, column: 40)
!88297 = distinct !DILexicalBlock(scope: !88268, file: !8, line: 4016, column: 9)
!88298 = !DILocation(line: 673, column: 12, scope: !88299, inlinedAt: !88300)
!88299 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner7reserveCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 655, type: !12, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88300 = distinct !DILocation(line: 341, column: 29, scope: !88301, inlinedAt: !88302)
!88301 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecINtNtB7_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE7reserveCs2g09Ig8GZd6_13polars_stream", scope: !35, file: !28, line: 339, type: !12, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88302 = distinct !DILocation(line: 1472, column: 18, scope: !88294, inlinedAt: !88295)
!88303 = !DILocation(line: 275, column: 37, scope: !88206, inlinedAt: !88304)
!88304 = distinct !DILocation(line: 1278, column: 20, scope: !88164, inlinedAt: !88265)
!88305 = !DILocation(line: 823, column: 37, scope: !88209, inlinedAt: !88306)
!88306 = distinct !DILocation(line: 1279, column: 66, scope: !88211, inlinedAt: !88307)
!88307 = distinct !DILocation(line: 1546, column: 24, scope: !88214, inlinedAt: !88308)
!88308 = distinct !DILocation(line: 1279, column: 43, scope: !88217, inlinedAt: !88265)
!88309 = !DILocation(line: 4017, column: 16, scope: !88296, inlinedAt: !88269)
!88310 = !{!88311, !88258}
!88311 = distinct !{!88311, !88312, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE7reserveCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88312 = distinct !{!88312, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE7reserveCs2g09Ig8GZd6_13polars_stream"}
!88313 = !DILocation(line: 619, column: 49, scope: !88314, inlinedAt: !88315)
!88314 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 618, type: !12, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88315 = distinct !DILocation(line: 767, column: 27, scope: !88316, inlinedAt: !88317)
!88316 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 766, type: !12, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88317 = distinct !DILocation(line: 673, column: 17, scope: !88299, inlinedAt: !88300)
!88318 = !DILocation(line: 2548, column: 13, scope: !88319, inlinedAt: !88320)
!88319 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !2575, file: !2574, line: 2547, type: !12, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88320 = distinct !DILocation(line: 767, column: 56, scope: !88316, inlinedAt: !88317)
!88321 = !DILocation(line: 767, column: 9, scope: !88316, inlinedAt: !88317)
!88322 = !DILocation(line: 675, column: 17, scope: !88299, inlinedAt: !88300)
!88323 = !DILocation(line: 4042, column: 13, scope: !88297, inlinedAt: !88269)
!88324 = !{!88258, !88262}
!88325 = !DILocation(line: 614, column: 9, scope: !88326, inlinedAt: !88327)
!88326 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecINtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEECs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88327 = distinct !DILocation(line: 609, column: 14, scope: !88328, inlinedAt: !88329)
!88328 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecINtNtB8_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEECs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88329 = distinct !DILocation(line: 296, column: 20, scope: !88330, inlinedAt: !88331)
!88330 = distinct !DISubprogram(name: "ptr<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecINtNtB7_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88331 = distinct !DILocation(line: 2026, column: 18, scope: !88332, inlinedAt: !88333)
!88332 = distinct !DISubprogram(name: "as_mut_ptr<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_INtNtB6_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEEE10as_mut_ptrCs2g09Ig8GZd6_13polars_stream", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88333 = distinct !DILocation(line: 4026, column: 32, scope: !88296, inlinedAt: !88269)
!88334 = !DILocation(line: 14, column: 35, scope: !88335, inlinedAt: !88336)
!88335 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !2585, file: !2584, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88336 = distinct !DILocation(line: 4027, column: 37, scope: !88337, inlinedAt: !88269)
!88337 = distinct !DILexicalBlock(scope: !88296, file: !8, line: 4026, column: 17)
!88338 = !DILocation(line: 4028, column: 35, scope: !88339, inlinedAt: !88269)
!88339 = distinct !DILexicalBlock(scope: !88337, file: !8, line: 4027, column: 17)
!88340 = !DILocation(line: 887, column: 14, scope: !88341, inlinedAt: !88342)
!88341 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::GraphNodeKey, alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<slotmap::secondary::Slot<alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::entry::{closure_env#0}<polars_stream::graph::GraphNodeKey, alloc::vec::Vec<alloc::sync::Arc<polars_async::executor::TaskMetrics, alloc::alloc::Global>, alloc::alloc::Global>>>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1A_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB3p_4sync3ArcNtNtCsidoPH4Qgqxm_12polars_async8executor11TaskMetricsEEE5entry0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_B3n_IB3l_INtB1A_4SlotB3k_EE14extend_trustedB3_E0EB2x_", scope: !3351, file: !3350, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88342 = distinct !DILocation(line: 4028, column: 26, scope: !88339, inlinedAt: !88269)
!88343 = !DILocation(line: 4034, column: 18, scope: !88339, inlinedAt: !88269)
!88344 = !DILocation(line: 28, column: 6, scope: !88256)
!88345 = distinct !DISubprogram(name: "spec_extend<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::insert::{closure_env#0}<polars_stream::physical_plan::PhysNodeKey, alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBK_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB38_3ops5range14RangeInclusivejENCNvMs_BW_INtBW_12SecondaryMapNtB1F_11PhysNodeKeyB1z_E6insert0EE11spec_extendB1H_", scope: !43613, file: !37969, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88346 = !{!88347}
!88347 = distinct !{!88347, !88348, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_: argument 0"}
!88348 = distinct !{!88348, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_"}
!88349 = !DILocation(line: 27, column: 14, scope: !88345)
!88350 = !{!88351}
!88351 = distinct !{!88351, !88348, !"_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_: argument 1"}
!88352 = !DILocation(line: 563, column: 9, scope: !88159, inlinedAt: !88353)
!88353 = distinct !DILocation(line: 1274, column: 17, scope: !88164, inlinedAt: !88354)
!88354 = distinct !DILocation(line: 112, column: 19, scope: !88355, inlinedAt: !88356)
!88355 = distinct !DISubprogram(name: "size_hint<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::insert::{closure_env#0}<polars_stream::physical_plan::PhysNodeKey, alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_", scope: !3259, file: !3258, line: 111, type: !12, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88356 = distinct !DILocation(line: 4016, column: 36, scope: !88357, inlinedAt: !88358)
!88357 = distinct !DISubprogram(name: "extend_trusted<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::insert::{closure_env#0}<polars_stream::physical_plan::PhysNodeKey, alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>>", linkageName: "_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBx_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2Q_3ops5range14RangeInclusivejENCNvMs_BJ_INtBJ_12SecondaryMapNtB1s_11PhysNodeKeyB1m_E6insert0EEB1u_", scope: !9, file: !8, line: 4015, type: !12, scopeLine: 4015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88358 = distinct !DILocation(line: 27, column: 14, scope: !88345)
!88359 = !{!88360, !88362, !88351}
!88360 = distinct !{!88360, !88361, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 1"}
!88361 = distinct !{!88361, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream"}
!88362 = distinct !{!88362, !88363, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 1"}
!88363 = distinct !{!88363, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_"}
!88364 = !{!88365, !88366, !88347}
!88365 = distinct !{!88365, !88361, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream: argument 0"}
!88366 = distinct !{!88366, !88363, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1F_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2A_10PhysStreamEE6insert0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2C_: argument 0"}
!88367 = !DILocation(line: 563, column: 43, scope: !88159, inlinedAt: !88353)
!88368 = !{!88369}
!88369 = distinct !{!88369, !88370, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!88370 = distinct !{!88370, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!88371 = !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88353)
!88372 = !{!88373}
!88373 = distinct !{!88373, !88370, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!88374 = !DILocation(line: 1919, column: 50, scope: !88187, inlinedAt: !88375)
!88375 = distinct !DILocation(line: 563, column: 28, scope: !88159, inlinedAt: !88353)
!88376 = !{!88369, !88360, !88362, !88351}
!88377 = !{!88373, !88365, !88366, !88347}
!88378 = !DILocation(line: 1919, column: 59, scope: !88187, inlinedAt: !88375)
!88379 = !{!88373, !88360, !88362, !88351}
!88380 = !{!88369, !88365, !88366, !88347}
!88381 = !DILocation(line: 1274, column: 12, scope: !88164, inlinedAt: !88354)
!88382 = !DILocation(line: 1472, column: 26, scope: !88383, inlinedAt: !88384)
!88383 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE7reserveB1s_", scope: !9, file: !8, line: 1471, type: !12, scopeLine: 1471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88384 = distinct !DILocation(line: 4024, column: 18, scope: !88385, inlinedAt: !88358)
!88385 = distinct !DILexicalBlock(scope: !88386, file: !8, line: 4017, column: 40)
!88386 = distinct !DILexicalBlock(scope: !88357, file: !8, line: 4016, column: 9)
!88387 = !DILocation(line: 673, column: 12, scope: !88388, inlinedAt: !88389)
!88388 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner7reserveCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 655, type: !12, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88389 = distinct !DILocation(line: 341, column: 29, scope: !88390, inlinedAt: !88391)
!88390 = distinct !DISubprogram(name: "reserve<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE7reserveB1M_", scope: !35, file: !28, line: 339, type: !12, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88391 = distinct !DILocation(line: 1472, column: 18, scope: !88383, inlinedAt: !88384)
!88392 = !DILocation(line: 275, column: 37, scope: !88206, inlinedAt: !88393)
!88393 = distinct !DILocation(line: 1278, column: 20, scope: !88164, inlinedAt: !88354)
!88394 = !DILocation(line: 823, column: 37, scope: !88209, inlinedAt: !88395)
!88395 = distinct !DILocation(line: 1279, column: 66, scope: !88211, inlinedAt: !88396)
!88396 = distinct !DILocation(line: 1546, column: 24, scope: !88214, inlinedAt: !88397)
!88397 = distinct !DILocation(line: 1279, column: 43, scope: !88217, inlinedAt: !88354)
!88398 = !DILocation(line: 4017, column: 16, scope: !88385, inlinedAt: !88358)
!88399 = !{!88400, !88347}
!88400 = distinct !{!88400, !88401, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE7reserveB1s_: argument 0"}
!88401 = distinct !{!88401, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE7reserveB1s_"}
!88402 = !DILocation(line: 619, column: 49, scope: !88403, inlinedAt: !88404)
!88403 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 618, type: !12, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88404 = distinct !DILocation(line: 767, column: 27, scope: !88405, inlinedAt: !88406)
!88405 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs2g09Ig8GZd6_13polars_stream", scope: !29, file: !28, line: 766, type: !12, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88406 = distinct !DILocation(line: 673, column: 17, scope: !88388, inlinedAt: !88389)
!88407 = !DILocation(line: 2548, column: 13, scope: !88408, inlinedAt: !88409)
!88408 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !2575, file: !2574, line: 2547, type: !12, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88409 = distinct !DILocation(line: 767, column: 56, scope: !88405, inlinedAt: !88406)
!88410 = !DILocation(line: 767, column: 9, scope: !88405, inlinedAt: !88406)
!88411 = !DILocation(line: 675, column: 17, scope: !88388, inlinedAt: !88389)
!88412 = !DILocation(line: 4042, column: 13, scope: !88386, inlinedAt: !88358)
!88413 = !{!88347, !88351}
!88414 = !DILocation(line: 614, column: 9, scope: !88415, inlinedAt: !88416)
!88415 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEEB21_", scope: !29, file: !28, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88416 = distinct !DILocation(line: 609, column: 14, scope: !88417, inlinedAt: !88418)
!88417 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB8_3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEEB1W_", scope: !29, file: !28, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88418 = distinct !DILocation(line: 296, column: 20, scope: !88419, inlinedAt: !88420)
!88419 = distinct !DISubprogram(name: "ptr<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtB7_3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE3ptrB1M_", scope: !35, file: !28, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88420 = distinct !DILocation(line: 2026, column: 18, scope: !88421, inlinedAt: !88422)
!88421 = distinct !DISubprogram(name: "as_mut_ptr<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotIBv_NtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEEE10as_mut_ptrB1s_", scope: !9, file: !8, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88422 = distinct !DILocation(line: 4026, column: 32, scope: !88385, inlinedAt: !88358)
!88423 = !DILocation(line: 14, column: 35, scope: !88424, inlinedAt: !88425)
!88424 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !2585, file: !2584, line: 13, type: !12, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88425 = distinct !DILocation(line: 4027, column: 37, scope: !88426, inlinedAt: !88358)
!88426 = distinct !DILexicalBlock(scope: !88385, file: !8, line: 4026, column: 17)
!88427 = !DILocation(line: 4028, column: 35, scope: !88428, inlinedAt: !88358)
!88428 = distinct !DILexicalBlock(scope: !88426, file: !8, line: 4027, column: 17)
!88429 = !DILocation(line: 887, column: 14, scope: !88430, inlinedAt: !88431)
!88430 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::insert::{closure_env#0}<polars_stream::physical_plan::PhysNodeKey, alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<slotmap::secondary::Slot<alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>, alloc::alloc::Global, core::iter::adapters::map::Map<core::ops::range::RangeInclusive<usize>, slotmap::secondary::{impl#1}::insert::{closure_env#0}<polars_stream::physical_plan::PhysNodeKey, alloc::vec::Vec<polars_stream::physical_plan::PhysStream, alloc::alloc::Global>>>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB1A_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2v_10PhysStreamEE6insert0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_B3v_IB3t_INtB1A_4SlotB3s_EE14extend_trustedB3_E0EB2x_", scope: !3351, file: !3350, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!88431 = distinct !DILocation(line: 4028, column: 26, scope: !88428, inlinedAt: !88358)
!88432 = !DILocation(line: 4034, column: 18, scope: !88428, inlinedAt: !88358)
end_hunk_1
