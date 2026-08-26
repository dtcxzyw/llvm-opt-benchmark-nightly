Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/all_about_inserts_sqlite-9421b6281ebfe520.all_about_inserts_sqlite.d4075c7161359f8f-cgu.3?download=true
inline.NumInlined: 218
inline.NumDeleted: 140
begin_hunk_0_@_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableINtNtB2K_30insert_with_default_for_sqlite24SqliteBatchInsertWrapperINtNtCs40k4W9msRzi_5alloc3vec3VecINtB2K_12ValuesClauseINtNtB7_10insertable17ColumnInsertValueNtNtB3H_7columns4nameRINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextReEEB3F_EEB3F_uKb0_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableINtNtB2K_30insert_with_default_for_sqlite24SqliteBatchInsertWrapperINtNtCs40k4W9msRzi_5alloc3vec3VecINtB2K_12ValuesClauseTINtNtB7_10insertable17ColumnInsertValueNtNtB3H_7columns4nameRINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextReEEIB6H_NtB7l_10hair_colorRIB7G_INtB8f_8NullableB8d_EB8z_EEEB3F_EEB3F_uKb0_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !alias.scope !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %8, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.m, align 8
  call fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.d, ptr %.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableINtNtB10_30insert_with_default_for_sqlite24SqliteBatchInsertWrapperINtNtCs40k4W9msRzi_5alloc3vec3VecINtB10_12ValuesClauseTINtNtB8_10insertable17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEIB4X_NtB5B_10hair_colorRIB5W_INtB6v_8NullableB6t_EB6P_EEEB1V_EEB1V_uKb0_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE13construct_sqlB21_, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableINtNtB10_30insert_with_default_for_sqlite24SqliteBatchInsertWrapperINtNtCs40k4W9msRzi_5alloc3vec3VecINtB10_12ValuesClauseTINtNtB8_10insertable17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEIB4X_NtB5B_10hair_colorRIB5W_INtB6v_8NullableB6t_EB6P_EEEB1V_EEB1V_uKb0_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE25is_safe_to_cache_preparedB21_, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableNtB2K_13DefaultValuesEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  store i64 1, ptr %i.c, align 8, !alias.scope !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.b, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %8, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.g, i64 32
  %.val = load ptr, ptr %i.n, align 8
  call fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.e, ptr %.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableNtB10_13DefaultValuesEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE13construct_sqlB21_, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableNtB10_13DefaultValuesEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE25is_safe_to_cache_preparedB21_, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB2K_12ValuesClauseINtNtB7_10insertable28DefaultableColumnInsertValueINtB57_17ColumnInsertValueNtNtB3H_7columns4nameRINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextReEEEB3F_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !alias.scope !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %8, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.m, align 8
  call fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.d, ptr %.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseINtNtB8_10insertable28DefaultableColumnInsertValueINtB3n_17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE13construct_sqlB21_, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseINtNtB8_10insertable28DefaultableColumnInsertValueINtB3n_17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE25is_safe_to_cache_preparedB21_, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB2K_12ValuesClauseTINtNtB7_10insertable17ColumnInsertValueNtNtB3H_7columns4nameRINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextReEEINtB58_28DefaultableColumnInsertValueIB56_NtB5K_10hair_colorRIB65_INtB6E_8NullableB6C_EB6Y_EEEEB3F_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !alias.scope !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %8, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.m, align 8
  call fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.d, ptr %.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseTINtNtB8_10insertable17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEINtB3o_28DefaultableColumnInsertValueIB3m_NtB40_10hair_colorRIB4l_INtB4U_8NullableB4S_EB5e_EEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE13construct_sqlB21_, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseTINtNtB8_10insertable17ColumnInsertValueNtNtB1X_7columns4nameRINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextReEEINtB3o_28DefaultableColumnInsertValueIB3m_NtB40_10hair_colorRIB4l_INtB4U_8NullableB4S_EB5e_EEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE25is_safe_to_cache_preparedB21_, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB2K_12ValuesClauseTINtNtB7_10insertable28DefaultableColumnInsertValueINtB58_17ColumnInsertValueNtNtB3H_7columns4nameINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextRReEEEIB56_IB5U_NtB6l_10hair_colorIB6F_INtB7e_8NullableB7c_EB7y_EEEEB3F_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionEB3L_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !alias.scope !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %8, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.m, align 8
  call fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.d, ptr %.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseTINtNtB8_10insertable28DefaultableColumnInsertValueINtB3o_17ColumnInsertValueNtNtB1X_7columns4nameINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextRReEEEIB3m_IB4a_NtB4B_10hair_colorIB4V_INtB5u_8NullableB5s_EB5O_EEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE13construct_sqlB21_, ptr nonnull @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheRINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsicCGYGrxCr3_24all_about_inserts_sqlite6schema5users5tableRINtB10_12ValuesClauseTINtNtB8_10insertable28DefaultableColumnInsertValueINtB3o_17ColumnInsertValueNtNtB1X_7columns4nameINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextRReEEEIB3m_IB4a_NtB4B_10hair_colorIB4V_INtB5u_8NullableB5s_EB5O_EEEEB1V_EEINtB4_31QueryFragmentForCachedStatementNtNtNtB8_6sqlite7backend6SqliteE25is_safe_to_cache_preparedB21_, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2X_B3Y_E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.32.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.s = load i64, ptr %2, align 8, !range !40, !alias.scope !38, !noalias !41, !noundef !6
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114, label %bb.b

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.8.copyload6 = load i64, ptr %i.u, align 8, !alias.scope !44, !noalias !45
  %.sroa.11.8..sroa_idx9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.11.8.copyload10 = load i64, ptr %.sroa.11.8..sroa_idx9, align 8, !alias.scope !44, !noalias !45
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46
  call void %.24.val(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4), !noalias !47, !inline_history !48
  %i.v = load i64, ptr %i.e, align 8, !range !49, !noalias !46, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.i.sroa.0.0.copyload93 = load i64, ptr %i.w, align 8, !noalias !46 ; 4 uses
  %.sroa.6.i.sroa.7.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.i.sroa.7.0.copyload96 = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx95, align 8, !noalias !46 ; 4 uses
  %.sroa.6.i.sroa.8.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.i.sroa.8.0.copyload100 = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx99, align 8, !noalias !46 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  br i1 %.not.i, label %bb.c, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46
  store i64 %.sroa.6.i.sroa.0.0.copyload93, ptr %i.d, align 8, !noalias !46
  %.sroa.6.i.sroa.7.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.6.i.sroa.7.0.copyload96, ptr %.sroa.6.i.sroa.7.0..sroa_idx97, align 8, !noalias !46
  %.sroa.6.i.sroa.8.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.i.sroa.8.0.copyload100, ptr %.sroa.6.i.sroa.8.0..sroa_idx101, align 8, !noalias !46
  %i.x = icmp eq i64 %6, 0
  %i.y = ptrtoint ptr %.sroa.6.i.sroa.8.0.copyload100 to i64 ; 2 uses
  br i1 %i.x, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !50
  %i.z = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !50 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i, label %bb.e

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %6) #21
          to label %.noexc.i unwind label %bb.f, !noalias !47

.noexc.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %5, i64 range(i64 0, -9223372036854775808) %6, i1 false), !noalias !56
  br label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.g, !noalias !47

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !47
  unreachable

common.resume:                                    ; preds = %.thread128, %bb.am, %bb.af, %bb.al, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %.pn153, %bb.al ], [ %.pn32131, %.thread128 ], [ %i.bu, %bb.af ], [ %.pn30, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.c, %bb.e
  %.sroa.5.0.i = phi ptr [ %i.z, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46
  %i.ad = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload93, -2
  br i1 %i.ad, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread, label %bb.h

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread: ; preds = %bb.b, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  %.sroa.8.0113 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload96, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %i.v, %bb.b ]
  %.sroa.11.0112 = phi i64 [ %i.y, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %.sroa.6.i.sroa.0.0.copyload93, %bb.b ]
  %.sroa.12.0111 = phi i64 [ %6, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %.sroa.6.i.sroa.7.0.copyload96, %bb.b ]
  %.sroa.13.0110 = phi ptr [ %.sroa.5.0.i, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %.sroa.6.i.sroa.8.0.copyload100, %bb.b ]
  store i64 %.sroa.8.0113, ptr %0, align 8, !alias.scope !57
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0112, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !57
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0111, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !57
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.13.0110, ptr %.sroa.616.0..sroa_idx, align 8, !alias.scope !57
  br label %bb.ae

bb.h:                                             ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  %.sroa.0.0124 = phi i64 [ -1, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114 ], [ %.sroa.6.i.sroa.0.0.copyload93, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ]
  %.sroa.8.0123 = phi i64 [ %.sroa.8.8.copyload6, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114 ], [ %.sroa.6.i.sroa.7.0.copyload96, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ]
  %.sroa.11.0122 = phi i64 [ %.sroa.11.8.copyload10, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114 ], [ %i.y, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ]
  %.sroa.13.0120 = phi ptr [ undef, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread114 ], [ %.sroa.5.0.i, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ]
  store i64 %.sroa.0.0124, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i64 %.sroa.8.0123, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 %.sroa.11.0122, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %6, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %.sroa.13.0120, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %6, ptr %.sroa.812.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void %.32.val1(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread128

bb.j:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.q, align 8, !range !49, !noundef !6
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.k, label %bb.at

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !61, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ah, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ai = load i64, ptr %i.r, align 8, !range !65, !alias.scope !62, !noalias !66, !noundef !6
  %.not.i39 = icmp eq i64 %i.ai, -1
  br i1 %.not.i39, label %bb.m, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread: ; preds = %bb.l
  %i.aj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !62, !noalias !66, !nonnull !6, !noundef !6
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !62, !noalias !66, !noundef !6
  br label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread147

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69
  invoke void %.24.val(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4)
          to label %.noexc unwind label %bb.i, !inline_history !70

.noexc:                                           ; preds = %bb.m
  %i.al = load i64, ptr %i.c, align 8, !range !49, !noalias !69, !noundef !6 ; 2 uses
  %.not1.i = icmp eq i64 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.819.8.copyload22 = load i64, ptr %i.am, align 8, !noalias !71 ; 2 uses
  %.sroa.1123.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1123.8.copyload27 = load ptr, ptr %.sroa.1123.8..sroa_idx26, align 8, !noalias !71 ; 2 uses
  %.sroa.1228.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.1228.8.copyload32 = load i64, ptr %.sroa.1228.8..sroa_idx31, align 8, !noalias !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69
  br i1 %.not1.i, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread147, label %bb.x

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void %.32.val(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.an = load i64, ptr %i.n, align 8, !range !72, !noundef !6
  switch i64 %i.an, label %bb.ab [
    i64 -3, label %bb.z
    i64 -2, label %bb.ad
  ]

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread147: ; preds = %.noexc, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread
  %i.ao = phi i64 [ -1, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ], [ %.sroa.819.8.copyload22, %.noexc ] ; 2 uses
  %.sroa.1123.1145 = phi ptr [ %i.aj, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ], [ %.sroa.1123.8.copyload27, %.noexc ] ; 2 uses
  %.sroa.1228.1144 = phi i64 [ %i.ak, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ], [ %.sroa.1228.8.copyload32, %.noexc ] ; 2 uses
  store i64 %i.ao, ptr %i.p, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.1123.1145, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.1228.1144, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %.sroa.3.0.copyload, align 8, !noalias !73, !nonnull !6, !noundef !6
  invoke void %i.ap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1123.1145, i64 noundef %.sroa.1228.1144, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.441.0.copyload, i64 noundef %.sroa.542.0.copyload)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit unwind label %bb.o, !inline_history !79

bb.o:                                             ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread147
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.p) #22
          to label %.thread128 unwind label %bb.w

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread147
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ar = load i64, ptr %i.o, align 8, !range !49, !alias.scope !83, !noalias !80, !noundef !6
  %.not.i42 = icmp eq i64 %i.ar, -1
  br i1 %.not.i42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !alias.scope !85
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.q:                                             ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !83, !noalias !80, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.au, align 8, !alias.scope !80, !noalias !83
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.av, align 8, !alias.scope !80, !noalias !83
  store i64 -1, ptr %0, align 8, !alias.scope !80, !noalias !83
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aw = icmp eq i64 %i.ao, -1
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.r

bb.r:                                             ; preds = %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.p, align 8, !range !86, !alias.scope !87, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ay, label %.thread128, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i.i = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !96, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !97
  br label %.thread128

bb.u:                                             ; preds = %bb.r
  %.val.i.i.i = load i64, ptr %i.p, align 8, !range !86, !alias.scope !87, !noundef !6 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i.i = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !96, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !100
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.v, %bb.u, %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.r)
  br label %bb.ae

bb.w:                                             ; preds = %bb.al, %.thread128, %bb.ao, %bb.am, %bb.ag, %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.x:                                             ; preds = %.noexc
  store i64 %i.al, ptr %0, align 8, !alias.scope !103
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.8.copyload22, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !103
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1123.8.copyload27, ptr %.sroa.538.0..sroa_idx, align 8, !alias.scope !103
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1228.8.copyload32, ptr %.sroa.639.0..sroa_idx, align 8, !alias.scope !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.y

bb.y:                                             ; preds = %bb.at, %bb.x
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.r)
  br label %bb.ae

bb.z:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bc = load i64, ptr %i.h, align 8, !range !65, !alias.scope !107, !noalias !110, !noundef !6
  %.not.i43 = icmp eq i64 %i.bc, -1
  br i1 %.not.i43, label %bb.aa, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread: ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !107, !noalias !110, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !107, !noalias !110, !noundef !6
  br label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread177

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  invoke void %.24.val(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4)
          to label %.noexc47 unwind label %bb.an, !inline_history !70

.noexc47:                                         ; preds = %bb.aa
  %i.bh = load i64, ptr %i.b, align 8, !range !49, !noalias !113, !noundef !6 ; 2 uses
  %.not1.i46 = icmp eq i64 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.868.8.copyload71 = load i64, ptr %i.bi, align 8, !noalias !114 ; 2 uses
  %.sroa.1172.8..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1172.8.copyload76 = load ptr, ptr %.sroa.1172.8..sroa_idx75, align 8, !noalias !114 ; 2 uses
  %.sroa.1277.8..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.1277.8.copyload81 = load i64, ptr %.sroa.1277.8..sroa_idx80, align 8, !noalias !114 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  br i1 %.not1.i46, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread177, label %bb.as

bb.ab:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.bj = load i64, ptr %i.l, align 8, !range !65, !alias.scope !115, !noalias !118, !noundef !6
  %.not.i49 = icmp eq i64 %i.bj, -1
  br i1 %.not.i49, label %bb.ac, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread: ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !115, !noalias !118, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !115, !noalias !118, !noundef !6
  br label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  invoke void %.24.val(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4)
          to label %.noexc53 unwind label %.split.thread, !inline_history !70

.split.thread:                                    ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.noexc53:                                         ; preds = %bb.ac
  %i.bp = load i64, ptr %i.a, align 8, !range !49, !noalias !121, !noundef !6 ; 2 uses
  %.not1.i52 = icmp eq i64 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.845.8.copyload48 = load i64, ptr %i.bq, align 8, !noalias !122 ; 2 uses
  %.sroa.1149.8..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.1149.8.copyload53 = load ptr, ptr %.sroa.1149.8..sroa_idx52, align 8, !noalias !122 ; 2 uses
  %.sroa.1254.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1254.8.copyload58 = load i64, ptr %.sroa.1254.8..sroa_idx57, align 8, !noalias !122 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  br i1 %.not1.i52, label %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_6sqlite7backend6SqliteENtNtNtB2T_10connection4stmt9StatementEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.ad:                                            ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE12map_to_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE10for_sourceCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread, %bb.aj, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.af:                                            ; preds = %bb.ag
  br i1 %.sroa.019.2, label %bb.al, label %common.resume

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163: ; preds = %.noexc53, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread
  %.sroa.1254.1162 = phi i64 [ %i.bn, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread ], [ %.sroa.1254.8.copyload58, %.noexc53 ] ; 2 uses
  %.sroa.1149.1161 = phi ptr [ %i.bl, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread ], [ %.sroa.1149.8.copyload53, %.noexc53 ] ; 2 uses
  %.sroa.845.1160 = phi i64 [ -1, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread ], [ %.sroa.845.8.copyload48, %.noexc53 ]
  store i64 %.sroa.845.1160, ptr %i.k, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.1149.1161, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.1254.1162, ptr %.sroa.561.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(48) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1149.1161, i64 noundef %.sroa.1254.1162, i1 noundef zeroext true)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163
  %.sroa.019.2 = phi i1 [ false, %bb.ah ], [ true, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163 ]
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.k) #22
          to label %bb.af unwind label %bb.w

bb.ah:                                            ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit54.thread163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  invoke void @_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.i)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_6sqlite7backend6SqliteENtNtNtB2T_10connection4stmt9StatementEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %.noexc53
  store i64 %i.bp, ptr %0, align 8, !alias.scope !123
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.845.8.copyload48, ptr %.sroa.463.0..sroa_idx, align 8, !alias.scope !123
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1149.8.copyload53, ptr %.sroa.564.0..sroa_idx, align 8, !alias.scope !123
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1254.8.copyload58, ptr %.sroa.665.0..sroa_idx, align 8, !alias.scope !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_6sqlite7backend6SqliteENtNtNtB2T_10connection4stmt9StatementEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.al:                                            ; preds = %.split.thread, %bb.af
  %.pn153 = phi { ptr, i32 } [ %i.bo, %.split.thread ], [ %i.bu, %bb.af ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %common.resume unwind label %bb.w

bb.am:                                            ; preds = %bb.ao, %bb.an
  %.pn30 = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %i.bx, %bb.ao ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.h) #22
          to label %common.resume unwind label %bb.w

bb.an:                                            ; preds = %bb.aa, %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit61
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread177: ; preds = %.noexc47, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread
  %.sroa.1277.1176 = phi i64 [ %i.bg, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread ], [ %.sroa.1277.8.copyload81, %.noexc47 ] ; 2 uses
  %.sroa.1172.1175 = phi ptr [ %i.be, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread ], [ %.sroa.1172.8.copyload76, %.noexc47 ] ; 2 uses
  %.sroa.868.1174 = phi i64 [ -1, %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread ], [ %.sroa.868.8.copyload71, %.noexc47 ]
  store i64 %.sroa.868.1174, ptr %i.g, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.1172.1175, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.1277.1176, ptr %.sroa.584.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.390.0.copyload = load ptr, ptr %.sroa.390.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.491.0.copyload = load ptr, ptr %.sroa.491.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.592.0.copyload = load i64, ptr %.sroa.592.0..sroa_idx, align 8
  %i.bw = load ptr, ptr %.sroa.390.0.copyload, align 8, !noalias !127, !nonnull !6, !noundef !6
  invoke void %i.bw(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1172.1175, i64 noundef %.sroa.1277.1176, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.491.0.copyload, i64 noundef %.sroa.592.0.copyload)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit59 unwind label %bb.ao, !inline_history !79

bb.ao:                                            ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread177
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.am unwind label %bb.w

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit59: ; preds = %_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsicCGYGrxCr3_24all_about_inserts_sqlite.exit48.thread177
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.by = load i64, ptr %i.f, align 8, !range !49, !alias.scope !136, !noalias !133, !noundef !6
  %.not.i60 = icmp eq i64 %i.by, -1
  br i1 %.not.i60, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !138
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit61

bb.aq:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0CsicCGYGrxCr3_24all_about_inserts_sqlite.exit59
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !136, !noalias !133, !nonnull !6, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cb, align 8, !alias.scope !133, !noalias !136
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %i.cc, align 8, !alias.scope !133, !noalias !136
  store i64 -1, ptr %0, align 8, !alias.scope !133, !noalias !136
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit61

_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit61: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ar unwind label %bb.an

bb.ar:                                            ; preds = %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsicCGYGrxCr3_24all_about_inserts_sqlite.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.as:                                            ; preds = %.noexc47
  store i64 %i.bh, ptr %0, align 8, !alias.scope !139
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.868.8.copyload71, ptr %.sroa.486.0..sroa_idx, align 8, !alias.scope !139
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1172.8.copyload76, ptr %.sroa.587.0..sroa_idx, align 8, !alias.scope !139
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1277.8.copyload81, ptr %.sroa.688.0..sroa_idx, align 8, !alias.scope !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.at:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

.thread128:                                       ; preds = %bb.t, %bb.s, %bb.o, %bb.i
  %.pn32131 = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %lpad.thr_comm.split-lp, %bb.i ], [ %i.ax, %bb.s ], [ %i.ax, %bb.t ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_6sqlite7backend6SqliteEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(48) %i.r) #22
          to label %common.resume unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !86, !alias.scope !143, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !146
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !86, !alias.scope !143, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = shl nuw i64 %.val, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !149
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB1h_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !86, !alias.scope !152, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !155
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !86, !alias.scope !152, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !158
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBM_3ptr8non_null7NonNullShEEEENtNtNtBM_3ops4drop4Drop4dropCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !86, !alias.scope !161, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !164
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !86, !alias.scope !161, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !167
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !86, !alias.scope !170, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !178
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !range !86, !alias.scope !170, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !181
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecPeEEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !alias.scope !184, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecPeEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecPeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !range !86, !alias.scope !189, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecPeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !189, !nonnull !6, !noundef !6
  %i.f = shl nuw i64 %.val2.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecPeEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !range !86, !alias.scope !189, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecPeEEEECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !189, !nonnull !6, !noundef !6
  %i.i = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #20
end_hunk_0
