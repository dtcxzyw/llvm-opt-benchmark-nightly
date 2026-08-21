inline.NumInlined: 308
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !133, !noalias !136
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !136, !noalias !133
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !133, !noalias !136
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !136, !noalias !133
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !146, !noalias !148
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !148, !noalias !146
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !146, !noalias !148
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !148, !noalias !146
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !150
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !151
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %i.m, %bb.c ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.m = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.02.0.i, ptr noundef nonnull align 8 %i.l) ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !154
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1 = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.sroa.02.0.i2 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.z, %bb.e ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.04.0.i1
  %i.z = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.sroa.02.0.i2, ptr noundef nonnull align 8 %i.y) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i1, 1           ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.e

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.0.0.i3 = phi i64 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !162, !noalias !165, !nonnull !8, !noundef !8
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !162, !noalias !165
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.g, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !162, !noalias !165
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.f), !noalias !157
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !169
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !171, !noalias !174, !nonnull !8, !noundef !8
  %.promoted.i3 = load ptr, ptr %i.i, align 8, !alias.scope !171, !noalias !174
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.l = phi ptr [ %i.m, %bb.g ], [ %.promoted.i3, %bb.e ] ; 3 uses
  %.not.not.not.i4.not.not.not.not.not = icmp ne ptr %i.l, %i.k ; 2 uses
  br i1 %.not.not.not.i4.not.not.not.not.not, label %bb.g, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !171, !noalias !174
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.l), !noalias !166
  br i1 %i.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5, label %bb.f

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ %.not.not.not.i4.not.not.not.not.not, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11rotate_leftCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw nsw i64 %1, %2                   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  %i.d = icmp eq i64 %2, 0
  %i.e = icmp eq i64 %i.b, 0
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i64 range(i64 0, -9223372036854775808) %2)
  %i.f = icmp samesign ult i64 %..i, 257
  br i1 %i.f, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %i.b, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.c, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.c, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 8 %i.a, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit

.preheader.i:                                     ; preds = %bb.d, %.loopexit.i.i
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.2.i.i, %.loopexit.i.i ], [ %i.b, %bb.d ] ; 26 uses
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.2.i.i, %.loopexit.i.i ], [ %i.c, %bb.d ] ; 10 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %.loopexit.i.i ], [ %2, %bb.d ] ; 18 uses
  %.not.i2.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.016.0.i.i
  br i1 %.not.i2.i, label %.preheader.i.i, label %.preheader56.split.i.i

.preheader56.split.i.i:                           ; preds = %.preheader.i
  %i.i = sub i64 0, %.sroa.016.0.i.i              ; 3 uses
  %i.j = lshr i64 %.sroa.016.0.i.i, 3             ; 9 uses
  %i.k = and i64 %.sroa.016.0.i.i, 7              ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.j, 0             ; 2 uses
  %i.l = and i64 %.sroa.016.0.i.i, -8             ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, 4
  %i.n = and i64 %.sroa.016.0.i.i, 2
  %i.o = icmp eq i64 %i.n, 0
  %i.p = and i64 %.sroa.016.0.i.i, 1
  %i.q = icmp eq i64 %i.p, 0
  %.not4.i46.i.i = icmp eq i64 %i.k, 0
  br i1 %.not4.i46.i.i, label %.preheader56.split.split.us.i.i, label %.preheader56.split.split.i.i.preheader

.preheader56.split.split.i.i.preheader:           ; preds = %.preheader56.split.i.i
  %i.r = and i64 %.sroa.016.0.i.i, -8             ; 2 uses
  %min.iters.check94 = icmp ult i64 %.sroa.016.0.i.i, 32
  %n.vec96 = and i64 %i.j, 2305843009213693948    ; 3 uses
  %cmp.n105 = icmp eq i64 %i.j, %n.vec96
  %i.s = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.s, 0
  br label %.preheader56.split.split.i.i

.preheader56.split.split.us.i.i:                  ; preds = %.preheader56.split.i.i
  br i1 %.not.i39.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i, label %.preheader.i40.preheader.us.i.i.preheader

.preheader.i40.preheader.us.i.i.preheader:        ; preds = %.preheader56.split.split.us.i.i
  %min.iters.check71 = icmp ult i64 %.sroa.016.0.i.i, 32
  %n.vec73 = and i64 %i.j, 2305843009213693948    ; 3 uses
  %cmp.n82 = icmp eq i64 %i.j, %n.vec73
  %i.t = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod120.not = icmp eq i64 %i.t, 0
  br label %.preheader.i40.preheader.us.i.i

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i: ; preds = %.preheader56.split.split.us.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i
  %.sroa.010.3.us62.us.i.i = phi ptr [ %i.u, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.010.0.i.i, %.preheader56.split.split.us.i.i ]
  %.sroa.0.2.us63.us.i.i = phi i64 [ %i.v, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.0.0.i.i, %.preheader56.split.split.us.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us62.us.i.i, i64 %i.i ; 2 uses
  %i.v = sub nuw nsw i64 %.sroa.0.2.us63.us.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.w = icmp ult i64 %i.v, %.sroa.016.0.i.i
  br i1 %i.w, label %.loopexit.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i

.preheader.i40.preheader.us.i.i:                  ; preds = %.preheader.i40.preheader.us.i.i.preheader, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i
  %indvar62 = phi i64 [ %indvar.next63, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ 0, %.preheader.i40.preheader.us.i.i.preheader ] ; 2 uses
  %.sroa.010.3.us62.i.i = phi ptr [ %i.x, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.010.0.i.i, %.preheader.i40.preheader.us.i.i.preheader ] ; 6 uses
  %.sroa.0.2.us63.i.i = phi i64 [ %i.aq, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.0.0.i.i, %.preheader.i40.preheader.us.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.010.3.us62.i.i, i64 %i.i ; 7 uses
  br i1 %min.iters.check71, label %.preheader.i40.us.i.i.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %.preheader.i40.preheader.us.i.i
  %i.y = mul i64 %.sroa.016.0.i.i, %indvar62      ; 2 uses
  %i.z = sub i64 %.sroa.016.0.i.i, %i.y
  %scevgep65 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.z
  %i.aa = sub i64 0, %i.y
  %scevgep64 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.aa
  %bound067 = icmp ult ptr %i.x, %scevgep65
  %bound168 = icmp ult ptr %.sroa.010.3.us62.i.i, %scevgep64
  %found.conflict69 = and i1 %bound067, %bound168
  br i1 %found.conflict69, label %.preheader.i40.us.i.i.preheader, label %vector.body74

vector.body74:                                    ; preds = %vector.memcheck61, %vector.body74
  %index75 = phi i64 [ %index.next80, %vector.body74 ], [ 0, %vector.memcheck61 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index75 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %index75 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %wide.load76.a = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !180, !noalias !183
  %wide.load77.a = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !180, !noalias !183
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !183, !noalias !175
  %wide.load79 = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !183, !noalias !175
  store <2 x i64> %wide.load78, ptr %i.ab, align 1, !alias.scope !180, !noalias !183
  store <2 x i64> %wide.load79, ptr %i.ad, align 1, !alias.scope !180, !noalias !183
  store <2 x i64> %wide.load76.a, ptr %i.ac, align 1, !alias.scope !183, !noalias !175
  store <2 x i64> %wide.load77.a, ptr %i.ae, align 1, !alias.scope !183, !noalias !175
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.af, label %middle.block81, label %vector.body74, !llvm.loop !185

middle.block81:                                   ; preds = %vector.body74
  br i1 %cmp.n82, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i.preheader

.preheader.i40.us.i.i.preheader:                  ; preds = %vector.memcheck61, %.preheader.i40.preheader.us.i.i, %middle.block81
  %.sroa.0.04.i.i41.us.i.i.ph = phi i64 [ 0, %vector.memcheck61 ], [ 0, %.preheader.i40.preheader.us.i.i ], [ %n.vec73, %middle.block81 ] ; 5 uses
  %.neg123 = or disjoint i64 %.sroa.0.04.i.i41.us.i.i.ph, 1
  br i1 %lcmp.mod120.not, label %.preheader.i40.us.i.i.prol.loopexit, label %.preheader.i40.us.i.i.prol

.preheader.i40.us.i.i.prol:                       ; preds = %.preheader.i40.us.i.i.preheader
  %i.ag = or disjoint i64 %.sroa.0.04.i.i41.us.i.i.ph, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.0.04.i.i41.us.i.i.ph ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %.sroa.0.04.i.i41.us.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.us.i.i.prol = load i64, ptr %i.ah, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.us.i.i.prol = load i64, ptr %i.ai, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i.prol, ptr %i.ah, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i.prol, ptr %i.ai, align 1, !alias.scope !178, !noalias !175
  br label %.preheader.i40.us.i.i.prol.loopexit

.preheader.i40.us.i.i.prol.loopexit:              ; preds = %.preheader.i40.us.i.i.prol, %.preheader.i40.us.i.i.preheader
  %.sroa.0.04.i.i41.us.i.i.unr = phi i64 [ %.sroa.0.04.i.i41.us.i.i.ph, %.preheader.i40.us.i.i.preheader ], [ %i.ag, %.preheader.i40.us.i.i.prol ]
  %i.aj = icmp eq i64 %i.j, %.neg123
  br i1 %i.aj, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i

.preheader.i40.us.i.i:                            ; preds = %.preheader.i40.us.i.i.prol.loopexit, %.preheader.i40.us.i.i
  %.sroa.0.04.i.i41.us.i.i = phi i64 [ %i.an, %.preheader.i40.us.i.i ], [ %.sroa.0.04.i.i41.us.i.i.unr, %.preheader.i40.us.i.i.prol.loopexit ] ; 4 uses
  %i.ak = add nuw nsw i64 %.sroa.0.04.i.i41.us.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.0.04.i.i41.us.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %.sroa.0.04.i.i41.us.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.us.i.i = load i64, ptr %i.al, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.us.i.i = load i64, ptr %i.am, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i, ptr %i.al, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i, ptr %i.am, align 1, !alias.scope !178, !noalias !175
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i41.us.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.sroa.0.0.copyload.i.i.i42.us.i.i.1 = load i64, ptr %i.ao, align 1, !alias.scope !186, !noalias !188
  %.sroa.02.0.copyload.i.i.i43.us.i.i.1 = load i64, ptr %i.ap, align 1, !alias.scope !188, !noalias !186
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i.1, ptr %i.ao, align 1, !alias.scope !186, !noalias !188
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i.1, ptr %i.ap, align 1, !alias.scope !188, !noalias !186
  %exitcond.not.i.i44.us.i.i.1 = icmp eq i64 %i.an, %i.j
  br i1 %exitcond.not.i.i44.us.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i, !llvm.loop !190

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i: ; preds = %.preheader.i40.us.i.i.prol.loopexit, %.preheader.i40.us.i.i, %middle.block81
  %i.aq = sub i64 %.sroa.0.2.us63.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.016.0.i.i
  %indvar.next63 = add i64 %indvar62, 1
  br i1 %i.ar, label %.loopexit.i.i, label %.preheader.i40.preheader.us.i.i

.preheader.i.i:                                   ; preds = %.preheader.i
  %i.as = sub i64 0, %.sroa.0.0.i.i
  %i.at = lshr i64 %.sroa.0.0.i.i, 3              ; 5 uses
  %i.au = and i64 %.sroa.0.0.i.i, 7               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.at, 0
  %.not4.i.i.i = icmp eq i64 %i.au, 0
  %i.av = and i64 %.sroa.0.0.i.i, -8              ; 4 uses
  %i.aw = icmp samesign ult i64 %i.au, 4
  %i.ax = and i64 %.sroa.0.0.i.i, 2
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %.sroa.0.0.i.i, 1
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = sub i64 %i.av, %.sroa.0.0.i.i
  %i.bc = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.av
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 32
  %n.vec = and i64 %i.at, 2305843009213693948     ; 3 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  %i.be = and i64 %.sroa.0.0.i.i, 8
  %lcmp.mod122.not = icmp eq i64 %i.be, 0
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, %.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.sroa.016.1.i.i = phi i64 [ %i.ce, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.016.0.i.i, %.preheader.i.i ]
  %.sroa.010.1.i.i = phi ptr [ %i.cd, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.010.0.i.i, %.preheader.i.i ] ; 8 uses
  %i.bf = mul i64 %.sroa.0.0.i.i, %indvar         ; 2 uses
  %scevgep56.a = getelementptr i8, ptr %i.bc, i64 %i.bf
  %scevgep57 = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bg = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %i.as ; 6 uses
  br i1 %.not.i.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.h
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.i.preheader
  %bound0 = icmp ult ptr %i.bg, %scevgep57
  %bound1 = icmp ult ptr %.sroa.010.1.i.i, %scevgep56.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.preheader107, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bh, align 1, !alias.scope !196, !noalias !199
  %wide.load58.a = load <2 x i64>, ptr %i.bj, align 1, !alias.scope !196, !noalias !199
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load59.a = load <2 x i64>, ptr %i.bi, align 1, !alias.scope !199, !noalias !191
  %wide.load60 = load <2 x i64>, ptr %i.bk, align 1, !alias.scope !199, !noalias !191
  store <2 x i64> %wide.load59.a, ptr %i.bh, align 1, !alias.scope !196, !noalias !199
  store <2 x i64> %wide.load60, ptr %i.bj, align 1, !alias.scope !196, !noalias !199
  store <2 x i64> %wide.load, ptr %i.bi, align 1, !alias.scope !199, !noalias !191
  store <2 x i64> %wide.load58.a, ptr %i.bk, align 1, !alias.scope !199, !noalias !191
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i.preheader107

.preheader.i.i.i.preheader107:                    ; preds = %vector.memcheck, %.preheader.i.i.i.preheader, %middle.block
  %.sroa.0.04.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg124 = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  br i1 %lcmp.mod122.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader107
  %i.bm = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %.sroa.0.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bn, align 1, !alias.scope !191, !noalias !194
  %.sroa.02.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bo, align 1, !alias.scope !194, !noalias !191
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.prol, ptr %i.bn, align 1, !alias.scope !191, !noalias !194
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.prol, ptr %i.bo, align 1, !alias.scope !194, !noalias !191
  br label %.preheader.i.i.i.prol.loopexit

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader107
  %.sroa.0.04.i.i.i.i.unr = phi i64 [ %.sroa.0.04.i.i.i.i.ph, %.preheader.i.i.i.preheader107 ], [ %i.bm, %.preheader.i.i.i.prol ]
  %i.bp = icmp eq i64 %i.at, %.neg124
  br i1 %i.bp, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.bt, %.preheader.i.i.i ], [ %.sroa.0.04.i.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 4 uses
  %i.bq = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !191, !noalias !194
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.bs, align 1, !alias.scope !194, !noalias !191
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.br, align 1, !alias.scope !191, !noalias !194
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bs, align 1, !alias.scope !194, !noalias !191
  %i.bt = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %i.bq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bu, align 1, !alias.scope !202, !noalias !204
  %.sroa.02.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bv, align 1, !alias.scope !204, !noalias !202
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.1, ptr %i.bu, align 1, !alias.scope !202, !noalias !204
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.1, ptr %i.bv, align 1, !alias.scope !204, !noalias !202
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.bt, %i.at
  br i1 %exitcond.not.i.i.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !206

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block, %bb.h
  br i1 %.not4.i.i.i, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.av ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 %i.av ; 4 uses
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %.sroa.0.0.copyload.i.i5.i.i.i = load i32, ptr %i.bw, align 1, !alias.scope !207, !noalias !210
  %.sroa.02.0.copyload.i.i6.i.i.i = load i32, ptr %i.bx, align 1, !alias.scope !210, !noalias !207
  store i32 %.sroa.02.0.copyload.i.i6.i.i.i, ptr %i.bw, align 1, !alias.scope !207, !noalias !210
  store i32 %.sroa.0.0.copyload.i.i5.i.i.i, ptr %i.bx, align 1, !alias.scope !210, !noalias !207
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ 4, %bb.j ] ; 4 uses
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.sroa.0.0.copyload.i9.i.i.i.i = load i16, ptr %i.by, align 1, !alias.scope !212, !noalias !215
  %.sroa.02.0.copyload.i10.i.i.i.i = load i16, ptr %i.bz, align 1, !alias.scope !215, !noalias !212
  store i16 %.sroa.02.0.copyload.i10.i.i.i.i, ptr %i.by, align 1, !alias.scope !212, !noalias !215
  store i16 %.sroa.0.0.copyload.i9.i.i.i.i, ptr %i.bz, align 1, !alias.scope !215, !noalias !212
  %i.ca = or disjoint i64 %.sroa.0.0.i.i.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.ca, %bb.l ] ; 2 uses
  br i1 %i.ba, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %.sroa.0.0.copyload.i11.i.i.i.i = load i8, ptr %i.cb, align 1, !alias.scope !217, !noalias !220
  %.sroa.02.0.copyload.i12.i.i.i.i = load i8, ptr %i.cc, align 1, !alias.scope !220, !noalias !217
  store i8 %.sroa.02.0.copyload.i12.i.i.i.i, ptr %i.cb, align 1, !alias.scope !217, !noalias !220
  store i8 %.sroa.0.0.copyload.i11.i.i.i.i, ptr %i.cc, align 1, !alias.scope !220, !noalias !217
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.cd = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.ce = sub i64 %.sroa.016.1.i.i, %.sroa.0.0.i.i ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.0.0.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cf, label %.loopexit.i.i, label %bb.h

.loopexit.i.i:                                    ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i
  %.sroa.016.2.i.i = phi i64 [ %.sroa.016.0.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %i.ce, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.016.0.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.016.0.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %.sroa.010.2.i.i = phi ptr [ %i.u, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %i.cd, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.x, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %i.cm, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ]
  %.sroa.0.1.i.i = phi i64 [ %i.v, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.0.0.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.aq, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %i.dj, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %i.cg = icmp eq i64 %.sroa.016.2.i.i, 0
  %i.ch = icmp eq i64 %.sroa.0.1.i.i, 0
  %or.cond.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.preheader.i

.preheader56.split.split.i.i:                     ; preds = %.preheader56.split.split.i.i.preheader, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i
  %indvar85 = phi i64 [ 0, %.preheader56.split.split.i.i.preheader ], [ %indvar.next86, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %.sroa.010.3.i.i = phi ptr [ %.sroa.010.0.i.i, %.preheader56.split.split.i.i.preheader ], [ %i.cm, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 7 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader56.split.split.i.i.preheader ], [ %i.dj, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ]
  %i.ci = mul i64 %.sroa.016.0.i.i, %indvar85     ; 2 uses
  %i.cj = add i64 %.sroa.016.0.i.i, %i.ci
  %i.ck = sub i64 %i.r, %i.cj
  %scevgep88 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.ck
  %i.cl = sub i64 %i.r, %i.ci
  %scevgep89 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.cl
  %i.cm = getelementptr i8, ptr %.sroa.010.3.i.i, i64 %i.i ; 8 uses
  br i1 %.not.i39.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i.preheader

.preheader.i40.i.i.preheader:                     ; preds = %.preheader56.split.split.i.i
  br i1 %min.iters.check94, label %.preheader.i40.i.i.preheader108, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.preheader.i40.i.i.preheader
  %bound090 = icmp ult ptr %i.cm, %scevgep89
  %bound191 = icmp ult ptr %.sroa.010.3.i.i, %scevgep88
  %found.conflict92 = and i1 %bound090, %bound191
  br i1 %found.conflict92, label %.preheader.i40.i.i.preheader108, label %vector.body97

vector.body97:                                    ; preds = %vector.memcheck84, %vector.body97
  %index98 = phi i64 [ %index.next103, %vector.body97 ], [ 0, %vector.memcheck84 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index98 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %index98 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load99.a = load <2 x i64>, ptr %i.cn, align 1, !alias.scope !222, !noalias !225
  %wide.load100 = load <2 x i64>, ptr %i.cp, align 1, !alias.scope !222, !noalias !225
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.co, align 1, !alias.scope !225, !noalias !175
  %wide.load102 = load <2 x i64>, ptr %i.cq, align 1, !alias.scope !225, !noalias !175
  store <2 x i64> %wide.load101, ptr %i.cn, align 1, !alias.scope !222, !noalias !225
  store <2 x i64> %wide.load102, ptr %i.cp, align 1, !alias.scope !222, !noalias !225
  store <2 x i64> %wide.load99.a, ptr %i.co, align 1, !alias.scope !225, !noalias !175
  store <2 x i64> %wide.load100, ptr %i.cq, align 1, !alias.scope !225, !noalias !175
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.cr = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.cr, label %middle.block104, label %vector.body97, !llvm.loop !227

middle.block104:                                  ; preds = %vector.body97
  br i1 %cmp.n105, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i.preheader108

.preheader.i40.i.i.preheader108:                  ; preds = %vector.memcheck84, %.preheader.i40.i.i.preheader, %middle.block104
  %.sroa.0.04.i.i41.i.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.preheader.i40.i.i.preheader ], [ %n.vec96, %middle.block104 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i40.i.i.prol.loopexit, label %.preheader.i40.i.i.prol

.preheader.i40.i.i.prol:                          ; preds = %.preheader.i40.i.i.preheader108
  %i.cs = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.i.i.prol = load i64, ptr %i.ct, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.i.i.prol = load i64, ptr %i.cu, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.prol, ptr %i.ct, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.prol, ptr %i.cu, align 1, !alias.scope !178, !noalias !175
  br label %.preheader.i40.i.i.prol.loopexit

.preheader.i40.i.i.prol.loopexit:                 ; preds = %.preheader.i40.i.i.prol, %.preheader.i40.i.i.preheader108
  %.sroa.0.04.i.i41.i.i.unr = phi i64 [ %.sroa.0.04.i.i41.i.i.ph, %.preheader.i40.i.i.preheader108 ], [ %i.cs, %.preheader.i40.i.i.prol ]
  %i.cv = icmp eq i64 %i.j, %.neg
  br i1 %i.cv, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i

.preheader.i40.i.i:                               ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i
  %.sroa.0.04.i.i41.i.i = phi i64 [ %i.cz, %.preheader.i40.i.i ], [ %.sroa.0.04.i.i41.i.i.unr, %.preheader.i40.i.i.prol.loopexit ] ; 4 uses
  %i.cw = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.sroa.0.0.copyload.i.i.i42.i.i = load i64, ptr %i.cx, align 1, !alias.scope !175, !noalias !178
  %.sroa.02.0.copyload.i.i.i43.i.i = load i64, ptr %i.cy, align 1, !alias.scope !178, !noalias !175
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i, ptr %i.cx, align 1, !alias.scope !175, !noalias !178
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i, ptr %i.cy, align 1, !alias.scope !178, !noalias !175
  %i.cz = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %i.cw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.sroa.0.0.copyload.i.i.i42.i.i.1 = load i64, ptr %i.da, align 1, !alias.scope !228, !noalias !230
  %.sroa.02.0.copyload.i.i.i43.i.i.1 = load i64, ptr %i.db, align 1, !alias.scope !230, !noalias !228
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.1, ptr %i.da, align 1, !alias.scope !228, !noalias !230
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.1, ptr %i.db, align 1, !alias.scope !230, !noalias !228
  %exitcond.not.i.i44.i.i.1 = icmp eq i64 %i.cz, %i.j
  br i1 %exitcond.not.i.i44.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i, !llvm.loop !232

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i: ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i, %middle.block104, %.preheader56.split.split.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.l ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i.i, i64 %i.l ; 4 uses
  br i1 %i.m, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %.sroa.0.0.copyload.i.i5.i47.i.i = load i32, ptr %i.dc, align 1, !alias.scope !233, !noalias !236
  %.sroa.02.0.copyload.i.i6.i48.i.i = load i32, ptr %i.dd, align 1, !alias.scope !236, !noalias !233
  store i32 %.sroa.02.0.copyload.i.i6.i48.i.i, ptr %i.dc, align 1, !alias.scope !233, !noalias !236
  store i32 %.sroa.0.0.copyload.i.i5.i47.i.i, ptr %i.dd, align 1, !alias.scope !236, !noalias !233
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  %.sroa.0.0.i.i49.i.i = phi i64 [ 0, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i ], [ 4, %bb.o ] ; 4 uses
  br i1 %i.o, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %.sroa.0.0.copyload.i9.i.i50.i.i = load i16, ptr %i.de, align 1, !alias.scope !238, !noalias !241
  %.sroa.02.0.copyload.i10.i.i51.i.i = load i16, ptr %i.df, align 1, !alias.scope !241, !noalias !238
  store i16 %.sroa.02.0.copyload.i10.i.i51.i.i, ptr %i.de, align 1, !alias.scope !238, !noalias !241
  store i16 %.sroa.0.0.copyload.i9.i.i50.i.i, ptr %i.df, align 1, !alias.scope !241, !noalias !238
  %i.dg = or disjoint i64 %.sroa.0.0.i.i49.i.i, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i52.i.i = phi i64 [ %.sroa.0.0.i.i49.i.i, %bb.p ], [ %i.dg, %bb.q ] ; 2 uses
  br i1 %i.q, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %.sroa.0.0.copyload.i11.i.i53.i.i = load i8, ptr %i.dh, align 1, !alias.scope !243, !noalias !246
  %.sroa.02.0.copyload.i12.i.i54.i.i = load i8, ptr %i.di, align 1, !alias.scope !246, !noalias !243
  store i8 %.sroa.02.0.copyload.i12.i.i54.i.i, ptr %i.dh, align 1, !alias.scope !243, !noalias !246
  store i8 %.sroa.0.0.copyload.i11.i.i53.i.i, ptr %i.di, align 1, !alias.scope !246, !noalias !243
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i: ; preds = %bb.s, %bb.r
  %i.dj = sub i64 %.sroa.0.2.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.016.0.i.i
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %i.dk, label %.loopexit.i.i, label %.preheader56.split.split.i.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit.i.i, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !248, !noalias !251 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 8 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !248, !noalias !251
  %i.e = load i64, ptr %1, align 8, !range !102, !alias.scope !248, !noalias !251, !noundef !8
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !248, !noalias !251, !nonnull !8, !noundef !8 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !253 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !253 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
end_hunk_0
