Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENCNvMs8_NtNtB1v_9validator9operatorsINtB2v_21OperatorValidatorTempNtNtB2x_4core18ValidatorResourcesE28check_func_type_same_resultss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB5F_3vecINtB6m_3VecB5B_E14extend_trustedBN_E0E0ECsefoF4u9kbII_5wasmi:bb.a

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1323
  store ptr %i.i, ptr %i.b, align 8, !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  store ptr %i.b, ptr %i.a, align 8, !noalias !1324
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeNtB6_7Display3fmtCsefoF4u9kbII_5wasmi, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1324
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !noalias !1325

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1323
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1326
  %i.k = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1323
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs8_NtNtBY_9validator9operatorsINtB3Z_21OperatorValidatorTempNtNtB41_4core18ValidatorResourcesE28check_func_type_same_resultss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtB3i_3vecINtB6C_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3R_EE0E0E0ECsefoF4u9kbII_5wasmi.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1325
  resume { ptr, i32 } %i.n

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs8_NtNtBY_9validator9operatorsINtB3Z_21OperatorValidatorTempNtNtB41_4core18ValidatorResourcesE28check_func_type_same_resultss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtB3i_3vecINtB6C_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3R_EE0E0E0ECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.k, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1325
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB2z_4func2ty8FuncTypeINtB2v_14FromWasmparserRNtB1p_8FuncTypeE15from_wasmparser18extract_value_typeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4N_8for_each4callNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6H_3VecB5Q_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke noundef range(i8 0, 7) i8 @_RNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtBb_4func2ty8FuncTypeINtB7_14FromWasmparserRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8FuncTypeE15from_wasmparser18extract_value_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !1335

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.g, ptr %i.h, align 1, !noalias !1336
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1335
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1335
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported4Func0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB32_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_BN_IBO_BX_NcNtB2G_5Table0EEIBO_BX_NcNtB2G_6Memory0EEIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_4Func0QQQNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_B3H_EIB5E_BI_NcNtB3r_5Table0EEIB5E_BI_NcNtB3r_6Memory0EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported5Table0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNvB33_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_IBO_BX_NcNtB2G_4Func0EBN_EIBO_BX_NcNtB2G_6Memory0EEIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_5Table0QQNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_NcNtB3r_4Func0EIB5E_BI_B3H_EEIB5E_BI_NcNtB3r_6Memory0EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported6Global0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB47_E14extend_trustedINtNtB8_5chain5ChainIB4V_IB4V_IBO_BX_NcNtB2G_4Func0EIBO_BX_NcNtB2G_5Table0EEIBO_BX_NcNtB2G_6Memory0EEBN_EE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_6Global0NCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB58_IB58_INtB2U_3MapBI_NcNtB3r_4Func0EIB5D_BI_NcNtB3r_5Table0EEIB5D_BI_NcNtB3r_6Memory0EEIB5D_BI_B3H_EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported6Memory0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB34_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_IBO_BX_NcNtB2G_4Func0EIBO_BX_NcNtB2G_5Table0EEBN_EIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_6Memory0QNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_NcNtB3r_4Func0EIB5E_BI_NcNtB3r_5Table0EEIB5E_BI_B3H_EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerolENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !24, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !range !25, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  store i32 %.val, ptr %i.a, align 4, !noalias !1340
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1340
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !24, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !range !25, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1344
  store i32 %.val, ptr %i.a, align 4, !noalias !1344
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1344
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !12, !noundef !7
  %.val = load i64, ptr %i.b, align 8, !range !26, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1348
  store i64 %.val, ptr %i.a, align 8, !noalias !1348
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1348
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !12, !noundef !7
  %.val = load i64, ptr %i.b, align 8, !range !26, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1352
  store i64 %.val, ptr %i.a, align 8, !noalias !1352
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1352
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i1, i8 } @_RINvXsh_NtCs6kx5fqqPdgs_8wasmi_ir6decodehNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1356, !noalias !1357, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 1, !noalias !1356
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %0, align 8, !alias.scope !1356, !noalias !1357
  %i.c = insertvalue { i1, i8 } { i1 false, i8 undef }, i8 %.sroa.0.0.copyload, 1
  ret { i1, i8 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i32 512, -65023) i32 @_RINvXsi_NtCs6kx5fqqPdgs_8wasmi_ir6decodetNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1361, !noalias !1362, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !noalias !1361
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.b, ptr %0, align 8, !alias.scope !1361, !noalias !1362
  %.sroa.4.0.insert.ext = zext i16 %.sroa.0.0.copyload to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, 512
  ret i32 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1366, !noalias !1367, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1366
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1366, !noalias !1367
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1371, !noalias !1372, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1, !noalias !1371
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1371, !noalias !1372
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeRShECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call noundef i8 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir6decodeRShNtB5_7Decoder10read_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef 8) ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.copyload, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsl_NtCs6kx5fqqPdgs_8wasmi_ir6decodeoNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 1), (16, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1376, !noalias !1377, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i128, ptr %i.a, align 1, !noalias !1376
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %1, align 8, !alias.scope !1376, !noalias !1377
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.0.0.copyload, ptr %i.c, align 16
  store i8 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1381, !noalias !1382, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1, !noalias !1381
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1381, !noalias !1382
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i1, i8 } @_RINvXsn_NtCs6kx5fqqPdgs_8wasmi_ir6decodeaNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1386, !noalias !1387, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 1, !noalias !1386
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %0, align 8, !alias.scope !1386, !noalias !1387
  %i.c = insertvalue { i1, i8 } { i1 false, i8 undef }, i8 %.sroa.0.0.copyload, 1
  ret { i1, i8 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i32 512, -65023) i32 @_RINvXso_NtCs6kx5fqqPdgs_8wasmi_ir6decodesNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1391, !noalias !1392, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !noalias !1391
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.b, ptr %0, align 8, !alias.scope !1391, !noalias !1392
  %.sroa.4.0.insert.ext = zext i16 %.sroa.0.0.copyload to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, 512
  ret i32 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1396, !noalias !1397, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1396
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1396, !noalias !1397
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294966782) i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeRShECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = call noundef i8 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir6decodeRShNtB5_7Decoder10read_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = zext i32 %.sroa.05.0.copyload to i64
  %i.d = shl nuw i64 %i.c, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.41.0 = phi i64 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %.sroa.3.0.insert.ext = zext nneg i8 %i.b to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1401, !noalias !1402, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1, !noalias !1401
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1401, !noalias !1402
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1406, !noalias !1407, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1406
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1406, !noalias !1407
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1411, !noalias !1412, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload4 = load double, ptr %i.a, align 1, !noalias !1411
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1411, !noalias !1412
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0.0.copyload4, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack3pop0Bh_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #42
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.b, align 8, !alias.scope !1417, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val)
          to label %bb.d unwind label %.body, !noalias !1418, !inline_history !0

.body:                                            ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1418, !inline_history !1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1418, !inline_history !1
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i8 0, 13) i8 @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error12as_trap_code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !1421, !noundef !7 ; 3 uses
  %i.c = icmp ne i8 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %i.b, -6
  %i.e = icmp samesign ugt i8 %i.b, 5
  %narrow.i = select i1 %i.e, i8 %i.d, i8 9
  switch i8 %narrow.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i8 0, label %bb.b
    i8 5, label %bb.f
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !27, !alias.scope !1421, !noundef !7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !1422, !alias.scope !1421, !noundef !7
  switch i64 %i.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1423, !alias.scope !1421, !noundef !7
  %switch.tableidx = add nsw i64 %i.k, -4         ; 3 uses
  %i.l = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !17, !alias.scope !1421, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i64 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 2824645422285571, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.01.0.i = phi i8 [ %i.g, %bb.b ], [ 10, %bb.c ], [ 2, %bb.g ], [ 10, %bb.a ], [ 10, %bb.e ], [ %switch.masked, %switch.lookup ]
  br label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  br label %bb.f

_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit: ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %.sroa.01.0.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1426
  %i.a = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !1426 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap11alloc_funcs(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.loopexit10:                                      ; preds = %.lr.ph, %.preheader
  %i.d = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit10
  %i.f = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i11 = icmp eq i8 %i.f, 0
  br i1 %.not.i11, label %.loopexit10, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.g = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.loopexit10, label %.lr.ph

_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit: ; preds = %.loopexit10, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8, !noalias !1441 ; 5 uses
  %i.j = add i64 %i.i, %1                         ; 5 uses
  %i.k = icmp uge i64 %i.j, %i.i
  %i.l = icmp ult i64 %i.j, 100000001
  %narrow.i = and i1 %i.k, %i.l
  br i1 %narrow.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d
end_hunk_0
