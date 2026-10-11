Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.14?download=true
inline.NumInlined: 4475
inline.NumDeleted: 1583
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevar:bb.a
  %i.ae = load i8, ptr %i.ad, align 1, !range !34, !alias.scope !7269, !noalias !7270, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7269, !noalias !7270, !noundef !4
  %i.ah = and i64 %i.ag, 72057594037927935
  %i.ai = icmp ult i8 %i.ae, -48
  %i.aj = zext i8 %i.ae to i64
  %i.ak = add nsw i64 %i.aj, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.ai, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  %i.al = icmp ugt i8 %i.ae, -49
  %i.am = load ptr, ptr %i.ac, align 8, !alias.scope !7269, !noalias !7270
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.al, ptr %i.am, ptr %i.ac ; 2 uses
  %i.an = load i8, ptr %i.x, align 1, !range !34, !alias.scope !7271, !noalias !7272, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.y, align 8, !alias.scope !7271, !noalias !7272, !noundef !4
  %i.ap = and i64 %i.ao, 72057594037927935
  %i.aq = icmp ult i8 %i.an, -48
  %i.ar = zext i8 %i.an to i64
  %i.as = add nsw i64 %i.ar, -192
  %spec.store.select.i4.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 16)
  %.sroa.0.0.i5.i.i.i.i.i = select i1 %i.aq, i64 %spec.store.select.i4.i.i.i.i.i, i64 %i.ap
  %i.at = icmp ugt i8 %i.an, -49
  %i.au = load ptr, ptr %0, align 8, !alias.scope !7271, !noalias !7272
  %.sroa.01.0.i6.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %0 ; 2 uses
  %i.av = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i.i
  br i1 %i.av, label %bb.j, label %.backedge.i

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i.i
  br i1 %i.aw, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit, label %.split.i

.split.i:                                         ; preds = %bb.j
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i), !noalias !7266
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.i, %bb.h
  %.not19.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not19.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit, label %bb.h

bb.k:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.az = load i32, ptr %i.ay, align 4, !noundef !4 ; 2 uses
  %.not18 = icmp eq i32 %i.az, 0
  br i1 %.not18, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7274)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !7275, !noalias !7276 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !7275, !noalias !7276, !nonnull !4
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.o, %bb.l
  %i.be = phi i32 [ %i.bk, %bb.o ], [ %i.az, %bb.l ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.bf = add i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64                   ; 3 uses
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #41, !noalias !7277
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bg ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !noalias !7277, !noundef !4
  %i.bl = load i64, ptr %i.bi, align 8, !range !7, !noalias !7278, !noundef !4
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #41, !noalias !7273
  unreachable

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !7278, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 84
  %i.bq = load i8, ptr %i.bp, align 4, !range !24, !noundef !4
  %i.br = icmp eq i8 %i.bq, 6
  br i1 %i.br, label %bb.q, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit

bb.q:                                             ; preds = %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !range !10, !noundef !4
  %i.bv = icmp eq i32 %i.bu, 16
  br i1 %i.bv, label %bb.r, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.by = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, ptr noundef nonnull align 8 %i.bx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 7)
  %.21 = select i1 %i.by, ptr %i.i, ptr null
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters10filter_map19filter_map_try_foldRBJ_RNtBL_16TypeParamTypeVaruINtNtNtBa_3ops12control_flow11ControlFlowuENvMs1u_BL_BJ_11as_type_varNCINvNvB1D_3any5checkB3p_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self14custom_typevars_0E0E0B3O_EB5w_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_self31custom_type_var_instead_of_self(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !range !14, !noundef !4 ; 2 uses
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp ugt i64 %i.j, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.n ; 3 uses
  %i.s = tail call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h) ; 11 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  %i.u = load i8, ptr %i.t, align 4, !range !24, !noundef !4
  %i.v = icmp samesign ugt i8 %i.u, 1
  br i1 %i.v, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.02.0.copyload.i = load i8, ptr %i.w, align 1, !noalias !7285
  %i.x = trunc nuw i8 %.sroa.02.0.copyload.i to i1
  br i1 %i.x, label %bb.f, label %.thread5.i

bb.f:                                             ; preds = %bb.e
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.54.0.copyload.i = load i8, ptr %.sroa.54.0..sroa_idx.i, align 1, !noalias !7285
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.43.0.copyload.i = load i8, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !7285
  %.sroa.43.0.copyload.fr.i = freeze i8 %.sroa.43.0.copyload.i ; 2 uses
  %i.y = icmp eq i8 %.sroa.43.0.copyload.fr.i, 3
  %i.z = icmp ugt i8 %.sroa.54.0.copyload.i, 10
  %i.aa = icmp ugt i8 %.sroa.43.0.copyload.fr.i, 2
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa
  br i1 %i.ab, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit, label %.thread5.i

.thread5.i:                                       ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !7285, !nonnull !4, !align !8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !7285, !nonnull !4, !align !8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2412
  %i.ah = load i8, ptr %i.ag, align 4, !range !6, !noalias !7285, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.thread5.i, %bb.f
  %.sroa.8.0.ph = phi i64 [ 6, %bb.f ], [ 17, %.thread5.i ]
  %.sroa.7.0.ph = phi ptr [ @254, %bb.f ], [ @331, %.thread5.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.8.0.ph, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @456, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 4, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !align !8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an) ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ar = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as), !noalias !7286 ; 2 uses
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  %i.aw = extractvalue { ptr, ptr } %i.at, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = icmp eq ptr %i.aw, %i.av
  br i1 %i.ax, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i45.ph = phi ptr [ %i.ao, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i45.ph, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !align !8, !noundef !4 ; 5 uses
  %.not34 = icmp eq ptr %i.az, null
  br i1 %.not34, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.az, align 8, !range !10, !noundef !4
  %i.bb = icmp eq i32 %i.ba, 19
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = tail call { i64, ptr } @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21parse_type_annotation(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.sroa.09.0 = phi ptr [ %i.bi, %bb.k ], [ %i.az, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bk = load i8, ptr %i.bj, align 8, !range !36, !noundef !4
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bn = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
  %i.bo = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !4
  %i.bq = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract(ptr noundef nonnull align 8 %i.bn, i64 noundef %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h)
  br i1 %i.bq, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
  %i.bs = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_overload(ptr noundef nonnull align 8 %i.br, i64 noundef %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h)
  br i1 %i.bu, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bm, align 8, !nonnull !4, !align !8, !noundef !4
  %i.bw = tail call noundef i8 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze5class12is_metaclass(ptr noundef nonnull align 8 %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h)
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %i.ca = load i8, ptr %i.bz, align 1, !range !34, !alias.scope !7287, !noundef !4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !7287, !noundef !4
  %i.cd = and i64 %i.cc, 72057594037927935
  %i.ce = icmp ult i8 %i.ca, -48
  %i.cf = zext i8 %i.ca to i64
  %i.cg = add nsw i64 %i.cf, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 16)
  %.sroa.0.0.i46 = select i1 %i.ce, i64 %spec.store.select.i, i64 %i.cd
  %i.ch = icmp ugt i8 %i.ca, -49
  %i.ci = load ptr, ptr %i.by, align 8, !alias.scope !7287
  %.sroa.01.0.i = select i1 %i.ch, ptr %i.ci, ptr %i.by
  %i.cj = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
  %i.ck = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4
  %i.cm = getelementptr i8, ptr %0, i64 1024
  %.val41 = load ptr, ptr %i.cm, align 8, !nonnull !4, !align !8, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val41, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !align !8, !noundef !4 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1272
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1280
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1296
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 1304
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  %i.cx = tail call noundef i8 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type8classify(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i46, ptr noundef nonnull align 8 %i.cj, i64 noundef %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cq, i64 noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  switch i8 %i.cx, label %default.unreachable68 [
    i8 0, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split.sink.split
    i8 1, label %bb.r
    i8 2, label %bb.q
    i8 3, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split.sink.split
    i8 4, label %bb.q
  ]

default.unreachable68:                            ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %storemerge = phi i64 [ 0, %bb.q ], [ 1, %bb.p ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.09.0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.al, ptr %i.cz, align 8
  store i64 %storemerge, ptr %i.f, align 8
  %i.da = call fastcc noundef align 8 ptr @_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules24custom_type_var_for_selfNtB4_6Method14custom_typevar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h, i32 noundef %i.l) ; 3 uses
  %.not35 = icmp eq ptr %i.da, null
  br i1 %.not35, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.da, ptr %i.e, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !align !8, !noundef !4 ; 2 uses
  %.not36 = icmp eq ptr %i.dc, null
  br i1 %.not36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = tail call fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %i.dc)
  %i.de = extractvalue { i32, i32 } %i.dd, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.dg = getelementptr i8, ptr %i.df, i64 28
  %.val42 = load i32, ptr %i.dg, align 4, !noundef !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.016.0 = phi i32 [ %i.de, %bb.t ], [ %.val42, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dh = getelementptr i8, ptr %0, i64 1000
  %.val = load ptr, ptr %i.dh, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.di = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !4
  %i.dl = tail call { ptr, i64 } @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.da, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.dn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.do = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !16, !noundef !4 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dp, label %bb.w, label %bb.x, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.dt = load i64, ptr %i.ds, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #41
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dv = icmp ule i64 %i.dn, %i.dr
  tail call void @llvm.assume(i1 %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not37 = icmp eq i64 %i.dn, 0
  br i1 %.not37, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  store i64 %i.dr, ptr %i.c, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.du, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.dn, ptr %.sroa.524.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !noundef !4 ; 2 uses
  %.not38 = icmp ugt i32 %i.dx, %.sroa.016.0
  br i1 %.not38, label %bb.aa, label %bb.ab, !prof !5

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @504) #41
          to label %bb.ac unwind label %bb.ah

bb.ab:                                            ; preds = %bb.y
  call void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules24custom_type_var_for_self20CustomTypeVarForSelfEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.dx, i32 noundef %.sroa.016.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.0.0.i45.ph, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports20add_required_imports:bb.a

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.an = load i64, ptr %i.am, align 8, !range !9, !alias.scope !7837, !noundef !4
  %.not3.i.i = icmp ne i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !7837
  %i.aq = icmp eq i64 %i.ap, 10
  %or.cond.i.i = select i1 %.not3.i.i, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.i, label %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !7837, !noundef !4
  %i.at = icmp eq i64 %i.as, 10
  br i1 %i.at, label %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.i, label %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i

_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.i: ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i64 [ 56, %bb.f ], [ 16, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink.i.i
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !7837, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 7310034288222035807
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i64
  %i.bb = xor i64 %i.ba, 24415
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, label %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i

_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i: ; preds = %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.i, %bb.g, %bb.f, %bb.d
  %i.bg = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r), !noalias !7834 ; 6 uses
  %i.bh = load ptr, ptr %i.r, align 8, !noalias !7834, !nonnull !4, !noundef !4
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !7834, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %.idx.i = mul nuw nsw i64 %i.bi, 88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7838)
  %.not.i3.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i3.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i
  %i.bk = load i64, ptr %i.w, align 8, !range !9, !alias.scope !7839, !noalias !7840, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.bk, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !7841, !noalias !7840 ; 3 uses
  %.not8.i.i.i.i = icmp eq i64 %i.bm, -1          ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7841, !noalias !7840 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !7841, !noalias !7840, !nonnull !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !7841, !noalias !7840 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !7841, !noalias !7840 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !7841, !noalias !7840, !nonnull !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !7841, !noalias !7840 ; 3 uses
  %i.ca = load ptr, ptr %i.bt, align 8, !alias.scope !7841, !noalias !7840
  %.fr.i.i = freeze ptr %i.ca                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !7841, !noalias !7840
  %.fr.i12.i.i.i.i = freeze i64 %i.cc             ; 5 uses
  %i.cd = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.ce = inttoptr i64 %i.bz to ptr
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not35.i.i.i.i.i.i = icmp eq ptr %.fr.i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not35.i.i.i.i.i.i, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i
  %i.cf = phi ptr [ %i.cg, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i ], [ %i.bg, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %i.ci = load i8, ptr %i.ch, align 4, !range !24, !noalias !7843, !noundef !4
  %i.cj = icmp eq i8 %i.ci, 17
  br i1 %i.cj, label %bb.h, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i

bb.h:                                             ; preds = %.lr.ph.split.us.split.us.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !7843, !nonnull !4, !noundef !4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !7843, !noundef !4 ; 2 uses
  %.idx42.i.i.us.us.i.i = mul nuw nsw i64 %i.cn, 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx42.i.i.us.us.i.i
  %.not.i.i.i.us.us.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.us.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i, label %.lr.ph.split.us.split.us.i.i.i.us.us.i.i

.lr.ph.split.us.split.us.i.i.i.us.us.i.i:         ; preds = %bb.h, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i
  %i.cp = phi ptr [ %i.cq, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i ], [ %i.cl, %bb.h ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 63
  %i.cs = load i8, ptr %i.cr, align 1, !range !34, !alias.scope !7844, !noalias !7845, !noundef !4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !7844, !noalias !7845, !noundef !4
  %i.cv = and i64 %i.cu, 72057594037927935
  %i.cw = icmp ult i8 %i.cs, -48
  %i.cx = zext i8 %i.cs to i64
  %i.cy = add nsw i64 %i.cx, -192
  %spec.store.select.i.i.i.us.us.i.i.i.us.us.i.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 16)
  %.sroa.0.0.i.i.i.us.us.i.i.i.us.us.i.i = select i1 %i.cw, i64 %spec.store.select.i.i.i.us.us.i.i.i.us.us.i.i, i64 %i.cv
  %i.cz = icmp eq i64 %.sroa.0.0.i.i.i.us.us.i.i.i.us.us.i.i, %.fr.i12.i.i.i.i
  br i1 %i.cz, label %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i.i.i.us.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i

_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i.i.i.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i.us.us.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  %i.db = icmp ugt i8 %i.cs, -49
  %i.dc = load ptr, ptr %i.da, align 8, !alias.scope !7844, !noalias !7845
  %.sroa.01.0.i.i.i.us.us.i.i.i.us.us.i.i = select i1 %i.db, ptr %i.dc, ptr %i.da
  %bcmp.i.i.us.us.i.i.i.us.us.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.us.us.i.i.i.us.us.i.i, ptr nonnull %i.cd, i64 %.fr.i12.i.i.i.i), !noalias !7845
  %i.dd = icmp eq i32 %bcmp.i.i.us.us.i.i.i.us.us.i.i, 0
  br i1 %i.dd, label %bb.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i

bb.i:                                             ; preds = %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i.i.i.us.us.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 23
  %i.df = load i8, ptr %i.de, align 1, !range !37, !noalias !7845, !noundef !4
  %.not.i.us.us.i.i.i.us.us.i.i = icmp eq i8 %i.df, -1
  br i1 %.not.i.us.us.i.i.i.us.us.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i: ; preds = %bb.i, %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i.i.i.us.us.i.i, %.lr.ph.split.us.split.us.i.i.i.us.us.i.i
  %.not52.i.i.i.us.us.i.i = icmp eq ptr %i.cq, %i.co
  br i1 %.not52.i.i.i.us.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i, label %.lr.ph.split.us.split.us.i.i.i.us.us.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_import0Bb_.exit.us.us.i.i.i.us.us.i.i, %bb.h, %.lr.ph.split.us.split.us.i.i
  %.not37.i.i = icmp eq ptr %i.cg, %i.bj
  br i1 %.not37.i.i, label %.loopexit.i, label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i
  %i.dg = phi ptr [ %i.dh, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i ], [ %i.bg, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 84
  %i.dj = load i8, ptr %i.di, align 4, !range !24, !noalias !7843, !noundef !4
  %i.dk = icmp eq i8 %i.dj, 17
  br i1 %i.dk, label %bb.j, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i

bb.j:                                             ; preds = %.lr.ph.split.us.split.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !7843, !nonnull !4, !noundef !4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noalias !7843, !noundef !4 ; 2 uses
  %.idx42.i.i.us.i.i = mul nuw nsw i64 %i.do, 80
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx42.i.i.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i, label %.lr.ph.split.split.i.i.i.us.i.i

.lr.ph.split.split.i.i.i.us.i.i:                  ; preds = %bb.j, %.backedge.i.i.i.us.i.i
  %i.dq = phi ptr [ %i.dr, %.backedge.i.i.i.us.i.i ], [ %i.dm, %bb.j ] ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 80 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 63
  %i.dt = load i8, ptr %i.ds, align 1, !range !34, !alias.scope !7844, !noalias !7845, !noundef !4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !7844, !noalias !7845, !noundef !4
  %i.dw = and i64 %i.dv, 72057594037927935
  %i.dx = icmp ult i8 %i.dt, -48
  %i.dy = zext i8 %i.dt to i64
  %i.dz = add nsw i64 %i.dy, -192
  %spec.store.select.i.i.i.i.i.i.us.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.us.i.i = select i1 %i.dx, i64 %spec.store.select.i.i.i.i.i.i.us.i.i, i64 %i.dw
  %i.ea = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.us.i.i, %.fr.i12.i.i.i.i
  br i1 %i.ea, label %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i.i.i.us.i.i, label %.backedge.i.i.i.us.i.i

_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i.i.i.us.i.i: ; preds = %.lr.ph.split.split.i.i.i.us.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 48 ; 2 uses
  %i.ec = icmp ugt i8 %i.dt, -49
  %i.ed = load ptr, ptr %i.eb, align 8, !alias.scope !7844, !noalias !7845
  %.sroa.01.0.i.i.i.i.i.i.us.i.i = select i1 %i.ec, ptr %i.ed, ptr %i.eb
  %bcmp.i.i.i.i.i.us.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i.i.us.i.i, ptr nonnull %i.cd, i64 %.fr.i12.i.i.i.i), !noalias !7845
  %i.ee = icmp eq i32 %bcmp.i.i.i.i.i.us.i.i, 0
  br i1 %i.ee, label %bb.k, label %.backedge.i.i.i.us.i.i

bb.k:                                             ; preds = %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i.i.i.us.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 23
  %i.eg = load i8, ptr %i.ef, align 1, !range !37, !noalias !7845, !noundef !4 ; 4 uses
  %.not.i.i.i.i.us.i.i = icmp eq i8 %i.eg, -1
  br i1 %.not.i.i.i.i.us.i.i, label %.backedge.i.i.i.us.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !7846, !noalias !7845, !noundef !4
  %i.ej = and i64 %i.ei, 72057594037927935
  %i.ek = icmp ult i8 %i.eg, -48
  %i.el = zext i8 %i.eg to i64
  %i.em = add nsw i64 %i.el, -192
  %spec.store.select.i.i.i.i.i.us.i.i = call i64 @llvm.umin.i64(i64 %i.em, i64 16)
  %.sroa.0.0.i36.i.i.i.i.us.i.i = select i1 %i.ek, i64 %spec.store.select.i.i.i.i.i.us.i.i, i64 %i.ej
  %i.en = icmp eq i64 %.sroa.0.0.i36.i.i.i.i.us.i.i, %i.bm
  br i1 %i.en, label %.split.i.i.i.us.i.i, label %.backedge.i.i.i.us.i.i

.split.i.i.i.us.i.i:                              ; preds = %bb.l
  %i.eo = icmp ugt i8 %i.eg, -49
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !7846, !noalias !7845
  %.sroa.01.0.i.i.i.i.i.us.i.i = select i1 %i.eo, ptr %i.eq, ptr %i.ep ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.us.i.i) ]
  %bcmp.i.i.i.i.us.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i.i.i.us.i.i, ptr nonnull %i.ce, i64 %i.bm), !noalias !7845
  %i.er = icmp eq i32 %bcmp.i.i.i.i.us.i.i, 0
  br i1 %i.er, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, label %.backedge.i.i.i.us.i.i

.backedge.i.i.i.us.i.i:                           ; preds = %.split.i.i.i.us.i.i, %bb.l, %bb.k, %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i.i.i.us.i.i, %.lr.ph.split.split.i.i.i.us.i.i
  %.not49.i.i.i.us.i.i = icmp eq ptr %i.dr, %i.dp
  br i1 %.not49.i.i.i.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i, label %.lr.ph.split.split.i.i.i.us.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i: ; preds = %.backedge.i.i.i.us.i.i, %bb.j, %.lr.ph.split.us.split.i.i
  %.not36.i.i = icmp eq ptr %i.dh, %i.bj
  br i1 %.not36.i.i, label %.loopexit.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.not35.i.i13.i.i.i.i = icmp eq i64 %.fr.i12.i.i.i.i, -1
  br i1 %.not35.i.i13.i.i.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i
  %i.es = phi ptr [ %i.et, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i ], [ %i.bg, %.lr.ph.split.i.i ] ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 84
  %i.ev = load i8, ptr %i.eu, align 4, !range !24, !noalias !7843, !noundef !4
  %i.ew = icmp eq i8 %i.ev, 18
  br i1 %i.ew, label %bb.m, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i

bb.m:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 47
  %i.ey = load i8, ptr %i.ex, align 1, !range !37, !noalias !7843, !noundef !4 ; 4 uses
  %.not6.i.i.us.i.i = icmp eq i8 %i.ey, -1
  br i1 %.not6.i.i.us.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.fa = icmp ugt i8 %i.ey, -49
  %i.fb = load ptr, ptr %i.ez, align 8, !alias.scope !7847, !noalias !7843
  %.sroa.01.0.i.i.i.us.i.i = select i1 %i.fa, ptr %i.fb, ptr %i.ez ; 2 uses
  br i1 %.not8.i.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fc = icmp ult i8 %i.ey, -48
  %i.fd = zext i8 %i.ey to i64
  %i.fe = add nsw i64 %i.fd, -192
  %spec.store.select.i.i.i.us.i.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 16)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !7847, !noalias !7843, !noundef !4
  %i.fh = and i64 %i.fg, 72057594037927935
  %.sroa.0.0.i.i.i.us.i.i = select i1 %i.fc, i64 %spec.store.select.i.i.i.us.i.i, i64 %i.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.us.i.i) ]
  %i.fi = icmp eq i64 %.sroa.0.0.i.i.i.us.i.i, %i.bo
  br i1 %i.fi, label %bb.p, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i

bb.p:                                             ; preds = %bb.o
  %bcmp.i.i.us.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i.us.i.i, ptr nonnull %i.bq, i64 %i.bo), !noalias !7843
  %i.fj = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.fj, label %bb.r, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %.not8.i.i.i.i, label %bb.r, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 68
  %i.fl = load i32, ptr %i.fk, align 4, !noalias !7843, !noundef !4
  %i.fm = icmp eq i32 %i.fl, %i.bs
  br i1 %i.fm, label %bb.s, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i

bb.s:                                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !7843, !nonnull !4, !noundef !4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !7843, !noundef !4 ; 2 uses
  %.idx.i.i.us.i.i = mul nuw nsw i64 %i.fq, 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i.i.us.i.i
  %.not.i10.i.i.us.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i10.i.i.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i, label %.lr.ph.split.us.split.us.i32.i.i.us.i.i

.lr.ph.split.us.split.us.i32.i.i.us.i.i:          ; preds = %bb.s, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i
  %i.fs = phi ptr [ %i.ft, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i ], [ %i.fo, %bb.s ] ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 80 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 63
  %i.fv = load i8, ptr %i.fu, align 1, !range !34, !alias.scope !7848, !noalias !7849, !noundef !4 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !7848, !noalias !7849, !noundef !4
  %i.fy = and i64 %i.fx, 72057594037927935
  %i.fz = icmp ult i8 %i.fv, -48
  %i.ga = zext i8 %i.fv to i64
  %i.gb = add nsw i64 %i.ga, -192
  %spec.store.select.i.i.i.us.us.i33.i.i.us.i.i = call i64 @llvm.umin.i64(i64 %i.gb, i64 16)
  %.sroa.0.0.i.i.i.us.us.i34.i.i.us.i.i = select i1 %i.fz, i64 %spec.store.select.i.i.i.us.us.i33.i.i.us.i.i, i64 %i.fy
  %i.gc = icmp eq i64 %.sroa.0.0.i.i.i.us.us.i34.i.i.us.i.i, %i.bv
  br i1 %i.gc, label %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i36.i.i.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i

_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i36.i.i.us.i.i: ; preds = %.lr.ph.split.us.split.us.i32.i.i.us.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  %i.ge = icmp ugt i8 %i.fv, -49
  %i.gf = load ptr, ptr %i.gd, align 8, !alias.scope !7848, !noalias !7849
  %.sroa.01.0.i.i.i.us.us.i37.i.i.us.i.i = select i1 %i.ge, ptr %i.gf, ptr %i.gd
  %bcmp.i.i.us.us.i38.i.i.us.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.us.us.i37.i.i.us.i.i, ptr nonnull %i.bx, i64 %i.bv), !noalias !7849
  %i.gg = icmp eq i32 %bcmp.i.i.us.us.i38.i.i.us.i.i, 0
  br i1 %i.gg, label %bb.t, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i

bb.t:                                             ; preds = %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i36.i.i.us.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 23
  %i.gi = load i8, ptr %i.gh, align 1, !range !37, !noalias !7849, !noundef !4
  %.not.i.us.us.i39.i.i.us.i.i = icmp eq i8 %i.gi, -1
  br i1 %.not.i.us.us.i39.i.i.us.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i: ; preds = %bb.t, %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.us.us.i36.i.i.us.i.i, %.lr.ph.split.us.split.us.i32.i.i.us.i.i
  %.not52.i35.i.i.us.i.i = icmp eq ptr %i.ft, %i.fr
  br i1 %.not52.i35.i.i.us.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i, label %.lr.ph.split.us.split.us.i32.i.i.us.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports15includes_imports_0Bb_.exit.us.us.i.i.i.us.i.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.lr.ph.split.split.us.i.i
  %.not35.i.i = icmp eq ptr %i.et, %i.bj
  br i1 %.not35.i.i, label %.loopexit.i, label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i
  %i.gj = phi ptr [ %i.gk, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i ], [ %i.bg, %.lr.ph.split.i.i ] ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 84
  %i.gm = load i8, ptr %i.gl, align 4, !range !24, !noalias !7843, !noundef !4
  %i.gn = icmp eq i8 %i.gm, 18
  br i1 %i.gn, label %bb.u, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i

bb.u:                                             ; preds = %.lr.ph.split.split.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 47
  %i.gp = load i8, ptr %i.go, align 1, !range !37, !noalias !7843, !noundef !4 ; 4 uses
  %.not6.i.i.i.i = icmp eq i8 %i.gp, -1
  br i1 %.not6.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gr = icmp ugt i8 %i.gp, -49
  %i.gs = load ptr, ptr %i.gq, align 8, !alias.scope !7847, !noalias !7843
  %.sroa.01.0.i.i.i.i.i = select i1 %i.gr, ptr %i.gs, ptr %i.gq ; 2 uses
  br i1 %.not8.i.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i, label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i.i.i, label %bb.x, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 68
  %i.gu = load i32, ptr %i.gt, align 4, !noalias !7843, !noundef !4
  %i.gv = icmp eq i32 %i.gu, %i.bs
  br i1 %i.gv, label %bb.aa, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i

bb.y:                                             ; preds = %bb.v
  %i.gw = icmp ult i8 %i.gp, -48
  %i.gx = zext i8 %i.gp to i64
  %i.gy = add nsw i64 %i.gx, -192
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gy, i64 16)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !7847, !noalias !7843, !noundef !4
  %i.hb = and i64 %i.ha, 72057594037927935
  %.sroa.0.0.i.i.i.i.i = select i1 %i.gw, i64 %spec.store.select.i.i.i.i.i, i64 %i.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i) ]
  %i.hc = icmp eq i64 %.sroa.0.0.i.i.i.i.i, %i.bo
  br i1 %i.hc, label %bb.z, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i

bb.z:                                             ; preds = %bb.y
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i.i.i, ptr nonnull %i.bq, i64 %i.bo), !noalias !7843
  %i.hd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.hd, label %bb.x, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i

bb.aa:                                            ; preds = %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !7843, !nonnull !4, !noundef !4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !7843, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.hh, 80
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i.i.i
  %.not.i10.i.i.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i10.i.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i, label %.lr.ph.split.split.i14.i.i.i.i

.lr.ph.split.split.i14.i.i.i.i:                   ; preds = %bb.aa, %.backedge.i17.i.i.i.i
  %i.hj = phi ptr [ %i.hk, %.backedge.i17.i.i.i.i ], [ %i.hf, %bb.aa ] ; 7 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 80 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 63
  %i.hm = load i8, ptr %i.hl, align 1, !range !34, !alias.scope !7848, !noalias !7849, !noundef !4 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !7848, !noalias !7849, !noundef !4
  %i.hp = and i64 %i.ho, 72057594037927935
  %i.hq = icmp ult i8 %i.hm, -48
  %i.hr = zext i8 %i.hm to i64
  %i.hs = add nsw i64 %i.hr, -192
  %spec.store.select.i.i.i.i15.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hs, i64 16)
  %.sroa.0.0.i.i.i.i16.i.i.i.i = select i1 %i.hq, i64 %spec.store.select.i.i.i.i15.i.i.i.i, i64 %i.hp
  %i.ht = icmp eq i64 %.sroa.0.0.i.i.i.i16.i.i.i.i, %i.bv
  br i1 %i.ht, label %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i23.i.i.i.i, label %.backedge.i17.i.i.i.i

_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i23.i.i.i.i: ; preds = %.lr.ph.split.split.i14.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 48 ; 2 uses
  %i.hv = icmp ugt i8 %i.hm, -49
  %i.hw = load ptr, ptr %i.hu, align 8, !alias.scope !7848, !noalias !7849
  %.sroa.01.0.i.i.i.i24.i.i.i.i = select i1 %i.hv, ptr %i.hw, ptr %i.hu
  %bcmp.i.i.i25.i.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i24.i.i.i.i, ptr nonnull %i.bx, i64 %i.bv), !noalias !7849
  %i.hx = icmp eq i32 %bcmp.i.i.i25.i.i.i.i, 0
  br i1 %i.hx, label %bb.ab, label %.backedge.i17.i.i.i.i

bb.ab:                                            ; preds = %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i23.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 23
  %i.hz = load i8, ptr %i.hy, align 1, !range !37, !noalias !7849, !noundef !4 ; 4 uses
  %.not.i.i26.i.i.i.i = icmp eq i8 %i.hz, -1
  br i1 %.not.i.i26.i.i.i.i, label %.backedge.i17.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !7850, !noalias !7849, !noundef !4
  %i.ic = and i64 %i.ib, 72057594037927935
  %i.id = icmp ult i8 %i.hz, -48
  %i.ie = zext i8 %i.hz to i64
  %i.if = add nsw i64 %i.ie, -192
  %spec.store.select.i.i.i27.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.if, i64 16)
  %.sroa.0.0.i36.i.i28.i.i.i.i = select i1 %i.id, i64 %spec.store.select.i.i.i27.i.i.i.i, i64 %i.ic
  %i.ig = icmp eq i64 %.sroa.0.0.i36.i.i28.i.i.i.i, %i.bz
  br i1 %i.ig, label %.split.i29.i.i.i.i, label %.backedge.i17.i.i.i.i

.split.i29.i.i.i.i:                               ; preds = %bb.ac
  %i.ih = icmp ugt i8 %i.hz, -49
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !7850, !noalias !7849
  %.sroa.01.0.i.i.i30.i.i.i.i = select i1 %i.ih, ptr %i.ij, ptr %i.ii ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i30.i.i.i.i) ]
  %bcmp.i.i31.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i30.i.i.i.i, ptr nonnull %.fr.i.i, i64 %i.bz), !noalias !7851
  %i.ik = icmp eq i32 %bcmp.i.i31.i.i.i.i, 0
  br i1 %i.ik, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, label %.backedge.i17.i.i.i.i

.backedge.i17.i.i.i.i:                            ; preds = %.split.i29.i.i.i.i, %bb.ac, %bb.ab, %_RNvXsp_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRNtNtCscdodAO9FK5_5alloc6string6StringE2eq.exit.i.i23.i.i.i.i, %.lr.ph.split.split.i14.i.i.i.i
  %.not49.i18.i.i.i.i = icmp eq ptr %i.hk, %i.hi
  br i1 %.not49.i18.i.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i, label %.lr.ph.split.split.i14.i.i.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i: ; preds = %.backedge.i17.i.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.lr.ph.split.split.i.i
  %.not34.i.i = icmp eq ptr %i.gk, %i.bj
  br i1 %.not34.i.i, label %.loopexit.i, label %.lr.ph.split.split.i.i

.loopexit.i:                                      ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us25.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.i.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import0Bb_.exit.us.us.i.i, %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7852
  store i64 0, ptr %i.c, align 8, !noalias !7852
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7852
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !7852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7852
  store i32 1610612768, ptr %i.t, align 8, !noalias !7852
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !7852
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !7852
  store ptr %i.c, ptr %i.b, align 8, !noalias !7852
  store ptr @788, ptr %i.u, align 8, !noalias !7852
  %i.il = invoke noundef zeroext i1 @_RNvXs3_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ae unwind label %.loopexit, !noalias !7853

.loopexit:                                        ; preds = %.loopexit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %common.resume.i unwind label %bb.ag, !noalias !7853

bb.ae:                                            ; preds = %.loopexit.i
  br i1 %i.il, label %bb.af, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @789, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @791) #41
          to label %.noexc.i.i unwind label %.loopexit.split-lp, !noalias !7853

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !7853
  unreachable

common.resume.i:                                  ; preds = %bb.ah, %bb.ad
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %.pn.i, %bb.ah ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7852
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules5isort5rules20add_required_imports21MissingRequiredImportEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7834
  %i.in = load ptr, ptr %1, align 8, !noalias !7834, !nonnull !4, !noundef !4
  %i.io = load i64, ptr %i.v, align 8, !noalias !7834, !noundef !4
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.in, i64 noundef %i.io, ptr noundef nonnull align 8 %2)
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ak, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.ip, %bb.ai ], [ %i.iq, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #42
          to label %common.resume.i unwind label %bb.ap

bb.ai:                                            ; preds = %bb.an, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer10add_import(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w, i32 noundef 0)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter8importer8ImporterEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.d) #42
          to label %bb.ah unwind label %bb.ap

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7834
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7834
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter8importer8ImporterEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.d)
          to label %bb.ao unwind label %bb.ai

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7834
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7834
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit

bb.ap:                                            ; preds = %bb.ak, %bb.ah
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit: ; preds = %bb.c, %.split.i29.i.i.i.i, %bb.t, %.split.i.i.i.us.i.i, %bb.i, %bb.b, %_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtB5_12FutureImport16is_future_import.exit.i, %bb.ao
  %i.is = call { ptr, ptr } @_RNvXsm_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtB7_7set_val9SetValZSTENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
  %i.it = extractvalue { ptr, ptr } %i.is, 0      ; 2 uses
  %.not36 = icmp eq ptr %i.it, null
  br i1 %.not36, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules20add_required_imports19add_required_import.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules11import_self11import_self(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 15 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.i = load i8, ptr %i.h, align 1, !range !34, !alias.scope !7858, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7858, !noundef !4
  %i.l = and i64 %i.k, 72057594037927935
  %i.m = icmp ult i8 %i.i, -48
  %i.n = zext i8 %i.i to i64
  %i.o = add nsw i64 %i.n, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 16)
  %.sroa.0.0.i = select i1 %i.m, i64 %spec.store.select.i, i64 %i.l ; 3 uses
  %i.p = icmp ugt i8 %i.i, -49
  %i.q = load ptr, ptr %i.g, align 8, !alias.scope !7858
  %.sroa.01.0.i = select i1 %i.p, ptr %i.q, ptr %i.g
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.01.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.0.0.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 46, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 46, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 1, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.r = call noundef zeroext i1 @_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator5eq_byRSNtNtCscdodAO9FK5_5alloc6string6StringNCINvYB3_BK_2eqB1v_E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7859
  store i64 0, ptr %i.c, align 8, !noalias !7859
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules11import_self16import_from_self:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules11no_self_use11no_self_use(ptr noundef nonnull align 8 captures(address, read_provenance) %0, i32 noundef range(i32 1, 0) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.g = getelementptr i8, ptr %0, i64 184
  %.val56 = load ptr, ptr %i.g, align 8           ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 192
  %.val57 = load i64, ptr %i.h, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7883)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !7883, !noundef !4 ; 2 uses
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.k = phi i32 [ %i.s, %bb.d ], [ %i.j, %bb.a ]
  %i.l = add i32 %i.k, -1
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ugt i64 %.val57, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val56) ]
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %.val56, i64 %i.m ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !36, !noalias !7883, !noundef !4
  switch i8 %i.q, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit [
    i8 1, label %bb.d
    i8 5, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.val57, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #41, !noalias !7883
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.s = load i32, ptr %i.r, align 8, !noalias !7883, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread, label %.lr.ph.i

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !36
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread

bb.e:                                             ; preds = %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !8, !noundef !4 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 23 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !34, !alias.scope !7884, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !7884, !noundef !4
  %i.ae = and i64 %i.ad, 72057594037927935
  %i.af = icmp ult i8 %i.ab, -48
  %i.ag = zext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.ag, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 16)
  %.sroa.0.0.i = select i1 %i.af, i64 %spec.store.select.i, i64 %i.ae
  %i.ai = icmp ugt i8 %i.ab, -49
  %i.aj = load ptr, ptr %i.z, align 8, !alias.scope !7884
  %.sroa.01.0.i = select i1 %i.ai, ptr %i.aj, ptr %i.z
  %i.ak = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.al = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !8, !noundef !4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1272
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1280
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1296
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 1304
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  %i.az = tail call noundef i8 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type8classify(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i, ptr noundef nonnull align 8 %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.as, i64 noundef %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.f, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bb = load ptr, ptr %i.an, align 8, !nonnull !4, !align !8, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1640
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !4 ; 3 uses
  %.not47 = icmp eq ptr %i.bf, null
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1648
  %i.bh = load <2 x i64>, ptr %i.bg, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.09.sroa.0.0 = phi i64 [ 1, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.bi = phi <2 x i64> [ %i.bh, %bb.g ], [ <i64 undef, i64 0>, %bb.f ] ; 2 uses
  store i64 %.sroa.09.sroa.0.0, ptr %i.d, align 8
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.011.sroa.4.0..sroa_idx, align 8
  %.sroa.011.sroa.4.sroa.4.0..sroa.011.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.bf, ptr %.sroa.011.sroa.4.sroa.4.0..sroa.011.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.011.sroa.4.sroa.5.0..sroa.011.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bj = extractelement <2 x i64> %i.bi, i64 0
  store i64 %i.bj, ptr %.sroa.011.sroa.4.sroa.5.0..sroa.011.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.09.sroa.0.0, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  %.sroa.011.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.011.sroa.6.0..sroa_idx, align 8
  %.sroa.011.sroa.6.sroa.4.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.bf, ptr %.sroa.011.sroa.6.sroa.4.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.011.sroa.6.sroa.5.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store <2 x i64> %i.bi, ptr %.sroa.011.sroa.6.sroa.5.0..sroa.011.sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.bk = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type7is_stub(ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.bk, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load i8, ptr %i.aa, align 1, !range !34, !alias.scope !7885, !noundef !4 ; 3 uses
  %i.bm = load i64, ptr %i.ac, align 8, !alias.scope !7885, !noundef !4
  %i.bn = and i64 %i.bm, 72057594037927935
  %i.bo = icmp ult i8 %i.bl, -48
  %i.bp = zext i8 %i.bl to i64
  %i.bq = add nsw i64 %i.bp, -192
  %spec.store.select.i58 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 16)
  %.sroa.0.0.i59 = select i1 %i.bo, i64 %spec.store.select.i58, i64 %i.bn
  %i.br = icmp ugt i8 %i.bl, -49
  %i.bs = load ptr, ptr %i.z, align 8, !alias.scope !7885
  %.sroa.01.0.i60 = select i1 %i.br, ptr %i.bs, ptr %i.z
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_magic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i60, i64 noundef %.sroa.0.0.i59)
  br i1 %i.bt, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.bv = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  %i.bx = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract(ptr noundef nonnull align 8 %i.bu, i64 noundef %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.bx, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.bz = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4
  %i.cb = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_override(ptr noundef nonnull align 8 %i.by, i64 noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.cb, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.cd = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !4
  %i.cf = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_overload(ptr noundef nonnull align 8 %i.cc, i64 noundef %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.cf, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.ch = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !4
  %i.cj = call noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_propertyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings17DecoratorIteratorB1d_EB1l_(ptr noundef nonnull align 8 %i.cg, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.cj, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.cl = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !4
  %i.cn = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility12is_validator(ptr noundef nonnull align 8 %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.cn, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules23flake8_unused_arguments5rules16unused_arguments37is_not_implemented_stub_with_variable(ptr noundef nonnull align 8 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  br i1 %i.co, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cr = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq) ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.cu = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv), !noalias !7886 ; 2 uses
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit
  %i.cy = extractvalue { ptr, ptr } %i.cw, 1
  %i.cz = extractvalue { ptr, ptr } %i.cw, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.da = icmp eq ptr %i.cz, %i.cy
  br i1 %i.da, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i64.ph = phi ptr [ %i.cr, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.cz, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64.ph, i64 40
  %i.dc = call fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.db, ptr nonnull @572, i64 4)
  br i1 %i.dc, label %bb.r, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split

bb.r:                                             ; preds = %bb.q
  %i.dd = call noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12global_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f)
  %i.de = call noundef i32 @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @573, i64 noundef 5) ; 2 uses
  %.not49 = icmp eq i32 %i.de, 0
  br i1 %.not49, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dg = load i64, ptr %i.df, align 8, !noundef !4 ; 2 uses
  %i.dh = add i32 %i.de, -1
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.dl, i64 %i.di ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !range !11, !noundef !4
  %i.dp = icmp eq i32 %i.do, 9
  br i1 %i.dp, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #41
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dt
  store ptr %i.dr, ptr %i.c, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.du, ptr %i.dv, align 8
  %i.dw = call fastcc noundef zeroext i1 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic9reference19ResolvedReferenceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvB1T_3any5checkBJ_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules11no_self_use11no_self_use0E0E0B3u_EB4L_(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.f, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.dw, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r
  %i.dx = call noundef i32 @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @572, i64 noundef 4) ; 2 uses
  %.not50 = icmp eq i32 %i.dx, 0
  br i1 %.not50, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !4 ; 2 uses
  %i.ea = add i32 %i.dx, -1
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = icmp ugt i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw [72 x i8], ptr %i.ee, i64 %i.eb ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !range !11, !noundef !4
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.aa, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #41
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !4 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 2305843009213693952
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp eq i64 %i.ek, 0
  br i1 %i.em, label %bb.ab, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.x)
  %i.en = load i32, ptr %i.x, align 8, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !noundef !4
  %i.eq = load ptr, ptr %i.an, align 8, !nonnull !4, !align !8, !noundef !4
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules11no_self_use9NoSelfUseEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.eq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %i.en, i32 noundef %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.er = invoke noundef nonnull align 8 ptr @_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b) #42
          to label %bb.ah unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.et = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsEhZmuQNqkz_11ruff_linter(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @574, i64 noundef 86)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.er, ptr noalias noundef nonnull align 8 %i.et)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split

bb.ag:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ah:                                            ; preds = %bb.ac
  resume { ptr, i32 } %i.es

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split: ; preds = %bb.af, %bb.w, %bb.y, %bb.aa, %bb.o, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.q, %bb.p, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread: ; preds = %bb.d, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit.thread.sink.split, %bb.a, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19continue_in_finally13traverse_body(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.idx = mul nuw nsw i64 %2, 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph15, %.loopexit
  %.sroa.0.014 = phi ptr [ %1, %.lr.ph15 ], [ %i.e, %.loopexit ] ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 84 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !range !24, !noundef !4 ; 2 uses
  %i.h = icmp eq i8 %i.g, 24
  br i1 %i.h, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit, label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 4
  %.sroa.0.0.i = load i32, ptr %.sroa.0.014, align 8, !noundef !4
  %.sroa.26.0.i = load i32, ptr %i.i, align 4, !noundef !4
  %i.j = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules19continue_in_finally17ContinueInFinallyEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.j, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.26.0.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i8, ptr %i.f, align 4, !range !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  %i.k = phi i8 [ %i.g, %bb.b ], [ %.pre, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit ] ; 2 uses
  %i.l = icmp samesign ugt i8 %i.k, 1
  %i.m = zext nneg i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -1
  %i.o = select i1 %i.l, i64 %i.n, i64 0
  switch i64 %i.o, label %.loopexit [
    i64 8, label %bb.i
    i64 9, label %bb.d
    i64 10, label %bb.e
    i64 11, label %bb.f
    i64 12, label %bb.g
    i64 14, label %bb.h
  ]

.loopexit.sink.split:                             ; preds = %bb.f, %bb.h, %bb.i
  %.sink25 = phi ptr [ %i.ac, %bb.f ], [ %i.ak, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.p = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sink25)
  %.sink22 = load ptr, ptr %.sink25, align 8, !nonnull !4, !noundef !4
  %i.q = load i64, ptr %.sink22, align 8, !noundef !4
  call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19continue_in_finally13traverse_body(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.p, i64 noundef %i.q)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph13, %.loopexit.sink.split, %bb.g, %bb.e, %bb.c
  %i.r = icmp eq ptr %i.e, %i.b
  br i1 %i.r, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.c
  br label %bb.i

bb.e:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import17deprecated_import:bb.a

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import10WithRenameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import10WithRenameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit, %bb.hw, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_importNtB4_14ImportReplacer12with_renames.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.754)
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import10WithRenameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import18is_relevant_module.exit.thread65

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke void @_RNvMsa_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard15add_primary_tag(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw, i1 noundef zeroext true)
          to label %bb.hv unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.afl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.aw) #42
          to label %bb.hq unwind label %bb.hx

bb.hv:                                            ; preds = %bb.ht
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.hw unwind label %bb.hr

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.754)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.754)
  %i.afm = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !8688, !noalias !8687, !nonnull !4, !noundef !4
  %i.afn = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !8688, !noalias !8687, !nonnull !4, !noundef !4 ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.afm
  br i1 %i.afo, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import10WithRenameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import10WithRenameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB15_.exit

bb.hx:                                            ; preds = %bb.hq, %bb.gq, %bb.ij, %bb.ib, %bb.hu
  %i.afp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.hy:                                            ; preds = %bb.ib, %bb.hz
  %.sroa.015.0 = phi i1 [ %.sroa.015.1, %bb.hz ], [ %.sroa.015.2, %bb.ib ]
  %.pn27 = phi { ptr, i32 } [ %i.afs, %bb.hz ], [ %i.aft, %bb.ib ]
  %i.afq = load i64, ptr %i.bd, align 8, !range !9, !noundef !4
  %i.afr = icmp ne i64 %i.afq, -1
  %or.cond = and i1 %.sroa.015.0, %i.afr
  br i1 %or.cond, label %bb.ij, label %bb.gq

bb.hz:                                            ; preds = %bb.ie, %bb.gr
  %.sroa.015.1 = phi i1 [ %.not26, %bb.ie ], [ true, %bb.gr ]
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.ia:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke void @_RNvMsa_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard15add_primary_tag(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc, i1 noundef zeroext true)
          to label %bb.ic unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ig, %bb.if, %bb.id, %bb.ia
  %.sroa.015.2 = phi i1 [ false, %bb.ig ], [ false, %bb.if ], [ false, %bb.id ], [ true, %bb.ia ]
  %i.aft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.bc) #42
          to label %bb.hy unwind label %bb.hx

bb.ic:                                            ; preds = %bb.ia
  %i.afu = load i64, ptr %i.bd, align 8, !range !9, !noundef !4
  %.not26 = icmp eq i64 %i.afu, -1                ; 2 uses
  br i1 %.not26, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.afv = load i32, ptr %i.uy, align 8, !noundef !4
  %i.afw = load i32, ptr %i.uz, align 4, !noundef !4
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba, i32 noundef %i.afv, i32 noundef %i.afw)
          to label %bb.if unwind label %bb.ib

bb.ie:                                            ; preds = %bb.ih, %bb.ic
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.bc)
          to label %bb.ii unwind label %bb.hz

bb.if:                                            ; preds = %bb.id
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %bb.ig unwind label %bb.ib

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.bc, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.az)
          to label %bb.ih unwind label %bb.ib

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ie

bb.ii:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.afx = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !8689, !noalias !8670, !nonnull !4, !noundef !4
  %i.afy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8689, !noalias !8670, !nonnull !4, !noundef !4 ; 2 uses
  %i.afz = icmp eq ptr %i.afy, %i.afx
  br i1 %i.afz, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import13WithoutRenameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextB16_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17deprecated_import13WithoutRenameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextB16_.exit

bb.ij:                                            ; preds = %bb.hy
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd) #42
          to label %bb.gq unwind label %bb.hx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !align !8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.42.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.01.015 = phi ptr [ %i.r, %.lr.ph ], [ %i.ak, %bb.g ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 95
  %i.am = load i8, ptr %i.al, align 1, !range !37, !noundef !4 ; 4 uses
  %.not7 = icmp eq i8 %i.am, -1
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !8700, !noundef !4
  %i.ap = and i64 %i.ao, 72057594037927935
  %i.aq = icmp ult i8 %i.am, -48
  %i.ar = zext i8 %i.am to i64
  %i.as = add nsw i64 %i.ar, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.as, i64 16)
  %.sroa.0.0.i = select i1 %i.aq, i64 %spec.store.select.i, i64 %i.ap
  %i.at = icmp eq i64 %.sroa.0.0.i, 9
  br i1 %i.at, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ugt i8 %i.am, -49
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !8700
  %.sroa.01.0.i = select i1 %i.au, ptr %i.aw, ptr %i.av ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ]
  %i.ax = load i64, ptr %.sroa.01.0.i, align 1
  %i.ay = xor i64 %i.ax, 8314045561195226477
  %i.az = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 %i.bb, 115
  %i.bd = or i64 %i.ay, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.u, ptr noundef nonnull align 8 %.sroa.01.015, ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 4)
  br i1 %i.bh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.ar, %bb.f, %bb.d, %bb.e, %bb.c
  %i.bi = icmp eq ptr %i.ak, %i.s
  br i1 %i.bi, label %.loopexit, label %bb.c

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8701
  store i64 0, ptr %i.k, align 8, !noalias !8701
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8701
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !8701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8701
  store i32 1610612768, ptr %i.w, align 8, !noalias !8701
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !8701
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !8701
  store ptr %i.k, ptr %i.j, align 8, !noalias !8701
  store ptr @788, ptr %i.x, align 8, !noalias !8701
  %i.bj = invoke noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.j unwind label %.loopexit12, !noalias !8701

.loopexit12:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #42
          to label %common.resume unwind label %bb.l, !noalias !8701

bb.j:                                             ; preds = %bb.h
  br i1 %i.bj, label %bb.k, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @789, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @791) #41
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !8701

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !8701
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8701
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 104
  %i.bm = load i32, ptr %i.bl, align 8, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 108
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !4
  %i.bp = load ptr, ptr %i.y, align 8, !nonnull !4, !align !8, !noundef !4
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules28useless_class_metaclass_type25UselessClassMetaclassTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %i.bp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, i32 noundef %i.bm, i32 noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8703
  %i.bq = load ptr, ptr %i.z, align 8, !noalias !8703, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !8703, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !8703, !noundef !4
  %i.bu = load ptr, ptr %i.aa, align 8, !noalias !8703, !align !8, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit
  %i.bv = load ptr, ptr %i.ab, align 8, !noalias !8703, !nonnull !4, !align !8, !noundef !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.03.0.i.i = phi ptr [ %i.bv, %bb.m ], [ %i.bu, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit ]
  invoke void @_RINvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits15remove_argumentNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %.sroa.01.015, ptr noundef nonnull align 8 %i.o, i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.03.0.i.i)
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.n
  %i.bw = load i64, ptr %i.c, align 8, !range !7, !noalias !8703, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = load ptr, ptr %i.ac, align 8, !noalias !8703 ; 5 uses
  br i1 %i.bx, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.thread.i, label %bb.o

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.thread.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8703
  br label %bb.t

bb.o:                                             ; preds = %.noexc
  %.sroa.48.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !8703 ; 3 uses
  %.sroa.48.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !8703 ; 2 uses
  %.sroa.48.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !8703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8703
  %i.bz = load ptr, ptr %i.ad, align 8, !noalias !8703, !nonnull !4, !align !8, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = invoke noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca, i32 noundef %.sroa.48.sroa.4.0.copyload.i.i, i32 noundef %.sroa.48.sroa.5.0.copyload.i.i)
          to label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.i unwind label %bb.p, !noalias !8703

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq ptr %i.by, null
  %i.ce = icmp eq i64 %.sroa.48.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.i.i.i.i, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef range(i64 1, 0) %.sroa.48.sroa.0.0.copyload.i.i, i64 noundef 1) #44, !noalias !8703
  br label %.body

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.i: ; preds = %bb.o
  %..i.i = select i1 %i.cb, i8 1, i8 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8703
  store ptr %i.by, ptr %i.b, align 8, !noalias !8703
  store i64 %.sroa.48.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !8703
  store i32 %.sroa.48.sroa.4.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !8703
  store i32 %.sroa.48.sroa.5.0.copyload.i.i, ptr %.sroa.912.0..sroa_idx.i.i, align 4, !noalias !8703
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %..i.i)
          to label %.noexc9 unwind label %bb.aq

.noexc9:                                          ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8703
  %.pr.i = load i64, ptr %i.i, align 8, !noalias !8702
  %i.cf = icmp eq i64 %.pr.i, -1
  br i1 %i.cf, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit._crit_edge.i, label %bb.r

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit._crit_edge.i: ; preds = %.noexc9
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !8702
  br label %bb.t

bb.r:                                             ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !8702
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc10 unwind label %bb.aq

.noexc10:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8702
  br label %bb.ar

bb.s:                                             ; preds = %bb.an, %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.ap, !noalias !8704

bb.t:                                             ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit._crit_edge.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.thread.i
  %i.ch = phi ptr [ %.pre.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit._crit_edge.i ], [ %i.by, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules28useless_class_metaclass_type28useless_class_metaclass_type0Bb_.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8702
  store ptr %i.ch, ptr %i.g, align 8, !noalias !8702
  %i.ci = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !8702 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 6
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i64 %i.ci, 3
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8702
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvXsc_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %bb.w unwind label %bb.s, !noalias !8704

bb.v:                                             ; preds = %bb.ao, %bb.t
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc11 unwind label %bb.aq

.noexc11:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8702
  br label %bb.ar

bb.w:                                             ; preds = %bb.u
  %.val.i = load ptr, ptr %i.cl, align 8, !noalias !8704, !nonnull !4, !noundef !4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cm, align 8, !noalias !8704
  switch i64 %.sroa.01.0.copyload.i.i, label %bb.x [
    i64 0, label %bb.an
    i64 1, label %bb.y
end_hunk_3
