inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved32lazy_import_immediately_resolved:bb.a
  %i.al = zext i32 %i.ak to i64                   ; 6 uses
  %i.am = icmp ugt i64 %i.af, %i.al
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4266
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ag, align 8, !noalias !4266, !nonnull !21, !noundef !21
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !4266, !noundef !21 ; 2 uses
  %i.ar = load i64, ptr %i.ah, align 8, !noalias !4270, !noundef !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, %i.al
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.ai, align 8, !noalias !4270, !nonnull !21, !noundef !21
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !237, !noalias !4270, !noundef !21
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #35, !noalias !4270
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4270, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 84
  %i.ba = load i8, ptr %i.az, align 4, !range !1915, !noalias !4270, !noundef !21 ; 2 uses
  %i.bb = icmp samesign ugt i8 %i.ba, 1
  %i.bc = zext nneg i8 %i.ba to i64
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = select i1 %i.bb, i64 %i.bd, i64 0
  switch i64 %i.be, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i [
    i64 9, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 10, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 12, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 20, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.ay, align 8, !noalias !4270, !nonnull !21, !noundef !21
  %i.bg = load i32, ptr %i.bf, align 8, !range !705, !noalias !4270, !noundef !21
  %i.bh = icmp eq i32 %i.bg, 5
  br i1 %i.bh, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.not.i.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.g

bb.n:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4271)
  store i64 0, ptr %i.bi, align 8, !alias.scope !4271, !noalias !4234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4272)
  %i.bj = call noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2A_NtB2A_5Nodes12ancestor_ids0ENCNvMs_NtB2C_5modelNtB47_13SemanticModel18current_statements0ENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef range(i64 0, -1) 0)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.o, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4273)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4274)
  call void @llvm.experimental.noalias.scope.decl(metadata !4275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4253
  store ptr %i.bk, ptr %i.k, align 8, !noalias !4276
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.bl, align 8, !alias.scope !4237, !noalias !4250
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4277, !noalias !4250, !nonnull !21, !align !22 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.bo = phi i32 [ %i.bw, %bb.s ], [ %.promoted.i.i.i.i.i.i, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4278)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i, label %bb.q

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i: ; preds = %bb.p
  store i32 0, ptr %i.bl, align 8, !alias.scope !4237, !noalias !4250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4253
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.bm, align 8, !noalias !4279, !noundef !21 ; 2 uses
  %i.bq = add i32 %i.bo, -1
  %i.br = zext i32 %i.bq to i64                   ; 3 uses
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4279
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bn, align 8, !noalias !4279, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !noalias !4279, !noundef !21 ; 4 uses
  %i.bx = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef range(i32 1, 0) %i.bo), !noalias !4280
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not7.i.i.i.i.i.i, label %bb.p, label %bb.f

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.f
  store i32 0, ptr %i.bl, align 8, !alias.scope !4262, !noalias !4265
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !4234, !noundef !21 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cb = load i32, ptr %i.ca, align 8, !range !2437, !alias.scope !4234, !noundef !21
  %i.cc = add i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !4234, !nonnull !21, !noundef !21 ; 2 uses
  %i.ch = getelementptr inbounds nuw [120 x i8], ptr %i.cg, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i8, ptr %i.ci, align 8, !range !2187, !noundef !21
  switch i8 %i.cj, label %default.unreachable [
    i8 0, label %bb.w
    i8 1, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i8 2, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i8 3, label %bb.v
    i8 4, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30
    i8 5, label %bb.w
    i8 6, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
  ]

bb.u:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

default.unreachable:                              ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !range !2055, !noundef !21
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %.split

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4234
  br label %bb.x

.split:                                           ; preds = %bb.v
  %i.cn = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved40in_immediate_eager_comprehension_context(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4234
  br i1 %i.cn, label %bb.x, label %.thread25

bb.w:                                             ; preds = %bb.t, %bb.t
  %i.co = call fastcc noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope(ptr nonnull %i.cg, i64 %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch) ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28: ; preds = %bb.m, %bb.l, %bb.l, %bb.l, %bb.e, %bb.t, %bb.t, %bb.t, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4234
  br label %.thread25

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit: ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !range !2187, !noundef !21
  %i.cr = icmp eq i8 %i.cq, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4234
  br i1 %i.cr, label %bb.x, label %.thread25

bb.x:                                             ; preds = %.split, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit
  %i.cs = call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v, ptr noundef nonnull align 8 %1) ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread25, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !21 ; 2 uses
  %i.cv = add i32 %i.cs, -1
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !21, !noundef !21
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %i.cz, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !range !1341, !alias.scope !4281, !noalias !4284, !noundef !21
  %.off.i = add nsw i32 %i.dc, -14
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.aa, label %.thread25

bb.aa:                                            ; preds = %bb.z
  %i.dd = call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v) ; 25 uses
  %.not.i14 = icmp eq ptr %i.dd, null
  br i1 %.not.i14, label %.thread25, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  %i.df = load i8, ptr %i.de, align 4, !range !1915, !noundef !21 ; 3 uses
  %i.dg = icmp samesign ugt i8 %i.df, 1
  %i.dh = zext nneg i8 %i.df to i64
  %i.di = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dj = select i1 %i.dg, i64 %i.di, i64 0
  switch i64 %i.dj, label %.thread25 [
    i64 16, label %bb.ad
    i64 17, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i = phi i64 [ 72, %bb.ac ], [ 36, %bb.ab ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sink.i
  %.sroa.04.0.i = load i8, ptr %i.dk, align 4, !range !1083, !noundef !21
  %i.dl = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.dl, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit, label %.thread25

bb.ae:                                            ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #35
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit: ; preds = %bb.ad
  %i.dm = add nsw i8 %i.df, -17
  %switch = icmp ult i8 %i.dm, 2
  br i1 %switch, label %bb.af, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit

bb.af:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !noundef !21 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 115292150460684698
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp eq i64 %i.do, 1
  br i1 %i.dq, label %2, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit

2:                                                ; preds = %bb.af
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 920
  %4 = load ptr, ptr %3, align 8, !nonnull !21, !align !22, !noundef !21
  switch i64 %i.di, label %5 [
    i64 0, label %6
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 3, label %8
    i64 4, label %10
    i64 5, label %11
    i64 6, label %10
    i64 7, label %10
    i64 8, label %13
    i64 9, label %15
    i64 10, label %17
    i64 11, label %19
    i64 12, label %21
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 14, label %23
    i64 15, label %25
    i64 16, label %27
    i64 17, label %29
    i64 18, label %31
    i64 19, label %33
    i64 20, label %35
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 24, label %10
  ]

5:                                                ; preds = %2
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

10:                                               ; preds = %2, %2, %2, %2
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

17:                                               ; preds = %2
  %18 = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

21:                                               ; preds = %2
  %22 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

23:                                               ; preds = %2
  %24 = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

25:                                               ; preds = %2
  %26 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

27:                                               ; preds = %2
  %28 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

29:                                               ; preds = %2
  %30 = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

31:                                               ; preds = %2
  %32 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

33:                                               ; preds = %2
  %34 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

35:                                               ; preds = %2
  %36 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i: ; preds = %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %10, %8, %6, %2, %2, %2, %2, %2, %2
  %.sroa.0.0.in.i.i = phi ptr [ %i.dd, %2 ], [ %i.dd, %2 ], [ %i.dd, %2 ], [ %i.dd, %2 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %i.dd, %2 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %7, %6 ], [ %i.dd, %2 ], [ %12, %11 ], [ %i.dn, %10 ], [ %9, %8 ]
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.in.i.i, align 8, !noalias !4286, !noundef !21
  %i.dr = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i32 noundef %.sroa.0.0.i.i), !noalias !4290 ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0      ; 3 uses
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %.idx = mul nuw nsw i64 %i.dt, 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx ; 3 uses
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.dw = icmp eq ptr %i.dy, %i.du
  br i1 %i.dw, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, %bb.ag
  %i.dx = phi ptr [ %i.dy, %bb.ag ], [ %i.ds, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  %i.ea = load i8, ptr %i.dz, align 2, !range !3927, !noalias !4291, !noundef !21 ; 2 uses
  %i.eb = and i8 %i.ea, 125
  %switch.selectcmp.i.not.i.i = icmp eq i8 %i.eb, 12
  br i1 %switch.selectcmp.i.not.i.i, label %bb.ag, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i: ; preds = %.lr.ph
  %.not7.i = icmp ne i8 %i.ea, 103
  %i.ec = icmp eq ptr %i.dy, %i.du
  %or.cond = select i1 %.not7.i, i1 true, i1 %i.ec
  br i1 %or.cond, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph125

.preheader.i:                                     ; preds = %.lr.ph125
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ef, i64 12 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.du
  br i1 %i.ee, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph125

.lr.ph125:                                        ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i, %.preheader.i
  %i.ef = phi ptr [ %i.ed, %.preheader.i ], [ %i.dy, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  %i.eh = load i8, ptr %i.eg, align 2, !range !3927, !noalias !4294, !noundef !21 ; 2 uses
  %i.ei = and i8 %i.eh, 125
  %switch.selectcmp.i.not.i12.i = icmp eq i8 %i.ei, 12
  br i1 %switch.selectcmp.i.not.i12.i, label %.preheader.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i: ; preds = %.lr.ph125
  switch i8 %i.eh, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit [
    i8 83, label %bb.ah
    i8 86, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i
  %i.ej = load i32, ptr %i.dx, align 4, !noalias !4290, !noundef !21 ; 2 uses
  %i.ek = load i32, ptr %i.ef, align 4, !noalias !4290, !noundef !21 ; 2 uses
  %.not9.i = icmp ugt i32 %i.ej, %i.ek
  br i1 %.not9.i, label %bb.ai, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, !prof !239

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #35, !noalias !4290
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit: ; preds = %bb.ag, %.preheader.i, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i, %bb.ah, %bb.af, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit
  %.sroa.8.0 = phi i32 [ undef, %bb.af ], [ undef, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit ], [ undef, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ], [ %i.ek, %bb.ah ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ], [ undef, %.preheader.i ], [ undef, %bb.ag ]
  %.sroa.6.0 = phi i32 [ undef, %bb.af ], [ undef, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit ], [ undef, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ], [ %i.ej, %bb.ah ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ], [ undef, %.preheader.i ], [ undef, %bb.ag ]
  %.sroa.0.0 = phi i32 [ 0, %bb.af ], [ 0, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit ], [ 0, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ], [ 1, %bb.ah ], [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i ], [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ], [ 0, %.preheader.i ], [ 0, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4297
  store i64 0, ptr %i.j, align 8, !noalias !4297
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4297
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4297
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1610612768, ptr %i.el, align 8, !noalias !4297
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !4297
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !4297
  store ptr %i.j, ptr %i.i, align 8, !noalias !4297
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1087, ptr %i.em, align 8, !noalias !4297
  %i.en = invoke noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ak unwind label %bb.aj, !noalias !4301

bb.aj:                                            ; preds = %bb.al, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #34
          to label %common.resume unwind label %bb.am, !noalias !4301

bb.ak:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit
  br i1 %i.en, label %bb.al, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !239

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1088, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #35
          to label %.noexc.i unwind label %bb.aj, !noalias !4301

.noexc.i:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4301
  unreachable

common.resume:                                    ; preds = %bb.be, %bb.an, %bb.aw, %bb.bb, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.fo, %bb.aw ], [ %i.eo, %bb.aj ], [ %.pn.pn.i.i, %bb.an ], [ %i.ft, %bb.bb ], [ %i.fz, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4297
  %i.eq = trunc nuw nsw i32 %.sroa.0.0 to i8
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.es = load i32, ptr %i.er, align 8, !noundef !21
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !noundef !21
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !21, !align !22, !noundef !21 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i8 %i.eq, ptr %.sroa.4.0..sroa_idx18, align 8, !noalias !4306
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtCs9BeaGo73rC4_16ruff_source_file10SourceFileE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB2k_14LazySourceFile3get0E0zEB2o_(ptr noundef nonnull align 8 %i.ex, ptr noundef nonnull align 8 %i.ew)
          to label %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i unwind label %bb.bb, !noalias !4302

_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i: ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit
  %.val.i = load ptr, ptr %i.ey, align 8, !noalias !4302 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4311
  store ptr %i.h, ptr %i.d, align 8, !noalias !4311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4311
  store ptr %i.d, ptr %i.c, align 8, !noalias !4311
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4311
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @945, ptr noundef nonnull %i.c)
          to label %bb.ap unwind label %bb.ao, !noalias !4302

bb.an:                                            ; preds = %bb.az, %.thread.i.i, %bb.ao
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.fr, %bb.az ], [ %i.fk, %.thread.i.i ], [ %i.ez, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #34
          to label %common.resume unwind label %bb.ay, !noalias !4302

bb.ao:                                            ; preds = %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4310
  call void @llvm.experimental.noalias.scope.decl(metadata !4315)
  call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  %i.fa = load i8, ptr %.sroa.4.0..sroa_idx18, align 8, !range !1083, !alias.scope !4320, !noalias !4321, !noundef !21
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 -1, ptr %i.f, align 8, !alias.scope !4315, !noalias !4322
  br label %_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation9fix_title.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4323
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.az, !noalias !4302

.noexc.i.i:                                       ; preds = %bb.ar
  %i.fc = load i64, ptr %i.b, align 8, !range !237, !noalias !4323, !noundef !21
  %i.fd = trunc nuw i64 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !238, !noalias !4323, !noundef !21 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fd, label %bb.as, label %_RNCNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB4_29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation9fix_title0Bc_.exit.i.i.i, !prof !239

bb.as:                                            ; preds = %.noexc.i.i
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !4323
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ff, i64 %i.fh) #35
          to label %.noexc9.i.i unwind label %bb.az, !noalias !4302

.noexc9.i.i:                                      ; preds = %bb.as
  unreachable

_RNCNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB4_29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation9fix_title0Bc_.exit.i.i.i: ; preds = %.noexc.i.i
  %i.fi = load ptr, ptr %i.fg, align 8, !noalias !4323, !nonnull !21, !noundef !21 ; 2 uses
  %i.fj = icmp samesign ugt i64 %i.ff, 25
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.fi, ptr noundef nonnull align 1 dereferenceable(26) @87, i64 26, i1 false), !noalias !4326
  store i64 %i.ff, ptr %i.f, align 8, !alias.scope !4315, !noalias !4322
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fi, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4315, !noalias !4322
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 26, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !4315, !noalias !4322
  br label %_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation9fix_title.exit.i.i

.thread.i.i:                                      ; preds = %bb.au
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an
end_hunk_0
