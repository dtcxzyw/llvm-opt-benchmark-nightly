Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvXs6D_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableFunctionArgsNtNtB9_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !41590, !noundef !321 ; 2 uses
  %.idx15 = mul nuw nsw i64 %i.m, 392
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx15
  %.not610 = icmp eq i64 %i.m, 0
  br i1 %.not610, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query7SettingEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB30_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB45_.exit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.c, %.lr.ph12
  %.sroa.05.0.i511 = phi ptr [ %i.p, %.lr.ph12 ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(392) %.sroa.05.0.i511, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41590, !inline_history !82 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i511, i64 392 ; 2 uses
  %.not6 = icmp eq ptr %i.p, %i.n
  %or.cond = select i1 %i.o, i1 true, i1 %.not6
  br i1 %or.cond, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query7SettingEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB30_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB45_.exit, label %.lr.ph12

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5query7SettingEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB30_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB45_.exit: ; preds = %.lr.ph, %.lr.ph12, %bb.c, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_11FunctionArgENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2k_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3p_.exit
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_11FunctionArgENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2k_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3p_.exit ], [ %i.o, %.lr.ph12 ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs6Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_26IdentityPropertyFormatKindNtNtB9_7visitor8VisitMut5visitINtB1g_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB29_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3e_(ptr noalias noundef nonnull align 8 dereferenceable(664) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !41592 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !332, !noundef !321
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(656) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit

_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !41591
  br i1 %i.f, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit6

_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit6: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !41591
  br i1 %i.h, label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit, %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit6
  br label %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread

_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit.thread: ; preds = %bb.c, %bb.b, %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit, %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit6, %bb.d
  %.sroa.0.0 = phi i1 [ true, %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit6 ], [ false, %bb.d ], [ true, %_RINvXs78_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_18IdentityParametersNtNtB9_7visitor8VisitMut5visitINtB18_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB21_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB36_.exit ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs6r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_23ExprWithAliasAndOrderByNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 !guid !41629 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !41593
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = load i64, ptr %i.i, align 8, !range !340, !alias.scope !41630, !noundef !321
  %i.k = icmp ne i64 %i.j, -1                     ; 2 uses
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41631
  store i64 %i.l, ptr %i.a, align 8, !noalias !41631
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41631
  br i1 %i.k, label %bb.b, label %_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41632)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !41632, !nonnull !321, !noundef !321
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !41632, !noundef !321
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p), !noalias !41632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41633
  store i8 -1, ptr %i.d, align 1, !noalias !41633
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !41634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41633
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = load i32, ptr %i.q, align 8, !range !547, !alias.scope !41632, !noundef !321 ; 2 uses
  %i.s = icmp ne i32 %i.r, -1                     ; 2 uses
  %i.t = zext i1 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41635
  store i64 %i.t, ptr %i.c, align 8, !noalias !41635
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !41632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41635
  br i1 %i.s, label %bb.c, label %_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41636
  store i32 %i.r, ptr %i.b, align 4, !noalias !41636
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4), !noalias !41632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41636
  br label %_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val = load i8, ptr %i.u, align 8, !range !397, !noundef !321 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 393
  %.val1 = load i8, ptr %i.v, align 1             ; 2 uses
  %i.w = icmp ne i8 %.val, 2                      ; 2 uses
  %i.x = zext i1 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41637
  store i64 %i.x, ptr %i.h, align 8, !noalias !41637
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41637
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41638
  store i8 %.val, ptr %i.g, align 1, !noalias !41638
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41638
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvXs6h_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %i.y = icmp ne i8 %.val1, 2                     ; 2 uses
  %i.z = zext i1 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41639
  store i64 %i.z, ptr %i.f, align 8, !noalias !41639
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41639
  br i1 %i.y, label %bb.f, label %_RINvXscG_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41640
  store i8 %.val1, ptr %i.e, align 1, !noalias !41640
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41640
  br label %_RINvXscG_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXscG_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs6x_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CastFormatNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #15 !guid !41645 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !382, !noundef !321
  %i.c = icmp ne i64 %i.b, -1                     ; 2 uses
  %i.d = zext i1 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41646
  store i64 %i.d, ptr %i.a, align 8, !noalias !41646
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41646
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink1 = phi i64 [ 80, %bb.b ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs7H_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_15TableSampleKindNtNtB9_7visitor8VisitMut5visitINtB17_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB20_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB35_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !41670 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !332, !noundef !321
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41671)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !41671, !nonnull !321, !noundef !321 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !range !353, !alias.scope !41672, !noalias !41671, !noundef !321
  %.not.i.i = icmp eq i64 %i.e, -4
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(1248) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41671, !inline_history !41653
  br i1 %i.f, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %.val13.i = load i64, ptr %i.g, align 8, !range !382, !alias.scope !41673, !noalias !41671, !noundef !321 ; 2 uses
  %.not.i15.i = icmp eq i64 %.val13.i, -1
  br i1 %.not.i15.i, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i64 %.val13.i, -9223372036854775806
  tail call void @llvm.assume(i1 %i.h), !noalias !41671
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 664 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !351, !alias.scope !41674, !noalias !41671, !noundef !321
  %switch = icmp slt i64 %i.j, -3
  br i1 %switch, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i
  %i.k = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41671, !inline_history !41656
  br i1 %i.k, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i.thread: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !353, !alias.scope !41675, !noalias !41671, !noundef !321
  %.not.i18.i = icmp eq i64 %i.m, -4
  br i1 %.not.i18.i, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit

_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i.thread
  %i.n = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41671, !inline_history !41659
  br i1 %i.n, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41676)
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !41676, !nonnull !321, !noundef !321 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !range !353, !alias.scope !41677, !noalias !41676, !noundef !321
  %.not.i.i6 = icmp eq i64 %i.p, -4
  br i1 %.not.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(1248) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41676, !inline_history !41653
  br i1 %i.q, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1152
  %.val13.i9 = load i64, ptr %i.r, align 8, !range !382, !alias.scope !41678, !noalias !41676, !noundef !321 ; 2 uses
  %.not.i15.i11 = icmp eq i64 %.val13.i9, -1
  br i1 %.not.i15.i11, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp ne i64 %.val13.i9, -9223372036854775806
  tail call void @llvm.assume(i1 %i.s), !noalias !41676
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i12

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i12: ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 664 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !351, !alias.scope !41679, !noalias !41676, !noundef !321
  %switch51 = icmp slt i64 %i.u, -3
  br i1 %switch51, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i12
  %i.v = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41676, !inline_history !41656
  br i1 %i.v, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14.thread: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit.i12, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 336 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !353, !alias.scope !41680, !noalias !41676, !noundef !321
  %.not.i18.i16 = icmp eq i64 %i.x, -4
  br i1 %.not.i18.i16, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit20

_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit20: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14.thread
  %i.y = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !41676, !inline_history !41659
  br i1 %i.y, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread, label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39

_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i.thread, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit20
  br label %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread

_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread: ; preds = %bb.g, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14, %bb.c, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit20, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39
  %.sroa.0.0 = phi i1 [ true, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit20 ], [ false, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.thread39 ], [ true, %_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit ], [ true, %bb.c ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.i14 ], [ true, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs7P_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1248) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 !guid !41742 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %.val = load i8, ptr %i.m, align 8, !range !333, !noundef !321
  %i.n = zext nneg i8 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !41743
  store i64 %i.n, ptr %i.l, align 8, !noalias !41743
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !41743
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1241
  %i.p = load i8, ptr %i.o, align 1, !range !553, !noundef !321 ; 2 uses
  %i.q = icmp ne i8 %i.p, -1                      ; 2 uses
  %i.r = zext i1 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41744
  store i64 %i.r, ptr %i.k, align 8, !noalias !41744
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41744
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = zext nneg i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41745
  store i64 %i.s, ptr %i.j, align 8, !noalias !41745
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41745
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i64, ptr %0, align 8, !range !353, !noundef !321
  %i.u = icmp ne i64 %i.t, -4                     ; 2 uses
  %i.v = zext i1 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41746
  store i64 %i.v, ptr %i.i, align 8, !noalias !41746
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41746
  br i1 %i.u, label %bb.d, label %_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41747)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.x = load i8, ptr %i.w, align 8, !range !333, !alias.scope !41747, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41748
  store i8 %i.x, ptr %i.b, align 1, !noalias !41748
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !41747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41748
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !41705
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.z = load i8, ptr %i.y, align 1, !range !397, !alias.scope !41747, !noundef !321 ; 2 uses
  %i.aa = icmp ne i8 %i.z, 2                      ; 2 uses
  %i.ab = zext i1 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41749
  store i64 %i.ab, ptr %i.c, align 8, !noalias !41749
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41749
  br i1 %i.aa, label %bb.e, label %_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = zext nneg i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41750
  store i64 %i.ac, ptr %i.d, align 8, !noalias !41750
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41750
  br label %_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !382, !noundef !321
  %i.af = icmp ne i64 %i.ae, -1                   ; 2 uses
  %i.ag = zext i1 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41751
  store i64 %i.ag, ptr %i.h, align 8, !noalias !41751
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41751
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41752)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ai = load i8, ptr %i.ah, align 8, !range !333, !alias.scope !41752, !noundef !321
  %i.aj = zext nneg i8 %i.ai to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41753
  store i64 %i.aj, ptr %i.g, align 8, !noalias !41753
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !41752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41753
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvXs8b_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !351, !noundef !321 ; 2 uses
  %i.am = icmp ne i64 %i.al, -5                   ; 2 uses
  %i.an = zext i1 %i.am to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41754
  store i64 %i.an, ptr %i.f, align 8, !noalias !41754
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41754
  br i1 %i.am, label %bb.h, label %_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 992
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1072
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.aq = icmp ne i64 %i.al, -4                   ; 2 uses
  %i.ar = zext i1 %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41755
  store i64 %i.ar, ptr %i.a, align 8, !noalias !41755
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !41756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41755
  br i1 %i.aq, label %bb.i, label %_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !41737
  br label %_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.i, %bb.h, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !353, !noundef !321
  %i.au = icmp ne i64 %i.at, -4                   ; 2 uses
  %i.av = zext i1 %i.au to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41757
  store i64 %i.av, ptr %i.e, align 8, !noalias !41757
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41757
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvXs95_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_17TableSampleBucketNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 !guid !42255 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion:bb.a

bb.cp:                                            ; preds = %bb.co
  tail call fastcc void @_RINvXs4V_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10ObjectNameNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vg, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vk = getelementptr inbounds nuw i8, ptr %.tr, i64 121
  %i.vl = load i8, ptr %i.vk, align 1, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !42399
  store i8 %i.vl, ptr %i.bk, align 1, !noalias !42399
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !42399
  %i.vm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !nonnull !321, !noundef !321 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.vp = load i64, ptr %i.vo, align 8, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !42400
  store i64 %i.vp, ptr %i.bj, align 8, !noalias !42400
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !42400
  %.idx125 = mul nuw nsw i64 %i.vp, 328
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 %.idx125
  %i.vr = icmp eq i64 %i.vp, 0
  br i1 %i.vr, label %common.ret, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.cq, %.lr.ph107
  %.sroa.0.0.i19106 = phi ptr [ %i.vs, %.lr.ph107 ], [ %i.vn, %bb.cq ] ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i19106, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i19106, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !107
  %i.vt = icmp eq ptr %i.vs, %i.vq
  br i1 %i.vt, label %common.ret, label %.lr.ph107

bb.cr:                                            ; preds = %bb.aj
  tail call fastcc void @_RINvXs6x_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CastFormatNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.kl, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %common.ret

bb.cs:                                            ; preds = %bb.at
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ln, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.at
  %i.vu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !align !330, !noundef !321 ; 2 uses
  %i.vw = icmp ne ptr %i.vv, null                 ; 2 uses
  %i.vx = zext i1 %i.vw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !42401
  store i64 %i.vx, ptr %i.bi, align 8, !noalias !42401
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !42401
  br i1 %i.vw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.vv, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.vy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.vz = load i8, ptr %i.vy, align 8, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !42402
  store i8 %i.vz, ptr %i.bh, align 1, !noalias !42402
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !42402
  %i.wa = getelementptr inbounds nuw i8, ptr %.tr, i64 33
  %i.wb = load i8, ptr %i.wa, align 1, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !42403
  store i8 %i.wb, ptr %i.bg, align 1, !noalias !42403
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !42403
  br label %common.ret

bb.cw:                                            ; preds = %bb.au
  %i.wc = zext nneg i8 %i.lr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !42404
  store i64 %i.wc, ptr %i.bf, align 8, !noalias !42404
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !42404
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.au
  %i.wd = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.we = load ptr, ptr %i.wd, align 8, !align !330, !noundef !321 ; 2 uses
  %i.wf = icmp ne ptr %i.we, null                 ; 2 uses
  %i.wg = zext i1 %i.wf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !42405
  store i64 %i.wg, ptr %i.be, align 8, !noalias !42405
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !42405
  br i1 %i.wf, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.we, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.wh = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.wi = load ptr, ptr %i.wh, align 8, !nonnull !321, !noundef !321
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wi, ptr noalias noundef align 8 dereferenceable(72) %1)
  %i.wj = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !range !340, !noundef !321
  %i.wl = icmp ne i64 %i.wk, -1                   ; 2 uses
  %i.wm = zext i1 %i.wl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !42406
  store i64 %i.wm, ptr %i.bd, align 8, !noalias !42406
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !42406
  br i1 %i.wl, label %bb.da, label %common.ret

bb.da:                                            ; preds = %bb.cz
  %i.wn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !nonnull !321, !noundef !321 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.wq = load i64, ptr %i.wp, align 8, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !42407
  store i64 %i.wq, ptr %i.bc, align 8, !noalias !42407
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !42407
  %.idx124 = mul nuw nsw i64 %i.wq, 328
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.idx124
  %i.ws = icmp eq i64 %i.wq, 0
  br i1 %i.ws, label %common.ret, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.da, %.lr.ph105
  %.sroa.0.0.i21104 = phi ptr [ %i.wt, %.lr.ph105 ], [ %i.wo, %bb.da ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i21104, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i21104, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !107
  %i.wu = icmp eq ptr %i.wt, %i.wr
  br i1 %i.wu, label %common.ret, label %.lr.ph105

bb.db:                                            ; preds = %bb.bc
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.mv, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.bc
  %i.wv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !nonnull !321, !noundef !321 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.wy = load i64, ptr %i.wx, align 8, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !42408
  store i64 %i.wy, ptr %i.bb, align 8, !noalias !42408
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !42408
  %.idx123 = mul nuw nsw i64 %i.wy, 656
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx123
  %i.xa = icmp eq i64 %i.wy, 0
  br i1 %i.xa, label %_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dc, %.lr.ph
  %.sroa.0.0.i2379 = phi ptr [ %i.xb, %.lr.ph ], [ %i.ww, %bb.dc ] ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2379, i64 656 ; 2 uses
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %.sroa.0.0.i2379, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !42244
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2379, i64 328
  tail call fastcc void @_RINvXs7R_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !42244
  %i.xd = icmp eq ptr %i.xb, %i.wz
  br i1 %i.xd, label %_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph, %bb.dc
  %i.xe = getelementptr inbounds nuw i8, ptr %.tr, i64 216
  %i.xf = load ptr, ptr %i.xe, align 8, !align !330, !noundef !321 ; 2 uses
  %i.xg = icmp ne ptr %i.xf, null                 ; 2 uses
  %i.xh = zext i1 %i.xg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !42409
  store i64 %i.xh, ptr %i.ba, align 8, !noalias !42409
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !42409
  br i1 %i.xg, label %tailrecurse.backedge, label %common.ret

bb.dd:                                            ; preds = %_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %i.xi = zext nneg i8 %i.th to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !42410
  store i64 %i.xi, ptr %i.az, align 8, !noalias !42410
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !42410
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs7R_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11TableSampleNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_(ptr noalias noundef nonnull align 8 dereferenceable(1248) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !42419 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !353, !alias.scope !42420, !noundef !321
  %.not.i = icmp eq i64 %i.a, -4
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(336) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !42413
  br i1 %i.b, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query19TableSampleQuantityENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3K_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %.val13 = load i64, ptr %i.c, align 8, !range !382, !noundef !321 ; 2 uses
  %.not.i15 = icmp eq i64 %.val13, -1
  br i1 %.not.i15, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ne i64 %.val13, -9223372036854775806
  tail call void @llvm.assume(i1 %i.d)
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit: ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !351, !alias.scope !42421, !noundef !321
  %switch = icmp slt i64 %i.f, -3
  br i1 %switch, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit
  %i.g = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !42416
  br i1 %i.g, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query19TableSampleQuantityENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3K_.exit, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query15TableSampleSeedENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3G_.exit, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !353, !alias.scope !42422, !noundef !321
  %.not.i18 = icmp eq i64 %i.i, -4
  br i1 %.not.i18, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query19TableSampleQuantityENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3K_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread
  %i.j = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !94
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query19TableSampleQuantityENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3K_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query19TableSampleQuantityENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3K_.exit: ; preds = %bb.e, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread, %bb.b, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit ], [ true, %bb.b ], [ false, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5query17TableSampleBucketENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2D_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3I_.exit.thread ], [ %i.j, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !42688 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [152 x i8], align 8               ; 7 uses
  %.sroa.014.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.5.sroa.0.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.6.i.i = alloca [80 x i8], align 8        ; 4 uses
  %.sroa.510.sroa.0.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.612.i.i = alloca [80 x i8], align 8      ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = load i64, ptr %0, align 8, !range !451, !noundef !321 ; 3 uses
  %i.m = icmp ne i64 %i.l, 45
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %i.l, -3
  %i.o = icmp sgt i64 %i.l, 2
  %i.p = select i1 %i.o, i64 %i.n, i64 42
  switch i64 %i.p, label %bb.b [
    i64 0, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit
    i64 1, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
    i64 14, label %bb.o
    i64 15, label %bb.p
    i64 16, label %bb.q
    i64 17, label %bb.r
    i64 18, label %bb.s
    i64 19, label %bb.t
    i64 20, label %bb.u
    i64 21, label %bb.v
    i64 22, label %bb.w
    i64 23, label %bb.x
    i64 24, label %bb.y
    i64 25, label %bb.z
    i64 26, label %bb.aa
    i64 27, label %bb.ab
    i64 28, label %bb.ac
    i64 29, label %bb.ad
    i64 30, label %bb.ae
    i64 31, label %bb.af
    i64 32, label %bb.ag
    i64 33, label %bb.ah
    i64 34, label %bb.ai
    i64 35, label %bb.aj
    i64 36, label %bb.ak
    i64 37, label %bb.al
    i64 38, label %bb.am
    i64 39, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit
    i64 40, label %bb.an
    i64 41, label %bb.ao
    i64 42, label %bb.ap
    i64 43, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
    i64 44, label %bb.aq
    i64 45, label %bb.ar
    i64 46, label %bb.as
    i64 47, label %bb.au
    i64 48, label %bb.aw
    i64 49, label %bb.ay
    i64 50, label %bb.ba
    i64 51, label %bb.bc
    i64 52, label %bb.bd
    i64 53, label %bb.bf
    i64 54, label %bb.bg
    i64 55, label %bb.bi
    i64 56, label %bb.bj
    i64 57, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit
    i64 58, label %bb.bm
    i64 59, label %bb.bn
    i64 60, label %bb.bo
    i64 61, label %bb.bp
    i64 62, label %bb.bq
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42689)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !42689, !nonnull !321, !noundef !321
  %i.s = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42689, !inline_history !136
  br i1 %i.s, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %bb.cr

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42690)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !42690, !nonnull !321, !noundef !321
  %i.v = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42690, !inline_history !136
  br i1 %i.v, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %bb.cv

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42691)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !42691, !nonnull !321, !noundef !321
  %i.y = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42691, !inline_history !136
  br i1 %i.y, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42692)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !42692, !nonnull !321, !noundef !321
  %i.ab = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42692, !inline_history !136
  br i1 %i.ab, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42693)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !42693, !nonnull !321, !noundef !321
  %i.ae = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42693, !inline_history !136
  br i1 %i.ae, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.h:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42694)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !42694, !nonnull !321, !noundef !321
  %i.ah = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42694, !inline_history !136
  br i1 %i.ah, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42695)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !42695, !nonnull !321, !noundef !321
  %i.ak = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42695, !inline_history !136
  br i1 %i.ak, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.j:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42696)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !42696, !nonnull !321, !noundef !321
  %i.an = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42696, !inline_history !136
  br i1 %i.an, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.k:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42697)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !42697, !nonnull !321, !noundef !321
  %i.aq = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42697, !inline_history !136
  br i1 %i.aq, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42698)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !42698, !nonnull !321, !noundef !321
  %i.at = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42698, !inline_history !136
  br i1 %i.at, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2c_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3h_.exit

bb.m:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42699)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !42699, !nonnull !321, !noundef !321
  %i.aw = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42699, !inline_history !136
  br i1 %i.aw, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %bb.cw

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42700)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !42700, !nonnull !321, !noundef !321
  %i.az = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !42700, !inline_history !136
  br i1 %i.az, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3U_.exit, label %bb.cx

bb.o:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvXsaR_NtCs40MM8ukkVQd_9sqlparser3astNtB7_13CaseStatementNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51221)
  %i.ae = load i64, ptr %i.ad, align 8, !range !340, !alias.scope !51221, !noundef !321
  %i.af = icmp ne i64 %i.ae, -1                   ; 2 uses
  %i.ag = zext i1 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51222
  store i64 %i.ag, ptr %i.e, align 8, !noalias !51222
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8), !noalias !51221, !inline_history !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51222
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvXsbl_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51223)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !51224, !nonnull !321, !noundef !321 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !51224, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51225
  store i64 %i.ak, ptr %i.a, align 8, !noalias !51225
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !51224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51225
  %.idx9 = mul nuw nsw i64 %i.ak, 3400
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx9
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_RINvXsbv_NtCs40MM8ukkVQd_9sqlparser3astNtB7_21ConditionalStatementsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %.lr.ph7
  %.sroa.0.0.i16 = phi ptr [ %i.an, %.lr.ph7 ], [ %i.ai, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 3400 ; 2 uses
  tail call fastcc void @_RINvXsdC_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %.sroa.0.0.i16, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !51224, !inline_history !176
  %i.ao = icmp eq ptr %i.an, %i.al
  br i1 %i.ao, label %_RINvXsbv_NtCs40MM8ukkVQd_9sqlparser3astNtB7_21ConditionalStatementsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph7

bb.g:                                             ; preds = %_RINvXsbl_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !51221, !nonnull !321, !noundef !321 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !51221, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51226
  store i64 %i.as, ptr %i.d, align 8, !noalias !51226
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8), !noalias !51221, !inline_history !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51226
  %.idx8 = mul nuw nsw i64 %i.as, 3400
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx8
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %_RINvXsbv_NtCs40MM8ukkVQd_9sqlparser3astNtB7_21ConditionalStatementsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.g, %.lr.ph5
  %.sroa.0.0.i.i4 = phi ptr [ %i.av, %.lr.ph5 ], [ %i.aq, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4, i64 3400 ; 2 uses
  tail call fastcc void @_RINvXsdC_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %.sroa.0.0.i.i4, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !51221, !inline_history !177
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_RINvXsbv_NtCs40MM8ukkVQd_9sqlparser3astNtB7_21ConditionalStatementsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph5

_RINvXsbv_NtCs40MM8ukkVQd_9sqlparser3astNtB7_21ConditionalStatementsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph5, %.lr.ph7, %bb.g, %bb.f, %_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast25ConditionalStatementBlockNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXsaT_NtCs40MM8ukkVQd_9sqlparser3astNtB7_13CaseStatementNtNtB7_7visitor8VisitMut5visitINtBX_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1P_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2U_(ptr noalias noundef nonnull align 8 dereferenceable(1232) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !51255 {
_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit:
  %i.a = load i64, ptr %0, align 8, !range !353, !alias.scope !51256, !noundef !321
  %.not.i = icmp eq i64 %i.a, -4
  br i1 %.not.i, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit: ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %i.b = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !94
  br i1 %i.b, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread: ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51257)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !51257, !nonnull !321, !noundef !321 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !51257, !noundef !321 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 704
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not67 = icmp eq i64 %i.f, 0
  br i1 %.not67, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit
  %.sroa.05.0.i68 = phi ptr [ %i.z, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit ], [ %i.d, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread ] ; 8 uses
  %i.h = load i64, ptr %.sroa.05.0.i68, align 8, !range !353, !alias.scope !51258, !noalias !51257, !noundef !321
  %.not.i.i = icmp eq i64 %i.h, -4
  br i1 %.not.i.i, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i: ; preds = %.lr.ph69
  %i.i = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(704) %.sroa.05.0.i68, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !51257, !inline_history !178
  br i1 %i.i, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread: ; preds = %.lr.ph69, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 328
  %i.k = load i64, ptr %i.j, align 8, !range !340, !alias.scope !51259, !noalias !51257, !noundef !321
  %.not.i12.i = icmp eq i64 %i.k, -1
  br i1 %.not.i12.i, label %bb.b, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i35

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i35: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51261), !noalias !51257
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 336
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !51262, !noalias !51257, !nonnull !321, !noundef !321 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 344
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !51262, !noalias !51257, !noundef !321 ; 2 uses
  %.idx76 = mul nuw nsw i64 %i.o, 3400
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx76
  %.not5462 = icmp eq i64 %i.o, 0
  br i1 %.not5462, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i63, i64 3400 ; 2 uses
  %.not54 = icmp eq ptr %i.q, %i.p
  br i1 %.not54, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i35, %bb.a
  %.sroa.05.0.i.i63 = phi ptr [ %i.q, %bb.a ], [ %i.m, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i35 ] ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i.i63, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !51263, !inline_history !179
  br i1 %i.r, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %bb.a

bb.b:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51264)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !51264, !noalias !51257, !nonnull !321, !noundef !321 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 352
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !51264, !noalias !51257, !noundef !321 ; 2 uses
  %.idx77 = mul nuw nsw i64 %i.v, 3400
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx77
  %.not5564 = icmp eq i64 %i.v, 0
  br i1 %.not5564, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph66

bb.c:                                             ; preds = %.lr.ph66
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i3365, i64 3400 ; 2 uses
  %.not55 = icmp eq ptr %i.x, %i.w
  br i1 %.not55, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.b, %bb.c
  %.sroa.05.0.i3365 = phi ptr [ %i.x, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i3365, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !51265, !inline_history !180
  br i1 %i.y, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %bb.c

_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit: ; preds = %bb.a, %bb.c, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i35, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 704 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.g
  br i1 %.not, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, label %.lr.ph69

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread: ; preds = %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !351, !alias.scope !51266, !noundef !321
  switch i64 %i.ab, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22 [
    i64 -5, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16
    i64 -4, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22.thread
  ]

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread
  %i.ac = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(704) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !181
  br i1 %i.ac, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22.thread: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ae = load i64, ptr %i.ad, align 8, !range !340, !alias.scope !51267, !noundef !321
  %.not.i12.i28 = icmp eq i64 %i.ae, -1
  br i1 %.not.i12.i28, label %bb.d, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51269)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !51270, !nonnull !321, !noundef !321 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !51270, !noundef !321 ; 2 uses
  %.idx78 = mul nuw nsw i64 %i.ai, 3400
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx78
  %.not5670 = icmp eq i64 %i.ai, 0
  br i1 %.not5670, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41
  %.sroa.05.0.i.i4271 = phi ptr [ %i.al, %.lr.ph72 ], [ %i.ag, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41 ] ; 2 uses
  %i.ak = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i.i4271, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !51270, !inline_history !182 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i4271, i64 3400 ; 2 uses
  %.not56 = icmp eq ptr %i.al, %i.aj
  %or.cond = select i1 %i.ak, i1 true, i1 %.not56
  br i1 %or.cond, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %.lr.ph72

bb.d:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51271)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !51271, !nonnull !321, !noundef !321 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !51271, !noundef !321 ; 2 uses
  %.idx79 = mul nuw nsw i64 %i.ap, 3400
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx79
  %.not5773 = icmp eq i64 %i.ap, 0
  br i1 %.not5773, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75, %bb.d
  %.sroa.05.0.i3774 = phi ptr [ %i.as, %.lr.ph75 ], [ %i.an, %bb.d ] ; 2 uses
  %i.ar = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i3774, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !51271, !inline_history !183 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i3774, i64 3400 ; 2 uses
  %.not57 = icmp eq ptr %i.as, %i.aq
  %or.cond104 = select i1 %i.ar, i1 true, i1 %.not57
  br i1 %or.cond104, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16, label %.lr.ph75

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit16: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i, %.lr.ph, %.lr.ph66, %.lr.ph72, %.lr.ph75, %bb.d, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %.sroa.0.0 = phi i1 [ %i.ak, %.lr.ph72 ], [ true, %.lr.ph66 ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ], [ false, %bb.d ], [ %i.ar, %.lr.ph75 ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i22 ], [ false, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread ], [ false, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i41 ], [ true, %.lr.ph ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXsaZ_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11CreateIndexNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(568) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 !guid !51372 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.x = load i64, ptr %i.w, align 8, !range !340, !noundef !321
  %i.y = icmp ne i64 %i.x, -1                     ; 2 uses
  %i.z = zext i1 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !51373
  store i64 %i.z, ptr %i.v, align 8, !noalias !51373
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !51373
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51375)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !51376, !nonnull !321, !noundef !321
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !51376, !noundef !321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51377
  store i64 %i.ad, ptr %i.b, align 8, !noalias !51377
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !51376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51377
  tail call fastcc void @_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !51376, !inline_history !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51379)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !51380, !nonnull !321, !noundef !321
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !51380, !noundef !321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51381
  store i64 %i.ah, ptr %i.a, align 8, !noalias !51381
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !51380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51381
  tail call fastcc void @_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !51380, !inline_history !84
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aj = load i64, ptr %i.ai, align 8, !range !379, !noundef !321 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, -1                   ; 2 uses
  %i.al = zext i1 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !51382
  store i64 %i.al, ptr %i.u, align 8, !noalias !51382
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !51382
  br i1 %i.ak, label %bb.d, label %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51383)
  %i.am = xor i64 %i.aj, -9223372036854775808
  %i.an = icmp slt i64 %i.aj, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 7       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !51384
  store i64 %i.ao, ptr %i.t, align 8, !noalias !51384
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8), !noalias !51383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !51384
  %i.ap = icmp eq i64 %i.ao, 7
  br i1 %i.ap, label %bb.e, label %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51385)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !51386, !nonnull !321, !noundef !321
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !51386, !noundef !321
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at), !noalias !51386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !51387
  store i8 -1, ptr %i.s, align 1, !noalias !51387
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 1), !noalias !51388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !51387
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.av = load i32, ptr %i.au, align 8, !range !547, !alias.scope !51386, !noundef !321 ; 2 uses
  %i.aw = icmp ne i32 %i.av, -1                   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !51389
  store i64 %i.ax, ptr %i.r, align 8, !noalias !51389
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8), !noalias !51386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !51389
  br i1 %i.aw, label %bb.f, label %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !51390
  store i32 %i.av, ptr %i.q, align 4, !noalias !51390
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 4), !noalias !51386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !51390
  br label %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !321, !noundef !321 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !51391
  store i64 %i.bb, ptr %i.p, align 8, !noalias !51391
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !51391
  %.idx = mul nuw nsw i64 %i.bb, 1344
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, %.lr.ph
  %.sroa.0.0.i3 = phi ptr [ %i.be, %.lr.ph ], [ %i.az, %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 1344 ; 2 uses
  tail call fastcc void @_RINvXs1Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1344) %.sroa.0.0.i3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !92
  %i.bf = icmp eq ptr %i.be, %i.bc
  br i1 %i.bf, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph, %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bh = load i8, ptr %i.bg, align 8, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !51392
  store i8 %i.bh, ptr %i.o, align 1, !noalias !51392
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !51392
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.bj = load i8, ptr %i.bi, align 1, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !51393
  store i8 %i.bj, ptr %i.n, align 1, !noalias !51393
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !51393
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 562
  %i.bl = load i8, ptr %i.bk, align 2, !range !333, !noundef !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !51394
  store i8 %i.bl, ptr %i.m, align 1, !noalias !51394
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !51394
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !321, !noundef !321 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !321 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !51395
  store i64 %i.bp, ptr %i.l, align 8, !noalias !51395
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51396)
  %.idx.i = shl nuw nsw i64 %i.bp, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.0.03.i = phi ptr [ %i.bs, %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.bn, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51397)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !51398, !nonnull !321, !noundef !321
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !51398, !noundef !321
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw), !noalias !51398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !51399
  store i8 -1, ptr %i.k, align 1, !noalias !51399
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1), !noalias !51400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51399
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !range !547, !alias.scope !51398, !noundef !321 ; 2 uses
  %i.bz = icmp ne i32 %i.by, -1                   ; 2 uses
  %i.ca = zext i1 %i.bz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51401
  store i64 %i.ca, ptr %i.j, align 8, !noalias !51401
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8), !noalias !51398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51401
  br i1 %i.bz, label %bb.g, label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !51402
  store i32 %i.by, ptr %i.i, align 4, !noalias !51402
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 4), !noalias !51398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !51402
  br label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.g, %.lr.ph.i
end_hunk_2
begin_hunk_3_@_RINvXsb1_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11CreateIndexNtNtB9_7visitor8VisitMut5visitINtB11_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1U_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2Z_:bb.a
  %or.cond = select i1 %i.by, i1 true, i1 %.not88
  br i1 %or.cond, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_3ddl19AlterTableOperationENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit, label %.lr.ph121

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_3ddl19AlterTableOperationENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit: ; preds = %.lr.ph, %.lr.ph103, %_RINvXsc1_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11OrderByExprNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i, %.lr.ph115, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit6.i, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit9.i, %.lr.ph109, %.lr.ph118, %.lr.ph121, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %.sroa.0.0 = phi i1 [ true, %.lr.ph118 ], [ true, %_RINvXsc1_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11OrderByExprNtNtB9_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i ], [ true, %.lr.ph103 ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ], [ true, %.lr.ph109 ], [ %i.by, %.lr.ph121 ], [ false, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit9.i ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit6.i ], [ true, %.lr.ph115 ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXsb3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_11IfStatementNtNtB7_7visitor8VisitMut5visitINtBV_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2S_(ptr noalias noundef nonnull align 8 dereferenceable(1520) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53034 {
_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit:
  %i.a = load i64, ptr %0, align 8, !range !353, !alias.scope !53035, !noundef !321
  %.not.i15 = icmp eq i64 %i.a, -4
  br i1 %.not.i15, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit: ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %i.b = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(704) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !52999
  br i1 %i.b, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread: ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53036)
  %i.d = load i64, ptr %i.c, align 8, !range !340, !alias.scope !53036, !noundef !321
  %.not.i11 = icmp eq i64 %i.d, -1
  br i1 %.not.i11, label %bb.b, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit40

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit40: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53037)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !53037, !nonnull !321, !noundef !321 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !53037, !noundef !321 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 3400
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not78 = icmp eq i64 %i.h, 0
  br i1 %.not78, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i3979, i64 3400 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit40, %bb.a
  %.sroa.05.0.i3979 = phi ptr [ %i.j, %bb.a ], [ %i.f, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit40 ] ; 2 uses
  %i.k = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i3979, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53037, !inline_history !53004
  br i1 %i.k, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %bb.a

bb.b:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53038)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !53039, !nonnull !321, !noundef !321 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !53039, !noundef !321 ; 2 uses
  %.idx98 = mul nuw nsw i64 %i.o, 3400
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx98
  %.not6680 = icmp eq i64 %i.o, 0
  br i1 %.not6680, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph82

bb.c:                                             ; preds = %.lr.ph82
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i81, i64 3400 ; 2 uses
  %.not66 = icmp eq ptr %i.q, %i.p
  br i1 %.not66, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b, %bb.c
  %.sroa.05.0.i.i81 = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i.i81, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53039, !inline_history !53007
  br i1 %i.r, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %bb.c

_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit: ; preds = %bb.a, %bb.c, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit40, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53040)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !53040, !nonnull !321, !noundef !321 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !53040, !noundef !321 ; 2 uses
  %.idx99 = mul nuw nsw i64 %i.v, 704
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx99
  %.not6789 = icmp eq i64 %i.v, 0
  br i1 %.not6789, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, label %.lr.ph91

.lr.ph91:                                         ; preds = %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22
  %.sroa.05.0.i90 = phi ptr [ %i.ap, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22 ], [ %i.t, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit ] ; 8 uses
  %i.x = load i64, ptr %.sroa.05.0.i90, align 8, !range !353, !alias.scope !53041, !noalias !53040, !noundef !321
  %.not.i.i = icmp eq i64 %i.x, -4
  br i1 %.not.i.i, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i: ; preds = %.lr.ph91
  %i.y = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(704) %.sroa.05.0.i90, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53040, !inline_history !178
  br i1 %i.y, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread: ; preds = %.lr.ph91, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 328
  %i.aa = load i64, ptr %i.z, align 8, !range !340, !alias.scope !53042, !noalias !53040, !noundef !321
  %.not.i12.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i12.i, label %bb.e, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i44

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i44: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53044), !noalias !53040
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 336
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !53045, !noalias !53040, !nonnull !321, !noundef !321 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 344
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !53045, !noalias !53040, !noundef !321 ; 2 uses
  %.idx100 = mul nuw nsw i64 %i.ae, 3400
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx100
  %.not6883 = icmp eq i64 %i.ae, 0
  br i1 %.not6883, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22, label %.lr.ph85

bb.d:                                             ; preds = %.lr.ph85
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i4584, i64 3400 ; 2 uses
  %.not68 = icmp eq ptr %i.ag, %i.af
  br i1 %.not68, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22, label %.lr.ph85

.lr.ph85:                                         ; preds = %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i44, %bb.d
  %.sroa.05.0.i.i4584 = phi ptr [ %i.ag, %bb.d ], [ %i.ac, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i44 ] ; 2 uses
  %i.ah = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i.i4584, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53046, !inline_history !179
  br i1 %i.ah, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %bb.d

bb.e:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53047)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 344
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !53047, !noalias !53040, !nonnull !321, !noundef !321 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 352
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !53047, !noalias !53040, !noundef !321 ; 2 uses
  %.idx101 = mul nuw nsw i64 %i.al, 3400
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx101
  %.not6986 = icmp eq i64 %i.al, 0
  br i1 %.not6986, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22, label %.lr.ph88

bb.f:                                             ; preds = %.lr.ph88
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i4187, i64 3400 ; 2 uses
  %.not69 = icmp eq ptr %i.an, %i.am
  br i1 %.not69, label %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.e, %bb.f
  %.sroa.05.0.i4187 = phi ptr [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ao = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i4187, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53048, !inline_history !180
  br i1 %i.ao, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %bb.f

_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22: ; preds = %bb.d, %bb.f, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i44, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i90, i64 704 ; 2 uses
  %.not67 = icmp eq ptr %i.ap, %i.w
  br i1 %.not67, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, label %.lr.ph91

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread: ; preds = %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit22, %_RINvXsbn_NtCs40MM8ukkVQd_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB37_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !351, !alias.scope !53049, !noundef !321
  switch i64 %i.ar, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27 [
    i64 -5, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit
    i64 -4, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27.thread
  ]

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread
  %i.as = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(704) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !181
  br i1 %i.as, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27.thread: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.au = load i64, ptr %i.at, align 8, !range !340, !alias.scope !53050, !noundef !321
  %.not.i12.i33 = icmp eq i64 %i.au, -1
  br i1 %.not.i12.i33, label %bb.g, label %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52

_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53052)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !53053, !nonnull !321, !noundef !321 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !53053, !noundef !321 ; 2 uses
  %.idx102 = mul nuw nsw i64 %i.ay, 3400
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx102
  %.not7092 = icmp eq i64 %i.ay, 0
  br i1 %.not7092, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52
  %.sroa.05.0.i.i5393 = phi ptr [ %i.bb, %.lr.ph94 ], [ %i.aw, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52 ] ; 2 uses
  %i.ba = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i.i5393, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53053, !inline_history !182 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i5393, i64 3400 ; 2 uses
  %.not70 = icmp eq ptr %i.bb, %i.az
  %or.cond = select i1 %i.ba, i1 true, i1 %.not70
  br i1 %or.cond, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %.lr.ph94

bb.g:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53054)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !53054, !nonnull !321, !noundef !321 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !53054, !noundef !321 ; 2 uses
  %.idx103 = mul nuw nsw i64 %i.bf, 3400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx103
  %.not7195 = icmp eq i64 %i.bf, 0
  br i1 %.not7195, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97, %bb.g
  %.sroa.05.0.i4896 = phi ptr [ %i.bi, %.lr.ph97 ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bh = tail call fastcc noundef zeroext i1 @_RINvXsdE_NtCs40MM8ukkVQd_9sqlparser3astNtB7_9StatementNtNtB7_7visitor8VisitMut5visitINtBS_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1K_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(3400) %.sroa.05.0.i4896, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !53054, !inline_history !183 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i4896, i64 3400 ; 2 uses
  %.not71 = icmp eq ptr %i.bi, %i.bg
  %or.cond139 = select i1 %i.bh, i1 true, i1 %.not71
  br i1 %or.cond139, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit, label %.lr.ph97

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3Y_.exit: ; preds = %.lr.ph, %.lr.ph82, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i, %.lr.ph85, %.lr.ph88, %.lr.ph94, %.lr.ph97, %bb.g, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %.sroa.0.0 = phi i1 [ %i.ba, %.lr.ph94 ], [ true, %.lr.ph85 ], [ false, %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_25ConditionalStatementBlockENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3D_.exit.thread ], [ %i.bh, %.lr.ph97 ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ], [ true, %.lr.ph88 ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i27 ], [ false, %bb.g ], [ false, %_RINvXs9_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.i52 ], [ true, %.lr.ph82 ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXsb3_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_12TableVersionNtNtB9_7visitor8VisitMut5visitINtB14_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1X_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB32_(ptr noalias noundef nonnull align 8 dereferenceable(984) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53057 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !446, !noundef !321 ; 2 uses
  %i.b = add nsw i64 %i.a, -66
  %i.c = icmp sgt i64 %i.a, 65
  %i.d = select i1 %i.c, i64 %i.b, i64 4
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.e, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.f, label %bb.h, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.g, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.h, label %bb.h, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.i, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.j, label %bb.h, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.k, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.l, label %bb.h, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.n, label %bb.h, label %bb.i

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread: ; preds = %bb.j, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %bb.f, %bb.e, %bb.d, %bb.c
  br label %bb.h

bb.h:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
  %.sroa.0.0 = phi i1 [ true, %bb.i ], [ false, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.p = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef align 8 dereferenceable(328) %i.o, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.p, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.m, align 8, !range !353, !alias.scope !53058, !noundef !321
  %.not.i = icmp eq i64 %i.q, -4
  br i1 %.not.i, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit: ; preds = %bb.j
  %i.r = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !94
  br i1 %i.r, label %bb.h, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXsb9_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3400) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 !guid !54023 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [4 x i8], align 4                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [1 x i8], align 1                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [1 x i8], align 1                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [1 x i8], align 1                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [1 x i8], align 1                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [4 x i8], align 4                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [1 x i8], align 1                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [4 x i8], align 4                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [1 x i8], align 1                ; 4 uses
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
  %i.cd = alloca [1 x i8], align 1                ; 4 uses
  %i.ce = alloca [4 x i8], align 4                ; 4 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [1 x i8], align 1                ; 4 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [4 x i8], align 4                ; 4 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [1 x i8], align 1                ; 4 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [8 x i8], align 8                ; 4 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [1 x i8], align 1                ; 4 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [8 x i8], align 8                ; 4 uses
  %i.cy = alloca [1 x i8], align 1                ; 4 uses
  %i.cz = alloca [8 x i8], align 8                ; 4 uses
  %i.da = alloca [1 x i8], align 1                ; 4 uses
  %i.db = alloca [8 x i8], align 8                ; 4 uses
  %i.dc = alloca [8 x i8], align 8                ; 4 uses
  %i.dd = alloca [8 x i8], align 8                ; 4 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [8 x i8], align 8                ; 4 uses
  %i.dg = alloca [8 x i8], align 8                ; 4 uses
  %i.dh = alloca [1 x i8], align 1                ; 4 uses
  %i.di = alloca [8 x i8], align 8                ; 4 uses
  %i.dj = alloca [8 x i8], align 8                ; 4 uses
  %i.dk = alloca [8 x i8], align 8                ; 4 uses
  %i.dl = alloca [8 x i8], align 8                ; 4 uses
  %i.dm = alloca [4 x i8], align 4                ; 4 uses
  %i.dn = alloca [8 x i8], align 8                ; 4 uses
  %i.do = alloca [1 x i8], align 1                ; 4 uses
  %i.dp = alloca [8 x i8], align 8                ; 4 uses
  %i.dq = alloca [1 x i8], align 1                ; 4 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [8 x i8], align 8                ; 4 uses
  %i.dt = alloca [8 x i8], align 8                ; 4 uses
  %i.du = alloca [1 x i8], align 1                ; 4 uses
  %i.dv = alloca [8 x i8], align 8                ; 4 uses
  %i.dw = alloca [1 x i8], align 1                ; 4 uses
  %i.dx = alloca [8 x i8], align 8                ; 4 uses
end_hunk_3
begin_hunk_4_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE16sql_cast_to_exprB16_:bb.a

bb.am:                                            ; preds = %bb.ak, %bb.an
  %.sroa.525.0 = phi i64 [ %i.bq, %bb.an ], [ undef, %bb.ak ]
  %.sroa.024.0 = phi ptr [ %i.bp, %bb.an ], [ null, %bb.ak ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.024.0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.525.0, ptr %i.bn, align 8
  store i8 13, ptr %i.a, align 8
  %i.bo = invoke { ptr, ptr } @_RNvMsm_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB5_4Cast3new(ptr noalias noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ap unwind label %bb.y      ; 2 uses

bb.an:                                            ; preds = %bb.al
  %i.bp = load ptr, ptr %i.bg, align 8, !nonnull !321, !noundef !321
  %i.bq = load i64, ptr %i.bi, align 8, !noundef !321
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.br = extractvalue { ptr, ptr } %i.bo, 0
  %i.bs = extractvalue { ptr, ptr } %i.bo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.br, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.bs, ptr %i.bu, align 16
  store i64 22, ptr %i.e, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74230
  %i.bv = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74230 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.ar, label %bb.aw, !prof !322

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc101 unwind label %bb.as

.noexc101:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e) #73
          to label %.thread126 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.au:                                            ; preds = %bb.aa, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !74231)
  call void @llvm.experimental.noalias.scope.decl(metadata !74232)
  %i.bz = load ptr, ptr %i.j, align 8, !alias.scope !74233, !nonnull !321, !noundef !321
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !74233
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc85D0lJ81Z_16lance_datafusion.exit103

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc85D0lJ81Z_16lance_datafusion.exit103

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bv, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  %i.cc = load ptr, ptr %i.j, align 8, !nonnull !321, !noundef !321
  store i64 22, ptr %0, align 16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cc, ptr %.sroa.528.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc85D0lJ81Z_16lance_datafusion.exit103, %bb.aw, %bb.m
  ret void

.thread119:                                       ; preds = %bb.ac, %.thread129
  %.pn122 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread129 ], [ %i.bc, %bb.ac ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.h) #73
          to label %.thread126 unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc85D0lJ81Z_16lance_datafusion.exit103: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

.thread114:                                       ; preds = %bb.r, %.thread126, %.thread
  %.pn80.pn.pn112 = phi { ptr, i32 } [ %.pn80.pn.pn113, %.thread ], [ %.pn78, %bb.r ], [ %.pn78, %.thread126 ]
  resume { ptr, i32 } %.pn80.pn.pn112

.thread:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit, %.thread117
  %.pn80.pn.pn113 = phi { ptr, i32 } [ %i.s, %.thread117 ], [ %.pn80.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %2) #73
          to label %.thread114 unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE16sql_like_to_exprB16_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef nonnull align 8 dereferenceable(152) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #0 personality ptr @rust_eh_personality !guid !74278 {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.625 = alloca [40 x i8], align 8          ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.m = alloca [328 x i8], align 8               ; 4 uses
  %i.n = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.o = alloca [112 x i8], align 16              ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  br i1 %9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.m, ptr noundef nonnull align 8 dereferenceable(328) %4, i64 328, i1 false)
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.f unwind label %.thread181

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74279
  %i.t = tail call noundef dereferenceable_or_null(22) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 22, i64 noundef range(i64 1, 17) 1) #71, !noalias !74279 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 22) #72
          to label %.noexc unwind label %.thread181

.noexc:                                           ; preds = %bb.d
  unreachable

.thread181:                                       ; preds = %bb.b, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread172

bb.e:                                             ; preds = %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.v = load i64, ptr %i.n, align 16, !range !343, !noundef !321 ; 2 uses
  %i.w = icmp eq i64 %i.v, -2
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.z = load i64, ptr %5, align 8, !range !382, !alias.scope !74280, !noundef !321
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %5)
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.553.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.v, ptr %i.o, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.08.0.copyload = load i64, ptr %5, align 8 ; 3 uses
  %.not = icmp eq i64 %.sroa.08.0.copyload, -1
  br i1 %.not, label %.thread197, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.8..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa.510.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.8.8..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa.510.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.9.8..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa.510.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %i.ab = icmp eq i64 %.sroa.08.0.copyload, -9223372036854775807
  br i1 %i.ab, label %bb.k, label %bb.l

10:                                               ; preds = %.thread197
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp sgt i64 %.sroa.8.8.copyload, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.8.8.copyload, 1
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.08.0.copyload, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.5.8.copyload, ptr %.sroa.5.0..sroa_idx231, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.7.8.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.8.8.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs9_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @503, ptr noundef nonnull %i.h)
          to label %bb.ae unwind label %bb.ac

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.8.copyload) ]
  %i.ae = load i8, ptr %.sroa.7.8.copyload, align 1, !noalias !74281, !noundef !321 ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ah = icmp eq i64 %.sroa.5.8.copyload, 0
  br i1 %i.ah, label %.thread197, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.8.copyload, i64 noundef %.sroa.5.8.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !74282
  br label %.thread197

.thread197:                                       ; preds = %bb.i, %bb.n, %bb.m
  %.sroa.07.0200 = phi i32 [ %i.ag, %bb.n ], [ %i.ag, %bb.m ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %3, i64 328, i1 false)
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.o unwind label %10

bb.o:                                             ; preds = %.thread197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.d, align 16, !range !343, !noundef !321 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.827.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.827.0..sroa_idx28, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.580.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ai, ptr %i.b, align 16
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74283
  %i.am = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74283 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.r, label %bb.u, !prof !322

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc110 unwind label %bb.s

.noexc110:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.am, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false)
  store ptr %i.am, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.o, i64 112, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74284
  %i.aq = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74284 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.v, label %bb.y, !prof !322

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc111 unwind label %bb.w

.noexc111:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #73
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body:                                            ; preds = %bb.w
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #73
          to label %.thread.thread unwind label %bb.aa

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aq, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = zext i1 %2 to i8
  %i.av = zext i1 %8 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 8, ptr %0, align 16
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx, align 16
  %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.07.0200, ptr %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx, align 8
  %.sroa.517.sroa.7.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.au, ptr %.sroa.517.sroa.7.0..sroa.517.0..sroa_idx.sroa_idx, align 4
  %.sroa.517.sroa.8.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.av, ptr %.sroa.517.sroa.8.0..sroa.517.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.aj, %bb.y
  ret void

bb.aa:                                            ; preds = %.thread217, %bb.at, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.thread, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit126, %bb.p
  %.sroa.032.4 = phi i8 [ 0, %bb.p ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit126 ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.o)
          to label %bb.aj unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit115: ; preds = %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit120, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ac ], [ %i.bb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit120 ], [ %i.bb, %bb.ad ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l) #73
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.thread

bb.ac:                                            ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit115

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit120: ; preds = %bb.ag, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !74285)
  %.val.i113 = load i64, ptr %i.j, align 8, !alias.scope !74285 ; 2 uses
  %i.ay = icmp eq i64 %.val.i113, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit115, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit120
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i114 = load ptr, ptr %i.az, align 8, !alias.scope !74285, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i114, i64 noundef %.val.i113, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !74285
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit115

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.567.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ba, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
end_hunk_4
begin_hunk_5_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20try_plan_map_literalB16_:bb.a

bb.au:                                            ; preds = %.lr.ph285
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = icmp eq i64 %i.ev, %i.er
  br i1 %i.ez, label %.body.i, label %.lr.ph288

.lr.ph288:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i286 = phi i64 [ %i.ew, %bb.at ], [ %i.ev, %bb.au ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [112 x i8], ptr %i.eq, i64 %.sroa.0.1.i.i286
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.fa) #75
          to label %bb.at unwind label %bb.av, !noalias !74816, !inline_history !0

bb.av:                                            ; preds = %.lr.ph288
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !74816, !inline_history !0
  unreachable

.body.i:                                          ; preds = %bb.at, %bb.au
  %.val2.i = load i64, ptr %i.t, align 8, !range !328, !alias.scope !74816, !noundef !321 ; 2 uses
  %i.fc = icmp eq i64 %.val2.i, 0
  br i1 %i.fc, label %common.resume, label %common.resume.sink.split

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit102
  %.val.i103 = load i64, ptr %i.t, align 8, !range !328, !alias.scope !74816, !noundef !321 ; 2 uses
  %i.fd = icmp eq i64 %.val.i103, 0
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.aw

bb.aw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.fe = mul nuw i64 %.val.i103, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74816, !inline_history !341
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.aw, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryEIB1v_INtNtB1B_5boxed3BoxNtB2k_4ExprEENCNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB3G_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20try_plan_map_literal0ENCB3B_s_0ENtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvXso_B73_IB71_INtB1z_3VecB6h_EB7N_EINtNtNtB4_6traits7collect12FromIteratorIB71_B6h_B7N_EE9from_iterBQ_E0B94_EB4J_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ax:                                            ; preds = %.thread197
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.thread197:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit96, %bb.am, %.thread202
  %.pn.pn201 = phi { ptr, i32 } [ %i.ed, %.thread202 ], [ %i.ek, %bb.am ], [ %i.ek, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit96 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #73
          to label %common.resume unwind label %bb.ax
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE21sql_similarto_to_exprB16_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef nonnull align 8 dereferenceable(152) %7) unnamed_addr #0 personality ptr @rust_eh_personality !guid !74860 {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.635 = alloca [40 x i8], align 8          ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.t = alloca [112 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.bd, %bb.h, %bb.c
  %.sroa.042.0 = phi i8 [ %.sroa.042.1, %bb.c ], [ %.sroa.042.2189, %bb.bd ], [ %.sroa.042.4, %bb.h ]
  %.sroa.040.0 = phi i8 [ %.sroa.040.1, %bb.c ], [ %.sroa.040.2190, %bb.bd ], [ %.sroa.040.4, %bb.h ]
  %.pn112 = phi { ptr, i32 } [ %i.x, %bb.c ], [ %.pn108.pn.pn191, %bb.bd ], [ %.pn108.pn, %bb.h ]
  %i.u = trunc nuw i8 %.sroa.040.0 to i1
  %i.v = load i64, ptr %5, align 8, !range !382
  %i.w = icmp ne i64 %i.v, -1
  %or.cond.not = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond.not, label %bb.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13ValueWithSpanEECsc85D0lJ81Z_16lance_datafusion.exit163

bb.c:                                             ; preds = %bb.ay, %bb.j, %bb.a
  %.sroa.042.1 = phi i8 [ 1, %bb.j ], [ %.sroa.042.6, %bb.ay ], [ 1, %bb.a ]
  %.sroa.040.1 = phi i8 [ 1, %bb.j ], [ %.sroa.040.6, %bb.ay ], [ 1, %bb.a ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.s, align 16, !range !343, !noundef !321 ; 2 uses
  %i.z = icmp eq i64 %i.y, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ac = load i64, ptr %5, align 8, !range !382, !alias.scope !74861, !noundef !321
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13ValueWithSpanEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %5)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13ValueWithSpanEECsc85D0lJ81Z_16lance_datafusion.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.548.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.y, ptr %i.t, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t, ptr noundef nonnull %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @364)
          to label %bb.i unwind label %.split.thread

bb.h:                                             ; preds = %.body116
  br i1 %.sroa.045.2, label %bb.bd, label %bb.b

.split.thread:                                    ; preds = %bb.ar, %bb.g
  %.sroa.042.3.ph = phi i8 [ 1, %bb.g ], [ %.sroa.042.6, %bb.ar ]
  %.sroa.040.3.ph = phi i8 [ 1, %bb.g ], [ %.sroa.040.6, %bb.ar ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.i:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !range !326, !noundef !321 ; 2 uses
  %.not = icmp eq i64 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.554.0.copyload = load i64, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ag, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.554.0.copyload, ptr %.sroa.557.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.t)
          to label %bb.bc unwind label %bb.c

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  %i.ah = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514)
          to label %bb.m unwind label %bb.l

.body116:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136, %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit155, %bb.ab, %bb.l, %.body
  %.sroa.045.2 = phi i1 [ true, %bb.ab ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit155 ], [ false, %.body ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136 ], [ true, %bb.l ], [ true, %bb.as ]
  %.sroa.042.4 = phi i8 [ 0, %bb.ab ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit155 ], [ 0, %.body ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136 ], [ %.sroa.042.5, %bb.l ], [ 1, %bb.as ] ; 2 uses
  %.sroa.040.4 = phi i8 [ 0, %bb.ab ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit155 ], [ 0, %.body ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136 ], [ %.sroa.042.5, %bb.l ], [ 1, %bb.as ] ; 2 uses
  %.pn108.pn = phi { ptr, i32 } [ %i.az, %bb.ab ], [ %i.bt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit155 ], [ %i.bd, %.body ], [ %.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136 ], [ %i.ai, %bb.l ], [ %i.bt, %bb.as ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.r) #73
          to label %bb.h unwind label %bb.aj

bb.l:                                             ; preds = %bb.r, %.thread198, %bb.n, %bb.k
  %.sroa.042.5 = phi i8 [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.k ], [ 0, %.thread198 ] ; 2 uses
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body116

bb.m:                                             ; preds = %bb.k
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @515)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.018.0.copyload = load i64, ptr %5, align 8 ; 3 uses
  %.not101 = icmp eq i64 %.sroa.018.0.copyload, -1
  br i1 %.not101, label %.thread198, label %bb.s

bb.p:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74862
  %i.ak = call noundef dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, 17) 1) #71, !noalias !74862 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 40) #72
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.o
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.8..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa.520.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.8.8..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa.520.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.9.8..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa.520.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %i.am = icmp eq i64 %.sroa.018.0.copyload, -9223372036854775807
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = icmp sgt i64 %.sroa.8.8.copyload, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %.sroa.8.8.copyload, 1
  br i1 %i.ao, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.018.0.copyload, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.5.8.copyload, ptr %.sroa.5.0..sroa_idx227, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.7.8.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.8.8.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs9_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @516, ptr noundef nonnull %i.h)
          to label %bb.am unwind label %bb.ak

bb.v:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.8.copyload) ]
  %i.ap = load i8, ptr %.sroa.7.8.copyload, align 1, !noalias !74863, !noundef !321 ; 2 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.as = icmp eq i64 %.sroa.5.8.copyload, 0
  br i1 %i.as, label %.thread198, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.8.copyload, i64 noundef %.sroa.5.8.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !74864
  br label %.thread198

.thread198:                                       ; preds = %bb.o, %bb.w, %bb.v
  %.sroa.017.0201 = phi i32 [ %i.ar, %bb.w ], [ %i.ar, %bb.v ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %3, i64 328, i1 false)
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.x unwind label %bb.l

bb.x:                                             ; preds = %.thread198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = load i64, ptr %i.d, align 16, !range !343, !noundef !321 ; 2 uses
  %i.au = icmp eq i64 %i.at, -2
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.635, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  br label %bb.ar

bb.z:                                             ; preds = %bb.x
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.837.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.837.0..sroa_idx38, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.599.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.at, ptr %i.b, align 16
  %.sroa.635.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.635.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.635, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74865
  %i.ax = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74865 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.aa, label %bb.ad, !prof !322

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc131 unwind label %bb.ab

.noexc131:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #73
          to label %.body116 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ax, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false)
  store ptr %i.ax, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.t, i64 112, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !74866
  %i.bb = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !74866 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ae, label %bb.ah, !prof !322

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc132 unwind label %bb.af

.noexc132:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #73
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body:                                            ; preds = %bb.af
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #73
          to label %.body116 unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bb, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = zext i1 %2 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 9, ptr %0, align 16
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.527.sroa.5.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %.sroa.527.sroa.5.0..sroa.527.0..sroa_idx.sroa_idx, align 16
  %.sroa.527.sroa.6.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.017.0201, ptr %.sroa.527.sroa.6.0..sroa.527.0..sroa_idx.sroa_idx, align 8
  %.sroa.527.sroa.7.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.bf, ptr %.sroa.527.sroa.7.0..sroa.527.0..sroa_idx.sroa_idx, align 4
  %.sroa.527.sroa.8.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.527.sroa.8.0..sroa.527.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13ValueWithSpanEECsc85D0lJ81Z_16lance_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13ValueWithSpanEECsc85D0lJ81Z_16lance_datafusion.exit162, %bb.ah
  ret void

bb.aj:                                            ; preds = %bb.bg, %bb.bd, %.body, %.body116
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136: ; preds = %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit141, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ak ], [ %i.bl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit141 ], [ %i.bl, %bb.al ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l) #73
  br label %.body116

bb.ak:                                            ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit141: ; preds = %bb.ao, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !74867)
  %.val.i134 = load i64, ptr %i.j, align 8, !alias.scope !74867 ; 2 uses
  %i.bi = icmp eq i64 %.val.i134, 0
  br i1 %i.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136, label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i135 = load ptr, ptr %i.bj, align 8, !alias.scope !74867, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i135, i64 noundef %.val.i134, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !74867
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit136

bb.am:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.485.0..sroa_idx, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.586.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.490.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.bk, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @184, ptr noundef nonnull %i.f)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit138 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
end_hunk_5
begin_hunk_6_@_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner10parse_expr:bb.a
  %.sroa.6.sroa.11 = alloca [24 x i8], align 8    ; 7 uses
  %i.o = alloca [328 x i8], align 8               ; 15 uses
  %.sroa.480 = alloca [72 x i8], align 8          ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2920
  %.val = load ptr, ptr %i.r, align 8, !nonnull !321, !noundef !321 ; 2 uses
  call fastcc void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner19resolve_column_name(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !321, !noundef !321 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !321
  invoke void @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6Schema15field_with_name(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53, %bb.d, %bb.ip, %bb.ik, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.p, align 8, !range !393, !noundef !321
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53 unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.480.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.480, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.480.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 4, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.480, i64 72, i1 false)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit62

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %2, ptr %i.i, align 8, !noalias !83709
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.aa, align 8, !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83709
  store ptr %i.i, ptr %i.g, align 8, !noalias !83709
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !83709
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @813, ptr noundef nonnull %i.g)
          to label %.noexc54 unwind label %bb.b

.noexc54:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83709
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !83709 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !83709, !nonnull !321, !noundef !321 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !83709
  invoke fastcc void @_RNvNtCsc85D0lJ81Z_16lance_datafusion3sql15parse_statement(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i, i64 noundef %.sroa.11.0.copyload.i)
          to label %bb.i unwind label %bb.h, !noalias !83710

bb.f:                                             ; preds = %bb.hg, %bb.hf, %bb.he, %bb.h
  %.pn133.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn130.pn.i, %bb.hg ], [ %.pn130.pn.i, %bb.he ], [ %.pn130.pn.i, %bb.hf ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ab, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83711
  br label %.body

bb.h:                                             ; preds = %bb.hd, %.noexc54
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %.noexc54
  %i.ad = load i64, ptr %i.e, align 8, !range !595, !noalias !83709, !noundef !321 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.i.sroa.0.0.copyload130 = load i8, ptr %i.af, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !83709
  %.sroa.6.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.i.sroa.8.0.copyload132 = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.i.sroa.9.0.copyload134 = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.i.sroa.10.0.copyload136 = load ptr, ptr %.sroa.6.i.sroa.10.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !83709
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !83709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, i64 7, i1 false), !noalias !83712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, i64 24, i1 false), !noalias !83712
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !83709
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ag, label %.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit151.sink.split.i

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.hi

bb.k:                                             ; preds = %bb.i
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3336) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(3336) %.sroa.514.0..sroa_idx.i, i64 3336, i1 false), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !83709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 %.sroa.6.i.sroa.0.0.copyload130, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !83709
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, i64 7, i1 false), !noalias !83709
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.i.sroa.8.0.copyload132, ptr %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.i.sroa.9.0.copyload134, ptr %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.6.i.sroa.10.0.copyload136, ptr %.sroa.6.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, i64 24, i1 false), !noalias !83709
  store i64 %i.ad, ptr %i.f, align 8, !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.11)
  %i.ah = icmp ne i64 %i.ad, 23
  call void @llvm.assume(i1 %i.ah)
  %.not310.i = icmp eq i64 %i.ad, 6               ; 2 uses
  br i1 %.not310.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !83709, !nonnull !321, !align !330, !noundef !321 ; 68 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1392 ; 11 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !83710, !nonnull !321, !noundef !321 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !537, !noalias !83710, !noundef !321
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.gt, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83709
  store ptr %i.i, ptr %i.a, align 8, !noalias !83709
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !83709
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @814, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.gx, !noalias !83710

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !83710, !nonnull !321, !align !330, !noundef !321 ; 95 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83709
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1712
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !83710, !nonnull !321, !noundef !321 ; 12 uses
  %i.as = load i64, ptr %i.ap, align 8, !range !328, !noalias !83710, !noundef !321
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1720
  %i.au = load i64, ptr %i.at, align 8, !noalias !83710, !noundef !321 ; 3 uses
  %i.av = icmp ult i64 %i.au, 11885788707287083
  call void @llvm.assume(i1 %i.av)
  %.idx.i = mul nuw nsw i64 %i.au, 776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  store ptr %i.ar, ptr %i.c, align 8, !noalias !83709
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.as, ptr %i.ax, align 8, !noalias !83709
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.ay, align 8, !noalias !83709
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aw, ptr %i.az, align 8, !noalias !83709
  call void @llvm.experimental.noalias.scope.decl(metadata !83713)
  call void @llvm.experimental.noalias.scope.decl(metadata !83714)
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.n
  store i64 -2, ptr %i.d, align 8, !alias.scope !83713, !noalias !83709
  br label %bb.cu

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit225.i, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !340, !alias.scope !83715, !noalias !83710, !noundef !321
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 1160
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.be), !noalias !83710, !inline_history !534
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3CteEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.bb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.fs, !noalias !83710, !inline_history !534

bb.p:                                             ; preds = %.thread.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c) #73
          to label %bb.er unwind label %bb.cq, !noalias !83710

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 776
  store ptr %i.bg, ptr %i.ay, align 8, !alias.scope !83714, !noalias !83709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.d, ptr noundef nonnull align 8 dereferenceable(776) %i.ar, i64 776, i1 false), !noalias !83716
  %.pr.i = load i64, ptr %i.d, align 8, !noalias !83709 ; 2 uses
  switch i64 %.pr.i, label %.thread.i [
    i64 2, label %bb.q
    i64 -2, label %bb.cu
  ]

bb.q:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.083.0.copyload = load i64, ptr %i.bh, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.884.0.copyload = load i8, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx, i64 7, i1 false)
  %.sroa.1287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.1287.0.copyload = load ptr, ptr %.sroa.1287.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.15.0..sroa_idx, i64 288, i1 false)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !83710

bb.r:                                             ; preds = %bb.cu, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83709
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 2000
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.bj), !noalias !83710
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1680
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast13OptimizerHintEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk), !noalias !83710
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 1976
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query8DistinctEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.v unwind label %bb.u, !noalias !83710

bb.t:                                             ; preds = %bb.u
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.bn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !591

bb.u:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !alias.scope !83717, !noalias !83710, !noundef !321
  %switch.i.i.i = icmp slt i64 %i.bo, -3
  br i1 %switch.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !381, !alias.scope !83718, !noalias !83710, !noundef !321
  %switch.i.i153.i = icmp slt i64 %i.bq, -3
  br i1 %switch.i.i153.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.bp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i unwind label %bb.y, !noalias !83710, !inline_history !591

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.y, %bb.u, %bb.t
  %.pn83.i = phi { ptr, i32 } [ %i.bt, %bb.y ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ] ; 2 uses
  %i.br = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83719, !noalias !83710, !noundef !321
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !419

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i: ; preds = %bb.w, %bb.v
  %i.bu = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83720, !noalias !83710, !noundef !321
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i unwind label %bb.ab, !noalias !83710, !inline_history !419

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ab, %bb.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn85.i = phi { ptr, i32 } [ %i.bz, %bb.ab ], [ %.pn83.i, %bb.x ], [ %.pn83.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !340, !alias.scope !83721, !noalias !83710, !noundef !321
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !586

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i: ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !340, !alias.scope !83722, !noalias !83710, !noundef !321
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ca)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i unwind label %bb.ad, !noalias !83710, !inline_history !586

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ad, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn87.i = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %.pn85.i, %bb.aa ], [ %.pn85.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd) #73
          to label %bb.ae unwind label %bb.cq, !noalias !83710

bb.ad:                                            ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i: ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.ag unwind label %bb.af, !noalias !83710

bb.ae:                                            ; preds = %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn89.i = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %.pn87.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg) #73
          to label %bb.ah unwind label %bb.cq, !noalias !83710

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %bb.ak unwind label %bb.aj, !noalias !83710

bb.ah:                                            ; preds = %bb.aj, %bb.ae
  %.pn91.i = phi { ptr, i32 } [ %i.cm, %bb.aj ], [ %.pn89.i, %bb.ae ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !353, !alias.scope !83723, !noalias !83710, !noundef !321
  %i.cl = icmp eq i64 %i.ck, -4
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.aj:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !353, !alias.scope !83724, !noalias !83710, !noundef !321
  %i.cp = icmp eq i64 %i.co, -4
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i unwind label %bb.an, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.an, %bb.ai, %bb.ah
  %.pn93.i = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %.pn91.i, %bb.ai ], [ %.pn91.i, %bb.ah ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !353, !alias.scope !83725, !noalias !83710, !noundef !321
  %i.cs = icmp eq i64 %i.cr, -4
  br i1 %i.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.an:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i: ; preds = %bb.al, %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !353, !alias.scope !83726, !noalias !83710, !noundef !321
  %i.cw = icmp eq i64 %i.cv, -4
  br i1 %i.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i unwind label %bb.ap, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i: ; preds = %bb.ap, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn95.i = phi { ptr, i32 } [ %i.cy, %bb.ap ], [ %.pn93.i, %bb.am ], [ %.pn93.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx) #73
          to label %bb.aq unwind label %bb.cq, !noalias !83710

bb.ap:                                            ; preds = %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i: ; preds = %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %bb.as unwind label %bb.ar, !noalias !83710

bb.aq:                                            ; preds = %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i
  %.pn97.i = phi { ptr, i32 } [ %i.db, %bb.ar ], [ %.pn95.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.ao, i64 1928
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11GroupByExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.da) #73
          to label %bb.at unwind label %bb.cq, !noalias !83710

bb.ar:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 1928
end_hunk_6
begin_hunk_7_@_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner10parse_expr:bb.a
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ch

bb.ca:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit187.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit187.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83738)
  %i.fm = load i64, ptr %i.ai, align 8, !range !385, !alias.scope !83738, !noalias !83710, !noundef !321 ; 4 uses
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !83739)
  %i.fo = add nsw i64 %i.fm, -4
  %i.fp = icmp samesign ugt i64 %i.fm, 3
  %i.fq = select i1 %i.fp, i64 %i.fo, i64 2
  switch i64 %i.fq, label %bb.cd [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
    i64 1, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !83740)
  switch i64 %i.fm, label %default.unreachable4.i.i.i.i [
    i64 0, label %bb.cf
    i64 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
    i64 3, label %bb.ce
  ]

default.unreachable4.i.i.i.i:                     ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !340, !alias.scope !83741, !noalias !83710, !noundef !321 ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !340, !alias.scope !83742, !noalias !83710, !noundef !321 ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.sink.i.i.i.i = phi i64 [ %i.fs, %bb.ce ], [ %i.fv, %bb.cf ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val1.i.i1.i.i.i.i = load ptr, ptr %i.fx, align 8, !alias.scope !83743, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1.i.i.i.i, i64 noundef %.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83744
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.cg
  %.sink9.i.i.i = phi i64 [ 16, %bb.cg ], [ 40, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ga, %bb.cg ], [ %i.gd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink9.i.i.i
  %.val1.i.i3.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !83745, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83746
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cg:                                            ; preds = %bb.cc
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !range !340, !alias.scope !83747, !noalias !83710, !noundef !321 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, %bb.cf, %bb.ce, %bb.cd, %bb.cd
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !range !340, !alias.scope !83748, !noalias !83710, !noundef !321 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.ch:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.fi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !515

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.cg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, %bb.cc, %bb.cb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ai, i64 1256 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !range !340, !alias.scope !83749, !noalias !83710, !noundef !321
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.gf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i unwind label %bb.ck, !noalias !83710, !inline_history !515

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ck, %bb.ch, %bb.bz
  %.pn126.i = phi { ptr, i32 } [ %i.gm, %bb.ck ], [ %.pn122.i, %bb.ch ], [ %.pn122.i, %bb.bz ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 1328
  call void @llvm.experimental.noalias.scope.decl(metadata !83750)
  %i.gj = load i64, ptr %i.gi, align 8, !range !359, !alias.scope !83750, !noalias !83710, !noundef !321 ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %bb.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1336
  %.val1.i191.i = load ptr, ptr %i.gl, align 8, !alias.scope !83750, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i191.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83751
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i: ; preds = %bb.ci, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ai, i64 1328
  call void @llvm.experimental.noalias.scope.decl(metadata !83752)
  %i.go = load i64, ptr %i.gn, align 8, !range !359, !alias.scope !83752, !noalias !83710, !noundef !321 ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %bb.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i

bb.cl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1336
  %.val1.i192.i = load ptr, ptr %i.gq, align 8, !alias.scope !83752, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i192.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83753
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.cj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ai, i64 1112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12PipeOperatorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.gr) #73
          to label %bb.cm unwind label %bb.cq, !noalias !83710

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i: ; preds = %bb.cl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ai, i64 1112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12PipeOperatorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.gs)
          to label %bb.co unwind label %bb.cn, !noalias !83710

bb.cm:                                            ; preds = %bb.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn130.i = phi { ptr, i32 } [ %i.gt, %bb.cn ], [ %.pn126.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 1400, i64 noundef 8) #71, !noalias !83710
  br label %.body.i

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 1400, i64 noundef 8) #71, !noalias !83710
  br label %bb.cp

bb.cp:                                            ; preds = %bb.hb, %bb.co
  %.sroa.14.0 = phi ptr [ @815, %bb.hb ], [ %.sroa.14.0.copyload, %bb.co ] ; 2 uses
  %.sroa.13.0 = phi ptr [ @21, %bb.hb ], [ %.sroa.13.0.copyload, %bb.co ] ; 2 uses
  %.sroa.1287.0 = phi ptr [ %i.op, %bb.hb ], [ %.sroa.1287.0.copyload, %bb.co ] ; 2 uses
  %.sroa.884.0 = phi i8 [ 0, %bb.hb ], [ %.sroa.884.0.copyload, %bb.co ] ; 2 uses
  %.sroa.083.0 = phi i64 [ -4, %bb.hb ], [ %.sroa.083.0.copyload, %bb.co ] ; 2 uses
  %i.gu = load i64, ptr %i.f, align 8, !range !459, !noalias !83709, !noundef !321 ; 2 uses
  %i.gv = icmp ne i64 %i.gu, 23
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp eq i64 %i.gu, 6
  br i1 %i.gw, label %bb.hc, label %bb.hd

bb.cq:                                            ; preds = %bb.hg, %bb.hf, %bb.gw, %bb.gv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit279.i, %bb.gm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit260.i, %bb.ga, %bb.fx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit251.i, %bb.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit247.i, %bb.fn, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit238.i, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit236.i, %bb.ez, %bb.ey, %bb.ew, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit232.i, %bb.ev, %bb.eu, %bb.et, %bb.er, %bb.em, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit219.i, %bb.eg, %bb.ec, %bb.dz, %bb.dw, %bb.dt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i, %bb.dp, %bb.dl, %bb.dh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i, %bb.dd, %bb.da, %bb.cw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit223.i, %bb.ct, %bb.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.ch, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.bv, %bb.bs, %bb.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit170.i, %bb.bd, %bb.az, %bb.aw, %bb.at, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i, %bb.am, %bb.ai, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.aa, %bb.x, %bb.t, %bb.p
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !83710
  unreachable

.sink.split.i:                                    ; preds = %bb.ct, %bb.br
  %.pn114.ph.i = phi { ptr, i32 } [ %i.es, %bb.br ], [ %i.eh, %bb.ct ]
  %.val144.pre.i = load ptr, ptr %i.aj, align 8, !noalias !83710
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split.i, %bb.bn
  %.val144.sink.i = phi ptr [ %i.ei, %bb.bn ], [ %.val144.pre.i, %.sink.split.i ]
  %.pn114.i = phi { ptr, i32 } [ %i.eh, %bb.bn ], [ %.pn114.ph.i, %.sink.split.i ] ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val144.sink.i, i64 noundef 3408, i64 noundef 8) #71, !noalias !83710
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ai, i64 1280 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !range !359, !alias.scope !83754, !noalias !83710, !noundef !321
  %i.ha = icmp eq i64 %i.gz, -2
  br i1 %i.ha, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByEECsc85D0lJ81Z_16lance_datafusion.exit195.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(48) %i.gy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByEECsc85D0lJ81Z_16lance_datafusion.exit195.i unwind label %bb.cq, !noalias !83710, !inline_history !529

bb.ct:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(3408) %i.ei) #73
          to label %.sink.split.i unwind label %bb.cq, !noalias !83710

.body.i:                                          ; preds = %bb.ha, %bb.gz, %bb.gx, %bb.gr, %bb.fr, %bb.cm
  %.pn130.pn.i = phi { ptr, i32 } [ %.pn130.i, %bb.cm ], [ %.pn111.pn.i, %bb.fr ], [ %.pn74.i, %bb.gr ], [ %i.oo, %bb.gx ], [ %i.or, %bb.ha ], [ %i.or, %bb.gz ] ; 3 uses
  %i.hb = load i64, ptr %i.f, align 8, !range !459, !noalias !83709, !noundef !321 ; 2 uses
  %i.hc = icmp ne i64 %i.hb, 23
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp eq i64 %i.hb, 6
  br i1 %i.hd, label %bb.he, label %bb.hf

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit223.i: ; preds = %bb.fh, %bb.fg, %bb.eq, %bb.em, %bb.el, %bb.bj, %bb.bi
  %.pn111.pn.i = phi { ptr, i32 } [ %.pn77.i, %bb.fh ], [ %.pn54.i, %bb.el ], [ %i.jz, %bb.eq ], [ %.pn54.i, %bb.em ], [ %.pn77.i, %bb.fg ], [ %.pn109.i, %bb.bi ], [ %.pn109.i, %bb.bj ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 2104, i64 noundef 8) #71, !noalias !83710
  %i.he = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.he) #73
          to label %bb.fi unwind label %bb.cq, !noalias !83710

bb.cu:                                            ; preds = %.thread.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c)
          to label %bb.cv unwind label %bb.r, !noalias !83710

.thread.i:                                        ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %4 = icmp ne i64 %.pr.i, 5
  call void @llvm.assume(i1 %4)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(776) %i.d)
          to label %bb.cu unwind label %bb.p, !noalias !83710

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83709
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ao, i64 2000
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hf), !noalias !83710
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ao, i64 1680
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast13OptimizerHintEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hg), !noalias !83710
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ao, i64 1976
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query8DistinctEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %bb.cy unwind label %bb.cx, !noalias !83710

bb.cw:                                            ; preds = %bb.cx
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.hj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i unwind label %bb.cq, !noalias !83710, !inline_history !591

bb.cx:                                            ; preds = %bb.cv
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !range !381, !alias.scope !83755, !noalias !83710, !noundef !321
  %switch.i.i196.i = icmp slt i64 %i.hk, -3
  br i1 %switch.i.i196.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i, label %bb.cw

bb.cy:                                            ; preds = %bb.cv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !range !381, !alias.scope !83756, !noalias !83710, !noundef !321
  %switch.i.i199.i = icmp slt i64 %i.hm, -3
  br i1 %switch.i.i199.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.hl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i unwind label %bb.db, !noalias !83710, !inline_history !591

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i: ; preds = %bb.db, %bb.cx, %bb.cw
  %.pn28.i = phi { ptr, i32 } [ %i.hp, %bb.db ], [ %i.hi, %bb.cw ], [ %i.hi, %bb.cx ] ; 2 uses
  %i.hn = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83757, !noalias !83710, !noundef !321
  %i.ho = icmp eq i64 %i.hn, -1
  br i1 %i.ho, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i unwind label %bb.cq, !noalias !83710, !inline_history !419

bb.db:                                            ; preds = %bb.cz
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i: ; preds = %bb.cz, %bb.cy
  %i.hq = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83758, !noalias !83710, !noundef !321
  %i.hr = icmp eq i64 %i.hq, -1
  br i1 %i.hr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i unwind label %bb.de, !noalias !83710, !inline_history !419

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i: ; preds = %bb.de, %bb.da, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i
  %.pn30.i = phi { ptr, i32 } [ %i.hv, %bb.de ], [ %.pn28.i, %bb.da ], [ %.pn28.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !range !340, !alias.scope !83759, !noalias !83710, !noundef !321
  %i.hu = icmp eq i64 %i.ht, -1
  br i1 %i.hu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i, label %bb.dd

bb.dd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.hs)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i unwind label %bb.cq, !noalias !83710, !inline_history !586

bb.de:                                            ; preds = %bb.dc
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i: ; preds = %bb.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !range !340, !alias.scope !83760, !noalias !83710, !noundef !321
  %i.hy = icmp eq i64 %i.hx, -1
  br i1 %i.hy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i, label %bb.df

bb.df:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.hw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i unwind label %bb.dg, !noalias !83710, !inline_history !586

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i: ; preds = %bb.dg, %bb.dd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i
  %.pn32.i = phi { ptr, i32 } [ %i.ia, %bb.dg ], [ %.pn30.i, %bb.dd ], [ %.pn30.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hz) #73
          to label %bb.dh unwind label %bb.cq, !noalias !83710

bb.dg:                                            ; preds = %bb.df
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i: ; preds = %bb.df, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %bb.dj unwind label %bb.di, !noalias !83710

bb.dh:                                            ; preds = %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i
  %.pn34.i = phi { ptr, i32 } [ %i.id, %bb.di ], [ %.pn32.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ic) #73
          to label %bb.dk unwind label %bb.cq, !noalias !83710

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %bb.dn unwind label %bb.dm, !noalias !83710

bb.dk:                                            ; preds = %bb.dm, %bb.dh
  %.pn36.i = phi { ptr, i32 } [ %i.ii, %bb.dm ], [ %.pn34.i, %bb.dh ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !range !353, !alias.scope !83761, !noalias !83710, !noundef !321
  %i.ih = icmp eq i64 %i.ig, -4
  br i1 %i.ih, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.if)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.dm:                                            ; preds = %bb.dj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dn:                                            ; preds = %bb.dj
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !range !353, !alias.scope !83762, !noalias !83710, !noundef !321
  %i.il = icmp eq i64 %i.ik, -4
  br i1 %i.il, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ij)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i unwind label %bb.dq, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i: ; preds = %bb.dq, %bb.dl, %bb.dk
  %.pn38.i = phi { ptr, i32 } [ %i.ip, %bb.dq ], [ %.pn36.i, %bb.dl ], [ %.pn36.i, %bb.dk ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !range !353, !alias.scope !83763, !noalias !83710, !noundef !321
  %i.io = icmp eq i64 %i.in, -4
  br i1 %i.io, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.im)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.dq:                                            ; preds = %bb.do
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i: ; preds = %bb.do, %bb.dn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !range !353, !alias.scope !83764, !noalias !83710, !noundef !321
  %i.is = icmp eq i64 %i.ir, -4
  br i1 %i.is, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.iq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i unwind label %bb.ds, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i: ; preds = %bb.ds, %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i
  %.pn40.i = phi { ptr, i32 } [ %i.iu, %bb.ds ], [ %.pn38.i, %bb.dp ], [ %.pn38.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.it) #73
          to label %bb.dt unwind label %bb.cq, !noalias !83710

bb.ds:                                            ; preds = %bb.dr
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i: ; preds = %bb.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.dv unwind label %bb.du, !noalias !83710

bb.dt:                                            ; preds = %bb.du, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i
  %.pn42.i = phi { ptr, i32 } [ %i.ix, %bb.du ], [ %.pn40.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1928
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11GroupByExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.iw) #73
          to label %bb.dw unwind label %bb.cq, !noalias !83710

bb.du:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ao, i64 1928
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11GroupByExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.iy)
          to label %bb.dy unwind label %bb.dx, !noalias !83710

bb.dw:                                            ; preds = %bb.dx, %bb.dt
  %.pn44.i = phi { ptr, i32 } [ %i.ja, %bb.dx ], [ %.pn42.i, %bb.dt ]
end_hunk_7
