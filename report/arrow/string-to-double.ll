inline.NumInlined: 160
inline.NumDeleted: 32
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread364

bb.cq:                                            ; preds = %bb.cm, %bb.cn
  %.promoted485 = phi ptr [ %i.ll, %bb.cn ], [ %i.lg, %bb.cm ] ; 5 uses
  %.0192 = phi i8 [ %i.lk, %bb.cn ], [ 43, %bb.cm ]
  %i.lp = icmp eq ptr %.promoted485, %i.h
  br i1 %i.lp, label %bb.cs, label %bb.cr
end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
bb.cu:                                            ; preds = %.preheader, %bb.cy
  %lsr.iv796 = phi ptr [ %scevgep, %.preheader ], [ %scevgep797, %bb.cy ] ; 3 uses
  %i.lw = phi i8 [ %i.me, %bb.cy ], [ %i.lq, %.preheader ] ; 2 uses
  %.0193 = phi i32 [ %.1194, %bb.cy ], [ 0, %.preheader ] ; 3 uses
  %i.lx = zext nneg i8 %i.lw to i32
  %i.ly = icmp sgt i32 %.0193, 107374181
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.1194 = phi i32 [ %i.md, %bb.cw ], [ 1073741823, %bb.cv ] ; 3 uses
  %.not219 = icmp eq ptr %lsr.iv796, %i.h
  br i1 %.not219, label %split.a, label %bb.cy

end_hunk_2
begin_hunk_3_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %or.cond231, label %bb.cu, label %._crit_edge798, !llvm.loop !37

split.a:                                          ; preds = %bb.cx
  br label %bb.cz

._crit_edge798:                                   ; preds = %bb.cy
  %scevgep799 = getelementptr i8, ptr %scevgep797, i64 -1
  br label %bb.cz, !llvm.loop !37

bb.cz:                                            ; preds = %split.a, %._crit_edge798
  %.1194.lcssa = phi i32 [ %.1194, %._crit_edge798 ], [ %.1194, %split.a ] ; 2 uses
  %.lcssa502 = phi ptr [ %scevgep799, %._crit_edge798 ], [ %scevgep539, %split.a ] ; 2 uses
  store ptr %.lcssa502, ptr %i.b, align 8, !tbaa !7
  %i.mg = icmp eq i8 %.0192, 45
  %i.mh = sub nsw i32 0, %.1194.lcssa
end_hunk_3
begin_hunk_4_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  br label %.thread364

bb.cq:                                            ; preds = %bb.cm, %bb.cn
  %.promoted485 = phi ptr [ %i.kn, %bb.cn ], [ %i.kh, %bb.cm ] ; 3 uses
  %.0192 = phi i32 [ %i.km, %bb.cn ], [ 43, %bb.cm ]
  %i.kr = icmp eq ptr %.promoted485, %i.g
  br i1 %i.kr, label %bb.cs, label %bb.cr
end_hunk_4
begin_hunk_5_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  br label %.thread364

.preheader:                                       ; preds = %.preheader.preheader, %bb.cx
  %lsr.iv820 = phi ptr [ %scevgep819, %.preheader.preheader ], [ %scevgep821, %bb.cx ] ; 5 uses
  %i.kw = phi i16 [ %i.le, %bb.cx ], [ %i.ks, %.preheader.preheader ] ; 2 uses
  %.0193 = phi i32 [ %.1194, %bb.cx ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.kx = zext nneg i16 %i.kw to i32
  %i.ky = icmp sgt i32 %.0193, 107374181
end_hunk_5
begin_hunk_6_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %.1194 = phi i32 [ %i.ld, %bb.cv ], [ 1073741823, %bb.cu ] ; 3 uses
  %.not219 = icmp eq ptr %lsr.iv820, %i.g
  br i1 %.not219, label %._crit_edge818, label %bb.cx

end_hunk_6
begin_hunk_7_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  br i1 %or.cond231, label %.preheader, label %split.a, !llvm.loop !47

split.a:                                          ; preds = %bb.cx
  %lsr.iv820.lcssa822 = phi ptr [ %lsr.iv820, %bb.cx ]
  br label %bb.cy

._crit_edge818:                                   ; preds = %bb.cw
  %lsr.iv820.lcssa = phi ptr [ %lsr.iv820, %bb.cw ]
  br label %bb.cy

bb.cy:                                            ; preds = %split.a, %._crit_edge818
  %.1194.lcssa = phi i32 [ %.1194, %._crit_edge818 ], [ %.1194, %split.a ] ; 2 uses
  %.lcssa773 = phi ptr [ %lsr.iv820.lcssa, %._crit_edge818 ], [ %lsr.iv820.lcssa822, %split.a ] ; 2 uses
  store ptr %.lcssa773, ptr %i.a, align 8, !tbaa !39
  %sext.mask = and i32 %.0192, 255
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb:bb.a
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us.preheader, %bb.h
  %i.bg = phi ptr [ %i.bn, %bb.h ], [ %i.be, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us.preheader ] ; 3 uses
  %.0121.us235 = phi i1 [ %spec.select203.us, %bb.h ], [ true, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us.preheader ] ; 2 uses
  %.2124.us234 = phi i32 [ %i.bm, %bb.h ], [ %.0135.lcssa, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us.preheader ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb:bb.a
bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us
  %i.bl = icmp eq i8 %i.bh, 48
  %spec.select203.us = and i1 %.0121.us235, %i.bl ; 2 uses
  %i.bm = add nuw i32 %.2124.us234, 3             ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 1      ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !7
  %i.bo = icmp eq ptr %i.bn, %1
end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb:bb.a
.split:                                           ; preds = %.split.preheader, %bb.m
  %i.bp = phi i8 [ %i.ce, %bb.m ], [ %.lcssa100, %.split.preheader ]
  %i.bq = phi ptr [ %i.cd, %bb.m ], [ %.promoted232.lcssa, %.split.preheader ] ; 2 uses
  %.2124 = phi i32 [ %i.cj, %bb.m ], [ %.0135.lcssa, %.split.preheader ] ; 3 uses
  %.0121 = phi i1 [ %spec.select203, %bb.m ], [ true, %.split.preheader ] ; 3 uses
  %i.br = add i8 %i.bp, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.br, -8  ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb:bb.a
_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexitsplit: ; preds = %bb.h
  %.lcssa114 = phi ptr [ %i.bn, %bb.h ]
  %.lcssa112 = phi i32 [ %i.bm, %bb.h ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit_crit_edge: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us
  %.lcssa115 = phi ptr [ %i.bg, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ]
  %.2124.us234.lcssa = phi i32 [ %.2124.us234, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexitsplit, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit_crit_edge
  %.promoted.i159.ph = phi ptr [ %.lcssa115, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit_crit_edge ], [ %.lcssa114, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexitsplit ]
  %.us-phi.ph = phi i32 [ %.2124.us234.lcssa, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit_crit_edge ], [ %.lcssa112, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexitsplit ]
  %.us-phi233.ph = phi i1 [ %.0121.us235, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit_crit_edge ], [ %spec.select203.us, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexitsplit ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82split: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157
  %.2124.lcssa110 = phi i32 [ %.2124, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82_crit_edge: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread
  %.2124.lcssa111 = phi i32 [ %.2124, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82split, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82_crit_edge
  %.2124.lcssa = phi i32 [ %.2124.lcssa111, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82_crit_edge ], [ %.2124.lcssa110, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82split ]
  %.0121.lcssa = phi i1 [ %.0121, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82_crit_edge ], [ %.0121, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82split ]
  %.promoted.i159.ph83 = phi ptr [ %i.cd, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread._ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82_crit_edge ], [ %i.bs, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82split ]
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit82, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.loopexit, %.split.us
end_hunk_11
