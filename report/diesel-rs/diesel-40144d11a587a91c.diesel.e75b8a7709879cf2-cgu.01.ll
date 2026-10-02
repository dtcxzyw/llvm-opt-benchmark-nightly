Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.01?download=true
inline.NumInlined: 402
inline.NumDeleted: 168
begin_hunk_0_@_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseINtNtNtB9_12query_source5joins6JoinOnINtB1Y_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB2M_12pg_namespace5tableNtB1Y_5InnerEINtNtNtB9_10expression7grouped7GroupedINtNtB4b_9operators2EqINtNtB4b_8nullable8NullableNtNtB2K_7columns12typnamespaceEIB55_NtNtB3t_7columns3oidEEEEEINtNtB7_13select_clause12SelectClauseTNtB5x_3oidNtB5x_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseIB47_INtB4L_3AndIB47_IB4J_NtB5x_7typnameINtNtB4b_5bound5BoundNtNtB9_9sql_types4TextReEEEIB47_IB4J_NtB67_7nspnameB9q_EEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB9r_NtB9N_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB2O_7backend2PgE8walk_astB9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !noalias !710
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.p, ptr %i.x, align 8, !noalias !711
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg13query_builder12limit_offsetINtNtNtBb_13query_builder19limit_offset_clause17LimitOffsetClauseINtNtB17_12limit_clause11LimitClauseINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types6BigIntxEENtNtB17_13offset_clause14NoOffsetClauseEINtB17_13QueryFragmentNtNtB9_7backend2PgE8walk_astBb_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a), !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !711
  %i.y = load i64, ptr %i.b, align 8, !range !4, !noalias !711, !noundef !5
  %.not7.i = icmp eq i64 %i.y, -1
  br i1 %.not7.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !711
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseINtNtNtB9_12query_source5joins6JoinOnINtB1Y_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB2M_12pg_namespace5tableNtB1Y_5InnerEINtNtNtB9_10expression7grouped7GroupedINtNtB4b_9operators2EqINtNtB4b_8nullable8NullableNtNtB2K_7columns12typnamespaceEIB55_NtNtB3t_7columns3oidEEEEEINtNtB7_13select_clause12SelectClauseTNtB5x_3oidNtB5x_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseIB47_INtB4L_3AndIB47_IB4J_NtB5x_7typnameINtNtB4b_5bound5BoundNtNtB9_9sql_types4TextReEEEIB47_IB4J_NtB67_7nspnameB9q_EEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB9r_NtB9N_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB2O_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !711
  store i64 -1, ptr %0, align 8, !alias.scope !708, !noalias !713
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseINtNtNtB9_12query_source5joins6JoinOnINtB1Y_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB2M_12pg_namespace5tableNtB1Y_5InnerEINtNtNtB9_10expression7grouped7GroupedINtNtB4b_9operators2EqINtNtB4b_8nullable8NullableNtNtB2K_7columns12typnamespaceEIB55_NtNtB3t_7columns3oidEEEEEINtNtB7_13select_clause12SelectClauseTNtB5x_3oidNtB5x_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseIB47_INtB4L_3AndIB47_IB4J_NtB5x_7typnameINtNtB4b_5bound5BoundNtNtB9_9sql_types4TextReEEEIB47_IB4J_NtB67_7nspnameB9q_EEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB9r_NtB9N_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB2O_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseINtNtNtB9_12query_source5joins6JoinOnINtB1Y_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB2M_12pg_namespace5tableNtB1Y_5InnerEINtNtNtB9_10expression7grouped7GroupedINtNtB4b_9operators2EqINtNtB4b_8nullable8NullableNtNtB2K_7columns12typnamespaceEIB55_NtNtB3t_7columns3oidEEEEEINtNtB7_13select_clause12SelectClauseTNtB5x_3oidNtB5x_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseIB47_INtB4L_3AndIB47_IB4J_NtB5x_7typnameINtNtB4b_5bound5BoundNtNtB9_9sql_types4TextReEEEIB47_IB4J_NtB67_7nspnameB9q_EEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB9r_NtB9N_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB2O_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgE8walk_astB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.i = load i64, ptr %2, align 8, !range !21, !alias.scope !719, !noalias !720, !noundef !5
  switch i64 %i.i, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !719, !noalias !720, !nonnull !5, !align !13, !noundef !5
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 7), !noalias !721
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !719, !noalias !720, !nonnull !5, !noundef !5
  store i8 0, ptr %i.m, align 1, !noalias !721
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !719, !noalias !720, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !noalias !720
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.p, ptr %i.q, align 8, !noalias !721
  call void @_RNvXs6_NtNtCsjRvGck33osM_6diesel13query_builder13select_clauseINtB5_12SelectClauseTNtNtNtNtNtB9_2pg15metadata_lookup7pg_type7columns3oidNtB1l_8typarrayEEINtB7_13QueryFragmentNtNtB1r_7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !721
  %i.r = load i64, ptr %i.h, align 8, !range !4, !noalias !721, !noundef !5
  %.not1.i = icmp eq i64 %i.r, -1
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !721
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !noalias !720
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.p, ptr %i.s, align 8, !noalias !721
  call void @_RNvXs7_NtNtCsjRvGck33osM_6diesel13query_builder11from_clauseINtB5_10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtB7_13QueryFragmentNtNtB1k_7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !721
  %i.t = load i64, ptr %i.f, align 8, !range !4, !noalias !721, !noundef !5
  %.not2.i = icmp eq i64 %i.t, -1
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !721
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !noalias !720
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.p, ptr %i.u, align 8, !noalias !721
  call void @_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder12where_clauseINtB5_11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB1l_9operators2EqNtNtNtNtNtB9_2pg15metadata_lookup7pg_type7columns3oidINtNtB1l_11sql_literal10SqlLiteralNtNtNtB2m_5types9sql_types3OidINtB38_13UncheckedBindIB36_B3D_EINtNtB1l_5bound5BoundNtNtB9_9sql_types4TextReEEEEEEINtB7_13QueryFragmentNtNtB2m_7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !721
  %i.v = load i64, ptr %i.d, align 8, !range !4, !noalias !721, !noundef !5
  %.not3.i = icmp eq i64 %i.v, -1
  br i1 %.not3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !721
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !721
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !noalias !720
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.p, ptr %i.x, align 8, !noalias !721
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg13query_builder12limit_offsetINtNtNtBb_13query_builder19limit_offset_clause17LimitOffsetClauseINtNtB17_12limit_clause11LimitClauseINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types6BigIntxEENtNtB17_13offset_clause14NoOffsetClauseEINtB17_13QueryFragmentNtNtB9_7backend2PgE8walk_astBb_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  %i.y = load i64, ptr %i.b, align 8, !range !4, !noalias !721, !noundef !5
  %.not7.i = icmp eq i64 %i.y, -1
  br i1 %.not7.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !721
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !721
  store i64 -1, ptr %0, align 8, !alias.scope !718, !noalias !723
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit

_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1X_7columns3oidNtB3j_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB5c_9operators2EqB3h_INtNtB5c_11sql_literal10SqlLiteralNtNtNtB21_5types9sql_types3OidINtB6c_13UncheckedBindIB6a_B6H_EINtNtB5c_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7I_NtB84_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentNtNtB21_7backend2PgNtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB9_.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB5_15MysqlConnectionNtNtB9_4r2d214R2D2Connection4ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel9query_dsl8load_dslNtNtB8_4r2d220CheckConnectionQueryINtB4_10ExecuteDslNtNtNtB8_5mysql10connection15MysqlConnectionNtNtB1G_7backend5MysqlE7executeB8_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB5_15MysqlConnectionNtNtB9_4r2d214R2D2Connection9is_broken(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvYNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager22AnsiTransactionManagerINtB4_18TransactionManagerNtNtNtB8_5mysql10connection15MysqlConnectionE29is_broken_transaction_managerB8_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement9dsl_implsINtB7_15SelectStatementINtNtB9_11from_clause10FromClauseINtNtNtBb_12query_source5joins6JoinOnINtB2a_4JoinNtNtNtNtBb_2pg15metadata_lookup7pg_type5tableNtNtB2Y_12pg_namespace5tableNtB2a_5InnerEINtNtNtBb_10expression7grouped7GroupedINtNtB4n_9operators2EqINtNtB4n_8nullable8NullableNtNtB2W_7columns12typnamespaceEIB5h_NtNtB3F_7columns3oidEEEEEINtNtB9_13select_clause12SelectClauseTNtB5J_3oidNtB5J_8typarrayEEEINtNtNtBb_9query_dsl10filter_dsl9FilterDslIB4j_IB4V_NtB5J_7typnameINtNtB4n_5bound5BoundNtNtBb_9sql_types4TextReEEEE6filterBb_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement9dsl_implsINtB7_15SelectStatementINtNtB9_11from_clause10FromClauseINtNtNtBb_12query_source5joins6JoinOnINtB2a_4JoinNtNtNtNtBb_2pg15metadata_lookup7pg_type5tableNtNtB2Y_12pg_namespace5tableNtB2a_5InnerEINtNtNtBb_10expression7grouped7GroupedINtNtB4n_9operators2EqINtNtB4n_8nullable8NullableNtNtB2W_7columns12typnamespaceEIB5h_NtNtB3F_7columns3oidEEEEEINtNtB9_13select_clause12SelectClauseTNtB5J_3oidNtB5J_8typarrayEENtNtB9_15distinct_clause16NoDistinctClauseINtNtB9_12where_clause11WhereClauseIB4j_IB4V_NtB5J_7typnameINtNtB4n_5bound5BoundNtNtBb_9sql_types4TextReEEEEEINtNtNtBb_9query_dsl10filter_dsl9FilterDslIB4j_IB4V_NtB6j_7nspnameB9m_EEE6filterBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement9dsl_implsINtB7_15SelectStatementINtNtB9_11from_clause10FromClauseNtNtNtNtBb_2pg15metadata_lookup7pg_type5tableEINtNtB9_13select_clause12SelectClauseTNtNtB29_7columns3oidNtB3v_8typarrayEEEINtNtNtBb_9query_dsl10filter_dsl9FilterDslINtNtNtBb_10expression7grouped7GroupedINtNtB4Q_9operators2EqB3t_INtNtB4Q_11sql_literal10SqlLiteralNtNtNtB2d_5types9sql_types3OidINtB5Q_13UncheckedBindIB5O_B6l_EINtNtB4Q_5bound5BoundNtNtBb_9sql_types4TextReEEEEEE6filterBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection6cursorNtB5_14RowByRowCursorNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !13, !noundef !5 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !13
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 29 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection15get_next_result(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.q = load i64, ptr %i.c, align 8, !range !9, !alias.scope !742, !noalias !743, !noundef !5
  %.not = icmp eq i64 %i.q, 0
  %i.r = invoke noundef i8 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection18transaction_status(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  switch i8 %i.r, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.c:                                             ; preds = %.noexc
  store i64 2199023255552, ptr %i.m, align 8, !alias.scope !744, !noalias !745
  br label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit

bb.d:                                             ; preds = %.noexc
  %i.s = load i8, ptr %.sroa.35.0..sroa_idx.i, align 1, !range !15, !alias.scope !744, !noalias !745, !noundef !5 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.t = load i8, ptr %.sroa.35.0..sroa_idx.i, align 1, !range !15, !alias.scope !744, !noalias !745, !noundef !5
  switch i8 %i.t, label %bb.k [
    i8 -1, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
    i8 2, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
  ]

bb.f:                                             ; preds = %.noexc
  store i8 -1, ptr %.sroa.35.0..sroa_idx.i, align 1, !alias.scope !744, !noalias !745
  br label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit

bb.g:                                             ; preds = %bb.d
  switch i8 %i.s, label %bb.i [
    i8 -1, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
    i8 2, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
  ]

bb.h:                                             ; preds = %bb.d
  switch i8 %i.s, label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit [
    i8 -1, label %bb.j
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.l, align 4, !alias.scope !744, !noalias !745
  br label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit

bb.j:                                             ; preds = %bb.h, %bb.h
  store i8 -1, ptr %.sroa.35.0..sroa_idx.i, align 1, !alias.scope !744, !noalias !745
  br label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit

bb.k:                                             ; preds = %bb.e
  store i8 1, ptr %i.l, align 4, !alias.scope !744, !noalias !745
  br label %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit

bb.l:                                             ; preds = %bb.m, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #23
          to label %common.resume unwind label %bb.n, !noalias !741

_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.g, %bb.f, %bb.e, %bb.e, %bb.c, %.noexc
  %i.v = load i64, ptr %i.c, align 8, !range !9, !alias.scope !742, !noalias !743, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.m, label %_RINvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_statusINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB2_6result8PgResultEEB6_.exit

bb.m:                                             ; preds = %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !746
  store ptr %i.f, ptr %i.a, align 8, !noalias !746
  store ptr %i.n, ptr %i.o, align 8, !noalias !746
  %i.x = load ptr, ptr %i.p, align 8, !invariant.load !5, !noalias !747, !nonnull !5
  invoke void %i.x(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) @45)
          to label %.noexc3 unwind label %bb.l, !inline_history !738

.noexc3:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !746
  br label %_RINvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_statusINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB2_6result8PgResultEEB6_.exit

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !741
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.ag, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_statusINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB2_6result8PgResultEEB6_.exit: ; preds = %.noexc3, %_RNvNvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_status17non_generic_inner.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !alias.scope !748, !noalias !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load i64, ptr %i.d, align 8, !range !9, !noundef !5 ; 2 uses
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit: ; preds = %_RINvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_statusINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB2_6result8PgResultEEB6_.exit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultEEB15_(ptr noalias noundef align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.o:                                             ; preds = %_RINvNtNtCsjRvGck33osM_6diesel2pg10connection33update_transaction_manager_statusINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB2_6result8PgResultEEB6_.exit
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.ae = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ae(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @58)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.d, align 8, !range !9, !alias.scope !750
  %i.af = icmp eq i64 %.pre, 0
  br i1 %i.af, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultEEB15_(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit4

.thread:                                          ; preds = %bb.o, %bb.q
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit4: ; preds = %bb.r, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_(ptr noalias noundef align 8 dereferenceable(48) %i.d) #23
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs3_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row3RowNtNtBb_7backend5MysqlE11field_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call { ptr, i64 } @_RNvMNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB2_17StatementMetadata6fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row3RowNtNtBb_7backend5MysqlE11partial_row(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtNtCsjRvGck33osM_6diesel3row7privateINtB3_10PartialRowNtNtNtNtNtB7_5mysql10connection4stmt8iterator8MysqlRowE3newNtNtB14_7backend5MysqlEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB5_12PgConnectionNtNtB9_4r2d214R2D2Connection4ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel9query_dsl8load_dslNtNtB8_4r2d220CheckConnectionQueryINtB4_10ExecuteDslNtNtNtB8_2pg10connection12PgConnectionNtNtB1G_7backend2PgE7executeB8_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB5_12PgConnectionNtNtB9_4r2d214R2D2Connection9is_broken(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvYNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager22AnsiTransactionManagerINtB4_18TransactionManagerNtNtNtB8_2pg10connection12PgConnectionE29is_broken_transaction_managerB8_(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs4_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB5_15MysqlConnectionNtNtNtB9_10connection7private21MultiConnectionHelper8from_any(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  call void %i.c(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %0)
  %i.d = load i128, ptr %i.a, align 16, !noundef !5
  %i.e = icmp eq i128 %i.d, 7954624184318742432034558525444319996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.e, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row8RowIndexjE3idx(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !753, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call { ptr, i64 } @_RNvMNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB2_17StatementMetadata6fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !753
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %i.f = icmp ult i64 %1, %i.e
  %. = zext i1 %i.f to i64
  %i.g = insertvalue { i64, i64 } poison, i64 %., 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %1, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs5_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB5_12PgConnectionNtNtNtB9_10connection7private21MultiConnectionHelper6to_any(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !5, !nonnull !5
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %0)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs5_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB5_12PgConnectionNtNtNtB9_10connection7private21MultiConnectionHelper8from_any(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  call void %i.c(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %0)
  %i.d = load i128, ptr %i.a, align 16, !noundef !5
  %i.e = icmp eq i128 %i.d, -24328394566867807098008066886931699544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.e, ptr %0, ptr null
  %i.f = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @51, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row8RowIndexReE3idx(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call { ptr, i64 } @_RNvMNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB2_17StatementMetadata6fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.idx = shl nuw nsw i64 %i.f, 7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB2b_8adapters9enumerateINtB34_9EnumeratepEB25_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4b_EENCINvNvB25_4find5checkB4V_NCNvXs5_NtBN_8iteratorNtB5B_8MysqlRowINtNtBT_3row8RowIndexReE3idx0E0E0B4g_EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i
  %.sroa.7.0 = phi i64 [ %i.p, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.j, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.k = tail call { ptr, i64 } @_RNvMs0_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB5_18MysqlFieldMetadata10field_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i), !noalias !759 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %.not.i.i.i.i = icmp ne ptr %i.l, null
  %i.n = icmp eq i64 %i.m, %2
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i

_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i: ; preds = %.lr.ph.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull readonly %1, i64 %2), !noalias !759
  %bcmp.i.fr.i.i.i = freeze i32 %bcmp.i.i.i.i
  %i.o = icmp eq i32 %bcmp.i.fr.i.i.i, 0
  br i1 %i.o, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB2b_8adapters9enumerateINtB34_9EnumeratepEB25_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4b_EENCINvNvB25_4find5checkB4V_NCNvXs5_NtBN_8iteratorNtB5B_8MysqlRowINtNtBT_3row8RowIndexReE3idx0E0E0B4g_EBT_.exit, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i: ; preds = %_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i, %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.7.0, 1
  %i.q = icmp eq ptr %i.j, %i.g
  br i1 %i.q, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB2b_8adapters9enumerateINtB34_9EnumeratepEB25_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4b_EENCINvNvB25_4find5checkB4V_NCNvXs5_NtBN_8iteratorNtB5B_8MysqlRowINtNtBT_3row8RowIndexReE3idx0E0E0B4g_EBT_.exit, label %.lr.ph.i

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadataENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB2b_8adapters9enumerateINtB34_9EnumeratepEB25_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4b_EENCINvNvB25_4find5checkB4V_NCNvXs5_NtBN_8iteratorNtB5B_8MysqlRowINtNtBT_3row8RowIndexReE3idx0E0E0B4g_EBT_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i, %_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i, %bb.a
  %not..sroa.3.0.i = phi i64 [ 0, %bb.a ], [ 0, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i ], [ 1, %_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i ]
  %i.r = phi i64 [ undef, %bb.a ], [ undef, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata18MysqlFieldMetadatauINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB47_NCNvXs5_NtB2a_8iteratorNtB4N_8MysqlRowINtNtB2g_3row8RowIndexReE3idx0E0E0B2g_.exit.i ], [ %.sroa.7.0, %_RNCNvXs5_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB7_8MysqlRowINtNtBf_3row8RowIndexReE3idx0Bf_.exit.i.i.i ]
  %i.s = insertvalue { i64, i64 } poison, i64 %not..sroa.3.0.i, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %i.r, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs6_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_10MysqlFieldINtNtBd_3row5FieldNtNtBb_7backend5MysqlE10field_name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call { ptr, i64 } @_RNvMNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB2_17StatementMetadata6fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i64 } %i.d, 0
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.g
  %i.k = tail call { ptr, i64 } @_RNvMs0_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadataNtB5_18MysqlFieldMetadata10field_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j)
  ret { ptr, i64 } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_10MysqlFieldINtNtBd_3row5FieldNtNtBb_7backend5MysqlE5value(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
end_hunk_0
