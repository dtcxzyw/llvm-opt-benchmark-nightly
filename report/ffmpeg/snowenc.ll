inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_frame:bb.a
  %indvars.iv.next12.i.i = add nsw i64 %indvars.iv11.i88.i, -1 ; 2 uses
  %.not.us.us.i.i = icmp eq i64 %indvars.iv.next12.i.i, 0
  br i1 %.not.us.us.i.i, label %decorrelate.exit.i, label %.lr.ph.split.us.split.us.i.i, !llvm.loop !279

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader2162, %.lr.ph.split.i.i
  %i.auv = phi i64 [ %i.avq, %.lr.ph.split.i.i ], [ %.ph2163, %.lr.ph.split.i.i.preheader2162 ] ; 3 uses
  %indvars.iv.i86.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i86.i.ph, %.lr.ph.split.i.i.preheader2162 ]
  %i.auw = add nsw i64 %i.auv, -1                 ; 2 uses
  %i.aux = getelementptr inbounds [2 x i8], ptr %i.aqp, i64 %i.auw
  %i.auy = load i16, ptr %i.aux, align 2, !tbaa !184
  %i.auz = sext i16 %i.auy to i32                 ; 3 uses
  %i.ava = sub nsw i64 %i.auv, %i.asf
  %i.avb = getelementptr inbounds [2 x i8], ptr %i.aqp, i64 %i.ava
  %i.avc = load i16, ptr %i.avb, align 2, !tbaa !184
  %i.avd = sext i16 %i.avc to i32                 ; 3 uses
  %i.ave = add nsw i32 %i.avd, %i.auz
  %i.avf = sub nsw i64 %i.auw, %i.asf
  %i.avg = getelementptr inbounds [2 x i8], ptr %i.aqp, i64 %i.avf
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !184
  %i.avi = sext i16 %i.avh to i32
  %i.avj = sub nsw i32 %i.ave, %i.avi
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.auz, i32 %i.avd)
  %.20.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.auz, i32 %i.avd)
  %i.avk = tail call i32 @llvm.smin.i32(i32 %i.avj, i32 %.20.i.i.i)
  %i.avl = tail call noundef i32 @llvm.smax.i32(i32 %i.avk, i32 %..i.i.i)
  %i.avm = getelementptr inbounds [2 x i8], ptr %i.aqp, i64 %i.auv ; 2 uses
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !184
  %i.avo = trunc nsw i32 %i.avl to i16
  %i.avp = sub i16 %i.avn, %i.avo
  store i16 %i.avp, ptr %i.avm, align 2, !tbaa !184
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i86.i, -1 ; 3 uses
  %i.avq = add nsw i64 %indvars.iv.next.i.i, %i.asx ; 2 uses
  %.not.i.i787 = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i787, label %..loopexit_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !280

decorrelate.exit.i:                               ; preds = %.lr.ph.split.us.split.us.i.i, %middle.block1761, %vec.epilog.middle.block1776, %.lr.ph.split.us.split.us.i.preheader.i, %._crit_edge84.split.i
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %._crit_edge97.i

.preheader.us.preheader.i:                        ; preds = %decorrelate.exit.i
  %i.avr = sext i32 %i.aqv to i64
  %wide.trip.count126.i = zext nneg i32 %.12.val.fr.i.i to i64
  %wide.trip.count121.i = zext nneg i32 %i.aqr to i64 ; 3 uses
  %min.iters.check1734 = icmp ult i32 %i.aqr, 8
  %n.vec1736 = and i64 %wide.trip.count121.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1737 = insertelement <4 x i32> poison, i32 %i.arh, i64 0
  %broadcast.splat1738 = shufflevector <4 x i32> %broadcast.splatinsert1737, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n1746 = icmp eq i64 %n.vec1736, %wide.trip.count121.i
  br label %.preheader.us.i784

.preheader.us.i784:                               ; preds = %._crit_edge93.us.i, %.preheader.us.preheader.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next124.i, %._crit_edge93.us.i ] ; 2 uses
  %.295.us.i = phi i32 [ %.173100.i, %.preheader.us.preheader.i ], [ %.lcssa1480, %._crit_edge93.us.i ] ; 2 uses
  %i.avs = mul nsw i64 %indvars.iv123.i, %i.avr
  %invariant.gep.i785 = getelementptr [2 x i8], ptr %i.aqp, i64 %i.avs ; 2 uses
  br i1 %min.iters.check1734, label %scalar.ph1733.preheader, label %vector.ph1735

vector.ph1735:                                    ; preds = %.preheader.us.i784
  %i.avt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.295.us.i, i64 0
  br label %vector.body1739

vector.body1739:                                  ; preds = %vector.body1739, %vector.ph1735
  %index1740 = phi i64 [ 0, %vector.ph1735 ], [ %index.next1744, %vector.body1739 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.avt, %vector.ph1735 ], [ %i.awe, %vector.body1739 ]
  %vec.phi1741 = phi <4 x i32> [ zeroinitializer, %vector.ph1735 ], [ %i.awf, %vector.body1739 ]
  %i.avu = getelementptr [2 x i8], ptr %invariant.gep.i785, i64 %index1740 ; 2 uses
  %i.avv = getelementptr i8, ptr %i.avu, i64 8
  %wide.load1742 = load <4 x i16>, ptr %i.avu, align 2, !tbaa !184
  %wide.load1743 = load <4 x i16>, ptr %i.avv, align 2, !tbaa !184
  %i.avw = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1742, i1 false)
  %i.avx = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1743, i1 false)
  %i.avy = zext <4 x i16> %i.avw to <4 x i32>
  %i.avz = zext <4 x i16> %i.avx to <4 x i32>
  %i.awa = mul nuw nsw <4 x i32> %broadcast.splat1738, %i.avy
  %i.awb = mul nuw nsw <4 x i32> %broadcast.splat1738, %i.avz
  %i.awc = lshr <4 x i32> %i.awa, splat (i32 16)
  %i.awd = lshr <4 x i32> %i.awb, splat (i32 16)
  %i.awe = add <4 x i32> %i.awc, %vec.phi         ; 2 uses
  %i.awf = add <4 x i32> %i.awd, %vec.phi1741     ; 2 uses
  %index.next1744 = add nuw i64 %index1740, 8     ; 2 uses
  %i.awg = icmp eq i64 %index.next1744, %n.vec1736
  br i1 %i.awg, label %middle.block1745, label %vector.body1739, !llvm.loop !281

middle.block1745:                                 ; preds = %vector.body1739
  %bin.rdx = add <4 x i32> %i.awf, %i.awe
  %i.awh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n1746, label %._crit_edge93.us.i, label %scalar.ph1733.preheader

scalar.ph1733.preheader:                          ; preds = %.preheader.us.i784, %middle.block1745
  %indvars.iv118.i.ph = phi i64 [ 0, %.preheader.us.i784 ], [ %n.vec1736, %middle.block1745 ]
  %.390.us.i.ph = phi i32 [ %.295.us.i, %.preheader.us.i784 ], [ %i.awh, %middle.block1745 ]
  br label %scalar.ph1733

scalar.ph1733:                                    ; preds = %scalar.ph1733.preheader, %scalar.ph1733
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %scalar.ph1733 ], [ %indvars.iv118.i.ph, %scalar.ph1733.preheader ] ; 2 uses
  %.390.us.i = phi i32 [ %i.awn, %scalar.ph1733 ], [ %.390.us.i.ph, %scalar.ph1733.preheader ]
  %gep.i786 = getelementptr [2 x i8], ptr %invariant.gep.i785, i64 %indvars.iv118.i
  %i.awi = load i16, ptr %gep.i786, align 2, !tbaa !184
  %i.awj = tail call i16 @llvm.abs.i16(i16 %i.awi, i1 false)
  %i.awk = zext i16 %i.awj to i32
  %i.awl = mul nuw nsw i32 %i.arh, %i.awk
  %i.awm = lshr i32 %i.awl, 16
  %i.awn = add i32 %i.awm, %.390.us.i             ; 2 uses
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %._crit_edge93.us.i, label %scalar.ph1733, !llvm.loop !282

._crit_edge93.us.i:                               ; preds = %scalar.ph1733, %middle.block1745
  %.lcssa1480 = phi i32 [ %i.awh, %middle.block1745 ], [ %i.awn, %scalar.ph1733 ] ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count126.i
  br i1 %exitcond127.not.i, label %._crit_edge97.i, label %.preheader.us.i784, !llvm.loop !283

._crit_edge97.i:                                  ; preds = %._crit_edge93.us.i, %decorrelate.exit.i
  %.2.lcssa.i = phi i32 [ %.173100.i, %decorrelate.exit.i ], [ %.lcssa1480, %._crit_edge93.us.i ] ; 4 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next129.i, 4
  br i1 %exitcond131.not.i, label %bb.bq, label %bb.bp, !llvm.loop !284

bb.bq:                                            ; preds = %._crit_edge97.i
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %._crit_edge105.i, label %bb.bo, !llvm.loop !285

._crit_edge105.i:                                 ; preds = %bb.bq
  %i.awo = icmp ult i32 %.2.lcssa.i, 2147483647
  br i1 %i.awo, label %._crit_edge105.thread.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge105.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, i32 noundef 1719) #12
  tail call void @abort() #13
  unreachable

._crit_edge105.thread.i:                          ; preds = %._crit_edge105.i, %bb.bn
  %.072.lcssa143.i = phi i32 [ %.2.lcssa.i, %._crit_edge105.i ], [ 0, %bb.bn ]
  %i.awp = zext nneg i32 %.072.lcssa143.i to i64  ; 2 uses
  %i.awq = mul nuw nsw i64 %i.awp, %i.awp
  %i.awr = lshr i64 %i.awq, 16
  %i.aws = load i32, ptr %i.cf, align 8, !tbaa !128
  %i.awt = icmp eq i32 %i.aws, 1                  ; 2 uses
  %i.awu = and i64 %i.awr, 4294967295             ; 2 uses
  %..i781 = select i1 %i.awt, i64 %i.awu, i64 0
  %.148.i = select i1 %i.awt, i64 0, i64 %i.awu
  store i64 %..i781, ptr %i.lq, align 8, !tbaa !286
  store i64 %.148.i, ptr %i.lr, align 16, !tbaa !287
  %i.awv = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %i.e, i32 noundef 1) #12
  %i.aww = fptosi float %i.awv to i32             ; 5 uses
  store i32 %i.aww, ptr %i.ci, align 8, !tbaa !133
  %i.awx = icmp slt i32 %i.aww, 0
  br i1 %i.awx, label %get_encode_buffer.exit.thread, label %ratecontrol_1pass.exit

ratecontrol_1pass.exit:                           ; preds = %._crit_edge105.thread.i
  %i.awy = lshr i32 %i.aww, 1
  %i.awz = add nuw nsw i32 %i.awy, %i.aww
  store i32 %i.awz, ptr %i.ls, align 16, !tbaa !143
  %i.axa = uitofp nneg i32 %i.aww to float
  %i.axb = fdiv nnan nsz float %i.axa, 1.180000e+02
  %i.axc = fpext nnan nsz float %i.axb to double
  %i.axd = tail call nnan nsz double @llvm.log2.f64(double %i.axc)
  %i.axe = fmul nnan nsz double %i.axd, 3.200000e+01
  %i.axf = tail call i64 @llvm.lrint.i64.f64(double %i.axe)
  %i.axg = trunc i64 %i.axf to i32
  %i.axh = add i32 %i.axg, 244                    ; 2 uses
  %i.axi = load i32, ptr %i.en, align 8, !tbaa !142
  %i.axj = sub nsw i32 %i.axh, %i.axi
  store i32 %i.axh, ptr %i.en, align 8, !tbaa !142
  switch i32 %i.axj, label %bb.bs [
    i32 -2147483648, label %get_encode_buffer.exit.thread
    i32 0, label %bb.bt
  ]

bb.bs:                                            ; preds = %ratecontrol_1pass.exit
  %i.axk = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.axl = load i32, ptr %i.aa, align 8, !tbaa !124
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.f, ptr noundef %i.axk, i32 noundef %i.axl) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4224) %i.lu, ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i64 4224, i1 false)
  tail call fastcc void @encode_header(ptr noundef nonnull %i.d)
  tail call fastcc void @encode_blocks(ptr noundef nonnull %i.d, i32 noundef 0)
  br label %bb.bt

bb.bt:                                            ; preds = %ratecontrol_1pass.exit, %bb.bs, %.loopexit925
  %i.axm = load i32, ptr %i.kr, align 8, !tbaa !173 ; 2 uses
  %i.axn = icmp sgt i32 %i.axm, 0
  br i1 %i.axn, label %.lr.ph1047, label %._crit_edge1055

.lr.ph1047:                                       ; preds = %bb.bt
  %i.axo = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  br label %bb.bu

.preheader923:                                    ; preds = %bb.fk
  %i.axp = icmp sgt i32 %i.bwb, 0
  br i1 %i.axp, label %.lr.ph1054, label %._crit_edge1055

.lr.ph1054:                                       ; preds = %.preheader923
  %i.axq = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.val773 = load i32, ptr %i.en, align 8, !tbaa !142
  %.val773.fr = freeze i32 %.val773               ; 5 uses
  %.val774 = load i32, ptr %i.kv, align 8, !tbaa !174 ; 4 uses
  %.not1122 = icmp eq i32 %.val773.fr, -128
  %wide.trip.count1230 = zext nneg i32 %i.bwb to i64
  br i1 %.not1122, label %._crit_edge1055, label %.split.preheader

bb.bu:                                            ; preds = %.lr.ph1047, %bb.fk
  %indvars.iv1220 = phi i64 [ 0, %.lr.ph1047 ], [ %indvars.iv.next1221, %bb.fk ] ; 3 uses
  %.not576 = icmp ne i64 %indvars.iv1220, 0
  %i.axr = getelementptr inbounds nuw [4640 x i8], ptr %i.axo, i64 %indvars.iv1220
  %i.axs = zext i1 %.not576 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %correlate.exit
  %indvars.iv1216 = phi i64 [ %i.axs, %bb.bu ], [ %indvars.iv.next1217, %correlate.exit ] ; 3 uses
  %i.axt = getelementptr inbounds nuw [1160 x i8], ptr %i.axr, i64 %indvars.iv1216 ; 12 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 32 ; 2 uses
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !178 ; 39 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axt, i64 24
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !261 ; 5 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axt, i64 4 ; 3 uses
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !183 ; 9 uses
  %.val770 = load i32, ptr %i.en, align 8, !tbaa !142 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axt, i64 8 ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 8, !tbaa !259
  %.fr297.i.i = freeze i32 %i.ayb                 ; 18 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axt, i64 12 ; 2 uses
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !260
  %.12.val.fr.i = freeze i32 %i.ayd               ; 10 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axt, i64 16
  %i.ayf = load i32, ptr %i.aye, align 8, !tbaa !190
  %i.ayg = add nsw i32 %i.ayf, %.val770
  %i.ayh = tail call i32 @llvm.smax.i32(i32 %i.ayg, i32 0)
  %i.ayi = tail call i32 @llvm.umin.i32(i32 %i.ayh, i32 512) ; 2 uses
  %i.ayj = and i32 %i.ayi, 31
  %i.ayk = zext nneg i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.ayk
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !84
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = lshr i32 %i.ayi, 5
  %i.ayp = add nuw nsw i32 %i.ayo, 4
  %i.ayq = shl nuw nsw i32 %i.ayn, %i.ayp         ; 14 uses
  %i.ayr = icmp eq i32 %.val770, -128
  br i1 %i.ayr, label %.preheader1.i, label %bb.bw

.preheader1.i:                                    ; preds = %bb.bv
  %i.ays = icmp sgt i32 %.12.val.fr.i, 0
  %i.ayt = icmp sgt i32 %.fr297.i.i, 0
  %or.cond.i798 = and i1 %i.ayt, %i.ays
  br i1 %or.cond.i798, label %.preheader.preheader.i, label %quantize.exit

.preheader.preheader.i:                           ; preds = %.preheader1.i
  %i.ayu = sext i32 %i.axz to i64
  %wide.trip.count44.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count39.i = zext nneg i32 %.fr297.i.i to i64 ; 3 uses
  %min.iters.check1694 = icmp ult i32 %.fr297.i.i, 8
  %n.vec1696 = and i64 %wide.trip.count39.i, 2147483640 ; 3 uses
  %cmp.n1703 = icmp eq i64 %n.vec1696, %wide.trip.count39.i
  br label %.preheader.i799

.preheader.i799:                                  ; preds = %._crit_edge14.i, %.preheader.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge14.i ] ; 2 uses
  %i.ayv = mul nsw i64 %indvars.iv41.i, %i.ayu    ; 2 uses
  br i1 %min.iters.check1694, label %scalar.ph1693.preheader, label %vector.body1697

vector.body1697:                                  ; preds = %.preheader.i799, %vector.body1697
  %index1698 = phi i64 [ %index.next1701, %vector.body1697 ], [ 0, %.preheader.i799 ] ; 2 uses
  %i.ayw = add nsw i64 %index1698, %i.ayv         ; 2 uses
  %i.ayx = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.ayw ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  %wide.load1699 = load <4 x i32>, ptr %i.ayx, align 4, !tbaa !93
  %wide.load1700 = load <4 x i32>, ptr %i.ayy, align 4, !tbaa !93
  %i.ayz = trunc <4 x i32> %wide.load1699 to <4 x i16>
  %i.aza = trunc <4 x i32> %wide.load1700 to <4 x i16>
  %i.azb = getelementptr inbounds [2 x i8], ptr %i.axv, i64 %i.ayw ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 8
  store <4 x i16> %i.ayz, ptr %i.azb, align 2, !tbaa !184
  store <4 x i16> %i.aza, ptr %i.azc, align 2, !tbaa !184
  %index.next1701 = add nuw i64 %index1698, 8     ; 2 uses
  %i.azd = icmp eq i64 %index.next1701, %n.vec1696
  br i1 %i.azd, label %middle.block1702, label %vector.body1697, !llvm.loop !288

middle.block1702:                                 ; preds = %vector.body1697
  br i1 %cmp.n1703, label %._crit_edge14.i, label %scalar.ph1693.preheader

scalar.ph1693.preheader:                          ; preds = %.preheader.i799, %middle.block1702
  %indvars.iv36.i.ph = phi i64 [ 0, %.preheader.i799 ], [ %n.vec1696, %middle.block1702 ]
  br label %scalar.ph1693

scalar.ph1693:                                    ; preds = %scalar.ph1693.preheader, %scalar.ph1693
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %scalar.ph1693 ], [ %indvars.iv36.i.ph, %scalar.ph1693.preheader ] ; 2 uses
  %i.aze = add nsw i64 %indvars.iv36.i, %i.ayv    ; 2 uses
  %i.azf = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.aze
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !93
  %i.azh = trunc i32 %i.azg to i16
  %i.azi = getelementptr inbounds [2 x i8], ptr %i.axv, i64 %i.aze
  store i16 %i.azh, ptr %i.azi, align 2, !tbaa !184
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge14.i, label %scalar.ph1693, !llvm.loop !289

._crit_edge14.i:                                  ; preds = %scalar.ph1693, %middle.block1702
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %quantize.exit, label %.preheader.i799, !llvm.loop !290

bb.bw:                                            ; preds = %bb.bv
  %i.azj = load i32, ptr %i.kv, align 8, !tbaa !174
  %.not.i792 = icmp eq i32 %i.azj, 0
  %i.azk = mul nuw nsw i32 %i.ayq, 3
  %i.azl = lshr i32 %i.azk, 3
  %i.azm = select i1 %.not.i792, i32 %i.azl, i32 0 ; 12 uses
  %i.azn = sub nsw i32 %i.ayq, %i.azm
  %i.azo = ashr i32 %i.azn, 11
  %i.azp = add nsw i32 %i.azo, -1                 ; 4 uses
  %i.azq = shl nsw i32 %i.azp, 1                  ; 3 uses
  %.not106.i = icmp eq i32 %i.azm, 0
  %i.azr = icmp sgt i32 %.12.val.fr.i, 0
  %i.azs = icmp sgt i32 %.fr297.i.i, 0
  %or.cond17.i = and i1 %i.azs, %i.azr            ; 2 uses
  br i1 %.not106.i, label %.preheader3.i, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader5.preheader.i, label %quantize.exit

.preheader5.preheader.i:                          ; preds = %.preheader6.i
  %i.azt = sext i32 %i.axz to i64
  %wide.trip.count24.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count.i793 = zext nneg i32 %.fr297.i.i to i64 ; 3 uses
  %min.iters.check1706 = icmp ult i32 %.fr297.i.i, 4
  %n.vec1708 = and i64 %wide.trip.count.i793, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.azp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1709 = insertelement <4 x i32> poison, i32 %i.azq, i64 0
  %broadcast.splat1710 = shufflevector <4 x i32> %broadcast.splatinsert1709, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1731 = icmp eq i64 %n.vec1708, %wide.trip.count.i793
  br label %.preheader5.i

.preheader3.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader2.preheader.i, label %quantize.exit

.preheader2.preheader.i:                          ; preds = %.preheader3.i
  %i.azu = sext i32 %i.axz to i64
  %wide.trip.count34.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count29.i = zext nneg i32 %.fr297.i.i to i64
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %._crit_edge11.i, %.preheader2.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge11.i ] ; 2 uses
  %i.azv = mul nsw i64 %indvars.iv31.i, %i.azu
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.preheader2.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next27.i, %bb.cb ] ; 2 uses
  %i.azw = add nsw i64 %indvars.iv26.i, %i.azv    ; 2 uses
  %i.azx = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.azw
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !93 ; 4 uses
  %i.azz = add nsw i32 %i.azy, %i.azp
  %i.baa = icmp ugt i32 %i.azz, %i.azq
  br i1 %i.baa, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.bab = icmp sgt i32 %i.azy, -1
  br i1 %i.bab, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.bac = shl i32 %i.azy, 11
  %i.bad = sdiv i32 %i.bac, %i.ayq
  %i.bae = trunc i32 %i.bad to i16
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %.neg.i = mul i32 %i.azy, -2048
  %i.baf = sdiv i32 %.neg.i, %i.ayq
  %i.bag = trunc i32 %i.baf to i16
  %i.bah = sub i16 0, %i.bag
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.sink.i = phi i16 [ %i.bae, %bb.bz ], [ %i.bah, %bb.ca ], [ 0, %bb.bx ]
  %i.bai = getelementptr inbounds [2 x i8], ptr %i.axv, i64 %i.azw
  store i16 %.sink.i, ptr %i.bai, align 2, !tbaa !184
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %._crit_edge11.i, label %bb.bx, !llvm.loop !291

._crit_edge11.i:                                  ; preds = %bb.cb
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %quantize.exit, label %.preheader2.i, !llvm.loop !292

.preheader5.i:                                    ; preds = %._crit_edge.i797, %.preheader5.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.preheader5.preheader.i ], [ %indvars.iv.next22.i, %._crit_edge.i797 ] ; 2 uses
  %i.baj = mul nsw i64 %indvars.iv21.i, %i.azt    ; 2 uses
  br i1 %min.iters.check1706, label %scalar.ph1705.preheader, label %vector.body1711

vector.body1711:                                  ; preds = %.preheader5.i, %pred.sdiv.continue1727
  %index1712 = phi i64 [ %index.next1729, %pred.sdiv.continue1727 ], [ 0, %.preheader5.i ] ; 2 uses
  %i.bak = add nsw i64 %index1712, %i.baj         ; 2 uses
  %i.bal = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.bak
  %wide.load1713 = load <4 x i32>, ptr %i.bal, align 4, !tbaa !93 ; 3 uses
  %i.bam = add nsw <4 x i32> %wide.load1713, %broadcast.splat
  %i.ban = icmp ugt <4 x i32> %i.bam, %broadcast.splat1710 ; 2 uses
  %i.bao = icmp sgt <4 x i32> %wide.load1713, splat (i32 -1) ; 2 uses
  %i.bap = shl <4 x i32> %wide.load1713, splat (i32 11) ; 8 uses
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.btd = mul nsw i64 %indvars.iv319.i.i, %i.blt ; 2 uses
  %.not.us.i.i = icmp eq i64 %indvars.iv319.i.i, 0
  %i.bte = add nsw i64 %indvars.iv319.i.i, -1
  %i.btf = mul nsw i64 %i.bte, %i.blt             ; 2 uses
  %i.btg = add nsw i64 %i.btf, 4294967295
  %i.bth = add nsw i64 %i.btd, 4294967295
  %i.bti = trunc nuw nsw i64 %indvars.iv319.i.i to i32 ; 2 uses
  %i.btj = lshr i32 %i.bti, 1
  %i.btk = and i32 %i.bti, 2147483646
  %i.btl = mul nsw i32 %i.btk, %i.axz
  %invariant.gep345.i.i = getelementptr [2 x i8], ptr %i.axv, i64 %i.btd
  %invariant.gep347.i.i = getelementptr [2 x i8], ptr %i.axv, i64 %i.btf ; 2 uses
  br label %bb.ea

._crit_edge.us296.i.i:                            ; preds = %put_rac.exit256.us.i.i
  %indvars.iv.next320.i.i = add nuw nsw i64 %indvars.iv319.i.i, 1 ; 2 uses
  %exitcond323.not.i.i = icmp eq i64 %indvars.iv.next320.i.i, %wide.trip.count322.i.i
  br i1 %exitcond323.not.i.i, label %encode_subband.exit, label %.lr.ph295.split.us.i.i, !llvm.loop !325

.lr.ph295.split.i.i:                              ; preds = %.lr.ph295.i.i
  %i.btm = load ptr, ptr %i.lx, align 16, !tbaa !317
  %i.btn = load ptr, ptr %i.lb, align 8, !tbaa !194
  %i.bto = ptrtoint ptr %i.btm to i64
  %i.btp = ptrtoint ptr %i.btn to i64
  %i.btq = sub i64 %i.bto, %i.btp
  %i.btr = icmp slt i64 %i.btq, %i.blp
  br i1 %i.btr, label %.split.us.i.i, label %encode_subband.exit

.split.us.i.i:                                    ; preds = %.lr.ph295.split.us.i.i, %.lr.ph295.split.i.i
  %i.bts = load ptr, ptr %i.i, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bts, i32 noundef 16, ptr noundef nonnull @.str.34) #12
  br label %encode_subband.exit

encode_subband.exit:                              ; preds = %._crit_edge.us296.i.i, %.split.us.i.i, %.lr.ph295.split.i.i, %bb.dz, %decorrelate.exit
  %i.btt = getelementptr inbounds nuw i8, ptr %i.axt, i64 64
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !312 ; 2 uses
  %i.btv = icmp eq ptr %i.btu, null
  br i1 %i.btv, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %encode_subband.exit
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btu, i64 4
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !183
  %i.bty = load i32, ptr %i.axy, align 4, !tbaa !183
  %i.btz = shl nsw i32 %i.bty, 1
  %i.bua = icmp eq i32 %i.btx, %i.btz
  br i1 %i.bua, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef 1998) #12
  tail call void @abort() #13
  unreachable

bb.fg:                                            ; preds = %bb.fe, %encode_subband.exit
  br i1 %i.bdj, label %bb.fh, label %correlate.exit

bb.fh:                                            ; preds = %bb.fg
  %i.bub = load ptr, ptr %i.axu, align 8, !tbaa !178 ; 12 uses
  %.val771 = load i32, ptr %i.aya, align 8, !tbaa !259 ; 4 uses
  %.val772 = load i32, ptr %i.ayc, align 4, !tbaa !260 ; 2 uses
  %i.buc = icmp sgt i32 %.val772, 0
  %i.bud = icmp sgt i32 %.val771, 0
  %or.cond.i810 = select i1 %i.buc, i1 %i.bud, i1 false
  br i1 %or.cond.i810, label %.preheader.preheader.i811, label %correlate.exit

.preheader.preheader.i811:                        ; preds = %bb.fh
  %i.bue = load i32, ptr %i.axy, align 4, !tbaa !183
  %i.buf = sext i32 %i.bue to i64                 ; 5 uses
  %wide.trip.count23.i = zext nneg i32 %.val772 to i64
  %wide.trip.count.i812 = zext nneg i32 %.val771 to i64 ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %.val771, 1  ; 2 uses
  %i.bug = shl nsw i64 %i.buf, 1
  %i.buh = add nsw i64 %wide.trip.count.i812, -1  ; 2 uses
  %i.bui = xor i64 %i.buf, -1
  %invariant.gep2217 = getelementptr [2 x i8], ptr %i.bub, i64 %i.bui
  %xtraiter2188 = and i64 %i.buh, 3               ; 3 uses
  %i.buj = add nsw i32 %.val771, -2
  %i.buk = icmp ult i32 %i.buj, 3
  %unroll_iter2192 = and i64 %i.buh, -4
  %lcmp.mod2190.not = icmp eq i64 %xtraiter2188, 0
  %lcmp.mod2191 = icmp ne i64 %xtraiter2188, 0
  br label %.preheader.i813

.preheader.i813:                                  ; preds = %._crit_edge.i819, %.preheader.preheader.i811
  %indvars.iv20.i = phi i64 [ 0, %.preheader.preheader.i811 ], [ %indvars.iv.next21.i, %._crit_edge.i819 ] ; 4 uses
  %i.bul = mul i64 %i.bug, %indvars.iv20.i
  %scevgep2149 = getelementptr i8, ptr %i.bub, i64 %i.bul
  %i.bum = mul nsw i64 %indvars.iv20.i, %i.buf    ; 3 uses
  %.not58.i = icmp eq i64 %indvars.iv20.i, 0
  br i1 %.not58.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.preheader.i813
  %i.bun = sub nsw i64 %i.bum, %i.buf
  %i.buo = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bun
  %i.bup = load i16, ptr %i.buo, align 2, !tbaa !184
  %i.buq = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bum ; 2 uses
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !184
  %i.bus = add i16 %i.bur, %i.bup
  store i16 %i.bus, ptr %i.buq, align 2, !tbaa !184
  br i1 %exitcond.peel.not.i, label %._crit_edge.i819, label %.lr.ph.split.peel.next.i.preheader

.lr.ph.split.peel.next.i.preheader:               ; preds = %bb.fi
  %load_initial = load i16, ptr %scevgep2149, align 2
  br label %.lr.ph.split.peel.next.i

bb.fj:                                            ; preds = %.preheader.i813
  br i1 %exitcond.peel.not.i, label %._crit_edge.i819, label %.lr.ph.split.us.split.us.peel.next.i.preheader

.lr.ph.split.us.split.us.peel.next.i.preheader:   ; preds = %bb.fj
  %load_initial2150 = load i16, ptr %i.bub, align 2 ; 2 uses
  br i1 %i.buk, label %.lr.ph.split.us.split.us.peel.next.i.epil.preheader, label %.lr.ph.split.us.split.us.peel.next.i

.lr.ph.split.us.split.us.peel.next.i:             ; preds = %.lr.ph.split.us.split.us.peel.next.i.preheader, %.lr.ph.split.us.split.us.peel.next.i
  %store_forwarded2151 = phi i16 [ %i.bvh, %.lr.ph.split.us.split.us.peel.next.i ], [ %load_initial2150, %.lr.ph.split.us.split.us.peel.next.i.preheader ]
  %indvars.iv14.i820 = phi i64 [ %indvars.iv.next15.i821.3, %.lr.ph.split.us.split.us.peel.next.i ], [ 1, %.lr.ph.split.us.split.us.peel.next.i.preheader ] ; 5 uses
  %niter2193 = phi i64 [ %niter2193.next.3, %.lr.ph.split.us.split.us.peel.next.i ], [ 0, %.lr.ph.split.us.split.us.peel.next.i.preheader ]
  %i.but = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i820 ; 2 uses
  %i.buu = load i16, ptr %i.but, align 2, !tbaa !184
  %i.buv = add i16 %i.buu, %store_forwarded2151   ; 2 uses
  store i16 %i.buv, ptr %i.but, align 2, !tbaa !184
  %i.buw = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i820
  %i.bux = getelementptr i8, ptr %i.buw, i64 2    ; 2 uses
  %i.buy = load i16, ptr %i.bux, align 2, !tbaa !184
  %i.buz = add i16 %i.buy, %i.buv                 ; 2 uses
  store i16 %i.buz, ptr %i.bux, align 2, !tbaa !184
  %i.bva = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i820
  %i.bvb = getelementptr i8, ptr %i.bva, i64 4    ; 2 uses
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !184
  %i.bvd = add i16 %i.bvc, %i.buz                 ; 2 uses
  store i16 %i.bvd, ptr %i.bvb, align 2, !tbaa !184
  %i.bve = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i820
  %i.bvf = getelementptr i8, ptr %i.bve, i64 6    ; 2 uses
  %i.bvg = load i16, ptr %i.bvf, align 2, !tbaa !184
  %i.bvh = add i16 %i.bvg, %i.bvd                 ; 3 uses
  store i16 %i.bvh, ptr %i.bvf, align 2, !tbaa !184
  %indvars.iv.next15.i821.3 = add nuw nsw i64 %indvars.iv14.i820, 4 ; 2 uses
  %niter2193.next.3 = add nuw i64 %niter2193, 4   ; 2 uses
  %niter2193.ncmp.3 = icmp eq i64 %niter2193.next.3, %unroll_iter2192
  br i1 %niter2193.ncmp.3, label %._crit_edge.i819.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.peel.next.i, !llvm.loop !326

.lr.ph.split.peel.next.i:                         ; preds = %.lr.ph.split.peel.next.i.preheader, %.lr.ph.split.peel.next.i
  %store_forwarded = phi i16 [ %load_initial, %.lr.ph.split.peel.next.i.preheader ], [ %i.bvx, %.lr.ph.split.peel.next.i ]
  %indvars.iv.i814 = phi i64 [ 1, %.lr.ph.split.peel.next.i.preheader ], [ %indvars.iv.next.i817, %.lr.ph.split.peel.next.i ] ; 2 uses
  %i.bvi = add nsw i64 %indvars.iv.i814, %i.bum   ; 3 uses
  %i.bvj = sext i16 %store_forwarded to i32       ; 3 uses
  %i.bvk = sub nsw i64 %i.bvi, %i.buf
  %i.bvl = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bvk
  %i.bvm = load i16, ptr %i.bvl, align 2, !tbaa !184
  %i.bvn = sext i16 %i.bvm to i32                 ; 3 uses
  %i.bvo = add nsw i32 %i.bvn, %i.bvj
  %gep2218 = getelementptr [2 x i8], ptr %invariant.gep2217, i64 %i.bvi
  %i.bvp = load i16, ptr %gep2218, align 2, !tbaa !184
  %i.bvq = sext i16 %i.bvp to i32
  %i.bvr = sub nsw i32 %i.bvo, %i.bvq
  %..i.i815 = tail call i32 @llvm.smin.i32(i32 %i.bvj, i32 %i.bvn)
  %.20.i.i816 = tail call i32 @llvm.smax.i32(i32 %i.bvj, i32 %i.bvn)
  %i.bvs = tail call i32 @llvm.smin.i32(i32 %i.bvr, i32 %.20.i.i816)
  %i.bvt = tail call noundef i32 @llvm.smax.i32(i32 %i.bvs, i32 %..i.i815)
  %i.bvu = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bvi ; 2 uses
  %i.bvv = load i16, ptr %i.bvu, align 2, !tbaa !184
  %i.bvw = trunc nsw i32 %i.bvt to i16
  %i.bvx = add i16 %i.bvv, %i.bvw                 ; 2 uses
  store i16 %i.bvx, ptr %i.bvu, align 2, !tbaa !184
  %indvars.iv.next.i817 = add nuw nsw i64 %indvars.iv.i814, 1 ; 2 uses
  %exitcond.not.i818 = icmp eq i64 %indvars.iv.next.i817, %wide.trip.count.i812
  br i1 %exitcond.not.i818, label %._crit_edge.i819, label %.lr.ph.split.peel.next.i, !llvm.loop !327

._crit_edge.i819.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.us.split.us.peel.next.i
  br i1 %lcmp.mod2190.not, label %._crit_edge.i819, label %.lr.ph.split.us.split.us.peel.next.i.epil.preheader

.lr.ph.split.us.split.us.peel.next.i.epil.preheader: ; preds = %._crit_edge.i819.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.peel.next.i.preheader
  %store_forwarded2151.epil.init = phi i16 [ %load_initial2150, %.lr.ph.split.us.split.us.peel.next.i.preheader ], [ %i.bvh, %._crit_edge.i819.loopexit.unr-lcssa ]
  %indvars.iv14.i820.epil.init = phi i64 [ 1, %.lr.ph.split.us.split.us.peel.next.i.preheader ], [ %indvars.iv.next15.i821.3, %._crit_edge.i819.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2191)
  br label %.lr.ph.split.us.split.us.peel.next.i.epil

.lr.ph.split.us.split.us.peel.next.i.epil:        ; preds = %.lr.ph.split.us.split.us.peel.next.i.epil, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader
  %store_forwarded2151.epil = phi i16 [ %store_forwarded2151.epil.init, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %i.bwa, %.lr.ph.split.us.split.us.peel.next.i.epil ]
  %indvars.iv14.i820.epil = phi i64 [ %indvars.iv14.i820.epil.init, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %indvars.iv.next15.i821.epil, %.lr.ph.split.us.split.us.peel.next.i.epil ] ; 2 uses
  %epil.iter2189 = phi i64 [ 0, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %epil.iter2189.next, %.lr.ph.split.us.split.us.peel.next.i.epil ]
  %i.bvy = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i820.epil ; 2 uses
  %i.bvz = load i16, ptr %i.bvy, align 2, !tbaa !184
  %i.bwa = add i16 %i.bvz, %store_forwarded2151.epil ; 2 uses
  store i16 %i.bwa, ptr %i.bvy, align 2, !tbaa !184
  %indvars.iv.next15.i821.epil = add nuw nsw i64 %indvars.iv14.i820.epil, 1
  %epil.iter2189.next = add i64 %epil.iter2189, 1 ; 2 uses
  %epil.iter2189.cmp.not = icmp eq i64 %epil.iter2189.next, %xtraiter2188
  br i1 %epil.iter2189.cmp.not, label %._crit_edge.i819, label %.lr.ph.split.us.split.us.peel.next.i.epil, !llvm.loop !328

._crit_edge.i819:                                 ; preds = %.lr.ph.split.peel.next.i, %._crit_edge.i819.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.peel.next.i.epil, %bb.fj, %bb.fi
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %correlate.exit, label %.preheader.i813, !llvm.loop !329

correlate.exit:                                   ; preds = %._crit_edge.i819, %bb.fh, %bb.fg
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 1 ; 2 uses
  %exitcond1219.not = icmp eq i64 %indvars.iv.next1217, 4
  br i1 %exitcond1219.not, label %bb.fk, label %bb.bv, !llvm.loop !330

bb.fk:                                            ; preds = %correlate.exit
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 1 ; 2 uses
  %i.bwb = load i32, ptr %i.kr, align 8, !tbaa !173 ; 6 uses
  %i.bwc = sext i32 %i.bwb to i64
  %i.bwd = icmp slt i64 %indvars.iv.next1221, %i.bwc
  br i1 %i.bwd, label %bb.bu, label %.preheader923, !llvm.loop !331

.split.preheader:                                 ; preds = %.lr.ph1054, %.split1051.us
  %indvars.iv1227 = phi i64 [ %indvars.iv.next1228, %.split1051.us ], [ 0, %.lr.ph1054 ] ; 3 uses
  %4 = getelementptr inbounds nuw [4640 x i8], ptr %i.axq, i64 %indvars.iv1227 ; 8 uses
  %.not575 = icmp ne i64 %indvars.iv1227, 0       ; 4 uses
  %i.bwe = zext i1 %.not575 to i64
  %i.bwf = getelementptr inbounds nuw [1160 x i8], ptr %4, i64 %i.bwe ; 5 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 32
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !178
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8
  %i.bwj = load i32, ptr %i.bwi, align 8, !tbaa !259 ; 2 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwf, i64 12
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !260 ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  %i.bwn = load i32, ptr %i.bwm, align 8, !tbaa !190
  %i.bwo = add nsw i32 %i.bwn, %.val773.fr
  %i.bwp = tail call i32 @llvm.smax.i32(i32 %i.bwo, i32 0)
  %i.bwq = tail call i32 @llvm.umin.i32(i32 %i.bwp, i32 512) ; 2 uses
  %i.bwr = and i32 %i.bwq, 31
  %i.bws = zext nneg i32 %i.bwr to i64
  %i.bwt = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.bws
  %i.bwu = load i8, ptr %i.bwt, align 1, !tbaa !84
  %i.bwv = zext i8 %i.bwu to i32
  %i.bww = lshr i32 %i.bwq, 5
  %i.bwx = shl nuw nsw i32 %i.bwv, %i.bww         ; 3 uses
  %i.bwy = mul nsw i32 %i.bwx, %.val774
  %i.bwz = ashr i32 %i.bwy, 3                     ; 2 uses
  %i.bxa = icmp sgt i32 %i.bwl, 0
  %i.bxb = icmp sgt i32 %i.bwj, 0
  %or.cond4.i = select i1 %i.bxa, i1 %i.bxb, i1 false
  br i1 %or.cond4.i, label %.preheader.preheader.i823, label %.split.1

.preheader.preheader.i823:                        ; preds = %.split.preheader
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwf, i64 4
  %i.bxd = load i32, ptr %i.bxc, align 4, !tbaa !183
  %i.bxe = sext i32 %i.bxd to i64
  %wide.trip.count9.i = zext nneg i32 %i.bwl to i64
  %wide.trip.count.i824 = zext nneg i32 %i.bwj to i64
  br label %.preheader.i825

.preheader.i825:                                  ; preds = %._crit_edge.i833, %.preheader.preheader.i823
  %indvars.iv6.i = phi i64 [ 0, %.preheader.preheader.i823 ], [ %indvars.iv.next7.i, %._crit_edge.i833 ] ; 2 uses
  %i.bxf = mul nsw i64 %indvars.iv6.i, %i.bxe
  %invariant.gep.i826 = getelementptr [2 x i8], ptr %i.bwh, i64 %i.bxf
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fp, %.preheader.i825
  %indvars.iv.i827 = phi i64 [ 0, %.preheader.i825 ], [ %indvars.iv.next.i831, %bb.fp ] ; 2 uses
  %gep.i828 = getelementptr [2 x i8], ptr %invariant.gep.i826, i64 %indvars.iv.i827 ; 2 uses
  %i.bxg = load i16, ptr %gep.i828, align 2, !tbaa !184 ; 3 uses
  %i.bxh = sext i16 %i.bxg to i32                 ; 2 uses
  %i.bxi = icmp slt i16 %i.bxg, 0
  br i1 %i.bxi, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bxj = mul i32 %i.bwx, %i.bxh
  %i.bxk = sub i32 %i.bwz, %i.bxj
  %i.bxl = lshr i32 %i.bxk, 11
  %i.bxm = trunc i32 %i.bxl to i16
  %i.bxn = sub i16 0, %i.bxm
  br label %.sink.split.i

bb.fn:                                            ; preds = %bb.fl
  %.not.i829 = icmp eq i16 %i.bxg, 0
  br i1 %.not.i829, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bxo = mul nuw nsw i32 %i.bwx, %i.bxh
  %i.bxp = add nsw i32 %i.bxo, %i.bwz
  %i.bxq = lshr i32 %i.bxp, 11
  %i.bxr = trunc i32 %i.bxq to i16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.fo, %bb.fm
  %.sink.i830 = phi i16 [ %i.bxr, %bb.fo ], [ %i.bxn, %bb.fm ]
  store i16 %.sink.i830, ptr %gep.i828, align 2, !tbaa !184
  br label %bb.fp

bb.fp:                                            ; preds = %.sink.split.i, %bb.fn
  %indvars.iv.next.i831 = add nuw nsw i64 %indvars.iv.i827, 1 ; 2 uses
  %exitcond.not.i832 = icmp eq i64 %indvars.iv.next.i831, %wide.trip.count.i824
  br i1 %exitcond.not.i832, label %._crit_edge.i833, label %bb.fl, !llvm.loop !332

._crit_edge.i833:                                 ; preds = %bb.fp
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1 ; 2 uses
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next7.i, %wide.trip.count9.i
  br i1 %exitcond10.not.i, label %.split.1, label %.preheader.i825, !llvm.loop !333

.split.1:                                         ; preds = %.split.preheader, %._crit_edge.i833
  %indvars.iv.next1224 = select i1 %.not575, i64 2, i64 1
  %i.bxs = getelementptr inbounds nuw [1160 x i8], ptr %4, i64 %indvars.iv.next1224 ; 5 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 32
  %i.bxu = load ptr, ptr %i.bxt, align 8, !tbaa !178
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxs, i64 8
  %i.bxw = load i32, ptr %i.bxv, align 8, !tbaa !259 ; 2 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxs, i64 12
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !260 ; 2 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxs, i64 16
  %i.bya = load i32, ptr %i.bxz, align 8, !tbaa !190
  %i.byb = add nsw i32 %i.bya, %.val773.fr
  %i.byc = tail call i32 @llvm.smax.i32(i32 %i.byb, i32 0)
  %i.byd = tail call i32 @llvm.umin.i32(i32 %i.byc, i32 512) ; 2 uses
  %i.bye = and i32 %i.byd, 31
  %i.byf = zext nneg i32 %i.bye to i64
  %i.byg = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.byf
  %i.byh = load i8, ptr %i.byg, align 1, !tbaa !84
  %i.byi = zext i8 %i.byh to i32
  %i.byj = lshr i32 %i.byd, 5
  %i.byk = shl nuw nsw i32 %i.byi, %i.byj         ; 3 uses
  %i.byl = mul nsw i32 %i.byk, %.val774
  %i.bym = ashr i32 %i.byl, 3                     ; 2 uses
  %i.byn = icmp sgt i32 %i.bxy, 0
  %i.byo = icmp sgt i32 %i.bxw, 0
  %or.cond4.i.1 = select i1 %i.byn, i1 %i.byo, i1 false
  br i1 %or.cond4.i.1, label %.preheader.preheader.i823.1, label %.split.2

.preheader.preheader.i823.1:                      ; preds = %.split.1
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bxs, i64 4
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !183
  %i.byr = sext i32 %i.byq to i64
  %wide.trip.count9.i.1 = zext nneg i32 %i.bxy to i64
  %wide.trip.count.i824.1 = zext nneg i32 %i.bxw to i64
  br label %.preheader.i825.1

.preheader.i825.1:                                ; preds = %._crit_edge.i833.1, %.preheader.preheader.i823.1
  %indvars.iv6.i.1 = phi i64 [ 0, %.preheader.preheader.i823.1 ], [ %indvars.iv.next7.i.1, %._crit_edge.i833.1 ] ; 2 uses
  %i.bys = mul nsw i64 %indvars.iv6.i.1, %i.byr
  %invariant.gep.i826.1 = getelementptr [2 x i8], ptr %i.bxu, i64 %i.bys
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fu, %.preheader.i825.1
  %indvars.iv.i827.1 = phi i64 [ 0, %.preheader.i825.1 ], [ %indvars.iv.next.i831.1, %bb.fu ] ; 2 uses
  %gep.i828.1 = getelementptr [2 x i8], ptr %invariant.gep.i826.1, i64 %indvars.iv.i827.1 ; 2 uses
  %i.byt = load i16, ptr %gep.i828.1, align 2, !tbaa !184 ; 3 uses
  %i.byu = sext i16 %i.byt to i32                 ; 2 uses
  %i.byv = icmp slt i16 %i.byt, 0
  br i1 %i.byv, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.not.i829.1 = icmp eq i16 %i.byt, 0
  br i1 %.not.i829.1, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.byw = mul nuw nsw i32 %i.byk, %i.byu
  %i.byx = add nsw i32 %i.byw, %i.bym
  %i.byy = lshr i32 %i.byx, 11
  %i.byz = trunc i32 %i.byy to i16
  br label %.sink.split.i.1

bb.ft:                                            ; preds = %bb.fq
  %i.bza = mul i32 %i.byk, %i.byu
  %i.bzb = sub i32 %i.bym, %i.bza
  %i.bzc = lshr i32 %i.bzb, 11
  %i.bzd = trunc i32 %i.bzc to i16
  %i.bze = sub i16 0, %i.bzd
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.ft, %bb.fs
  %.sink.i830.1 = phi i16 [ %i.byz, %bb.fs ], [ %i.bze, %bb.ft ]
  store i16 %.sink.i830.1, ptr %gep.i828.1, align 2, !tbaa !184
  br label %bb.fu

bb.fu:                                            ; preds = %.sink.split.i.1, %bb.fr
  %indvars.iv.next.i831.1 = add nuw nsw i64 %indvars.iv.i827.1, 1 ; 2 uses
  %exitcond.not.i832.1 = icmp eq i64 %indvars.iv.next.i831.1, %wide.trip.count.i824.1
  br i1 %exitcond.not.i832.1, label %._crit_edge.i833.1, label %bb.fq, !llvm.loop !332

._crit_edge.i833.1:                               ; preds = %bb.fu
  %indvars.iv.next7.i.1 = add nuw nsw i64 %indvars.iv6.i.1, 1 ; 2 uses
  %exitcond10.not.i.1 = icmp eq i64 %indvars.iv.next7.i.1, %wide.trip.count9.i.1
  br i1 %exitcond10.not.i.1, label %.split.2, label %.preheader.i825.1, !llvm.loop !333

.split.2:                                         ; preds = %.split.1, %._crit_edge.i833.1
  %indvars.iv.next1224.1 = select i1 %.not575, i64 3, i64 2
  %i.bzf = getelementptr inbounds nuw [1160 x i8], ptr %4, i64 %indvars.iv.next1224.1 ; 5 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 32
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !178
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzf, i64 8
  %i.bzj = load i32, ptr %i.bzi, align 8, !tbaa !259 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzf, i64 12
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !260 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzf, i64 16
  %i.bzn = load i32, ptr %i.bzm, align 8, !tbaa !190
  %i.bzo = add nsw i32 %i.bzn, %.val773.fr
  %i.bzp = tail call i32 @llvm.smax.i32(i32 %i.bzo, i32 0)
  %i.bzq = tail call i32 @llvm.umin.i32(i32 %i.bzp, i32 512) ; 2 uses
  %i.bzr = and i32 %i.bzq, 31
  %i.bzs = zext nneg i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.bzs
  %i.bzu = load i8, ptr %i.bzt, align 1, !tbaa !84
  %i.bzv = zext i8 %i.bzu to i32
  %i.bzw = lshr i32 %i.bzq, 5
  %i.bzx = shl nuw nsw i32 %i.bzv, %i.bzw         ; 3 uses
  %i.bzy = mul nsw i32 %i.bzx, %.val774
  %i.bzz = ashr i32 %i.bzy, 3                     ; 2 uses
  %i.caa = icmp sgt i32 %i.bzl, 0
  %i.cab = icmp sgt i32 %i.bzj, 0
  %or.cond4.i.2 = select i1 %i.caa, i1 %i.cab, i1 false
  br i1 %or.cond4.i.2, label %.preheader.preheader.i823.2, label %dequantize.exit.2

.preheader.preheader.i823.2:                      ; preds = %.split.2
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzf, i64 4
  %i.cad = load i32, ptr %i.cac, align 4, !tbaa !183
  %i.cae = sext i32 %i.cad to i64
  %wide.trip.count9.i.2 = zext nneg i32 %i.bzl to i64
  %wide.trip.count.i824.2 = zext nneg i32 %i.bzj to i64
  br label %.preheader.i825.2

.preheader.i825.2:                                ; preds = %._crit_edge.i833.2, %.preheader.preheader.i823.2
  %indvars.iv6.i.2 = phi i64 [ 0, %.preheader.preheader.i823.2 ], [ %indvars.iv.next7.i.2, %._crit_edge.i833.2 ] ; 2 uses
  %i.caf = mul nsw i64 %indvars.iv6.i.2, %i.cae
  %invariant.gep.i826.2 = getelementptr [2 x i8], ptr %i.bzh, i64 %i.caf
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fz, %.preheader.i825.2
  %indvars.iv.i827.2 = phi i64 [ 0, %.preheader.i825.2 ], [ %indvars.iv.next.i831.2, %bb.fz ] ; 2 uses
  %gep.i828.2 = getelementptr [2 x i8], ptr %invariant.gep.i826.2, i64 %indvars.iv.i827.2 ; 2 uses
  %i.cag = load i16, ptr %gep.i828.2, align 2, !tbaa !184 ; 3 uses
  %i.cah = sext i16 %i.cag to i32                 ; 2 uses
  %i.cai = icmp slt i16 %i.cag, 0
  br i1 %i.cai, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %.not.i829.2 = icmp eq i16 %i.cag, 0
  br i1 %.not.i829.2, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.caj = mul nuw nsw i32 %i.bzx, %i.cah
  %i.cak = add nsw i32 %i.caj, %i.bzz
  %i.cal = lshr i32 %i.cak, 11
  %i.cam = trunc i32 %i.cal to i16
  br label %.sink.split.i.2

bb.fy:                                            ; preds = %bb.fv
  %i.can = mul i32 %i.bzx, %i.cah
  %i.cao = sub i32 %i.bzz, %i.can
  %i.cap = lshr i32 %i.cao, 11
  %i.caq = trunc i32 %i.cap to i16
  %i.car = sub i16 0, %i.caq
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.fy, %bb.fx
  %.sink.i830.2 = phi i16 [ %i.cam, %bb.fx ], [ %i.car, %bb.fy ]
  store i16 %.sink.i830.2, ptr %gep.i828.2, align 2, !tbaa !184
  br label %bb.fz

bb.fz:                                            ; preds = %.sink.split.i.2, %bb.fw
  %indvars.iv.next.i831.2 = add nuw nsw i64 %indvars.iv.i827.2, 1 ; 2 uses
  %exitcond.not.i832.2 = icmp eq i64 %indvars.iv.next.i831.2, %wide.trip.count.i824.2
  br i1 %exitcond.not.i832.2, label %._crit_edge.i833.2, label %bb.fv, !llvm.loop !332

._crit_edge.i833.2:                               ; preds = %bb.fz
  %indvars.iv.next7.i.2 = add nuw nsw i64 %indvars.iv6.i.2, 1 ; 2 uses
  %exitcond10.not.i.2 = icmp eq i64 %indvars.iv.next7.i.2, %wide.trip.count9.i.2
  br i1 %exitcond10.not.i.2, label %dequantize.exit.2, label %.preheader.i825.2, !llvm.loop !333

dequantize.exit.2:                                ; preds = %._crit_edge.i833.2, %.split.2
  br i1 %.not575, label %.split1051.us, label %.split.3

.split.3:                                         ; preds = %dequantize.exit.2
  %i.cas = getelementptr inbounds nuw i8, ptr %4, i64 3512
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !178
  %i.cau = getelementptr inbounds nuw i8, ptr %4, i64 3488
  %i.cav = load i32, ptr %i.cau, align 8, !tbaa !259 ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %4, i64 3492
  %i.cax = load i32, ptr %i.caw, align 4, !tbaa !260 ; 2 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %4, i64 3496
  %i.caz = load i32, ptr %i.cay, align 8, !tbaa !190
  %i.cba = add nsw i32 %i.caz, %.val773.fr
  %i.cbb = tail call i32 @llvm.smax.i32(i32 %i.cba, i32 0)
  %i.cbc = tail call i32 @llvm.umin.i32(i32 %i.cbb, i32 512) ; 2 uses
  %i.cbd = and i32 %i.cbc, 31
  %i.cbe = zext nneg i32 %i.cbd to i64
  %i.cbf = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.cbe
  %i.cbg = load i8, ptr %i.cbf, align 1, !tbaa !84
  %i.cbh = zext i8 %i.cbg to i32
  %i.cbi = lshr i32 %i.cbc, 5
  %i.cbj = shl nuw nsw i32 %i.cbh, %i.cbi         ; 3 uses
  %i.cbk = mul nsw i32 %i.cbj, %.val774
  %i.cbl = ashr i32 %i.cbk, 3                     ; 2 uses
  %i.cbm = icmp sgt i32 %i.cax, 0
  %i.cbn = icmp sgt i32 %i.cav, 0
  %or.cond4.i.3 = select i1 %i.cbm, i1 %i.cbn, i1 false
  br i1 %or.cond4.i.3, label %.preheader.preheader.i823.3, label %.split1051.us

.preheader.preheader.i823.3:                      ; preds = %.split.3
  %i.cbo = getelementptr inbounds nuw i8, ptr %4, i64 3484
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !183
  %i.cbq = sext i32 %i.cbp to i64
  %wide.trip.count9.i.3 = zext nneg i32 %i.cax to i64
  %wide.trip.count.i824.3 = zext nneg i32 %i.cav to i64
  br label %.preheader.i825.3

.preheader.i825.3:                                ; preds = %._crit_edge.i833.3, %.preheader.preheader.i823.3
  %indvars.iv6.i.3 = phi i64 [ 0, %.preheader.preheader.i823.3 ], [ %indvars.iv.next7.i.3, %._crit_edge.i833.3 ] ; 2 uses
  %i.cbr = mul nsw i64 %indvars.iv6.i.3, %i.cbq
  %invariant.gep.i826.3 = getelementptr [2 x i8], ptr %i.cat, i64 %i.cbr
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ge, %.preheader.i825.3
  %indvars.iv.i827.3 = phi i64 [ 0, %.preheader.i825.3 ], [ %indvars.iv.next.i831.3, %bb.ge ] ; 2 uses
  %gep.i828.3 = getelementptr [2 x i8], ptr %invariant.gep.i826.3, i64 %indvars.iv.i827.3 ; 2 uses
  %i.cbs = load i16, ptr %gep.i828.3, align 2, !tbaa !184 ; 3 uses
  %i.cbt = sext i16 %i.cbs to i32                 ; 2 uses
  %i.cbu = icmp slt i16 %i.cbs, 0
  br i1 %i.cbu, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %.not.i829.3 = icmp eq i16 %i.cbs, 0
  br i1 %.not.i829.3, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.cbv = mul nuw nsw i32 %i.cbj, %i.cbt
  %i.cbw = add nsw i32 %i.cbv, %i.cbl
  %i.cbx = lshr i32 %i.cbw, 11
  %i.cby = trunc i32 %i.cbx to i16
  br label %.sink.split.i.3

bb.gd:                                            ; preds = %bb.ga
  %i.cbz = mul i32 %i.cbj, %i.cbt
  %i.cca = sub i32 %i.cbl, %i.cbz
  %i.ccb = lshr i32 %i.cca, 11
  %i.ccc = trunc i32 %i.ccb to i16
  %i.ccd = sub i16 0, %i.ccc
  br label %.sink.split.i.3

.sink.split.i.3:                                  ; preds = %bb.gd, %bb.gc
  %.sink.i830.3 = phi i16 [ %i.cby, %bb.gc ], [ %i.ccd, %bb.gd ]
  store i16 %.sink.i830.3, ptr %gep.i828.3, align 2, !tbaa !184
  br label %bb.ge

bb.ge:                                            ; preds = %.sink.split.i.3, %bb.gb
  %indvars.iv.next.i831.3 = add nuw nsw i64 %indvars.iv.i827.3, 1 ; 2 uses
  %exitcond.not.i832.3 = icmp eq i64 %indvars.iv.next.i831.3, %wide.trip.count.i824.3
  br i1 %exitcond.not.i832.3, label %._crit_edge.i833.3, label %bb.ga, !llvm.loop !332

._crit_edge.i833.3:                               ; preds = %bb.ge
  %indvars.iv.next7.i.3 = add nuw nsw i64 %indvars.iv6.i.3, 1 ; 2 uses
  %exitcond10.not.i.3 = icmp eq i64 %indvars.iv.next7.i.3, %wide.trip.count9.i.3
  br i1 %exitcond10.not.i.3, label %.split1051.us, label %.preheader.i825.3, !llvm.loop !333

.split1051.us:                                    ; preds = %.split.3, %._crit_edge.i833.3, %dequantize.exit.2
  %indvars.iv.next1228 = add nuw nsw i64 %indvars.iv1227, 1 ; 2 uses
  %exitcond1231.not = icmp eq i64 %indvars.iv.next1228, %wide.trip.count1230
  br i1 %exitcond1231.not, label %._crit_edge1055, label %.split.preheader, !llvm.loop !334

._crit_edge1055:                                  ; preds = %.split1051.us, %.lr.ph1054, %bb.bt, %.preheader923
  %.lcssa9411387 = phi i32 [ %i.axm, %bb.bt ], [ %i.bwb, %.preheader923 ], [ %i.bwb, %.lr.ph1054 ], [ %i.bwb, %.split1051.us ]
  %i.cce = load ptr, ptr %i.ky, align 16, !tbaa !182
  %i.ccf = load ptr, ptr %i.kz, align 8, !tbaa !185
  %i.ccg = load i32, ptr %i.la, align 4, !tbaa !78
  tail call void @ff_spatial_idwt(ptr noundef %i.cce, ptr noundef %i.ccf, i32 noundef %i.qx, i32 noundef %i.qz, i32 noundef %i.qx, i32 noundef %i.ccg, i32 noundef %.lcssa9411387) #12
  %i.cch = load i32, ptr %i.en, align 8, !tbaa !142
  %i.cci = icmp eq i32 %i.cch, -128
  %or.cond1115 = select i1 %i.cci, i1 %i.rd, i1 false
  %i.ccj = icmp sgt i32 %i.qx, 0
  %or.cond1116 = select i1 %or.cond1115, i1 %i.ccj, i1 false
  %.pre1298 = load ptr, ptr %i.ky, align 16, !tbaa !182 ; 7 uses
  br i1 %or.cond1116, label %.preheader911.lr.ph.split, label %.loopexit922

.preheader911.lr.ph.split:                        ; preds = %._crit_edge1055
  %i.cck = zext nneg i32 %i.qx to i64             ; 7 uses
  %wide.trip.count1240 = zext nneg i32 %i.qz to i64
  %min.iters.check1596 = icmp ult i32 %i.qx, 4
  %min.iters.check1597 = icmp ult i32 %i.qx, 16
  %i.ccl = and i64 %i.cck, 12
  %n.vec1599 = and i64 %i.cck, 2147483632         ; 4 uses
  %cmp.n1606 = icmp eq i64 %n.vec1599, %i.cck
  %min.epilog.iters.check = icmp eq i64 %i.ccl, 0
  %n.vec1607 = and i64 %i.cck, 2147483644         ; 3 uses
  %cmp.n1611 = icmp eq i64 %n.vec1607, %i.cck
  br label %iter.check

iter.check:                                       ; preds = %.preheader911.lr.ph.split, %._crit_edge1058
  %indvars.iv1237 = phi i64 [ 0, %.preheader911.lr.ph.split ], [ %indvars.iv.next1238, %._crit_edge1058 ] ; 2 uses
  %i.ccm = mul nuw nsw i64 %indvars.iv1237, %i.cck
  %invariant.gep1432 = getelementptr inbounds nuw [2 x i8], ptr %.pre1298, i64 %i.ccm ; 3 uses
  br i1 %min.iters.check1596, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1597, label %vec.epilog.ph, label %vector.body1600

vector.body1600:                                  ; preds = %vector.main.loop.iter.check, %vector.body1600
  %index1601 = phi i64 [ %index.next1604, %vector.body1600 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ccn = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1432, i64 %index1601 ; 3 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 16 ; 2 uses
  %wide.load1602 = load <8 x i16>, ptr %i.ccn, align 2, !tbaa !184
  %wide.load1603 = load <8 x i16>, ptr %i.cco, align 2, !tbaa !184
  %i.ccp = shl <8 x i16> %wide.load1602, splat (i16 4)
  %i.ccq = shl <8 x i16> %wide.load1603, splat (i16 4)
  store <8 x i16> %i.ccp, ptr %i.ccn, align 2, !tbaa !184
  store <8 x i16> %i.ccq, ptr %i.cco, align 2, !tbaa !184
  %index.next1604 = add nuw i64 %index1601, 16    ; 2 uses
  %i.ccr = icmp eq i64 %index.next1604, %n.vec1599
  br i1 %i.ccr, label %middle.block1605, label %vector.body1600, !llvm.loop !335

middle.block1605:                                 ; preds = %vector.body1600
  br i1 %cmp.n1606, label %._crit_edge1058, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1605
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !207

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1599, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1608 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1610, %vec.epilog.vector.body ] ; 2 uses
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1432, i64 %index1608 ; 2 uses
  %wide.load1609 = load <4 x i16>, ptr %i.ccs, align 2, !tbaa !184
  %i.cct = shl <4 x i16> %wide.load1609, splat (i16 4)
  store <4 x i16> %i.cct, ptr %i.ccs, align 2, !tbaa !184
  %index.next1610 = add nuw i64 %index1608, 4     ; 2 uses
  %i.ccu = icmp eq i64 %index.next1610, %n.vec1607
  br i1 %i.ccu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !336

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1611, label %._crit_edge1058, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1232.ph = phi i64 [ 0, %iter.check ], [ %n.vec1599, %vec.epilog.iter.check ], [ %n.vec1607, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %vec.epilog.scalar.ph ], [ %indvars.iv1232.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep1433 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1432, i64 %indvars.iv1232 ; 2 uses
  %i.ccv = load i16, ptr %gep1433, align 2, !tbaa !184
  %i.ccw = shl i16 %i.ccv, 4
  store i16 %i.ccw, ptr %gep1433, align 2, !tbaa !184
  %indvars.iv.next1233 = add nuw nsw i64 %indvars.iv1232, 1 ; 2 uses
  %exitcond1236.not = icmp eq i64 %indvars.iv.next1233, %i.cck
  br i1 %exitcond1236.not, label %._crit_edge1058, label %vec.epilog.scalar.ph, !llvm.loop !337

._crit_edge1058:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block1605
  %indvars.iv.next1238 = add nuw nsw i64 %indvars.iv1237, 1 ; 2 uses
  %exitcond1241.not = icmp eq i64 %indvars.iv.next1238, %wide.trip.count1240
  br i1 %exitcond1241.not, label %.loopexit922, label %iter.check, !llvm.loop !338

.loopexit922:                                     ; preds = %._crit_edge1058, %._crit_edge1055
  %i.ccx = load i32, ptr %i.q, align 4, !tbaa !116
  %i.ccy = load i32, ptr %i.lg, align 8, !tbaa !80
  %i.ccz = shl i32 %i.ccx, %i.ccy                 ; 2 uses
  %.not.i5851074 = icmp slt i32 %i.ccz, 0
  br i1 %.not.i5851074, label %predict_plane.exit586, label %.lr.ph1078

.lr.ph1078:                                       ; preds = %.loopexit922
  %i.cda = trunc nuw nsw i64 %indvars.iv1268 to i32 ; 4 uses
  br label %bb.gf

bb.gf:                                            ; preds = %.lr.ph1078, %predict_slice.exit676
  %.0.i5841075 = phi i32 [ 0, %.lr.ph1078 ], [ %i.czs, %predict_slice.exit676 ] ; 9 uses
  %i.cdb = load i32, ptr %i.o, align 16, !tbaa !117
  %i.cdc = load i32, ptr %i.lg, align 8, !tbaa !80 ; 5 uses
  %i.cdd = shl i32 %i.cdb, %i.cdc                 ; 2 uses
  %i.cde = load i32, ptr %i.q, align 4, !tbaa !116
  %i.cdf = shl i32 %i.cde, %i.cdc
  %i.cdg = lshr i32 16, %i.cdc                    ; 6 uses
  br i1 %i.aob, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.cdh = load i32, ptr %i.kt, align 4, !tbaa !110 ; 3 uses
  %i.cdi = lshr i32 %i.cdg, %i.cdh
  %i.cdj = load i32, ptr %i.ks, align 16, !tbaa !111
  %i.cdk = lshr i32 %i.cdg, %i.cdj
  %i.cdl = add nsw i32 %i.cdh, %i.cdc
  %i.cdm = shl nuw nsw i32 %i.cdg, 1
  %i.cdn = lshr i32 %i.cdm, %i.cdh
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  %i.cdo = shl nuw nsw i32 %i.cdg, 1
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pn.i593.pn.in = phi i32 [ %i.cdl, %bb.gg ], [ %i.cdc, %bb.gh ]
  %i.cdp = phi i32 [ %i.cdi, %bb.gg ], [ %i.cdg, %bb.gh ] ; 4 uses
  %i.cdq = phi i32 [ %i.cdk, %bb.gg ], [ %i.cdg, %bb.gh ] ; 5 uses
  %i.cdr = phi i32 [ %i.cdn, %bb.gg ], [ %i.cdo, %bb.gh ] ; 4 uses
  %.pn.i593.pn = sext i32 %.pn.i593.pn.in to i64
  %.in894 = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i593.pn
  %i.cds = load ptr, ptr %.in894, align 8, !tbaa !109 ; 9 uses
  %i.cdt = load ptr, ptr %i.eo, align 16, !tbaa !144 ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 64
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %i.cdu, i64 %indvars.iv1268
  %i.cdw = load i32, ptr %i.cdv, align 4, !tbaa !93 ; 8 uses
  %i.cdx = getelementptr inbounds nuw [8 x i8], ptr %i.cdt, i64 %indvars.iv1268
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !109 ; 6 uses
  %i.cdz = load i32, ptr %i.qw, align 8, !tbaa !176 ; 14 uses
  %i.cea = load i32, ptr %i.qy, align 4, !tbaa !177 ; 8 uses
  %i.ceb = load i32, ptr %i.lh, align 16, !tbaa !140
  %.not110.i595 = icmp eq i32 %i.ceb, 0
  br i1 %.not110.i595, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.cec = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 524
  %i.cee = load i32, ptr %i.ced, align 4, !tbaa !212
  %i.cef = and i32 %i.cee, 512
  %.not111.i597 = icmp eq i32 %i.cef, 0
  br i1 %.not111.i597, label %.preheader909, label %bb.gk

.preheader909:                                    ; preds = %bb.gj
  %.not112.i5991071 = icmp slt i32 %i.cdd, 0
  br i1 %.not112.i5991071, label %predict_slice.exit676, label %.lr.ph1073

.lr.ph1073:                                       ; preds = %.preheader909
  %i.ceg = lshr i32 %i.cdp, 1                     ; 2 uses
  %i.ceh = mul i32 %i.cdq, %.0.i5841075
  %i.cei = lshr i32 %i.cdq, 1
  %i.cej = sub i32 %i.ceh, %i.cei                 ; 4 uses
  %i.cek = add nsw i32 %.0.i5841075, -1
  %i.cel = icmp sgt i32 %i.cdw, 111
  %i.cem = shl nsw i32 %i.cdw, 4
  %i.cen = select i1 %i.cel, i32 16, i32 %i.cem   ; 2 uses
  %i.ceo = icmp eq i32 %.0.i5841075, 0
  %i.cep = icmp slt i32 %i.cej, 0
  %i.ceq = mul nsw i32 %i.cej, %i.cdr
  %i.cer = sext i32 %i.ceq to i64
  %i.ces = sub nsw i64 0, %i.cer
  %i.cet = tail call i32 @llvm.smin.i32(i32 %i.cej, i32 0)
  %.0239.i.i618 = add i32 %i.cdq, %i.cet          ; 2 uses
  %.0228.i.i619 = tail call i32 @llvm.smax.i32(i32 %i.cej, i32 0) ; 9 uses
  %i.ceu = add i32 %.0228.i.i619, %.0239.i.i618   ; 2 uses
  %i.cev = icmp sgt i32 %i.ceu, %i.cea
  %i.cew = sub nsw i32 %i.cea, %.0228.i.i619
  %spec.select265.i.i621 = select i1 %i.cev, i32 %i.cew, i32 %.0239.i.i618 ; 6 uses
  %i.cex = icmp slt i32 %spec.select265.i.i621, 1
  %i.cey = mul i32 %i.cdz, %.0228.i.i619          ; 2 uses
  %i.cez = mul i32 %.0228.i.i619, %i.cdw          ; 2 uses
  %i.cfa = mul i32 %i.cen, 3
  %i.cfb = sext i32 %i.cfa to i64                 ; 2 uses
  %i.cfc = sext i32 %i.cen to i64                 ; 3 uses
  %i.cfd = sext i32 %i.cdw to i64                 ; 6 uses
  %i.cfe = lshr i32 %i.cdr, 1                     ; 2 uses
  %i.cff = zext nneg i32 %i.cfe to i64            ; 4 uses
  %i.cfg = mul i32 %i.cfe, %i.cdr
  %i.cfh = zext i32 %i.cfg to i64                 ; 5 uses
  %i.cfi = sext i32 %i.cdz to i64                 ; 2 uses
  %i.cfj = sext i32 %spec.select265.i.i621 to i64
  %i.cfk = zext i32 %i.cdr to i64                 ; 2 uses
  %i.cfl = zext i32 %i.cdp to i64                 ; 2 uses
  %i.cfm = zext nneg i32 %i.ceg to i64            ; 2 uses
  %i.cfn = add nuw i32 %i.cdd, 1
  %wide.trip.count1259 = zext i32 %i.cfn to i64
  %.1222.i.i620.idx = select i1 %i.cep, i64 %i.ces, i64 0 ; 7 uses
  %invariant.gep1440 = getelementptr i8, ptr %i.cds, i64 %.1222.i.i620.idx
  %smin = tail call i32 @llvm.smin.i32(i32 %i.cea, i32 %i.ceu)
  %i.cfo = sub i32 %smin, %.0228.i.i619
end_hunk_1
