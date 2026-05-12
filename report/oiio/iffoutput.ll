inline.NumInlined: 3235
inline.NumDeleted: 854
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.af, 4611686018427387900   ; 3 uses
  %3 = load i64, ptr %2, align 4, !alias.scope !859
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = shl i64 %n.vec49, 3
  %5 = getelementptr i8, ptr %i.c, i64 %4
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a
  br i1 %cmp.n57, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader98

.lr.ph.i.i.i.i.preheader98:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i.i.preheader, %middle.block56
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck39 ], [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %5, %middle.block56 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader98, %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a

vector.ph67:                                      ; preds = %vector.memcheck59
  %n.vec69 = and i64 %i.aq, -4                    ; 3 uses
  %6 = load i64, ptr %2, align 4, !alias.scope !866
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %6, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %7 = shl i64 %n.vec69, 3
  %8 = getelementptr i8, ptr %i.ap, i64 %7        ; 2 uses
  %9 = and i64 %i.aq, 3
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a
  br i1 %cmp.n77, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader96

.lr.ph.i.i.i.i12.preheader96:                     ; preds = %vector.memcheck59, %.lr.ph.i.i.i.i12.preheader, %middle.block76
  %.09.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck59 ], [ %i.ap, %.lr.ph.i.i.i.i12.preheader ], [ %8, %middle.block76 ] ; 2 uses
  %.068.i.i.i.i.ph = phi i64 [ %i.aq, %vector.memcheck59 ], [ %i.aq, %.lr.ph.i.i.i.i12.preheader ], [ %9, %middle.block76 ] ; 4 uses
  %i.aw = add i64 %.068.i.i.i.i.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a
  br i1 %.not.i.i.i.i13.7, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !873

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %middle.block76, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit ], [ %8, %middle.block76 ], [ %.lcssa97.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !858
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, 4611686018427387900     ; 3 uses
  %10 = load i64, ptr %2, align 4, !alias.scope !874
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %10, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = shl i64 %n.vec, 3
  %12 = getelementptr i8, ptr %i.c, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_:bb.a
  br i1 %cmp.n, label %_ZSt6fill_nIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %vector.memcheck, %bb.h, %middle.block
  %.06.i.i.i.i15.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %bb.h ], [ %12, %middle.block ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
end_hunk_6
