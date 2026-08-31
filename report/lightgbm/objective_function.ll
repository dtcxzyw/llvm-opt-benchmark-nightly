Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_SK_T0_SL_T1_:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.063.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.063.sroa.0.0.copyload, i64 24 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.018.i53 = phi i64 [ %i.ck, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i61, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i ] ; 2 uses
  %.sroa.011.017.i54 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i60, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i ] ; 2 uses
  %i.cp = lshr i64 %.018.i53, 1                   ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.017.i54, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cg, align 4, !tbaa !132
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !132
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !160
  %i.cu = load ptr, ptr %.sroa.063.sroa.3.0.copyload, align 8, !tbaa !207
  %i.cv = sext i32 %i.cr to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !162
  store i32 %i.cx, ptr %i.d, align 4, !tbaa !132
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !75
  %.not.i.i.i.i.i57 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i57, label %bb.j, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i58

bb.j:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i58:     ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !208
  %i.da = call noundef double %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.063.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !160
  %i.dc = load ptr, ptr %.sroa.063.sroa.3.0.copyload, align 8, !tbaa !207
  %i.dd = sext i32 %i.cs to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.db, ptr %i.a, align 8, !tbaa !162
  store i32 %i.df, ptr %i.b, align 4, !tbaa !132
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !75
  %.not.i.i2.i.i.i59 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i2.i.i.i59, label %bb.k, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i

bb.k:                                             ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i58
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i: ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i58
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !208
  %i.di = call noundef double %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.063.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dj = fcmp olt double %i.da, %i.di            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dl = xor i64 %i.cp, -1
  %i.dm = add nsw i64 %.018.i53, %i.dl
  %.sroa.011.1.i60 = select i1 %i.dj, ptr %.sroa.011.017.i54, ptr %i.dk ; 3 uses
  %.1.i61 = select i1 %i.dj, i64 %i.cp, i64 %i.dm ; 2 uses
  %i.dn = icmp sgt i64 %.1.i61, 0
  br i1 %i.dn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !316

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i
  %.pre85 = ptrtoint ptr %.sroa.011.1.i60 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi86 = phi i64 [ %.pre85, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.ci, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i60, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.do = sub i64 %.pre-phi86, %i.ci
  %i.dp = ashr exact i64 %i.do, 2
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit
  %.sroa.068.0 = phi ptr [ %i.av, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.sroa.065.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.cg, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ce, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.cf, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.au, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.dp, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %i.dq = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.068.0, ptr %1, ptr %.sroa.065.0) ; 2 uses
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_SK_T0_SL_T1_(ptr %0, ptr %.sroa.068.0, ptr %i.dq, i64 noundef %.0, i64 noundef %.043, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.dr = sub nsw i64 %3, %.0
  %i.ds = sub nsw i64 %4, %.043
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_SK_T0_SL_T1_(ptr %i.dq, ptr %.sroa.065.0, ptr %2, i64 noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESJ_EEbT_T0_.exit, %bb.f, %bb.a, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -4
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 60
  br i1 %min.iters.check165, label %.lr.ph.i.preheader181, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -4
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader181, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %i.o, 9223372036854775800   ; 3 uses
  %i.t = shl i64 %n.vec167, 2                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 2                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !132, !alias.scope !317, !noalias !320
  %wide.load173 = load <4 x i32>, ptr %i.x, align 4, !tbaa !132, !alias.scope !317, !noalias !320
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !132, !alias.scope !320
  %wide.load175 = load <4 x i32>, ptr %i.y, align 4, !tbaa !132, !alias.scope !320
  store <4 x i32> %wide.load174, ptr %next.gep171, align 4, !tbaa !132, !alias.scope !317, !noalias !320
  store <4 x i32> %wide.load175, ptr %i.x, align 4, !tbaa !132, !alias.scope !317, !noalias !320
  store <4 x i32> %wide.load172, ptr %next.gep170, align 4, !tbaa !132, !alias.scope !320
  store <4 x i32> %wide.load173, ptr %i.y, align 4, !tbaa !132, !alias.scope !320
  %index.next176 = add nuw i64 %index169, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !322

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n178, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block177
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block177 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block177 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !132
  %i.ab = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !132
  store i32 %i.ab, ptr %.sroa.04.07.i, align 4, !tbaa !132
  store i32 %i.aa, ptr %.sroa.0.08.i, align 4, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !323

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i32, ptr %.sroa.042.0, align 4, !tbaa !132
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 4
  %.idx87 = shl nuw nsw i64 %.0, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.sroa.042.0, ptr nonnull align 4 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !132
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph100.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 2
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !132, !alias.scope !324, !noalias !327
  %wide.load130 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !132, !alias.scope !324, !noalias !327
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load131 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !132, !alias.scope !327
  %wide.load132 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !132, !alias.scope !327
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !132, !alias.scope !324, !noalias !327
  store <4 x i32> %wide.load132, ptr %i.aw, align 4, !tbaa !132, !alias.scope !324, !noalias !327
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !132, !alias.scope !327
  store <4 x i32> %wide.load130, ptr %i.ax, align 4, !tbaa !132, !alias.scope !327
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader182

.lr.ph100.preheader182:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.039.097.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.042.196.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter190 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader182, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader182 ]
  %.sroa.039.097.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.097.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %.sroa.042.196.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.196.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader182 ]
  %i.ba = load i32, ptr %.sroa.042.196.prol, align 4, !tbaa !132
  %i.bb = load i32, ptr %.sroa.039.097.prol, align 4, !tbaa !132
  store i32 %i.bb, ptr %.sroa.042.196.prol, align 4, !tbaa !132
  store i32 %i.ba, ptr %.sroa.039.097.prol, align 4, !tbaa !132
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.196.prol, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.097.prol, i64 4 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !330

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader182
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader182 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.039.097.unr = phi ptr [ %.sroa.039.097.ph, %.lr.ph100.preheader182 ], [ %i.bd, %.lr.ph100.prol ]
  %.sroa.042.196.unr = phi ptr [ %.sroa.042.196.ph, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.039.097 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.097.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.042.196 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.196.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.042.196, align 4, !tbaa !132
  %i.bk = load i32, ptr %.sroa.039.097, align 4, !tbaa !132
  store i32 %i.bk, ptr %.sroa.042.196, align 4, !tbaa !132
  store i32 %i.bj, ptr %.sroa.039.097, align 4, !tbaa !132
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !132
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !132
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !132
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !132
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !132
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !132
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !132
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !132
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !132
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !132
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !132
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 16
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !331

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !132
  %.idx = shl nuw nsw i64 %.0, 2
  %i.cf = add nsw i64 %.idx, -4                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !283

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr nonnull align 4 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 4
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %.sroa.042.0, align 4, !tbaa !132
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !132
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.ce, ptr %.sroa.042.0, align 4, !tbaa !132
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [4 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp ult i64 %.085, 8
  br i1 %min.iters.check141, label %.lr.ph.preheader183, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 2
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader183, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775800  ; 4 uses
  %i.cr = mul i64 %n.vec143, -4                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -4                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !132, !alias.scope !332, !noalias !335
  %wide.load149 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !132, !alias.scope !332, !noalias !335
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !132, !alias.scope !335
  %wide.load151 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !132, !alias.scope !335
  store <4 x i32> %wide.load150, ptr %i.cv, align 4, !tbaa !132, !alias.scope !332, !noalias !335
  store <4 x i32> %wide.load151, ptr %i.cw, align 4, !tbaa !132, !alias.scope !332, !noalias !335
  store <4 x i32> %wide.load148, ptr %i.cx, align 4, !tbaa !132, !alias.scope !335
  store <4 x i32> %wide.load149, ptr %i.cy, align 4, !tbaa !132, !alias.scope !335
  %index.next152 = add nuw i64 %index145, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !337

middle.block153:                                  ; preds = %vector.body144
  %cmp.n154 = icmp eq i64 %.085, %n.vec143
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph.preheader183

.lr.ph.preheader183:                              ; preds = %vector.memcheck135, %.lr.ph.preheader, %middle.block153
  %.02895.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %.lr.ph.preheader ], [ %n.vec143, %middle.block153 ] ; 3 uses
  %.sroa.0.094.ph = phi ptr [ %i.cc, %vector.memcheck135 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block153 ] ; 2 uses
  %.sroa.042.293.ph = phi ptr [ %i.cn, %vector.memcheck135 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block153 ] ; 2 uses
  %xtraiter = and i64 %.085, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader183, %.lr.ph.prol
  %.02895.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02895.ph, %.lr.ph.preheader183 ]
  %.sroa.0.094.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.094.ph, %.lr.ph.preheader183 ]
  %.sroa.042.293.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.042.293.ph, %.lr.ph.preheader183 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader183 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -4 ; 4 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !132
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !132
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !132
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !132
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !338

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader183
  %.02895.unr = phi i64 [ %.02895.ph, %.lr.ph.preheader183 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.094.unr = phi ptr [ %.sroa.0.094.ph, %.lr.ph.preheader183 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.042.293.unr = phi ptr [ %.sroa.042.293.ph, %.lr.ph.preheader183 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02895.ph, %.085
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %bb.n
  %.sroa.042.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.042.0, %middle.block153 ], [ %.sroa.042.0, %.lr.ph ], [ %.sroa.042.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !339

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -4 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !132
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !132
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !132
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !132
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !132
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !132
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !132
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !132
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -12 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -12 ; 2 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !132
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !132
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !132
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !132
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !132
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !132
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !132
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !132
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !340

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block177, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block177 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %.not = icmp sgt i64 %3, %6
  %.not56 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp sgt i64 %3, %4
  %.sroa.074.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !293 ; 8 uses
  %.sroa.074.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.074.sroa.3.0.copyload = load ptr, ptr %.sroa.074.sroa.3.0..sroa_idx, align 8, !tbaa !295 ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.j = sdiv i64 %3, 2                           ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.074.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.074.sroa.2.0.copyload = load ptr, ptr %.sroa.074.sroa.2.0..sroa_idx, align 8, !tbaa !298
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.074.sroa.2.0.copyload, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.074.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.074.sroa.0.0.copyload, i64 24 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM14LambdarankNDCG25UpdatePositionBiasFactorsEPKfS2_:bb.a
bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit29
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !122
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit31

_ZNSt6vectorIdSaIdEED2Ev.exit31:                  ; preds = %bb.n, %_ZNSt6vectorIiSaIiEED2Ev.exit29, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit29 ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.br = load ptr, ptr %3, align 8, !tbaa !120   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIdSaIdEED2Ev.exit33, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit31
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit33

_ZNSt6vectorIdSaIdEED2Ev.exit33:                  ; preds = %bb.o, %_ZNSt6vectorIdSaIdEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM16RankingObjectiveD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM16RankingObjectiveD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16RankingObjective4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !509
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !508
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = icmp eq ptr %i.g, %i.i
  %spec.select.i = select i1 %i.j, ptr null, ptr %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select.i, ptr %i.k, align 8, !tbaa !535
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.p = icmp eq ptr %i.m, %i.o
  %spec.select.i8 = select i1 %i.p, ptr null, ptr %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %spec.select.i8, ptr %i.q, align 8, !tbaa !536
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !537  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !537  ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  %spec.select.i9 = select i1 %i.v, ptr null, ptr %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i9, ptr %i.w, align 8, !tbaa !538
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !510
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !207
  %i.ah = icmp eq ptr %i.ae, %i.ag
  %spec.select.i10 = select i1 %i.ah, ptr null, ptr %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %spec.select.i10, ptr %i.ai, align 8, !tbaa !539
  %i.aj = icmp eq ptr %spec.select.i10, null
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.52)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !510
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi i32 [ %.pre, %bb.b ], [ %i.ab, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.am = load i32, ptr %i.al, align 8, !tbaa !540
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !507
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = sext i32 %i.ak to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !161 ; 3 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !97 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.ap
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = sub nuw nsw i64 %i.ap, %i.aw
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr %i.ar, i64 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.e:                                             ; preds = %bb.c
  %i.az = icmp ugt i64 %i.aw, %i.ap
  br i1 %i.az, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !161
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16RankingObjective25UpdatePositionBiasFactorsEPKfS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !92   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !283

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !161
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !92
  store float %i.s, ptr %i.d, align 4, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !161
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !283

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !92
  store float %i.ac, ptr %i.ab, align 4, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x float> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !92
  store <4 x float> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !92
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !544

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !545

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !92
  store <4 x float> %broadcast.splat, ptr %i.ay, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !547

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !161
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !283

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !161
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load float, ptr %1, align 4, !tbaa !92
  store float %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !161
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x float> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !92
  store <4 x float> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !92
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !548

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !549

end_hunk_1
begin_hunk_2_@_ZNK8LightGBM17MulticlassSoftmax8ToStringB5cxx11Ev:bb.a
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !16, !alias.scope !669
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #35
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !18
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !18
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #12
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !18
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bg) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !534  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !532    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !533
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !132
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !534
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #37
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !132
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !132
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !533
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !532
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !534
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !533
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %3, align 8, !tbaa !119 ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !283

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load double, ptr %i.o, align 8, !tbaa !119
  store double %i.s, ptr %i.d, align 8, !tbaa !119
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !121
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !283

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load double, ptr %1, align 8, !tbaa !119
  store double %i.ac, ptr %i.ab, align 8, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x double> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !119
  store <2 x double> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !119
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !670

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !671

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !119
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !119
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !673

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !121
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !283

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load double, ptr %1, align 8, !tbaa !119
  store double %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !119
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !121
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x double> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !119
  store <2 x double> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !119
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !674

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i72, align 8, !tbaa !119
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !675

end_hunk_2
