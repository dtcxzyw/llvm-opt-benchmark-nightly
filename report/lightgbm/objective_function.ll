Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_:bb.a

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre25.i43 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %.pre25.i41, %bb.h ] ; 3 uses
  %i.l = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.aq, %bb.h ] ; 7 uses
  %i.m = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.029.033, %.lr.ph.i ], [ %.sroa.0.021.i, %bb.h ] ; 4 uses
  %i.n = load i32, ptr %.sroa.0.021.i, align 4, !tbaa !204 ; 4 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !169 ; 3 uses
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !169
  %i.u = fcmp olt float %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %.sroa.0.021.i to i64
  %i.w = sub i64 %i.v, %i.j                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.aa = sub nsw i64 0, %i.x
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ab, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.033, i64 %i.w, i1 false)
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !218 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %i.w, 4
  br i1 %i.ac, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.m, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pre25.i42 = phi ptr [ %.pre24.i, %bb.d ], [ %.pre25.i43, %bb.e ], [ %.pre25.i43, %bb.f ]
  %i.ae = phi ptr [ %.pre24.i, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  store i32 %i.n, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.pn20.i, align 4, !tbaa !204 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !169
  %i.aj = fcmp olt float %i.q, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.af, %bb.g ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i32 %i.ak, ptr %.sroa.05.09.i.i, align 4, !tbaa !204
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !204 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !169
  %i.ap = fcmp olt float %i.q, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, !llvm.loop !24

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.n, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !204
  %.pre.i = load i32, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.pre25.i41 = phi ptr [ %.pre25.i42, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre25.i43, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ae, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.l, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %i.ar = phi i32 [ %i.n, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, label %bb.b, !llvm.loop !25

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit: ; preds = %bb.h
  %i.as = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.at = sub i64 %i.a, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not = icmp slt i64 %i.au, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !498

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us, %bb.a
  %.sroa.029.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.as, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ]
  %i.av = icmp eq ptr %.sroa.029.0.lcssa, %1
  br i1 %i.av, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 4 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre23.i13 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  %.pre25.i14 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i12
  %i.ax = phi ptr [ %.pre25.i14, %.lr.ph.i12 ], [ %i.cc, %bb.o ] ; 7 uses
  %i.ay = phi i32 [ %.pre23.i13, %.lr.ph.i12 ], [ %i.cd, %bb.o ] ; 2 uses
  %.sroa.0.021.i15 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i20, %bb.o ] ; 6 uses
  %.pn20.i16 = phi ptr [ %.sroa.029.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i15, %bb.o ] ; 4 uses
  %i.az = load i32, ptr %.sroa.0.021.i15, align 4, !tbaa !204 ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169 ; 3 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = fcmp olt float %i.bc, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = ptrtoint ptr %.sroa.0.021.i15 to i64
  %i.bi = sub i64 %i.bh, %.lcssa                  ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !258

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 8
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bn, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.0.lcssa, i64 %i.bi, i1 false)
  %.pre24.i27 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp eq i64 %i.bi, 4
  br i1 %i.bo, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 4
  store i32 %i.ay, ptr %i.bp, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26: ; preds = %bb.m, %bb.l, %bb.k
  %i.bq = phi ptr [ %.pre24.i27, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  store i32 %i.az, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.br = load i32, ptr %.pn20.i16, align 4, !tbaa !204 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !169
  %i.bv = fcmp olt float %i.bc, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17

.lr.ph.i.i22:                                     ; preds = %bb.n, %.lr.ph.i.i22
  %i.bw = phi i32 [ %i.bx, %.lr.ph.i.i22 ], [ %i.br, %bb.n ]
  %.sroa.0.010.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn20.i16, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i24 = phi ptr [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.021.i15, %bb.n ]
  store i32 %i.bw, ptr %.sroa.05.09.i.i24, align 4, !tbaa !204
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i23, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !204 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !169
  %i.cb = fcmp olt float %i.bc, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, !llvm.loop !24

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17: ; preds = %.lr.ph.i.i22, %bb.n
  %.sroa.05.0.lcssa.i.i18 = phi ptr [ %.sroa.0.021.i15, %bb.n ], [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.az, ptr %.sroa.05.0.lcssa.i.i18, align 4, !tbaa !204
  %.pre.i19 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26
  %i.cc = phi ptr [ %i.bq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %i.cd = phi i32 [ %i.az, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %.pre.i19, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i15, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %bb.i, !llvm.loop !25

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28: ; preds = %bb.o, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 11 uses
  %.idx47 = shl i64 %3, 3                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us
  %.055.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !258

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.039.054.us, align 4, !tbaa !204
  store i32 %i.j, ptr %.055.us, align 4, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !204
  store i32 %i.l, ptr %i.k, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.055.us, ptr align 4 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.n = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !499

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit
  %.055 = phi ptr [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %.055, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.039.054, %.lr.ph.i ], [ %.sroa.015.1.i, %bb.e ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.011.019.i, align 4, !tbaa !204 ; 2 uses
  %i.v = load i32, ptr %.sroa.015.020.i, align 4, !tbaa !204 ; 2 uses
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !169
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !169
  %i.ac = fcmp olt float %i.y, %i.ab              ; 3 uses
  %.sink.i = select i1 %i.ac, i32 %i.u, i32 %i.v
  %.sroa.011.1.idx.i = select i1 %i.ac, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ac, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.021.i, align 4, !tbaa !204
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 4 uses
  %i.ae = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.af = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !500

.critedge.i.loopexit:                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = ptrtoint ptr %.sroa.015.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !258

bb.f:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.ai, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.critedge.i.loopexit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.h, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !204
  store i32 %i.al, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.an = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.011.1.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 4
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !258

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.ap, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.k, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !204
  store i32 %i.as, ptr %i.am, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 2 uses
  %i.au = sub i64 %i.b, %i.an
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %.not = icmp slt i64 %i.av, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !499

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.av, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 2
  %i.aw = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond18.i15 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !218 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i21
  %.021.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bk, %bb.l ] ; 2 uses
  %.sroa.015.020.i23 = phi ptr [ %.sroa.039.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i29, %bb.l ] ; 2 uses
  %.sroa.011.019.i24 = phi ptr [ %i.aw, %.lr.ph.i21 ], [ %.sroa.011.1.i27, %bb.l ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.011.019.i24, align 4, !tbaa !204 ; 2 uses
  %i.bc = load i32, ptr %.sroa.015.020.i23, align 4, !tbaa !204 ; 2 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !169
  %i.bj = fcmp olt float %i.bf, %i.bi             ; 3 uses
  %.sink.i25 = select i1 %i.bj, i32 %i.bb, i32 %i.bc
  %.sroa.011.1.idx.i26 = select i1 %i.bj, i64 4, i64 0
  %.sroa.011.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24, i64 %.sroa.011.1.idx.i26 ; 3 uses
  %.sroa.015.1.idx.i28 = select i1 %i.bj, i64 0, i64 4
  %.sroa.015.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23, i64 %.sroa.015.1.idx.i28 ; 3 uses
  store i32 %.sink.i25, ptr %.021.i22, align 4, !tbaa !204
  %i.bk = getelementptr inbounds nuw i8, ptr %.021.i22, i64 4 ; 2 uses
  %i.bl = icmp ne ptr %.sroa.015.1.i29, %i.aw
  %i.bm = icmp ne ptr %.sroa.011.1.i27, %1
  %or.cond.i30 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.i30, label %bb.l, label %.critedge.i16, !llvm.loop !500

.critedge.i16:                                    ; preds = %bb.l, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.011.1.i27, %bb.l ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i29, %bb.l ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bk, %bb.l ] ; 3 uses
  %i.bn = ptrtoint ptr %i.aw to i64
  %i.bo = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.m, label %bb.n, !prof !258

bb.m:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.n:                                             ; preds = %.critedge.i16
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !204
  store i32 %i.bs, ptr %.0.lcssa.i19, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.o, %bb.n, %bb.m
  %i.bt = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bp ; 2 uses
  %i.bu = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.bv = sub i64 %i.b, %i.bu                     ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !258

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %.sroa.011.0.lcssa.i17, i64 %i.bv, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.r, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %.sroa.011.0.lcssa.i17, align 4, !tbaa !204
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 3                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.g = icmp sgt i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  %i.i = icmp sgt i64 %.idx, 4
  %i.j = icmp eq i64 %.idx, 4
  br label %._crit_edge.i.us
end_hunk_0
begin_hunk_1_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_:bb.a

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre25.i43 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %.pre25.i41, %bb.h ] ; 3 uses
  %i.l = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.aq, %bb.h ] ; 7 uses
  %i.m = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.029.033, %.lr.ph.i ], [ %.sroa.0.021.i, %bb.h ] ; 4 uses
  %i.n = load i32, ptr %.sroa.0.021.i, align 4, !tbaa !204 ; 4 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !169 ; 3 uses
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !169
  %i.u = fcmp olt float %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %.sroa.0.021.i to i64
  %i.w = sub i64 %i.v, %i.j                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.aa = sub nsw i64 0, %i.x
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ab, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.033, i64 %i.w, i1 false)
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !218 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %i.w, 4
  br i1 %i.ac, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.m, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pre25.i42 = phi ptr [ %.pre24.i, %bb.d ], [ %.pre25.i43, %bb.e ], [ %.pre25.i43, %bb.f ]
  %i.ae = phi ptr [ %.pre24.i, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  store i32 %i.n, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.pn20.i, align 4, !tbaa !204 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !169
  %i.aj = fcmp olt float %i.q, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.af, %bb.g ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i32 %i.ak, ptr %.sroa.05.09.i.i, align 4, !tbaa !204
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !204 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !169
  %i.ap = fcmp olt float %i.q, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, !llvm.loop !42

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.n, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !204
  %.pre.i = load i32, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.pre25.i41 = phi ptr [ %.pre25.i42, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre25.i43, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ae, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.l, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %i.ar = phi i32 [ %i.n, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, label %bb.b, !llvm.loop !43

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit: ; preds = %bb.h
  %i.as = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.at = sub i64 %i.a, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not = icmp slt i64 %i.au, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !555

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us, %bb.a
  %.sroa.029.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.as, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ]
  %i.av = icmp eq ptr %.sroa.029.0.lcssa, %1
  br i1 %i.av, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 4 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre23.i13 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  %.pre25.i14 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i12
  %i.ax = phi ptr [ %.pre25.i14, %.lr.ph.i12 ], [ %i.cc, %bb.o ] ; 7 uses
  %i.ay = phi i32 [ %.pre23.i13, %.lr.ph.i12 ], [ %i.cd, %bb.o ] ; 2 uses
  %.sroa.0.021.i15 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i20, %bb.o ] ; 6 uses
  %.pn20.i16 = phi ptr [ %.sroa.029.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i15, %bb.o ] ; 4 uses
  %i.az = load i32, ptr %.sroa.0.021.i15, align 4, !tbaa !204 ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169 ; 3 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = fcmp olt float %i.bc, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = ptrtoint ptr %.sroa.0.021.i15 to i64
  %i.bi = sub i64 %i.bh, %.lcssa                  ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !258

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 8
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bn, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.0.lcssa, i64 %i.bi, i1 false)
  %.pre24.i27 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp eq i64 %i.bi, 4
  br i1 %i.bo, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 4
  store i32 %i.ay, ptr %i.bp, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26: ; preds = %bb.m, %bb.l, %bb.k
  %i.bq = phi ptr [ %.pre24.i27, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  store i32 %i.az, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.br = load i32, ptr %.pn20.i16, align 4, !tbaa !204 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !169
  %i.bv = fcmp olt float %i.bc, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17

.lr.ph.i.i22:                                     ; preds = %bb.n, %.lr.ph.i.i22
  %i.bw = phi i32 [ %i.bx, %.lr.ph.i.i22 ], [ %i.br, %bb.n ]
  %.sroa.0.010.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn20.i16, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i24 = phi ptr [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.021.i15, %bb.n ]
  store i32 %i.bw, ptr %.sroa.05.09.i.i24, align 4, !tbaa !204
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i23, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !204 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !169
  %i.cb = fcmp olt float %i.bc, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, !llvm.loop !42

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17: ; preds = %.lr.ph.i.i22, %bb.n
  %.sroa.05.0.lcssa.i.i18 = phi ptr [ %.sroa.0.021.i15, %bb.n ], [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.az, ptr %.sroa.05.0.lcssa.i.i18, align 4, !tbaa !204
  %.pre.i19 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26
  %i.cc = phi ptr [ %i.bq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %i.cd = phi i32 [ %i.az, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %.pre.i19, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i15, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %bb.i, !llvm.loop !43

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28: ; preds = %bb.o, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 11 uses
  %.idx47 = shl i64 %3, 3                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us
  %.055.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !258

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.039.054.us, align 4, !tbaa !204
  store i32 %i.j, ptr %.055.us, align 4, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !204
  store i32 %i.l, ptr %i.k, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.055.us, ptr align 4 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.n = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !556

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit
  %.055 = phi ptr [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %.055, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.039.054, %.lr.ph.i ], [ %.sroa.015.1.i, %bb.e ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.011.019.i, align 4, !tbaa !204 ; 2 uses
  %i.v = load i32, ptr %.sroa.015.020.i, align 4, !tbaa !204 ; 2 uses
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !169
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !169
  %i.ac = fcmp olt float %i.y, %i.ab              ; 3 uses
  %.sink.i = select i1 %i.ac, i32 %i.u, i32 %i.v
  %.sroa.011.1.idx.i = select i1 %i.ac, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ac, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.021.i, align 4, !tbaa !204
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 4 uses
  %i.ae = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.af = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !557

.critedge.i.loopexit:                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = ptrtoint ptr %.sroa.015.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !258

bb.f:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.ai, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.critedge.i.loopexit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.h, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !204
  store i32 %i.al, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.an = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.011.1.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 4
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !258

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.ap, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.k, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !204
  store i32 %i.as, ptr %i.am, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 2 uses
  %i.au = sub i64 %i.b, %i.an
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %.not = icmp slt i64 %i.av, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !556

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.av, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 2
  %i.aw = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond18.i15 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !218 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i21
  %.021.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bk, %bb.l ] ; 2 uses
  %.sroa.015.020.i23 = phi ptr [ %.sroa.039.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i29, %bb.l ] ; 2 uses
  %.sroa.011.019.i24 = phi ptr [ %i.aw, %.lr.ph.i21 ], [ %.sroa.011.1.i27, %bb.l ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.011.019.i24, align 4, !tbaa !204 ; 2 uses
  %i.bc = load i32, ptr %.sroa.015.020.i23, align 4, !tbaa !204 ; 2 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !169
  %i.bj = fcmp olt float %i.bf, %i.bi             ; 3 uses
  %.sink.i25 = select i1 %i.bj, i32 %i.bb, i32 %i.bc
  %.sroa.011.1.idx.i26 = select i1 %i.bj, i64 4, i64 0
  %.sroa.011.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24, i64 %.sroa.011.1.idx.i26 ; 3 uses
  %.sroa.015.1.idx.i28 = select i1 %i.bj, i64 0, i64 4
  %.sroa.015.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23, i64 %.sroa.015.1.idx.i28 ; 3 uses
  store i32 %.sink.i25, ptr %.021.i22, align 4, !tbaa !204
  %i.bk = getelementptr inbounds nuw i8, ptr %.021.i22, i64 4 ; 2 uses
  %i.bl = icmp ne ptr %.sroa.015.1.i29, %i.aw
  %i.bm = icmp ne ptr %.sroa.011.1.i27, %1
  %or.cond.i30 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.i30, label %bb.l, label %.critedge.i16, !llvm.loop !557

.critedge.i16:                                    ; preds = %bb.l, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.011.1.i27, %bb.l ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i29, %bb.l ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bk, %bb.l ] ; 3 uses
  %i.bn = ptrtoint ptr %i.aw to i64
  %i.bo = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.m, label %bb.n, !prof !258

bb.m:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.n:                                             ; preds = %.critedge.i16
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !204
  store i32 %i.bs, ptr %.0.lcssa.i19, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.o, %bb.n, %bb.m
  %i.bt = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bp ; 2 uses
  %i.bu = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.bv = sub i64 %i.b, %i.bu                     ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !258

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %.sroa.011.0.lcssa.i17, i64 %i.bv, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.r, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %.sroa.011.0.lcssa.i17, align 4, !tbaa !204
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 3                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.g = icmp sgt i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  %i.i = icmp sgt i64 %.idx, 4
  %i.j = icmp eq i64 %.idx, 4
  br label %._crit_edge.i.us
end_hunk_1
begin_hunk_2_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_:bb.a
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.us, !llvm.loop !635

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit
  %i.i = phi i64 [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.027.031 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.027.031, i64 %.idx ; 4 uses
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 4
  %.pre23.i = load i32, ptr %.sroa.027.031, align 4, !tbaa !204
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.k = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.027.031, %.lr.ph.i ], [ %.sroa.0.021.i, %bb.h ] ; 4 uses
  %i.l = load i32, ptr %.sroa.0.021.i, align 4, !tbaa !204 ; 4 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %3, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !191 ; 3 uses
  %i.p = sext i32 %i.k to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !191
  %i.s = fcmp ogt double %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %.sroa.0.021.i to i64
  %i.u = sub i64 %i.t, %i.i                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.e, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.y = sub nsw i64 0, %i.v
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.z, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.027.031, i64 %i.u, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.u, 4
  br i1 %i.aa, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.k, ptr %i.ab, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  store i32 %i.l, ptr %.sroa.027.031, align 4, !tbaa !204
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %.pn20.i, align 4, !tbaa !204 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !191
  %i.ag = fcmp ogt double %i.o, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ah = phi i32 [ %i.ai, %.lr.ph.i.i ], [ %i.ac, %bb.g ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i32 %i.ah, ptr %.sroa.05.09.i.i, align 4, !tbaa !204
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !204 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !191
  %i.am = fcmp ogt double %i.o, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i, !llvm.loop !48

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.l, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !204
  %.pre.i = load i32, ptr %.sroa.027.031, align 4, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.an = phi i32 [ %i.l, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit, label %bb.b, !llvm.loop !49

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit: ; preds = %bb.h
  %i.ao = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ap = sub i64 %i.a, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not = icmp slt i64 %i.aq, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !635

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.us, %bb.a
  %.sroa.027.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.us ], [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit.loopexit ]
  %i.ar = icmp eq ptr %.sroa.027.0.lcssa, %1
  br i1 %i.ar, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit26, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.027.0.lcssa, i64 4 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit26, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %.pre23.i13 = load i32, ptr %.sroa.027.0.lcssa, align 4, !tbaa !204
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i12
  %i.as = phi i32 [ %.pre23.i13, %.lr.ph.i12 ], [ %i.bv, %bb.o ] ; 2 uses
  %.sroa.0.021.i14 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i19, %bb.o ] ; 6 uses
  %.pn20.i15 = phi ptr [ %.sroa.027.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i14, %bb.o ] ; 4 uses
  %i.at = load i32, ptr %.sroa.0.021.i14, align 4, !tbaa !204 ; 4 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !191 ; 3 uses
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !191
  %i.ba = fcmp ogt double %i.aw, %i.az
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = ptrtoint ptr %.sroa.0.021.i14 to i64
  %i.bc = sub i64 %i.bb, %.lcssa                  ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.k, label %bb.l, !prof !258

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 8
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bh, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.027.0.lcssa, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp eq i64 %i.bc, 4
  br i1 %i.bi, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 4
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.at, ptr %.sroa.027.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %.pn20.i15, align 4, !tbaa !204 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !191
  %i.bo = fcmp ogt double %i.aw, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i16

.lr.ph.i.i21:                                     ; preds = %bb.n, %.lr.ph.i.i21
  %i.bp = phi i32 [ %i.bq, %.lr.ph.i.i21 ], [ %i.bk, %bb.n ]
  %.sroa.0.010.i.i22 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i21 ], [ %.pn20.i15, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i23 = phi ptr [ %.sroa.0.010.i.i22, %.lr.ph.i.i21 ], [ %.sroa.0.021.i14, %bb.n ]
  store i32 %i.bp, ptr %.sroa.05.09.i.i23, align 4, !tbaa !204
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i22, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %.sroa.0.0.i.i24, align 4, !tbaa !204 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %3, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !191
  %i.bu = fcmp ogt double %i.aw, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i16, !llvm.loop !48

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i21, %bb.n
  %.sroa.05.0.lcssa.i.i17 = phi ptr [ %.sroa.0.021.i14, %bb.n ], [ %.sroa.0.010.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.at, ptr %.sroa.05.0.lcssa.i.i17, align 4, !tbaa !204
  %.pre.i18 = load i32, ptr %.sroa.027.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25
  %i.bv = phi i32 [ %i.at, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ], [ %.pre.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_T0_.exit.i16 ]
  %.sroa.0.0.i19 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.sroa.0.0.i19, %1
  br i1 %.not.i20, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit26, label %bb.i, !llvm.loop !49

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_.exit26: ; preds = %bb.o, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 11 uses
  %.idx47 = shl i64 %3, 3                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 4
  %i.g = icmp eq i64 %.idx, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us
  %.055.us = phi ptr [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !258

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.sroa.039.054.us, align 4, !tbaa !204
  store i32 %i.i, ptr %.055.us, align 4, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  %i.k = load i32, ptr %i.h, align 4, !tbaa !204
  store i32 %i.k, ptr %i.j, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.055.us, ptr align 4 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.m = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.p, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !636

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit
  %.055 = phi ptr [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.021.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.055, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.015.1.i, %.lr.ph.i ], [ %.sroa.039.054, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %.sroa.011.1.i, %.lr.ph.i ], [ %i.q, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = load i32, ptr %.sroa.011.019.i, align 4, !tbaa !204 ; 2 uses
  %i.t = load i32, ptr %.sroa.015.020.i, align 4, !tbaa !204 ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %4, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !191
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !191
  %i.aa = fcmp ogt double %i.w, %i.z              ; 3 uses
  %.sink.i = select i1 %i.aa, i32 %i.s, i32 %i.t
  %.sroa.011.1.idx.i = select i1 %i.aa, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.aa, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.021.i, align 4, !tbaa !204
  %i.ab = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 4 uses
  %i.ac = icmp ne ptr %.sroa.015.1.i, %i.q
  %i.ad = icmp ne ptr %.sroa.011.1.i, %i.r
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !637

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.ae = ptrtoint ptr %i.q to i64
  %i.af = ptrtoint ptr %.sroa.015.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 4
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !258

bb.e:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.ag, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %.critedge.i.loopexit
  %i.ai = icmp eq i64 %i.ag, 4
  br i1 %i.ai, label %bb.g, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !204
  store i32 %i.aj, ptr %i.ab, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 %i.ag ; 3 uses
  %i.al = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.am = ptrtoint ptr %.sroa.011.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !258

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.an, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !204
  store i32 %i.aq, ptr %i.ak, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.an ; 2 uses
  %i.as = sub i64 %i.b, %i.al
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %.not = icmp slt i64 %i.at, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !636

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 2
  %i.au = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.av = icmp ne i64 %.sroa.speculated, 0
  %i.aw = icmp ne ptr %i.au, %1
  %or.cond18.i15 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge, %.lr.ph.i21
  %.021.i22 = phi ptr [ %i.bg, %.lr.ph.i21 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.015.020.i23 = phi ptr [ %.sroa.015.1.i29, %.lr.ph.i21 ], [ %.sroa.039.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.011.019.i24 = phi ptr [ %.sroa.011.1.i27, %.lr.ph.i21 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.011.019.i24, align 4, !tbaa !204 ; 2 uses
  %i.ay = load i32, ptr %.sroa.015.020.i23, align 4, !tbaa !204 ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %4, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !191
  %i.bc = sext i32 %i.ay to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !191
  %i.bf = fcmp ogt double %i.bb, %i.be            ; 3 uses
  %.sink.i25 = select i1 %i.bf, i32 %i.ax, i32 %i.ay
  %.sroa.011.1.idx.i26 = select i1 %i.bf, i64 4, i64 0
  %.sroa.011.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24, i64 %.sroa.011.1.idx.i26 ; 3 uses
  %.sroa.015.1.idx.i28 = select i1 %i.bf, i64 0, i64 4
  %.sroa.015.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23, i64 %.sroa.015.1.idx.i28 ; 3 uses
  store i32 %.sink.i25, ptr %.021.i22, align 4, !tbaa !204
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i22, i64 4 ; 2 uses
  %i.bh = icmp ne ptr %.sroa.015.1.i29, %i.au
  %i.bi = icmp ne ptr %.sroa.011.1.i27, %1
  %or.cond.i30 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i30, label %.lr.ph.i21, label %.critedge.i16, !llvm.loop !637

.critedge.i16:                                    ; preds = %.lr.ph.i21, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.011.1.i27, %.lr.ph.i21 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i29, %.lr.ph.i21 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bg, %.lr.ph.i21 ] ; 3 uses
  %i.bj = ptrtoint ptr %i.au to i64
  %i.bk = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 4
  br i1 %i.bm, label %bb.k, label %bb.l, !prof !258

bb.k:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bl, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.l:                                             ; preds = %.critedge.i16
  %i.bn = icmp eq i64 %i.bl, 4
  br i1 %i.bn, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !204
  store i32 %i.bo, ptr %.0.lcssa.i19, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.m, %bb.l, %bb.k
  %i.bp = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bl ; 2 uses
  %i.bq = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.br = sub i64 %i.b, %i.bq                     ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 4
  br i1 %i.bs, label %bb.n, label %bb.o, !prof !258

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bp, ptr align 4 %.sroa.011.0.lcssa.i17, i64 %i.br, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit31

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  %i.bt = icmp eq i64 %i.br, 4
  br i1 %i.bt, label %bb.p, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit31

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %.sroa.011.0.lcssa.i17, align 4, !tbaa !204
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit31: ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 3                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 4
  %i.i = icmp eq i64 %.idx, 4
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us
  %.sroa.021.051.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.050.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.050.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.b, !prof !258

end_hunk_2
begin_hunk_3_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_:bb.a

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre25.i43 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %.pre25.i41, %bb.h ] ; 3 uses
  %i.l = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.aq, %bb.h ] ; 7 uses
  %i.m = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.029.033, %.lr.ph.i ], [ %.sroa.0.021.i, %bb.h ] ; 4 uses
  %i.n = load i32, ptr %.sroa.0.021.i, align 4, !tbaa !204 ; 4 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !169 ; 3 uses
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !169
  %i.u = fcmp olt float %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %.sroa.0.021.i to i64
  %i.w = sub i64 %i.v, %i.j                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.aa = sub nsw i64 0, %i.x
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ab, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.033, i64 %i.w, i1 false)
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !218 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %i.w, 4
  br i1 %i.ac, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.m, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pre25.i42 = phi ptr [ %.pre24.i, %bb.d ], [ %.pre25.i43, %bb.e ], [ %.pre25.i43, %bb.f ]
  %i.ae = phi ptr [ %.pre24.i, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  store i32 %i.n, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.pn20.i, align 4, !tbaa !204 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !169
  %i.aj = fcmp olt float %i.q, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.af, %bb.g ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i32 %i.ak, ptr %.sroa.05.09.i.i, align 4, !tbaa !204
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !204 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !169
  %i.ap = fcmp olt float %i.q, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, !llvm.loop !72

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.n, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !204
  %.pre.i = load i32, ptr %.sroa.029.033, align 4, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.pre25.i41 = phi ptr [ %.pre25.i42, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre25.i43, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ae, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.l, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %i.ar = phi i32 [ %i.n, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, label %bb.b, !llvm.loop !73

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit: ; preds = %bb.h
  %i.as = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.at = sub i64 %i.a, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not = icmp slt i64 %i.au, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !837

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us, %bb.a
  %.sroa.029.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.us ], [ %i.as, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit.loopexit ]
  %i.av = icmp eq ptr %.sroa.029.0.lcssa, %1
  br i1 %i.av, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 4 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre23.i13 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  %.pre25.i14 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i12
  %i.ax = phi ptr [ %.pre25.i14, %.lr.ph.i12 ], [ %i.cc, %bb.o ] ; 7 uses
  %i.ay = phi i32 [ %.pre23.i13, %.lr.ph.i12 ], [ %i.cd, %bb.o ] ; 2 uses
  %.sroa.0.021.i15 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i20, %bb.o ] ; 6 uses
  %.pn20.i16 = phi ptr [ %.sroa.029.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i15, %bb.o ] ; 4 uses
  %i.az = load i32, ptr %.sroa.0.021.i15, align 4, !tbaa !204 ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169 ; 3 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = fcmp olt float %i.bc, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = ptrtoint ptr %.sroa.0.021.i15 to i64
  %i.bi = sub i64 %i.bh, %.lcssa                  ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !258

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 8
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bn, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.029.0.lcssa, i64 %i.bi, i1 false)
  %.pre24.i27 = load ptr, ptr %i.aw, align 8, !tbaa !218
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp eq i64 %i.bi, 4
  br i1 %i.bo, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn20.i16, i64 4
  store i32 %i.ay, ptr %i.bp, align 4, !tbaa !204
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26: ; preds = %bb.m, %bb.l, %bb.k
  %i.bq = phi ptr [ %.pre24.i27, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  store i32 %i.az, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.br = load i32, ptr %.pn20.i16, align 4, !tbaa !204 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !169
  %i.bv = fcmp olt float %i.bc, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17

.lr.ph.i.i22:                                     ; preds = %bb.n, %.lr.ph.i.i22
  %i.bw = phi i32 [ %i.bx, %.lr.ph.i.i22 ], [ %i.br, %bb.n ]
  %.sroa.0.010.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn20.i16, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i24 = phi ptr [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.021.i15, %bb.n ]
  store i32 %i.bw, ptr %.sroa.05.09.i.i24, align 4, !tbaa !204
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i23, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !204 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !169
  %i.cb = fcmp olt float %i.bc, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, !llvm.loop !72

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17: ; preds = %.lr.ph.i.i22, %bb.n
  %.sroa.05.0.lcssa.i.i18 = phi ptr [ %.sroa.0.021.i15, %bb.n ], [ %.sroa.0.010.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.az, ptr %.sroa.05.0.lcssa.i.i18, align 4, !tbaa !204
  %.pre.i19 = load i32, ptr %.sroa.029.0.lcssa, align 4, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26
  %i.cc = phi ptr [ %i.bq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %i.cd = phi i32 [ %i.az, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i26 ], [ %.pre.i19, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_T0_.exit.i17 ]
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i15, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28, label %bb.i, !llvm.loop !73

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_.exit28: ; preds = %bb.o, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 11 uses
  %.idx47 = shl i64 %3, 3                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us
  %.055.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !258

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.039.054.us, align 4, !tbaa !204
  store i32 %i.j, ptr %.055.us, align 4, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !204
  store i32 %i.l, ptr %i.k, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.055.us, ptr align 4 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.n = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !838

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit
  %.055 = phi ptr [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %.055, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.039.054, %.lr.ph.i ], [ %.sroa.015.1.i, %bb.e ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.011.019.i, align 4, !tbaa !204 ; 2 uses
  %i.v = load i32, ptr %.sroa.015.020.i, align 4, !tbaa !204 ; 2 uses
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !169
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !169
  %i.ac = fcmp olt float %i.y, %i.ab              ; 3 uses
  %.sink.i = select i1 %i.ac, i32 %i.u, i32 %i.v
  %.sroa.011.1.idx.i = select i1 %i.ac, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ac, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.021.i, align 4, !tbaa !204
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 4 uses
  %i.ae = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.af = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !839

.critedge.i.loopexit:                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = ptrtoint ptr %.sroa.015.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !258

bb.f:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.ai, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.critedge.i.loopexit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.h, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !204
  store i32 %i.al, ptr %i.ad, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.an = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.011.1.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 4
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !258

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.ap, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.k, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !204
  store i32 %i.as, ptr %i.am, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 2 uses
  %i.au = sub i64 %i.b, %i.an
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %.not = icmp slt i64 %i.av, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !838

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit.us ], [ %i.av, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 2
  %i.aw = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond18.i15 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !218 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i21
  %.021.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bk, %bb.l ] ; 2 uses
  %.sroa.015.020.i23 = phi ptr [ %.sroa.039.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i29, %bb.l ] ; 2 uses
  %.sroa.011.019.i24 = phi ptr [ %i.aw, %.lr.ph.i21 ], [ %.sroa.011.1.i27, %bb.l ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.011.019.i24, align 4, !tbaa !204 ; 2 uses
  %i.bc = load i32, ptr %.sroa.015.020.i23, align 4, !tbaa !204 ; 2 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !169
  %i.bj = fcmp olt float %i.bf, %i.bi             ; 3 uses
  %.sink.i25 = select i1 %i.bj, i32 %i.bb, i32 %i.bc
  %.sroa.011.1.idx.i26 = select i1 %i.bj, i64 4, i64 0
  %.sroa.011.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24, i64 %.sroa.011.1.idx.i26 ; 3 uses
  %.sroa.015.1.idx.i28 = select i1 %i.bj, i64 0, i64 4
  %.sroa.015.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23, i64 %.sroa.015.1.idx.i28 ; 3 uses
  store i32 %.sink.i25, ptr %.021.i22, align 4, !tbaa !204
  %i.bk = getelementptr inbounds nuw i8, ptr %.021.i22, i64 4 ; 2 uses
  %i.bl = icmp ne ptr %.sroa.015.1.i29, %i.aw
  %i.bm = icmp ne ptr %.sroa.011.1.i27, %1
  %or.cond.i30 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.i30, label %bb.l, label %.critedge.i16, !llvm.loop !839

.critedge.i16:                                    ; preds = %bb.l, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.011.1.i27, %bb.l ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i29, %bb.l ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bk, %bb.l ] ; 3 uses
  %i.bn = ptrtoint ptr %i.aw to i64
  %i.bo = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.m, label %bb.n, !prof !258

bb.m:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.n:                                             ; preds = %.critedge.i16
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !204
  store i32 %i.bs, ptr %.0.lcssa.i19, align 4, !tbaa !204
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.o, %bb.n, %bb.m
  %i.bt = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bp ; 2 uses
  %i.bu = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.bv = sub i64 %i.b, %i.bu                     ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !258

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %.sroa.011.0.lcssa.i17, i64 %i.bv, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.r, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %.sroa.011.0.lcssa.i17, align 4, !tbaa !204
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !204
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEET0_T_SE_SE_SE_SD_T1_.exit31: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 3                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.g = icmp sgt i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  %i.i = icmp sgt i64 %.idx, 4
  %i.j = icmp eq i64 %.idx, 4
  br label %._crit_edge.i.us
end_hunk_3
