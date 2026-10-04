Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/show_posts_step_1-1c4c0dc43e295281.show_posts_step_1.dfe2589f11c1e141-cgu.0?download=true
inline.NumInlined: 262
inline.NumDeleted: 134
begin_hunk_0_@_RNvCsjdJgIvFXUiH_17show_posts_step_14main:bb.a

bb.z:                                             ; preds = %bb.y
  %.val13.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !367, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !394
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #25, !noalias !371
  br label %.critedge.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.t, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i.i, %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !367
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i, i64 32, i1 false), !noalias !363
  store i64 -3, ptr %i.q, align 8, !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !363
  store ptr %i.r, ptr %i.p, align 8, !noalias !363
  br label %bb.aj

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i, i64 32, i1 false), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !395
  store i64 0, ptr %i.d, align 8, !noalias !395
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8, !noalias !395
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.cv, align 8, !noalias !395
  invoke void @_RNvXs5_NtNtCsjRvGck33osM_6diesel10expression9select_byNtNtNtB9_5mysql7backend5MysqlINtB7_13QueryMetadataINtB5_8SelectByNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostBQ_EE12row_metadataCsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ad unwind label %bb.ac, !noalias !396

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.0.0.i2.i.i.i = phi i1 [ false, %bb.ad ], [ true, %bb.ab ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val4.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !395 ; 2 uses
  %i.cx = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ac
  %.val5.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !395, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !396
  br i1 %.sroa.0.0.i2.i.i.i, label %bb.ah, label %.body

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i, i64 32, i1 false), !noalias !363
  %i.cy = load ptr, ptr %i.cu, align 8, !noalias !395, !nonnull !5, !noundef !5
  %i.cz = load i64, ptr %i.cv, align 8, !noalias !395, !noundef !5
  invoke void @_RNvMNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB2_17StatementIterator9from_stmt(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz)
          to label %bb.ae unwind label %bb.ac, !noalias !397

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !395
  %.val.i3.i.i.i = load i64, ptr %i.d, align 8, !noalias !395 ; 2 uses
  %i.da = icmp eq i64 %.val.i3.i.i.i, 0
  br i1 %i.da, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val3.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !395, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !396
  br label %bb.ai

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i: ; preds = %bb.ac
  br i1 %.sroa.0.0.i2.i.i.i, label %bb.ah, label %.body

bb.ag:                                            ; preds = %bb.ah
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !398
  unreachable

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i, %.split.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o) #25
          to label %.body unwind label %bb.ag, !noalias !398

bb.ai:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !363
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !399, !noalias !400
  %.pre.fr.i.i.i = freeze i64 %.pre.i.i.i         ; 2 uses
  %i.dc = icmp eq i64 %.pre.fr.i.i.i, -3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !363
  store ptr %i.r, ptr %i.p, align 8, !noalias !363
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %spec.select.i.i.i = select i1 %i.dc, ptr %i.dd, ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread.i.i.i
  %.sroa.0.0.copyload.i.i = phi i64 [ %.pre.fr.i.i.i, %bb.ai ], [ -3, %.thread.i.i.i ] ; 2 uses
  %i.de = phi ptr [ %spec.select.i.i.i, %bb.ai ], [ %i.ct, %.thread.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @_RNvNvNtNtCsjRvGck33osM_6diesel5mysql10connection33update_transaction_manager_status17non_generic_inner(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.de, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1)
          to label %_RINvXs2_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection14LoadConnection4loadINtNtNtBa_13query_builder16select_statement15SelectStatementINtNtB1S_11from_clause10FromClauseNtNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6schema5posts5tableEINtNtB1S_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB3p_6models4PostNtNtB8_7backend5MysqlEENtNtB1S_15distinct_clause16NoDistinctClauseINtNtB1S_12where_clause11WhereClauseINtNtB58_7grouped7GroupedINtNtB58_9operators2EqNtNtB3l_7columns9publishedINtNtB58_5bound5BoundNtNtBa_9sql_types4BoolbEEEENtNtB1S_12order_clause13NoOrderClauseINtNtB1S_19limit_offset_clause17LimitOffsetClauseINtNtB1S_12limit_clause11LimitClauseIB8S_NtB9e_6BigIntxEENtNtB1S_13offset_clause14NoOffsetClauseEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i unwind label %bb.ak, !noalias !402

bb.ak:                                            ; preds = %bb.aj
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator17StatementIteratorNtNtB17_6result5ErrorEECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #25
          to label %.body unwind label %bb.al, !noalias !402

bb.al:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !402
  unreachable

_RINvXs2_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection14LoadConnection4loadINtNtNtBa_13query_builder16select_statement15SelectStatementINtNtB1S_11from_clause10FromClauseNtNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6schema5posts5tableEINtNtB1S_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB3p_6models4PostNtNtB8_7backend5MysqlEENtNtB1S_15distinct_clause16NoDistinctClauseINtNtB1S_12where_clause11WhereClauseINtNtB58_7grouped7GroupedINtNtB58_9operators2EqNtNtB3l_7columns9publishedINtNtB58_5bound5BoundNtNtBa_9sql_types4BoolbEEEENtNtB1S_12order_clause13NoOrderClauseINtNtB1S_19limit_offset_clause17LimitOffsetClauseINtNtB1S_12limit_clause11LimitClauseIB8S_NtB9e_6BigIntxEENtNtB1S_13offset_clause14NoOffsetClauseEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i: ; preds = %bb.aj
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i.i, i64 32, i1 false), !noalias !362
  %.sroa.810.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !403, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !362
  %i.di = icmp eq i64 %.sroa.0.0.copyload.i.i, -3
  br i1 %i.di, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RINvXs2_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection14LoadConnection4loadINtNtNtBa_13query_builder16select_statement15SelectStatementINtNtB1S_11from_clause10FromClauseNtNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6schema5posts5tableEINtNtB1S_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB3p_6models4PostNtNtB8_7backend5MysqlEENtNtB1S_15distinct_clause16NoDistinctClauseINtNtB1S_12where_clause11WhereClauseINtNtB58_7grouped7GroupedINtNtB58_9operators2EqNtNtB3l_7columns9publishedINtNtB58_5bound5BoundNtNtBa_9sql_types4BoolbEEEENtNtB1S_12order_clause13NoOrderClauseINtNtB1S_19limit_offset_clause17LimitOffsetClauseINtNtB1S_12limit_clause11LimitClauseIB8S_NtB9e_6BigIntxEENtNtB1S_13offset_clause14NoOffsetClauseEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i, i64 32, i1 false), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !359
  br label %bb.ao

bb.an:                                            ; preds = %_RINvXs2_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection14LoadConnection4loadINtNtNtBa_13query_builder16select_statement15SelectStatementINtNtB1S_11from_clause10FromClauseNtNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6schema5posts5tableEINtNtB1S_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB3p_6models4PostNtNtB8_7backend5MysqlEENtNtB1S_15distinct_clause16NoDistinctClauseINtNtB1S_12where_clause11WhereClauseINtNtB58_7grouped7GroupedINtNtB58_9operators2EqNtNtB3l_7columns9publishedINtNtB58_5bound5BoundNtNtBa_9sql_types4BoolbEEEENtNtB1S_12order_clause13NoOrderClauseINtNtB1S_19limit_offset_clause17LimitOffsetClauseINtNtB1S_12limit_clause11LimitClauseIB8S_NtB9e_6BigIntxEENtNtB1S_13offset_clause14NoOffsetClauseEEECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.i.i, i64 16, i1 false), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.i, i64 32, i1 false), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !noalias !406
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !406
  invoke void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtNtNtCsjRvGck33osM_6diesel9query_dsl8load_dsl7private8LoadIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostNtNtNtNtNtBZ_5mysql10connection4stmt8iterator17StatementIteratorTNtNtBZ_9sql_types7IntegerNtB3X_4TextB4k_NtB3X_4BoolENtNtB30_7backend5MysqlEB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtBZ_6result5ErrorENCINvXso_B5f_IB5d_INtNtCs40k4W9msRzi_5alloc3vec3VecB1U_EB5Z_EINtNtNtB4_6traits7collect12FromIteratorIB5d_B1U_B5Z_EE9from_iterBQ_E0B6C_ECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.s)
          to label %bb.ao unwind label %bb.b

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.dj = load i64, ptr %i.z, align 8, !range !16, !alias.scope !408, !noalias !407, !noundef !5
  %.not.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i, label %bb.at, label %bb.ap, !prof !14

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !407
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 19, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
          to label %bb.ar unwind label %bb.aq, !noalias !409

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #25
          to label %.body unwind label %bb.as, !noalias !409

bb.ar:                                            ; preds = %bb.ap
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !409
  unreachable

bb.at:                                            ; preds = %bb.ao
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !alias.scope !409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5 ; 4 uses
  store i64 %i.do, ptr %i.y, align 8
  %i.dp = icmp ult i64 %i.do, 164703072086692426
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.y, ptr %i.x, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.x)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.ds = load i64, ptr %i.aa, align 8, !range !6, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %i.do, 56
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.dr, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ds, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.dt, ptr %.sroa.6.0..sroa_idx, align 8
  %i.du = icmp eq i64 %i.do, 0
  br i1 %i.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.lr.ph

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.lr.ph: ; preds = %bb.au
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit
  %i.dx = phi ptr [ %i.dr, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.lr.ph ], [ %i.dy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56 ; 6 uses
  %.sroa.0.0.copyload25 = load i64, ptr %i.dx, align 8, !noalias !410 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload25, -1
  br i1 %.not, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.thread, label %bb.av

bb.av:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0.0.copyload25, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx26, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @12, ptr noundef nonnull %i.u)
          to label %bb.ba unwind label %bb.az

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.thread: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit
  %i.dz = ptrtoint ptr %i.dt to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  %i.ec = udiv exact i64 %i.eb, 56
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.ed = icmp eq ptr %i.dt, %i.dy
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.ef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.thread ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.ef = add nuw nsw i64 %.sroa.0.07.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %.val4.i.i.i.i22 = load i64, ptr %i.ee, align 8, !alias.scope !413, !noalias !414 ; 2 uses
  %i.eg = icmp eq i64 %.val4.i.i.i.i22, 0
  br i1 %i.eg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val5.i.i.i.i23 = load ptr, ptr %i.eh, align 8, !alias.scope !413, !noalias !414, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i23, i64 noundef %.val4.i.i.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !415
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.val.i.i.i.i24 = load i64, ptr %i.ei, align 8, !alias.scope !413, !noalias !414 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i.i24, 0
  br i1 %i.ej, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !413, !noalias !414, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !416
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i: ; preds = %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i.i
  %i.el = icmp eq i64 %i.ef, %i.ec
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i.i, %bb.au, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit.thread
  %i.em = icmp eq i64 %i.ds, 0
  br i1 %i.em, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostEECsjdJgIvFXUiH_17show_posts_step_1.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i
  %i.en = mul nuw i64 %i.ds, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !417
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostEECsjdJgIvFXUiH_17show_posts_step_1.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostEECsjdJgIvFXUiH_17show_posts_step_1.exit: ; preds = %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel5mysql10connection15MysqlConnectionECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(56) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.az:                                            ; preds = %bb.bb, %bb.ba, %bb.av
  %i.eo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(56) %i.v) #25
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostEECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(32) %i.w) #25
  br label %.body

bb.ba:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 27 to ptr))
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.dv, ptr %i.t, align 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @12, ptr noundef nonnull %i.t)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %.val4.i = load i64, ptr %i.v, align 8, !alias.scope !418 ; 2 uses
  %i.ep = icmp eq i64 %.val4.i, 0
  br i1 %i.ep, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val5.i = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !418, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !419
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i: ; preds = %bb.bd, %bb.bc
  %.val.i = load i64, ptr %i.dv, align 8, !alias.scope !418 ; 2 uses
  %i.eq = icmp eq i64 %.val.i, 0
  br i1 %i.eq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit, label %bb.be

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i
  %.val1.i = load ptr, ptr %i.dw, align 8, !alias.scope !418, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !420
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit: ; preds = %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjdJgIvFXUiH_17show_posts_step_1.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.er = icmp eq ptr %i.dy, %i.dt
  br i1 %i.er, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostECsjdJgIvFXUiH_17show_posts_step_1.exit.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjdJgIvFXUiH_17show_posts_step_1.exit

bb.bf:                                            ; preds = %.body
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bg:                                            ; preds = %bb.at
  %i.et = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjzWKoRIGE1n_28getting_started_step_1_mysql6models4PostEECsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #25
  br label %.body

bb.bh:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEE8grow_oneCsjdJgIvFXUiH_17show_posts_step_1(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !423
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 1), !noalias !423
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !423, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !423, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !423, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !423
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !423
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeE8grow_oneCsjdJgIvFXUiH_17show_posts_step_1(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !426
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !426
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjdJgIvFXUiH_17show_posts_step_1(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 1), !noalias !426
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !426, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !426, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !426
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !426, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !426
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !426
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !426
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjdJgIvFXUiH_17show_posts_step_1(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 57) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !13
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

end_hunk_0
