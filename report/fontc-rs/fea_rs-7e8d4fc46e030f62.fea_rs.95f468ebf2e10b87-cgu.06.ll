Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.06?download=true
inline.NumInlined: 1269
inline.NumDeleted: 925
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B1X_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callB1X_NCINvMsk_NtB1b_3vecINtB46_3VecB1X_E14extend_trustedBP_E0E0ECscScJTt9VrQp_6fea_rs:bb.a
  resume { ptr, i32 } %i.e

_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16BY_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBY_uNCINvNvB1P_8for_each4callBY_NCINvMsk_NtBc_3vecINtB48_3VecBY_E14extend_trustedINtB2V_6CopiedB3_EE0E0E0ECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB20_8for_each4calltNCINvMsk_NtB1b_3vecINtB3d_3VectE14extend_trustedBP_E0E0ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.val6.i = phi i64 [ %i.d, %bb.d ], [ %.sroa.5.0.copyload, %bb.a ] ; 4 uses
  %i.b = invoke noundef align 2 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4ItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.e, !noalias !1628 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4ItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters6copied9copy_foldtuNCINvNvB10_8for_each4calltNCINvMsk_NtBc_3vecINtB3f_3VectE14extend_trustedINtB26_6CopiedB3_EE0E0E0ECscScJTt9VrQp_6fea_rs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val7.i = load i16, ptr %i.b, align 2, !noalias !1628, !noundef !5
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.0.copyload, i64 %.val6.i
  store i16 %.val7.i, ptr %i.c, align 2, !noalias !1629
  %i.d = add i64 %.val6.i, 1
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1628
  resume { ptr, i32 } %i.e

_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4ItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters6copied9copy_foldtuNCINvNvB10_8for_each4calltNCINvMsk_NtBc_3vecINtB3f_3VectE14extend_trustedINtB26_6CopiedB3_EE0E0E0ECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtBc_6copied6CopiedINtNtBc_5chain5ChainINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtBa_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB3a_EEB2K_NCNvMs_NtB3e_8featuresNtB6W_14FeatureLookups8iter_ids0EEEuNCINvNtBc_3map8map_foldB3a_TB3a_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB8t_7HashSetB3a_NtNtNtB4o_4hash6random11RandomStateEINtNtB1n_7collect6ExtendB3a_E6extendIB42_INtNtBc_6filter6FilterINtNtNtNtB6d_11collections5btree3map4IterNtB3c_10FeatureKeyB7b_ENCNvMB6W_NtB6W_11AllFeatures13finalize_aalts6_0EB24_NCBbV_s7_0EE0NCINvNvB1j_8for_each4callB8c_NCINvXs1i_NtB8v_3mapINtBdz_7HashMapB3a_uB9g_EIB9R_B8c_E6extendINtB7Q_3MapBaq_B8k_EE0E0E0E0B3g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1660, !noalias !1661
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 4 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1660, !noalias !1661 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.10.0.copyload.i, null
  br i1 %.not.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i) ]
  %i.d = icmp eq ptr %.sroa.10.0.copyload.i, %.sroa.11.0.copyload.i
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %.sroa.11.0.copyload.i to i64
  %i.f = ptrtoint ptr %.sroa.10.0.copyload.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %.val.i.i.i.i.i.pre.i = load ptr, ptr %0, align 8, !alias.scope !1661, !noalias !1662
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.copyload.i, i64 %.sroa.01.0.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %.val1.i.i.i.i = load i64, ptr %i.i, align 8, !range !17, !alias.scope !1663, !noalias !1664, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1663, !noalias !1664
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i.i.i.i.i.pre.i, i64 noundef range(i64 0, 6) %.val1.i.i.i.i, i64 %.val2.i.i.i.i), !noalias !1665 ; 0 uses
  %i.l = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i, label %bb.d

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i: ; preds = %bb.d, %bb.b, %bb.a
  %i.n = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.n, label %bb.e, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1M_EEB1m_NCNvMs_NtB1Q_8featuresNtB5I_14FeatureLookups8iter_ids0EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_foldB1M_TB1M_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7T_7HashSetB1M_NtNtNtB3a_4hash6random11RandomStateEINtNtB6A_7collect6ExtendB1M_E6extendIB2E_INtNtB7_6filter6FilterINtNtNtNtB4Z_11collections5btree3map4IterNtB1O_10FeatureKeyB5X_ENCNvMB5I_NtB5I_11AllFeatures13finalize_aalts6_0EBP_NCBbl_s7_0EE0NCINvNvB6w_8for_each4callB7C_NCINvXs1i_NtB7V_3mapINtBcY_7HashMapB1M_uB8G_EIB9h_B7C_E6extendINtB7g_3MapB9Q_B7K_EE0E0E0EB1S_.exit

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1666
  store ptr %0, ptr %i.c, align 8, !noalias !1667
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.o = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.5.0.copyload.i
  br i1 %i.o, label %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %.sroa.5.0.copyload.i to i64
  %i.q = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !range !17, !alias.scope !1668, !noalias !1669, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1668, !noalias !1669
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1661, !noalias !1670, !nonnull !5, !align !6, !noundef !5
  %i.v = tail call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 6) %.val1.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i), !noalias !1670 ; 0 uses
  %i.w = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i, label %bb.h

_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.f, %bb.e
  %.not5.i.i.i.i.i = icmp eq ptr %.sroa.8.0.copyload.i, null
  br i1 %.not5.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1667
  store ptr %.sroa.8.0.copyload.i, ptr %i.b, align 8, !noalias !1667
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i64 32, i1 false), !noalias !1661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1671
  store ptr %i.c, ptr %i.a, align 8, !noalias !1672
  call void @_RINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvXsM_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4j_6ValuesBL_B1K_EB39_4folduNCINvNtNtB3f_8adapters3map8map_foldRB1K_INtNtNtB3h_5slice4iter4IterB2h_EuNCNvMs_NtB2l_8featuresNtB6R_14FeatureLookups8iter_ids0NCINvNvMsg_NtB5G_7flattenINtB7N_13FlattenCompatppE9iter_fold7flattenB6d_uNCINvNvXsi_B7N_B81_B39_4fold7flattenB6d_uNCINvNtB5G_6copied9copy_foldB2h_uQNCIB5C_B2h_TB2h_uEuNCINvXs8_NtB8_3setINtBas_7HashSetB2h_NtNtNtB4p_4hash6random11RandomStateEINtNtB3d_7collect6ExtendB2h_E6extendINtB7N_7FlatMapINtNtB5G_6filter6FilterINtNtNtNtB1P_11collections5btree3map4IterNtB2j_10FeatureKeyB76_ENCNvMB6R_NtB6R_11AllFeatures13finalize_aalts6_0EINtB9x_6CopiedINtNtB5G_5chain5ChainB6d_IBc5_B53_B6d_B6K_EEENCBdK_s7_0EE0NCINvNvB39_8for_each4callBab_NCINvXs1i_B6_INtB6_7HashMapB2h_uBaU_EIBbv_Bab_E6extendINtB5E_3MapBc4_Baj_EE0E0E0E0E0E0E0E0EB2n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %i.a), !noalias !1673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1667
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEuNCINvNtBc_6copied9copy_foldB2u_uQNCINvNtBc_3map8map_foldB2u_TB2u_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4B_7HashSetB2u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendB2u_E6extendINtBa_7FlatMapINtNtBc_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtB2w_10FeatureKeyNtNtB2y_8features14FeatureLookupsENCNvMB8B_NtB8B_11AllFeatures13finalize_aalts6_0EINtB3r_6CopiedINtNtBc_5chain5ChainB24_IB6N_INtNtNtNtB5u_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB7v_3vec3VecB2u_EEB24_NCNvMs_B8B_B8z_8iter_ids0EEENCB99_s7_0EE0NCINvNvB1j_8for_each4callB4k_NCINvXs1i_NtB4D_3mapINtBdY_7HashMapB2u_uB5o_EIB6d_B4k_E6extendINtB3Y_3MapB6M_B4s_EE0E0E0E0E0B2A_.exit.i.i.i.i.i
  %.not6.i.i.i.i.i = icmp eq ptr %.sroa.6.0.copyload.i, null
  br i1 %.not6.i.i.i.i.i, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBc_5slice4iter4IterB3v_ENCNvMs_NtB3z_8featuresNtB4Z_14FeatureLookups8iter_ids0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldB3v_uQNCINvNtB8_3map8map_foldB3v_TB3v_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7E_7HashSetB3v_NtNtNtB1e_4hash6random11RandomStateEINtNtB5P_7collect6ExtendB3v_E6extendIBS_INtNtB8_6filter6FilterINtNtNtNtB33_11collections5btree3map4IterNtB3x_10FeatureKeyB5e_ENCNvMB4Z_NtB4Z_11AllFeatures13finalize_aalts6_0EINtB6u_6CopiedINtNtB8_5chain5ChainB4n_BR_EENCBb5_s7_0EE0NCINvNvB5L_8for_each4callB7n_NCINvXs1i_NtB7G_3mapINtBdm_7HashMapB3v_uB8r_EIB92_B7n_E6extendINtB71_3MapB9B_B7v_EE0E0E0E0EB3B_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !1667 ; 2 uses
  %i.y = icmp eq ptr %.sroa.6.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.y, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBc_5slice4iter4IterB3v_ENCNvMs_NtB3z_8featuresNtB4Z_14FeatureLookups8iter_ids0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldB3v_uQNCINvNtB8_3map8map_foldB3v_TB3v_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7E_7HashSetB3v_NtNtNtB1e_4hash6random11RandomStateEINtNtB5P_7collect6ExtendB3v_E6extendIBS_INtNtB8_6filter6FilterINtNtNtNtB33_11collections5btree3map4IterNtB3x_10FeatureKeyB5e_ENCNvMB4Z_NtB4Z_11AllFeatures13finalize_aalts6_0EINtB6u_6CopiedINtNtB8_5chain5ChainB4n_BR_EENCBb5_s7_0EE0NCINvNvB5L_8for_each4callB7n_NCINvXs1i_NtB7G_3mapINtBdm_7HashMapB3v_uB8r_EIB92_B7n_E6extendINtB71_3MapB9B_B7v_EE0E0E0E0EB3B_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = ptrtoint ptr %.sroa.7.0.copyload.i to i64
  %i.aa = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.01.0.i.i8.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.ag, %bb.m ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.01.0.i.i8.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %.val1.i.i.i9.i.i.i.i.i = load i64, ptr %i.ad, align 8, !range !17, !alias.scope !1674, !noalias !1675, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val2.i.i.i10.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1674, !noalias !1675
  %.val.i.i.i.i.i11.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i, align 8, !noalias !1676, !nonnull !5, !align !6, !noundef !5
  %i.af = call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i.i.i.i.i11.i.i.i.i.i, i64 noundef range(i64 0, 6) %.val1.i.i.i9.i.i.i.i.i, i64 %.val2.i.i.i10.i.i.i.i.i), !noalias !1676 ; 0 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.i8.i.i.i.i.i, 1 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ah, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBc_5slice4iter4IterB3v_ENCNvMs_NtB3z_8featuresNtB4Z_14FeatureLookups8iter_ids0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldB3v_uQNCINvNtB8_3map8map_foldB3v_TB3v_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7E_7HashSetB3v_NtNtNtB1e_4hash6random11RandomStateEINtNtB5P_7collect6ExtendB3v_E6extendIBS_INtNtB8_6filter6FilterINtNtNtNtB33_11collections5btree3map4IterNtB3x_10FeatureKeyB5e_ENCNvMB4Z_NtB4Z_11AllFeatures13finalize_aalts6_0EINtB6u_6CopiedINtNtB8_5chain5ChainB4n_BR_EENCBb5_s7_0EE0NCINvNvB5L_8for_each4callB7n_NCINvXs1i_NtB7G_3mapINtBdm_7HashMapB3v_uB8r_EIB92_B7n_E6extendINtB71_3MapB9B_B7v_EE0E0E0E0EB3B_.exit.i.i, label %bb.m

_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBc_5slice4iter4IterB3v_ENCNvMs_NtB3z_8featuresNtB4Z_14FeatureLookups8iter_ids0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldB3v_uQNCINvNtB8_3map8map_foldB3v_TB3v_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7E_7HashSetB3v_NtNtNtB1e_4hash6random11RandomStateEINtNtB5P_7collect6ExtendB3v_E6extendIBS_INtNtB8_6filter6FilterINtNtNtNtB33_11collections5btree3map4IterNtB3x_10FeatureKeyB5e_ENCNvMB4Z_NtB4Z_11AllFeatures13finalize_aalts6_0EINtB6u_6CopiedINtNtB8_5chain5ChainB4n_BR_EENCBb5_s7_0EE0NCINvNvB5L_8for_each4callB7n_NCINvXs1i_NtB7G_3mapINtBdm_7HashMapB3v_uB8r_EIB92_B7n_E6extendINtB71_3MapB9B_B7v_EE0E0E0E0EB3B_.exit.i.i: ; preds = %bb.m, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1666
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1M_EEB1m_NCNvMs_NtB1Q_8featuresNtB5I_14FeatureLookups8iter_ids0EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_foldB1M_TB1M_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7T_7HashSetB1M_NtNtNtB3a_4hash6random11RandomStateEINtNtB6A_7collect6ExtendB1M_E6extendIB2E_INtNtB7_6filter6FilterINtNtNtNtB4Z_11collections5btree3map4IterNtB1O_10FeatureKeyB5X_ENCNvMB5I_NtB5I_11AllFeatures13finalize_aalts6_0EBP_NCBbl_s7_0EE0NCINvNvB6w_8for_each4callB7C_NCINvXs1i_NtB7V_3mapINtBcY_7HashMapB1M_uB8G_EIB9h_B7C_E6extendINtB7g_3MapB9Q_B7K_EE0E0E0EB1S_.exit

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1M_EEB1m_NCNvMs_NtB1Q_8featuresNtB5I_14FeatureLookups8iter_ids0EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_foldB1M_TB1M_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7T_7HashSetB1M_NtNtNtB3a_4hash6random11RandomStateEINtNtB6A_7collect6ExtendB1M_E6extendIB2E_INtNtB7_6filter6FilterINtNtNtNtB4Z_11collections5btree3map4IterNtB1O_10FeatureKeyB5X_ENCNvMB5I_NtB5I_11AllFeatures13finalize_aalts6_0EBP_NCBbl_s7_0EE0NCINvNvB6w_8for_each4callB7C_NCINvXs1i_NtB7V_3mapINtBcY_7HashMapB1M_uB8G_EIB9h_B7C_E6extendINtB7g_3MapB9Q_B7K_EE0E0E0EB1S_.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uQNCINvNtB2A_3map8map_foldBQ_TBQ_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3S_7HashSetBQ_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1L_7collect6ExtendBQ_E6extendINtNtB2A_7flatten7FlatMapINtNtB2A_6filter6FilterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtBS_10FeatureKeyNtNtBU_8features14FeatureLookupsENCNvMB81_NtB81_11AllFeatures13finalize_aalts6_0EINtB2y_6CopiedINtNtB2A_5chain5ChainBF_IB62_INtNtNtNtB4K_11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtB6W_3vec3VecBQ_EEBF_NCNvMs_B81_B7Z_8iter_ids0EEENCB8y_s7_0EE0NCINvNvB1H_8for_each4callB3C_NCINvXs1i_NtB3U_3mapINtBdl_7HashMapBQ_uB4E_EIB5t_B3C_E6extendINtB3g_3MapB61_B3J_EE0E0E0E0EBW_.exit.i.i, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBc_5slice4iter4IterB3v_ENCNvMs_NtB3z_8featuresNtB4Z_14FeatureLookups8iter_ids0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldB3v_uQNCINvNtB8_3map8map_foldB3v_TB3v_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB7E_7HashSetB3v_NtNtNtB1e_4hash6random11RandomStateEINtNtB5P_7collect6ExtendB3v_E6extendIBS_INtNtB8_6filter6FilterINtNtNtNtB33_11collections5btree3map4IterNtB3x_10FeatureKeyB5e_ENCNvMB4Z_NtB4Z_11AllFeatures13finalize_aalts6_0EINtB6u_6CopiedINtNtB8_5chain5ChainB4n_BR_EENCBb5_s7_0EE0NCINvNvB5L_8for_each4callB7n_NCINvXs1i_NtB7G_3mapINtBdm_7HashMapB3v_uB8r_EIB92_B7n_E6extendINtB71_3MapB9B_B7v_EE0E0E0E0EB3B_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsg_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_4IterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1a_6filter6FilterIB16_INtNtNtB1e_5slice4iter4IterNtNtB5_6bitset8PageInfoEINtNtB1e_6option6OptionTmRNtNtB5_7bitpage7BitPageEENCNvMs1_B2W_NtB2W_6U32Set10iter_pages0ENCNvB4b_20iter_non_empty_pages0EINtNtB1a_3map3MapIB16_IB22_INtNtB1a_9enumerate9EnumerateIB2u_yEENCNvMB3K_B3I_4iter0EIB5h_NtB3K_4IterNCNCB6k_s_00ENCB6k_s_0ENCNCNvB4b_4iter00ENCB7j_0EINtNtNtB1e_3ops5range14RangeInclusivemEE17new_bidirectionalCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 4, !range !16, !noundef !5
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 8 uses
  %i.h = tail call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #28 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0        ; 2 uses
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.g, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %1, i64 1
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 0, i64 64>
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.923.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.1024.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.o = load i64, ptr %1, align 8, !range !8, !alias.scope !1754, !noalias !1755, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %.loopexit32.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.p = load ptr, ptr %i.k, align 8, !alias.scope !1762, !noalias !1763, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit32.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1766
  store <2 x ptr> %5, ptr %i.d, align 16, !noalias !1767
  %i.q = load ptr, ptr %i.m, align 8, !alias.scope !1768, !noalias !1763, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = phi ptr [ %i.t, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.k, align 8, !alias.scope !1768, !noalias !1763
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !1769, !noundef !5
  %i.u = getelementptr i8, ptr %i.s, i64 4
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 4, !noalias !1769 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !1770, !noalias !1767, !nonnull !5, !align !6, !noundef !5
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !1771, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1771, !noundef !5
  %i.y = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1771, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.y ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1772
  store i32 %.val9.i.i.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1773
  store ptr %i.ac, ptr %i.n, align 8, !noalias !1773
  %i.ad = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !1769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1772
  br i1 %i.ad, label %bb.g, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq ptr %i.t, %i.q
  br i1 %i.ae, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i: ; preds = %bb.e, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1766
  br label %.loopexit32.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1766
  %i.af = shl i32 %.val9.i.i.i.i.i.i.i.i.i.i.i, 9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i64 0, ptr %i.g, align 8, !alias.scope !1774
  store i64 0, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !1774
  store ptr %i.ac, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !alias.scope !1774
  store ptr %i.ag, ptr %.sroa.822.0..sroa_idx.i.i, align 8, !alias.scope !1774
  store i64 0, ptr %.sroa.923.0..sroa_idx.i.i, align 8, !alias.scope !1774
  store i32 %i.af, ptr %.sroa.1024.0..sroa_idx.i.i, align 8, !alias.scope !1774
  %i.ah = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #28 ; 2 uses
  %i.ai = extractvalue { i32, i32 } %i.ah, 0      ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit, label %bb.c

.loopexit32.i.i:                                  ; preds = %bb.d, %bb.c, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.al = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ak) #28 ; 2 uses
  %i.am = extractvalue { i32, i32 } %i.al, 0
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.g, %bb.b, %.loopexit32.i.i
  %.pn.i.i = phi { i32, i32 } [ %i.al, %.loopexit32.i.i ], [ %i.h, %bb.b ], [ %i.ah, %bb.g ]
  %.sroa.0.0.i.i = phi i32 [ %i.am, %.loopexit32.i.i ], [ %i.i, %bb.b ], [ %i.ai, %bb.g ]
  %.sroa.3.0.i.i = extractvalue { i32, i32 } %.pn.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.827.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.928.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.1029.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.pre.i.i = load i64, ptr %i.an, align 8, !range !8, !alias.scope !1777
  %i.at = icmp eq i64 %.pre.i.i, 2
  br i1 %i.at, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread34.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit
  %i.au = call fastcc { i32, i32 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2G_7BitPage4iter0EIBN_NtB2G_4IterNCNCB2D_s_00ENCB2D_s_0ENCNCNvMs1_NtB2I_6bitsetNtB4M_6U32Set4iter00ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.an) #28 ; 3 uses
  %i.av = extractvalue { i32, i32 } %i.au, 0      ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.av, 1
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread.i.i: ; preds = %bb.h
  %i.aw = extractvalue { i32, i32 } %i.au, 1
  %i.ax = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %i.aw, 1
  br label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.h
  store i64 2, ptr %i.an, align 8, !alias.scope !1777
  %i.ay = trunc i32 %i.av to i1
  br i1 %i.ay, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread34.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread34.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  %i.az = load i64, ptr %1, align 8, !range !8, !alias.scope !1779, !noalias !1780, !noundef !5
  %.not.i1.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i1.i.i, label %.loopexit42.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread34.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.ba = load ptr, ptr %i.ao, align 8, !alias.scope !1787, !noalias !1788, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i2, label %.loopexit42.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1791
  store ptr %i.g, ptr %i.b, align 8, !noalias !1792
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !1792
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1793, !noalias !1788 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %.promoted.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bb, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i3

.lr.ph.i.i.i.i.i.i.i.i.i.i.i3:                    ; preds = %bb.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bd, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 4 uses
  store ptr %i.bd, ptr %i.ar, align 8, !alias.scope !1793, !noalias !1788
  %.val.i.i.i.i.i.i.i.i.i.i.i4 = load i32, ptr %i.bd, align 4, !noalias !1794, !noundef !5
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %.val9.i.i.i.i.i.i.i.i.i.i.i5 = load i32, ptr %i.be, align 4, !noalias !1794 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %i.bf = load ptr, ptr %i.aq, align 8, !alias.scope !1795, !noalias !1792, !nonnull !5, !align !6, !noundef !5
  %.val.i.i.i.i.i.i.i.i.i.i.i.i6 = load ptr, ptr %i.bf, align 8, !noalias !1796, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i6, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !1796, !noundef !5
  %i.bi = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i4 to i64 ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i3
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i6, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1796, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.bl, i64 %i.bi ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1797
  store i32 %.val9.i.i.i.i.i.i.i.i.i.i.i5, ptr %i.a, align 8, !noalias !1798
  store ptr %i.bm, ptr %i.as, align 8, !noalias !1798
  %i.bn = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1797
  br i1 %i.bn, label %.critedge, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i3
  %i.bo = icmp eq ptr %i.ba, %i.bd
  br i1 %i.bo, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i3

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1791
  br label %.loopexit42.i.i

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1791
  %i.bp = shl i32 %.val9.i.i.i.i.i.i.i.i.i.i.i5, 9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store i64 0, ptr %i.an, align 8, !alias.scope !1799
  store i64 0, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !alias.scope !1799
  store ptr %i.bm, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !alias.scope !1799
  store ptr %i.bq, ptr %.sroa.827.0..sroa_idx.i.i, align 8, !alias.scope !1799
  store i64 0, ptr %.sroa.928.0..sroa_idx.i.i, align 8, !alias.scope !1799
  store i32 %i.bp, ptr %.sroa.1029.0..sroa_idx.i.i, align 8, !alias.scope !1799
  br label %bb.h

.loopexit42.i.i:                                  ; preds = %bb.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread34.i.i, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i
  %i.br = load i64, ptr %i.g, align 8, !range !8, !alias.scope !1800, !noundef !5
  %.not.i2.i.i = icmp eq i64 %i.br, 2
  br i1 %.not.i2.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit42.i.i
  %i.bs = call fastcc { i32, i32 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2G_7BitPage4iter0EIBN_NtB2G_4IterNCNCB2D_s_00ENCB2D_s_0ENCNCNvMs1_NtB2I_6bitsetNtB4M_6U32Set4iter00ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g) #28 ; 2 uses
  %i.bt = extractvalue { i32, i32 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { i32, i32 } %i.bs, 1      ; 2 uses
  %.not4.i3.i.i = icmp eq i32 %i.bt, 1
  br i1 %.not4.i3.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 2, ptr %i.g, align 8, !alias.scope !1800
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.m, %bb.l, %.loopexit42.i.i
  %.sroa.3.0.i4.i.i = phi i32 [ undef, %.loopexit42.i.i ], [ %i.bu, %bb.m ], [ %i.bu, %bb.l ]
  %.sroa.0.0.i5.i.i = phi i32 [ 0, %.loopexit42.i.i ], [ %i.bt, %bb.m ], [ 1, %bb.l ]
  %i.bv = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5.i.i, 0
  %i.bw = insertvalue { i32, i32 } %i.bv, i32 %.sroa.3.0.i4.i.i, 1
  br label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i
  %.merged.i.i = phi { i32, i32 } [ %i.bw, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECscScJTt9VrQp_6fea_rs.exit.i.i ], [ %i.ax, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.thread.i.i ], [ %i.au, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECscScJTt9VrQp_6fea_rs.exit.i.i ] ; 2 uses
  %i.bx = extractvalue { i32, i32 } %.merged.i.i, 0
  %i.by = extractvalue { i32, i32 } %.merged.i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 280
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1L_EEB1l_NCNvMs_NtB1P_8featuresNtB5H_14FeatureLookups8iter_ids0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.x, align 8, !alias.scope !2116, !noalias !2115
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 %i.s, ptr %0, align 8, !alias.scope !2116, !noalias !2115
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1p_EEBZ_NCNvMs_NtB1t_8featuresNtB5k_14FeatureLookups8iter_ids0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_.exit

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !2109, !noalias !2110
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.y, align 8, !alias.scope !2109, !noalias !2110
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1p_EEBZ_NCNvMs_NtB1t_8featuresNtB5k_14FeatureLookups8iter_ids0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit21.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !2110, !noalias !2109, !nonnull !5, !noundef !5
  %i.ab = ptrtoint ptr %.val10.i to i64
  %i.ac = ptrtoint ptr %i.b to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 4                 ; 3 uses
  %i.af = load ptr, ptr %i.z, align 8, !alias.scope !2117, !noalias !2118, !noundef !5 ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i12.i = load ptr, ptr %i.ag, align 8, !alias.scope !2117, !noalias !2118, !nonnull !5
  %i.ah = ptrtoint ptr %.val3.i.i.i12.i to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 4
  %.sroa.7.0.i.i13.i = select i1 %.not.i.i11.i, i64 0, i64 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !2117, !noalias !2118, !noundef !5 ; 2 uses
  %.not53.i.i14.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i62.i.i15.i = load ptr, ptr %i.an, align 8, !alias.scope !2117, !noalias !2118, !nonnull !5
  %i.ao = ptrtoint ptr %.val3.i62.i.i15.i to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 4
  %.sroa.8.0.i.i16.i = select i1 %.not53.i.i14.i, i64 0, i64 %i.ar
  %i.as = add nuw nsw i64 %.sroa.8.0.i.i16.i, %.sroa.7.0.i.i13.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !2117, !noalias !2118, !noundef !5
  %.not54.i.i17.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i18.i = load i64, ptr %i.av, align 8, !alias.scope !2117, !noalias !2118
  %i.aw = icmp eq i64 %.val.i.i18.i, 0
  %or.cond.i.i19.i = select i1 %.not54.i.i17.i, i1 true, i1 %i.aw ; 3 uses
  %spec.select.i = select i1 %or.cond.i.i19.i, i64 %i.as, i64 undef
  %i.ax = add nuw nsw i64 %i.as, %i.ae
  %i.ay = add i64 %spec.select.i, %i.ae           ; 2 uses
  %i.az = icmp uge i64 %i.ay, %i.ae
  %.sroa.46.0.i = select i1 %or.cond.i.i19.i, i64 %i.ay, i64 undef
  %narrow.i = select i1 %or.cond.i.i19.i, i1 %i.az, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.ax, ptr %0, align 8, !alias.scope !2109, !noalias !2110
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.ba, align 8, !alias.scope !2109, !noalias !2110
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1p_EEBZ_NCNvMs_NtB1t_8featuresNtB5k_14FeatureLookups8iter_ids0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_.exit

bb.g:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val8.i = load ptr, ptr %i.bb, align 8, !alias.scope !2110, !noalias !2109, !nonnull !5, !noundef !5
  %i.bc = ptrtoint ptr %.val8.i to i64
  %i.bd = ptrtoint ptr %i.b to i64
  %i.be = sub nuw i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 4                 ; 2 uses
  store i64 %i.bf, ptr %0, align 8, !alias.scope !2119, !noalias !2110
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bg, align 8, !alias.scope !2119, !noalias !2110
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1p_EEBZ_NCNvMs_NtB1t_8featuresNtB5k_14FeatureLookups8iter_ids0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_.exit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecB1p_EEBZ_NCNvMs_NtB1t_8featuresNtB5k_14FeatureLookups8iter_ids0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i, %bb.f, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit21.i, %bb.g
  %.sink26.i = phi i64 [ 16, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit21.i ], [ 16, %bb.g ], [ 16, %bb.f ], [ 8, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i ]
  %.sroa.46.0.sink.i = phi i64 [ %.sroa.46.0.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit21.i ], [ %i.bf, %bb.g ], [ 0, %bb.f ], [ %.sink.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtNtBb_5slice4iter4IterB3u_ENCNvMs_NtB3y_8featuresNtB4Y_14FeatureLookups8iter_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink26.i
  store i64 %.sroa.46.0.sink.i, ptr %i.bh, align 8, !alias.scope !2109, !noalias !2110
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2122, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2122, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.e, ptr %0, align 8, !alias.scope !2122
  %i.f = load i16, ptr %i.a, align 2, !noundef !5
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i16 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 1                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2128, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2128, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %0, align 8, !alias.scope !2128
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2131
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !2134
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !2134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !2134
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4ItertEENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !2137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !2137
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !2137
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXsh_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_4IterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1a_6filter6FilterIB16_INtNtNtB1e_5slice4iter4IterNtNtB5_6bitset8PageInfoEINtNtB1e_6option6OptionTmRNtNtB5_7bitpage7BitPageEENCNvMs1_B2W_NtB2W_6U32Set10iter_pages0ENCNvB4b_20iter_non_empty_pages0EINtNtB1a_3map3MapIB16_IB22_INtNtB1a_9enumerate9EnumerateIB2u_yEENCNvMB3K_B3I_4iter0EIB5h_NtB3K_4IterNCNCB6k_s_00ENCB6k_s_0ENCNCNvB4b_4iter00ENCB7j_0EINtNtNtB1e_3ops5range14RangeInclusivemEENtNtNtB1c_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(296) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, <2 x i64> <i64 72, i64 64>
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.519.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.721.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.822.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.923.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.1024.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.v = tail call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.u) #28 ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0        ; 2 uses
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %1 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %0, i64 1
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 0, i64 64>
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.923.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.1024.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  %i.ac = load i64, ptr %0, align 8, !range !8, !alias.scope !2216, !noalias !2217, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.ac, 2
  br i1 %.not.i.i.i, label %.loopexit32.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  %i.ad = load ptr, ptr %i.y, align 8, !alias.scope !2224, !noalias !2225, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit32.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2228
  store <2 x ptr> %3, ptr %i.d, align 16, !noalias !2229
  %i.ae = load ptr, ptr %i.aa, align 8, !alias.scope !2230, !noalias !2225, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.f, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = phi ptr [ %i.ah, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %i.ah, ptr %i.y, align 8, !alias.scope !2230, !noalias !2225
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ag, align 4, !noalias !2231, !noundef !5
  %i.ai = getelementptr i8, ptr %i.ag, i64 4
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 4, !noalias !2231 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  %i.aj = load ptr, ptr %i.z, align 8, !alias.scope !2232, !noalias !2229, !nonnull !5, !align !6, !noundef !5
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !2233, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !2233, !noundef !5
  %i.am = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2233, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.ap, i64 %i.am ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2234
  store i32 %.val9.i.i.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !2235
  store ptr %i.aq, ptr %i.ab, align 8, !noalias !2235
  %i.ar = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !2231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2234
  br i1 %i.ar, label %bb.h, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.as = icmp eq ptr %i.ah, %i.ae
  br i1 %i.as, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i: ; preds = %bb.f, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2228
  br label %.loopexit32.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2228
  %i.at = shl i32 %.val9.i.i.i.i.i.i.i.i.i.i.i, 9
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i64 0, ptr %i.u, align 8, !alias.scope !2236
  store i64 0, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !2236
  store ptr %i.aq, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !alias.scope !2236
  store ptr %i.au, ptr %.sroa.822.0..sroa_idx.i.i, align 8, !alias.scope !2236
  store i64 0, ptr %.sroa.923.0..sroa_idx.i.i, align 8, !alias.scope !2236
  store i32 %i.at, ptr %.sroa.1024.0..sroa_idx.i.i, align 8, !alias.scope !2236
  %i.av = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.u) #28 ; 2 uses
  %i.aw = extractvalue { i32, i32 } %i.av, 0      ; 2 uses
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit, label %bb.d

.loopexit32.i.i:                                  ; preds = %bb.e, %bb.d, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ay) #28 ; 2 uses
  %i.ba = extractvalue { i32, i32 } %i.az, 0
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.h, %bb.c, %.loopexit32.i.i
  %.pn.i.i = phi { i32, i32 } [ %i.az, %.loopexit32.i.i ], [ %i.v, %bb.c ], [ %i.av, %bb.h ]
  %.sroa.0.0.i.i = phi i32 [ %i.ba, %.loopexit32.i.i ], [ %i.w, %bb.c ], [ %i.aw, %bb.h ]
  %.sroa.3.0.i.i = extractvalue { i32, i32 } %.pn.i.i, 1
  br label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  %i.bb = load i32, ptr %i.g, align 8, !alias.scope !2239, !noalias !2238, !noundef !5 ; 10 uses
  %i.bc = load i32, ptr %i.i, align 4, !alias.scope !2240, !noalias !2237, !noundef !5
  %.not.i = icmp ugt i32 %i.bb, %i.bc
  br i1 %.not.i, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.i
  %i.bd = icmp eq i32 %i.bb, -1
  %i.be = add i32 %i.bb, 1
  %i.bf = zext i1 %i.bd to i8
  store i8 %i.bf, ptr %i.e, align 8, !alias.scope !2241
  store i32 %i.be, ptr %i.g, align 8, !alias.scope !2241
  %.pre = load i32, ptr %i.j, align 8, !range !2242
  br label %bb.j

_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread: ; preds = %bb.l, %.loopexit, %bb.i, %bb.k, %bb.b, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit
  %.sroa.5.0 = phi i32 [ %.sroa.3.0.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit ], [ undef, %bb.b ], [ %i.bb, %bb.k ], [ %i.bb, %bb.i ], [ %i.bb, %.loopexit ], [ %i.bb, %bb.l ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit ], [ 0, %bb.b ], [ 1, %bb.k ], [ 0, %.loopexit ], [ 0, %bb.i ], [ 1, %bb.l ]
  %i.bg = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bh = insertvalue { i32, i32 } %i.bg, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.bh

bb.j:                                             ; preds = %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26
  %i.bi = phi i32 [ %.pre, %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit ], [ %.sroa.0.0.i.i24, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26 ]
  %i.bj = trunc nuw i32 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.k, align 4, !noundef !5 ; 2 uses
  %i.bl = icmp ult i32 %i.bb, %i.bk
  br i1 %i.bl, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bm = load i32, ptr %i.s, align 8, !range !2242, !noundef !5
  %i.bn = trunc nuw i32 %i.bm to i1
  %i.bo = load i32, ptr %i.t, align 4
  %i.bp = icmp eq i32 %i.bo, %i.bb
  %or.cond = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond, label %.loopexit, label %_RNvXsd_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivemENtNtNtB7_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.bq = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #28 ; 2 uses
  %i.br = extractvalue { i32, i32 } %i.bq, 0      ; 2 uses
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %bb.m, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  %i.bt = load i64, ptr %0, align 8, !range !8, !alias.scope !2246, !noalias !2247, !noundef !5
  %.not.i.i.i14 = icmp eq i64 %i.bt, 2
  br i1 %.not.i.i.i14, label %.loopexit32.i.i22, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i8
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  %i.bu = load ptr, ptr %i.m, align 8, !alias.scope !2254, !noalias !2255, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %.loopexit32.i.i22, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2258
  store <2 x ptr> %i.n, ptr %i.b, align 16, !noalias !2259
  %i.bv = load ptr, ptr %i.p, align 8, !alias.scope !2260, !noalias !2255, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i.i.i.i.i.i16:                   ; preds = %bb.o, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20
  %i.bx = phi ptr [ %i.by, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20 ], [ %i.bu, %bb.o ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  store ptr %i.by, ptr %i.m, align 8, !alias.scope !2260, !noalias !2255
  %.val.i.i.i.i.i.i.i.i.i.i.i17 = load i32, ptr %i.bx, align 4, !noalias !2261, !noundef !5
  %i.bz = getelementptr i8, ptr %i.bx, i64 4
  %.val9.i.i.i.i.i.i.i.i.i.i.i18 = load i32, ptr %i.bz, align 4, !noalias !2261 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  %i.ca = load ptr, ptr %i.o, align 8, !alias.scope !2262, !noalias !2259, !nonnull !5, !align !6, !noundef !5
  %.val.i.i.i.i.i.i.i.i.i.i.i.i19 = load ptr, ptr %i.ca, align 8, !noalias !2263, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i19, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !2263, !noundef !5
  %i.cd = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i17 to i64 ; 2 uses
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.p, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i19, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !2263, !nonnull !5, !noundef !5
  %i.ch = getelementptr inbounds nuw [72 x i8], ptr %i.cg, i64 %i.cd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2264
  store i32 %.val9.i.i.i.i.i.i.i.i.i.i.i18, ptr %i.a, align 8, !noalias !2265
  store ptr %i.ch, ptr %i.q, align 8, !noalias !2265
  %i.ci = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !2261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2264
  br i1 %i.ci, label %bb.q, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i16
  %i.cj = icmp eq ptr %i.by, %i.bv
  br i1 %i.cj, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i16

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i21: ; preds = %bb.o, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2258
  br label %.loopexit32.i.i22

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2258
  %i.ck = shl i32 %.val9.i.i.i.i.i.i.i.i.i.i.i18, 9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !2266
  store i64 0, ptr %.sroa.519.0..sroa_idx.i.i9, align 8, !alias.scope !2266
  store ptr %i.ch, ptr %.sroa.721.0..sroa_idx.i.i10, align 8, !alias.scope !2266
  store ptr %i.cl, ptr %.sroa.822.0..sroa_idx.i.i11, align 8, !alias.scope !2266
  store i64 0, ptr %.sroa.923.0..sroa_idx.i.i12, align 8, !alias.scope !2266
  store i32 %i.ck, ptr %.sroa.1024.0..sroa_idx.i.i13, align 8, !alias.scope !2266
  %i.cm = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #28 ; 2 uses
  %i.cn = extractvalue { i32, i32 } %i.cm, 0      ; 2 uses
  %i.co = trunc i32 %i.cn to i1
  br i1 %i.co, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26, label %.lr.ph.i.i8

.loopexit32.i.i22:                                ; preds = %bb.n, %.lr.ph.i.i8, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread10.i.i.i.i21
  %i.cp = call fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r) #28 ; 2 uses
  %i.cq = extractvalue { i32, i32 } %i.cp, 0
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit26: ; preds = %bb.q, %bb.m, %.loopexit32.i.i22
  %.pn.i.i23 = phi { i32, i32 } [ %i.cp, %.loopexit32.i.i22 ], [ %i.bq, %bb.m ], [ %i.cm, %bb.q ]
  %.sroa.0.0.i.i24 = phi i32 [ %i.cq, %.loopexit32.i.i22 ], [ %i.br, %bb.m ], [ %i.cn, %bb.q ] ; 2 uses
end_hunk_1
