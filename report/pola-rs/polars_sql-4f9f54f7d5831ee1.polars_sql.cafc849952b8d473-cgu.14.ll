Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.14?download=true
inline.NumInlined: 1684
inline.NumDeleted: 390
begin_hunk_0_@_RINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_5ValueNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1o_:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22251), !dbg !22254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22255), !dbg !22254
  %i.j = load i64, ptr %1, align 8, !dbg !22257, !range !22157, !alias.scope !22255, !noalias !22260, !noundef !14 ; 3 uses
  %i.k = icmp ne i64 %i.j, -9223372036854775806, !dbg !22257
  tail call void @llvm.assume(i1 %i.k), !dbg !22257
  %i.l = xor i64 %i.j, -9223372036854775808, !dbg !22257
  %i.m = icmp slt i64 %i.j, 0, !dbg !22257
  %i.n = select i1 %i.m, i64 %i.l, i64 2, !dbg !22257
  switch i64 %i.n, label %bb.d [
    i64 0, label %bb.h
    i64 1, label %bb.h
    i64 2, label %bb.e
    i64 3, label %bb.h
    i64 4, label %bb.h
    i64 5, label %bb.h
    i64 6, label %bb.h
    i64 7, label %bb.h
    i64 8, label %bb.h
    i64 9, label %bb.h
    i64 10, label %bb.h
    i64 11, label %bb.h
    i64 12, label %bb.h
    i64 13, label %bb.h
    i64 14, label %bb.h
    i64 15, label %bb.h
    i64 16, label %bb.f
    i64 17, label %bb.g
    i64 18, label %bb.h
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.h
    i64 22, label %bb.h
  ], !dbg !22257

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !22262

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22264, !noalias !22266
  call void @_RINvXsF_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_18DollarQuotedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1C_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !22264, !noalias !22251
  %i.o = load i64, ptr %i.c, align 8, !dbg !22267, !range !5688, !alias.scope !22269, !noalias !22272, !noundef !14 ; 2 uses
  %.not.i25.i = icmp eq i64 %i.o, 18, !dbg !22267
  br i1 %.not.i25.i, label %bb.j, label %bb.i, !dbg !22274

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22276, !noalias !22266
  call void @_RINvXsP_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_20QuoteDelimitedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1E_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !22276, !noalias !22251
  %i.q = load i64, ptr %i.b, align 8, !dbg !22278, !range !5688, !alias.scope !22280, !noalias !22283, !noundef !14 ; 2 uses
  %.not.i53.i = icmp eq i64 %i.q, 18, !dbg !22278
  br i1 %.not.i53.i, label %bb.l, label %bb.k, !dbg !22285

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22287, !noalias !22266
  call void @_RINvXsP_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_20QuoteDelimitedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1E_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !22287, !noalias !22251
  %i.s = load i64, ptr %i.a, align 8, !dbg !22289, !range !5688, !alias.scope !22291, !noalias !22294, !noundef !14 ; 2 uses
  %.not.i55.i = icmp eq i64 %i.s, 18, !dbg !22289
  br i1 %.not.i55.i, label %bb.n, label %bb.m, !dbg !22296

bb.h:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i64 18, ptr %0, align 8, !dbg !22257, !alias.scope !22251, !noalias !22297
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_.exit, !dbg !22298

bb.i:                                             ; preds = %bb.e
  %.sroa.792.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22299
  %.sroa.295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.295.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.792.0..sroa_idx93.i, i64 64, i1 false), !dbg !22299, !noalias !22297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22304, !noalias !22266
  store i64 %i.o, ptr %0, align 8, !dbg !22300, !alias.scope !22305, !noalias !22297
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_.exit, !dbg !22262

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22304, !noalias !22266
  br label %bb.h, !dbg !22257

bb.k:                                             ; preds = %bb.f
  %.sroa.7215.0..sroa_idx216.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22309
  %.sroa.2218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2218.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7215.0..sroa_idx216.i, i64 64, i1 false), !dbg !22309, !noalias !22297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22314, !noalias !22266
  store i64 %i.q, ptr %0, align 8, !dbg !22310, !alias.scope !22315, !noalias !22297
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_.exit, !dbg !22262

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22314, !noalias !22266
  br label %bb.h, !dbg !22257

bb.m:                                             ; preds = %bb.g
  %.sroa.7221.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22319
  %.sroa.2224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2224.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7221.0..sroa_idx222.i, i64 64, i1 false), !dbg !22319, !noalias !22297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22324, !noalias !22266
  store i64 %i.s, ptr %0, align 8, !dbg !22320, !alias.scope !22325, !noalias !22297
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_.exit, !dbg !22262

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22324, !noalias !22266
  br label %bb.h, !dbg !22257

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_.exit: ; preds = %bb.m, %bb.k, %bb.i, %bb.h, %bb.b
  ret void, !dbg !22329
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_5ValueNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22330 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !22331
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !22331
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !22332, !noalias !22335 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !22332
  %i.e = trunc nuw i64 %i.d to i1, !dbg !22339
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !22339
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !22339

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1z_5ValueNtNtB1B_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB2T_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !22340
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit, !dbg !22342

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !dbg !22343, !range !22157, !alias.scope !22346, !noalias !22349, !noundef !14 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775806, !dbg !22343
  tail call void @llvm.assume(i1 %i.i), !dbg !22343
  %i.j = xor i64 %i.h, -9223372036854775808, !dbg !22343
  %i.k = icmp slt i64 %i.h, 0, !dbg !22343
  %i.l = select i1 %i.k, i64 %i.j, i64 2, !dbg !22343
  switch i64 %i.l, label %bb.d [
    i64 0, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 1, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 2, label %bb.e
    i64 3, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 4, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 5, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 6, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 7, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 8, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 9, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 10, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 11, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 12, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 13, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 14, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 15, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 16, label %bb.f
    i64 17, label %bb.g
    i64 18, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 19, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 20, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 21, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
    i64 22, label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit
  ], !dbg !22343

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !22351

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_RINvXsF_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_18DollarQuotedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !22353
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit, !dbg !22353

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22355
  %i.o = tail call noundef zeroext i1 @_RINvXsP_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_20QuoteDelimitedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !22356
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit, !dbg !22356

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22358
  %i.q = tail call noundef zeroext i1 @_RINvXsP_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_20QuoteDelimitedStringNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !22359
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit, !dbg !22359

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ %i.q, %bb.g ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ %i.m, %bb.e ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ %i.o, %bb.f ]
  ret i1 %.sroa.0.0.in.i, !dbg !22361
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCscgRAwXFJnXP_4core4hash4Hash10hash_sliceNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 16 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 !dbg !16200 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 144, !dbg !22362
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !22362
  %i.b = icmp eq i64 %1, 0, !dbg !22367
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !22368

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 144, !dbg !22370 ; 2 uses
  tail call void @_RINvXs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB6_4ExprNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 16 %.sroa.0.03, ptr noalias noundef nonnull align 16 dereferenceable(48) %2), !dbg !22372
  %i.d = icmp eq ptr %i.c, %i.a, !dbg !22367
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !22368

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !22373
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext14execute_selects3_00E0EEB2K_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22374 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 7 uses
  %i.f = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size()
          to label %bb.b unwind label %bb.k, !dbg !22378

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size()
          to label %bb.c unwind label %bb.k, !dbg !22378

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22378
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !22378
  store ptr %2, ptr %i.h, align 16, !dbg !22378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22378
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152, !dbg !22378
  store ptr %3, ptr %i.i, align 8, !dbg !22378
  %i.j = invoke { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack()
          to label %bb.d unwind label %bb.i, !dbg !22379, !noalias !22382 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !22379
  %i.l = trunc nuw i64 %i.k to i1, !dbg !22386
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.f
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !22386
  br i1 %or.cond.i.not, label %.noexc, label %bb.e, !dbg !22386

bb.e:                                             ; preds = %bb.d
  call void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4F_10SQLContext14execute_selects3_00E0EE0EB4H_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.e), !dbg !22387, !noalias !14
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_.exit, !dbg !22389

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22390, !noalias !22395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22400), !dbg !22399
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !22401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22390, !noalias !22395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22402, !noalias !22395
  store ptr %2, ptr %i.b, align 8, !dbg !22402, !noalias !22395
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext14execute_selects3_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nonnull poison), !dbg !22403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22404, !noalias !22395
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !22405
  %i.o = load i64, ptr %i.n, align 16, !dbg !22405, !range !984, !noalias !22395, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775780, !dbg !22405
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !22408

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !22409, !noalias !22395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22410, !noalias !22395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !22411, !noalias !22418
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22411
  store i64 -9223372036854775780, ptr %i.q, align 16, !dbg !22411, !alias.scope !22400, !noalias !22418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22419, !noalias !22395
  br label %bb.h, !dbg !22420

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !22422, !noalias !22395
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !22422
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !22390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !22422, !noalias !22395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22410, !noalias !22395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !22390, !noalias !22395
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !22390
  store i64 %i.o, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !22390, !noalias !22395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22419, !noalias !22395
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext14execute_selects3_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %3), !dbg !22423
  br label %bb.h, !dbg !22423

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !22425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22425
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_.exit, !dbg !22389

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %.body unwind label %bb.j, !dbg !22426

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22429, !noalias !22430
  unreachable, !dbg !22429

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22431
  ret void, !dbg !22432

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body6, !dbg !22378

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %1) #37
          to label %.body unwind label %bb.l, !dbg !22431

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22378
  unreachable, !dbg !22378
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext16process_group_bys1_00E0EEB2K_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22433 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 7 uses
  %i.f = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size()
          to label %bb.b unwind label %bb.k, !dbg !22434

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size()
          to label %bb.c unwind label %bb.k, !dbg !22434

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22434
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !22434
  store ptr %2, ptr %i.h, align 16, !dbg !22434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22434
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152, !dbg !22434
  store ptr %3, ptr %i.i, align 8, !dbg !22434
  %i.j = invoke { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack()
          to label %bb.d unwind label %bb.i, !dbg !22435, !noalias !22438 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !22435
  %i.l = trunc nuw i64 %i.k to i1, !dbg !22442
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.f
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !22442
  br i1 %or.cond.i.not, label %.noexc, label %bb.e, !dbg !22442

bb.e:                                             ; preds = %bb.d
  call void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4F_10SQLContext16process_group_bys1_00E0EE0EB4H_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.e), !dbg !22443, !noalias !14
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_.exit, !dbg !22445

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22446, !noalias !22450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22455), !dbg !22454
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !22456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22446, !noalias !22450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22457, !noalias !22450
  store ptr %2, ptr %i.b, align 8, !dbg !22457, !noalias !22450
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext16process_group_bys1_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nonnull poison), !dbg !22458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22459, !noalias !22450
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !22460
  %i.o = load i64, ptr %i.n, align 16, !dbg !22460, !range !984, !noalias !22450, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775780, !dbg !22460
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !22463

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !22464, !noalias !22450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22465, !noalias !22450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !22466, !noalias !22473
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22466
  store i64 -9223372036854775780, ptr %i.q, align 16, !dbg !22466, !alias.scope !22455, !noalias !22473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22474, !noalias !22450
  br label %bb.h, !dbg !22475

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !22477, !noalias !22450
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !22477
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !22446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !22477, !noalias !22450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22465, !noalias !22450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !22446, !noalias !22450
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !22446
  store i64 %i.o, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !22446, !noalias !22450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22474, !noalias !22450
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext16process_group_bys1_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %3), !dbg !22478
  br label %bb.h, !dbg !22478

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !22480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22480
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_.exit, !dbg !22445

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %.body unwind label %bb.j, !dbg !22481

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22484, !noalias !22485
  unreachable, !dbg !22484

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22486
  ret void, !dbg !22487

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body6, !dbg !22434

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %1) #37
          to label %.body unwind label %bb.l, !dbg !22486

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22434
  unreachable, !dbg !22434
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2G_10SQLContext15expr_or_ordinals0_0E0EEB2I_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22488 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 7 uses
  %i.f = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size()
          to label %bb.b unwind label %bb.k, !dbg !22489

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size()
          to label %bb.c unwind label %bb.k, !dbg !22489

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22489
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !22489
  store ptr %2, ptr %i.h, align 16, !dbg !22489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22489
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152, !dbg !22489
  store ptr %3, ptr %i.i, align 8, !dbg !22489
  %i.j = invoke { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack()
          to label %bb.d unwind label %bb.i, !dbg !22490, !noalias !22493 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !22490
  %i.l = trunc nuw i64 %i.k to i1, !dbg !22497
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.f
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !22497
  br i1 %or.cond.i.not, label %.noexc, label %bb.e, !dbg !22497

bb.e:                                             ; preds = %bb.d
  call void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4D_10SQLContext15expr_or_ordinals0_0E0EE0EB4F_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.e), !dbg !22498, !noalias !14
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_.exit, !dbg !22500

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22501, !noalias !22505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22510), !dbg !22509
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !22511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22501, !noalias !22505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22512, !noalias !22505
  store ptr %2, ptr %i.b, align 8, !dbg !22512, !noalias !22505
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3j_10SQLContext15expr_or_ordinals0_0E0EE00EB3l_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nonnull poison), !dbg !22513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22514, !noalias !22505
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !22515
  %i.o = load i64, ptr %i.n, align 16, !dbg !22515, !range !984, !noalias !22505, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775780, !dbg !22515
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !22518

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !22519, !noalias !22505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22520, !noalias !22505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !22521, !noalias !22528
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22521
  store i64 -9223372036854775780, ptr %i.q, align 16, !dbg !22521, !alias.scope !22510, !noalias !22528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22529, !noalias !22505
  br label %bb.h, !dbg !22530

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !22532, !noalias !22505
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !22532
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !22501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !22532, !noalias !22505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22520, !noalias !22505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !22501, !noalias !22505
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !22501
  store i64 %i.o, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !22501, !noalias !22505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22529, !noalias !22505
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1W_10SQLContext15expr_or_ordinals0_0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1Y_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %3), !dbg !22533
  br label %bb.h, !dbg !22533

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !22535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22535
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_.exit, !dbg !22500

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %.body unwind label %bb.j, !dbg !22536

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22539, !noalias !22540
  unreachable, !dbg !22539

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22541
  ret void, !dbg !22542

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body6, !dbg !22489

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %1) #37
          to label %.body unwind label %bb.l, !dbg !22541

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22489
  unreachable, !dbg !22489
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EEB2E_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22543 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 7 uses
  %i.f = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size()
          to label %bb.b unwind label %bb.k, !dbg !22544

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size()
          to label %bb.c unwind label %bb.k, !dbg !22544

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22544
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !22544
  store ptr %2, ptr %i.h, align 16, !dbg !22544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22544
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152, !dbg !22544
  store ptr %3, ptr %i.i, align 8, !dbg !22544
  %i.j = invoke { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack()
          to label %bb.d unwind label %bb.i, !dbg !22545, !noalias !22548 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !22545
  %i.l = trunc nuw i64 %i.k to i1, !dbg !22552
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.f
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !22552
  br i1 %or.cond.i.not, label %.noexc, label %bb.e, !dbg !22552

bb.e:                                             ; preds = %bb.d
  call void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4B_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.e), !dbg !22553, !noalias !14
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_.exit, !dbg !22555

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22556, !noalias !22560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22565), !dbg !22564
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !22566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22556, !noalias !22560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22567, !noalias !22560
  store ptr %2, ptr %i.b, align 8, !dbg !22567, !noalias !22560
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE00EB3h_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nonnull poison), !dbg !22568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22569, !noalias !22560
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !22570
  %i.o = load i64, ptr %i.n, align 16, !dbg !22570, !range !984, !noalias !22560, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775780, !dbg !22570
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !22573

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !22574, !noalias !22560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22575, !noalias !22560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !22576, !noalias !22583
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22576
  store i64 -9223372036854775780, ptr %i.q, align 16, !dbg !22576, !alias.scope !22565, !noalias !22583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22584, !noalias !22560
  br label %bb.h, !dbg !22585

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !22587, !noalias !22560
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !22587
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !22556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !22587, !noalias !22560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22575, !noalias !22560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !22556, !noalias !22560
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !22556
  store i64 %i.o, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !22556, !noalias !22560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22584, !noalias !22560
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1U_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %3), !dbg !22588
  br label %bb.h, !dbg !22588

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !22590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22590
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_.exit, !dbg !22555

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %.body unwind label %bb.j, !dbg !22591

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22594, !noalias !22595
  unreachable, !dbg !22594

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22596
  ret void, !dbg !22597

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body6, !dbg !22544

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %1) #37
          to label %.body unwind label %bb.l, !dbg !22596

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22544
  unreachable, !dbg !22544
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2h_10SQLContext18process_subqueries0EEB2j_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22598 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 7 uses
  %i.f = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size()
          to label %bb.b unwind label %bb.k, !dbg !22599

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size()
          to label %bb.c unwind label %bb.k, !dbg !22599

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22599
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !22599
  store ptr %2, ptr %i.h, align 16, !dbg !22599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22599
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152, !dbg !22599
  store ptr %3, ptr %i.i, align 8, !dbg !22599
  %i.j = invoke { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack()
          to label %bb.d unwind label %bb.i, !dbg !22600, !noalias !22603 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !22600
  %i.l = trunc nuw i64 %i.k to i1, !dbg !22607
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.f
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !22607
  br i1 %or.cond.i.not, label %.noexc, label %bb.e, !dbg !22607

bb.e:                                             ; preds = %bb.d
  call void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4d_10SQLContext18process_subqueries0EE0EB4f_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.e), !dbg !22608, !noalias !14
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_.exit, !dbg !22610

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22611, !noalias !22615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !22619
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22620), !dbg !22619
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !22621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22611, !noalias !22615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22622, !noalias !22615
  store ptr %2, ptr %i.b, align 8, !dbg !22622, !noalias !22615
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2U_10SQLContext18process_subqueries0EE00EB2W_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nonnull poison), !dbg !22623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22624, !noalias !22615
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !22625
  %i.o = load i64, ptr %i.n, align 16, !dbg !22625, !range !984, !noalias !22615, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775780, !dbg !22625
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !22628

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !22629, !noalias !22615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22630, !noalias !22615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !22631, !noalias !22638
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22631
  store i64 -9223372036854775780, ptr %i.q, align 16, !dbg !22631, !alias.scope !22620, !noalias !22638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22639, !noalias !22615
  br label %bb.h, !dbg !22640

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !22642, !noalias !22615
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !22642
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !22611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !22642, !noalias !22615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22630, !noalias !22615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !22611, !noalias !22615
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !22611
  store i64 %i.o, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !22611, !noalias !22615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22639, !noalias !22615
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1e_10SQLContext18process_subqueries0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1g_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %3), !dbg !22643
  br label %bb.h, !dbg !22643

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !22645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22645
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_.exit, !dbg !22610

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %.body unwind label %bb.j, !dbg !22646

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22649, !noalias !22650
  unreachable, !dbg !22649

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22651
  ret void, !dbg !22652

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body6, !dbg !22599

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %1) #37
          to label %.body unwind label %bb.l, !dbg !22651

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !22599
  unreachable, !dbg !22599
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) unnamed_addr #7 !dbg !22653 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !dbg !22657, !range !2277, !noundef !14
  switch i8 %i.a, label %bb.k [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 10, label %bb.h
    i8 11, label %bb.i
    i8 12, label %bb.j
  ], !dbg !22658

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22659
  %i.c = load i8, ptr %i.b, align 1, !dbg !22659, !noundef !14
  %i.d = zext i8 %i.c to i128, !dbg !22661
  br label %.sink.split, !dbg !22668

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !22669
  %i.f = load i16, ptr %i.e, align 2, !dbg !22669, !noundef !14
  %i.g = zext i16 %i.f to i128, !dbg !22671
  br label %.sink.split, !dbg !22678

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !22679
  %i.i = load i32, ptr %i.h, align 4, !dbg !22679, !noundef !14
  %i.j = zext i32 %i.i to i128, !dbg !22681
  br label %.sink.split, !dbg !22688

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22689
  %i.l = load i64, ptr %i.k, align 8, !dbg !22689, !noundef !14
  %i.m = zext i64 %i.l to i128, !dbg !22691
  br label %.sink.split, !dbg !22698

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !22699
  %i.o = load i8, ptr %i.n, align 1, !dbg !22699, !noundef !14
  %i.p = sext i8 %i.o to i128, !dbg !22701
  br label %.sink.split, !dbg !22708

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !22709
  %i.r = load i16, ptr %i.q, align 2, !dbg !22709, !noundef !14
  %i.s = sext i16 %i.r to i128, !dbg !22711
  br label %.sink.split, !dbg !22718

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !22719
  %i.u = load i32, ptr %i.t, align 4, !dbg !22719, !noundef !14
  %i.v = sext i32 %i.u to i128, !dbg !22721
  br label %.sink.split, !dbg !22728

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22729
  %i.x = load i64, ptr %i.w, align 8, !dbg !22729, !noundef !14
  %i.y = sext i64 %i.x to i128, !dbg !22731
  br label %.sink.split, !dbg !22737

bb.j:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22738
  %i.aa = load i128, ptr %i.z, align 16, !dbg !22738, !noundef !14
  br label %.sink.split, !dbg !22740

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sink1 = phi i128 [ %i.aa, %bb.j ], [ %i.y, %bb.i ], [ %i.v, %bb.h ], [ %i.s, %bb.g ], [ %i.p, %bb.f ], [ %i.m, %bb.e ], [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22741
  store i128 %.sink1, ptr %i.ab, align 16, !dbg !22741
  br label %bb.k, !dbg !22741

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i128 [ 0, %bb.a ], [ 1, %.sink.split ]
  store i128 %.sink, ptr %0, align 16, !dbg !22741
  ret void, !dbg !22742
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !22743 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 16               ; 8 uses
  %i.l = alloca [48 x i8], align 16               ; 8 uses
  %i.m = alloca [48 x i8], align 16               ; 8 uses
  %i.n = alloca [48 x i8], align 16               ; 8 uses
  %i.o = alloca [48 x i8], align 16               ; 9 uses
  %i.p = alloca [48 x i8], align 16               ; 9 uses
  %i.q = alloca [48 x i8], align 16               ; 7 uses
  %i.r = alloca [48 x i8], align 16               ; 8 uses
  %i.s = alloca [48 x i8], align 16               ; 8 uses
  %i.t = alloca [48 x i8], align 16               ; 7 uses
  %i.u = alloca [48 x i8], align 16               ; 8 uses
  %i.v = alloca [48 x i8], align 16               ; 8 uses
  %i.w = load i8, ptr %0, align 16, !dbg !22744, !range !2277, !noundef !14 ; 34 uses
  switch i8 %i.w, label %bb.b [
    i8 28, label %bb.c
    i8 31, label %bb.d
    i8 33, label %bb.g
  ], !dbg !22745

bb.b:                                             ; preds = %bb.a
  %i.x = load i8, ptr %1, align 16, !dbg !22744, !range !2277, !noundef !14 ; 5 uses
  switch i8 %i.x, label %bb.m [
    i8 28, label %bb.n
    i8 31, label %bb.o
    i8 33, label %bb.r
  ], !dbg !22745

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !22746
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22748
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !22746
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !dbg !22748
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !dbg !22746
  store i8 27, ptr %i.t, align 16, !dbg !22746
  %i.ab = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit unwind label %bb.h, !dbg !22749

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !22753
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22755 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !22761
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !22761, !range !584, !alias.scope !22767, !noundef !14 ; 2 uses
  %i.af = icmp ugt i8 %i.ae, -41, !dbg !22770
  br i1 %i.af, label %bb.f, label %bb.e, !dbg !22770

bb.e:                                             ; preds = %bb.d
  %i.ag = add i8 %i.ae, 64, !dbg !22771
  %i.ah = tail call i8 @llvm.umin.i8(i8 %i.ag, i8 24), !dbg !22773
  %.sroa.0.0.i.i = zext nneg i8 %i.ah to i64, !dbg !22773
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !22776

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ac, align 8, !dbg !22777, !alias.scope !22767, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22778
  %i.ak = load i64, ptr %i.aj, align 16, !dbg !22778, !alias.scope !22767, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !22779

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.e, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.ak, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ], !dbg !22780
  %.sroa.0.0.i = phi ptr [ %i.ai, %bb.f ], [ %i.ac, %bb.e ], !dbg !22781
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !22753
  store ptr %.sroa.0.0.i, ptr %i.al, align 8, !dbg !22753
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !22753
  store i64 %.sroa.01.0.i, ptr %i.am, align 16, !dbg !22753
  store i8 2, ptr %i.v, align 16, !dbg !22753
  %i.an = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit56 unwind label %bb.k, !dbg !22782

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !22784
end_hunk_0
begin_hunk_1_@memcmp
!22211 = !{!22212, !22214}
!22212 = distinct !{!22212, !22213, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB30_: argument 0"}
!22213 = distinct !{!22213, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB30_"}
!22214 = distinct !{!22214, !22213, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB30_: argument 1"}
!22215 = !DILocation(line: 52, column: 24, scope: !22209, inlinedAt: !22210)
!22216 = !DILocation(line: 59, column: 9, scope: !22217, inlinedAt: !22210)
!22217 = distinct !DILexicalBlock(scope: !22209, file: !19347, line: 52, column: 5)
!22218 = !DILocation(line: 56, column: 5, scope: !22217, inlinedAt: !22210)
!22219 = !DILocation(line: 138, column: 40, scope: !22220, inlinedAt: !22221)
!22220 = distinct !DISubprogram(name: "{closure#0}<polars_sql::sql_visitors::WindowFunctionFinder>", linkageName: "_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0B1q_", scope: !22155, file: !19339, line: 138, type: !13, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22221 = distinct !DILocation(line: 57, column: 9, scope: !22217, inlinedAt: !22210)
!22222 = !{!22223}
!22223 = distinct !{!22223, !22224, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0B1q_: argument 0"}
!22224 = distinct !{!22224, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0B1q_"}
!22225 = !{!22226}
!22226 = distinct !{!22226, !22224, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0B1q_: argument 1"}
!22227 = !DILocation(line: 0, scope: !22228, inlinedAt: !22221)
!22228 = !DILexicalBlockFile(scope: !22220, file: !5429, discriminator: 0)
!22229 = !DILocation(line: 152, column: 24, scope: !22230, inlinedAt: !22221)
!22230 = distinct !DILexicalBlock(scope: !22220, file: !19339, line: 138, column: 40)
!22231 = !DILocation(line: 193, column: 33, scope: !22220, inlinedAt: !22221)
!22232 = !DILocation(line: 193, column: 33, scope: !22233, inlinedAt: !22221)
!22233 = distinct !DILexicalBlock(scope: !22220, file: !19339, line: 138, column: 40)
!22234 = !DILocation(line: 196, column: 41, scope: !22220, inlinedAt: !22221)
!22235 = !DILocation(line: 196, column: 41, scope: !22236, inlinedAt: !22221)
!22236 = distinct !DILexicalBlock(scope: !22220, file: !19339, line: 138, column: 40)
!22237 = !DILocation(line: 138, column: 45, scope: !22206)
!22238 = distinct !DISubprogram(name: "visit<polars_sql::sql_visitors::AmbiguousColumnVisitor>", linkageName: "_RINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_5ValueNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1o_", scope: !22140, file: !19339, line: 138, type: !13, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22239 = !DILocation(line: 138, column: 40, scope: !22238)
!22240 = !DILocation(line: 52, column: 30, scope: !22241, inlinedAt: !22242)
!22241 = distinct !DISubprogram(name: "maybe_grow<core::ops::control_flow::ControlFlow<polars_error::PolarsError, ()>, sqlparser::ast::value::{impl#33}::visit::{closure_env#0}<polars_sql::sql_visitors::AmbiguousColumnVisitor>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22242 = distinct !DILocation(line: 138, column: 40, scope: !22238)
!22243 = !{!22244, !22246, !22247}
!22244 = distinct !{!22244, !22245, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_: argument 0"}
!22245 = distinct !{!22245, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_"}
!22246 = distinct !{!22246, !22245, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_: argument 1"}
!22247 = distinct !{!22247, !22245, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2m_5ValueNtNtB2o_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3G_: argument 2"}
!22248 = !DILocation(line: 52, column: 24, scope: !22241, inlinedAt: !22242)
!22249 = !DILocation(line: 59, column: 9, scope: !22250, inlinedAt: !22242)
!22250 = distinct !DILexicalBlock(scope: !22241, file: !19347, line: 52, column: 5)
!22251 = !{!22252}
!22252 = distinct !{!22252, !22253, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1q_: argument 0"}
!22253 = distinct !{!22253, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1q_"}
!22254 = !DILocation(line: 57, column: 9, scope: !22250, inlinedAt: !22242)
!22255 = !{!22256}
!22256 = distinct !{!22256, !22253, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1q_: argument 1"}
!22257 = !DILocation(line: 138, column: 40, scope: !22258, inlinedAt: !22259)
!22258 = distinct !DISubprogram(name: "{closure#0}<polars_sql::sql_visitors::AmbiguousColumnVisitor>", linkageName: "_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1q_", scope: !22155, file: !19339, line: 138, type: !13, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22259 = distinct !DILocation(line: 57, column: 9, scope: !22250, inlinedAt: !22242)
!22260 = !{!22252, !22261}
!22261 = distinct !{!22261, !22253, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1q_: argument 2"}
!22262 = !DILocation(line: 0, scope: !22263, inlinedAt: !22259)
!22263 = !DILexicalBlockFile(scope: !22258, file: !5429, discriminator: 0)
!22264 = !DILocation(line: 152, column: 24, scope: !22265, inlinedAt: !22259)
!22265 = distinct !DILexicalBlock(scope: !22258, file: !19339, line: 138, column: 40)
!22266 = !{!22252, !22256, !22261}
!22267 = !DILocation(line: 116, column: 15, scope: !20235, inlinedAt: !22268)
!22268 = distinct !DILocation(line: 152, column: 24, scope: !22265, inlinedAt: !22259)
!22269 = !{!22270}
!22270 = distinct !{!22270, !22271, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 1"}
!22271 = distinct !{!22271, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql"}
!22272 = !{!22273, !22252, !22256, !22261}
!22273 = distinct !{!22273, !22271, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 0"}
!22274 = !DILocation(line: 116, column: 9, scope: !20235, inlinedAt: !22268)
!22275 = !DILocation(line: 193, column: 33, scope: !22258, inlinedAt: !22259)
!22276 = !DILocation(line: 193, column: 33, scope: !22277, inlinedAt: !22259)
!22277 = distinct !DILexicalBlock(scope: !22258, file: !19339, line: 138, column: 40)
!22278 = !DILocation(line: 116, column: 15, scope: !20235, inlinedAt: !22279)
!22279 = distinct !DILocation(line: 193, column: 33, scope: !22277, inlinedAt: !22259)
!22280 = !{!22281}
!22281 = distinct !{!22281, !22282, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 1"}
!22282 = distinct !{!22282, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql"}
!22283 = !{!22284, !22252, !22256, !22261}
!22284 = distinct !{!22284, !22282, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 0"}
!22285 = !DILocation(line: 116, column: 9, scope: !20235, inlinedAt: !22279)
!22286 = !DILocation(line: 196, column: 41, scope: !22258, inlinedAt: !22259)
!22287 = !DILocation(line: 196, column: 41, scope: !22288, inlinedAt: !22259)
!22288 = distinct !DILexicalBlock(scope: !22258, file: !19339, line: 138, column: 40)
!22289 = !DILocation(line: 116, column: 15, scope: !20235, inlinedAt: !22290)
!22290 = distinct !DILocation(line: 196, column: 41, scope: !22288, inlinedAt: !22259)
!22291 = !{!22292}
!22292 = distinct !{!22292, !22293, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 1"}
!22293 = distinct !{!22293, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql"}
!22294 = !{!22295, !22252, !22256, !22261}
!22295 = distinct !{!22295, !22293, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 0"}
!22296 = !DILocation(line: 116, column: 9, scope: !20235, inlinedAt: !22290)
!22297 = !{!22256, !22261}
!22298 = !DILocation(line: 138, column: 45, scope: !22258, inlinedAt: !22259)
!22299 = !DILocation(line: 118, column: 38, scope: !20247, inlinedAt: !22268)
!22300 = !DILocation(line: 131, column: 38, scope: !20249, inlinedAt: !22301)
!22301 = distinct !DILocation(line: 152, column: 24, scope: !22302, inlinedAt: !22259)
!22302 = distinct !DILexicalBlock(scope: !22303, file: !19339, line: 152, column: 41)
!22303 = distinct !DILexicalBlock(scope: !22265, file: !19339, line: 152, column: 41)
!22304 = !DILocation(line: 152, column: 41, scope: !22265, inlinedAt: !22259)
!22305 = !{!22306, !22308, !22252}
!22306 = distinct !{!22306, !22307, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 0"}
!22307 = distinct !{!22307, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql"}
!22308 = distinct !{!22308, !22307, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 1"}
!22309 = !DILocation(line: 118, column: 38, scope: !20247, inlinedAt: !22279)
!22310 = !DILocation(line: 131, column: 38, scope: !20249, inlinedAt: !22311)
!22311 = distinct !DILocation(line: 193, column: 33, scope: !22312, inlinedAt: !22259)
!22312 = distinct !DILexicalBlock(scope: !22313, file: !19339, line: 193, column: 52)
!22313 = distinct !DILexicalBlock(scope: !22277, file: !19339, line: 193, column: 52)
!22314 = !DILocation(line: 193, column: 52, scope: !22277, inlinedAt: !22259)
!22315 = !{!22316, !22318, !22252}
!22316 = distinct !{!22316, !22317, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 0"}
!22317 = distinct !{!22317, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql"}
!22318 = distinct !{!22318, !22317, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 1"}
!22319 = !DILocation(line: 118, column: 38, scope: !20247, inlinedAt: !22290)
!22320 = !DILocation(line: 131, column: 38, scope: !20249, inlinedAt: !22321)
!22321 = distinct !DILocation(line: 196, column: 41, scope: !22322, inlinedAt: !22259)
!22322 = distinct !DILexicalBlock(scope: !22323, file: !19339, line: 196, column: 60)
!22323 = distinct !DILexicalBlock(scope: !22288, file: !19339, line: 196, column: 60)
!22324 = !DILocation(line: 196, column: 60, scope: !22288, inlinedAt: !22259)
!22325 = !{!22326, !22328, !22252}
!22326 = distinct !{!22326, !22327, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 0"}
!22327 = distinct !{!22327, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql"}
!22328 = distinct !{!22328, !22327, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql: argument 1"}
!22329 = !DILocation(line: 138, column: 45, scope: !22238)
!22330 = distinct !DISubprogram(name: "visit<polars_sql::sql_visitors::TableIdentifierCollector>", linkageName: "_RINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB6_5ValueNtNtB8_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1o_", scope: !22140, file: !19339, line: 138, type: !13, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22331 = !DILocation(line: 138, column: 40, scope: !22330)
!22332 = !DILocation(line: 52, column: 30, scope: !22333, inlinedAt: !22334)
!22333 = distinct !DISubprogram(name: "maybe_grow<core::ops::control_flow::ControlFlow<(), ()>, sqlparser::ast::value::{impl#33}::visit::{closure_env#0}<polars_sql::sql_visitors::TableIdentifierCollector>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22334 = distinct !DILocation(line: 138, column: 40, scope: !22330)
!22335 = !{!22336, !22338}
!22336 = distinct !{!22336, !22337, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_: argument 0"}
!22337 = distinct !{!22337, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_"}
!22338 = distinct !{!22338, !22337, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1G_5ValueNtNtB1I_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB30_: argument 1"}
!22339 = !DILocation(line: 52, column: 24, scope: !22333, inlinedAt: !22334)
!22340 = !DILocation(line: 59, column: 9, scope: !22341, inlinedAt: !22334)
!22341 = distinct !DILexicalBlock(scope: !22333, file: !19347, line: 52, column: 5)
!22342 = !DILocation(line: 56, column: 5, scope: !22341, inlinedAt: !22334)
!22343 = !DILocation(line: 138, column: 40, scope: !22344, inlinedAt: !22345)
!22344 = distinct !DISubprogram(name: "{closure#0}<polars_sql::sql_visitors::TableIdentifierCollector>", linkageName: "_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0B1q_", scope: !22155, file: !19339, line: 138, type: !13, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22345 = distinct !DILocation(line: 57, column: 9, scope: !22341, inlinedAt: !22334)
!22346 = !{!22347}
!22347 = distinct !{!22347, !22348, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0B1q_: argument 0"}
!22348 = distinct !{!22348, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0B1q_"}
!22349 = !{!22350}
!22350 = distinct !{!22350, !22348, !"_RNCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB8_5ValueNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0B1q_: argument 1"}
!22351 = !DILocation(line: 0, scope: !22352, inlinedAt: !22345)
!22352 = !DILexicalBlockFile(scope: !22344, file: !5429, discriminator: 0)
!22353 = !DILocation(line: 152, column: 24, scope: !22354, inlinedAt: !22345)
!22354 = distinct !DILexicalBlock(scope: !22344, file: !19339, line: 138, column: 40)
!22355 = !DILocation(line: 193, column: 33, scope: !22344, inlinedAt: !22345)
!22356 = !DILocation(line: 193, column: 33, scope: !22357, inlinedAt: !22345)
!22357 = distinct !DILexicalBlock(scope: !22344, file: !19339, line: 138, column: 40)
!22358 = !DILocation(line: 196, column: 41, scope: !22344, inlinedAt: !22345)
!22359 = !DILocation(line: 196, column: 41, scope: !22360, inlinedAt: !22345)
!22360 = distinct !DILexicalBlock(scope: !22344, file: !19339, line: 138, column: 40)
!22361 = !DILocation(line: 138, column: 45, scope: !22330)
!22362 = !DILocation(line: 961, column: 18, scope: !16189, inlinedAt: !22363)
!22363 = !DILocation(line: 102, column: 78, scope: !16191, inlinedAt: !22364)
!22364 = !DILocation(line: 1041, column: 9, scope: !16195, inlinedAt: !22365)
!22365 = !DILocation(line: 26, column: 14, scope: !16197, inlinedAt: !22366)
!22366 = !DILocation(line: 238, column: 22, scope: !16200)
!22367 = !DILocation(line: 1717, column: 9, scope: !16204, inlinedAt: !22368)
!22368 = !DILocation(line: 180, column: 28, scope: !16207, inlinedAt: !22369)
!22369 = !DILocation(line: 238, column: 22, scope: !16213)
!22370 = !DILocation(line: 659, column: 28, scope: !16217, inlinedAt: !22371)
!22371 = !DILocation(line: 185, column: 40, scope: !16207, inlinedAt: !22369)
!22372 = !DILocation(line: 239, column: 19, scope: !16220)
!22373 = !DILocation(line: 241, column: 6, scope: !16200)
!22374 = distinct !DISubprogram(name: "rewrite<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::execute_select::{closure#5}::{closure_env#0}>>>", linkageName: "_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext14execute_selects3_00E0EEB2K_", scope: !22376, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22375 = !DIFile(filename: "crates/polars-plan/src/plans/visitor/visitors.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "61c9ab279aa9ea495f0af87f39fa5868")
!22376 = !DINamespace(name: "TreeWalker", scope: !22377)
!22377 = !DINamespace(name: "visitors", scope: !5420)
!22378 = !DILocation(line: 46, column: 5, scope: !22374)
!22379 = !DILocation(line: 52, column: 30, scope: !22380, inlinedAt: !22381)
!22380 = distinct !DISubprogram(name: "maybe_grow<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::execute_select::{closure#5}::{closure_env#0}>>>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22381 = distinct !DILocation(line: 46, column: 5, scope: !22374)
!22382 = !{!22383, !22385}
!22383 = distinct !{!22383, !22384, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_: argument 0"}
!22384 = distinct !{!22384, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_"}
!22385 = distinct !{!22385, !22384, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0EB4O_: argument 1"}
!22386 = !DILocation(line: 52, column: 24, scope: !22380, inlinedAt: !22381)
!22387 = !DILocation(line: 59, column: 9, scope: !22388, inlinedAt: !22381)
!22388 = distinct !DILexicalBlock(scope: !22380, file: !19347, line: 52, column: 5)
!22389 = !DILocation(line: 56, column: 5, scope: !22388, inlinedAt: !22381)
!22390 = !DILocation(line: 60, column: 13, scope: !22391, inlinedAt: !22394)
!22391 = distinct !DILexicalBlock(scope: !22392, file: !22375, line: 52, column: 9)
!22392 = distinct !DISubprogram(name: "{closure#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::execute_select::{closure#5}::{closure_env#0}>>>", linkageName: "_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_", scope: !22393, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22393 = !DINamespace(name: "rewrite", scope: !22376)
!22394 = distinct !DILocation(line: 57, column: 9, scope: !22388, inlinedAt: !22381)
!22395 = !{!22396, !22398, !22385}
!22396 = distinct !{!22396, !22397, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_: argument 0"}
!22397 = distinct !{!22397, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_"}
!22398 = distinct !{!22398, !22397, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_: argument 1"}
!22399 = !DILocation(line: 57, column: 9, scope: !22388, inlinedAt: !22381)
!22400 = !{!22396}
!22401 = !DILocation(line: 52, column: 38, scope: !22392, inlinedAt: !22394)
!22402 = !DILocation(line: 60, column: 36, scope: !22391, inlinedAt: !22394)
!22403 = !DILocation(line: 60, column: 18, scope: !22391, inlinedAt: !22394)
!22404 = !DILocation(line: 60, column: 86, scope: !22391, inlinedAt: !22394)
!22405 = !DILocation(line: 2173, column: 15, scope: !22406, inlinedAt: !22407)
!22406 = distinct !DISubprogram(name: "branch<polars_plan::dsl::expr::Expr, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !676, file: !675, line: 2172, type: !13, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22407 = distinct !DILocation(line: 60, column: 13, scope: !22391, inlinedAt: !22394)
!22408 = !DILocation(line: 2173, column: 9, scope: !22406, inlinedAt: !22407)
!22409 = !DILocation(line: 2175, column: 17, scope: !22406, inlinedAt: !22407)
!22410 = !DILocation(line: 60, column: 87, scope: !22391, inlinedAt: !22394)
!22411 = !DILocation(line: 2189, column: 23, scope: !22412, inlinedAt: !22414)
!22412 = distinct !DILexicalBlock(scope: !22413, file: !675, line: 2189, column: 13)
!22413 = distinct !DISubprogram(name: "from_residual<polars_plan::dsl::expr::Expr, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCshquuC4dCYVj_10polars_sql", scope: !1241, file: !675, line: 2187, type: !13, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22414 = distinct !DILocation(line: 60, column: 13, scope: !22415, inlinedAt: !22394)
!22415 = !DILexicalBlockFile(scope: !22416, file: !22375, discriminator: 2)
!22416 = distinct !DILexicalBlock(scope: !22417, file: !22375, line: 60, column: 87)
!22417 = distinct !DILexicalBlock(scope: !22391, file: !22375, line: 60, column: 87)
!22418 = !{!22398, !22385}
!22419 = !DILocation(line: 60, column: 88, scope: !22391, inlinedAt: !22394)
!22420 = !DILocation(line: 0, scope: !22421, inlinedAt: !22394)
!22421 = !DILexicalBlockFile(scope: !22391, file: !5429, discriminator: 0)
!22422 = !DILocation(line: 2174, column: 16, scope: !22406, inlinedAt: !22407)
!22423 = !DILocation(line: 63, column: 22, scope: !22424, inlinedAt: !22394)
!22424 = distinct !DILexicalBlock(scope: !22391, file: !22375, line: 59, column: 9)
!22425 = !DILocation(line: 46, column: 17, scope: !22392, inlinedAt: !22394)
!22426 = !DILocation(line: 810, column: 1, scope: !22427, inlinedAt: !22428)
!22427 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::execute_select::{closure#5}::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBS_5plans7visitor8visitors10TreeWalker7rewriteINtNtB1D_8iterator10ExprMapperNCINvMs0_B2s_BM_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3s_10SQLContext14execute_selects3_00E0EE0EB3u_", scope: !92, file: !91, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22428 = distinct !DILocation(line: 61, column: 1, scope: !22380, inlinedAt: !22381)
!22429 = !DILocation(line: 49, column: 1, scope: !22380, inlinedAt: !22381)
!22430 = !{!22383}
!22431 = !DILocation(line: 46, column: 16, scope: !22374)
!22432 = !DILocation(line: 46, column: 17, scope: !22374)
!22433 = distinct !DISubprogram(name: "rewrite<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::process_group_by::{closure#3}::{closure_env#0}>>>", linkageName: "_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext16process_group_bys1_00E0EEB2K_", scope: !22376, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22434 = !DILocation(line: 46, column: 5, scope: !22433)
!22435 = !DILocation(line: 52, column: 30, scope: !22436, inlinedAt: !22437)
!22436 = distinct !DISubprogram(name: "maybe_grow<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::process_group_by::{closure#3}::{closure_env#0}>>>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22437 = distinct !DILocation(line: 46, column: 5, scope: !22433)
!22438 = !{!22439, !22441}
!22439 = distinct !{!22439, !22440, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_: argument 0"}
!22440 = distinct !{!22440, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_"}
!22441 = distinct !{!22441, !22440, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0EB4O_: argument 1"}
!22442 = !DILocation(line: 52, column: 24, scope: !22436, inlinedAt: !22437)
!22443 = !DILocation(line: 59, column: 9, scope: !22444, inlinedAt: !22437)
!22444 = distinct !DILexicalBlock(scope: !22436, file: !19347, line: 52, column: 5)
!22445 = !DILocation(line: 56, column: 5, scope: !22444, inlinedAt: !22437)
!22446 = !DILocation(line: 60, column: 13, scope: !22447, inlinedAt: !22449)
!22447 = distinct !DILexicalBlock(scope: !22448, file: !22375, line: 52, column: 9)
!22448 = distinct !DISubprogram(name: "{closure#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::process_group_by::{closure#3}::{closure_env#0}>>>", linkageName: "_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_", scope: !22393, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22449 = distinct !DILocation(line: 57, column: 9, scope: !22444, inlinedAt: !22437)
!22450 = !{!22451, !22453, !22441}
!22451 = distinct !{!22451, !22452, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_: argument 0"}
!22452 = distinct !{!22452, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_"}
!22453 = distinct !{!22453, !22452, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_: argument 1"}
!22454 = !DILocation(line: 57, column: 9, scope: !22444, inlinedAt: !22437)
!22455 = !{!22451}
!22456 = !DILocation(line: 52, column: 38, scope: !22448, inlinedAt: !22449)
!22457 = !DILocation(line: 60, column: 36, scope: !22447, inlinedAt: !22449)
!22458 = !DILocation(line: 60, column: 18, scope: !22447, inlinedAt: !22449)
!22459 = !DILocation(line: 60, column: 86, scope: !22447, inlinedAt: !22449)
!22460 = !DILocation(line: 2173, column: 15, scope: !22461, inlinedAt: !22462)
!22461 = distinct !DISubprogram(name: "branch<polars_plan::dsl::expr::Expr, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !676, file: !675, line: 2172, type: !13, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22462 = distinct !DILocation(line: 60, column: 13, scope: !22447, inlinedAt: !22449)
!22463 = !DILocation(line: 2173, column: 9, scope: !22461, inlinedAt: !22462)
!22464 = !DILocation(line: 2175, column: 17, scope: !22461, inlinedAt: !22462)
!22465 = !DILocation(line: 60, column: 87, scope: !22447, inlinedAt: !22449)
!22466 = !DILocation(line: 2189, column: 23, scope: !22467, inlinedAt: !22469)
!22467 = distinct !DILexicalBlock(scope: !22468, file: !675, line: 2189, column: 13)
!22468 = distinct !DISubprogram(name: "from_residual<polars_plan::dsl::expr::Expr, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCshquuC4dCYVj_10polars_sql", scope: !1241, file: !675, line: 2187, type: !13, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22469 = distinct !DILocation(line: 60, column: 13, scope: !22470, inlinedAt: !22449)
!22470 = !DILexicalBlockFile(scope: !22471, file: !22375, discriminator: 2)
!22471 = distinct !DILexicalBlock(scope: !22472, file: !22375, line: 60, column: 87)
!22472 = distinct !DILexicalBlock(scope: !22447, file: !22375, line: 60, column: 87)
!22473 = !{!22453, !22441}
!22474 = !DILocation(line: 60, column: 88, scope: !22447, inlinedAt: !22449)
!22475 = !DILocation(line: 0, scope: !22476, inlinedAt: !22449)
!22476 = !DILexicalBlockFile(scope: !22447, file: !5429, discriminator: 0)
!22477 = !DILocation(line: 2174, column: 16, scope: !22461, inlinedAt: !22462)
!22478 = !DILocation(line: 63, column: 22, scope: !22479, inlinedAt: !22449)
!22479 = distinct !DILexicalBlock(scope: !22447, file: !22375, line: 59, column: 9)
!22480 = !DILocation(line: 46, column: 17, scope: !22448, inlinedAt: !22449)
!22481 = !DILocation(line: 810, column: 1, scope: !22482, inlinedAt: !22483)
!22482 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::process_group_by::{closure#3}::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBS_5plans7visitor8visitors10TreeWalker7rewriteINtNtB1D_8iterator10ExprMapperNCINvMs0_B2s_BM_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3s_10SQLContext16process_group_bys1_00E0EE0EB3u_", scope: !92, file: !91, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22483 = distinct !DILocation(line: 61, column: 1, scope: !22436, inlinedAt: !22437)
!22484 = !DILocation(line: 49, column: 1, scope: !22436, inlinedAt: !22437)
!22485 = !{!22439}
!22486 = !DILocation(line: 46, column: 16, scope: !22433)
!22487 = !DILocation(line: 46, column: 17, scope: !22433)
!22488 = distinct !DISubprogram(name: "rewrite<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::expr_or_ordinal::{closure_env#2}>>>", linkageName: "_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2G_10SQLContext15expr_or_ordinals0_0E0EEB2I_", scope: !22376, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22489 = !DILocation(line: 46, column: 5, scope: !22488)
!22490 = !DILocation(line: 52, column: 30, scope: !22491, inlinedAt: !22492)
!22491 = distinct !DISubprogram(name: "maybe_grow<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::expr_or_ordinal::{closure_env#2}>>>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22492 = distinct !DILocation(line: 46, column: 5, scope: !22488)
!22493 = !{!22494, !22496}
!22494 = distinct !{!22494, !22495, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_: argument 0"}
!22495 = distinct !{!22495, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_"}
!22496 = distinct !{!22496, !22495, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0EB4M_: argument 1"}
!22497 = !DILocation(line: 52, column: 24, scope: !22491, inlinedAt: !22492)
!22498 = !DILocation(line: 59, column: 9, scope: !22499, inlinedAt: !22492)
!22499 = distinct !DILexicalBlock(scope: !22491, file: !19347, line: 52, column: 5)
!22500 = !DILocation(line: 56, column: 5, scope: !22499, inlinedAt: !22492)
!22501 = !DILocation(line: 60, column: 13, scope: !22502, inlinedAt: !22504)
!22502 = distinct !DILexicalBlock(scope: !22503, file: !22375, line: 52, column: 9)
!22503 = distinct !DISubprogram(name: "{closure#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::expr_or_ordinal::{closure_env#2}>>>", linkageName: "_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_", scope: !22393, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22504 = distinct !DILocation(line: 57, column: 9, scope: !22499, inlinedAt: !22492)
!22505 = !{!22506, !22508, !22496}
!22506 = distinct !{!22506, !22507, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_: argument 0"}
!22507 = distinct !{!22507, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_"}
!22508 = distinct !{!22508, !22507, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_: argument 1"}
!22509 = !DILocation(line: 57, column: 9, scope: !22499, inlinedAt: !22492)
!22510 = !{!22506}
!22511 = !DILocation(line: 52, column: 38, scope: !22503, inlinedAt: !22504)
!22512 = !DILocation(line: 60, column: 36, scope: !22502, inlinedAt: !22504)
!22513 = !DILocation(line: 60, column: 18, scope: !22502, inlinedAt: !22504)
!22514 = !DILocation(line: 60, column: 86, scope: !22502, inlinedAt: !22504)
!22515 = !DILocation(line: 2173, column: 15, scope: !22516, inlinedAt: !22517)
!22516 = distinct !DISubprogram(name: "branch<polars_plan::dsl::expr::Expr, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !676, file: !675, line: 2172, type: !13, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22517 = distinct !DILocation(line: 60, column: 13, scope: !22502, inlinedAt: !22504)
!22518 = !DILocation(line: 2173, column: 9, scope: !22516, inlinedAt: !22517)
!22519 = !DILocation(line: 2175, column: 17, scope: !22516, inlinedAt: !22517)
!22520 = !DILocation(line: 60, column: 87, scope: !22502, inlinedAt: !22504)
!22521 = !DILocation(line: 2189, column: 23, scope: !22522, inlinedAt: !22524)
!22522 = distinct !DILexicalBlock(scope: !22523, file: !675, line: 2189, column: 13)
!22523 = distinct !DISubprogram(name: "from_residual<polars_plan::dsl::expr::Expr, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCshquuC4dCYVj_10polars_sql", scope: !1241, file: !675, line: 2187, type: !13, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22524 = distinct !DILocation(line: 60, column: 13, scope: !22525, inlinedAt: !22504)
!22525 = !DILexicalBlockFile(scope: !22526, file: !22375, discriminator: 2)
!22526 = distinct !DILexicalBlock(scope: !22527, file: !22375, line: 60, column: 87)
!22527 = distinct !DILexicalBlock(scope: !22502, file: !22375, line: 60, column: 87)
!22528 = !{!22508, !22496}
!22529 = !DILocation(line: 60, column: 88, scope: !22502, inlinedAt: !22504)
!22530 = !DILocation(line: 0, scope: !22531, inlinedAt: !22504)
!22531 = !DILexicalBlockFile(scope: !22502, file: !5429, discriminator: 0)
!22532 = !DILocation(line: 2174, column: 16, scope: !22516, inlinedAt: !22517)
!22533 = !DILocation(line: 63, column: 22, scope: !22534, inlinedAt: !22504)
!22534 = distinct !DILexicalBlock(scope: !22502, file: !22375, line: 59, column: 9)
!22535 = !DILocation(line: 46, column: 17, scope: !22503, inlinedAt: !22504)
!22536 = !DILocation(line: 810, column: 1, scope: !22537, inlinedAt: !22538)
!22537 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::{impl#3}::expr_or_ordinal::{closure_env#2}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBS_5plans7visitor8visitors10TreeWalker7rewriteINtNtB1D_8iterator10ExprMapperNCINvMs0_B2s_BM_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3q_10SQLContext15expr_or_ordinals0_0E0EE0EB3s_", scope: !92, file: !91, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22538 = distinct !DILocation(line: 61, column: 1, scope: !22491, inlinedAt: !22492)
!22539 = !DILocation(line: 49, column: 1, scope: !22491, inlinedAt: !22492)
!22540 = !{!22494}
!22541 = !DILocation(line: 46, column: 16, scope: !22488)
!22542 = !DILocation(line: 46, column: 17, scope: !22488)
!22543 = distinct !DISubprogram(name: "rewrite<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::suffix_conflicting_columns::{closure_env#0}>>>", linkageName: "_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCINvMs0_B1J_B3_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EEB2E_", scope: !22376, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22544 = !DILocation(line: 46, column: 5, scope: !22543)
!22545 = !DILocation(line: 52, column: 30, scope: !22546, inlinedAt: !22547)
!22546 = distinct !DISubprogram(name: "maybe_grow<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::suffix_conflicting_columns::{closure_env#0}>>>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22547 = distinct !DILocation(line: 46, column: 5, scope: !22543)
!22548 = !{!22549, !22551}
!22549 = distinct !{!22549, !22550, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_: argument 0"}
!22550 = distinct !{!22550, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_"}
!22551 = distinct !{!22551, !22550, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4I_: argument 1"}
!22552 = !DILocation(line: 52, column: 24, scope: !22546, inlinedAt: !22547)
!22553 = !DILocation(line: 59, column: 9, scope: !22554, inlinedAt: !22547)
!22554 = distinct !DILexicalBlock(scope: !22546, file: !19347, line: 52, column: 5)
!22555 = !DILocation(line: 56, column: 5, scope: !22554, inlinedAt: !22547)
!22556 = !DILocation(line: 60, column: 13, scope: !22557, inlinedAt: !22559)
!22557 = distinct !DILexicalBlock(scope: !22558, file: !22375, line: 52, column: 9)
!22558 = distinct !DISubprogram(name: "{closure#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::suffix_conflicting_columns::{closure_env#0}>>>", linkageName: "_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_", scope: !22393, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22559 = distinct !DILocation(line: 57, column: 9, scope: !22554, inlinedAt: !22547)
!22560 = !{!22561, !22563, !22551}
!22561 = distinct !{!22561, !22562, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_: argument 0"}
!22562 = distinct !{!22562, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_"}
!22563 = distinct !{!22563, !22562, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_: argument 1"}
!22564 = !DILocation(line: 57, column: 9, scope: !22554, inlinedAt: !22547)
!22565 = !{!22561}
!22566 = !DILocation(line: 52, column: 38, scope: !22558, inlinedAt: !22559)
!22567 = !DILocation(line: 60, column: 36, scope: !22557, inlinedAt: !22559)
!22568 = !DILocation(line: 60, column: 18, scope: !22557, inlinedAt: !22559)
!22569 = !DILocation(line: 60, column: 86, scope: !22557, inlinedAt: !22559)
!22570 = !DILocation(line: 2173, column: 15, scope: !22571, inlinedAt: !22572)
!22571 = distinct !DISubprogram(name: "branch<polars_plan::dsl::expr::Expr, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !676, file: !675, line: 2172, type: !13, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22572 = distinct !DILocation(line: 60, column: 13, scope: !22557, inlinedAt: !22559)
!22573 = !DILocation(line: 2173, column: 9, scope: !22571, inlinedAt: !22572)
!22574 = !DILocation(line: 2175, column: 17, scope: !22571, inlinedAt: !22572)
!22575 = !DILocation(line: 60, column: 87, scope: !22557, inlinedAt: !22559)
!22576 = !DILocation(line: 2189, column: 23, scope: !22577, inlinedAt: !22579)
!22577 = distinct !DILexicalBlock(scope: !22578, file: !675, line: 2189, column: 13)
!22578 = distinct !DISubprogram(name: "from_residual<polars_plan::dsl::expr::Expr, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCshquuC4dCYVj_10polars_sql", scope: !1241, file: !675, line: 2187, type: !13, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22579 = distinct !DILocation(line: 60, column: 13, scope: !22580, inlinedAt: !22559)
!22580 = !DILexicalBlockFile(scope: !22581, file: !22375, discriminator: 2)
!22581 = distinct !DILexicalBlock(scope: !22582, file: !22375, line: 60, column: 87)
!22582 = distinct !DILexicalBlock(scope: !22557, file: !22375, line: 60, column: 87)
!22583 = !{!22563, !22551}
!22584 = !DILocation(line: 60, column: 88, scope: !22557, inlinedAt: !22559)
!22585 = !DILocation(line: 0, scope: !22586, inlinedAt: !22559)
!22586 = !DILexicalBlockFile(scope: !22557, file: !5429, discriminator: 0)
!22587 = !DILocation(line: 2174, column: 16, scope: !22571, inlinedAt: !22572)
!22588 = !DILocation(line: 63, column: 22, scope: !22589, inlinedAt: !22559)
!22589 = distinct !DILexicalBlock(scope: !22557, file: !22375, line: 59, column: 9)
!22590 = !DILocation(line: 46, column: 17, scope: !22558, inlinedAt: !22559)
!22591 = !DILocation(line: 810, column: 1, scope: !22592, inlinedAt: !22593)
!22592 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_plan::plans::iterator::{impl#2}::map_expr::{closure_env#0}<polars_sql::context::suffix_conflicting_columns::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBS_5plans7visitor8visitors10TreeWalker7rewriteINtNtB1D_8iterator10ExprMapperNCINvMs0_B2s_BM_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB3o_", scope: !92, file: !91, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22593 = distinct !DILocation(line: 61, column: 1, scope: !22546, inlinedAt: !22547)
!22594 = !DILocation(line: 49, column: 1, scope: !22546, inlinedAt: !22547)
!22595 = !{!22549}
!22596 = !DILocation(line: 46, column: 16, scope: !22543)
!22597 = !DILocation(line: 46, column: 17, scope: !22543)
!22598 = distinct !DISubprogram(name: "rewrite<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_sql::context::{impl#3}::process_subqueries::{closure_env#0}>>", linkageName: "_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtB9_5plans7visitor8visitors10TreeWalker7rewriteINtNtBU_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2h_10SQLContext18process_subqueries0EEB2j_", scope: !22376, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22599 = !DILocation(line: 46, column: 5, scope: !22598)
!22600 = !DILocation(line: 52, column: 30, scope: !22601, inlinedAt: !22602)
!22601 = distinct !DISubprogram(name: "maybe_grow<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_sql::context::{impl#3}::process_subqueries::{closure_env#0}>>>", linkageName: "_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_", scope: !19348, file: !19347, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22602 = distinct !DILocation(line: 46, column: 5, scope: !22598)
!22603 = !{!22604, !22606}
!22604 = distinct !{!22604, !22605, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_: argument 0"}
!22605 = distinct !{!22605, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_"}
!22606 = distinct !{!22606, !22605, !"_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0EB4m_: argument 1"}
!22607 = !DILocation(line: 52, column: 24, scope: !22601, inlinedAt: !22602)
!22608 = !DILocation(line: 59, column: 9, scope: !22609, inlinedAt: !22602)
!22609 = distinct !DILexicalBlock(scope: !22601, file: !19347, line: 52, column: 5)
!22610 = !DILocation(line: 56, column: 5, scope: !22609, inlinedAt: !22602)
!22611 = !DILocation(line: 60, column: 13, scope: !22612, inlinedAt: !22614)
!22612 = distinct !DILexicalBlock(scope: !22613, file: !22375, line: 52, column: 9)
!22613 = distinct !DISubprogram(name: "{closure#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_sql::context::{impl#3}::process_subqueries::{closure_env#0}>>", linkageName: "_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_", scope: !22393, file: !22375, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22614 = distinct !DILocation(line: 57, column: 9, scope: !22609, inlinedAt: !22602)
!22615 = !{!22616, !22618, !22606}
!22616 = distinct !{!22616, !22617, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_: argument 0"}
!22617 = distinct !{!22617, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_"}
!22618 = distinct !{!22618, !22617, !"_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_: argument 1"}
!22619 = !DILocation(line: 57, column: 9, scope: !22609, inlinedAt: !22602)
!22620 = !{!22616}
!22621 = !DILocation(line: 52, column: 38, scope: !22613, inlinedAt: !22614)
!22622 = !DILocation(line: 60, column: 36, scope: !22612, inlinedAt: !22614)
!22623 = !DILocation(line: 60, column: 18, scope: !22612, inlinedAt: !22614)
!22624 = !DILocation(line: 60, column: 86, scope: !22612, inlinedAt: !22614)
!22625 = !DILocation(line: 2173, column: 15, scope: !22626, inlinedAt: !22627)
!22626 = distinct !DISubprogram(name: "branch<polars_plan::dsl::expr::Expr, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !676, file: !675, line: 2172, type: !13, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22627 = distinct !DILocation(line: 60, column: 13, scope: !22612, inlinedAt: !22614)
!22628 = !DILocation(line: 2173, column: 9, scope: !22626, inlinedAt: !22627)
!22629 = !DILocation(line: 2175, column: 17, scope: !22626, inlinedAt: !22627)
!22630 = !DILocation(line: 60, column: 87, scope: !22612, inlinedAt: !22614)
!22631 = !DILocation(line: 2189, column: 23, scope: !22632, inlinedAt: !22634)
!22632 = distinct !DILexicalBlock(scope: !22633, file: !675, line: 2189, column: 13)
!22633 = distinct !DISubprogram(name: "from_residual<polars_plan::dsl::expr::Expr, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCshquuC4dCYVj_10polars_sql", scope: !1241, file: !675, line: 2187, type: !13, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22634 = distinct !DILocation(line: 60, column: 13, scope: !22635, inlinedAt: !22614)
!22635 = !DILexicalBlockFile(scope: !22636, file: !22375, discriminator: 2)
!22636 = distinct !DILexicalBlock(scope: !22637, file: !22375, line: 60, column: 87)
!22637 = distinct !DILexicalBlock(scope: !22612, file: !22375, line: 60, column: 87)
!22638 = !{!22618, !22606}
!22639 = !DILocation(line: 60, column: 88, scope: !22612, inlinedAt: !22614)
!22640 = !DILocation(line: 0, scope: !22641, inlinedAt: !22614)
!22641 = !DILexicalBlockFile(scope: !22612, file: !5429, discriminator: 0)
!22642 = !DILocation(line: 2174, column: 16, scope: !22626, inlinedAt: !22627)
!22643 = !DILocation(line: 63, column: 22, scope: !22644, inlinedAt: !22614)
!22644 = distinct !DILexicalBlock(scope: !22612, file: !22375, line: 59, column: 9)
!22645 = !DILocation(line: 46, column: 17, scope: !22613, inlinedAt: !22614)
!22646 = !DILocation(line: 810, column: 1, scope: !22647, inlinedAt: !22648)
!22647 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::visitor::visitors::TreeWalker::rewrite::{closure_env#0}<polars_plan::dsl::expr::Expr, polars_plan::plans::iterator::ExprMapper<polars_sql::context::{impl#3}::process_subqueries::{closure_env#0}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBS_5plans7visitor8visitors10TreeWalker7rewriteINtNtB1D_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB31_10SQLContext18process_subqueries0EE0EB33_", scope: !92, file: !91, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22648 = distinct !DILocation(line: 61, column: 1, scope: !22601, inlinedAt: !22602)
!22649 = !DILocation(line: 49, column: 1, scope: !22601, inlinedAt: !22602)
!22650 = !{!22604}
!22651 = !DILocation(line: 46, column: 16, scope: !22598)
!22652 = !DILocation(line: 46, column: 17, scope: !22598)
!22653 = distinct !DISubprogram(name: "to_i128", linkageName: "_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128", scope: !22655, file: !22654, line: 991, type: !13, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22654 = !DIFile(filename: "crates/polars-core/src/datatypes/any_value.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "5b9440612329c51b9a0ddbcf0c0ede4b")
!22655 = !DINamespace(name: "AnyValue", scope: !22656)
!22656 = !DINamespace(name: "any_value", scope: !19588)
!22657 = !DILocation(line: 992, column: 15, scope: !22653)
!22658 = !DILocation(line: 992, column: 9, scope: !22653)
!22659 = !DILocation(line: 993, column: 40, scope: !22660)
!22660 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 993, column: 13)
!22661 = !DILocation(line: 82, column: 17, scope: !22662, inlinedAt: !22664)
!22662 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1p_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromhE4from", scope: !22663, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22663 = !DINamespace(name: "{impl#89}", scope: !15151)
!22664 = !DILocation(line: 778, column: 9, scope: !22665, inlinedAt: !22667)
!22665 = !DILexicalBlockFile(scope: !22666, file: !18, discriminator: 14)
!22666 = distinct !DISubprogram(name: "into<u8, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7converthINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22667 = !DILocation(line: 993, column: 45, scope: !22660)
!22668 = !DILocation(line: 993, column: 51, scope: !22653)
!22669 = !DILocation(line: 994, column: 41, scope: !22670)
!22670 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 994, column: 13)
!22671 = !DILocation(line: 82, column: 17, scope: !22672, inlinedAt: !22674)
!22672 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1s_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromtE4from", scope: !22673, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22673 = !DINamespace(name: "{impl#92}", scope: !15151)
!22674 = !DILocation(line: 778, column: 9, scope: !22675, inlinedAt: !22677)
!22675 = !DILexicalBlockFile(scope: !22676, file: !18, discriminator: 12)
!22676 = distinct !DISubprogram(name: "into<u16, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7converttINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22677 = !DILocation(line: 994, column: 46, scope: !22670)
!22678 = !DILocation(line: 994, column: 52, scope: !22653)
!22679 = !DILocation(line: 995, column: 41, scope: !22680)
!22680 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 995, column: 13)
!22681 = !DILocation(line: 82, column: 17, scope: !22682, inlinedAt: !22684)
!22682 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1u_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FrommE4from", scope: !22683, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22683 = !DINamespace(name: "{impl#94}", scope: !15151)
!22684 = !DILocation(line: 778, column: 9, scope: !22685, inlinedAt: !22687)
!22685 = !DILexicalBlockFile(scope: !22686, file: !18, discriminator: 10)
!22686 = distinct !DISubprogram(name: "into<u32, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertmINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22687 = !DILocation(line: 995, column: 46, scope: !22680)
!22688 = !DILocation(line: 995, column: 52, scope: !22653)
!22689 = !DILocation(line: 996, column: 41, scope: !22690)
!22690 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 996, column: 13)
!22691 = !DILocation(line: 82, column: 17, scope: !22692, inlinedAt: !22694)
!22692 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1v_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromyE4from", scope: !22693, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22693 = !DINamespace(name: "{impl#95}", scope: !15151)
!22694 = !DILocation(line: 778, column: 9, scope: !22695, inlinedAt: !22697)
!22695 = !DILexicalBlockFile(scope: !22696, file: !18, discriminator: 8)
!22696 = distinct !DISubprogram(name: "into<u64, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertyINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22697 = !DILocation(line: 996, column: 46, scope: !22690)
!22698 = !DILocation(line: 996, column: 52, scope: !22653)
!22699 = !DILocation(line: 997, column: 39, scope: !22700)
!22700 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 997, column: 13)
!22701 = !DILocation(line: 82, column: 17, scope: !22702, inlinedAt: !22704)
!22702 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1e_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromaE4from", scope: !22703, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22703 = !DINamespace(name: "{impl#78}", scope: !15151)
!22704 = !DILocation(line: 778, column: 9, scope: !22705, inlinedAt: !22707)
!22705 = !DILexicalBlockFile(scope: !22706, file: !18, discriminator: 6)
!22706 = distinct !DISubprogram(name: "into<i8, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertaINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22707 = !DILocation(line: 997, column: 44, scope: !22700)
!22708 = !DILocation(line: 997, column: 50, scope: !22653)
!22709 = !DILocation(line: 998, column: 40, scope: !22710)
!22710 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 998, column: 13)
!22711 = !DILocation(line: 82, column: 17, scope: !22712, inlinedAt: !22714)
!22712 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1i_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromsE4from", scope: !22713, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22713 = !DINamespace(name: "{impl#82}", scope: !15151)
!22714 = !DILocation(line: 778, column: 9, scope: !22715, inlinedAt: !22717)
!22715 = !DILexicalBlockFile(scope: !22716, file: !18, discriminator: 4)
!22716 = distinct !DISubprogram(name: "into<i16, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertsINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22717 = !DILocation(line: 998, column: 45, scope: !22710)
!22718 = !DILocation(line: 998, column: 51, scope: !22653)
!22719 = !DILocation(line: 999, column: 40, scope: !22720)
!22720 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 999, column: 13)
!22721 = !DILocation(line: 82, column: 17, scope: !22722, inlinedAt: !22724)
!22722 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1k_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromlE4from", scope: !22723, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22723 = !DINamespace(name: "{impl#84}", scope: !15151)
!22724 = !DILocation(line: 778, column: 9, scope: !22725, inlinedAt: !22727)
!22725 = !DILexicalBlockFile(scope: !22726, file: !18, discriminator: 2)
!22726 = distinct !DISubprogram(name: "into<i32, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertlINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22727 = !DILocation(line: 999, column: 45, scope: !22720)
!22728 = !DILocation(line: 999, column: 51, scope: !22653)
!22729 = !DILocation(line: 1000, column: 40, scope: !22730)
!22730 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 1000, column: 13)
!22731 = !DILocation(line: 82, column: 17, scope: !22732, inlinedAt: !22734)
!22732 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1l_NtNtCscgRAwXFJnXP_4core7convert3numnINtB8_4FromxE4from", scope: !22733, file: !15149, line: 79, type: !13, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22733 = !DINamespace(name: "{impl#85}", scope: !15151)
!22734 = !DILocation(line: 778, column: 9, scope: !22735, inlinedAt: !22736)
!22735 = distinct !DISubprogram(name: "into<i64, i128>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertxINtB5_4IntonE4intoCshquuC4dCYVj_10polars_sql", scope: !24, file: !18, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22736 = !DILocation(line: 1000, column: 45, scope: !22730)
!22737 = !DILocation(line: 1000, column: 51, scope: !22653)
!22738 = !DILocation(line: 1001, column: 41, scope: !22739)
!22739 = distinct !DILexicalBlock(scope: !22653, file: !22654, line: 1001, column: 13)
!22740 = !DILocation(line: 1001, column: 43, scope: !22653)
!22741 = !DILocation(line: 0, scope: !22653)
!22742 = !DILocation(line: 1004, column: 6, scope: !22653)
!22743 = distinct !DISubprogram(name: "eq_missing", linkageName: "_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing", scope: !22655, file: !22654, line: 1170, type: !25, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22744 = !DILocation(line: 1203, column: 15, scope: !22743)
!22745 = !DILocation(line: 1203, column: 9, scope: !22743)
!22746 = !DILocation(line: 1208, column: 36, scope: !22747)
!22747 = distinct !DILexicalBlock(scope: !22743, file: !22654, line: 1208, column: 13)
!22748 = !DILocation(line: 1208, column: 53, scope: !22747)
!22749 = !DILocation(line: 1348, column: 14, scope: !22750, inlinedAt: !22752)
!22750 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !22751, file: !22654, line: 1347, type: !13, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22751 = !DINamespace(name: "{impl#13}", scope: !22656)
!22752 = distinct !DILocation(line: 1208, column: 36, scope: !22747)
!22753 = !DILocation(line: 1205, column: 36, scope: !22754)
!22754 = distinct !DILexicalBlock(scope: !22743, file: !22654, line: 1205, column: 13)
!22755 = !DILocation(line: 558, column: 9, scope: !22756, inlinedAt: !22757)
!22756 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !632, file: !631, line: 557, type: !13, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22757 = !DILocation(line: 67, column: 16, scope: !22758, inlinedAt: !22760)
!22758 = !DILexicalBlockFile(scope: !22759, file: !640, discriminator: 2)
!22759 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !641, file: !640, line: 66, type: !13, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22760 = !DILocation(line: 1205, column: 55, scope: !22754)
!22761 = !DILocation(line: 612, column: 33, scope: !15219, inlinedAt: !22762)
!22762 = distinct !DILocation(line: 359, column: 17, scope: !15221, inlinedAt: !22763)
!22763 = distinct !DILocation(line: 381, column: 54, scope: !22764, inlinedAt: !22765)
!22764 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !569, file: !568, line: 379, type: !13, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22765 = !DILocation(line: 558, column: 16, scope: !22766, inlinedAt: !22757)
!22766 = !DILexicalBlockFile(scope: !22756, file: !631, discriminator: 2)
!22767 = !{!22768}
!22768 = distinct !{!22768, !22769, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!22769 = distinct !{!22769, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!22770 = !DILocation(line: 359, column: 12, scope: !15221, inlinedAt: !22763)
!22771 = !DILocation(line: 2548, column: 13, scope: !15233, inlinedAt: !22772)
!22772 = distinct !DILocation(line: 365, column: 30, scope: !15221, inlinedAt: !22763)
!22773 = !DILocation(line: 1077, column: 12, scope: !15237, inlinedAt: !22774)
!22774 = distinct !DILocation(line: 1576, column: 8, scope: !15239, inlinedAt: !22775)
!22775 = distinct !DILocation(line: 364, column: 26, scope: !15221, inlinedAt: !22763)
!22776 = !DILocation(line: 369, column: 12, scope: !15242, inlinedAt: !22763)
!22777 = !DILocation(line: 358, column: 28, scope: !15222, inlinedAt: !22763)
!22778 = !DILocation(line: 368, column: 27, scope: !15243, inlinedAt: !22763)
!22779 = !DILocation(line: 369, column: 9, scope: !15242, inlinedAt: !22763)
!22780 = !DILocation(line: 0, scope: !15221, inlinedAt: !22763)
!22781 = !DILocation(line: 0, scope: !15223, inlinedAt: !22763)
!22782 = !DILocation(line: 1348, column: 14, scope: !22750, inlinedAt: !22783)
!22783 = distinct !DILocation(line: 1205, column: 36, scope: !22754)
!22784 = !DILocation(line: 1206, column: 36, scope: !22785)
!22785 = distinct !DILexicalBlock(scope: !22743, file: !22654, line: 1206, column: 13)
!22786 = !DILocation(line: 614, column: 9, scope: !22787, inlinedAt: !22788)
!22787 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECshquuC4dCYVj_10polars_sql", scope: !5498, file: !5496, line: 613, type: !13, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22788 = !DILocation(line: 609, column: 14, scope: !22789, inlinedAt: !22791)
!22789 = !DILexicalBlockFile(scope: !22790, file: !5496, discriminator: 2)
!22790 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECshquuC4dCYVj_10polars_sql", scope: !5498, file: !5496, line: 608, type: !13, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22791 = !DILocation(line: 296, column: 20, scope: !22792, inlinedAt: !22794)
!22792 = !DILexicalBlockFile(scope: !22793, file: !5496, discriminator: 2)
!22793 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCshquuC4dCYVj_10polars_sql", scope: !5503, file: !5496, line: 295, type: !13, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22794 = !DILocation(line: 1942, column: 18, scope: !22795, inlinedAt: !22797)
!22795 = !DILexicalBlockFile(scope: !22796, file: !186, discriminator: 2)
!22796 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCshquuC4dCYVj_10polars_sql", scope: !230, file: !186, line: 1939, type: !13, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22797 = !DILocation(line: 1841, column: 76, scope: !22798, inlinedAt: !22800)
!22798 = !DILexicalBlockFile(scope: !22799, file: !186, discriminator: 2)
!22799 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCshquuC4dCYVj_10polars_sql", scope: !230, file: !186, line: 1824, type: !13, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!22800 = !DILocation(line: 1206, column: 55, scope: !22785)
!22801 = !DILocation(line: 1841, column: 86, scope: !22799, inlinedAt: !22800)
!22802 = !DILocation(line: 1348, column: 14, scope: !22750, inlinedAt: !22803)
!22803 = distinct !DILocation(line: 1206, column: 36, scope: !22785)
!22804 = !DILocation(line: 1208, column: 64, scope: !22743)
!22805 = !DILocation(line: 0, scope: !22743)
!22806 = !DILocation(line: 1342, column: 6, scope: !22743)
!22807 = !DILocation(line: 1170, column: 5, scope: !22743)
!22808 = !DILocation(line: 1205, column: 69, scope: !22743)
!22809 = !DILocation(line: 1206, column: 71, scope: !22743)
!22810 = !DILocation(line: 1212, column: 42, scope: !22811)
!22811 = distinct !DILexicalBlock(scope: !22743, file: !22654, line: 1212, column: 13)
!22812 = !DILocation(line: 1212, column: 59, scope: !22811)
!22813 = !DILocation(line: 1348, column: 14, scope: !22750, inlinedAt: !22814)
!22814 = distinct !DILocation(line: 1212, column: 36, scope: !22811)
!22815 = !DILocation(line: 1209, column: 42, scope: !22816)
!22816 = distinct !DILexicalBlock(scope: !22743, file: !22654, line: 1209, column: 13)
!22817 = !DILocation(line: 558, column: 9, scope: !22756, inlinedAt: !22818)
!22818 = !DILocation(line: 67, column: 16, scope: !22759, inlinedAt: !22819)
!22819 = !DILocation(line: 1209, column: 61, scope: !22816)
!22820 = !DILocation(line: 612, column: 33, scope: !15219, inlinedAt: !22821)
!22821 = distinct !DILocation(line: 359, column: 17, scope: !15221, inlinedAt: !22822)
!22822 = distinct !DILocation(line: 381, column: 54, scope: !22764, inlinedAt: !22823)
!22823 = !DILocation(line: 558, column: 16, scope: !22756, inlinedAt: !22818)
!22824 = !{!22825}
!22825 = distinct !{!22825, !22826, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!22826 = distinct !{!22826, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!22827 = !DILocation(line: 359, column: 12, scope: !15221, inlinedAt: !22822)
!22828 = !DILocation(line: 2548, column: 13, scope: !15233, inlinedAt: !22829)
!22829 = distinct !DILocation(line: 365, column: 30, scope: !15221, inlinedAt: !22822)
!22830 = !DILocation(line: 1077, column: 12, scope: !15237, inlinedAt: !22831)
!22831 = distinct !DILocation(line: 1576, column: 8, scope: !15239, inlinedAt: !22832)
!22832 = distinct !DILocation(line: 364, column: 26, scope: !15221, inlinedAt: !22822)
!22833 = !DILocation(line: 369, column: 12, scope: !15242, inlinedAt: !22822)
!22834 = !DILocation(line: 358, column: 28, scope: !15222, inlinedAt: !22822)
!22835 = !DILocation(line: 368, column: 27, scope: !15243, inlinedAt: !22822)
!22836 = !DILocation(line: 369, column: 9, scope: !15242, inlinedAt: !22822)
!22837 = !DILocation(line: 0, scope: !15221, inlinedAt: !22822)
!22838 = !DILocation(line: 0, scope: !15223, inlinedAt: !22822)
end_hunk_1
