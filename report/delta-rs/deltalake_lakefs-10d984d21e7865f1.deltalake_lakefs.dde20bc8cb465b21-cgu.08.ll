inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !499, !noundef !8 ; 2 uses
  %i.l = load i64, ptr %.val, align 8, !range !120, !alias.scope !499, !noundef !8 ; 2 uses
  %.not10.i.i = icmp ult i64 %i.k, %i.l
  %i.m = select i1 %.not10.i.i, i64 0, i64 %i.l
  %.sroa.04.0.i.i = sub nuw i64 %i.k, %i.m
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !499, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.04.0.i.i ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 3 uses
  %.val.i.i = load i64, ptr %i.p, align 8, !noundef !8 ; 4 uses
  %i.q = icmp ugt i64 %.val.i.i, %.sroa.0.023.i.i
  br i1 %i.q, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i

_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.f
  store i64 0, ptr %i.p, align 8, !alias.scope !502
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !502, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val.i.i
  store ptr %i.t, ptr %i.r, align 8, !alias.scope !502
  %i.u = sub nuw i64 %.sroa.0.023.i.i, %.val.i.i  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !499
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !505, !noalias !499, !noundef !8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !514, !nonnull !8, !noundef !8
  %i.z = load ptr, ptr %i.h, align 8, !alias.scope !514, !noalias !499, !noundef !8
  %i.aa = load i64, ptr %i.i, align 8, !alias.scope !514, !noalias !499, !noundef !8
  call void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.z, i64 noundef %i.aa), !inline_history !515
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.g, %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !499
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i: ; preds = %bb.f
  %i.ab = sub nuw i64 %.val.i.i, %.sroa.0.023.i.i
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !516
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !516, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.0.023.i.i
  store ptr %i.ae, ptr %i.ac, align 8, !alias.scope !516
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.c, %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i
  %i.af = sub i64 %i.c, %1
  store i64 %i.af, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !525
  store ptr %i.a, ptr %i.c, align 8, !noalias !526
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ]
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.04.0.i.i.i.i
  %i.n = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.02.0.i.i.i.i, ptr noundef nonnull align 8 %i.m), !noalias !519 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i.i.i.i, 1       ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.l
  br i1 %i.p, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !525
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !525
  store ptr %i.a, ptr %i.b, align 8, !noalias !529
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.sroa.02.0.i2.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.04.0.i1.i.i.i
  %i.aa = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.sroa.02.0.i2.i.i.i, ptr noundef nonnull align 8 %i.z), !noalias !519 ; 2 uses
  %i.ab = add nuw i64 %.sroa.04.0.i1.i.i.i, 1     ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.y
  br i1 %i.ac, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.sroa.0.0.i3.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !8
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %.sroa.0.0.i3.i.i.i)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !532, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !532, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !532
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.g, ptr %i.f, align 8
  br label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit.thread

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !535, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !541, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !535 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !542
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !547
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.e, !noalias !541

bb.e:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i unwind label %bb.f, !noalias !541

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !541
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.x = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.y = add i16 %.lcssa.i.i.i, -1
  %i.z = and i16 %i.y, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !541
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 40
  %i.ac = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 48                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub i64 -48, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aj
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !535
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !552, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !558, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !552 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !559
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.017.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !564
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.017.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.w = add i64 %.sroa.107.018.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.e, !noalias !558

bb.e:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %.body.i.i.i unwind label %bb.f, !noalias !558

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !558
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.g, !noalias !558

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.y, %bb.e ]
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !581, !noalias !558, !nonnull !8, !noundef !8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !584
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.h:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.j, !noalias !558

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !597, !noalias !558, !nonnull !8, !noundef !8
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !598
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #34, !noalias !558
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !558
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.h, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.ak = icmp eq i64 %i.w, 0
  br i1 %i.ak, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %i.al = mul i64 %i.b, 104
  %i.am = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.am)
  %i.an = and i64 %i.al, -16                      ; 2 uses
  %i.ao = add i64 %i.an, 112                      ; 2 uses
  %i.ap = add nsw i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  %i.at = sub i64 -112, %i.an
  %i.au = getelementptr inbounds i8, ptr %.pre.i, i64 %i.at
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !552
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_5Value6recordCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtB5_5Value6recordCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8
  %i.a = tail call noundef zeroext i1 @_RNvXsM_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs9Ct3XQYJhun_5bytes3buf4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB9_5bytes5BytesEENtNtB7_8buf_impl3Buf13has_remainingCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !599, !nonnull !8, !align !37, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !599
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i), !noalias !599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !602, !noalias !605, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !602, !noalias !605, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !608
  store ptr %i.a, ptr %i.c, align 8, !noalias !609
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ]
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.04.0.i.i.i.i.i
  %i.n = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.02.0.i.i.i.i.i, ptr noundef nonnull align 8 %i.m), !noalias !612 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1     ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.l
  br i1 %i.p, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !608
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !602, !noalias !605, !nonnull !8, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !602, !noalias !605, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !608
  store ptr %i.a, ptr %i.b, align 8, !noalias !613
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.sroa.02.0.i2.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.04.0.i1.i.i.i.i
  %i.aa = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.sroa.02.0.i2.i.i.i.i, ptr noundef nonnull align 8 %i.z), !noalias !612 ; 2 uses
  %i.ab = add nuw i64 %.sroa.04.0.i1.i.i.i.i, 1   ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.y
  br i1 %i.ac, label %_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e
end_hunk_0
