inline.NumInlined: 12989
inline.NumDeleted: 3863
begin_hunk_0_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !65
  %i.cy = icmp eq i8 %i.cx, 48
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.bb, !llvm.loop !3139

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
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !74

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.x, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.y, %bb.l ] ; 3 uses
  %i.v = load i8, ptr %.12532, align 1, !tbaa !65
  %i.w = icmp eq i8 %i.v, 48
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.k, !llvm.loop !3366

.critedgesplit:                                   ; preds = %bb.l
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.k
  %.133.lcssa = phi i64 [ %.133, %bb.k ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.k ]
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %scevgep, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ 0, %.critedgesplit ]
  %i.z = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.z, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !74

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.at, %bb.q ], [ %i.br, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.q ], [ %i.bs, %bb.s ] ; 3 uses
  %i.bp = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.bq = icmp eq i8 %i.bp, 48
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i37.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, label %bb.r, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit: ; preds = %bb.s
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge: ; preds = %bb.r
  %.01722.i.i.i.i.i.i.lcssa = phi i64 [ %.01722.i.i.i.i.i.i, %bb.r ]
  %.01821.i.i.i.i.i.i.lcssa = phi ptr [ %.01821.i.i.i.i.i.i, %bb.r ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %.01821.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ %scevgep.i.i.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ %.01722.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %i.bt = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bt, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4275

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.01722.i.i56.i.i.i.i = phi i64 [ %i.eu, %bb.ax ], [ %i.fs, %bb.az ] ; 2 uses
  %.01821.i.i57.i.i.i.i = phi ptr [ %i.eq, %bb.ax ], [ %i.ft, %bb.az ] ; 3 uses
  %i.fq = load i8, ptr %.01821.i.i57.i.i.i.i, align 1, !tbaa !65
  %i.fr = icmp eq i8 %i.fq, 48
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i62.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit, label %bb.ay, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit: ; preds = %bb.az
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge: ; preds = %bb.ay
  %.01722.i.i56.i.i.i.i.lcssa = phi i64 [ %.01722.i.i56.i.i.i.i, %bb.ay ]
  %.01821.i.i57.i.i.i.i.lcssa = phi ptr [ %.01821.i.i57.i.i.i.i, %bb.ay ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge
  %.018.lcssa.i.i59.i.i.i.i = phi ptr [ %.01821.i.i57.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge ], [ %scevgep.i.i55.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit ]
  %.017.lcssa.i.i60.i.i.i.i = phi i64 [ %.01722.i.i56.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit ]
  %i.fu = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i59.i.i.i.i, i64 noundef %.017.lcssa.i.i60.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.fu, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !4275

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.bp, %bb.s ] ; 3 uses
  %i.bm = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.bn = icmp eq i8 %i.bm, 48
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i37.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, label %bb.r, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit: ; preds = %bb.s
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge: ; preds = %bb.r
  %.01722.i.i.i.i.i.i.lcssa = phi i64 [ %.01722.i.i.i.i.i.i, %bb.r ]
  %.01821.i.i.i.i.i.i.lcssa = phi ptr [ %.01821.i.i.i.i.i.i, %bb.r ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %.01821.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ %scevgep.i.i.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ %.01722.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %i.bq = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bq, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4275

end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.01722.i.i56.i.i.i.i = phi i64 [ %i.ep, %bb.ax ], [ %i.fm, %bb.az ] ; 2 uses
  %.01821.i.i57.i.i.i.i = phi ptr [ %i.em, %bb.ax ], [ %i.fn, %bb.az ] ; 3 uses
  %i.fk = load i8, ptr %.01821.i.i57.i.i.i.i, align 1, !tbaa !65
  %i.fl = icmp eq i8 %i.fk, 48
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i62.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit, label %bb.ay, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit: ; preds = %bb.az
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge: ; preds = %bb.ay
  %.01722.i.i56.i.i.i.i.lcssa = phi i64 [ %.01722.i.i56.i.i.i.i, %bb.ay ]
  %.01821.i.i57.i.i.i.i.lcssa = phi ptr [ %.01821.i.i57.i.i.i.i, %bb.ay ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge
  %.018.lcssa.i.i59.i.i.i.i = phi ptr [ %.01821.i.i57.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge ], [ %scevgep.i.i55.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit ]
  %.017.lcssa.i.i60.i.i.i.i = phi i64 [ %.01722.i.i56.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.isplit ]
  %i.fo = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i59.i.i.i.i, i64 noundef %.017.lcssa.i.i60.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.fo, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !4275

end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.01722.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.s ], [ %i.cc, %bb.u ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.s ], [ %i.cd, %bb.u ] ; 3 uses
  %i.ca = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.cb = icmp eq i8 %i.ca, 48
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i38.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, label %bb.t, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit: ; preds = %bb.u
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge: ; preds = %bb.t
  %.01722.i.i.i.i.i.i.lcssa = phi i64 [ %.01722.i.i.i.i.i.i, %bb.t ]
  %.01821.i.i.i.i.i.i.lcssa = phi ptr [ %.01821.i.i.i.i.i.i, %bb.t ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %.01821.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ %scevgep.i.i.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ %.01722.i.i.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.isplit ]
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.ce, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4275

end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %.01722.i.i57.i.i.i.i = phi i64 [ %i.fs, %bb.bb ], [ %i.go, %bb.bd ] ; 2 uses
  %.01821.i.i58.i.i.i.i = phi ptr [ %i.fr, %bb.bb ], [ %i.gp, %bb.bd ] ; 3 uses
  %i.gm = load i8, ptr %.01821.i.i58.i.i.i.i, align 1, !tbaa !65
  %i.gn = icmp eq i8 %i.gm, 48
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %.not.i.i63.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.isplit, label %bb.bc, !llvm.loop !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.isplit: ; preds = %bb.bd
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i

._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i_crit_edge: ; preds = %bb.bc
  %.01722.i.i57.i.i.i.i.lcssa = phi i64 [ %.01722.i.i57.i.i.i.i, %bb.bc ]
  %.01821.i.i58.i.i.i.i.lcssa = phi ptr [ %.01821.i.i58.i.i.i.i, %bb.bc ]
  br label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.isplit, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i_crit_edge
  %.018.lcssa.i.i60.i.i.i.i = phi ptr [ %.01821.i.i58.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i_crit_edge ], [ %scevgep.i.i56.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.isplit ]
  %.017.lcssa.i.i61.i.i.i.i = phi i64 [ %.01722.i.i57.i.i.i.i.lcssa, %._ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i_crit_edge ], [ 0, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.isplit ]
  %i.gq = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i60.i.i.i.i, i64 noundef %.017.lcssa.i.i61.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.gq, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i, !prof !4275

end_hunk_15
