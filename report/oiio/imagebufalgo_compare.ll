inline.NumInlined: 8095
inline.NumDeleted: 2632
begin_hunk_0_@_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L18computePixelStats_IdEEbRKNS2_8ImageBufERNS2_12ImageBufAlgo10PixelStatsENS2_3ROIEiEUlllE0_E9_M_invokeERKSt9_Any_dataOlSG_:bb.a
bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_13valERNS0_12ImageBufAlgo10PixelStatsEif.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.gt, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_13valERNS0_12ImageBufAlgo10PixelStatsEif.exit.i.i.i ] ; 9 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !24
  %i.ik = fptrunc double %i.ij to float           ; 7 uses
  %i.il = fcmp uno float %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
end_hunk_0
