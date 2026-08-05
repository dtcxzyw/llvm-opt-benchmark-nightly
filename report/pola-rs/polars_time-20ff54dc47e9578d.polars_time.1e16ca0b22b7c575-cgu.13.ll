inline.NumInlined: 3648
inline.NumDeleted: 2176
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1p_xEB21_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2m_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callRB1o_NCINvMsj_B1r_IB1p_B5O_E14extend_trustedBN_E0E0EB2q_:bb.a
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2), !dbg !29131
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %vec.ind, !dbg !29132
  %wide.gep2 = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %step.add, !dbg !29132
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index, !dbg !29136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !29145
  store <2 x ptr> %wide.gep, ptr %i.h, align 8, !dbg !29145, !noalias !29148
  store <2 x ptr> %wide.gep2, ptr %i.i, align 8, !dbg !29145, !noalias !29148
  %index.next = add nuw i64 %index, 4, !dbg !29131 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4), !dbg !29131
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !29160
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !29160, !llvm.loop !29161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !29160
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RBR_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3h_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics2_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B39_EE0E0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !29160

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !29160

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.n, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !29132 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !29131 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !29132
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !29136
  store ptr %i.l, ptr %i.m, align 8, !dbg !29145, !noalias !29148
  %i.n = add i64 %i.k, 1, !dbg !29162             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !29165 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !29160
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RBR_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3h_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics2_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B39_EE0E0E0EB3l_.exit, label %scalar.ph, !dbg !29160, !llvm.loop !29168

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RBR_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3h_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics2_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B39_EE0E0E0EB3l_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.n, %scalar.ph ], !dbg !29169
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29169, !noalias !29178
  ret void, !dbg !29179
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1p_xEB21_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2m_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callRB21_NCINvMsj_B1r_IB1p_B5O_E14extend_trustedBN_E0E0EB2q_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !29180 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !29181 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !29181
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29181 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !29181
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29181 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !29184
  %i.a = icmp eq ptr %0, %1, !dbg !29193
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %bb.b, !dbg !29194

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !29195
  %i.c = ptrtoint ptr %0 to i64, !dbg !29195
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !29195      ; 2 uses
  %i.e = udiv exact i64 %i.d, 72, !dbg !29195     ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 288, !dbg !29207
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !29207

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 288230376151711740       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !29207

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29208 ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !29208 ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2), !dbg !29208
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %vec.ind, !dbg !29209
  %wide.gep2 = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %step.add, !dbg !29209
  %wide.gep3 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 24, !dbg !29213
  %wide.gep4 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep2, i64 24, !dbg !29213
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index, !dbg !29218 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !29225
  store <2 x ptr> %wide.gep3, ptr %i.h, align 8, !dbg !29225, !noalias !29228
  store <2 x ptr> %wide.gep4, ptr %i.i, align 8, !dbg !29225, !noalias !29228
  %index.next = add nuw i64 %index, 4, !dbg !29208 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4), !dbg !29208
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !29240
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !29240, !llvm.loop !29241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !29240
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %scalar.ph.preheader, !dbg !29240

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !29240

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !29209 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !29208 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !29209
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !29213
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !29218
  store ptr %i.m, ptr %i.n, align 8, !dbg !29225, !noalias !29228
  %i.o = add i64 %i.k, 1, !dbg !29242             ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !29245 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !29240
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %scalar.ph, !dbg !29240, !llvm.loop !29248

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.o, %scalar.ph ], !dbg !29249
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29249, !noalias !29258
  ret void, !dbg !29259
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1p_xEB21_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2m_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callRB21_NCINvMsj_B1r_IB1p_B5O_E14extend_trustedBN_E0E0EB2q_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !29260 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !29261 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !29261
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29261 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !29261
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29261 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !29264
  %i.a = icmp eq ptr %0, %1, !dbg !29273
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %bb.b, !dbg !29274

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !29275
  %i.c = ptrtoint ptr %0 to i64, !dbg !29275
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !29275      ; 2 uses
  %i.e = udiv exact i64 %i.d, 72, !dbg !29275     ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 288, !dbg !29287
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !29287

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 288230376151711740       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !29287

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29288 ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !29288 ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2), !dbg !29288
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %vec.ind, !dbg !29289
  %wide.gep2 = getelementptr inbounds nuw [72 x i8], ptr %0, <2 x i64> %step.add, !dbg !29289
  %wide.gep3 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 48, !dbg !29293
  %wide.gep4 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep2, i64 48, !dbg !29293
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index, !dbg !29298 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !29305
  store <2 x ptr> %wide.gep3, ptr %i.h, align 8, !dbg !29305, !noalias !29308
  store <2 x ptr> %wide.gep4, ptr %i.i, align 8, !dbg !29305, !noalias !29308
  %index.next = add nuw i64 %index, 4, !dbg !29288 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4), !dbg !29288
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !29320
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !29320, !llvm.loop !29321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !29320
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %scalar.ph.preheader, !dbg !29320

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !29320

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !29289 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !29288 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !29289
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !29293
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !29298
  store ptr %i.m, ptr %i.n, align 8, !dbg !29305, !noalias !29308
  %i.o = add i64 %i.k, 1, !dbg !29322             ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !29325 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !29320
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit, label %scalar.ph, !dbg !29320, !llvm.loop !29328

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.o, %scalar.ph ], !dbg !29329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29329, !noalias !29338
  ret void, !dbg !29339
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3E_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecaE14extend_trustedBN_E0E0EB2z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !29340 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !29341, !nonnull !13, !noundef !13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29341
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29341, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !29342 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29342
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29342 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29342
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29342 ; 6 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !29345
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !29345
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit, label %iter.check, !dbg !29352

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !29353    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !29353    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !29353      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !29365
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !29365

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !29365
  %i.i = sub i64 %i.f, %i.h, !dbg !29365
  %diff.check = icmp ugt i64 %i.i, -16, !dbg !29365
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !29366

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 16, !dbg !29365
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !29365

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.j = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !29365

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29366 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !29367
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !dbg !29371, !noalias !29372
  %i.m = add <16 x i8> %wide.load, splat (i8 2), !dbg !29375
  %i.n = sdiv <16 x i8> %i.m, splat (i8 3), !dbg !29375
  %i.o = getelementptr i8, ptr %i.k, i64 %index, !dbg !29387
  store <16 x i8> %i.n, ptr %i.o, align 1, !dbg !29394, !noalias !29397
  %index.next = add nuw i64 %index, 16, !dbg !29366 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !29404
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !29404, !llvm.loop !29405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !29404
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit, label %vec.epilog.iter.check, !dbg !29404

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29406

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !29366
  %n.vec5 = and i64 %i.g, -4                      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !29366 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index6, !dbg !29367
  %wide.load7 = load <4 x i8>, ptr %i.s, align 1, !dbg !29371, !noalias !29372
  %2 = add <4 x i8> %wide.load7, splat (i8 2), !dbg !29375
  %3 = sdiv <4 x i8> %2, splat (i8 3), !dbg !29375
  %i.t = getelementptr i8, ptr %i.r, i64 %index6, !dbg !29387
  store <4 x i8> %3, ptr %i.t, align 1, !dbg !29394, !noalias !29397
  %index.next8 = add nuw i64 %index6, 4, !dbg !29366 ; 2 uses
  %i.u = icmp eq i64 %index.next8, %n.vec5, !dbg !29404
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !29404, !llvm.loop !29407

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.g, %n.vec5, !dbg !29404
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !29404

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.v = sub i64 %i.e, %i.f, !dbg !29404
  %i.w = xor i64 %.sroa.01.0.i.ph, -1, !dbg !29404
  %i.x = add i64 %i.w, %i.e, !dbg !29404
  %xtraiter = and i64 %i.v, 1, !dbg !29404
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !29404
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !29404

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !29367
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !29371, !noalias !29372, !noundef !13
  %i.z = add i8 %.val16.i.prol, 2, !dbg !29375
  %i.aa = sdiv i8 %i.z, 3, !dbg !29375
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !29387
  store i8 %i.aa, ptr %i.ab, align 1, !dbg !29394, !noalias !29397
  %i.ac = add i64 %.ph, 1, !dbg !29408            ; 2 uses
  %i.ad = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !29411
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !29404

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ad, %vec.epilog.scalar.ph.prol ]
  %i.ae = icmp eq i64 %i.x, %i.f, !dbg !29404
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit, label %vec.epilog.scalar.ph, !dbg !29404

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !29367 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !29366 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !29367
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !29371, !noalias !29372, !noundef !13
  %i.ah = add i8 %.val16.i, 2, !dbg !29375
  %i.ai = sdiv i8 %i.ah, 3, !dbg !29375
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29387
  store i8 %i.ai, ptr %i.aj, align 1, !dbg !29394, !noalias !29397
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !29367
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !29367
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !29371, !noalias !29372, !noundef !13
  %i.am = add i8 %.val16.i.1, 2, !dbg !29375
  %i.an = sdiv i8 %i.am, 3, !dbg !29375
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29387
  %i.ap = getelementptr i8, ptr %i.ao, i64 1, !dbg !29387
  store i8 %i.an, ptr %i.ap, align 1, !dbg !29394, !noalias !29397
  %i.aq = add i64 %i.af, 2, !dbg !29408           ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 2, !dbg !29411 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.g, !dbg !29404
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit, label %vec.epilog.scalar.ph, !dbg !29404, !llvm.loop !29414

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.aq, %vec.epilog.scalar.ph ], !dbg !29415
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29415, !noalias !29372
  ret void, !dbg !29424
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !29425 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !29426, !nonnull !13, !noundef !13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29426
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29426, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29427
  %i.e = load ptr, ptr %i.d, align 8, !dbg !29427, !nonnull !13, !noundef !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29427
  %i.g = load ptr, ptr %i.f, align 8, !dbg !29427, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !29428 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29428
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29428 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29428
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29428 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !29431
  br i1 %i.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.b, !dbg !29438

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64, !dbg !29439    ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64, !dbg !29439    ; 2 uses
  %i.k = sub i64 %i.i, %i.j, !dbg !29439          ; 3 uses
  %xtraiter = and i64 %i.k, 1, !dbg !29451
  %i.l = add i64 %i.i, -1, !dbg !29451
  %i.m = icmp eq i64 %i.l, %i.j, !dbg !29451
  br i1 %i.m, label %.epil.preheader, label %.new, !dbg !29451

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2, !dbg !29451
  br label %bb.c, !dbg !29451

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ], !dbg !29452 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !29453
  %.val16.i = load i8, ptr %i.o, align 1, !dbg !29457, !noalias !29458, !noundef !13 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !dbg !29461, !noalias !29469, !noundef !13
  %i.q = icmp eq i8 %.val16.i, %i.p, !dbg !29472
  br i1 %i.q, label %bb.d, label %bb.e, !dbg !29472

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !dbg !29473, !noalias !29469, !noundef !13
  br label %bb.e, !dbg !29474

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ], !dbg !29475
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !29476
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !dbg !29483, !noalias !29486
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !29453
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !29453
  %.val16.i.1 = load i8, ptr %i.u, align 1, !dbg !29457, !noalias !29458, !noundef !13 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !dbg !29461, !noalias !29469, !noundef !13
  %i.w = icmp eq i8 %.val16.i.1, %i.v, !dbg !29472
  br i1 %i.w, label %bb.f, label %bb.g, !dbg !29472

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !dbg !29473, !noalias !29469, !noundef !13
  br label %bb.g, !dbg !29474

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ], !dbg !29475
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !29476
  %i.z = getelementptr i8, ptr %i.y, i64 1, !dbg !29476
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !dbg !29483, !noalias !29486
  %i.aa = add i64 %i.n, 2, !dbg !29491            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2, !dbg !29494 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !29497  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !29497
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa, label %bb.c, !dbg !29497

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !29472
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %.epil.preheader, !dbg !29472

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1, !dbg !29472
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !29472
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !29453
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !dbg !29457, !noalias !29458, !noundef !13 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !dbg !29461, !noalias !29469, !noundef !13
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad, !dbg !29472
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.epilog-lcssa, !dbg !29472

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !dbg !29473, !noalias !29469, !noundef !13
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.epilog-lcssa, !dbg !29474

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ], !dbg !29475
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !29476
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !dbg !29483, !noalias !29486
  %i.ah = add i64 %.epil.init, 1, !dbg !29491
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit.loopexit.epilog-lcssa ], !dbg !29498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29498, !noalias !29458
  ret void, !dbg !29507
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvMNtNtB2A_5frame10projectionNtB3x_23AmortizedColumnSelector15select_multipleRB1F_BX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4U_8try_folduNCINvNvB4U_12try_for_each4callNtNtB3z_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB8m_ENcNtB8I_5Break0E0B8I_E0IB8J_B8I_EECs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29508 {
bb.a:
  %.sroa.4.i.i.i = alloca [159 x i8], align 1     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i.i = alloca [79 x i8], align 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29509), !dbg !29512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29513), !dbg !29512
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !29515, !noalias !29509, !nonnull !13, !noundef !13 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !29515, !noalias !29509 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !29518
  br i1 %i.e, label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBL_INtNtB2F_6result6ResultNtNtNtB1G_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2F_3ops12control_flow11ControlFlowIB5V_B4H_EENCINvMNtB4L_10projectionNtB6R_23AmortizedColumnSelector15select_multipleB4g_B3_E0NCINvXB3J_INtB3J_12GenericShuntINtB3H_3MapB3_B6L_EIB4l_NtNtB2F_7convert10InfallibleB5b_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4H_B6A_NcNtB6A_5Break0E0B6A_E0E0B5U_ECs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i, !dbg !29526

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29527
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %.sroa.4.80..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 79
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !29528, !nonnull !13, !align !852, !noundef !13
  br label %bb.b, !dbg !29526

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.g ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80, !dbg !29532 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !dbg !29534, !alias.scope !29515, !noalias !29509
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !29535 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29539), !dbg !29540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29541
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!29206 = distinct !DILexicalBlock(scope: !29191, file: !2174, line: 273, column: 17)
!29207 = !DILocation(line: 28, column: 9, scope: !29204, inlinedAt: !29192)
!29208 = !DILocation(line: 0, scope: !29206, inlinedAt: !29192)
!29209 = !DILocation(line: 659, column: 28, scope: !29210, inlinedAt: !29211)
!29210 = distinct !DISubprogram(name: "add<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_EE3addCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29211 = distinct !DILocation(line: 279, column: 67, scope: !29212, inlinedAt: !29192)
!29212 = distinct !DILexicalBlock(scope: !29205, file: !2174, line: 275, column: 17)
!29213 = !DILocation(line: 351, column: 44, scope: !29214, inlinedAt: !29215)
!29214 = distinct !DISubprogram(name: "{closure#5}", linkageName: "_RNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB7_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0Bb_", scope: !25022, file: !24923, line: 351, type: !36, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29215 = distinct !DILocation(line: 88, column: 28, scope: !29216, inlinedAt: !29217)
!29216 = distinct !DISubprogram(name: "{closure#0}<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_", scope: !2217, file: !2151, line: 88, type: !12, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29217 = distinct !DILocation(line: 279, column: 27, scope: !29212, inlinedAt: !29192)
!29218 = !DILocation(line: 961, column: 18, scope: !29219, inlinedAt: !29220)
!29219 = distinct !DISubprogram(name: "add<&alloc::vec::Vec<i64, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrORINtNtCsgZ49sUHp3tW_5alloc3vec3VecxE3addCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29220 = distinct !DILocation(line: 4029, column: 36, scope: !29221, inlinedAt: !29222)
!29221 = distinct !DISubprogram(name: "{closure#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0B2Q_", scope: !2307, file: !2306, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29222 = distinct !DILocation(line: 884, column: 29, scope: !29223, inlinedAt: !29224)
!29223 = distinct !DISubprogram(name: "{closure#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0E0B3R_", scope: !2312, file: !2244, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29224 = distinct !DILocation(line: 88, column: 21, scope: !29216, inlinedAt: !29217)
!29225 = !DILocation(line: 1921, column: 41, scope: !29226, inlinedAt: !29227)
!29226 = distinct !DISubprogram(name: "write<&alloc::vec::Vec<i64, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29227 = distinct !DILocation(line: 4029, column: 21, scope: !29221, inlinedAt: !29222)
!29228 = !{!29229, !29231, !29232, !29234, !29235, !29237, !29238}
!29229 = distinct !{!29229, !29230, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0B2Q_: argument 0"}
!29230 = distinct !{!29230, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0B2Q_"}
!29231 = distinct !{!29231, !29230, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0B2Q_: argument 1"}
!29232 = distinct !{!29232, !29233, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0E0B3R_: argument 0"}
!29233 = distinct !{!29233, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0E0B3R_"}
!29234 = distinct !{!29234, !29233, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0E0B3R_: argument 1"}
!29235 = distinct !{!29235, !29236, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_: argument 0"}
!29236 = distinct !{!29236, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_"}
!29237 = distinct !{!29237, !29236, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_: argument 1"}
!29238 = distinct !{!29238, !29239, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_: argument 0"}
!29239 = distinct !{!29239, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_"}
!29240 = !DILocation(line: 284, column: 24, scope: !29212, inlinedAt: !29192)
!29241 = distinct !{!29241, !24970, !24971}
!29242 = !DILocation(line: 19, column: 9, scope: !29243, inlinedAt: !29244)
!29243 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !2326, file: !2325, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29244 = distinct !DILocation(line: 4033, column: 31, scope: !29221, inlinedAt: !29222)
!29245 = !DILocation(line: 898, column: 17, scope: !29246, inlinedAt: !29247)
!29246 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2333, file: !2332, line: 886, type: !12, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29247 = distinct !DILocation(line: 283, column: 36, scope: !29212, inlinedAt: !29192)
!29248 = distinct !{!29248, !24971, !24970}
!29249 = !DILocation(line: 31, column: 9, scope: !2338, inlinedAt: !29250)
!29250 = !DILocation(line: 810, column: 1, scope: !2341, inlinedAt: !29251)
!29251 = !DILocation(line: 810, column: 1, scope: !29252, inlinedAt: !29253)
!29252 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecRIB1g_xEE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterTIB1g_Amj2_EB1q_B1q_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3g_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0EB3k_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29253 = !DILocation(line: 810, column: 1, scope: !29254, inlinedAt: !29255)
!29254 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1K_IB1I_B1G_E14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterTIB1I_Amj2_EB1H_B1H_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB4e_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0EE0E0EB4i_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29255 = !DILocation(line: 810, column: 1, scope: !29256, inlinedAt: !29257)
!29256 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#5}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1o_xEB20_ERB20_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2q_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics3_0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_B1q_IB1o_B2c_E14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterB1m_EB2i_EE0E0E0EB2u_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29257 = !DILocation(line: 289, column: 13, scope: !29191, inlinedAt: !29192)
!29258 = !{!29238}
!29259 = !DILocation(line: 129, column: 6, scope: !29180)
!29260 = distinct !DISubprogram(name: "fold<&alloc::vec::Vec<i64, alloc::alloc::Global>, core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1p_xEB21_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2m_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callRB21_NCINvMsj_B1r_IB1p_B5O_E14extend_trustedBN_E0E0EB2q_", scope: !2152, file: !2151, line: 124, type: !12, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29261 = !DILocation(line: 88, column: 5, scope: !29262, inlinedAt: !29263)
!29262 = distinct !DISubprogram(name: "map_fold<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_ERB1x_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1W_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callB1I_NCINvMsj_BX_IBV_B1I_E14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterBT_EB1O_EE0E0EB20_", scope: !2153, file: !2151, line: 84, type: !12, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29263 = !DILocation(line: 128, column: 30, scope: !29260)
!29264 = !DILocation(line: 407, column: 18, scope: !29265, inlinedAt: !29266)
!29265 = distinct !DISubprogram(name: "as_ptr<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_EE6as_ptrCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 401, type: !12, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29266 = distinct !DILocation(line: 1717, column: 32, scope: !29267, inlinedAt: !29268)
!29267 = distinct !DISubprogram(name: "eq<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_EENtNtB9_3cmp9PartialEq2eqCs2Aa799EbAFJ_11polars_time", scope: !2171, file: !375, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29268 = distinct !DILocation(line: 44, column: 20, scope: !29269, inlinedAt: !29272)
!29269 = distinct !DILexicalBlock(scope: !29270, file: !2174, line: 33, column: 13)
!29270 = distinct !DILexicalBlock(scope: !29271, file: !2174, line: 25, column: 86)
!29271 = distinct !DISubprogram(name: "fold<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), (), core::iter::adapters::map::map_fold::{closure_env#0}<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_", scope: !2177, file: !2174, line: 259, type: !12, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29272 = distinct !DILocation(line: 128, column: 19, scope: !29260)
!29273 = !DILocation(line: 1717, column: 9, scope: !29267, inlinedAt: !29268)
!29274 = !DILocation(line: 25, column: 86, scope: !29270, inlinedAt: !29272)
!29275 = !DILocation(line: 729, column: 18, scope: !29276, inlinedAt: !29278)
!29276 = distinct !DILexicalBlock(scope: !29277, file: !2186, line: 726, column: 9)
!29277 = distinct !DISubprogram(name: "offset_from_unsigned<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBG_xEB1i_E20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2188, file: !2186, line: 701, type: !12, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29278 = distinct !DILocation(line: 887, column: 37, scope: !29279, inlinedAt: !29280)
!29279 = distinct !DISubprogram(name: "offset_from_unsigned<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBE_xEB1g_E20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 882, type: !12, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29280 = distinct !DILocation(line: 953, column: 32, scope: !29281, inlinedAt: !29282)
!29281 = distinct !DISubprogram(name: "offset_from_unsigned<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_EE20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 948, type: !12, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29282 = distinct !DILocation(line: 57, column: 30, scope: !29283, inlinedAt: !29272)
!29283 = distinct !DILexicalBlock(scope: !29284, file: !2174, line: 33, column: 13)
!29284 = distinct !DILexicalBlock(scope: !29285, file: !2174, line: 25, column: 86)
!29285 = distinct !DILexicalBlock(scope: !29286, file: !2174, line: 274, column: 17)
!29286 = distinct !DILexicalBlock(scope: !29271, file: !2174, line: 273, column: 17)
!29287 = !DILocation(line: 28, column: 9, scope: !29284, inlinedAt: !29272)
!29288 = !DILocation(line: 0, scope: !29286, inlinedAt: !29272)
!29289 = !DILocation(line: 659, column: 28, scope: !29290, inlinedAt: !29291)
!29290 = distinct !DISubprogram(name: "add<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBV_xEB1x_EE3addCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29291 = distinct !DILocation(line: 279, column: 67, scope: !29292, inlinedAt: !29272)
!29292 = distinct !DILexicalBlock(scope: !29285, file: !2174, line: 275, column: 17)
!29293 = !DILocation(line: 352, column: 44, scope: !29294, inlinedAt: !29295)
!29294 = distinct !DISubprogram(name: "{closure#6}", linkageName: "_RNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB7_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0Bb_", scope: !25022, file: !24923, line: 352, type: !36, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29295 = distinct !DILocation(line: 88, column: 28, scope: !29296, inlinedAt: !29297)
!29296 = distinct !DISubprogram(name: "{closure#0}<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_", scope: !2217, file: !2151, line: 88, type: !12, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29297 = distinct !DILocation(line: 279, column: 27, scope: !29292, inlinedAt: !29272)
!29298 = !DILocation(line: 961, column: 18, scope: !29299, inlinedAt: !29300)
!29299 = distinct !DISubprogram(name: "add<&alloc::vec::Vec<i64, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrORINtNtCsgZ49sUHp3tW_5alloc3vec3VecxE3addCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29300 = distinct !DILocation(line: 4029, column: 36, scope: !29301, inlinedAt: !29302)
!29301 = distinct !DISubprogram(name: "{closure#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0B2Q_", scope: !2307, file: !2306, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29302 = distinct !DILocation(line: 884, column: 29, scope: !29303, inlinedAt: !29304)
!29303 = distinct !DISubprogram(name: "{closure#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0E0B3R_", scope: !2312, file: !2244, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29304 = distinct !DILocation(line: 88, column: 21, scope: !29296, inlinedAt: !29297)
!29305 = !DILocation(line: 1921, column: 41, scope: !29306, inlinedAt: !29307)
!29306 = distinct !DISubprogram(name: "write<&alloc::vec::Vec<i64, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29307 = distinct !DILocation(line: 4029, column: 21, scope: !29301, inlinedAt: !29302)
!29308 = !{!29309, !29311, !29312, !29314, !29315, !29317, !29318}
!29309 = distinct !{!29309, !29310, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0B2Q_: argument 0"}
!29310 = distinct !{!29310, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0B2Q_"}
!29311 = distinct !{!29311, !29310, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecRIBz_xEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterTIBz_Amj2_EBJ_BJ_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2M_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0B2Q_: argument 1"}
!29312 = distinct !{!29312, !29313, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0E0B3R_: argument 0"}
!29313 = distinct !{!29313, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0E0B3R_"}
!29314 = distinct !{!29314, !29313, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1j_IB1h_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTIB1h_Amj2_EB1g_B1g_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3N_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0E0B3R_: argument 1"}
!29315 = distinct !{!29315, !29316, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_: argument 0"}
!29316 = distinct !{!29316, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_"}
!29317 = distinct !{!29317, !29316, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBX_xEB1z_ERB1z_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1Y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCINvMsj_BZ_IBX_B1K_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B22_: argument 1"}
!29318 = distinct !{!29318, !29319, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_: argument 0"}
!29319 = distinct !{!29319, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIBS_xEB1u_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_RB1u_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3i_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvB1G_8for_each4callB34_NCINvMsj_BU_IBS_B34_E14extend_trustedINtB2w_3MapBF_B3a_EE0E0E0EB3m_"}
!29320 = !DILocation(line: 284, column: 24, scope: !29292, inlinedAt: !29272)
!29321 = distinct !{!29321, !24970, !24971}
!29322 = !DILocation(line: 19, column: 9, scope: !29323, inlinedAt: !29324)
!29323 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !2326, file: !2325, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29324 = distinct !DILocation(line: 4033, column: 31, scope: !29301, inlinedAt: !29302)
!29325 = !DILocation(line: 898, column: 17, scope: !29326, inlinedAt: !29327)
!29326 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2333, file: !2332, line: 886, type: !12, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29327 = distinct !DILocation(line: 283, column: 36, scope: !29292, inlinedAt: !29272)
!29328 = distinct !{!29328, !24971, !24970}
!29329 = !DILocation(line: 31, column: 9, scope: !2338, inlinedAt: !29330)
!29330 = !DILocation(line: 810, column: 1, scope: !2341, inlinedAt: !29331)
!29331 = !DILocation(line: 810, column: 1, scope: !29332, inlinedAt: !29333)
!29332 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecRIB1g_xEE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterTIB1g_Amj2_EB1q_B1q_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB3g_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0EB3k_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29333 = !DILocation(line: 810, column: 1, scope: !29334, inlinedAt: !29335)
!29334 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callRINtNtCsgZ49sUHp3tW_5alloc3vec3VecxENCINvMsj_B1K_IB1I_B1G_E14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterTIB1I_Amj2_EB1H_B1H_EENCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB4e_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0EE0E0EB4i_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29335 = !DILocation(line: 810, column: 1, scope: !29336, inlinedAt: !29337)
!29336 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>), &alloc::vec::Vec<i64, alloc::alloc::Global>, (), polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<&alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<(alloc::vec::Vec<[u32; 2], alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>, alloc::vec::Vec<i64, alloc::alloc::Global>)>, polars_time::group_by::dynamic::{impl#3}::impl_group_by_dynamic::{closure_env#6}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRTINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB1o_xEB20_ERB20_uNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2q_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics4_0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_B1q_IB1o_B2c_E14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterB1m_EB2i_EE0E0E0EB2u_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29337 = !DILocation(line: 289, column: 13, scope: !29271, inlinedAt: !29272)
!29338 = !{!29318}
!29339 = !DILocation(line: 129, column: 6, scope: !29260)
!29340 = distinct !DISubprogram(name: "fold<i8, core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3E_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecaE14extend_trustedBN_E0E0EB2z_", scope: !2152, file: !2151, line: 124, type: !12, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29341 = !DILocation(line: 128, column: 9, scope: !29340)
!29342 = !DILocation(line: 88, column: 5, scope: !29343, inlinedAt: !29344)
!29343 = distinct !DISubprogram(name: "map_fold<&i8, i8, (), polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4d_3VecaE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IteraEBW_EE0E0EB26_", scope: !2153, file: !2151, line: 84, type: !12, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29344 = !DILocation(line: 128, column: 30, scope: !29340)
!29345 = !DILocation(line: 1717, column: 9, scope: !29346, inlinedAt: !29347)
!29346 = distinct !DISubprogram(name: "eq<i8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullaENtNtB9_3cmp9PartialEq2eqCs2Aa799EbAFJ_11polars_time", scope: !2171, file: !375, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29347 = distinct !DILocation(line: 44, column: 20, scope: !29348, inlinedAt: !29351)
!29348 = distinct !DILexicalBlock(scope: !29349, file: !2174, line: 33, column: 13)
!29349 = distinct !DILexicalBlock(scope: !29350, file: !2174, line: 25, column: 86)
!29350 = distinct !DISubprogram(name: "fold<i8, (), core::iter::adapters::map::map_fold::{closure_env#0}<&i8, i8, (), polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_", scope: !2177, file: !2174, line: 259, type: !12, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29351 = distinct !DILocation(line: 128, column: 19, scope: !29340)
!29352 = !DILocation(line: 25, column: 86, scope: !29349, inlinedAt: !29351)
!29353 = !DILocation(line: 729, column: 18, scope: !29354, inlinedAt: !29356)
!29354 = distinct !DILexicalBlock(scope: !29355, file: !2186, line: 726, column: 9)
!29355 = distinct !DISubprogram(name: "offset_from_unsigned<i8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPa20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2188, file: !2186, line: 701, type: !12, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29356 = distinct !DILocation(line: 887, column: 37, scope: !29357, inlinedAt: !29358)
!29357 = distinct !DISubprogram(name: "offset_from_unsigned<i8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOa20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 882, type: !12, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29358 = distinct !DILocation(line: 953, column: 32, scope: !29359, inlinedAt: !29360)
!29359 = distinct !DISubprogram(name: "offset_from_unsigned<i8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullaE20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 948, type: !12, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29360 = distinct !DILocation(line: 57, column: 30, scope: !29361, inlinedAt: !29351)
!29361 = distinct !DILexicalBlock(scope: !29362, file: !2174, line: 33, column: 13)
!29362 = distinct !DILexicalBlock(scope: !29363, file: !2174, line: 25, column: 86)
!29363 = distinct !DILexicalBlock(scope: !29364, file: !2174, line: 274, column: 17)
!29364 = distinct !DILexicalBlock(scope: !29350, file: !2174, line: 273, column: 17)
!29365 = !DILocation(line: 28, column: 9, scope: !29362, inlinedAt: !29351)
!29366 = !DILocation(line: 0, scope: !29364, inlinedAt: !29351)
!29367 = !DILocation(line: 659, column: 28, scope: !29368, inlinedAt: !29369)
!29368 = distinct !DISubprogram(name: "add<i8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullaE3addCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29369 = distinct !DILocation(line: 279, column: 67, scope: !29370, inlinedAt: !29351)
!29370 = distinct !DILexicalBlock(scope: !29363, file: !2174, line: 275, column: 17)
!29371 = !DILocation(line: 279, column: 27, scope: !29370, inlinedAt: !29351)
!29372 = !{!29373}
!29373 = distinct !{!29373, !29374, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_: argument 0"}
!29374 = distinct !{!29374, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3p_"}
!29375 = !DILocation(line: 34, column: 26, scope: !29376, inlinedAt: !29379)
!29376 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0B5_", scope: !29378, file: !29377, line: 34, type: !36, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29377 = !DIFile(filename: "crates/polars-time/src/chunkedarray/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "8d84dac2c94e27602ed5ca627993334c")
!29378 = !DINamespace(name: "months_to_quarters", scope: !3484)
!29379 = distinct !DILocation(line: 30, column: 52, scope: !29380, inlinedAt: !29384)
!29380 = distinct !DISubprogram(name: "{closure#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0B19_", scope: !29382, file: !29381, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29381 = !DIFile(filename: "crates/polars-arrow/src/compute/arity_assign.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "0dc02332f2912fae11ca34d413aa9730")
!29382 = !DINamespace(name: "unary", scope: !29383)
!29383 = !DINamespace(name: "arity_assign", scope: !20982)
!29384 = distinct !DILocation(line: 88, column: 28, scope: !29385, inlinedAt: !29386)
!29385 = distinct !DISubprogram(name: "{closure#0}<&i8, i8, (), polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4f_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0E0B28_", scope: !2217, file: !2151, line: 88, type: !36, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29386 = distinct !DILocation(line: 279, column: 27, scope: !29370, inlinedAt: !29351)
!29387 = !DILocation(line: 961, column: 18, scope: !29388, inlinedAt: !29389)
!29388 = distinct !DISubprogram(name: "add<i8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOa3addCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29389 = distinct !DILocation(line: 4029, column: 36, scope: !29390, inlinedAt: !29391)
!29390 = distinct !DISubprogram(name: "{closure#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0B3r_", scope: !2307, file: !2306, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29391 = distinct !DILocation(line: 884, column: 29, scope: !29392, inlinedAt: !29393)
!29392 = distinct !DISubprogram(name: "{closure#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0E0B4l_", scope: !2312, file: !2244, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29393 = distinct !DILocation(line: 88, column: 21, scope: !29385, inlinedAt: !29386)
!29394 = !DILocation(line: 1921, column: 41, scope: !29395, inlinedAt: !29396)
!29395 = distinct !DISubprogram(name: "write<i8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeaECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29396 = distinct !DILocation(line: 4029, column: 21, scope: !29390, inlinedAt: !29391)
!29397 = !{!29398, !29400, !29402, !29373}
!29398 = distinct !{!29398, !29399, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0B3r_: argument 0"}
!29399 = distinct !{!29399, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0B3r_"}
!29400 = distinct !{!29400, !29401, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0E0B4l_: argument 0"}
!29401 = distinct !{!29401, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0E0B4l_"}
!29402 = distinct !{!29402, !29403, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4f_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0E0B28_: argument 0"}
!29403 = distinct !{!29403, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4f_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0E0B28_"}
!29404 = !DILocation(line: 284, column: 24, scope: !29370, inlinedAt: !29351)
!29405 = distinct !{!29405, !24970, !24971}
!29406 = !{!"branch_weights", i32 4, i32 12}
!29407 = distinct !{!29407, !24970, !24971}
!29408 = !DILocation(line: 19, column: 9, scope: !29409, inlinedAt: !29410)
!29409 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !2326, file: !2325, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29410 = distinct !DILocation(line: 4033, column: 31, scope: !29390, inlinedAt: !29391)
!29411 = !DILocation(line: 898, column: 17, scope: !29412, inlinedAt: !29413)
!29412 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2333, file: !2332, line: 886, type: !12, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29413 = distinct !DILocation(line: 283, column: 36, scope: !29370, inlinedAt: !29351)
!29414 = distinct !{!29414, !24970}
!29415 = !DILocation(line: 31, column: 9, scope: !2338, inlinedAt: !29416)
!29416 = !DILocation(line: 810, column: 1, scope: !2341, inlinedAt: !29417)
!29417 = !DILocation(line: 810, column: 1, scope: !29418, inlinedAt: !29419)
!29418 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecaE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0EB3R_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29419 = !DILocation(line: 810, column: 1, scope: !29420, inlinedAt: !29421)
!29420 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecaE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0EE0E0EB4M_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29421 = !DILocation(line: 810, column: 1, scope: !29422, inlinedAt: !29423)
!29422 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&i8, i8, (), polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<i8>, polars_arrow::compute::arity_assign::unary::{closure_env#1}<i8, polars_time::chunkedarray::months_to_quarters::{closure_env#0}>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRaauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute12arity_assign5unaryaNCNvNtCs2Aa799EbAFJ_11polars_time12chunkedarray18months_to_quarters0Es_0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4G_3VecaE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IteraEB1p_EE0E0E0EB2z_", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29423 = !DILocation(line: 289, column: 13, scope: !29350, inlinedAt: !29351)
!29424 = !DILocation(line: 129, column: 6, scope: !29340)
!29425 = distinct !DISubprogram(name: "fold<u8, core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs2Aa799EbAFJ_11polars_time", scope: !2152, file: !2151, line: 124, type: !12, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29426 = !DILocation(line: 128, column: 9, scope: !29425)
!29427 = !DILocation(line: 128, column: 39, scope: !29425)
!29428 = !DILocation(line: 88, column: 5, scope: !29429, inlinedAt: !29430)
!29429 = distinct !DISubprogram(name: "map_fold<&u8, u8, (), alloc::str::replace_ascii::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtB12_3vecINtB2J_3VechE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterhEBW_EE0E0ECs2Aa799EbAFJ_11polars_time", scope: !2153, file: !2151, line: 84, type: !12, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29430 = !DILocation(line: 128, column: 30, scope: !29425)
!29431 = !DILocation(line: 1717, column: 9, scope: !29432, inlinedAt: !29433)
!29432 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2Aa799EbAFJ_11polars_time", scope: !2171, file: !375, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29433 = distinct !DILocation(line: 44, column: 20, scope: !29434, inlinedAt: !29437)
!29434 = distinct !DILexicalBlock(scope: !29435, file: !2174, line: 33, column: 13)
!29435 = distinct !DILexicalBlock(scope: !29436, file: !2174, line: 25, column: 86)
!29436 = distinct !DISubprogram(name: "fold<u8, (), core::iter::adapters::map::map_fold::{closure_env#0}<&u8, u8, (), alloc::str::replace_ascii::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time", scope: !2177, file: !2174, line: 259, type: !12, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29437 = distinct !DILocation(line: 128, column: 19, scope: !29425)
!29438 = !DILocation(line: 25, column: 86, scope: !29435, inlinedAt: !29437)
!29439 = !DILocation(line: 729, column: 18, scope: !29440, inlinedAt: !29442)
!29440 = distinct !DILexicalBlock(scope: !29441, file: !2186, line: 726, column: 9)
!29441 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2188, file: !2186, line: 701, type: !12, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29442 = distinct !DILocation(line: 887, column: 37, scope: !29443, inlinedAt: !29444)
!29443 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 882, type: !12, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29444 = distinct !DILocation(line: 953, column: 32, scope: !29445, inlinedAt: !29446)
!29445 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE20offset_from_unsignedCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 948, type: !12, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29446 = distinct !DILocation(line: 57, column: 30, scope: !29447, inlinedAt: !29437)
!29447 = distinct !DILexicalBlock(scope: !29448, file: !2174, line: 33, column: 13)
!29448 = distinct !DILexicalBlock(scope: !29449, file: !2174, line: 25, column: 86)
!29449 = distinct !DILexicalBlock(scope: !29450, file: !2174, line: 274, column: 17)
!29450 = distinct !DILexicalBlock(scope: !29436, file: !2174, line: 273, column: 17)
!29451 = !DILocation(line: 28, column: 9, scope: !29448, inlinedAt: !29437)
!29452 = !DILocation(line: 0, scope: !29450, inlinedAt: !29437)
!29453 = !DILocation(line: 659, column: 28, scope: !29454, inlinedAt: !29455)
!29454 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCs2Aa799EbAFJ_11polars_time", scope: !376, file: !375, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29455 = distinct !DILocation(line: 279, column: 67, scope: !29456, inlinedAt: !29437)
!29456 = distinct !DILexicalBlock(scope: !29449, file: !2174, line: 275, column: 17)
!29457 = !DILocation(line: 279, column: 27, scope: !29456, inlinedAt: !29437)
!29458 = !{!29459}
!29459 = distinct !{!29459, !29460, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time: argument 0"}
!29460 = distinct !{!29460, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2Aa799EbAFJ_11polars_time"}
!29461 = !DILocation(line: 709, column: 62, scope: !29462, inlinedAt: !29466)
!29462 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0Cs2Aa799EbAFJ_11polars_time", scope: !29464, file: !29463, line: 709, type: !36, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29463 = !DIFile(filename: "library/alloc/src/str.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "df2687b23b15ff9362a5ffa3e0f54f56")
!29464 = !DINamespace(name: "replace_ascii", scope: !29465)
!29465 = !DINamespace(name: "str", scope: !383)
!29466 = distinct !DILocation(line: 88, column: 28, scope: !29467, inlinedAt: !29468)
!29467 = distinct !DISubprogram(name: "{closure#0}<&u8, u8, (), alloc::str::replace_ascii::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs2Aa799EbAFJ_11polars_time", scope: !2217, file: !2151, line: 88, type: !36, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29468 = distinct !DILocation(line: 279, column: 27, scope: !29456, inlinedAt: !29437)
!29469 = !{!29470, !29459}
!29470 = distinct !{!29470, !29471, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs2Aa799EbAFJ_11polars_time: argument 0"}
!29471 = distinct !{!29471, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs2Aa799EbAFJ_11polars_time"}
!29472 = !DILocation(line: 709, column: 56, scope: !29462, inlinedAt: !29466)
!29473 = !DILocation(line: 709, column: 69, scope: !29462, inlinedAt: !29466)
!29474 = !DILocation(line: 709, column: 53, scope: !29462, inlinedAt: !29466)
!29475 = !DILocation(line: 709, scope: !29462, inlinedAt: !29466)
!29476 = !DILocation(line: 961, column: 18, scope: !29477, inlinedAt: !29478)
!29477 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs2Aa799EbAFJ_11polars_time", scope: !2193, file: !2192, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29478 = distinct !DILocation(line: 4029, column: 36, scope: !29479, inlinedAt: !29480)
!29479 = distinct !DISubprogram(name: "{closure#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Cs2Aa799EbAFJ_11polars_time", scope: !2307, file: !2306, line: 4028, type: !12, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29480 = distinct !DILocation(line: 884, column: 29, scope: !29481, inlinedAt: !29482)
!29481 = distinct !DISubprogram(name: "{closure#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cs2Aa799EbAFJ_11polars_time", scope: !2312, file: !2244, line: 884, type: !12, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29482 = distinct !DILocation(line: 88, column: 21, scope: !29467, inlinedAt: !29468)
!29483 = !DILocation(line: 1921, column: 41, scope: !29484, inlinedAt: !29485)
!29484 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writehECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 1898, type: !12, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29485 = distinct !DILocation(line: 4029, column: 21, scope: !29479, inlinedAt: !29480)
!29486 = !{!29487, !29489, !29470, !29459}
!29487 = distinct !{!29487, !29488, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Cs2Aa799EbAFJ_11polars_time: argument 0"}
!29488 = distinct !{!29488, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Cs2Aa799EbAFJ_11polars_time"}
!29489 = distinct !{!29489, !29490, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cs2Aa799EbAFJ_11polars_time: argument 0"}
!29490 = distinct !{!29490, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cs2Aa799EbAFJ_11polars_time"}
!29491 = !DILocation(line: 19, column: 9, scope: !29492, inlinedAt: !29493)
!29492 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !2326, file: !2325, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29493 = distinct !DILocation(line: 4033, column: 31, scope: !29479, inlinedAt: !29480)
!29494 = !DILocation(line: 898, column: 17, scope: !29495, inlinedAt: !29496)
!29495 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2333, file: !2332, line: 886, type: !12, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29496 = distinct !DILocation(line: 283, column: 36, scope: !29456, inlinedAt: !29437)
!29497 = !DILocation(line: 284, column: 24, scope: !29456, inlinedAt: !29437)
!29498 = !DILocation(line: 31, column: 9, scope: !2338, inlinedAt: !29499)
!29499 = !DILocation(line: 810, column: 1, scope: !2341, inlinedAt: !29500)
!29500 = !DILocation(line: 810, column: 1, scope: !29501, inlinedAt: !29502)
!29501 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VechE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterhENCNvNtBR_3str13replace_ascii0EE0ECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29502 = !DILocation(line: 810, column: 1, scope: !29503, inlinedAt: !29504)
!29503 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VechE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterhENCNvNtB1S_3str13replace_ascii0EE0E0ECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29504 = !DILocation(line: 810, column: 1, scope: !29505, inlinedAt: !29506)
!29505 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&u8, u8, (), alloc::str::replace_ascii::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<u8>, alloc::str::replace_ascii::{closure_env#0}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtB1v_3vecINtB3c_3VechE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterhEB1p_EE0E0E0ECs2Aa799EbAFJ_11polars_time", scope: !246, file: !245, line: 810, type: !36, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29506 = !DILocation(line: 289, column: 13, scope: !29436, inlinedAt: !29437)
!29507 = !DILocation(line: 129, column: 6, scope: !29425)
!29508 = distinct !DISubprogram(name: "try_fold<core::result::Result<polars_core::frame::column::Column, polars_error::PolarsError>, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::frame::column::Column, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, fn(polars_core::frame::column::Column) -> core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvMNtNtB2A_5frame10projectionNtB3x_23AmortizedColumnSelector15select_multipleRB1F_BX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4U_8try_folduNCINvNvB4U_12try_for_each4callNtNtB3z_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB8m_ENcNtB8I_5Break0E0B8I_E0IB8J_B8I_EECs2Aa799EbAFJ_11polars_time", scope: !2152, file: !2151, line: 115, type: !12, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29509 = !{!29510}
!29510 = distinct !{!29510, !29511, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBL_INtNtB2F_6result6ResultNtNtNtB1G_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2F_3ops12control_flow11ControlFlowIB5V_B4H_EENCINvMNtB4L_10projectionNtB6R_23AmortizedColumnSelector15select_multipleB4g_B3_E0NCINvXB3J_INtB3J_12GenericShuntINtB3H_3MapB3_B6L_EIB4l_NtNtB2F_7convert10InfallibleB5b_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4H_B6A_NcNtB6A_5Break0E0B6A_E0E0B5U_ECs2Aa799EbAFJ_11polars_time: argument 0"}
!29511 = distinct !{!29511, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBL_INtNtB2F_6result6ResultNtNtNtB1G_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2F_3ops12control_flow11ControlFlowIB5V_B4H_EENCINvMNtB4L_10projectionNtB6R_23AmortizedColumnSelector15select_multipleB4g_B3_E0NCINvXB3J_INtB3J_12GenericShuntINtB3H_3MapB3_B6L_EIB4l_NtNtB2F_7convert10InfallibleB5b_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4H_B6A_NcNtB6A_5Break0E0B6A_E0E0B5U_ECs2Aa799EbAFJ_11polars_time"}
!29512 = !DILocation(line: 121, column: 19, scope: !29508)
!29513 = !{!29514}
!29514 = distinct !{!29514, !29511, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBL_INtNtB2F_6result6ResultNtNtNtB1G_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2F_3ops12control_flow11ControlFlowIB5V_B4H_EENCINvMNtB4L_10projectionNtB6R_23AmortizedColumnSelector15select_multipleB4g_B3_E0NCINvXB3J_INtB3J_12GenericShuntINtB3H_3MapB3_B6L_EIB4l_NtNtB2F_7convert10InfallibleB5b_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4H_B6A_NcNtB6A_5Break0E0B6A_E0E0B5U_ECs2Aa799EbAFJ_11polars_time: argument 1"}
!29515 = !{!29516, !29514}
!29516 = distinct !{!29516, !29517, !"_RNvXsB_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time: argument 0"}
!29517 = distinct !{!29517, !"_RNvXsB_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time"}
!29518 = !DILocation(line: 1717, column: 9, scope: !20250, inlinedAt: !29519)
!29519 = distinct !DILocation(line: 180, column: 28, scope: !20252, inlinedAt: !29520)
!29520 = distinct !DILocation(line: 156, column: 23, scope: !20256, inlinedAt: !29521)
!29521 = distinct !DILocation(line: 2508, column: 34, scope: !29522, inlinedAt: !29525)
!29522 = distinct !DILexicalBlock(scope: !29523, file: !2244, line: 2508, column: 41)
!29523 = distinct !DILexicalBlock(scope: !29524, file: !2244, line: 2507, column: 9)
!29524 = distinct !DISubprogram(name: "try_fold<indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, core::result::Result<polars_core::frame::column::Column, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, ()>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::frame::column::Column, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, fn(polars_core::frame::column::Column) -> core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, ()>>", linkageName: "_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBL_INtNtB2F_6result6ResultNtNtNtB1G_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2F_3ops12control_flow11ControlFlowIB5V_B4H_EENCINvMNtB4L_10projectionNtB6R_23AmortizedColumnSelector15select_multipleB4g_B3_E0NCINvXB3J_INtB3J_12GenericShuntINtB3H_3MapB3_B6L_EIB4l_NtNtB2F_7convert10InfallibleB5b_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4H_B6A_NcNtB6A_5Break0E0B6A_E0E0B5U_ECs2Aa799EbAFJ_11polars_time", scope: !2245, file: !2244, line: 2501, type: !36, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29525 = distinct !DILocation(line: 121, column: 19, scope: !29508)
!29526 = !DILocation(line: 180, column: 28, scope: !20252, inlinedAt: !29520)
!29527 = !DILocation(line: 121, column: 47, scope: !29508)
!29528 = !{!29529, !29531, !29510, !29514}
!29529 = distinct !{!29529, !29530, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB10_NtNtNtB2h_9datatypes5dtype8DataTypeEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB5O_B4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8A_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0Cs2Aa799EbAFJ_11polars_time: argument 0"}
!29530 = distinct !{!29530, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB10_NtNtNtB2h_9datatypes5dtype8DataTypeEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB5O_B4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8A_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0Cs2Aa799EbAFJ_11polars_time"}
!29531 = distinct !{!29531, !29530, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB10_NtNtNtB2h_9datatypes5dtype8DataTypeEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB5O_B4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8A_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0Cs2Aa799EbAFJ_11polars_time: argument 1"}
!29532 = !DILocation(line: 659, column: 28, scope: !20276, inlinedAt: !29533)
!29533 = distinct !DILocation(line: 185, column: 40, scope: !20252, inlinedAt: !29520)
!29534 = !DILocation(line: 185, column: 25, scope: !20252, inlinedAt: !29520)
!29535 = !DILocation(line: 176, column: 9, scope: !20280, inlinedAt: !29536)
!29536 = distinct !DILocation(line: 250, column: 5, scope: !20284, inlinedAt: !29537)
!29537 = distinct !DILocation(line: 1165, column: 29, scope: !20286, inlinedAt: !29538)
!29538 = distinct !DILocation(line: 156, column: 30, scope: !20256, inlinedAt: !29521)
!29539 = !{!29531}
!29540 = !DILocation(line: 2509, column: 21, scope: !29522, inlinedAt: !29525)
!29541 = !{!29510, !29514}
!29542 = !DILocation(line: 95, column: 21, scope: !29543, inlinedAt: !29544)
!29543 = distinct !DISubprogram(name: "{closure#0}<&polars_utils::pl_str::PlSmallStr, core::result::Result<polars_core::frame::column::Column, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, ()>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::frame::column::Column, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, fn(polars_core::frame::column::Column) -> core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB10_NtNtNtB2h_9datatypes5dtype8DataTypeEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB5O_B4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8A_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0Cs2Aa799EbAFJ_11polars_time", scope: !2612, file: !2151, line: 95, type: !36, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29544 = distinct !DILocation(line: 2509, column: 21, scope: !29522, inlinedAt: !29525)
!29545 = !{!29546}
!29546 = distinct !{!29546, !29547, !"_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1E_NtNtNtB9_9datatypes5dtype8DataTypeEE0Cs2Aa799EbAFJ_11polars_time: argument 1"}
!29547 = distinct !{!29547, !"_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1E_NtNtNtB9_9datatypes5dtype8DataTypeEE0Cs2Aa799EbAFJ_11polars_time"}
!29548 = !DILocation(line: 95, column: 28, scope: !29543, inlinedAt: !29544)
!29549 = !DILocation(line: 57, column: 25, scope: !29550, inlinedAt: !29551)
!29550 = distinct !DISubprogram(name: "{closure#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>", linkageName: "_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1E_NtNtNtB9_9datatypes5dtype8DataTypeEE0Cs2Aa799EbAFJ_11polars_time", scope: !20361, file: !20360, line: 57, type: !36, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29551 = distinct !DILocation(line: 95, column: 28, scope: !29543, inlinedAt: !29544)
!29552 = !{!29553, !29546, !29529, !29531, !29510, !29514}
!29553 = distinct !{!29553, !29547, !"_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1E_NtNtNtB9_9datatypes5dtype8DataTypeEE0Cs2Aa799EbAFJ_11polars_time: argument 0"}
!29554 = !DILocation(line: 612, column: 33, scope: !20308, inlinedAt: !29555)
!29555 = distinct !DILocation(line: 359, column: 17, scope: !20310, inlinedAt: !29556)
!29556 = distinct !DILocation(line: 381, column: 54, scope: !20376, inlinedAt: !29557)
!29557 = distinct !DILocation(line: 558, column: 16, scope: !20378, inlinedAt: !29558)
!29558 = distinct !DILocation(line: 67, column: 16, scope: !20380, inlinedAt: !29559)
!29559 = distinct !DILocation(line: 99, column: 14, scope: !20382, inlinedAt: !29560)
!29560 = distinct !DILocation(line: 718, column: 9, scope: !20385, inlinedAt: !29561)
!29561 = distinct !DILocation(line: 57, column: 42, scope: !29550, inlinedAt: !29551)
!29562 = !{!29563, !29546, !29531}
!29563 = distinct !{!29563, !29564, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!29564 = distinct !{!29564, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!29565 = !{!29553, !29529, !29510, !29514}
!29566 = !DILocation(line: 359, column: 12, scope: !20310, inlinedAt: !29556)
!29567 = !DILocation(line: 2548, column: 13, scope: !20347, inlinedAt: !29568)
!29568 = distinct !DILocation(line: 365, column: 30, scope: !20310, inlinedAt: !29556)
!29569 = !DILocation(line: 1077, column: 12, scope: !20351, inlinedAt: !29570)
!29570 = distinct !DILocation(line: 1576, column: 8, scope: !20353, inlinedAt: !29571)
!29571 = distinct !DILocation(line: 364, column: 26, scope: !20310, inlinedAt: !29556)
!29572 = !DILocation(line: 369, column: 12, scope: !20374, inlinedAt: !29556)
!29573 = !DILocation(line: 358, column: 28, scope: !20311, inlinedAt: !29556)
!29574 = !DILocation(line: 368, column: 27, scope: !20338, inlinedAt: !29556)
!29575 = !DILocation(line: 369, column: 9, scope: !20374, inlinedAt: !29556)
!29576 = !DILocation(line: 0, scope: !20310, inlinedAt: !29556)
!29577 = !DILocation(line: 0, scope: !20312, inlinedAt: !29556)
!29578 = !DILocation(line: 57, column: 30, scope: !29550, inlinedAt: !29551)
!29579 = !DILocation(line: 835, column: 15, scope: !29580, inlinedAt: !29581)
!29580 = distinct !DISubprogram(name: "map<&polars_core::frame::column::Column, polars_error::PolarsError, polars_core::frame::column::Column, core::result::{impl#1}::cloned::{closure_env#0}<polars_core::frame::column::Column, polars_error::PolarsError>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapBJ_NCNvMs_B3_Bv_6cloned0ECs2Aa799EbAFJ_11polars_time", scope: !316, file: !17, line: 831, type: !12, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29581 = distinct !DILocation(line: 1741, column: 14, scope: !29582, inlinedAt: !29583)
!29582 = distinct !DISubprogram(name: "cloned<polars_core::frame::column::Column, polars_error::PolarsError>", linkageName: "_RNvMs_NtCscgRAwXFJnXP_4core6resultINtB4_6ResultRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6clonedCs2Aa799EbAFJ_11polars_time", scope: !316, file: !17, line: 1737, type: !12, scopeLine: 1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29583 = distinct !DILocation(line: 57, column: 52, scope: !29550, inlinedAt: !29551)
!29584 = !DILocation(line: 835, column: 9, scope: !29580, inlinedAt: !29581)
!29585 = !DILocation(line: 837, column: 23, scope: !29586, inlinedAt: !29581)
!29586 = distinct !DILexicalBlock(scope: !29580, file: !17, line: 837, column: 13)
!29587 = !DILocation(line: 837, column: 17, scope: !29580, inlinedAt: !29581)
!29588 = !DILocation(line: 57, column: 59, scope: !29550, inlinedAt: !29551)
!29589 = !DILocation(line: 2173, column: 9, scope: !20417, inlinedAt: !29590)
!29590 = distinct !DILocation(line: 195, column: 44, scope: !29591, inlinedAt: !29592)
!29591 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, polars_core::frame::projection::{impl#0}::select_multiple::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::frame::column::Column, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>, fn(polars_core::frame::column::Column) -> core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>, core::ops::control_flow::ControlFlow<polars_core::frame::column::Column, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvMNtNtB2T_5frame10projectionNtB3Q_23AmortizedColumnSelector15select_multipleRB1Y_B1g_E0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callNtNtB3S_6column6ColumnINtNtNtB9_3ops12control_flow11ControlFlowB7W_ENcNtB8i_5Break0E0B8i_E0Cs2Aa799EbAFJ_11polars_time", scope: !2684, file: !2683, line: 195, type: !36, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29592 = distinct !DILocation(line: 95, column: 21, scope: !29543, inlinedAt: !29544)
!29593 = !DILocation(line: 836, column: 16, scope: !29580, inlinedAt: !29581)
!29594 = !DILocation(line: 1741, column: 24, scope: !29595, inlinedAt: !29596)
!29595 = distinct !DISubprogram(name: "{closure#0}<polars_core::frame::column::Column, polars_error::PolarsError>", linkageName: "_RNCNvMs_NtCscgRAwXFJnXP_4core6resultINtB6_6ResultRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6cloned0Cs2Aa799EbAFJ_11polars_time", scope: !20424, file: !17, line: 1741, type: !12, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29596 = distinct !DILocation(line: 836, column: 25, scope: !29597, inlinedAt: !29581)
!29597 = distinct !DILexicalBlock(scope: !29580, file: !17, line: 836, column: 13)
!29598 = !{!29529, !29510, !29514}
!29599 = !DILocation(line: 2173, column: 15, scope: !20417, inlinedAt: !29590)
!29600 = !DILocation(line: 810, column: 1, scope: !2693, inlinedAt: !29601)
!29601 = distinct !DILocation(line: 198, column: 21, scope: !29602, inlinedAt: !29592)
!29602 = distinct !DILexicalBlock(scope: !29591, file: !2683, line: 197, column: 17)
!29603 = !{!29604}
!29604 = distinct !{!29604, !29605, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2Aa799EbAFJ_11polars_time: argument 0"}
!29605 = distinct !{!29605, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2Aa799EbAFJ_11polars_time"}
!29606 = !{!29607, !29609, !29529, !29531, !29510, !29514}
end_hunk_1
