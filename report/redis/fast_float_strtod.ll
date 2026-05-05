inline.NumInlined: 299
inline.NumDeleted: 99
begin_hunk_0_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.198 = phi ptr [ %i.w, %bb.h ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %.07897 = phi i64 [ %i.v, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.198, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %i.q = add i8 %i.p, -48
end_hunk_0
begin_hunk_1_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  br i1 %.not112.i, label %.critedge.isplit, label %.lr.ph, !llvm.loop !17

.critedge.isplit:                                 ; preds = %bb.h
  br label %.critedge.i

.lr.ph..critedge.i_crit_edge:                     ; preds = %.lr.ph
  %.198.lcssa.a = phi ptr [ %.198, %.lr.ph ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.isplit, %.lr.ph..critedge.i_crit_edge
  %.lcssa223 = phi i1 [ %i.r, %.lr.ph..critedge.i_crit_edge ], [ %i.r, %.critedge.isplit ]
  %.078.lcssa.ph = phi i64 [ %.07897, %.lr.ph..critedge.i_crit_edge ], [ %i.v, %.critedge.isplit ] ; 4 uses
  %.1.lcssa.ph = phi ptr [ %.198.lcssa.a, %.lr.ph..critedge.i_crit_edge ], [ %scevgep, %.critedge.isplit ] ; 7 uses
  %i.x = ptrtoint ptr %.1.lcssa.ph to i64         ; 2 uses
  %i.y = sub i64 %i.x, %.0155                     ; 6 uses
  %i.z = and i32 %.sroa.0.0.extract.trunc.i, 32
end_hunk_1
begin_hunk_2_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.n
  %.10115 = phi ptr [ %i.bf, %bb.n ], [ %.11.lcssa, %.lr.ph116.preheader ] ; 3 uses
  %.684114 = phi i64 [ %i.bi, %bb.n ], [ %.785.lcssa, %.lr.ph116.preheader ] ; 2 uses
  %i.bc = load i8, ptr %.10115, align 1, !tbaa !13, !noalias !14
  %i.bd = add i8 %i.bc, -48                       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  br i1 %.not115.i, label %.critedge3.i.loopexitsplit, label %.lr.ph116, !llvm.loop !20

.critedge3.i.loopexitsplit:                       ; preds = %bb.n
  br label %.critedge3.i.loopexit

.lr.ph116..critedge3.i.loopexit_crit_edge:        ; preds = %.lr.ph116
  %.10115.lcssa.a = phi ptr [ %.10115, %.lr.ph116 ]
  br label %.critedge3.i.loopexit

.critedge3.i.loopexit:                            ; preds = %.critedge3.i.loopexitsplit, %.lr.ph116..critedge3.i.loopexit_crit_edge
  %.684.lcssa.ph = phi i64 [ %.684114, %.lr.ph116..critedge3.i.loopexit_crit_edge ], [ %i.bi, %.critedge3.i.loopexitsplit ]
  %.10.lcssa.ph = phi ptr [ %.10115.lcssa.a, %.lr.ph116..critedge3.i.loopexit_crit_edge ], [ %scevgep157, %.critedge3.i.loopexitsplit ] ; 2 uses
  %.pre160 = ptrtoint ptr %.10.lcssa.ph to i64
  br label %.critedge3.i

end_hunk_3
begin_hunk_4_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %bb.ac
  %.081.i124 = phi i64 [ %.182.i, %bb.ac ], [ 0, %.lr.ph125.preheader ] ; 4 uses
  %.9123 = phi ptr [ %i.cm, %bb.ac ], [ %.4, %.lr.ph125.preheader ] ; 3 uses
  %i.cf = load i8, ptr %.9123, align 1, !tbaa !13, !noalias !14
  %i.cg = add i8 %i.cf, -48                       ; 2 uses
  %i.ch = icmp ult i8 %i.cg, 10
end_hunk_4
begin_hunk_5_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  br i1 %.not123.i, label %.critedge7.isplit, label %.lr.ph125, !llvm.loop !21

.critedge7.isplit:                                ; preds = %bb.ac
  br label %.critedge7.i

.lr.ph125..critedge7.i_crit_edge:                 ; preds = %.lr.ph125
  %.9123.lcssa.a = phi ptr [ %.9123, %.lr.ph125 ]
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.critedge7.isplit, %.lr.ph125..critedge7.i_crit_edge
  %.9.lcssa.ph = phi ptr [ %.9123.lcssa.a, %.lr.ph125..critedge7.i_crit_edge ], [ %scevgep159, %.critedge7.isplit ]
  %.081.i.lcssa.ph = phi i64 [ %.081.i124, %.lr.ph125..critedge7.i_crit_edge ], [ %.182.i, %.critedge7.isplit ] ; 2 uses
  %i.cn = sub nsw i64 0, %.081.i.lcssa.ph
  %spec.select.i = select i1 %.087.i, i64 %i.cn, i64 %.081.i.lcssa.ph ; 2 uses
  %i.co = add nsw i64 %spec.select.i, %.077.i
end_hunk_5
begin_hunk_6_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %bb.c
  %.10327 = phi ptr [ %i.n, %bb.c ], [ %.9.lcssa, %.lr.ph329.preheader ] ; 3 uses
  %i.m = load i8, ptr %.10327, align 1, !tbaa !13
  %.not9.i72 = icmp eq i8 %i.m, 48
  br i1 %.not9.i72, label %bb.c, label %.lr.ph329._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75_crit_edge
end_hunk_6
begin_hunk_7_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  br i1 %.not8.i71, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75split, label %.lr.ph329, !llvm.loop !48

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75split: ; preds = %bb.c
  br label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75

.lr.ph329._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75_crit_edge: ; preds = %.lr.ph329
  %.10327.lcssa.a = phi ptr [ %.10327, %.lr.ph329 ]
  br label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75:  ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75split, %.lr.ph329._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75_crit_edge
  %.10.lcssa = phi ptr [ %.10327.lcssa.a, %.lr.ph329._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75_crit_edge ], [ %scevgep, %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75split ] ; 2 uses
  %.not356 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not356, label %._crit_edge358, label %.preheader302.lr.ph

end_hunk_7
begin_hunk_8_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  br label %.lr.ph384

.lr.ph384:                                        ; preds = %.lr.ph384.preheader, %bb.q
  %.8382 = phi ptr [ %i.im, %bb.q ], [ %.7.lcssa, %.lr.ph384.preheader ] ; 3 uses
  %i.il = load i8, ptr %.8382, align 1, !tbaa !13
  %.not9.i = icmp eq i8 %i.il, 48
  br i1 %.not9.i, label %bb.q, label %.lr.ph384._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit_crit_edge
end_hunk_8
begin_hunk_9_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  br i1 %.not8.i, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexitsplit, label %.lr.ph384, !llvm.loop !48

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexitsplit: ; preds = %bb.q
  br label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit

.lr.ph384._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit_crit_edge: ; preds = %.lr.ph384
  %.8382.lcssa.a = phi ptr [ %.8382, %.lr.ph384 ]
  br label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit: ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexitsplit, %.lr.ph384._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit_crit_edge
  %.3.ph = phi ptr [ %.8382.lcssa.a, %.lr.ph384._ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit_crit_edge ], [ %scevgep456, %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexitsplit ]
  br label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit:    ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit.loopexit, %bb.o
end_hunk_9
