inline.NumInlined: 43590
inline.NumDeleted: 6060
begin_hunk_0_@_ZN5arrow15ScalarParseImpl5VisitINS_10UInt32TypeEvEENS_6StatusERKT_:bb.a
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %.01722.i.i = phi i64 [ %i.e, %bb.bb ], [ %i.cy, %bb.bd ] ; 3 uses
  %.01821.i.i = phi ptr [ %i.d, %bb.bb ], [ %i.cz, %bb.bd ] ; 3 uses
  %i.cw = load i8, ptr %.01821.i.i, align 1, !tbaa !66
  %i.cx = icmp eq i8 %i.cw, 48
end_hunk_0
begin_hunk_1_@_ZN5arrow15ScalarParseImpl5VisitINS_10UInt32TypeEvEENS_6StatusERKT_:bb.a
  br i1 %.not.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit, label %bb.bc, !llvm.loop !2069

_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit: ; preds = %bb.bd
  %.018.lcssa.i.i.ph = phi ptr [ %scevgep.i.i, %bb.bd ]
  %.017.lcssa.i.i.ph = phi i64 [ 0, %bb.bd ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

._ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge: ; preds = %bb.bc
  %.01722.i.i.lcssa = phi i64 [ %.01722.i.i, %bb.bc ]
  %.01821.i.i.lcssa = phi ptr [ %.01821.i.i, %bb.bc ]
  %split13 = phi i64 [ %.01722.i.i, %bb.bc ]      ; 0 uses
  br label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit, %._ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge
  %.018.lcssa.i.i = phi ptr [ %.01821.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge ], [ %.018.lcssa.i.i.ph, %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit ]
  %.017.lcssa.i.i = phi i64 [ %.01722.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge ], [ %.017.lcssa.i.i.ph, %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit ]
  %i.da = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.018.lcssa.i.i, i64 noundef %.017.lcssa.i.i, ptr noundef nonnull %i.a)
  br i1 %i.da, label %bb.bg, label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

end_hunk_1
begin_hunk_2_@_ZN5arrow15ScalarParseImpl5VisitINS_10UInt64TypeEvEENS_6StatusERKT_:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.01722.i.i = phi i64 [ %i.e, %bb.k ], [ %i.w, %bb.m ] ; 3 uses
  %.01821.i.i = phi ptr [ %i.d, %bb.k ], [ %i.x, %bb.m ] ; 3 uses
  %i.u = load i8, ptr %.01821.i.i, align 1, !tbaa !66
  %i.v = icmp eq i8 %i.u, 48
end_hunk_2
begin_hunk_3_@_ZN5arrow15ScalarParseImpl5VisitINS_10UInt64TypeEvEENS_6StatusERKT_:bb.a
  br i1 %.not.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit, label %bb.l, !llvm.loop !2081

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit: ; preds = %bb.m
  %.018.lcssa.i.i.ph = phi ptr [ %scevgep.i.i, %bb.m ]
  %.017.lcssa.i.i.ph = phi i64 [ 0, %bb.m ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge: ; preds = %bb.l
  %.01722.i.i.lcssa = phi i64 [ %.01722.i.i, %bb.l ]
  %.01821.i.i.lcssa = phi ptr [ %.01821.i.i, %bb.l ]
  %split13 = phi i64 [ %.01722.i.i, %bb.l ]       ; 0 uses
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge
  %.018.lcssa.i.i = phi ptr [ %.01821.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge ], [ %.018.lcssa.i.i.ph, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit ]
  %.017.lcssa.i.i = phi i64 [ %.01722.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit_crit_edge ], [ %.017.lcssa.i.i.ph, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exitsplit ]
  %i.y = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i, i64 noundef %.017.lcssa.i.i, ptr noundef nonnull %i.a)
  br i1 %i.y, label %bb.p, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

end_hunk_3
begin_hunk_4_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 3 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !66
  %i.cy = icmp eq i8 %i.cx, 48
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.bb, !llvm.loop !4085

.critedgesplit:                                   ; preds = %bb.bc
  %.125.lcssa.ph = phi ptr [ %scevgep, %bb.bc ]
  %.1.lcssa.ph = phi i64 [ 0, %bb.bc ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.bb
  %.133.lcssa = phi i64 [ %.133, %bb.bb ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.bb ]
  %split41 = phi i64 [ %.133, %bb.bb ]            ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %.125.lcssa.ph, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ %.1.lcssa.ph, %.critedgesplit ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !218

end_hunk_5
begin_hunk_6_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.x, %bb.l ] ; 3 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.y, %bb.l ] ; 3 uses
  %i.v = load i8, ptr %.12532, align 1, !tbaa !66
  %i.w = icmp eq i8 %i.v, 48
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.k, !llvm.loop !4810

.critedgesplit:                                   ; preds = %bb.l
  %.125.lcssa.ph = phi ptr [ %scevgep, %bb.l ]
  %.1.lcssa.ph = phi i64 [ 0, %bb.l ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.k
  %.133.lcssa = phi i64 [ %.133, %bb.k ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.k ]
  %split42 = phi i64 [ %.133, %bb.k ]             ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %.125.lcssa.ph, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ %.1.lcssa.ph, %.critedgesplit ]
  %i.z = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.z, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

end_hunk_7
begin_hunk_8_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_12DurationTypeEE7ConvertERKS2_PKcmPl:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.x, %bb.l ] ; 3 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.y, %bb.l ] ; 3 uses
  %i.v = load i8, ptr %.12532, align 1, !tbaa !66
  %i.w = icmp eq i8 %i.v, 48
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_12DurationTypeEE7ConvertERKS2_PKcmPl:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.k, !llvm.loop !6936

.critedgesplit:                                   ; preds = %bb.l
  %.125.lcssa.ph = phi ptr [ %scevgep, %bb.l ]
  %.1.lcssa.ph = phi i64 [ 0, %bb.l ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.k
  %.133.lcssa = phi i64 [ %.133, %bb.k ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.k ]
  %split42 = phi i64 [ %.133, %bb.k ]             ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %.125.lcssa.ph, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ %.1.lcssa.ph, %.critedgesplit ]
  %i.z = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.z, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

end_hunk_9
begin_hunk_10_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cr, label %.lr.ph.split.backedge, label %bb.ad, !prof !209

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.0.i.i.i30.lcssa156 = phi i32 [ %.0.i.i.i30, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.lcssa150 = phi i64 [ %i.cq, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.ct = add i32 %.0.i.i.i30.lcssa156, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cp, label %.lr.ph.split.backedge, label %bb.ad, !prof !209

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29
  %.0.i.i.i30.lcssa156 = phi i32 [ %.0.i.i.i30, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ]
  %.lcssa150 = phi i64 [ %i.co, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i64 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cq, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.cr = add i32 %.0.i.i.i30.lcssa156, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_13
