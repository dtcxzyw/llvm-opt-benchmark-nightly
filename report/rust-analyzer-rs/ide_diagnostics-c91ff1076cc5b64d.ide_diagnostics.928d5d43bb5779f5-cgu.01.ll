inline.NumInlined: 1354
inline.NumDeleted: 910
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENCINvNtNtB1x_14syntax_factory12constructors14iterator_inputB1r_AB1r_B2k_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callTB1r_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEENCINvNvNtB3F_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1r_EIB6L_B4J_EEB4E_E0E0ECscA5P7HRgTCP_15ide_diagnostics:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2134
  store i64 %i.n, ptr %i.a, align 8, !noalias !2137
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2137
  store ptr %i.j, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2137
  invoke void @_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE10extend_oneCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.us.i unwind label %.split9.us.i, !noalias !2118

.noexc.us.i:                                      ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2134
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldBT_TBT_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB11_11syntax_node12RustLanguageEEuNCINvNtNtBZ_14syntax_factory12constructors14iterator_inputBT_ABT_B1M_E0NCINvNvB1Q_8for_each4callB3d_NCINvNvNtB1U_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecBT_EIB6W_B3h_EEB3d_E0E0E0ECscA5P7HRgTCP_15ide_diagnostics.exit

.split9.us.i:                                     ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.us.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.m, label %.split.us.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.lr.ph.i, !prof !2117

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.lr.ph.i: ; preds = %.lr.ph.i.split.i
  %i.q = load i64, ptr %i.c, align 8, !range !2112, !alias.scope !2118, !noalias !2128, !noundef !19
  %i.r = add nuw i32 %i.l, 1
  store i32 %i.r, ptr %i.k, align 4, !noalias !2131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2134
  store i64 %i.q, ptr %i.a, align 8, !noalias !2137
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2137
  store ptr %i.j, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2137
  invoke void @_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE10extend_oneCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i unwind label %.split9.i, !noalias !2118

bb.b:                                             ; preds = %.split.us.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load i32, ptr %i.k, align 4, !noalias !2131, !noundef !19
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.k, align 4, !noalias !2131
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.j) #27
          to label %.body.i unwind label %bb.c, !noalias !2131

.split.us.i:                                      ; preds = %.lr.ph.i.split.i, %.lr.ph.i.split.us.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #28
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.b, !noalias !2131

.noexc3.i.i.i.i.i.i:                              ; preds = %.split.us.i
  unreachable

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2131
  unreachable

.noexc.i:                                         ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.lr.ph.i
  unreachable

.split9.i:                                        ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB37_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB25_11syntax_node12RustLanguageEEuNCINvNtNtB23_14syntax_factory12constructors14iterator_inputB1X_AB1X_j1_E0NCINvNvNtNtNtB4k_6traits8iterator8Iterator8for_each4callB4U_NCINvNvNtB7C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1X_EIB9b_B4Z_EEB4U_E0E0E0E0B3s_E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.lr.ph.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.split9.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, %bb.b, %.split9.us.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.b ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i ], [ %i.x, %.split9.i ], [ %i.p, %.split9.us.i ]
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEj1_NtB4_11PartialDrop12partial_dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1, i64 noundef %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_EECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.d

bb.d:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_EECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldBT_TBT_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB11_11syntax_node12RustLanguageEEuNCINvNtNtBZ_14syntax_factory12constructors14iterator_inputBT_ABT_B1M_E0NCINvNvB1Q_8for_each4callB3d_NCINvNvNtB1U_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecBT_EIB6W_B3h_EEB3d_E0E0E0ECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %.noexc.us.i
  %i.z = phi i64 [ 1, %.noexc.us.i ], [ %i.d, %bb.a ] ; 2 uses
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEj1_NtB4_11PartialDrop12partial_dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.z, i64 noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj0_ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB1H_7HashSetB1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB1r_E6extendAB1r_B1u_E0ENtNtB3h_8iterator8Iterator4folduNCINvNvB46_8for_each4callTB1r_uENCINvXs1i_NtB1J_3mapINtB5i_7HashMapB1r_uB2u_EIB3d_B51_E6extendBN_E0E0ECscA5P7HRgTCP_15ide_diagnostics(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeENCINvMs1x_B1p_B1n_9new_tupleRINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNCINvMsk_B2j_IB2h_B3Y_E14extend_trustedINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB3Y_Kj9_EBN_EE0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !1232, !noundef !19 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1m_8adapters3map8map_foldRBQ_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyuNCINvMs1x_BS_BQ_9new_tupleRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBQ_EE0NCINvNvB1g_8for_each4callB2E_NCINvMsk_B3T_IB3R_B2E_E14extend_trustedINtNtB28_5chain5ChainINtNtNtBb_5array4iter8IntoIterB2E_Kj9_EINtB26_3MapBF_B3p_EEE0E0E0ECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.t, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %i.o = load i32, ptr %i.h, align 4, !range !861, !noalias !2144, !noundef !19
  %.not.i.i.i = icmp eq i32 %i.o, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !2144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2144
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !2148
  invoke void @_RNvMs1t_Cs8Xq8PKFYOms_3hirNtB6_11TypeOwnerId10must_unify(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc.i unwind label %bb.g, !noalias !2149

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2144
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.q, i64 12, i1 false), !noalias !2148
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !2150, !noalias !2148, !nonnull !19, !noundef !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.r, ptr %i.s, align 8, !noalias !2151
  %i.t = add i64 %.val10.i, 1                     ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.m
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1m_8adapters3map8map_foldRBQ_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyuNCINvMs1x_BS_BQ_9new_tupleRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBQ_EE0NCINvNvB1g_8for_each4callB2E_NCINvMsk_B3T_IB3R_B2E_E14extend_trustedINtNtB28_5chain5ChainINtNtNtBb_5array4iter8IntoIterB2E_Kj9_EINtB26_3MapBF_B3p_EEE0E0E0ECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2149
  resume { ptr, i32 } %i.w

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1m_8adapters3map8map_foldRBQ_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyuNCINvMs1x_BS_BQ_9new_tupleRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBQ_EE0NCINvNvB1g_8for_each4callB2E_NCINvMsk_B3T_IB3R_B2E_E14extend_trustedINtNtB28_5chain5ChainINtNtNtBb_5array4iter8IntoIterB2E_Kj9_EINtB26_3MapBF_B3p_EEE0E0E0ECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.t, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2149
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENCNCNCINvNtNtB1p_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB3s_8try_folduNCINvNvB3s_12try_for_each4callNtB1p_4TypeINtNtNtBc_3ops12control_flow11ControlFlowB6d_ENcNtB6o_5Break0E0B6o_E0IB6p_B6o_EECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i = alloca [12 x i8], align 4        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2161, !noalias !2156, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2161, !noalias !2156 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i, %i.e
  br i1 %i.f, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1k_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtBL_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB3k_B37_EENCNCNCINvNtNtBL_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB2a_INtB2a_12GenericShuntINtB28_3MapB3_B49_EIB2M_NtNtBa_7convert10InfallibleEEB1e_8try_folduNCINvNvB1e_12try_for_each4callB37_B3Y_NcNtB3Y_5Break0E0B3Y_E0E0B3j_ECscA5P7HRgTCP_15ide_diagnostics.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !2164, !nonnull !19, !align !35, !noundef !19 ; 3 uses
  %.val1.i.i = load ptr, ptr %i.h, align 8, !noalias !2164 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.05.028.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i, %bb.e ]
  %i.l = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !2161, !noalias !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2164
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  call void @_RNvMs1f_Cs8Xq8PKFYOms_3hirNtB6_9TypeParam7default(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4), !noalias !2171
  %i.n = load i32, ptr %i.i, align 8, !noalias !2164 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2172
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !2174, !noalias !2177, !nonnull !19, !noundef !19
  %i.p = load ptr, ptr %i.k, align 8, !alias.scope !2174, !noalias !2177, !nonnull !19, !noundef !19 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !2174, !noalias !2177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !2179
  %.pr.i.i.i = load i32, ptr %i.i, align 8, !alias.scope !2168, !noalias !2180 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.pr.i.i.i, -1
  br i1 %.not1.i.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i, label %bb.d, !prof !2181

bb.d:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !2172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2172
  call void @_RNvMs1f_Cs8Xq8PKFYOms_3hirNtB6_9TypeParam2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4), !noalias !2182
  %i.s = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type16could_unify_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !2172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2172
  br i1 %i.s, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.thread.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %bb.c
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29, !noalias !2172
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.thread.i: ; preds = %bb.d
  store i8 1, ptr %3, align 1, !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2164
  br label %.loopexit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.4.0.copyload6.i.i = phi i32 [ %i.n, %bb.b ], [ %.pr.i.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !2164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx3.i.i, i64 12, i1 false), !noalias !2187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2164
  %.not.i.i = icmp eq i32 %.sroa.4.0.copyload6.i.i, -2
  br i1 %.not.i.i, label %bb.e, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.thread.i
  %.sroa.4.0.copyload5.i18.i = phi i32 [ -1, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.thread.i ], [ %.sroa.4.0.copyload6.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i ]
  %.sroa.05.117.i = phi i64 [ %.sroa.05.028.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.thread.i ], [ %.sroa.0.0.copyload.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i ]
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.510.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !noalias !2159
  store i64 %.sroa.05.117.i, ptr %0, align 8, !alias.scope !2188, !noalias !2159
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1k_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtBL_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB3k_B37_EENCNCNCINvNtNtBL_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB2a_INtB2a_12GenericShuntINtB28_3MapB3_B49_EIB2M_NtNtBa_7convert10InfallibleEEB1e_8try_folduNCINvNvB1e_12try_for_each4callB37_B3Y_NcNtB3Y_5Break0E0B3Y_E0E0B3j_ECscA5P7HRgTCP_15ide_diagnostics.exit

bb.e:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtCs8Xq8PKFYOms_3hir9TypeParamINtNtBa_6option6OptionNtB12_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB24_B1Q_EENCNCNCINvNtNtB12_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EIB1v_NtNtBa_7convert10InfallibleEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB1Q_B2I_NcNtB2I_5Break0E0B2I_E0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.t = icmp eq ptr %i.m, %i.e
  br i1 %i.t, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1k_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtBL_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB3k_B37_EENCNCNCINvNtNtBL_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB2a_INtB2a_12GenericShuntINtB28_3MapB3_B49_EIB2M_NtNtBa_7convert10InfallibleEEB1e_8try_folduNCINvNvB1e_12try_for_each4callB37_B3Y_NcNtB3Y_5Break0E0B3Y_E0E0B3j_ECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.b

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1k_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtBL_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowIB3k_B37_EENCNCNCINvNtNtBL_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00NCINvXB2a_INtB2a_12GenericShuntINtB28_3MapB3_B49_EIB2M_NtNtBa_7convert10InfallibleEEB1e_8try_folduNCINvNvB1e_12try_for_each4callB37_B3Y_NcNtB3Y_5Break0E0B3Y_E0E0B3j_ECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %.sink = phi i32 [ %.sroa.4.0.copyload5.i18.i, %.loopexit.i ], [ -2, %bb.a ], [ -2, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.u, align 8, !alias.scope !2156, !noalias !2159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_module5fixes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtNtCs6oosyzwIepl_6ide_db7assists6AssistNCINvMsk_NtB1r_3vecINtB53_3VecB4g_E14extend_trustedBN_E0E0EB28_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [96 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.p = icmp eq ptr %i.l, %i.n
  br i1 %i.p, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCs6oosyzwIepl_6ide_db7assists6AssistuNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_module5fixes0NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB5k_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3w_EE0E0E0EB3E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %bb.d

bb.c:                                             ; preds = %_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_module5fixes0B7_.exit.i.i, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.ag, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bp, %bb.ag ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bq, %bb.ag ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2195
  store ptr %i.ac, ptr %i.j, align 8, !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2199
  store ptr %i.j, ptr %i.h, align 8, !noalias !2199
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2199
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @14, ptr noundef nonnull %i.h)
          to label %.noexc.i unwind label %bb.c, !noalias !2192

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2199
  %i.ad = load ptr, ptr %i.u, align 8, !noalias !2199, !nonnull !19, !noundef !19
  %i.ae = load i64, ptr %i.v, align 8, !noalias !2199, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.01.0.copyload, i64 12, i1 false), !noalias !2204
  %i.af = invoke { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @15)
          to label %bb.i unwind label %bb.h, !noalias !2204 ; 2 uses

bb.e:                                             ; preds = %bb.ad, %bb.y, %bb.m, %bb.h
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.m ], [ %lpad.phi23.i, %bb.ad ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.y ], [ %i.ai, %bb.h ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.f, !noalias !2204

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body16.i unwind label %bb.g, !noalias !2204

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2204
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ah unwind label %bb.ae, !noalias !2192

bb.h:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.i, %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.i:                                             ; preds = %.noexc.i
  %i.aj = extractvalue { i32, i32 } %i.af, 0
  %i.ak = extractvalue { i32, i32 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2199
  %i.al = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECscA5P7HRgTCP_15ide_diagnostics(i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @16)
          to label %bb.j unwind label %bb.h, !noalias !2204

bb.j:                                             ; preds = %bb.i
  %i.am = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.al)
          to label %bb.k unwind label %bb.h, !noalias !2204

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2199
  %i.an = load ptr, ptr %i.j, align 8, !noalias !2199, !nonnull !19, !align !35, !noundef !19
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.l unwind label %bb.h, !noalias !2204

bb.l:                                             ; preds = %bb.k
  store i32 %i.am, ptr %i.w, align 8, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2199
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %.loopexit.i, !noalias !2204

.loopexit.i:                                      ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs13anchored_path15AnchoredPathBufECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #25
          to label %bb.e unwind label %bb.ae, !noalias !2204

bb.n:                                             ; preds = %bb.l
  %i.ao = load i64, ptr %i.b, align 8, !range !36, !noalias !2199, !noundef !19
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.x, align 8, !range !2205, !noalias !2199, !noundef !19 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !1596

bb.o:                                             ; preds = %bb.n
  %i.ar = load i64, ptr %i.y, align 8, !noalias !2199
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ar) #28
          to label %bb.af unwind label %.loopexit.split-lp.i, !noalias !2204

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.y, align 8, !noalias !2199, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !2199
  store i64 %i.aq, ptr %i.aa, align 8, !noalias !2199
  store ptr %i.as, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !2199
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !2199
  store i64 -9223372036854775808, ptr %i.f, align 8, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2199
  invoke void @_RNvXs7_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_12SourceChangeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_14FileSystemEditE4from(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.q unwind label %bb.h, !noalias !2204

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.at = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !2204, !nonnull !19, !noundef !19 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.av = load i8, ptr %i.au, align 4, !range !451, !noalias !2204, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.r, !prof !1596

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !noalias !2204, !noundef !19
  br label %.noexc.i.i.i

bb.s:                                             ; preds = %bb.q
end_hunk_0
