Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.06?download=true
inline.NumInlined: 267
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_IBP_INtNtBb_6option8IntoIterRSReEB1c_EB1c_EB1c_EB1c_ENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNvMsg_NtB7_7flattenINtB2O_13FlattenCompatppE9iter_fold7flattenB1A_jINvNvXsi_B2O_B31_B1Z_5count5countINtNtNtBb_5slice4iter4IterB1C_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic:bb.a
_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterRSReEB18_EB18_EB18_ENtNtNtB9_6traits8iterator8Iterator4foldjQNCINvNvMsg_NtB7_7flattenINtB2G_13FlattenCompatppE9iter_fold7flattenB1w_jINvNvXsi_B2G_B2T_B1Q_5count5countINtNtNtBb_5slice4iter4IterB1y_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.g, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterRSReEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldjQQNCINvNvMsg_NtB7_7flattenINtB2y_13FlattenCompatppE9iter_fold7flattenB1s_jINvNvXsi_B2y_B2L_B1H_5count5countINtNtNtBb_5slice4iter4IterB1u_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit.i, %bb.a
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %spec.select.i.i, %bb.g ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterRSReEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldjQQNCINvNvMsg_NtB7_7flattenINtB2y_13FlattenCompatppE9iter_fold7flattenB1s_jINvNvXsi_B2y_B2L_B1H_5count5countINtNtNtBb_5slice4iter4IterB1u_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit.i ] ; 2 uses
  %i.o = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterRSReEB18_EB18_EB18_ENtNtNtB9_6traits8iterator8Iterator4foldjQNCINvNvMsg_NtB7_7flattenINtB2G_13FlattenCompatppE9iter_fold7flattenB1w_jINvNvXsi_B2G_B2T_B1Q_5count5countINtNtNtBb_5slice4iter4IterB1y_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !align !7, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, null
  %i.v = select i1 %i.u, i64 0, i64 %i.t
  %spec.select.i = add i64 %i.v, %.sroa.0.0
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterRSReEB18_EB18_EB18_ENtNtNtB9_6traits8iterator8Iterator4foldjQNCINvNvMsg_NtB7_7flattenINtB2G_13FlattenCompatppE9iter_fold7flattenB1w_jINvNvXsi_B2G_B2T_B1Q_5count5countINtNtNtBb_5slice4iter4IterB1y_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit, %bb.h
  %.sroa.05.0 = phi i64 [ %spec.select.i, %bb.h ], [ %.sroa.0.0, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterRSReEB18_EB18_EB18_ENtNtNtB9_6traits8iterator8Iterator4foldjQNCINvNvMsg_NtB7_7flattenINtB2G_13FlattenCompatppE9iter_fold7flattenB1w_jINvNvXsi_B2G_B2T_B1Q_5count5countINtNtNtBb_5slice4iter4IterB1y_EEE0ECs7bpTdHNYxeX_20ruff_python_semantic.exit ]
  ret i64 %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvMB1I_B1G_6as_strEINtNtB7_6copied6CopiedIB1h_ReEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callB32_NCINvMsj_NtB1K_3vecINtB4n_3VecB32_E14extend_trustedBO_E0E0ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvMB1p_B1n_6as_strENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2i_8for_each4callReNCINvMsj_NtB1r_3vecINtB3x_3VecB3m_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB8_6copied6CopiedIBY_B3m_EEEE0E0ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub nuw i64 %i.i, %i.j                   ; 3 uses
  %i.l = lshr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp eq i64 %i.k, 16
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 1152921504606846974
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %i.n = phi i64 [ %.sroa.4.0.copyload, %.new ], [ %i.y, %bb.f ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %.new ], [ %i.z, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.01.0.i.i ; 2 uses
  %.val16.i.i = load ptr, ptr %i.o, align 8, !noalias !30, !nonnull !4, !noundef !4
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val17.i.i = load i64, ptr %i.p, align 8, !noalias !30, !noundef !4
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload, i64 %i.n ; 2 uses
  store ptr %.val16.i.i, ptr %i.q, align 8, !noalias !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.val17.i.i, ptr %i.r, align 8, !noalias !32
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.01.0.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val16.i.i.1 = load ptr, ptr %i.t, align 8, !noalias !30, !nonnull !4, !noundef !4
  %i.u = getelementptr i8, ptr %i.s, i64 24
  %.val17.i.i.1 = load i64, ptr %i.u, align 8, !noalias !30, !noundef !4
  %i.v = getelementptr [16 x i8], ptr %.sroa.5.0.copyload, i64 %i.n ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store ptr %.val16.i.i.1, ptr %i.w, align 8, !noalias !31
  %i.x = getelementptr i8, ptr %i.v, i64 24
  store i64 %.val17.i.i.1, ptr %i.x, align 8, !noalias !32
  %i.y = add i64 %i.n, 2                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.aa, align 8, !noundef !4
  store i64 %.val6, ptr %.val, align 8
  br label %bb.h

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %i.ab = and i64 %i.k, 16
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.e ], [ %i.y, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.01.0.i.i.epil.init ; 2 uses
  %.val16.i.i.epil = load ptr, ptr %i.ac, align 8, !noalias !30, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val17.i.i.epil = load i64, ptr %i.ad, align 8, !noalias !30, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val16.i.i.epil, ptr %i.ae, align 8, !noalias !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %.val17.i.i.epil, ptr %i.af, align 8, !noalias !32
  %i.ag = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.d ], [ %i.y, %.loopexit.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !noalias !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %.val7 = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.ai, align 8, !noundef !4
  store i64 %.val8, ptr %.val7, align 8
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSReEEINtNtNtBb_5slice4iter4IterB1O_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6copied13copy_try_foldB1O_uINtNtNtBb_3ops12control_flow11ControlFlowuENCINvNvB2o_3any5checkB1O_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4U_13SemanticModel15is_builtin_name0E0E0B3H_EB4W_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !98, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !101, !nonnull !4, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !102, !noundef !4 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !4
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.j, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val7.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !103, !noundef !4
  %i.l = icmp eq i64 %.val7.i.i.i.i.i, %i.g
  br i1 %i.l, label %.split.i.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.d
  %.val6.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !103, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i.i.i.i.i, ptr nonnull %i.h, i64 %i.g), !noalias !103
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.e, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.d
  %.not16.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not16.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i, label %bb.d

bb.e:                                             ; preds = %.split.i.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !101
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i, %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.n = trunc nuw i64 %i.a to i1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.promoted.i.i9.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !108 ; 4 uses
  %.not13.not.i.i.i.i.i = icmp eq ptr %.promoted.i.i9.i.i.i, null
  br i1 %.not13.not.i.i.i.i.i, label %bb.h, label %.lr.ph.i.i10.i.i.i

.lr.ph.i.i10.i.i.i:                               ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !108 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 4     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit.backedge.us.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit.backedge.us.i.i.i.i.i: ; preds = %.lr.ph.i.i10.i.i.i
  %2 = getelementptr i8, ptr %.promoted.i.i9.i.i.i, i64 %.idx.i.i.i.i.i.i
  br label %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit..loopexit_crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i10.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !109, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %3 = getelementptr i8, ptr %.promoted.i.i9.i.i.i, i64 %.idx.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.u = load ptr, ptr %1, align 8, !nonnull !4
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.v = phi ptr [ %.promoted.i.i9.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.w, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val7.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !110, !noalias !113, !noundef !4
  %i.y = icmp eq i64 %.val7.i.i.i.i.i.i.i.i, %i.t
  br i1 %i.y, label %.split.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.g
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !110, !noalias !113, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i.i.i.i.i.i.i.i, ptr nonnull %i.u, i64 %i.t), !noalias !113
  %i.z = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i, %bb.g
  %.not16.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %3
  br i1 %.not16.i.i.i.i.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit..loopexit_crit_edge.i.i.i.i.i, label %bb.g

_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit..loopexit_crit_edge.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit.backedge.us.i.i.i.i.i
  %.us-phi.i.i.i.i.i = phi ptr [ %2, %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit.backedge.us.i.i.i.i.i ], [ %3, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i.i.i.i.i.i.i ]
  store ptr %.us-phi.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !114, !noalias !110
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_.exit..loopexit_crit_edge.i.i.i.i.i, %bb.f
  store ptr null, ptr %i.o, align 8, !alias.scope !108
  br label %bb.j

bb.i:                                             ; preds = %.split.i.i.i.i.i.i.i.i
  store ptr %3, ptr %i.r, align 8, !alias.scope !114, !noalias !110
  store ptr null, ptr %i.o, align 8, !alias.scope !108
  store ptr %i.w, ptr %i.b, align 8, !alias.scope !115, !noalias !110
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread

bb.j:                                             ; preds = %bb.h, %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_.exit.thread.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !98
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !98, !noundef !4 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !118, !nonnull !4, !noundef !4 ; 2 uses
  %.not.i.i12.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i12.i.i.i, label %.loopexit, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !119, !noundef !4 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !nonnull !4
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i, %.lr.ph.i.i13.i.i.i
  %i.ah = phi ptr [ %i.ab, %.lr.ph.i.i13.i.i.i ], [ %i.ai, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.val7.i.i15.i.i.i = load i64, ptr %i.aj, align 8, !noalias !120, !noundef !4
  %i.ak = icmp eq i64 %.val7.i.i15.i.i.i, %i.af
  br i1 %i.ak, label %.split.i.i21.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i

.split.i.i21.i.i.i:                               ; preds = %bb.l
  %.val6.i.i22.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !120, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i23.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i.i22.i.i.i, ptr nonnull %i.ag, i64 %i.af), !noalias !120
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i23.i.i.i, 0
  br i1 %i.al, label %bb.m, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i: ; preds = %.split.i.i21.i.i.i, %bb.l
  %.not16.i.i17.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not16.i.i17.i.i.i, label %.loopexit, label %bb.l

bb.m:                                             ; preds = %.split.i.i21.i.i.i
  store ptr %i.ai, ptr %i.aa, align 8, !alias.scope !118
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread

bb.n:                                             ; preds = %.loopexit, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !noundef !4 ; 3 uses
  %.not8 = icmp eq ptr %i.an, null
  br i1 %.not8, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread, label %bb.o

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReuINtNtB9_12control_flow11ControlFlowuENCINvNvNtNtNtBY_6traits8iterator8Iterator3any5checkB1D_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3h_13SemanticModel15is_builtin_name0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB3j_.exit.backedge.i.i16.i.i.i, %bb.k, %bb.j
  store ptr null, ptr %i.aa, align 8, !alias.scope !98
  store i64 2, ptr %0, align 8
  br label %bb.n

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread: ; preds = %bb.o, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit, %bb.n, %bb.m, %bb.i, %bb.e, %bb.q
  %.sroa.0.0 = phi i1 [ true, %bb.m ], [ true, %bb.q ], [ false, %bb.n ], [ true, %bb.e ], [ true, %bb.i ], [ false, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit ], [ false, %bb.o ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !123, !nonnull !4, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !122, !noalias !124, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !alias.scope !122, !nonnull !4
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i, %.lr.ph.i
  %i.at = phi ptr [ %i.an, %.lr.ph.i ], [ %i.au, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 4 uses
  %i.av = getelementptr i8, ptr %i.at, i64 8
  %.val7.i = load i64, ptr %i.av, align 8, !noalias !125, !noundef !4
  %i.aw = icmp eq i64 %.val7.i, %i.ar
  br i1 %i.aw, label %.split.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i

.split.i:                                         ; preds = %bb.p
  %.val6.i = load ptr, ptr %i.at, align 8, !noalias !125, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.as, i64 %i.ar), !noalias !125
  %i.ax = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ax, label %bb.q, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i: ; preds = %.split.i, %bb.p
  %.not16.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not16.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit, label %bb.p

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB13_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2N_13SemanticModel15is_builtin_name0E0E0B2P_.exit.backedge.i
  store ptr %i.au, ptr %i.am, align 8, !alias.scope !123
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread

bb.q:                                             ; preds = %.split.i
  store ptr %i.au, ptr %i.am, align 8, !alias.scope !123
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 7) i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENCNvMB1u_B1s_9from_body0EENtNtNtB9_6traits8iterator8Iterator4foldB1s_NvB4f_6branchEB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !128, !noundef !4 ; 3 uses
  %.not = icmp eq i8 %i.d, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !129
  %.not7.i = icmp eq i8 %i.d, -1
  br i1 %.not7.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b
  %i.e = call noundef i8 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtBR_8Terminal6branchINtB7_5FnMutTB1M_B1M_EE8call_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef range(i8 0, 7) %1, i8 noundef range(i8 -1, 7) %i.d)
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_.exit: ; preds = %bb.b, %.lr.ph.split.us.i
  %.sroa.0.0.lcssa.i = phi i8 [ %i.e, %.lr.ph.split.us.i ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_.exit, %bb.a
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.lcssa.i, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef i8 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENCNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtB2o_8Terminal9from_body0ENtNtNtBa_6traits8iterator8Iterator4foldB3j_NvB2n_6branchEB2s_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef %.sroa.0.0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.05.0 = phi i8 [ %i.g, %bb.d ], [ %.sroa.0.0, %bb.c ]
  ret i8 %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtB25_5nodes14ElifElseClauseENCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breaks0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB5m_3any5checkB1s_NCB44_s_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB4a_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !136
  %.pr.i = load ptr, ptr %i.e, align 8, !alias.scope !137 ; 2 uses
  store ptr null, ptr %i.e, align 8, !alias.scope !137
  %.not.not.peel.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.not.peel.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit.thread, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit: ; preds = %bb.b
  %i.f = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtB7_5FnMutTuB1K_EE8call_mutB3g_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pr.i), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit.thread, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.f, %bb.c, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_.exit ], [ false, %bb.c ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !nonnull !4, !align !7, !noundef !4
  %i.j = call noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breaks0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3C_3any5checkRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtB1r_9generated4StmtENCB2l_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2r_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.i)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB1s_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3E_3VecB1s_E14extend_trustedBO_E0E0ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7bpTdHNYxeX_20ruff_python_semantic:bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 72
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph9ConditionENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !4
  %i.b = ptrtoint ptr %.val to i64
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1s_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendABO_j2_EBU_(ptr noalias noundef align 8 dereferenceable(32), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvMB1p_B1n_6as_strENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2i_8for_each4callReNCINvMsj_NtB1r_3vecINtB3x_3VecB3m_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB8_6copied6CopiedIBY_B3m_EEEE0E0ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 7) i8 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENCNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtB2o_8Terminal9from_body0ENtNtNtBa_6traits8iterator8Iterator4foldB3j_NvB2n_6branchEB2s_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breaks0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3C_3any5checkRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtB1r_9generated4StmtENCB2l_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2r_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 7) i8 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtBR_8Terminal6branchINtB7_5FnMutTB1M_B1M_EE8call_mutBV_(ptr noalias noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 7), i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtB7_5FnMutTuB1K_EE8call_mutB3g_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Z_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtB11_7sources4once4OnceB1O_EINtNtB2Z_6copied6CopiedINtNtNtBb_5slice4iter4IterB1O_EEEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4foldB2f_NvMB2h_B2f_5unionEB2l_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4keysBT_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef align 8 dereferenceable(32), i8 noundef range(i8 0, 14)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterB10_EE9from_iterB16_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBT_NtNtB8_3cmp10PartialOrd2ltEBZ_(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i8 0, i8 4}
!4 = !{}
!5 = !{i64 0, i64 3}
!6 = !{i64 0, i64 2}
!7 = !{i64 8}
!8 = !{i8 0, i8 14}
!9 = distinct !{!9, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!10 = distinct !{!10, !9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!11 = distinct !{!11, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!12 = distinct !{!12, !11, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!13 = distinct !{!13, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!14 = distinct !{!14, !13, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!15 = !{!10}
!16 = !{!12}
!17 = !{!14}
!18 = distinct !{!18, i1 true, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2M_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtB7_3map3MapIB13_NtNtB2O_6string6StringENvMB4o_B4m_6as_strEBP_EE0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!19 = distinct !{!19, !18, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2M_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtB7_3map3MapIB13_NtNtB2O_6string6StringENvMB4o_B4m_6as_strEBP_EE0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtNtB1L_5chain5ChainINtNtB1L_3map3MapIBG_NtNtB2W_6string6StringENvMB4w_B4u_6as_strEINtB1J_6CopiedBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!21 = distinct !{!21, !20, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtNtB1L_5chain5ChainINtNtB1L_3map3MapIBG_NtNtB2W_6string6StringENvMB4w_B4u_6as_strEINtB1J_6CopiedBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtB28_6string6StringENvMB42_B40_6as_strEINtB4_6CopiedIB3B_BY_EEEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!23 = distinct !{!23, !22, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtB28_6string6StringENvMB42_B40_6as_strEINtB4_6CopiedIB3B_BY_EEEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtB2q_3map3MapINtNtNtBe_5slice4iter4IterNtNtB1s_6string6StringENvMB3z_B3x_6as_strEINtNtB2q_6copied6CopiedIB38_B1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!25 = distinct !{!25, !24, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtB2q_3map3MapINtNtNtBe_5slice4iter4IterNtNtB1s_6string6StringENvMB3z_B3x_6as_strEINtNtB2q_6copied6CopiedIB38_B1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!26 = distinct !{!26, !24, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtB2q_3map3MapINtNtNtBe_5slice4iter4IterNtNtB1s_6string6StringENvMB3z_B3x_6as_strEINtNtB2q_6copied6CopiedIB38_B1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB15_3map3MapINtNtNtB19_5slice4iter4IterNtNtBa_6string6StringENvMB2C_B2A_6as_strEINtNtB15_6copied6CopiedIB2a_BH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!28 = distinct !{!28, !27, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB15_3map3MapINtNtNtB19_5slice4iter4IterNtNtBa_6string6StringENvMB2C_B2A_6as_strEINtNtB15_6copied6CopiedIB2a_BH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!29 = distinct !{!29, !27, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB15_3map3MapINtNtNtB19_5slice4iter4IterNtNtBa_6string6StringENvMB2C_B2A_6as_strEINtNtB15_6copied6CopiedIB2a_BH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!30 = !{!21, !19}
!31 = !{!29, !28, !26, !25, !23, !21, !19}
!32 = !{!29, !26, !23, !21, !19}
!33 = distinct !{!33, i1 true, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_7FlattenINtNtBc_6option8IntoIterRSReEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_6copied13copy_try_foldB1v_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB1z_3any5checkB1v_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB46_13SemanticModel15is_builtin_name0E0E0B2T_EB48_"}
!34 = distinct !{!34, !33, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_7FlattenINtNtBc_6option8IntoIterRSReEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_6copied13copy_try_foldB1v_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB1z_3any5checkB1v_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB46_13SemanticModel15is_builtin_name0E0E0B2T_EB48_: argument 0"}
!35 = distinct !{!35, i1 true, !"_RINvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtBc_6option8IntoIterRSReEINtNtNtBc_5slice4iter4IterB1C_EENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_6copied13copy_try_foldB1C_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2b_3any5checkB1C_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4I_13SemanticModel15is_builtin_name0E0E0B3v_EB4K_"}
!36 = distinct !{!36, !35, !"_RINvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtBc_6option8IntoIterRSReEINtNtNtBc_5slice4iter4IterB1C_EENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_6copied13copy_try_foldB1C_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2b_3any5checkB1C_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4I_13SemanticModel15is_builtin_name0E0E0B3v_EB4K_: argument 0"}
!37 = distinct !{!37, i1 true, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtBc_6option8IntoIterRSReEINtNtNtBc_5slice4iter4IterB1C_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB1F_uINtNtNtBc_3ops12control_flow11ControlFlowuEQNCINvNtB8_6copied13copy_try_foldB1C_uB3G_NCINvNvB2M_3any5checkB1C_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5z_13SemanticModel15is_builtin_name0E0E0E0B3G_EB5B_"}
!38 = distinct !{!38, !37, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtBc_6option8IntoIterRSReEINtNtNtBc_5slice4iter4IterB1C_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB1F_uINtNtNtBc_3ops12control_flow11ControlFlowuEQNCINvNtB8_6copied13copy_try_foldB1C_uB3G_NCINvNvB2M_3any5checkB1C_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5z_13SemanticModel15is_builtin_name0E0E0E0B3G_EB5B_: argument 0"}
!39 = distinct !{!39, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_"}
!40 = distinct !{!40, !39, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_"}
!42 = distinct !{!42, !41, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!44 = distinct !{!44, !43, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!45 = distinct !{!45, !37, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtBc_6option8IntoIterRSReEINtNtNtBc_5slice4iter4IterB1C_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB1F_uINtNtNtBc_3ops12control_flow11ControlFlowuEQNCINvNtB8_6copied13copy_try_foldB1C_uB3G_NCINvNvB2M_3any5checkB1C_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5z_13SemanticModel15is_builtin_name0E0E0E0B3G_EB5B_: argument 1"}
!46 = distinct !{!46, !41, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 1"}
!47 = distinct !{!47, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_"}
!48 = distinct !{!48, !47, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_: argument 0"}
!49 = distinct !{!49, i1 true, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_"}
!50 = distinct !{!50, !49, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_: argument 0"}
!51 = distinct !{!51, i1 true, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtBc_6option8IntoIterRSReEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB27_13FlattenCompatppE13iter_try_fold7flattenB1n_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B27_B2k_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB1p_EuB3b_QNCINvNtB8_6copied13copy_try_foldB1p_uB3b_NCINvNvB4b_3any5checkB1p_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6M_13SemanticModel15is_builtin_name0E0E0E0E0B3b_EB6O_"}
!52 = distinct !{!52, !51, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtBc_6option8IntoIterRSReEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB27_13FlattenCompatppE13iter_try_fold7flattenB1n_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B27_B2k_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB1p_EuB3b_QNCINvNtB8_6copied13copy_try_foldB1p_uB3b_NCINvNvB4b_3any5checkB1p_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6M_13SemanticModel15is_builtin_name0E0E0E0E0B3b_EB6O_: argument 0"}
!53 = distinct !{!53, !51, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtBc_6option8IntoIterRSReEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB27_13FlattenCompatppE13iter_try_fold7flattenB1n_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B27_B2k_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB1p_EuB3b_QNCINvNtB8_6copied13copy_try_foldB1p_uB3b_NCINvNvB4b_3any5checkB1p_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6M_13SemanticModel15is_builtin_name0E0E0E0E0B3b_EB6O_: argument 1"}
!54 = distinct !{!54, i1 true, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRSReENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNvMsg_NtNtBS_8adapters7flattenINtB1M_13FlattenCompatppE13iter_try_fold7flattenBH_uINtNtNtB8_3ops12control_flow11ControlFlowuENCINvNvXsi_B1M_B2a_BM_8try_fold7flattenINtNtNtB8_5slice4iter4IterBJ_EuB30_QNCINvNtB1O_6copied13copy_try_foldBJ_uB30_NCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB63_13SemanticModel15is_builtin_name0E0E0E0E0B30_EB65_"}
!55 = distinct !{!55, !54, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRSReENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNvMsg_NtNtBS_8adapters7flattenINtB1M_13FlattenCompatppE13iter_try_fold7flattenBH_uINtNtNtB8_3ops12control_flow11ControlFlowuENCINvNvXsi_B1M_B2a_BM_8try_fold7flattenINtNtNtB8_5slice4iter4IterBJ_EuB30_QNCINvNtB1O_6copied13copy_try_foldBJ_uB30_NCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB63_13SemanticModel15is_builtin_name0E0E0E0E0B30_EB65_: argument 0"}
!56 = distinct !{!56, !54, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRSReENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNvMsg_NtNtBS_8adapters7flattenINtB1M_13FlattenCompatppE13iter_try_fold7flattenBH_uINtNtNtB8_3ops12control_flow11ControlFlowuENCINvNvXsi_B1M_B2a_BM_8try_fold7flattenINtNtNtB8_5slice4iter4IterBJ_EuB30_QNCINvNtB1O_6copied13copy_try_foldBJ_uB30_NCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB63_13SemanticModel15is_builtin_name0E0E0E0E0B30_EB65_: argument 2"}
!57 = distinct !{!57, i1 true, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRSReENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!58 = distinct !{!58, !57, !"_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRSReENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!59 = distinct !{!59, !54, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRSReENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNvMsg_NtNtBS_8adapters7flattenINtB1M_13FlattenCompatppE13iter_try_fold7flattenBH_uINtNtNtB8_3ops12control_flow11ControlFlowuENCINvNvXsi_B1M_B2a_BM_8try_fold7flattenINtNtNtB8_5slice4iter4IterBJ_EuB30_QNCINvNtB1O_6copied13copy_try_foldBJ_uB30_NCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB63_13SemanticModel15is_builtin_name0E0E0E0E0B30_EB65_: argument 1"}
!60 = distinct !{!60, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_"}
!61 = distinct !{!61, !60, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_: argument 0"}
!62 = distinct !{!62, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_"}
!63 = distinct !{!63, !62, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 1"}
!64 = distinct !{!64, !62, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_"}
!66 = distinct !{!66, !65, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_"}
!68 = distinct !{!68, !67, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_: argument 0"}
!69 = distinct !{!69, i1 true, !"_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_"}
!70 = distinct !{!70, !69, !"_RNCINvNvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRSReuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB1I_EuB1L_QNCINvNtBc_6copied13copy_try_foldB1I_uB1L_NCINvNvB2J_3any5checkB1I_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB5k_13SemanticModel15is_builtin_name0E0E0E0E0B5m_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5slice4iter4IterReEE6insertCs7bpTdHNYxeX_20ruff_python_semantic"}
!72 = distinct !{!72, !71, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtB4_5slice4iter4IterReEE6insertCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!73 = distinct !{!73, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!74 = distinct !{!74, !73, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!75 = distinct !{!75, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_"}
!76 = distinct !{!76, !75, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterReEuINtNtNtBg_3ops12control_flow11ControlFlowuEQNCINvNtBc_6copied13copy_try_foldB2y_uB2C_NCINvNvB1j_3any5checkB2y_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4v_13SemanticModel15is_builtin_name0E0E0E0B4x_: argument 0"}
!77 = distinct !{!77, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_"}
!78 = distinct !{!78, !77, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!80 = distinct !{!80, !79, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!81 = distinct !{!81, !77, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3z_13SemanticModel15is_builtin_name0E0E0B2o_EB3B_: argument 1"}
!82 = distinct !{!82, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_"}
!83 = distinct !{!83, !82, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_"}
!85 = distinct !{!85, !84, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_: argument 0"}
!86 = distinct !{!86, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_"}
!87 = distinct !{!87, !86, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_: argument 0"}
!88 = distinct !{!88, !86, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBM_3any5checkBJ_NCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB3x_13SemanticModel15is_builtin_name0E0E0B2m_EB3z_: argument 1"}
!89 = distinct !{!89, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!90 = distinct !{!90, !89, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_"}
!92 = distinct !{!92, !91, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB1k_13SemanticModel15is_builtin_name0E0B1m_: argument 0"}
!93 = distinct !{!93, i1 true, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_"}
!94 = distinct !{!94, !93, !"_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel15is_builtin_name0B8_: argument 0"}
!95 = !{!34}
!96 = !{!36}
!97 = !{!38}
!98 = !{!38, !36, !34}
!99 = !{!40}
!100 = !{!42}
!101 = !{!44, !42, !40, !38, !36, !34}
!102 = !{!50, !48, !42, !46, !40, !38, !45, !36, !34}
!103 = !{!42, !46, !40, !38, !45, !36, !34}
!104 = !{!52}
!105 = !{!53}
!106 = !{!55}
!107 = !{!56}
!108 = !{!58, !55, !52, !38, !36, !34}
!109 = !{!68, !66, !64, !63, !61, !55, !59, !56, !52, !53, !38, !45, !36, !34}
!110 = !{!70}
!111 = !{!61}
!112 = !{!64}
!113 = !{!64, !63, !61, !55, !59, !56, !52, !53, !38, !45, !36, !34}
!114 = !{!72, !56, !53, !38, !36, !34}
!115 = !{!74, !64, !61, !56, !53, !38, !36, !34}
!116 = !{!76}
!117 = !{!78}
!118 = !{!80, !78, !76, !38, !36, !34}
!119 = !{!85, !83, !78, !81, !76, !38, !45, !36, !34}
!120 = !{!78, !81, !76, !38, !45, !36, !34}
!121 = !{!87}
!122 = !{!88}
!123 = !{!90, !87}
!124 = !{!94, !92}
!125 = !{!87, !88}
!126 = distinct !{!126, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_"}
!127 = distinct !{!127, !126, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal8TerminalENtNtNtBa_6traits8iterator8Iterator4foldBS_QNvMBU_BS_6branchEBY_: argument 0"}
!128 = !{i8 -2, i8 7}
!129 = !{!127}
!130 = distinct !{!130, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_"}
!131 = distinct !{!131, !130, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_: argument 0"}
!132 = distinct !{!132, !130, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2h_3any5checkBS_NCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminal16sometimes_breakss_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3w_: argument 1"}
!133 = distinct !{!133, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources4onceINtB2_4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtB6_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!134 = distinct !{!134, !133, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources4onceINtB2_4OnceRINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEENtNtNtB6_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!135 = !{!131}
!136 = !{!131, !132}
!137 = !{!134, !131}
!138 = distinct !{!138, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvBV_8for_each4callBS_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2a_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB39_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEE0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!139 = distinct !{!139, !138, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvBV_8for_each4callBS_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2a_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB39_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEE0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!140 = distinct !{!140, !138, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvBV_8for_each4callBS_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2a_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB39_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEE0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!141 = distinct !{!141, i1 true, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2M_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceB1s_EBP_EE0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!142 = distinct !{!142, !141, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2M_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceB1s_EBP_EE0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!143 = distinct !{!143, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtNtB1L_5chain5ChainINtNtNtBZ_7sources4once4OnceBQ_EINtB1J_6CopiedBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!144 = distinct !{!144, !143, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtNtB1L_5chain5ChainINtNtNtBZ_7sources4once4OnceBQ_EINtB1J_6CopiedBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!145 = distinct !{!145, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBY_EINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!146 = distinct !{!146, !145, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBY_EINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!147 = distinct !{!147, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtNtBc_7sources4once4OnceB1f_EINtNtB2q_6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!148 = distinct !{!148, !147, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtNtBc_7sources4once4OnceB1f_EINtNtB2q_6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!149 = distinct !{!149, !147, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtNtBc_7sources4once4OnceB1f_EINtNtB2q_6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!150 = distinct !{!150, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB17_7sources4once4OnceBH_EINtNtB15_6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!151 = distinct !{!151, !150, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB17_7sources4once4OnceBH_EINtNtB15_6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!152 = distinct !{!152, !150, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB17_7sources4once4OnceBH_EINtNtB15_6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!153 = !{!140, !139}
!154 = !{!144, !142}
!155 = !{!152, !151, !149, !148, !146, !144, !142}
!156 = !{!152, !149, !146, !144, !142}
!157 = distinct !{!157, i1 true, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEB1i_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1I_uNCINvNvB1R_8for_each4callB1I_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3D_3VecB1I_E14extend_trustedINtB2A_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!158 = distinct !{!158, !157, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEB1i_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1I_uNCINvNvB1R_8for_each4callB1I_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3D_3VecB1I_E14extend_trustedINtB2A_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!159 = distinct !{!159, !157, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEB1i_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1I_uNCINvNvB1R_8for_each4callB1I_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3D_3VecB1I_E14extend_trustedINtB2A_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!160 = distinct !{!160, i1 true, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_6copied9copy_foldB1o_uNCINvNvB1s_8for_each4callB1o_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3f_3VecB1o_E14extend_trustedINtB2c_6CopiedINtNtB7_5chain5ChainBN_BY_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!161 = distinct !{!161, !160, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_6copied9copy_foldB1o_uNCINvNvB1s_8for_each4callB1o_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3f_3VecB1o_E14extend_trustedINtB2c_6CopiedINtNtB7_5chain5ChainBN_BY_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!162 = distinct !{!162, !160, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_6copied9copy_foldB1o_uNCINvNvB1s_8for_each4callB1o_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3f_3VecB1o_E14extend_trustedINtB2c_6CopiedINtNtB7_5chain5ChainBN_BY_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterReEENtB6_8SpecTake9spec_folduQNCINvNtB8_6copied9copy_foldB1p_uNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB1p_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3v_3VecB1p_E14extend_trustedINtB1Y_6CopiedINtNtB8_5chain5ChainBO_BZ_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!164 = distinct !{!164, !163, !"_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterReEENtB6_8SpecTake9spec_folduQNCINvNtB8_6copied9copy_foldB1p_uNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB1p_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3v_3VecB1p_E14extend_trustedINtB1Y_6CopiedINtNtB8_5chain5ChainBO_BZ_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!165 = distinct !{!165, !163, !"_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterReEENtB6_8SpecTake9spec_folduQNCINvNtB8_6copied9copy_foldB1p_uNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB1p_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3v_3VecB1p_E14extend_trustedINtB1Y_6CopiedINtNtB8_5chain5ChainBO_BZ_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!166 = distinct !{!166, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBY_EEB3P_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!167 = distinct !{!167, !166, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBY_EEB3P_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!168 = distinct !{!168, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!169 = distinct !{!169, !168, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!170 = distinct !{!170, !168, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!171 = distinct !{!171, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!172 = distinct !{!172, !171, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!173 = distinct !{!173, !171, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!174 = distinct !{!174, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainINtNtB1L_4take4TakeBF_EBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!175 = distinct !{!175, !174, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainINtNtB1L_4take4TakeBF_EBF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!176 = distinct !{!176, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBY_EEB3P_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!177 = distinct !{!177, !176, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBY_EEB3P_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!178 = distinct !{!178, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!179 = distinct !{!179, !178, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!180 = distinct !{!180, !178, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtB2q_4take4TakeINtNtNtBe_5slice4iter4IterB1f_EEB3w_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!181 = distinct !{!181, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!182 = distinct !{!182, !181, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!183 = distinct !{!183, !181, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtB15_4take4TakeINtNtNtB19_5slice4iter4IterBH_EEB2y_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!184 = !{!165, !164, !162, !161, !159, !158}
!185 = !{!173, !172, !170, !169, !167, !165, !164, !162, !161, !159, !158}
!186 = !{!173, !170, !167, !165, !164, !162, !161, !159, !158}
!187 = !{!175, !159, !158}
!188 = !{!183, !182, !180, !179, !177, !175, !159, !158}
!189 = !{!183, !180, !177, !175, !159, !158}
!190 = !{!159, !158}
!191 = distinct !{!191, i1 true, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterReEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1q_uNCINvNvB1y_8for_each4callB1q_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3k_3VecB1q_E14extend_trustedINtB2h_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!192 = distinct !{!192, !191, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterReEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1q_uNCINvNvB1y_8for_each4callB1q_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3k_3VecB1q_E14extend_trustedINtB2h_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!193 = distinct !{!193, !191, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterReEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldB1q_uNCINvNvB1y_8for_each4callB1q_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3k_3VecB1q_E14extend_trustedINtB2h_6CopiedBO_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!194 = distinct !{!194, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2V_3VecBQ_E14extend_trustedINtB1K_6CopiedINtNtB1M_5chain5ChainBF_BF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!195 = distinct !{!195, !194, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2V_3VecBQ_E14extend_trustedINtB1K_6CopiedINtNtB1M_5chain5ChainBF_BF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!196 = distinct !{!196, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBY_EB3x_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!197 = distinct !{!197, !196, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBY_EB3x_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!199 = distinct !{!199, !198, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!200 = distinct !{!200, !198, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!201 = distinct !{!201, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!202 = distinct !{!202, !201, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!203 = distinct !{!203, !201, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!204 = distinct !{!204, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!205 = distinct !{!205, !204, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!206 = distinct !{!206, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBY_EB3x_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!207 = distinct !{!207, !206, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBY_EB3x_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!208 = distinct !{!208, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!209 = distinct !{!209, !208, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!210 = distinct !{!210, !208, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtB2q_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB3d_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!211 = distinct !{!211, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!212 = distinct !{!212, !211, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!213 = distinct !{!213, !211, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB15_5chain5ChainINtNtNtB19_5slice4iter4IterBH_EB2f_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!214 = !{!195, !193, !192}
!215 = !{!203, !202, !200, !199, !197, !195, !193, !192}
!216 = !{!203, !200, !197, !195, !193, !192}
!217 = !{!205, !193, !192}
!218 = !{!213, !212, !210, !209, !207, !205, !193, !192}
!219 = !{!213, !210, !207, !205, !193, !192}
!220 = !{!193, !192}
!221 = distinct !{!221, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedBF_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!222 = distinct !{!222, !221, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNvBT_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2U_3VecBQ_E14extend_trustedINtB1J_6CopiedBF_EE0E0E0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!223 = distinct !{!223, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!224 = distinct !{!224, !223, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldReuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB26_3VecBY_E14extend_trustedINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEE0E0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!225 = distinct !{!225, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!226 = distinct !{!226, !225, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!227 = distinct !{!227, !225, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterB1f_EEE0E0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!228 = distinct !{!228, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!229 = distinct !{!229, !228, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!230 = distinct !{!230, !228, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB19_5slice4iter4IterBH_EEE0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!231 = !{!222}
!232 = !{!230, !229, !227, !226, !224, !222}
!233 = !{!230, !227, !224, !222}
!234 = distinct !{!234, i1 true, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5unions_0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_"}
!235 = distinct !{!235, !234, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5unions_0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_: argument 1"}
!236 = distinct !{!236, i1 true, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5union0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_"}
!237 = distinct !{!237, !236, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5union0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_: argument 1"}
!238 = distinct !{!238, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_"}
!239 = distinct !{!239, !238, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 0"}
!240 = distinct !{!240, i1 true, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5unions0_0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_"}
!241 = distinct !{!241, !240, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2c_3any5checkRBV_NCNvMBX_NtBX_18ResolvedPythonType5unions0_0E0INtNtNtB2k_3ops12control_flow11ControlFlowuEEB11_: argument 1"}
!242 = distinct !{!242, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_"}
!243 = distinct !{!243, !242, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 0:h.rot"}
!244 = !{!235}
!245 = !{!237}
!246 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!247 = !{i64 0, i64 -9223372036854775808}
!248 = !{!239}
!249 = !{!241}
!250 = !{!243}
!251 = distinct !{null, null, null}
!252 = distinct !{!252, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_"}
!253 = distinct !{!253, !252, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator6reduceNvMB2b_B29_5unionEB2f_: argument 0"}
!254 = distinct !{null}
!255 = distinct !{!255, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!256 = distinct !{!256, !255, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!257 = distinct !{!257, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!258 = distinct !{!258, !257, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!259 = distinct !{!259, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!260 = distinct !{!260, !259, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!261 = distinct !{!261, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!262 = distinct !{!262, !261, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!263 = distinct !{!263, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!264 = distinct !{!264, !263, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!265 = distinct !{!265, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!266 = distinct !{!266, !265, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!267 = distinct !{!267, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!268 = distinct !{!268, !267, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!269 = distinct !{!269, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_"}
!270 = distinct !{!270, !269, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeEBH_: argument 0"}
!271 = !{i32 0, i32 33}
!272 = !{!253}
!273 = !{i8 0, i8 13}
!274 = !{!256}
!275 = !{!258}
!276 = !{!260}
!277 = !{!262}
!278 = !{!264}
!279 = !{!266}
!280 = !{!268}
!281 = !{!270}
!282 = distinct !{!282, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!283 = distinct !{!283, !282, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!284 = distinct !{!284, i1 true, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core5clone5implsReNtB7_5Clone5cloneCs7bpTdHNYxeX_20ruff_python_semantic"}
!285 = distinct !{!285, !284, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core5clone5implsReNtB7_5Clone5cloneCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!286 = !{!283}
!287 = !{!285}
!288 = distinct !{!288, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterReEEB1h_ENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!289 = distinct !{!289, !288, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterReEEB1h_ENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!290 = distinct !{!290, i1 true, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtNtB8_5slice4iter4IterReEERB1M_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7bpTdHNYxeX_20ruff_python_semantic"}
!291 = distinct !{!291, !290, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtNtB8_5slice4iter4IterReEERB1M_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!292 = distinct !{!292, i1 true, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtBe_5slice4iter4IterReEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7bpTdHNYxeX_20ruff_python_semantic"}
!293 = distinct !{!293, !292, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtBe_5slice4iter4IterReEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!294 = distinct !{!294, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!295 = distinct !{!295, !294, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!296 = distinct !{!296, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!297 = distinct !{!297, !296, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!298 = distinct !{!298, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB11_5ChainINtNtB13_4take4TakeINtNtNtB5_5slice4iter4IterBJ_EEB20_ENtNtNtB15_6traits8iterator8Iterator4next0ECs7bpTdHNYxeX_20ruff_python_semantic"}
!299 = distinct !{!299, !298, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB11_5ChainINtNtB13_4take4TakeINtNtNtB5_5slice4iter4IterBJ_EEB20_ENtNtNtB15_6traits8iterator8Iterator4next0ECs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!300 = distinct !{!300, i1 true, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterReEEB1j_ENtNtNtBa_6traits8iterator8Iterator4next0Cs7bpTdHNYxeX_20ruff_python_semantic"}
!301 = distinct !{!301, !300, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterReEEB1j_ENtNtNtBa_6traits8iterator8Iterator4next0Cs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!302 = distinct !{!302, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic"}
!303 = distinct !{!303, !302, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!304 = !{!291, !289}
!305 = !{!295, !293, !291, !289}
!306 = !{!297, !295, !293, !291, !289}
!307 = !{!301, !299, !289}
!308 = !{!303, !301, !299, !289}
!309 = distinct !{!309, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterReEEB1h_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic"}
!310 = distinct !{!310, !309, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterReEEB1h_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic: argument 0"}
!311 = distinct !{!311, !309, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterReEEB1h_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!312 = distinct !{!312, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic"}
!313 = distinct !{!313, !312, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
!314 = distinct !{!314, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic"}
!315 = distinct !{!315, !314, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCs7bpTdHNYxeX_20ruff_python_semantic: argument 1"}
end_hunk_1
