Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.12?download=true
inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB2Z_uNCNvMs4_NtB1Q_10signaturesNtB4O_9Signature34partial_application_specializations_0NCINvNtB7_3map8map_foldB2Z_B1M_uNCB4I_s0_0NCIB62_B1M_TB1M_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB77_7HashSetB1M_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB3x_7collect6ExtendB1M_E6extendINtB64_3MapINtB4c_6FilterBP_B4G_EB6v_EE0NCINvNvB3t_8for_each4callB6Q_NCINvXs1i_NtB79_3mapINtBat_7HashMapB1M_uB7U_EIB8D_B6Q_E6extendIB9d_B9c_B6Y_EE0E0E0E0E0EB1S_:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs4_NtBR_10signaturesNtB4T_9Signature34partial_application_specializations_0NCINvNtB3A_3map8map_foldB20_BN_uNCB4N_s0_0NCIB66_BN_TBN_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB79_7HashSetBN_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB2w_7collect6ExtendBN_E6extendINtB68_3MapINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EB6z_EE0NCINvNvB2s_8for_each4callB6T_NCINvXs1i_NtB7b_3mapINtBaI_7HashMapBN_uB7V_EIB8E_B6T_E6extendIB9d_B9c_B70_EE0E0E0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload), "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !noalias !5389, !nonnull !27, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noalias !5389, !noundef !27
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs4_NtBR_10signaturesNtB4T_9Signature34partial_application_specializations_0NCINvNtB3A_3map8map_foldB20_BN_uNCB4N_s0_0NCIB66_BN_TBN_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB79_7HashSetBN_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB2w_7collect6ExtendBN_E6extendINtB68_3MapINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EB6z_EE0NCINvNvB2s_8for_each4callB6T_NCINvXs1i_NtB7b_3mapINtBaI_7HashMapBN_uB7V_EIB8E_B6T_E6extendIB9d_B9c_B70_EE0E0E0E0E0E0EBT_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i
  %.sroa.0.013.i = phi ptr [ %i.j, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.013.i, align 4, !range !30, !noalias !5390, !noundef !27 ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.0.013.i, i64 4
  %.val4.i = load i32, ptr %i.k, align 4, !noalias !5390, !noundef !27 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !5389, !nonnull !27, !noundef !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !5389, !nonnull !27, !noundef !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noalias !5389, !noundef !27 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.o, 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.split.i, %.backedge.i.i.i.i.i
  %i.q = phi i64 [ %.sroa.7.1.i.i.i.i, %.backedge.i.i.i.i.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.r = phi ptr [ %i.s, %.backedge.i.i.i.i.i ], [ %i.m, %.lr.ph.split.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !noalias !5391, !noundef !27 ; 2 uses
  %i.u = icmp ult i64 %i.q, %i.t
  br i1 %i.u, label %_RNCNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB9_9Signature34partial_application_specializations_00Bd_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #51, !noalias !5391
  unreachable

_RNCNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB9_9Signature34partial_application_specializations_00Bd_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !5391, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  %i.x = load i8, ptr %i.w, align 1, !range !41, !noalias !5391, !noundef !27
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.backedge.i.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %_RNCNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB9_9Signature34partial_application_specializations_00Bd_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5392
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !5393, !noalias !5394
  %i.aa = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.6.0.copyload), !noalias !5392 ; 2 uses
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = extractvalue { i32, i32 } %i.aa, 1
  %i.ad = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB8_15TypeVarInstance8identityDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.6.0.copyload), !noalias !5392 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = extractvalue { i32, i32 } %i.ad, 1
  %i.ag = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type18references_typevar(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.6.0.copyload, ptr noundef nonnull align 4 %.sroa.7.0.copyload, i32 noundef %i.ae, i32 noundef %i.af), !noalias !5392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5392
  br i1 %i.ag, label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_9Signature34partial_application_specializations_0Bb_.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.split.i.i.i.i.i, %_RNCNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB9_9Signature34partial_application_specializations_00Bd_.exit.i.i.i.i.i.i.i
  %.sroa.7.1.i.i.i.i = add nuw nsw i64 %i.q, 1
  %.not15.i.i.i.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not15.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i, label %.lr.ph.i.i.i.i.i

_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_9Signature34partial_application_specializations_0Bb_.exit.i.i.i: ; preds = %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5395
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.a, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.9.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.10.0.copyload), !noalias !5396
  %i.ah = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.a), !noalias !5395 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5395
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i: ; preds = %.backedge.i.i.i.i.i, %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_9Signature34partial_application_specializations_0Bb_.exit.i.i.i, %.lr.ph.split.i
  %i.ai = icmp eq ptr %i.j, %1
  br i1 %i.ai, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs4_NtBR_10signaturesNtB4T_9Signature34partial_application_specializations_0NCINvNtB3A_3map8map_foldB20_BN_uNCB4N_s0_0NCIB66_BN_TBN_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB79_7HashSetBN_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB2w_7collect6ExtendBN_E6extendINtB68_3MapINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EB6z_EE0NCINvNvB2s_8for_each4callB6T_NCINvXs1i_NtB7b_3mapINtBaI_7HashMapBN_uB7V_EIB8E_B6T_E6extendIB9d_B9c_B70_EE0E0E0E0E0E0EBT_.exit, label %.lr.ph.split.i, !llvm.loop !5387

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs4_NtBR_10signaturesNtB4T_9Signature34partial_application_specializations_0NCINvNtB3A_3map8map_foldB20_BN_uNCB4N_s0_0NCIB66_BN_TBN_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB79_7HashSetBN_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB2w_7collect6ExtendBN_E6extendINtB68_3MapINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EB6z_EE0NCINvNvB2s_8for_each4callB6T_NCINvXs1i_NtB7b_3mapINtBaI_7HashMapBN_uB7V_EIB8E_B6T_E6extendIB9d_B9c_B70_EE0E0E0E0E0E0EBT_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs4_NtB12_10signaturesNtB2S_9Signature34partial_application_specializations_0NCINvNtB6_3map8map_foldBY_NtB10_20BoundTypeVarIdentityuNCB2M_s0_0NCIB46_B4t_TB4t_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5y_7HashSetB4t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtB8_6traits7collect6ExtendB4t_E6extendINtB48_3MapINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4t_BY_EEB2K_EB4W_EE0NCINvNvNtNtB78_8iterator8Iterator8for_each4callB5h_NCINvXs1i_NtB5A_3mapINtBar_7HashMapB4t_uB6l_EIB74_B5h_E6extendIB7M_B7L_B5p_EE0E0E0E0E0E0B14_.exit.i, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB2Z_uNCNvMs_NtB1Q_8genericsNtB4N_14GenericContext29remove_callable_only_typevars0NCINvNtB7_3map8map_foldB2Z_TB1M_B2Z_EuNCINvB4K_33from_typevar_instances_in_programINtNtB7_8peekable8PeekableINtB4c_6FilterBP_B4G_EEE0NCINvNvB3t_8for_each4callB6l_NCINvXsb_B17_INtB17_8IndexMapB1M_B2Z_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB3x_7collect6ExtendB6l_E6extendINtB5Z_3MapB7e_B6w_EE0E0E0E0EB1S_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5409 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [28 x i8], align 4                ; 4 uses
  %i.c = alloca [36 x i8], align 4                ; 4 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs_NtBR_8genericsNtB4S_14GenericContext29remove_callable_only_typevars0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvB4P_33from_typevar_instances_in_programINtNtB3A_8peekable8PeekableINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EEE0NCINvNvB2s_8for_each4callB6q_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6q_E6extendINtB63_3MapB7i_B6A_EE0E0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.g, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.08.i, align 4, !range !30, !noalias !5410, !noundef !27 ; 3 uses
  %i.h = getelementptr i8, ptr %.sroa.0.08.i, i64 4
  %.val4.i = load i32, ptr %i.h, align 4, !noalias !5410, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5411
  store i32 %.val.i, ptr %i.d, align 4, !noalias !5412
  store i32 %.val4.i, ptr %i.f, align 4, !noalias !5412
  %i.i = call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !5412
  br i1 %i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5412
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(36) %i.c, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.6.0.copyload), !noalias !5413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false), !noalias !5413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5414
  call void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.b, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i), !noalias !5414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5412
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5411
  %i.j = icmp eq ptr %i.g, %1
  br i1 %i.j, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs_NtBR_8genericsNtB4S_14GenericContext29remove_callable_only_typevars0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvB4P_33from_typevar_instances_in_programINtNtB3A_8peekable8PeekableINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EEE0NCINvNvB2s_8for_each4callB6q_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6q_E6extendINtB63_3MapB7i_B6A_EE0E0E0E0E0EBT_.exit, label %bb.b

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMs_NtBR_8genericsNtB4S_14GenericContext29remove_callable_only_typevars0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvB4P_33from_typevar_instances_in_programINtNtB3A_8peekable8PeekableINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EEE0NCINvNvB2s_8for_each4callB6q_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6q_E6extendINtB63_3MapB7i_B6A_EE0E0E0E0E0EBT_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMs_NtB12_8genericsNtB2R_14GenericContext29remove_callable_only_typevars0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvB2O_33from_typevar_instances_in_programINtNtB6_8peekable8PeekableINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4p_BY_EEB2K_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4o_NCINvXsb_B6A_INtB6A_8IndexMapB4p_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7H_7collect6ExtendB4o_E6extendINtB43_3MapB5E_B4W_EE0E0E0E0E0B14_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB2Z_uNCNvMst_B1Q_NtB1Q_11TypeMapping32update_signature_generic_contexts_0NCINvNtB7_3map8map_foldB2Z_TB1M_B2Z_EuNCINvMs_NtB1Q_8genericsNtB6w_14GenericContext33from_typevar_instances_in_programINtB4c_6FilterBP_B4G_EE0NCINvNvB3t_8for_each4callB6d_NCINvXsb_B17_INtB17_8IndexMapB1M_B2Z_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB3x_7collect6ExtendB6d_E6extendINtB5R_3MapB7G_B6o_EE0E0E0E0EB1S_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5435 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [28 x i8], align 4                ; 4 uses
  %i.c = alloca [36 x i8], align 4                ; 4 uses
  %i.d = alloca [28 x i8], align 4                ; 11 uses
  %i.e = alloca [28 x i8], align 4                ; 11 uses
  %i.f = alloca [16 x i8], align 4                ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMst_BR_NtBR_11TypeMapping32update_signature_generic_contexts_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB6z_14GenericContext33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB6h_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6h_E6extendINtB5U_3MapB7I_B6r_EE0E0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.v, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.08.i, align 4, !range !30, !noalias !5436, !noundef !27 ; 4 uses
  %i.w = getelementptr i8, ptr %.sroa.0.08.i, i64 4
  %.val4.i = load i32, ptr %i.w, align 4, !noalias !5436, !noundef !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5437
  call void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_19ApplySpecialization3get(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.5.0.copyload, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i), !noalias !5437
  %i.x = load i32, ptr %i.f, align 4, !range !37, !noalias !5437, !noundef !27 ; 2 uses
  switch i32 %i.x, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i [
    i32 -1, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i.a
    i32 29, label %bb.c
  ]

_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i.a: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5437
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.h, align 4, !range !30, !noalias !5437, !noundef !27
  %i.z = load i32, ptr %i.i, align 4, !noalias !5437, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5437
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.e, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.5.0.copyload), !noalias !5437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5437
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.d, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.5.0.copyload), !noalias !5437
  call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  call void @llvm.experimental.noalias.scope.decl(metadata !5439)
  %i.aa = load i32, ptr %i.j, align 4, !alias.scope !5438, !noalias !5437, !noundef !27
  %i.ab = load i32, ptr %i.k, align 4, !alias.scope !5439, !noalias !5437, !noundef !27
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.m, align 4, !range !30, !alias.scope !5438, !noalias !5437, !noundef !27
  %i.ae = load i32, ptr %i.l, align 4, !range !30, !alias.scope !5439, !noalias !5437, !noundef !27
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5440)
  call void @llvm.experimental.noalias.scope.decl(metadata !5441)
  %i.ag = load i32, ptr %i.e, align 4, !range !31, !alias.scope !5442, !noalias !5437, !noundef !27 ; 2 uses
  %i.ah = load i32, ptr %i.d, align 4, !range !31, !alias.scope !5443, !noalias !5437, !noundef !27
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i32 %i.ag to i1
  %i.ak = load i32, ptr %i.n, align 4, !alias.scope !5442, !noalias !5437, !noundef !27
  %i.al = load i32, ptr %i.o, align 4, !alias.scope !5443, !noalias !5437, !noundef !27
  %i.am = icmp eq i32 %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.am, label %.split.i.i.i.i.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.am, label %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.g
  %i.an = load i32, ptr %i.q, align 4, !range !30, !alias.scope !5442, !noalias !5437, !noundef !27
  %i.ao = load i32, ptr %i.p, align 4, !range !30, !alias.scope !5443, !noalias !5437, !noundef !27
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %bb.h
  %i.aq = load i32, ptr %i.q, align 4, !range !30, !alias.scope !5442, !noalias !5437, !noundef !27
  %i.ar = load i32, ptr %i.p, align 4, !range !30, !alias.scope !5443, !noalias !5437, !noundef !27
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.i:                                             ; preds = %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i
  %i.at = load i8, ptr %i.r, align 4, !range !38, !alias.scope !5438, !noalias !5437, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 2
  %i.au = load i8, ptr %i.s, align 4, !range !38, !alias.scope !5439, !noalias !5437, !noundef !27 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not7.i.i.i.i.i = icmp eq i8 %i.at, %i.au
  br i1 %.not7.i.i.i.i.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.i.i.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.i.i.i, label %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i

_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i: ; preds = %bb.b
  %3 = icmp ne i32 %i.x, 17
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5437
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i

_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i: ; preds = %bb.k, %bb.j, %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5437
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i

_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.t, align 4, !alias.scope !5438, !noalias !5437, !noundef !27
  %i.ax = load i32, ptr %i.u, align 4, !alias.scope !5439, !noalias !5437, !noundef !27
  %i.ay = icmp eq i32 %i.aw, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5437
  br i1 %i.ay, label %bb.l, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i

bb.l:                                             ; preds = %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.i.i.i, %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5444
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(36) %i.c, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.7.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.8.0.copyload), !noalias !5445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false), !noalias !5445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5446
  call void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.b, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i), !noalias !5446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5444
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i: ; preds = %bb.l, %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.i.i.i, %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread7.i.i.i, %_RNCNvMst_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_11TypeMapping32update_signature_generic_contexts_0B9_.exit.thread5.i.i.i
  %i.az = icmp eq ptr %i.v, %1
  br i1 %i.az, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMst_BR_NtBR_11TypeMapping32update_signature_generic_contexts_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB6z_14GenericContext33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB6h_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6h_E6extendINtB5U_3MapB7I_B6r_EE0E0E0E0E0EBT_.exit, label %bb.b

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvMst_BR_NtBR_11TypeMapping32update_signature_generic_contexts_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB6z_14GenericContext33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB6h_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB6h_E6extendINtB5U_3MapB7I_B6r_EE0E0E0E0E0EBT_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvMst_B12_NtB12_11TypeMapping32update_signature_generic_contexts_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_NtB12_8genericsNtB4W_14GenericContext33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB4h_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4g_NCINvXsb_B6C_INtB6C_8IndexMapB4h_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB7I_7collect6ExtendB4g_E6extendINtB3V_3MapB66_B4O_EE0E0E0E0E0B14_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB2Z_uNCNvNvXs0_NvNvMs_NtB1Q_8genericsNtB4X_14GenericContext11remove_self1__NtB4Q_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB7_3map8map_foldB2Z_TB1M_B2Z_EuNCINvMs_B4X_B5c_33from_typevar_instances_in_programINtB4c_6FilterBP_B4G_EE0NCINvNvB3t_8for_each4callB7V_NCINvXsb_B17_INtB17_8IndexMapB1M_B2Z_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB3x_7collect6ExtendB7V_E6extendINtB7z_3MapB8V_B86_EE0E0E0E0EB1S_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5463 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [28 x i8], align 4                ; 4 uses
  %i.c = alloca [36 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvNvXs0_NvNvMs_NtBR_8genericsNtB52_14GenericContext11remove_self1__NtB4V_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_B52_B5g_33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB80_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB80_E6extendINtB7D_3MapB8Z_B8a_EE0E0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.08.i, align 4, !range !30, !noalias !5464, !noundef !27 ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.0.08.i, i64 4
  %.val4.i = load i32, ptr %i.i, align 4, !noalias !5464, !noundef !27 ; 4 uses
  %i.j = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.4.0.copyload), !noalias !5465 ; 2 uses
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = extractvalue { i32, i32 } %i.j, 1
  %i.m = call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance7is_self(i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.4.0.copyload), !noalias !5465
  br i1 %i.m, label %bb.c, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0.copyload, align 4, !noalias !5465 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !5465 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5465
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance15binding_context(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.4.0.copyload), !noalias !5465
  %i.n = load i32, ptr %i.d, align 4, !range !31, !alias.scope !5466, !noalias !5465, !noundef !27
  %i.o = icmp eq i32 %i.n, %.sroa.01.0.copyload.i.i.i.i
  br i1 %i.o, label %bb.e, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread7.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = trunc nuw i32 %.sroa.01.0.copyload.i.i.i.i to i1
  %i.q = load i32, ptr %i.f, align 4, !alias.scope !5466, !noalias !5465, !noundef !27
  %.sroa.4.8.extract.shift.i.i.i.i = lshr i64 %.sroa.5.0.copyload.i.i.i.i, 32
  %.sroa.4.8.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.4.8.extract.shift.i.i.i.i to i32
  %i.r = icmp eq i32 %i.q, %.sroa.4.8.extract.trunc.i.i.i.i ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %.split.i.i.i, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread7.i.i.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.i.i.i, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread7.i.i.i

.split.i.i.i:                                     ; preds = %bb.f
  %i.s = load i32, ptr %i.g, align 4, !range !30, !alias.scope !5466, !noalias !5465, !noundef !27
  %.sroa.4.4.extract.trunc2.i.i.i.i = trunc i64 %.sroa.5.0.copyload.i.i.i.i to i32
  %i.t = icmp eq i32 %i.s, %.sroa.4.4.extract.trunc2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  br i1 %i.t, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i

_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread7.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  br label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i

_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.i.i.i: ; preds = %bb.g
  %i.u = load i32, ptr %i.g, align 4, !range !30, !alias.scope !5466, !noalias !5465, !noundef !27
  %.sroa.4.4.extract.trunc.i.i.i.i = trunc i64 %.sroa.5.0.copyload.i.i.i.i to i32
  %i.v = icmp eq i32 %i.u, %.sroa.4.4.extract.trunc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  br i1 %i.v, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i, label %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i

_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i: ; preds = %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.i.i.i, %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread7.i.i.i, %.split.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5467
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(36) %i.c, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i, ptr noundef nonnull %.sroa.7.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.8.0.copyload), !noalias !5468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false), !noalias !5468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5469
  call void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.b, i32 noundef range(i32 1, 0) %.val.i, i32 noundef %.val4.i), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5467
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i: ; preds = %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.thread.i.i.i, %_RNCNvNvXs0_NvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtBg_14GenericContext11remove_self1__NtB9_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bk_.exit.i.i.i, %.split.i.i.i, %bb.c
  %i.w = icmp eq ptr %i.h, %1
  br i1 %i.w, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvNvXs0_NvNvMs_NtBR_8genericsNtB52_14GenericContext11remove_self1__NtB4V_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_B52_B5g_33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB80_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB80_E6extendINtB7D_3MapB8Z_B8a_EE0E0E0E0E0EBT_.exit, label %bb.b

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uNCINvNtB3A_6filter11filter_foldB20_uNCNvNvXs0_NvNvMs_NtBR_8genericsNtB52_14GenericContext11remove_self1__NtB4V_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_B52_B5g_33from_typevar_instances_in_programINtB4g_6FilterINtB3y_6CopiedB3_EB4L_EE0NCINvNvB2s_8for_each4callB80_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB80_E6extendINtB7D_3MapB8Z_B8a_EE0E0E0E0E0EBT_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNCINvNtB6_6filter11filter_foldBY_uNCNvNvXs0_NvNvMs_NtB12_8genericsNtB31_14GenericContext11remove_self1__NtB2U_32remove_self_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0NCINvNtB6_3map8map_foldBY_TNtB10_20BoundTypeVarIdentityBY_EuNCINvMs_B31_B3g_33from_typevar_instances_in_programINtB2h_6FilterINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB5Z_BY_EEB2K_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB5Y_NCINvXsb_B7R_INtB7R_8IndexMapB5Z_BY_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB8X_7collect6ExtendB5Y_E6extendINtB5D_3MapB7l_B6w_EE0E0E0E0E0B14_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB2Z_TB1M_B2Z_EuNCINvMs_NtB1Q_8genericsNtB4T_14GenericContext33from_typevar_instances_in_programINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtBb_6option4IterB58_EBP_NCINvNtNtB1Q_5class11named_tuple34synthesize_namedtuple_class_memberINtB4e_3MapINtB15_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7k_5FieldENCNvMsp_NtB7k_14static_literalNtB9K_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB9_7sources4once4OnceB2Z_EEE0NCINvNvB3t_8for_each4callB4A_NCINvXsb_B17_INtB17_8IndexMapB1M_B2Z_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB3x_7collect6ExtendB4A_E6extendIB8k_B63_B4L_EE0E0E0EB1S_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5472 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !5473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtB4i_3MapINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7F_5FieldENCNvMsp_NtB7F_14static_literalNtBa3_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendIB8E_B66_B4P_EE0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.08.i, align 4, !range !30, !noalias !5473, !noundef !27
  %i.d = getelementptr i8, ptr %.sroa.0.08.i, i64 4
  %.val4.i = load i32, ptr %i.d, align 4, !noalias !5473, !noundef !27
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceTNtB1w_20BoundTypeVarIdentityB1u_EuNCINvMs_NtB1y_8genericsNtB3o_14GenericContext33from_typevar_instances_in_programINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtBb_6option4IterB3D_EINtNtBW_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB2I_B1u_EENCINvNtNtB1y_5class11named_tuple34synthesize_namedtuple_class_memberINtBU_3MapINtB64_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB72_5FieldENCNvMsp_NtB72_14static_literalNtB9r_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtBY_7sources4once4OnceB1u_EEE0NCINvNvNtNtNtBY_6traits8iterator8Iterator8for_each4callB2H_NCINvXsb_B66_INtB66_8IndexMapB2I_B1u_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtBbu_7collect6ExtendB2H_E6extendIB82_B4y_B3g_EE0E0E0INtB7_5FnMutTuB1u_EE8call_mutB1A_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.val.i, i32 noundef %.val4.i)
  %i.e = icmp eq ptr %i.c, %1
  br i1 %i.e, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtB4i_3MapINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7F_5FieldENCNvMsp_NtB7F_14static_literalNtBa3_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendIB8E_B66_B4P_EE0E0E0E0EBT_.exit, label %.lr.ph.i

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtB4i_3MapINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7F_5FieldENCNvMsp_NtB7F_14static_literalNtBa3_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendIB8E_B66_B4P_EE0E0E0E0EBT_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB2Z_TB1M_B2Z_EuNCINvMs_NtB1Q_8genericsNtB4T_14GenericContext33from_typevar_instances_in_programINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtBb_6option4IterB58_EBP_NCINvNtNtB1Q_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB7i_15NamedTupleFieldEEE0EINtNtNtB9_7sources4once4OnceB2Z_EEE0NCINvNvB3t_8for_each4callB4A_NCINvXsb_B17_INtB17_8IndexMapB1M_B2Z_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB3x_7collect6ExtendB4A_E6extendINtB4e_3MapB63_B4L_EE0E0E0EB1S_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5476 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !5477
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB3A_6cloned6ClonedINtNtNtB2A_5slice4iter4IterNtB7D_15NamedTupleFieldEEE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendINtB4i_3MapB66_B4P_EE0E0E0E0EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.08.i, align 4, !range !30, !noalias !5477, !noundef !27
  %i.d = getelementptr i8, ptr %.sroa.0.08.i, i64 4
  %.val4.i = load i32, ptr %i.d, align 4, !noalias !5477, !noundef !27
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceTNtB1w_20BoundTypeVarIdentityB1u_EuNCINvMs_NtB1y_8genericsNtB3o_14GenericContext33from_typevar_instances_in_programINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtBb_6option4IterB3D_EINtNtBW_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB2I_B1u_EENCINvNtNtB1y_5class11named_tuple34synthesize_namedtuple_class_memberINtNtBW_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB70_15NamedTupleFieldEEE0EINtNtNtBY_7sources4once4OnceB1u_EEE0NCINvNvNtNtNtBY_6traits8iterator8Iterator8for_each4callB2H_NCINvXsb_B66_INtB66_8IndexMapB2I_B1u_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtBa0_7collect6ExtendB2H_E6extendINtBU_3MapB4y_B3g_EE0E0E0INtB7_5FnMutTuB1u_EE8call_mutB1A_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.val.i, i32 noundef %.val4.i)
  %i.e = icmp eq ptr %i.c, %1
  br i1 %i.e, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB3A_6cloned6ClonedINtNtNtB2A_5slice4iter4IterNtB7D_15NamedTupleFieldEEE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendINtB4i_3MapB66_B4P_EE0E0E0E0EBT_.exit, label %.lr.ph.i

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters6copied9copy_foldB20_uQQNCINvNtB3A_3map8map_foldB20_TBN_B20_EuNCINvMs_NtBR_8genericsNtB4X_14GenericContext33from_typevar_instances_in_programINtNtB3A_5chain5ChainINtNtB3A_7flatten7FlatMapINtNtB2A_6option4IterB5b_EINtB3y_6CopiedB3_ENCINvNtNtBR_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB3A_6cloned6ClonedINtNtNtB2A_5slice4iter4IterNtB7D_15NamedTupleFieldEEE0EINtNtNtB2y_7sources4once4OnceB20_EEE0NCINvNvB2s_8for_each4callB4F_NCINvXsb_B8_INtB8_8IndexMapBN_B20_INtNtB2A_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtB2w_7collect6ExtendB4F_E6extendINtB4i_3MapB66_B4P_EE0E0E0E0EBT_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCINvNtB7_3map12map_try_foldB2Z_NtB1O_15TypeVarInstanceB4a_INtNtBb_6option6OptionB4a_ENCINvNtNtNtNtB1Q_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B6d_NtB6d_20TypeInferenceBuilder18infer_region_scopes_0Es9_0NCNvXs_NvB3t_10advance_byINtB4L_3MapBP_B64_ENtB8L_13SpecAdvanceBy15spec_advance_by0E0B5D_EB1S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5483 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5485)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5486, !nonnull !27, !noundef !27
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !5486
  %.val.i.i.i = load ptr, ptr %2, align 8, !alias.scope !5485, !nonnull !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !5485, !nonnull !27, !align !28
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi ptr [ %.promoted.i, %bb.a ], [ %i.f, %bb.c ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB2A_3num7nonzero7NonZerojENCINvNtNtB2y_8adapters6copied13copy_try_foldB20_B3w_INtNtB2A_6option6OptionB3w_ENCINvNtB4a_3map12map_try_foldB20_NtBP_15TypeVarInstanceB3w_B4T_NCINvNtNtNtNtBR_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B6v_NtB6v_20TypeInferenceBuilder18infer_region_scopes_0Es9_0NCNvXs_NvB2s_10advance_byINtB5q_3MapINtB48_6CopiedB3_EB6m_ENtB92_13SpecAdvanceBy15spec_advance_by0E0E0B4T_EBT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !5486
  %.val9.i = load i32, ptr %i.d, align 4, !range !30, !noalias !5487, !noundef !27
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %.val10.i = load i32, ptr %i.g, align 4, !noalias !5487, !noundef !27
  %i.h = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val9.i, i32 noundef %.val10.i, ptr noundef nonnull %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val5.i.i.i), !noalias !5487 ; 0 uses
  %i.i = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB2A_3num7nonzero7NonZerojENCINvNtNtB2y_8adapters6copied13copy_try_foldB20_B3w_INtNtB2A_6option6OptionB3w_ENCINvNtB4a_3map12map_try_foldB20_NtBP_15TypeVarInstanceB3w_B4T_NCINvNtNtNtNtBR_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B6v_NtB6v_20TypeInferenceBuilder18infer_region_scopes_0Es9_0NCNvXs_NvB2s_10advance_byINtB5q_3MapINtB48_6CopiedB3_EB6m_ENtB92_13SpecAdvanceBy15spec_advance_by0E0E0B4T_EBT_.exit, label %bb.b

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB2A_3num7nonzero7NonZerojENCINvNtNtB2y_8adapters6copied13copy_try_foldB20_B3w_INtNtB2A_6option6OptionB3w_ENCINvNtB4a_3map12map_try_foldB20_NtBP_15TypeVarInstanceB3w_B4T_NCINvNtNtNtNtBR_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B6v_NtB6v_20TypeInferenceBuilder18infer_region_scopes_0Es9_0NCNvXs_NvB2s_10advance_byINtB5q_3MapINtB48_6CopiedB3_EB6m_ENtB92_13SpecAdvanceBy15spec_advance_by0E0E0B4T_EBT_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.01.0.i, %bb.b ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCINvNtB7_3map12map_try_foldB2Z_NtB1O_15TypeVarInstanceB4a_INtNtBb_6option6OptionB4a_ENCINvNtNtNtNtB1Q_5infer7builder14post_inference8function29check_legacy_typevar_defaultsNCNvMs_B6d_NtB6d_20TypeInferenceBuilder18infer_region_scope0E0NCNvXs_NvB3t_10advance_byINtB4L_3MapBP_B64_ENtB8A_13SpecAdvanceBy15spec_advance_by0E0B5D_EB1S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5493 {
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15type_expressionNtB4_20TypeInferenceBuilder48infer_parameterized_special_form_type_expression:bb.a
bb.gv:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15type_expressionNtB4_20TypeInferenceBuilder21infer_type_expression(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type14expand_eagerly(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.cl, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %.val184, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val185, ptr noundef nonnull align 4 %.val186)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val219 = load i32, ptr %i.cl, align 4, !range !49, !noundef !27 ; 2 uses
  %i.si = icmp ne i32 %.val219, 17
  call void @llvm.assume(i1 %i.si)
  %i.sj = icmp eq i32 %.val219, 5
  br i1 %i.sj, label %bb.hb, label %bb.ha

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  store i32 -1, ptr %i.cr, align 4, !alias.scope !9650
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cs, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ev, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cr), !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gu, %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.cq, ptr noundef nonnull align 8 %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %2)
  %i.sk = load i64, ptr %i.cq, align 8, !range !39, !noundef !27
  %.not154 = icmp eq i64 %i.sk, -2
  br i1 %.not154, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @416, i64 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic34add_type_expression_reference_link(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.co)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gx, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.sl, align 4, !alias.scope !9651
  store i32 4, ptr %0, align 4, !alias.scope !9651
  br label %bb.gm

bb.ha:                                            ; preds = %bb.gv
  %.val = load ptr, ptr %i.es, align 8, !nonnull !27, !noundef !27
  %.val177 = load ptr, ptr %i.et, align 8, !nonnull !27, !align !28, !noundef !27
  call void @_RNvMsH_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_10TypeIsType20from_type_expression(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val177, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.cm)
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i64 16, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.gm

bb.hd:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 -1, ptr %i.z, align 4, !alias.scope !9652
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.aa, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ev, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.z), !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.he

bb.he:                                            ; preds = %bb.aq, %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.y, ptr noundef nonnull align 8 %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %2)
  %i.sm = load i64, ptr %i.y, align 8, !range !39, !noundef !27
  %.not = icmp eq i64 %i.sm, -2
  br i1 %.not, label %bb.hj, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val212 = load i16, ptr %i.sn, align 8, !noundef !27 ; 3 uses
  %i.so = and i16 %.val212, 8
  %.not.i256 = icmp eq i16 %i.so, 0
  br i1 %.not.i256, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.sp = and i16 %.val212, 32
  %.not1.i259 = icmp eq i16 %i.sp, 0
  br i1 %.not1.i259, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.sq = and i16 %.val212, 16
  %.not2.i260 = icmp eq i16 %i.sq, 0              ; 2 uses
  %..i261 = select i1 %.not2.i260, i64 15, i64 16
  %.3.i262 = select i1 %.not2.i260, ptr @274, ptr @273
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf
  %.sroa.5.0.i257 = phi i64 [ 20, %bb.hg ], [ 22, %bb.hf ], [ %..i261, %bb.hh ]
  %.sroa.0.0.i258 = phi ptr [ @272, %bb.hg ], [ @271, %bb.hf ], [ %.3.i262, %bb.hh ]
  store ptr %.sroa.0.0.i258, ptr %i.v, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.5.0.i257, ptr %i.sr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.ep, ptr %i.u, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_15SpecialFormTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4148.0..sroa_idx, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.ss, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.4152.0..sroa_idx, align 8
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.w, ptr noundef nonnull @417, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.he, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.st, align 4, !alias.scope !9653
  store i32 4, ptr %0, align 4, !alias.scope !9653
  br label %bb.gm

bb.hk:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i32 -1, ptr %i.ap, align 4, !alias.scope !9654
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.aq, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ev, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ap), !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.x, %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ao, ptr noundef nonnull align 8 %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %2)
  %i.su = load i64, ptr %i.ao, align 8, !range !39, !noundef !27
  %.not176 = icmp eq i64 %i.su, -2
  br i1 %.not176, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.ep, ptr %i.al, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_15SpecialFormTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4144.0..sroa_idx, align 8
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.an, ptr noundef nonnull @418, ptr noundef nonnull %i.al)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.sv, align 4, !alias.scope !9655
  store i32 4, ptr %0, align 4, !alias.scope !9655
  br label %bb.gm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB4_20TypeInferenceBuilder23infer_binary_expression(ptr dead_on_unwind noalias noundef nonnull writable align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 !guid !9685 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [32 x i8], align 4                ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 6 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 6 uses
  %i.l = alloca [16 x i8], align 4                ; 6 uses
  %i.m = alloca [16 x i8], align 4                ; 12 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [16 x i8], align 4                ; 5 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [16 x i8], align 4                ; 6 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [16 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 4                ; 2 uses
  %i.v = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.9 = alloca [28 x i8], align 4            ; 12 uses
  %i.w = alloca [16 x i8], align 4                ; 4 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %.val = load i32, ptr %3, align 4               ; 2 uses
  switch i32 %.val, label %4 [
    i32 -1, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread
    i32 20, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit
  ]

4:                                                ; preds = %bb.a
  %5 = icmp ne i32 %.val, 17
  tail call void @llvm.assume(i1 %5)
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val1 = load i8, ptr %i.y, align 4
  %i.z = icmp eq i8 %.val1, 30
  br i1 %i.z, label %bb.ac, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread: ; preds = %4, %bb.a, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ab = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27 ; 7 uses
  %i.ac = load i8, ptr %i.aa, align 4, !range !42, !noundef !27
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !27, !noundef !27 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9686)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !9686, !nonnull !27, !noundef !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val2.i = load ptr, ptr %i.ag, align 8, !alias.scope !9686, !nonnull !27, !align !28, !noundef !27 ; 2 uses
  %i.ah = icmp eq i8 %i.ac, 9
  br i1 %i.ah, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread
  %i.ai = load i32, ptr %i.ab, align 8, !range !56, !noalias !9687, !noundef !27 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 6
  br i1 %i.aj, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9687
  switch i32 %i.ai, label %bb.d [
    i32 2, label %bb.e
    i32 30, label %bb.f
    i32 7, label %bb.f
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 29, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.m, align 4, !alias.scope !9688, !noalias !9689
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %bb.r

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9687
  %.val10.i = load i32, ptr %i.ae, align 8, !range !56, !noalias !9687, !noundef !27
  switch i32 %.val10.i, label %bb.h [
    i32 2, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.j
    i32 8, label %bb.j
    i32 9, label %bb.j
    i32 10, label %bb.j
    i32 29, label %bb.j
    i32 30, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.s, align 4, !alias.scope !9690, !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11: ; preds = %bb.h, %bb.i, %bb.j
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ae, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.s), !inline_history !9664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9687
  %i.ak = load i32, ptr %i.r, align 4, !range !49, !noundef !27 ; 2 uses
  %i.al = icmp ne i32 %i.ak, 17
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %i.ak, 34
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType10to_partial(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.p, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val2.i), !noalias !9691, !inline_history !9665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9687
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB4_20TypeInferenceBuilder29try_typed_dict_pep_584_dunder(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %i.p, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @429, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9687
  %i.ao = load i32, ptr %i.q, align 4, !range !37, !noalias !9687, !noundef !27
  %.not1.i = icmp eq i32 %i.ao, -1
  br i1 %.not1.i, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.q, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9687
  %.val8.i = load i32, ptr %i.ab, align 8, !range !56, !noalias !9687, !noundef !27
  switch i32 %.val8.i, label %bb.m [
    i32 2, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.o
    i32 8, label %bb.o
    i32 9, label %bb.o
    i32 10, label %bb.o
    i32 29, label %bb.o
    i32 30, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  store i32 -1, ptr %i.n, align 4, !alias.scope !9692, !noalias !9691
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit10

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9691
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit10

bb.o:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9691
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit10

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit10: ; preds = %bb.m, %bb.n, %bb.o
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.n), !noalias !9691, !inline_history !9664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9687
  %.sroa.0.0.copyload14 = load i32, ptr %i.o, align 4, !noalias !9693
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx16, i64 12, i1 false), !noalias !9693
  %.sroa.9.16..sroa_idx18 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.16..sroa_idx18, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9687
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB4_20TypeInferenceBuilder37infer_binary_expression_operand_types.exit

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !9693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9687
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB4_20TypeInferenceBuilder37infer_binary_expression_operand_types.exit

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9687
  br label %bb.l

bb.r:                                             ; preds = %bb.f, %bb.e, %bb.d
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.m), !inline_history !9664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9687
  %i.ap = load i32, ptr %i.l, align 4, !range !49, !noundef !27 ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 17
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i32 %i.ap, 34
  br i1 %i.ar, label %bb.z, label %bb.v

.critedge.i:                                      ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9687
  %.val4.i = load i32, ptr %i.ab, align 8, !range !56, !noalias !9687, !noundef !27
  switch i32 %.val4.i, label %bb.s [
    i32 2, label %bb.t
    i32 6, label %bb.u
    i32 7, label %bb.u
    i32 8, label %bb.u
    i32 9, label %bb.u
    i32 10, label %bb.u
    i32 29, label %bb.u
    i32 30, label %bb.u
  ]

bb.s:                                             ; preds = %.critedge.i
  store i32 -1, ptr %i.m, align 4, !alias.scope !9694, !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit9

bb.t:                                             ; preds = %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit9

bb.u:                                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9689
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit9

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit9: ; preds = %bb.s, %bb.t, %bb.u
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.m), !inline_history !9664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9687
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.ab, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit9, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9687
  %.val6.i = load i32, ptr %i.ae, align 8, !range !56, !noalias !9687, !noundef !27
  switch i32 %.val6.i, label %bb.w [
    i32 2, label %bb.x
    i32 6, label %bb.y
    i32 7, label %bb.y
    i32 8, label %bb.y
    i32 9, label %bb.y
    i32 10, label %bb.y
    i32 29, label %bb.y
    i32 30, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  store i32 -1, ptr %i.i, align 4, !alias.scope !9695, !noalias !9691
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !9691
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB6_20TypeInferenceBuilder37infer_binary_expression_operand_types0Bc_.exit
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_value_expression_impl:bb.a

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_named_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cl)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.d:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder18binary_expressionsNtB4_20TypeInferenceBuilder23infer_binary_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cm, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %3)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.e:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !17854
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !17854, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !17854
  store i32 -1, ptr %i.bu, align 4, !alias.scope !17855, !noalias !17854
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.co, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bu), !noalias !17856, !inline_history !17857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17854
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cq = load i8, ptr %i.cp, align 4, !range !57, !noalias !17854, !noundef !27
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_unary_expression_type(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, i8 noundef %i.cq, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.bv, ptr noundef nonnull align 8 %i.cn), !inline_history !17858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17854
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.f:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_lambda_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cr, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %3)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.g:                                             ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder19infer_if_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cs, ptr noalias noundef align 4 captures(address) dereferenceable(16) %3)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.h:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_dict_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.i:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder20infer_set_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cu, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.j:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35infer_list_comprehension_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cv, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.k:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder34infer_set_comprehension_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cw, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.l:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35infer_dict_comprehension_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cx, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.m:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder26infer_generator_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cy, ptr noalias noundef align 4 captures(address) dereferenceable(16) %3)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.n:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_await_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cz, ptr noalias noundef align 4 captures(address) dereferenceable(16) %3)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.o:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_yield_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.da)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.p:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_yield_from_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.db)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.q:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !17859
  %i.df = load ptr, ptr %i.dc, align 8, !noalias !17859, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !17859
  store i32 -1, ptr %i.bs, align 4, !alias.scope !17860, !noalias !17859
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.df, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bs), !noalias !17861, !inline_history !17862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !17859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !17859
  %i.dg = load ptr, ptr %i.dc, align 8, !noalias !17859, !nonnull !27, !noundef !27
  %.val2.i = load ptr, ptr %i.de, align 8, !noalias !17859, !nonnull !27, !noundef !27 ; 2 uses
  %i.dh = getelementptr i8, ptr %2, i64 40
  %.val3.i = load i64, ptr %i.dh, align 8, !noalias !17859, !noundef !27
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %.val2.i, i64 %.val3.i
  %.val4.i = load ptr, ptr %i.dd, align 8, !noalias !17859, !nonnull !27, !noundef !27 ; 2 uses
  %i.dj = getelementptr i8, ptr %2, i64 24
  %.val5.i = load i64, ptr %i.dj, align 8, !noalias !17859, !noundef !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17863)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val4.i, i64 %.val5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17864), !noalias !17861
  store i64 1, ptr %i.br, align 8, !alias.scope !17865, !noalias !17861
  %.sroa.080.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.dg, ptr %.sroa.080.sroa.4.0..sroa_idx, align 8, !alias.scope !17865, !noalias !17861
  %.sroa.080.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %.val2.i, ptr %.sroa.080.sroa.5.0..sroa_idx, align 8, !alias.scope !17865, !noalias !17861
  %.sroa.080.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.di, ptr %.sroa.080.sroa.6.0..sroa_idx, align 8, !alias.scope !17865, !noalias !17861
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !17865, !noalias !17861
  %i.dl = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %.val4.i, ptr %i.dl, align 8, !alias.scope !17866, !noalias !17861
  %i.dm = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %i.dk, ptr %i.dm, align 8, !alias.scope !17866, !noalias !17861
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false), !alias.scope !17866, !noalias !17861
  call fastcc void @_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB5_20TypeInferenceBuilder27infer_chained_boolean_typesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtCs6Wt4yPw39th_9itertools10tuple_impl12TupleWindowsINtNtB21_5chain5ChainINtNtNtB23_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtB25_5slice4iter4IterB4s_EETB4r_B4r_EEIB5i_NtNtB4w_5nodes5CmpOpEETB5O_RB64_ENCNvB2_24infer_compare_expression0NCB6D_s_0EBb_(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %i.br, ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !17859
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.r:                                             ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !17867
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !17867, !nonnull !27, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !17867
  store i32 -1, ptr %i.bp, align 4, !alias.scope !17868, !noalias !17867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17869)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !17869, !noalias !17870, !nonnull !27, !align !28, !noundef !27
  %i.ds = tail call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex14try_expressionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.dr, ptr noundef nonnull align 8 %i.dp), !noalias !17871, !inline_history !17736 ; 2 uses
  %i.dt = extractvalue { i32, i32 } %i.ds, 0      ; 2 uses
  %.not.i32 = icmp eq i32 %i.dt, 0
  br i1 %.not.i32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = extractvalue { i32, i32 } %i.ds, 1
  %i.dv = call noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer22infer_expression_types(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, i32 noundef range(i32 1, 0) %i.dt, i32 noundef %i.du, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bp), !noalias !17872, !inline_history !17736 ; 2 uses
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27extend_expression_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv), !noalias !17873, !inline_history !17736
  call void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv, ptr noundef nonnull align 8 %i.dp), !noalias !17874, !inline_history !17736
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder33infer_maybe_standalone_expression.exit

bb.t:                                             ; preds = %bb.r
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.dp, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bp), !noalias !17870, !inline_history !17741
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder33infer_maybe_standalone_expression.exit

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder33infer_maybe_standalone_expression.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !17867
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder26infer_call_expression_impl(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.do, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.bq, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ca), !inline_history !17875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.u:                                             ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder24infer_fstring_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.dw)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.v:                                             ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder24infer_tstring_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bw, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.dx)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.w:                                             ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.sroa.075.0.copyload = load i32, ptr %3, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17876)
  %.not.i = icmp eq i32 %.sroa.075.0.copyload, -1
  br i1 %.not.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.a

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.a: ; preds = %bb.w
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !17877
  store i32 %.sroa.075.0.copyload, ptr %i.bo, align 4, !noalias !17878
  %.sroa.6.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i8 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx77, align 4, !noalias !17878
  %.sroa.7.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7.0..sroa_idx79, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7.0..sroa_idx, i64 11, i1 false)
  call fastcc void @_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB5_20TypeInferenceBuilder25store_maybe_expected_typeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprRefEBb_(ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.dy, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !17877
  %i.dz = icmp eq i32 %.sroa.075.0.copyload, 20
  br i1 %i.dz, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit, label %4

4:                                                ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.a
  %5 = icmp ne i32 %.sroa.075.0.copyload, 17
  tail call void @llvm.assume(i1 %5)
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.a
  %6 = icmp eq i8 %.sroa.6.0.copyload, 30
  br i1 %6, label %bb.x, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread: ; preds = %bb.w, %4, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit
  %i.ea = tail call noundef i64 @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue3len(ptr noundef nonnull align 8 %i.dy), !noalias !17879, !inline_history !17746
  %i.eb = icmp ult i64 %i.ea, 4097
  br i1 %i.eb, label %bb.z, label %bb.y

bb.x:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !17877
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15type_expressionNtB4_20TypeInferenceBuilder28infer_string_type_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.dy), !noalias !17879, !inline_history !17746
  %.val2.i10 = load ptr, ptr %i.ch, align 8, !alias.scope !17876, !nonnull !27, !noundef !27
  %.val3.i11 = load ptr, ptr %i.ci, align 8, !alias.scope !17876, !nonnull !27, !align !28, !noundef !27
  %i.ec = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances6_1__NtB8_12InternedType3newDNtNtBc_2db2DbEL_NtBa_4TypeEBc_(ptr noundef nonnull %.val2.i10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i11, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bn), !noalias !17879, !inline_history !17746 ; 2 uses
  %i.ed = extractvalue { i32, i32 } %i.ec, 0
  %i.ee = extractvalue { i32, i32 } %i.ec, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 17, ptr %i.ef, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.ed, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 %i.ee, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 21, ptr %i.bw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !17877
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.y:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type14literal_string(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bw), !inline_history !17746
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.z:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_11TypeContext12is_typealias.exit.thread
  %.val.i8 = load ptr, ptr %i.ch, align 8, !alias.scope !17876, !nonnull !27, !noundef !27
  %.val1.i9 = load ptr, ptr %i.ci, align 8, !alias.scope !17876, !nonnull !27, !align !28, !noundef !27
  %i.eg = tail call { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.dy), !noalias !17879, !inline_history !17746 ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1
  call void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalReEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bw, ptr noundef nonnull %.val.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1.i9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei), !inline_history !17746
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.aa:                                            ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !17880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !17880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17881)
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !17882, !noundef !27
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ab, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !noalias !17882, !nonnull !27, !noundef !27
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !17882, !noundef !27
  br label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit.i

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit.i: ; preds = %bb.ab, %bb.aa
  %.sroa.6.0.i.i = phi i64 [ %i.ep, %bb.ab ], [ 1, %bb.aa ]
  %.sroa.0.0.i.i = phi ptr [ %i.en, %bb.ab ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.6.0.i.i
  store ptr %.sroa.0.0.i.i, ptr %i.bl, align 8, !alias.scope !17881, !noalias !17880
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.eq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !17881, !noalias !17880
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !17881, !noalias !17880
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !17881, !noalias !17880
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1y_6copied6CopiedIB2q_hEENCNvMs15_B2S_NtB2S_17BytesLiteralValue5bytes0EE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bl), !noalias !17880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !17880
  %i.er = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !noalias !17880, !nonnull !27, !noundef !27
  %i.et = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !noalias !17880, !noundef !27
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13bytes_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bw, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.eu)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.bm) #54
          to label %common.resume unwind label %bb.ai, !noalias !17880

bb.ad:                                            ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.ag unwind label %bb.ae, !noalias !17880

bb.ae:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.bm, align 8, !alias.scope !17883, !noalias !17880 ; 2 uses
  %i.ex = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ex, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val3.i.i = load ptr, ptr %i.er, align 8, !alias.scope !17884, !noalias !17880, !nonnull !27, !noundef !27
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17885
  br label %common.resume

bb.ag:                                            ; preds = %bb.ad
  %.val.i.i = load i64, ptr %i.bm, align 8, !alias.scope !17883, !noalias !17880 ; 2 uses
  %i.ey = icmp eq i64 %.val.i.i, 0
  br i1 %i.ey, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder30infer_bytes_literal_expression.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i = load ptr, ptr %i.er, align 8, !alias.scope !17884, !noalias !17880, !nonnull !27, !noundef !27
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17886
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder30infer_bytes_literal_expression.exit

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit65, %bb.bi, %bb.ac, %bb.ae, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.hp, %bb.bi ], [ %i.ev, %bb.ac ], [ %i.ew, %bb.ae ], [ %i.ew, %bb.af ], [ %.pn23.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit65 ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.ac
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !17880
  unreachable

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder30infer_bytes_literal_expression.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !17880
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.aj:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val2.i14 = load ptr, ptr %i.fb, align 8, !noalias !17887, !nonnull !27, !align !29, !noundef !27 ; 3 uses
  %i.fc = load i64, ptr %i.fa, align 8, !range !36, !noalias !17887, !noundef !27
  switch i64 %i.fc, label %default.unreachable131 [
    i64 0, label %bb.ak
    i64 1, label %bb.al
    i64 2, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !17887, !noundef !27
  %.not.i15 = icmp eq ptr %i.fe, null
  br i1 %.not.i15, label %bb.an, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bw, i8 noundef 7, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val2.i14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1009)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.am:                                            ; preds = %bb.aj
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bw, i8 noundef 8, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val2.i14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1010)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.an:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !17887, !noundef !27 ; 2 uses
  %i.fh = icmp slt i64 %i.fg, 0
  br i1 %i.fh, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bw, i64 noundef %i.fg)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.ap:                                            ; preds = %bb.an, %bb.ak
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bw, i8 noundef 6, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val2.i14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.aq:                                            ; preds = %bb.a
  %i.fi = getelementptr i8, ptr %2, i64 16
  %.val5 = load i8, ptr %i.fi, align 8, !range !41, !noundef !27
  %i.fj = trunc nuw i8 %.val5 to i1
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12bool_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bw, i1 noundef zeroext %i.fj)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.ar:                                            ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val2 = load ptr, ptr %i.fk, align 8, !nonnull !27, !align !29, !noundef !27
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bw, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val2)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.as:                                            ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val2.i18 = load ptr, ptr %i.fl, align 8, !alias.scope !17888, !nonnull !27, !align !29, !noundef !27
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bw, i8 noundef 50, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val2.i18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1018)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.at:                                            ; preds = %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder26infer_attribute_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.bz, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.fm)
  %.sroa.071.0.copyload = load i32, ptr %3, align 4 ; 2 uses
  %.not.i19 = icmp eq i32 %.sroa.071.0.copyload, -1
  br i1 %.not.i19, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !17889
  store i32 %.sroa.071.0.copyload, ptr %i.bk, align 4, !noalias !17890
  %.sroa.573.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.573.0..sroa_idx74, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.573.0..sroa_idx, i64 12, i1 false)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder37specialize_generic_class_from_context(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bw, ptr noundef nonnull readonly align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bz, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !17889
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.bz, i64 16, i1 false)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder31infer_number_literal_expression.exit

bb.aw:                                            ; preds = %bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 4, !range !57, !noalias !17891, !noundef !27
  switch i8 %i.fp, label %default.unreachable131 [
    i8 0, label %bb.ax
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.ba
end_hunk_2
