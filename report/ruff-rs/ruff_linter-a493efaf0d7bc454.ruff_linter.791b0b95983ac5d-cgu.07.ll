Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.07?download=true
inline.NumInlined: 5011
inline.NumDeleted: 2021
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB1H_8adapters3map3MapINtNtNtB1J_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB3V_7HashSetBP_BS_EIB1B_BP_E6extendABP_B3I_E0EECsEhZmuQNqkz_11ruff_linter:_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1B_7HashSetB1l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB1l_E6extendAB1l_B1o_E0ENtNtB3b_8iterator8Iterator8for_eachNCINvXs1i_NtB1D_3mapINtB4J_7HashMapB1l_uB2o_EIB37_TB1l_uEE6extendB3_E0ECsEhZmuQNqkz_11ruff_linter.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapReuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB1N_8adapters3map3MapIB2O_INtNtNtB1P_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvXs_NtCs6Wt4yPw39th_9itertools11unique_implINtB54_8UniqueByB3k_BP_NCNvB3N_15check_type_varss_0ENtNtB1L_8iterator8Iterator5count0ENCINvB54_14count_new_keysB3f_BP_BS_E0EEB3V_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 56                  ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %.sroa.0.1 = select i1 %i.c, i64 0, i64 %i.h
  %.sroa.0.0 = sub nsw i64 %i.g, %.sroa.0.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  tail call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvXs_NtCs6Wt4yPw39th_9itertools11unique_implINtB2K_8UniqueByB11_ReNCNvB1t_15check_type_varss_0ENtNtNtBa_6traits8iterator8Iterator5count0ENCINvB2K_14count_new_keysBX_B3H_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0EB4c_4folduNCINvNvB4c_8for_each4callTB3H_uENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB74_7HashMapB3H_uB5o_EINtNtB4g_7collect6ExtendB6N_E6extendBN_E0E0EB1B_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2L_8adapters3map3MapIB3M_INtNtB3Q_6filter6FilterINtNtNtB2N_5slice4iter4IterNtBU_11SarifResultENCNvXs_BU_NtBU_12SarifEmitterNtBW_7Emitter4emits_0ENCB5r_s0_0ENCINvXs8_NtB9_3setINtB6y_7HashSetBP_B1Q_EIB2F_BP_E6extendB4d_E0EEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0EBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  tail call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif11SarifResultENCNvXs_B1P_NtB1P_12SarifEmitterNtB1R_7Emitter4emits_0ENCB2N_s0_0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3X_7HashSetTReNtB1P_10SarifLevelENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4G_E6extendBX_E0ENtNtB5V_8iterator8Iterator4folduNCINvNvB6E_8for_each4callTB4G_uENCINvXs1i_NtB3Z_3mapINtB7Q_7HashMapB4G_uB52_EIB5R_B7z_E6extendBN_E0E0EB1T_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapcuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTcuEE6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_5array4iter8IntoItercKj0_ENCINvXs8_NtB9_3setINtB3Q_7HashSetcBR_EIB1A_cE6extendAcB3D_E0EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5array4iter8IntoItercKj0_ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1A_7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendcE6extendAcB1n_E0ENtNtB37_8iterator8Iterator8for_eachNCINvXs1i_NtB1C_3mapINtB4z_7HashMapcuB2k_EIB33_TcuEE6extendB3_E0ECsEhZmuQNqkz_11ruff_linter.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  %i.d = sub nuw i64 %2, %1                       ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %.sroa.0.1 = select i1 %i.c, i64 0, i64 %i.e
  %.sroa.0.0 = sub i64 %i.d, %.sroa.0.1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTcuEE7reserveNCINvNtB8_3map11make_hashercuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f)
  tail call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoItercKj0_ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1G_7HashSetcNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendcE6extendAcB1t_E0ENtNtB3d_8iterator8Iterator4folduNCINvNvB3W_8for_each4callTcuENCINvXs1i_NtB1I_3mapINtB55_7HashMapcuB2q_EIB39_B4R_E6extendBN_E0E0ECsEhZmuQNqkz_11ruff_linter(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4IterReNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB2U_6ValuesBL_BN_EB1K_4foldjNCINvNtNtB1Q_8adapters6copied9copy_foldBN_jNCINvNtB4g_3map8map_foldBN_jjNCINvNvXs1_NtB4g_6filterINtB5u_6FilterppEB1K_5count8to_usizeBN_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules15too_many_locals15too_many_locals0E0NCINvXsK_NtB1O_5accumjNtB7Z_3Sum3sumINtB4V_3MapINtB4e_6CopiedB3E_EB5j_EE0E0E0E0EB6w_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = call noundef i64 @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdEE9fold_implNCINvXsG_NtB8_3mapINtB2e_4IterBV_BX_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB3Q_6ValuesBV_BX_EB2G_4foldjNCINvNtNtB2M_8adapters6copied9copy_foldBX_jNCINvNtB5c_3map8map_foldBX_jjNCINvNvXs1_NtB5c_6filterINtB6q_6FilterppEB2G_5count8to_usizeBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules15too_many_locals15too_many_locals0E0NCINvXsK_NtB2K_5accumjNtB8V_3Sum3sumINtB5R_3MapINtB5a_6CopiedB4A_EB6f_EE0E0E0E0E0jEB7s_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1F_5array4iter8IntoIterBH_Kj1_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [104 x i8], align 8               ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke noundef i64 @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE13with_capacityCsEhZmuQNqkz_11ruff_linter(i64 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %.val.i = load i64, ptr %i.d, align 8, !noalias !2304, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val9.i = load i64, ptr %i.g, align 8, !noalias !2304, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %.val9.i, %.val.i
  br i1 %.not.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %bb.c

.thread33.i:                                      ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread29.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %bb.e, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.peel, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !2304
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2305, !noalias !2306, !noundef !5 ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !alias.scope !2305, !noalias !2306, !noundef !5 ; 2 uses
  %.not.i.i1043.i = icmp eq i64 %i.j, %i.k
  br i1 %.not.i.i1043.i, label %.loopexit, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i: ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %.sroa.724.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  store i64 1, ptr %i.b, align 8, !alias.scope !2305, !noalias !2309
  %i.m = icmp eq i64 %i.k, 0
  call void @llvm.assume(i1 %i.m)
  %.sroa.521.0.copyload23.i13 = load i8, ptr %.sroa.521.0..sroa_idx22.i, align 4, !alias.scope !2310, !noalias !2304 ; 2 uses
  %.not7.i14 = icmp eq i8 %.sroa.521.0.copyload23.i13, -1
  br i1 %.not7.i14, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw i64 %.val9.i, %.val.i
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.n)
          to label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.peel unwind label %.thread33.i, !noalias !2311

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.peel: ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %.sroa.516.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i64 1, ptr %i.d, align 8, !alias.scope !2314, !noalias !2315
  %i.o = icmp eq i64 %.val.i, 0
  call void @llvm.assume(i1 %i.o)
  %.sroa.516.0.copyload18.i.peel = load i8, ptr %.sroa.516.0..sroa_idx17.i, align 4, !alias.scope !2316, !noalias !2304 ; 2 uses
  %.not6.i.peel = icmp eq i8 %.sroa.516.0.copyload18.i.peel, -1
  br i1 %.not6.i.peel, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.peel
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 85
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.c, ptr noundef nonnull align 8 dereferenceable(84) %i.p, i64 84, i1 false)
  store i8 %.sroa.516.0.copyload18.i.peel, ptr %.sroa.516.0..sroa_idx.i, align 4, !noalias !2304
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %i.q, i64 3, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !2318, !noalias !2319, !nonnull !5, !noundef !5
  %i.s = load i64, ptr %i.r, align 8, !noalias !2320, !noundef !5 ; 2 uses
  %i.t = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.e unwind label %.loopexit.split-lp, !noalias !2319

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !2311
  %i.v = add i64 %i.s, 1
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !2318, !noalias !2319, !nonnull !5, !noundef !5
  store i64 %i.v, ptr %i.w, align 8, !noalias !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2304
  %i.x = icmp eq i64 %.val9.i, 1
  call void @llvm.assume(i1 %i.x)
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #37
          to label %.thread29.i unwind label %bb.f, !noalias !2311

bb.f:                                             ; preds = %.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38, !noalias !2311
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(104) %i.b) #37
          to label %.body unwind label %bb.n, !noalias !2311

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i: ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  store i64 1, ptr %i.b, align 8, !alias.scope !2305, !noalias !2323
  %i.aa = icmp eq i64 %i.ao, 0
  call void @llvm.assume(i1 %i.aa)
  %.sroa.521.0.copyload23.i = load i8, ptr %.sroa.521.0..sroa_idx22.i, align 4, !alias.scope !2324, !noalias !2304 ; 2 uses
  %.not7.i = icmp eq i8 %.sroa.521.0.copyload23.i, -1
  br i1 %.not7.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i
  %.sroa.521.0.copyload23.i15 = phi i8 [ %.sroa.521.0.copyload23.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i ], [ %.sroa.521.0.copyload23.i13, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 8 dereferenceable(84) %i.l, i64 84, i1 false), !noalias !2304
  store i8 %.sroa.521.0.copyload23.i15, ptr %.sroa.521.0..sroa_idx.i, align 4, !noalias !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.724.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.724.0..sroa_idx25.i, i64 3, i1 false), !noalias !2304
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE4pushCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.m unwind label %bb.g, !noalias !2311

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i: ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i
  %.lcssa10 = phi i64 [ %i.j, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i ], [ %i.an, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i ] ; 2 uses
  %i.ab = icmp eq i64 %.lcssa10, 1
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i
  %i.ac = add i64 %.lcssa10, -1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  br label %.lr.ph34

bb.i:                                             ; preds = %.lr.ph34
  %i.ae = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ae, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i.i.i.i33 = phi i64 [ 0, %bb.h ], [ %i.ag, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i.i.i.i.i.i33
  %i.ag = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i33, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(88) %i.af)
          to label %bb.i unwind label %bb.k, !noalias !2311

bb.j:                                             ; preds = %.lr.ph36
  %i.ah = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i35, 1 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.ac
  br i1 %i.ai, label %.body, label %.lr.ph36

bb.k:                                             ; preds = %.lr.ph34
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ak, label %.body, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i.i35 = phi i64 [ %i.ah, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i.i.i.i.i.i35
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(88) %i.al) #37
          to label %bb.j unwind label %bb.l, !noalias !2311

bb.l:                                             ; preds = %.lr.ph36
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38, !noalias !2311
  unreachable

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2304
  %i.an = load i64, ptr %i.i, align 8, !alias.scope !2305, !noalias !2325, !noundef !5 ; 2 uses
  %i.ao = load i64, ptr %i.b, align 8, !alias.scope !2305, !noalias !2325, !noundef !5 ; 2 uses
  %.not.i.i10.i = icmp eq i64 %i.an, %i.ao
  br i1 %.not.i.i10.i, label %.loopexit, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i

bb.n:                                             ; preds = %.thread29.i, %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38, !noalias !2311
  unreachable

.thread29.i:                                      ; preds = %.loopexit.split-lp, %.thread33.i
  %eh.lpad-body32.i = phi { ptr, i32 } [ %i.h, %.thread33.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(104) %i.d) #37
          to label %.body unwind label %bb.n, !noalias !2311

.body:                                            ; preds = %bb.j, %bb.k, %bb.g, %.thread29.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body32.i, %.thread29.i ], [ %i.z, %bb.g ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !2326, !nonnull !5, !noundef !5
  %i.ar = icmp eq ptr %i.aq, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.ar, label %.noexc, label %bb.o, !prof !7

bb.o:                                             ; preds = %.body
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.p

.loopexit:                                        ; preds = %bb.m, %bb.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2304
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i64 %.sroa.0.0.copyload

bb.p:                                             ; preds = %bb.o, %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

.noexc:                                           ; preds = %bb.o, %.body, %bb.q
  %.pn7 = phi { ptr, i32 } [ %i.at, %bb.q ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.o ]
  resume { ptr, i32 } %.pn7

bb.q:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtKj1_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(104) %0) #37
          to label %.noexc unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2T_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2373, !noalias !2374, !nonnull !5, !align !9, !noundef !5 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !28, !alias.scope !2373, !noalias !2374, !noundef !5
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !2375, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 4 uses
  %.val9.i = load ptr, ptr %i.f, align 8, !noalias !2375, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !2377, !nonnull !5 ; 3 uses
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2), !noalias !2377, !inline_history !1
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.j = tail call noundef ptr %i.h(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1), !noalias !2377, !inline_history !1
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %phi.call.i.i = phi ptr [ %i.j, %.split.i.i ], [ %i.i, %.split8.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %phi.call.i.i, null
  br i1 %.not.i.i, label %bb.c, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2376, !noalias !2375, !noundef !5 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !2376, !noalias !2375, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2376, !noalias !2375, !noundef !5
  %exitcond.not.i.i30 = icmp eq i64 %i.l, 0
  br i1 %exitcond.not.i.i30, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.05.0.i.i31, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.l
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i31 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = tail call noundef ptr %i.h(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.o), !noalias !2377, !inline_history !1 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit

_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.c, align 8, !alias.scope !2373, !noalias !2374
  %i.r = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2_15PrettyFormatterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.a, ptr noalias nonnull readonly align 8 poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !2373 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit, !prof !7

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %bb.b, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %.sink.i = phi ptr [ %i.r, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %phi.call.i.i, %bb.b ], [ %i.q, %.lr.ph ]
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i), !noalias !2373
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit

bb.e:                                             ; preds = %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !2378, !nonnull !5, !noundef !5
  %.val9.i4 = load ptr, ptr %i.f, align 8, !noalias !2378, !nonnull !5, !align !9, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.val9.i4, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !noalias !2379, !nonnull !5
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 2), !noalias !2378, !inline_history !2336 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.v), !noalias !2378
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2383, !noalias !2384, !nonnull !5, !noundef !5 ; 3 uses
  %.val11.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2383, !noalias !2384, !nonnull !5, !align !9, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.x = load i64, ptr %i.k, align 8, !alias.scope !2386, !noalias !2384, !noundef !5 ; 2 uses
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr %i.k, align 8, !alias.scope !2386, !noalias !2384
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i8 0, ptr %i.z, align 8, !alias.scope !2386, !noalias !2384
  %i.aa = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !5, !noalias !2387 ; 3 uses
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1), !noalias !2388, !inline_history !2350 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i6, label %bb.h, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.ad = tail call noundef ptr %i.ab(ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1), !noalias !2390, !inline_history !2359 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.b, align 8, !alias.scope !2391, !noalias !2392, !nonnull !5, !noundef !5
  %i.af = load i64, ptr %i.n, align 8, !alias.scope !2391, !noalias !2392, !noundef !5
  %exitcond.not.i.i.i.i.i32 = icmp eq i64 %i.y, 0
  br i1 %exitcond.not.i.i.i.i.i32, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %.lr.ph34

bb.j:                                             ; preds = %.lr.ph34
  %i.ag = add i64 %.sroa.05.0.i.i.i.i.i33, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.05.0.i.i.i.i.i33, %i.x
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.i, %bb.j
  %.sroa.05.0.i.i.i.i.i33 = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.ah = tail call noundef ptr %i.ab(ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.af), !noalias !2390, !inline_history !2359 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i.i.i.i, label %bb.j, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i

_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ai = tail call noundef align 8 ptr @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter7message5sarifs_1__NtB5_8SarifRunNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB22_15PrettyFormatterEEB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !2393 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not8.i.i.i.i, label %bb.k, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit

bb.k:                                             ; preds = %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  store i8 1, ptr %i.z, align 8, !alias.scope !2394, !noalias !2395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  %.val.i.i10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2398, !noalias !2399, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2398, !noalias !2399, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.aj = load i64, ptr %i.k, align 8, !alias.scope !2401, !noalias !2399, !noundef !5
  %i.ak = add i64 %i.aj, -1                       ; 3 uses
  store i64 %i.ak, ptr %i.k, align 8, !alias.scope !2401, !noalias !2399
  %i.al = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !noalias !2402, !nonnull !5 ; 3 uses
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull %.val.i.i10.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1), !noalias !2403, !inline_history !2370 ; 2 uses
  %.not.i.i.i12.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12.i.i, label %bb.l, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.b, align 8, !alias.scope !2401, !noalias !2399, !nonnull !5, !noundef !5
  %i.ap = load i64, ptr %i.n, align 8, !alias.scope !2401, !noalias !2399, !noundef !5
  %exitcond.not.i.i.i13.i.i35 = icmp eq i64 %i.ak, 0
  br i1 %exitcond.not.i.i.i13.i.i35, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %.lr.ph37

bb.m:                                             ; preds = %.lr.ph37
  %i.aq = add i64 %.sroa.06.0.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i13.i.i = icmp eq i64 %i.aq, %i.ak
  br i1 %exitcond.not.i.i.i13.i.i, label %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.l, %bb.m
  %.sroa.06.0.i.i.i.i.i36 = phi i64 [ %i.aq, %bb.m ], [ 0, %bb.l ]
  %i.ar = tail call noundef ptr %i.am(ptr noundef nonnull %.val.i.i10.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.ap), !noalias !2403, !inline_history !2370 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not8.i.i.i.i.i, label %bb.m, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i

_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.as = tail call noundef ptr %i.am(ptr noundef nonnull %.val.i.i10.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !2403, !inline_history !2370 ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i11.i.i, label %_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_NtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2a_15PrettyFormatterEEBR_.exit.i, label %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i, !prof !29

_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i: ; preds = %.lr.ph34, %.lr.ph37, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.k, %bb.h, %bb.g
  %.sroa.0.1.i.ph.i.i.sink.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.ar, %.lr.ph37 ], [ %i.ad, %bb.h ], [ %i.as, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i ], [ %i.an, %bb.k ], [ %i.ah, %.lr.ph34 ]
  %i.at = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.1.i.ph.i.i.sink.i.i), !noalias !5
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit

_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_NtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2a_15PrettyFormatterEEBR_.exit.i: ; preds = %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  store i8 1, ptr %i.z, align 8, !alias.scope !2404, !noalias !2378
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EB2Y_.exit: ; preds = %_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_NtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2a_15PrettyFormatterEEBR_.exit.i, %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.f, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0 = phi ptr [ %i.s, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.w, %bb.f ], [ null, %_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_NtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2a_15PrettyFormatterEEBR_.exit.i ], [ %i.at, %_RNvXs3_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser14SerializeTuple3endCsEhZmuQNqkz_11ruff_linter.exit.sink.split.i.i ], [ %i.ai, %_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2423, !noalias !2424, !nonnull !5, !align !9, !noundef !5 ; 10 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18iteration_over_set18iteration_over_set:bb.a
  %i.w = phi ptr [ %i.v, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %.val.i = load i32, ptr %i.w, align 8, !range !26, !noalias !6441, !noundef !5
  %i.x = add nsw i32 %.val.i, -25
  %switch.i.i = icmp ult i32 %i.x, -6
  br i1 %switch.i.i, label %.loopexit55, label %bb.c

.loopexit55.sink.split:                           ; preds = %bb.f, %bb.ah
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExpruEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit55

.loopexit55:                                      ; preds = %.lr.ph73, %.loopexit55.sink.split, %bb.a
  ret void

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18iteration_over_set18iteration_over_set0EB2A_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.y = icmp ult i64 %i.t, 128102389400760776
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExpruEE16with_capacity_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 0, 128102389400760776) %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aa, 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18iteration_over_set18iteration_over_set0EB2A_.exit, %bb.g
  %.sroa.0.056 = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18iteration_over_set18iteration_over_set0EB2A_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.056, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXsK_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_12HashableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.m, ptr noundef nonnull align 8 %.sroa.0.056)
          to label %bb.e unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18iteration_over_set18iteration_over_set0EB2A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ae = load i32, ptr %1, align 8, !range !26, !noundef !5 ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpersNtB5_12OpenArgumentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ag = zext nneg i32 %i.ae to i64
  %switch.gep75 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpersNtB5_12OpenArgumentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.779, i64 %i.ag
  %switch.load76 = load i8, ptr %switch.gep75, align 1
  %switch.ext77 = zext i8 %switch.load76 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext77
  %.sroa.0.0.i = load i32, ptr %i.ah, align 4, !noundef !5
  %.sroa.34.0.i = load i32, ptr %i.ai, align 4, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !9, !noundef !5
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules18iteration_over_set16IterationOverSetEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull align 8 %i.ak, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
          to label %bb.h unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.w
  %.pn19 = phi { ptr, i32 } [ %.pn, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExpruEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExprNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ai

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.al = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExpruNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.m)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.al, label %.loopexit55.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq ptr %i.ad, %i.ab
  br i1 %i.am, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge
  %i.an = load i64, ptr %i.s, align 8, !noundef !5
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %.val26 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val27 = load i64, ptr %i.as, align 8, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ap, ptr %i.b, align 8
  %i.at = invoke { i32, i32 } @_RNvXs5_NtCs2MoD74u7shA_14ruff_text_size6traitsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB5_6Ranged5rangeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.au = extractvalue { i32, i32 } %i.at, 0      ; 3 uses
  %i.av = extractvalue { i32, i32 } %i.at, 1      ; 3 uses
  %i.aw = zext i32 %i.au to i64                   ; 10 uses
  %i.ax = zext i32 %i.av to i64                   ; 9 uses
  %.not.i.i = icmp ugt i32 %i.au, %i.av
  br i1 %.not.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i.i = icmp ugt i64 %.val27, %i.aw
  br i1 %.not5.i.i, label %bb.m, label %.split.i.i

bb.l:                                             ; preds = %bb.m, %.split.i.i, %bb.j
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %bb.y, label %bb.n

.split.i.i:                                       ; preds = %bb.k
  %i.ba = icmp eq i64 %.val27, %i.aw
  br i1 %i.ba, label %bb.l, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !6442, !noundef !5
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.l, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.n:                                             ; preds = %bb.l
  %.not6.i.i = icmp ugt i64 %.val27, %i.ax
  br i1 %.not6.i.i, label %bb.o, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.n
  %i.be = icmp eq i64 %.val27, %i.ax
  br i1 %i.be, label %bb.y, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !6442, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %bb.y, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.p:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %.val24 = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val25 = load i64, ptr %i.bk, align 8, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.bl = invoke { i32, i32 } @_RNvXs5_NtCs2MoD74u7shA_14ruff_text_size6traitsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB5_6Ranged5rangeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc35 unwind label %bb.x   ; 2 uses

.noexc35:                                         ; preds = %bb.p
  %i.bm = extractvalue { i32, i32 } %i.bl, 0      ; 3 uses
  %i.bn = extractvalue { i32, i32 } %i.bl, 1      ; 3 uses
  %i.bo = zext i32 %i.bm to i64                   ; 10 uses
  %i.bp = zext i32 %i.bn to i64                   ; 9 uses
  %.not.i.i29 = icmp ugt i32 %i.bm, %i.bn
  br i1 %.not.i.i29, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke, label %bb.q

bb.q:                                             ; preds = %.noexc35
  %i.bq = icmp eq i32 %i.bm, 0
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not5.i.i30 = icmp ugt i64 %.val25, %i.bo
  br i1 %.not5.i.i30, label %bb.t, label %.split.i.i31

bb.s:                                             ; preds = %bb.t, %.split.i.i31, %bb.q
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %bb.z, label %bb.u

.split.i.i31:                                     ; preds = %bb.r
  %i.bs = icmp eq i64 %.val25, %i.bo
  br i1 %i.bs, label %bb.s, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.bo
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !6443, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.s, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.u:                                             ; preds = %bb.s
  %.not6.i.i33 = icmp ugt i64 %.val25, %i.bp
  br i1 %.not6.i.i33, label %bb.v, label %.split7.i.i34

.split7.i.i34:                                    ; preds = %bb.u
  %i.bw = icmp eq i64 %.val25, %i.bp
  br i1 %i.bw, label %bb.z, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.bp
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !6443, !noundef !5
  %i.bz = icmp sgt i8 %i.by, -65
  br i1 %i.bz, label %bb.z, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke: ; preds = %.noexc35, %.split.i.i31, %bb.t, %.split7.i.i34, %bb.v, %.noexc, %.split.i.i, %bb.m, %.split7.i.i, %bb.o, %bb.z, %bb.aa, %bb.ab
  %2 = phi ptr [ %.val26, %.noexc ], [ %i.cj, %bb.z ], [ %.val24, %.noexc35 ], [ %i.cj, %bb.ab ], [ %i.cj, %bb.aa ], [ %.val26, %bb.o ], [ %.val26, %.split7.i.i ], [ %.val26, %bb.m ], [ %.val26, %.split.i.i ], [ %.val24, %bb.v ], [ %.val24, %.split7.i.i34 ], [ %.val24, %bb.t ], [ %.val24, %.split.i.i31 ]
  %3 = phi i64 [ %.val27, %.noexc ], [ %i.ck, %bb.z ], [ %.val25, %.noexc35 ], [ %i.ck, %bb.ab ], [ %i.ck, %bb.aa ], [ %.val27, %bb.o ], [ %.val27, %.split7.i.i ], [ %.val27, %bb.m ], [ %.val27, %.split.i.i ], [ %.val25, %bb.v ], [ %.val25, %.split7.i.i34 ], [ %.val25, %bb.t ], [ %.val25, %.split.i.i31 ]
  %4 = phi i64 [ %i.aw, %.noexc ], [ 1, %bb.z ], [ %i.bo, %.noexc35 ], [ 1, %bb.ab ], [ 1, %bb.aa ], [ %i.aw, %bb.o ], [ %i.aw, %.split7.i.i ], [ %i.aw, %bb.m ], [ %i.aw, %.split.i.i ], [ %i.bo, %bb.v ], [ %i.bo, %.split7.i.i34 ], [ %i.bo, %bb.t ], [ %i.bo, %.split.i.i31 ]
  %5 = phi i64 [ %i.ax, %.noexc ], [ %i.cl, %bb.z ], [ %i.bp, %.noexc35 ], [ %i.cl, %bb.ab ], [ %i.cl, %bb.aa ], [ %i.ax, %bb.o ], [ %i.ax, %.split7.i.i ], [ %i.ax, %bb.m ], [ %i.ax, %.split.i.i ], [ %i.bp, %bb.v ], [ %i.bp, %.split7.i.i34 ], [ %i.bp, %bb.t ], [ %i.bp, %.split.i.i31 ]
  %6 = phi ptr [ @1, %.noexc ], [ @241, %bb.z ], [ @1, %.noexc35 ], [ @241, %bb.ab ], [ @241, %bb.aa ], [ @1, %bb.o ], [ @1, %.split7.i.i ], [ @1, %bb.m ], [ @1, %.split.i.i ], [ @1, %bb.v ], [ @1, %.split7.i.i34 ], [ @1, %bb.t ], [ @1, %.split.i.i31 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #36
          to label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.cont unwind label %bb.x

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.cont: ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke
  unreachable

bb.w:                                             ; preds = %bb.ad, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.x ], [ %i.cv, %bb.ad ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.l) #37
          to label %bb.d unwind label %bb.ai

bb.x:                                             ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke, %bb.ac, %bb.y, %bb.p, %bb.i, %bb.af, %bb.ae
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.o, %.split7.i.i, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.aw
  %i.cc = sub nuw nsw i64 %i.ax, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.cb, ptr %i.k, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.cc, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @239, ptr noundef nonnull %i.j)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.x

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %switch.lookup

switch.lookup:                                    ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit47, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ce = load i32, ptr %1, align 8, !range !26, !noundef !5 ; 2 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %switch.gep78 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpersNtB5_12OpenArgumentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.cf
  %switch.load79 = load i8, ptr %switch.gep78, align 1
  %switch.ext80 = zext i8 %switch.load79 to i64
  %i.cg = zext nneg i32 %i.ce to i64
  %switch.gep81 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpersNtB5_12OpenArgumentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.779, i64 %i.cg
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %switch.ext83 = zext i8 %switch.load82 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext80
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext83
  %.sroa.0.0.i41 = load i32, ptr %i.ch, align 4, !noundef !5
  %.sroa.34.0.i42 = load i32, ptr %i.ci, align 4, !noundef !5
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i32 noundef %.sroa.0.0.i41, i32 noundef %.sroa.34.0.i42)
          to label %bb.ae unwind label %bb.ad

bb.z:                                             ; preds = %bb.v, %.split7.i.i34, %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.bo ; 6 uses
  %i.ck = sub nuw nsw i64 %i.bp, %i.bo            ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cl = add nsw i64 %i.ck, -1                   ; 4 uses
  %or.cond = icmp samesign ugt i64 %i.ck, 1
  br i1 %or.cond, label %bb.aa, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !6444, !noundef !5
  %i.co = icmp sgt i8 %i.cn, -65
  br i1 %i.co, label %bb.ab, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !6444, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.ac, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i32.invoke

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add nsw i64 %i.ck, -2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.ct, ptr %i.h, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.cs, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.414.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @162, ptr noundef nonnull %i.g)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit47 unwind label %bb.x

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit47: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %switch.lookup

bb.ad:                                            ; preds = %switch.lookup
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.ae:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.ag unwind label %bb.x

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit55.sink.split

bb.ai:                                            ; preds = %bb.d, %bb.w
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExprNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  resume { ptr, i32 } %.pn19
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19invalid_hash_return19invalid_hash_return(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.h = load i8, ptr %i.g, align 1, !range !20, !alias.scope !6450, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6450, !noundef !5
  %i.k = and i64 %i.j, 72057594037927935
  %i.l = icmp ult i8 %i.h, -48
  %i.m = zext i8 %i.h to i64
  %i.n = add nsw i64 %i.m, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 16)
  %.sroa.0.0.i = select i1 %i.l, i64 %spec.store.select.i, i64 %i.k
  %i.o = icmp eq i64 %.sroa.0.0.i, 8
  br i1 %i.o, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i8 %i.h, -49
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !6450
  %.sroa.01.0.i = select i1 %i.p, ptr %i.r, ptr %i.q
  %i.s = load i64, ptr %.sroa.01.0.i, align 1
  %i.t = icmp ne i64 %i.s, 6872326401155424095
  %i.u = zext i1 %i.t to i32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.z = load i32, ptr %i.y, align 8, !range !31, !noundef !5
  %i.aa = add i32 %i.z, -1
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp ugt i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !40, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type7is_stub(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v)
  br i1 %i.aj, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef i8 @_RNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtB2_8Terminal13from_function(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v)
  switch i8 %i.ak, label %bb.i [
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.al = load i32, ptr %1, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !9, !noundef !5
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules19invalid_hash_return21InvalidHashReturnTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %i.ap, i32 noundef %i.al, i32 noundef %i.an)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.g, %bb.f, %bb.d, %bb.b, %bb.a, %._crit_edge
  ret void

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast7helpers22ReturnStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.e) #37
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.aa

bb.l:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  invoke void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtB4_7helpers22ReturnStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.as, i64 noundef %i.av)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %.sroa.48.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ax = load i64, ptr %i.e, align 8, !range !12, !noundef !5
  %i.ay = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = icmp ult i64 %i.ay, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %.idx = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aw, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.w, %bb.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit, %bb.r, %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.aa

bb.o:                                             ; preds = %.lr.ph, %bb.t
  %i.bg = phi ptr [ %i.aw, %.lr.ph ], [ %i.bq, %bb.t ] ; 2 uses
end_hunk_1
