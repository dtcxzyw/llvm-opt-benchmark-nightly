Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.14?download=true
inline.NumInlined: 937
inline.NumDeleted: 682
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtCsbNLsQi0JuJ4_5tgrep6search17to_source_columns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2h_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3u_3VecjE14extend_trustedBN_E0E0EB1v_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1019
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsdB2fuMRIQJX_15crossbeam_deque5deque7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsk_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsdB2fuMRIQJX_15crossbeam_deque5deque7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsk_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2h_7HashSetB1L_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendBX_E0ENtNtB3X_8iterator8Iterator4folduNCINvNvB4G_8for_each4callTB1L_uENCINvXs1i_NtB2j_3mapINtB5S_7HashMapB1L_uB34_EIB3T_B5B_E6extendBN_E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3c_7HashSetBX_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendBX_E6extendBI_E0NCINvNvB1j_8for_each4callB2W_NCINvXs1i_NtB3e_3mapINtB63_7HashMapBX_uB3Y_EIB4N_B2W_E6extendINtB2p_3MapBI_B33_EE0E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2h_7HashSetB1L_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB3X_8iterator8Iterator4folduNCINvNvB4T_8for_each4callTB1L_uENCINvXs1i_NtB2j_3mapINtB65_7HashMapB1L_uB34_EIB3T_B5O_E6extendBN_E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3c_7HashSetBX_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendBX_E6extendINtB8_3VecBX_EE0NCINvNvB1j_8for_each4callB2W_NCINvXs1i_NtB3e_3mapINtB6e_7HashMapBX_uB3Y_EIB4N_B2W_E6extendINtB2p_3MapBI_B33_EE0E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve32complete_background_listed_files0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4J_E0INtNtBc_6result6ResultB48_zEEB2r_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB1D_8adapters3map12map_try_foldBX_B3b_B2B_INtNtB1F_6result6ResultB2B_zENCNvNtCsbNLsQi0JuJ4_5tgrep5serve32complete_background_listed_files0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3b_E0E0B4m_EB4V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindEENCNvNtCsbNLsQi0JuJ4_5tgrep5serve17ignore_sources_of0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB1M_NCINvMsk_B12_INtB12_3VecB1M_E14extend_trustedBN_E0E0EB3j_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2v_8adapters3map8map_foldBX_BY_uNCNvNtCsbNLsQi0JuJ4_5tgrep5serve17ignore_sources_of0NCINvNvB2p_8for_each4callBY_NCINvMsk_B8_INtB8_3VecBY_E14extend_trustedINtB3v_3MapBI_B46_EE0E0E0EB4c_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs1L7Mk9ubPba_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTdNtNtBa_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBZ_ENCINvNtNtB1s_8adapters3map12map_try_foldBX_BZ_B2q_INtNtB1u_6result6ResultB2q_zENCINvNtNtNtCs1L7Mk9ubPba_12clap_builder6parser8features11suggestions12did_you_meanRBZ_INtNtNtB1u_5slice4iter4IterBZ_EEs0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBZ_E0E0B3S_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set8IntoIterNtNtB16_4path7PathBufENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2o_7HashSetB1T_NtNtNtB16_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1T_E6extendINtB10_7HashSetB1T_EE0ENtNtB3Q_8iterator8Iterator4folduNCINvNvB4Q_8for_each4callTB1T_uENCINvXs1i_NtB2q_3mapINtB62_7HashMapB1T_uB3b_EIB3M_B5L_E6extendBN_E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXss_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldBP_TBP_uEuNCINvXs8_B6_INtB6_7HashSetBP_NtNtNtBT_4hash6random11RandomStateEINtNtB1t_7collect6ExtendBP_E6extendINtNtNtNtBT_11collections4hash3set7HashSetBP_EE0NCINvNvB1p_8for_each4callB32_NCINvXs1i_NtB8_3mapINtB69_7HashMapBP_uB3C_EIB4c_B32_E6extendINtB2v_3MapINtB4N_8IntoIterBP_EB39_EE0E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterjINtNtB16_3vec3VecTjjEEENCNvNtCsbNLsQi0JuJ4_5tgrep8matching19group_spans_by_line0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3g_8for_each4callNtB2o_7LineHitNCINvMsk_B20_IB1Y_B4j_E14extend_trustedBN_E0E0EB2q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.01.i.i = alloca [24 x i8], align 8       ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.w, %bb.a
  %.val5.i = phi i64 [ %i.bb, %bb.w ], [ %.sroa.5.0.copyload, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1041
  invoke void @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterjINtNtBb_3vec3VecTjjEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.d unwind label %bb.c, !noalias !1042

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.c ], [ %lpad.phi.i, %bb.v ], [ %.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1042
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterjINtNtBb_3vec3VecTjjEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterjINtNtBK_3vec3VecTjjEEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.x, !noalias !1042

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.h, align 8, !range !12, !noalias !1041, !noundef !6
  %.not.i = icmp eq i64 %i.p, -1
  br i1 %.not.i, label %_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterjINtNtBc_3vec3VecTjjEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldTjB13_ENtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHituNCNvB38_19group_spans_by_line0NCINvNvB1p_8for_each4callB36_NCINvMsk_B16_IB14_B36_E14extend_trustedINtB2v_3MapB3_B3M_EE0E0E0EB3a_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.06.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  %i.q = load ptr, ptr %i.i, align 8, !noalias !1043, !nonnull !6, !noundef !6 ; 6 uses
  %i.r = load i64, ptr %i.j, align 8, !noalias !1043, !noundef !6 ; 9 uses
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i64 %i.r, 21
  br i1 %i.t, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortTjjENvYBT_NtNtB8_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.r, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.i unwind label %.loopexit.i, !noalias !1044

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjENvYB1m_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.r, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.i unwind label %.loopexit.i, !noalias !1044

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1043
  %i.u = icmp ult i64 %i.r, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1043
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.j unwind label %.loopexit.i, !noalias !1044

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.b, align 8, !range !5, !noalias !1043, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = load i64, ptr %i.k, align 8, !range !15, !noalias !1043, !noundef !6 ; 3 uses
  br i1 %i.w, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.l, align 8, !noalias !1043
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.y) #30
          to label %bb.u unwind label %.loopexit.split-lp.i, !noalias !1044

bb.l:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.l, align 8, !noalias !1043, !nonnull !6, !noundef !6
  %i.aa = icmp samesign ule i64 %i.r, %i.x
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1043
  store i64 %i.x, ptr %i.d, align 8, !noalias !1043
  store ptr %i.z, ptr %i.m, align 8, !noalias !1043
  store i64 0, ptr %i.n, align 8, !noalias !1043
  %i.ab = load i64, ptr %i.e, align 8, !range !1045, !noalias !1043, !noundef !6
  %.idx.i.i.i = shl nuw nsw i64 %i.r, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1043
  store ptr %i.q, ptr %i.c, align 8, !noalias !1043
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1043
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1043
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1043
  %i.ad = icmp eq i64 %i.r, 0
  br i1 %i.ad, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.t, !noalias !1044

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.s
  %2 = phi i64 [ %3, %bb.s ], [ 0, %bb.l ]        ; 5 uses
  %i.af = phi ptr [ %i.ax, %bb.s ], [ %i.q, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1046, !noalias !1047
  %i.ah = load i64, ptr %i.af, align 8, !noalias !1048, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1048, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.s, %bb.l
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.w unwind label %bb.n, !noalias !1044

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.ae, %bb.m ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.t, !noalias !1044

bb.n:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.al = load ptr, ptr %i.m, align 8, !noalias !1043, !nonnull !6, !noundef !6
  %i.am = getelementptr [16 x i8], ptr %i.al, i64 %2
  %i.an = getelementptr i8, ptr %i.am, i64 -8     ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1044, !noundef !6 ; 2 uses
  %.not7.i.i.i = icmp ugt i64 %i.ah, %i.ao
  br i1 %.not7.i.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.d, align 8, !range !1045, !alias.scope !1049, !noalias !1043, !noundef !6
  %i.aq = icmp eq i64 %2, %i.ap
  br i1 %i.aq, label %bb.q, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs22empcGmRho_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #31
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.m, !noalias !1044

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.ar = load ptr, ptr %i.m, align 8, !alias.scope !1049, !noalias !1043, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %2 ; 2 uses
  store i64 %i.ah, ptr %i.as, align 8, !noalias !1044
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.aj, ptr %i.at, align 8, !noalias !1044
  %i.au = add i64 %2, 1                           ; 2 uses
  store i64 %i.au, ptr %i.n, align 8, !alias.scope !1049, !noalias !1043
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.av = call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.aj)
  store i64 %i.av, ptr %i.an, align 8, !noalias !1044
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !1043
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %3 = phi i64 [ %i.au, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %.pre.i.i.i, %bb.r ]
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1050, !noalias !1047, !nonnull !6, !noundef !6
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1050, !noalias !1047, !nonnull !6, !noundef !6 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, label %.lr.ph.i.i.i

bb.t:                                             ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1044
  unreachable

bb.u:                                             ; preds = %bb.k
  unreachable

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %.body.i unwind label %bb.t, !noalias !1044

bb.w:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1043
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.0.copyload, i64 %.val5.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, i64 24, i1 false), !noalias !1052
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.06.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1052
  %i.bb = add i64 %.val5.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1041
  br label %bb.b

bb.x:                                             ; preds = %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1042
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterjINtNtBK_3vec3VecTjjEEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterjINtNtBc_3vec3VecTjjEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldTjB13_ENtNtCsbNLsQi0JuJ4_5tgrep8matching7LineHituNCNvB38_19group_spans_by_line0NCINvNvB1p_8for_each4callB36_NCINvMsk_B16_IB14_B36_E14extend_trustedINtB2v_3MapB3_B3M_EE0E0E0EB3a_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1041
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1042
  call void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterjINtNtBb_3vec3VecTjjEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapNtNtNtCs5ARfLLDMQkv_5regex5regex6string7MatchesNCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_lines0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB3t_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_3ops5range14RangeInclusivejEuINtNtB4x_12control_flow11ControlFlowjENCINvNvXsi_B3t_B3G_B2A_8try_fold7flattenB4s_uB55_NCINvNvB2A_4find5checkjQNCB1K_s_0E0E0E0B55_EB1O_(ptr noalias nofree noundef align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.419.i.i.i.i = alloca [16 x i8], align 8  ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.46.0..val4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.57.0..val4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtNtCs5ARfLLDMQkv_5regex5regex6string5MatchINtNtNtBa_3ops5range14RangeInclusivejEuINtNtB1N_12control_flow11ControlFlowjENCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_lines0NCINvNvMsg_NtB6_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenB1I_uB2l_NCINvNvXsi_B3Z_B4c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1I_uB2l_NCINvNvB5q_4find5checkjQNCB2Z_s_0E0E0E0E0B33_.exit.thread15.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtNtCs5ARfLLDMQkv_5regex5regex6string5MatchINtNtNtBa_3ops5range14RangeInclusivejEuINtNtB1N_12control_flow11ControlFlowjENCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_lines0NCINvNvMsg_NtB6_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenB1I_uB2l_NCINvNvXsi_B3Z_B4c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1I_uB2l_NCINvNvB5q_4find5checkjQNCB2Z_s_0E0E0E0E0B33_.exit.thread15.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtNtCs5ARfLLDMQkv_5regex5regex6string5MatchINtNtNtBa_3ops5range14RangeInclusivejEuINtNtB1N_12control_flow11ControlFlowjENCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_lines0NCINvNvMsg_NtB6_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenB1I_uB2l_NCINvNvXsi_B3Z_B4c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1I_uB2l_NCINvNvB5q_4find5checkjQNCB2Z_s_0E0E0E0E0B33_.exit.thread15.i.backedge, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.x = load ptr, ptr %i.l, align 8, !alias.scope !1107, !noalias !1108, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.y = load i64, ptr %0, align 8, !range !5, !alias.scope !1107, !noalias !1113, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = load ptr, ptr %i.q, align 8, !nonnull !6, !align !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.p, align 8, !nonnull !6
  %.sroa.0.0.i.i.i.i.i = select i1 %i.z, ptr %i.ab, ptr %i.ac
  %.val.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !1114, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1116, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 138
  %i.ag = load i8, ptr %i.af, align 2, !range !1117, !noalias !1116, !noundef !6
  %cond.i.i.i.i.i.i = icmp eq i8 %i.ag, 2
  br i1 %cond.i.i.i.i.i.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtNtCs5ARfLLDMQkv_5regex5regex6string5MatchINtNtNtBa_3ops5range14RangeInclusivejEuINtNtB1N_12control_flow11ControlFlowjENCNvNtCsbNLsQi0JuJ4_5tgrep8matching15candidate_lines0NCINvNvMsg_NtB6_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenB1I_uB2l_NCINvNvXsi_B3Z_B4c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1I_uB2l_NCINvNvB5q_4find5checkjQNCB2Z_s_0E0E0E0E0B33_.exit.thread15.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.ah = load i64, ptr %i.r, align 8, !alias.scope !1119, !noalias !1120, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !1121 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 60
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !1121, !noundef !6
  %i.ak = and i32 %i.aj, 1
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.w

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %i.al = load i64, ptr %i.s, align 8, !alias.scope !1119, !noalias !1120, !noundef !6 ; 4 uses
  %i.am = load i64, ptr %i.t, align 8, !alias.scope !1119, !noalias !1120, !noundef !6 ; 3 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %._crit_edge.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !1121, !noundef !6
  %i.aq = and i32 %i.ap, 2
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.w

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %i.ar = load i64, ptr %.pre.i.i.i.i.i, align 8, !range !5, !noalias !1121, !noundef !6
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !1121
  %i.av = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 %i.ah) ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  br i1 %i.aw, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.o, align 8, !range !1122, !alias.scope !1119, !noalias !1120, !noundef !6
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !noalias !1121, !noundef !6
  %i.bb = and i32 %i.ba, 1
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !noalias !1121, !noundef !6
  %i.be = and i32 %i.bd, 2
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !5, !noalias !1121, !noundef !6
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %_RNvMs4_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i, label %_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RNvMs4_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !1121
  %i.bk = icmp ugt i64 %i.av, %i.bj
  br i1 %i.bk, label %bb.w, label %_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RNCNvXs6_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0CsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %_RNvMs4_NtNtCs22empcGmRho_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !1116, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1116, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !1123, !invariant.load !6, !noalias !1116
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = and i64 %i.br, -16
end_hunk_0
