inline.NumInlined: 865
inline.NumDeleted: 342
begin_hunk_0_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0254 = phi ptr [ %i.k, %bb.b ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i8, ptr %.0254, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.g
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not33, label %.critedge.loopexitsplit, label %.lr.ph, !llvm.loop !52

.critedge.loopexitsplit:                          ; preds = %bb.b
  %.1.ph.ph = phi ptr [ %scevgep, %bb.b ]
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.0254.lcssa = phi ptr [ %.0254, %.lr.ph ]
  %.0254.lcssa.a = phi ptr [ %.0254, %.lr.ph ]    ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.1.ph = phi ptr [ %.0254.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.1.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.g
  %.0182259 = phi i64 [ %i.ad, %bb.g ], [ 0, %.lr.ph261.preheader ] ; 2 uses
  %.1191258 = phi ptr [ %i.ae, %bb.g ], [ %.0190, %.lr.ph261.preheader ] ; 4 uses
  %i.x = load i8, ptr %.1191258, align 1, !tbaa !29, !noalias !53 ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10                     ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not.i, label %.critedge.isplit, label %.lr.ph261, !llvm.loop !56

.critedge.isplit:                                 ; preds = %bb.g
  %.lcssa548.ph = phi i1 [ %i.z, %bb.g ]
  %.1191.lcssa.ph.ph = phi ptr [ %scevgep385, %bb.g ]
  %.0182.lcssa.ph.ph = phi i64 [ %i.ad, %bb.g ]
  br label %.critedge.i

.lr.ph261..critedge.i_crit_edge:                  ; preds = %.lr.ph261
  %.1191258.lcssa = phi ptr [ %.1191258, %.lr.ph261 ]
  %split550 = phi i1 [ %i.z, %.lr.ph261 ]
  %.1191258.lcssa.a = phi ptr [ %.1191258, %.lr.ph261 ] ; 0 uses
  %split552 = phi i64 [ %.0182259, %.lr.ph261 ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.isplit, %.lr.ph261..critedge.i_crit_edge
  %.lcssa548 = phi i1 [ %split550, %.lr.ph261..critedge.i_crit_edge ], [ %.lcssa548.ph, %.critedge.isplit ]
  %.1191.lcssa.ph = phi ptr [ %.1191258.lcssa, %.lr.ph261..critedge.i_crit_edge ], [ %.1191.lcssa.ph.ph, %.critedge.isplit ] ; 7 uses
  %.0182.lcssa.ph = phi i64 [ %split552, %.lr.ph261..critedge.i_crit_edge ], [ %.0182.lcssa.ph.ph, %.critedge.isplit ] ; 4 uses
  %i.af = ptrtoint ptr %.1191.lcssa.ph to i64     ; 2 uses
  %i.ag = sub i64 %i.af, %.0190384                ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 0
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.l
  %.6188278 = phi i64 [ %i.bp, %bb.l ], [ %.7189.lcssa, %.lr.ph279.preheader ] ; 2 uses
  %.10200277 = phi ptr [ %i.bm, %bb.l ], [ %.11201.lcssa, %.lr.ph279.preheader ] ; 4 uses
  %i.bj = load i8, ptr %.10200277, align 1, !tbaa !29, !noalias !53
  %i.bk = add i8 %i.bj, -48                       ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 10
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not105.i, label %._crit_edge.loopexitsplit, label %.lr.ph279, !llvm.loop !58

._crit_edge.loopexitsplit:                        ; preds = %bb.l
  %.10200.lcssa.ph.ph = phi ptr [ %scevgep387, %bb.l ]
  %.6188.lcssa.ph.ph = phi i64 [ %i.bp, %bb.l ]
  br label %._crit_edge.loopexit

.lr.ph279.._crit_edge.loopexit_crit_edge:         ; preds = %.lr.ph279
  %.10200277.lcssa = phi ptr [ %.10200277, %.lr.ph279 ]
  %.10200277.lcssa.a = phi ptr [ %.10200277, %.lr.ph279 ] ; 0 uses
  %split557 = phi i64 [ %.6188278, %.lr.ph279 ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph279.._crit_edge.loopexit_crit_edge
  %.10200.lcssa.ph = phi ptr [ %.10200277.lcssa, %.lr.ph279.._crit_edge.loopexit_crit_edge ], [ %.10200.lcssa.ph.ph, %._crit_edge.loopexitsplit ] ; 2 uses
  %.6188.lcssa.ph = phi i64 [ %split557, %.lr.ph279.._crit_edge.loopexit_crit_edge ], [ %.6188.lcssa.ph.ph, %._crit_edge.loopexitsplit ]
  %.pre398 = ptrtoint ptr %.10200.lcssa.ph to i64
  br label %._crit_edge

end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.x
  %.076.i287 = phi i64 [ %.177.i, %bb.x ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %.9199286 = phi ptr [ %i.cr, %bb.x ], [ %.4194, %.lr.ph288.preheader ] ; 4 uses
  %i.ck = load i8, ptr %.9199286, align 1, !tbaa !29, !noalias !53
  %i.cl = add i8 %i.ck, -48                       ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 10
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not114.i, label %.critedge7.isplit, label %.lr.ph288, !llvm.loop !59

.critedge7.isplit:                                ; preds = %bb.x
  %.9199.lcssa.ph.ph = phi ptr [ %scevgep389, %bb.x ]
  %.076.i.lcssa.ph.ph = phi i64 [ %.177.i, %bb.x ]
  br label %.critedge7.i

.lr.ph288..critedge7.i_crit_edge:                 ; preds = %.lr.ph288
  %.9199286.lcssa = phi ptr [ %.9199286, %.lr.ph288 ]
  %.9199286.lcssa.a = phi ptr [ %.9199286, %.lr.ph288 ] ; 0 uses
  %split560 = phi i64 [ %.076.i287, %.lr.ph288 ]
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.critedge7.isplit, %.lr.ph288..critedge7.i_crit_edge
  %.9199.lcssa.ph = phi ptr [ %.9199286.lcssa, %.lr.ph288..critedge7.i_crit_edge ], [ %.9199.lcssa.ph.ph, %.critedge7.isplit ]
  %.076.i.lcssa.ph = phi i64 [ %split560, %.lr.ph288..critedge7.i_crit_edge ], [ %.076.i.lcssa.ph.ph, %.critedge7.isplit ] ; 2 uses
  %i.cs = sub nsw i64 0, %.076.i.lcssa.ph
  %spec.select.i = select i1 %.082.i, i64 %i.cs, i64 %.076.i.lcssa.ph ; 2 uses
  %i.ct = add nsw i64 %spec.select.i, %.072.i222
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph318, !llvm.loop !66

bb.ae:                                            ; preds = %.lr.ph318
  %lsr.iv570.lcssa = phi i64 [ %lsr.iv562, %.lr.ph318 ]
  %lsr.iv565.lcssa = phi i64 [ %lsr.iv558, %.lr.ph318 ]
  %.1181316.lcssa = phi ptr [ %.1181316, %.lr.ph318 ] ; 3 uses
  %.0202315.lcssa = phi i64 [ %.0202315, %.lr.ph318 ] ; 3 uses
  %.lcssa534 = phi i8 [ %i.ek, %.lr.ph318 ]
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.noexc
  %lsr.iv564 = phi i64 [ %lsr.iv570.lcssa, %.lr.ph324.preheader ], [ %lsr.iv.next565, %.noexc ]
  %lsr.iv560 = phi i64 [ %lsr.iv565.lcssa, %.lr.ph324.preheader ], [ %lsr.iv.next561, %.noexc ]
  %.11322 = phi ptr [ %i.fp, %.noexc ], [ %i.ev, %.lr.ph324.preheader ] ; 3 uses
  %.7209321 = phi i64 [ %i.fo, %.noexc ], [ %.0202315.lcssa, %.lr.ph324.preheader ] ; 2 uses
  %.0.copyload.i74 = load i64, ptr %.11322, align 1, !noalias !63 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.ag
  %.10331 = phi ptr [ %i.fv, %bb.ag ], [ %.11.lcssa, %.lr.ph332.preheader ] ; 4 uses
  %.6208330 = phi i64 [ %i.fy, %bb.ag ], [ %.7209.lcssa, %.lr.ph332.preheader ] ; 2 uses
  %i.fs = load i8, ptr %.10331, align 1, !tbaa !29, !noalias !63
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not99.i, label %.critedge2.i.loopexitsplit, label %.lr.ph332, !llvm.loop !67

.critedge2.i.loopexitsplit:                       ; preds = %bb.ag
  %.6208.lcssa.ph.ph = phi i64 [ %i.fy, %bb.ag ]
  %.10.lcssa.ph.ph = phi ptr [ %scevgep393, %bb.ag ]
  br label %.critedge2.i.loopexit

.lr.ph332..critedge2.i.loopexit_crit_edge:        ; preds = %.lr.ph332
  %.10331.lcssa = phi ptr [ %.10331, %.lr.ph332 ]
  %split575 = phi i64 [ %.6208330, %.lr.ph332 ]
  %.10331.lcssa.a = phi ptr [ %.10331, %.lr.ph332 ] ; 0 uses
  br label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge2.i.loopexitsplit, %.lr.ph332..critedge2.i.loopexit_crit_edge
  %.6208.lcssa.ph = phi i64 [ %split575, %.lr.ph332..critedge2.i.loopexit_crit_edge ], [ %.6208.lcssa.ph.ph, %.critedge2.i.loopexitsplit ]
  %.10.lcssa.ph = phi ptr [ %.10331.lcssa, %.lr.ph332..critedge2.i.loopexit_crit_edge ], [ %.10.lcssa.ph.ph, %.critedge2.i.loopexitsplit ] ; 2 uses
  %.pre396 = ptrtoint ptr %.10.lcssa.ph to i64
  br label %.critedge2.i

end_hunk_11
begin_hunk_12_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.at
  %.069.i340 = phi i64 [ %.170.i, %bb.at ], [ 0, %.lr.ph341.preheader ] ; 4 uses
  %.9339 = phi ptr [ %i.hc, %bb.at ], [ %.4, %.lr.ph341.preheader ] ; 4 uses
  %i.gv = load i8, ptr %.9339, align 1, !tbaa !29, !noalias !63
  %i.gw = add i8 %i.gv, -48                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 10
end_hunk_12
begin_hunk_13_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not108.i51, label %.critedge4.isplit, label %.lr.ph341, !llvm.loop !68

.critedge4.isplit:                                ; preds = %bb.at
  %.9.lcssa.ph.ph = phi ptr [ %scevgep395, %bb.at ]
  %.069.i.lcssa.ph.ph = phi i64 [ %.170.i, %bb.at ]
  br label %.critedge4.i

.lr.ph341..critedge4.i_crit_edge:                 ; preds = %.lr.ph341
  %.9339.lcssa = phi ptr [ %.9339, %.lr.ph341 ]
  %.9339.lcssa.a = phi ptr [ %.9339, %.lr.ph341 ] ; 0 uses
  %split579 = phi i64 [ %.069.i340, %.lr.ph341 ]
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.critedge4.isplit, %.lr.ph341..critedge4.i_crit_edge
  %.9.lcssa.ph = phi ptr [ %.9339.lcssa, %.lr.ph341..critedge4.i_crit_edge ], [ %.9.lcssa.ph.ph, %.critedge4.isplit ]
  %.069.i.lcssa.ph = phi i64 [ %split579, %.lr.ph341..critedge4.i_crit_edge ], [ %.069.i.lcssa.ph.ph, %.critedge4.isplit ] ; 2 uses
  %i.hd = sub nsw i64 0, %.069.i.lcssa.ph
  %spec.select.i52 = select i1 %.075.i41, i64 %i.hd, i64 %.069.i.lcssa.ph ; 2 uses
  %i.he = add nsw i64 %spec.select.i52, %.065.i
end_hunk_13
begin_hunk_14_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %bb.c
  %.10327 = phi ptr [ %i.n, %bb.c ], [ %.9.lcssa, %.lr.ph329.preheader ] ; 4 uses
  %i.m = load i8, ptr %.10327, align 1, !tbaa !29
  %.not9.i72 = icmp eq i8 %i.m, 48
  br i1 %.not9.i72, label %bb.c, label %.lr.ph329._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75_crit_edge
end_hunk_14
begin_hunk_15_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br i1 %.not8.i71, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75split, label %.lr.ph329, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75split: ; preds = %bb.c
  %.10.lcssa.ph = phi ptr [ %scevgep, %bb.c ]
  br label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75

.lr.ph329._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75_crit_edge: ; preds = %.lr.ph329
  %.10327.lcssa = phi ptr [ %.10327, %.lr.ph329 ]
  %.10327.lcssa.a = phi ptr [ %.10327, %.lr.ph329 ] ; 0 uses
  br label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75: ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75split, %.lr.ph329._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75_crit_edge
  %.10.lcssa = phi ptr [ %.10327.lcssa, %.lr.ph329._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75_crit_edge ], [ %.10.lcssa.ph, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75split ] ; 2 uses
  %.not356 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not356, label %._crit_edge358, label %.preheader302.lr.ph

end_hunk_15
begin_hunk_16_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br label %.lr.ph384

.lr.ph384:                                        ; preds = %.lr.ph384.preheader, %bb.q
  %.8382 = phi ptr [ %i.im, %bb.q ], [ %.7.lcssa, %.lr.ph384.preheader ] ; 4 uses
  %i.il = load i8, ptr %.8382, align 1, !tbaa !29
  %.not9.i = icmp eq i8 %i.il, 48
  br i1 %.not9.i, label %bb.q, label %.lr.ph384._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit_crit_edge
end_hunk_16
begin_hunk_17_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br i1 %.not8.i, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexitsplit, label %.lr.ph384, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexitsplit: ; preds = %bb.q
  %.3.ph.ph = phi ptr [ %scevgep456, %bb.q ]
  br label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit

.lr.ph384._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit_crit_edge: ; preds = %.lr.ph384
  %.8382.lcssa = phi ptr [ %.8382, %.lr.ph384 ]
  %.8382.lcssa.a = phi ptr [ %.8382, %.lr.ph384 ] ; 0 uses
  br label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit: ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexitsplit, %.lr.ph384._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit_crit_edge
  %.3.ph = phi ptr [ %.8382.lcssa, %.lr.ph384._ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit_crit_edge ], [ %.3.ph.ph, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexitsplit ]
  br label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit: ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit.loopexit, %bb.o
end_hunk_17
begin_hunk_18_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0254 = phi ptr [ %i.k, %bb.b ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i8, ptr %.0254, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.g
end_hunk_18
begin_hunk_19_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not33, label %.critedge.loopexitsplit, label %.lr.ph, !llvm.loop !120

.critedge.loopexitsplit:                          ; preds = %bb.b
  %.1.ph.ph = phi ptr [ %scevgep, %bb.b ]
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.0254.lcssa = phi ptr [ %.0254, %.lr.ph ]
  %.0254.lcssa.a = phi ptr [ %.0254, %.lr.ph ]    ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.1.ph = phi ptr [ %.0254.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.1.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
end_hunk_19
begin_hunk_20_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.g
  %.0182259 = phi i64 [ %i.ad, %bb.g ], [ 0, %.lr.ph261.preheader ] ; 2 uses
  %.1191258 = phi ptr [ %i.ae, %bb.g ], [ %.0190, %.lr.ph261.preheader ] ; 4 uses
  %i.x = load i8, ptr %.1191258, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10                     ; 3 uses
end_hunk_20
begin_hunk_21_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not.i, label %.critedge.isplit, label %.lr.ph261, !llvm.loop !56

.critedge.isplit:                                 ; preds = %bb.g
  %.lcssa548.ph = phi i1 [ %i.z, %bb.g ]
  %.1191.lcssa.ph.ph = phi ptr [ %scevgep385, %bb.g ]
  %.0182.lcssa.ph.ph = phi i64 [ %i.ad, %bb.g ]
  br label %.critedge.i

.lr.ph261..critedge.i_crit_edge:                  ; preds = %.lr.ph261
  %.1191258.lcssa = phi ptr [ %.1191258, %.lr.ph261 ]
  %split550 = phi i1 [ %i.z, %.lr.ph261 ]
  %.1191258.lcssa.a = phi ptr [ %.1191258, %.lr.ph261 ] ; 0 uses
  %split552 = phi i64 [ %.0182259, %.lr.ph261 ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.isplit, %.lr.ph261..critedge.i_crit_edge
  %.lcssa548 = phi i1 [ %split550, %.lr.ph261..critedge.i_crit_edge ], [ %.lcssa548.ph, %.critedge.isplit ]
  %.1191.lcssa.ph = phi ptr [ %.1191258.lcssa, %.lr.ph261..critedge.i_crit_edge ], [ %.1191.lcssa.ph.ph, %.critedge.isplit ] ; 7 uses
  %.0182.lcssa.ph = phi i64 [ %split552, %.lr.ph261..critedge.i_crit_edge ], [ %.0182.lcssa.ph.ph, %.critedge.isplit ] ; 4 uses
  %i.af = ptrtoint ptr %.1191.lcssa.ph to i64     ; 2 uses
  %i.ag = sub i64 %i.af, %.0190384                ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 0
end_hunk_21
begin_hunk_22_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.l
  %.6188278 = phi i64 [ %i.bp, %bb.l ], [ %.7189.lcssa, %.lr.ph279.preheader ] ; 2 uses
  %.10200277 = phi ptr [ %i.bm, %bb.l ], [ %.11201.lcssa, %.lr.ph279.preheader ] ; 4 uses
  %i.bj = load i8, ptr %.10200277, align 1, !tbaa !29, !noalias !121
  %i.bk = add i8 %i.bj, -48                       ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 10
end_hunk_22
begin_hunk_23_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not105.i, label %._crit_edge.loopexitsplit, label %.lr.ph279, !llvm.loop !58

._crit_edge.loopexitsplit:                        ; preds = %bb.l
  %.10200.lcssa.ph.ph = phi ptr [ %scevgep387, %bb.l ]
  %.6188.lcssa.ph.ph = phi i64 [ %i.bp, %bb.l ]
  br label %._crit_edge.loopexit

.lr.ph279.._crit_edge.loopexit_crit_edge:         ; preds = %.lr.ph279
  %.10200277.lcssa = phi ptr [ %.10200277, %.lr.ph279 ]
  %.10200277.lcssa.a = phi ptr [ %.10200277, %.lr.ph279 ] ; 0 uses
  %split557 = phi i64 [ %.6188278, %.lr.ph279 ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph279.._crit_edge.loopexit_crit_edge
  %.10200.lcssa.ph = phi ptr [ %.10200277.lcssa, %.lr.ph279.._crit_edge.loopexit_crit_edge ], [ %.10200.lcssa.ph.ph, %._crit_edge.loopexitsplit ] ; 2 uses
  %.6188.lcssa.ph = phi i64 [ %split557, %.lr.ph279.._crit_edge.loopexit_crit_edge ], [ %.6188.lcssa.ph.ph, %._crit_edge.loopexitsplit ]
  %.pre398 = ptrtoint ptr %.10200.lcssa.ph to i64
  br label %._crit_edge

end_hunk_23
begin_hunk_24_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.x
  %.076.i287 = phi i64 [ %.177.i, %bb.x ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %.9199286 = phi ptr [ %i.cr, %bb.x ], [ %.4194, %.lr.ph288.preheader ] ; 4 uses
  %i.ck = load i8, ptr %.9199286, align 1, !tbaa !29, !noalias !121
  %i.cl = add i8 %i.ck, -48                       ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 10
end_hunk_24
begin_hunk_25_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not114.i, label %.critedge7.isplit, label %.lr.ph288, !llvm.loop !59

.critedge7.isplit:                                ; preds = %bb.x
  %.9199.lcssa.ph.ph = phi ptr [ %scevgep389, %bb.x ]
  %.076.i.lcssa.ph.ph = phi i64 [ %.177.i, %bb.x ]
  br label %.critedge7.i

.lr.ph288..critedge7.i_crit_edge:                 ; preds = %.lr.ph288
  %.9199286.lcssa = phi ptr [ %.9199286, %.lr.ph288 ]
  %.9199286.lcssa.a = phi ptr [ %.9199286, %.lr.ph288 ] ; 0 uses
  %split560 = phi i64 [ %.076.i287, %.lr.ph288 ]
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.critedge7.isplit, %.lr.ph288..critedge7.i_crit_edge
  %.9199.lcssa.ph = phi ptr [ %.9199286.lcssa, %.lr.ph288..critedge7.i_crit_edge ], [ %.9199.lcssa.ph.ph, %.critedge7.isplit ]
  %.076.i.lcssa.ph = phi i64 [ %split560, %.lr.ph288..critedge7.i_crit_edge ], [ %.076.i.lcssa.ph.ph, %.critedge7.isplit ] ; 2 uses
  %i.cs = sub nsw i64 0, %.076.i.lcssa.ph
  %spec.select.i = select i1 %.082.i, i64 %i.cs, i64 %.076.i.lcssa.ph ; 2 uses
  %i.ct = add nsw i64 %spec.select.i, %.072.i222
end_hunk_25
begin_hunk_26_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph318, !llvm.loop !66

bb.ae:                                            ; preds = %.lr.ph318
  %lsr.iv570.lcssa = phi i64 [ %lsr.iv562, %.lr.ph318 ]
  %lsr.iv565.lcssa = phi i64 [ %lsr.iv558, %.lr.ph318 ]
  %.1181316.lcssa = phi ptr [ %.1181316, %.lr.ph318 ] ; 3 uses
  %.0202315.lcssa = phi i64 [ %.0202315, %.lr.ph318 ] ; 3 uses
  %.lcssa534 = phi i8 [ %i.ek, %.lr.ph318 ]
end_hunk_26
begin_hunk_27_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.noexc
  %lsr.iv564 = phi i64 [ %lsr.iv570.lcssa, %.lr.ph324.preheader ], [ %lsr.iv.next565, %.noexc ]
  %lsr.iv560 = phi i64 [ %lsr.iv565.lcssa, %.lr.ph324.preheader ], [ %lsr.iv.next561, %.noexc ]
  %.11322 = phi ptr [ %i.fp, %.noexc ], [ %i.ev, %.lr.ph324.preheader ] ; 3 uses
  %.7209321 = phi i64 [ %i.fo, %.noexc ], [ %.0202315.lcssa, %.lr.ph324.preheader ] ; 2 uses
  %.0.copyload.i74 = load i64, ptr %.11322, align 1, !noalias !124 ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.ag
  %.10331 = phi ptr [ %i.fv, %bb.ag ], [ %.11.lcssa, %.lr.ph332.preheader ] ; 4 uses
  %.6208330 = phi i64 [ %i.fy, %bb.ag ], [ %.7209.lcssa, %.lr.ph332.preheader ] ; 2 uses
  %i.fs = load i8, ptr %.10331, align 1, !tbaa !29, !noalias !124
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
end_hunk_28
begin_hunk_29_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not99.i, label %.critedge2.i.loopexitsplit, label %.lr.ph332, !llvm.loop !67

.critedge2.i.loopexitsplit:                       ; preds = %bb.ag
  %.6208.lcssa.ph.ph = phi i64 [ %i.fy, %bb.ag ]
  %.10.lcssa.ph.ph = phi ptr [ %scevgep393, %bb.ag ]
  br label %.critedge2.i.loopexit

.lr.ph332..critedge2.i.loopexit_crit_edge:        ; preds = %.lr.ph332
  %.10331.lcssa = phi ptr [ %.10331, %.lr.ph332 ]
  %split575 = phi i64 [ %.6208330, %.lr.ph332 ]
  %.10331.lcssa.a = phi ptr [ %.10331, %.lr.ph332 ] ; 0 uses
  br label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge2.i.loopexitsplit, %.lr.ph332..critedge2.i.loopexit_crit_edge
  %.6208.lcssa.ph = phi i64 [ %split575, %.lr.ph332..critedge2.i.loopexit_crit_edge ], [ %.6208.lcssa.ph.ph, %.critedge2.i.loopexitsplit ]
  %.10.lcssa.ph = phi ptr [ %.10331.lcssa, %.lr.ph332..critedge2.i.loopexit_crit_edge ], [ %.10.lcssa.ph.ph, %.critedge2.i.loopexitsplit ] ; 2 uses
  %.pre396 = ptrtoint ptr %.10.lcssa.ph to i64
  br label %.critedge2.i

end_hunk_29
begin_hunk_30_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.at
  %.069.i340 = phi i64 [ %.170.i, %bb.at ], [ 0, %.lr.ph341.preheader ] ; 4 uses
  %.9339 = phi ptr [ %i.hc, %bb.at ], [ %.4, %.lr.ph341.preheader ] ; 4 uses
  %i.gv = load i8, ptr %.9339, align 1, !tbaa !29, !noalias !124
  %i.gw = add i8 %i.gv, -48                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 10
end_hunk_30
begin_hunk_31_@_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE:bb.a
  br i1 %.not108.i51, label %.critedge4.isplit, label %.lr.ph341, !llvm.loop !68

.critedge4.isplit:                                ; preds = %bb.at
  %.9.lcssa.ph.ph = phi ptr [ %scevgep395, %bb.at ]
  %.069.i.lcssa.ph.ph = phi i64 [ %.170.i, %bb.at ]
  br label %.critedge4.i

.lr.ph341..critedge4.i_crit_edge:                 ; preds = %.lr.ph341
  %.9339.lcssa = phi ptr [ %.9339, %.lr.ph341 ]
  %.9339.lcssa.a = phi ptr [ %.9339, %.lr.ph341 ] ; 0 uses
  %split579 = phi i64 [ %.069.i340, %.lr.ph341 ]
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.critedge4.isplit, %.lr.ph341..critedge4.i_crit_edge
  %.9.lcssa.ph = phi ptr [ %.9339.lcssa, %.lr.ph341..critedge4.i_crit_edge ], [ %.9.lcssa.ph.ph, %.critedge4.isplit ]
  %.069.i.lcssa.ph = phi i64 [ %split579, %.lr.ph341..critedge4.i_crit_edge ], [ %.069.i.lcssa.ph.ph, %.critedge4.isplit ] ; 2 uses
  %i.hd = sub nsw i64 0, %.069.i.lcssa.ph
  %spec.select.i52 = select i1 %.075.i41, i64 %i.hd, i64 %.069.i.lcssa.ph ; 2 uses
  %i.he = add nsw i64 %spec.select.i52, %.065.i
end_hunk_31
