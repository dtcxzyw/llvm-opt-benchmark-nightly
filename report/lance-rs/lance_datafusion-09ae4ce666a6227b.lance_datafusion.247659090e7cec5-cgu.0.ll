Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvXs1z_NtNtCs40MM8ukkVQd_9sqlparser3ast3dclNtB7_6RevokeNtNtB9_7visitor8VisitMut5visitINtBV_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2S_:bb.a
  %.sroa.05.0.i.i1827 = phi ptr [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.x = tail call fastcc noundef zeroext i1 @_RINvXsjW_NtCs40MM8ukkVQd_9sqlparser3astNtB7_11FunctionArgNtNtB7_7visitor8VisitMut5visitINtBV_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2S_(ptr noalias noundef align 8 dereferenceable(784) %.sroa.05.0.i.i1827, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !35858, !inline_history !101
  br i1 %i.x, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_7GranteeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2f_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3k_.exit, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d, %.lr.ph30
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i29, i64 88 ; 2 uses
  %.not23 = icmp eq ptr %i.y, %i.p
  br i1 %.not23, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.i.thread, label %.lr.ph30

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.i.thread: ; preds = %.loopexit, %bb.c, %bb.b, %.lr.ph33
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i32, i64 136 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.j
  br i1 %.not, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_7GranteeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2f_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3k_.exit, label %.lr.ph33

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_7GranteeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2f_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3k_.exit: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.i.thread, %.lr.ph, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_12GrantObjectsENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3v_.exit.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_12GrantObjectsENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3v_.exit, %_RINvXsgS_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10PrivilegesNtNtB7_7visitor8VisitMut5visitINtBU_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1M_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2R_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_12GrantObjectsENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3v_.exit.thread ], [ true, %_RINvXsgS_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10PrivilegesNtNtB7_7visitor8VisitMut5visitINtBU_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1M_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2R_.exit ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_12GrantObjectsENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3v_.exit ], [ true, %.lr.ph ], [ false, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.i.thread ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs20_NtNtCs40MM8ukkVQd_9sqlparser3ast3dmlNtB7_12OutputClauseNtNtB9_7visitor8VisitMut5visitINtB12_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1V_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB30_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !332, !noundef !313
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit14

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35873)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !35873, !nonnull !313, !noundef !313 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !35873, !noundef !313 ; 2 uses
  %.idx41 = mul nuw nsw i64 %i.f, 776
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx41
  %.not2234 = icmp eq i64 %i.f, 0
  br i1 %.not2234, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %.lr.ph36

.lr.ph36:                                         ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %.lr.ph36
  %.sroa.05.0.i35 = phi ptr [ %i.i, %.lr.ph36 ], [ %i.d, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RINvXs4n_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_10SelectItemNtNtB9_7visitor8VisitMut5visitINtB12_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1V_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB30_(ptr noalias noundef align 8 dereferenceable(776) %.sroa.05.0.i35, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !35873, !inline_history !83 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i35, i64 776 ; 2 uses
  %.not22 = icmp eq ptr %i.i, %i.g
  %or.cond = select i1 %i.h, i1 true, i1 %.not22
  br i1 %or.cond, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %.lr.ph36

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit14: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35874)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !35874, !nonnull !313, !noundef !313 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !35874, !noundef !313 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 776
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not26 = icmp eq i64 %i.n, 0
  br i1 %.not26, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i1527, i64 776 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.o
  br i1 %.not, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit14, %bb.b
  %.sroa.05.0.i1527 = phi ptr [ %i.p, %bb.b ], [ %i.l, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit14 ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RINvXs4n_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_10SelectItemNtNtB9_7visitor8VisitMut5visitINtB12_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1V_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB30_(ptr noalias noundef align 8 dereferenceable(776) %.sroa.05.0.i1527, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !35874, !inline_history !83
  br i1 %i.q, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %bb.b

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16: ; preds = %bb.b, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit14
  %i.r = load i64, ptr %i.j, align 8, !range !332, !alias.scope !35875, !noundef !313
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35876)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !35876, !nonnull !313, !noundef !313 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !35876, !noundef !313 ; 2 uses
  %.idx39 = mul nuw nsw i64 %i.v, 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx39
  %.not2031 = icmp eq i64 %i.v, 0
  br i1 %.not2031, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.c, %.loopexit
  %.sroa.05.0.i1732 = phi ptr [ %i.af, %.loopexit ], [ %i.t, %bb.c ] ; 4 uses
  %i.x = load i64, ptr %.sroa.05.0.i1732, align 8, !range !332, !alias.scope !35877, !noalias !35876, !noundef !313
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35879)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i1732, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !35880, !noalias !35876, !nonnull !313, !noundef !313 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i1732, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !35880, !noalias !35876, !noundef !313 ; 2 uses
  %.idx40 = mul nuw nsw i64 %i.ab, 784
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx40
  %.not2128 = icmp eq i64 %i.ab, 0
  br i1 %.not2128, label %.loopexit, label %.lr.ph30

bb.e:                                             ; preds = %.lr.ph30
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i29, i64 784 ; 2 uses
  %.not21 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not21, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.d, %bb.e
  %.sroa.05.0.i.i.i29 = phi ptr [ %i.ad, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ae = tail call fastcc noundef zeroext i1 @_RINvXsjW_NtCs40MM8ukkVQd_9sqlparser3astNtB7_11FunctionArgNtNtB7_7visitor8VisitMut5visitINtBV_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2S_(ptr noalias noundef align 8 dereferenceable(784) %.sroa.05.0.i.i.i29, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !35881, !inline_history !105
  br i1 %i.ae, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d, %.lr.ph33
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i1732, i64 88 ; 2 uses
  %.not20 = icmp eq ptr %i.af, %i.w
  br i1 %.not20, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread, label %.lr.ph33

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit.thread: ; preds = %.lr.ph, %.loopexit, %.lr.ph30, %.lr.ph36, %bb.c, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16
  %.sroa.0.0 = phi i1 [ false, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query10SelectItemENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2r_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3w_.exit16 ], [ false, %.loopexit ], [ false, %bb.c ], [ %i.h, %.lr.ph36 ], [ true, %.lr.ph30 ], [ false, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0EB3G_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35884
  call void @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @364)
  %i.h = load i64, ptr %i.a, align 8, !range !318, !noalias !35884, !noundef !313
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.c, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 8, !range !462, !noalias !35884, !noundef !313
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35884
  switch i8 %i.i, label %.loopexit [
    i8 27, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit
    i8 29, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit
    i8 30, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit
  ]

_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit.thread: ; preds = %bb.b
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35884
  br label %.loopexit

_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit: ; preds = %bb.c, %bb.c, %bb.c
  %i.j = icmp eq ptr %i.g, %i.c
  br i1 %i.j, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit, %bb.c, %bb.a, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit.thread
  %i.k = phi i1 [ false, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit.thread ], [ true, %bb.a ], [ false, %bb.c ], [ true, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_expr0B1l_.exit ]
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapbNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2A_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0EB3M_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35896)
  %i.h = load i64, ptr %i.f, align 16, !range !331, !alias.scope !35896, !noundef !313 ; 2 uses
  %i.i = icmp ne i64 %i.h, 35
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 4
  br i1 %i.j, label %bb.c, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35896
  call void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema15index_of_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !318, !noalias !35896, !noundef !313
  %.not.i = icmp eq i64 %i.l, -1
  %3 = load i64, ptr %i.e, align 8, !noalias !35896
  br i1 %.not.i, label %bb.d, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35896
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !35896, !nonnull !313, !noundef !313 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !35896, !noundef !313 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.p, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.backedge.i.i
  %i.r = phi ptr [ %i.s, %.backedge.i.i ], [ %i.n, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35897)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35898
  %i.t = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35898 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !314

bb.e:                                             ; preds = %.lr.ph.i.i
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #72, !noalias !35898
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %.lr.ph.i.i
  store i64 %3, ptr %i.t, align 8, !noalias !35898
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !35897, !noalias !35899, !noundef !313
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.f, label %_RNCNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBc_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_00B1n_.exit.i.i

bb.f:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !35897, !noalias !35899, !nonnull !313, !noundef !313
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = load i64, ptr %i.t, align 8
  %i.ac = icmp ne i64 %i.aa, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsc85D0lJ81Z_16lance_datafusion.exit4.i.i.i, label %_RNCNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBc_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_00B1n_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsc85D0lJ81Z_16lance_datafusion.exit4.i.i.i: ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35900
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 49
  %i.ag = load i8, ptr %i.af, align 1, !range !325, !alias.scope !35897, !noalias !35899, !noundef !313
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.backedge.i.i, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread

.backedge.i.i:                                    ; preds = %_RNCNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBc_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_00B1n_.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsc85D0lJ81Z_16lance_datafusion.exit4.i.i.i
  %.not5.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not5.i.i, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread, label %.lr.ph.i.i

_RNCNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBc_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_00B1n_.exit.i.i: ; preds = %bb.f, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35901
  br label %.backedge.i.i

_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit: ; preds = %bb.c
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35896
  %i.ai = icmp eq ptr %i.g, %i.c
  br i1 %i.ai, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread, label %bb.b

_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit.thread: ; preds = %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsc85D0lJ81Z_16lance_datafusion.exit4.i.i.i, %.backedge.i.i, %bb.a, %bb.d
  %.sroa.0.0 = phi i8 [ 2, %bb.a ], [ 0, %bb.d ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsc85D0lJ81Z_16lance_datafusion.exit4.i.i.i ], [ 0, %.backedge.i.i ], [ 0, %bb.b ], [ 2, %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsa_0B1l_.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs2_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB6_11ScalarValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [2 x i8], align 2                ; 4 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [2 x i8], align 2                ; 4 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1 x i8], align 1                ; 4 uses
  %i.ak = alloca [1 x i8], align 1                ; 4 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [16 x i8], align 16              ; 4 uses
  %i.an = alloca [1 x i8], align 1                ; 4 uses
  %i.ao = alloca [1 x i8], align 1                ; 4 uses
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %i.aq = alloca [1 x i8], align 1                ; 4 uses
  %i.ar = alloca [1 x i8], align 1                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [1 x i8], align 1                ; 4 uses
  %i.au = alloca [1 x i8], align 1                ; 4 uses
  %i.av = alloca [4 x i8], align 4                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [4 x i8], align 4                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 8 uses
  %i.bb = alloca [2 x i8], align 2                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 8 uses
  %i.bd = alloca [1 x i8], align 1                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 4 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [4 x i8], align 4                ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 99 uses
  %i.ck = load i128, ptr %.tr, align 16, !range !417, !noundef !313 ; 4 uses
  %i.cl = icmp ne i128 %i.ck, 10
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = trunc nuw nsw i128 %i.ck to i64         ; 2 uses
  %i.cn = add nsw i64 %i.cm, -2
  %i.co = icmp samesign ugt i128 %i.ck, 1
  %i.cp = select i1 %i.co, i64 %i.cn, i64 8
  switch i64 %i.cp, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.bs
    i64 18, label %bb.bs
    i64 19, label %bb.bs
    i64 20, label %bb.bu
    i64 21, label %bb.bu
    i64 22, label %bb.bu
    i64 23, label %bb.bu
    i64 24, label %bb.t
    i64 25, label %bb.u
    i64 26, label %bb.v
    i64 27, label %bb.w
    i64 28, label %bb.x
    i64 29, label %bb.y
    i64 30, label %bb.z
end_hunk_0
begin_hunk_1_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE12parse_structB16_:bb.a
  store i64 %.sroa.0228.0.copyload, ptr %i.e, align 16, !noalias !72487
  %i.eq = icmp samesign ult i64 %i.ef, 41175768021673107
  call void @llvm.assume(i1 %i.eq), !noalias !72461
  %i.er = load i64, ptr %i.m, align 8, !range !320, !alias.scope !72473, !noalias !72461, !noundef !313
  %i.es = icmp eq i64 %i.ef, %i.er
  br i1 %i.es, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i: ; preds = %bb.az
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ef, i64 noundef range(i64 1, 0) 1, i64 noundef 16, i64 noundef 224)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i_crit_edge unwind label %bb.ba, !noalias !72461, !inline_history !72336

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i_crit_edge: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i
  %.pre559 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i176, align 8, !alias.scope !72473, !noalias !72461
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i_crit_edge, %bb.az
  %i.et = phi ptr [ %.pre559, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_E7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i_crit_edge ], [ %i.ee, %bb.az ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [224 x i8], ptr %i.et, i64 %i.ef
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.eu, ptr noundef nonnull align 16 dereferenceable(224) %i.e, i64 224, i1 false)
  %i.ev = add nuw nsw i64 %i.ef, 1                ; 2 uses
  store i64 %i.ev, ptr %.sroa.6.0..sroa_idx.i.i177, align 8, !alias.scope !72473, !noalias !72461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !72487
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6549)
  %.not.i.i.i209467 = icmp eq ptr %i.ei, %i.eb
  br i1 %.not.i.i.i209467, label %.loopexit402, label %.lr.ph468

bb.ba:                                            ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4g_.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(224) %i.e) #73
          to label %.body.i210 unwind label %bb.bb, !noalias !72486, !inline_history !72336

bb.bb:                                            ; preds = %bb.ba, %.body.i210
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !72486, !inline_history !72336
  unreachable

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB23_3map3MapINtNtB23_9enumerate9EnumerateINtNtB4_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB27_6result6ResultNtNtB27_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendB5Q_.exit.i.i: ; preds = %.loopexit402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !72458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !72488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !72458
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B28_EE9from_iterINtNtNtB3e_8adapters3map3MapINtNtB4k_9enumerate9EnumerateINtNtBQ_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB6l_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EE0B7o_.exit.i

bb.bc:                                            ; preds = %.loopexit402
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body223

.body223:                                         ; preds = %.body.i210, %bb.bc
  %eh.lpad-body224 = phi { ptr, i32 } [ %i.ey, %bb.bc ], [ %.pn.i212, %.body.i210 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.m) #73
          to label %.body185 unwind label %.peel.begin.critedge.split-lp, !noalias !72461, !inline_history !72305

.body228:                                         ; preds = %.peel.begin.critedge.split-lp, %.critedge
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !72461, !inline_history !72305
  unreachable

.loopexit:                                        ; preds = %bb.aq, %bb.ao, %bb.am
  %.pn.i.i162.ph = phi { ptr, i32 } [ %i.dm, %bb.am ], [ %i.dr, %bb.ao ], [ %i.du, %bb.aq ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.n)
          to label %.body185 unwind label %.peel.begin.critedge.split-lp, !noalias !72461, !inline_history !72305

_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B28_EE9from_iterINtNtNtB3e_8adapters3map3MapINtNtB4k_9enumerate9EnumerateINtNtBQ_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB6l_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EE0B7o_.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB23_3map3MapINtNtB23_9enumerate9EnumerateINtNtB4_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EINtNtB27_6result6ResultNtNtB27_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendB5Q_.exit.i.i, %.noexc.i.i164.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !72454
  %i.ez = load i64, ptr %i.t, align 8, !range !318, !noalias !72452, !noundef !313 ; 2 uses
  %.not.not.i152 = icmp eq i64 %i.ez, -1
  br i1 %.not.not.i152, label %bb.bh, label %bb.be

bb.bd:                                            ; preds = %.noexc.i.i164.thread, %bb.be
  %.sroa.03.1.i = phi i1 [ false, %bb.be ], [ true, %.noexc.i.i164.thread ]
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body185

.body185:                                         ; preds = %.loopexit, %.body223, %bb.bd
  %.sroa.03.1.i.lpad-body = phi i1 [ %.sroa.03.1.i, %bb.bd ], [ true, %.body223 ], [ true, %.loopexit ]
  %eh.lpad-body186 = phi { ptr, i32 } [ %i.fa, %bb.bd ], [ %eh.lpad-body224, %.body223 ], [ %.pn.i.i162.ph, %.loopexit ] ; 2 uses
  %i.fb = load i64, ptr %i.t, align 8, !range !318, !noalias !72452, !noundef !313
  %i.fc = icmp ne i64 %i.fb, -1
  %or.cond.i150 = and i1 %.sroa.03.1.i.lpad-body, %i.fc
  br i1 %or.cond.i150, label %bb.bg, label %.thread268

bb.be:                                            ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B28_EE9from_iterINtNtNtB3e_8adapters3map3MapINtNtB4k_9enumerate9EnumerateINtNtBQ_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB6l_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EE0B7o_.exit.i
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4123.0.copyload = load i64, ptr %.sroa.4123.0..sroa_idx, align 8, !noalias !72452
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !72452
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.fd = load <2 x i64>, ptr %.sroa.6125.0..sroa_idx, align 8, !noalias !72452
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.cd unwind label %bb.bd, !noalias !72452, !inline_history !72337

bb.bf:                                            ; preds = %bb.bg
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !72452, !inline_history !72337
  unreachable

bb.bg:                                            ; preds = %.body185
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.thread268 unwind label %bb.bf, !noalias !72452, !inline_history !72337

bb.bh:                                            ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B28_EE9from_iterINtNtNtB3e_8adapters3map3MapINtNtB4k_9enumerate9EnumerateINtNtBQ_9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB6l_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24create_named_struct_expr0EE0B7o_.exit.i
  %.sroa.0127.0.copyload = load i64, ptr %i.s, align 8, !noalias !72452 ; 2 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !noalias !72452, !nonnull !313, !noundef !313 ; 3 uses
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8, !noalias !72452 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !72452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !72452
  %i.ff = icmp ult i64 %.sroa.5129.0.copyload, 41175768021673107
  call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw [224 x i8], ptr %.sroa.4128.0.copyload, i64 %.sroa.5129.0.copyload
  %i.fh = icmp sgt i64 %.sroa.0127.0.copyload, -1
  call void @llvm.assume(i1 %i.fh)
  store i128 0, ptr %i.aa, align 16, !noalias !72451
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store i128 0, ptr %.sroa.549.0..sroa_idx.i, align 16, !noalias !72451
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store ptr %.sroa.4128.0.copyload, ptr %.sroa.751.0..sroa_idx.i, align 16, !noalias !72451
  %.sroa.751.sroa.4.0..sroa.751.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 520
  store ptr %.sroa.4128.0.copyload, ptr %.sroa.751.sroa.4.0..sroa.751.0..sroa_idx.sroa_idx.i, align 8, !noalias !72451
  %.sroa.751.sroa.5.0..sroa.751.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 528
  store i64 %.sroa.0127.0.copyload, ptr %.sroa.751.sroa.5.0..sroa.751.0..sroa_idx.sroa_idx.i, align 16, !noalias !72451
  %.sroa.751.sroa.6.0..sroa.751.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 536
  store ptr %i.fg, ptr %.sroa.751.sroa.6.0..sroa.751.0..sroa_idx.sroa_idx.i, align 8, !noalias !72451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !72489
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.fj = shl nuw nsw i64 %.sroa.5129.0.copyload, 1 ; 2 uses
  %i.fk = mul nuw nsw i64 %.sroa.5129.0.copyload, 224 ; 2 uses
  %i.fl = icmp eq i64 %.sroa.5129.0.copyload, 0
  br i1 %i.fl, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !72490
  %i.fm = call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fk, i64 noundef range(i64 1, 17) 16) #71, !noalias !72490 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.fk) #72
          to label %.noexc.i unwind label %bb.ca, !noalias !72489

.noexc.i:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.bh ], [ %i.fm, %bb.bi ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.bh ], [ %i.fj, %bb.bi ] ; 3 uses
  %i.fo = icmp samesign ule i64 %i.fj, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.fo)
  store i64 %.sroa.4.0.i.i, ptr %i.y, align 8, !noalias !72489
  %i.fp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.fp, align 8, !noalias !72489
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store i64 0, ptr %i.fq, align 8, !noalias !72489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !72489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.x, ptr noundef nonnull align 16 dereferenceable(544) %i.aa, i64 544, i1 false), !noalias !72491
  call void @llvm.experimental.noalias.scope.decl(metadata !72492)
  call void @llvm.experimental.noalias.scope.decl(metadata !72493)
  call void @llvm.experimental.noalias.scope.decl(metadata !72494)
  call void @llvm.experimental.noalias.scope.decl(metadata !72495)
  %i.fr = load i128, ptr %i.x, align 16, !range !352, !alias.scope !72496, !noalias !72489, !noundef !313
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.fs, align 16, !alias.scope !72496, !noalias !72489
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !72496, !noalias !72489
  %i.fu = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.fv = load i128, ptr %i.fu, align 16, !range !352, !alias.scope !72496, !noalias !72489, !noundef !313
  %i.fw = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %.val.i58.i.i.i.i.i = load i64, ptr %i.fw, align 16, !alias.scope !72496, !noalias !72489
  %i.fx = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  %.val4.i59.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !72496, !noalias !72489
  %i.fy = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  %i.fz = load ptr, ptr %i.fy, align 16, !alias.scope !72496, !noalias !72489, !noundef !313 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fz, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 520
  %.val.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !72496, !noalias !72489, !nonnull !313, !noundef !313
  %i.gb = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  %.val56.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !72496, !noalias !72489, !nonnull !313, !noundef !313
  %i.gc = ptrtoint ptr %.val56.i.i.i.i.i to i64
  %i.gd = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ge = sub nuw i64 %i.gc, %i.gd
  %i.gf = udiv exact i64 %i.ge, 224
  %i.gg = shl nuw nsw i64 %i.gf, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.871.0.i.i.i.i.i = phi i64 [ %i.gg, %bb.bl ], [ 0, %bb.bk ]
  %i.gh = trunc nuw i128 %i.fv to i1              ; 2 uses
  %i.gi = sub nuw i64 %.val4.i59.i.i.i.i.i, %.val.i58.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = select i1 %i.gh, i64 %i.gi, i64 0
  %i.gj = trunc nuw i128 %i.fr to i1              ; 2 uses
  %i.gk = sub nuw i64 %.val4.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = select i1 %i.gj, i64 %i.gk, i64 0 ; 2 uses
  %i.gl = add i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 3 uses
  %.not74.i.i.i.i.i = icmp uge i64 %i.gl, %.sroa.7.0.i.i.i.i.i
  %i.gm = add i64 %.sroa.871.0.i.i.i.i.i, %i.gl   ; 3 uses
  %i.gn = icmp uge i64 %i.gm, %i.gl
  %or.cond.not.i.i.i.i.i = select i1 %.not74.i.i.i.i.i, i1 %i.gn, i1 false, !prof !72497
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bn, label %bb.bp, !prof !319

bb.bn:                                            ; preds = %bb.bm
  %i.go = icmp ugt i64 %i.gm, %.sroa.4.0.i.i
  br i1 %i.go, label %bb.bo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, !prof !314

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %i.gm, i64 noundef 16, i64 noundef 112)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i unwind label %bb.bx, !noalias !72498

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i: ; preds = %bb.bo
  %.pre.i.i.i = load i64, ptr %i.fq, align 8, !alias.scope !72499, !noalias !72489
  %.pre.i = load ptr, ptr %i.fp, align 8, !alias.scope !72499, !noalias !72489
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.bp:                                            ; preds = %bb.bm
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @198, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #72
          to label %bb.bw unwind label %bb.bx, !noalias !72500

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i, %bb.bn
  %i.gp = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i ], [ %.sroa.10.0.i.i, %bb.bn ] ; 3 uses
  %i.gq = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i ], [ 0, %bb.bn ] ; 4 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 520
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !72501, !noalias !72489 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 528
  %.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !72501, !noalias !72489 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  %.sroa.10.0.copyload.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !72501, !noalias !72489 ; 3 uses
  br i1 %i.gj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !72502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.w, ptr noundef nonnull align 16 dereferenceable(240) %i.fi, i64 240, i1 false), !noalias !72491
  call void @llvm.experimental.noalias.scope.decl(metadata !72503)
  %i.gr = load i64, ptr %i.w, align 16, !alias.scope !72504, !noalias !72502, !noundef !313 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !72504, !noalias !72502, !noundef !313 ; 4 uses
  %i.gu = icmp ule i64 %i.gr, %i.gt
  call void @llvm.assume(i1 %i.gu)
  %.not2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, %i.gt
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bq
  %i.gv = mul i64 %i.gq, 112
  %scevgep.i.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.gp, i64 %i.gv
  %i.gw = mul i64 %i.gr, 112
  %i.gx = getelementptr i8, ptr %i.w, i64 %i.gw
  %scevgep21.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gx, i64 16
  %i.gy = sub nuw i64 %i.gt, %i.gr
  %i.gz = mul i64 %i.gy, 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.i.i.i.i.i.i.i, ptr align 16 %scevgep21.i.i.i.i.i.i.i, i64 %i.gz, i1 false), !noalias !72505
  %i.ha = sub i64 %i.gq, %i.gr
  %i.hb = add i64 %i.ha, %i.gt
  br label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %.sroa.4.4.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i ], [ %i.gq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i, label %bb.bs

_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.bq
  %.sroa.4.4.i.i.i.i.i.i = phi i64 [ %i.gq, %bb.bq ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !72502
  br label %bb.br

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i.i.i) ]
  %.not.not7.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.8.0.copyload.i.i.i, %.sroa.10.0.copyload.i.i.i
  br i1 %.not.not7.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bs
  %.sroa.4.128..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  br label %bb.bu

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.bu, %bb.bs
  %.sroa.4.1.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %bb.bs ], [ %i.hj, %bb.bu ] ; 2 uses
  %i.hc = icmp eq i64 %.sroa.9.0.copyload.i.i.i, 0
  br i1 %i.hc, label %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.hd = mul nuw i64 %.sroa.9.0.copyload.i.i.i, 224
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !72506
  br label %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i.i.i.i.i.i.i
  %i.he = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.hj, %bb.bu ] ; 2 uses
  %i.hf = phi ptr [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.hg, %bb.bu ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.u, ptr noundef nonnull align 16 dereferenceable(224) %i.hf, i64 224, i1 false), !noalias !72506
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 224 ; 2 uses
  %i.hh = getelementptr inbounds nuw [112 x i8], ptr %i.gp, i64 %i.he ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hh, ptr noundef nonnull align 16 dereferenceable(112) %i.hf, i64 112, i1 false), !noalias !72506
  %i.hi = getelementptr i8, ptr %i.hh, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hi, ptr noundef nonnull readonly align 16 dereferenceable(112) %.sroa.4.128..sroa_idx.i.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !72507
  %i.hj = add i64 %i.he, 2                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %.sroa.10.0.copyload.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.bu

_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i: ; preds = %bb.bt, %._crit_edge.i.i.i.i.i.i.i.i, %bb.br
  %.sroa.4.2.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %bb.br ], [ %.sroa.4.1.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i.i, %bb.bt ] ; 4 uses
  br i1 %i.gh, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !72502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.v, ptr noundef nonnull align 16 dereferenceable(240) %i.fw, i64 240, i1 false), !noalias !72508
  call void @llvm.experimental.noalias.scope.decl(metadata !72509)
  %i.hk = load i64, ptr %i.v, align 16, !alias.scope !72510, !noalias !72502, !noundef !313 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !72510, !noalias !72502, !noundef !313 ; 4 uses
  %i.hn = icmp ule i64 %i.hk, %i.hm
  call void @llvm.assume(i1 %i.hn)
  %.not2.i.i.i11.i.i.i.i.i.i.i = icmp eq i64 %i.hk, %i.hm
  br i1 %.not2.i.i.i11.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit16.i.i.i.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i.i.i.i:                     ; preds = %bb.bv
  %i.ho = mul i64 %.sroa.4.2.i.i.i.i.i.i, 112
  %scevgep22.i.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.gp, i64 %i.ho
  %i.hp = mul i64 %i.hk, 112
  %i.hq = getelementptr i8, ptr %i.v, i64 %i.hp
  %scevgep23.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hq, i64 16
  %i.hr = sub nuw i64 %i.hm, %i.hk
  %i.hs = mul i64 %i.hr, 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep22.i.i.i.i.i.i.i, ptr align 16 %scevgep23.i.i.i.i.i.i.i, i64 %i.hs, i1 false), !noalias !72511
  %i.ht = sub i64 %.sroa.4.2.i.i.i.i.i.i, %i.hk
  %i.hu = add i64 %i.ht, %i.hm
  br label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit16.i.i.i.i.i.i.i

_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit16.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i.i, %bb.bv
  %.sroa.4.3.i.i.i.i.i.i = phi i64 [ %.sroa.4.2.i.i.i.i.i.i, %bb.bv ], [ %i.hu, %.lr.ph.i.i.i12.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !72502
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bp
  unreachable

bb.bx:                                            ; preds = %bb.bp, %bb.bo
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(544) %i.x) #73
          to label %.body.i145 unwind label %bb.by, !noalias !72508

bb.by:                                            ; preds = %bb.bx
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !72508
  unreachable

.body.i145:                                       ; preds = %bb.bx
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #73
          to label %.thread268 unwind label %bb.bz, !noalias !72489

bb.bz:                                            ; preds = %bb.ca, %.body.i145
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !72491
  unreachable

bb.ca:                                            ; preds = %bb.bj
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(544) %i.aa) #73
          to label %.thread268 unwind label %bb.bz, !noalias !72491

bb.cb:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !72423
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.sink = phi i64 [ %i.ez, %bb.cd ], [ %i.cn, %bb.cb ]
  %.sroa.4123.0.copyload.sink = phi i64 [ %.sroa.4123.0.copyload, %bb.cd ], [ %.sroa.488.sroa.0.0.copyload, %bb.cb ]
  %.sroa.5124.0.copyload.sink = phi ptr [ %.sroa.5124.0.copyload, %bb.cd ], [ %.sroa.488.sroa.4.0.copyload, %bb.cb ]
  %i.hz = phi <2 x i64> [ %i.fd, %bb.cd ], [ %i.cq, %bb.cb ]
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.ia, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4123.0.copyload.sink, ptr %.sroa.460.0..sroa_idx, align 16
  %.sroa.460.sroa.4.0..sroa.460.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5124.0.copyload.sink, ptr %.sroa.460.sroa.4.0..sroa.460.0..sroa_idx.sroa_idx, align 8
  %.sroa.460.sroa.5.0..sroa.460.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.hz, ptr %.sroa.460.sroa.5.0..sroa.460.0..sroa_idx.sroa_idx, align 16
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cm

bb.cd:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !72452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !72452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !72451
  br label %bb.cc

bb.ce:                                            ; preds = %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit16.i.i.i.i.i.i.i
  %.sroa.4.5.i.i.i.i.i.i = phi i64 [ %.sroa.4.3.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Csc85D0lJ81Z_16lance_datafusion.exit16.i.i.i.i.i.i.i ], [ %.sroa.4.2.i.i.i.i.i.i, %_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs1Jc0oVeks7E_15datafusion_expr4expr4Exprj2_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !72489
  %.sroa.054.0.copyload = load i64, ptr %i.y, align 8, !noalias !72512
  %.sroa.555.0.copyload = load ptr, ptr %i.fp, align 8, !noalias !72512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !72489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !72451
  br label %bb.cf

bb.cf:                                            ; preds = %.thread374, %bb.ce
  %.not.not.not.i.not.not.not716 = phi i1 [ false, %.thread374 ], [ true, %bb.ce ]
  %.sroa.071.0.sink = phi i64 [ %.sroa.071.0, %.thread374 ], [ %.sroa.054.0.copyload, %bb.ce ]
  %.sroa.773.0.sink = phi ptr [ %.sroa.773.0, %.thread374 ], [ %.sroa.555.0.copyload, %bb.ce ]
  %.sroa.976.0.sink = phi i64 [ %.sroa.976.0, %.thread374 ], [ %.sroa.4.5.i.i.i.i.i.i, %bb.ce ]
  store i64 %.sroa.071.0.sink, ptr %i.aj, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.773.0.sink, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
end_hunk_1
