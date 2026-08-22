Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.10?download=true
inline.NumInlined: 1945
inline.NumDeleted: 1079
begin_hunk_0_@_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1R_:bb.a
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !13451
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !13451
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !13452, !noalias !13457 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !13452
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13461
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !13461
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !13461

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1z_13AttachedTokenNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3m_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !13462
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3t_.exit, !dbg !13464

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !13465
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3t_.exit, !dbg !13464

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3t_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in.i, !dbg !13469
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1R_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13470 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !13471
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !13471
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !13472, !noalias !13475 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !13472
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13479
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !13479
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !13479

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1z_13AttachedTokenNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3m_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !13480
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3t_.exit, !dbg !13482

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !13483
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3t_.exit, !dbg !13482

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3t_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in.i, !dbg !13486
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1R_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13487 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !13488
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !13488
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !13489, !noalias !13492 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !13489
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13496
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !13496
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !13496

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1z_13AttachedTokenNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3m_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull %1), !dbg !13497
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3t_.exit, !dbg !13499

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull %1), !dbg !13500
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3t_.exit, !dbg !13499

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3t_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in.i, !dbg !13503
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1R_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13504 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !13505
  %i.c = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !13505
  %i.d = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !13506, !noalias !13509 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !13506
  %i.f = trunc nuw i64 %i.e to i1, !dbg !13514
  %i.g = extractvalue { i64, i64 } %i.d, 1
  %.not.i = icmp uge i64 %i.g, %i.b
  %or.cond.i.not = select i1 %i.f, i1 %.not.i, i1 false, !dbg !13514
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !13514

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2f_13AttachedTokenNtNtB2j_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB42_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !13515
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2m_13AttachedTokenNtNtB2q_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_.exit, !dbg !13515

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13517), !dbg !13520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13521, !noalias !13524
  call void @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1C_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !13521, !noalias !13517
  %i.h = load i64, ptr %i.a, align 8, !dbg !13527, !range !7647, !alias.scope !13530, !noalias !13533, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 18, !dbg !13527
  br i1 %.not.i.i, label %_RNCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB8_13AttachedTokenNtNtBc_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1T_.exit, label %bb.d, !dbg !13535

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13536
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i, i64 64, i1 false), !dbg !13536, !noalias !13544
  br label %_RNCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB8_13AttachedTokenNtNtBc_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1T_.exit, !dbg !13545

_RNCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB8_13AttachedTokenNtNtBc_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1T_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13546, !noalias !13524
  store i64 %i.h, ptr %0, align 8, !dbg !13547, !alias.scope !13517, !noalias !13544
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2m_13AttachedTokenNtNtB2q_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_.exit, !dbg !13520

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2m_13AttachedTokenNtNtB2q_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_.exit: ; preds = %bb.b, %_RNCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB8_13AttachedTokenNtNtBc_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1T_.exit
  ret void, !dbg !13548
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1R_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13549 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !13550
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !13550
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !13551, !noalias !13554 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !13551
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13558
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !13558
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !13558

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1z_13AttachedTokenNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3m_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !13559
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit, !dbg !13561

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !13562
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit, !dbg !13561

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in.i, !dbg !13565
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtB1v_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3k_7context10SQLContext21resolve_subquery_from0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB2o_12map_try_foldB1s_INtNtBb_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtNtBb_3ops12control_flow11ControlFlowINtNtB6Z_9try_trait17NeverShortCircuituEENvB3V_14get_table_nameNCINvXB7_INtB7_12GenericShuntIB2m_BO_B8e_EIB5V_NtNtBb_7convert10InfallibleEEB4L_8try_folduNCINvMs0_B7C_B7z_10wrap_mut_2uB6g_NCINvB2o_8map_foldB6g_TB6g_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbd_7HashSetB6g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4P_7collect6ExtendB6g_E6extendB8J_E0NCINvNvB4L_8for_each4callBaW_NCINvXs1l_NtBbf_3mapINtBe6_7HashMapB6g_uBc0_EIBcO_BaW_E6extendIB2m_B8J_Bb4_EE0E0E0E0B7z_E0E0B6U_EB3k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13566 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !dbg !13570, !range !1101, !noundef !13
  %i.d = trunc nuw i64 %i.c to i1, !dbg !13572
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !13572

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13570 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13573), !dbg !13576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !13577
  %.pr.i = load ptr, ptr %i.e, align 8, !dbg !13579, !alias.scope !13598, !noalias !13601
  store ptr null, ptr %i.e, align 8, !alias.scope !13598, !noalias !13601
  br label %bb.c, !dbg !13602

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = phi ptr [ null, %bb.d ], [ %.pr.i, %bb.b ], !dbg !13579 ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.f, null, !dbg !13603
  br i1 %.not.not.not.not.i.not, label %bb.g, label %bb.d, !dbg !13604

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorINtNtBb_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENvNtCshquuC4dCYVj_10polars_sql7context14get_table_nameNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1y_EIB5Z_INtNtNtBb_5slice4iter4IterNtB1B_4JoinENCNvMNtB4H_8subqueryNtB4F_10SQLContext21resolve_subquery_from0EEB4D_EIB2r_NtNtBb_7convert10InfallibleEENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvMs0_B42_B3Z_10wrap_mut_2uB2M_NCINvBT_8map_foldB2M_TB2M_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbd_7HashSetB2M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB9p_7collect6ExtendB2M_E6extendB5E_E0NCINvNvB9l_8for_each4callBaW_NCINvXs1l_NtBbf_3mapINtBe6_7HashMapB2M_uBc0_EIBcO_BaW_E6extendIB5Z_B5E_Bb4_EE0E0E0E0B3Z_E0E0INtB7_5FnMutTuB1y_EE8call_mutB4H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.f), !dbg !13605, !noalias !13573
  br i1 %i.g, label %bb.f, label %bb.c, !dbg !13605

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13606 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !13606, !noundef !13
  %.not = icmp eq ptr %i.i, null, !dbg !13606
  br i1 %.not, label %bb.h, label %bb.i, !dbg !13608

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13609
  br label %bb.h, !dbg !13610

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13609
  store i64 0, ptr %0, align 8, !dbg !13611
  br label %bb.e, !dbg !13612

bb.h:                                             ; preds = %bb.i, %bb.e, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ %i.j, %bb.i ], !dbg !13613
  ret i1 %.sroa.0.0, !dbg !13614

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !13615
  %i.j = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB2e_7context10SQLContext21resolve_subquery_from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldRNtB1p_11TableFactorINtNtBc_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB67_9try_trait17NeverShortCircuituEENvB2P_14get_table_nameNCINvXB8_INtB8_12GenericShuntIBO_INtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceB4I_EBN_EB7m_EIB53_NtNtBc_7convert10InfallibleEEB3E_8try_folduNCINvMs0_B6K_B6H_10wrap_mut_2uB5o_NCINvB6_8map_foldB5o_TB5o_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbb_7HashSetB5o_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3I_7collect6ExtendB5o_E6extendB7R_E0NCINvNvB3E_8for_each4callBaU_NCINvXs1l_NtBbd_3mapINtBe4_7HashMapB5o_uBbY_EIBcM_BaU_E6extendIBO_B7R_Bb2_EE0E0E0E0B6H_E0E0B62_EB2e_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !13616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13617
  br label %bb.h, !dbg !13618
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !13619 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !13624
  %i.d = load i8, ptr %i.c, align 1, !dbg !13624, !range !619, !noundef !13
  %i.e = icmp eq i8 %i.d, -40, !dbg !13641
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !13641

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #42, !dbg !13642
  br label %bb.d, !dbg !13642

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !13643
  br label %bb.d, !dbg !13646

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13647
  store <2 x i64> splat (i64 1), ptr %i.a, align 16, !dbg !13647
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13647 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13647
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !13650, !noalias !13658
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 40, 89) 40, i64 noundef 8) #41, !dbg !13661, !noalias !13658 ; 3 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !13662
  br i1 %i.h, label %bb.e, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCshquuC4dCYVj_10polars_sql.exit, !dbg !13663, !prof !39

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc unwind label %bb.f, !dbg !13664

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !13664

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 39, !dbg !13665
  %i.k = load i8, ptr %i.j, align 1, !dbg !13665, !range !619, !alias.scope !13675, !noundef !13
  %i.l = icmp eq i8 %i.k, -40, !dbg !13688
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !13688, !prof !39

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !13689

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !13690
  unreachable, !dbg !13690

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.i, !dbg !13690

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !13691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13693
  ret ptr %i.g, !dbg !13694
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraylE15slice_uncheckedCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !13695 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !13699
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13700 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !13700 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !13700 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !13705
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !13707
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !13710

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !13711
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13711 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !13711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13712), !dbg !13715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13721), !dbg !13724
  %i.d = icmp eq i64 %1, 0, !dbg !13731
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13734, !noalias !13735 ; 5 uses
  %i.g = icmp eq i64 %2, %i.f
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false, !dbg !13731
  br i1 %or.cond.i.i, label %bb.j, label %bb.c, !dbg !13731

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13737 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !13755, !alias.scope !13734, !noalias !13735, !noundef !13 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !13755         ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.f
  %or.cond5.i.i = select i1 %i.j, i1 true, i1 %i.k, !dbg !13755
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e, !dbg !13755

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.f, %bb.d
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.d ], [ %i.ad, %.noexc1.i ], [ -1, %bb.f ]
  store i64 %.sink.sink.i.i, ptr %i.h, align 8, !dbg !13757, !alias.scope !13734, !noalias !13735
  br label %.sink.split.i.i, !dbg !13757

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13757, !alias.scope !13734, !noalias !13735, !noundef !13
  %i.m = add i64 %i.l, %1, !dbg !13757
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13757, !alias.scope !13734, !noalias !13735
  store i64 %2, ptr %i.e, align 8, !dbg !13757, !alias.scope !13734, !noalias !13735
  br label %bb.j, !dbg !13758

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !13759
  br label %.sink.split.sink.split.i.i, !dbg !13760

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i64 %i.i, -1, !dbg !13762
  br i1 %i.n, label %bb.f, label %.sink.split.i.i, !dbg !13762

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i64 %i.f, 5, !dbg !13763
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 %i.o, i64 32), !dbg !13764
  %i.p = add i64 %.sroa.0.0.i.i.i, %2, !dbg !13766
  %.not.i.i = icmp ult i64 %i.p, %i.f, !dbg !13766
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !13766

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13768, !alias.scope !13734, !noalias !13735, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !13769 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !13769, !noalias !13777, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !13778 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !dbg !13778, !noalias !13777, !noundef !13
  %i.v = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.s, i64 noundef %i.q, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !13780, !noalias !13781

.noexc.i:                                         ; preds = %bb.g
  %i.w = add i64 %2, %1, !dbg !13768              ; 2 uses
  %i.x = add i64 %i.q, %i.w, !dbg !13768
  %i.y = load i64, ptr %i.r, align 8, !dbg !13782, !noalias !13777, !noundef !13
  %i.z = load ptr, ptr %i.t, align 8, !dbg !13786, !noalias !13777, !noundef !13
  %i.aa = sub i64 %i.f, %i.w, !dbg !13788
  %i.ab = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y, i64 noundef %i.x, i64 noundef %i.aa)
          to label %.noexc1.i unwind label %bb.h, !dbg !13789, !noalias !13781

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ac = add i64 %i.v, %i.ab, !dbg !13790
  %i.ad = sub i64 %i.i, %i.ac, !dbg !13790
  br label %.sink.split.sink.split.i.i, !dbg !13792

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !13793, !noalias !13735

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !13796, !noalias !13735
  unreachable, !dbg !13796

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !13797

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13798 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13798, !noalias !13802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !13806
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !13798, !noalias !13807
  %i.ag = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !13808, !noalias !13802

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !13811, !noalias !13802

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.ag, 0, !dbg !13814
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !13815

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !13816, !noalias !13802
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !13819

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !13820, !noalias !13821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !13820, !noalias !13821
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !13819

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !13822, !noalias !13802
  unreachable, !dbg !13822

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13823, !noalias !13802
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split ], !dbg !13824
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !13825
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !13830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !13830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !13831
  %i.aj = add i64 %2, %1, !dbg !13832
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13825
  %i.al = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECshquuC4dCYVj_10polars_sql(i64 noundef %1, i64 noundef %i.aj, i64 noundef %.pre), !dbg !13833 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !13833 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !13833
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13834 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !13834, !noundef !13
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am, !dbg !13836
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !13839
  %i.ar = sub i64 %i.an, %i.am, !dbg !13840
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !13840
  ret void, !dbg !13841
}
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE15slice_uncheckedCshquuC4dCYVj_10polars_sql:bb.a

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13880, !alias.scope !13870, !noalias !13871, !noundef !13
  %i.m = add i64 %i.l, %1, !dbg !13880
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13880, !alias.scope !13870, !noalias !13871
  store i64 %2, ptr %i.e, align 8, !dbg !13880, !alias.scope !13870, !noalias !13871
  br label %bb.j, !dbg !13881

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !13882
  br label %.sink.split.sink.split.i.i, !dbg !13883

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i64 %i.i, -1, !dbg !13884
  br i1 %i.n, label %bb.f, label %.sink.split.i.i, !dbg !13884

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i64 %i.f, 5, !dbg !13885
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 %i.o, i64 32), !dbg !13886
  %i.p = add i64 %.sroa.0.0.i.i.i, %2, !dbg !13888
  %.not.i.i = icmp ult i64 %i.p, %i.f, !dbg !13888
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !13888

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !13889, !alias.scope !13870, !noalias !13871, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !13890 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !13890, !noalias !13892, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !13893 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !dbg !13893, !noalias !13892, !noundef !13
  %i.v = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.s, i64 noundef %i.q, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !13894, !noalias !13895

.noexc.i:                                         ; preds = %bb.g
  %i.w = add i64 %2, %1, !dbg !13889              ; 2 uses
  %i.x = add i64 %i.q, %i.w, !dbg !13889
  %i.y = load i64, ptr %i.r, align 8, !dbg !13896, !noalias !13892, !noundef !13
  %i.z = load ptr, ptr %i.t, align 8, !dbg !13898, !noalias !13892, !noundef !13
  %i.aa = sub i64 %i.f, %i.w, !dbg !13899
  %i.ab = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y, i64 noundef %i.x, i64 noundef %i.aa)
          to label %.noexc1.i unwind label %bb.h, !dbg !13900, !noalias !13895

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ac = add i64 %i.v, %i.ab, !dbg !13901
  %i.ad = sub i64 %i.i, %i.ac, !dbg !13901
  br label %.sink.split.sink.split.i.i, !dbg !13902

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !13903, !noalias !13871

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !13906, !noalias !13871
  unreachable, !dbg !13906

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !13907

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13908, !noalias !13912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !13916
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !13908, !noalias !13917
  %i.ag = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !13918, !noalias !13912

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !13921, !noalias !13912

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.ag, 0, !dbg !13924
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !13925

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !13926, !noalias !13912
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !13929

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !13930, !noalias !13931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !13930, !noalias !13931
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !13929

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !13932, !noalias !13912
  unreachable, !dbg !13932

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13933, !noalias !13912
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split ], !dbg !13934
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !13935
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !13940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !13940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !13941
  %i.aj = add i64 %2, %1, !dbg !13942
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13935
  %i.al = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECshquuC4dCYVj_10polars_sql(i64 noundef %1, i64 noundef %i.aj, i64 noundef %.pre), !dbg !13943 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !13943 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !13943
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13944 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !13944, !noundef !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am, !dbg !13946
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !13949
  %i.ar = sub i64 %i.an, %i.am, !dbg !13950
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !13950
  ret void, !dbg !13951
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !13952 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13953
  %i.b = load i64, ptr %i.a, align 8, !dbg !13953, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !13960          ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.c, !dbg !13961
  br i1 %.not, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !13966

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13961
  %i.e = load ptr, ptr %i.d, align 8, !dbg !13961, !nonnull !13
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.c, !dbg !13961
  %i.g = getelementptr i8, ptr %i.f, i64 40, !dbg !13969
  %.val5.i = load i32, ptr %i.g, align 8, !dbg !13969, !alias.scope !13971, !noundef !13
  %i.h = icmp eq i32 %.val5.i, %1, !dbg !13974
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !13979

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ], !dbg !13980
  ret i1 %.sroa.02.0.i, !dbg !13981
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13982 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13983
  %i.c = add i64 %1, 1, !dbg !13984               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13985
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !13985
  %i.d = load i64, ptr %i.a, align 8, !dbg !13985, !range !1101, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13994
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13995
  %i.g = load i64, ptr %i.f, align 8, !dbg !13995, !range !212, !noundef !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13995 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !13994, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13996
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #39, !dbg !13997
  unreachable, !dbg !13997

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13999, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !14000
  tail call void @llvm.assume(i1 %i.k), !dbg !14004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14007
  store i64 %i.g, ptr %i.b, align 8, !dbg !14008
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14008 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !14008
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14008 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !14008
  %i.n = icmp eq i64 %i.g, 0, !dbg !14009
  br i1 %i.n, label %bb.d, label %bb.f, !dbg !14009

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %bb.e, !dbg !14014

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.l, align 8, !dbg !14015, !alias.scope !14020, !noalias !14023
  br label %bb.f, !dbg !14014

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionlEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %bb.h unwind label %bb.g, !dbg !14025

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.c ], !dbg !14015 ; 2 uses
  store i32 0, ptr %i.p, align 8, !dbg !14026
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !14026
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !14026
  store i64 1, ptr %i.m, align 8, !dbg !14028, !alias.scope !14020, !noalias !14023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14029
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14030
  store <2 x i32> <i32 1, i32 0>, ptr %i.q, align 8, !dbg !14030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14025
  ret void, !dbg !14031

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14032
  unreachable, !dbg !14032

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o, !dbg !14032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE3getCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14033 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14034
  %i.b = load i64, ptr %i.a, align 8, !dbg !14034, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !14040          ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.c, !dbg !14041
  br i1 %.not, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14046

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14041
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14041, !nonnull !13
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.c, !dbg !14041 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !14050
  %i.h = load i32, ptr %i.g, align 8, !dbg !14050, !alias.scope !14054, !noundef !13
  %i.i = icmp eq i32 %i.h, %1, !dbg !14050
  %..i = select i1 %i.i, ptr %i.f, ptr null, !dbg !14057
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14057

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.b ], !dbg !14058
  ret ptr %.sroa.02.0.i, !dbg !14059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(readwrite, target_mem: none) uwtable
define void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE6removeCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !14060 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14061), !dbg !14064
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14066
  %i.b = load i64, ptr %i.a, align 8, !dbg !14066, !alias.scope !14061, !noundef !13
  %i.c = zext i32 %3 to i64, !dbg !14070          ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.c, !dbg !14071
  br i1 %.not.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !14074

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14071
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14071, !alias.scope !14061, !nonnull !13
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.c, !dbg !14071 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 40, !dbg !14076 ; 2 uses
  %.val5.i.i = load i32, ptr %i.g, align 8, !dbg !14076, !alias.scope !14077, !noalias !14061, !noundef !13
  %i.h = icmp eq i32 %.val5.i.i, %2, !dbg !14080
  br i1 %i.h, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !14082

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit
  store i32 2, ptr %0, align 8, !dbg !14083
  br label %bb.c, !dbg !14084

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !dbg !14085
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14096 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !14096, !noundef !13
  store i32 %i.j, ptr %i.f, align 8, !dbg !14098
  store i32 %3, ptr %i.i, align 8, !dbg !14099
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !14100 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !dbg !14100, !noundef !13
  %i.m = add i32 %i.l, -1, !dbg !14100
  store i32 %i.m, ptr %i.k, align 4, !dbg !14100
  %i.n = add i32 %2, 1, !dbg !14101
  store i32 %i.n, ptr %i.g, align 8, !dbg !14105
  br label %bb.c, !dbg !14084

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread
  ret void, !dbg !14106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14107 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14108
  %i.b = load i64, ptr %i.a, align 8, !dbg !14108, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !14114          ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !14115
  br i1 %i.d, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14115

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14120
  %i.f = load ptr, ptr %i.e, align 8, !dbg !14120, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.c, !dbg !14129 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !14130
  %i.i = load i32, ptr %i.h, align 8, !dbg !14130, !alias.scope !14137, !noundef !13
  %i.j = icmp eq i32 %i.i, %1, !dbg !14130
  %..i = select i1 %i.j, ptr %i.g, ptr null, !dbg !14140
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14140

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ], !dbg !14141
  ret ptr %.sroa.02.0.i, !dbg !14142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14143 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14144
  %i.b = load i64, ptr %i.a, align 8, !dbg !14144, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !14150          ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.c, !dbg !14151
  br i1 %.not, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14156

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14151
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14151, !nonnull !13
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.c, !dbg !14151
  %i.g = getelementptr i8, ptr %i.f, i64 48, !dbg !14159
  %.val5.i = load i32, ptr %i.g, align 8, !dbg !14159, !alias.scope !14161, !noundef !13
  %i.h = icmp eq i32 %.val5.i, %1, !dbg !14164
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14167

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ], !dbg !14168
  ret i1 %.sroa.02.0.i, !dbg !14169
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14170 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14171
  %i.c = add i64 %1, 1, !dbg !14172               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14173
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14173
  %i.d = load i64, ptr %i.a, align 8, !dbg !14173, !range !1101, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1, !dbg !14182
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14183
  %i.g = load i64, ptr %i.f, align 8, !dbg !14183, !range !212, !noundef !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14183 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !14182, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !14184
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #39, !dbg !14185
  unreachable, !dbg !14185

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !14187, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !14188
  tail call void @llvm.assume(i1 %i.k), !dbg !14192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14195
  store i64 %i.g, ptr %i.b, align 8, !dbg !14196
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14196 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !14196
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14196 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !14196
  %i.n = icmp eq i64 %i.g, 0, !dbg !14197
  br i1 %i.n, label %bb.d, label %bb.f, !dbg !14197

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %bb.e, !dbg !14202

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.l, align 8, !dbg !14203, !alias.scope !14208, !noalias !14211
  br label %bb.f, !dbg !14202

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionxEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %bb.h unwind label %bb.g, !dbg !14213

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.c ], !dbg !14203 ; 2 uses
  store i32 0, ptr %i.p, align 8, !dbg !14214
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48, !dbg !14214
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !14214
  store i64 1, ptr %i.m, align 8, !dbg !14216, !alias.scope !14208, !noalias !14211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14217
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14218
  store <2 x i32> <i32 1, i32 0>, ptr %i.q, align 8, !dbg !14218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14213
  ret void, !dbg !14219

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14220
  unreachable, !dbg !14220

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o, !dbg !14220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE3getCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14221 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14222
  %i.b = load i64, ptr %i.a, align 8, !dbg !14222, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !14228          ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.c, !dbg !14229
  br i1 %.not, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14234

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14229
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14229, !nonnull !13
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.c, !dbg !14229 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !14238
  %i.h = load i32, ptr %i.g, align 8, !dbg !14238, !alias.scope !14241, !noundef !13
  %i.i = icmp eq i32 %i.h, %1, !dbg !14238
  %..i = select i1 %i.i, ptr %i.f, ptr null, !dbg !14244
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14244

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.b ], !dbg !14245
  ret ptr %.sroa.02.0.i, !dbg !14246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(readwrite, target_mem: none) uwtable
define void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE6removeCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !14247 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14248), !dbg !14251
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14253
  %i.b = load i64, ptr %i.a, align 8, !dbg !14253, !alias.scope !14248, !noundef !13
  %i.c = zext i32 %3 to i64, !dbg !14257          ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.c, !dbg !14258
  br i1 %.not.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !14261

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14258
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14258, !alias.scope !14248, !nonnull !13
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.c, !dbg !14258 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 48, !dbg !14263 ; 2 uses
  %.val5.i.i = load i32, ptr %i.g, align 8, !dbg !14263, !alias.scope !14264, !noalias !14248, !noundef !13
  %i.h = icmp eq i32 %.val5.i.i, %2, !dbg !14267
  br i1 %i.h, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !14269

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit
  store i64 2, ptr %0, align 8, !dbg !14270
  br label %bb.c, !dbg !14271

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !14272
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14280 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !14280, !noundef !13
  store i32 %i.j, ptr %i.f, align 8, !dbg !14282
  store i32 %3, ptr %i.i, align 8, !dbg !14283
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !14284 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !dbg !14284, !noundef !13
  %i.m = add i32 %i.l, -1, !dbg !14284
  store i32 %i.m, ptr %i.k, align 4, !dbg !14284
  %i.n = add i32 %2, 1, !dbg !14285
  store i32 %i.n, ptr %i.g, align 8, !dbg !14288
  br label %bb.c, !dbg !14271

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCshquuC4dCYVj_10polars_sql.exit.thread
  ret void, !dbg !14289
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14290 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14291
  %i.b = load i64, ptr %i.a, align 8, !dbg !14291, !noundef !13
  %i.c = zext i32 %2 to i64, !dbg !14297          ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !14298
  br i1 %i.d, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14298

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14303
  %i.f = load ptr, ptr %i.e, align 8, !dbg !14303, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.c, !dbg !14312 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !14313
  %i.i = load i32, ptr %i.h, align 8, !dbg !14313, !alias.scope !14319, !noundef !13
  %i.j = icmp eq i32 %i.i, %1, !dbg !14313
  %..i = select i1 %i.j, ptr %i.g, ptr null, !dbg !14322
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14322

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ], !dbg !14323
  ret ptr %.sroa.02.0.i, !dbg !14324
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !14325 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14326 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.m, !dbg !14327 ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14330), !dbg !14333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14337), !dbg !14333
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14339 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !14339, !alias.scope !14344, !noalias !14347, !noundef !13
  %i.f = icmp eq i64 %i.e, 0, !dbg !14350
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i, !dbg !14351, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.m, !dbg !14354 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %0, align 8, !dbg !14355, !alias.scope !14330, !noalias !14356, !nonnull !13, !noundef !13 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14355
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !14355, !alias.scope !14330, !noalias !14356, !noundef !13 ; 4 uses
  %i.i = lshr i64 %i.c, 57, !dbg !14357
  %i.j = trunc nuw nsw i64 %i.i to i8, !dbg !14360 ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !14337, !noalias !14361 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !14337, !noalias !14361, !nonnull !13
  br label %bb.d, !dbg !14362

bb.d:                                             ; preds = %bb.f, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i ], [ %i.ao, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i ], [ %.sroa.4.120.i.i, %bb.f ], !dbg !14363
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i ], [ %.sroa.01.122.i.i, %bb.f ], !dbg !14363
  %i.o = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql.exit.i ], [ %i.an, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !14364 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !14365
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.p, align 1, !dbg !14368, !noalias !14372 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l, !dbg !14375
  %i.r = bitcast <16 x i1> %i.q to i16, !dbg !14378 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.r, 0, !dbg !14380
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !14383

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ad, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !14384
  %i.t = zext nneg i16 %i.s to i64, !dbg !14387
  %i.u = add i64 %.sroa.0.017.i.i, %i.t, !dbg !14388
  %i.v = and i64 %i.u, %.val7.i, !dbg !14388
  %i.w = sub nsw i64 0, %i.v, !dbg !14389
  %i.x = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.w, !dbg !14398 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !14399
  %.val3.i.i = load i64, ptr %i.y, align 8, !dbg !14399, !noalias !14400, !noundef !13
  %i.z = icmp eq i64 %.val1.i.i.i, %.val3.i.i, !dbg !14403
  br i1 %i.z, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !14403, !prof !6167

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %.lr.ph.i.i
  %i.aa = getelementptr i8, ptr %i.x, i64 -16, !dbg !14399
  %.val2.i.i = load ptr, ptr %i.aa, align 8, !dbg !14399, !noalias !14400, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i.i), !dbg !14419, !noalias !14400
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0, !dbg !14419
  br i1 %i.ab, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !14423, !prof !6179

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.d
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !14425
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !dbg !14428, !prof !39

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit.i, %.lr.ph.i.i
  %i.ac = add i16 %.sroa.05.029.i.i, -1, !dbg !14430
  %i.ad = and i16 %i.ac, %.sroa.05.029.i.i, !dbg !14432 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ad, 0, !dbg !14380
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !14383

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !14434
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !14434 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.af, 0, !dbg !14438
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !dbg !14440, !prof !39

.thread24.i.i:                                    ; preds = %bb.e
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.af, i1 true), !dbg !14441
  %i.ah = zext nneg i16 %i.ag to i64, !dbg !14444
  %i.ai = add i64 %.sroa.0.017.i.i, %i.ah, !dbg !14445
  %i.aj = and i64 %i.ai, %.val7.i, !dbg !14445
  br label %.thread.i.i, !dbg !14446

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.aj, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !14447
  %i.al = bitcast <16 x i1> %i.ak to i16, !dbg !14451
  %i.am = icmp eq i16 %i.al, 0, !dbg !14453
  br i1 %i.am, label %bb.f, label %bb.g, !dbg !14453, !prof !39

bb.f:                                             ; preds = %.thread.i.i, %bb.e
end_hunk_1
begin_hunk_2_@_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.ay:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !24011, !alias.scope !23883, !noalias !23867
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.az:                                            ; preds = %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24013
  %.val.i.i.i = load ptr, ptr %i.fb, align 8, !dbg !24014, !alias.scope !23878, !noalias !23879 ; 3 uses
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCshquuC4dCYVj_10polars_sql()
          to label %.noexc1.i.i unwind label %bb.bv, !dbg !24016, !noalias !23867 ; 3 uses

.noexc1.i.i:                                      ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !24019, !noalias !24025
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.bc, !dbg !24028, !noalias !23955

.noexc.i.i.i.i:                                   ; preds = %.noexc1.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !24028
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !24028
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.ba, !dbg !24028, !noalias !23955

bb.ba:                                            ; preds = %.noexc.i.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc) #43
          to label %bb.bd unwind label %bb.bb, !dbg !24028, !noalias !23955

bb.bb:                                            ; preds = %bb.ba
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !24028, !noalias !23955
  unreachable, !dbg !24028

bb.bc:                                            ; preds = %.noexc1.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd, !dbg !24032

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.bc ], [ %i.ff, %bb.ba ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef 48, i64 noundef 8) #41, !dbg !24033, !noalias !23955
  br label %.body.i.i, !dbg !24044

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !dbg !24045, !noalias !24048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !24049, !noalias !24025
  %i.fi = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24050
  store ptr %i.fc, ptr %i.fi, align 8, !dbg !24050, !alias.scope !23869, !noalias !23880
  store i8 30, ptr %i.be, align 16, !dbg !24050, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.be:                                            ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24051 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 79, !dbg !24057
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !24057, !range !619, !alias.scope !23878, !noalias !23879, !noundef !13
  %i.fm = icmp eq i8 %i.fl, -40, !dbg !24064
  br i1 %i.fm, label %bb.bt, label %bb.bu, !dbg !24064

bb.bf:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !24065, !alias.scope !23883, !noalias !23867
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bg:                                            ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24067
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24068
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn)
          to label %.noexc2.i.i unwind label %bb.bv, !dbg !24070, !noalias !23867

.noexc2.i.i:                                      ; preds = %bb.bg
  store i8 33, ptr %i.be, align 16, !dbg !24068, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bh:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !24071, !alias.scope !23883, !noalias !23867
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bi:                                            ; preds = %bb.an
  %i.fp = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !dbg !24073, !noalias !23955
  %i.fq = icmp slt i64 %i.fp, 0, !dbg !24082
  br i1 %i.fq, label %bb.bk, label %bb.bj, !dbg !24082

bb.bj:                                            ; preds = %bb.bi, %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24084
  store i64 %i.du, ptr %i.fr, align 8, !dbg !24084, !alias.scope !23869, !noalias !23880
  %i.fs = getelementptr inbounds nuw i8, ptr %i.be, i64 1, !dbg !24084
  store i8 %i.dw, ptr %i.fs, align 1, !dbg !24084, !alias.scope !23869, !noalias !23880
  %i.ft = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !24084
  store ptr %i.dy, ptr %i.ft, align 16, !dbg !24084, !alias.scope !23869, !noalias !23880
  store i8 18, ptr %i.be, align 16, !dbg !24084, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bk:                                            ; preds = %bb.bi
  tail call void @llvm.trap(), !dbg !24085
  unreachable, !dbg !24085

bb.bl:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw i8, ptr %i.be, i64 4, !dbg !24086
  store i32 %i.ea, ptr %i.fu, align 4, !dbg !24086, !alias.scope !23869, !noalias !23880
  %i.fv = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24086
  store ptr %i.ec, ptr %i.fv, align 8, !dbg !24086, !alias.scope !23869, !noalias !23880
  store i8 22, ptr %i.be, align 16, !dbg !24086, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bm:                                            ; preds = %bb.ar
  tail call void @llvm.trap(), !dbg !24087
  unreachable, !dbg !24087

bb.bn:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.be, i64 4, !dbg !24088
  store i32 %i.eg, ptr %i.fw, align 4, !dbg !24088, !alias.scope !23869, !noalias !23880
  %i.fx = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24088
  store ptr %i.ei, ptr %i.fx, align 8, !dbg !24088, !alias.scope !23869, !noalias !23880
  store i8 24, ptr %i.be, align 16, !dbg !24088, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bo:                                            ; preds = %bb.at
  tail call void @llvm.trap(), !dbg !24089
  unreachable, !dbg !24089

bb.bp:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24090
  store <2 x ptr> %i.em, ptr %i.fy, align 8, !dbg !24090, !alias.scope !23869, !noalias !23880
  store i8 25, ptr %i.be, align 16, !dbg !24090, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bq:                                            ; preds = %bb.au
  tail call void @llvm.trap(), !dbg !24091
  unreachable, !dbg !24091

bb.br:                                            ; preds = %bb.av
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24092
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !24092, !alias.scope !23878, !noalias !23879, !noundef !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !24093
  store <2 x ptr> %i.er, ptr %i.gb, align 16, !dbg !24093, !alias.scope !23869, !noalias !23880
  %i.gc = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24093
  store i64 %i.ga, ptr %i.gc, align 8, !dbg !24093, !alias.scope !23869, !noalias !23880
  store i8 26, ptr %i.be, align 16, !dbg !24093, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bs:                                            ; preds = %bb.av
  tail call void @llvm.trap(), !dbg !24094
  unreachable, !dbg !24094

bb.bt:                                            ; preds = %bb.be
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #42
          to label %.noexc3.i.i unwind label %bb.bv, !dbg !24095, !noalias !23867

bb.bu:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fj, i64 24, i1 false), !dbg !24096, !noalias !23879
  br label %.noexc3.i.i, !dbg !24099

.noexc3.i.i:                                      ; preds = %bb.bu, %bb.bt
  %i.gd = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !24100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !dbg !24100, !noalias !23880
  store i8 31, ptr %i.be, align 16, !dbg !24100, !alias.scope !23869, !noalias !23880
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !23884

bb.bv:                                            ; preds = %bb.bt, %bb.bg, %bb.az, %bb.ax
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !24101

.body.i.i:                                        ; preds = %bb.bv, %bb.bd
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ge, %bb.bv ], [ %eh.lpad-body.i.i.i.i, %bb.bd ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.bf) #43
          to label %common.resume unwind label %bb.bw, !dbg !24101, !noalias !23867

bb.bw:                                            ; preds = %.body.i.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !24102, !noalias !23867
  unreachable, !dbg !24102

common.resume:                                    ; preds = %.body, %.body68, %.body73, %bb.ls, %bb.lr, %bb.mf, %bb.me, %bb.mq, %bb.mp, %bb.nm, %bb.nn, %bb.ov, %bb.ou, %bb.oy, %bb.ox, %bb.le, %bb.lf, %bb.ch, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.yl, %bb.le ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.hg, %bb.ch ], [ %i.yl, %bb.lf ], [ %eh.lpad-body74, %.body73 ], [ %i.afy, %bb.ox ], [ %i.zi, %bb.lr ], [ %i.aaa, %bb.me ], [ %eh.lpad-body, %.body ], [ %.pn33, %bb.mp ], [ %.pn, %.body68 ], [ %i.afy, %bb.oy ], [ %i.adb, %bb.nn ], [ %i.aft, %bb.ou ], [ %i.zi, %bb.ls ], [ %i.aaa, %bb.mf ], [ %.pn33, %bb.mq ], [ %i.adb, %bb.nm ], [ %i.aft, %bb.ov ]
  resume { ptr, i32 } %common.resume.op, !dbg !24103

_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %.noexc3.i.i, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %.noexc2.i.i, %bb.bf, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i, %bb.ay, %.noexc.i.i, %bb.aw, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !24104, !noalias !23865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, ptr noundef nonnull align 16 dereferenceable(48) %i.bf, i64 48, i1 false), !dbg !24102
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 48, !dbg !24102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gg, ptr noundef nonnull align 16 dereferenceable(48) %i.be, i64 48, i1 false), !dbg !24102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !24101, !noalias !23865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !24101, !noalias !23865
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !23855

bb.bx:                                            ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24105 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !dbg !24105, !alias.scope !23778, !noalias !23789
  %i.gj = load ptr, ptr %i.gh, align 8, !dbg !24105, !alias.scope !23778, !noalias !23789, !nonnull !13, !noundef !13
  %i.gk = atomicrmw add ptr %i.gj, i64 1 monotonic, align 8, !dbg !24117, !noalias !23789
  %i.gl = icmp slt i64 %i.gk, 0, !dbg !24122
  br i1 %i.gl, label %bb.ca, label %bb.bz, !dbg !24122

bb.by:                                            ; preds = %bb.g
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24124
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !24124
  %2 = load <2 x i128>, ptr %i.gn, align 16, !dbg !24124, !alias.scope !23778, !noalias !23789 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !24129
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.go, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gm) #45, !dbg !24124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64, !dbg !24129
  %3 = extractelement <2 x i128> %2, i64 0, !dbg !24129
  store i128 %3, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !24129
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 80, !dbg !24129
  %4 = extractelement <2 x i128> %2, i64 1, !dbg !24129
  store i128 %4, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !24129
  store i8 34, ptr %i.bh, align 16, !dbg !24129
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !23855

bb.bz:                                            ; preds = %bb.bx
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !24130
  store <2 x ptr> %i.gi, ptr %i.gp, align 8, !dbg !24130
  store i8 33, ptr %i.bh, align 16, !dbg !24130
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !23855

bb.ca:                                            ; preds = %bb.bx
  tail call void @llvm.trap(), !dbg !24131
  unreachable, !dbg !24131

_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.by, %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i64 96, i1 false), !dbg !24132
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !24132
  store i64 -9223372036854775804, ptr %i.gq, align 16, !dbg !24132
  br label %bb.lm, !dbg !23777

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !24133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24135), !dbg !24133
  %i.gr = load i8, ptr %1, align 16, !dbg !24138, !range !2255, !alias.scope !24135, !noalias !24142, !noundef !13 ; 3 uses
  %i.gs = icmp ne i8 %i.gr, 40, !dbg !24138
  tail call void @llvm.assume(i1 %i.gs), !dbg !24138
  %i.gt = add nsw i8 %i.gr, -39, !dbg !24138
  %i.gu = icmp samesign ugt i8 %i.gr, 38, !dbg !24138
  %narrow.i42 = select i1 %i.gu, i8 %i.gt, i8 1, !dbg !24138
  switch i8 %narrow.i42, label %bb.cc [
    i8 0, label %bb.cd
    i8 1, label %bb.ce
    i8 2, label %bb.cf
    i8 3, label %bb.cg
    i8 4, label %bb.ck
    i8 5, label %bb.cl
  ], !dbg !24138

bb.cc:                                            ; preds = %bb.cb
  unreachable, !dbg !24138

bb.cd:                                            ; preds = %bb.cb
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !24145, !noalias !24147
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bb, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gv) #45, !dbg !24145, !noalias !24142, !inline_history !24148
  %.sroa.9.16..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !24149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx113, ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i64 48, i1 false), !dbg !24149, !noalias !24135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !24150, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

bb.ce:                                            ; preds = %bb.cb
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !24152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !24153, !noalias !24147
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #45, !dbg !24153, !noalias !24142, !inline_history !24148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !24155, !noalias !24147
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.az, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gw)
          to label %bb.ci unwind label %bb.ch, !dbg !24155, !noalias !24142, !inline_history !24148

bb.cf:                                            ; preds = %bb.cb
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !24156
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24157
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gx) #45, !dbg !24158, !inline_history !24148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !24160, !noalias !24147
  call fastcc void @_RNvXsC_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_16DataTypeSelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gy), !dbg !24160, !noalias !24142, !inline_history !24148
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !24161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !24161
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !24161
  %.sroa.16.48.copyload = load i64, ptr %.sroa.16.48..sroa_idx, align 16, !dbg !24161 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.48.copyload to i8, !dbg !24161
  %.sroa.16.sroa.7.0.extract.shift = and i64 %.sroa.16.48.copyload, -256, !dbg !24162
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !24161
  %.sroa.18.48.copyload = load i64, ptr %.sroa.18.48..sroa_idx, align 8, !dbg !24161
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !24161
  %.sroa.19.48.copyload = load i8, ptr %.sroa.19.48..sroa_idx, align 16, !dbg !24161
  %.sroa.9.16..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !24161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.9.16..sroa_idx114, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !dbg !24161, !noalias !24135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !24163, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

bb.cg:                                            ; preds = %bb.cb
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !24165, !noalias !24147
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gz) #45, !dbg !24165, !noalias !24142, !inline_history !24148
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !24167
  %i.hb = load i64, ptr %i.ha, align 16, !dbg !24167, !alias.scope !24135, !noalias !24142, !noundef !13 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !24168
  %i.hd = load i8, ptr %i.hc, align 16, !dbg !24168, !range !15242, !alias.scope !24135, !noalias !24142, !noundef !13
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !24169
  %i.hf = load i64, ptr %i.he, align 8, !dbg !24169, !alias.scope !24135, !noalias !24142, !noundef !13
  %.sroa.9.16..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !24170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx112, ptr noundef nonnull align 16 dereferenceable(48) %i.aw, i64 48, i1 false), !dbg !24170, !noalias !24135
  %.sroa.16.sroa.0.0.extract.trunc124 = trunc i64 %i.hb to i8, !dbg !24170
  %.sroa.16.sroa.7.0.extract.shift127 = and i64 %i.hb, -256, !dbg !24162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !24171, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

bb.ch:                                            ; preds = %bb.ce
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.ba) #43
          to label %common.resume unwind label %bb.cj, !dbg !24172, !noalias !24142, !inline_history !24148

bb.ci:                                            ; preds = %bb.ce
  %.sroa.0.0.copyload109 = load i8, ptr %i.ba, align 16, !dbg !24173, !noalias !24135
  %.sroa.9.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1, !dbg !24173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.0..sroa_idx110, i64 47, i1 false), !dbg !24173, !noalias !24135
  %.sroa.9.48..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !24173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx115, ptr noundef nonnull align 16 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !24173, !noalias !24135
  %.sroa.16.48..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !24173
  %.sroa.16.48.copyload117 = load i64, ptr %.sroa.16.48..sroa_idx116, align 16, !dbg !24173, !noalias !24135 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc123 = trunc i64 %.sroa.16.48.copyload117 to i8, !dbg !24173
  %.sroa.16.sroa.7.0.extract.shift125 = and i64 %.sroa.16.48.copyload117, -256, !dbg !24162
  %.sroa.18.48..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.az, i64 24, !dbg !24173
  %.sroa.18.48.copyload119 = load i64, ptr %.sroa.18.48..sroa_idx118, align 8, !dbg !24173, !noalias !24135
  %.sroa.19.48..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !24173
  %.sroa.19.48.copyload121 = load i8, ptr %.sroa.19.48..sroa_idx120, align 16, !dbg !24173, !noalias !24135
  %.sroa.20.48..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.az, i64 33, !dbg !24173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.by, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.48..sroa_idx122, i64 15, i1 false), !dbg !24173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !24172, !noalias !24147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !24172, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

bb.cj:                                            ; preds = %bb.ch
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !24138, !noalias !24142, !inline_history !24148
  unreachable, !dbg !24138

bb.ck:                                            ; preds = %bb.cb
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24174
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !24175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !24176, !noalias !24147
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.av, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.hi) #45, !dbg !24176, !noalias !24142, !inline_history !24148
  %.val.i = load i8, ptr %i.hj, align 16, !dbg !24178, !range !15242, !alias.scope !24135, !noalias !24142, !noundef !13
  %.sroa.9.16..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !24179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx111, ptr noundef nonnull align 16 dereferenceable(48) %i.av, i64 48, i1 false), !dbg !24179, !noalias !24135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !24180, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

bb.cl:                                            ; preds = %bb.cb
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !24182, !noalias !24147
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.au, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.hk) #45, !dbg !24182, !noalias !24142, !inline_history !24148
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !24184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.au, i64 48, i1 false), !dbg !24184, !noalias !24135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !24185, !noalias !24147
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !24151

_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.cd, %bb.cg, %bb.ci, %bb.cf, %bb.ck, %bb.cl
  %.sroa.16.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.cd ], [ %.sroa.16.sroa.7.0.extract.shift125, %bb.ci ], [ %.sroa.16.sroa.7.0.extract.shift, %bb.cf ], [ %.sroa.16.sroa.7.0.extract.shift127, %bb.cg ], [ 0, %bb.ck ], [ 0, %bb.cl ], !dbg !24133
  %.sroa.16.sroa.0.0 = phi i8 [ undef, %bb.cd ], [ %.sroa.16.sroa.0.0.extract.trunc123, %bb.ci ], [ %.sroa.16.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.16.sroa.0.0.extract.trunc124, %bb.cg ], [ %.val.i, %bb.ck ], [ undef, %bb.cl ], !dbg !24133
  %.sroa.19.0 = phi i8 [ undef, %bb.cd ], [ %.sroa.19.48.copyload121, %bb.ci ], [ %.sroa.19.48.copyload, %bb.cf ], [ %i.hd, %bb.cg ], [ undef, %bb.ck ], [ undef, %bb.cl ], !dbg !24133
  %.sroa.18.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.18.48.copyload119, %bb.ci ], [ %.sroa.18.48.copyload, %bb.cf ], [ %i.hf, %bb.cg ], [ undef, %bb.ck ], [ undef, %bb.cl ], !dbg !24133
  %.sroa.0.0 = phi i8 [ 39, %bb.cd ], [ %.sroa.0.0.copyload109, %bb.ci ], [ 41, %bb.cf ], [ 42, %bb.cg ], [ 43, %bb.ck ], [ 44, %bb.cl ], !dbg !24138
  store i8 %.sroa.0.0, ptr %0, align 16, !dbg !24162
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !24162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9, i64 63, i1 false), !dbg !24162
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !24162
  %.sroa.16.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.0.0 to i64, !dbg !24162
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i64 %.sroa.16.sroa.7.sroa.0.0, %.sroa.16.sroa.0.0.insert.ext, !dbg !24162
  store i64 %.sroa.16.sroa.0.0.insert.insert, ptr %.sroa.16.0..sroa_idx, align 16, !dbg !24162
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !24162
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !24162
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !24162
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !24162
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !24162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.by, i64 15, i1 false), !dbg !24162
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !24162
  store i64 -9223372036854775803, ptr %i.hl, align 16, !dbg !24162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !24186
  br label %bb.lm, !dbg !23777

bb.cm:                                            ; preds = %bb.a
  %i.hm = load ptr, ptr %1, align 16, !dbg !24187, !nonnull !13, !noundef !13
  %i.hn = atomicrmw add ptr %i.hm, i64 1 monotonic, align 8, !dbg !24194
  %i.ho = icmp slt i64 %i.hn, 0, !dbg !24198
  br i1 %i.ho, label %bb.ly, label %bb.lz, !dbg !24198

bb.cn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !24200
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !24202 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 16, !dbg !24202, !nonnull !13, !noundef !13
  %i.hr = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8, !dbg !24207
  %i.hs = icmp slt i64 %i.hr, 0, !dbg !24211
  br i1 %i.hs, label %bb.md, label %bb.mc, !dbg !24211

bb.co:                                            ; preds = %bb.a
  %i.ht = load ptr, ptr %1, align 16, !dbg !24213, !nonnull !13, !noundef !13
  %i.hu = atomicrmw add ptr %i.ht, i64 1 monotonic, align 8, !dbg !24220
  %i.hv = icmp slt i64 %i.hu, 0, !dbg !24224
  br i1 %i.hv, label %bb.mi, label %bb.mh, !dbg !24224

bb.cp:                                            ; preds = %bb.a
  %i.hw = load ptr, ptr %1, align 16, !dbg !24226, !nonnull !13, !noundef !13
  %i.hx = atomicrmw add ptr %i.hw, i64 1 monotonic, align 8, !dbg !24233
  %i.hy = icmp slt i64 %i.hx, 0, !dbg !24237
  br i1 %i.hy, label %bb.mk, label %bb.mj, !dbg !24237

bb.cq:                                            ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24239
end_hunk_2
