Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.08?download=true
inline.NumInlined: 308
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !164
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !165
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !164
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !165
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !169
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !170
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !169
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !170
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !162
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !175 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !176
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
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !177
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
define hidden noundef zeroext i1 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !188 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !190
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !191, !nonnull !4, !noundef !4
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !191
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.g, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !191
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.f), !noalias !189
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !193
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !194, !nonnull !4, !noundef !4
  %.promoted.i3 = load ptr, ptr %i.i, align 8, !alias.scope !194
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.l = phi ptr [ %i.m, %bb.g ], [ %.promoted.i3, %bb.e ] ; 3 uses
  %.not.not.not.i4.not.not.not.not.not = icmp ne ptr %i.l, %i.k ; 2 uses
  br i1 %.not.not.not.i4.not.not.not.not.not, label %bb.g, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !194
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.l), !noalias !192
  br i1 %i.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5, label %bb.f

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ %.not.not.not.i4.not.not.not.not.not, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsj34PGqTgg0L_16deltalake_lakefs.exit5 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11rotate_leftCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #1 !guid !243 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

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
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.2.i.i, %.loopexit.i.i ], [ %i.b, %bb.d ] ; 23 uses
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.2.i.i, %.loopexit.i.i ], [ %i.c, %bb.d ] ; 12 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %.loopexit.i.i ], [ %2, %bb.d ] ; 17 uses
  %.not.i2.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.016.0.i.i
  br i1 %.not.i2.i, label %.preheader.i.i, label %.preheader56.split.i.i

.preheader56.split.i.i:                           ; preds = %.preheader.i
  %i.i = sub i64 0, %.sroa.016.0.i.i              ; 4 uses
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
  %scevgep98 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.r
  %i.s = sub i64 %i.r, %.sroa.016.0.i.i
  %scevgep99 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.s
  %scevgep100 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.i
  %min.iters.check97 = icmp ult i64 %.sroa.016.0.i.i, 32
  %bound0104 = icmp ult ptr %scevgep100, %scevgep98
  %bound1105 = icmp ult ptr %.sroa.010.0.i.i, %scevgep99
  %found.conflict106 = and i1 %bound0104, %bound1105
  %n.vec103 = and i64 %i.j, 2305843009213693948   ; 3 uses
  %cmp.n112 = icmp eq i64 %i.j, %n.vec103
  %i.t = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br label %.preheader56.split.split.i.i

.preheader56.split.split.us.i.i:                  ; preds = %.preheader56.split.i.i
  br i1 %.not.i39.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i, label %.preheader.i40.preheader.us.i.i.preheader

.preheader.i40.preheader.us.i.i.preheader:        ; preds = %.preheader56.split.split.us.i.i
  %min.iters.check70 = icmp ult i64 %.sroa.016.0.i.i, 32
  %n.vec76 = and i64 %i.j, 2305843009213693948    ; 3 uses
  %cmp.n85 = icmp eq i64 %i.j, %n.vec76
  %i.u = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod127.not = icmp eq i64 %i.u, 0
  br label %.preheader.i40.preheader.us.i.i

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i: ; preds = %.preheader56.split.split.us.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i
  %.sroa.010.3.us62.us.i.i = phi ptr [ %i.v, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.010.0.i.i, %.preheader56.split.split.us.i.i ]
  %.sroa.0.2.us63.us.i.i = phi i64 [ %i.w, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.0.0.i.i, %.preheader56.split.split.us.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us62.us.i.i, i64 %i.i ; 2 uses
  %i.w = sub nuw nsw i64 %.sroa.0.2.us63.us.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.x = icmp ult i64 %i.w, %.sroa.016.0.i.i
  br i1 %i.x, label %.loopexit.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i

.preheader.i40.preheader.us.i.i:                  ; preds = %.preheader.i40.preheader.us.i.i.preheader, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i
  %.sroa.010.3.us62.i.i = phi ptr [ %i.y, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.010.0.i.i, %.preheader.i40.preheader.us.i.i.preheader ] ; 5 uses
  %.sroa.0.2.us63.i.i = phi i64 [ %i.ao, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.0.0.i.i, %.preheader.i40.preheader.us.i.i.preheader ]
  %i.y = getelementptr inbounds i8, ptr %.sroa.010.3.us62.i.i, i64 %i.i ; 6 uses
  br i1 %min.iters.check70, label %.preheader.i40.us.i.i.preheader, label %vector.body77

vector.body77:                                    ; preds = %.preheader.i40.preheader.us.i.i, %vector.body77
  %index78 = phi i64 [ %index.next83, %vector.body77 ], [ 0, %.preheader.i40.preheader.us.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index78 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %index78 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %i.z, align 1, !alias.scope !246, !noalias !247
  %wide.load80 = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !246, !noalias !247
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load81 = load <2 x i64>, ptr %i.aa, align 1, !alias.scope !248
  %wide.load82 = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !248
  store <2 x i64> %wide.load81, ptr %i.z, align 1, !alias.scope !246, !noalias !247
  store <2 x i64> %wide.load82, ptr %i.ab, align 1, !alias.scope !246, !noalias !247
  store <2 x i64> %wide.load79, ptr %i.aa, align 1, !alias.scope !248
  store <2 x i64> %wide.load80, ptr %i.ac, align 1, !alias.scope !248
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.ad, label %middle.block84, label %vector.body77, !llvm.loop !201

middle.block84:                                   ; preds = %vector.body77
  br i1 %cmp.n85, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i.preheader

.preheader.i40.us.i.i.preheader:                  ; preds = %.preheader.i40.preheader.us.i.i, %middle.block84
  %.sroa.0.04.i.i41.us.i.i.ph = phi i64 [ 0, %.preheader.i40.preheader.us.i.i ], [ %n.vec76, %middle.block84 ] ; 5 uses
  %.neg130 = or disjoint i64 %.sroa.0.04.i.i41.us.i.i.ph, 1
  br i1 %lcmp.mod127.not, label %.preheader.i40.us.i.i.prol.loopexit, label %.preheader.i40.us.i.i.prol

.preheader.i40.us.i.i.prol:                       ; preds = %.preheader.i40.us.i.i.preheader
  %i.ae = or disjoint i64 %.sroa.0.04.i.i41.us.i.i.ph, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.0.04.i.i41.us.i.i.ph ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %.sroa.0.04.i.i41.us.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.sroa.0.0.copyload.i.i.i42.us.i.i.prol = load i64, ptr %i.af, align 1, !alias.scope !244
  %.sroa.02.0.copyload.i.i.i43.us.i.i.prol = load i64, ptr %i.ag, align 1, !alias.scope !245
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i.prol, ptr %i.af, align 1, !alias.scope !244
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i.prol, ptr %i.ag, align 1, !alias.scope !245
  br label %.preheader.i40.us.i.i.prol.loopexit

.preheader.i40.us.i.i.prol.loopexit:              ; preds = %.preheader.i40.us.i.i.prol, %.preheader.i40.us.i.i.preheader
  %.sroa.0.04.i.i41.us.i.i.unr = phi i64 [ %.sroa.0.04.i.i41.us.i.i.ph, %.preheader.i40.us.i.i.preheader ], [ %i.ae, %.preheader.i40.us.i.i.prol ]
  %i.ah = icmp eq i64 %i.j, %.neg130
  br i1 %i.ah, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i

.preheader.i40.us.i.i:                            ; preds = %.preheader.i40.us.i.i.prol.loopexit, %.preheader.i40.us.i.i
  %.sroa.0.04.i.i41.us.i.i = phi i64 [ %i.al, %.preheader.i40.us.i.i ], [ %.sroa.0.04.i.i41.us.i.i.unr, %.preheader.i40.us.i.i.prol.loopexit ] ; 4 uses
  %i.ai = add nuw nsw i64 %.sroa.0.04.i.i41.us.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.0.04.i.i41.us.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %.sroa.0.04.i.i41.us.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.sroa.0.0.copyload.i.i.i42.us.i.i = load i64, ptr %i.aj, align 1, !alias.scope !244
  %.sroa.02.0.copyload.i.i.i43.us.i.i = load i64, ptr %i.ak, align 1, !alias.scope !245
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i, ptr %i.aj, align 1, !alias.scope !244
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i, ptr %i.ak, align 1, !alias.scope !245
  %i.al = add nuw nsw i64 %.sroa.0.04.i.i41.us.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us62.i.i, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %.sroa.0.0.copyload.i.i.i42.us.i.i.1 = load i64, ptr %i.am, align 1, !alias.scope !249
  %.sroa.02.0.copyload.i.i.i43.us.i.i.1 = load i64, ptr %i.an, align 1, !alias.scope !250
  store i64 %.sroa.02.0.copyload.i.i.i43.us.i.i.1, ptr %i.am, align 1, !alias.scope !249
  store i64 %.sroa.0.0.copyload.i.i.i42.us.i.i.1, ptr %i.an, align 1, !alias.scope !250
  %exitcond.not.i.i44.us.i.i.1 = icmp eq i64 %i.al, %i.j
  br i1 %exitcond.not.i.i44.us.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, label %.preheader.i40.us.i.i, !llvm.loop !205

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i: ; preds = %.preheader.i40.us.i.i.prol.loopexit, %.preheader.i40.us.i.i, %middle.block84
  %i.ao = sub i64 %.sroa.0.2.us63.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.016.0.i.i
  br i1 %i.ap, label %.loopexit.i.i, label %.preheader.i40.preheader.us.i.i

.preheader.i.i:                                   ; preds = %.preheader.i
  %i.aq = sub i64 0, %.sroa.0.0.i.i               ; 2 uses
  %i.ar = lshr i64 %.sroa.0.0.i.i, 3              ; 5 uses
  %i.as = and i64 %.sroa.0.0.i.i, 7               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %.not4.i.i.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %.sroa.0.0.i.i, -8              ; 4 uses
  %i.au = icmp samesign ult i64 %i.as, 4
  %i.av = and i64 %.sroa.0.0.i.i, 2
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %.sroa.0.0.i.i, 1
  %i.ay = icmp eq i64 %i.ax, 0
  %scevgep = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.at
  %i.az = sub i64 %i.at, %.sroa.0.0.i.i
  %scevgep58 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.az
  %scevgep59 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.aq
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 32
  %bound0 = icmp ult ptr %scevgep59, %scevgep
  %bound1 = icmp ult ptr %.sroa.010.0.i.i, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.ar, 2305843009213693948     ; 3 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  %i.ba = and i64 %.sroa.0.0.i.i, 8
  %lcmp.mod129.not = icmp eq i64 %i.ba, 0
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, %.preheader.i.i
  %.sroa.016.1.i.i = phi i64 [ %i.bz, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.016.0.i.i, %.preheader.i.i ]
  %.sroa.010.1.i.i = phi ptr [ %i.by, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.010.0.i.i, %.preheader.i.i ] ; 7 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.010.1.i.i, i64 %i.aq ; 5 uses
  br i1 %.not.i.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.i.i.i.preheader114, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !253, !noalias !254
  %wide.load57 = load <2 x i64>, ptr %i.be, align 1, !alias.scope !253, !noalias !254
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.bd, align 1, !alias.scope !255
  %wide.load59 = load <2 x i64>, ptr %i.bf, align 1, !alias.scope !255
  store <2 x i64> %wide.load58, ptr %i.bc, align 1, !alias.scope !253, !noalias !254
  store <2 x i64> %wide.load59, ptr %i.be, align 1, !alias.scope !253, !noalias !254
  store <2 x i64> %wide.load, ptr %i.bd, align 1, !alias.scope !255
  store <2 x i64> %wide.load57, ptr %i.bf, align 1, !alias.scope !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i.preheader114

.preheader.i.i.i.preheader114:                    ; preds = %vector.memcheck, %middle.block
  %.sroa.0.04.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.memcheck ] ; 5 uses
  %.neg131 = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  br i1 %lcmp.mod129.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader114
  %i.bh = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.sroa.0.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bi, align 1, !alias.scope !251
  %.sroa.02.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bj, align 1, !alias.scope !252
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.prol, ptr %i.bi, align 1, !alias.scope !251
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.prol, ptr %i.bj, align 1, !alias.scope !252
  br label %.preheader.i.i.i.prol.loopexit

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader114
  %.sroa.0.04.i.i.i.i.unr = phi i64 [ %.sroa.0.04.i.i.i.i.ph, %.preheader.i.i.i.preheader114 ], [ %i.bh, %.preheader.i.i.i.prol ]
  %i.bk = icmp eq i64 %i.ar, %.neg131
  br i1 %i.bk, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.bo, %.preheader.i.i.i ], [ %.sroa.0.04.i.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 4 uses
  %i.bl = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bm, align 1, !alias.scope !251
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.bn, align 1, !alias.scope !252
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.bm, align 1, !alias.scope !251
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bn, align 1, !alias.scope !252
  %i.bo = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %i.bl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bp, align 1, !alias.scope !256
  %.sroa.02.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bq, align 1, !alias.scope !257
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.1, ptr %i.bp, align 1, !alias.scope !256
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.1, ptr %i.bq, align 1, !alias.scope !257
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.bo, %i.ar
  br i1 %exitcond.not.i.i.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !216

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block, %bb.h
  br i1 %.not4.i.i.i, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 %i.at ; 4 uses
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.sroa.0.0.copyload.i.i5.i.i.i = load i32, ptr %i.br, align 1, !alias.scope !258
  %.sroa.02.0.copyload.i.i6.i.i.i = load i32, ptr %i.bs, align 1, !alias.scope !259
  store i32 %.sroa.02.0.copyload.i.i6.i.i.i, ptr %i.br, align 1, !alias.scope !258
  store i32 %.sroa.0.0.copyload.i.i5.i.i.i, ptr %i.bs, align 1, !alias.scope !259
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ 4, %bb.j ] ; 4 uses
  br i1 %i.aw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.sroa.0.0.copyload.i9.i.i.i.i = load i16, ptr %i.bt, align 1, !alias.scope !260
  %.sroa.02.0.copyload.i10.i.i.i.i = load i16, ptr %i.bu, align 1, !alias.scope !261
  store i16 %.sroa.02.0.copyload.i10.i.i.i.i, ptr %i.bt, align 1, !alias.scope !260
  store i16 %.sroa.0.0.copyload.i9.i.i.i.i, ptr %i.bu, align 1, !alias.scope !261
  %i.bv = or disjoint i64 %.sroa.0.0.i.i.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.bv, %bb.l ] ; 2 uses
  br i1 %i.ay, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %.sroa.0.0.copyload.i11.i.i.i.i = load i8, ptr %i.bw, align 1, !alias.scope !262
  %.sroa.02.0.copyload.i12.i.i.i.i = load i8, ptr %i.bx, align 1, !alias.scope !263
  store i8 %.sroa.02.0.copyload.i12.i.i.i.i, ptr %i.bw, align 1, !alias.scope !262
  store i8 %.sroa.0.0.copyload.i11.i.i.i.i, ptr %i.bx, align 1, !alias.scope !263
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.bz = sub i64 %.sroa.016.1.i.i, %.sroa.0.0.i.i ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.sroa.0.0.i.i
  br i1 %i.ca, label %.loopexit.i.i, label %bb.h

.loopexit.i.i:                                    ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i
  %.sroa.016.2.i.i = phi i64 [ %.sroa.016.0.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %i.bz, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.016.0.i.i, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %.sroa.016.0.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %.sroa.010.2.i.i = phi ptr [ %i.v, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %i.by, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.y, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %i.cd, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ]
  %.sroa.0.1.i.i = phi i64 [ %i.w, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.us.us.i.i ], [ %.sroa.0.0.i.i, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.ao, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.loopexit.us.i.i ], [ %i.da, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ] ; 2 uses
  %i.cb = icmp eq i64 %.sroa.016.2.i.i, 0
  %i.cc = icmp eq i64 %.sroa.0.1.i.i, 0
  %or.cond.i.i = or i1 %i.cb, %i.cc
  br i1 %or.cond.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.preheader.i

.preheader56.split.split.i.i:                     ; preds = %.preheader56.split.split.i.i.preheader, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i
  %.sroa.010.3.i.i = phi ptr [ %i.cd, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ], [ %.sroa.010.0.i.i, %.preheader56.split.split.i.i.preheader ] ; 6 uses
  %.sroa.0.2.i.i = phi i64 [ %i.da, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i ], [ %.sroa.0.0.i.i, %.preheader56.split.split.i.i.preheader ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.010.3.i.i, i64 %i.i ; 7 uses
  br i1 %.not.i39.i.i, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.preheader56.split.split.i.i
  %brmerge144 = select i1 %min.iters.check97, i1 true, i1 %found.conflict106
  br i1 %brmerge144, label %.preheader.i40.i.i.preheader115, label %vector.body104

vector.body104:                                   ; preds = %vector.memcheck98, %vector.body104
  %index105 = phi i64 [ %index.next110, %vector.body104 ], [ 0, %vector.memcheck98 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index105 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %index105 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.ce, align 1, !alias.scope !264, !noalias !265
  %wide.load107 = load <2 x i64>, ptr %i.cg, align 1, !alias.scope !264, !noalias !265
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load108 = load <2 x i64>, ptr %i.cf, align 1, !alias.scope !266
  %wide.load109 = load <2 x i64>, ptr %i.ch, align 1, !alias.scope !266
  store <2 x i64> %wide.load108, ptr %i.ce, align 1, !alias.scope !264, !noalias !265
  store <2 x i64> %wide.load109, ptr %i.cg, align 1, !alias.scope !264, !noalias !265
  store <2 x i64> %wide.load106, ptr %i.cf, align 1, !alias.scope !266
  store <2 x i64> %wide.load107, ptr %i.ch, align 1, !alias.scope !266
  %index.next110 = add nuw i64 %index105, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.ci, label %middle.block111, label %vector.body104, !llvm.loop !229

middle.block111:                                  ; preds = %vector.body104
  br i1 %cmp.n112, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i.preheader115

.preheader.i40.i.i.preheader115:                  ; preds = %vector.memcheck98, %middle.block111
  %.sroa.0.04.i.i41.i.i.ph = phi i64 [ %n.vec103, %middle.block111 ], [ 0, %vector.memcheck98 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i40.i.i.prol.loopexit, label %.preheader.i40.i.i.prol

.preheader.i40.i.i.prol:                          ; preds = %.preheader.i40.i.i.preheader115
  %i.cj = or disjoint i64 %.sroa.0.04.i.i41.i.i.ph, 1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.sroa.0.0.copyload.i.i.i42.i.i.prol = load i64, ptr %i.ck, align 1, !alias.scope !244
  %.sroa.02.0.copyload.i.i.i43.i.i.prol = load i64, ptr %i.cl, align 1, !alias.scope !245
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.prol, ptr %i.ck, align 1, !alias.scope !244
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.prol, ptr %i.cl, align 1, !alias.scope !245
  br label %.preheader.i40.i.i.prol.loopexit

.preheader.i40.i.i.prol.loopexit:                 ; preds = %.preheader.i40.i.i.prol, %.preheader.i40.i.i.preheader115
  %.sroa.0.04.i.i41.i.i.unr = phi i64 [ %.sroa.0.04.i.i41.i.i.ph, %.preheader.i40.i.i.preheader115 ], [ %i.cj, %.preheader.i40.i.i.prol ]
  %i.cm = icmp eq i64 %i.j, %.neg
  br i1 %i.cm, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i

.preheader.i40.i.i:                               ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i
  %.sroa.0.04.i.i41.i.i = phi i64 [ %i.cq, %.preheader.i40.i.i ], [ %.sroa.0.04.i.i41.i.i.unr, %.preheader.i40.i.i.prol.loopexit ] ; 4 uses
  %i.cn = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i41.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.sroa.0.0.copyload.i.i.i42.i.i = load i64, ptr %i.co, align 1, !alias.scope !244
  %.sroa.02.0.copyload.i.i.i43.i.i = load i64, ptr %i.cp, align 1, !alias.scope !245
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i, ptr %i.co, align 1, !alias.scope !244
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i, ptr %i.cp, align 1, !alias.scope !245
  %i.cq = add nuw nsw i64 %.sroa.0.04.i.i41.i.i, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cn ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %i.cn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %.sroa.0.0.copyload.i.i.i42.i.i.1 = load i64, ptr %i.cr, align 1, !alias.scope !267
  %.sroa.02.0.copyload.i.i.i43.i.i.1 = load i64, ptr %i.cs, align 1, !alias.scope !268
  store i64 %.sroa.02.0.copyload.i.i.i43.i.i.1, ptr %i.cr, align 1, !alias.scope !267
  store i64 %.sroa.0.0.copyload.i.i.i42.i.i.1, ptr %i.cs, align 1, !alias.scope !268
  %exitcond.not.i.i44.i.i.1 = icmp eq i64 %i.cq, %i.j
  br i1 %exitcond.not.i.i44.i.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i, label %.preheader.i40.i.i, !llvm.loop !233

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i: ; preds = %.preheader.i40.i.i.prol.loopexit, %.preheader.i40.i.i, %middle.block111, %.preheader56.split.split.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.l ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i.i, i64 %i.l ; 4 uses
  br i1 %i.m, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %.sroa.0.0.copyload.i.i5.i47.i.i = load i32, ptr %i.ct, align 1, !alias.scope !269
  %.sroa.02.0.copyload.i.i6.i48.i.i = load i32, ptr %i.cu, align 1, !alias.scope !270
  store i32 %.sroa.02.0.copyload.i.i6.i48.i.i, ptr %i.ct, align 1, !alias.scope !269
  store i32 %.sroa.0.0.copyload.i.i5.i47.i.i, ptr %i.cu, align 1, !alias.scope !270
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i
  %.sroa.0.0.i.i49.i.i = phi i64 [ 0, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i.i ], [ 4, %bb.o ] ; 4 uses
  br i1 %i.o, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.0.0.i.i49.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.sroa.0.0.copyload.i9.i.i50.i.i = load i16, ptr %i.cv, align 1, !alias.scope !271
  %.sroa.02.0.copyload.i10.i.i51.i.i = load i16, ptr %i.cw, align 1, !alias.scope !272
  store i16 %.sroa.02.0.copyload.i10.i.i51.i.i, ptr %i.cv, align 1, !alias.scope !271
  store i16 %.sroa.0.0.copyload.i9.i.i50.i.i, ptr %i.cw, align 1, !alias.scope !272
  %i.cx = or disjoint i64 %.sroa.0.0.i.i49.i.i, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i52.i.i = phi i64 [ %.sroa.0.0.i.i49.i.i, %bb.p ], [ %i.cx, %bb.q ] ; 2 uses
  br i1 %i.q, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.0.1.i.i52.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.sroa.0.0.copyload.i11.i.i53.i.i = load i8, ptr %i.cy, align 1, !alias.scope !273
  %.sroa.02.0.copyload.i12.i.i54.i.i = load i8, ptr %i.cz, align 1, !alias.scope !274
  store i8 %.sroa.02.0.copyload.i12.i.i54.i.i, ptr %i.cy, align 1, !alias.scope !273
  store i8 %.sroa.0.0.copyload.i11.i.i53.i.i, ptr %i.cz, align 1, !alias.scope !274
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i: ; preds = %bb.s, %bb.r
  %i.da = sub i64 %.sroa.0.2.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.db = icmp ult i64 %i.da, %.sroa.016.0.i.i
  br i1 %i.db, label %.loopexit.i.i, label %.preheader56.split.split.i.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit.i.i, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 !guid !275 {
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
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 !guid !276 {
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
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !303 {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 8 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !304
  %i.e = load i64, ptr %1, align 8, !range !8, !alias.scope !304, !noundef !4
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !304, !nonnull !4, !noundef !4 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !305 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.sroa.9.0.copyload.i = load i64, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.4.sroa.10.0.copyload.i = load i64, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.4.sroa.11.0.copyload.i = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !305 ; 2 uses
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !306, !noalias !307
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 1, !alias.scope !306, !noalias !307
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !308, !noalias !307
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.l, align 1, !alias.scope !308, !noalias !307
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !309, !noalias !307
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.m, align 1, !alias.scope !309, !noalias !307
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.3.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !310, !noalias !307
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.n, align 1, !alias.scope !310, !noalias !307
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !311, !noalias !307
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.o, align 1, !alias.scope !311, !noalias !307
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.5.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !312, !noalias !307
  store i64 %.sroa.4.sroa.7.0.copyload.i, ptr %i.p, align 1, !alias.scope !312, !noalias !307
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !313, !noalias !307
  store i64 %.sroa.4.sroa.8.0.copyload.i, ptr %i.q, align 1, !alias.scope !313, !noalias !307
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.7.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !314, !noalias !307
  store i64 %.sroa.4.sroa.9.0.copyload.i, ptr %i.r, align 1, !alias.scope !314, !noalias !307
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.8.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !315, !noalias !307
  store i64 %.sroa.4.sroa.10.0.copyload.i, ptr %i.s, align 1, !alias.scope !315, !noalias !307
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.9.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !316, !noalias !307
  store i64 %.sroa.4.sroa.11.0.copyload.i, ptr %i.t, align 1, !alias.scope !316, !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !307
  %i.u = add nsw i64 %i.b, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.c ], [ %i.au, %.lr.ph.i.i.i ] ; 4 uses
  %i.v = add nsw i64 %i.b, -2
  %i.w = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.v
  br i1 %i.w, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !307
  %i.z = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !307
  br label %.lr.ph.i.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !307
  %i.ab = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !307 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ac = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 1                       ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.d
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !307, !noundef !4
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false), !noalias !307
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.010.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.d
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.ai, i64 72
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noalias !307, !noundef !4
  %i.an = getelementptr i8, ptr %i.al, i64 72
  %.val17.i.i.i = load i64, ptr %i.an, align 8, !noalias !307, !noundef !4
  %i.ao = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aq
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !307
  %i.at = shl nuw nsw i64 %i.aq, 1                ; 2 uses
  %i.au = or disjoint i64 %i.at, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.at, %i.u
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
end_hunk_0
