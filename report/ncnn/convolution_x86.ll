inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.bei = extractelement <2 x i16> %i.bef, i64 1
  store i16 %i.bei, ptr %i.beh, align 2, !tbaa !394
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  br i1 %i.avo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bej = bitcast <2 x float> %i.bdt to <2 x i32>
  %i.bek = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 4
  %i.bel = lshr <2 x i32> %i.bej, splat (i32 16)
  %i.bem = trunc nuw <2 x i32> %i.bel to <2 x i16> ; 2 uses
  %i.ben = extractelement <2 x i16> %i.bem, i64 0
  store i16 %i.ben, ptr %i.bek, align 2, !tbaa !394
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  %i.bep = extractelement <2 x i16> %i.bem, i64 1
  store i16 %i.bep, ptr %i.beo, align 2, !tbaa !394
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.avq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.beq = bitcast <2 x float> %i.bds to <2 x i32>
  %i.ber = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 6
  %i.bes = lshr <2 x i32> %i.beq, splat (i32 16)
  %i.bet = trunc nuw <2 x i32> %i.bes to <2 x i16> ; 2 uses
  %i.beu = extractelement <2 x i16> %i.bet, i64 0
  store i16 %i.beu, ptr %i.ber, align 2, !tbaa !394
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bdw, i64 6
  %i.bew = extractelement <2 x i16> %i.bet, i64 1
  store i16 %i.bew, ptr %i.bev, align 2, !tbaa !394
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bex = getelementptr inbounds [2 x i8], ptr %.05241362.us.i, i64 %i.aob
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.y
  %.1525.us.i = phi ptr [ %.05241362.us.i, %bb.y ], [ %i.bex, %bb.ax ]
  %indvars.iv.next1428.i = add nuw nsw i64 %indvars.iv1427.i, 1 ; 2 uses
  %exitcond1430.not.i = icmp eq i64 %indvars.iv.next1428.i, 4
  br i1 %exitcond1430.not.i, label %bb.az, label %bb.y, !llvm.loop !1773

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next1432.i = add nuw nsw i64 %indvars.iv1431.i, 1 ; 2 uses
  %exitcond1435.not.i = icmp eq i64 %indvars.iv.next1432.i, %wide.trip.count1434.i
  br i1 %exitcond1435.not.i, label %._crit_edge.us1373.i, label %_ZN4ncnn3MatD2Ev.exit559.us.i, !llvm.loop !1774

._crit_edge.us1373.i:                             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next1437.i = add nuw nsw i64 %indvars.iv1436.i, 2 ; 3 uses
  %i.bey = icmp slt i64 %indvars.iv.next1437.i, %invariant.op.i
  br i1 %i.bey, label %bb.w, label %.preheader.loopexit.i, !llvm.loop !1775

.lr.ph1369.split.i:                               ; preds = %.lr.ph1369.i
  %i.bez = add i32 %.0526.lcssa.i, 3
  %smax1422.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated124, i32 %i.bez)
  %reass.sub = sub i32 %smax1422.i, %.0526.lcssa.i
  %i.bfa = and i32 %reass.sub, -2
  %i.bfb = add i32 %.0526.lcssa.i, %i.bfa
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us1373.i
  %i.bfc = trunc nsw i64 %indvars.iv.next1437.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph1369.split.i, %.preheader1337.i
  %.1527.lcssa.i = phi i32 [ %.0526.lcssa.i, %.preheader1337.i ], [ %i.bfb, %.lr.ph1369.split.i ], [ %i.bfc, %.preheader.loopexit.i ] ; 2 uses
  %i.bfd = icmp slt i32 %.1527.lcssa.i, %.sroa.speculated124
  br i1 %i.bfd, label %.lr.ph1395.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bfe = icmp sgt i32 %.sroa.speculated120, 0
  %i.bff = sext i32 %.sroa.speculated120 to i64
  %i.bfg = shl nsw i32 %.sroa.speculated120, 1
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = mul nsw i32 %.sroa.speculated120, 3
  %i.bfj = sext i32 %i.bfi to i64
  %i.bfk = shl nsw i32 %.sroa.speculated120, 2
  %i.bfl = sext i32 %i.bfk to i64
  %i.bfm = mul nsw i32 %.sroa.speculated120, 5
  %i.bfn = sext i32 %i.bfm to i64
  %i.bfo = mul nsw i32 %.sroa.speculated120, 6
  %i.bfp = sext i32 %i.bfo to i64                 ; 30 uses
  %i.bfq = sext i32 %i.dq to i64                  ; 3 uses
  br i1 %i.bfe, label %.lr.ph1395.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.split.us.i:                            ; preds = %.lr.ph1395.i
  %i.bfr = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1776
  %i.bfs = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1776
  %i.bft = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1776
  %i.bfu = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !1776 ; 2 uses
  %factor.op.mul1400.i = mul i64 %i.bfu, %i.bft
  %i.bfv = sext i32 %i.bfr to i64
  %factor.op.mul1391.us.i = mul i64 %i.bfu, %i.bfv
  %i.bfw = sext i32 %.1527.lcssa.i to i64
  %wide.trip.count1450.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.us1398.i, %.lr.ph1395.split.us.i
  %indvars.iv1452.i = phi i64 [ %indvars.iv.next1453.i, %._crit_edge.us1398.i ], [ %i.bfw, %.lr.ph1395.split.us.i ] ; 3 uses
  %.pre1457.i = add nsw i64 %indvars.iv1452.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1397.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bfx = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1457.i
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !39
  br label %.lr.ph.us1397.i

.lr.ph.us1397.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bfz = phi fast float [ %i.bfy, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bga = trunc nsw i64 %indvars.iv1452.i to i32
  %factor.op.mul1388.reass.us.i = mul i32 %factor.op.mul1348.i, %i.bga
  %i.bgb = sext i32 %factor.op.mul1388.reass.us.i to i64
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bgb
  %.reass1401.i = mul i64 %factor.op.mul1400.i, %.pre1457.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %.reass1401.i
  %i.bge = insertelement <4 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgf = insertelement <2 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgg = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgh = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgi = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgj = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1397.i
  %indvars.iv1447.i = phi i64 [ 0, %.lr.ph.us1397.i ], [ %indvars.iv.next1448.i, %bb.du ] ; 3 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %indvars.iv1447.i ; 7 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bff ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfh ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfj ; 2 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfl ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfn ; 2 uses
  %i.bgq = load float, ptr %i.bgl, align 4, !tbaa !39
  %i.bgr = load float, ptr %i.bgm, align 4, !tbaa !39
  %i.bgs = load float, ptr %i.bgn, align 4, !tbaa !39
  %i.bgt = load float, ptr %i.bgk, align 4, !tbaa !39
  %i.bgu = load float, ptr %i.bgp, align 4, !tbaa !39
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfp ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.bfp ; 2 uses
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfp ; 2 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.bfp ; 2 uses
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.bfp ; 2 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.bfp ; 2 uses
  %i.bhb = load float, ptr %i.bgw, align 4, !tbaa !39
  %i.bhc = load float, ptr %i.bgx, align 4, !tbaa !39
  %i.bhd = load float, ptr %i.bgy, align 4, !tbaa !39
  %i.bhe = load float, ptr %i.bgv, align 4, !tbaa !39
  %i.bhf = load float, ptr %i.bha, align 4, !tbaa !39
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bfp ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.bfp ; 2 uses
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bfp ; 2 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bgy, i64 %i.bfp ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bgz, i64 %i.bfp ; 2 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bfp ; 2 uses
  %i.bhm = load float, ptr %i.bhh, align 4, !tbaa !39
  %i.bhn = load float, ptr %i.bhi, align 4, !tbaa !39
  %i.bho = load float, ptr %i.bhj, align 4, !tbaa !39
  %i.bhp = load float, ptr %i.bhg, align 4, !tbaa !39
  %i.bhq = load float, ptr %i.bhl, align 4, !tbaa !39
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bfp ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bfp ; 2 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bfp ; 2 uses
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %i.bfp ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %i.bfp ; 2 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bfp ; 2 uses
  %i.bhx = load float, ptr %i.bhs, align 4, !tbaa !39
  %i.bhy = load float, ptr %i.bht, align 4, !tbaa !39
  %i.bhz = load float, ptr %i.bhu, align 4, !tbaa !39
  %i.bia = load float, ptr %i.bhv, align 4, !tbaa !39
  %i.bib = load float, ptr %i.bhr, align 4, !tbaa !39
  %i.bic = insertelement <4 x float> poison, float %i.bgr, i64 0
  %i.bid = insertelement <4 x float> %i.bic, float %i.bhc, i64 1
  %i.bie = insertelement <4 x float> %i.bid, float %i.bhn, i64 2
  %i.bif = insertelement <4 x float> %i.bie, float %i.bhy, i64 3 ; 2 uses
  %i.big = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bih = insertelement <4 x float> %i.big, float %i.bhb, i64 1
  %i.bii = insertelement <4 x float> %i.bih, float %i.bhm, i64 2
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhx, i64 3 ; 2 uses
  %i.bik = fadd fast <4 x float> %i.bif, %i.bij   ; 3 uses
  %i.bil = insertelement <4 x float> poison, float %i.bgs, i64 0
  %i.bim = insertelement <4 x float> %i.bil, float %i.bhd, i64 1
  %i.bin = insertelement <4 x float> %i.bim, float %i.bho, i64 2
  %i.bio = insertelement <4 x float> %i.bin, float %i.bhz, i64 3 ; 2 uses
  %i.bip = insertelement <4 x float> poison, float %i.bgt, i64 0
  %i.biq = insertelement <4 x float> %i.bip, float %i.bhe, i64 1
  %i.bir = insertelement <4 x float> %i.biq, float %i.bhp, i64 2
  %i.bis = insertelement <4 x float> %i.bir, float %i.bib, i64 3
  %i.bit = fadd fast <4 x float> %i.bis, %i.bik
  %i.biu = load float, ptr %i.bhw, align 4, !tbaa !39
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.bfp ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bhs, i64 %i.bfp ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bfp ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %i.bfp ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %i.bfp ; 2 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bhw, i64 %i.bfp ; 2 uses
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !39 ; 2 uses
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !39 ; 2 uses
  %i.bjd = load float, ptr %i.biy, align 4, !tbaa !39 ; 2 uses
  %i.bje = load float, ptr %i.biz, align 4, !tbaa !39 ; 2 uses
  %i.bjf = load float, ptr %i.biv, align 4, !tbaa !39
  %i.bjg = load float, ptr %i.bja, align 4, !tbaa !39
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.bfp
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.bfp
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.bfp
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.bfp
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bfp
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bfp
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !39 ; 2 uses
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !39 ; 2 uses
  %i.bjp = load float, ptr %i.bjk, align 4, !tbaa !39 ; 2 uses
  %i.bjq = load float, ptr %i.bjl, align 4, !tbaa !39 ; 2 uses
  %i.bjr = load float, ptr %i.bjh, align 4, !tbaa !39
  %i.bjs = load float, ptr %i.bgo, align 4, !tbaa !39
  %i.bjt = fadd fast float %i.bjq, %i.bjp         ; 2 uses
  %i.bju = load float, ptr %i.bgz, align 4, !tbaa !39
  %i.bjv = load float, ptr %i.bhk, align 4, !tbaa !39
  %i.bjw = fadd fast float %i.bjo, %i.bjn         ; 2 uses
  %i.bjx = fadd fast float %i.bjr, %i.bjw
  %i.bjy = insertelement <4 x float> poison, float %i.bjs, i64 0
  %i.bjz = insertelement <4 x float> %i.bjy, float %i.bju, i64 1
  %i.bka = insertelement <4 x float> %i.bjz, float %i.bjv, i64 2
  %i.bkb = insertelement <4 x float> %i.bka, float %i.bia, i64 3 ; 2 uses
  %i.bkc = fadd fast <4 x float> %i.bkb, %i.bio   ; 3 uses
  %i.bkd = fadd fast <4 x float> %i.bit, %i.bkc   ; 4 uses
  %18 = fadd fast float %i.bjc, %i.bjb            ; 2 uses
  %19 = fadd fast float %i.bje, %i.bjd            ; 2 uses
  %20 = fadd fast float %i.bjf, %18
  %21 = fadd fast float %20, %19                  ; 2 uses
  %i.bke = insertelement <4 x float> %i.bik, float %18, i64 0
  %i.bkf = fmul fast <4 x float> %i.bke, splat (float 5.000000e-01)
  %i.bkg = insertelement <4 x float> %i.bkc, float %19, i64 0
  %i.bkh = fmul fast <4 x float> %i.bkg, splat (float 2.000000e+00)
  %i.bki = fadd fast <4 x float> %i.bkh, %i.bkf   ; 4 uses
  %i.bkj = insertelement <4 x float> poison, float %i.bjt, i64 0
  %i.bkk = insertelement <4 x float> poison, float %i.bjx, i64 0
  %i.bkl = fsub fast float %i.bjn, %i.bjo         ; 2 uses
  %i.bkm = fsub fast float %i.bjb, %i.bjc         ; 2 uses
  %i.bkn = fsub fast float %i.bjp, %i.bjq         ; 2 uses
  %i.bko = fsub fast float %i.bjd, %i.bje         ; 2 uses
  %i.bkp = fsub fast <4 x float> %i.bij, %i.bif   ; 3 uses
  %i.bkq = shufflevector <4 x float> %i.bkj, <4 x float> %i.bkp, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bkr = fmul fast <4 x float> %i.bkq, <float 1.000000e+00, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  %i.bks = fsub fast <4 x float> %i.bio, %i.bkb   ; 3 uses
  %i.bkt = shufflevector <4 x float> %i.bkk, <4 x float> %i.bks, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bku = fmul fast <4 x float> %i.bkt, <float 1.000000e+00, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3>
  %i.bkv = fadd fast <4 x float> %i.bku, %i.bkr   ; 4 uses
  %i.bkw = fmul fast <4 x float> %i.bkp, splat (float f0x3EB504F3)
  %i.bkx = fmul fast <4 x float> %i.bks, splat (float f0x403504F3)
  %i.bky = fadd fast <4 x float> %i.bkx, %i.bkw
  %i.bkz = insertelement <4 x float> poison, float %i.bgu, i64 0
  %i.bla = insertelement <4 x float> %i.bkz, float %i.bhf, i64 1
  %i.blb = insertelement <4 x float> %i.bla, float %i.bhq, i64 2
  %i.blc = insertelement <4 x float> %i.blb, float %i.biu, i64 3
  %i.bld = fadd fast <4 x float> %i.bky, %i.blc   ; 4 uses
  %i.ble = fmul fast float %i.bkm, f0x3EB504F3
  %i.blf = fmul fast float %i.bko, f0x403504F3
  %i.blg = fadd fast float %i.blf, %i.ble
  %i.blh = fadd fast float %i.blg, %i.bjg         ; 2 uses
  %i.bli = shufflevector <4 x float> %i.bkp, <4 x float> %i.bik, <4 x i32> <i32 3, i32 poison, i32 poison, i32 4>
  %i.blj = insertelement <4 x float> %i.bli, float %i.bkm, i64 1
  %i.blk = insertelement <4 x float> %i.blj, float %i.bkl, i64 2
  %i.bll = fmul fast <4 x float> %i.blk, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.blm = shufflevector <4 x float> %i.bks, <4 x float> %i.bkc, <4 x i32> <i32 3, i32 poison, i32 poison, i32 4>
  %i.bln = insertelement <4 x float> %i.blm, float %i.bko, i64 1
  %i.blo = insertelement <4 x float> %i.bln, float %i.bkn, i64 2
  %i.blp = fmul fast <4 x float> %i.blo, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.blq = fadd fast <4 x float> %i.blp, %i.bll   ; 4 uses
  %i.blr = fmul fast float %i.bjw, 5.000000e-01
  %i.bls = fmul fast float %i.bjt, 2.000000e+00
  %i.blt = fadd fast float %i.bls, %i.blr
  %i.blu = load float, ptr %i.bjm, align 4, !tbaa !39
  %i.blv = fmul fast float %i.bkl, f0x3EB504F3
  %i.blw = fmul fast float %i.bkn, f0x403504F3
  %i.blx = fadd fast float %i.blw, %i.blv
  %i.bly = fadd fast float %i.blx, %i.blu
  %i.blz = trunc i64 %indvars.iv1447.i to i32
  %i.bma = add i32 %.047134, %i.blz               ; 2 uses
  %i.bmb = sdiv i32 %i.bma, %i.dx
  %i.bmc = srem i32 %i.bma, %i.dx
  %i.bmd = shl nsw i32 %i.bmb, 2                  ; 5 uses
  %i.bme = sext i32 %i.bmd to i64
  %.reass1392.us.i = mul i64 %factor.op.mul1391.us.i, %i.bme
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bgd, i64 %.reass1392.us.i
  %i.bmg = shl nsw i32 %i.bmc, 2                  ; 4 uses
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = getelementptr inbounds [2 x i8], ptr %i.bmf, i64 %i.bmh ; 6 uses
  %i.bmj = or disjoint i32 %i.bmg, 1
  %i.bmk = icmp slt i32 %i.bmj, %i.dq             ; 4 uses
  %i.bml = or disjoint i32 %i.bmg, 2
  %i.bmm = icmp slt i32 %i.bml, %i.dq             ; 4 uses
  %i.bmn = or disjoint i32 %i.bmg, 3
  %i.bmo = icmp slt i32 %i.bmn, %i.dq             ; 4 uses
  %.not553.us.i = icmp slt i32 %i.bmd, %i.dr
  br i1 %.not553.us.i, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.bkd, i64 1 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.bkd, i64 2 ; 2 uses
  %i.bmp = fadd fast float %.sroa.0.8.vec.extract, %.sroa.0.4.vec.extract ; 2 uses
  %i.bmq = fsub fast float %.sroa.0.4.vec.extract, %.sroa.0.8.vec.extract ; 2 uses
  %i.bmr = fmul fast float %i.bmq, f0x3EB504F3
  %i.bms = insertelement <4 x float> %i.bkd, float %i.bmr, i64 1
  %i.bmt = insertelement <4 x float> poison, float %i.bmp, i64 0
  %i.bmu = insertelement <4 x float> %i.bmt, float %i.bmq, i64 1
  %i.bmv = fadd fast <4 x float> %i.bms, %i.bgg
  %i.bmw = shufflevector <4 x float> %i.bmu, <4 x float> %i.bmv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bmx = fmul fast <4 x float> %i.bmw, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bmy = insertelement <4 x float> %i.bge, float %i.bmp, i64 2
  %i.bmz = shufflevector <4 x float> %i.bmy, <4 x float> %i.bkv, <4 x i32> <i32 0, i32 poison, i32 2, i32 4>
  %i.bna = shufflevector <4 x float> %i.bmz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bnb = fadd fast <4 x float> %i.bmx, %i.bna
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.bkd, i64 3 ; 2 uses
  %i.bnc = fsub fast float %.sroa.0.12.vec.extract, %21
  %i.bnd = fadd fast float %21, %.sroa.0.12.vec.extract
  %i.bne = insertelement <2 x float> poison, float %i.bnd, i64 0
  %i.bnf = insertelement <2 x float> %i.bne, float %i.bnc, i64 1
  %i.bng = shufflevector <2 x float> %i.bnf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bnh = fmul fast <4 x float> %i.bng, <float 2.000000e+00, float f0x3FB504F3, float 1.000000e+00, float f0x403504F3>
  %i.bni = fadd fast <4 x float> %i.bnb, %i.bnh   ; 18 uses
  switch i32 %i.dp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i
    i32 6, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.bnj = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bnk = load float, ptr %i.bnj, align 4, !tbaa !39 ; 9 uses
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnj, i64 4
  %i.bnm = load float, ptr %i.bnl, align 4, !tbaa !39 ; 5 uses
  %i.bnn = fneg fast float %i.bnm
  %i.bno = fdiv fast float %i.bnn, %i.bnk         ; 8 uses
  %i.bnp = extractelement <4 x float> %i.bni, i64 2 ; 5 uses
  %i.bnq = fcmp fast olt float %i.bnp, %i.bno
  br i1 %i.bnq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bnr = fdiv fast float 1.000000e+00, %i.bnk
  %i.bns = fadd fast float %i.bno, %i.bnr
  %i.bnt = fcmp fast ogt float %i.bnp, %i.bns
  br i1 %i.bnt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bnu = fmul fast float %i.bnk, %i.bnp
  %i.bnv = fadd fast float %i.bnu, %i.bnm
  %i.bnw = fmul fast float %i.bnv, %i.bnp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %.17021218.us.i = phi float [ %i.bnw, %bb.bf ], [ 0.000000e+00, %bb.bd ], [ %i.bnp, %bb.be ]
  %i.bnx = extractelement <4 x float> %i.bni, i64 1 ; 5 uses
  %i.bny = fcmp fast olt float %i.bnx, %i.bno
  br i1 %i.bny, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bg

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %i.bnz = fdiv fast float 1.000000e+00, %i.bnk
  %i.boa = fadd fast float %i.bno, %i.bnz
  %i.bob = fcmp fast ogt float %i.bnx, %i.boa
  br i1 %i.bob, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.boc = fmul fast float %i.bnk, %i.bnx
  %i.bod = fadd fast float %i.boc, %i.bnm
  %i.boe = fmul fast float %i.bod, %i.bnx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i: ; preds = %bb.bh, %bb.bg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %.17041241.us.i = phi float [ %i.boe, %bb.bh ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i ], [ %i.bnx, %bb.bg ]
  %i.bof = extractelement <4 x float> %i.bni, i64 0 ; 5 uses
  %i.bog = fcmp fast olt float %i.bof, %i.bno
  br i1 %i.bog, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bi

bb.bi:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %i.boh = fdiv fast float 1.000000e+00, %i.bnk
  %i.boi = fadd fast float %i.bno, %i.boh
  %i.boj = fcmp fast ogt float %i.bof, %i.boi
  br i1 %i.boj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bok = fmul fast float %i.bnk, %i.bof
  %i.bol = fadd fast float %i.bok, %i.bnm
  %i.bom = fmul fast float %i.bol, %i.bof
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i: ; preds = %bb.bj, %bb.bi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %.17061277.us.i = phi float [ %i.bom, %bb.bj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i ], [ %i.bof, %bb.bi ]
  %i.bon = extractelement <4 x float> %i.bni, i64 3 ; 4 uses
  %i.boo = fcmp fast olt float %i.bon, %i.bno
  %i.bop = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i, i64 0
  %i.boq = insertelement <4 x float> %i.bop, float %.17041241.us.i, i64 1
  %i.bor = insertelement <4 x float> %i.boq, float %.17021218.us.i, i64 2 ; 3 uses
  br i1 %i.boo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bk

bb.bk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i
  %i.bos = fdiv fast float 1.000000e+00, %i.bnk
  %i.bot = fadd fast float %i.bno, %i.bos
  %i.bou = fcmp fast ogt float %i.bon, %i.bot
  %i.bov = shufflevector <4 x float> %i.bor, <4 x float> %i.bni, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.bou, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bow = fmul fast float %i.bnk, %i.bon
  %i.box = fadd fast float %i.bow, %i.bnm
  %i.boy = fmul fast float %i.box, %i.bon
  %i.boz = insertelement <4 x float> %i.bor, float %i.boy, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i: ; preds = %bb.bc
  %i.bpa = extractelement <4 x float> %i.bni, i64 2
  %i.bpb = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpa)
  %i.bpc = extractelement <4 x float> %i.bni, i64 1
  %i.bpd = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpc)
  %i.bpe = extractelement <4 x float> %i.bni, i64 0
  %i.bpf = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpe)
  %i.bpg = extractelement <4 x float> %i.bni, i64 3
  %i.bph = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpg)
  %i.bpi = fadd fast float %i.bph, 1.000000e+00
  %i.bpj = fadd fast float %i.bpb, 1.000000e+00
  %i.bpk = fadd fast float %i.bpd, 1.000000e+00
  %i.bpl = fadd fast float %i.bpf, 1.000000e+00
  %i.bpm = call fast float @llvm.log.f32(float %i.bpi)
  %i.bpn = call fast float @llvm.log.f32(float %i.bpj)
  %i.bpo = call fast float @llvm.log.f32(float %i.bpk)
  %i.bpp = call fast float @llvm.log.f32(float %i.bpl)
  %i.bpq = call fast float @llvm.tanh.f32(float %i.bpm)
end_hunk_0
