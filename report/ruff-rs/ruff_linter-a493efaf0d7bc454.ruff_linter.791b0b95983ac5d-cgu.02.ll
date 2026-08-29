Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultjjNCINvNvXs1_NtBW_6filterINtB2J_6FilterppENtNtNtBY_6traits8iterator8Iterator5count8to_usizeB1u_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18too_many_arguments18too_many_arguments0E0NCINvXsK_NtB3g_5accumjNtB5O_3Sum3sumINtBU_3MapINtNtBW_5chain5ChainIB6q_INtNtNtBb_5slice4iter4IterB1v_EB6O_EB6O_EB2y_EE0E0INtB7_5FnMutTjB1u_EE8call_mutB4f_:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !noalias !12494, !nonnull !6, !align !88, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 55
  %i.k = load i8, ptr %i.j, align 1, !range !758, !alias.scope !12497, !noalias !12494, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !12497, !noalias !12494, !noundef !6
  %i.n = and i64 %i.m, 72057594037927935
  %i.o = icmp ult i8 %i.k, -48
  %i.p = zext i8 %i.k to i64
  %i.q = add nsw i64 %i.p, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.o, i64 %spec.store.select.i.i.i.i.i, i64 %i.n ; 2 uses
  %i.r = icmp ugt i8 %i.k, -49
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !12497, !noalias !12494
  %.sroa.01.0.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12494
  store i32 0, ptr %i.b, align 8, !noalias !12494
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !12494
  %.sroa.5.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx4.i.i.i.i, align 8, !noalias !12494
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i, align 8, !noalias !12494
  %.sroa.9.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx6.i.i.i.i, align 8, !noalias !12494
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !12494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12494
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1736
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !12494, !nonnull !6, !noundef !6
  %i.u = getelementptr i8, ptr %i.h, i64 1744
  %.val1.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !12494
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i.i.i.i, ptr %.val1.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b), !noalias !12494
  %i.v = load i64, ptr %i.a, align 8, !range !83, !noalias !12494, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12494
  %i.w = xor i64 %i.v, 1
  %i.x = add i64 %i.w, %1
  ret i64 %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodB2j_NvYB2j_INtNtBb_7convert4FromB1u_E4fromNCINvNvNtNtNtBY_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBb_3cmp3Ord3cmpE0E0INtB7_5FnMutTB2j_B1u_EE8call_mutB2t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i8 noundef range(i8 0, 3) %1, ptr noundef nonnull align 8 captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !88, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12500)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !12500, !nonnull !6, !noundef !6
  %i.e = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %2), !noalias !12503, !inline_history !12389 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12506
  store i8 %1, ptr %i.b, align 1, !noalias !12509
  store i8 %i.e, ptr %i.a, align 1, !noalias !12509
  %i.f = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B32_EE9call_onceB11_(ptr noalias noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !noalias !12500, !inline_history !12396
  %i.g = icmp slt i8 %i.f, 1
  %.sroa.0.0.i.i.i.i = select i1 %i.g, i8 %1, i8 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12506
  ret i8 %.sroa.0.0.i.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleEIBR_INtNtNtBb_5slice4iter4IterNtB1v_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1v_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesENCB4A_0EB3C_10advance_byB4K_(ptr noalias noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !range !83, !alias.scope !12512, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call fastcc { i64, i64 } @_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtBb_7FlatMapINtNtNtBh_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDB1k_p4ItemRNtB2S_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutB4S_(i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %i.d), !inline_history !12517 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_10advance_byB2W_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %1, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemRNtB25_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEEB4A_(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.e unwind label %bb.d, !inline_history !12517

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.a, align 8, !alias.scope !12512
  br label %common.resume.i.i

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !alias.scope !12512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12521)
  %i.j = load i64, ptr %0, align 8, !range !83, !alias.scope !12523, !noalias !12521, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12529)
  %.promoted.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !12532, !noalias !12535 ; 3 uses
  store ptr null, ptr %i.l, align 8, !alias.scope !12532, !noalias !12535
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.3.sroa.5.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.3.sroa.6.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.3.sroa.8.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i, null
  br i1 %.not.peel.i.i.i.i.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %.promoted.i.i.i.i.i, i64 8
  %.val9.peel.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !12536, !nonnull !6, !noundef !6 ; 3 uses
  %i.n = getelementptr i8, ptr %.promoted.i.i.i.i.i, i64 16
  %.val10.peel.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !12536, !noundef !6
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.val9.peel.i.i.i.i.i, i64 %.val10.peel.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12537)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemRNtB25_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEEB4A_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i unwind label %bb.h, !noalias !12540, !inline_history !12543

common.resume.i.i:                                ; preds = %bb.m, %bb.i, %bb.h, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i.i, %bb.h ], [ %i.i, %bb.d ], [ %i.ac, %bb.m ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.a, align 8, !alias.scope !12544, !noalias !12546
  store ptr %.val9.peel.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !alias.scope !12548, !noalias !12549
  store ptr %i.o, ptr %.sroa.3.sroa.5.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12548, !noalias !12549
  store ptr null, ptr %.sroa.3.sroa.6.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12548, !noalias !12549
  store ptr null, ptr %.sroa.3.sroa.8.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12548, !noalias !12549
  br label %common.resume.i.i

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i: ; preds = %bb.g
  store i64 1, ptr %i.a, align 8, !alias.scope !12544, !noalias !12540
  store ptr %.val9.peel.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !alias.scope !12550, !noalias !12549
  store ptr %i.o, ptr %.sroa.3.sroa.5.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12550, !noalias !12549
  store ptr null, ptr %.sroa.3.sroa.6.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12550, !noalias !12549
  store ptr null, ptr %.sroa.3.sroa.8.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12550, !noalias !12549
  %i.p = tail call fastcc { i64, i64 } @_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtBb_7FlatMapINtNtNtBh_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDB1k_p4ItemRNtB2S_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutB4S_(i64 noundef %.sroa.0.0.i.i, ptr noalias noundef align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i), !noalias !12551, !inline_history !12543 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_10advance_byB2W_.exit, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i: ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i, %bb.f, %bb.e
  %.3.i2833.i.i = phi i64 [ %i.r, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.e ], [ %.sroa.0.0.i.i, %bb.f ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemRNtB25_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEEB4A_(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.j unwind label %bb.i, !inline_history !12517

bb.i:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.a, align 8, !alias.scope !12512
  br label %common.resume.i.i

bb.j:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.thread.i.i
  store i64 0, ptr %i.a, align 8, !alias.scope !12512
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !range !83, !alias.scope !12512, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = tail call fastcc { i64, i64 } @_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtBb_7FlatMapINtNtNtBh_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDB1k_p4ItemRNtB2S_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutB4S_(i64 noundef %.3.i2833.i.i, ptr noalias noundef align 8 dereferenceable(48) %i.x), !inline_history !12517 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_10advance_byB2W_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i = phi i64 [ %.3.i2833.i.i, %bb.j ], [ %i.aa, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemRNtB25_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEEEB4A_(ptr noalias noundef align 8 dereferenceable(56) %i.u)
          to label %bb.n unwind label %bb.m, !inline_history !12517

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.u, align 8, !alias.scope !12512
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.l
  store i64 0, ptr %i.u, align 8, !alias.scope !12512
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_10advance_byB2W_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_10advance_byB2W_.exit: ; preds = %bb.b, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i, %bb.k, %bb.n
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.n ], [ 0, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB4L_13FlattenCompatppE13iter_try_fold7flattenINtB4L_7FlatMapINtNtNtBc_5slice4iter4IterNtB1G_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemRNtB1G_8ExprNameEL_EB2A_EjINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B4L_B4Y_B7a_10advance_by7advanceB5K_EE0B8e_EB2K_.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.k ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleEIBR_INtNtNtBb_5slice4iter4IterNtB1v_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1v_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesENCB4A_0EB3C_9size_hintB4K_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.695.i = alloca i64, align 8              ; 6 uses
  %.sroa.10.i = alloca i64, align 8               ; 4 uses
  %.sroa.6.i = alloca i64, align 8                ; 6 uses
  %.sroa.9.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !83, !alias.scope !12555, !noalias !12552, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12560)
  br i1 %i.g, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12577
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !12579, !noalias !12580, !noundef !6
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.i), !noalias !12581
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !12577
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre74.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !83, !noalias !12577
  %.phi.trans.insert75.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre76.i.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i.i, align 8, !noalias !12577
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %.pre76.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.l = phi i64 [ %.pre74.i.i.i.i.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.m = phi i64 [ %.pre.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12577
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12579, !noalias !12580, !noundef !6
  %.not55.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not55.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  call void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.n), !noalias !12584
  %.pre77.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !12577
  %.phi.trans.insert78.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre79.i.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i.i, align 8, !range !83, !noalias !12577
  %.phi.trans.insert80.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre81.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i, align 8, !noalias !12577
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %.pre77.i.i.i.i.i)
  %i.q = freeze i64 %.pre79.i.i.i.i.i
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i.i: ; preds = %bb.d, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.r = phi i64 [ %.pre81.i.i.i.i.i, %bb.d ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ]
  %.fr7 = phi i64 [ %i.q, %bb.d ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ] ; 2 uses
  %i.s = phi i64 [ %i.p, %bb.d ], [ %i.m, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12577
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !12579, !noalias !12580, !noundef !6 ; 2 uses
  %.not56.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not56.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val63.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !12579, !noalias !12580, !nonnull !6, !noundef !6
  %i.v = icmp eq ptr %.val63.i.i.i.i.i, %i.t
  %i.w = trunc nuw i64 %i.l to i1
  %i.x = trunc i64 %.fr7 to i1
  %op.rdx5 = and i1 %i.v, %i.x
  %op.rdx6 = select i1 %op.rdx5, i1 %i.w, i1 false
  br i1 %op.rdx6, label %bb.g, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i.i
  %i.y = and i64 %.fr7, %i.l
  %or.cond57.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %or.cond57.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = add i64 %i.r, %i.k                       ; 2 uses
  %i.aa = icmp uge i64 %i.z, %i.k
  %.58.i.i.i.i.i = zext i1 %i.aa to i64
  store i64 %.58.i.i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !12587, !noalias !12588
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sink83.i.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.g ], [ %.sroa.6.i, %bb.f ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i.i.i.i = phi i64 [ %i.z, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink83.i.i.i.i.sroa.phi.i, align 8, !alias.scope !12587, !noalias !12588
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i = load i64, ptr %.sroa.6.i, align 8, !range !83, !noalias !12589
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i = load i64, ptr %.sroa.9.i, align 8, !noalias !12589
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i, %bb.a
  %.sroa.9.0..sroa.9.0..sroa.9.16..i = phi i64 [ %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0..sroa.6.0..sroa.6.8..i = phi i64 [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.s, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.695.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !range !83, !alias.scope !12555, !noalias !12552, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !12590)
  call void @llvm.experimental.noalias.scope.decl(metadata !12593)
  br i1 %i.ad, label %bb.h, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit85.i

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12595)
  call void @llvm.experimental.noalias.scope.decl(metadata !12598)
  call void @llvm.experimental.noalias.scope.decl(metadata !12600)
  call void @llvm.experimental.noalias.scope.decl(metadata !12603)
  call void @llvm.experimental.noalias.scope.decl(metadata !12605)
  call void @llvm.experimental.noalias.scope.decl(metadata !12608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12610
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !12612, !noalias !12613, !noundef !6
  %.not.i.i.i.i61.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i61.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.af), !noalias !12614
  %.pre.i.i.i.i62.i = load i64, ptr %i.b, align 8, !noalias !12610
  %.phi.trans.insert.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre74.i.i.i.i64.i = load i64, ptr %.phi.trans.insert.i.i.i.i63.i, align 8, !range !83, !noalias !12610
  %.phi.trans.insert75.i.i.i.i65.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre76.i.i.i.i66.i = load i64, ptr %.phi.trans.insert75.i.i.i.i65.i, align 8, !noalias !12610
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i: ; preds = %bb.i, %bb.h
  %i.ah = phi i64 [ %.pre76.i.i.i.i66.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ai = phi i64 [ %.pre74.i.i.i.i64.i, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.aj = phi i64 [ %.pre.i.i.i.i62.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12610
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12612, !noalias !12613, !noundef !6
  %.not55.i.i.i.i68.i = icmp eq ptr %i.al, null
  br i1 %.not55.i.i.i.i68.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i74.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i
  call void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ak), !noalias !12617
  %.pre77.i.i.i.i69.i = load i64, ptr %i.a, align 8, !noalias !12610
  %.phi.trans.insert78.i.i.i.i70.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre79.i.i.i.i71.i = load i64, ptr %.phi.trans.insert78.i.i.i.i70.i, align 8, !range !83, !noalias !12610
  %.phi.trans.insert80.i.i.i.i72.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre81.i.i.i.i73.i = load i64, ptr %.phi.trans.insert80.i.i.i.i72.i, align 8, !noalias !12610
  %i.am = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 %.pre77.i.i.i.i69.i)
  %i.an = freeze i64 %.pre79.i.i.i.i71.i
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i74.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i74.i: ; preds = %bb.j, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i
  %i.ao = phi i64 [ %.pre81.i.i.i.i73.i, %bb.j ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i ]
  %.fr8 = phi i64 [ %i.an, %bb.j ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i ] ; 2 uses
  %i.ap = phi i64 [ %i.am, %bb.j ], [ %i.aj, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i67.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12610
  %i.aq = load ptr, ptr %i.ae, align 8, !alias.scope !12612, !noalias !12613, !noundef !6 ; 2 uses
  %.not56.i.i.i.i75.i = icmp eq ptr %i.aq, null
  br i1 %.not56.i.i.i.i75.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i74.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val63.i.i.i.i76.i = load ptr, ptr %i.ar, align 8, !alias.scope !12612, !noalias !12613, !nonnull !6, !noundef !6
  %i.as = icmp eq ptr %.val63.i.i.i.i76.i, %i.aq
  %i.at = trunc nuw i64 %i.ai to i1
  %i.au = trunc i64 %.fr8 to i1
  %op.rdx3 = and i1 %i.as, %i.au
  %op.rdx4 = select i1 %op.rdx3, i1 %i.at, i1 false
  br i1 %op.rdx4, label %bb.m, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i.i74.i
  %i.av = and i64 %.fr8, %i.ai
  %or.cond57.not.i.i.i.i84.i = icmp eq i64 %i.av, 0
  br i1 %or.cond57.not.i.i.i.i84.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = add i64 %i.ao, %i.ah                    ; 2 uses
  %i.ax = icmp uge i64 %i.aw, %i.ah
  %.58.i.i.i.i83.i = zext i1 %i.ax to i64
  store i64 %.58.i.i.i.i83.i, ptr %.sroa.695.i, align 8, !alias.scope !12620, !noalias !12621
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sink83.i.i.i.i81.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.m ], [ %.sroa.695.i, %bb.l ], [ %.sroa.695.i, %bb.k ]
  %.sink.i.i.i.i82.i = phi i64 [ %i.aw, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i82.i, ptr %.sink83.i.i.i.i81.sroa.phi.i, align 8, !alias.scope !12620, !noalias !12621
  %i.ay = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i, i64 %i.ap)
  %.sroa.695.i.0..sroa.695.i.0..sroa.695.i.0..sroa.695.0..sroa.695.0..sroa.695.8..pre.i = load i64, ptr %.sroa.695.i, align 8, !range !83, !noalias !12589
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i = load i64, ptr %.sroa.10.i, align 8, !noalias !12589
  %i.az = freeze i64 %.sroa.695.i.0..sroa.695.i.0..sroa.695.i.0..sroa.695.0..sroa.695.0..sroa.695.8..pre.i
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit85.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit85.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i = phi i64 [ %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i ]
  %.sroa.695.0..sroa.695.0..sroa.695.8..i = phi i64 [ %i.az, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i ] ; 2 uses
  %.sroa.094.1.i = phi i64 [ %i.ay, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemRNtB1t_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEB2P_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB3X_.exit.i80.i ], [ %.sroa.0.1.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.ba = load i64, ptr %1, align 8, !range !83, !alias.scope !12555, !noalias !12552, !noundef !6
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit85.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.bc, align 8, !alias.scope !12555, !noalias !12552, !align !88, !noundef !6
  %.not.i = icmp eq ptr %.val.i, null
  %2 = trunc nuw i64 %.sroa.6.0..sroa.6.0..sroa.6.8..i to i1
  %3 = trunc i64 %.sroa.695.0..sroa.695.0..sroa.695.8..i to i1
  %op.rdx = and i1 %.not.i, %3
  %op.rdx2 = select i1 %op.rdx, i1 %2, i1 false
  br i1 %op.rdx2, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemRNtB1R_8ExprNameEL_ENvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_namesEE6map_orTjIBw_jEENvYBJ_B3d_9size_hintEB4l_.exit85.i
  %4 = and i64 %.sroa.695.0..sroa.695.0..sroa.695.8..i, %.sroa.6.0..sroa.6.0..sroa.6.8..i
  %or.cond55.not.i = icmp eq i64 %4, 0
  br i1 %or.cond55.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 %.sroa.094.1.i, ptr %0, align 8, !alias.scope !12552, !noalias !12555
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_9size_hintB2W_.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bd = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i, %.sroa.9.0..sroa.9.0..sroa.9.16..i ; 2 uses
  %i.be = icmp uge i64 %i.bd, %.sroa.9.0..sroa.9.0..sroa.9.16..i
  %..i = zext i1 %i.be to i64
  store i64 %.sroa.094.1.i, ptr %0, align 8, !alias.scope !12552, !noalias !12555
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i, ptr %i.bf, align 8, !alias.scope !12552, !noalias !12555
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_9size_hintB2W_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules17yield_in_for_loop13collect_names0EINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtB1S_4ExprEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtB1S_8ExprNameEL_EB2M_EEB5H_9size_hintB2W_.exit: ; preds = %bb.p, %bb.q
  %.sink106.i = phi i64 [ 16, %bb.q ], [ 8, %bb.p ]
  %.sink.i = phi i64 [ %i.bd, %bb.q ], [ 0, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink106.i
  store i64 %.sink.i, ptr %i.bg, align 8, !alias.scope !12552, !noalias !12555
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtCsEhZmuQNqkz_11ruff_linter5codes8RuleIterANtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValuej2_NCNvMNtNtB18_8registry15clap_completionNtB37_10RuleParser6values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB18_(ptr noalias noundef align 8 dereferenceable(392) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i.i.i.i.i.i = alloca [160 x i8], align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !range !83, !alias.scope !12628, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !12629, !noundef !6 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !alias.scope !12629, !noundef !6 ; 5 uses
  %i.h = sub nuw i64 %i.f, %i.g
  %.not.i.i.i.i.i.i = icmp ugt i64 %1, %i.h
  %i.i = add nuw i64 %i.g, %1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %i.f, i64 %i.i ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !12629
  %i.j = sub nuw i64 %.sroa.0.0.i.i.i.i.i.i, %i.g ; 5 uses
  %i.k = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, %i.g
  br i1 %i.k, label %_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtNtNtBh_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.p, %i.j
  br i1 %i.n, label %_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtNtNtBh_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i106 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.i.i.i.i.i106
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i106, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(80) %i.o)
          to label %bb.c unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph108
  %i.q = add i64 %.sroa.0.1.i.i.i.i.i.i.i107, 1   ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.j
  br i1 %i.r, label %common.resume.i.i, label %.lr.ph108

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.p, %i.j
  br i1 %i.t, label %common.resume.i.i, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i107 = phi i64 [ %i.q, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.1.i.i.i.i.i.i.i107
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(80) %i.u) #48
          to label %bb.e unwind label %bb.g

common.resume.i.i:                                ; preds = %bb.e, %bb.aa, %bb.ah, %bb.f, %.body.i.i.i.i.i, %bb.ai, %bb.am, %bb.ad, %bb.o, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.cx, %bb.ai ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.at, %bb.o ], [ %i.ab, %bb.j ], [ %i.dg, %bb.am ], [ %i.s, %bb.f ], [ %eh.lpad-body.i.i.i.i.i, %bb.aa ], [ %i.cx, %bb.ah ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.lr.ph108
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable

_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtNtNtBh_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.c, %bb.b
  %i.w = sub i64 %1, %i.j                         ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %1, %i.j
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtCsEhZmuQNqkz_11ruff_linter5codes8RuleIterNCNvMNtNtB1v_8registry15clap_completionNtB2f_10RuleParser6values0EINtNtNtBb_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EENtNtNtB9_6traits8iterator8Iterator10advance_byB1v_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvYINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtNtNtBh_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %.pr.i.i = load i64, ptr %i.a, align 8, !alias.scope !12638
  %i.x = icmp eq i64 %.pr.i.i, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.d, align 8, !alias.scope !12641, !noundef !6
  %i.aa = load i64, ptr %i.e, align 8, !alias.scope !12641, !noundef !6
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEj2_NtB4_11PartialDrop12partial_dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.y, i64 noundef %i.z, i64 noundef %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.a, align 8, !alias.scope !12628
  br label %common.resume.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.i, %bb.h, %bb.a
  %.sroa.0.042.i.i = phi i64 [ %i.w, %bb.i ], [ %i.w, %bb.h ], [ %1, %bb.a ] ; 2 uses
  store i64 0, ptr %i.a, align 8, !alias.scope !12628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12653)
  %i.ac = load i64, ptr %0, align 8, !range !83, !alias.scope !12655, !noalias !12653, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit30.i.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12661)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleANtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValuej2_jINtNtNtBa_3ops12control_flow11ControlFlowujENCNvMNtNtB13_8registry15clap_completionNtB3H_10RuleParser6values0NCINvNvMsg_NtB6_7flattenINtB4Q_13FlattenCompatppE13iter_try_fold7flattenB1E_jB2U_INvNvXsi_B4Q_B53_NtNtNtB8_6traits8iterator8Iterator10advance_by7advanceINtNtNtBa_5array4iter8IntoIterB1F_KB2Q_EEE0E0B13_.exit.i.i.i.i.i, %bb.k
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %.sroa.0.042.i.i, %bb.k ], [ %i.ca, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleANtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValuej2_jINtNtNtBa_3ops12control_flow11ControlFlowujENCNvMNtNtB13_8registry15clap_completionNtB3H_10RuleParser6values0NCINvNvMsg_NtB6_7flattenINtB4Q_13FlattenCompatppE13iter_try_fold7flattenB1E_jB2U_INvNvXsi_B4Q_B53_NtNtNtB8_6traits8iterator8Iterator10advance_by7advanceINtNtNtBa_5array4iter8IntoIterB1F_KB2Q_EEE0E0B13_.exit.i.i.i.i.i ] ; 6 uses
  %i.aj = load i64, ptr %i.ae, align 8, !alias.scope !12664, !noalias !12669, !noundef !6 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  %i.al = load i64, ptr %i.af, align 8, !alias.scope !12664, !noalias !12669, !noundef !6
  %i.am = add i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 968
  br i1 %i.an, label %_RNvXs6c_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i.i, label %_RNvXs6c_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

_RNvXs6c_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i.i: ; preds = %bb.l
  store i64 968, ptr %i.ae, align 8, !alias.scope !12664, !noalias !12669
  br label %.loopexit.i.i

_RNvXs6c_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %bb.l
  store i64 %i.ak, ptr %i.ae, align 8, !alias.scope !12664, !noalias !12669
  %i.ao = tail call noundef i16 @_RNvMs6a_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIter3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae, i64 noundef %i.aj) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ao, -1
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvXs6c_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_8RuleIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i), !noalias !12670
  call fastcc void @_RNCNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry15clap_completionNtB4_10RuleParser6values0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(160) %.sroa.3.i.i.i.i.i.i, i16 noundef range(i16 0, 968) %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12671)
  %i.ap = load i64, ptr %i.a, align 8, !range !83, !alias.scope !12674, !noalias !12678, !noundef !6
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.ag, align 8, !alias.scope !12681, !noalias !12678, !noundef !6
  %i.as = load i64, ptr %i.ai, align 8, !alias.scope !12681, !noalias !12678, !noundef !6
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEj2_NtB4_11PartialDrop12partial_dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ah, i64 noundef %i.ar, i64 noundef %i.as)
          to label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i unwind label %bb.o, !noalias !12690

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.a, align 8, !alias.scope !12691, !noalias !12678
  store i64 0, ptr %i.ag, align 8, !alias.scope !12692, !noalias !12693
  store i64 2, ptr %i.ai, align 8, !alias.scope !12692, !noalias !12693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.i.i.i.i.i.i, i64 160, i1 false), !alias.scope !12694, !noalias !12695
  br label %common.resume.i.i

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i64 1, ptr %i.a, align 8, !alias.scope !12691, !noalias !12678
  store i64 2, ptr %i.ai, align 8, !alias.scope !12692, !noalias !12693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.i.i.i.i.i.i, i64 160, i1 false), !alias.scope !12694, !noalias !12695
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i.i.i, i64 2) ; 5 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ag, align 8, !alias.scope !12696, !noalias !12693
  %i.au = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.au, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleANtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValuej2_jINtNtNtBa_3ops12control_flow11ControlFlowujENCNvMNtNtB13_8registry15clap_completionNtB3H_10RuleParser6values0NCINvNvMsg_NtB6_7flattenINtB4Q_13FlattenCompatppE13iter_try_fold7flattenB1E_jB2U_INvNvXsi_B4Q_B53_NtNtNtB8_6traits8iterator8Iterator10advance_by7advanceINtNtNtBa_5array4iter8IntoIterB1F_KB2Q_EEE0E0B13_.exit.thread.i.i.i.i.i, label %.preheader.i.i.preheader.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleANtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValuej2_jINtNtNtBa_3ops12control_flow11ControlFlowujENCNvMNtNtB13_8registry15clap_completionNtB3H_10RuleParser6values0NCINvNvMsg_NtB6_7flattenINtB4Q_13FlattenCompatppE13iter_try_fold7flattenB1E_jB2U_INvNvXsi_B4Q_B53_NtNtNtB8_6traits8iterator8Iterator10advance_by7advanceINtNtNtBa_5array4iter8IntoIterB1F_KB2Q_EEE0E0B13_.exit.thread.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i), !noalias !12670
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtCsEhZmuQNqkz_11ruff_linter5codes8RuleIterNCNvMNtNtB1v_8registry15clap_completionNtB2f_10RuleParser6values0EINtNtNtBb_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EENtNtNtB9_6traits8iterator8Iterator10advance_byB1v_.exit

.preheader.i.i.preheader.i.i.i.i.i:               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i20.i.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueKj2_EE6insertCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.ah, i64 %.sroa.0.0.i.i.i.i.i.i.i20.i.i.i.i.i ; 10 uses
  %i.aw = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i20.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12708), !noalias !12711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12712), !noalias !12711
  %i.ax = load i64, ptr %i.av, align 8, !range !83, !alias.scope !12715, !noalias !12693, !noundef !6
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.preheader.i.i.preheader.i.i.i.i.i
end_hunk_0
