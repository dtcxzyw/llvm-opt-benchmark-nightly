Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  br i1 %i.agz, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader, label %.lr.ph924.new

.lr.ph924.new:                                    ; preds = %.lr.ph924
  %unroll_iter1664 = and i64 %i.agv, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, %.lr.ph924.new
  %.9407923 = phi i64 [ 0, %.lr.ph924.new ], [ %i.aiz, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ] ; 6 uses
  %niter1665 = phi i64 [ 0, %.lr.ph924.new ], [ %niter1665.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ]
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.9407923
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !10
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ahc ; 3 uses
  %i.ahe = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %.9407923 ; 3 uses
  %i.ahf = load float, ptr %i.ahd, align 4, !tbaa !146
  store float %i.ahf, ptr %i.ahe, align 4, !tbaa !146
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !146
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  store float %i.ahh, ptr %i.ahi, align 4, !tbaa !146
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !146
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  store float %i.ahk, ptr %i.ahl, align 4, !tbaa !146
  %i.ahm = or disjoint i64 %.9407923, 1           ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !10
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ahp ; 3 uses
  %i.ahr = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.ahm ; 3 uses
  %i.ahs = load float, ptr %i.ahq, align 4, !tbaa !146
  store float %i.ahs, ptr %i.ahr, align 4, !tbaa !146
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !146
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !146
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !146
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !146
  %i.ahz = or disjoint i64 %.9407923, 2           ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !10
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.aic ; 3 uses
  %i.aie = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.ahz ; 3 uses
  %i.aif = load float, ptr %i.aid, align 4, !tbaa !146
  store float %i.aif, ptr %i.aie, align 4, !tbaa !146
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !146
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store float %i.aih, ptr %i.aii, align 4, !tbaa !146
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !146
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store float %i.aik, ptr %i.ail, align 4, !tbaa !146
  %i.aim = or disjoint i64 %.9407923, 3           ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.aim
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !10
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.aip ; 3 uses
  %i.air = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.aim ; 3 uses
  %i.ais = load float, ptr %i.aiq, align 4, !tbaa !146
  store float %i.ais, ptr %i.air, align 4, !tbaa !146
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !146
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  store float %i.aiu, ptr %i.aiv, align 4, !tbaa !146
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !146
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !146
  %i.aiz = add nuw nsw i64 %.9407923, 4           ; 2 uses
  %niter1665.next.3 = add i64 %niter1665, 4       ; 2 uses
  %niter1665.ncmp.3 = icmp eq i64 %niter1665.next.3, %unroll_iter1664
  br i1 %niter1665.ncmp.3, label %.preheader860.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, !llvm.loop !68

.loopexit861:                                     ; preds = %bb.dj
  %.pre1067 = zext nneg i32 %.pre1065 to i64
  %i.aja = icmp sgt i32 %.pre1065, 0
  br i1 %i.aja, label %.preheader860.preheader, label %.preheader858

.preheader860.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582
  %i.ajb = and i32 %i.agu, 3
  %lcmp.mod1662.not = icmp eq i32 %i.ajb, 0
  br i1 %lcmp.mod1662.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader: ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %.lr.ph924
  %.9407923.epil.init = phi i64 [ 0, %.lr.ph924 ], [ %i.aiz, %.preheader860.preheader.loopexit.unr-lcssa ]
  %i.ajc = and i32 %i.agu, 3
  %lcmp.mod1663 = icmp ne i32 %i.ajc, 0
  call void @llvm.assume(i1 %lcmp.mod1663)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader
  %.9407923.epil = phi i64 [ %.9407923.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %i.ajp, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ] ; 3 uses
  %epil.iter1661 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %epil.iter1661.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.9407923.epil
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !10
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ajf ; 3 uses
  %i.ajh = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %.9407923.epil ; 3 uses
  %i.aji = load float, ptr %i.ajg, align 4, !tbaa !146
  store float %i.aji, ptr %i.ajh, align 4, !tbaa !146
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 4
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !146
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  store float %i.ajk, ptr %i.ajl, align 4, !tbaa !146
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !146
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store float %i.ajn, ptr %i.ajo, align 4, !tbaa !146
  %i.ajp = add nuw nsw i64 %.9407923.epil, 1
  %epil.iter1661.next = add i64 %epil.iter1661, 1 ; 2 uses
  %epil.iter1661.cmp.not = icmp eq i64 %epil.iter1661.next, %xtraiter1660
  br i1 %epil.iter1661.cmp.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, !llvm.loop !69

.preheader860.preheader:                          ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %.loopexit861
  %.01265 = phi ptr [ %i.ox, %.loopexit861 ], [ %i.agt, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.agt, %.preheader860.preheader.loopexit.unr-lcssa ]
  %.pre-phi10681263 = phi i64 [ %.pre1067, %.loopexit861 ], [ %i.agv, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.agv, %.preheader860.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1283 = uitofp nneg i32 %i.xa to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1283
  %i.ajq = fptrunc double %.in to float           ; 12 uses
  %i.ajr = shl nsw i64 %.pre-phi10681263, 2
  %scevgep1429 = getelementptr i8, ptr %i.ih, i64 %i.ajr ; 3 uses
  %i.ajs = getelementptr i8, ptr %i.pf, i64 %i.wt
  %i.ajt = getelementptr i8, ptr %i.pf, i64 %i.wt
  %i.aju = getelementptr i8, ptr %i.ajt, i64 12
  %i.ajv = getelementptr i8, ptr %i.pf, i64 %i.wq
  %i.ajw = getelementptr i8, ptr %i.pf, i64 %i.wq
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 12
  %broadcast.splatinsert1516 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1517 = shufflevector <8 x float> %broadcast.splatinsert1516, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1480 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1481 = shufflevector <8 x float> %broadcast.splatinsert1480, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1442 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1443 = shufflevector <8 x float> %broadcast.splatinsert1442, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader860

.preheader860:                                    ; preds = %.preheader860.preheader, %._crit_edge928.2
  %.1393931 = phi i64 [ %i.aqa, %._crit_edge928.2 ], [ 0, %.preheader860.preheader ] ; 31 uses
  %i.ajy = mul i64 %i.ws, %.1393931               ; 2 uses
  %scevgep1463.a = getelementptr i8, ptr %i.ajs, i64 %i.ajy ; 2 uses
  %scevgep1464.a = getelementptr i8, ptr %i.aju, i64 %i.ajy
  %i.ajz = add nuw i64 %.1393931, 1
  %smax1465 = call i64 @llvm.smax.i64(i64 %.pre-phi10681263, i64 %i.ajz) ; 2 uses
  %i.aka = xor i64 %.1393931, -1
  %i.akb = add i64 %smax1465, %i.aka              ; 2 uses
  %i.akc = mul i64 %i.akb, 12
  %scevgep1466 = getelementptr i8, ptr %scevgep1464.a, i64 %i.akc ; 2 uses
  %i.akd = shl i64 %.1393931, 2
  %i.ake = getelementptr i8, ptr %i.ih, i64 %i.akd
  %scevgep1467 = getelementptr i8, ptr %i.ake, i64 4
  %i.akf = shl i64 %i.akb, 2
  %scevgep1468 = getelementptr i8, ptr %scevgep1467, i64 %i.akf ; 2 uses
  %i.akg = mul i64 %i.ws, %.1393931               ; 2 uses
  %scevgep1425 = getelementptr i8, ptr %i.ajv, i64 %i.akg ; 2 uses
  %scevgep1426 = getelementptr i8, ptr %i.ajx, i64 %i.akg
  %i.akh = add nuw i64 %.1393931, 1
  %smax1427 = call i64 @llvm.smax.i64(i64 %.pre-phi10681263, i64 %i.akh)
  %i.aki = xor i64 %.1393931, -1
  %i.akj = add i64 %smax1427, %i.aki              ; 2 uses
  %i.akk = mul i64 %i.akj, 12
  %scevgep1428 = getelementptr i8, ptr %scevgep1426, i64 %i.akk ; 2 uses
  %i.akl = shl i64 %.1393931, 2
  %i.akm = getelementptr i8, ptr %i.ih, i64 %i.akl
  %scevgep1430 = getelementptr i8, ptr %i.akm, i64 4
  %i.akn = shl i64 %i.akj, 2
  %scevgep1431 = getelementptr i8, ptr %scevgep1430, i64 %i.akn
  %i.ako = mul nuw nsw i64 %.1393931, 3           ; 3 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393931 ; 15 uses
  %i.akq = mul nsw i64 %i.ako, %i.pa
  %i.akr = getelementptr [4 x i8], ptr %i.pf, i64 %i.akq ; 2 uses
  %i.aks = sub i64 %smax1465, %.1393931           ; 3 uses
  %min.iters.check1513 = icmp ult i64 %i.aks, 8
  br i1 %min.iters.check1513, label %scalar.ph1512.preheader, label %vector.memcheck1500

vector.memcheck1500:                              ; preds = %.preheader860
  %i.akt = mul i64 %i.ws, %.1393931               ; 2 uses
  %i.aku = getelementptr i8, ptr %i.pf, i64 %i.akt
  %scevgep1502 = getelementptr i8, ptr %i.aku, i64 12
  %i.akv = add nuw i64 %.1393931, 1
  %smax1503 = call i64 @llvm.smax.i64(i64 %.pre-phi10681263, i64 %i.akv)
  %i.akw = xor i64 %.1393931, -1
  %i.akx = add i64 %smax1503, %i.akw
  %i.aky = mul i64 %i.akx, 12
  %scevgep1504 = getelementptr i8, ptr %scevgep1502, i64 %i.aky ; 2 uses
  %scevgep1501 = getelementptr i8, ptr %i.pf, i64 %i.akt ; 2 uses
  %bound01505 = icmp ult ptr %scevgep1501, %scevgep1429
  %bound11506 = icmp ult ptr %i.ih, %scevgep1504
  %found.conflict1507 = and i1 %bound01505, %bound11506
  %bound01508 = icmp ult ptr %scevgep1501, %scevgep1468
  %bound11509 = icmp ult ptr %i.akp, %scevgep1504
  %found.conflict1510 = and i1 %bound01508, %bound11509
  %conflict.rdx1511 = or i1 %found.conflict1507, %found.conflict1510
  br i1 %conflict.rdx1511, label %scalar.ph1512.preheader, label %vector.ph1514

vector.ph1514:                                    ; preds = %vector.memcheck1500
  %n.vec1515 = and i64 %i.aks, -8                 ; 3 uses
  %i.akz = add i64 %.1393931, %n.vec1515
  %i.ala = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !168 ; 3 uses
  %broadcast.splatinsert1525 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1527 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1529 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splat1530 = shufflevector <8 x float> %broadcast.splatinsert1529, <8 x float> poison, <8 x i32> zeroinitializer
  %42 = shufflevector <8 x float> %broadcast.splatinsert1525, <8 x float> %broadcast.splatinsert1527, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1518

vector.body1518:                                  ; preds = %vector.body1518, %vector.ph1514
  %index1519 = phi i64 [ 0, %vector.ph1514 ], [ %index.next1532.a, %vector.body1518 ] ; 2 uses
  %i.alb = add nuw i64 %.1393931, %index1519      ; 2 uses
  %i.alc = mul nuw nsw i64 %i.alb, 12
  %i.ald = getelementptr i8, ptr %i.akr, i64 %i.alc ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alb
  %wide.vec1520 = load <24 x float>, ptr %i.ald, align 4, !tbaa !146, !alias.scope !169, !noalias !170 ; 3 uses
  %strided.vec1521 = shufflevector <24 x float> %wide.vec1520, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1522 = shufflevector <24 x float> %wide.vec1520, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1523 = shufflevector <24 x float> %wide.vec1520, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.alf = fmul <8 x float> %strided.vec1521, %broadcast.splat1517
  %wide.load1524 = load <8 x float>, ptr %i.ale, align 4, !tbaa !146, !alias.scope !171 ; 3 uses
  %i.alg = fmul <8 x float> %i.alf, %wide.load1524
  %i.alh = fmul <8 x float> %strided.vec1522, %broadcast.splat1517
  %i.ali = fmul <8 x float> %i.alh, %wide.load1524
  %i.alj = fmul <8 x float> %strided.vec1523, %broadcast.splat1517
  %i.alk = fmul <8 x float> %i.alj, %wide.load1524
  %i.all = fmul <8 x float> %i.alk, %broadcast.splat1530
  %43 = shufflevector <8 x float> %i.alg, <8 x float> %i.ali, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %44 = fmul <16 x float> %43, %42
  %i.alm = shufflevector <8 x float> %i.all, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1531 = shufflevector <16 x float> %44, <16 x float> %i.alm, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1531, ptr %i.ald, align 4, !tbaa !146, !alias.scope !169, !noalias !170
  %index.next1532.a = add nuw i64 %index1519, 8   ; 2 uses
  %i.aln = icmp eq i64 %index.next1532.a, %n.vec1515
  br i1 %i.aln, label %middle.block1533.a, label %vector.body1518, !llvm.loop !74

middle.block1533.a:                               ; preds = %vector.body1518
  %cmp.n1534.a = icmp eq i64 %i.aks, %n.vec1515
  br i1 %cmp.n1534.a, label %._crit_edge928, label %scalar.ph1512.preheader

scalar.ph1512.preheader:                          ; preds = %vector.memcheck1500, %.preheader860, %middle.block1533.a
  %.10408926.ph = phi i64 [ %.1393931, %vector.memcheck1500 ], [ %.1393931, %.preheader860 ], [ %i.akz, %middle.block1533.a ]
  br label %scalar.ph1512

.preheader858:                                    ; preds = %._crit_edge928.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader, %.loopexit861
  %.01264 = phi ptr [ %i.agt, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader ], [ %i.ox, %.loopexit861 ], [ %.01265, %._crit_edge928.2 ]
  %i.alo = icmp sgt i32 %i.oy, 0                  ; 8 uses
  br i1 %i.alo, label %.preheader857.preheader, label %._crit_edge937

.preheader857.preheader:                          ; preds = %.preheader858
  %xtraiter1666 = and i64 %i.pa, 3
  %i.alp = icmp ult i32 %i.oz, 4
  br i1 %i.alp, label %.preheader857.epil.preheader, label %.preheader857.preheader.new

.preheader857.preheader.new:                      ; preds = %.preheader857.preheader
  %unroll_iter1670 = and i64 %i.pa, 2147483644
  br label %.preheader857

scalar.ph1512:                                    ; preds = %scalar.ph1512.preheader, %scalar.ph1512
  %.10408926 = phi i64 [ %i.amm, %scalar.ph1512 ], [ %.10408926.ph, %scalar.ph1512.preheader ] ; 3 uses
  %.idx508 = mul nuw nsw i64 %.10408926, 12
  %i.alq = getelementptr i8, ptr %i.akr, i64 %.idx508 ; 4 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926 ; 3 uses
  %i.als = load float, ptr %i.alq, align 4, !tbaa !146
  %i.alt = fmul float %i.als, %i.ajq
  %i.alu = load float, ptr %i.alr, align 4, !tbaa !146
  %i.alv = fmul float %i.alt, %i.alu
  %i.alw = load float, ptr %i.akp, align 4, !tbaa !146
  %i.alx = fmul float %i.alv, %i.alw
  store float %i.alx, ptr %i.alq, align 4, !tbaa !146
  %i.aly = getelementptr i8, ptr %i.alq, i64 4    ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !146
  %i.ama = fmul float %i.alz, %i.ajq
  %i.amb = load float, ptr %i.alr, align 4, !tbaa !146
  %i.amc = fmul float %i.ama, %i.amb
  %i.amd = load float, ptr %i.akp, align 4, !tbaa !146
  %i.ame = fmul float %i.amc, %i.amd
  store float %i.ame, ptr %i.aly, align 4, !tbaa !146
  %i.amf = getelementptr i8, ptr %i.alq, i64 8    ; 2 uses
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !146
  %i.amh = fmul float %i.amg, %i.ajq
  %i.ami = load float, ptr %i.alr, align 4, !tbaa !146
  %i.amj = fmul float %i.amh, %i.ami
  %i.amk = load float, ptr %i.akp, align 4, !tbaa !146
  %i.aml = fmul float %i.amj, %i.amk
  store float %i.aml, ptr %i.amf, align 4, !tbaa !146
  %i.amm = add nuw nsw i64 %.10408926, 1          ; 2 uses
  %i.amn = icmp slt i64 %i.amm, %.pre-phi10681263
  br i1 %i.amn, label %scalar.ph1512, label %._crit_edge928, !llvm.loop !75

._crit_edge928:                                   ; preds = %scalar.ph1512, %middle.block1533.a
  %i.amo = add nuw nsw i64 %i.ako, 1
  %i.amp = mul nsw i64 %i.amo, %i.pa
  %i.amq = getelementptr [4 x i8], ptr %i.pf, i64 %i.amp ; 2 uses
  %i.amr = add nuw i64 %.1393931, 1
  %i.ams = call i64 @llvm.smax.i64(i64 %.pre-phi10681263, i64 %i.amr)
  %i.amt = sub i64 %i.ams, %.1393931              ; 3 uses
  %min.iters.check1477 = icmp ult i64 %i.amt, 8
  br i1 %min.iters.check1477, label %scalar.ph1476.preheader, label %vector.memcheck1462

vector.memcheck1462:                              ; preds = %._crit_edge928
  %bound01469 = icmp ult ptr %scevgep1463.a, %scevgep1429
  %bound11470 = icmp ult ptr %i.ih, %scevgep1466
  %found.conflict1471 = and i1 %bound01469, %bound11470
  %bound01472 = icmp ult ptr %scevgep1463.a, %scevgep1468
  %bound11473 = icmp ult ptr %i.akp, %scevgep1466
  %found.conflict1474 = and i1 %bound01472, %bound11473
  %conflict.rdx1475 = or i1 %found.conflict1471, %found.conflict1474
  br i1 %conflict.rdx1475, label %scalar.ph1476.preheader, label %vector.ph1478

vector.ph1478:                                    ; preds = %vector.memcheck1462
  %n.vec1479 = and i64 %i.amt, -8                 ; 3 uses
  %i.amu = add i64 %.1393931, %n.vec1479
  %i.amv = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !172 ; 3 uses
  %broadcast.splatinsert1489 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splatinsert1491 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splatinsert1493 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splat1494 = shufflevector <8 x float> %broadcast.splatinsert1493, <8 x float> poison, <8 x i32> zeroinitializer
  %45 = shufflevector <8 x float> %broadcast.splatinsert1489, <8 x float> %broadcast.splatinsert1491, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %vector.ph1478
  %index1483 = phi i64 [ 0, %vector.ph1478 ], [ %index.next1496, %vector.body1482 ] ; 2 uses
  %i.amw = add nuw i64 %.1393931, %index1483      ; 2 uses
  %i.amx = mul nuw nsw i64 %i.amw, 12
  %i.amy = getelementptr i8, ptr %i.amq, i64 %i.amx ; 2 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.amw
  %wide.vec1484 = load <24 x float>, ptr %i.amy, align 4, !tbaa !146, !alias.scope !173, !noalias !174 ; 3 uses
  %strided.vec1485 = shufflevector <24 x float> %wide.vec1484, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1486 = shufflevector <24 x float> %wide.vec1484, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1487 = shufflevector <24 x float> %wide.vec1484, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ana = fmul <8 x float> %strided.vec1485, %broadcast.splat1481
  %wide.load1488 = load <8 x float>, ptr %i.amz, align 4, !tbaa !146, !alias.scope !175 ; 3 uses
  %i.anb = fmul <8 x float> %i.ana, %wide.load1488
  %i.anc = fmul <8 x float> %strided.vec1486, %broadcast.splat1481
  %i.and = fmul <8 x float> %i.anc, %wide.load1488
  %i.ane = fmul <8 x float> %strided.vec1487, %broadcast.splat1481
  %i.anf = fmul <8 x float> %i.ane, %wide.load1488
  %i.ang = fmul <8 x float> %i.anf, %broadcast.splat1494
  %46 = shufflevector <8 x float> %i.anb, <8 x float> %i.and, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %47 = fmul <16 x float> %46, %45
  %i.anh = shufflevector <8 x float> %i.ang, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1495 = shufflevector <16 x float> %47, <16 x float> %i.anh, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1495, ptr %i.amy, align 4, !tbaa !146, !alias.scope !173, !noalias !174
  %index.next1496 = add nuw i64 %index1483, 8     ; 2 uses
  %i.ani = icmp eq i64 %index.next1496, %n.vec1479
  br i1 %i.ani, label %middle.block1497, label %vector.body1482, !llvm.loop !80

middle.block1497:                                 ; preds = %vector.body1482
  %cmp.n1498 = icmp eq i64 %i.amt, %n.vec1479
  br i1 %cmp.n1498, label %._crit_edge928.1, label %scalar.ph1476.preheader

scalar.ph1476.preheader:                          ; preds = %vector.memcheck1462, %._crit_edge928, %middle.block1497
  %.10408926.1.ph = phi i64 [ %.1393931, %vector.memcheck1462 ], [ %.1393931, %._crit_edge928 ], [ %i.amu, %middle.block1497 ]
  br label %scalar.ph1476

scalar.ph1476:                                    ; preds = %scalar.ph1476.preheader, %scalar.ph1476
  %.10408926.1 = phi i64 [ %i.aof, %scalar.ph1476 ], [ %.10408926.1.ph, %scalar.ph1476.preheader ] ; 3 uses
  %.idx508.1 = mul nuw nsw i64 %.10408926.1, 12
  %i.anj = getelementptr i8, ptr %i.amq, i64 %.idx508.1 ; 4 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.1 ; 3 uses
  %i.anl = load float, ptr %i.anj, align 4, !tbaa !146
  %i.anm = fmul float %i.anl, %i.ajq
  %i.ann = load float, ptr %i.ank, align 4, !tbaa !146
  %i.ano = fmul float %i.anm, %i.ann
  %i.anp = load float, ptr %i.akp, align 4, !tbaa !146
  %i.anq = fmul float %i.ano, %i.anp
  store float %i.anq, ptr %i.anj, align 4, !tbaa !146
  %i.anr = getelementptr i8, ptr %i.anj, i64 4    ; 2 uses
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !146
  %i.ant = fmul float %i.ans, %i.ajq
  %i.anu = load float, ptr %i.ank, align 4, !tbaa !146
  %i.anv = fmul float %i.ant, %i.anu
  %i.anw = load float, ptr %i.akp, align 4, !tbaa !146
  %i.anx = fmul float %i.anv, %i.anw
  store float %i.anx, ptr %i.anr, align 4, !tbaa !146
  %i.any = getelementptr i8, ptr %i.anj, i64 8    ; 2 uses
  %i.anz = load float, ptr %i.any, align 4, !tbaa !146
  %i.aoa = fmul float %i.anz, %i.ajq
  %i.aob = load float, ptr %i.ank, align 4, !tbaa !146
  %i.aoc = fmul float %i.aoa, %i.aob
  %i.aod = load float, ptr %i.akp, align 4, !tbaa !146
  %i.aoe = fmul float %i.aoc, %i.aod
  store float %i.aoe, ptr %i.any, align 4, !tbaa !146
  %i.aof = add nuw nsw i64 %.10408926.1, 1        ; 2 uses
  %i.aog = icmp slt i64 %i.aof, %.pre-phi10681263
  br i1 %i.aog, label %scalar.ph1476, label %._crit_edge928.1, !llvm.loop !81

._crit_edge928.1:                                 ; preds = %scalar.ph1476, %middle.block1497
  %i.aoh = add nuw nsw i64 %i.ako, 2
  %i.aoi = mul nsw i64 %i.aoh, %i.pa
  %i.aoj = getelementptr [4 x i8], ptr %i.pf, i64 %i.aoi ; 2 uses
  %i.aok = add nuw i64 %.1393931, 1
  %i.aol = call i64 @llvm.smax.i64(i64 %.pre-phi10681263, i64 %i.aok)
  %i.aom = sub i64 %i.aol, %.1393931              ; 3 uses
  %min.iters.check1439 = icmp ult i64 %i.aom, 8
  br i1 %min.iters.check1439, label %scalar.ph1438.preheader, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %._crit_edge928.1
  %bound01432 = icmp ult ptr %scevgep1425, %scevgep1429
  %bound11433 = icmp ult ptr %i.ih, %scevgep1428
  %found.conflict1434 = and i1 %bound01432, %bound11433
  %bound01435 = icmp ult ptr %scevgep1425, %scevgep1431
  %bound11436 = icmp ult ptr %i.akp, %scevgep1428
  %found.conflict1437 = and i1 %bound01435, %bound11436
  %conflict.rdx = or i1 %found.conflict1434, %found.conflict1437
  br i1 %conflict.rdx, label %scalar.ph1438.preheader, label %vector.ph1440

vector.ph1440:                                    ; preds = %vector.memcheck1424
  %n.vec1441 = and i64 %i.aom, -8                 ; 3 uses
  %i.aon = add i64 %.1393931, %n.vec1441
  %i.aoo = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !176 ; 3 uses
  %broadcast.splatinsert1451 = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splatinsert1453 = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splatinsert1455 = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splat1456 = shufflevector <8 x float> %broadcast.splatinsert1455, <8 x float> poison, <8 x i32> zeroinitializer
  %48 = shufflevector <8 x float> %broadcast.splatinsert1451, <8 x float> %broadcast.splatinsert1453, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1440
  %index1445 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1458, %vector.body1444 ] ; 2 uses
  %i.aop = add nuw i64 %.1393931, %index1445      ; 2 uses
  %i.aoq = mul nuw nsw i64 %i.aop, 12
  %i.aor = getelementptr i8, ptr %i.aoj, i64 %i.aoq ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aop
  %wide.vec1446 = load <24 x float>, ptr %i.aor, align 4, !tbaa !146, !alias.scope !177, !noalias !178 ; 3 uses
  %strided.vec1447 = shufflevector <24 x float> %wide.vec1446, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1448 = shufflevector <24 x float> %wide.vec1446, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1449 = shufflevector <24 x float> %wide.vec1446, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aot = fmul <8 x float> %strided.vec1447, %broadcast.splat1443
  %wide.load1450 = load <8 x float>, ptr %i.aos, align 4, !tbaa !146, !alias.scope !179 ; 3 uses
  %i.aou = fmul <8 x float> %i.aot, %wide.load1450
  %i.aov = fmul <8 x float> %strided.vec1448, %broadcast.splat1443
  %i.aow = fmul <8 x float> %i.aov, %wide.load1450
  %i.aox = fmul <8 x float> %strided.vec1449, %broadcast.splat1443
  %i.aoy = fmul <8 x float> %i.aox, %wide.load1450
  %i.aoz = fmul <8 x float> %i.aoy, %broadcast.splat1456
  %49 = shufflevector <8 x float> %i.aou, <8 x float> %i.aow, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %50 = fmul <16 x float> %49, %48
  %i.apa = shufflevector <8 x float> %i.aoz, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1457 = shufflevector <16 x float> %50, <16 x float> %i.apa, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1457, ptr %i.aor, align 4, !tbaa !146, !alias.scope !177, !noalias !178
  %index.next1458 = add nuw i64 %index1445, 8     ; 2 uses
  %i.apb = icmp eq i64 %index.next1458, %n.vec1441
  br i1 %i.apb, label %middle.block1459, label %vector.body1444, !llvm.loop !86

middle.block1459:                                 ; preds = %vector.body1444
  %cmp.n1460 = icmp eq i64 %i.aom, %n.vec1441
  br i1 %cmp.n1460, label %._crit_edge928.2, label %scalar.ph1438.preheader

scalar.ph1438.preheader:                          ; preds = %vector.memcheck1424, %._crit_edge928.1, %middle.block1459
  %.10408926.2.ph = phi i64 [ %.1393931, %vector.memcheck1424 ], [ %.1393931, %._crit_edge928.1 ], [ %i.aon, %middle.block1459 ]
  br label %scalar.ph1438

scalar.ph1438:                                    ; preds = %scalar.ph1438.preheader, %scalar.ph1438
  %.10408926.2 = phi i64 [ %i.apy, %scalar.ph1438 ], [ %.10408926.2.ph, %scalar.ph1438.preheader ] ; 3 uses
  %.idx508.2 = mul nuw nsw i64 %.10408926.2, 12
  %i.apc = getelementptr i8, ptr %i.aoj, i64 %.idx508.2 ; 4 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.2 ; 3 uses
  %i.ape = load float, ptr %i.apc, align 4, !tbaa !146
  %i.apf = fmul float %i.ape, %i.ajq
  %i.apg = load float, ptr %i.apd, align 4, !tbaa !146
  %i.aph = fmul float %i.apf, %i.apg
  %i.api = load float, ptr %i.akp, align 4, !tbaa !146
  %i.apj = fmul float %i.aph, %i.api
  store float %i.apj, ptr %i.apc, align 4, !tbaa !146
  %i.apk = getelementptr i8, ptr %i.apc, i64 4    ; 2 uses
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !146
  %i.apm = fmul float %i.apl, %i.ajq
  %i.apn = load float, ptr %i.apd, align 4, !tbaa !146
  %i.apo = fmul float %i.apm, %i.apn
  %i.app = load float, ptr %i.akp, align 4, !tbaa !146
  %i.apq = fmul float %i.apo, %i.app
  store float %i.apq, ptr %i.apk, align 4, !tbaa !146
  %i.apr = getelementptr i8, ptr %i.apc, i64 8    ; 2 uses
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !146
  %i.apt = fmul float %i.aps, %i.ajq
  %i.apu = load float, ptr %i.apd, align 4, !tbaa !146
  %i.apv = fmul float %i.apt, %i.apu
  %i.apw = load float, ptr %i.akp, align 4, !tbaa !146
  %i.apx = fmul float %i.apv, %i.apw
  store float %i.apx, ptr %i.apr, align 4, !tbaa !146
  %i.apy = add nuw nsw i64 %.10408926.2, 1        ; 2 uses
  %i.apz = icmp slt i64 %i.apy, %.pre-phi10681263
  br i1 %i.apz, label %scalar.ph1438, label %._crit_edge928.2, !llvm.loop !87

._crit_edge928.2:                                 ; preds = %scalar.ph1438, %middle.block1459
  %i.aqa = add nuw nsw i64 %.1393931, 1           ; 2 uses
  %exitcond1032.not = icmp eq i64 %i.aqa, %.pre-phi10681263
  br i1 %exitcond1032.not, label %.preheader858, label %.preheader860, !llvm.loop !88

.preheader857:                                    ; preds = %bb.dr, %.preheader857.preheader.new
  %.2394933 = phi i64 [ 0, %.preheader857.preheader.new ], [ %i.arr, %bb.dr ] ; 7 uses
  %niter1671 = phi i64 [ 0, %.preheader857.preheader.new ], [ %niter1671.next.3, %bb.dr ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933
  %i.aqb = mul nuw nsw i64 %.2394933, %i.pa
  %i.aqc = getelementptr [4 x i8], ptr %i.pf, i64 %i.aqb
  br label %bb.dn

.lr.ph936.unr-lcssa:                              ; preds = %bb.dr
  %i.aqd = and i32 %i.oz, 3
  %lcmp.mod1668.not = icmp eq i32 %i.aqd, 0
  br i1 %lcmp.mod1668.not, label %.lr.ph936, label %.preheader857.epil.preheader

.preheader857.epil.preheader:                     ; preds = %.lr.ph936.unr-lcssa, %.preheader857.preheader
  %.2394933.epil.init = phi i64 [ 0, %.preheader857.preheader ], [ %i.arr, %.lr.ph936.unr-lcssa ]
  %i.aqe = and i32 %i.oz, 3
  %lcmp.mod1669 = icmp ne i32 %i.aqe, 0
  call void @llvm.assume(i1 %lcmp.mod1669)
  br label %.preheader857.epil

.preheader857.epil:                               ; preds = %bb.dm, %.preheader857.epil.preheader
  %.2394933.epil = phi i64 [ %i.aqm, %bb.dm ], [ %.2394933.epil.init, %.preheader857.epil.preheader ] ; 4 uses
  %epil.iter1667 = phi i64 [ %epil.iter1667.next, %bb.dm ], [ 0, %.preheader857.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933.epil
  %i.aqf = mul nuw nsw i64 %.2394933.epil, %i.pa
  %i.aqg = getelementptr [4 x i8], ptr %i.pf, i64 %i.aqf
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.preheader857.epil
  %.11409932.epil = phi i64 [ %.2394933.epil, %.preheader857.epil ], [ %i.aqk, %bb.dl ] ; 3 uses
  %i.aqh = getelementptr [4 x i8], ptr %i.aqg, i64 %.11409932.epil
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !146
  %i.aqj = mul nuw nsw i64 %.11409932.epil, %i.pa
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.aqj
  store float %i.aqi, ptr %gep.epil, align 4, !tbaa !146
  %i.aqk = add nuw nsw i64 %.11409932.epil, 1     ; 2 uses
  %i.aql = icmp slt i64 %i.aqk, %i.pa
  br i1 %i.aql, label %bb.dl, label %bb.dm, !llvm.loop !89

bb.dm:                                            ; preds = %bb.dl
  %i.aqm = add nuw nsw i64 %.2394933.epil, 1
  %epil.iter1667.next = add i64 %epil.iter1667, 1 ; 2 uses
  %epil.iter1667.cmp.not = icmp eq i64 %epil.iter1667.next, %xtraiter1666
  br i1 %epil.iter1667.cmp.not, label %.lr.ph936, label %.preheader857.epil, !llvm.loop !90

.lr.ph936:                                        ; preds = %bb.dm, %.lr.ph936.unr-lcssa
  %.12410507 = add nuw nsw i64 %i.pa, 1           ; 9 uses
  %xtraiter1673 = and i64 %i.pa, 7
  %i.aqn = icmp ult i32 %i.oz, 8
  br i1 %i.aqn, label %.epil.preheader1672, label %.lr.ph936.new

.lr.ph936.new:                                    ; preds = %.lr.ph936
  %unroll_iter1678 = and i64 %i.pa, 2147483640
  br label %bb.ds

bb.dn:                                            ; preds = %.preheader857, %bb.dn
  %.11409932 = phi i64 [ %.2394933, %.preheader857 ], [ %i.aqr, %bb.dn ] ; 3 uses
  %i.aqo = getelementptr [4 x i8], ptr %i.aqc, i64 %.11409932
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !146
  %i.aqq = mul nuw nsw i64 %.11409932, %i.pa
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aqq
  store float %i.aqp, ptr %gep, align 4, !tbaa !146
  %i.aqr = add nuw nsw i64 %.11409932, 1          ; 2 uses
  %i.aqs = icmp slt i64 %i.aqr, %i.pa
  br i1 %i.aqs, label %bb.dn, label %.preheader857.1, !llvm.loop !89

.preheader857.1:                                  ; preds = %bb.dn
  %i.aqt = or disjoint i64 %.2394933, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.pf, i64 %i.aqt
  %i.aqu = mul nuw nsw i64 %i.aqt, %i.pa
  %i.aqv = getelementptr [4 x i8], ptr %i.pf, i64 %i.aqu
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.preheader857.1
  %.11409932.1 = phi i64 [ %i.aqt, %.preheader857.1 ], [ %i.aqz, %bb.do ] ; 3 uses
  %i.aqw = getelementptr [4 x i8], ptr %i.aqv, i64 %.11409932.1
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !146
  %i.aqy = mul nuw nsw i64 %.11409932.1, %i.pa
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aqy
  store float %i.aqx, ptr %gep.1, align 4, !tbaa !146
  %i.aqz = add nuw nsw i64 %.11409932.1, 1        ; 2 uses
  %i.ara = icmp slt i64 %i.aqz, %i.pa
  br i1 %i.ara, label %bb.do, label %.preheader857.2, !llvm.loop !89

.preheader857.2:                                  ; preds = %bb.do
  %i.arb = or disjoint i64 %.2394933, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.pf, i64 %i.arb
  %i.arc = mul nuw nsw i64 %i.arb, %i.pa
  %i.ard = getelementptr [4 x i8], ptr %i.pf, i64 %i.arc
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.preheader857.2
  %.11409932.2 = phi i64 [ %i.arb, %.preheader857.2 ], [ %i.arh, %bb.dp ] ; 3 uses
  %i.are = getelementptr [4 x i8], ptr %i.ard, i64 %.11409932.2
  %i.arf = load float, ptr %i.are, align 4, !tbaa !146
  %i.arg = mul nuw nsw i64 %.11409932.2, %i.pa
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.arg
  store float %i.arf, ptr %gep.2, align 4, !tbaa !146
  %i.arh = add nuw nsw i64 %.11409932.2, 1        ; 2 uses
  %i.ari = icmp slt i64 %i.arh, %i.pa
  br i1 %i.ari, label %bb.dp, label %.preheader857.3, !llvm.loop !89

.preheader857.3:                                  ; preds = %bb.dp
  %i.arj = or disjoint i64 %.2394933, 3           ; 3 uses
  %invariant.gep.3 = getelementptr [4 x i8], ptr %i.pf, i64 %i.arj
  %i.ark = mul nuw nsw i64 %i.arj, %i.pa
  %i.arl = getelementptr [4 x i8], ptr %i.pf, i64 %i.ark
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader857.3
  %.11409932.3 = phi i64 [ %i.arj, %.preheader857.3 ], [ %i.arp, %bb.dq ] ; 3 uses
  %i.arm = getelementptr [4 x i8], ptr %i.arl, i64 %.11409932.3
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !146
  %i.aro = mul nuw nsw i64 %.11409932.3, %i.pa
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.aro
  store float %i.arn, ptr %gep.3, align 4, !tbaa !146
  %i.arp = add nuw nsw i64 %.11409932.3, 1        ; 2 uses
  %i.arq = icmp slt i64 %i.arp, %i.pa
  br i1 %i.arq, label %bb.dq, label %bb.dr, !llvm.loop !89

bb.dr:                                            ; preds = %bb.dq
  %i.arr = add nuw nsw i64 %.2394933, 4           ; 2 uses
  %niter1671.next.3 = add i64 %niter1671, 4       ; 2 uses
  %niter1671.ncmp.3 = icmp eq i64 %niter1671.next.3, %unroll_iter1670
  br i1 %niter1671.ncmp.3, label %.lr.ph936.unr-lcssa, label %.preheader857, !llvm.loop !91

bb.ds:                                            ; preds = %bb.ds, %.lr.ph936.new
  %.12410935 = phi i64 [ 0, %.lr.ph936.new ], [ %i.atf, %bb.ds ] ; 9 uses
  %.0435934 = phi float [ 0.000000e+00, %.lr.ph936.new ], [ %i.ate, %bb.ds ]
  %niter1679 = phi i64 [ 0, %.lr.ph936.new ], [ %niter1679.next.7, %bb.ds ]
  %i.ars = mul i64 %.12410935, %.12410507
  %i.art = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.ars
  %i.aru = load float, ptr %i.art, align 4, !tbaa !146
  %i.arv = fadd float %.0435934, %i.aru
  %i.arw = or disjoint i64 %.12410935, 1
  %i.arx = mul i64 %i.arw, %.12410507
  %i.ary = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.arx
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !146
  %i.asa = fadd float %i.arv, %i.arz
  %i.asb = or disjoint i64 %.12410935, 2
  %i.asc = mul i64 %i.asb, %.12410507
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.asc
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !146
  %i.asf = fadd float %i.asa, %i.ase
  %i.asg = or disjoint i64 %.12410935, 3
  %i.ash = mul i64 %i.asg, %.12410507
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.ash
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !146
  %i.ask = fadd float %i.asf, %i.asj
end_hunk_0
