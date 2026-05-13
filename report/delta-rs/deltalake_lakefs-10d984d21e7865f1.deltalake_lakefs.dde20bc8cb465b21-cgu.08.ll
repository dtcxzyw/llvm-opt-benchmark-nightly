inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.ao, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.sroa.0.0.i3.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !8 ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.0.0.i3.i.i.i)
  %.not = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %.not, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #32
  unreachable

bb.g:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !428, !noalias !430, !noundef !8
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %i.av = load i64, ptr %.val, align 8, !range !120, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %.not13.i.i = icmp ult i64 %i.au, %i.av
  %i.aw = select i1 %.not13.i.i, i64 0, i64 %i.av
  %.sroa.05.0.i.i = sub nuw i64 %i.au, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !428, !noalias !430, !nonnull !8, !noundef !8
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.sroa.05.0.i.i ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val16.i.i = load i64, ptr %i.ba, align 8, !noalias !431, !noundef !8 ; 2 uses
  %i.bb = icmp eq i64 %.val16.i.i, %2
  br i1 %i.bb, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !431
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val), !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !435
  store ptr %i.a, ptr %i.i, align 8, !noalias !436
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 5
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.04.0.i.i.i.i2 = phi i64 [ 0, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.i.i3 = phi i64 [ 0, %bb.j ], [ %i.bl, %bb.k ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.sroa.04.0.i.i.i.i2
  %i.bl = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %.sroa.02.0.i.i.i.i3, ptr noundef nonnull align 8 %i.bk), !noalias !439 ; 2 uses
  %i.bm = add nuw i64 %.sroa.04.0.i.i.i.i2, 1     ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.bj
  br i1 %i.bn, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.k

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i.i.i.i5 = phi i64 [ 0, %bb.i ], [ %i.bl, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !435
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !435
  store ptr %i.a, ptr %i.h, align 8, !noalias !440
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub nuw i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.04.0.i1.i.i.i6 = phi i64 [ 0, %bb.l ], [ %i.bz, %bb.m ] ; 2 uses
  %.sroa.02.0.i2.i.i.i7 = phi i64 [ %.sroa.0.0.i.i.i.i5, %bb.l ], [ %i.by, %bb.m ]
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.04.0.i1.i.i.i6
  %i.by = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %.sroa.02.0.i2.i.i.i7, ptr noundef nonnull align 8 %i.bx), !noalias !439 ; 2 uses
  %i.bz = add nuw i64 %.sroa.04.0.i1.i.i.i6, 1    ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bw
  br i1 %i.ca, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.m

_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.m, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %.sroa.0.0.i3.i.i.i8 = phi i64 [ %.sroa.0.0.i.i.i.i5, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4 ], [ %i.by, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !431
  %.not14.i.i = icmp ugt i64 %2, %.sroa.0.0.i3.i.i.i8
  br i1 %.not14.i.i, label %bb.q, label %bb.r, !prof !9

bb.n:                                             ; preds = %bb.h
  %i.cb = icmp ugt i64 %.val16.i.i, %2
  br i1 %i.cb, label %bb.p, label %bb.i

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !431
  call void @_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf13copy_to_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %2), !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !431
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.af unwind label %bb.ae, !noalias !430

bb.p:                                             ; preds = %bb.n
  call void @_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf13copy_to_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %2), !noalias !428
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @_RINvNtCs2pqxYH9ZEk8_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32, !noalias !430
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !431
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !446
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !447
  %i.cc = load i64, ptr %i.g, align 8, !range !448, !noalias !446, !noundef !8
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !449, !noalias !446, !noundef !8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.cd, label %bb.s, label %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !446
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #33, !noalias !447
  unreachable

_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i: ; preds = %bb.r
  %i.ci = load ptr, ptr %i.cg, align 8, !noalias !446, !nonnull !8, !noundef !8
  %i.cj = icmp ule i64 %2, %i.cf
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !446
  %i.ck = lshr i64 %i.cf, 10
  %i.cl = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = sub nuw nsw i64 64, %i.cl
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 7)
  %i.cn = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 2
  %i.co = getelementptr i8, ptr null, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  store ptr %i.ci, ptr %i.k, align 8, !alias.scope !450, !noalias !453
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !alias.scope !450, !noalias !453
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.cf, ptr %i.cr, align 8, !alias.scope !450, !noalias !453
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.cp, ptr %i.cs, align 8, !alias.scope !450, !noalias !453
  %i.ct = icmp eq i64 %.sroa.0.0.i3.i.i.i8, %2
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i
  invoke void @_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef %2)
          to label %bb.v unwind label %bb.ac, !noalias !430

bb.u:                                             ; preds = %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i
  invoke void @_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.v unwind label %bb.ac, !noalias !430

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !noalias !431 ; 4 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %i.cq, align 8, !noalias !431 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %i.cr, align 8, !noalias !431
  %.sroa.8.0.copyload.i.i = load ptr, ptr %i.cs, align 8, !noalias !431 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !431
  %i.cu = ptrtoint ptr %.sroa.8.0.copyload.i.i to i64 ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %.not.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i, label %bb.x, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.v
  %i.cw = lshr i64 %i.cu, 5                       ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.cx
  %i.cz = add i64 %i.cw, %.sroa.5.0.copyload.i.i
  %i.da = add i64 %i.cw, %.sroa.7.0.copyload.i.i  ; 2 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  store i64 %i.da, ptr %i.f, align 8, !noalias !458
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cy, ptr %i.dc, align 8, !noalias !458
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.cz, ptr %i.dd, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !458
  call void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !458
  store i64 %i.cw, ptr %i.d, align 8, !noalias !463
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !460, !noalias !458, !noundef !8 ; 4 uses
  %.not.i.i.i.i = icmp ugt i64 %i.cw, %i.df
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.z, !prof !9

bb.w:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !463
  store i64 %i.df, ptr %i.c, align 8, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !463
  store ptr %i.d, ptr %i.b, align 8, !noalias !463
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !463
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.dg, align 8, !noalias !463
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !463
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #32
          to label %.noexc.i.i.i unwind label %bb.y, !noalias !464

.noexc.i.i.i:                                     ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dh, align 8, !alias.scope !465, !noalias !466
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.di, align 8, !alias.scope !465, !noalias !466
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload.i.i, ptr %i.dj, align 8, !alias.scope !465, !noalias !466
  store ptr @_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !465, !noalias !466
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.dl = load ptr, ptr %i.e, align 8, !alias.scope !473, !noalias !458, !nonnull !8, !align !37, !noundef !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !474, !nonnull !8, !noundef !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !473, !noalias !458, !noundef !8
  invoke void %i.dn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dq, i64 noundef %i.df)
          to label %.body.thread.i.i unwind label %bb.aa, !noalias !464, !inline_history !475

bb.z:                                             ; preds = %.noexc.i.i
  %i.dr = sub nuw i64 %i.df, %i.cw
  store i64 %i.dr, ptr %i.de, align 8, !alias.scope !460, !noalias !458
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !460, !noalias !458, !noundef !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cw
  store ptr %i.du, ptr %i.ds, align 8, !alias.scope !460, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !458
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !464
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !431
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

.body.thread.i.i:                                 ; preds = %bb.ae, %bb.ac, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.ac ], [ %i.dk, %bb.y ], [ %i.dx, %bb.ae ]
  resume { ptr, i32 } %.pn.i.i

bb.ac:                                            ; preds = %bb.u, %bb.t
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body.thread.i.i unwind label %bb.ad, !noalias !430

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !430
  unreachable

bb.ae:                                            ; preds = %bb.ag, %bb.o
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.dy = load ptr, ptr %i.m, align 8, !alias.scope !482, !noalias !431, !nonnull !8, !align !37, !noundef !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !483, !nonnull !8, !noundef !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !482, !noalias !431, !noundef !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !482, !noalias !431, !noundef !8
  invoke void %i.ea(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.ed, i64 noundef %i.ef)
          to label %.body.thread.i.i unwind label %bb.ad, !noalias !430, !inline_history !475

bb.af:                                            ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.eg = load ptr, ptr %i.l, align 8, !alias.scope !484, !noalias !431, !noundef !8 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !493, !nonnull !8, !noundef !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !494, !noalias !431, !noundef !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !494, !noalias !431, !noundef !8
  invoke void %i.ej(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.em, i64 noundef %i.eo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.ae, !noalias !430, !inline_history !495

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !431
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.p, %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ep = sub i64 %i.aq, %2
  store i64 %i.ep, ptr %i.ap, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !496, !noundef !8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !496, !noundef !8 ; 2 uses
  %i.e = load i64, ptr %.val, align 8, !range !120, !alias.scope !496, !noundef !8 ; 2 uses
  %.not7.i.i = icmp ult i64 %i.d, %i.e
  %i.f = select i1 %.not7.i.i, i64 0, i64 %i.e
  %.sroa.03.0.i.i = sub nuw i64 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !496, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.03.0.i.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !496, !nonnull !8, !noundef !8
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val8.i.i = load i64, ptr %i.k, align 8, !noalias !496, !noundef !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0.i.i = phi i64 [ %.val8.i.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.i.i = phi ptr [ %.val.i.i, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.3.0.i.i)
  %i.o = insertvalue { ptr, i64 } %i.l, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %.not22.i.i = icmp eq i64 %1, 0
  br i1 %.not22.i.i, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.0.023.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 4 uses
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !499, !noundef !8
  %.not9.i.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i.i, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #32
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

end_hunk_0
