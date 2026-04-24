inline.NumInlined: 17707
inline.NumDeleted: 3921
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !839, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !842
  %i.db = sext i32 %i.da to i64
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fd = fmul float %i.dh, %i.dj
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !906

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !941, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !944
  %i.db = sext i32 %i.da to i64
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !965

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01753.i.i.i, -1
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax66.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !999, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1002
  %i.db = sext i32 %i.da to i64
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax66.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1025

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_9
begin_hunk_10_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1059, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1062
  %i.db = sext i32 %i.da to i64
end_hunk_10
begin_hunk_11_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1084

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_12
begin_hunk_13_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1119, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1121
  %i.db = sext i32 %i.da to i64
end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1142

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_14
begin_hunk_15_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01753.i.i.i, -1
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax66.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_15
begin_hunk_16_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1178, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1180
  %i.db = sext i32 %i.da to i64
end_hunk_16
begin_hunk_17_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax66.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1201

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_17
begin_hunk_18_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_18
begin_hunk_19_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1237, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1239
  %i.db = sext i32 %i.da to i64
end_hunk_19
begin_hunk_20_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1260

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_20
begin_hunk_21_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_21
begin_hunk_22_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1295, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1297
  %i.db = sext i32 %i.da to i64
end_hunk_22
begin_hunk_23_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fd = fmul float %i.dh, %i.dj
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1318

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_23
begin_hunk_24_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_24
begin_hunk_25_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1352, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1354
  %i.db = sext i32 %i.da to i64
end_hunk_25
begin_hunk_26_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1375

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_26
begin_hunk_27_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 3, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_27
begin_hunk_28_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1409, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1411
  %i.db = sext i32 %i.da to i64
end_hunk_28
begin_hunk_29_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1432

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_29
begin_hunk_30_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_30
begin_hunk_31_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1466, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1468
  %i.db = sext i32 %i.da to i64
end_hunk_31
begin_hunk_32_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1489

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_32
begin_hunk_33_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_33
begin_hunk_34_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1523, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1525
  %i.db = sext i32 %i.da to i64
end_hunk_34
begin_hunk_35_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1546

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_35
begin_hunk_36_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 3, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_36
begin_hunk_37_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1580, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1582
  %i.db = sext i32 %i.da to i64
end_hunk_37
begin_hunk_38_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1603

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_38
begin_hunk_39_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_39
begin_hunk_40_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1637, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1639
  %i.db = sext i32 %i.da to i64
end_hunk_40
begin_hunk_41_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1660

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_41
begin_hunk_42_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_42
begin_hunk_43_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1696, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1698
  %i.de = sext i32 %i.dd to i64
end_hunk_43
begin_hunk_44_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fg = fmul float %i.dk, %i.dm
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fg, ptr %i.fh, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1719

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_44
begin_hunk_45_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_45
begin_hunk_46_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1755, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1757
  %i.de = sext i32 %i.dd to i64
end_hunk_46
begin_hunk_47_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1778

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_47
begin_hunk_48_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 2, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_48
begin_hunk_49_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1814, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1816
  %i.de = sext i32 %i.dd to i64
end_hunk_49
begin_hunk_50_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1837

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_50
begin_hunk_51_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_51
begin_hunk_52_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1873, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1875
  %i.de = sext i32 %i.dd to i64
end_hunk_52
begin_hunk_53_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1896

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_53
begin_hunk_54_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_54
begin_hunk_55_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1932, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1934
  %i.de = sext i32 %i.dd to i64
end_hunk_55
begin_hunk_56_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1955

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_56
begin_hunk_57_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 2, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_57
begin_hunk_58_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1991, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1993
  %i.de = sext i32 %i.dd to i64
end_hunk_58
begin_hunk_59_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2014

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
end_hunk_59
begin_hunk_60_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
end_hunk_60
begin_hunk_61_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !2050, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !2052
  %i.de = sext i32 %i.dd to i64
end_hunk_61
begin_hunk_62_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2073

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
end_hunk_62
