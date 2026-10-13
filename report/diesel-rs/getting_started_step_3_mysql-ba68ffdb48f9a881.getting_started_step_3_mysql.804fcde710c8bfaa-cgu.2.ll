Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/getting_started_step_3_mysql-ba68ffdb48f9a881.getting_started_step_3_mysql.804fcde710c8bfaa-cgu.2?download=true
inline.NumInlined: 154
inline.NumDeleted: 92
begin_hunk_0_@_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_E8walk_astB21_:bb.a
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.i = load i64, ptr %2, align 8, !range !299, !alias.scope !298, !noalias !300, !noundef !4 ; 3 uses
  switch i64 %i.i, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !298, !noalias !300, !nonnull !4, !align !8, !noundef !4
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7), !noalias !301
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !298, !noalias !300, !nonnull !4, !noundef !4
  store i8 0, ptr %i.m, align 1, !noalias !301
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !298, !noalias !300, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 24, i1 false), !noalias !300
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.p, ptr %i.q, align 8, !noalias !301
  call void @_RNvXs6_NtNtCsjRvGck33osM_6diesel13query_builder13select_clauseINtB5_12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtCsb101nepifEY_28getting_started_step_3_mysql6models4PostNtNtNtB9_5mysql7backend5MysqlEEINtB7_13QueryFragmentB2V_E8walk_astB21_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !301
  %i.r = load i64, ptr %i.h, align 8, !range !15, !noalias !301, !noundef !4
  %.not1.i = icmp eq i64 %i.r, -1
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !301
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 24, i1 false), !noalias !300
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.p, ptr %i.s, align 8, !noalias !301
  call void @_RNvXs7_NtNtCsjRvGck33osM_6diesel13query_builder11from_clauseINtB5_10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtB7_13QueryFragmentNtNtNtB9_5mysql7backend5MysqlE8walk_astB1k_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !301
  %i.t = load i64, ptr %i.f, align 8, !range !15, !noalias !301, !noundef !4
  %.not2.i = icmp eq i64 %i.t, -1
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !301
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 24, i1 false), !noalias !300
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.p, ptr %i.u, align 8, !noalias !301
  call void @_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder12order_clauseINtB5_11OrderClauseINtNtNtB9_10expression9operators4DescNtNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts7columns2idEEINtB7_13QueryFragmentNtNtNtB9_5mysql7backend5MysqlE8walk_astB1Z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !301
  %i.v = load i64, ptr %i.d, align 8, !range !15, !noalias !301, !noundef !4
  %.not6.i = icmp eq i64 %i.v, -1
  br i1 %.not6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !301
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !301
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !300 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !300
  switch i64 %i.i, label %bb.k [
    i64 0, label %bb.l
    i64 4, label %bb.m
  ]

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !304
  store i64 %i.i, ptr %i.b, align 8, !noalias !305
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx3, align 8, !noalias !305
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8, !noalias !305
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.w, align 8, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  call void @_RINvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB3_7AstPassNtNtNtB7_5mysql7backend5MysqlE15push_bind_paramNtNtB7_9sql_types6BigIntxECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !307
  %i.x = load i64, ptr %i.a, align 8, !range !15, !noalias !306, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7), !noalias !304
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store i8 0, ptr %.sroa.5.0.copyload, align 1, !noalias !304
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2.i.i, i64 24, i1 false), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !304
  store i64 %i.x, ptr %0, align 8, !noalias !303
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !304
  store i64 -1, ptr %0, align 8, !alias.scope !297, !noalias !303
  br label %_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit

_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3J_9operators4DescNtNtB1X_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3J_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4D_NtNtNtNtB9_7backend11sql_dialect23select_statement_syntax22AnsiSqlSelectStatementE8walk_astB21_.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.n, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5postsNtB5_5tableNtNtNtNtCsjRvGck33osM_6diesel13query_builder16update_statement6target16IntoUpdateTarget18into_update_target() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtNtCsjRvGck33osM_6diesel13query_builder11from_clauseINtB5_10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableE3newB1k_()
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCsjRvGck33osM_6diesel10expression9select_byNtNtNtB9_5mysql7backend5MysqlINtB7_13QueryMetadataINtB5_8SelectByNtNtCsb101nepifEY_28getting_started_step_3_mysql6models4PostBQ_EE12row_metadataB1X_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !329, !noundef !4 ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !5, !alias.scope !329, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEE8grow_oneCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %.pre.i = load i64, ptr %1, align 8, !range !5, !alias.scope !330
  br label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i

_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.c, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !329, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  store i8 4, ptr %i.h, align 1, !noalias !329
  %i.i = add i64 %i.b, 1                          ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %bb.c, label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i

bb.c:                                             ; preds = %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEE8grow_oneCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %.pre1.i = load ptr, ptr %i.f, align 8, !alias.scope !330
  %.pre2.i = load i64, ptr %1, align 8, !range !5, !alias.scope !333
  br label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i

_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i: ; preds = %bb.c, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i
  %i.k = phi i64 [ %i.e, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i ], [ %.pre2.i, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.g, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types7IntegerE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i ], [ %.pre1.i, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 15, ptr %i.m, align 1, !noalias !330
  %i.n = add i64 %i.b, 2                          ; 3 uses
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %bb.d, label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit1.i

bb.d:                                             ; preds = %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEE8grow_oneCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %.pre3.i = load ptr, ptr %i.f, align 8, !alias.scope !333
  %.pre = load i64, ptr %1, align 8, !range !5, !alias.scope !336
  br label %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit1.i

_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit1.i: ; preds = %bb.d, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i
  %i.p = phi i64 [ %i.k, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i ], [ %.pre, %bb.d ]
  %i.q = phi ptr [ %i.l, %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit.i ], [ %.pre3.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i8 15, ptr %i.r, align 1, !noalias !333
  %i.s = add i64 %i.b, 3                          ; 3 uses
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.t = icmp eq i64 %i.s, %i.p
  br i1 %i.t, label %bb.e, label %_RNvXs9x_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesNtNtNtBa_5mysql7backend5MysqlINtNtBa_10expression13QueryMetadataTNtNtBa_9sql_types7IntegerNtB1T_4TextB2g_NtB1T_4BoolEE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit

bb.e:                                             ; preds = %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit1.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEE8grow_oneCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs9x_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesNtNtNtBa_5mysql7backend5MysqlINtNtBa_10expression13QueryMetadataTNtNtBa_9sql_types7IntegerNtB1T_4TextB2g_NtB1T_4BoolEE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit

_RNvXs9x_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesNtNtNtBa_5mysql7backend5MysqlINtNtBa_10expression13QueryMetadataTNtNtBa_9sql_types7IntegerNtB1T_4TextB2g_NtB1T_4BoolEE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit: ; preds = %_RNvXs0_NtCsjRvGck33osM_6diesel10expressionNtNtNtB7_5mysql7backend5MysqlINtB5_13QueryMetadataNtNtB7_9sql_types4TextE12row_metadataCsb101nepifEY_28getting_started_step_3_mysql.exit1.i, %bb.e
  %2 = load ptr, ptr %i.f, align 8, !alias.scope !336, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  store i8 0, ptr %i.u, align 1, !noalias !336
  %i.v = add i64 %i.b, 4
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !336
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsjRvGck33osM_6diesel6resultNtB5_21DeserializeFieldErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 10, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !3, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB2I_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtB14_7backend9MysqlTypeEIB3J_INtNtB2M_6option6OptionIBP_hEEEENvMs6_B10_BY_9for_inputEE9from_iterCsb101nepifEY_28getting_started_step_3_mysql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !369
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !370, !noalias !371, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !370, !noalias !371, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !370, !noalias !371, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val16.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !370, !noalias !371, !nonnull !4, !noundef !4
  %i.k = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.h) ; 4 uses
  %i.o = mul i64 %.sroa.0.0.i.i.i.i.i, 40         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 230584300921369395
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !372
  %i.q = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !372 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.o) #23
          to label %.noexc.i unwind label %bb.l, !noalias !369

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.10.0.i.i = phi i64 [ %i.s, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.t = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 2 uses
  %i.u = icmp samesign ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.u)
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !369
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !noalias !369
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.w, align 8, !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !378, !noalias !379, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val14.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !378, !noalias !379, !nonnull !4, !noundef !4
  %i.z = ptrtoint ptr %.val14.i.i.i.i.i.i to i64
  %i.aa = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !378, !noalias !379, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !378, !noalias !379, !nonnull !4, !noundef !4
  %i.ae = ptrtoint ptr %.val16.i.i.i.i.i.i to i64
  %i.af = ptrtoint ptr %.val15.i.i.i.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 24
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ab) ; 2 uses
  %i.ai = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i
  br i1 %i.ai, label %bb.g, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB21_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtBM_7backend9MysqlTypeEIB32_INtNtB25_6option6OptionIBx_hEEEENvMs6_BI_BG_9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 40)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE7reserveCsb101nepifEY_28getting_started_step_3_mysql.exit_crit_edge.i.i.i unwind label %bb.h, !noalias !380

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE7reserveCsb101nepifEY_28getting_started_step_3_mysql.exit_crit_edge.i.i.i: ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !381, !noalias !380
  %.pre.i = load ptr, ptr %i.v, align 8, !alias.scope !381, !noalias !380
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB21_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtBM_7backend9MysqlTypeEIB32_INtNtB25_6option6OptionIBx_hEEEENvMs6_BI_BG_9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i

bb.h:                                             ; preds = %bb.g
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1q_INtNtB4_6option6OptionINtB1u_3VechEEEENvMs6_NtNtB2h_10connection4bindNtB3Q_8BindData9for_inputEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #22
          to label %.body.i unwind label %bb.i, !noalias !382

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !382
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB21_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtBM_7backend9MysqlTypeEIB32_INtNtB25_6option6OptionIBx_hEEEENvMs6_BI_BG_9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE7reserveCsb101nepifEY_28getting_started_step_3_mysql.exit_crit_edge.i.i.i, %bb.f
  %i.ak = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE7reserveCsb101nepifEY_28getting_started_step_3_mysql.exit_crit_edge.i.i.i ], [ %i.t, %bb.f ]
  %i.al = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE7reserveCsb101nepifEY_28getting_started_step_3_mysql.exit_crit_edge.i.i.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !383
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ak, ptr %i.am, align 8, !noalias !383
  store ptr %i.w, ptr %i.a, align 8, !noalias !383
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.al, ptr %i.an, align 8, !noalias !383
  invoke void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1e_INtNtBc_6option6OptionINtB1i_3VechEEEENvMs6_NtNtB25_10connection4bindNtB3E_8BindData9for_inputENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callB43_NCINvMsj_B1i_IB3j_B43_E14extend_trustedBN_E0E0ECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB2C_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtB19_7backend9MysqlTypeEIB3D_INtNtB2G_6option6OptionIBU_hEEEENvMs6_B15_B13_9for_inputEE9from_iterCsb101nepifEY_28getting_started_step_3_mysql.exit unwind label %bb.j, !noalias !373

bb.j:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB21_3zip3ZipINtNtB6_9into_iter8IntoIterNtNtBM_7backend9MysqlTypeEIB32_INtNtB25_6option6OptionIBx_hEEEENvMs6_BI_BG_9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %lpad.thr_comm.i.i.i, %bb.h ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.c) #22
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1q_INtNtB4_6option6OptionINtB1u_3VechEEEENvMs6_NtNtB2h_10connection4bindNtB3Q_8BindData9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit unwind label %bb.k, !noalias !369

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1a_INtNtB4_6option6OptionINtB1e_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i, %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.m, %bb.k
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !373
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1q_INtNtB4_6option6OptionINtB1u_3VechEEEENvMs6_NtNtB2h_10connection4bindNtB3Q_8BindData9for_inputEECsb101nepifEY_28getting_started_step_3_mysql.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1a_INtNtB4_6option6OptionINtB1e_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1a_INtNtB4_6option6OptionINtB1e_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i ]
  resume { ptr, i32 } %.pn6.i

bb.l:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEIB1a_INtNtB4_6option6OptionINtB1e_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i unwind label %bb.m, !noalias !373

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VechEEENtNtNtB11_3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.body unwind label %bb.n, !noalias !373

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
end_hunk_0
