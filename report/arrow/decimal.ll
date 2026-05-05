inline.NumInlined: 1554
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.011.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %.011.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54
  %i.e = add i8 %i.d, -48
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader, %bb.d
  %.011.i51 = phi i64 [ %i.m, %bb.d ], [ 1, %.lr.ph.i50.preheader ] ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 %.011.i51
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  %i.k = add i8 %i.j, -48
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br i1 %exitcond.not.i52, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexitsplit, label %.lr.ph.i50, !llvm.loop !398

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexitsplit: ; preds = %bb.d
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit

.lr.ph.i50._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit_crit_edge: ; preds = %.lr.ph.i50
  %.011.i51.lcssa.a = phi i64 [ %.011.i51, %.lr.ph.i50 ]
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexitsplit, %.lr.ph.i50._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit_crit_edge
  %.0.lcssa.i48.ph = phi i64 [ %.011.i51.lcssa.a, %.lr.ph.i50._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit_crit_edge ], [ %1, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexitsplit ]
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53.loopexit, %.split
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexitsplit: ; preds = %bb.c
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit

.lr.ph.i._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  %.011.i.lcssa.a = phi i64 [ %.011.i, %.lr.ph.i ] ; 2 uses
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexitsplit, %.lr.ph.i._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit_crit_edge
  %.0.lcssa.i.sink.ph = phi i64 [ %.011.i.lcssa.a, %.lr.ph.i._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit_crit_edge ], [ %1, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexitsplit ]
  %phi.call.ph = phi i64 [ %.011.i.lcssa.a, %.lr.ph.i._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit_crit_edge ], [ %1, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexitsplit ]
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53
end_hunk_3
begin_hunk_4_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.preheader, %bb.h
  %.011.i57 = phi i64 [ %i.ab, %bb.h ], [ %i.u, %.lr.ph.i56.preheader ] ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 %.011.i57
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  %i.z = add i8 %i.y, -48
end_hunk_4
begin_hunk_5_@_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE:bb.a
  br i1 %exitcond.not.i58, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexitsplit, label %.lr.ph.i56, !llvm.loop !398

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexitsplit: ; preds = %bb.h
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit

.lr.ph.i56._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit_crit_edge: ; preds = %.lr.ph.i56
  %.011.i57.lcssa.a = phi i64 [ %.011.i57, %.lr.ph.i56 ]
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexitsplit, %.lr.ph.i56._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit_crit_edge
  %.0.lcssa.i54.ph = phi i64 [ %.011.i57.lcssa.a, %.lr.ph.i56._ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit_crit_edge ], [ %1, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexitsplit ]
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59: ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59.loopexit, %bb.g
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !54
  %i.cy = icmp eq i8 %i.cx, 48
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.bb, !llvm.loop !418

.critedgesplit:                                   ; preds = %bb.bc
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.bb
  %.133.lcssa = phi i64 [ %.133, %bb.bb ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.bb ]
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %scevgep, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ 0, %.critedgesplit ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !28

end_hunk_7
begin_hunk_8_@_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.01722.i = phi i64 [ %1, %bb.n ], [ %i.v, %bb.p ] ; 2 uses
  %.01821.i = phi ptr [ %0, %bb.n ], [ %i.w, %bb.p ] ; 3 uses
  %i.t = load i8, ptr %.01821.i, align 1, !tbaa !54
  %i.u = icmp eq i8 %i.t, 48
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE:bb.a
  br i1 %.not.i, label %.critedge.isplit, label %bb.o, !llvm.loop !421

.critedge.isplit:                                 ; preds = %bb.p
  br label %.critedge.i

..critedge.i_crit_edge:                           ; preds = %bb.o
  %.01722.i.lcssa = phi i64 [ %.01722.i, %bb.o ]
  %.01821.i.lcssa = phi ptr [ %.01821.i, %bb.o ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.isplit, %..critedge.i_crit_edge
  %.018.lcssa.i = phi ptr [ %.01821.i.lcssa, %..critedge.i_crit_edge ], [ %scevgep.i, %.critedge.isplit ]
  %.017.lcssa.i = phi i64 [ %.01722.i.lcssa, %..critedge.i_crit_edge ], [ 0, %.critedge.isplit ]
  %i.x = tail call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i, i64 noundef %.017.lcssa.i, ptr noundef %2)
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

end_hunk_9
