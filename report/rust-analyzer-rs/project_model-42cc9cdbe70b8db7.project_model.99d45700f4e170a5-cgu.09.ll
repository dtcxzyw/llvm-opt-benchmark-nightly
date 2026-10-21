Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.09?download=true
inline.NumInlined: 681
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callB1M_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3H_3VecB1M_E14extend_trustedBO_E0E0ECsdcPuHeDsw6v_13project_model:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %.val5, ptr %.val, align 8
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB2i_3vec3VecB2e_EEEINtNtB7_3map3MapB1m_NCNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB3I_14CargoWorkspace18workspace_features00EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB3h_8map_foldB2e_TB2e_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6w_7HashSetB2e_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB5i_7collect6ExtendB2e_E6extendINtNtB7_7flatten7FlattenINtNtB7_10filter_map9FilterMapIB3f_IB3f_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB3I_11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtBaY_5ArenaBav_E4iter0ENCNvB3E_8packages0ENCB3C_0EEE0NCINvNvB5e_8for_each4callB6f_NCINvXs1i_NtB6y_3mapINtBcR_7HashMapB2e_uB7j_EIB82_B6f_E6extendIB3f_B8B_B6n_EE0E0E0EB3K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1Y_3vec3VecB1U_EEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1U_TB1U_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4i_7HashSetB1U_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2Y_7collect6ExtendB1U_E6extendINtNtB7_7flatten7FlattenINtNtB7_10filter_map9FilterMapINtB3F_3MapIB7g_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB9y_5ArenaB8n_E4iter0ENCNvMs4_B8p_NtB8p_14CargoWorkspace8packages0ENCNvBao_18workspace_features0EEE0NCINvNvB2U_8for_each4callB41_NCINvXs1i_NtB4k_3mapINtBcd_7HashMapB1U_uB55_EIB5O_B41_E6extendIB7g_B6n_B49_EE0E0E0EB8r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !noundef !4
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !4, !align !12, !noundef !4
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1T_3vec3VecB1P_EENCNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2Y_14CargoWorkspace18workspace_features00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB1P_TB1P_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB5K_7HashSetB1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4x_7collect6ExtendB1P_E6extendINtNtB8_7flatten7FlattenINtNtB8_10filter_map9FilterMapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtB2Y_11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtBaa_5ArenaB9H_E4iter0ENCNvB2U_8packages0ENCB2S_0EEE0NCINvNvB4t_8for_each4callB5t_NCINvXs1i_NtB5M_3mapINtBc3_7HashMapB1P_uB6x_EIB7g_B5t_E6extendIBO_B7P_B5B_EE0E0E0EB30_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1q_B1q_uNvYB1q_NtNtBb_5clone5Clone5cloneNCINvNvB29_8for_each4callB1q_NCINvXs1_B1u_NtB1u_10CfgOptionsINtNtB2d_7collect6ExtendB1q_E6extendINtNtB7_6cloned6ClonedBO_EE0E0E0ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !313
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB1u_NCINvXs1_B1y_NtB1y_10CfgOptionsINtNtB2T_7collect6ExtendB1u_E6extendINtNtBV_6cloned6ClonedINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1u_EB5q_EEE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.d

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2n_6cloned6ClonedINtNtB2n_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.t = icmp eq ptr %i.p, %i.r
  br i1 %i.t, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i, %bb.g
  %.sroa.01.0.i3 = phi i64 [ 0, %bb.g ], [ %i.ag, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !315, !noalias !316, !noundef !4
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y), !noalias !317 ; 2 uses
  %i.ac = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.k, !noalias !317

bb.j:                                             ; preds = %bb.h
  %i.ad = call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa), !noalias !317
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsdcPuHeDsw6v_13project_model(ptr nonnull %i.ab) #26
          to label %bb.m unwind label %bb.l, !noalias !317

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !317
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.5.0.i.i = phi ptr [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.j ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !319
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !319
  call void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions15insert_any_atom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  %i.ag = add nuw i64 %.sroa.01.0.i3, 1           ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit, label %bb.h

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1u_8for_each4callBQ_NCINvXs1_BU_NtBU_10CfgOptionsINtNtB1y_7collect6ExtendBQ_E6extendINtNtB2m_6cloned6ClonedINtNtB2m_5chain5ChainBF_BF_EEE0E0E0ECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvXs1_BZ_NtBZ_10CfgOptionsINtNtB2i_7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4L_EEE0E0E0CsdcPuHeDsw6v_13project_model.exit.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainNtNtNtBb_3str4iter5LinesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldB2c_INtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtB1v_6string6StringEuINtNtNtBb_3ops12control_flow11ControlFlowIB4S_B3Q_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXB7_INtB7_12GenericShuntINtB33_3MapBO_B5H_EIB3v_NtNtBb_7convert10InfallibleB4t_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB3Q_B5w_NcNtB5w_5Break0E0B5w_E0E0B4R_EB5J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !range !348, !noundef !4
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8, !noalias !350
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %.promoted.i = load i8, ptr %i.j, align 1, !alias.scope !351
  %.promoted15.i = load i64, ptr %i.i, align 8, !alias.scope !349 ; 4 uses
  %i.k = trunc nuw i8 %.promoted.i to i1
  br i1 %i.k, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !351, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !351, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !352, !noundef !4 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.p, %.val1.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !349 ; 2 uses
  %i.t = zext nneg i8 %i.s to i64                 ; 4 uses
  %i.u = icmp ult i8 %i.s, 5
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i8, ptr %i.x, align 8, !range !6, !alias.scope !349
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !349 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %.promoted19.i = load i64, ptr %i.n, align 8, !alias.scope !352
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  store i8 1, ptr %i.j, align 1, !alias.scope !353
  %.not.i3.i.i.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted15.i
  %or.cond.not.i.i.i.i.i.us.i = select i1 %i.z, i1 true, i1 %.not.i3.i.i.i.i.us.i
  %i.aa = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted15.i ; 4 uses
  %.sroa.0.1.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted15.i ; 4 uses
  %i.ab = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.us.i, 0 ; 2 uses
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  %i.ad = insertvalue { ptr, i64 } %i.ab, i64 %i.ac, 1
  %i.ae = add i64 %i.aa, -2
  br i1 %or.cond.not.i.i.i.i.i.us.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i: ; preds = %.lr.ph.split.us.i
  %3 = insertvalue { ptr, i64 } %i.ab, i64 %i.aa, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !359
  store i32 10, ptr %i.b, align 4, !noalias !359
  %i.af = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !359
  br i1 %i.af, label %bb.c, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i

bb.c:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  store i32 13, ptr %i.a, align 4, !noalias !359
  %i.ag = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !360 ; 2 uses
  %.sroa.0.0.i15.i.i.i.i.us.us.i = select i1 %i.ag, ptr %.sroa.0.1.i.i.i.i.us.i, ptr null
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.us.us.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %i.ae, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %..i.i.i.i.us.us.i = select i1 %i.ag, { ptr, i64 } %i.ai, { ptr, i64 } %i.ad
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i: ; preds = %bb.c, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i
  %.merged.i.i.i.i.us.us.i = phi { ptr, i64 } [ %..i.i.i.i.us.us.i, %bb.c ], [ %3, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.us.i ] ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i, 0 ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.aj, null
  br i1 %.not.us.us.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i
  %i.ak = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldReINtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCsbSS6DM8SDEO_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowIB3e_B1W_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainNtNtNtBb_3str4iter5LinesINtNtNtB2D_3vec9into_iter8IntoIterB1y_EEB3X_EIB1B_NtNtBb_7convert10InfallibleB2z_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB7i_12try_for_each4callB1W_B3M_NcNtB3M_5Break0E0B3M_E0E0INtB7_5FnMutTuB1y_EE8call_mutB3Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak), !noalias !361
  %i.al = load i64, ptr %i.c, align 8, !range !17, !alias.scope !362, !noalias !350, !noundef !4 ; 2 uses
  %.not.i.us.us.i = icmp eq i64 %i.al, 2
  br i1 %.not.i.us.us.i, label %._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i, label %.loopexit26

._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  br label %.loopexit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.i: ; preds = %.lr.ph.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %bb.l, %.lr.ph.split.preheader.i
  %i.am = phi i64 [ %i.bj, %bb.l ], [ %.promoted19.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa1718.i = phi i64 [ %.lcssa16.i, %bb.l ], [ %.promoted15.i, %.lr.ph.split.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.an = icmp ult i64 %i.p, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.u)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !352 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.h, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.bd, %bb.h ], [ %i.am, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ap = sub nuw i64 %i.p, %i.ao                 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ao ; 2 uses
  %i.ar = icmp samesign ult i64 %i.ap, 16
  br i1 %i.ar, label %.preheader.i.i.i.i.i.i.i, label %bb.e

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.as = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef range(i64 0, -9223372036854775808) %i.ap), !noalias !363
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ap, %bb.f ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.au = insertvalue { i64, i64 } %i.at, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.f
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.f ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !364, !noalias !363, !noundef !4
  %i.ax = icmp eq i8 %i.aw, %.pre.i.i.i.i.i.i
  br i1 %i.ax, label %._crit_edge.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ay, %i.ap
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.e
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ %i.as, %bb.e ] ; 2 uses
  %i.az = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.g, label %.split.us.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.bb = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.bc = add i64 %i.ao, 1
  %i.bd = add i64 %i.bc, %i.bb                    ; 11 uses
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !352
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.bd, %i.t
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.bd, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %bb.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !352
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.be = icmp ult i64 %i.p, %i.bd
  br i1 %i.be, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bf = sub nuw i64 %i.bd, %i.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bf
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull %i.q, i64 %i.t), !noalias !365
  %i.bh = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.h

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.i
  store i64 %i.bd, ptr %i.i, align 8, !alias.scope !351
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i: ; preds = %bb.h, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i
  %i.bi = phi i64 [ %i.am, %.lr.ph.split.i ], [ %i.p, %.split.us.i.i.i.i.i.i ], [ %i.bd, %bb.h ]
  store i8 1, ptr %i.j, align 1, !alias.scope !353
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1718.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.z, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.bj = phi i64 [ %i.bd, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.bi, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.lcssa16.i = phi i64 [ %i.bd, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa1718.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %i.bk = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.pn.i = phi i64 [ %i.bd, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i, %.lcssa1718.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa1718.i ; 4 uses
  %i.bl = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0 ; 2 uses
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %.sroa.4.1.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !359
  store i32 10, ptr %i.b, align 4, !noalias !359
  %i.bn = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !359
  br i1 %i.bn, label %bb.j, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.j:                                             ; preds = %select.unfold.i.i.i
  %i.bo = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  %i.bp = insertvalue { ptr, i64 } %i.bl, i64 %i.bo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  store i32 13, ptr %i.a, align 4, !noalias !359
  %i.bq = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !360 ; 2 uses
  %i.br = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i = select i1 %i.bq, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  %i.bs = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i, 0
  %i.bt = insertvalue { ptr, i64 } %i.bs, i64 %i.br, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %..i.i.i.i.i = select i1 %i.bq, { ptr, i64 } %i.bt, { ptr, i64 } %i.bp
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.j, %select.unfold.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %bb.j ], [ %i.bm, %select.unfold.i.i.i ] ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.bv = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldReINtNtBb_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCsbSS6DM8SDEO_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowIB3e_B1W_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainNtNtNtBb_3str4iter5LinesINtNtNtB2D_3vec9into_iter8IntoIterB1y_EEB3X_EIB1B_NtNtBb_7convert10InfallibleB2z_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB7i_12try_for_each4callB1W_B3M_NcNtB3M_5Break0E0B3M_E0E0INtB7_5FnMutTuB1y_EE8call_mutB3Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bv), !noalias !361
  %i.bw = load i64, ptr %i.c, align 8, !range !17, !alias.scope !362, !noalias !350, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bw, 2
  br i1 %.not.i.i, label %bb.l, label %.loopexit26

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  br i1 %i.bk, label %.loopexit, label %.lr.ph.split.i

bb.m:                                             ; preds = %.loopexit, %bb.a
  %i.bx = load ptr, ptr %1, align 8, !noundef !4
  %.not4 = icmp eq ptr %i.bx, null
  br i1 %.not4, label %bb.n, label %bb.o

.loopexit26:                                      ; preds = %bb.k, %bb.d
  %.us-phi.i = phi i64 [ %i.al, %bb.d ], [ %i.bw, %bb.k ]
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

.loopexit:                                        ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.i, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %bb.l, %bb.b, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i, %._RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread_crit_edge.split.us.split.us.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i.i.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 -1, ptr %i.g, align 4
  br label %bb.m

bb.n:                                             ; preds = %bb.m, %bb.p, %bb.q, %.loopexit26
  %.sink = phi i64 [ %.us-phi.i, %.loopexit26 ], [ %i.by, %bb.p ], [ 2, %bb.q ], [ 2, %bb.m ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldBX_INtNtB18_6result6ResultNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtBa_6string6StringEuINtNtNtB18_3ops12control_flow11ControlFlowIB4a_B39_EENvCsdcPuHeDsw6v_13project_model9parse_cfgNCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapINtNtB2c_5chain5ChainNtNtNtB18_3str4iter5LinesBI_EB50_EIB2N_NtNtB18_7convert10InfallibleB3M_EEB10_8try_folduNCINvNvB10_12try_for_each4callB39_B4P_NcNtB4P_5Break0E0B4P_E0E0B49_EB52_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.by = load i64, ptr %i.f, align 8, !range !17, !alias.scope !366, !noundef !4 ; 2 uses
  %.not.i7 = icmp eq i64 %i.by, 2
  br i1 %.not.i7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.716.0..sroa_idx17, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB1s_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB34_7collect6ExtendB1s_E6extendBP_E0NCINvNvB30_8for_each4callB45_NCINvXs1i_NtB4o_3mapINtB79_7HashMapB1s_uB59_EIB5S_B45_E6extendINtB3J_3MapBP_B4d_EE0E0E0EB20_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6copied9copy_foldBQ_uNCINvNtB3f_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4w_7HashSetBQ_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2r_7collect6ExtendBQ_E6extendINtB3d_6CopiedBF_EE0NCINvNvB2n_8for_each4callB4g_NCINvXs1i_NtB4y_3mapINtB7w_7HashMapBQ_uB5i_EIB61_B4g_E6extendINtB3U_3MapB6z_B4n_EE0E0E0E0EB1o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val8.i = load i32, ptr %i.f, align 4, !noalias !369, !noundef !4
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.val8.i) ; 0 uses
  %i.h = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6copied9copy_foldBQ_uNCINvNtB3f_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4w_7HashSetBQ_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2r_7collect6ExtendBQ_E6extendINtB3d_6CopiedBF_EE0NCINvNvB2n_8for_each4callB4g_NCINvXs1i_NtB4y_3mapINtB7w_7HashMapBQ_uB5i_EIB61_B4g_E6extendINtB3U_3MapB6z_B4n_EE0E0E0E0EB1o_.exit, label %bb.c

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6copied9copy_foldBQ_uNCINvNtB3f_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4w_7HashSetBQ_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2r_7collect6ExtendBQ_E6extendINtB3d_6CopiedBF_EE0NCINvNvB2n_8for_each4callB4g_NCINvXs1i_NtB4y_3mapINtB7w_7HashMapBQ_uB5i_EIB61_B4g_E6extendINtB3U_3MapB6z_B4n_EE0E0E0E0EB1o_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtCsdcPuHeDsw6v_13project_model15cargo_workspace1__NtB2Q_27RustAnalyzerPackageMetaDataNtB17_11Deserialize11deserialize7___FieldEEB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !388, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !388, !nonnull !4, !noundef !4 ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !388
  %.sroa.030.0.copyload = load i64, ptr %i.g, align 8, !noalias !388 ; 3 uses
  %.not = icmp eq i64 %.sroa.030.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.030.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  %i.j = load i64, ptr %1, align 8, !range !16, !alias.scope !389, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.e unwind label %bb.k

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.l, align 1
  store i8 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx4, align 8 ; 3 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  store i64 %.sroa.030.0.copyload, ptr %i.a, align 8, !noalias !391
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.425.0.copyload, ptr %.sroa.5.0..sroa_idx17, align 8, !noalias !391
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.526.0.copyload, ptr %.sroa.6.0..sroa_idx19, align 8, !noalias !391
  %i.m = icmp eq i64 %.sroa.526.0.copyload, 13
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %.sroa.425.0.copyload, align 1
  %i.o = xor i64 %i.n, 8246195798475502962
  %i.p = getelementptr i8, ptr %.sroa.425.0.copyload, i64 5
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 7310575256332300383
  %i.s = or i64 %i.o, %i.r
  %i.t = icmp ne i64 %i.s, 0                      ; 2 uses
  %i.u = zext i1 %i.t to i32                      ; 0 uses
  %spec.select.i.i.i.i.i.i = zext i1 %i.t to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i, %bb.f ], [ 1, %bb.e ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h, !noalias !392

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.i, !noalias !392

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !392
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !390
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink.i.i.i.i.i.i, ptr %i.x, align 1
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.k:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.k
  %.pn40 = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.v, %bb.h ]
  resume { ptr, i32 } %.pn40
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_15MapDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess13next_key_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtCsdcPuHeDsw6v_13project_model15cargo_workspaces_1__NtB2Q_15PackageMetadataNtB17_11Deserialize11deserialize7___FieldEEB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !411, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !411, !nonnull !4, !noundef !4 ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !411
  %.sroa.030.0.copyload = load i64, ptr %i.g, align 8, !noalias !411 ; 3 uses
  %.not = icmp eq i64 %.sroa.030.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB5_7Sysroot14load_workspace:bb.a
bb.il:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsdRkQxkTxnTp_6anyhow5ErrorECsdcPuHeDsw6v_13project_model.exit275, %bb.p
  %i.ro = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.rp = icmp ult i64 %i.ro, 2
  br i1 %i.rp, label %bb.im, label %.lr.ph

bb.im:                                            ; preds = %bb.il
  %i.rq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.rq, label %bb.in [
    i8 0, label %.lr.ph
    i8 1, label %bb.io
    i8 2, label %bb.io
  ], !prof !20

bb.in:                                            ; preds = %bb.im
  %i.rr = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE)
          to label %bb.ip unwind label %bb.k      ; 2 uses

bb.io:                                            ; preds = %bb.im, %bb.im, %bb.ip
  %.sroa.016.0 = phi i8 [ %i.rr, %bb.ip ], [ %i.rq, %bb.im ], [ %i.rq, %bb.im ]
  %i.rs = load ptr, ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4
  %i.rt = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rs, i8 noundef %.sroa.016.0)
          to label %bb.iq unwind label %bb.k

bb.ip:                                            ; preds = %bb.in
  %i.ru = icmp eq i8 %i.rr, 0
  br i1 %i.ru, label %.lr.ph, label %bb.io

bb.iq:                                            ; preds = %bb.io
  br i1 %i.rt, label %bb.ir, label %.lr.ph

.lr.ph:                                           ; preds = %bb.iq, %_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces2_0B9_.exit, %bb.il, %bb.im, %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 0, ptr %i.cn, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.587.0..sroa_idx, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i8 3, ptr %i.rv, align 8
  %i.rw = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 117) ; 2 uses
  %i.rx = extractvalue { ptr, i64 } %i.rw, 0      ; 3 uses
  %i.ry = extractvalue { ptr, i64 } %i.rw, 1      ; 7 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.5113.sroa.4.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.5113.sroa.5.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.sroa.5113.sroa.6.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %.sroa.5113.sroa.7.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.sroa.5113.sroa.8.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 52
  %.sroa.5113.sroa.9.0..sroa.5113.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 65
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.sh = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.si = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.4.0..sroa_idx967 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  br label %bb.is

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.sj = load ptr, ptr @_RNvNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces_10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.db, ptr %i.co, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9R0CJ7nmiec_5paths10AbsPathBufNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr @51, ptr %i.cp, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %i.sl, align 8
  store ptr %i.cp, ptr %i.cq, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr @27, ptr %i.sm, align 8
  store i64 1, ptr %i.cr, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cq, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.sk, ptr %.sroa.419.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr)
          to label %_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces2_0B9_.exit unwind label %bb.k

_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspaces2_0B9_.exit: ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtB4_5array4iter8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringKj2_ENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2W_7Sysroot14load_workspace0ENCB2Q_s_0EEB2Y_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mb, %.loopexit.split-lp551, %.body421, %bb.mg, %bb.lt, %bb.ks
  %.pn.pn = phi { ptr, i32 } [ %i.acm, %bb.mg ], [ %i.acm, %bb.lt ], [ %i.acy, %bb.mb ], [ %i.aap, %bb.ks ], [ %eh.lpad-body422, %.body421 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp551 ], [ %lpad.loopexit.split-lp1289, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched8StitchedEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cn) #26
          to label %.body unwind label %bb.mf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jb, %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit411, %select.unfold505.thread, %bb.kh, %bb.kl, %bb.kc, %bb.it, %bb.kq, %bb.iy, %select.unfold, %bb.ko, %bb.jp, %bb.jy, %bb.ju, %select.unfold499.thread, %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit367, %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit324, %select.unfold493.thread, %bb.jg, %bb.jk, %.invoke, %bb.kr, %.thread501, %.thread495, %._crit_edge
  %lpad.loopexit.split-lp1289 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtB4_5array4iter8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringKj2_ENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2W_7Sysroot14load_workspace0ENCB2Q_s_0EEB2Y_.exit

bb.is:                                            ; preds = %.lr.ph, %bb.lv
  %.lcssa670693 = phi i64 [ 0, %.lr.ph ], [ %.lcssa670691, %bb.lv ] ; 3 uses
  %.lcssa565673688 = phi i64 [ 0, %.lr.ph ], [ %.lcssa565672, %bb.lv ] ; 4 uses
  %i.sn = icmp ult i64 %i.ry, %.lcssa670693
  br i1 %i.sn, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.is, %bb.iw
  %i.so = phi i64 [ %i.td, %bb.iw ], [ %.lcssa670693, %bb.is ] ; 5 uses
  %i.sp = sub nuw i64 %i.ry, %i.so                ; 5 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.so ; 2 uses
  %i.sr = icmp samesign ult i64 %i.sp, 16
  br i1 %i.sr, label %.preheader.i.i.i, label %bb.it

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.it:                                            ; preds = %.lr.ph.split.i.i
  %i.ss = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sq, i64 noundef range(i64 0, -9223372036854775808) %i.sp)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i:                                ; preds = %bb.iu, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.sp, %bb.iu ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.iu ], [ 1, %.lr.ph.i.i.i ]
  %i.st = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.su = insertvalue { i64, i64 } %i.st, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.iu
  %.sroa.01.05.i.i.i = phi i64 [ %i.sy, %bb.iu ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.sroa.01.05.i.i.i
  %i.sw = load i8, ptr %i.sv, align 1, !alias.scope !705, !noalias !706, !noundef !4
  %i.sx = icmp eq i8 %i.sw, 10
  br i1 %i.sx, label %._crit_edge.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.i.i.i
  %i.sy = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.sy, %i.sp
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.it, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.su, %._crit_edge.i.i.i ], [ %i.ss, %bb.it ] ; 2 uses
  %i.sz = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ta = trunc nuw i64 %i.sz to i1
  br i1 %i.ta, label %bb.iv, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i

bb.iv:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.tb = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.tc = add i64 %i.so, 1
  %i.td = add i64 %i.tc, %i.tb                    ; 6 uses
  %.not12.i.i = icmp ugt i64 %i.td, %i.ry
  %i.te = add i64 %i.so, %i.tb
  %or.cond.i.i.not = icmp ult i64 %i.te, %i.ry
  br i1 %or.cond.i.i.not, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.ix, %bb.iv
  br i1 %.not12.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph.split.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.tf = getelementptr i8, ptr %i.rx, i64 %i.so
  %i.tg = getelementptr i8, ptr %i.tf, i64 %i.tb
  %lhsc = load i8, ptr %i.tg, align 1
  %i.th = icmp eq i8 %lhsc, 10
  br i1 %i.th, label %select.unfold, label %bb.iw

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.iw, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.is
  %.lcssa670692 = phi i64 [ %.lcssa670693, %bb.is ], [ %i.ry, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.td, %bb.iw ]
  %.not.i3.i.not = icmp eq i64 %i.ry, %.lcssa565673688
  br i1 %.not.i3.i.not, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %bb.ix, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i
  %.lcssa670691 = phi i64 [ %.lcssa670692, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i ], [ %i.td, %bb.ix ]
  %.lcssa565672 = phi i64 [ %.lcssa565673688, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i ], [ %i.td, %bb.ix ]
  %i.ti = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i ], [ false, %bb.ix ]
  %.pn777 = phi i64 [ %i.ry, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i ], [ %i.td, %bb.ix ]
  %.sroa.4.1.i = sub nuw i64 %.pn777, %.lcssa565673688 ; 4 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.lcssa565673688 ; 4 uses
  %i.tj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.tk = insertvalue { ptr, i64 } %i.tj, i64 %.sroa.4.1.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !707
  store i32 10, ptr %i.p, align 4, !noalias !707
  %i.tl = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1)
          to label %.noexc281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc281:                                        ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !707
  br i1 %i.tl, label %bb.iy, label %bb.ko

bb.iy:                                            ; preds = %.noexc281
  %i.tm = add i64 %.sroa.4.1.i, -1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !707
  store i32 13, ptr %i.o, align 4, !noalias !707
  %i.tn = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %i.tm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 1)
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc282:                                        ; preds = %bb.iy
  %i.to = insertvalue { ptr, i64 } %i.tk, i64 %i.tm, 1
  %i.tp = add i64 %.sroa.4.1.i, -2
  %.sroa.0.0.i15.i = select i1 %i.tn, ptr %.sroa.0.1.i, ptr null
  %i.tq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i, 0
  %i.tr = insertvalue { ptr, i64 } %i.tq, i64 %i.tp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !707
  %..i = select i1 %i.tn, { ptr, i64 } %i.tr, { ptr, i64 } %i.to
  br label %bb.ko

._crit_edge:                                      ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i, %bb.lv
  %i.ts = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %bb.iz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.iz:                                            ; preds = %._crit_edge
  %i.tt = extractvalue { i32, i32 } %i.ts, 0
  %i.tu = trunc i32 %i.tt to i1
  br i1 %i.tu, label %.lr.ph720, label %.thread495

.lr.ph720:                                        ; preds = %bb.iz
  %i.tv = extractvalue { i32, i32 } %i.ts, 1
  %i.tw = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 77) ; 2 uses
  %i.tx = extractvalue { ptr, i64 } %i.tw, 0      ; 4 uses
  %i.ty = extractvalue { ptr, i64 } %i.tw, 1      ; 7 uses
  %.not244 = icmp eq ptr %i.tx, null
  %i.tz = zext i32 %i.tv to i64                   ; 3 uses
  br label %bb.ja

bb.ja:                                            ; preds = %.lr.ph720, %bb.jm
  %.lcssa712727 = phi i64 [ 0, %.lr.ph720 ], [ %.lcssa7127251037, %bb.jm ] ; 3 uses
  %.lcssa561715718 = phi i64 [ 0, %.lr.ph720 ], [ %.lcssa5617141038, %bb.jm ] ; 4 uses
  %i.ua = icmp ult i64 %i.ty, %.lcssa712727
  br i1 %i.ua, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294, label %.lr.ph.split.i.i290

.lr.ph.split.i.i290:                              ; preds = %bb.ja, %bb.je
  %i.ub = phi i64 [ %i.uq, %bb.je ], [ %.lcssa712727, %bb.ja ] ; 5 uses
  %i.uc = sub nuw i64 %i.ty, %i.ub                ; 5 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ub ; 2 uses
  %i.ue = icmp samesign ult i64 %i.uc, 16
  br i1 %i.ue, label %.preheader.i.i.i309, label %bb.jb

.preheader.i.i.i309:                              ; preds = %.lr.ph.split.i.i290
  %.not.i.i.i310 = icmp eq i64 %i.uc, 0
  br i1 %.not.i.i.i310, label %._crit_edge.i.i.i314, label %.lr.ph.i.i.i311

bb.jb:                                            ; preds = %.lr.ph.split.i.i290
  %i.uf = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ud, i64 noundef range(i64 0, -9223372036854775808) %i.uc)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i314:                             ; preds = %bb.jc, %.lr.ph.i.i.i311, %.preheader.i.i.i309
  %.sroa.01.0.lcssa.i.i.i315 = phi i64 [ 0, %.preheader.i.i.i309 ], [ %i.uc, %bb.jc ], [ %.sroa.01.05.i.i.i312, %.lr.ph.i.i.i311 ]
  %.sroa.0.1.i.i.i316 = phi i64 [ 0, %.preheader.i.i.i309 ], [ 0, %bb.jc ], [ 1, %.lr.ph.i.i.i311 ]
  %i.ug = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i316, 0
  %i.uh = insertvalue { i64, i64 } %i.ug, i64 %.sroa.01.0.lcssa.i.i.i315, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291

.lr.ph.i.i.i311:                                  ; preds = %.preheader.i.i.i309, %bb.jc
  %.sroa.01.05.i.i.i312 = phi i64 [ %i.ul, %bb.jc ], [ 0, %.preheader.i.i.i309 ] ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.sroa.01.05.i.i.i312
  %i.uj = load i8, ptr %i.ui, align 1, !alias.scope !708, !noalias !709, !noundef !4
  %i.uk = icmp eq i8 %i.uj, 10
  br i1 %i.uk, label %._crit_edge.i.i.i314, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph.i.i.i311
  %i.ul = add nuw nsw i64 %.sroa.01.05.i.i.i312, 1 ; 2 uses
  %exitcond.not.i.i.i313 = icmp eq i64 %i.ul, %i.uc
  br i1 %exitcond.not.i.i.i313, label %._crit_edge.i.i.i314, label %.lr.ph.i.i.i311

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291: ; preds = %bb.jb, %._crit_edge.i.i.i314
  %.merged.i.i.i292 = phi { i64, i64 } [ %i.uh, %._crit_edge.i.i.i314 ], [ %i.uf, %bb.jb ] ; 2 uses
  %i.um = extractvalue { i64, i64 } %.merged.i.i.i292, 0
  %i.un = trunc nuw i64 %i.um to i1
  br i1 %i.un, label %bb.jd, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294

bb.jd:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291
  %i.uo = extractvalue { i64, i64 } %.merged.i.i.i292, 1 ; 3 uses
  %i.up = add i64 %i.ub, 1
  %i.uq = add i64 %i.up, %i.uo                    ; 6 uses
  %.not12.i.i305 = icmp ugt i64 %i.uq, %i.ty
  %i.ur = add i64 %i.ub, %i.uo
  %or.cond.i.i306.not = icmp ult i64 %i.ur, %i.ty
  br i1 %or.cond.i.i306.not, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jf, %bb.jd
  br i1 %.not12.i.i305, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294, label %.lr.ph.split.i.i290

bb.jf:                                            ; preds = %bb.jd
  %i.us = getelementptr i8, ptr %i.tx, i64 %i.ub
  %i.ut = getelementptr i8, ptr %i.us, i64 %i.uo
  %lhsc1026 = load i8, ptr %i.ut, align 1
  %i.uu = icmp eq i8 %lhsc1026, 10
  br i1 %i.uu, label %select.unfold493.thread, label %bb.je

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294: ; preds = %bb.je, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291, %bb.ja
  %.lcssa712726 = phi i64 [ %.lcssa712727, %bb.ja ], [ %i.ty, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i291 ], [ %i.uq, %bb.je ]
  %.not.i3.i298.not = icmp eq i64 %i.ty, %.lcssa561715718
  %brmerge = select i1 %.not.i3.i298.not, i1 true, i1 %.not244
  br i1 %brmerge, label %.thread495, label %select.unfold493.thread

select.unfold493.thread:                          ; preds = %bb.jf, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294
  %.pn1144 = phi i64 [ %i.ty, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294 ], [ %i.uq, %bb.jf ]
  %i.uv = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294 ], [ false, %bb.jf ]
  %.lcssa5617141038 = phi i64 [ %.lcssa561715718, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294 ], [ %i.uq, %bb.jf ]
  %.lcssa7127251037 = phi i64 [ %.lcssa712726, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294 ], [ %i.uq, %bb.jf ]
  %.sroa.4.1.i3021039 = sub nuw i64 %.pn1144, %.lcssa561715718 ; 4 uses
  %.sroa.0.1.i3031040 = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.lcssa561715718 ; 4 uses
  %.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i3031040, 0
  %i.uw = insertvalue { ptr, i64 } %.pn, i64 %.sroa.4.1.i3021039, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !710
  store i32 10, ptr %i.n, align 4, !noalias !710
  %i.ux = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3031040, i64 noundef %.sroa.4.1.i3021039, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1)
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc322:                                        ; preds = %select.unfold493.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !710
  br i1 %i.ux, label %bb.jg, label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit324

bb.jg:                                            ; preds = %.noexc322
  %i.uy = add i64 %.sroa.4.1.i3021039, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !710
  store i32 13, ptr %i.m, align 4, !noalias !710
  %i.uz = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3031040, i64 noundef %i.uy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc323:                                        ; preds = %bb.jg
  %i.va = insertvalue { ptr, i64 } %i.uw, i64 %i.uy, 1
  %i.vb = add i64 %.sroa.4.1.i3021039, -2
  %.sroa.0.0.i15.i320 = select i1 %i.uz, ptr %.sroa.0.1.i3031040, ptr null
  %i.vc = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i320, 0
  %i.vd = insertvalue { ptr, i64 } %i.vc, i64 %i.vb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !710
  %..i321 = select i1 %i.uz, { ptr, i64 } %i.vd, { ptr, i64 } %i.va
  br label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit324

.thread495:                                       ; preds = %bb.jm, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i294, %bb.iz
  %i.ve = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 5)
          to label %bb.jn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit324: ; preds = %.noexc323, %.noexc322
  %.merged.i319 = phi { ptr, i64 } [ %..i321, %.noexc323 ], [ %i.uw, %.noexc322 ] ; 2 uses
  %i.vf = extractvalue { ptr, i64 } %.merged.i319, 0
  %i.vg = extractvalue { ptr, i64 } %.merged.i319, 1
  %i.vh = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vf, i64 noundef %i.vg)
          to label %bb.jh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.jh:                                            ; preds = %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit324
  %i.vi = extractvalue { i32, i32 } %i.vh, 0
  %i.vj = extractvalue { i32, i32 } %i.vh, 1
  %i.vk = trunc i32 %i.vi to i1
  br i1 %i.vk, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %i.vl = load i64, ptr %.sroa.587.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.vm = icmp ugt i64 %i.vl, %i.tz
  br i1 %i.vm, label %bb.jj, label %.invoke

bb.jj:                                            ; preds = %bb.ji
  %i.vn = load ptr, ptr %.sroa.486.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.vo = getelementptr inbounds nuw [72 x i8], ptr %i.vn, i64 %i.tz ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 64 ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !711, !noundef !4 ; 3 uses
  %i.vs = load i64, ptr %i.vp, align 8, !range !14, !alias.scope !711, !noundef !4
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %bb.jk, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit

bb.jk:                                            ; preds = %bb.jj
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8grow_oneB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vp) #31
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit: ; preds = %bb.jk, %bb.jj
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 56
  %i.vv = load ptr, ptr %i.vu, align 8, !alias.scope !711, !nonnull !4, !noundef !4
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.vr
  store i32 %i.vj, ptr %i.vw, align 4
  %i.vx = add i64 %i.vr, 1
  store i64 %i.vx, ptr %i.vq, align 8, !alias.scope !711
  br label %bb.jm

bb.jl:                                            ; preds = %bb.lx, %bb.kr
  unreachable

bb.jm:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit, %bb.jh
  br i1 %i.uv, label %.thread495, label %bb.ja

bb.jn:                                            ; preds = %.thread495
  %i.vy = extractvalue { i32, i32 } %i.ve, 0
  %i.vz = trunc i32 %i.vy to i1
  br i1 %i.vz, label %.lr.ph743, label %.thread501

.lr.ph743:                                        ; preds = %bb.jn
  %i.wa = extractvalue { i32, i32 } %i.ve, 1
  %i.wb = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4) ; 2 uses
  %i.wc = extractvalue { ptr, i64 } %i.wb, 0      ; 4 uses
  %i.wd = extractvalue { ptr, i64 } %i.wb, 1      ; 7 uses
  %.not245 = icmp eq ptr %i.wc, null
  %i.we = zext i32 %i.wa to i64                   ; 3 uses
  br label %bb.jo

bb.jo:                                            ; preds = %.lr.ph743, %bb.jz
  %.lcssa735750 = phi i64 [ 0, %.lr.ph743 ], [ %.lcssa7357481046, %bb.jz ] ; 3 uses
  %.lcssa557738741 = phi i64 [ 0, %.lr.ph743 ], [ %.lcssa5577371047, %bb.jz ] ; 4 uses
  %i.wf = icmp ult i64 %i.wd, %.lcssa735750
  br i1 %i.wf, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337, label %.lr.ph.split.i.i333

.lr.ph.split.i.i333:                              ; preds = %bb.jo, %bb.js
  %i.wg = phi i64 [ %i.wv, %bb.js ], [ %.lcssa735750, %bb.jo ] ; 5 uses
  %i.wh = sub nuw i64 %i.wd, %i.wg                ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wg ; 2 uses
  %i.wj = icmp samesign ult i64 %i.wh, 16
  br i1 %i.wj, label %.preheader.i.i.i352, label %bb.jp

.preheader.i.i.i352:                              ; preds = %.lr.ph.split.i.i333
  %.not.i.i.i353 = icmp eq i64 %i.wh, 0
  br i1 %.not.i.i.i353, label %._crit_edge.i.i.i357, label %.lr.ph.i.i.i354

bb.jp:                                            ; preds = %.lr.ph.split.i.i333
  %i.wk = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wi, i64 noundef range(i64 0, -9223372036854775808) %i.wh)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i357:                             ; preds = %bb.jq, %.lr.ph.i.i.i354, %.preheader.i.i.i352
  %.sroa.01.0.lcssa.i.i.i358 = phi i64 [ 0, %.preheader.i.i.i352 ], [ %i.wh, %bb.jq ], [ %.sroa.01.05.i.i.i355, %.lr.ph.i.i.i354 ]
  %.sroa.0.1.i.i.i359 = phi i64 [ 0, %.preheader.i.i.i352 ], [ 0, %bb.jq ], [ 1, %.lr.ph.i.i.i354 ]
  %i.wl = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i359, 0
  %i.wm = insertvalue { i64, i64 } %i.wl, i64 %.sroa.01.0.lcssa.i.i.i358, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334

.lr.ph.i.i.i354:                                  ; preds = %.preheader.i.i.i352, %bb.jq
  %.sroa.01.05.i.i.i355 = phi i64 [ %i.wq, %bb.jq ], [ 0, %.preheader.i.i.i352 ] ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.sroa.01.05.i.i.i355
  %i.wo = load i8, ptr %i.wn, align 1, !alias.scope !712, !noalias !713, !noundef !4
  %i.wp = icmp eq i8 %i.wo, 10
  br i1 %i.wp, label %._crit_edge.i.i.i357, label %bb.jq

bb.jq:                                            ; preds = %.lr.ph.i.i.i354
  %i.wq = add nuw nsw i64 %.sroa.01.05.i.i.i355, 1 ; 2 uses
  %exitcond.not.i.i.i356 = icmp eq i64 %i.wq, %i.wh
  br i1 %exitcond.not.i.i.i356, label %._crit_edge.i.i.i357, label %.lr.ph.i.i.i354

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334: ; preds = %bb.jp, %._crit_edge.i.i.i357
  %.merged.i.i.i335 = phi { i64, i64 } [ %i.wm, %._crit_edge.i.i.i357 ], [ %i.wk, %bb.jp ] ; 2 uses
  %i.wr = extractvalue { i64, i64 } %.merged.i.i.i335, 0
  %i.ws = trunc nuw i64 %i.wr to i1
  br i1 %i.ws, label %bb.jr, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337

bb.jr:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334
  %i.wt = extractvalue { i64, i64 } %.merged.i.i.i335, 1 ; 3 uses
  %i.wu = add i64 %i.wg, 1
  %i.wv = add i64 %i.wu, %i.wt                    ; 6 uses
  %.not12.i.i348 = icmp ugt i64 %i.wv, %i.wd
  %i.ww = add i64 %i.wg, %i.wt
  %or.cond.i.i349.not = icmp ult i64 %i.ww, %i.wd
  br i1 %or.cond.i.i349.not, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jt, %bb.jr
  br i1 %.not12.i.i348, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337, label %.lr.ph.split.i.i333

bb.jt:                                            ; preds = %bb.jr
  %i.wx = getelementptr i8, ptr %i.wc, i64 %i.wg
  %i.wy = getelementptr i8, ptr %i.wx, i64 %i.wt
  %lhsc1028 = load i8, ptr %i.wy, align 1
  %i.wz = icmp eq i8 %lhsc1028, 10
  br i1 %i.wz, label %select.unfold499.thread, label %bb.js

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337: ; preds = %bb.js, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334, %bb.jo
  %.lcssa735749 = phi i64 [ %.lcssa735750, %bb.jo ], [ %i.wd, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i334 ], [ %i.wv, %bb.js ]
  %.not.i3.i341.not = icmp eq i64 %i.wd, %.lcssa557738741
  %brmerge1269 = select i1 %.not.i3.i341.not, i1 true, i1 %.not245
  br i1 %brmerge1269, label %.thread501, label %select.unfold499.thread

select.unfold499.thread:                          ; preds = %bb.jt, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337
  %.pn1147 = phi i64 [ %i.wd, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337 ], [ %i.wv, %bb.jt ]
  %i.xa = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337 ], [ false, %bb.jt ]
  %.lcssa5577371047 = phi i64 [ %.lcssa557738741, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337 ], [ %i.wv, %bb.jt ]
  %.lcssa7357481046 = phi i64 [ %.lcssa735749, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337 ], [ %i.wv, %bb.jt ]
  %.sroa.4.1.i3451048 = sub nuw i64 %.pn1147, %.lcssa557738741 ; 4 uses
  %.sroa.0.1.i3461049 = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.lcssa557738741 ; 4 uses
  %.pn1145 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i3461049, 0
  %i.xb = insertvalue { ptr, i64 } %.pn1145, i64 %.sroa.4.1.i3451048, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !714
  store i32 10, ptr %i.l, align 4, !noalias !714
  %i.xc = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3461049, i64 noundef %.sroa.4.1.i3451048, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc365:                                        ; preds = %select.unfold499.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !714
  br i1 %i.xc, label %bb.ju, label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit367

bb.ju:                                            ; preds = %.noexc365
  %i.xd = add i64 %.sroa.4.1.i3451048, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !714
  store i32 13, ptr %i.k, align 4, !noalias !714
  %i.xe = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3461049, i64 noundef %i.xd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %.noexc366 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc366:                                        ; preds = %bb.ju
  %i.xf = insertvalue { ptr, i64 } %i.xb, i64 %i.xd, 1
  %i.xg = add i64 %.sroa.4.1.i3451048, -2
  %.sroa.0.0.i15.i363 = select i1 %i.xe, ptr %.sroa.0.1.i3461049, ptr null
  %i.xh = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i363, 0
  %i.xi = insertvalue { ptr, i64 } %i.xh, i64 %i.xg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !714
  %..i364 = select i1 %i.xe, { ptr, i64 } %i.xi, { ptr, i64 } %i.xf
  br label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit367

.thread501:                                       ; preds = %bb.jz, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i337, %bb.jn
  %i.xj = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 10)
          to label %bb.ka unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit367: ; preds = %.noexc366, %.noexc365
  %.merged.i362 = phi { ptr, i64 } [ %..i364, %.noexc366 ], [ %i.xb, %.noexc365 ] ; 2 uses
  %i.xk = extractvalue { ptr, i64 } %.merged.i362, 0
  %i.xl = extractvalue { ptr, i64 } %.merged.i362, 1
  %i.xm = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xk, i64 noundef %i.xl)
          to label %bb.jv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.jv:                                            ; preds = %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit367
  %i.xn = extractvalue { i32, i32 } %i.xm, 0
  %i.xo = extractvalue { i32, i32 } %i.xm, 1
  %i.xp = trunc i32 %i.xn to i1
  br i1 %i.xp, label %bb.jw, label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.xq = load i64, ptr %.sroa.587.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.xr = icmp ugt i64 %i.xq, %i.we
  br i1 %i.xr, label %bb.jx, label %.invoke

bb.jx:                                            ; preds = %bb.jw
  %i.xs = load ptr, ptr %.sroa.486.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.xt = getelementptr inbounds nuw [72 x i8], ptr %i.xs, i64 %i.we ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 48 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 64 ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !715, !noundef !4 ; 3 uses
  %i.xx = load i64, ptr %i.xu, align 8, !range !14, !alias.scope !715, !noundef !4
  %i.xy = icmp eq i64 %i.xw, %i.xx
  br i1 %i.xy, label %bb.jy, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit369

bb.jy:                                            ; preds = %bb.jx
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8grow_oneB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xu) #31
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit369 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit369: ; preds = %bb.jy, %bb.jx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  %i.ya = load ptr, ptr %i.xz, align 8, !alias.scope !715, !nonnull !4, !noundef !4
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.xw
  store i32 %i.xo, ptr %i.yb, align 4
  %i.yc = add i64 %i.xw, 1
  store i64 %i.yc, ptr %i.xv, align 8, !alias.scope !715
  br label %bb.jz

bb.jz:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit369, %bb.jv
  br i1 %i.xa, label %.thread501, label %bb.jo

bb.ka:                                            ; preds = %.thread501
  %i.yd = extractvalue { i32, i32 } %i.xj, 0
  %i.ye = trunc i32 %i.yd to i1
  br i1 %i.ye, label %.lr.ph766, label %.thread507

.lr.ph766:                                        ; preds = %bb.ka
  %i.yf = extractvalue { i32, i32 } %i.xj, 1
  %i.yg = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 9) ; 2 uses
  %i.yh = extractvalue { ptr, i64 } %i.yg, 0      ; 4 uses
  %i.yi = extractvalue { ptr, i64 } %i.yg, 1      ; 7 uses
  %.not246 = icmp eq ptr %i.yh, null
  %i.yj = zext i32 %i.yf to i64                   ; 3 uses
  br label %bb.kb

bb.kb:                                            ; preds = %.lr.ph766, %bb.km
  %.lcssa758773 = phi i64 [ 0, %.lr.ph766 ], [ %.lcssa7587711055, %bb.km ] ; 3 uses
  %.lcssa761764 = phi i64 [ 0, %.lr.ph766 ], [ %.lcssa7601056, %bb.km ] ; 4 uses
  %i.yk = icmp ult i64 %i.yi, %.lcssa758773
  br i1 %i.yk, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381, label %.lr.ph.split.i.i377

.lr.ph.split.i.i377:                              ; preds = %bb.kb, %bb.kf
  %i.yl = phi i64 [ %i.za, %bb.kf ], [ %.lcssa758773, %bb.kb ] ; 5 uses
  %i.ym = sub nuw i64 %i.yi, %i.yl                ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.yl ; 2 uses
  %i.yo = icmp samesign ult i64 %i.ym, 16
  br i1 %i.yo, label %.preheader.i.i.i396, label %bb.kc

.preheader.i.i.i396:                              ; preds = %.lr.ph.split.i.i377
  %.not.i.i.i397 = icmp eq i64 %i.ym, 0
  br i1 %.not.i.i.i397, label %._crit_edge.i.i.i401, label %.lr.ph.i.i.i398

bb.kc:                                            ; preds = %.lr.ph.split.i.i377
  %i.yp = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yn, i64 noundef range(i64 0, -9223372036854775808) %i.ym)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i401:                             ; preds = %bb.kd, %.lr.ph.i.i.i398, %.preheader.i.i.i396
  %.sroa.01.0.lcssa.i.i.i402 = phi i64 [ 0, %.preheader.i.i.i396 ], [ %i.ym, %bb.kd ], [ %.sroa.01.05.i.i.i399, %.lr.ph.i.i.i398 ]
  %.sroa.0.1.i.i.i403 = phi i64 [ 0, %.preheader.i.i.i396 ], [ 0, %bb.kd ], [ 1, %.lr.ph.i.i.i398 ]
  %i.yq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i403, 0
  %i.yr = insertvalue { i64, i64 } %i.yq, i64 %.sroa.01.0.lcssa.i.i.i402, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378

.lr.ph.i.i.i398:                                  ; preds = %.preheader.i.i.i396, %bb.kd
  %.sroa.01.05.i.i.i399 = phi i64 [ %i.yv, %bb.kd ], [ 0, %.preheader.i.i.i396 ] ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 %.sroa.01.05.i.i.i399
  %i.yt = load i8, ptr %i.ys, align 1, !alias.scope !716, !noalias !717, !noundef !4
  %i.yu = icmp eq i8 %i.yt, 10
  br i1 %i.yu, label %._crit_edge.i.i.i401, label %bb.kd

bb.kd:                                            ; preds = %.lr.ph.i.i.i398
  %i.yv = add nuw nsw i64 %.sroa.01.05.i.i.i399, 1 ; 2 uses
  %exitcond.not.i.i.i400 = icmp eq i64 %i.yv, %i.ym
  br i1 %exitcond.not.i.i.i400, label %._crit_edge.i.i.i401, label %.lr.ph.i.i.i398

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378: ; preds = %bb.kc, %._crit_edge.i.i.i401
  %.merged.i.i.i379 = phi { i64, i64 } [ %i.yr, %._crit_edge.i.i.i401 ], [ %i.yp, %bb.kc ] ; 2 uses
  %i.yw = extractvalue { i64, i64 } %.merged.i.i.i379, 0
  %i.yx = trunc nuw i64 %i.yw to i1
  br i1 %i.yx, label %bb.ke, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381

bb.ke:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378
  %i.yy = extractvalue { i64, i64 } %.merged.i.i.i379, 1 ; 3 uses
  %i.yz = add i64 %i.yl, 1
  %i.za = add i64 %i.yz, %i.yy                    ; 6 uses
  %.not12.i.i392 = icmp ugt i64 %i.za, %i.yi
  %i.zb = add i64 %i.yl, %i.yy
  %or.cond.i.i393.not = icmp ult i64 %i.zb, %i.yi
  br i1 %or.cond.i.i393.not, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.kg, %bb.ke
  br i1 %.not12.i.i392, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381, label %.lr.ph.split.i.i377

bb.kg:                                            ; preds = %bb.ke
  %i.zc = getelementptr i8, ptr %i.yh, i64 %i.yl
  %i.zd = getelementptr i8, ptr %i.zc, i64 %i.yy
  %lhsc1030 = load i8, ptr %i.zd, align 1
  %i.ze = icmp eq i8 %lhsc1030, 10
  br i1 %i.ze, label %select.unfold505.thread, label %bb.kf

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381: ; preds = %bb.kf, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378, %bb.kb
  %.lcssa758772 = phi i64 [ %.lcssa758773, %bb.kb ], [ %i.yi, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i378 ], [ %i.za, %bb.kf ]
  %.not.i3.i385.not = icmp eq i64 %i.yi, %.lcssa761764
  %brmerge1270 = select i1 %.not.i3.i385.not, i1 true, i1 %.not246
  br i1 %brmerge1270, label %.thread507, label %select.unfold505.thread

select.unfold505.thread:                          ; preds = %bb.kg, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381
  %.pn1150 = phi i64 [ %i.yi, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381 ], [ %i.za, %bb.kg ]
  %i.zf = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381 ], [ false, %bb.kg ]
  %.lcssa7601056 = phi i64 [ %.lcssa761764, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381 ], [ %i.za, %bb.kg ]
  %.lcssa7587711055 = phi i64 [ %.lcssa758772, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381 ], [ %i.za, %bb.kg ]
  %.sroa.4.1.i3891057 = sub nuw i64 %.pn1150, %.lcssa761764 ; 4 uses
  %.sroa.0.1.i3901058 = getelementptr inbounds nuw i8, ptr %i.yh, i64 %.lcssa761764 ; 4 uses
  %.pn1148 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i3901058, 0
  %i.zg = insertvalue { ptr, i64 } %.pn1148, i64 %.sroa.4.1.i3891057, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !718
  store i32 10, ptr %i.j, align 4, !noalias !718
  %i.zh = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3901058, i64 noundef %.sroa.4.1.i3891057, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1)
          to label %.noexc409 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc409:                                        ; preds = %select.unfold505.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !718
  br i1 %i.zh, label %bb.kh, label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit411

bb.kh:                                            ; preds = %.noexc409
  %i.zi = add i64 %.sroa.4.1.i3891057, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !718
  store i32 13, ptr %i.i, align 4, !noalias !718
  %i.zj = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i3901058, i64 noundef %i.zi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %.noexc410 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc410:                                        ; preds = %bb.kh
  %i.zk = insertvalue { ptr, i64 } %i.zg, i64 %i.zi, 1
  %i.zl = add i64 %.sroa.4.1.i3891057, -2
  %.sroa.0.0.i15.i407 = select i1 %i.zj, ptr %.sroa.0.1.i3901058, ptr null
  %i.zm = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i407, 0
  %i.zn = insertvalue { ptr, i64 } %i.zm, i64 %i.zl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !718
  %..i408 = select i1 %i.zj, { ptr, i64 } %i.zn, { ptr, i64 } %i.zk
  br label %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit411

.thread507:                                       ; preds = %bb.km, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsdcPuHeDsw6v_13project_model.exit.i381, %bb.ka
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.hz

_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit411: ; preds = %.noexc410, %.noexc409
  %.merged.i406 = phi { ptr, i64 } [ %..i408, %.noexc410 ], [ %i.zg, %.noexc409 ] ; 2 uses
  %i.zo = extractvalue { ptr, i64 } %.merged.i406, 0
  %i.zp = extractvalue { ptr, i64 } %.merged.i406, 1
  %i.zq = invoke { i32, i32 } @_RNvMs_NtNtCsdcPuHeDsw6v_13project_model7sysroot8stitchedNtB4_8Stitched7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zo, i64 noundef %i.zp)
          to label %bb.ki unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ki:                                            ; preds = %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit411
  %i.zr = extractvalue { i32, i32 } %i.zq, 0
  %i.zs = extractvalue { i32, i32 } %i.zq, 1
  %i.zt = trunc i32 %i.zr to i1
  br i1 %i.zt, label %bb.kj, label %bb.km

bb.kj:                                            ; preds = %bb.ki
  %i.zu = load i64, ptr %.sroa.587.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.zv = icmp ugt i64 %i.zu, %i.yj
  br i1 %i.zv, label %bb.kk, label %.invoke

bb.kk:                                            ; preds = %bb.kj
  %i.zw = load ptr, ptr %.sroa.486.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.zx = getelementptr inbounds nuw [72 x i8], ptr %i.zw, i64 %i.yj ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 48 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 64 ; 2 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !alias.scope !719, !noundef !4 ; 3 uses
  %i.aab = load i64, ptr %i.zy, align 8, !range !14, !alias.scope !719, !noundef !4
  %i.aac = icmp eq i64 %i.aaa, %i.aab
  br i1 %i.aac, label %bb.kl, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit413

bb.kl:                                            ; preds = %bb.kk
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8grow_oneB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zy) #31
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit413: ; preds = %bb.kl, %bb.kk
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 56
  %i.aae = load ptr, ptr %i.aad, align 8, !alias.scope !719, !nonnull !4, !noundef !4
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.aaa
  store i32 %i.zs, ptr %i.aaf, align 4
  %i.aag = add i64 %i.aaa, 1
  store i64 %i.aag, ptr %i.zz, align 8, !alias.scope !719
  br label %bb.km

.invoke:                                          ; preds = %bb.ji, %bb.jw, %bb.kj
  %i.aah = phi i64 [ %i.we, %bb.jw ], [ %i.yj, %bb.kj ], [ %i.tz, %bb.ji ]
  %i.aai = phi i64 [ %i.xq, %bb.jw ], [ %i.zu, %bb.kj ], [ %i.vl, %bb.ji ]
  %i.aaj = phi ptr [ @55, %bb.jw ], [ @58, %bb.kj ], [ @54, %bb.ji ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aah, i64 noundef %i.aai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaj) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.km:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsdcPuHeDsw6v_13project_model7sysroot8stitched19RustLibSrcCrateDataEE8push_mutB1f_.exit413, %bb.ki
  br i1 %i.zf, label %.thread507, label %bb.kb

bb.kn:                                            ; preds = %bb.mh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.mi

bb.ko:                                            ; preds = %.noexc281, %.noexc282
  %.merged.i = phi { ptr, i64 } [ %..i, %.noexc282 ], [ %i.tk, %.noexc281 ] ; 2 uses
  %i.aak = extractvalue { ptr, i64 } %.merged.i, 0 ; 2 uses
  %i.aal = extractvalue { ptr, i64 } %.merged.i, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store ptr %i.aak, ptr %i.cm, align 8, !captures !19
  store i64 %i.aal, ptr %i.rz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store i64 0, ptr %i.cl, align 8
  store i64 %i.aal, ptr %.sroa.4112.0..sroa_idx, align 8
  store ptr %i.aak, ptr %.sroa.5113.0..sroa_idx, align 8
  store i64 %i.aal, ptr %.sroa.5113.sroa.4.0..sroa.5113.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.5113.sroa.5.0..sroa.5113.0..sroa_idx.sroa_idx, align 8
  store i64 %i.aal, ptr %.sroa.5113.sroa.6.0..sroa.5113.0..sroa_idx.sroa_idx, align 8
  store i32 47, ptr %.sroa.5113.sroa.7.0..sroa.5113.0..sroa_idx.sroa_idx, align 8
  store i32 47, ptr %.sroa.5113.sroa.8.0..sroa.5113.0..sroa_idx.sroa_idx, align 4
  store i8 1, ptr %.sroa.5113.sroa.9.0..sroa.5113.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.6114.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.7115.0..sroa_idx, align 1
  %i.aam = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE9next_backCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cl)
          to label %bb.kp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.kp:                                            ; preds = %bb.ko
  %i.aan = extractvalue { ptr, i64 } %i.aam, 0    ; 2 uses
  %i.aao = extractvalue { ptr, i64 } %i.aam, 1    ; 5 uses
  %.not247 = icmp eq ptr %i.aan, null
  br i1 %.not247, label %bb.kr, label %bb.kq, !prof !10

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store ptr %i.cm, ptr %i.cf, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.4120.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noundef nonnull @60, ptr noundef nonnull %i.cf)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdcPuHeDsw6v_13project_model.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kr:                                            ; preds = %bb.kp
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #30
          to label %bb.jl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.cm, ptr %i.cd, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsdcPuHeDsw6v_13project_model, ptr %.sroa.4126.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, ptr noundef nonnull @61, ptr noundef nonnull %i.cd)
          to label %.lr.ph.i.preheader unwind label %bb.ks

bb.ks:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdcPuHeDsw6v_13project_model.exit
  %i.aap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtB4_5array4iter8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringKj2_ENCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB2W_7Sysroot14load_workspace0ENCB2Q_s_0EEB2Y_.exit unwind label %bb.mf

.lr.ph.i.preheader:                               ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdcPuHeDsw6v_13project_model.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.aaq = load ptr, ptr %i.db, align 8, !nonnull !4, !align !12, !noundef !4 ; 3 uses
  store ptr %i.aaq, ptr %i.cj, align 8
  store i64 2, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  store i64 1, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !720
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, i64 24, i1 false), !noalias !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !noalias !723, !nonnull !4, !noundef !4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !noalias !723, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !724
  %i.aav = invoke { ptr, i64 } @_RINvMs4_Cs9p4rgIae0RV_6caminoNtB6_8Utf8Path3newNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %_RNvXs1o_Cs9p4rgIae0RV_6caminoNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert5AsRefNtB6_8Utf8PathE6as_ref.exit.i.i.i.i.i unwind label %bb.kt, !noalias !725 ; 2 uses

bb.kt:                                            ; preds = %_RNvXs1o_Cs9p4rgIae0RV_6caminoNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert5AsRefNtB6_8Utf8PathE6as_ref.exit.i.i.i.i.i.1, %.lr.ph.i.1, %_RNvXs1o_Cs9p4rgIae0RV_6caminoNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert5AsRefNtB6_8Utf8PathE6as_ref.exit.i.i.i.i.i, %.lr.ph.i.preheader
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %.body421 unwind label %bb.kx, !noalias !726

_RNvXs1o_Cs9p4rgIae0RV_6caminoNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert5AsRefNtB6_8Utf8PathE6as_ref.exit.i.i.i.i.i: ; preds = %.lr.ph.i.preheader
  %i.aax = extractvalue { ptr, i64 } %i.aav, 0
  %i.aay = extractvalue { ptr, i64 } %i.aav, 1
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRBw_ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aas, i64 noundef %i.aau, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aax, i64 noundef %i.aay)
          to label %bb.ku unwind label %bb.kt, !noalias !726

bb.ku:                                            ; preds = %_RNvXs1o_Cs9p4rgIae0RV_6caminoNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert5AsRefNtB6_8Utf8PathE6as_ref.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !724
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspace0B9_.exit.i.i.i unwind label %bb.kv, !noalias !726

bb.kv:                                            ; preds = %bb.lk, %bb.ku
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body421 unwind label %bb.kw, !noalias !726

bb.kw:                                            ; preds = %bb.kv
  %i.aba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !726
  unreachable

bb.kx:                                            ; preds = %bb.kt
  %i.abb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !726
  unreachable

_RNCNvMs0_NtCsdcPuHeDsw6v_13project_model7sysrootNtB7_7Sysroot14load_workspace0B9_.exit.i.i.i: ; preds = %bb.ku
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
end_hunk_1
