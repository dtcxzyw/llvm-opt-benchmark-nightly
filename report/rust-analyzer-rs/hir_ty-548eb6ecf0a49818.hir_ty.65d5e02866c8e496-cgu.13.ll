Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.13?download=true
inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB2l_9predicate20ExistentialPredicateB38_EEEENCNvXNtB3c_9predicateNtB4Z_26BoundExistentialPredicatesINtNtB2l_8inherent26BoundExistentialPredicatesB38_E11auto_traits0EINtNtB7_6filter6FilterINtNtNtB9_7sources7from_fn6FromFnNCINvNtB2l_9elaborate18supertrait_def_idsB38_E0ENCNvMs0_NtNtB3e_5infer4castNtB8E_9CastCheck18check_ptr_ptr_casts3_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldNtNtB3c_6def_id14TraitIdWrapperTBaE_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtBbq_7HashSetBaE_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB9H_7collect6ExtendBaE_E6extendBO_E0NCINvNvB9D_8for_each4callBb9_NCINvXs1i_NtBbs_3mapINtBed_7HashMapBaE_uBcd_EIBcW_Bb9_E6extendINtBam_3MapBO_Bbh_EE0E0E0EB3e_:bb.a
  ret void

.body.thread:                                     ; preds = %.body.i.i.i.i, %bb.d, %bb.p, %.body
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.h, %bb.p ], [ %i.h, %.body ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body8

bb.p:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtBI_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE0ENCNvMs0_NtNtB32_5infer4castNtB46_9CastCheck18check_ptr_ptr_casts3_0EEB32_(ptr noalias nofree noundef align 8 dereferenceable(104) %0) #32
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB2l_9predicate20ExistentialPredicateB38_EEEENCNvXNtB3c_9predicateNtB4Z_26BoundExistentialPredicatesINtNtB2l_8inherent26BoundExistentialPredicatesB38_E11auto_traits0EINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtB3c_6def_id14TraitIdWrapperEINtNtB7_6filter6FilterINtNtNtB9_7sources7from_fn6FromFnNCINvNtB2l_9elaborate18supertrait_def_idsB38_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9Z_9eval_ctxt8EvalCtxtNtNtB3c_6solver13SolverContextB38_E36consider_builtin_upcast_to_principal00ENCB9S_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB7D_TB7D_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtBee_8IndexSetB7D_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtBcW_7collect12FromIteratorB7D_E9from_iterBO_E0NCINvNvBcS_8for_each4callBdX_NCINvXsb_NtBeg_3mapINtBha_8IndexMapB7D_uBf1_EINtBfM_6ExtendBdX_E6extendINtBdB_3MapBO_Be5_EE0E0E0EB3e_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [208 x i8], align 8               ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB22_9predicate20ExistentialPredicateB2P_EEEENCNvXNtB2T_9predicateNtB4G_26BoundExistentialPredicatesINtNtB22_8inherent26BoundExistentialPredicatesB2P_E11auto_traits0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtB8_3map8map_foldNtNtB2T_6def_id14TraitIdWrapperTB7A_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8m_8IndexSetB7A_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6C_7collect12FromIteratorB7A_E9from_iterINtNtB8_5chain5ChainBV_INtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterB7A_EINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtB22_9elaborate18supertrait_def_idsB2P_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBdF_9eval_ctxt8EvalCtxtNtNtB2T_6solver13SolverContextB2P_E36consider_builtin_upcast_to_principal00ENCBd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1x_9predicate20ExistentialPredicateB2k_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_10filter_map15filter_map_foldB1s_NtNtB2o_6def_id14TraitIdWrapperuNCNvXNtB2o_9predicateNtB62_26BoundExistentialPredicatesINtNtB1x_8inherent26BoundExistentialPredicatesB2k_E11auto_traits0QNCINvNtB7_3map8map_foldB5r_TB5r_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8C_8IndexSetB5r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4a_7collect12FromIteratorB5r_E9from_iterINtNtB7_5chain5ChainINtB4P_9FilterMapBP_B5X_EINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterB5r_EINtNtB7_6filter6FilterINtNtNtB9_7sources7from_fn6FromFnNCINvNtB1x_9elaborate18supertrait_def_idsB2k_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBeh_9eval_ctxt8EvalCtxtNtNtB2o_6solver13SolverContextB2k_E36consider_builtin_upcast_to_principal00ENCBea_0EEE0NCINvNvB46_8for_each4callB8l_NCINvXsb_NtB8E_3mapINtBhO_8IndexMapB5r_uB9p_EINtBaa_6ExtendB8l_E6extendINtB7Z_3MapBaR_B8t_EE0E0E0E0EB2q_(ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB22_9predicate20ExistentialPredicateB2P_EEEENCNvXNtB2T_9predicateNtB4G_26BoundExistentialPredicatesINtNtB22_8inherent26BoundExistentialPredicatesB2P_E11auto_traits0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtB8_3map8map_foldNtNtB2T_6def_id14TraitIdWrapperTB7A_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8m_8IndexSetB7A_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6C_7collect12FromIteratorB7A_E9from_iterINtNtB8_5chain5ChainBV_INtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterB7A_EINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtB22_9elaborate18supertrait_def_idsB2P_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBdF_9eval_ctxt8EvalCtxtNtNtB2T_6solver13SolverContextB2P_E36consider_builtin_upcast_to_principal00ENCBd unwind label %.body

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB22_9predicate20ExistentialPredicateB2P_EEEENCNvXNtB2T_9predicateNtB4G_26BoundExistentialPredicatesINtNtB22_8inherent26BoundExistentialPredicatesB2P_E11auto_traits0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtB8_3map8map_foldNtNtB2T_6def_id14TraitIdWrapperTB7A_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8m_8IndexSetB7A_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6C_7collect12FromIteratorB7A_E9from_iterINtNtB8_5chain5ChainBV_INtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterB7A_EINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtB22_9elaborate18supertrait_def_idsB2P_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBdF_9eval_ctxt8EvalCtxtNtNtB2T_6solver13SolverContextB2P_E36consider_builtin_upcast_to_principal00ENCBd: ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8, !range !532, !noundef !5
  %.not4 = icmp eq i64 %i.i, -2
  br i1 %.not4, label %bb.n, label %bb.c

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !532, !noundef !5
  %.not12 = icmp eq i64 %i.k, -2
  br i1 %.not12, label %.body.thread, label %bb.o

bb.c:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB22_9predicate20ExistentialPredicateB2P_EEEENCNvXNtB2T_9predicateNtB4G_26BoundExistentialPredicatesINtNtB22_8inherent26BoundExistentialPredicatesB2P_E11auto_traits0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtB8_3map8map_foldNtNtB2T_6def_id14TraitIdWrapperTB7A_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8m_8IndexSetB7A_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6C_7collect12FromIteratorB7A_E9from_iterINtNtB8_5chain5ChainBV_INtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterB7A_EINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtB22_9elaborate18supertrait_def_idsB2P_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBdF_9eval_ctxt8EvalCtxtNtNtB2T_6solver13SolverContextB2P_E36consider_builtin_upcast_to_principal00ENCBd
  %i.l = load ptr, ptr %i.d, align 8, !nonnull !5, !align !242, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1298
  store ptr %i.l, ptr %i.b, align 8, !noalias !1300
  %i.m = load i64, ptr %i.c, align 8, !range !227, !alias.scope !1302, !noalias !1303, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtBc_6filter6FilterINtNtNtBe_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB5k_9eval_ctxt8EvalCtxtNtNtB4b_6solver13SolverContextB47_E36consider_builtin_upcast_to_principal00EuNCINvNtBc_3map8map_foldNtNtB4b_6def_id14TraitIdWrapperTB8s_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB9e_8IndexSetB8s_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB1n_7collect12FromIteratorB8s_E9from_iterINtNtBc_5chain5ChainINtNtBc_10filter_map9FilterMapINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtB34_6binder6BinderB47_INtNtB34_9predicate20ExistentialPredicateB47_EEEENCNvXNtB4b_9predicateNtBem_26BoundExistentialPredicatesINtNtB34_8inherent26BoundExistentialPredicatesB47_E11auto_traits0EINtBa_7FlatMapINtNtBg_6option8IntoIterB8s_EB24_NCB5d_0EEE0NCINvNvB1j_8for_each4callB8X_NCINvXsb_NtB9g_3mapINtBhM_8IndexMapB8s_uBa1_EINtBaM_6ExtendB8X_E6extendINtB8a_3MapBbt_B95_EE0E0E0E0B4d_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1302, !noalias !1303 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not8.i.i.i, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !227, !alias.scope !1302, !noalias !1303, !noundef !5
  %.not12.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not12.i.i.i, label %.body.thread, label %bb.k

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1302, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1300
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !noalias !1300
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !1300
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperENCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB2w_9eval_ctxt8EvalCtxtNtNtB1p_6solver13SolverContextNtNtB1p_8interner10DbInternerE36consider_builtin_upcast_to_principal0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB6t_13FlattenCompatppE9iter_fold7flattenINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsB4w_E0ENCNCB2p_00EuNCINvNvXsi_B6t_B6G_B5E_4fold7flattenB7n_uNCINvB6_8map_foldB1l_TB1l_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtBb0_8IndexSetB1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB5I_7collect12FromIteratorB1l_E9from_iterINtNtB8_5chain5ChainINtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtB8n_6binder6BinderB4w_INtNtB8n_9predicate20ExistentialPredicateB4w_EEEENCNvXNtB1p_9predicateNtBg8_26BoundExistentialPredicatesINtNtB8n_8inherent26BoundExistentialPredicatesB4w_E11auto_traits0EINtB6t_7FlatMapBX_B7n_B2n_EEE0NCINvNvB5E_8for_each4callBaJ_NCINvXsb_NtBb2_3mapINtBj6_8IndexMapB1l_uBbN_EINtBcy_6ExtendBaJ_E6extendIBO_Bdf_BaR_EE0E0E0E0E0EB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.f, !noalias !1304

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1300
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !227, !alias.scope !1302, !noalias !1303, !noundef !5
  %.not9.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not9.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtBc_6filter6FilterINtNtNtBe_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB5k_9eval_ctxt8EvalCtxtNtNtB4b_6solver13SolverContextB47_E36consider_builtin_upcast_to_principal00EuNCINvNtBc_3map8map_foldNtNtB4b_6def_id14TraitIdWrapperTB8s_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB9e_8IndexSetB8s_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB1n_7collect12FromIteratorB8s_E9from_iterINtNtBc_5chain5ChainINtNtBc_10filter_map9FilterMapINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtB34_6binder6BinderB47_INtNtB34_9predicate20ExistentialPredicateB47_EEEENCNvXNtB4b_9predicateNtBem_26BoundExistentialPredicatesINtNtB34_8inherent26BoundExistentialPredicatesB47_E11auto_traits0EINtBa_7FlatMapINtNtBg_6option8IntoIterB8s_EB24_NCB5d_0EEE0NCINvNvB1j_8for_each4callB8X_NCINvXsb_NtB9g_3mapINtBhM_8IndexMapB8s_uBa1_EINtBaM_6ExtendB8X_E6extendINtB8a_3MapBbt_B95_EE0E0E0E0B4d_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.r)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtBI_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB49_9eval_ctxt8EvalCtxtNtNtB30_6solver13SolverContextB2W_E36consider_builtin_upcast_to_principal00EEB32_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #32
          to label %.body.thread unwind label %bb.l, !noalias !1305

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1305
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1288
  br label %bb.n

bb.n:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB22_9predicate20ExistentialPredicateB2P_EEEENCNvXNtB2T_9predicateNtB4G_26BoundExistentialPredicatesINtNtB22_8inherent26BoundExistentialPredicatesB2P_E11auto_traits0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtB8_3map8map_foldNtNtB2T_6def_id14TraitIdWrapperTB7A_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB8m_8IndexSetB7A_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6C_7collect12FromIteratorB7A_E9from_iterINtNtB8_5chain5ChainBV_INtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterB7A_EINtNtB8_6filter6FilterINtNtNtBa_7sources7from_fn6FromFnNCINvNtB22_9elaborate18supertrait_def_idsB2P_E0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBdF_9eval_ctxt8EvalCtxtNtNtB2T_6solver13SolverContextB2P_E36consider_builtin_upcast_to_principal00ENCBd, %bb.m
  ret void

.body.thread:                                     ; preds = %bb.k, %bb.f, %bb.o, %.body
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.j, %bb.o ], [ %i.j, %.body ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body8

bb.o:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperEINtNtBG_6filter6FilterINtNtNtBI_7sources7from_fn6FromFnNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate18supertrait_def_idsNtNtB1J_8interner10DbInternerE0ENCNCNvMs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB5r_9eval_ctxt8EvalCtxtNtNtB1J_6solver13SolverContextB4K_E36consider_builtin_upcast_to_principal00ENCB5k_0EEB1L_(ptr noalias nofree noundef align 8 dereferenceable(208) %0) #32
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_10filter_map9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2X_11ModuleDefIdNtNtB2X_10item_scope19ImportOrExternCrateEENCNvMs1_B3Q_NtB3Q_9ItemScope6traits0EINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterTNtB2X_7TraitIdIB2T_uEEENCB4x_s_0EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB59_8map_foldB5N_TB5N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB7D_7HashSetB5N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB6p_7collect6ExtendB5N_E6extendIBP_INtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB5N_EEINtNtB7_8peekable8PeekableINtNtB7_7flatten7FlattenIB11_INtNtB7_3rev3RevIB5n_NtNtB2X_8resolver5ScopeEENCNvMs0_Bcm_NtBcm_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB6l_8for_each4callB7m_NCINvXs1i_NtB7F_3mapINtBet_7HashMapB5N_uB8q_EIB99_B7m_E6extendIB57_B9I_B7u_EE0E0E0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8, !noundef !5   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1306
  store ptr %i.b, ptr %i.a, align 8, !noalias !1309
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2E_11ModuleDefIdNtNtB2E_10item_scope19ImportOrExternCrateEENCNvMs1_B3x_NtB3x_9ItemScope6traits0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNtB8_3map8map_foldNtB2E_7TraitIdTB5Q_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6l_7HashSetB5Q_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4R_7collect6ExtendB5Q_E6extendINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB5Q_EEINtNtB8_8peekable8PeekableINtNtB8_7flatten7FlattenIBW_INtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtB2E_8resolver5ScopeEENCNvMs0_BbE_NtBbE_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB4N_8for_each4callB64_NCINvXs1i_NtB6n_3mapINtBdL_7HashMapB5Q_uB78_EIB7R_B64_E6extendINtB5y_3MapB8q_B6c_EE0E0E0ECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.g, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 44
  %i.i = load i8, ptr %i.h, align 4, !range !1315, !alias.scope !1316, !noalias !1319, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.i, 6
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 48
  %i.k = load i32, ptr %i.j, align 4, !range !1321, !alias.scope !1316, !noalias !1319
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 52
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !1316, !noalias !1319
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtCsileJQcQObtj_7hir_def7TraitIdTB1u_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB2h_7HashSetB1u_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBY_6traits7collect6ExtendB1u_E6extendINtNtBW_5chain5ChainINtNtBW_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB1u_EEINtNtBW_8peekable8PeekableINtNtBW_7flatten7FlattenINtNtBW_10filter_map9FilterMapINtNtBW_3rev3RevINtNtNtBb_5slice4iter4IterNtNtB1w_8resolver5ScopeEENCNvMs0_B88_NtB88_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB3R_8iterator8Iterator8for_each4callB20_NCINvXs1i_NtB2j_3mapINtBaB_7HashMapB1u_uB34_EIB3N_B20_E6extendINtBU_3MapB4u_B28_EE0E0E0INtB7_5FnMutTuB1u_EE8call_mutCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.k, i32 noundef %i.m), !noalias !1312
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.g, %i.e
  br i1 %i.n, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2E_11ModuleDefIdNtNtB2E_10item_scope19ImportOrExternCrateEENCNvMs1_B3x_NtB3x_9ItemScope6traits0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNtB8_3map8map_foldNtB2E_7TraitIdTB5Q_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6l_7HashSetB5Q_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4R_7collect6ExtendB5Q_E6extendINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB5Q_EEINtNtB8_8peekable8PeekableINtNtB8_7flatten7FlattenIBW_INtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtB2E_8resolver5ScopeEENCNvMs0_BbE_NtBbE_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB4N_8for_each4callB64_NCINvXs1i_NtB6n_3mapINtBdL_7HashMapB5Q_uB78_EIB7R_B64_E6extendINtB5y_3MapB8q_B6c_EE0E0E0ECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2E_11ModuleDefIdNtNtB2E_10item_scope19ImportOrExternCrateEENCNvMs1_B3x_NtB3x_9ItemScope6traits0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNtB8_3map8map_foldNtB2E_7TraitIdTB5Q_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6l_7HashSetB5Q_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4R_7collect6ExtendB5Q_E6extendINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB5Q_EEINtNtB8_8peekable8PeekableINtNtB8_7flatten7FlattenIBW_INtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtB2E_8resolver5ScopeEENCNvMs0_BbE_NtBbE_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB4N_8for_each4callB64_NCINvXs1i_NtB6n_3mapINtBdL_7HashMapB5Q_uB78_EIB7R_B64_E6extendINtB5y_3MapB8q_B6c_EE0E0E0ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1g_11ModuleDefIdNtNtB1g_10item_scope19ImportOrExternCrateENtB1g_7TraitIduNCNvMs1_B29_NtB29_9ItemScope6traits0QQNCINvNtB6_3map8map_foldB2N_TB2N_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4m_7HashSetB2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB2N_E6extendINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB2N_EEINtNtB6_8peekable8PeekableINtNtB6_7flatten7FlattenINtB4_9FilterMapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtB1g_8resolver5ScopeEENCNvMs0_B9Z_NtB9Z_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvNtNtB5W_8iterator8Iterator8for_each4callB45_NCINvXs1i_NtB4o_3mapINtBcs_7HashMapB2N_uB59_EIB5S_B45_E6extendINtB3J_3MapB6z_B4d_EE0E0E0E0Cs8K4cjrcxBsw_6hir_ty.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1306
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2E_11ModuleDefIdNtNtB2E_10item_scope19ImportOrExternCrateEENCNvMs1_B3x_NtB3x_9ItemScope6traits0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNtB8_3map8map_foldNtB2E_7TraitIdTB5Q_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6l_7HashSetB5Q_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4R_7collect6ExtendB5Q_E6extendINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB5Q_EEINtNtB8_8peekable8PeekableINtNtB8_7flatten7FlattenIBW_INtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtB2E_8resolver5ScopeEENCNvMs0_BbE_NtBbE_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB4N_8for_each4callB64_NCINvXs1i_NtB6n_3mapINtBdL_7HashMapB5Q_uB78_EIB7R_B64_E6extendINtB5y_3MapB8q_B6c_EE0E0E0ECs8K4cjrcxBsw_6hir_ty.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5
  %i.s = load ptr, ptr %i.b, align 8, !nonnull !5, !align !242, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1q_6per_ns4ItemuEEENCNvMs1_NtB1q_10item_scopeNtB2r_9ItemScope6traitss_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB1o_TB1o_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4r_7HashSetB1o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3e_7collect6ExtendB1o_E6extendINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterB1o_EEINtNtB8_8peekable8PeekableINtNtB8_7flatten7FlattenINtNtB8_10filter_map9FilterMapINtNtB8_3rev3RevIBY_NtNtB1q_8resolver5ScopeEENCNvMs0_B9O_NtB9O_8Resolver33traits_in_scope_from_block_scopes0EEEEE0NCINvNvB3a_8for_each4callB4a_NCINvXs1i_NtB4t_3mapINtBbV_7HashMapB1o_uB5e_EIB5X_B4a_E6extendIBO_B6w_B4i_EE0E0E0ECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1w_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3k_7ty_kind5FnSigNtNtB2m_8interner10DbInternerEINtB3i_6RelateB4n_E6relateINtNtB3i_15solver_relating14SolverRelatingNtNtB2m_5infer9InferCtxtB4n_EE0EINtNtNtB9_7sources4once4OnceTTB2i_B2i_EbEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB6V_INtNtBb_6result6ResultB2i_INtNtB3k_5error9TypeErrorB4n_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB9g_B2i_EENCB3b_s_0NCINvNvXs_NtB7_9enumerateINtBao_9EnumeratepEB7a_8try_fold9enumerateB8j_uB9f_NCIB7V_TjB8j_EB8j_uB9f_NCB3b_s0_0NCINvXB7_INtB7_12GenericShuntIBP_INtNtNtBb_5array4iter8IntoIterB8j_Kj9_EIB11_IBaE_IB11_BO_Ba5_EEBbP_EEIB8k_NtNtBb_7convert10InfallibleB8J_EEB7a_8try_folduNCINvNvB7a_12try_for_each4callB2i_B9U_NcNtB9U_5Break0E0B9U_E0E0E0E0B9f_EB2o_(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [7 x i8], align 1     ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1d_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB31_7ty_kind5FnSigNtNtB23_8interner10DbInternerEINtB2Z_6RelateB44_E6relateINtNtB2Z_15solver_relating14SolverRelatingNtNtB23_5infer9InferCtxtB44_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldTTB1Z_B1Z_EbEINtNtBc_6result6ResultB1Z_INtNtB31_5error9TypeErrorB44_EEuINtNtNtBc_3ops12control_flow11ControlFlowIB8p_B1Z_EENCB2S_s_0NCINvNvXs_NtB8_9enumerateINtB9x_9EnumeratepEB6a_8try_fold9enumerateB7s_uB8o_NCIB6W_TjB7s_EB7s_uB8o_NCB2S_s0_0NCINvXB8_INtB8_12GenericShuntINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB7s_Kj9_EIBO_IB9N_IBO_IBbC_BN_INtNtNtBa_7sources4once4OnceB7f_EEB9e_EEBaY_EEIB7t_NtNtBc_7convert10InfallibleB7S_EEB6a_8try_folduNCINvNvB6a_12try_for_each4callB1Z_B93_NcNtB93_5Break0E0B93_E0E0E0E0B8o_EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !1322, !noundef !5 ; 3 uses
  %.not10 = icmp eq i8 %i.h, -1
  br i1 %.not10, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.d, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.o, %bb.d
  %.sroa.5.0 = phi ptr [ %i.i, %bb.d ], [ %.sroa.4.1.i.i.i.i.i, %bb.o ], [ undef, %bb.c ], [ undef, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 1, %bb.o ], [ 0, %bb.c ], [ 0, %bb.g ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.k

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !alias.scope !1329, !noalias !1331 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.sroa.6.0.copyload.i = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1329, !noalias !1331 ; 3 uses
  store i8 2, ptr %i.g, align 8, !alias.scope !1333, !noalias !1334
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1335
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.6.0.copyload.i) ]
  %.val.i.i = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !1336, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.h to i1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  store i32 0, ptr %i.a, align 8, !noalias !1340
  call void @_RINvXs0_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtB8_12TypeRelationB2n_E20relate_with_varianceNtNtB1x_2ty2TyEB1z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val.i.i, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1340
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RINvYINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relating14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1r_8interner10DbInternerEINtB8_12TypeRelationB2h_E6relateNtNtB1r_2ty2TyEB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val.i.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1336
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.b, align 8, !noalias !1336 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1336 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1336 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1336 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1336
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.412.0.copyload) ]
  %i.o = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1344, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  switch i8 %.sroa.0.0.copyload.i.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i [
    i8 13, label %bb.k
    i8 4, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i
    i8 5, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i
    i8 12, label %bb.l
  ]

bb.k:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i

bb.l:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i
  %2 = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i: ; preds = %bb.l, %bb.k, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i
  %.sroa.12.0.ph.i.i.i.i = phi ptr [ %2, %bb.l ], [ %.sroa.7.0.copyload.i.i, %bb.k ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ]
  %.sroa.16.0.ph.i.i.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.l ], [ %.sroa.8.0.copyload.i.i, %bb.k ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ]
  %.sroa.03.0.ph.i.i.i.i = phi i8 [ 13, %bb.l ], [ 13, %bb.k ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1336
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.m

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i: ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs_0B1i_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1336
  %i.q = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i
  %i.r = phi ptr [ %i.p, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i ], [ %i.q, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.03.018.i.i.i.i = phi i8 [ %.sroa.03.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.0.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.16.017.i.i.i.i = phi ptr [ %.sroa.16.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.12.016.i.i.i.i = phi ptr [ %.sroa.12.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, i64 7, i1 false), !noalias !1347
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16
  store ptr %.sroa.12.016.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1347
  %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  store ptr %.sroa.16.017.i.i.i.i, ptr %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1347
  %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 32
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1347
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i8 %.sroa.03.018.i.i.i.i, ptr %.sroa.3.0.copyload, align 8, !noalias !1350
  %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  store ptr %i.r, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1350
  %.pre.i.i.i = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1344
  br label %bb.o

bb.n:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit.i.i.i.i
  %i.s = icmp ne i64 %.sroa.6.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.s)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.t = phi i64 [ %.pre.i.i.i, %bb.m ], [ %i.o, %bb.n ]
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %bb.m ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %.sroa.412.0.copyload, align 8, !noalias !1344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1335
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1w_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3k_7ty_kind5FnSigNtNtB2m_8interner10DbInternerEINtB3i_6RelateB4n_E6relateNtNtNtNtB2m_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2i_B2i_EbEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB6A_INtNtBb_6result6ResultB2i_INtNtB3k_5error9TypeErrorB4n_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB8V_B2i_EENCB3b_s_0NCINvNvXs_NtB7_9enumerateINtBa3_9EnumeratepEB6P_8try_fold9enumerateB7Y_uB8U_NCIB7A_TjB7Y_EB7Y_uB8U_NCB3b_s0_0NCINvXB7_INtB7_12GenericShuntIBP_INtNtNtBb_5array4iter8IntoIterB7Y_Kj9_EIB11_IBaj_IB11_BO_B9K_EEBbu_EEIB7Z_NtNtBb_7convert10InfallibleB8o_EEB6P_8try_folduNCINvNvB6P_12try_for_each4callB2i_B9z_NcNtB9z_5Break0E0B9z_E0E0E0E0B8U_EB2o_(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [7 x i8], align 1     ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1d_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB31_7ty_kind5FnSigNtNtB23_8interner10DbInternerEINtB2Z_6RelateB44_E6relateNtNtNtNtB23_5infer6relate10generalize11GeneralizerE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldTTB1Z_B1Z_EbEINtNtBc_6result6ResultB1Z_INtNtB31_5error9TypeErrorB44_EEuINtNtNtBc_3ops12control_flow11ControlFlowIB84_B1Z_EENCB2S_s_0NCINvNvXs_NtB8_9enumerateINtB9c_9EnumeratepEB5P_8try_fold9enumerateB77_uB83_NCIB6B_TjB77_EB77_uB83_NCB2S_s0_0NCINvXB8_INtB8_12GenericShuntINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB77_Kj9_EIBO_IB9s_IBO_IBbh_BN_INtNtNtBa_7sources4once4OnceB6U_EEB8T_EEBaD_EEIB78_NtNtBc_7convert10InfallibleB7x_EEB5P_8try_folduNCINvNvB5P_12try_for_each4callB1Z_B8I_NcNtB8I_5Break0E0B8I_E0E0E0E0B83_EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !1322, !noundef !5 ; 3 uses
  %.not10 = icmp eq i8 %i.h, -1
  br i1 %.not10, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.d, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.o, %bb.d
  %.sroa.5.0 = phi ptr [ %i.i, %bb.d ], [ %.sroa.4.1.i.i.i.i.i, %bb.o ], [ undef, %bb.c ], [ undef, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 1, %bb.o ], [ 0, %bb.c ], [ 0, %bb.g ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.k

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !alias.scope !1359, !noalias !1361 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.sroa.6.0.copyload.i = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1359, !noalias !1361 ; 3 uses
  store i8 2, ptr %i.g, align 8, !alias.scope !1363, !noalias !1364
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1365
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.6.0.copyload.i) ]
  %.val.i.i = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !1366, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.h to i1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1370
  store i32 0, ptr %i.a, align 8, !noalias !1370
  call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate10generalizeNtB6_11GeneralizerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_2ty2TyEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val.i.i, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1370
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate10generalize11GeneralizerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateNtNtBb_2ty2TyEBd_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1366
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.b, align 8, !noalias !1366 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1366 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1366 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1366 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1366
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.412.0.copyload) ]
  %i.o = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1374, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  switch i8 %.sroa.0.0.copyload.i.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i [
    i8 13, label %bb.k
    i8 4, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i
    i8 5, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i
    i8 12, label %bb.l
  ]

bb.k:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i

bb.l:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i
  %2 = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i: ; preds = %bb.l, %bb.k, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i
  %.sroa.12.0.ph.i.i.i.i = phi ptr [ %2, %bb.l ], [ %.sroa.7.0.copyload.i.i, %bb.k ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ]
  %.sroa.16.0.ph.i.i.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.l ], [ %.sroa.8.0.copyload.i.i, %bb.k ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ]
  %.sroa.03.0.ph.i.i.i.i = phi i8 [ 13, %bb.l ], [ 13, %bb.k ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1366
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.m

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i: ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs_0B1i_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1366
  %i.q = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i
  %i.r = phi ptr [ %i.p, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i ], [ %i.q, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.03.018.i.i.i.i = phi i8 [ %.sroa.03.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.0.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.16.017.i.i.i.i = phi ptr [ %.sroa.16.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.12.016.i.i.i.i = phi ptr [ %.sroa.12.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, i64 7, i1 false), !noalias !1377
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16
  store ptr %.sroa.12.016.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1377
  %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  store ptr %.sroa.16.017.i.i.i.i, ptr %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1377
  %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 32
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1377
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i8 %.sroa.03.018.i.i.i.i, ptr %.sroa.3.0.copyload, align 8, !noalias !1380
  %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  store ptr %i.r, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1380
  %.pre.i.i.i = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1374
  br label %bb.o

bb.n:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit.i.i.i.i
  %i.s = icmp ne i64 %.sroa.6.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.s)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.t = phi i64 [ %.pre.i.i.i, %bb.m ], [ %i.o, %bb.n ]
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %bb.m ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %.sroa.412.0.copyload, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1365
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1w_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3k_7ty_kind5FnSigNtNtB2m_8interner10DbInternerEINtB3i_6RelateB4n_E6relateNtNtNtNtB2m_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2i_B2i_EbEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB6t_INtNtBb_6result6ResultB2i_INtNtB3k_5error9TypeErrorB4n_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB8O_B2i_EENCB3b_s_0NCINvNvXs_NtB7_9enumerateINtB9W_9EnumeratepEB6I_8try_fold9enumerateB7R_uB8N_NCIB7t_TjB7R_EB7R_uB8N_NCB3b_s0_0NCINvXB7_INtB7_12GenericShuntIBP_INtNtNtBb_5array4iter8IntoIterB7R_Kj9_EIB11_IBac_IB11_BO_B9D_EEBbn_EEIB7S_NtNtBb_7convert10InfallibleB8h_EEB6I_8try_folduNCINvNvB6I_12try_for_each4callB2i_B9s_NcNtB9s_5Break0E0B9s_E0E0E0E0B8N_EB2o_(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [7 x i8], align 1     ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1d_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB31_7ty_kind5FnSigNtNtB23_8interner10DbInternerEINtB2Z_6RelateB44_E6relateNtNtNtNtB23_5infer6relate7lattice9LatticeOpE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldTTB1Z_B1Z_EbEINtNtBc_6result6ResultB1Z_INtNtB31_5error9TypeErrorB44_EEuINtNtNtBc_3ops12control_flow11ControlFlowIB7X_B1Z_EENCB2S_s_0NCINvNvXs_NtB8_9enumerateINtB95_9EnumeratepEB5I_8try_fold9enumerateB70_uB7W_NCIB6u_TjB70_EB70_uB7W_NCB2S_s0_0NCINvXB8_INtB8_12GenericShuntINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB70_Kj9_EIBO_IB9l_IBO_IBba_BN_INtNtNtBa_7sources4once4OnceB6N_EEB8M_EEBaw_EEIB71_NtNtBc_7convert10InfallibleB7q_EEB5I_8try_folduNCINvNvB5I_12try_for_each4callB1Z_B8B_NcNtB8B_5Break0E0B8B_E0E0E0E0B7W_EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !1322, !noundef !5 ; 3 uses
  %.not10 = icmp eq i8 %i.h, -1
  br i1 %.not10, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.d, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.o, %bb.d
  %.sroa.5.0 = phi ptr [ %i.i, %bb.d ], [ %.sroa.4.1.i.i.i.i.i, %bb.o ], [ undef, %bb.c ], [ undef, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 1, %bb.o ], [ 0, %bb.c ], [ 0, %bb.g ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.k

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !alias.scope !1389, !noalias !1391 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.sroa.6.0.copyload.i = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1389, !noalias !1391 ; 3 uses
  store i8 2, ptr %i.g, align 8, !alias.scope !1393, !noalias !1394
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1395
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.6.0.copyload.i) ]
  %.val.i.i = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !1396, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.h to i1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1400
  store i32 0, ptr %i.a, align 8, !noalias !1400
  call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB6_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_2ty2TyEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val.i.i, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1400
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7lattice9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateNtNtBb_2ty2TyEBd_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val.i.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.6.0.copyload.i), !noalias !1396
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.b, align 8, !noalias !1396 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1396 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1396 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1396 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.412.0.copyload) ]
  %i.o = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1404, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  switch i8 %.sroa.0.0.copyload.i.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i [
    i8 13, label %bb.k
    i8 4, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i
    i8 5, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i
    i8 12, label %bb.l
  ]

bb.k:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i

bb.l:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i
  %2 = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i: ; preds = %bb.l, %bb.k, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i
  %.sroa.12.0.ph.i.i.i.i = phi ptr [ %2, %bb.l ], [ %.sroa.7.0.copyload.i.i, %bb.k ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ]
  %.sroa.16.0.ph.i.i.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.l ], [ %.sroa.8.0.copyload.i.i, %bb.k ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ]
  %.sroa.03.0.ph.i.i.i.i = phi i8 [ 13, %bb.l ], [ 13, %bb.k ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ], [ 5, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1396
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.m

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i: ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs_0B1i_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false), !noalias !1396
  %i.q = inttoptr i64 %.sroa.6.0.copyload.i.i to ptr ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i
  %i.r = phi ptr [ %i.p, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i ], [ %i.q, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.03.018.i.i.i.i = phi i8 [ %.sroa.03.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.0.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.16.017.i.i.i.i = phi ptr [ %.sroa.16.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.12.016.i.i.i.i = phi ptr [ %.sroa.12.0.ph.i.i.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.thread.i.i.i.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i ]
  %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i, i64 7, i1 false), !noalias !1407
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16
  store ptr %.sroa.12.016.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1407
  %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  store ptr %.sroa.16.017.i.i.i.i, ptr %.sroa.7.sroa.4.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1407
  %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 32
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.612.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1407
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i8 %.sroa.03.018.i.i.i.i, ptr %.sroa.3.0.copyload, align 8, !noalias !1410
  %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  store ptr %i.r, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !1410
  %.pre.i.i.i = load i64, ptr %.sroa.412.0.copyload, align 8, !noalias !1404
  br label %bb.o

bb.n:                                             ; preds = %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit.i.i.i.i
  %i.s = icmp ne i64 %.sroa.6.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.s)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.t = phi i64 [ %.pre.i.i.i, %bb.m ], [ %i.o, %bb.n ]
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %bb.m ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %.sroa.412.0.copyload, align 8, !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1395
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCINvBho_22for_item_with_defaultsNCNvMsa_NtB28_5inferNtBiX_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBhs_10GenericArgKja_EE0E0E0EB28_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i64, ptr %i.c, align 8, !range !1413, !noundef !5
  %.not = icmp eq i64 %i.d, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvBh6_22for_item_with_defaultsNCNvMsa_NtB1P_5inferNtBiF_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBha_10GenericArgKja_EE0E0E0EB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr %0, align 8, !range !1414, !noundef !5 ; 3 uses
  %.not2 = icmp eq i32 %i.f, -2
  br i1 %.not2, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB52_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8 ; 3 uses
  %.not7.i = icmp eq i32 %i.f, -1
  br i1 %.not7.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB52_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = trunc i64 %.sroa.55.0.copyload to i32
  %i.m = load ptr, ptr %.sroa.44.0.copyload, align 8, !noalias !1415, !nonnull !5, !align !242, !noundef !5 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !1426, !noalias !1415, !noundef !5
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.q = load ptr, ptr %.sroa.03.0.copyload, align 8, !alias.scope !1429, !noalias !1432, !nonnull !5, !align !242, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !1435, !noundef !5
  %i.t = and i64 %.sroa.55.0.copyload, 4294967295 ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i

_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.q, align 8, !noalias !1435, !nonnull !5, !align !242, !noundef !5
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1436, !noalias !1435, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1435
  %i.y = load ptr, ptr %i.g, align 8, !alias.scope !1429, !noalias !1432, !nonnull !5, !align !242, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !1435
  %i.z = call noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_11generic_arg10GenericArgE11instantiateRSB26_EB1d_(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef range(i64 0, 1152921504606846976) %i.o), !noalias !1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1435
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0B4v_.exit.i

_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i: ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i, %.lr.ph.i
  %i.aa = load ptr, ptr %i.h, align 8, !alias.scope !1429, !noalias !1432, !nonnull !5, !align !242, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1435
  store i32 %i.l, ptr %i.i, align 4, !noalias !1435
  store i32 %i.f, ptr %i.a, align 8, !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  store ptr %i.p, ptr %i.j, align 8, !noalias !1435
  store i64 %i.o, ptr %i.k, align 8, !noalias !1435
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !1439, !nonnull !5, !align !242, !noundef !5
  %i.ab = call noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable11var_for_def(ptr noundef nonnull align 8 %.val.i.i.i.i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.a, i32 noundef 4, i32 undef), !noalias !1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1435
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0B4v_.exit.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0B4v_.exit.i: ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i ]
  %i.ac = load ptr, ptr %.sroa.44.0.copyload, align 8, !noalias !1415, !nonnull !5, !align !242, !noundef !5
  call void @_RNvXsq_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB5_10GenericArgKja_ENtB5_18GenericArgsBuilder4pushB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull %.sroa.0.0.i.i.i.i.i), !noalias !1415
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB52_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB52_.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0B4v_.exit.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCINvBho_22for_item_with_defaultsNCNvMsa_NtB28_5inferNtBiX_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhs_10GenericArgEE0E0E0EB28_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i64, ptr %i.c, align 8, !range !1413, !noundef !5
  %.not = icmp eq i64 %i.d, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvBh6_22for_item_with_defaultsNCNvMsa_NtB1P_5inferNtBiF_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBha_10GenericArgEE0E0E0EB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr %0, align 8, !range !1414, !noundef !5 ; 3 uses
  %.not2 = icmp eq i32 %i.f, -2
  br i1 %.not2, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB52_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8 ; 3 uses
  %.not7.i = icmp eq i32 %i.f, -1
  br i1 %.not7.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB52_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = trunc i64 %.sroa.55.0.copyload to i32
  %i.m = load ptr, ptr %.sroa.44.0.copyload, align 8, !noalias !1441, !nonnull !5, !align !242, !noundef !5 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !1441, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !1441, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.p = load ptr, ptr %.sroa.03.0.copyload, align 8, !alias.scope !1452, !noalias !1455, !nonnull !5, !align !242, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !1458, !noundef !5
  %i.s = and i64 %.sroa.55.0.copyload, 4294967295 ; 2 uses
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i

_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !1458, !nonnull !5, !align !242, !noundef !5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1459, !noalias !1458, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1458
  %i.x = load ptr, ptr %i.g, align 8, !alias.scope !1452, !noalias !1455, !nonnull !5, !align !242, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !1458
  %i.y = call noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_11generic_arg10GenericArgE11instantiateRSB26_EB1d_(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i), !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1458
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B4v_.exit.i

_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i: ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.i.i.i.i.i, %.lr.ph.i
  %i.z = load ptr, ptr %i.h, align 8, !alias.scope !1452, !noalias !1455, !nonnull !5, !align !242, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1458
  store i32 %i.l, ptr %i.i, align 4, !noalias !1458
  store i32 %i.f, ptr %i.a, align 8, !noalias !1463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  store ptr %.val.i.i.i.i, ptr %i.j, align 8, !noalias !1458
  store i64 %.val1.i.i.i.i, ptr %i.k, align 8, !noalias !1458
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !1462, !nonnull !5, !align !242, !noundef !5
  %i.aa = call noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable11var_for_def(ptr noundef nonnull align 8 %.val.i.i.i.i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.a, i32 noundef 4, i32 undef), !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1458
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B4v_.exit.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B4v_.exit.i: ; preds = %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.aa, %_RNvMsb_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_18GenericDefaultsRef3get.exit.thread.i.i.i.i.i ]
  %i.ab = load ptr, ptr %.sroa.44.0.copyload, align 8, !noalias !1441, !nonnull !5, !align !242, !noundef !5
  call void @_RNvXsr_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5_10GenericArgENtB5_18GenericArgsBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull %.sroa.0.0.i.i.i.i.i), !noalias !1441
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB52_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCINvB4U_22for_item_with_defaultsNCNvMsa_NtB52_5inferNtB6Z_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB52_.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvB4n_22for_item_with_defaultsNCNvMsa_NtB4v_5inferNtB6s_16InferenceContext10collect_fns_0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B4v_.exit.i, %bb.d, %bb.c
end_hunk_0
