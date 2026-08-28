Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/data?download=true
inline.NumInlined: 10971
inline.NumDeleted: 3124
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 149
begin_hunk_0_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEEvT_SG_SG_T0_SH_T1_":bb.a
  %.sroa.03.07.i = phi ptr [ %.tr8291, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.03.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.y = lshr i64 %.08.i, 1                       ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.07.i, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !96
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.ac)
  %i.ae = fcmp olt float %i.ad, %i.x              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = xor i64 %i.y, -1
  %i.ah = add nsw i64 %.08.i, %i.ag
  %.sroa.03.1.i = select i1 %i.ae, ptr %i.af, ptr %.sroa.03.07.i ; 3 uses
  %.1.i = select i1 %i.ae, i64 %i.ah, i64 %i.y    ; 2 uses
  %i.ai = icmp sgt i64 %.1.i, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !1136

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.03.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr8291, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aj = sub i64 %.pre-phi, %i.p
  %i.ak = ashr exact i64 %i.aj, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit57: ; preds = %bb.e
  %i.al = sdiv i64 %.tr8594, 2                    ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.tr8291, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %.tr90 to i64              ; 3 uses
  %i.ao = sub i64 %i.p, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.val53 = load i64, ptr %i.am, align 8
  %.val.val.i60 = load ptr, ptr %5, align 8, !tbaa !285 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i60, i64 %.val53
  %i.as = load float, ptr %i.ar, align 4, !tbaa !96
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59
  %.08.i62 = phi i64 [ %i.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %.sroa.03.07.i63 = phi ptr [ %.tr90, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.sroa.03.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %i.au = lshr i64 %.08.i62, 1                    ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.07.i63, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !98
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i60, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !96
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp olt float %i.at, %i.az             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = xor i64 %i.au, -1
  %i.bd = add nsw i64 %.08.i62, %i.bc
  %.sroa.03.1.i66 = select i1 %i.ba, ptr %.sroa.03.07.i63, ptr %i.bb ; 3 uses
  %.1.i67 = select i1 %i.ba, i64 %i.au, i64 %i.bd ; 2 uses
  %i.be = icmp sgt i64 %.1.i67, 0
  br i1 %i.be, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !1137

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61
  %.pre97 = ptrtoint ptr %.sroa.03.1.i66 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.pre-phi98 = phi i64 [ %.pre97, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %.sroa.03.0.lcssa.i58 = phi ptr [ %.sroa.03.1.i66, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr90, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %i.bf = sub i64 %.pre-phi98, %i.an
  %i.bg = ashr exact i64 %i.bf, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit"
  %.sroa.070.0 = phi ptr [ %i.r, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %.sroa.03.0.lcssa.i58, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.03.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.am, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.049 = phi i64 [ %i.ak, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.al, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.q, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.bg, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %i.bh = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8291, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEEvT_SG_SG_T0_SH_T1_"(ptr %.tr90, ptr %.sroa.070.0, ptr %i.bh, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.bi = sub nsw i64 %.tr8493, %.0               ; 2 uses
  %i.bj = sub nsw i64 %.tr8594, %.049             ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  %i.bl = icmp eq i64 %i.bj, 0
  %or.cond = or i1 %i.bk, %i.bl
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check165, label %.lr.ph.i.preheader181, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader181, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec167, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 3                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !98, !alias.scope !1138, !noalias !1141
  %wide.load173 = load <2 x i64>, ptr %i.x, align 8, !tbaa !98, !alias.scope !1138, !noalias !1141
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !98, !alias.scope !1141
  %wide.load175 = load <2 x i64>, ptr %i.y, align 8, !tbaa !98, !alias.scope !1141
  store <2 x i64> %wide.load174, ptr %next.gep171, align 8, !tbaa !98, !alias.scope !1138, !noalias !1141
  store <2 x i64> %wide.load175, ptr %i.x, align 8, !tbaa !98, !alias.scope !1138, !noalias !1141
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !tbaa !98, !alias.scope !1141
  store <2 x i64> %wide.load173, ptr %i.y, align 8, !tbaa !98, !alias.scope !1141
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !1143

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n178, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block177
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block177 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block177 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !98
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !98
  store i64 %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !98
  store i64 %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !1144

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
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.042.0, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !98
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph100.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !98, !alias.scope !1145, !noalias !1148
  %wide.load130 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !98, !alias.scope !1145, !noalias !1148
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !98, !alias.scope !1148
  %wide.load132 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !98, !alias.scope !1148
  store <2 x i64> %wide.load131, ptr %next.gep129, align 8, !tbaa !98, !alias.scope !1145, !noalias !1148
  store <2 x i64> %wide.load132, ptr %i.aw, align 8, !tbaa !98, !alias.scope !1145, !noalias !1148
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !98, !alias.scope !1148
  store <2 x i64> %wide.load130, ptr %i.ax, align 8, !tbaa !98, !alias.scope !1148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1150

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
  %i.ba = load i64, ptr %.sroa.042.196.prol, align 8, !tbaa !98
  %i.bb = load i64, ptr %.sroa.039.097.prol, align 8, !tbaa !98
  store i64 %i.bb, ptr %.sroa.042.196.prol, align 8, !tbaa !98
  store i64 %i.ba, ptr %.sroa.039.097.prol, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.097.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !1151

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
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.039.097 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.097.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.042.196 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.196.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i64, ptr %.sroa.042.196, align 8, !tbaa !98
  %i.bk = load i64, ptr %.sroa.039.097, align 8, !tbaa !98
  store i64 %i.bk, ptr %.sroa.042.196, align 8, !tbaa !98
  store i64 %i.bj, ptr %.sroa.039.097, align 8, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !98
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !98
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !98
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !98
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !98
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !98
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !98
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !98
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !98
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !98
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 32
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1152

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !98
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !137

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %.sroa.042.0, align 8, !tbaa !98
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !98
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.ce, ptr %.sroa.042.0, align 8, !tbaa !98
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp ult i64 %.085, 6
  br i1 %min.iters.check141, label %.lr.ph.preheader183, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 3
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader183, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec143, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -8                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !98, !alias.scope !1153, !noalias !1156
  %wide.load149 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !98, !alias.scope !1153, !noalias !1156
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !98, !alias.scope !1156
  %wide.load151 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !98, !alias.scope !1156
  store <2 x i64> %wide.load150, ptr %i.cv, align 8, !tbaa !98, !alias.scope !1153, !noalias !1156
  store <2 x i64> %wide.load151, ptr %i.cw, align 8, !tbaa !98, !alias.scope !1153, !noalias !1156
  store <2 x i64> %wide.load148, ptr %i.cx, align 8, !tbaa !98, !alias.scope !1156
  store <2 x i64> %wide.load149, ptr %i.cy, align 8, !tbaa !98, !alias.scope !1156
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !1158

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
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -8 ; 4 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !98
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !98
  store i64 %i.dd, ptr %i.da, align 8, !tbaa !98
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !98
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1159

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
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !1160

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !98
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !98
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !98
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !98
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !98
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !98
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !98
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !98
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -24 ; 2 uses
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !98
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !98
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !98
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !98
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -32 ; 3 uses
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !98
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !98
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !98
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !98
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1161

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block177, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block177 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6, i64 %7) unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not100 = icmp sgt i64 %3, %6
  %.not64101 = icmp sgt i64 %4, %6
  %or.cond102 = and i1 %.not100, %.not64101
  br i1 %or.cond102, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.aw, %tailrecurse ]
  %.tr93.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %3, %bb.a ], [ %i.av, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %4, %bb.a ], [ %i.ax, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEEvT_SG_SG_T0_SH_T1_T2_"(ptr %.tr.lcssa, ptr %.tr93.lcssa, ptr %2, i64 noundef %.tr95.lcssa, i64 noundef %.tr96.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr96106 = phi i64 [ %4, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 3 uses
  %.tr95105 = phi i64 [ %3, %.lr.ph ], [ %i.av, %tailrecurse ] ; 3 uses
  %.tr93104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr103 = phi ptr [ %0, %.lr.ph ], [ %i.aw, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr95105, %.tr96106
  %i.d = ptrtoint ptr %.tr93104 to i64            ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit69

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr95105, 2                    ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.tr103, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZNK7xgboost8MetaInfo12LabelAbsSortEPKNS9_7ContextEE3$_0EEET_SG_SG_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val = load i64, ptr %i.f, align 8
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !285 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %.val
  %i.k = load float, ptr %i.j, align 4, !tbaa !96
  %i.l = tail call noundef float @llvm.fabs.f32(float %i.k)
end_hunk_0
begin_hunk_1_@_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_:bb.a
  %i.bzm = zext i8 %i.bzl to i32
  store i32 %i.bzm, ptr %i.bzi, align 4, !tbaa !87
  %i.bzn = add nuw i64 %.060116.i.i.i.i.i439.epil, 1
  %epil.iter1016.next = add i64 %epil.iter1016, 1 ; 2 uses
  %epil.iter1016.cmp.not = icmp eq i64 %epil.iter1016.next, %xtraiter1015
  br i1 %epil.iter1016.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i438.epil, !llvm.loop !1835

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit953.unr-lcssa: ; preds = %.lr.ph125.i.i.i.i.i531
  %lcmp.mod1005.not = icmp eq i64 %xtraiter1003, 0
  br i1 %lcmp.mod1005.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i531.epil.preheader

.lr.ph125.i.i.i.i.i531.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit953.unr-lcssa, %.lr.ph125.i.i.i.i.i531.preheader
  %.0124.i.i.i.i.i532.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i.i.i531.preheader ], [ %i.bfs, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit953.unr-lcssa ]
  %lcmp.mod1006 = icmp ne i64 %xtraiter1003, 0
  tail call void @llvm.assume(i1 %lcmp.mod1006)
  br label %.lr.ph125.i.i.i.i.i531.epil

.lr.ph125.i.i.i.i.i531.epil:                      ; preds = %.lr.ph125.i.i.i.i.i531.epil, %.lr.ph125.i.i.i.i.i531.epil.preheader
  %.0124.i.i.i.i.i532.epil = phi i64 [ %i.bzu, %.lr.ph125.i.i.i.i.i531.epil ], [ %.0124.i.i.i.i.i532.epil.init, %.lr.ph125.i.i.i.i.i531.epil.preheader ] ; 3 uses
  %epil.iter1004 = phi i64 [ %epil.iter1004.next, %.lr.ph125.i.i.i.i.i531.epil ], [ 0, %.lr.ph125.i.i.i.i.i531.epil.preheader ]
  %i.bzo = mul i64 %.0124.i.i.i.i.i532.epil, %.sroa.05.0.copyload.i.i493
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bzo
  %i.bzq = mul i64 %.0124.i.i.i.i.i532.epil, %i.bao
  %i.bzr = getelementptr inbounds nuw [2 x i8], ptr %i.bam, i64 %i.bzq
  %i.bzs = load i16, ptr %i.bzr, align 2, !tbaa !210
  %i.bzt = zext i16 %i.bzs to i32
  store i32 %i.bzt, ptr %i.bzp, align 4, !tbaa !87
  %i.bzu = add nuw i64 %.0124.i.i.i.i.i532.epil, 1
  %epil.iter1004.next = add i64 %epil.iter1004, 1 ; 2 uses
  %epil.iter1004.cmp.not = icmp eq i64 %epil.iter1004.next, %xtraiter1003
  br i1 %epil.iter1004.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i531.epil, !llvm.loop !1836

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit954.unr-lcssa: ; preds = %.lr.ph117.i.i.i.i.i508
  %lcmp.mod999.not = icmp eq i64 %xtraiter997, 0
  br i1 %lcmp.mod999.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i508.epil.preheader

.lr.ph117.i.i.i.i.i508.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit954.unr-lcssa, %.lr.ph117.i.i.i.i.i508.preheader
  %.060116.i.i.i.i.i509.epil.init = phi i64 [ 0, %.lr.ph117.i.i.i.i.i508.preheader ], [ %i.bhm, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit954.unr-lcssa ]
  %lcmp.mod1000 = icmp ne i64 %xtraiter997, 0
  call void @llvm.assume(i1 %lcmp.mod1000)
  br label %.lr.ph117.i.i.i.i.i508.epil

.lr.ph117.i.i.i.i.i508.epil:                      ; preds = %.lr.ph117.i.i.i.i.i508.epil, %.lr.ph117.i.i.i.i.i508.epil.preheader
  %.060116.i.i.i.i.i509.epil = phi i64 [ %i.cab, %.lr.ph117.i.i.i.i.i508.epil ], [ %.060116.i.i.i.i.i509.epil.init, %.lr.ph117.i.i.i.i.i508.epil.preheader ] ; 3 uses
  %epil.iter998 = phi i64 [ %epil.iter998.next, %.lr.ph117.i.i.i.i.i508.epil ], [ 0, %.lr.ph117.i.i.i.i.i508.epil.preheader ]
  %i.bzv = mul i64 %.060116.i.i.i.i.i509.epil, %.sroa.05.0.copyload.i.i493
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bzv
  %i.bzx = mul i64 %.060116.i.i.i.i.i509.epil, %i.bao
  %i.bzy = getelementptr inbounds nuw [2 x i8], ptr %i.bam, i64 %i.bzx
  %i.bzz = load i16, ptr %i.bzy, align 2, !tbaa !210
  %i.caa = zext i16 %i.bzz to i32
  store i32 %i.caa, ptr %i.bzw, align 4, !tbaa !87
  %i.cab = add nuw i64 %.060116.i.i.i.i.i509.epil, 1
  %epil.iter998.next = add i64 %epil.iter998, 1   ; 2 uses
  %epil.iter998.cmp.not = icmp eq i64 %epil.iter998.next, %xtraiter997
  br i1 %epil.iter998.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i508.epil, !llvm.loop !1837

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit959.unr-lcssa: ; preds = %.lr.ph125.i.i.i.i.i601
  %lcmp.mod987.not = icmp eq i64 %xtraiter985, 0
  br i1 %lcmp.mod987.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i601.epil.preheader

.lr.ph125.i.i.i.i.i601.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit959.unr-lcssa, %.lr.ph125.i.i.i.i.i601.preheader
  %.0124.i.i.i.i.i602.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i.i.i601.preheader ], [ %i.bmh, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit959.unr-lcssa ]
  %lcmp.mod988 = icmp ne i64 %xtraiter985, 0
  tail call void @llvm.assume(i1 %lcmp.mod988)
  br label %.lr.ph125.i.i.i.i.i601.epil

.lr.ph125.i.i.i.i.i601.epil:                      ; preds = %.lr.ph125.i.i.i.i.i601.epil, %.lr.ph125.i.i.i.i.i601.epil.preheader
  %.0124.i.i.i.i.i602.epil = phi i64 [ %i.cah, %.lr.ph125.i.i.i.i.i601.epil ], [ %.0124.i.i.i.i.i602.epil.init, %.lr.ph125.i.i.i.i.i601.epil.preheader ] ; 3 uses
  %epil.iter986 = phi i64 [ %epil.iter986.next, %.lr.ph125.i.i.i.i.i601.epil ], [ 0, %.lr.ph125.i.i.i.i.i601.epil.preheader ]
  %i.cac = mul i64 %.0124.i.i.i.i.i602.epil, %.sroa.05.0.copyload.i.i563
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.cac
  %i.cae = mul i64 %.0124.i.i.i.i.i602.epil, %i.bht
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.bhq, i64 %i.cae
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !87
  store i32 %i.cag, ptr %i.cad, align 4, !tbaa !87
  %i.cah = add nuw i64 %.0124.i.i.i.i.i602.epil, 1
  %epil.iter986.next = add i64 %epil.iter986, 1   ; 2 uses
  %epil.iter986.cmp.not = icmp eq i64 %epil.iter986.next, %xtraiter985
  br i1 %epil.iter986.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i601.epil, !llvm.loop !1838

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit960.unr-lcssa: ; preds = %.lr.ph117.i.i.i.i.i578
  %lcmp.mod981.not = icmp eq i64 %xtraiter979, 0
  br i1 %lcmp.mod981.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i578.epil.preheader

.lr.ph117.i.i.i.i.i578.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit960.unr-lcssa, %.lr.ph117.i.i.i.i.i578.preheader
  %.060116.i.i.i.i.i579.epil.init = phi i64 [ 0, %.lr.ph117.i.i.i.i.i578.preheader ], [ %i.bnx, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit960.unr-lcssa ]
  %lcmp.mod982 = icmp ne i64 %xtraiter979, 0
  call void @llvm.assume(i1 %lcmp.mod982)
  br label %.lr.ph117.i.i.i.i.i578.epil

.lr.ph117.i.i.i.i.i578.epil:                      ; preds = %.lr.ph117.i.i.i.i.i578.epil, %.lr.ph117.i.i.i.i.i578.epil.preheader
  %.060116.i.i.i.i.i579.epil = phi i64 [ %i.can, %.lr.ph117.i.i.i.i.i578.epil ], [ %.060116.i.i.i.i.i579.epil.init, %.lr.ph117.i.i.i.i.i578.epil.preheader ] ; 3 uses
  %epil.iter980 = phi i64 [ %epil.iter980.next, %.lr.ph117.i.i.i.i.i578.epil ], [ 0, %.lr.ph117.i.i.i.i.i578.epil.preheader ]
  %i.cai = mul i64 %.060116.i.i.i.i.i579.epil, %.sroa.05.0.copyload.i.i563
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.cai
  %i.cak = mul i64 %.060116.i.i.i.i.i579.epil, %i.bht
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr %i.bhq, i64 %i.cak
  %i.cam = load i32, ptr %i.cal, align 4, !tbaa !87
  store i32 %i.cam, ptr %i.caj, align 4, !tbaa !87
  %i.can = add nuw i64 %.060116.i.i.i.i.i579.epil, 1
  %epil.iter980.next = add i64 %epil.iter980, 1   ; 2 uses
  %epil.iter980.cmp.not = icmp eq i64 %epil.iter980.next, %xtraiter979
  br i1 %epil.iter980.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i578.epil, !llvm.loop !1839

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit965.unr-lcssa: ; preds = %.lr.ph125.i.i.i.i.i671
  %lcmp.mod970.not = icmp eq i64 %xtraiter968, 0
  br i1 %lcmp.mod970.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i671.epil.preheader

.lr.ph125.i.i.i.i.i671.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit965.unr-lcssa, %.lr.ph125.i.i.i.i.i671.preheader
  %.0124.i.i.i.i.i672.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i.i.i671.preheader ], [ %i.bth, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit965.unr-lcssa ]
  %lcmp.mod971 = icmp ne i64 %xtraiter968, 0
  tail call void @llvm.assume(i1 %lcmp.mod971)
  br label %.lr.ph125.i.i.i.i.i671.epil

.lr.ph125.i.i.i.i.i671.epil:                      ; preds = %.lr.ph125.i.i.i.i.i671.epil, %.lr.ph125.i.i.i.i.i671.epil.preheader
  %.0124.i.i.i.i.i672.epil = phi i64 [ %i.cau, %.lr.ph125.i.i.i.i.i671.epil ], [ %.0124.i.i.i.i.i672.epil.init, %.lr.ph125.i.i.i.i.i671.epil.preheader ] ; 3 uses
  %epil.iter969 = phi i64 [ %epil.iter969.next, %.lr.ph125.i.i.i.i.i671.epil ], [ 0, %.lr.ph125.i.i.i.i.i671.epil.preheader ]
  %i.cao = mul i64 %.0124.i.i.i.i.i672.epil, %.sroa.05.0.copyload.i.i633
  %i.cap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i639, i64 %i.cao
  %i.caq = mul i64 %.0124.i.i.i.i.i672.epil, %i.bod
  %i.car = getelementptr inbounds nuw [8 x i8], ptr %i.bob, i64 %i.caq
  %i.cas = load i64, ptr %i.car, align 8, !tbaa !98
  %i.cat = trunc i64 %i.cas to i32
  store i32 %i.cat, ptr %i.cap, align 4, !tbaa !87
  %i.cau = add nuw i64 %.0124.i.i.i.i.i672.epil, 1
  %epil.iter969.next = add i64 %epil.iter969, 1   ; 2 uses
  %epil.iter969.cmp.not = icmp eq i64 %epil.iter969.next, %xtraiter968
  br i1 %epil.iter969.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i671.epil, !llvm.loop !1840

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit966.unr-lcssa: ; preds = %.lr.ph117.i.i.i.i.i648
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i648.epil.preheader

.lr.ph117.i.i.i.i.i648.epil.preheader:            ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit966.unr-lcssa, %.lr.ph117.i.i.i.i.i648.preheader
  %.060116.i.i.i.i.i649.epil.init = phi i64 [ 0, %.lr.ph117.i.i.i.i.i648.preheader ], [ %i.bvb, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit966.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph117.i.i.i.i.i648.epil

.lr.ph117.i.i.i.i.i648.epil:                      ; preds = %.lr.ph117.i.i.i.i.i648.epil, %.lr.ph117.i.i.i.i.i648.epil.preheader
  %.060116.i.i.i.i.i649.epil = phi i64 [ %i.cbb, %.lr.ph117.i.i.i.i.i648.epil ], [ %.060116.i.i.i.i.i649.epil.init, %.lr.ph117.i.i.i.i.i648.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph117.i.i.i.i.i648.epil ], [ 0, %.lr.ph117.i.i.i.i.i648.epil.preheader ]
  %i.cav = mul i64 %.060116.i.i.i.i.i649.epil, %.sroa.05.0.copyload.i.i633
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i639, i64 %i.cav
  %i.cax = mul i64 %.060116.i.i.i.i.i649.epil, %i.bod
  %i.cay = getelementptr inbounds nuw [8 x i8], ptr %i.bob, i64 %i.cax
  %i.caz = load i64, ptr %i.cay, align 8, !tbaa !98
  %i.cba = trunc i64 %i.caz to i32
  store i32 %i.cba, ptr %i.caw, align 4, !tbaa !87
  %i.cbb = add nuw i64 %.060116.i.i.i.i.i649.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i648.epil, !llvm.loop !1841

_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit: ; preds = %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit966.unr-lcssa, %.lr.ph117.i.i.i.i.i648.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit965.unr-lcssa, %.lr.ph125.i.i.i.i.i671.epil, %.lr.ph122.i.i.i.i.i678.prol.loopexit, %.lr.ph122.i.i.i.i.i678, %.lr.ph130.i.i.i.i.i699.prol.loopexit, %.lr.ph130.i.i.i.i.i699, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit960.unr-lcssa, %.lr.ph117.i.i.i.i.i578.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit959.unr-lcssa, %.lr.ph125.i.i.i.i.i601.epil, %.lr.ph122.i.i.i.i.i608.prol.loopexit, %.lr.ph122.i.i.i.i.i608, %.lr.ph130.i.i.i.i.i629.prol.loopexit, %.lr.ph130.i.i.i.i.i629, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit954.unr-lcssa, %.lr.ph117.i.i.i.i.i508.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit953.unr-lcssa, %.lr.ph125.i.i.i.i.i531.epil, %.lr.ph122.i.i.i.i.i538.prol.loopexit, %.lr.ph122.i.i.i.i.i538, %.lr.ph130.i.i.i.i.i559.prol.loopexit, %.lr.ph130.i.i.i.i.i559, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit948.unr-lcssa, %.lr.ph117.i.i.i.i.i438.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit947.unr-lcssa, %.lr.ph125.i.i.i.i.i461.epil, %.lr.ph122.i.i.i.i.i468.prol.loopexit, %.lr.ph122.i.i.i.i.i468, %.lr.ph130.i.i.i.i.i489.prol.loopexit, %.lr.ph130.i.i.i.i.i489, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit942.unr-lcssa, %.lr.ph117.i.i.i.i.i368.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit941.unr-lcssa, %.lr.ph125.i.i.i.i.i391.epil, %.lr.ph122.i.i.i.i.i398.prol.loopexit, %.lr.ph122.i.i.i.i.i398, %.lr.ph130.i.i.i.i.i419.prol.loopexit, %.lr.ph130.i.i.i.i.i419, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit936.unr-lcssa, %.lr.ph117.i.i.i.i.i298.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit935.unr-lcssa, %.lr.ph125.i.i.i.i.i321.epil, %.lr.ph122.i.i.i.i.i328.prol.loopexit, %.lr.ph122.i.i.i.i.i328, %.lr.ph130.i.i.i.i.i349.prol.loopexit, %.lr.ph130.i.i.i.i.i349, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit930.unr-lcssa, %.lr.ph117.i.i.i.i.i228.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit929.unr-lcssa, %.lr.ph125.i.i.i.i.i251.epil, %.lr.ph122.i.i.i.i.i258.prol.loopexit, %.lr.ph122.i.i.i.i.i258, %.lr.ph130.i.i.i.i.i279.prol.loopexit, %.lr.ph130.i.i.i.i.i279, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit924.unr-lcssa, %.lr.ph117.i.i.i.i.i158.epil, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit923.unr-lcssa, %.lr.ph125.i.i.i.i.i181.epil, %.lr.ph122.i.i.i.i.i188.prol.loopexit, %.lr.ph122.i.i.i.i.i188, %.lr.ph130.i.i.i.i.i209.prol.loopexit, %.lr.ph130.i.i.i.i.i209, %.lr.ph117.i.i.i.i.i88.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit918.unr-lcssa, %.lr.ph125.i.i.i.i.i111.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit917.unr-lcssa, %.lr.ph122.i.i.i.i.i118.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit916.unr-lcssa, %.lr.ph130.i.i.i.i.i139.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit915.unr-lcssa, %.lr.ph117.i.i.i.i.i18.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit914.unr-lcssa, %.lr.ph125.i.i.i.i.i41.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit913.unr-lcssa, %.lr.ph122.i.i.i.i.i48.prol.loopexit, %.lr.ph122.i.i.i.i.i48, %.lr.ph130.i.i.i.i.i69.prol.loopexit, %.lr.ph130.i.i.i.i.i69, %.lr.ph117.i.i.i.i.i.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit908.unr-lcssa, %.lr.ph125.i.i.i.i.i.epil.preheader, %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit907.unr-lcssa, %.lr.ph122.i.i.i.i.i.prol.loopexit, %.lr.ph122.i.i.i.i.i, %.lr.ph130.i.i.i.i.i.prol.loopexit, %.lr.ph130.i.i.i.i.i, %middle.block276, %middle.block290, %middle.block340, %middle.block356, %middle.block400, %middle.block414, %middle.block472, %middle.block492, %middle.block536, %middle.block550, %middle.block602, %middle.block618, %middle.block662, %middle.block676, %middle.block738, %middle.block758, %middle.block802, %middle.block816, %middle.block860, %middle.block874, %.preheader107.i.i.i.i.i646, %.preheader.i.i23.i.i.i669, %.preheader112.i.i.i.i.i676, %.preheader.i.i.i.i.i697, %.preheader107.i.i.i.i.i576, %.preheader.i.i23.i.i.i599, %.preheader112.i.i.i.i.i606, %.preheader.i.i.i.i.i627, %.preheader107.i.i.i.i.i506, %.preheader.i.i23.i.i.i529, %.preheader112.i.i.i.i.i536, %.preheader.i.i.i.i.i557, %.preheader107.i.i.i.i.i436, %.preheader.i.i23.i.i.i459, %.preheader112.i.i.i.i.i466, %.preheader.i.i.i.i.i487, %.preheader107.i.i.i.i.i366, %.preheader.i.i23.i.i.i389, %.preheader112.i.i.i.i.i396, %.preheader.i.i.i.i.i417, %.preheader107.i.i.i.i.i296, %.preheader.i.i23.i.i.i319, %.preheader112.i.i.i.i.i326, %.preheader.i.i.i.i.i347, %.preheader107.i.i.i.i.i226, %.preheader.i.i23.i.i.i249, %.preheader112.i.i.i.i.i256, %.preheader.i.i.i.i.i277, %.preheader107.i.i.i.i.i156, %.preheader.i.i23.i.i.i179, %.preheader112.i.i.i.i.i186, %.preheader.i.i.i.i.i207, %.preheader107.i.i.i.i.i86, %.preheader.i.i23.i.i.i109, %.preheader112.i.i.i.i.i116, %.preheader.i.i.i.i.i137, %.preheader107.i.i.i.i.i16, %.preheader.i.i23.i.i.i39, %.preheader112.i.i.i.i.i46, %.preheader.i.i.i.i.i67, %.preheader107.i.i.i.i.i, %.preheader.i.i23.i.i.i, %.preheader112.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  ret void

bb.hq:                                            ; preds = %bb.c
  %i.cbc = landingpad { ptr, i32 }
          catch ptr null
  %i.cbd = extractvalue { ptr, i32 } %i.cbc, 0
  call void @__clang_call_terminate(ptr %i.cbd) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !87     ; 6 uses
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
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !284
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !87
  store i32 %i.s, ptr %i.d, align 4, !tbaa !87
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !284
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !87
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !87
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
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !87
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !87
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1842

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1843

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

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
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !87
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1844

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1845

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !284
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !137

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !284
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !87
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !87
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !284
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
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
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !87
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !87
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1846

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1847

end_hunk_1
begin_hunk_2_@"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN7xgboost7DMatrix4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSF_ENUlvE_8__invokeEv":bb.a
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN7xgboost7DMatrix4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSF_ENKUlvE_clEv.exit"

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %0) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.c, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %.pn.i.i.i.i.i

"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN7xgboost7DMatrix4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSF_ENKUlvE_clEv.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorImSaImEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #39
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorImSaImEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !144

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorImSaImEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !118
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #41
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !120, !alias.scope !1918, !noalias !1915
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !120, !alias.scope !1915, !noalias !1918
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115, !alias.scope !1918, !noalias !1915
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !115, !alias.scope !1915, !noalias !1918
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1918, !noalias !1915
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1920

_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #39
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !117
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !98     ; 6 uses
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
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !116
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !98
  store i64 %i.s, ptr %i.d, align 8, !tbaa !98
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !116
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !98
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !98
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
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !98
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !98
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1921

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1922

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

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
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !98
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !98
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1924

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !116
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !137

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !116
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !98
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !98
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !116
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
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
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !98
  store <2 x i64> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !98
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1925

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1926

end_hunk_2
