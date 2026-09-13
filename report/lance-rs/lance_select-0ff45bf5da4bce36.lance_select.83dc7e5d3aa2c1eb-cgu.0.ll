Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2M_8IntoIterRmINtNtB20_3vec3VecRBY_EENCNvXs5_B10_NtB10_14RowAddrTreeMapNtB10_9RowSetOps9union_alls_0EE0E0EB12_:bb.a
_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_8IntoIterRmINtNtB26_3vec3VecRB14_EENCNvXs5_B16_NtB16_14RowAddrTreeMapNtB16_9RowSetOps9union_alls_0EE0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_8IntoIterRmINtNtB26_3vec3VecRB14_EENCNvXs5_B16_NtB16_14RowAddrTreeMapNtB16_9RowSetOps9union_alls_0EE0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapmB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3U_8adapters3map3MapINtB2U_8IntoIterRmINtNtB27_3vec3VecRB15_EENCNvXs5_B17_NtB17_14RowAddrTreeMapNtB17_9RowSetOps9union_alls_0EE0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301), !noalias !2300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302), !noalias !2300
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_8IntoIterRmINtNtB26_3vec3VecRB14_EENCNvXs5_B16_NtB16_14RowAddrTreeMapNtB16_9RowSetOps9union_alls_0EE0E0EB18_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_8IntoIterRmINtNtB26_3vec3VecRB14_EENCNvXs5_B16_NtB16_14RowAddrTreeMapNtB16_9RowSetOps9union_alls_0EE0E0EB18_.exit.i.thread94 ]
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_8IntoIterRmINtNtB26_3vec3VecRB14_EENCNvXs5_B16_NtB16_14RowAddrTreeMapNtB16_9RowSetOps9union_alls_0EE0E0EB18_.exit.i.thread94 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aq, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [32 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2303, !noalias !2304
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2305, !noalias !2306
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !2303, !noalias !2304
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !2305, !noalias !2306
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2307, !noalias !2304
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !2308, !noalias !2306
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !2307, !noalias !2304
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !2308, !noalias !2306
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aq, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapmB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3U_8adapters3map3MapINtB2U_8IntoIterRmINtNtB27_3vec3VecRB15_EENCNvXs5_B17_NtB17_14RowAddrTreeMapNtB17_9RowSetOps9union_alls_0EE0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE7reverseBA_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.ar = lshr i64 %.sroa.023.0, 1
  %i.as = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.at = sub nsw i64 %factor, %i.ar
  %i.au = add nuw nsw i64 %i.as, %factor
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false)
  %i.az = trunc nuw nsw i64 %i.ay to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.ba, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit ] ; 4 uses
  %i.ba = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %.not29 = icmp ult i8 %i.bc, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.be, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 3 uses
  %i.bh = lshr i64 %i.bg, 1                       ; 8 uses
  %i.bi = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bj = add nuw i64 %i.bh, %i.bi                ; 4 uses
  %i.bk = sub i64 %.sroa.09.0, %i.bj
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bk ; 6 uses
  %i.bm = icmp samesign ugt i64 %i.bj, %3
  %i.bn = trunc i64 %.sroa.023.161 to i1
  %i.bo = or i64 %i.bg, %.sroa.023.161
  %i.bp = trunc i64 %i.bo to i1
  %or.cond3.i = or i1 %i.bm, %i.bp
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = trunc i64 %i.bg to i1
  br i1 %i.bq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.br = shl nuw nsw i64 %i.bj, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bn, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bs = or i64 %i.bh, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3W_8adapters3map3MapINtB2W_8IntoIterRmINtNtB29_3vec3VecRB17_EENCNvXs5_B19_NtB19_14RowAddrTreeMapNtB19_9RowSetOps9union_alls_0EE0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bl, i64 noundef range(i64 0, 288230376151711744) %i.bh, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2287
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  %i.bx = icmp eq i64 %i.bh, 0
  %i.by = icmp eq i64 %i.bi, 0
  %or.cond.i = or i1 %i.by, %i.bx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 range(i64 0, -9223372036854775808) %i.bh) ; 2 uses
  %i.bz = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bz, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bh ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bh, %i.bi  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ca, ptr %i.bl
  %i.cb = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cb, i1 false), !alias.scope !2311
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cd = phi ptr [ %i.cn, %.preheader.i ], [ %i.cc, %.critedge.i ]
  %i.ce = phi ptr [ %i.cl, %.preheader.i ], [ %i.ca, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ch, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 -32 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %.val.i.i = load i32, ptr %i.cg, align 4, !alias.scope !2310, !noalias !2312, !noundef !4
  %.val10.i.i = load i32, ptr %i.cf, align 4, !alias.scope !2309, !noalias !2313, !noundef !4
  %i.ci = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.ci, ptr %i.cf, ptr %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !2311, !noalias !2314
  %i.cj = xor i1 %i.ci, true
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cm ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bl
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2r_11collections5btree3mapINtB3e_8BTreeMapmB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3e_8IntoIterRmINtNtB2r_3vec3VecRB1c_EENCNvXs5_B1e_NtB1e_14RowAddrTreeMapNtB1e_9RowSetOps9union_alls_0EE0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %i.bl, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !2309, !noalias !2315, !noundef !4
  %.val.i19.i = load i32, ptr %i.cr, align 4, !alias.scope !2310, !noalias !2316, !noundef !4
  %i.cs = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.ct = xor i1 %i.cs, true
  %spec.select.i.i = select i1 %i.cs, ptr %.sroa.0.02.i.i, ptr %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !2311, !noalias !2317
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  %i.cz = icmp ne ptr %i.cv, %i.cc
  %i.da = icmp ne ptr %i.cx, %i.m
  %or.cond.i20.i = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2r_11collections5btree3mapINtB3e_8BTreeMapmB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3e_8IntoIterRmINtNtB2r_3vec3VecRB1c_EENCNvXs5_B1e_NtB1e_14RowAddrTreeMapNtB1e_9RowSetOps9union_alls_0EE0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2r_11collections5btree3mapINtB3e_8BTreeMapmB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3e_8IntoIterRmINtNtB2r_3vec3VecRB1c_EENCNvXs5_B1e_NtB1e_14RowAddrTreeMapNtB1e_9RowSetOps9union_alls_0EE0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.cc, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cv, %.lr.ph.i.i ] ; 2 uses
  %i.db = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dc = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dd = sub nuw i64 %i.db, %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dd, i1 false), !alias.scope !2311, !noalias !2318
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2r_11collections5btree3mapINtB3e_8BTreeMapmB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3e_8IntoIterRmINtNtB2r_3vec3VecRB1c_EENCNvXs5_B1e_NtB1e_14RowAddrTreeMapNtB1e_9RowSetOps9union_alls_0EE0E0EB1g_.exit.i
  %i.de = shl nuw nsw i64 %i.bj, 1
  %i.df = or disjoint i64 %i.de, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bh
  %i.dh = or i64 %i.bi, 1
  %i.di = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3W_8adapters3map3MapINtB2W_8IntoIterRmINtNtB29_3vec3VecRB17_EENCNvXs5_B19_NtB19_14RowAddrTreeMapNtB19_9RowSetOps9union_alls_0EE0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dg, i64 noundef range(i64 0, 288230376151711744) %i.bi, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2287
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2a_11collections5btree3mapINtB2X_8BTreeMapmB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3X_8adapters3map3MapINtB2X_8IntoIterRmINtNtB2a_3vec3VecRB18_EENCNvXs5_B1a_NtB1a_14RowAddrTreeMapNtB1a_9RowSetOps9union_alls_0EE0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.df, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB2N_8BTreeMapmBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters3map3MapINtB2N_8IntoIterRmINtNtB21_3vec3VecRBZ_EENCNvXs5_B11_NtB11_14RowAddrTreeMapNtB11_9RowSetOps9union_alls_0EE0E0EB13_.exit ], [ %i.br, %bb.u ] ; 2 uses
  %i.dm = icmp ugt i64 %i.ba, 1
  br i1 %i.dm, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dn = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.do = lshr i64 %.sroa.018.0, 1
  %i.dp = add nuw i64 %i.do, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dq, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dr = or i64 %1, 1
  %i.ds = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = xor i32 %i.du, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3W_8adapters3map3MapINtB2W_8IntoIterRmINtNtB29_3vec3VecRB17_EENCNvXs5_B19_NtB19_14RowAddrTreeMapNtB19_9RowSetOps9union_alls_0EE0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2287
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3W_8adapters3map3MapINtB2W_8IntoIterRmINtNtB29_3vec3VecRB17_EENCNvXs5_B19_NtB19_14RowAddrTreeMapNtB19_9RowSetOps9union_alls_0EE0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [28 x i8], align 4        ; 8 uses
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.gx, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.gi, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.dw, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.d = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit
  %i.e = icmp eq i32 %i.dw, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %.sroa.0.0.ph104, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit ], [ %0, %bb.a ], [ %i.gx, %.outer ] ; 16 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE12split_at_mutBA_.exit ], [ %1, %bb.a ], [ %i.gi, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4j_8adapters3map3MapINtB3j_8IntoIterRmINtNtB2w_3vec3VecRB1u_EENCNvXs5_B1w_NtB1w_14RowAddrTreeMapNtB1w_9RowSetOps9union_alls_0EE0E0EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 10 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 32
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val9.i.i = load i32, ptr %.sroa.0.0.ph.lcssa95, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 64
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val1.i.i = load i32, ptr %i.ad, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !alias.scope !2359
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !2359
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !2359
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !alias.scope !2359
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i ; 8 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.i ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val8.i30.i = load i32, ptr %i.ao, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val9.i31.i = load i32, ptr %i.am, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.ap = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.val6.i32.i = load i32, ptr %i.aq, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val7.i33.i = load i32, ptr %i.ar, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.as = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34.i = load i32, ptr %i.az, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val5.i35.i = load i32, ptr %i.au, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.bc = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bb, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val3.i37.i = load i32, ptr %i.ax, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.bd = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !4
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !4
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !4
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !4 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !4
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !4 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bj, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %.val1.i39.i = load i32, ptr %i.bh, align 4, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.bk = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !alias.scope !2359
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !2359
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !alias.scope !2359
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !alias.scope !2359
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.ph.lcssa95, i64 32, i1 false), !alias.scope !2359
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !alias.scope !2359
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.bs = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3map3MapINtB2Z_8IntoIterRmINtNtB2c_3vec3VecRB1a_EENCNvXs5_B1c_NtB1c_14RowAddrTreeMapNtB1c_9RowSetOps9union_alls_0EE0E0EB1e_.exit.i, %bb.h
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i
  %i.bv = getelementptr [32 x i8], ptr %2, i64 %i.i ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3map3MapINtB2Z_8IntoIterRmINtNtB2c_3vec3VecRB1a_EENCNvXs5_B1c_NtB1c_14RowAddrTreeMapNtB1c_9RowSetOps9union_alls_0EE0E0EB1e_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cg, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3map3MapINtB2Z_8IntoIterRmINtNtB2c_3vec3VecRB1a_EENCNvXs5_B1c_NtB1c_14RowAddrTreeMapNtB1c_9RowSetOps9union_alls_0EE0E0EB1e_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx268 = shl nuw nsw i64 %.sroa.05.08.1.i, 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx268 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !alias.scope !2359
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -32 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.by, align 8, !alias.scope !2358, !noalias !2357, !noundef !4 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.bz, align 8, !alias.scope !2358, !noalias !2357, !noundef !4
  %i.ca = icmp ult i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.ca, label %bb.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3map3MapINtB2Z_8IntoIterRmINtNtB2c_3vec3VecRB1a_EENCNvXs5_B1c_NtB1c_14RowAddrTreeMapNtB1c_9RowSetOps9union_alls_0EE0E0EB1e_.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(28) %i.cb, i64 28, i1 false), !noalias !2358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false), !alias.scope !2358, !noalias !2357
  %i.cc = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cc, label %._crit_edge264, label %.lr.ph263

bb.j:                                             ; preds = %.lr.ph263
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsbjTsVCnQnhv_12lance_select4mask8nullableNtB2_18NullableRowAddrSet9union_all:bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !2994
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetNtBZ_14RowAddrTreeMapB21_NCNvMBX_BV_9union_alls0_0NCB2s_s1_0E0B11_.exit.i: ; preds = %bb.x
  %.sroa.041.0.copyload43 = load ptr, ptr %i.d, align 8, !noalias !2992 ; 3 uses
  %.sroa.7.0.copyload48 = load i64, ptr %.sroa.7.0..sroa_idx45, align 8, !noalias !2992 ; 3 uses
  %.sroa.8.0.copyload54 = load i64, ptr %.sroa.8.0..sroa_idx51, align 8, !noalias !2992 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2992
  %i.bh = add nuw nsw i64 %.sroa.01.0.i, 1        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %2
  br i1 %i.bi, label %bb.ac, label %bb.q

bb.ac:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetNtBZ_14RowAddrTreeMapB21_NCNvMBX_BV_9union_alls0_0NCB2s_s1_0E0B11_.exit.i
  store ptr %.sroa.041.0.copyload43, ptr %i.g, align 8, !noalias !2991
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.7.0.copyload48, ptr %.sroa.7.0..sroa_idx49, align 8, !noalias !2991
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBU_14RowAddrTreeMapNCINvNtNtB23_8adapters3map8map_foldRBQ_B2H_B2H_NCNvMBS_BQ_9union_alls0_0NCB3P_s1_0E0EBW_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBU_14RowAddrTreeMapNCINvNtNtB23_8adapters3map8map_foldRBQ_B2H_B2H_NCNvMBS_BQ_9union_alls0_0NCB3P_s1_0E0EBW_.exit: ; preds = %bb.ac, %bb.p
  %.sroa.8.0.copyload54.lcssa.sink = phi i64 [ %.sroa.8.0.copyload54, %bb.ac ], [ 0, %bb.p ] ; 2 uses
  %.sroa.47.0.copyload.i.i.i58 = phi i64 [ %.sroa.7.0.copyload48, %bb.ac ], [ undef, %bb.p ] ; 2 uses
  %.sroa.06.0.copyload.i.i.i57 = phi ptr [ %.sroa.041.0.copyload43, %bb.ac ], [ null, %bb.p ] ; 3 uses
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.8.0.copyload54.lcssa.sink, ptr %.sroa.8.0..sroa_idx55, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXsi_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapINtNtNtCscI6d9CVNmLh_4core3ops5arith9SubAssignRBE_E10sub_assign(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.af unwind label %bb.ad, !noalias !3005

bb.ad:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBU_14RowAddrTreeMapNCINvNtNtB23_8adapters3map8map_foldRBQ_B2H_B2H_NCNvMBS_BQ_9union_alls0_0NCB3P_s1_0E0EBW_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %.body24 unwind label %bb.ae, !noalias !3006

bb.ae:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3007
  unreachable

.body24:                                          ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %.thread unwind label %bb.aj

bb.af:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCsbjTsVCnQnhv_12lance_select4mask8nullable18NullableRowAddrSetENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBU_14RowAddrTreeMapNCINvNtNtB23_8adapters3map8map_foldRBQ_B2H_B2H_NCNvMBS_BQ_9union_alls0_0NCB3P_s1_0E0EBW_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3008
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i57, null
  br i1 %.not.i.i.i, label %.noexc26, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !3008
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i57, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3008
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i58, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3008
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !3008
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i57, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3008
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i58, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3008
  br label %.noexc26

.noexc26:                                         ; preds = %bb.ag, %bb.af
  %.sink31.i.i.i = phi i64 [ 1, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %.sroa.8.0.copyload54.lcssa.sink, %bb.ag ], [ 0, %bb.af ]
  store i64 %.sink31.i.i.i, ptr %i.b, align 8, !noalias !3008
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i, ptr %i.bm, align 8, !noalias !3008
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.bn, align 8, !noalias !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3009
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10dying_nextB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.bo = load ptr, ptr %i.a, align 8, !noalias !3009, !noundef !4 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bp = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.bu, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3009
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.sroa.43.0.copyload.i.i.i.i.i ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !9, !alias.scope !3010, !noalias !3009, !noundef !4
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.br), !noalias !3009
  br label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3009
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10dying_nextB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.bu = load ptr, ptr %i.a, align 8, !noalias !3009, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.ah

.loopexit:                                        ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i, %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.aj:                                            ; preds = %.thread, %.thread67, %.body24
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread67:                                        ; preds = %bb.aa, %bb.y
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i, %bb.aa ], [ %i.be, %bb.y ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %.thread unwind label %bb.aj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB1d_.exit: ; preds = %bb.e, %bb.d, %.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn62, %.thread ], [ %i.v, %bb.e ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn

.thread:                                          ; preds = %.body24, %.thread67, %bb.l, %bb.k, %bb.h
  %.pn.pn62 = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.aa, %bb.h ], [ %i.am, %bb.k ], [ %i.bj, %.body24 ], [ %eh.lpad-body3.i.i, %.thread67 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB1d_.exit unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE15bulk_steal_leftB1n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [28 x i8], align 4            ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 318 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !4
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 318 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !4
  %i.l = zext i16 %i.k to i64                     ; 5 uses
  %i.m = add nuw nsw i64 %1, %i.l                 ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1                 ; 4 uses
  %i.p = trunc nuw i64 %i.o to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw nsw i64 %i.m to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %i.t = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.r, i64 %i.t, i1 false), !alias.scope !3030
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %1
  %i.w = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !alias.scope !3031
  %i.x = add nuw nsw i64 %i.o, 1                  ; 4 uses
  %i.y = sub nuw nsw i64 %i.g, %i.x               ; 5 uses
  %i.z = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB19_.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37, !noalias !3034
  unreachable

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB19_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.x
  %i.ad = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 4 %i.ac, i64 %i.ad, i1 false), !alias.scope !3034
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.x
  %i.ag = mul nuw nsw i64 %i.y, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.af, i64 %i.ag, i1 false), !alias.scope !3035
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.o
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val18 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val18, i64 272
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.val19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.val19 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !noalias !3036, !noundef !4
  store i32 %i.ai, ptr %i.am, align 4, !noalias !3036
  %.sroa.4.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !3037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx20, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = icmp eq i64 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB19_.exit
  br i1 %i.ax, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit, label %bb.j, !prof !13

bb.h:                                             ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB19_.exit
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cc, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ay = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i.epil
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.ba, align 8
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 316
  store i16 %i.bb, ptr %i.bc, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit, label %bb.i, !llvm.loop !3024

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #37
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 320 ; 8 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %1
  %i.bf = shl nuw nsw i64 %i.l, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bg, i1 false), !alias.scope !3039
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.x
  %i.bj = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bi, i64 %i.bj, i1 false), !alias.scope !3040
  %i.bk = add nuw nsw i64 %1, %i.l
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bm = icmp samesign ult i64 %i.m, 3
  br i1 %i.bm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bl, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cc, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bn = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 316
  store i16 %i.bq, ptr %i.br, align 4
  %i.bs = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.bn to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 316
  store i16 %i.bv, ptr %i.bw, align 4
  %i.bx = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bs
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.bs to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 316
  store i16 %i.ca, ptr %i.cb, align 4
  %i.cc = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bx
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.ce, align 8
  %i.cf = trunc nuw nsw i64 %i.bx to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 316
  store i16 %i.cf, ptr %i.cg, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE16bulk_steal_rightB1n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [28 x i8], align 4            ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 318 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !4 ; 6 uses
  %i.g = zext i16 %i.f to i64                     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 318 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !4
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %i.m = add nuw nsw i64 %1, %i.g                 ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.l
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.l, %1                 ; 5 uses
  %i.p = trunc nuw nsw i64 %i.m to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw i64 %i.o to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = add nsw i64 %1, -1                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val21 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val21, i64 272
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.val22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.val22 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !noalias !3060, !noundef !4
  store i32 %i.u, ptr %i.z, align 4, !noalias !3060
  %.sroa.4.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !3061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx26, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = add nuw nsw i64 %i.g, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 4 %i.s, i64 %i.aj, i1 false), !alias.scope !3063
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ah
  %i.al = mul nuw nsw i64 %i.r, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.v, i64 %i.al, i1 false), !alias.scope !3064
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.an = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.am, i64 %i.an, i1 false), !alias.scope !3065
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  %i.ap = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !alias.scope !3066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader ], [ %i.de, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 316
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil, !llvm.loop !3054

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 320 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !3067
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = shl nuw nsw i64 %i.o, 3
  %i.bi = add nuw nsw i64 %i.bh, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bi, i1 false), !alias.scope !3068
  %i.bj = icmp ult i16 %i.f, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.ah to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 316
  store i16 %i.bm, ptr %i.bn, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.f, 10
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bo to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 316
  store i16 %i.bs, ptr %i.bt, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.bv = icmp samesign ult i16 %i.f, 9
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bu to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 316
  store i16 %i.by, ptr %i.bz, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %i.cb = icmp samesign ult i16 %i.f, 8
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.ca to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 316
  store i16 %i.ce, ptr %i.cf, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.ch = icmp ne i16 %i.f, 7
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cg to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 316
  store i16 %i.ck, ptr %i.cl, align 4
  br label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.l, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.o, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.epil.preheader, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader.new

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit

_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit: ; preds = %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader.new ], [ %i.de, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.cr, align 8
  %i.cs = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 316
  store i16 %i.cs, ptr %i.ct, align 4
  %i.cu = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cp
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cp to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 316
  store i16 %i.cx, ptr %i.cy, align 4
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cu
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.db, align 8
  %i.dc = trunc nuw nsw i64 %i.cu to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 316
  store i16 %i.dc, ptr %i.dd, align 4
  %i.de = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cz
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.i, ptr %i.dh, align 8
  %i.di = trunc nuw nsw i64 %i.cz to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 316
  store i16 %i.di, ptr %i.dj, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEB1v_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult5exact(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.c = load i64, ptr %1, align 8, !range !7, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3076, !noalias !3075, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !alias.scope !3075, !noalias !3076
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !3075, !noalias !3076
  br label %_RNvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB1c_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
