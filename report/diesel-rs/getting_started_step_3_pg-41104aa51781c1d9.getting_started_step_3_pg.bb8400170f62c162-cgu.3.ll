Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/getting_started_step_3_pg-41104aa51781c1d9.getting_started_step_3_pg.bb8400170f62c162-cgu.3?download=true
inline.NumInlined: 197
inline.NumDeleted: 99
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtNtCsjRvGck33osM_6diesel2pg10connectionNtBd_12PgConnection13collect_bindsNtNtBh_6result5ErrorE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRDNtNtNtBh_10connection15instrumentation10DebugQueryEL_EE9call_once6vtableCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNCINvMs6_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB8_12PgConnection13collect_bindsNtNtBc_6result5ErrorE0Csg68L4LYRu92_25getting_started_step_3_pg }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_3Any7type_idCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast8into_anyCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast11into_any_rcCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast6as_anyCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast10as_any_mutCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXsa_NtNtCsjRvGck33osM_6diesel10connection15instrumentationNtB5_17NoInstrumentationNtB5_15Instrumentation19on_connection_event }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNvMs6_NtNtCsjRvGck33osM_6diesel2pg10connectionNtBf_12PgConnection19with_prepared_query31prepare_query_non_generic_innerNtNtBj_6result5ErrorE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRDNtNtNtBj_10connection15instrumentation10DebugQueryEL_EE9call_once6vtableCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNCINvNvMs6_NtNtCsjRvGck33osM_6diesel2pg10connectionNtBa_12PgConnection19with_prepared_query31prepare_query_non_generic_innerNtNtBe_6result5ErrorE0Csg68L4LYRu92_25getting_started_step_3_pg }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtBZ_12ValuesClauseTINtNtB8_10insertable28DefaultableColumnInsertValueINtB3m_17ColumnInsertValueNtNtB1W_7columns5titleINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextRReEEEIB3k_IB48_NtB4z_4bodyB4T_EEEB1U_ENtNtBZ_7private6InsertINtNtB11_16returning_clause15ReturningClauseINtNtB4Y_9select_by8SelectByNtNtB20_6models4PostNtNtNtB8_2pg7backend2PgEEEINtB4_31QueryFragmentForCachedStatementB8g_E13construct_sqlB20_, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtBZ_12ValuesClauseTINtNtB8_10insertable28DefaultableColumnInsertValueINtB3m_17ColumnInsertValueNtNtB1W_7columns5titleINtNtNtB8_10expression5bound5BoundNtNtB8_9sql_types4TextRReEEEIB3k_IB48_NtB4z_4bodyB4T_EEEB1U_ENtNtBZ_7private6InsertINtNtB11_16returning_clause15ReturningClauseINtNtB4Y_9select_by8SelectByNtNtB20_6models4PostNtNtNtB8_2pg7backend2PgEEEINtB4_31QueryFragmentForCachedStatementB8g_E25is_safe_to_cache_preparedB20_, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtBW_12ValuesClauseTINtNtBb_10insertable28DefaultableColumnInsertValueINtB3j_17ColumnInsertValueNtNtB1T_7columns5titleINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextRReEEEIB3h_IB45_NtB4w_4bodyB4Q_EEEB1R_ENtNtBW_7private6InsertINtNtBY_16returning_clause15ReturningClauseINtNtB4V_9select_by8SelectByNtNtB1X_6models4PostNtNtB9_7backend2PgEEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE8query_idB1X_, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtBW_12ValuesClauseTINtNtBb_10insertable28DefaultableColumnInsertValueINtB3j_17ColumnInsertValueNtNtB1T_7columns5titleINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextRReEEEIB3h_IB45_NtB4w_4bodyB4Q_EEEB1R_ENtNtBW_7private6InsertINtNtBY_16returning_clause15ReturningClauseINtNtB4V_9select_by8SelectByNtNtB1X_6models4PostNtNtB9_7backend2PgEEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE15instrumentationB1X_, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtBW_12ValuesClauseTINtNtBb_10insertable28DefaultableColumnInsertValueINtB3j_17ColumnInsertValueNtNtB1T_7columns5titleINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextRReEEEIB3h_IB45_NtB4w_4bodyB4Q_EEEB1R_ENtNtBW_7private6InsertINtNtBY_16returning_clause15ReturningClauseINtNtB4V_9select_by8SelectByNtNtB1X_6models4PostNtNtB9_7backend2PgEEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE13collect_bindsB1X_, ptr @_RNvYINtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement15InsertStatementNtNtNtCsg68L4LYRu92_25getting_started_step_3_pg6schema5posts5tableINtB5_12ValuesClauseTINtNtB9_10insertable28DefaultableColumnInsertValueINtB2K_17ColumnInsertValueNtNtB1k_7columns5titleINtNtNtB9_10expression5bound5BoundNtNtB9_9sql_types4TextRReEEEIB2I_IB3w_NtB3X_4bodyB4h_EEEB1i_ENtNtB5_7private6InsertINtNtB7_16returning_clause15ReturningClauseINtNtB4m_9select_by8SelectByNtNtB1o_6models4PostNtNtNtB9_2pg7backend2PgEEEINtNtNtB7H_10connection7private19QueryFragmentHelperNtNtB9_6result5ErrorE15write_copy_fromB1o_ }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB11_11from_clause10FromClauseINtNtNtB8_12query_source5joins6JoinOnINtB2v_4JoinNtNtNtNtB8_2pg15metadata_lookup7pg_type5tableNtNtB3j_12pg_namespace5tableNtB2v_5InnerEINtNtNtB8_10expression7grouped7GroupedINtNtB4I_9operators2EqINtNtB4I_8nullable8NullableNtNtB3h_7columns12typnamespaceEIB5C_NtNtB40_7columns3oidEEEEEINtNtB11_13select_clause12SelectClauseTNtB64_3oidNtB64_8typarrayEENtNtB11_15distinct_clause16NoDistinctClauseINtNtB11_12where_clause11WhereClauseIB4E_INtB5i_3AndIB4E_IB5g_NtB64_7typnameINtNtB4I_5bound5BoundNtNtB8_9sql_types4TextReEEEIB4E_IB5g_NtB6E_7nspnameBa0_EEEEENtNtB11_12order_clause13NoOrderClauseINtNtB11_19limit_offset_clause17LimitOffsetClauseINtNtB11_12limit_clause11LimitClauseIBa1_NtBan_6BigIntxEENtNtB11_13offset_clause14NoOffsetClauseEEINtB4_31QueryFragmentForCachedStatementNtNtB3l_7backend2PgE13construct_sqlCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB11_11from_clause10FromClauseINtNtNtB8_12query_source5joins6JoinOnINtB2v_4JoinNtNtNtNtB8_2pg15metadata_lookup7pg_type5tableNtNtB3j_12pg_namespace5tableNtB2v_5InnerEINtNtNtB8_10expression7grouped7GroupedINtNtB4I_9operators2EqINtNtB4I_8nullable8NullableNtNtB3h_7columns12typnamespaceEIB5C_NtNtB40_7columns3oidEEEEEINtNtB11_13select_clause12SelectClauseTNtB64_3oidNtB64_8typarrayEENtNtB11_15distinct_clause16NoDistinctClauseINtNtB11_12where_clause11WhereClauseIB4E_INtB5i_3AndIB4E_IB5g_NtB64_7typnameINtNtB4I_5bound5BoundNtNtB8_9sql_types4TextReEEEIB4E_IB5g_NtB6E_7nspnameBa0_EEEEENtNtB11_12order_clause13NoOrderClauseINtNtB11_19limit_offset_clause17LimitOffsetClauseINtNtB11_12limit_clause11LimitClauseIBa1_NtBan_6BigIntxEENtNtB11_13offset_clause14NoOffsetClauseEEINtB4_31QueryFragmentForCachedStatementNtNtB3l_7backend2PgE25is_safe_to_cache_preparedCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseINtNtNtBb_12query_source5joins6JoinOnINtB2r_4JoinNtNtNtB9_15metadata_lookup7pg_type5tableNtNtB3f_12pg_namespace5tableNtB2r_5InnerEINtNtNtBb_10expression7grouped7GroupedINtNtB4z_9operators2EqINtNtB4z_8nullable8NullableNtNtB3d_7columns12typnamespaceEIB5t_NtNtB3R_7columns3oidEEEEEINtNtBY_13select_clause12SelectClauseTNtB5V_3oidNtB5V_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseIB4v_INtB59_3AndIB4v_IB57_NtB5V_7typnameINtNtB4z_5bound5BoundNtNtBb_9sql_types4TextReEEEIB4v_IB57_NtB6v_7nspnameB9O_EEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB9P_NtBab_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE8query_idCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseINtNtNtBb_12query_source5joins6JoinOnINtB2r_4JoinNtNtNtB9_15metadata_lookup7pg_type5tableNtNtB3f_12pg_namespace5tableNtB2r_5InnerEINtNtNtBb_10expression7grouped7GroupedINtNtB4z_9operators2EqINtNtB4z_8nullable8NullableNtNtB3d_7columns12typnamespaceEIB5t_NtNtB3R_7columns3oidEEEEEINtNtBY_13select_clause12SelectClauseTNtB5V_3oidNtB5V_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseIB4v_INtB59_3AndIB4v_IB57_NtB5V_7typnameINtNtB4z_5bound5BoundNtNtBb_9sql_types4TextReEEEIB4v_IB57_NtB6v_7nspnameB9O_EEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB9P_NtBab_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE15instrumentationCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseINtNtNtBb_12query_source5joins6JoinOnINtB2r_4JoinNtNtNtB9_15metadata_lookup7pg_type5tableNtNtB3f_12pg_namespace5tableNtB2r_5InnerEINtNtNtBb_10expression7grouped7GroupedINtNtB4z_9operators2EqINtNtB4z_8nullable8NullableNtNtB3d_7columns12typnamespaceEIB5t_NtNtB3R_7columns3oidEEEEEINtNtBY_13select_clause12SelectClauseTNtB5V_3oidNtB5V_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseIB4v_INtB59_3AndIB4v_IB57_NtB5V_7typnameINtNtB4z_5bound5BoundNtNtBb_9sql_types4TextReEEEIB4v_IB57_NtB6v_7nspnameB9O_EEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB9P_NtBab_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE13collect_bindsCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvYINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB7_11from_clause10FromClauseINtNtNtB9_12query_source5joins6JoinOnINtB1S_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB2G_12pg_namespace5tableNtB1S_5InnerEINtNtNtB9_10expression7grouped7GroupedINtNtB45_9operators2EqINtNtB45_8nullable8NullableNtNtB2E_7columns12typnamespaceEIB4Z_NtNtB3n_7columns3oidEEEEEINtNtB7_13select_clause12SelectClauseTNtB5r_3oidNtB5r_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseIB41_INtB4F_3AndIB41_IB4D_NtB5r_7typnameINtNtB45_5bound5BoundNtNtB9_9sql_types4TextReEEEIB41_IB4D_NtB61_7nspnameB9k_EEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB9l_NtB9H_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtNtNtB2I_10connection7private19QueryFragmentHelperNtNtB9_6result5ErrorE15write_copy_fromCsg68L4LYRu92_25getting_started_step_3_pg }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtBG_11from_clause10FromClauseNtNtNtNtBI_2pg15metadata_lookup7pg_type5tableEINtNtBG_13select_clause12SelectClauseTNtNtB2q_7columns3oidNtB3M_8typarrayEENtNtBG_15distinct_clause16NoDistinctClauseINtNtBG_12where_clause11WhereClauseINtNtNtBI_10expression7grouped7GroupedINtNtB5F_9operators2EqB3K_INtNtB5F_11sql_literal10SqlLiteralNtNtNtB2u_5types9sql_types3OidINtB6F_13UncheckedBindIB6D_B7a_EINtNtB5F_5bound5BoundNtNtBI_9sql_types4TextReEEEEEENtNtBG_12order_clause13NoOrderClauseINtNtBG_19limit_offset_clause17LimitOffsetClauseINtNtBG_12limit_clause11LimitClauseIB8b_NtB8x_6BigIntxEENtNtBG_13offset_clause14NoOffsetClauseEEECsg68L4LYRu92_25getting_started_step_3_pg, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB11_11from_clause10FromClauseNtNtNtNtB8_2pg15metadata_lookup7pg_type5tableEINtNtB11_13select_clause12SelectClauseTNtNtB2u_7columns3oidNtB3R_8typarrayEENtNtB11_15distinct_clause16NoDistinctClauseINtNtB11_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB5M_9operators2EqB3P_INtNtB5M_11sql_literal10SqlLiteralNtNtNtB2y_5types9sql_types3OidINtB6M_13UncheckedBindIB6K_B7h_EINtNtB5M_5bound5BoundNtNtB8_9sql_types4TextReEEEEEENtNtB11_12order_clause13NoOrderClauseINtNtB11_19limit_offset_clause17LimitOffsetClauseINtNtB11_12limit_clause11LimitClauseIB8i_NtB8E_6BigIntxEENtNtB11_13offset_clause14NoOffsetClauseEEINtB4_31QueryFragmentForCachedStatementNtNtB2y_7backend2PgE13construct_sqlCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB11_11from_clause10FromClauseNtNtNtNtB8_2pg15metadata_lookup7pg_type5tableEINtNtB11_13select_clause12SelectClauseTNtNtB2u_7columns3oidNtB3R_8typarrayEENtNtB11_15distinct_clause16NoDistinctClauseINtNtB11_12where_clause11WhereClauseINtNtNtB8_10expression7grouped7GroupedINtNtB5M_9operators2EqB3P_INtNtB5M_11sql_literal10SqlLiteralNtNtNtB2y_5types9sql_types3OidINtB6M_13UncheckedBindIB6K_B7h_EINtNtB5M_5bound5BoundNtNtB8_9sql_types4TextReEEEEEENtNtB11_12order_clause13NoOrderClauseINtNtB11_19limit_offset_clause17LimitOffsetClauseINtNtB11_12limit_clause11LimitClauseIB8i_NtB8E_6BigIntxEENtNtB11_13offset_clause14NoOffsetClauseEEINtB4_31QueryFragmentForCachedStatementNtNtB2y_7backend2PgE25is_safe_to_cache_preparedCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseNtNtNtB9_15metadata_lookup7pg_type5tableEINtNtBY_13select_clause12SelectClauseTNtNtB2q_7columns3oidNtB3H_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseINtNtNtBb_10expression7grouped7GroupedINtNtB5A_9operators2EqB3F_INtNtB5A_11sql_literal10SqlLiteralNtNtNtB9_5types9sql_types3OidINtB6A_13UncheckedBindIB6y_B75_EINtNtB5A_5bound5BoundNtNtBb_9sql_types4TextReEEEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB85_NtB8r_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE8query_idCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseNtNtNtB9_15metadata_lookup7pg_type5tableEINtNtBY_13select_clause12SelectClauseTNtNtB2q_7columns3oidNtB3H_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseINtNtNtBb_10expression7grouped7GroupedINtNtB5A_9operators2EqB3F_INtNtB5A_11sql_literal10SqlLiteralNtNtNtB9_5types9sql_types3OidINtB6A_13UncheckedBindIB6y_B75_EINtNtB5A_5bound5BoundNtNtBb_9sql_types4TextReEEEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB85_NtB8r_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE15instrumentationCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection7privateINtNtNtBb_13query_builder16select_statement15SelectStatementINtNtBY_11from_clause10FromClauseNtNtNtB9_15metadata_lookup7pg_type5tableEINtNtBY_13select_clause12SelectClauseTNtNtB2q_7columns3oidNtB3H_8typarrayEENtNtBY_15distinct_clause16NoDistinctClauseINtNtBY_12where_clause11WhereClauseINtNtNtBb_10expression7grouped7GroupedINtNtB5A_9operators2EqB3F_INtNtB5A_11sql_literal10SqlLiteralNtNtNtB9_5types9sql_types3OidINtB6A_13UncheckedBindIB6y_B75_EINtNtB5A_5bound5BoundNtNtBb_9sql_types4TextReEEEEEENtNtBY_12order_clause13NoOrderClauseINtNtBY_19limit_offset_clause17LimitOffsetClauseINtNtBY_12limit_clause11LimitClauseIB85_NtB8r_6BigIntxEENtNtBY_13offset_clause14NoOffsetClauseEEINtB5_19QueryFragmentHelperNtNtBb_6result5ErrorE13collect_bindsCsg68L4LYRu92_25getting_started_step_3_pg, ptr @_RNvYINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEINtNtB7_13select_clause12SelectClauseTNtNtB1R_7columns3oidNtB3d_8typarrayEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB56_9operators2EqB3b_INtNtB56_11sql_literal10SqlLiteralNtNtNtB1V_5types9sql_types3OidINtB66_13UncheckedBindIB64_B6B_EINtNtB56_5bound5BoundNtNtB9_9sql_types4TextReEEEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7C_NtB7Y_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtNtNtB1V_10connection7private19QueryFragmentHelperNtNtB9_6result5ErrorE15write_copy_fromCsg68L4LYRu92_25getting_started_step_3_pg }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_3Any7type_idCsg68L4LYRu92_25getting_started_step_3_pg }>, align 8
@7 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -374768545150116711 to ptr), ptr inttoptr (i64 3217429161695629291 to ptr) }>, align 8
@8 = private unnamed_addr constant [11 x i8] c" RETURNING ", align 1
@9 = private unnamed_addr constant [1 x i8] c".", align 1
@10 = private unnamed_addr constant [3 x i8] c"oid", align 1
@11 = private unnamed_addr constant [4 x i8] c" ON ", align 1
@12 = private unnamed_addr constant [6 x i8] c" JOIN ", align 1
@13 = private unnamed_addr constant [2 x i8] c", ", align 1
@14 = private unnamed_addr constant [8 x i8] c"typarray", align 1
@15 = private unnamed_addr constant [12 x i8] c"typnamespace", align 1
@16 = private unnamed_addr constant [5 x i8] c"posts", align 1
@17 = private unnamed_addr constant [12 x i8] c"pg_namespace", align 1
@18 = private unnamed_addr constant [7 x i8] c"pg_type", align 1
@19 = private unnamed_addr constant [6 x i8] c" INNER", align 1
@20 = private unnamed_addr constant [7 x i8] c"typname", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBU_7backend19InnerPgTypeMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_B1V_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBU_7backend19InnerPgTypeMetadataEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1V_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB6_12PgConnection19with_prepared_queryNtNtB6_6cursor6CursorNtNtBa_6result5ErrorECsg68L4LYRu92_25getting_started_step_3_pg(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noundef nonnull %4, ptr nofree readonly captures(none) %.32.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.327.sroa.3 = alloca [24 x i8], align 8   ; 3 uses
  %.sroa.528 = alloca [24 x i8], align 8          ; 2 uses
  %i.k = alloca [112 x i8], align 8               ; 12 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val57 = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  store ptr %i.o, ptr %i.j, align 8, !noalias !5
  invoke void %.val(ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0)
          to label %.noexc unwind label %bb.f, !inline_history !9

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5
  store i64 0, ptr %i.i, align 8, !noalias !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5
  invoke void %.val57(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.c unwind label %bb.b, !noalias !10

bb.b:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel13query_builder14bind_collector21RawBytesBindCollectorNtNtNtBI_2pg7backend2PgEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(48) %i.i) #23
          to label %.body64 unwind label %bb.e, !noalias !10

bb.c:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.h, align 8, !range !11, !noalias !5, !noundef !3
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !12
  %.sroa.7.sroa.7.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.sroa.7.0.copyload44 = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx43, align 8, !noalias !12
  %.sroa.7.sroa.8.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7.sroa.8.0.copyload47 = load i64, ptr %.sroa.7.sroa.8.0..sroa_idx46, align 8, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel13query_builder14bind_collector21RawBytesBindCollectorNtNtNtBI_2pg7backend2PgEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %.thread64 unwind label %bb.f

.thread64:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5
  br label %bb.am

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !10
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8, !noalias !12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !12
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !12 ; 4 uses
  %.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12 ; 4 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5
  %i.t = icmp eq i64 %.sroa.03.0.copyload, -1
  br i1 %i.t, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  %.sroa.2.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %i.g, align 8, !noalias !23
  %.sroa.2.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.7.sroa.8.0.copyload, ptr %.sroa.2.sroa.4.16..sroa_idx, align 8, !noalias !23
  %.sroa.57.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.57.24..sroa_idx, align 8, !noalias !23
  store i64 %.sroa.03.0.copyload, ptr %i.f, align 8, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !3, !alias.scope !22, !noalias !24, !nonnull !3
  invoke void %i.w(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %2)
          to label %bb.k unwind label %bb.j, !noalias !13

bb.i:                                             ; preds = %bb.u, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.x, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.x unwind label %bb.w, !noalias !25

bb.j:                                             ; preds = %bb.m, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %.sroa.2.0..sroa_idx5, align 8, !noalias !13, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !13, !noundef !3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13
  store ptr @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmtNtB2_9Statement7prepare, ptr %i.c, align 8, !noalias !13
  %i.ac = load ptr, ptr %i.o, align 8, !alias.scope !20, !noalias !26, !noundef !3 ; 2 uses
  %.not.i63 = icmp eq ptr %i.ac, null
  br i1 %.not.i63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !20, !noalias !26, !nonnull !3, !align !27, !noundef !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.3.0.i = phi ptr [ %i.ae, %bb.l ], [ @1, %bb.k ]
  %.sroa.01.0.i = phi ptr [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  %i.af = load ptr, ptr %i.u, align 8, !alias.scope !21, !noalias !28, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !21, !noalias !28, !nonnull !3, !align !27, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %.sroa.01.0.i, ptr %i.a, align 8, !noalias !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.i, ptr %i.aj, align 8, !noalias !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.al, align 8, !noalias !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.y, ptr %i.am, align 8, !noalias !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.aa, ptr %i.an, align 8, !noalias !13
  invoke void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_2pg7backend2PgNtNtNtB1l_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtCscI6d9CVNmLh_4core6result6ResultB1E_NtNtB7_6result5ErrorEQNtNtB1I_3raw13RawConnectionNCINvB2_28cached_statement_non_genericB2P_B3Q_E0ECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %bb.n unwind label %bb.j, !noalias !25

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13
  %i.ao = load i64, ptr %i.e, align 8, !noalias !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -2
  br i1 %i.ap, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %.sroa.626.24.copyload = phi i64 [ %.sroa.626.24.copyload.pr, %bb.v ], [ %i.ao, %bb.n ] ; 3 uses
  %.sroa.827.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.827.24.copyload = load i64, ptr %.sroa.827.24..sroa_idx, align 8, !noalias !13 ; 3 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.24..sroa_idx, i64 24, i1 false), !noalias !29
  %.sroa.1028.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1028.24..sroa_idx, i64 24, i1 false), !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.p, !noalias !25

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !range !30, !alias.scope !31, !noalias !13, !noundef !3 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ar, label %.body64, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val3.i.i = load ptr, ptr %.sroa.2.0..sroa_idx5, align 8, !alias.scope !36, !noalias !13, !nonnull !3, !noundef !3
  %i.as = shl nuw i64 %.val2.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !37
  br label %.body64

bb.r:                                             ; preds = %bb.o
  %.val.i.i = load i64, ptr %i.f, align 8, !range !30, !alias.scope !31, !noalias !13, !noundef !3 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i, 0
  br i1 %i.at, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i.i = load ptr, ptr %.sroa.2.0..sroa_idx5, align 8, !alias.scope !36, !noalias !13, !nonnull !3, !noundef !3
  %i.au = shl nuw i64 %.val.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !40
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13
  store ptr %i.o, ptr %i.b, align 8, !noalias !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !noalias !13
  invoke void %.val(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2)
          to label %bb.v unwind label %bb.u, !noalias !25

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtB14_2pg10connection4stmt9StatementENtNtB14_6result5ErrorEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(64) %i.e) #23
          to label %bb.i unwind label %bb.w, !noalias !25

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13
  %.sroa.626.24.copyload.pr = load i64, ptr %i.e, align 8, !noalias !13
  br label %bb.o

bb.w:                                             ; preds = %bb.x, %bb.u, %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !25
  unreachable

bb.x:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(24) %i.g) #23
          to label %.body64 unwind label %bb.w, !noalias !25

bb.y:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13
  %i.az = icmp eq i64 %.sroa.7.sroa.7.0.copyload, -1
  br i1 %i.az, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.327.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %i.l, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store i64 %.sroa.7.sroa.8.0.copyload, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.225.sroa.2.0..sroa.225.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.225.sroa.2.0..sroa.225.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ba = icmp eq i64 %.sroa.626.24.copyload, -2
  br i1 %i.ba, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, i64 24, i1 false)
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.327.sroa.3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i64 %.sroa.626.24.copyload, ptr %i.bb, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.827.24.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %i.o, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store ptr %3, ptr %i.be, align 8
  call void %.32.val(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel2pg10connection7private19QueryFragmentHelperNtNtB1k_6result5ErrorEEL_EECsg68L4LYRu92_25getting_started_step_3_pg.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel2pg10connection7private19QueryFragmentHelperNtNtB1k_6result5ErrorEEL_EECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.ai, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.z
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.327.sroa.3, i64 24, i1 false)
  store i64 %.sroa.827.24.copyload, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_hEEENtNtNtBK_3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.l, align 8, !range !30, !alias.scope !43, !noundef !3 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i, 0
  br i1 %i.bg, label %.body64, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val3.i = load ptr, ptr %.sroa.225.0..sroa_idx, align 8, !alias.scope !43, !nonnull !3, !noundef !3
  %i.bh = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %.body64

bb.ae:                                            ; preds = %bb.ab
  %.val.i = load i64, ptr %i.l, align 8, !range !30, !alias.scope !43, !noundef !3 ; 2 uses
  %i.bi = icmp eq i64 %.val.i, 0
  br i1 %i.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i = load ptr, ptr %.sroa.225.0..sroa_idx, align 8, !alias.scope !43, !nonnull !3, !noundef !3
  %i.bj = mul nuw i64 %.val.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit
  %i.bk = load ptr, ptr %3, align 8, !invariant.load !3 ; 2 uses
  %.not.i68 = icmp eq ptr %i.bk, null
  br i1 %.not.i68, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.bk(ptr noundef nonnull %2)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !30, !invariant.load !3 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel2pg10connection7private19QueryFragmentHelperNtNtB1k_6result5ErrorEEL_EECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.ai
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !46, !invariant.load !3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) %i.bp) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel2pg10connection7private19QueryFragmentHelperNtNtB1k_6result5ErrorEEL_EECsg68L4LYRu92_25getting_started_step_3_pg.exit

bb.aj:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !30, !invariant.load !3 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !46, !invariant.load !3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %i.bv) #25
  br label %common.resume

common.resume:                                    ; preds = %.body64, %bb.aj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %bb.aj ], [ %i.bq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %eh.lpad-body, %.body64 ]
  resume { ptr, i32 } %common.resume.op

bb.ak:                                            ; preds = %.body64
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.al:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 %.sroa.7.sroa.8.0.copyload, ptr %0, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.626.24.copyload, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.827.24.copyload, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.ag

bb.am:                                            ; preds = %bb.g, %.thread64
  %.sroa.7.sroa.8.070 = phi i64 [ %.sroa.7.sroa.8.0.copyload47, %.thread64 ], [ %.sroa.7.sroa.8.0.copyload, %bb.g ]
  %.sroa.7.sroa.7.069 = phi i64 [ %.sroa.7.sroa.7.0.copyload44, %.thread64 ], [ %.sroa.7.sroa.7.0.copyload, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false)
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.sroa.7.069, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.8.070, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  br label %bb.ag

.body64:                                          ; preds = %bb.ac, %bb.ad, %bb.p, %bb.q, %bb.x, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.aq, %bb.q ], [ %i.s, %bb.f ], [ %.pn.i, %bb.x ], [ %i.aq, %bb.p ], [ %i.bf, %bb.ad ], [ %i.bf, %bb.ac ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel2pg10connection7private19QueryFragmentHelperNtNtB1k_6result5ErrorEEL_EECsg68L4LYRu92_25getting_started_step_3_pg(ptr nonnull %2, ptr nonnull %3) #23
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !47, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !range !30, !alias.scope !48, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !53, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !54
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !range !30, !alias.scope !48, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !53, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !57
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsg68L4LYRu92_25getting_started_step_3_pg.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtB14_2pg10connection4stmt9StatementENtNtB14_6result5ErrorEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.c
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_2pg10connection4stmt9StatementEECsg68L4LYRu92_25getting_started_step_3_pg.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel2pg10connection4stmt9StatementECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_2pg10connection4stmt9StatementEECsg68L4LYRu92_25getting_started_step_3_pg.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_2pg10connection4stmt9StatementEECsg68L4LYRu92_25getting_started_step_3_pg.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_2pg10connection4stmt9StatementEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_hEEENtNtNtBK_3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !30, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !30, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !30, !alias.scope !61, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = shl nuw i64 %.val2, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !64
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !30, !alias.scope !61, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = shl nuw i64 %.val, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !67
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !30, !alias.scope !70, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !73
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !30, !alias.scope !70, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsg68L4LYRu92_25getting_started_step_3_pg.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsg68L4LYRu92_25getting_started_step_3_pg(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b
end_hunk_0
