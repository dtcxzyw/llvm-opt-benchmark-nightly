Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtBY_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtBW_3VecTB1G_INtNtBY_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 0, ptr %i.h, align 8, !alias.scope !128140, !noalias !128128
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !alias.scope !128140, !noalias !128128
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.o, align 8, !alias.scope !128140, !noalias !128128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !128137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128137
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1A_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.s unwind label %bb.r, !noalias !128138

bb.e:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %i.d) #73
          to label %bb.q unwind label %bb.p, !noalias !128137

bb.f:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 160) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !128137

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !128137
  store i64 4, ptr %i.f, align 8, !noalias !128137
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !128137
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !128137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !128137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !128138
  call void @llvm.experimental.noalias.scope.decl(metadata !128141)
  call void @llvm.experimental.noalias.scope.decl(metadata !128142)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.q = phi ptr [ %i.x, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %i.l, %bb.g ]
  %i.r = phi i64 [ %i.z, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128143
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.k unwind label %bb.j, !noalias !128144

bb.i:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.s, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1A_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.n, !noalias !128144

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.b, align 8, !range !427, !noalias !128143, !noundef !422
  %.not.i.i5.i.i.i.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i5.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringINtNtB8_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB33_3map3MapINtNtB6_9into_iter8IntoIterTBH_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB37_6result6ResultNtNtB37_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !128143
  %i.u = icmp samesign ult i64 %i.r, 230584300921369396
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.f, align 8, !range !425, !alias.scope !128145, !noalias !128137, !noundef !422
  %i.w = icmp eq i64 %i.r, %i.v
  br i1 %i.w, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %bb.m, !noalias !128146

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !128145, !noalias !128137
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.l
  %i.x = phi ptr [ %.pre.i.i.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.q, %bb.l ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !128143
  %i.z = add nuw nsw i64 %i.r, 1                  ; 2 uses
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !128145, !noalias !128137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128143
  br label %bb.h

bb.m:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %i.a) #73
          to label %bb.i unwind label %bb.n, !noalias !128143

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !128143
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringINtNtB8_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB33_3map3MapINtNtB6_9into_iter8IntoIterTBH_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB37_6result6ResultNtNtB37_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128143
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1A_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3h_3map3MapINtNtB4_9into_iter8IntoIterTBS_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB3l_6result6ResultNtNtB3l_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.o, !noalias !128144

bb.o:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringINtNtB8_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB33_3map3MapINtNtB6_9into_iter8IntoIterTBH_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB37_6result6ResultNtNtB37_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.o, %bb.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %.pn.i.i.i.i.i.i.i.i, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.f) #73
          to label %.body.i.i unwind label %bb.p, !noalias !128137

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3h_3map3MapINtNtB4_9into_iter8IntoIterTBS_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB3l_6result6ResultNtNtB3l_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringINtNtB8_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB33_3map3MapINtNtB6_9into_iter8IntoIterTBH_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB37_6result6ResultNtNtB37_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !128147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128137
  br label %bb.s

bb.p:                                             ; preds = %bb.q, %.body.i.i.i.i.i.i, %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !128137
  unreachable

bb.q:                                             ; preds = %bb.e, %bb.b
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.p, %bb.e ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1A_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #73
          to label %.body.i.i unwind label %bb.p, !noalias !128138

.body.i.i:                                        ; preds = %bb.r, %bb.q, %.body.i.i.i.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i.i, %bb.q ], [ %i.ag, %bb.r ]
  %.sroa.03.0.i.i = phi i1 [ true, %.body.i.i.i.i.i.i ], [ true, %bb.q ], [ %.sroa.03.1.i.i, %bb.r ]
  %i.ae = load i8, ptr %i.i, align 8, !range !429, !noalias !128128, !noundef !422
  %i.af = icmp ne i8 %i.ae, -1
  %or.cond.i.i = and i1 %.sroa.03.0.i.i, %i.af
  br i1 %or.cond.i.i, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.r:                                             ; preds = %bb.u, %bb.d
  %.sroa.03.1.i.i = phi i1 [ false, %bb.u ], [ true, %bb.d ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringINtNtB6_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3h_3map3MapINtNtB4_9into_iter8IntoIterTBS_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EINtNtB3l_6result6ResultNtNtB3l_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !128131
  %i.ah = load i8, ptr %i.i, align 8, !range !429, !noalias !128128, !noundef !422
  %.not.not.i.i = icmp eq i8 %i.ah, -1
  br i1 %.not.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !128148
  store i8 -1, ptr %0, align 8, !alias.scope !128149
  br label %_RINvXso_NtCscI6d9CVNmLh_4core6resultINtB6_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBQ_6string6StringINtNtBQ_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B3k_EE9from_iterINtNtNtB48_8adapters3map3MapINtNtBO_9into_iter8IntoIterTB1j_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !128148
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %_RINvXso_NtCscI6d9CVNmLh_4core6resultINtB6_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBQ_6string6StringINtNtBQ_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B3k_EE9from_iterINtNtNtB48_8adapters3map3MapINtNtBO_9into_iter8IntoIterTB1j_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.r, !noalias !128128

bb.v:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !128128
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.w, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

bb.w:                                             ; preds = %.body.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.v, !noalias !128128

_RINvXso_NtCscI6d9CVNmLh_4core6resultINtB6_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBQ_6string6StringINtNtBQ_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B3k_EE9from_iterINtNtNtB48_8adapters3map3MapINtNtBO_9into_iter8IntoIterTB1j_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !128128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !128128
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1J_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2A_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1N_3vec3VecTB1J_B1J_EEEB2C_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !128214 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i = alloca [40 x i8], align 8  ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128216)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !128217 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !128217 ; 2 uses
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.81.0.copyload.i = load i16, ptr %.sroa.81.0..sroa_idx.i, align 8, !alias.scope !128217 ; 2 uses
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.92.0.copyload.i = load i64, ptr %.sroa.92.0..sroa_idx.i, align 8, !alias.scope !128217 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128220
  %i.g = icmp eq i64 %.sroa.92.0.copyload.i, 0
  br i1 %i.g, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.81.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !128221
  %i.j = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.j to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.010.0.copyload.i.i.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.81.0.copyload.i, %bb.b ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i.i.i.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [48 x i8], ptr %.sroa.010.0.copyload.i.i.i, i64 %i.q ; 2 uses
  %i.s = add nsw i64 %.sroa.92.0.copyload.i, -1   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -48
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !128222
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !128223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128222
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i unwind label %bb.c, !noalias !128224

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128226)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !425, !alias.scope !128227, !noalias !128222, !noundef !422 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %common.resume.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !128227, !noalias !128222, !nonnull !422, !noundef !422
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128228
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.d, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !128229 ; 4 uses
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !128220 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !128220
  %.sroa.417.i.sroa.5.16.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !128220 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload.i.i = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx.i.i, align 8, !noalias !128220 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx.i.i, align 8, !noalias !128220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !128222
  %.not.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.h

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !128230
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !128230
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !128230
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

bb.e:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.016.0.copyload.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128231
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = icmp eq i64 %.sroa.417.i.sroa.5.16.copyload.i.i, 0
  br i1 %i.ac, label %common.resume.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload.i.i, i64 noundef %.sroa.417.i.sroa.5.16.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128232
  br label %common.resume.i.i.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.92.0.copyload.i, i64 4) ; 3 uses
  %i.ad = mul i64 %.sroa.0.0.i.i.i.i, 48          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.92.0.copyload.i, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !447

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !128233
  %i.af = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, 17) 8) #68, !noalias !128233 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ad) #72
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !128220

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.af, %bb.j ] ; 8 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.ah = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ah)
  store i64 %.sroa.016.0.copyload.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !128220
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !128220
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !128220
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !128220
  %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload.i.i, ptr %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !128220
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !128220
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.f, align 8, !noalias !128220
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !128220
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128235)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.ai = icmp eq i64 %i.s, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.48.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i.i.i.i.i, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aj = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.be, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  %i.ak = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 4 uses
  %.lcssa21.i.i.i.i.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %i.al = phi i16 [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.val1217.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i.i.i = phi ptr [ %.sroa.010.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa1114.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.am = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !128236
  %i.ao = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -768 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ao to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.m
  %.lcssa20.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i, %bb.m ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i.i.i = phi ptr [ %.lcssa111516.i.i.i.i.i, %bb.m ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.m ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [48 x i8], ptr %.lcssa1114.i.i.i.i.i, i64 %i.av ; 2 uses
  %i.ax = add i64 %.val1217.i.i.i.i.i, -1         ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128237
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc6.i.i.i unwind label %bb.s, !noalias !128238

.noexc6.i.i.i:                                    ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128237
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i unwind label %bb.n, !noalias !128239

bb.n:                                             ; preds = %.noexc6.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128241)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !425, !alias.scope !128242, !noalias !128237, !noundef !422 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %.body.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128242, !noalias !128237, !nonnull !422, !noundef !422
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128243
  br label %.body.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i: ; preds = %.noexc6.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !128244 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !128244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !128244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i.i.i, i64 40, i1 false), !noalias !128245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i.i.i)
  %.not.i.i5.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i5.i.i.i, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128246
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !noalias !128246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, i64 40, i1 false), !noalias !128246
  %i.bc = load i64, ptr %i.f, align 8, !range !425, !alias.scope !128247, !noalias !128220, !noundef !422
  %i.bd = icmp eq i64 %i.ak, %i.bc
  br i1 %i.bd, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.p
  %i.be = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !128246
  %i.bg = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !128247, !noalias !128220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bh = icmp eq i64 %i.ax, 0
  br i1 %i.bh, label %.loopexit.i.i.i, label %bb.m

bb.q:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.c) #73, !noalias !128246
  br label %.body.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %.val1217.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.q, !noalias !128248

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !128247, !noalias !128220
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.s:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.s, %bb.q, %bb.o, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bi, %bb.q ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.f) #73, !noalias !128220
  br label %common.resume.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !128249
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128220
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3b_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1O_3vec3VecB1J_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !128282 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128286
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !noalias !128287, !nonnull !422, !noundef !422 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noalias !128287, !noundef !422
  switch i64 %i.i, label %bb.c [
    i64 6, label %.split.i.i.i.i.i.i
    i64 8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !128287, !nonnull !422, !noundef !422 ; 2 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = xor i32 %i.l, 2003792479
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 25705
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !128287, !nonnull !422, !noundef !422
  %i.w = load i64, ptr %i.v, align 1
  %i.x = icmp ne i64 %i.w, 8242823587773248095
  %i.y = zext i1 %i.x to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.z = icmp eq ptr %i.f, %2
  br i1 %i.z, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !128288
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !128286
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !alias.scope !128286
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8, !alias.scope !128286
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1O_8adapters6cloned6ClonedINtNtB30_6filter6FilterINtNtNtB1Q_5slice4iter4IterBG_ENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4v_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !128289
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.q, !noalias !128286

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128286
  store ptr %i.g, ptr %i.b, align 8, !noalias !128286
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !128290
  %i.ah = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #68, !noalias !128290 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #72
          to label %.noexc9.i.i.i unwind label %bb.e, !noalias !128286

.noexc9.i.i.i:                                    ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.g, ptr %i.ah, align 8, !noalias !128286
  store i64 4, ptr %i.c, align 8, !noalias !128286
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !128286
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128292)
  %i.aj = icmp eq ptr %i.f, %2
  br i1 %i.aj, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB2i_6filter6FilterINtNtNtB2m_5slice4iter4IterBR_ENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB49_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1u_3vec3VecB1q_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetB1q_EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.o, %bb.j, %bb.h
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.bn, %bb.o ], [ %i.aw, %bb.j ] ; 2 uses
  br i1 %.not55.i.i.i.i.i.i, label %.body.i, label %.sink.split.i.i.i.i.i.i.i.i

_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2b_6string6StringEuNCINvNtBc_3map8map_foldB2S_TB2S_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3Y_7HashSetB2S_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2S_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterTB2S_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB29_3VecB2S_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvB1j_8for_each4callB3H_NCINvXs1i_NtB40_3mapINtB9Y_7HashMapB2S_uB4L_EIB5A_B3H_E6extendINtB3l_3MapB69_B3P_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !128605
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !128613, !nonnull !422, !noundef !422 ; 2 uses
  %i.az = icmp eq ptr %i.av, %i.ay
  br i1 %i.az, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 144
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bo, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [144 x i8], ptr %i.av, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128614
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  invoke void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner20column_names_in_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bf)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !128615

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !128614 ; 3 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !128614, !nonnull !422, !noundef !422 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !128614 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128616
  %i.bg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.bg)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !128616
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !128616
  store ptr %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !128616
  call void @llvm.experimental.noalias.scope.decl(metadata !128617)
  call void @llvm.experimental.noalias.scope.decl(metadata !128618)
  %.not.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %i.bj, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !128620
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %i.bk = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !128620 ; 0 uses

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.bl = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = mul nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !128620
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128619
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !128621, !noalias !128616
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #73, !noalias !128622
  br label %.body.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128614
  %i.bo = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.bd
  br i1 %i.bp, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.m

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtB10_3vec3VecBW_EuNCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0NCINvNvMsg_NtB6_7flattenINtB4e_13FlattenCompatppE9iter_fold7flattenB2i_uNCINvNvXsi_B4e_B4r_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2l_9into_iter8IntoIterBW_EuNCIB2_BW_TBW_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB7d_7HashSetBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendBW_E6extendINtB4e_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2i_B2E_EE0NCINvNvB5w_8for_each4callB6X_NCINvXs1i_NtB7f_3mapINtBaT_7HashMapBW_uB7Z_EIB8O_B6X_E6extendINtB4_3MapB9m_B74_EE0E0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  br i1 %.not55.i.i.i.i.i.i, label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters7flatten7FlatMapINtNtNtB1Q_5slice4iter4IterTB14_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB18_3vec3VecB14_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.p

bb.p:                                             ; preds = %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !128606
  call void @llvm.experimental.noalias.scope.decl(metadata !128623)
  call void @llvm.experimental.noalias.scope.decl(metadata !128624)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !128625, !noalias !128605, !nonnull !422, !noundef !422 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.promoted.i.i14.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !128625, !noalias !128605 ; 2 uses
  %.not.not7.i.i15.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i14.i.i.i.i.i.i.i.i, %i.br
  br i1 %.not.not7.i.i15.i.i.i.i.i.i.i.i, label %._crit_edge.i.i19.i.i.i.i.i.i.i.i, label %.lr.ph.i.i16.i.i.i.i.i.i.i.i

.lr.ph.i.i16.i.i.i.i.i.i.i.i:                     ; preds = %bb.p, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i17.i.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bu, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i17.i.i.i.i.i.i.i.i ], [ %.promoted.i.i14.i.i.i.i.i.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !128627
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 3 uses
  %i.bv = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i17.i.i.i.i.i.i.i.i unwind label %.body.thread.i.i.i.i.i.i.i.i, !noalias !128627 ; 0 uses

._crit_edge.i.i19.i.i.i.i.i.i.i.i:                ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i17.i.i.i.i.i.i.i.i, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !128625, !noalias !128605, !noundef !422 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2b_6string6StringEuNCINvNtBc_3map8map_foldB2S_TB2S_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3Y_7HashSetB2S_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2S_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterTB2S_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB29_3VecB2S_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvB1j_8for_each4callB3H_NCINvXs1i_NtB40_3mapINtB9Y_7HashMapB2S_uB4L_EIB5A_B3H_E6extendINtB3l_3MapB69_B3P_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i19.i.i.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.f, align 8, !alias.scope !128625, !noalias !128605, !nonnull !422, !noundef !422
  %i.ca = mul nuw i64 %i.bx, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !128627
  br label %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2b_6string6StringEuNCINvNtBc_3map8map_foldB2S_TB2S_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3Y_7HashSetB2S_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2S_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterTB2S_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB29_3VecB2S_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvB1j_8for_each4callB3H_NCINvXs1i_NtB40_3mapINtB9Y_7HashMapB2S_uB4L_EIB5A_B3H_E6extendINtB3l_3MapB69_B3P_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs40k4W9msRzi_5alloc6string6StringTB1t_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB2m_7HashSetB1t_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1t_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1x_3vec3VecB1t_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvNtNtB42_8iterator8Iterator8for_each4callB25_NCINvXs1i_NtB2o_3mapINtB96_7HashMapB1t_uB39_EIB3Y_B25_E6extendINtBT_3MapB4F_B2d_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i17.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i16.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128626
  %.not.not.i.i18.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.br
  br i1 %.not.not.i.i18.i.i.i.i.i.i.i.i, label %._crit_edge.i.i19.i.i.i.i.i.i.i.i, label %.lr.ph.i.i16.i.i.i.i.i.i.i.i

.body.thread.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i16.i.i.i.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bu, ptr %i.bs, align 8, !alias.scope !128625, !noalias !128605
  br label %.sink.split.i.i.i.i.i.i.i.i

_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2b_6string6StringEuNCINvNtBc_3map8map_foldB2S_TB2S_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3Y_7HashSetB2S_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2S_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterTB2S_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB29_3VecB2S_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvB1j_8for_each4callB3H_NCINvXs1i_NtB40_3mapINtB9Y_7HashMapB2S_uB4L_EIB5A_B3H_E6extendINtB3l_3MapB69_B3P_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.i.i.i.i.i.i.i: ; preds = %bb.q, %._crit_edge.i.i19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128605
  br label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters7flatten7FlatMapINtNtNtB1Q_5slice4iter4IterTB14_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB18_3vec3VecB14_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %.body.thread.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.body.thread.i.i.i.i.i.i.i.i ], [ %i.y, %.body.i.i.i.i.i.i.i.i ]
  %eh.lpad-body27.ph.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cb, %.body.thread.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %.sink.i.i.i.i.i.i.i.i) #73, !noalias !128628
  br label %.body.i

bb.r:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1M_3vec3VecB1I_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %1), !noalias !128628
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %.sink.split.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body27.ph.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i ], [ %i.cc, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.h) #73, !noalias !128589
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.cd, %bb.t ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn9.i

bb.t:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1M_3vec3VecB1I_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %1) #73, !noalias !128628
  br label %bb.s

_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters7flatten7FlatMapINtNtNtB1Q_5slice4iter4IterTB14_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB18_3vec3VecB14_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE9iter_fold7flattenINtNtB1s_3vec3VecB1o_EuNCINvNvXsi_B50_B5d_B4b_4fold7flattenINtNtB5X_9into_iter8IntoIterB1o_EuNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetB1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4f_7collect6ExtendB1o_E6extendINtB50_7FlatMapBX_B5U_B2L_EE0NCINvNvB4b_8for_each4callB7K_NCINvXs1i_NtB83_3mapINtBbi_7HashMapB1o_uB8O_EIB9D_B7K_E6extendIBO_Bac_B7S_EE0E0E0E0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2b_6string6StringEuNCINvNtBc_3map8map_foldB2S_TB2S_uEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3Y_7HashSetB2S_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2S_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterTB2S_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB29_3VecB2S_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0EE0NCINvNvB1j_8for_each4callB3H_NCINvXs1i_NtB40_3mapINtB9Y_7HashMapB2S_uB4L_EIB5A_B3H_E6extendINtB3l_3MapB69_B3P_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !128588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !128589
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtB13_3vec3VecBZ_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !128739 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128741)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !128742 ; 7 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !128742 ; 7 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !128742 ; 6 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !128742 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !128742 ; 2 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !128742
  %.sroa.1715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.1715.0.copyload.i = load i16, ptr %.sroa.1715.0..sroa_idx.i, align 8, !alias.scope !128742 ; 2 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.1919.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1919.0.copyload.i = load i64, ptr %.sroa.1919.0..sroa_idx.i, align 8, !alias.scope !128742 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128745
  %i.c = icmp eq i64 %.sroa.1919.0.copyload.i, 0
  br i1 %i.c, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !128746
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !128746
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !alias.scope !128746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128745
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.1715.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.f = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.13.0.copyload.i, %bb.b ] ; 2 uses
  %i.g = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !128747
  %i.h = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.h to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %.sroa.13.0.i = phi ptr [ %.sroa.13.0.copyload.i, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.b ], [ %i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.1715.0.copyload.i, %bb.b ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.k = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.m = zext nneg i16 %i.l to i64
  %i.n = and i16 %i.k, %.lcssa.i.i.i.i.i.i        ; 4 uses
  %i.o = sub nsw i64 0, %i.m
  %i.p = getelementptr inbounds [24 x i8], ptr %.sroa.10.0.i, i64 %i.o ; 3 uses
  %i.q = add i64 %.sroa.1919.0.copyload.i, -1     ; 7 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !128748 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !128746
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !128746
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !128746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128745
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %.lcssa58.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.c ] ; 2 uses
  %i.w = phi i16 [ %i.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !128749
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -384 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = add i64 %i.v, -1                        ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !range !425, !alias.scope !128750, !noalias !128751, !noundef !422 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr i8, ptr %i.ah, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !128751, !nonnull !422, !noundef !422
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128752
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.thread.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.am = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.am
  br i1 %or.cond.i, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !128753
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ao, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128754
  br label %bb.s

bb.h:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !128755 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !128755
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.1919.0.copyload.i, i64 4) ; 3 uses
  %i.ap = mul i64 %.sroa.0.0.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.1919.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !447

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !128756
  %i.ar = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, 17) 8) #68, !noalias !128756 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ap) #72
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !128745

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ar, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.at = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.at)
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !128745
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !128745
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !128745
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.b, align 8, !noalias !128745
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !128745
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128745
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !128757
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !128757
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx6.i, align 8, !noalias !128757
  %.sroa.10.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx9.i, align 8, !noalias !128757
  %.sroa.13.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx11.i, align 8, !noalias !128757
  %.sroa.17.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa_idx13.i, align 8, !noalias !128757
  %.sroa.1715.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i16 %i.n, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !noalias !128757
  %.sroa.19.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx18.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !noalias !128740
  %.sroa.1919.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 %i.q, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !noalias !128757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128761)
  %i.au = icmp eq i64 %i.q, 0
  br i1 %i.au, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.av = phi ptr [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.l ]
  %i.aw = phi i64 [ %i.ci, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 1, %bb.l ] ; 4 uses
  %.lcssa1528.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.l ] ; 2 uses
  %.lcssa1625.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.l ] ; 2 uses
  %i.ax = phi i16 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.n, %bb.l ] ; 2 uses
  %.val1920.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.q, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128764)
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %.sroa.13.0..sroa_idx11.i, align 8, !alias.scope !128765, !noalias !128745
  store ptr %i.bb, ptr %.sroa.10.0..sroa_idx9.i, align 8, !alias.scope !128765, !noalias !128745
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1528.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1625.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !128766
  %i.ba = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -384 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ba to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.promoted10.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa1528.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.promoted6.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa1625.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bd = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.lcssa.i.i.i.i.i.i.i.i  ; 3 uses
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds [24 x i8], ptr %.promoted6.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bh ; 3 uses
  %i.bj = add i64 %.val1920.i.i.i.i.i, -1         ; 6 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !128767 ; 4 uses
  %.not.i.i.i5.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #73, !noalias !128768
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73, !noalias !128745
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.m:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !128769 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !128769
  %i.bl = load i64, ptr %i.b, align 8, !range !425, !alias.scope !128770, !noalias !128745, !noundef !422
  %i.bm = icmp eq i64 %i.aw, %i.bl
  br i1 %i.bm, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.bn = icmp eq i64 %i.bj, 0
  br i1 %i.bn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted10.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bo = phi i64 [ %i.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bj, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted6.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bp = phi i16 [ %i.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bg, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.br = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !128771
  %i.bs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -384 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bp, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.cb = add i64 %i.bo, -1                       ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !range !425, !alias.scope !128772, !noalias !128773, !noundef !422 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.ca, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !128773, !nonnull !422, !noundef !422
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128774
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, %bb.l
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.cf = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond22.i = select i1 %.not.i.i.i.i.i.i.i6.i.i.i, i1 true, i1 %i.cf
  br i1 %or.cond22.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !128775
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.m
  %i.cg = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.av, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.aw ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ch, align 8, !noalias !128776
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !128776
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !128776
  %i.ci = add nuw nsw i64 %i.aw, 1                ; 2 uses
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !128770, !noalias !128745
  %i.cj = icmp eq i64 %i.bj, 0
  br i1 %i.cj, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.p:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bg, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !alias.scope !128765, !noalias !128745
  store i64 %i.bj, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !alias.scope !128777, !noalias !128745
  %i.cl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128778
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.m
  %i.cm = tail call i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.aw, i64 noundef %i.cm, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.p, !noalias !128779

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !128770, !noalias !128745
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.o, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !128780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128745
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.u, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.ck, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.an, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ %i.an, %bb.u ]
  resume { ptr, i32 } %.pn17.i.i.i

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.cn = icmp eq i64 %i.q, 0
  br i1 %i.cn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.s ] ; 2 uses
  %i.co = phi i64 [ %i.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %i.q, %bb.s ]
  %.lcssa58.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.s ] ; 2 uses
  %i.cp = phi i16 [ %i.cy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %i.n, %bb.s ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cq, align 16, !noalias !128781
  %i.cs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -384 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cp, %.preheader.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = and i16 %i.cv, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.cz = sub nsw i64 0, %i.cx
  %i.da = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i, i64 %i.cz ; 2 uses
  %i.db = add i64 %i.co, -1                       ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !range !425, !alias.scope !128782, !noalias !128783, !noundef !422 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.de = getelementptr i8, ptr %i.da, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !128783, !nonnull !422, !noundef !422
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !128784
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.old3.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.s
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.df = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond23.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.df
  br i1 %or.cond23.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !128785
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.e, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 !guid !128865 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !422, !noalias !128866, !nonnull !422 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 144 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 56 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.03 = phi ptr [ %0, %.lr.ph ], [ %i.i, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128867)
  %i.j = load i64, ptr %.sroa.0.03, align 8, !range !532, !alias.scope !128867, !noundef !422 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = add i64 %i.j, -9223372036854775807
  %i.m = select i1 %i.k, i64 %i.l, i64 0          ; 2 uses
  tail call void %i.d(ptr noundef nonnull %.0.val, i64 noundef %i.m), !noalias !128866, !inline_history !128790
  switch i64 %i.m, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.o
    i64 9, label %bb.r
    i64 10, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128868)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !128869, !nonnull !422, !noundef !422
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !128869, !noundef !422
  %i.r = load ptr, ptr %i.e, align 8, !invariant.load !422, !noalias !128870, !nonnull !422
  tail call void %i.r(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q), !noalias !128871, !inline_history !128796
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 56
  %i.t = load i32, ptr %i.s, align 8, !range !701, !alias.scope !128869, !noundef !422 ; 2 uses
  %i.u = icmp ne i32 %i.t, -1                     ; 2 uses
  %i.v = zext i1 %i.u to i64
  tail call void %i.d(ptr noundef nonnull %.0.val, i64 noundef %i.v), !noalias !128872, !inline_history !128799
  br i1 %i.u, label %bb.e, label %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.g, align 8, !invariant.load !422, !noalias !128873, !nonnull !422
  tail call void %i.w(ptr noundef nonnull %.0.val, i32 noundef %i.t), !noalias !128873, !inline_history !128802
  br label %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
end_hunk_1
begin_hunk_2_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob20create_joined_stream0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.sroa.866.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.lr.ph.i.i
  %i.vm = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.lr.ph.i.i ], [ %i.vn, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 240 ; 5 uses
  %.sroa.064.0.copyload65.i.i = load i64, ptr %i.vm, align 8, !noalias !160200 ; 2 uses
  %.not6.i.i = icmp eq i64 %.sroa.064.0.copyload65.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.866.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !160192
  store i64 %.sroa.064.0.copyload65.i.i, ptr %i.bk, align 8, !noalias !160192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.866.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.866.0..sroa_idx67.i.i, i64 232, i1 false), !noalias !160198
  %i.vo = load i64, ptr %i.vg, align 8, !noalias !160192, !noundef !422 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160201)
  call void @llvm.experimental.noalias.scope.decl(metadata !160202)
  %.val.i.i.i.i = load i64, ptr %i.vh, align 8, !alias.scope !160203, !noalias !160192, !noundef !422 ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.vi, align 16, !alias.scope !160203, !noalias !160192, !noundef !422 ; 2 uses
  %i.vp = xor i64 %.val.i.i.i.i, 8317987319222330741
  %i.vq = xor i64 %.val5.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.vr = xor i64 %.val.i.i.i.i, 7816392313619706465
  %i.vs = xor i64 %i.vo, %.val5.i.i.i.i
  %i.vt = xor i64 %i.vs, 8387220255154660723      ; 3 uses
  %i.vu = add i64 %i.vq, %i.vp                    ; 3 uses
  %i.vv = add i64 %i.vt, %i.vr                    ; 2 uses
  %i.vw = call noundef i64 @llvm.fshl.i64(i64 %i.vq, i64 %i.vq, i64 13)
  %i.vx = xor i64 %i.vw, %i.vu                    ; 3 uses
  %i.vy = call noundef i64 @llvm.fshl.i64(i64 %i.vt, i64 %i.vt, i64 16)
  %i.vz = xor i64 %i.vv, %i.vy                    ; 3 uses
  %i.wa = call noundef i64 @llvm.fshl.i64(i64 %i.vu, i64 %i.vu, i64 32)
  %i.wb = add i64 %i.vx, %i.vv                    ; 3 uses
  %i.wc = add i64 %i.vz, %i.wa                    ; 2 uses
  %i.wd = call noundef i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 17)
  %i.we = xor i64 %i.wb, %i.wd                    ; 3 uses
  %i.wf = call noundef i64 @llvm.fshl.i64(i64 %i.vz, i64 %i.vz, i64 21)
  %i.wg = call noundef i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 32)
  %i.wh = xor i64 %i.wc, %i.vo
  %i.wi = xor i64 %i.wc, %i.wf
  %i.wj = xor i64 %i.wi, 576460752303423488       ; 3 uses
  %i.wk = add i64 %i.we, %i.wh                    ; 3 uses
  %i.wl = add i64 %i.wj, %i.wg                    ; 2 uses
  %i.wm = call noundef i64 @llvm.fshl.i64(i64 %i.we, i64 %i.we, i64 13)
  %i.wn = xor i64 %i.wm, %i.wk                    ; 3 uses
  %i.wo = call noundef i64 @llvm.fshl.i64(i64 %i.wj, i64 %i.wj, i64 16)
  %i.wp = xor i64 %i.wo, %i.wl                    ; 3 uses
  %i.wq = call noundef i64 @llvm.fshl.i64(i64 %i.wk, i64 %i.wk, i64 32)
  %i.wr = add i64 %i.wl, %i.wn                    ; 3 uses
  %i.ws = add i64 %i.wp, %i.wq                    ; 2 uses
  %i.wt = call noundef i64 @llvm.fshl.i64(i64 %i.wn, i64 %i.wn, i64 17)
  %i.wu = xor i64 %i.wr, %i.wt                    ; 3 uses
  %i.wv = call noundef i64 @llvm.fshl.i64(i64 %i.wp, i64 %i.wp, i64 21)
  %i.ww = xor i64 %i.wv, %i.ws                    ; 3 uses
  %i.wx = call noundef i64 @llvm.fshl.i64(i64 %i.wr, i64 %i.wr, i64 32)
  %i.wy = xor i64 %i.ws, 576460752303423488
  %i.wz = xor i64 %i.wx, 255
  %i.xa = add i64 %i.wy, %i.wu                    ; 3 uses
  %i.xb = add i64 %i.ww, %i.wz                    ; 2 uses
  %i.xc = call noundef i64 @llvm.fshl.i64(i64 %i.wu, i64 %i.wu, i64 13)
  %i.xd = xor i64 %i.xa, %i.xc                    ; 3 uses
  %i.xe = call noundef i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 16)
  %i.xf = xor i64 %i.xe, %i.xb                    ; 3 uses
  %i.xg = call noundef i64 @llvm.fshl.i64(i64 %i.xa, i64 %i.xa, i64 32)
  %i.xh = add i64 %i.xd, %i.xb                    ; 3 uses
  %i.xi = add i64 %i.xf, %i.xg                    ; 2 uses
  %i.xj = call noundef i64 @llvm.fshl.i64(i64 %i.xd, i64 %i.xd, i64 17)
  %i.xk = xor i64 %i.xh, %i.xj                    ; 3 uses
  %i.xl = call noundef i64 @llvm.fshl.i64(i64 %i.xf, i64 %i.xf, i64 21)
  %i.xm = xor i64 %i.xl, %i.xi                    ; 3 uses
  %i.xn = call noundef i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 32)
  %i.xo = add i64 %i.xk, %i.xi                    ; 3 uses
  %i.xp = add i64 %i.xm, %i.xn                    ; 2 uses
  %i.xq = call noundef i64 @llvm.fshl.i64(i64 %i.xk, i64 %i.xk, i64 13)
  %i.xr = xor i64 %i.xq, %i.xo                    ; 3 uses
  %i.xs = call noundef i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 16)
  %i.xt = xor i64 %i.xs, %i.xp                    ; 3 uses
  %i.xu = call noundef i64 @llvm.fshl.i64(i64 %i.xo, i64 %i.xo, i64 32)
  %i.xv = add i64 %i.xr, %i.xp                    ; 3 uses
  %i.xw = add i64 %i.xt, %i.xu                    ; 2 uses
  %i.xx = call noundef i64 @llvm.fshl.i64(i64 %i.xr, i64 %i.xr, i64 17)
  %i.xy = xor i64 %i.xx, %i.xv                    ; 3 uses
  %i.xz = call noundef i64 @llvm.fshl.i64(i64 %i.xt, i64 %i.xt, i64 21)
  %i.ya = xor i64 %i.xz, %i.xw                    ; 3 uses
  %i.yb = call noundef i64 @llvm.fshl.i64(i64 %i.xv, i64 %i.xv, i64 32)
  %i.yc = add i64 %i.xy, %i.xw
  %i.yd = add i64 %i.ya, %i.yb                    ; 2 uses
  %i.ye = call noundef i64 @llvm.fshl.i64(i64 %i.xy, i64 %i.xy, i64 13)
  %i.yf = xor i64 %i.ye, %i.yc                    ; 3 uses
  %i.yg = call noundef i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 16)
  %i.yh = xor i64 %i.yg, %i.yd                    ; 2 uses
  %i.yi = add i64 %i.yf, %i.yd                    ; 3 uses
  %i.yj = call noundef i64 @llvm.fshl.i64(i64 %i.yf, i64 %i.yf, i64 17)
  %i.yk = call noundef i64 @llvm.fshl.i64(i64 %i.yh, i64 %i.yh, i64 21)
  %i.yl = call noundef i64 @llvm.fshl.i64(i64 %i.yi, i64 %i.yi, i64 32)
  %i.ym = xor i64 %i.yk, %i.yj
  %i.yn = xor i64 %i.ym, %i.yl
  %i.yo = xor i64 %i.yn, %i.yi                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160204)
  call void @llvm.experimental.noalias.scope.decl(metadata !160205)
  %i.yp = lshr i64 %i.yo, 57
  %i.yq = trunc nuw nsw i64 %i.yp to i8           ; 3 uses
  %i.yr = load i64, ptr %i.vj, align 16, !alias.scope !160206, !noalias !160192, !noundef !422 ; 3 uses
  %i.ys = load ptr, ptr %i.uk, align 8, !alias.scope !160206, !noalias !160192, !nonnull !422, !noundef !422 ; 3 uses
  %i.yt = insertelement <16 x i8> poison, i8 %i.yq, i64 0
  %i.yu = shufflevector <16 x i8> %i.yt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fr, %.lr.ph.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.zl, %bb.fr ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.yo, %.lr.ph.i.i.i ], [ %i.zm, %bb.fr ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.yr ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.yv, align 1, !noalias !160207 ; 2 uses
  %i.yw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.yu
  %i.yx = bitcast <16 x i1> %i.yw to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.yx, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fp, %bb.fq
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.zk, %bb.fq ], [ %i.yx, %bb.fp ] ; 3 uses
  %i.yy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.yz = zext nneg i16 %i.yy to i64
  %i.za = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.yz
  %i.zb = and i64 %i.za, %i.yr
  %i.zc = sub nsw i64 0, %i.zb
  %i.zd = getelementptr inbounds [248 x i8], ptr %i.ys, i64 %i.zc
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 -248
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ze, align 8, !noalias !160208, !noundef !422
  %i.zf = icmp eq i64 %.val2.i.i.i.i.i.i, %i.vo
  br i1 %i.zf, label %bb.gw, label %bb.fq, !prof !445

._crit_edge.i.i.i.i.i:                            ; preds = %bb.fq, %bb.fp
  %i.zg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.zh = bitcast <16 x i1> %i.zg to i16
  %i.zi = icmp eq i16 %i.zh, 0
  br i1 %i.zi, label %bb.fr, label %bb.fs, !prof !432

bb.fq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.zj = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.zk = and i16 %i.zj, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.zk, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.fr:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.zl = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.zm = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.zl
  br label %bb.fp

bb.fs:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.zn = load i64, ptr %i.vk, align 8, !alias.scope !160209, !noalias !160192, !noundef !422
  %i.zo = icmp eq i64 %i.zn, 0
  br i1 %i.zo, label %bb.ft, label %bb.gu, !prof !432

bb.ft:                                            ; preds = %bb.fs
  %i.zp = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.uk, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.vh, i1 noundef zeroext true)
          to label %.noexc26.i.i unwind label %bb.gz, !noalias !160210 ; 0 uses

.noexc26.i.i:                                     ; preds = %bb.ft
  %.val.i.i33.pre.i.i = load ptr, ptr %i.uk, align 8, !alias.scope !160211, !noalias !160212
  %.val3.i.i.pre.i.i = load i64, ptr %i.vj, align 16, !alias.scope !160211, !noalias !160212
  br label %bb.gu

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.fo
  %i.zq = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i, %bb.fo ], [ %i.vn, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.ve, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  store ptr %i.zq, ptr %.sroa.8.0..sroa_idx.i.i24, align 8, !noalias !160192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.bl)
          to label %bb.fw unwind label %bb.fv, !noalias !160198

bb.fu:                                            ; preds = %bb.gy, %bb.fv
  %.pn7.pn.pn.i.i = phi { ptr, i32 } [ %.pn7123.i.i, %bb.gy ], [ %i.zr, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !160192
  br label %.body30.i.i

bb.fv:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fw:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !160192
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !160213, !noalias !160192
  %.phi.trans.insert179.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.pre180.i.i = load ptr, ptr %.phi.trans.insert179.i.i, align 16, !alias.scope !160213, !noalias !160192
  br label %bb.ff

bb.fx:                                            ; preds = %bb.ff
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  store i8 0, ptr %i.zs, align 8, !noalias !160192
  %.sroa.082.0.copyload.i.i = load ptr, ptr %i.uc, align 8, !noalias !160192, !nonnull !422, !noundef !422 ; 6 uses
  %.sroa.583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.583.0.copyload.i.i = load i64, ptr %.sroa.583.0..sroa_idx.i.i, align 16, !noalias !160192 ; 4 uses
  %.sroa.685.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.685.0.copyload.i.i = load i64, ptr %.sroa.685.0..sroa_idx.i.i, align 16, !noalias !160192 ; 4 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.082.0.copyload.i.i, align 16, !noalias !160214
  %i.zt = icmp eq i64 %.sroa.583.0.copyload.i.i, 0 ; 4 uses
  br i1 %i.zt, label %bb.fy, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.fx
  %i.zu = mul i64 %.sroa.583.0.copyload.i.i, 248  ; 2 uses
  %i.zv = add i64 %i.zu, 248
  %i.zw = icmp ult i64 %i.zv, -15
  call void @llvm.assume(i1 %i.zw)
  %i.zx = and i64 %i.zu, -16                      ; 2 uses
  %i.zy = add i64 %i.zx, 256                      ; 2 uses
  %i.zz = add i64 %.sroa.583.0.copyload.i.i, 17
  %i.aaa = add i64 %i.zz, %i.zy                   ; 3 uses
  %i.aab = icmp uge i64 %i.aaa, %i.zy
  call void @llvm.assume(i1 %i.aab)
  %i.aac = icmp ult i64 %i.aaa, 9223372036854775793
  call void @llvm.assume(i1 %i.aac)
  %i.aad = sub i64 -256, %i.zx
  %i.aae = getelementptr inbounds i8, ptr %.sroa.082.0.copyload.i.i, i64 %i.aad
  br label %bb.fy

bb.fy:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.fx
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.fx ], [ %i.aae, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.fx ], [ %i.aaa, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 7 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.fx ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 4 uses
  %i.aaf = getelementptr i8, ptr %.sroa.082.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %i.aag = getelementptr i8, ptr %i.aaf, i64 1
  %i.aah = ptrtoint ptr %i.aag to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !160215
  %i.aai = icmp eq i64 %.sroa.685.0.copyload.i.i, 0
  br i1 %i.aai, label %.thread.i.i.i.i.i.i, label %bb.fz

.thread.i.i.i.i.i.i:                              ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !160215
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.aaj = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.aak = bitcast <16 x i1> %i.aaj to i16        ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload.i.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aak, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aam = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aal, %bb.fz ] ; 2 uses
  %i.aan = phi ptr [ %i.aap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.082.0.copyload.i.i, %bb.fz ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aam, align 16, !noalias !160216
  %i.aao = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aap = getelementptr inbounds i8, ptr %i.aan, i64 -3968 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aao to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.fz
  %.sroa.19.0.i.i.i.i = phi ptr [ %i.aal, %bb.fz ], [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.082.0.copyload.i.i, %bb.fz ], [ %i.aap, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aak, %bb.fz ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aar = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.aas = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aat = zext nneg i16 %i.aas to i64
  %i.aau = and i16 %i.aar, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.aav = sub nsw i64 0, %i.aat
  %i.aaw = getelementptr inbounds [248 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.aav ; 2 uses
  %i.aax = add i64 %.sroa.685.0.copyload.i.i, -1  ; 7 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aaw, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !160217 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !160215
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ga, %.noexc29.i.i
  %.sroa.19.3.i.i.i.i = phi ptr [ %.sroa.19.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.ga ] ; 2 uses
  %.sroa.10.3.i.i.i.i = phi ptr [ %.sroa.10.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.ga ] ; 2 uses
  %i.aaz = phi i16 [ %i.abn, %.noexc29.i.i ], [ %i.aau, %bb.ga ] ; 2 uses
  %i.aba = phi i64 [ %i.abl, %.noexc29.i.i ], [ %i.aax, %bb.ga ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aaz, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abb = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.abc = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abb, align 16, !noalias !160218
  %i.abd = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.abe = getelementptr inbounds i8, ptr %i.abc, i64 -3968 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.abd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.4.i.i.i.i = phi ptr [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.4.i.i.i.i = phi ptr [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aaz, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.abh = zext nneg i16 %i.abg to i64
  %i.abi = sub nsw i64 0, %i.abh
  %i.abj = getelementptr inbounds [248 x i8], ptr %.sroa.10.4.i.i.i.i, i64 %i.abi
  %i.abk = getelementptr inbounds i8, ptr %i.abj, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.abk)
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160219

.noexc29.i.i:                                     ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abl = add i64 %i.aba, -1                     ; 2 uses
  %i.abm = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.abn = and i16 %i.abm, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abl, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i, %bb.ga, %.thread.i.i.i.i.i.i
  %i.abo = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond.i.i.i197.i = or i1 %i.zt, %i.abo
  br i1 %or.cond.i.i.i197.i, label %.thread475.i, label %bb.gb

bb.gb:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !160220
  br label %.thread475.i

bb.gc:                                            ; preds = %bb.gg
  %i.abp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bh) #73
          to label %bb.gq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160221

bb.gd:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aaw, i64 -232
  %.sroa.6.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !160215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !160221
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !160215
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.685.0.copyload.i.i, i64 4) ; 3 uses
  %i.abq = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 240  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.685.0.copyload.i.i, 38430716820228232
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.gg, label %bb.ge, !prof !447

bb.ge:                                            ; preds = %bb.gd
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !160222
  %i.abs = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.abq, i64 noundef range(i64 1, 17) 8) #68, !noalias !160222 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.gf ], [ 0, %bb.gd ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.abq) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gc, !noalias !160221

.noexc.i.i.i.i.i.i:                               ; preds = %bb.gg
  unreachable

bb.gh:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ge ], [ %i.abs, %bb.gf ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ge ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.gf ] ; 2 uses
  %i.abu = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.abu)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.bh, i64 240, i1 false), !noalias !160221
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !160215
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !160215
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !160215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !160215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !160215
  store i64 %.sink.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !160223
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !160223
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !160223
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !160223
  %.sroa.19.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  store ptr %.sroa.19.0.i.i.i.i, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !noalias !160223
  %.sroa.25.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.aah, ptr %.sroa.25.0..sroa_idx13.i.i.i.i, align 8, !noalias !160223
  %.sroa.2515.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  store i16 %i.aau, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !noalias !160223
  %.sroa.2719.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  store i64 %i.aax, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !noalias !160223
  call void @llvm.experimental.noalias.scope.decl(metadata !160224)
  call void @llvm.experimental.noalias.scope.decl(metadata !160225)
  call void @llvm.experimental.noalias.scope.decl(metadata !160226)
  call void @llvm.experimental.noalias.scope.decl(metadata !160227)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.abv = icmp eq i64 %i.aax, 0
  br i1 %i.abv, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gh
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.gi

bb.gi:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.abw = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ade, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  %i.abx = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.lcssa821.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.19.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa820.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa918.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa917.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aby = phi i16 [ %i.aau, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ach, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1213.i.i.i.i.i.i.i.i = phi i64 [ %i.aax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ack, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !160228)
  call void @llvm.experimental.noalias.scope.decl(metadata !160229)
  call void @llvm.experimental.noalias.scope.decl(metadata !160230)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aby, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.acd, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !160231, !noalias !160215
  store ptr %i.acc, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !160231, !noalias !160215
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.abz = phi ptr [ %i.acd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gi ] ; 2 uses
  %i.aca = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gi ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abz, align 16, !noalias !160232
  %i.acb = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.acc = getelementptr inbounds i8, ptr %i.aca, i64 -3968 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.acb to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.gi
  %.lcssa820.i.i.i.i.i.i.i.i = phi ptr [ %i.acd, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gi ] ; 2 uses
  %.lcssa917.i.i.i.i.i.i.i.i = phi ptr [ %i.acc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gi ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aby, %bb.gi ] ; 3 uses
  %i.ace = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.acf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.acg = zext nneg i16 %i.acf to i64
  %i.ach = and i16 %i.ace, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aci = sub nsw i64 0, %i.acg
  %i.acj = getelementptr inbounds [248 x i8], ptr %.lcssa917.i.i.i.i.i.i.i.i, i64 %i.aci ; 2 uses
  %i.ack = add i64 %.val1213.i.i.i.i.i.i.i.i, -1  ; 6 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acj, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !160233 ; 2 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, label %bb.gk

bb.gj:                                            ; preds = %bb.gm
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.go, !noalias !160234

bb.gk:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acj, i64 -232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !160235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !160236
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !160236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !160236
  %i.acl = load i64, ptr %i.bi, align 8, !range !425, !alias.scope !160237, !noalias !160215, !noundef !422
  %i.acm = icmp eq i64 %i.abx, %i.acl
  br i1 %i.acm, label %bb.gn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.acn = icmp eq i64 %i.ack, 0
  br i1 %i.acn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i57.i.i.i.i, %.noexc8.i.i.i.i.i.i ], [ %.lcssa820.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i55.i.i.i.i, %.noexc8.i.i.i.i.i.i ], [ %.lcssa917.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aco = phi i16 [ %i.adc, %.noexc8.i.i.i.i.i.i ], [ %i.ach, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acp = phi i64 [ %i.ada, %.noexc8.i.i.i.i.i.i ], [ %i.ack, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aco, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acq = phi ptr [ %i.acu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acr = phi ptr [ %i.act, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acq, align 16, !noalias !160238
  %i.acs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.act = getelementptr inbounds i8, ptr %i.acr, i64 -3968 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.acs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i.i.i.i.i.i57.i.i.i.i = phi ptr [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i.i.i.i.i.i55.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.act, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aco, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.acv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.acw = zext nneg i16 %i.acv to i64
  %i.acx = sub nsw i64 0, %i.acw
  %i.acy = getelementptr inbounds [248 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i55.i.i.i.i, i64 %i.acx
  %i.acz = getelementptr inbounds i8, ptr %i.acy, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.acz)
          to label %.noexc8.i.i.i.i.i.i unwind label %bb.gp, !noalias !160239

.noexc8.i.i.i.i.i.i:                              ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ada = add i64 %i.acp, -1                     ; 2 uses
  %i.adb = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.adc = and i16 %i.adb, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ada, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i
  %i.add = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.zt, %i.add
  br i1 %or.cond22.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !160240
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.gk
  %i.ade = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.abw, %bb.gk ] ; 2 uses
  %i.adf = getelementptr inbounds nuw [240 x i8], ptr %i.ade, i64 %i.abx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.adf, ptr noundef nonnull align 8 dereferenceable(240) %i.bf, i64 240, i1 false), !noalias !160241
  %i.adg = add nuw nsw i64 %i.abx, 1              ; 2 uses
  store i64 %i.adg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !160237, !noalias !160215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !160236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.adh = icmp eq i64 %i.ack, 0
  br i1 %i.adh, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %bb.gi

bb.gm:                                            ; preds = %bb.gn
  %i.adi = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ach, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !160231, !noalias !160215
  store i64 %i.ack, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !160242, !noalias !160215
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bf) #73
          to label %bb.gj unwind label %bb.go, !noalias !160241

bb.gn:                                            ; preds = %bb.gk
  %i.adj = call i64 @llvm.uadd.sat.i64(i64 %i.ack, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.abx, i64 noundef %i.adj, i64 noundef 8, i64 noundef 240)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %bb.gm, !noalias !160243

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %bb.gn
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !160237, !noalias !160215
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gm, %bb.gj
  %i.adk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !160241
  unreachable

bb.gp:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.gp, %bb.gj
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.adl, %bb.gp ], [ %i.adi, %bb.gj ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #73
          to label %.body30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160221

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.gl, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !160215
  %.sroa.071.0.copyload72.i.i = load i64, ptr %i.bi, align 8, !noalias !160244
  %.sroa.7.0.copyload74.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !160244
  %.sroa.975.0.copyload77.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !160244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !160215
  br label %.thread475.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.gc
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !160221
  unreachable

bb.gq:                                            ; preds = %bb.gc
  %i.adm = icmp eq i64 %i.aax, 0
  br i1 %i.adm, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.gq, %.noexc.i.i.i.i.i
  %.sroa.19.1.i.i.i.i = phi ptr [ %.sroa.19.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.gq ] ; 2 uses
  %.sroa.10.1.i.i.i.i = phi ptr [ %.sroa.10.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.gq ] ; 2 uses
  %i.adn = phi i16 [ %i.aeb, %.noexc.i.i.i.i.i ], [ %i.aau, %bb.gq ] ; 2 uses
  %i.ado = phi i64 [ %i.adz, %.noexc.i.i.i.i.i ], [ %i.aax, %bb.gq ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.adn, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adp = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.adq = phi ptr [ %i.ads, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adp, align 16, !noalias !160245
  %i.adr = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ads = getelementptr inbounds i8, ptr %i.adq, i64 -3968 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.adr to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.2.i.i.i.i = phi ptr [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.2.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ads, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.adn, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.adv = zext nneg i16 %i.adu to i64
  %i.adw = sub nsw i64 0, %i.adv
  %i.adx = getelementptr inbounds [248 x i8], ptr %.sroa.10.2.i.i.i.i, i64 %i.adw
  %i.ady = getelementptr inbounds i8, ptr %i.adx, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.ady)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160246

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.adz = add i64 %i.ado, -1                     ; 2 uses
  %i.aea = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aeb = and i16 %i.aea, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adz, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.gq
  %i.aec = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.zt, %i.aec
  br i1 %or.cond23.i.i.i.i, label %.body30.i.i, label %bb.gr

bb.gr:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !160247
  br label %.body30.i.i

.thread475.i:                                     ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.gb, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.975.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gb ], [ %.sroa.975.0.copyload77.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.7.1.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.gb ], [ %.sroa.7.0.copyload74.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.071.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gb ], [ %.sroa.071.0.copyload72.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  store i8 0, ptr %i.zs, align 8, !noalias !160192
  br label %bb.hi

.body30.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gr, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.fu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.fn, %bb.fi
  %i.aed = phi ptr [ %i.tz, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.tz, %bb.gr ], [ %i.uh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.tz, %.body.i.i.i.i.i.i ], [ %i.uh, %bb.fn ], [ %i.uh, %bb.fu ], [ %i.uh, %bb.fi ], [ %i.tz, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aee = phi ptr [ %i.ua, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ua, %bb.gr ], [ %i.ui, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ua, %.body.i.i.i.i.i.i ], [ %i.ui, %bb.fn ], [ %i.ui, %bb.fu ], [ %i.ui, %bb.fi ], [ %i.ua, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aef = phi ptr [ %i.ub, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ub, %bb.gr ], [ %i.uj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ub, %.body.i.i.i.i.i.i ], [ %i.uj, %bb.fn ], [ %i.uj, %bb.fu ], [ %i.uj, %bb.fi ], [ %i.ub, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aeg = phi ptr [ %i.uc, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.uc, %bb.gr ], [ %i.uk, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.uc, %.body.i.i.i.i.i.i ], [ %i.uk, %bb.fn ], [ %i.uk, %bb.fu ], [ %i.uk, %bb.fi ], [ %i.uc, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn11.pn.pn.i.i = phi { ptr, i32 } [ %i.abp, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.abp, %bb.gr ], [ %i.ux, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.ux, %bb.fn ], [ %.pn7.pn.pn.i.i, %bb.fu ], [ %i.ug, %bb.fi ], [ %lpad.loopexit.split-lp380, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aei = load i8, ptr %i.aeh, align 8, !range !434, !noalias !160192, !noundef !422
  %i.aej = trunc nuw i8 %i.aei to i1
  br i1 %i.aej, label %bb.hg, label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gs
  %lpad.loopexit.split-lp380 = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

bb.gs:                                            ; preds = %bb.ff
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ue, i64 200
  store ptr %i.ael, ptr %i.aek, align 8, !alias.scope !160213, !noalias !160192
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aen = load ptr, ptr %i.aem, align 8, !noalias !160192, !nonnull !422, !align !459, !noundef !422
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 368
  %.val18.i.i = load ptr, ptr %i.aeo, align 16, !noalias !160198, !nonnull !422, !noundef !422
  %i.aep = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.aeq = getelementptr i8, ptr %i.ue, i64 80
  %.val.i.i = load ptr, ptr %i.aeq, align 8, !noalias !160198, !nonnull !422, !noundef !422
  %i.aer = getelementptr i8, ptr %i.ue, i64 88
  %.val17.i.i = load i64, ptr %i.aer, align 8, !noalias !160198, !noundef !422
  %i.aes = invoke { ptr, ptr } @_RNvXsm_NtCshkPeWWG1flk_5lance5indexNtNtB7_7dataset7DatasetNtB5_23DatasetIndexInternalExt19unindexed_fragments(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.aep, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val17.i.i)
          to label %bb.gt unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160198 ; 2 uses

bb.gt:                                            ; preds = %bb.gs
  %i.aet = extractvalue { ptr, ptr } %i.aes, 0    ; 2 uses
  %i.aeu = extractvalue { ptr, ptr } %i.aes, 1    ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.aet, ptr %i.aev, align 8, !noalias !160192
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.aeu, ptr %i.aew, align 16, !noalias !160192
  br label %bb.fj

bb.gu:                                            ; preds = %.noexc26.i.i, %bb.fs
  %.val3.i.i.i.i = phi i64 [ %.val3.i.i.pre.i.i, %.noexc26.i.i ], [ %i.yr, %bb.fs ] ; 4 uses
  %.val.i.i33.i.i = phi ptr [ %.val.i.i33.pre.i.i, %.noexc26.i.i ], [ %i.ys, %bb.fs ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !160192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.bj, ptr noundef nonnull align 8 dereferenceable(240) %i.bk, i64 240, i1 false), !noalias !160192
  call void @llvm.experimental.noalias.scope.decl(metadata !160211)
  %.sroa.0.07.i.i.i.i.i = and i64 %.val3.i.i.i.i, %i.yo ; 3 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.val.i.i33.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.aex, align 1, !noalias !160248
  %i.aey = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.aez = bitcast <16 x i1> %i.aey to i16        ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.aez, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i38.i.i, label %._crit_edge.i.i.i34.i.i, !prof !451

._crit_edge.i.i.i34.i.i:                          ; preds = %.lr.ph.i.i.i38.i.i, %bb.gu
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %bb.gu ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i38.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.aez, %bb.gu ], [ %i.afq, %.lr.ph.i.i.i38.i.i ]
  %i.afa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.afb = zext nneg i16 %i.afa to i64
  %i.afc = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.afb
  %i.afd = and i64 %i.afc, %.val3.i.i.i.i         ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.val.i.i33.i.i, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !noalias !160249, !noundef !422 ; 2 uses
  %i.afg = icmp sgt i8 %i.aff, -1
  br i1 %i.afg, label %bb.gv, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14insert_no_growCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !432

bb.gv:                                            ; preds = %._crit_edge.i.i.i34.i.i
end_hunk_2
begin_hunk_3_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion19write_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bf = invoke noundef nonnull ptr @_RNvNtNtCs4Jn2LUi8st0_4rand4rngs6thread3rng()
          to label %bb.f unwind label %bb.r       ; 8 uses

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bg = invoke noundef nonnull ptr @_RNvNtNtCs4Jn2LUi8st0_4rand4rngs6thread3rng()
          to label %bb.dm unwind label %bb.dy     ; 8 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit212.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit233, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit209
  %.val.i.i.i243.sink = phi i64 [ %.val.i.i.i210, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit209 ], [ %.val.i.i.i243, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit233 ]
  %.sroa.0.0.ph = phi i64 [ %.sroa.010.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit209 ], [ %.sroa.015.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit233 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i244 = load ptr, ptr %i.bh, align 8, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i244, i64 noundef %.val.i.i.i243.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !422
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit212

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit212: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit212.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit233, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit209, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.015.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit233 ], [ -1, %bb.b ], [ %.sroa.010.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit209 ], [ %.sroa.0.0.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit212.sink.split ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.0.0, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false)
  store i8 -1, ptr %i.x, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit220

bb.f:                                             ; preds = %bb.d
  store ptr %i.bf, ptr %i.aq, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 336 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 16, !alias.scope !180106, !noalias !180107, !noundef !422 ; 4 uses
  %i.bm = icmp ult i64 %i.bl, 63
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i64 %i.bl, 63
  br i1 %.not.i.i.i, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bn = add nuw nsw i64 %i.bl, 2
  store i64 %i.bn, ptr %i.bk, align 16, !alias.scope !180106, !noalias !180107
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bp = load i64, ptr %i.bo, align 4, !alias.scope !180108, !noalias !180107
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 268
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !180106, !noalias !180107, !noundef !422
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 272 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 328 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !180109, !noalias !180107, !noundef !422 ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 1
  br i1 %i.bv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = add nsw i64 %i.bu, -256
  store i64 %i.bw, ptr %i.bt, align 8, !alias.scope !180109, !noalias !180107
  invoke void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bs, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bj)
          to label %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.o, !noalias !180107

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtNtCs4Jn2LUi8st0_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngE19reseed_and_generateCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bs, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bj)
          to label %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.o, !noalias !180107

_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.k, %bb.j
  store i64 1, ptr %i.bk, align 16, !alias.scope !180110, !noalias !180107
  %i.bx = zext i32 %i.br to i64
  %i.by = load i32, ptr %i.bj, align 16, !alias.scope !180106, !noalias !180107, !noundef !422
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.ca, %i.bx
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.l:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 272 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 328 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !180111, !noalias !180107, !noundef !422 ; 2 uses
  %i.cf = icmp slt i64 %i.ce, 1
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nsw i64 %i.ce, -256
  store i64 %i.cg, ptr %i.cd, align 8, !alias.scope !180111, !noalias !180107
  invoke void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.cc, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bj)
          to label %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i unwind label %bb.o, !noalias !180107

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtNtCs4Jn2LUi8st0_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngE19reseed_and_generateCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.cc, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bj)
          to label %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i unwind label %bb.o, !noalias !180107

_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i: ; preds = %bb.n, %bb.m
  store i64 2, ptr %i.bk, align 16, !alias.scope !180112, !noalias !180107
  %i.ch = load i64, ptr %i.bj, align 16, !alias.scope !180113, !noalias !180107
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180116)
  %i.cj = load ptr, ptr %i.aq, align 8, !alias.scope !180117, !nonnull !422, !noundef !422 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !180117, !noundef !422
  %i.cl = add i64 %i.ck, -1                       ; 2 uses
  store i64 %i.cl, ptr %i.cj, align 8, !noalias !180117
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell10UnsafeCellINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding12ReseedingRngNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.cu

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i, %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.h
  %.sroa.0.0.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %i.ch, %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i ], [ %i.cb, %_RNvMs_NtCsgdD1EZdIidU_9rand_core5blockINtB4_8BlockRngINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180120)
  %i.cn = load ptr, ptr %i.aq, align 8, !alias.scope !180121, !nonnull !422, !noundef !422 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !noalias !180121, !noundef !422
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8, !noalias !180121
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell10UnsafeCellINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding12ReseedingRngNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.s unwind label %bb.r

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.o, %bb.p, %bb.r
  %.pn37 = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %i.ci, %bb.p ], [ %i.ci, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.r:                                             ; preds = %bb.q, %bb.d
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.s:                                             ; preds = %bb.q, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.cs = getelementptr i8, ptr %i.ba, i64 32     ; 2 uses
  %.val113 = load i64, ptr %i.cs, align 8, !noundef !422
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %i.ay, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %.sroa.0.0.i.i.i, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.cw, align 8
  store i64 1, ptr %i.ct, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %.val113, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18deletion_file_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct)
          to label %bb.t unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !180122)
  call void @llvm.experimental.noalias.scope.decl(metadata !180123)
  %i.da = load ptr, ptr %i.be, align 8, !alias.scope !180124, !nonnull !422, !noundef !422 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !180124, !noundef !422
  %i.dd = getelementptr i8, ptr %i.da, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  %.val3.i.i.i = load <16 x i8>, ptr %i.da, align 16, !noalias !180125
  %i.df = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dh = load i64, ptr %i.cs, align 8, !alias.scope !180124, !noundef !422 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643.sroa.4.i)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.643.sroa.4.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !180126
  store i64 0, ptr %i.w, align 8, !noalias !180126
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %i.dj, align 8, !noalias !180126
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i64 %i.dh, ptr %i.dk, align 8, !noalias !180126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !180126
  call void @llvm.experimental.noalias.scope.decl(metadata !180127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !180128
  store ptr %i.da, ptr %i.p, align 8, !alias.scope !180129, !noalias !180130
  %.sroa.0249.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.dg, ptr %.sroa.0249.sroa.5.0..sroa_idx, align 8, !alias.scope !180129, !noalias !180130
  %.sroa.0249.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.de, ptr %.sroa.0249.sroa.6.0..sroa_idx, align 8, !alias.scope !180129, !noalias !180130
  %.sroa.0249.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store <16 x i1> %i.df, ptr %.sroa.0249.sroa.7.0..sroa_idx, align 8, !alias.scope !180129, !noalias !180130
  %.sroa.028.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store i64 %i.dh, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !alias.scope !180129, !noalias !180131
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.w, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !180129, !noalias !180131
  call void @llvm.experimental.noalias.scope.decl(metadata !180132)
  call void @llvm.experimental.noalias.scope.decl(metadata !180133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !180134
  %i.dl = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2m_14PrimitiveArrayNtNtB2q_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratormE9from_iterBW_E0ENtNtB47_8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc9.i unwind label %bb.aj, !noalias !180135 ; 2 uses

.body11.i:                                        ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb, %.body.i, %bb.aw, %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.aj, %bb.ac, %bb.aa, %.loopexit.split-lp.i.i.i.i.a
  %.pn.pn.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.gt, %bb.be ], [ %i.gk, %bb.aw ], [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i.i.i.i.a ], [ %lpad.phi18.i.i.i.i, %bb.aa ], [ %i.gt, %bb.bf ], [ %i.fi, %bb.bb ], [ %i.fi, %bb.bc ], [ %i.fi, %.body.i ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.fp, %bb.aj ], [ %.pn.i.i, %bb.ar ] ; 2 uses
  %i.dm = load i64, ptr %i.w, align 8, !range !545, !alias.scope !180136, !noalias !180126, !noundef !422
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.body, label %bb.u

bb.u:                                             ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %.body unwind label %bb.bd, !noalias !180126

.noexc9.i:                                        ; preds = %bb.t
  %i.do = extractvalue { i32, i32 } %i.dl, 0
  %i.dp = extractvalue { i32, i32 } %i.dl, 1
  %i.dq = trunc i32 %i.do to i1
  br i1 %i.dq, label %bb.v, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.v:                                             ; preds = %.noexc9.i
  %.val8.i.i.i.i = load i64, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !alias.scope !180137, !noalias !180128, !noundef !422
  %i.dr = call i64 @llvm.uadd.sat.i64(i64 %.val8.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dr, i64 4) ; 4 uses
  %i.ds = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 4 uses
  %i.dt = icmp ugt i64 %i.dr, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ds, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.dt, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.x, label %bb.w, !prof !447

bb.w:                                             ; preds = %bb.v
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !180138
  %i.du = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ds, i64 noundef range(i64 1, 17) 4) #68, !noalias !180138 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.x, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.w ], [ 0, %bb.v ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ds) #72
          to label %.noexc10.i unwind label %bb.aj, !noalias !180134

.noexc10.i:                                       ; preds = %bb.x
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.w
  store i32 %i.dp, ptr %i.du, align 4, !noalias !180134
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.n, align 8, !noalias !180134
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.du, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !180134
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !180134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !180134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !180135
  call void @llvm.experimental.noalias.scope.decl(metadata !180139)
  call void @llvm.experimental.noalias.scope.decl(metadata !180140)
  call void @llvm.experimental.noalias.scope.decl(metadata !180141)
  call void @llvm.experimental.noalias.scope.decl(metadata !180142)
  %i.dw = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2m_14PrimitiveArrayNtNtB2q_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratormE9from_iterBW_E0ENtNtB47_8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i, !noalias !180143 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.dx = extractvalue { i32, i32 } %i.dw, 0
  %i.dy = trunc i32 %i.dx to i1
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %bb.y

bb.y:                                             ; preds = %.noexc10.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ea = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i ], [ %i.eh, %.noexc10.i.i.i.i ]
  %i.eb = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %.noexc10.i.i.i.i ] ; 3 uses
  %i.ec = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %.noexc10.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi { i32, i32 } [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %.noexc10.i.i.i.i ]
  %i.ed = extractvalue { i32, i32 } %.pn.i.i.i.i.i.i, 1
  %i.ee = icmp samesign ult i64 %i.ec, 2305843009213693952
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.ec, %i.eb
  br i1 %i.ef, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.z

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.y
  %.val.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !180144, !noalias !180134, !noundef !422
  %i.eg = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.eb, i64 noundef %i.eg, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.a, !noalias !180145

.noexc9.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.pre6.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !425, !alias.scope !180146, !noalias !180134
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !180146, !noalias !180134
  br label %bb.z

bb.z:                                             ; preds = %.noexc9.i.i.i.i, %bb.y
  %i.eh = phi ptr [ %i.ea, %bb.y ], [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ] ; 2 uses
  %i.ei = phi i64 [ %i.eb, %bb.y ], [ %.pre6.i.i.i.i.i.i, %.noexc9.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ec
  store i32 %i.ed, ptr %i.ej, align 4, !noalias !180147
  %i.ek = add nuw nsw i64 %i.ec, 1                ; 3 uses
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !180146, !noalias !180134
  %i.el = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2m_14PrimitiveArrayNtNtB2q_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratormE9from_iterBW_E0ENtNtB47_8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.a, !noalias !180143 ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %bb.z
  %i.em = extractvalue { i32, i32 } %i.el, 0
  %i.en = trunc i32 %i.em to i1
  br i1 %i.en, label %bb.y, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i

.loopexit.split-lp.thread.i.i.i.i:                ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %lpad.loopexit.split-lp11.i.i.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i.i.i.a:                     ; preds = %bb.z, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !180134 ; 2 uses
  %3 = icmp eq i64 %.val.pre.i.i.i.i, 0
  br i1 %3, label %.body11.i, label %.loopexit.split-lp.i._crit_edge.i.i.i

.loopexit.split-lp.i._crit_edge.i.i.i:            ; preds = %.loopexit.split-lp.i.i.i.i.a
  %.val7.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !180134
  %.pre.i.i.i = shl nuw i64 %.val.pre.i.i.i.i, 2
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i._crit_edge.i.i.i, %.loopexit.split-lp.thread.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %i.ds, %.loopexit.split-lp.thread.i.i.i.i ]
  %.val7.i.i.i.i = phi ptr [ %.val7.i.pre.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %i.du, %.loopexit.split-lp.thread.i.i.i.i ]
  %lpad.phi18.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %lpad.loopexit.split-lp11.i.i.i.i.a, %.loopexit.split-lp.thread.i.i.i.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %.pre-phi.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #68, !noalias !180134
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i: ; preds = %.noexc10.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i = load i64, ptr %i.n, align 8, !noalias !180148
  %.sroa.5.0.copyload.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !180148
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i, %.noexc.i.i.i.i
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.ek, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ 1, %.noexc.i.i.i.i ]
  %.sroa.5.0.copyload.i.i = phi ptr [ %.sroa.5.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ %i.du, %.noexc.i.i.i.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.noexc.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !180134
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.noexc9.i
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %.noexc9.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !180134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !180128
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.eo = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.er = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !180128
  store i64 1, ptr %i.o, align 8, !noalias !180128
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.es, align 8, !noalias !180128
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.et, align 8, !noalias !180128
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !180128
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !180128
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180128
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %i.eq, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !180128
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !180149
  %i.eu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !180149 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ab, label %bb.ae, !prof !454

bb.ab:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i.i unwind label %bb.ac, !noalias !180149

.noexc.i.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o) #73
          to label %.body11.i unwind label %bb.ad, !noalias !180128

bb.ad:                                            ; preds = %bb.ac
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !180128
  unreachable

bb.ae:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !180128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !180128
  store ptr %i.eu, ptr %i.v, align 8, !alias.scope !180127, !noalias !180126
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.ey, align 8, !alias.scope !180127, !noalias !180126
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.er, ptr %i.ez, align 8, !alias.scope !180127, !noalias !180126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !180126
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.af unwind label %bb.be, !noalias !180126

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !180126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !180126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !180126
  call void @llvm.experimental.noalias.scope.decl(metadata !180150)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !180150, !noalias !180126, !noundef !422
  %i.fc = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fd = add i64 %i.fc, 3
  %i.fe = and i64 %i.fd, -4                       ; 2 uses
  %i.ff = sub i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.ff, 4
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq i64 %i.fe, %i.fc
  br i1 %i.fh, label %bb.ak, label %.invoke.i.i, !prof !445

bb.ag:                                            ; preds = %.invoke.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fj = atomicrmw add ptr %i.fl, i64 -1 release, align 8, !noalias !180151
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.ai, !noalias !180152

.invoke.i.i:                                      ; preds = %bb.af
  %i.fl = load ptr, ptr %i.s, align 8, !alias.scope !180150, !noalias !180126, !nonnull !422, !noundef !422 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !180153, !noundef !422
  %.not.i.i = icmp eq ptr %i.fn, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @4483, ptr @4485
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #72
          to label %.cont.i.i unwind label %bb.ag, !noalias !180153

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !180152
  unreachable

bb.aj:                                            ; preds = %bb.at, %bb.x, %bb.t
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.ak:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !180126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !180126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !180126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !180126
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !180154)
  call void @llvm.experimental.noalias.scope.decl(metadata !180155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !180126
  %i.fq = load ptr, ptr %i.r, align 8, !alias.scope !180155, !noalias !180126, !noundef !422 ; 3 uses
  %.not.i16.i = icmp eq ptr %i.fq, null
  br i1 %.not.i16.i, label %bb.az, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !180155, !noalias !180126, !noundef !422 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !180154, !noalias !180126, !noundef !422
  %i.fv = lshr i64 %i.fu, 2                       ; 2 uses
  %.not12.i.i = icmp eq i64 %i.fs, %i.fv
  br i1 %.not12.i.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !180156
  store i64 %i.fv, ptr %i.k, align 8, !noalias !180156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !180156
  store i64 %i.fs, ptr %i.j, align 8, !noalias !180156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !180156
  store ptr %i.k, ptr %i.i, align 8, !noalias !180156
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !180156
  %i.fw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.fw, align 8, !noalias !180156
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !180156
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @3442, ptr noundef nonnull %i.i)
          to label %bb.ap unwind label %bb.an, !noalias !180157

bb.an:                                            ; preds = %bb.am
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = atomicrmw add ptr %i.fq, i64 -1 release, align 8, !noalias !180158
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.au, !noalias !180159

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !180156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !180156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !180156
  %.sroa.8.sroa.0.0.copyload55.i = load i64, ptr %i.l, align 8, !noalias !180160
  %.sroa.8.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !180160
  %i.ga = atomicrmw add ptr %i.fq, i64 -1 release, align 8, !noalias !180161
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i unwind label %bb.as, !noalias !180159

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.as, %bb.ao, %bb.an
  %.pn.i.i = phi { ptr, i32 } [ %i.gf, %bb.as ], [ %i.fx, %bb.ao ], [ %i.fx, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180162)
  call void @llvm.experimental.noalias.scope.decl(metadata !180163)
  call void @llvm.experimental.noalias.scope.decl(metadata !180164)
  call void @llvm.experimental.noalias.scope.decl(metadata !180165)
  %i.gc = load ptr, ptr %i.t, align 8, !alias.scope !180166, !noalias !180126, !nonnull !422, !noundef !422
  %i.gd = atomicrmw add ptr %i.gc, i64 -1 release, align 8, !noalias !180167
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.ar, label %.body11.i

bb.ar:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body11.i unwind label %bb.au, !noalias !180168
end_hunk_3
begin_hunk_4_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19delete_table_branch0B9_:bb.a
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.experimental.noalias.scope.decl(metadata !204270)
  call void @llvm.experimental.noalias.scope.decl(metadata !204271)
  %.val.i.i2.i.i.i = load i64, ptr %i.pt, align 8, !range !425, !alias.scope !204272, !noalias !204165, !noundef !422 ; 2 uses
  %i.pu = icmp eq i64 %.val.i.i2.i.i.i, 0
  br i1 %i.pu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4.i.i.i, label %bb.et

bb.et:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 800
  %.val1.i.i3.i.i.i = load ptr, ptr %i.pv, align 16, !alias.scope !204272, !noalias !204165, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i, i64 noundef %.val.i.i2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204273
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4.i.i.i: ; preds = %bb.et, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 816
  call void @llvm.experimental.noalias.scope.decl(metadata !204274)
  %i.px = load i64, ptr %i.pw, align 16, !range !427, !alias.scope !204275, !noalias !204165, !noundef !422 ; 3 uses
  %i.py = icmp eq i64 %i.px, -1
  br i1 %i.py, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset15branch_location14BranchLocationECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !204276)
  call void @llvm.experimental.noalias.scope.decl(metadata !204277)
  %i.pz = icmp eq i64 %i.px, 0
  br i1 %i.pz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset15branch_location14BranchLocationECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.val1.i.i.i6.i.i.i = load ptr, ptr %i.qa, align 8, !alias.scope !204278, !noalias !204165, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6.i.i.i, i64 noundef %i.px, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !204279
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset15branch_location14BranchLocationECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.ew:                                            ; preds = %bb.cp, %bb.bl
  %i.qb = phi ptr [ %i.jk, %bb.cp ], [ %i.ek, %bb.bl ]
  %i.qc = phi ptr [ %i.jl, %bb.cp ], [ %i.el, %bb.bl ]
  %i.qd = phi ptr [ %i.jm, %bb.cp ], [ %i.em, %bb.bl ]
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ex:                                            ; preds = %bb.fb, %bb.fa
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i.i

.body109.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ex
  %i.qg = phi ptr [ %i.cz, %bb.ex ], [ %i.vq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.qh = phi ptr [ %.phi.trans.insert.i, %bb.ex ], [ %i.vr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.qi = phi ptr [ %i.do, %bb.ex ], [ %i.vs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.qj = phi ptr [ %i.qk, %bb.ex ], [ %i.vu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %eh.lpad-body110.i.i = phi { ptr, i32 } [ %i.qf, %bb.ex ], [ %.pn21.pn.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9278.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9278.sroa.10.i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches26cleanup_branch_directories0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.qj) #73
          to label %.body89.i.i unwind label %bb.cb, !noalias !204166

bb.ey:                                            ; preds = %bb.ap
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 929 ; 4 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !421, !noalias !204280
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9278.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9278.sroa.10.i.i)
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5106.i.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5106.i.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.i.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.368.i.sroa.9.i.i)
  switch i8 %.pre.i.i, label %default.unreachable344 [
    i8 0, label %._crit_edge42.i
    i8 1, label %bb.fa
    i8 2, label %bb.fb
    i8 3, label %bb.fe
    i8 4, label %bb.gg
  ]

._crit_edge42.i:                                  ; preds = %bb.ey
  %.phi.trans.insert43.i = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.pre44.i = load ptr, ptr %.phi.trans.insert43.i, align 8, !noalias !204280
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  %.pre46.i = load ptr, ptr %.phi.trans.insert45.i, align 16, !noalias !204280
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  %.pre48.i = load i64, ptr %.phi.trans.insert47.i, align 8, !noalias !204280
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge42.i, %.thread499.i.i
  %i.ql = phi ptr [ %i.pg, %.thread499.i.i ], [ %i.cz, %._crit_edge42.i ]
  %i.qm = phi ptr [ %i.ph, %.thread499.i.i ], [ %.phi.trans.insert.i, %._crit_edge42.i ]
  %i.qn = phi ptr [ %i.pi, %.thread499.i.i ], [ %i.do, %._crit_edge42.i ]
  %i.qo = phi i64 [ %i.pn, %.thread499.i.i ], [ %.pre48.i, %._crit_edge42.i ]
  %i.qp = phi ptr [ %i.pl, %.thread499.i.i ], [ %.pre46.i, %._crit_edge42.i ]
  %i.qq = phi ptr [ %i.pk, %.thread499.i.i ], [ %.pre44.i, %._crit_edge42.i ] ; 2 uses
  %i.qr = phi ptr [ %.sroa.12275.0..sroa_idx.i.i, %.thread499.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge42.i ]
  %i.qs = phi ptr [ %i.po, %.thread499.i.i ], [ %i.qk, %._crit_edge42.i ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 928
  store i8 0, ptr %i.qt, align 16, !noalias !204280
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 912
  store ptr %i.qq, ptr %i.qu, align 16, !noalias !204280
  store ptr %i.qp, ptr %i.qs, align 8, !noalias !204280
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i64 %i.qo, ptr %i.qv, align 8, !noalias !204280
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 936
  store ptr %i.qq, ptr %i.qw, align 8, !noalias !204280
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1184
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !noalias !204280
  br label %bb.fe

bb.fa:                                            ; preds = %bb.ey
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2155) #72
          to label %.noexc107.i.i unwind label %bb.ex, !noalias !204281

.noexc107.i.i:                                    ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ey
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2155) #72
          to label %.noexc108.i.i unwind label %bb.ex, !noalias !204281

.noexc108.i.i:                                    ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.fe
  %i.qx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !204280
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.qz = load i8, ptr %i.qy, align 16, !range !487, !noalias !204280, !noundef !422
  %cond.i.i101.i.i = icmp eq i8 %i.qz, 3
  br i1 %cond.i.i101.i.i, label %bb.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 944
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches5fetch0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ra)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.ge, !noalias !204281

bb.fe:                                            ; preds = %bb.ez, %bb.ey
  %i.rb = phi ptr [ %i.cz, %bb.ey ], [ %i.ql, %bb.ez ] ; 12 uses
  %i.rc = phi ptr [ %.phi.trans.insert.i, %bb.ey ], [ %i.qm, %bb.ez ] ; 12 uses
  %i.rd = phi ptr [ %i.do, %bb.ey ], [ %i.qn, %bb.ez ] ; 11 uses
  %i.re = phi ptr [ %.phi.trans.insert.i.i, %bb.ey ], [ %i.qr, %bb.ez ] ; 12 uses
  %i.rf = phi ptr [ %i.qk, %bb.ey ], [ %i.qs, %bb.ez ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !204280
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 3 uses
  invoke fastcc void @_RNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB7_8Branches4list0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.l, ptr noundef nonnull align 8 %i.rg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ff unwind label %bb.fc, !noalias !204281

bb.ff:                                            ; preds = %bb.fe
  %i.rh = load i8, ptr %i.l, align 8, !range !428, !noalias !204280, !noundef !422 ; 3 uses
  %i.ri = icmp eq i8 %i.rh, -2
  br i1 %i.ri, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !204280
  br label %.thread.i.i

bb.fh:                                            ; preds = %bb.ff
  %.sroa.368.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.368.i.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.368.0..sroa_idx.i.i.i, align 1, !noalias !204280
  %.sroa.368.i.sroa.4.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.368.i.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.368.i.sroa.4.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i, i64 6, i1 false), !noalias !204280
  %.sroa.368.i.sroa.5.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.368.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.368.i.sroa.5.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !204280 ; 3 uses
  %.sroa.368.i.sroa.7.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.368.i.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.368.i.sroa.7.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !204280 ; 2 uses
  %.sroa.368.i.sroa.8.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.368.i.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.368.i.sroa.8.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !204280 ; 2 uses
  %.sroa.368.i.sroa.9.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.368.i.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.368.i.sroa.9.0..sroa.368.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !204280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !204280
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 16, !range !487, !noalias !204280, !noundef !422
  %cond.i36.i.i.i = icmp eq i8 %i.rk, 3
  br i1 %cond.i36.i.i.i, label %bb.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 944
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches5fetch0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.rl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i.i.i unwind label %bb.fj, !noalias !204281

bb.fj:                                            ; preds = %bb.fi
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i.i.i: ; preds = %bb.fi, %bb.fh
  %.not.i.i102.i.i = icmp eq i8 %i.rh, -1
  br i1 %.not.i.i102.i.i, label %bb.fk, label %bb.gd

bb.fk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.368.i.sroa.5.0.copyload.i.i, ptr %i.rn, align 8, !noalias !204280
  store ptr %.sroa.368.i.sroa.7.0.copyload.i.i, ptr %i.rj, align 16, !noalias !204280
  %.sroa.368.i.sroa.8.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store i64 %.sroa.368.i.sroa.8.0.copyload.i.i, ptr %.sroa.368.i.sroa.8.7..sroa_idx.i.i, align 8, !noalias !204280
  %.sroa.368.i.sroa.9.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.368.i.sroa.9.7..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.368.i.sroa.9.i.i, i64 24, i1 false), !noalias !204280
  call void @llvm.experimental.noalias.scope.decl(metadata !204282)
  call void @llvm.experimental.noalias.scope.decl(metadata !204283)
  %i.ro = inttoptr i64 %.sroa.368.i.sroa.5.0.copyload.i.i to ptr ; 4 uses
  %.val3.i.i.i.i103.i.i = load <16 x i8>, ptr %i.ro, align 16, !noalias !204284
  %i.rp = load i64, ptr %.sroa.368.i.sroa.9.7..sroa_idx.i.i, align 16, !alias.scope !204285, !noalias !204280, !noundef !422 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204286)
  call void @llvm.experimental.noalias.scope.decl(metadata !204287)
  call void @llvm.experimental.noalias.scope.decl(metadata !204288)
  call void @llvm.experimental.noalias.scope.decl(metadata !204289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !204290
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.rr = icmp sgt <16 x i8> %.val3.i.i.i.i103.i.i, splat (i8 -1)
  %i.rs = bitcast <16 x i1> %i.rr to i16          ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.rs, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ru = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.rt, %bb.fl ] ; 2 uses
  %i.rv = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ro, %bb.fl ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ru, align 16, !noalias !204291
  %i.rw = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 -2304 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.rw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i106.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i106.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.fl
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.rt, %bb.fl ], [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.012.0.copyload.i.i.i.i.i.i.i = phi ptr [ %i.ro, %bb.fl ], [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.rs, %bb.fl ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.rz = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.sa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sb = zext nneg i16 %i.sa to i64
  %i.sc = and i16 %i.rz, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.sd = sub nsw i64 0, %i.sb
  %i.se = getelementptr inbounds [144 x i8], ptr %.sroa.012.0.copyload.i.i.i.i.i.i.i, i64 %i.sd ; 2 uses
  %i.sf = add nsw i64 %i.rp, -1                   ; 2 uses
  %i.sg = getelementptr i8, ptr %i.se, i64 -136
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.sg, align 8, !noalias !204292, !nonnull !422, !noundef !422
  %i.sh = getelementptr i8, ptr %i.se, i64 -128
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.sh, align 8, !noalias !204292, !noundef !422
  %.sroa.0.0.i11.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.rp, i64 4) ; 2 uses
  %i.si = shl i64 %.sroa.0.0.i11.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.sj = icmp ugt i64 %i.rp, 1152921504606846975
  %.not.i.i.i.i.i.i.i104.i.i = icmp ugt i64 %i.si, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.sj, %.not.i.i.i.i.i.i.i104.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm, !prof !447

bb.fm:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !204293
  %i.sk = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.si, i64 noundef range(i64 1, 17) 8) #68, !noalias !204293 ; 5 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.fn, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm, %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.fm ], [ 0, %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.si) #72
          to label %.noexc39.i.i.i unwind label %bb.fr, !noalias !204294

.noexc39.i.i.i:                                   ; preds = %bb.fn
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.fm
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.sk, align 8, !noalias !204294
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %i.sm, align 8, !noalias !204294
  store i64 %.sroa.0.0.i11.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !204290
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.sk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !204290
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !204290
  call void @llvm.experimental.noalias.scope.decl(metadata !204295)
  call void @llvm.experimental.noalias.scope.decl(metadata !204296)
  %i.sn = icmp eq i64 %i.sf, 0
  br i1 %i.sn, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i105.i.i

.lr.ph.i.i.i.i.i.i.i105.i.i:                      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.so = phi ptr [ %i.ti, %.noexc.i.i.i.i.i.i.i ], [ %i.sk, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %i.sp = phi i64 [ %i.tl, %.noexc.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa21.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa20.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.sq = phi i16 [ %i.sz, %.noexc.i.i.i.i.i.i.i ], [ %i.sc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.val1217.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tc, %.noexc.i.i.i.i.i.i.i ], [ %i.sf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1114.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.012.0.copyload.i.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.sq, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i105.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sr = phi ptr [ %i.sv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i105.i.i ] ; 2 uses
  %i.ss = phi ptr [ %i.su, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i105.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sr, align 16, !noalias !204297
  %i.st = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 -2304 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.st to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i105.i.i
  %.lcssa20.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i105.i.i ], [ %i.sv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa111516.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i105.i.i ], [ %i.su, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.sq, %.lr.ph.i.i.i.i.i.i.i105.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.sw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.sx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sy = zext nneg i16 %i.sx to i64
  %i.sz = and i16 %i.sw, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ta = sub nsw i64 0, %i.sy
  %i.tb = getelementptr inbounds [144 x i8], ptr %.lcssa1114.i.i.i.i.i.i.i.i.i, i64 %i.ta ; 2 uses
  %i.tc = add i64 %.val1217.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.td = getelementptr i8, ptr %i.tb, i64 -136
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.td, align 8, !noalias !204298, !nonnull !422, !noundef !422
  %i.te = getelementptr i8, ptr %i.tb, i64 -128
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.te, align 8, !noalias !204298, !noundef !422
  %i.tf = icmp samesign ult i64 %i.sp, 576460752303423488
  call void @llvm.assume(i1 %i.tf)
  %i.tg = load i64, ptr %i.g, align 8, !range !425, !alias.scope !204299, !noalias !204290, !noundef !422
  %i.th = icmp eq i64 %i.sp, %i.tg
  br i1 %i.th, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.sp, i64 noundef %.val1217.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i unwind label %bb.fp, !noalias !204300

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !204299, !noalias !204290
  br label %.noexc.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i, %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ti = phi ptr [ %.pre.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i.i.i.i ], [ %i.so, %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.ti, i64 %i.sp ; 2 uses
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.tj, align 8, !noalias !204301
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %.val3.i.i.i.i.i.i.i.i.i.i, ptr %i.tk, align 8, !noalias !204301
  %i.tl = add nuw nsw i64 %i.sp, 1                ; 2 uses
  store i64 %i.tl, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !204299, !noalias !204290
  %i.tm = icmp eq i64 %i.tc, 0
  br i1 %i.tm, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i105.i.i

bb.fo:                                            ; preds = %bb.fk
  store i64 0, ptr %i.rg, align 8, !alias.scope !204302, !noalias !204280
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 944
  store ptr inttoptr (i64 8 to ptr), ptr %i.tn, align 16, !alias.scope !204302, !noalias !204280
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 952
  store i64 0, ptr %i.to, align 8, !alias.scope !204302, !noalias !204280
  br label %bb.fs

bb.fp:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !204290 ; 2 uses
  %i.tq = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.tq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit41.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !204290, !nonnull !422, !noundef !422
  %i.tr = shl nuw i64 %.val.i.i.i.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.tr, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !204294
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit41.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !204303
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %1, i64 944
  %.val34.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !204280
  %.phi.trans.insert131.i.i.i = getelementptr i8, ptr %1, i64 952
  %.val35.pre.i.i.i = load i64, ptr %.phi.trans.insert131.i.i.i, align 8, !noalias !204280
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fn
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit41.i.i.i

bb.fs:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.fo
  %.val35.i.i.i = phi i64 [ 0, %bb.fo ], [ %.val35.pre.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %.val34.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.fo ], [ %.val34.pre.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtB6_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENCNCNvMs8_B3i_NtB3i_8Branches26cleanup_branch_directories00EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !204290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !204280
  %i.tt = load ptr, ptr %i.rf, align 8, !noalias !204280, !nonnull !422, !noundef !422
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 888
  %i.tv = load i64, ptr %i.tu, align 8, !noalias !204280, !noundef !422
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 16, !noalias !204280, !nonnull !422, !align !423, !noundef !422
  %i.ty = load ptr, ptr %i.tx, align 8, !noalias !204281, !nonnull !422, !align !423, !noundef !422
  invoke void @_RNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB5_8Branches16get_cleanup_path(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.tt, i64 noundef %i.tv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val34.i.i.i, i64 noundef %.val35.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ty)
          to label %bb.fu unwind label %bb.ft, !noalias !204281

bb.ft:                                            ; preds = %bb.fs
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !204280
  br label %bb.gb

bb.fu:                                            ; preds = %bb.fs
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204304)
  call void @llvm.experimental.noalias.scope.decl(metadata !204305)
  %i.ub = load i8, ptr %i.k, align 8, !range !429, !alias.scope !204305, !noalias !204280, !noundef !422
  %.not.i40.i.i.i = icmp eq i8 %i.ub, -1
  br i1 %.not.i40.i.i.i, label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %bb.fu
  %i.uc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ud, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.uc, i64 24, i1 false), !alias.scope !204306, !noalias !204280
  store i8 -1, ptr %i.ua, align 8, !alias.scope !204304, !noalias !204280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !204280
  br label %bb.fv

_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ua, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.k, i64 56, i1 false), !alias.scope !204306, !noalias !204280
  %.pr.i.i.i = load i8, ptr %i.ua, align 8, !noalias !204280 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !204280
  %.not7.i.i.i = icmp eq i8 %.pr.i.i.i, -1
  br i1 %.not7.i.i.i, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.uf, ptr noundef nonnull align 16 dereferenceable(24) %i.ue, i64 24, i1 false), !noalias !204280
  %i.ug = load i64, ptr %i.uf, align 16, !range !427, !noalias !204280, !noundef !422 ; 3 uses
  %.not8.i.i.i = icmp eq i64 %i.ug, -1
  br i1 %.not8.i.i.i, label %bb.gw, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  store i8 1, ptr %i.uh, align 16, !noalias !204280
  %.sroa.1082.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.sroa.1082.0.copyload.i.i.i = load ptr, ptr %.sroa.1082.0..sroa_idx.i.i.i, align 8, !noalias !204280 ; 2 uses
  %.sroa.1185.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 976
  %.sroa.1185.0.copyload.i.i.i = load i64, ptr %.sroa.1185.0..sroa_idx.i.i.i, align 16, !noalias !204280
  %i.ui = load ptr, ptr %i.tw, align 16, !noalias !204280, !nonnull !422, !align !423, !noundef !422
  %i.uj = load ptr, ptr %i.ui, align 8, !noalias !204281, !nonnull !422, !align !423, !noundef !422
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 72
  %.val33.i.i.i = load ptr, ptr %i.uk, align 8, !noalias !204281, !nonnull !422, !noundef !422
  %i.ul = getelementptr inbounds nuw i8, ptr %.val33.i.i.i, i64 16
  store i8 0, ptr %i.uh, align 16, !noalias !204280
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i64 %i.ug, ptr %i.um, align 16, !noalias !204280
  %.sroa.093.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %.sroa.1082.0.copyload.i.i.i, ptr %.sroa.093.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !204280
  %.sroa.093.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i64 %.sroa.1185.0.copyload.i.i.i, ptr %.sroa.093.sroa.10.0..sroa_idx.i.i.i, align 16, !noalias !204280
  %.sroa.994.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr %i.ul, ptr %.sroa.994.0..sroa_idx.i.i.i, align 8, !noalias !204280
  %.sroa.1196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store i8 0, ptr %.sroa.1196.0..sroa_idx.i.i.i, align 8, !noalias !204280
  br label %bb.gg

bb.fx:                                            ; preds = %bb.gt, %bb.gk, %bb.gf
  %.pn14.pn.i.i.i = phi { ptr, i32 } [ %.pn14.i.i.i, %bb.gt ], [ %i.we, %bb.gk ], [ %i.vv, %bb.gf ]
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.uo = load i8, ptr %i.un, align 16, !range !434, !noalias !204280, !noundef !422
  %i.up = trunc nuw i8 %i.uo to i1
  %i.uq = icmp ne i64 %.sroa.080.0.i.i.i, 0
  %or.cond.not.i.i.i = and i1 %i.uq, %i.up
  br i1 %or.cond.not.i.i.i, label %bb.hg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i

bb.fy:                                            ; preds = %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.5110.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 985
  %.sroa.5106.i.sroa.0.0.copyload348.i.i = load i8, ptr %.sroa.5110.0..sroa_idx.i.i.i, align 1, !noalias !204280
  %.sroa.5106.i.sroa.6.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5106.i.sroa.6.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5106.i.sroa.6.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i, i64 6, i1 false), !noalias !204280
  %.sroa.5106.i.sroa.7.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 992
  %.sroa.5106.i.sroa.7.0.copyload350.i.i = load i64, ptr %.sroa.5106.i.sroa.7.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i, align 16, !noalias !204280
  %.sroa.5106.i.sroa.8.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.sroa.5106.i.sroa.8.0.copyload352.i.i = load ptr, ptr %.sroa.5106.i.sroa.8.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !204280
  %.sroa.5106.i.sroa.9.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.sroa.5106.i.sroa.9.0.copyload354.i.i = load i64, ptr %.sroa.5106.i.sroa.9.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i, align 16, !noalias !204280
  %.sroa.5106.i.sroa.10.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.5106.i.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5106.i.sroa.10.0..sroa.5110.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !204280
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gn, %bb.fy
  %i.ur = phi ptr [ %i.vw, %bb.gn ], [ %i.rb, %bb.fy ] ; 2 uses
  %i.us = phi ptr [ %i.vx, %bb.gn ], [ %i.rc, %bb.fy ] ; 2 uses
  %i.ut = phi ptr [ %i.vy, %bb.gn ], [ %i.rd, %bb.fy ]
  %i.uu = phi ptr [ %i.vz, %bb.gn ], [ %i.re, %bb.fy ]
  %i.uv = phi ptr [ %i.wa, %bb.gn ], [ %i.rf, %bb.fy ]
  %.sroa.5106.i.sroa.0.0.i.i = phi i8 [ %.sroa.3.i.sroa.0.0.copyload.i.i, %bb.gn ], [ %.sroa.5106.i.sroa.0.0.copyload348.i.i, %bb.fy ]
  %.sroa.5106.i.sroa.7.0.i.i = phi i64 [ %.sroa.3.i.sroa.6.0.copyload.i.i, %bb.gn ], [ %.sroa.5106.i.sroa.7.0.copyload350.i.i, %bb.fy ]
  %.sroa.5106.i.sroa.8.0.i.i = phi ptr [ %.sroa.3.i.sroa.7.0.copyload.i.i, %bb.gn ], [ %.sroa.5106.i.sroa.8.0.copyload352.i.i, %bb.fy ]
  %.sroa.5106.i.sroa.9.0.i.i = phi i64 [ %.sroa.3.i.sroa.8.0.copyload.i.i, %bb.gn ], [ %.sroa.5106.i.sroa.9.0.copyload354.i.i, %bb.fy ]
  %.sroa.0103.0.i.i.i = phi i8 [ %i.wc, %bb.gn ], [ %.pr.i.i.i, %bb.fy ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 936
  %.val27.i.i.i = load i64, ptr %i.uw, align 8, !noalias !204280 ; 2 uses
  %i.ux = icmp eq i64 %.val27.i.i.i, 0
  br i1 %i.ux, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.uy = getelementptr i8, ptr %1, i64 944
  %.val28.i.i.i = load ptr, ptr %i.uy, align 16, !noalias !204280, !nonnull !422, !noundef !422
  %i.uz = shl nuw i64 %.val27.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i.i, i64 noundef %i.uz, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !204281
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.gb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i, %bb.ft
  %i.va = phi ptr [ %i.rb, %bb.ft ], [ %i.vw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %i.vb = phi ptr [ %i.rc, %bb.ft ], [ %i.vx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %i.vc = phi ptr [ %i.rd, %bb.ft ], [ %i.vy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %i.vd = phi ptr [ %i.re, %bb.ft ], [ %i.vz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %i.ve = phi ptr [ %i.rf, %bb.ft ], [ %i.wa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.tz, %bb.ft ], [ %.pn14.pn.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit.i97.i.i ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 936
  %.val25.i.i.i = load i64, ptr %i.vf, align 8, !noalias !204280 ; 2 uses
  %i.vg = icmp eq i64 %.val25.i.i.i, 0
  br i1 %i.vg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsfR8GmIBoxTX_21lance_namespace_impls.exit41.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vh = getelementptr i8, ptr %1, i64 944
end_hunk_4
begin_hunk_5_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata0B9_:bb.a
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207894
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.val46, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !207895)
  %i.aw = load i64, ptr %i.av, align 8, !range !427, !alias.scope !207896, !noundef !422 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !207897)
  call void @llvm.experimental.noalias.scope.decl(metadata !207898)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %.val46, i64 32
  %.val1.i.i.i3.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !207899, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207899
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.t, %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef 48, i64 noundef 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.bg, %bb.bw, %bb.bb, %bb.v, %bb.f
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68: ; preds = %bb.f, %bb.l, %bb.bf, %.body55
  %.pn32.pn = phi { ptr, i32 } [ %.pn29.pn, %.body55 ], [ %.pn29.pn, %bb.bf ], [ %i.aa, %bb.f ], [ %i.ag, %bb.l ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val45 = load ptr, ptr %i.bc, align 8, !align !423, !noundef !422
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val45) #73
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !alias.scope !207900, !noundef !422
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit143, label %bb.dx

bb.v:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_(ptr noundef nonnull align 16 %i.bh) #73
          to label %.body55 unwind label %bb.u

bb.w:                                             ; preds = %bb.a, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  invoke fastcc void @_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace12load_dataset0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.p, ptr noundef nonnull align 16 %i.bh, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.p, align 8, !range !441, !noundef !422 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, -2
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.z:                                             ; preds = %bb.x
  %.sroa.3198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3198.sroa.0.0.copyload = load i8, ptr %.sroa.3198.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.3198.sroa.3.sroa.0.sroa.0.0.copyload = load i56, ptr %.sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.3198.sroa.3.sroa.3.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.3198.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3198.sroa.3.sroa.3.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3198.sroa.3.sroa.5.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.3198.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3198.sroa.3.sroa.5.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3198.sroa.3.sroa.7.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3198.sroa.3.sroa.7.0.copyload = load ptr, ptr %.sroa.3198.sroa.3.sroa.7.0..sroa.3198.sroa.3.0..sroa.3198.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3198.sroa.5.0..sroa.3198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5.0..sroa.3198.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5199, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5199.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bl = load i8, ptr %i.bk, align 8, !range !421, !noundef !422
  switch i8 %i.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit [
    i8 4, label %bb.ab
    i8 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 864
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtBJ_14DatasetBuilder4load0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 16 %i.bm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit unwind label %bb.cv

bb.ab:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1216
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs5_NtCshkPeWWG1flk_5lance7datasetNtBK_7Dataset16checkout_versionyE0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 16 %i.bn)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 864
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.bp) #73
          to label %.body55 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 864
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.bq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit unwind label %bb.cv

bb.ae:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit: ; preds = %bb.z, %bb.aa, %bb.ad
  %i.bs = icmp eq i64 %i.bi, -1
  br i1 %i.bs, label %bb.bc, label %bb.af

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  %.sroa.7211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.7211.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5199, i64 280, i1 false)
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i64 %i.bi, ptr %i.bt, align 8
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 %.sroa.3198.sroa.0.0.copyload, ptr %.sroa.4208.0..sroa_idx, align 16
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 353
  store i56 %.sroa.3198.sroa.3.sroa.0.sroa.0.0.copyload, ptr %.sroa.5209.0..sroa_idx, align 1
  %.sroa.5209.sroa.4.0..sroa.5209.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %.sroa.3198.sroa.3.sroa.3.0.copyload, ptr %.sroa.5209.sroa.4.0..sroa.5209.0..sroa_idx.sroa_idx, align 8
  %.sroa.5209.sroa.5.0..sroa.5209.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.sroa.3198.sroa.3.sroa.5.0.copyload, ptr %.sroa.5209.sroa.5.0..sroa.5209.0..sroa_idx.sroa_idx, align 16
  %.sroa.5209.sroa.6.0..sroa.5209.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %.sroa.3198.sroa.3.sroa.7.0.copyload, ptr %.sroa.5209.sroa.6.0..sroa.5209.0..sroa_idx.sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 737
  store i8 0, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.0212.0.copyload = load ptr, ptr %i.bv, align 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207902)
  %.not.i58 = icmp eq ptr %.sroa.0212.0.copyload, null
  br i1 %.not.i58, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207903)
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !range !434, !noalias !207904, !noundef !422
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !445

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %bb.ag
  %.pre.i.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !207905
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !207905
  br label %.thread

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.cb = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc59 unwind label %bb.ah, !noalias !207906 ; 2 uses

.noexc59:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !noalias !207906
  store i8 1, ptr %i.by, align 8, !noalias !207906
  br label %.thread

.thread:                                          ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, %.noexc59
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.cd, %.noexc59 ]
  %i.cf = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.cc, %.noexc59 ] ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.bx, align 8, !noalias !207905
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !207902
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 %i.cf, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !207907
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  store i64 %.pre-phi2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !207907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !207908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !207909
  br label %bb.ay

bb.ah:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.af
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %.sroa.0212.0.copyload, ptr %i.bw, align 16, !alias.scope !207910
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %1, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx215, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx, i64 40, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !207911 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207911)
  %.val3.i.i = load <16 x i8>, ptr %.sroa.0212.0.copyload, align 16, !noalias !207912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !207915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !207916
  %i.ci = icmp eq i64 %.pre, 0
  br i1 %i.ci, label %bb.ay, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0212.0.copyload, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cm = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.aj ] ; 2 uses
  %i.cn = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0212.0.copyload, %bb.aj ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 16, !noalias !207917
  %i.co = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -768 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.co to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.57.0.i.i = phi ptr [ %i.cl, %bb.aj ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %.sroa.0212.0.copyload, %bb.aj ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ck, %bb.aj ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = and i16 %i.cr, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.cv = sub nsw i64 0, %i.ct
  %i.cw = getelementptr inbounds [48 x i8], ptr %.sroa.07.0.copyload.i.i.i.i, i64 %i.cv ; 4 uses
  %i.cx = add nsw i64 %.pre, -1                   ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 -40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !207918, !nonnull !422, !noundef !422
  %i.cz = getelementptr i8, ptr %i.cw, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !207918, !noundef !422
  %i.da = getelementptr i8, ptr %i.cw, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !noalias !207918, !nonnull !422, !noundef !422
  %i.db = getelementptr i8, ptr %i.cw, i64 -8
  %.val5.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !207918, !noundef !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !207919
  store ptr %.val.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !207919
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !207919
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.val4.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !207919
  %.sroa.62.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.val5.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i, align 8, !noalias !207919
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j)
          to label %.noexc63 unwind label %bb.az, !noalias !207916

.noexc63:                                         ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !207919
  %.pr.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !207916 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.ao

bb.ak:                                            ; preds = %bb.ar
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207920)
  call void @llvm.experimental.noalias.scope.decl(metadata !207921), !noalias !207922
  call void @llvm.experimental.noalias.scope.decl(metadata !207923), !noalias !207922
  %i.dd = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i.i.i.i62 = load ptr, ptr %i.de, align 8, !alias.scope !207924, !noalias !207916, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i62, i64 noundef %.pr.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207925
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !207926), !noalias !207922
  %i.dg = load i64, ptr %i.df, align 8, !range !427, !alias.scope !207927, !noalias !207916, !noundef !422 ; 3 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %.body64, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !207928), !noalias !207922
  call void @llvm.experimental.noalias.scope.decl(metadata !207929), !noalias !207922
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %.body64, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val1.i.i.i1.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !207930, !noalias !207916, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207931
  br label %.body64

bb.ao:                                            ; preds = %.noexc63
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 4) ; 3 uses
  %i.dk = mul i64 %.sroa.0.0.i.i.i.i.i, 48        ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.pre, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ar, label %bb.ap, !prof !447

bb.ap:                                            ; preds = %bb.ao
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !207932
  %i.dm = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dk, i64 noundef range(i64 1, 17) 8) #68, !noalias !207932 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.aq ], [ 0, %bb.ao ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dk) #72
          to label %.noexc.i.i.i.i unwind label %bb.ak, !noalias !207916

.noexc.i.i.i.i:                                   ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ %i.dm, %bb.aq ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %.sroa.0.0.i.i.i.i.i, %bb.aq ] ; 3 uses
  %i.do = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !207916
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.l, align 8, !noalias !207916
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !207916
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !207916
  call void @llvm.experimental.noalias.scope.decl(metadata !207933)
  call void @llvm.experimental.noalias.scope.decl(metadata !207934)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !207935
  %i.dp = icmp eq i64 %i.cx, 0
  br i1 %i.dp, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dq = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dr = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 5 uses
  %.lcssa15.i.i.i.i.i.i = phi ptr [ %.sroa.57.0.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i16 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %i.eb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.val611.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %i.ee, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.lcssa5910.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i, %bb.at ] ; 2 uses
  %i.du = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa5910.i.i.i.i.i.i, %bb.at ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dt, align 16, !noalias !207936
  %i.dv = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -768 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.at
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i, %bb.at ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.lcssa5910.i.i.i.i.i.i, %bb.at ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ds, %bb.at ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dy = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = and i16 %i.dy, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = sub nsw i64 0, %i.ea
  %i.ed = getelementptr inbounds [48 x i8], ptr %.lcssa58.i.i.i.i.i.i, i64 %i.ec ; 4 uses
  %i.ee = add i64 %.val611.i.i.i.i.i.i, -1        ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 -40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !207937, !nonnull !422, !noundef !422
  %i.eg = getelementptr i8, ptr %i.ed, i64 -32
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.eg, align 8, !noalias !207937, !noundef !422
  %i.eh = getelementptr i8, ptr %i.ed, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !207937, !nonnull !422, !noundef !422
  %i.ei = getelementptr i8, ptr %i.ed, i64 -8
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !noalias !207937, !noundef !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !207938
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !207938
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !207938
  store ptr %.val4.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !207938
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !207938
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %.noexc6.i.i.i.i unwind label %bb.ax, !noalias !207939

.noexc6.i.i.i.i:                                  ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !207938
  %.pr.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !207939
  %.not.i.i5.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre25.i.i = load i64, ptr %i.l, align 8, !noalias !207940 ; 2 uses
  br i1 %.not.i.i5.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.noexc6.i.i.i.i
  %i.ej = icmp eq i64 %i.dr, %.sroa.0.0.copyload1.pre.pre25.i.i
  br i1 %i.ej, label %bb.aw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i, %bb.au
  %i.ek = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i ], [ %i.dq, %bb.au ] ; 3 uses
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !207939
  %i.em = add nuw nsw i64 %i.dr, 1                ; 2 uses
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !207941, !noalias !207916
  %i.en = icmp eq i64 %i.ee, 0
  br i1 %i.en, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, label %bb.at

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload1.pre.pre.i.i = load i64, ptr %i.l, align 8, !noalias !207940
  br label %.loopexit.i.i.i.i

bb.av:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.i) #73, !noalias !207939
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.dr, i64 noundef %.val611.i.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i unwind label %bb.av, !noalias !207942

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.aw
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !207941, !noalias !207916
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ax:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ax, %bb.av
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ep, %bb.ax ], [ %i.eo, %bb.av ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.l) #73, !noalias !207916
  br label %.body64

.loopexit.i.i.i.i:                                ; preds = %.noexc6.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, %bb.as
  %.sroa.6.0.copyload5.i.i = phi i64 [ 1, %bb.as ], [ %.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.dr, %.noexc6.i.i.i.i ]
  %.sroa.5.0.copyload3.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.as ], [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.dq, %.noexc6.i.i.i.i ]
  %.sroa.0.0.copyload1.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i, %bb.as ], [ %.sroa.0.0.copyload1.pre.pre.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %.sroa.0.0.copyload1.pre.pre25.i.i, %.noexc6.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !207935
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %.loopexit.i.i.i.i, %.noexc63, %bb.ai
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.ai ], [ 0, %.thread ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i, %.loopexit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.noexc63 ], [ inttoptr (i64 8 to ptr), %bb.ai ], [ inttoptr (i64 8 to ptr), %.thread ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.ai ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !207916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !207915
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.bt, ptr %i.eq, align 8, !alias.scope !207943
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !alias.scope !207943
  %.sroa.5.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i61, align 8, !alias.scope !207943
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !207943
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %i.er, align 8, !alias.scope !207943
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 2, ptr %i.es, align 1, !alias.scope !207943
  %i.et = invoke { ptr, ptr } @_RNvXs_NtNtCshkPeWWG1flk_5lance7dataset8metadataNtB4_21UpdateMetadataBuilderNtNtNtCscI6d9CVNmLh_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.o)
          to label %bb.ba unwind label %bb.az     ; 2 uses

.body64:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.am, %bb.an, %.body.i.i.i.i, %bb.az
  %.pn6 = phi { ptr, i32 } [ %i.eu, %bb.az ], [ %i.dc, %bb.an ], [ %i.dc, %bb.am ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body70

bb.az:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i, %bb.ay
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.ba:                                            ; preds = %bb.ay
  %i.ev = extractvalue { ptr, ptr } %i.et, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.et, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ev, ptr %i.ex, align 8
  store ptr %i.ew, ptr %i.bh, align 16
  br label %bb.bh

bb.bb:                                            ; preds = %.body70, %bb.ah
  %.pn27 = phi { ptr, i32 } [ %i.ch, %bb.ah ], [ %.pn24.pn, %.body70 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ey) #73
          to label %.body55 unwind label %bb.u

bb.bc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5, i64 24, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.dl, %bb.bc
  %.sroa.6.sroa.6.sroa.0.sroa.0.1 = phi i56 [ %.sroa.3198.sroa.3.sroa.0.sroa.0.0.copyload, %bb.bc ], [ undef, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.8.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.7.0.copyload, %bb.bc ], [ %.sroa.6.sroa.6.sroa.8.2, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.7.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.5.0.copyload, %bb.bc ], [ @39, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.6.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.3.0.copyload, %bb.bc ], [ %.sroa.6.sroa.6.sroa.6.2, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.0.1 = phi i8 [ %.sroa.3198.sroa.0.0.copyload, %bb.bc ], [ 31, %bb.dl ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !207944)
  call void @llvm.experimental.noalias.scope.decl(metadata !207945)
  %.val.i.i = load i64, ptr %i.ez, align 16, !range !425, !alias.scope !207946, !noundef !422 ; 2 uses
  %i.fa = icmp eq i64 %.val.i.i, 0
  br i1 %i.fa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !207946, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207946
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

.body55:                                          ; preds = %bb.v, %bb.ac, %bb.cv, %bb.bb
  %.pn29.pn = phi { ptr, i32 } [ %.pn27, %bb.bb ], [ %i.id, %bb.cv ], [ %i.bg, %bb.v ], [ %i.bo, %bb.ac ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !207947)
  call void @llvm.experimental.noalias.scope.decl(metadata !207948)
  %.val.i.i66 = load i64, ptr %i.fc, align 16, !range !425, !alias.scope !207949, !noundef !422 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i66, 0
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68, label %bb.bf

bb.bf:                                            ; preds = %.body55
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i67 = load ptr, ptr %i.fe, align 8, !alias.scope !207949, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !207949
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.bg:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val51 = load ptr, ptr %i.fg, align 8
  %.val52 = load ptr, ptr %i.fh, align 16, !nonnull !422, !align !423, !noundef !422
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val51, ptr nonnull %.val52) #73
          to label %.body70 unwind label %bb.u

bb.bh:                                            ; preds = %bb.b, %bb.ba
  %.val54 = phi ptr [ %.val54.pre, %bb.b ], [ %i.ew, %bb.ba ]
  %.val53 = phi ptr [ %.val53.pre, %bb.b ], [ %i.ev, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.fh = getelementptr i8, ptr %1, i64 752       ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !invariant.load !422, !noalias !207950, !nonnull !422
  invoke void %i.fj(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noundef nonnull %.val53, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bg, !inline_history !207757

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bh
  %i.fk = load i8, ptr %i.n, align 8, !range !428, !noundef !422 ; 3 uses
  %i.fl = icmp eq i8 %i.fk, -2
  br i1 %i.fl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.bj:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3245, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3245.0..sroa_idx, i64 7, i1 false)
  %.sroa.3247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3247.0.copyload = load ptr, ptr %.sroa.3247.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4250.0.copyload = load ptr, ptr %.sroa.4250.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5253.0.copyload = load ptr, ptr %.sroa.5253.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6256, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6256.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val49 = load ptr, ptr %i.fg, align 8          ; 5 uses
  %.val50 = load ptr, ptr %i.fh, align 16, !nonnull !422, !align !423, !noundef !422 ; 5 uses
  %i.fm = load ptr, ptr %.val50, align 8, !invariant.load !422 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fm, null
end_hunk_5
begin_hunk_6_@_RNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespace29apply_query_params_to_scanner:bb.a
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.g, !noalias !216734

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.al, %bb.j ], [ %i.al, %bb.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s) #73
          to label %common.resume unwind label %bb.k, !noalias !216735

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !216733
  %.sroa.012.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !216733 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !216733 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !216733
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216736
  %i.aj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216736 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanner0B9_.exit, !prof !454

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i unwind label %bb.i, !noalias !216736

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %.sroa.012.0.copyload.i, 0
  br i1 %i.am, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.012.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !216737
  br label %.body.i

bb.k:                                             ; preds = %.body.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216735
  unreachable

common.resume:                                    ; preds = %.body.i315, %bb.av, %.body, %bb.ac, %bb.ay, %.body305, %bb.z, %bb.aa, %.body.i257, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ew, %bb.av ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i258, %.body.i257 ], [ %i.di, %bb.z ], [ %eh.lpad-body306, %.body305 ], [ %i.di, %bb.aa ], [ %eh.lpad-body, %bb.ac ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body306, %bb.ay ], [ %eh.lpad-body.i316, %.body.i315 ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanner0B9_.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  store i64 %.sroa.012.0.copyload.i, ptr %i.aj, align 8, !noalias !216735
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx14.i, align 8, !noalias !216735
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx16.i, align 8, !noalias !216735
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s), !noalias !216735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store ptr @39, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @1870, ptr %.sroa.6348.0..sroa_idx, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4148.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4346.0..sroa_idx, i64 7, i1 false)
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.5149.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit286

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit286: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB1g_5types11Float32TypeEEECsfR8GmIBoxTX_21lance_namespace_impls.exit311, %_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanners8_0B9_.exit, %bb.ao, %bb.an, %bb.cv, %_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanners_0B9_.exit, %_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanner0B9_.exit
  ret void

bb.l:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %4, align 8, !range !427, !noundef !422
  %.not227 = icmp eq i64 %i.ao, -1
  br i1 %.not227, label %bb.o, label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285: ; preds = %bb.n, %bb.am, %bb.al, %bb.o, %bb.e
  %i.ap = load i64, ptr %7, align 8, !range !427, !noundef !422
  %.not231 = icmp eq i64 %i.ap, -1
  br i1 %.not231, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecfENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.m

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !216738, !noundef !422 ; 4 uses
  %i.as = icmp ult i64 %i.ar, 2305843009213693952
  tail call void @llvm.assume(i1 %i.as)
  %.not4.i = icmp eq i64 %i.ar, 0
  br i1 %.not4.i, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecfENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !422, !noundef !422
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !422
  call fastcc void @_RINvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB6_7Scanner7projectNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias noundef align 16 dereferenceable(1088) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.au, i64 noundef %i.aw)
  %i.ax = load i8, ptr %i.ab, align 8, !range !429, !noundef !422
  %.not230 = icmp eq i8 %i.ax, -1
  br i1 %.not230, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !422 ; 5 uses
  %.not228 = icmp eq ptr %i.az, null
  br i1 %.not228, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285, label %bb.v

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216739
  store ptr %i.ad, ptr %i.h, align 8, !noalias !216739
  %.sroa.42.0..sroa_idx.i255 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i255, align 8, !noalias !216739
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.r, ptr %i.ba, align 8, !noalias !216739
  %.sroa.46.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i256, align 8, !noalias !216739
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @1879, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i259 unwind label %bb.q, !noalias !216740

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i257

.body.i257:                                       ; preds = %bb.t, %bb.s, %bb.q
  %eh.lpad-body.i258 = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.be, %bb.t ], [ %i.be, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r) #73
          to label %common.resume unwind label %bb.u, !noalias !216741

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i259: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216739
  %.sroa.012.0.copyload.i260 = load i64, ptr %i.i, align 8, !noalias !216739 ; 3 uses
  %.sroa.5.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0.copyload.i262 = load ptr, ptr %.sroa.5.0..sroa_idx.i261, align 8, !noalias !216739 ; 3 uses
  %.sroa.6.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0.copyload.i264 = load i64, ptr %.sroa.6.0..sroa_idx.i263, align 8, !noalias !216739
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216742
  %i.bc = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216742 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.r, label %_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanners_0B9_.exit, !prof !454

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i259
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i267 unwind label %bb.s, !noalias !216742

.noexc.i267:                                      ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.sroa.012.0.copyload.i260, 0
  br i1 %i.bf, label %.body.i257, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i262) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i262, i64 noundef %.sroa.012.0.copyload.i260, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !216743
  br label %.body.i257

bb.u:                                             ; preds = %.body.i257
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216741
  unreachable

_RNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespace29apply_query_params_to_scanners_0B9_.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i259
  store i64 %.sroa.012.0.copyload.i260, ptr %i.bc, align 8, !noalias !216741
  %.sroa.5.0..sroa_idx14.i265 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.5.0.copyload.i262, ptr %.sroa.5.0..sroa_idx14.i265, align 8, !noalias !216741
  %.sroa.6.0..sroa_idx16.i266 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.6.0.copyload.i264, ptr %.sroa.6.0..sroa_idx16.i266, align 8, !noalias !216741
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r), !noalias !216741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.5353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr @39, ptr %.sroa.5353.0..sroa_idx, align 8
  %.sroa.6354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @1880, ptr %.sroa.6354.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4351.0..sroa_idx, i64 7, i1 false)
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6162.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5353.0..sroa_idx, i64 40, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.5161.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit286

bb.v:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216744)
  %.val3.i.i = load <16 x i8>, ptr %i.az, align 16, !noalias !216745
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !216744, !noundef !422 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216746
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %i.bn = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %i.az, %bb.w ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.bn, align 16, !noalias !216747
  %i.bp = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -768 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bp to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.w
  %.sroa.6328.0 = phi ptr [ %i.bm, %bb.w ], [ %i.br, %.lr.ph.i.i.i.i.i ]
  %.sroa.017.0.copyload.i = phi ptr [ %i.az, %bb.w ], [ %i.bq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.bl, %bb.w ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bs = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = and i16 %i.bs, %.lcssa.i.i.i.i.i
  %i.bw = sub nsw i64 0, %i.bu
  %i.bx = getelementptr inbounds [48 x i8], ptr %.sroa.017.0.copyload.i, i64 %i.bw ; 4 uses
  %i.by = add nsw i64 %i.bi, -1                   ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 -40
  %.val.i.i = load ptr, ptr %i.bz, align 8, !noalias !216748, !nonnull !422, !noundef !422
  %i.ca = getelementptr i8, ptr %i.bx, i64 -32
  %.val3.i.i269 = load i64, ptr %i.ca, align 8, !noalias !216748, !noundef !422
  %i.cb = getelementptr i8, ptr %i.bx, i64 -16
  %.val4.i.i = load ptr, ptr %i.cb, align 8, !noalias !216748, !nonnull !422, !noundef !422
  %i.cc = getelementptr i8, ptr %i.bx, i64 -8
  %.val5.i.i = load i64, ptr %i.cc, align 8, !noalias !216748, !noundef !422
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bi, i64 4) ; 3 uses
  %i.cd = shl i64 %.sroa.0.0.i.i, 5               ; 3 uses
  %i.ce = icmp ugt i64 %i.bi, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.cd, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ce, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.y, label %bb.x, !prof !447

bb.x:                                             ; preds = %._crit_edge19.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216749
  %i.cf = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, 17) 8) #68, !noalias !216749 ; 8 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.y, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.y:                                             ; preds = %bb.x, %._crit_edge19.i.i.i.i.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.x ], [ 0, %._crit_edge19.i.i.i.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cd) #72, !noalias !216746
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.x
  store ptr %.val.i.i, ptr %i.cf, align 8, !noalias !216746
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %.val3.i.i269, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !216746
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %.val4.i.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !216746
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 %.val5.i.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !216746
  store i64 %.sroa.0.0.i.i, ptr %i.g, align 8, !noalias !216746
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216746
  %.sroa.6.0..sroa_idx.i270 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i270, align 8, !noalias !216746
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216751)
  %i.ch = icmp eq i64 %i.by, 0
  br i1 %i.ch, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %.noexc.i271
  %i.ci = phi ptr [ %i.de, %.noexc.i271 ], [ %i.cf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %i.cj = phi i64 [ %i.dg, %.noexc.i271 ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 5 uses
  %.lcssa27.i.i.i = phi ptr [ %.lcssa26.i.i.i, %.noexc.i271 ], [ %.sroa.6328.0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %i.ck = phi i16 [ %i.ct, %.noexc.i271 ], [ %i.bv, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %.val1823.i.i.i = phi i64 [ %i.cw, %.noexc.i271 ], [ %i.by, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %.lcssa172122.i.i.i = phi ptr [ %.lcssa1720.i.i.i, %.noexc.i271 ], [ %.sroa.017.0.copyload.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.cl = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa27.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cm = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa172122.i.i.i, %.lr.ph.i.i.i ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cl, align 16, !noalias !216752
  %i.cn = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -768 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cn to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.lcssa26.i.i.i = phi ptr [ %.lcssa27.i.i.i, %.lr.ph.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1720.i.i.i = phi ptr [ %.lcssa172122.i.i.i, %.lr.ph.i.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ck, %.lr.ph.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.cq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = and i16 %i.cq, %.lcssa.i.i.i.i.i.i.i
  %i.cu = sub nsw i64 0, %i.cs
  %i.cv = getelementptr inbounds [48 x i8], ptr %.lcssa1720.i.i.i, i64 %i.cu ; 4 uses
  %i.cw = add i64 %.val1823.i.i.i, -1             ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cv, i64 -40
  %.val.i.i.i.i = load ptr, ptr %i.cx, align 8, !noalias !216753, !nonnull !422, !noundef !422
  %i.cy = getelementptr i8, ptr %i.cv, i64 -32
  %.val3.i.i.i.i = load i64, ptr %i.cy, align 8, !noalias !216753, !noundef !422
  %i.cz = getelementptr i8, ptr %i.cv, i64 -16
  %.val4.i.i.i.i = load ptr, ptr %i.cz, align 8, !noalias !216753, !nonnull !422, !noundef !422
  %i.da = getelementptr i8, ptr %i.cv, i64 -8
  %.val5.i.i.i.i = load i64, ptr %i.da, align 8, !noalias !216753, !noundef !422
  %i.db = icmp samesign ult i64 %i.cj, 288230376151711744
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = load i64, ptr %i.g, align 8, !range !425, !alias.scope !216754, !noalias !216746, !noundef !422
  %i.dd = icmp eq i64 %i.cj, %i.dc
  br i1 %i.dd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.noexc.i271

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cj, i64 noundef %.val1823.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i unwind label %bb.z, !noalias !216755

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !216754, !noalias !216746
  br label %.noexc.i271

.noexc.i271:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i, %._crit_edge19.i.i.i.i.i.i.i
  %i.de = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i ], [ %i.ci, %._crit_edge19.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.cj ; 4 uses
  store ptr %.val.i.i.i.i, ptr %i.df, align 8, !noalias !216756
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.val3.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !216756
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %.val4.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !216756
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i64 %.val5.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !noalias !216756
  %i.dg = add nuw nsw i64 %i.cj, 1                ; 3 uses
  store i64 %i.dg, ptr %.sroa.6.0..sroa_idx.i270, align 8, !alias.scope !216754, !noalias !216746
  %i.dh = icmp eq i64 %i.cw, 0
  br i1 %i.dh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTReBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8, !noalias !216746 ; 2 uses
  %i.dj = icmp eq i64 %.val.i, 0
  br i1 %i.dj, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216746, !nonnull !422, !noundef !422
  %i.dk = shl nuw i64 %.val.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216746
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit: ; preds = %.noexc.i271
  %.sroa.0.0.copyload.pre = load i64, ptr %i.g, align 8, !noalias !216757
  %.sroa.8326.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216757
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit, %bb.v
  %.sroa.13.0 = phi i64 [ 0, %bb.v ], [ %i.dg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %.sroa.8326.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ %.sroa.8326.0.copyload.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit ], [ %i.cf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 5 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.v ], [ %.sroa.0.0.copyload.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTReBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB30_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3y_18DirectoryNamespace29apply_query_params_to_scanners0_0EE11spec_extendB3A_.exit.i.loopexit ], [ %.sroa.0.0.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216746
  invoke fastcc void @_RINvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB6_7Scanner22project_with_transformReB1l_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias noundef align 16 dereferenceable(1088) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.8326.0, i64 noundef %.sroa.13.0)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i274, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.ab ], [ %eh.lpad-body.i275, %.body.i274 ] ; 2 uses
  %i.dm = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.dm, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %.body
  %i.dn = shl nuw i64 %.sroa.0.0, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8326.0) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8326.0, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %common.resume

bb.ad:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB3k_ENCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace29apply_query_params_to_scanners0_0EE9from_iterB3U_.exit
  %i.do = load i8, ptr %i.aa, align 8, !range !429, !noundef !422
  %.not229 = icmp eq i8 %i.do, -1
  br i1 %.not229, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216758
  store ptr %i.ad, ptr %i.e, align 8, !noalias !216758
  %.sroa.42.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.42.0..sroa_idx.i272, align 8, !noalias !216758
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %i.dp, align 8, !noalias !216758
  %.sroa.46.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i273, align 8, !noalias !216758
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @1871, ptr noundef nonnull %i.e)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i276 unwind label %bb.af, !noalias !216759

bb.af:                                            ; preds = %bb.ae
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i274

.body.i274:                                       ; preds = %bb.ai, %bb.ah, %bb.af
  %eh.lpad-body.i275 = phi { ptr, i32 } [ %i.dq, %bb.af ], [ %i.dt, %bb.ai ], [ %i.dt, %bb.ah ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #73
          to label %.body unwind label %bb.ak, !noalias !216760

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i276: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216758
  %.sroa.012.0.copyload.i277 = load i64, ptr %i.f, align 8, !noalias !216758 ; 3 uses
  %.sroa.5.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload.i279 = load ptr, ptr %.sroa.5.0..sroa_idx.i278, align 8, !noalias !216758 ; 3 uses
  %.sroa.6.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload.i281 = load i64, ptr %.sroa.6.0..sroa_idx.i280, align 8, !noalias !216758
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216761
  %i.dr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216761 ; 5 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ag, label %bb.aj, !prof !454

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i276
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i284 unwind label %bb.ah, !noalias !216761

.noexc.i284:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = icmp eq i64 %.sroa.012.0.copyload.i277, 0
  br i1 %i.du, label %.body.i274, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i279) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i279, i64 noundef %.sroa.012.0.copyload.i277, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !216762
  br label %.body.i274

bb.aj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i276
  store i64 %.sroa.012.0.copyload.i277, ptr %i.dr, align 8, !noalias !216760
  %.sroa.5.0..sroa_idx14.i282 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.5.0.copyload.i279, ptr %.sroa.5.0..sroa_idx14.i282, align 8, !noalias !216760
  %.sroa.6.0..sroa_idx16.i283 = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.sroa.6.0.copyload.i281, ptr %.sroa.6.0..sroa_idx16.i283, align 8, !noalias !216760
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.an unwind label %bb.ab, !noalias !216760

bb.ak:                                            ; preds = %.body.i274
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216760
  unreachable

bb.al:                                            ; preds = %bb.ad
  %i.dw = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = shl nuw i64 %.sroa.0.0, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8326.0, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit285

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr @39, ptr %.sroa.5359.0..sroa_idx, align 8
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @1872, ptr %.sroa.6360.0..sroa_idx, align 8
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4172.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4357.0..sroa_idx, i64 7, i1 false)
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5359.0..sroa_idx, i64 40, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.dy = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit286, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = shl nuw i64 %.sroa.0.0, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8326.0, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTReB19_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit286

bb.ap:                                            ; preds = %bb.ay
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.aq:                                            ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val253 = load ptr, ptr %i.eb, align 8, !nonnull !422, !noundef !422
  %i.ec = shl nuw nsw i64 %i.ar, 2                ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216763
  %i.ed = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, 17) 4) #68, !noalias !216763 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ar, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecfENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit
end_hunk_6
