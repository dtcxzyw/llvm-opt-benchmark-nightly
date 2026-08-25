Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnniint8?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.age = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afw, <16 x i8> %i.agd, <16 x i8> %i.afz)
  %i.agf = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 32
  %i.agg = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 8
  %i.agh = load <16 x i8>, ptr %i.agf, align 1, !tbaa !17
  %i.agi = load float, ptr %i.agg, align 1, !tbaa !17
  %i.agj = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agk = bitcast <4 x float> %i.agj to <16 x i8>
  %i.agl = shufflevector <16 x i8> %i.agk, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agm = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.age, <16 x i8> %i.agl, <16 x i8> %i.agh)
  %i.agn = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 48
  %i.ago = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 12
  %i.agp = load <16 x i8>, ptr %i.agn, align 1, !tbaa !17
  %i.agq = load float, ptr %i.ago, align 1, !tbaa !17
  %i.agr = insertelement <4 x float> poison, float %i.agq, i64 0
  %i.ags = bitcast <4 x float> %i.agr to <16 x i8>
  %i.agt = shufflevector <16 x i8> %i.ags, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agu = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.agm, <16 x i8> %i.agt, <16 x i8> %i.agp) ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 64 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 16 ; 2 uses
  %niter1985.next.3 = add nuw nsw i32 %niter1985, 4 ; 2 uses
  %niter1985.ncmp.3.not = icmp eq i32 %niter1985.next.3, %unroll_iter1984
  br i1 %niter1985.ncmp.3.not, label %.preheader399.loopexit.i.unr-lcssa, label %.lr.ph794.i, !llvm.loop !325

.preheader398.i:                                  ; preds = %.lr.ph802.i, %.preheader399.i
  %.lcssa471.i = phi <4 x i32> [ %.lcssa470.i, %.preheader399.i ], [ %i.ahw, %.lr.ph802.i ] ; 3 uses
  %.11234.lcssa.i = phi i32 [ %.01233.lcssa.i, %.preheader399.i ], [ %i.ahz, %.lr.ph802.i ] ; 5 uses
  %.11231.lcssa.i = phi ptr [ %.01230.lcssa.i, %.preheader399.i ], [ %i.ahx, %.lr.ph802.i ] ; 3 uses
  %.141143.lcssa.i = phi ptr [ %.131142.lcssa.i, %.preheader399.i ], [ %i.ahy, %.lr.ph802.i ] ; 4 uses
  %i.agx = icmp slt i32 %.11234.lcssa.i, %8
  br i1 %i.agx, label %.lr.ph810.i.preheader, label %._crit_edge811.i

.lr.ph810.i.preheader:                            ; preds = %.preheader398.i
  %i.agy = sub i32 %8, %.11234.lcssa.i
  %.neg2044 = add i32 %.11234.lcssa.i, 1
  %xtraiter1986 = and i32 %i.agy, 1
  %lcmp.mod1987.not = icmp eq i32 %xtraiter1986, 0
  br i1 %lcmp.mod1987.not, label %.lr.ph810.i.prol.loopexit, label %.lr.ph810.i.prol

.lr.ph810.i.prol:                                 ; preds = %.lr.ph810.i.preheader
  %i.agz = load <8 x i8>, ptr %.11231.lcssa.i, align 1, !tbaa !17
  %i.aha = load i8, ptr %.141143.lcssa.i, align 1, !tbaa !17
  %i.ahb = sext i8 %i.aha to i16
  %i.ahc = insertelement <8 x i16> poison, i16 %i.ahb, i64 0
  %i.ahd = shufflevector <8 x i16> %i.ahc, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ahe = sext <8 x i8> %i.agz to <8 x i16>      ; 2 uses
  %i.ahf = mul <8 x i16> %i.ahd, %i.ahe
  %i.ahg = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ahe, <8 x i16> %i.ahd)
  %i.ahh = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahi = bitcast <8 x i16> %i.ahh to <4 x i32>
  %i.ahj = add <4 x i32> %.lcssa471.i, %i.ahi     ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.11231.lcssa.i, i64 4
  %i.ahl = getelementptr inbounds nuw i8, ptr %.141143.lcssa.i, i64 1 ; 2 uses
  %i.ahm = add nuw nsw i32 %.11234.lcssa.i, 1
  br label %.lr.ph810.i.prol.loopexit

.lr.ph810.i.prol.loopexit:                        ; preds = %.lr.ph810.i.prol, %.lr.ph810.i.preheader
  %.lcssa1854.unr = phi <4 x i32> [ poison, %.lr.ph810.i.preheader ], [ %i.ahj, %.lr.ph810.i.prol ]
  %.lcssa1853.unr = phi ptr [ poison, %.lr.ph810.i.preheader ], [ %i.ahl, %.lr.ph810.i.prol ]
  %.151144809.i.unr = phi ptr [ %.141143.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahl, %.lr.ph810.i.prol ]
  %.21232808.i.unr = phi ptr [ %.11231.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahk, %.lr.ph810.i.prol ]
  %.21235807.i.unr = phi i32 [ %.11234.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahm, %.lr.ph810.i.prol ]
  %.unr1988 = phi <4 x i32> [ %.lcssa471.i, %.lr.ph810.i.preheader ], [ %i.ahj, %.lr.ph810.i.prol ]
  %i.ahn = icmp eq i32 %8, %.neg2044
  br i1 %i.ahn, label %._crit_edge811.i, label %.lr.ph810.i

.lr.ph802.i:                                      ; preds = %.preheader399.i, %.lr.ph802.i
  %.141143801.i = phi ptr [ %i.ahy, %.lr.ph802.i ], [ %.131142.lcssa.i, %.preheader399.i ] ; 2 uses
  %.11231800.i = phi ptr [ %i.ahx, %.lr.ph802.i ], [ %.01230.lcssa.i, %.preheader399.i ] ; 2 uses
  %.11234799.i = phi i32 [ %i.ahz, %.lr.ph802.i ], [ %.01233.lcssa.i, %.preheader399.i ]
  %i.aho = phi <4 x i32> [ %i.ahw, %.lr.ph802.i ], [ %.lcssa470.i, %.preheader399.i ]
  %i.ahp = load <8 x i8>, ptr %.11231800.i, align 1, !tbaa !17
  %i.ahq = load i16, ptr %.141143801.i, align 2, !tbaa !301
  %i.ahr = insertelement <8 x i16> poison, i16 %i.ahq, i64 0
  %i.ahs = sext <8 x i8> %i.ahp to <8 x i16>
  %i.aht = bitcast <8 x i16> %i.ahr to <16 x i8>
  %i.ahu = shufflevector <16 x i8> %i.aht, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahv = sext <8 x i8> %i.ahu to <8 x i16>
  %i.ahw = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.aho, <8 x i16> %i.ahs, <8 x i16> %i.ahv) ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.11231800.i, i64 8 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.141143801.i, i64 2 ; 2 uses
  %i.ahz = add nuw nsw i32 %.11234799.i, 2        ; 3 uses
  %i.aia = or disjoint i32 %i.ahz, 1
  %i.aib = icmp slt i32 %i.aia, %8
  br i1 %i.aib, label %.lr.ph802.i, label %.preheader398.i, !llvm.loop !326

.lr.ph810.i:                                      ; preds = %.lr.ph810.i.prol.loopexit, %.lr.ph810.i
  %.151144809.i = phi ptr [ %i.ajc, %.lr.ph810.i ], [ %.151144809.i.unr, %.lr.ph810.i.prol.loopexit ] ; 3 uses
  %.21232808.i = phi ptr [ %i.ajb, %.lr.ph810.i ], [ %.21232808.i.unr, %.lr.ph810.i.prol.loopexit ] ; 3 uses
  %.21235807.i = phi i32 [ %i.ajd, %.lr.ph810.i ], [ %.21235807.i.unr, %.lr.ph810.i.prol.loopexit ]
  %i.aic = phi <4 x i32> [ %i.aja, %.lr.ph810.i ], [ %.unr1988, %.lr.ph810.i.prol.loopexit ]
  %i.aid = load <8 x i8>, ptr %.21232808.i, align 1, !tbaa !17
  %i.aie = load i8, ptr %.151144809.i, align 1, !tbaa !17
  %i.aif = sext i8 %i.aie to i16
  %i.aig = insertelement <8 x i16> poison, i16 %i.aif, i64 0
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aii = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aij = mul <8 x i16> %i.aih, %i.aii
  %i.aik = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aii, <8 x i16> %i.aih)
  %i.ail = shufflevector <8 x i16> %i.aij, <8 x i16> %i.aik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aim = bitcast <8 x i16> %i.ail to <4 x i32>
  %i.ain = add <4 x i32> %i.aic, %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %.21232808.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.151144809.i, i64 1
  %i.aiq = load <8 x i8>, ptr %i.aio, align 1, !tbaa !17
  %i.air = load i8, ptr %i.aip, align 1, !tbaa !17
  %i.ais = sext i8 %i.air to i16
  %i.ait = insertelement <8 x i16> poison, i16 %i.ais, i64 0
  %i.aiu = shufflevector <8 x i16> %i.ait, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aiv = sext <8 x i8> %i.aiq to <8 x i16>      ; 2 uses
  %i.aiw = mul <8 x i16> %i.aiu, %i.aiv
  %i.aix = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aiv, <8 x i16> %i.aiu)
  %i.aiy = shufflevector <8 x i16> %i.aiw, <8 x i16> %i.aix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiz = bitcast <8 x i16> %i.aiy to <4 x i32>
  %i.aja = add <4 x i32> %i.ain, %i.aiz           ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.21232808.i, i64 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %.151144809.i, i64 2 ; 2 uses
  %i.ajd = add nuw nsw i32 %.21235807.i, 2        ; 2 uses
  %exitcond1463.not.i.1 = icmp eq i32 %i.ajd, %8
  br i1 %exitcond1463.not.i.1, label %._crit_edge811.i, label %.lr.ph810.i, !llvm.loop !327

._crit_edge811.i:                                 ; preds = %.lr.ph810.i.prol.loopexit, %.lr.ph810.i, %.preheader398.i
  %.lcssa472.i = phi <4 x i32> [ %.lcssa471.i, %.preheader398.i ], [ %.lcssa1854.unr, %.lr.ph810.i.prol.loopexit ], [ %i.aja, %.lr.ph810.i ]
  %.151144.lcssa.i = phi ptr [ %.141143.lcssa.i, %.preheader398.i ], [ %.lcssa1853.unr, %.lr.ph810.i.prol.loopexit ], [ %i.ajc, %.lr.ph810.i ]
  store <4 x i32> %.lcssa472.i, ptr %.9816.i, align 16, !tbaa !17
  %i.aje = getelementptr inbounds nuw i8, ptr %.9816.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.31211814.i, 1        ; 2 uses
  %exitcond1464.not.i = icmp eq i32 %i.ajf, %6
  br i1 %exitcond1464.not.i, label %._crit_edge818.i, label %.lr.ph817.i, !llvm.loop !328

._crit_edge818.i:                                 ; preds = %._crit_edge811.i, %.preheader406.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader406.i ], [ %i.aje, %._crit_edge811.i ] ; 2 uses
  %i.ajg = getelementptr inbounds i8, ptr %.11068822.i, i64 %i.ad ; 2 uses
  %i.ajh = add nuw nsw i32 %.11076820.i, 4        ; 3 uses
  %i.aji = or disjoint i32 %i.ajh, 3
  %i.ajj = icmp slt i32 %i.aji, %4
  %scevgep1459.i = getelementptr i8, ptr %indvars.iv1458.i, i64 %i.ad
  br i1 %i.ajj, label %.preheader409.i, label %.preheader397.i, !llvm.loop !329

.preheader396.i:                                  ; preds = %._crit_edge983.i, %.preheader396.lr.ph.i
  %indvars.iv1469.i = phi ptr [ %scevgep1468.i, %.preheader396.lr.ph.i ], [ %scevgep1470.i, %._crit_edge983.i ] ; 4 uses
  %.21069987.i = phi ptr [ %.11068.lcssa.i, %.preheader396.lr.ph.i ], [ %i.cux, %._crit_edge983.i ] ; 42 uses
  %.10986.i = phi ptr [ %.5.lcssa.i, %.preheader396.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge983.i ] ; 2 uses
  %.21077985.i = phi i32 [ %.11076.lcssa.i, %.preheader396.lr.ph.i ], [ %i.cuy, %._crit_edge983.i ]
  br i1 %i.sr, label %.lr.ph856.i, label %.preheader395.i

.preheader384.i:                                  ; preds = %._crit_edge983.i, %.preheader397.i
  %.21077.lcssa.i = phi i32 [ %.11076.lcssa.i, %.preheader397.i ], [ %i.cuy, %._crit_edge983.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader397.i ], [ %.14.lcssa.i, %._crit_edge983.i ]
  %.21069.lcssa.i = phi ptr [ %.11068.lcssa.i, %.preheader397.i ], [ %i.cux, %._crit_edge983.i ] ; 2 uses
  %i.ajk = icmp slt i32 %.21077.lcssa.i, %4
  br i1 %i.ajk, label %.preheader383.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader383.lr.ph.i:                            ; preds = %.preheader384.i
  %i.ajl = icmp sgt i32 %6, 7
  %i.ajm = icmp eq i32 %7, 0                      ; 4 uses
  %i.ajn = icmp sgt i32 %8, 3                     ; 4 uses
  %i.ajo = sext i32 %8 to i64                     ; 2 uses
  %i.ajp = add i32 %8, -4                         ; 5 uses
  %i.ajq = and i32 %i.ajp, -4
  %i.ajr = add i32 %i.ajq, 4                      ; 4 uses
  %i.ajs = and i32 %6, -8
  %i.ajt = zext i32 %i.ajp to i64                 ; 3 uses
  %i.aju = lshr i64 %i.ajt, 2                     ; 4 uses
  %i.ajv = shl nuw nsw i64 %i.aju, 4
  %i.ajw = and i64 %i.ajt, 4294967292
  %i.ajx = add nuw nsw i64 %i.ajw, 4              ; 2 uses
  %scevgep1479.i = getelementptr i8, ptr %.21069.lcssa.i, i64 %i.ajx
  %i.ajy = shl nuw nsw i64 %i.aju, 3
  %i.ajz = shl nuw nsw i64 %i.aju, 5
  %i.aka = add i32 %8, -2
  %i.akb = add nuw nsw i64 %i.aju, 1              ; 5 uses
  %i.akc = add i32 %8, -4                         ; 3 uses
  %i.akd = lshr i32 %i.akc, 2
  %i.ake = add nuw nsw i32 %i.akd, 1              ; 4 uses
  %xtraiter2018 = and i32 %i.ake, 3               ; 3 uses
  %i.akf = icmp ult i32 %i.akc, 12
  %unroll_iter2026 = and i32 %i.ake, 2147483644
  %lcmp.mod2022.not = icmp eq i32 %xtraiter2018, 0
  %lcmp.mod2025 = icmp ne i32 %xtraiter2018, 0
  %xtraiter2031 = and i32 %i.ake, 3               ; 3 uses
  %i.akg = icmp ult i32 %i.akc, 12
  %unroll_iter2038 = and i32 %i.ake, 2147483644
  %lcmp.mod2035.not = icmp eq i32 %xtraiter2031, 0
  %lcmp.mod2037 = icmp ne i32 %xtraiter2031, 0
  %min.iters.check1541 = icmp ult i32 %i.ajp, 12
  %min.iters.check1543 = icmp ult i32 %i.ajp, 60
  %i.akh = and i64 %i.akb, 12
  %n.vec1545 = and i64 %i.akb, 2147483632         ; 6 uses
  %i.aki = trunc nuw nsw i64 %n.vec1545 to i32
  %i.akj = shl i32 %i.aki, 2
  %i.akk = shl nuw nsw i64 %n.vec1545, 2
  %i.akl = shl nuw nsw i64 %n.vec1545, 3
  %cmp.n1584 = icmp eq i64 %i.akb, %n.vec1545
  %min.epilog.iters.check1594 = icmp eq i64 %i.akh, 0
  %n.vec1596 = and i64 %i.akb, 2147483644         ; 5 uses
  %i.akm = trunc nuw nsw i64 %n.vec1596 to i32
  %i.akn = shl i32 %i.akm, 2
  %i.ako = shl nuw nsw i64 %n.vec1596, 2
  %i.akp = shl nuw nsw i64 %n.vec1596, 3
  %cmp.n1613 = icmp eq i64 %i.akb, %n.vec1596
  %i.akq = lshr i64 %i.ajt, 2
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 2 uses
  %min.iters.check1344 = icmp ult i32 %i.ajp, 28
  %n.vec1346 = and i64 %i.akr, 2147483640         ; 4 uses
  %i.aks = trunc nuw nsw i64 %n.vec1346 to i32
  %i.akt = shl i32 %i.aks, 2
  %i.aku = shl nuw nsw i64 %n.vec1346, 2          ; 2 uses
  %cmp.n1364 = icmp eq i64 %i.akr, %n.vec1346
  br label %.preheader383.i

.preheader395.i:                                  ; preds = %._crit_edge849.i, %.preheader396.i
  %.01252.lcssa.i = phi i32 [ 0, %.preheader396.i ], [ %i.sz, %._crit_edge849.i ] ; 3 uses
  %.01236.lcssa.i = phi ptr [ %.val8, %.preheader396.i ], [ %.31239.lcssa.i, %._crit_edge849.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.10986.i, %.preheader396.i ], [ %i.api, %._crit_edge849.i ] ; 2 uses
  %i.akv = or disjoint i32 %.01252.lcssa.i, 3
  %i.akw = icmp slt i32 %i.akv, %6
  br i1 %i.akw, label %.lr.ph890.i, label %.preheader394.i

.lr.ph856.i:                                      ; preds = %.preheader396.i, %._crit_edge849.i
  %.11855.i = phi ptr [ %i.api, %._crit_edge849.i ], [ %.10986.i, %.preheader396.i ] ; 5 uses
  %.01236854.i = phi ptr [ %.31239.lcssa.i, %._crit_edge849.i ], [ %.val8, %.preheader396.i ] ; 4 uses
  %.01252853.i = phi i32 [ %i.apj, %._crit_edge849.i ], [ 0, %.preheader396.i ]
  br i1 %i.ss, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph856.i
  %i.akx = load <8 x i32>, ptr %.11855.i, align 1, !tbaa !17
  %i.aky = getelementptr inbounds nuw i8, ptr %.11855.i, i64 32
  %i.akz = load <8 x i32>, ptr %i.aky, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph856.i
  %i.ala = phi <8 x i32> [ %i.akx, %bb.r ], [ zeroinitializer, %.lr.ph856.i ] ; 3 uses
  %i.alb = phi <8 x i32> [ %i.akz, %bb.r ], [ zeroinitializer, %.lr.ph856.i ] ; 3 uses
  br i1 %i.st, label %.lr.ph830.i.preheader, label %.preheader392.i

.lr.ph830.i.preheader:                            ; preds = %bb.s
  br i1 %i.tm, label %.lr.ph830.i.epil.preheader, label %.lr.ph830.i

.preheader392.i.loopexit.unr-lcssa:               ; preds = %.lr.ph830.i
  br i1 %lcmp.mod1995.not.not, label %.lr.ph830.i.epil.preheader, label %.preheader392.i.loopexit

.lr.ph830.i.epil.preheader:                       ; preds = %.preheader392.i.loopexit.unr-lcssa, %.lr.ph830.i.preheader
  %.11237828.i.epil.init = phi ptr [ %.01236854.i, %.lr.ph830.i.preheader ], [ %i.amm, %.preheader392.i.loopexit.unr-lcssa ]
  %.01262827.i.epil.init = phi ptr [ %.21069987.i, %.lr.ph830.i.preheader ], [ %i.aml, %.preheader392.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1992 = phi <8 x i32> [ %i.alb, %.lr.ph830.i.preheader ], [ %i.amk, %.preheader392.i.loopexit.unr-lcssa ]
  %.epil.init1994 = phi <8 x i32> [ %i.ala, %.lr.ph830.i.preheader ], [ %i.amj, %.preheader392.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1999)
  %i.alc = load double, ptr %.01262827.i.epil.init, align 1, !tbaa !17
  %i.ald = insertelement <4 x double> poison, double %i.alc, i64 0
  %i.ale = bitcast <4 x double> %i.ald to <4 x i64>
  %i.alf = shufflevector <4 x i64> %i.ale, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alg = bitcast <4 x i64> %i.alf to <32 x i8>  ; 2 uses
  %i.alh = shufflevector <32 x i8> %i.alg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ali = load <32 x i8>, ptr %.11237828.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.alj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1994, <32 x i8> %i.ali, <32 x i8> %i.alg)
  %i.alk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1992, <32 x i8> %i.ali, <32 x i8> %i.alh)
  %i.all = getelementptr inbounds nuw i8, ptr %.01262827.i.epil.init, i64 8
  br label %.preheader392.i.loopexit

.preheader392.i.loopexit:                         ; preds = %.preheader392.i.loopexit.unr-lcssa, %.lr.ph830.i.epil.preheader
  %.lcssa1719 = phi <8 x i32> [ %i.amj, %.preheader392.i.loopexit.unr-lcssa ], [ %i.alj, %.lr.ph830.i.epil.preheader ]
  %.lcssa1718 = phi <8 x i32> [ %i.amk, %.preheader392.i.loopexit.unr-lcssa ], [ %i.alk, %.lr.ph830.i.epil.preheader ]
  %.lcssa1717 = phi ptr [ %i.aml, %.preheader392.i.loopexit.unr-lcssa ], [ %i.all, %.lr.ph830.i.epil.preheader ]
  %i.alm = getelementptr i8, ptr %.01236854.i, i64 %i.tg
  %scevgep493 = getelementptr i8, ptr %i.alm, i64 32
  br label %.preheader392.i

.preheader392.i:                                  ; preds = %.preheader392.i.loopexit, %bb.s
  %.lcssa429.i = phi <8 x i32> [ %i.ala, %bb.s ], [ %.lcssa1719, %.preheader392.i.loopexit ] ; 2 uses
  %.lcssa428.i = phi <8 x i32> [ %i.alb, %bb.s ], [ %.lcssa1718, %.preheader392.i.loopexit ] ; 2 uses
  %.01265.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.sy, %.preheader392.i.loopexit ] ; 3 uses
  %.01262.lcssa.i = phi ptr [ %.21069987.i, %bb.s ], [ %.lcssa1717, %.preheader392.i.loopexit ] ; 2 uses
  %.11237.lcssa.i = phi ptr [ %.01236854.i, %bb.s ], [ %scevgep493, %.preheader392.i.loopexit ] ; 2 uses
  %i.aln = or disjoint i32 %.01265.lcssa.i, 1
  %i.alo = icmp slt i32 %i.aln, %8
  br i1 %i.alo, label %.lr.ph839.i, label %.preheader391.i

.lr.ph830.i:                                      ; preds = %.lr.ph830.i.preheader, %.lr.ph830.i
  %.11237828.i = phi ptr [ %i.amm, %.lr.ph830.i ], [ %.01236854.i, %.lr.ph830.i.preheader ] ; 3 uses
  %.01262827.i = phi ptr [ %i.aml, %.lr.ph830.i ], [ %.21069987.i, %.lr.ph830.i.preheader ] ; 3 uses
  %i.alp = phi <8 x i32> [ %i.amk, %.lr.ph830.i ], [ %i.alb, %.lr.ph830.i.preheader ]
  %i.alq = phi <8 x i32> [ %i.amj, %.lr.ph830.i ], [ %i.ala, %.lr.ph830.i.preheader ]
  %niter2001 = phi i32 [ %niter2001.next.1, %.lr.ph830.i ], [ 0, %.lr.ph830.i.preheader ]
  %i.alr = load double, ptr %.01262827.i, align 1, !tbaa !17
  %i.als = insertelement <4 x double> poison, double %i.alr, i64 0
  %i.alt = bitcast <4 x double> %i.als to <4 x i64>
  %i.alu = shufflevector <4 x i64> %i.alt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alv = bitcast <4 x i64> %i.alu to <32 x i8>  ; 2 uses
  %i.alw = shufflevector <32 x i8> %i.alv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.alx = load <32 x i8>, ptr %.11237828.i, align 1, !tbaa !17 ; 2 uses
  %i.aly = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alq, <32 x i8> %i.alx, <32 x i8> %i.alv)
  %i.alz = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alp, <32 x i8> %i.alx, <32 x i8> %i.alw)
  %i.ama = getelementptr inbounds nuw i8, ptr %.01262827.i, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %.11237828.i, i64 32
  %i.amc = load double, ptr %i.ama, align 1, !tbaa !17
  %i.amd = insertelement <4 x double> poison, double %i.amc, i64 0
  %i.ame = bitcast <4 x double> %i.amd to <4 x i64>
  %i.amf = shufflevector <4 x i64> %i.ame, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.amg = bitcast <4 x i64> %i.amf to <32 x i8>  ; 2 uses
  %i.amh = shufflevector <32 x i8> %i.amg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ami = load <32 x i8>, ptr %i.amb, align 1, !tbaa !17 ; 2 uses
  %i.amj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.aly, <32 x i8> %i.ami, <32 x i8> %i.amg) ; 3 uses
  %i.amk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alz, <32 x i8> %i.ami, <32 x i8> %i.amh) ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.01262827.i, i64 16 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.11237828.i, i64 64 ; 2 uses
  %niter2001.next.1 = add i32 %niter2001, 2       ; 2 uses
  %niter2001.ncmp.1.not = icmp eq i32 %niter2001.next.1, %unroll_iter2000
  br i1 %niter2001.ncmp.1.not, label %.preheader392.i.loopexit.unr-lcssa, label %.lr.ph830.i, !llvm.loop !330

.preheader391.i:                                  ; preds = %.lr.ph839.i, %.preheader392.i
  %.lcssa431.i = phi <8 x i32> [ %.lcssa429.i, %.preheader392.i ], [ %i.anq, %.lr.ph839.i ] ; 3 uses
  %.lcssa430.i = phi <8 x i32> [ %.lcssa428.i, %.preheader392.i ], [ %i.ans, %.lr.ph839.i ] ; 3 uses
  %.11266.lcssa.i = phi i32 [ %.01265.lcssa.i, %.preheader392.i ], [ %i.anv, %.lr.ph839.i ] ; 5 uses
  %.11263.lcssa.i = phi ptr [ %.01262.lcssa.i, %.preheader392.i ], [ %i.ant, %.lr.ph839.i ] ; 3 uses
  %.21238.lcssa.i = phi ptr [ %.11237.lcssa.i, %.preheader392.i ], [ %i.anu, %.lr.ph839.i ] ; 4 uses
  %i.amn = icmp slt i32 %.11266.lcssa.i, %8
  br i1 %i.amn, label %.lr.ph848.i.preheader, label %._crit_edge849.i

.lr.ph848.i.preheader:                            ; preds = %.preheader391.i
  %i.amo = sub i32 %8, %.11266.lcssa.i
  %.neg2045 = add i32 %.11266.lcssa.i, 1
  %xtraiter2002 = and i32 %i.amo, 1
  %lcmp.mod2003.not = icmp eq i32 %xtraiter2002, 0
  br i1 %lcmp.mod2003.not, label %.lr.ph848.i.prol.loopexit, label %.lr.ph848.i.prol

.lr.ph848.i.prol:                                 ; preds = %.lr.ph848.i.preheader
  %i.amp = load i16, ptr %.11263.lcssa.i, align 2, !tbaa !301
  %i.amq = insertelement <8 x i16> poison, i16 %i.amp, i64 0
  %i.amr = load <8 x i8>, ptr %.21238.lcssa.i, align 1, !tbaa !17
  %i.ams = bitcast <8 x i16> %i.amq to <16 x i8>
  %i.amt = shufflevector <16 x i8> %i.ams, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amu = sext <8 x i8> %i.amt to <8 x i16>      ; 2 uses
  %i.amv = sext <8 x i8> %i.amr to <8 x i16>      ; 2 uses
  %i.amw = shufflevector <8 x i16> %i.amu, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.amx = mul nsw <8 x i16> %i.amu, %i.amv
  %i.amy = sext <8 x i16> %i.amx to <8 x i32>
  %i.amz = mul nsw <8 x i16> %i.amw, %i.amv
  %i.ana = sext <8 x i16> %i.amz to <8 x i32>
  %i.anb = add <8 x i32> %.lcssa431.i, %i.amy     ; 2 uses
  %i.anc = add <8 x i32> %.lcssa430.i, %i.ana     ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.11263.lcssa.i, i64 2
  %i.ane = getelementptr inbounds nuw i8, ptr %.21238.lcssa.i, i64 8 ; 2 uses
  %i.anf = add nuw nsw i32 %.11266.lcssa.i, 1
  br label %.lr.ph848.i.prol.loopexit

.lr.ph848.i.prol.loopexit:                        ; preds = %.lr.ph848.i.prol, %.lr.ph848.i.preheader
  %.lcssa1727.unr = phi <8 x i32> [ poison, %.lr.ph848.i.preheader ], [ %i.anb, %.lr.ph848.i.prol ]
  %.lcssa1726.unr = phi <8 x i32> [ poison, %.lr.ph848.i.preheader ], [ %i.anc, %.lr.ph848.i.prol ]
  %.lcssa1725.unr = phi ptr [ poison, %.lr.ph848.i.preheader ], [ %i.ane, %.lr.ph848.i.prol ]
  %.31239847.i.unr = phi ptr [ %.21238.lcssa.i, %.lr.ph848.i.preheader ], [ %i.ane, %.lr.ph848.i.prol ]
  %.21264846.i.unr = phi ptr [ %.11263.lcssa.i, %.lr.ph848.i.preheader ], [ %i.and, %.lr.ph848.i.prol ]
  %.21267845.i.unr = phi i32 [ %.11266.lcssa.i, %.lr.ph848.i.preheader ], [ %i.anf, %.lr.ph848.i.prol ]
  %.unr2004 = phi <8 x i32> [ %.lcssa430.i, %.lr.ph848.i.preheader ], [ %i.anc, %.lr.ph848.i.prol ]
  %.unr2005 = phi <8 x i32> [ %.lcssa431.i, %.lr.ph848.i.preheader ], [ %i.anb, %.lr.ph848.i.prol ]
  %i.ang = icmp eq i32 %8, %.neg2045
  br i1 %i.ang, label %._crit_edge849.i, label %.lr.ph848.i

.lr.ph839.i:                                      ; preds = %.preheader392.i, %.lr.ph839.i
  %.21238838.i = phi ptr [ %i.anu, %.lr.ph839.i ], [ %.11237.lcssa.i, %.preheader392.i ] ; 2 uses
  %.11263837.i = phi ptr [ %i.ant, %.lr.ph839.i ], [ %.01262.lcssa.i, %.preheader392.i ] ; 2 uses
  %.11266836.i = phi i32 [ %i.anv, %.lr.ph839.i ], [ %.01265.lcssa.i, %.preheader392.i ]
  %i.anh = phi <8 x i32> [ %i.ans, %.lr.ph839.i ], [ %.lcssa428.i, %.preheader392.i ]
  %i.ani = phi <8 x i32> [ %i.anq, %.lr.ph839.i ], [ %.lcssa429.i, %.preheader392.i ]
  %i.anj = load float, ptr %.11263837.i, align 1, !tbaa !17
  %i.ank = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anl = load <16 x i8>, ptr %.21238838.i, align 1, !tbaa !17
  %i.anm = bitcast <4 x float> %i.ank to <16 x i8>
  %i.ann = shufflevector <16 x i8> %i.anm, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ano = sext <16 x i8> %i.ann to <16 x i16>    ; 2 uses
  %i.anp = sext <16 x i8> %i.anl to <16 x i16>    ; 2 uses
  %i.anq = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ani, <16 x i16> %i.ano, <16 x i16> %i.anp) ; 2 uses
  %i.anr = shufflevector <16 x i16> %i.ano, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.ans = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.anh, <16 x i16> %i.anr, <16 x i16> %i.anp) ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.11263837.i, i64 4 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.21238838.i, i64 16 ; 2 uses
  %i.anv = add nuw nsw i32 %.11266836.i, 2        ; 3 uses
  %i.anw = or disjoint i32 %i.anv, 1
  %i.anx = icmp slt i32 %i.anw, %8
  br i1 %i.anx, label %.lr.ph839.i, label %.preheader391.i, !llvm.loop !331

.lr.ph848.i:                                      ; preds = %.lr.ph848.i.prol.loopexit, %.lr.ph848.i
  %.31239847.i = phi ptr [ %i.apf, %.lr.ph848.i ], [ %.31239847.i.unr, %.lr.ph848.i.prol.loopexit ] ; 3 uses
  %.21264846.i = phi ptr [ %i.ape, %.lr.ph848.i ], [ %.21264846.i.unr, %.lr.ph848.i.prol.loopexit ] ; 3 uses
  %.21267845.i = phi i32 [ %i.apg, %.lr.ph848.i ], [ %.21267845.i.unr, %.lr.ph848.i.prol.loopexit ]
  %i.any = phi <8 x i32> [ %i.apd, %.lr.ph848.i ], [ %.unr2004, %.lr.ph848.i.prol.loopexit ]
  %i.anz = phi <8 x i32> [ %i.apc, %.lr.ph848.i ], [ %.unr2005, %.lr.ph848.i.prol.loopexit ]
  %i.aoa = load i16, ptr %.21264846.i, align 2, !tbaa !301
  %i.aob = insertelement <8 x i16> poison, i16 %i.aoa, i64 0
  %i.aoc = load <8 x i8>, ptr %.31239847.i, align 1, !tbaa !17
  %i.aod = bitcast <8 x i16> %i.aob to <16 x i8>
  %i.aoe = shufflevector <16 x i8> %i.aod, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aof = sext <8 x i8> %i.aoe to <8 x i16>      ; 2 uses
  %i.aog = sext <8 x i8> %i.aoc to <8 x i16>      ; 2 uses
  %i.aoh = shufflevector <8 x i16> %i.aof, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aoi = mul nsw <8 x i16> %i.aof, %i.aog
  %i.aoj = sext <8 x i16> %i.aoi to <8 x i32>
  %i.aok = mul nsw <8 x i16> %i.aoh, %i.aog
  %i.aol = sext <8 x i16> %i.aok to <8 x i32>
  %i.aom = add <8 x i32> %i.anz, %i.aoj
  %i.aon = add <8 x i32> %i.any, %i.aol
  %i.aoo = getelementptr inbounds nuw i8, ptr %.21264846.i, i64 2
  %i.aop = getelementptr inbounds nuw i8, ptr %.31239847.i, i64 8
  %i.aoq = load i16, ptr %i.aoo, align 2, !tbaa !301
  %i.aor = insertelement <8 x i16> poison, i16 %i.aoq, i64 0
  %i.aos = load <8 x i8>, ptr %i.aop, align 1, !tbaa !17
  %i.aot = bitcast <8 x i16> %i.aor to <16 x i8>
  %i.aou = shufflevector <16 x i8> %i.aot, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aov = sext <8 x i8> %i.aou to <8 x i16>      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.01052.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.ajr, %.preheader375.loopexit.i ] ; 6 uses
  %i.eaa = or disjoint i32 %.01052.lcssa.i, 1
  %i.eab = icmp slt i32 %i.eaa, %8
  br i1 %i.eab, label %iter.check1512, label %.preheader374.i

iter.check1512:                                   ; preds = %.preheader375.i
  %i.eac = sub i32 %i.aka, %.01052.lcssa.i        ; 3 uses
  %i.ead = lshr i32 %i.eac, 1
  %narrow1620 = add nuw i32 %i.ead, 1
  %i.eae = zext i32 %narrow1620 to i64            ; 5 uses
  %min.iters.check1470 = icmp ult i32 %i.eac, 6
  br i1 %min.iters.check1470, label %.lr.ph1070.i.preheader, label %vector.main.loop.iter.check1471

vector.main.loop.iter.check1471:                  ; preds = %iter.check1512
  %min.iters.check1472 = icmp ult i32 %i.eac, 30
  br i1 %min.iters.check1472, label %vec.epilog.ph1516, label %vector.ph1473

vector.ph1473:                                    ; preds = %vector.main.loop.iter.check1471
  %i.eaf = and i64 %i.eae, 12
  %n.vec1474 = and i64 %i.eae, 4294967280         ; 6 uses
  %i.eag = trunc nuw i64 %n.vec1474 to i32
  %i.eah = shl i32 %i.eag, 1
  %i.eai = add i32 %.01052.lcssa.i, %i.eah        ; 2 uses
  %i.eaj = shl nuw nsw i64 %n.vec1474, 1
  %i.eak = getelementptr i8, ptr %.01055.lcssa.i, i64 %i.eaj ; 2 uses
  %i.eal = shl nuw nsw i64 %n.vec1474, 2
  %i.eam = getelementptr i8, ptr %.91164.lcssa.i, i64 %i.eal ; 2 uses
  %i.ean = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.11060.lcssa.i, i64 0
  %i.eao = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.11064.lcssa.i, i64 0
  br label %vector.body1475

vector.body1475:                                  ; preds = %vector.body1475, %vector.ph1473
  %index1476 = phi i64 [ 0, %vector.ph1473 ], [ %index.next1501, %vector.body1475 ] ; 3 uses
  %vec.phi1477 = phi <8 x i32> [ %i.ean, %vector.ph1473 ], [ %i.ebt, %vector.body1475 ]
  %vec.phi1478 = phi <8 x i32> [ zeroinitializer, %vector.ph1473 ], [ %i.ebu, %vector.body1475 ]
  %vec.phi1479 = phi <8 x i32> [ %i.eao, %vector.ph1473 ], [ %i.ebh, %vector.body1475 ]
  %vec.phi1480 = phi <8 x i32> [ zeroinitializer, %vector.ph1473 ], [ %i.ebi, %vector.body1475 ]
  %i.eap = shl i64 %index1476, 1                  ; 2 uses
  %next.gep1481 = getelementptr i8, ptr %.01055.lcssa.i, i64 %i.eap
  %i.eaq = getelementptr i8, ptr %.01055.lcssa.i, i64 %i.eap
  %next.gep1482 = getelementptr i8, ptr %i.eaq, i64 16
  %i.ear = shl i64 %index1476, 2                  ; 2 uses
  %next.gep1483 = getelementptr i8, ptr %.91164.lcssa.i, i64 %i.ear
  %i.eas = getelementptr i8, ptr %.91164.lcssa.i, i64 %i.ear
  %next.gep1484 = getelementptr i8, ptr %i.eas, i64 32
  %wide.vec1485 = load <16 x i8>, ptr %next.gep1481, align 1, !tbaa !17 ; 2 uses
  %strided.vec1486 = shufflevector <16 x i8> %wide.vec1485, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1487 = shufflevector <16 x i8> %wide.vec1485, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1488 = load <16 x i8>, ptr %next.gep1482, align 1, !tbaa !17 ; 2 uses
  %strided.vec1489 = shufflevector <16 x i8> %wide.vec1488, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1490 = shufflevector <16 x i8> %wide.vec1488, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eat = sext <8 x i8> %strided.vec1486 to <8 x i32> ; 2 uses
  %i.eau = sext <8 x i8> %strided.vec1489 to <8 x i32> ; 2 uses
  %wide.vec1491 = load <32 x i8>, ptr %next.gep1483, align 1, !tbaa !17 ; 4 uses
  %strided.vec1492 = shufflevector <32 x i8> %wide.vec1491, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1493 = shufflevector <32 x i8> %wide.vec1491, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1494 = shufflevector <32 x i8> %wide.vec1491, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1495 = shufflevector <32 x i8> %wide.vec1491, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec1496 = load <32 x i8>, ptr %next.gep1484, align 1, !tbaa !17 ; 4 uses
  %strided.vec1497 = shufflevector <32 x i8> %wide.vec1496, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1498 = shufflevector <32 x i8> %wide.vec1496, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1499 = shufflevector <32 x i8> %wide.vec1496, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1500 = shufflevector <32 x i8> %wide.vec1496, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eav = sext <8 x i8> %strided.vec1492 to <8 x i32>
  %i.eaw = sext <8 x i8> %strided.vec1497 to <8 x i32>
  %i.eax = mul nsw <8 x i32> %i.eav, %i.eat
  %i.eay = mul nsw <8 x i32> %i.eaw, %i.eau
  %i.eaz = add <8 x i32> %i.eax, %vec.phi1479
  %i.eba = add <8 x i32> %i.eay, %vec.phi1480
  %i.ebb = sext <8 x i8> %strided.vec1487 to <8 x i32> ; 2 uses
  %i.ebc = sext <8 x i8> %strided.vec1490 to <8 x i32> ; 2 uses
  %i.ebd = sext <8 x i8> %strided.vec1493 to <8 x i32>
  %i.ebe = sext <8 x i8> %strided.vec1498 to <8 x i32>
  %i.ebf = mul nsw <8 x i32> %i.ebd, %i.ebb
  %i.ebg = mul nsw <8 x i32> %i.ebe, %i.ebc
  %i.ebh = add <8 x i32> %i.eaz, %i.ebf           ; 2 uses
  %i.ebi = add <8 x i32> %i.eba, %i.ebg           ; 2 uses
  %i.ebj = sext <8 x i8> %strided.vec1494 to <8 x i32>
  %i.ebk = sext <8 x i8> %strided.vec1499 to <8 x i32>
  %i.ebl = mul nsw <8 x i32> %i.ebj, %i.eat
  %i.ebm = mul nsw <8 x i32> %i.ebk, %i.eau
  %i.ebn = add <8 x i32> %i.ebl, %vec.phi1477
  %i.ebo = add <8 x i32> %i.ebm, %vec.phi1478
  %i.ebp = sext <8 x i8> %strided.vec1495 to <8 x i32>
  %i.ebq = sext <8 x i8> %strided.vec1500 to <8 x i32>
  %i.ebr = mul nsw <8 x i32> %i.ebp, %i.ebb
  %i.ebs = mul nsw <8 x i32> %i.ebq, %i.ebc
  %i.ebt = add <8 x i32> %i.ebn, %i.ebr           ; 2 uses
  %i.ebu = add <8 x i32> %i.ebo, %i.ebs           ; 2 uses
  %index.next1501 = add nuw i64 %index1476, 16    ; 2 uses
  %i.ebv = icmp eq i64 %index.next1501, %n.vec1474
  br i1 %i.ebv, label %middle.block1502, label %vector.body1475, !llvm.loop !368

middle.block1502:                                 ; preds = %vector.body1475
  %bin.rdx1503 = add <8 x i32> %i.ebu, %i.ebt
  %i.ebw = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1503) ; 3 uses
  %bin.rdx1504 = add <8 x i32> %i.ebi, %i.ebh
  %i.ebx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1504) ; 3 uses
  %cmp.n1505 = icmp eq i64 %n.vec1474, %i.eae
  br i1 %cmp.n1505, label %.preheader374.i, label %vec.epilog.iter.check1514

vec.epilog.iter.check1514:                        ; preds = %middle.block1502
  %min.epilog.iters.check1515 = icmp eq i64 %i.eaf, 0
  br i1 %min.epilog.iters.check1515, label %.lr.ph1070.i.preheader, label %vec.epilog.ph1516, !prof !40

vec.epilog.ph1516:                                ; preds = %vector.main.loop.iter.check1471, %vec.epilog.iter.check1514
  %vec.epilog.resume.val1506 = phi i64 [ %n.vec1474, %vec.epilog.iter.check1514 ], [ 0, %vector.main.loop.iter.check1471 ]
  %bc.merge.rdx1509 = phi i32 [ %i.ebw, %vec.epilog.iter.check1514 ], [ %.11060.lcssa.i, %vector.main.loop.iter.check1471 ]
  %bc.merge.rdx1510 = phi i32 [ %i.ebx, %vec.epilog.iter.check1514 ], [ %.11064.lcssa.i, %vector.main.loop.iter.check1471 ]
  %n.vec1517 = and i64 %i.eae, 4294967292         ; 5 uses
  %i.eby = trunc nuw i64 %n.vec1517 to i32
  %i.ebz = shl i32 %i.eby, 1
  %i.eca = add i32 %.01052.lcssa.i, %i.ebz        ; 2 uses
  %i.ecb = shl nuw nsw i64 %n.vec1517, 1
  %i.ecc = getelementptr i8, ptr %.01055.lcssa.i, i64 %i.ecb ; 2 uses
  %i.ecd = shl nuw nsw i64 %n.vec1517, 2
  %i.ece = getelementptr i8, ptr %.91164.lcssa.i, i64 %i.ecd ; 2 uses
  %i.ecf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1509, i64 0
  %i.ecg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1510, i64 0
  br label %vec.epilog.vector.body1518

vec.epilog.vector.body1518:                       ; preds = %vec.epilog.vector.body1518, %vec.epilog.ph1516
  %index1519 = phi i64 [ %vec.epilog.resume.val1506, %vec.epilog.ph1516 ], [ %index.next1532, %vec.epilog.vector.body1518 ] ; 3 uses
  %vec.phi1520 = phi <4 x i32> [ %i.ecf, %vec.epilog.ph1516 ], [ %i.ecw, %vec.epilog.vector.body1518 ]
  %vec.phi1521 = phi <4 x i32> [ %i.ecg, %vec.epilog.ph1516 ], [ %i.ecq, %vec.epilog.vector.body1518 ]
  %i.ech = shl i64 %index1519, 1
  %next.gep1522 = getelementptr i8, ptr %.01055.lcssa.i, i64 %i.ech
  %i.eci = shl i64 %index1519, 2
  %next.gep1523 = getelementptr i8, ptr %.91164.lcssa.i, i64 %i.eci
  %wide.vec1524 = load <8 x i8>, ptr %next.gep1522, align 1, !tbaa !17 ; 2 uses
  %strided.vec1525 = shufflevector <8 x i8> %wide.vec1524, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1526 = shufflevector <8 x i8> %wide.vec1524, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ecj = sext <4 x i8> %strided.vec1525 to <4 x i32> ; 2 uses
  %wide.vec1527 = load <16 x i8>, ptr %next.gep1523, align 1, !tbaa !17 ; 4 uses
  %strided.vec1528 = shufflevector <16 x i8> %wide.vec1527, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1529 = shufflevector <16 x i8> %wide.vec1527, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1530 = shufflevector <16 x i8> %wide.vec1527, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1531 = shufflevector <16 x i8> %wide.vec1527, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.eck = sext <4 x i8> %strided.vec1528 to <4 x i32>
  %i.ecl = mul nsw <4 x i32> %i.eck, %i.ecj
  %i.ecm = add <4 x i32> %i.ecl, %vec.phi1521
  %i.ecn = sext <4 x i8> %strided.vec1526 to <4 x i32> ; 2 uses
  %i.eco = sext <4 x i8> %strided.vec1529 to <4 x i32>
  %i.ecp = mul nsw <4 x i32> %i.eco, %i.ecn
  %i.ecq = add <4 x i32> %i.ecm, %i.ecp           ; 2 uses
  %i.ecr = sext <4 x i8> %strided.vec1530 to <4 x i32>
  %i.ecs = mul nsw <4 x i32> %i.ecr, %i.ecj
  %i.ect = add <4 x i32> %i.ecs, %vec.phi1520
  %i.ecu = sext <4 x i8> %strided.vec1531 to <4 x i32>
  %i.ecv = mul nsw <4 x i32> %i.ecu, %i.ecn
  %i.ecw = add <4 x i32> %i.ect, %i.ecv           ; 2 uses
  %index.next1532 = add nuw i64 %index1519, 4     ; 2 uses
  %i.ecx = icmp eq i64 %index.next1532, %n.vec1517
  br i1 %i.ecx, label %vec.epilog.middle.block1533, label %vec.epilog.vector.body1518, !llvm.loop !369

vec.epilog.middle.block1533:                      ; preds = %vec.epilog.vector.body1518
  %i.ecy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ecw) ; 2 uses
  %i.ecz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ecq) ; 2 uses
  %cmp.n1534 = icmp eq i64 %n.vec1517, %i.eae
  br i1 %cmp.n1534, label %.preheader374.i, label %.lr.ph1070.i.preheader

.lr.ph1070.i.preheader:                           ; preds = %iter.check1512, %vec.epilog.iter.check1514, %vec.epilog.middle.block1533
  %.110531069.i.ph = phi i32 [ %.01052.lcssa.i, %iter.check1512 ], [ %i.eai, %vec.epilog.iter.check1514 ], [ %i.eca, %vec.epilog.middle.block1533 ]
  %.110561068.i.ph = phi ptr [ %.01055.lcssa.i, %iter.check1512 ], [ %i.eak, %vec.epilog.iter.check1514 ], [ %i.ecc, %vec.epilog.middle.block1533 ]
  %.210611067.i.ph = phi i32 [ %.11060.lcssa.i, %iter.check1512 ], [ %i.ebw, %vec.epilog.iter.check1514 ], [ %i.ecy, %vec.epilog.middle.block1533 ]
  %.210651066.i.ph = phi i32 [ %.11064.lcssa.i, %iter.check1512 ], [ %i.ebx, %vec.epilog.iter.check1514 ], [ %i.ecz, %vec.epilog.middle.block1533 ]
  %.1011651065.i.ph = phi ptr [ %.91164.lcssa.i, %iter.check1512 ], [ %i.eam, %vec.epilog.iter.check1514 ], [ %i.ece, %vec.epilog.middle.block1533 ]
  br label %.lr.ph1070.i

.lr.ph1059.i:                                     ; preds = %.lr.ph1059.i.preheader, %.lr.ph1059.i
  %.010521057.i = phi i32 [ %i.edn, %.lr.ph1059.i ], [ %.010521057.i.ph, %.lr.ph1059.i.preheader ]
  %.010551056.i = phi ptr [ %i.edl, %.lr.ph1059.i ], [ %.010551056.i.ph, %.lr.ph1059.i.preheader ] ; 2 uses
  %.110601055.i = phi i32 [ %op.rdx1625, %.lr.ph1059.i ], [ %.110601055.i.ph, %.lr.ph1059.i.preheader ]
  %.110641054.i = phi i32 [ %op.rdx1624, %.lr.ph1059.i ], [ %.110641054.i.ph, %.lr.ph1059.i.preheader ]
  %.911641053.i = phi ptr [ %i.edm, %.lr.ph1059.i ], [ %.911641053.i.ph, %.lr.ph1059.i.preheader ] ; 3 uses
  %i.eda = load <4 x i8>, ptr %.010551056.i, align 1, !tbaa !17
  %i.edb = sext <4 x i8> %i.eda to <4 x i32>      ; 2 uses
  %i.edc = load <4 x i8>, ptr %.911641053.i, align 1, !tbaa !17
  %i.edd = sext <4 x i8> %i.edc to <4 x i32>
  %i.ede = mul nsw <4 x i32> %i.edd, %i.edb
  %i.edf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ede)
  %op.rdx1624 = add i32 %i.edf, %.110641054.i     ; 2 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %.911641053.i, i64 4
  %i.edh = load <4 x i8>, ptr %i.edg, align 1, !tbaa !17
  %i.edi = sext <4 x i8> %i.edh to <4 x i32>
  %i.edj = mul nsw <4 x i32> %i.edi, %i.edb
  %i.edk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.edj)
  %op.rdx1625 = add i32 %i.edk, %.110601055.i     ; 2 uses
  %i.edl = getelementptr inbounds nuw i8, ptr %.010551056.i, i64 4
  %i.edm = getelementptr inbounds nuw i8, ptr %.911641053.i, i64 8
  %i.edn = add nuw nsw i32 %.010521057.i, 4       ; 2 uses
  %i.edo = or disjoint i32 %i.edn, 3
  %i.edp = icmp slt i32 %i.edo, %8
  br i1 %i.edp, label %.lr.ph1059.i, label %.preheader375.loopexit.i, !llvm.loop !370

.preheader374.i:                                  ; preds = %.lr.ph1070.i, %middle.block1502, %vec.epilog.middle.block1533, %.preheader375.i
  %.101165.lcssa.i = phi ptr [ %.91164.lcssa.i, %.preheader375.i ], [ %i.ece, %vec.epilog.middle.block1533 ], [ %i.eam, %middle.block1502 ], [ %i.eof, %.lr.ph1070.i ] ; 11 uses
  %.21065.lcssa.i = phi i32 [ %.11064.lcssa.i, %.preheader375.i ], [ %i.ecz, %vec.epilog.middle.block1533 ], [ %i.ebx, %middle.block1502 ], [ %i.ent, %.lr.ph1070.i ]
  %.21061.lcssa.i = phi i32 [ %.11060.lcssa.i, %.preheader375.i ], [ %i.ecy, %vec.epilog.middle.block1533 ], [ %i.ebw, %middle.block1502 ], [ %i.eod, %.lr.ph1070.i ]
  %.11056.lcssa.i = phi ptr [ %.01055.lcssa.i, %.preheader375.i ], [ %i.ecc, %vec.epilog.middle.block1533 ], [ %i.eak, %middle.block1502 ], [ %i.eoe, %.lr.ph1070.i ] ; 4 uses
  %.11053.lcssa.i = phi i32 [ %.01052.lcssa.i, %.preheader375.i ], [ %i.eca, %vec.epilog.middle.block1533 ], [ %i.eai, %middle.block1502 ], [ %i.eog, %.lr.ph1070.i ] ; 6 uses
  %i.edq = add nuw nsw i32 %.11053.lcssa.i, 3
  %i.edr = icmp slt i32 %i.edq, %8
  br i1 %i.edr, label %.lr.ph1087.i.preheader, label %._crit_edge1088.i

.lr.ph1087.i.preheader:                           ; preds = %.preheader374.i
  %9 = add i32 %.11053.lcssa.i, 7
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %11 = add i32 %10, -4
  %i.eds = sub i32 %11, %.11053.lcssa.i           ; 2 uses
  %i.edt = lshr i32 %i.eds, 2
  %narrow1621 = add nuw nsw i32 %i.edt, 1
  %i.edu = zext nneg i32 %narrow1621 to i64       ; 2 uses
  %min.iters.check1428 = icmp ult i32 %i.eds, 28
  br i1 %min.iters.check1428, label %.lr.ph1087.i.preheader1630, label %vector.ph1429

vector.ph1429:                                    ; preds = %.lr.ph1087.i.preheader
  %n.vec1430 = and i64 %i.edu, 2147483640         ; 5 uses
  %i.edv = trunc nuw nsw i64 %n.vec1430 to i32
  %i.edw = shl i32 %i.edv, 2
  %i.edx = add i32 %.11053.lcssa.i, %i.edw        ; 2 uses
  %i.edy = shl nuw nsw i64 %n.vec1430, 2
  %i.edz = getelementptr i8, ptr %.11056.lcssa.i, i64 %i.edy ; 2 uses
  %i.eea = shl nuw nsw i64 %n.vec1430, 3
  %i.eeb = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eea ; 2 uses
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %vector.ph1429
  %index1432 = phi i64 [ 0, %vector.ph1429 ], [ %index.next1455, %vector.body1431 ] ; 3 uses
  %vec.phi1433 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.emo, %vector.body1431 ]
  %vec.phi1434 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.ekl, %vector.body1431 ]
  %vec.phi1435 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.eii, %vector.body1431 ]
  %vec.phi1436 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.egf, %vector.body1431 ]
  %vec.phi1437 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.eln, %vector.body1431 ]
  %vec.phi1438 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.ejk, %vector.body1431 ]
  %vec.phi1439 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.ehh, %vector.body1431 ]
  %vec.phi1440 = phi <8 x i32> [ zeroinitializer, %vector.ph1429 ], [ %i.efe, %vector.body1431 ]
  %i.eec = shl i64 %index1432, 2
  %next.gep1441 = getelementptr i8, ptr %.11056.lcssa.i, i64 %i.eec
  %i.eed = shl i64 %index1432, 3                  ; 8 uses
  %next.gep1442 = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %i.eee = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1443 = getelementptr i8, ptr %i.eee, i64 8
  %i.eef = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1444 = getelementptr i8, ptr %i.eef, i64 16
  %i.eeg = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1445 = getelementptr i8, ptr %i.eeg, i64 24
  %i.eeh = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1446 = getelementptr i8, ptr %i.eeh, i64 32
  %i.eei = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1447 = getelementptr i8, ptr %i.eei, i64 40
  %i.eej = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1448 = getelementptr i8, ptr %i.eej, i64 48
  %i.eek = getelementptr i8, ptr %.101165.lcssa.i, i64 %i.eed ; 8 uses
  %next.gep1449 = getelementptr i8, ptr %i.eek, i64 56
  %wide.vec1450 = load <32 x i8>, ptr %next.gep1441, align 1, !tbaa !17 ; 4 uses
  %strided.vec1451 = shufflevector <32 x i8> %wide.vec1450, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1452 = shufflevector <32 x i8> %wide.vec1450, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1453 = shufflevector <32 x i8> %wide.vec1450, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1454 = shufflevector <32 x i8> %wide.vec1450, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eel = sext <8 x i8> %strided.vec1451 to <8 x i32> ; 2 uses
  %i.eem = load i8, ptr %next.gep1442, align 1, !tbaa !17
  %i.een = load i8, ptr %next.gep1443, align 1, !tbaa !17
  %i.eeo = load i8, ptr %next.gep1444, align 1, !tbaa !17
  %i.eep = load i8, ptr %next.gep1445, align 1, !tbaa !17
  %i.eeq = load i8, ptr %next.gep1446, align 1, !tbaa !17
  %i.eer = load i8, ptr %next.gep1447, align 1, !tbaa !17
  %i.ees = load i8, ptr %next.gep1448, align 1, !tbaa !17
  %i.eet = load i8, ptr %next.gep1449, align 1, !tbaa !17
  %i.eeu = insertelement <8 x i8> poison, i8 %i.eem, i64 0
  %i.eev = insertelement <8 x i8> %i.eeu, i8 %i.een, i64 1
  %i.eew = insertelement <8 x i8> %i.eev, i8 %i.eeo, i64 2
  %i.eex = insertelement <8 x i8> %i.eew, i8 %i.eep, i64 3
  %i.eey = insertelement <8 x i8> %i.eex, i8 %i.eeq, i64 4
  %i.eez = insertelement <8 x i8> %i.eey, i8 %i.eer, i64 5
  %i.efa = insertelement <8 x i8> %i.eez, i8 %i.ees, i64 6
  %i.efb = insertelement <8 x i8> %i.efa, i8 %i.eet, i64 7
  %i.efc = sext <8 x i8> %i.efb to <8 x i32>
  %i.efd = mul nsw <8 x i32> %i.efc, %i.eel
  %i.efe = add <8 x i32> %i.efd, %vec.phi1440     ; 2 uses
  %i.eff = getelementptr inbounds nuw i8, ptr %next.gep1442, i64 1
  %i.efg = getelementptr i8, ptr %i.eee, i64 9
  %i.efh = getelementptr i8, ptr %i.eef, i64 17
  %i.efi = getelementptr i8, ptr %i.eeg, i64 25
  %i.efj = getelementptr i8, ptr %i.eeh, i64 33
  %i.efk = getelementptr i8, ptr %i.eei, i64 41
  %i.efl = getelementptr i8, ptr %i.eej, i64 49
  %i.efm = getelementptr i8, ptr %i.eek, i64 57
  %i.efn = load i8, ptr %i.eff, align 1, !tbaa !17
  %i.efo = load i8, ptr %i.efg, align 1, !tbaa !17
  %i.efp = load i8, ptr %i.efh, align 1, !tbaa !17
  %i.efq = load i8, ptr %i.efi, align 1, !tbaa !17
  %i.efr = load i8, ptr %i.efj, align 1, !tbaa !17
  %i.efs = load i8, ptr %i.efk, align 1, !tbaa !17
  %i.eft = load i8, ptr %i.efl, align 1, !tbaa !17
  %i.efu = load i8, ptr %i.efm, align 1, !tbaa !17
  %i.efv = insertelement <8 x i8> poison, i8 %i.efn, i64 0
  %i.efw = insertelement <8 x i8> %i.efv, i8 %i.efo, i64 1
  %i.efx = insertelement <8 x i8> %i.efw, i8 %i.efp, i64 2
  %i.efy = insertelement <8 x i8> %i.efx, i8 %i.efq, i64 3
  %i.efz = insertelement <8 x i8> %i.efy, i8 %i.efr, i64 4
  %i.ega = insertelement <8 x i8> %i.efz, i8 %i.efs, i64 5
  %i.egb = insertelement <8 x i8> %i.ega, i8 %i.eft, i64 6
  %i.egc = insertelement <8 x i8> %i.egb, i8 %i.efu, i64 7
  %i.egd = sext <8 x i8> %i.egc to <8 x i32>
  %i.ege = mul nsw <8 x i32> %i.egd, %i.eel
  %i.egf = add <8 x i32> %i.ege, %vec.phi1436     ; 2 uses
  %i.egg = sext <8 x i8> %strided.vec1452 to <8 x i32> ; 2 uses
  %i.egh = getelementptr inbounds nuw i8, ptr %next.gep1442, i64 2
  %i.egi = getelementptr i8, ptr %i.eee, i64 10
  %i.egj = getelementptr i8, ptr %i.eef, i64 18
  %i.egk = getelementptr i8, ptr %i.eeg, i64 26
  %i.egl = getelementptr i8, ptr %i.eeh, i64 34
  %i.egm = getelementptr i8, ptr %i.eei, i64 42
  %i.egn = getelementptr i8, ptr %i.eej, i64 50
  %i.ego = getelementptr i8, ptr %i.eek, i64 58
  %i.egp = load i8, ptr %i.egh, align 1, !tbaa !17
  %i.egq = load i8, ptr %i.egi, align 1, !tbaa !17
  %i.egr = load i8, ptr %i.egj, align 1, !tbaa !17
  %i.egs = load i8, ptr %i.egk, align 1, !tbaa !17
  %i.egt = load i8, ptr %i.egl, align 1, !tbaa !17
  %i.egu = load i8, ptr %i.egm, align 1, !tbaa !17
  %i.egv = load i8, ptr %i.egn, align 1, !tbaa !17
  %i.egw = load i8, ptr %i.ego, align 1, !tbaa !17
  %i.egx = insertelement <8 x i8> poison, i8 %i.egp, i64 0
  %i.egy = insertelement <8 x i8> %i.egx, i8 %i.egq, i64 1
  %i.egz = insertelement <8 x i8> %i.egy, i8 %i.egr, i64 2
  %i.eha = insertelement <8 x i8> %i.egz, i8 %i.egs, i64 3
  %i.ehb = insertelement <8 x i8> %i.eha, i8 %i.egt, i64 4
  %i.ehc = insertelement <8 x i8> %i.ehb, i8 %i.egu, i64 5
  %i.ehd = insertelement <8 x i8> %i.ehc, i8 %i.egv, i64 6
  %i.ehe = insertelement <8 x i8> %i.ehd, i8 %i.egw, i64 7
  %i.ehf = sext <8 x i8> %i.ehe to <8 x i32>
  %i.ehg = mul nsw <8 x i32> %i.ehf, %i.egg
  %i.ehh = add <8 x i32> %i.ehg, %vec.phi1439     ; 2 uses
  %i.ehi = getelementptr inbounds nuw i8, ptr %next.gep1442, i64 3
  %i.ehj = getelementptr i8, ptr %i.eee, i64 11
  %i.ehk = getelementptr i8, ptr %i.eef, i64 19
  %i.ehl = getelementptr i8, ptr %i.eeg, i64 27
  %i.ehm = getelementptr i8, ptr %i.eeh, i64 35
  %i.ehn = getelementptr i8, ptr %i.eei, i64 43
  %i.eho = getelementptr i8, ptr %i.eej, i64 51
  %i.ehp = getelementptr i8, ptr %i.eek, i64 59
  %i.ehq = load i8, ptr %i.ehi, align 1, !tbaa !17
  %i.ehr = load i8, ptr %i.ehj, align 1, !tbaa !17
  %i.ehs = load i8, ptr %i.ehk, align 1, !tbaa !17
  %i.eht = load i8, ptr %i.ehl, align 1, !tbaa !17
  %i.ehu = load i8, ptr %i.ehm, align 1, !tbaa !17
  %i.ehv = load i8, ptr %i.ehn, align 1, !tbaa !17
  %i.ehw = load i8, ptr %i.eho, align 1, !tbaa !17
  %i.ehx = load i8, ptr %i.ehp, align 1, !tbaa !17
  %i.ehy = insertelement <8 x i8> poison, i8 %i.ehq, i64 0
  %i.ehz = insertelement <8 x i8> %i.ehy, i8 %i.ehr, i64 1
  %i.eia = insertelement <8 x i8> %i.ehz, i8 %i.ehs, i64 2
  %i.eib = insertelement <8 x i8> %i.eia, i8 %i.eht, i64 3
  %i.eic = insertelement <8 x i8> %i.eib, i8 %i.ehu, i64 4
  %i.eid = insertelement <8 x i8> %i.eic, i8 %i.ehv, i64 5
  %i.eie = insertelement <8 x i8> %i.eid, i8 %i.ehw, i64 6
  %i.eif = insertelement <8 x i8> %i.eie, i8 %i.ehx, i64 7
  %i.eig = sext <8 x i8> %i.eif to <8 x i32>
  %i.eih = mul nsw <8 x i32> %i.eig, %i.egg
  %i.eii = add <8 x i32> %i.eih, %vec.phi1435     ; 2 uses
  %i.eij = sext <8 x i8> %strided.vec1453 to <8 x i32> ; 2 uses
  %i.eik = getelementptr inbounds nuw i8, ptr %next.gep1442, i64 4
  %i.eil = getelementptr i8, ptr %i.eee, i64 12
  %i.eim = getelementptr i8, ptr %i.eef, i64 20
  %i.ein = getelementptr i8, ptr %i.eeg, i64 28
  %i.eio = getelementptr i8, ptr %i.eeh, i64 36
  %i.eip = getelementptr i8, ptr %i.eei, i64 44
  %i.eiq = getelementptr i8, ptr %i.eej, i64 52
  %i.eir = getelementptr i8, ptr %i.eek, i64 60
  %i.eis = load i8, ptr %i.eik, align 1, !tbaa !17
  %i.eit = load i8, ptr %i.eil, align 1, !tbaa !17
  %i.eiu = load i8, ptr %i.eim, align 1, !tbaa !17
  %i.eiv = load i8, ptr %i.ein, align 1, !tbaa !17
  %i.eiw = load i8, ptr %i.eio, align 1, !tbaa !17
  %i.eix = load i8, ptr %i.eip, align 1, !tbaa !17
  %i.eiy = load i8, ptr %i.eiq, align 1, !tbaa !17
  %i.eiz = load i8, ptr %i.eir, align 1, !tbaa !17
  %i.eja = insertelement <8 x i8> poison, i8 %i.eis, i64 0
  %i.ejb = insertelement <8 x i8> %i.eja, i8 %i.eit, i64 1
  %i.ejc = insertelement <8 x i8> %i.ejb, i8 %i.eiu, i64 2
  %i.ejd = insertelement <8 x i8> %i.ejc, i8 %i.eiv, i64 3
  %i.eje = insertelement <8 x i8> %i.ejd, i8 %i.eiw, i64 4
  %i.ejf = insertelement <8 x i8> %i.eje, i8 %i.eix, i64 5
  %i.ejg = insertelement <8 x i8> %i.ejf, i8 %i.eiy, i64 6
  %i.ejh = insertelement <8 x i8> %i.ejg, i8 %i.eiz, i64 7
  %i.eji = sext <8 x i8> %i.ejh to <8 x i32>
  %i.ejj = mul nsw <8 x i32> %i.eji, %i.eij
  %i.ejk = add <8 x i32> %i.ejj, %vec.phi1438     ; 2 uses
  %i.ejl = getelementptr inbounds nuw i8, ptr %next.gep1442, i64 5
  %i.ejm = getelementptr i8, ptr %i.eee, i64 13
  %i.ejn = getelementptr i8, ptr %i.eef, i64 21
  %i.ejo = getelementptr i8, ptr %i.eeg, i64 29
  %i.ejp = getelementptr i8, ptr %i.eeh, i64 37
  %i.ejq = getelementptr i8, ptr %i.eei, i64 45
  %i.ejr = getelementptr i8, ptr %i.eej, i64 53
  %i.ejs = getelementptr i8, ptr %i.eek, i64 61
  %i.ejt = load i8, ptr %i.ejl, align 1, !tbaa !17
  %i.eju = load i8, ptr %i.ejm, align 1, !tbaa !17
  %i.ejv = load i8, ptr %i.ejn, align 1, !tbaa !17
  %i.ejw = load i8, ptr %i.ejo, align 1, !tbaa !17
  %i.ejx = load i8, ptr %i.ejp, align 1, !tbaa !17
  %i.ejy = load i8, ptr %i.ejq, align 1, !tbaa !17
  %i.ejz = load i8, ptr %i.ejr, align 1, !tbaa !17
  %i.eka = load i8, ptr %i.ejs, align 1, !tbaa !17
  %i.ekb = insertelement <8 x i8> poison, i8 %i.ejt, i64 0
  %i.ekc = insertelement <8 x i8> %i.ekb, i8 %i.eju, i64 1
  %i.ekd = insertelement <8 x i8> %i.ekc, i8 %i.ejv, i64 2
  %i.eke = insertelement <8 x i8> %i.ekd, i8 %i.ejw, i64 3
end_hunk_1
begin_hunk_2_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.eqc = sext <8 x i8> %wide.load1384 to <8 x i32> ; 2 uses
  %i.eqd = sext <8 x i8> %wide.load1385 to <8 x i32> ; 2 uses
  %wide.vec1386 = load <16 x i8>, ptr %next.gep1382, align 1, !tbaa !17 ; 2 uses
  %strided.vec1387 = shufflevector <16 x i8> %wide.vec1386, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1388 = shufflevector <16 x i8> %wide.vec1386, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1389 = load <16 x i8>, ptr %next.gep1383, align 1, !tbaa !17 ; 2 uses
  %strided.vec1390 = shufflevector <16 x i8> %wide.vec1389, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1391 = shufflevector <16 x i8> %wide.vec1389, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eqe = sext <8 x i8> %strided.vec1387 to <8 x i32>
  %i.eqf = sext <8 x i8> %strided.vec1390 to <8 x i32>
  %i.eqg = mul nsw <8 x i32> %i.eqe, %i.eqc
  %i.eqh = mul nsw <8 x i32> %i.eqf, %i.eqd
  %i.eqi = add <8 x i32> %i.eqg, %vec.phi1379     ; 2 uses
  %i.eqj = add <8 x i32> %i.eqh, %vec.phi1380     ; 2 uses
  %i.eqk = sext <8 x i8> %strided.vec1388 to <8 x i32>
  %i.eql = sext <8 x i8> %strided.vec1391 to <8 x i32>
  %i.eqm = mul nsw <8 x i32> %i.eqk, %i.eqc
  %i.eqn = mul nsw <8 x i32> %i.eql, %i.eqd
  %i.eqo = add <8 x i32> %i.eqm, %vec.phi1377     ; 2 uses
  %i.eqp = add <8 x i32> %i.eqn, %vec.phi1378     ; 2 uses
  %index.next1392 = add nuw i64 %index1376, 16    ; 2 uses
  %i.eqq = icmp eq i64 %index.next1392, %n.vec1374
  br i1 %i.eqq, label %middle.block1393, label %vector.body1375, !llvm.loop !374

middle.block1393:                                 ; preds = %vector.body1375
  %bin.rdx1394 = add <8 x i32> %i.eqp, %i.eqo
  %i.eqr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1394) ; 3 uses
  %bin.rdx1395 = add <8 x i32> %i.eqj, %i.eqi
  %i.eqs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1395) ; 3 uses
  %cmp.n1396 = icmp eq i64 %i.epq, %n.vec1374
  br i1 %cmp.n1396, label %._crit_edge1107.i, label %vec.epilog.iter.check1405

vec.epilog.iter.check1405:                        ; preds = %middle.block1393
  %min.epilog.iters.check1406 = icmp eq i64 %i.epr, 0
  br i1 %min.epilog.iters.check1406, label %.lr.ph1106.i.preheader, label %vec.epilog.ph1407, !prof !40

vec.epilog.ph1407:                                ; preds = %vector.main.loop.iter.check1371, %vec.epilog.iter.check1405
  %vec.epilog.resume.val1397 = phi i64 [ %n.vec1374, %vec.epilog.iter.check1405 ], [ 0, %vector.main.loop.iter.check1371 ]
  %bc.merge.rdx1400 = phi i32 [ %i.eqr, %vec.epilog.iter.check1405 ], [ %i.epl, %vector.main.loop.iter.check1371 ]
  %bc.merge.rdx1401 = phi i32 [ %i.eqs, %vec.epilog.iter.check1405 ], [ %i.eph, %vector.main.loop.iter.check1371 ]
  %n.vec1408 = and i64 %i.epq, 8589934588         ; 5 uses
  %i.eqt = trunc i64 %n.vec1408 to i32
  %i.equ = add i32 %.21054.lcssa.i, %i.eqt
  %i.eqv = getelementptr i8, ptr %.21057.lcssa.i, i64 %n.vec1408
  %i.eqw = shl nuw nsw i64 %n.vec1408, 1
  %i.eqx = getelementptr i8, ptr %.111166.lcssa.i, i64 %i.eqw ; 2 uses
  %i.eqy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1400, i64 0
  %i.eqz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1401, i64 0
  br label %vec.epilog.vector.body1409

vec.epilog.vector.body1409:                       ; preds = %vec.epilog.vector.body1409, %vec.epilog.ph1407
  %index1410 = phi i64 [ %vec.epilog.resume.val1397, %vec.epilog.ph1407 ], [ %index.next1419, %vec.epilog.vector.body1409 ] ; 3 uses
  %vec.phi1411 = phi <4 x i32> [ %i.eqy, %vec.epilog.ph1407 ], [ %i.erh, %vec.epilog.vector.body1409 ]
  %vec.phi1412 = phi <4 x i32> [ %i.eqz, %vec.epilog.ph1407 ], [ %i.ere, %vec.epilog.vector.body1409 ]
  %next.gep1413 = getelementptr i8, ptr %.21057.lcssa.i, i64 %index1410
  %i.era = shl i64 %index1410, 1
  %next.gep1414 = getelementptr i8, ptr %.111166.lcssa.i, i64 %i.era
  %wide.load1415 = load <4 x i8>, ptr %next.gep1413, align 1, !tbaa !17
  %i.erb = sext <4 x i8> %wide.load1415 to <4 x i32> ; 2 uses
  %wide.vec1416 = load <8 x i8>, ptr %next.gep1414, align 1, !tbaa !17 ; 2 uses
  %strided.vec1417 = shufflevector <8 x i8> %wide.vec1416, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1418 = shufflevector <8 x i8> %wide.vec1416, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.erc = sext <4 x i8> %strided.vec1417 to <4 x i32>
  %i.erd = mul nsw <4 x i32> %i.erc, %i.erb
  %i.ere = add <4 x i32> %i.erd, %vec.phi1412     ; 2 uses
  %i.erf = sext <4 x i8> %strided.vec1418 to <4 x i32>
  %i.erg = mul nsw <4 x i32> %i.erf, %i.erb
  %i.erh = add <4 x i32> %i.erg, %vec.phi1411     ; 2 uses
  %index.next1419 = add nuw i64 %index1410, 4     ; 2 uses
  %i.eri = icmp eq i64 %index.next1419, %n.vec1408
  br i1 %i.eri, label %vec.epilog.middle.block1420, label %vec.epilog.vector.body1409, !llvm.loop !375

vec.epilog.middle.block1420:                      ; preds = %vec.epilog.vector.body1409
  %i.erj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.erh) ; 2 uses
  %i.erk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ere) ; 2 uses
  %cmp.n1421 = icmp eq i64 %i.epq, %n.vec1408
  br i1 %cmp.n1421, label %._crit_edge1107.i, label %.lr.ph1106.i.preheader

.lr.ph1106.i.preheader:                           ; preds = %iter.check1403, %vec.epilog.iter.check1405, %vec.epilog.middle.block1420
  %.31104.i.ph = phi i32 [ %.21054.lcssa.i, %iter.check1403 ], [ %i.ept, %vec.epilog.iter.check1405 ], [ %i.equ, %vec.epilog.middle.block1420 ]
  %.310581103.i.ph = phi ptr [ %.21057.lcssa.i, %iter.check1403 ], [ %i.epu, %vec.epilog.iter.check1405 ], [ %i.eqv, %vec.epilog.middle.block1420 ]
  %.310621102.i.ph = phi i32 [ %i.epl, %iter.check1403 ], [ %i.eqr, %vec.epilog.iter.check1405 ], [ %i.erj, %vec.epilog.middle.block1420 ]
  %.310661101.i.ph = phi i32 [ %i.eph, %iter.check1403 ], [ %i.eqs, %vec.epilog.iter.check1405 ], [ %i.erk, %vec.epilog.middle.block1420 ]
  %.1211671100.i.ph = phi ptr [ %.111166.lcssa.i, %iter.check1403 ], [ %i.epw, %vec.epilog.iter.check1405 ], [ %i.eqx, %vec.epilog.middle.block1420 ]
  br label %.lr.ph1106.i

.lr.ph1106.i:                                     ; preds = %.lr.ph1106.i.preheader, %.lr.ph1106.i
  %.31104.i = phi i32 [ %i.ery, %.lr.ph1106.i ], [ %.31104.i.ph, %.lr.ph1106.i.preheader ]
  %.310581103.i = phi ptr [ %i.erw, %.lr.ph1106.i ], [ %.310581103.i.ph, %.lr.ph1106.i.preheader ] ; 2 uses
  %.310621102.i = phi i32 [ %i.erv, %.lr.ph1106.i ], [ %.310621102.i.ph, %.lr.ph1106.i.preheader ]
  %.310661101.i = phi i32 [ %i.erq, %.lr.ph1106.i ], [ %.310661101.i.ph, %.lr.ph1106.i.preheader ]
  %.1211671100.i = phi ptr [ %i.erx, %.lr.ph1106.i ], [ %.1211671100.i.ph, %.lr.ph1106.i.preheader ] ; 3 uses
  %i.erl = load i8, ptr %.310581103.i, align 1, !tbaa !17
  %i.erm = sext i8 %i.erl to i32                  ; 2 uses
  %i.ern = load i8, ptr %.1211671100.i, align 1, !tbaa !17
  %i.ero = sext i8 %i.ern to i32
  %i.erp = mul nsw i32 %i.ero, %i.erm
  %i.erq = add nsw i32 %i.erp, %.310661101.i      ; 2 uses
  %i.err = getelementptr inbounds nuw i8, ptr %.1211671100.i, i64 1
  %i.ers = load i8, ptr %i.err, align 1, !tbaa !17
  %i.ert = sext i8 %i.ers to i32
  %i.eru = mul nsw i32 %i.ert, %i.erm
  %i.erv = add nsw i32 %i.eru, %.310621102.i      ; 2 uses
  %i.erw = getelementptr inbounds nuw i8, ptr %.310581103.i, i64 1
  %i.erx = getelementptr inbounds nuw i8, ptr %.1211671100.i, i64 2 ; 2 uses
  %i.ery = add nuw nsw i32 %.31104.i, 1           ; 2 uses
  %exitcond1483.not.i = icmp eq i32 %i.ery, %8
  br i1 %exitcond1483.not.i, label %._crit_edge1107.i, label %.lr.ph1106.i, !llvm.loop !376

._crit_edge1107.i:                                ; preds = %.lr.ph1106.i, %middle.block1393, %vec.epilog.middle.block1420, %._crit_edge1088.i
  %.121167.lcssa.i = phi ptr [ %.111166.lcssa.i, %._crit_edge1088.i ], [ %i.eqx, %vec.epilog.middle.block1420 ], [ %i.epw, %middle.block1393 ], [ %i.erx, %.lr.ph1106.i ] ; 2 uses
  %.31066.lcssa.i = phi i32 [ %i.eph, %._crit_edge1088.i ], [ %i.erk, %vec.epilog.middle.block1420 ], [ %i.eqs, %middle.block1393 ], [ %i.erq, %.lr.ph1106.i ]
  %.31062.lcssa.i = phi i32 [ %i.epl, %._crit_edge1088.i ], [ %i.erj, %vec.epilog.middle.block1420 ], [ %i.eqr, %middle.block1393 ], [ %i.erv, %.lr.ph1106.i ]
  store i32 %.31066.lcssa.i, ptr %.181113.i, align 4, !tbaa !164
  %i.erz = getelementptr inbounds nuw i8, ptr %.181113.i, i64 4
  store i32 %.31062.lcssa.i, ptr %i.erz, align 4, !tbaa !164
  %i.esa = getelementptr inbounds nuw i8, ptr %.181113.i, i64 8 ; 2 uses
  %i.esb = add nuw nsw i32 %.211531112.i, 2       ; 3 uses
  %i.esc = or disjoint i32 %i.esb, 1
  %i.esd = icmp slt i32 %i.esc, %6
  br i1 %i.esd, label %.lr.ph1114.i, label %.preheader380.i, !llvm.loop !377

.lr.ph1156.i:                                     ; preds = %.lr.ph1156.i.preheader, %._crit_edge1150.i
  %.191155.i = phi ptr [ %i.exn, %._crit_edge1150.i ], [ %.18.lcssa.i, %.lr.ph1156.i.preheader ] ; 3 uses
  %.311541154.i = phi i32 [ %i.exo, %._crit_edge1150.i ], [ %.21153.lcssa.i, %.lr.ph1156.i.preheader ]
  %.1311681153.i = phi ptr [ %.161171.lcssa.i, %._crit_edge1150.i ], [ %.81163.lcssa.i, %.lr.ph1156.i.preheader ] ; 5 uses
  br i1 %i.ajm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph1156.i
  %i.ese = load i32, ptr %.191155.i, align 4, !tbaa !164
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph1156.i
  %.01041.i = phi i32 [ %i.ese, %bb.af ], [ 0, %.lr.ph1156.i ] ; 3 uses
  br i1 %i.ajn, label %.lr.ph1123.i.preheader, label %.preheader.i

.lr.ph1123.i.preheader:                           ; preds = %bb.ag
  br i1 %min.iters.check1344, label %.lr.ph1123.i.preheader1629, label %vector.ph1345

vector.ph1345:                                    ; preds = %.lr.ph1123.i.preheader
  %i.esf = getelementptr i8, ptr %.1311681153.i, i64 %i.aku
  %i.esg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01041.i, i64 0
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1345
  %index1348 = phi i64 [ 0, %vector.ph1345 ], [ %index.next1362, %vector.body1347 ] ; 2 uses
  %vec.phi1349 = phi <8 x i32> [ %i.esg, %vector.ph1345 ], [ %i.esx, %vector.body1347 ]
  %i.esh = shl i64 %index1348, 2                  ; 2 uses
  %next.gep1350 = getelementptr i8, ptr %.310701161.i, i64 %i.esh
  %next.gep1351 = getelementptr i8, ptr %.1311681153.i, i64 %i.esh
  %wide.vec1352 = load <32 x i8>, ptr %next.gep1350, align 1, !tbaa !17 ; 4 uses
  %strided.vec1353 = shufflevector <32 x i8> %wide.vec1352, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1354 = shufflevector <32 x i8> %wide.vec1352, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1355 = shufflevector <32 x i8> %wide.vec1352, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1356 = shufflevector <32 x i8> %wide.vec1352, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.esi = sext <8 x i8> %strided.vec1353 to <8 x i32>
  %wide.vec1357 = load <32 x i8>, ptr %next.gep1351, align 1, !tbaa !17 ; 4 uses
  %strided.vec1358 = shufflevector <32 x i8> %wide.vec1357, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1359 = shufflevector <32 x i8> %wide.vec1357, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1360 = shufflevector <32 x i8> %wide.vec1357, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1361 = shufflevector <32 x i8> %wide.vec1357, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.esj = sext <8 x i8> %strided.vec1358 to <8 x i32>
  %i.esk = mul nsw <8 x i32> %i.esj, %i.esi
  %i.esl = add <8 x i32> %i.esk, %vec.phi1349
  %i.esm = sext <8 x i8> %strided.vec1354 to <8 x i32>
  %i.esn = sext <8 x i8> %strided.vec1359 to <8 x i32>
  %i.eso = mul nsw <8 x i32> %i.esn, %i.esm
  %i.esp = add <8 x i32> %i.esl, %i.eso
  %i.esq = sext <8 x i8> %strided.vec1355 to <8 x i32>
  %i.esr = sext <8 x i8> %strided.vec1360 to <8 x i32>
  %i.ess = mul nsw <8 x i32> %i.esr, %i.esq
  %i.est = add <8 x i32> %i.esp, %i.ess
  %i.esu = sext <8 x i8> %strided.vec1356 to <8 x i32>
  %i.esv = sext <8 x i8> %strided.vec1361 to <8 x i32>
  %i.esw = mul nsw <8 x i32> %i.esv, %i.esu
  %i.esx = add <8 x i32> %i.est, %i.esw           ; 2 uses
  %index.next1362 = add nuw i64 %index1348, 8     ; 2 uses
  %i.esy = icmp eq i64 %index.next1362, %n.vec1346
  br i1 %i.esy, label %middle.block1363, label %vector.body1347, !llvm.loop !378

middle.block1363:                                 ; preds = %vector.body1347
  %i.esz = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.esx) ; 2 uses
  br i1 %cmp.n1364, label %.preheader.loopexit.i, label %.lr.ph1123.i.preheader1629

.lr.ph1123.i.preheader1629:                       ; preds = %.lr.ph1123.i.preheader, %middle.block1363
  %.010371121.i.ph = phi i32 [ 0, %.lr.ph1123.i.preheader ], [ %i.akt, %middle.block1363 ]
  %.010381120.i.ph = phi ptr [ %.310701161.i, %.lr.ph1123.i.preheader ], [ %i.ddo, %middle.block1363 ]
  %.110421119.i.ph = phi i32 [ %.01041.i, %.lr.ph1123.i.preheader ], [ %i.esz, %middle.block1363 ]
  %.1411691118.i.ph = phi ptr [ %.1311681153.i, %.lr.ph1123.i.preheader ], [ %i.esf, %middle.block1363 ]
  br label %.lr.ph1123.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1123.i, %middle.block1363
  %.lcssa793 = phi i32 [ %i.esz, %middle.block1363 ], [ %op.rdx1623, %.lr.ph1123.i ]
  %scevgep1484.i = getelementptr i8, ptr %.1311681153.i, i64 %i.ajx
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ag
  %.141169.lcssa.i = phi ptr [ %.1311681153.i, %bb.ag ], [ %scevgep1484.i, %.preheader.loopexit.i ] ; 4 uses
  %.11042.lcssa.i = phi i32 [ %.01041.i, %bb.ag ], [ %.lcssa793, %.preheader.loopexit.i ]
  %.01038.lcssa.i = phi ptr [ %.310701161.i, %bb.ag ], [ %indvars.iv1480.i, %.preheader.loopexit.i ] ; 4 uses
  %.01037.lcssa.i = phi i32 [ 0, %bb.ag ], [ %i.ajr, %.preheader.loopexit.i ] ; 6 uses
  %i.eta = or disjoint i32 %.01037.lcssa.i, 3
  %i.etb = icmp slt i32 %i.eta, %8
  br i1 %i.etb, label %.lr.ph1135.i.preheader, label %._crit_edge1136.i

.lr.ph1135.i.preheader:                           ; preds = %.preheader.i
  %12 = add i32 %.01037.lcssa.i, 7
  %13 = tail call i32 @llvm.smax.i32(i32 %8, i32 %12)
  %14 = add i32 %13, -4
  %i.etc = sub i32 %14, %.01037.lcssa.i           ; 2 uses
  %i.etd = lshr i32 %i.etc, 2
  %narrow1622 = add nuw nsw i32 %i.etd, 1
  %i.ete = zext nneg i32 %narrow1622 to i64       ; 2 uses
  %min.iters.check1312 = icmp ult i32 %i.etc, 28
  br i1 %min.iters.check1312, label %.lr.ph1135.i.preheader1628, label %vector.ph1313

vector.ph1313:                                    ; preds = %.lr.ph1135.i.preheader
  %n.vec1314 = and i64 %i.ete, 2147483640         ; 4 uses
  %i.etf = trunc nuw nsw i64 %n.vec1314 to i32
  %i.etg = shl i32 %i.etf, 2
  %i.eth = add i32 %.01037.lcssa.i, %i.etg        ; 2 uses
  %i.eti = shl nuw nsw i64 %n.vec1314, 2          ; 2 uses
  %i.etj = getelementptr i8, ptr %.01038.lcssa.i, i64 %i.eti ; 2 uses
  %i.etk = getelementptr i8, ptr %.141169.lcssa.i, i64 %i.eti ; 2 uses
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1333, %vector.body1315 ] ; 2 uses
  %vec.phi1317 = phi <8 x i32> [ zeroinitializer, %vector.ph1313 ], [ %i.eub, %vector.body1315 ]
  %vec.phi1318 = phi <8 x i32> [ zeroinitializer, %vector.ph1313 ], [ %i.etx, %vector.body1315 ]
  %vec.phi1319 = phi <8 x i32> [ zeroinitializer, %vector.ph1313 ], [ %i.ett, %vector.body1315 ]
  %vec.phi1320 = phi <8 x i32> [ zeroinitializer, %vector.ph1313 ], [ %i.etp, %vector.body1315 ]
  %i.etl = shl i64 %index1316, 2                  ; 2 uses
  %next.gep1321 = getelementptr i8, ptr %.01038.lcssa.i, i64 %i.etl
  %next.gep1322 = getelementptr i8, ptr %.141169.lcssa.i, i64 %i.etl
  %wide.vec1323 = load <32 x i8>, ptr %next.gep1321, align 1, !tbaa !17 ; 4 uses
  %strided.vec1324 = shufflevector <32 x i8> %wide.vec1323, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1325 = shufflevector <32 x i8> %wide.vec1323, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1326 = shufflevector <32 x i8> %wide.vec1323, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1327 = shufflevector <32 x i8> %wide.vec1323, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.etm = sext <8 x i8> %strided.vec1324 to <8 x i32>
  %wide.vec1328 = load <32 x i8>, ptr %next.gep1322, align 1, !tbaa !17 ; 4 uses
  %strided.vec1329 = shufflevector <32 x i8> %wide.vec1328, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1330 = shufflevector <32 x i8> %wide.vec1328, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1331 = shufflevector <32 x i8> %wide.vec1328, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1332 = shufflevector <32 x i8> %wide.vec1328, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.etn = sext <8 x i8> %strided.vec1329 to <8 x i32>
  %i.eto = mul nsw <8 x i32> %i.etn, %i.etm
  %i.etp = add <8 x i32> %i.eto, %vec.phi1320     ; 2 uses
  %i.etq = sext <8 x i8> %strided.vec1325 to <8 x i32>
  %i.etr = sext <8 x i8> %strided.vec1330 to <8 x i32>
  %i.ets = mul nsw <8 x i32> %i.etr, %i.etq
  %i.ett = add <8 x i32> %i.ets, %vec.phi1319     ; 2 uses
  %i.etu = sext <8 x i8> %strided.vec1326 to <8 x i32>
  %i.etv = sext <8 x i8> %strided.vec1331 to <8 x i32>
  %i.etw = mul nsw <8 x i32> %i.etv, %i.etu
  %i.etx = add <8 x i32> %i.etw, %vec.phi1318     ; 2 uses
  %i.ety = sext <8 x i8> %strided.vec1327 to <8 x i32>
  %i.etz = sext <8 x i8> %strided.vec1332 to <8 x i32>
  %i.eua = mul nsw <8 x i32> %i.etz, %i.ety
  %i.eub = add <8 x i32> %i.eua, %vec.phi1317     ; 2 uses
  %index.next1333 = add nuw i64 %index1316, 8     ; 2 uses
  %i.euc = icmp eq i64 %index.next1333, %n.vec1314
  br i1 %i.euc, label %middle.block1334, label %vector.body1315, !llvm.loop !379

middle.block1334:                                 ; preds = %vector.body1315
  %i.eud = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eub)
  %i.eue = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.etx)
  %i.euf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ett)
  %i.eug = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.etp)
  %cmp.n1335 = icmp eq i64 %n.vec1314, %i.ete
  %i.euh = insertelement <4 x i32> poison, i32 %i.eug, i64 0
  %i.eui = insertelement <4 x i32> %i.euh, i32 %i.euf, i64 1
  %i.euj = insertelement <4 x i32> %i.eui, i32 %i.eue, i64 2
  %i.euk = insertelement <4 x i32> %i.euj, i32 %i.eud, i64 3 ; 2 uses
  br i1 %cmp.n1335, label %._crit_edge1136.i, label %.lr.ph1135.i.preheader1628

.lr.ph1135.i.preheader1628:                       ; preds = %.lr.ph1135.i.preheader, %middle.block1334
  %.11130.i.ph = phi i32 [ %.01037.lcssa.i, %.lr.ph1135.i.preheader ], [ %i.eth, %middle.block1334 ]
  %.110391129.i.ph = phi ptr [ %.01038.lcssa.i, %.lr.ph1135.i.preheader ], [ %i.etj, %middle.block1334 ]
  %.1511701128.i.ph = phi ptr [ %.141169.lcssa.i, %.lr.ph1135.i.preheader ], [ %i.etk, %middle.block1334 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %.lr.ph1135.i.preheader ], [ %i.euk, %middle.block1334 ]
  br label %.lr.ph1135.i

.lr.ph1123.i:                                     ; preds = %.lr.ph1123.i.preheader1629, %.lr.ph1123.i
  %.010371121.i = phi i32 [ %i.eut, %.lr.ph1123.i ], [ %.010371121.i.ph, %.lr.ph1123.i.preheader1629 ]
  %.010381120.i = phi ptr [ %i.eur, %.lr.ph1123.i ], [ %.010381120.i.ph, %.lr.ph1123.i.preheader1629 ] ; 2 uses
  %.110421119.i = phi i32 [ %op.rdx1623, %.lr.ph1123.i ], [ %.110421119.i.ph, %.lr.ph1123.i.preheader1629 ]
  %.1411691118.i = phi ptr [ %i.eus, %.lr.ph1123.i ], [ %.1411691118.i.ph, %.lr.ph1123.i.preheader1629 ] ; 2 uses
  %i.eul = load <4 x i8>, ptr %.010381120.i, align 1, !tbaa !17
  %i.eum = sext <4 x i8> %i.eul to <4 x i32>
  %i.eun = load <4 x i8>, ptr %.1411691118.i, align 1, !tbaa !17
  %i.euo = sext <4 x i8> %i.eun to <4 x i32>
  %i.eup = mul nsw <4 x i32> %i.euo, %i.eum
  %i.euq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eup)
  %op.rdx1623 = add i32 %i.euq, %.110421119.i     ; 2 uses
  %i.eur = getelementptr inbounds nuw i8, ptr %.010381120.i, i64 4
  %i.eus = getelementptr inbounds nuw i8, ptr %.1411691118.i, i64 4
  %i.eut = add nuw nsw i32 %.010371121.i, 4       ; 2 uses
  %i.euu = or disjoint i32 %i.eut, 3
  %i.euv = icmp slt i32 %i.euu, %8
  br i1 %i.euv, label %.lr.ph1123.i, label %.preheader.loopexit.i, !llvm.loop !380

.lr.ph1135.i:                                     ; preds = %.lr.ph1135.i.preheader1628, %.lr.ph1135.i
  %.11130.i = phi i32 [ %i.evf, %.lr.ph1135.i ], [ %.11130.i.ph, %.lr.ph1135.i.preheader1628 ]
  %.110391129.i = phi ptr [ %i.evd, %.lr.ph1135.i ], [ %.110391129.i.ph, %.lr.ph1135.i.preheader1628 ] ; 2 uses
  %.1511701128.i = phi ptr [ %i.eve, %.lr.ph1135.i ], [ %.1511701128.i.ph, %.lr.ph1135.i.preheader1628 ] ; 2 uses
  %i.euw = phi <4 x i32> [ %i.evc, %.lr.ph1135.i ], [ %.ph, %.lr.ph1135.i.preheader1628 ]
  %i.eux = load <4 x i8>, ptr %.110391129.i, align 1, !tbaa !17
  %i.euy = sext <4 x i8> %i.eux to <4 x i32>
  %i.euz = load <4 x i8>, ptr %.1511701128.i, align 1, !tbaa !17
  %i.eva = sext <4 x i8> %i.euz to <4 x i32>
  %i.evb = mul nsw <4 x i32> %i.eva, %i.euy
  %i.evc = add nsw <4 x i32> %i.evb, %i.euw       ; 2 uses
  %i.evd = getelementptr inbounds nuw i8, ptr %.110391129.i, i64 4 ; 2 uses
  %i.eve = getelementptr inbounds nuw i8, ptr %.1511701128.i, i64 4 ; 2 uses
  %i.evf = add nuw nsw i32 %.11130.i, 4           ; 3 uses
  %i.evg = or disjoint i32 %i.evf, 3
  %i.evh = icmp slt i32 %i.evg, %8
  br i1 %i.evh, label %.lr.ph1135.i, label %._crit_edge1136.i, !llvm.loop !381

._crit_edge1136.i:                                ; preds = %.lr.ph1135.i, %middle.block1334, %.preheader.i
  %.151170.lcssa.i = phi ptr [ %.141169.lcssa.i, %.preheader.i ], [ %i.etk, %middle.block1334 ], [ %i.eve, %.lr.ph1135.i ] ; 6 uses
  %.11039.lcssa.i = phi ptr [ %.01038.lcssa.i, %.preheader.i ], [ %i.etj, %middle.block1334 ], [ %i.evd, %.lr.ph1135.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.01037.lcssa.i, %.preheader.i ], [ %i.eth, %middle.block1334 ], [ %i.evf, %.lr.ph1135.i ] ; 5 uses
  %i.evi = phi <4 x i32> [ zeroinitializer, %.preheader.i ], [ %i.euk, %middle.block1334 ], [ %i.evc, %.lr.ph1135.i ]
  %i.evj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evi)
  %op.rdx = add i32 %i.evj, %.11042.lcssa.i       ; 4 uses
  %i.evk = icmp slt i32 %.1.lcssa.i, %8
  br i1 %i.evk, label %iter.check1291, label %._crit_edge1150.i

iter.check1291:                                   ; preds = %._crit_edge1136.i
  %i.evl = xor i32 %.1.lcssa.i, -1
  %i.evm = add i32 %8, %i.evl                     ; 3 uses
  %i.evn = zext i32 %i.evm to i64
  %i.evo = add nuw nsw i64 %i.evn, 1              ; 5 uses
  %min.iters.check1259 = icmp ult i32 %i.evm, 3
  br i1 %min.iters.check1259, label %.lr.ph1149.i.preheader, label %vector.main.loop.iter.check1260

vector.main.loop.iter.check1260:                  ; preds = %iter.check1291
  %min.iters.check1261 = icmp ult i32 %i.evm, 31
  br i1 %min.iters.check1261, label %vec.epilog.ph1295, label %vector.ph1262

vector.ph1262:                                    ; preds = %vector.main.loop.iter.check1260
  %i.evp = and i64 %i.evo, 28
  %n.vec1263 = and i64 %i.evo, 8589934560         ; 6 uses
  %i.evq = trunc i64 %n.vec1263 to i32
  %i.evr = add i32 %.1.lcssa.i, %i.evq
  %i.evs = getelementptr i8, ptr %.11039.lcssa.i, i64 %n.vec1263
  %i.evt = getelementptr i8, ptr %.151170.lcssa.i, i64 %n.vec1263 ; 2 uses
  %i.evu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1280, %vector.body1264 ] ; 3 uses
  %vec.phi1266 = phi <8 x i32> [ %i.evu, %vector.ph1262 ], [ %i.ewn, %vector.body1264 ]
  %vec.phi1267 = phi <8 x i32> [ zeroinitializer, %vector.ph1262 ], [ %i.ewo, %vector.body1264 ]
  %vec.phi1268 = phi <8 x i32> [ zeroinitializer, %vector.ph1262 ], [ %i.ewp, %vector.body1264 ]
  %vec.phi1269 = phi <8 x i32> [ zeroinitializer, %vector.ph1262 ], [ %i.ewq, %vector.body1264 ]
  %next.gep1270 = getelementptr i8, ptr %.11039.lcssa.i, i64 %index1265 ; 4 uses
  %next.gep1271 = getelementptr i8, ptr %.151170.lcssa.i, i64 %index1265 ; 4 uses
  %i.evv = getelementptr i8, ptr %next.gep1270, i64 8
  %i.evw = getelementptr i8, ptr %next.gep1270, i64 16
  %i.evx = getelementptr i8, ptr %next.gep1270, i64 24
  %wide.load1272 = load <8 x i8>, ptr %next.gep1270, align 1, !tbaa !17
  %wide.load1273 = load <8 x i8>, ptr %i.evv, align 1, !tbaa !17
  %wide.load1274 = load <8 x i8>, ptr %i.evw, align 1, !tbaa !17
  %wide.load1275 = load <8 x i8>, ptr %i.evx, align 1, !tbaa !17
  %i.evy = sext <8 x i8> %wide.load1272 to <8 x i32>
  %i.evz = sext <8 x i8> %wide.load1273 to <8 x i32>
  %i.ewa = sext <8 x i8> %wide.load1274 to <8 x i32>
  %i.ewb = sext <8 x i8> %wide.load1275 to <8 x i32>
  %i.ewc = getelementptr i8, ptr %next.gep1271, i64 8
  %i.ewd = getelementptr i8, ptr %next.gep1271, i64 16
  %i.ewe = getelementptr i8, ptr %next.gep1271, i64 24
  %wide.load1276 = load <8 x i8>, ptr %next.gep1271, align 1, !tbaa !17
  %wide.load1277 = load <8 x i8>, ptr %i.ewc, align 1, !tbaa !17
  %wide.load1278 = load <8 x i8>, ptr %i.ewd, align 1, !tbaa !17
  %wide.load1279 = load <8 x i8>, ptr %i.ewe, align 1, !tbaa !17
  %i.ewf = sext <8 x i8> %wide.load1276 to <8 x i32>
  %i.ewg = sext <8 x i8> %wide.load1277 to <8 x i32>
  %i.ewh = sext <8 x i8> %wide.load1278 to <8 x i32>
  %i.ewi = sext <8 x i8> %wide.load1279 to <8 x i32>
  %i.ewj = mul nsw <8 x i32> %i.ewf, %i.evy
  %i.ewk = mul nsw <8 x i32> %i.ewg, %i.evz
  %i.ewl = mul nsw <8 x i32> %i.ewh, %i.ewa
  %i.ewm = mul nsw <8 x i32> %i.ewi, %i.ewb
  %i.ewn = add <8 x i32> %i.ewj, %vec.phi1266     ; 2 uses
  %i.ewo = add <8 x i32> %i.ewk, %vec.phi1267     ; 2 uses
  %i.ewp = add <8 x i32> %i.ewl, %vec.phi1268     ; 2 uses
  %i.ewq = add <8 x i32> %i.ewm, %vec.phi1269     ; 2 uses
  %index.next1280 = add nuw i64 %index1265, 32    ; 2 uses
  %i.ewr = icmp eq i64 %index.next1280, %n.vec1263
  br i1 %i.ewr, label %middle.block1281, label %vector.body1264, !llvm.loop !382

middle.block1281:                                 ; preds = %vector.body1264
  %bin.rdx1282 = add <8 x i32> %i.ewo, %i.ewn
  %bin.rdx1283 = add <8 x i32> %i.ewp, %bin.rdx1282
  %bin.rdx1284 = add <8 x i32> %i.ewq, %bin.rdx1283
  %i.ews = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1284) ; 3 uses
  %cmp.n1285 = icmp eq i64 %i.evo, %n.vec1263
  br i1 %cmp.n1285, label %._crit_edge1150.i, label %vec.epilog.iter.check1293

vec.epilog.iter.check1293:                        ; preds = %middle.block1281
  %min.epilog.iters.check1294 = icmp eq i64 %i.evp, 0
  br i1 %min.epilog.iters.check1294, label %.lr.ph1149.i.preheader, label %vec.epilog.ph1295, !prof !201

vec.epilog.ph1295:                                ; preds = %vector.main.loop.iter.check1260, %vec.epilog.iter.check1293
  %vec.epilog.resume.val1286 = phi i64 [ %n.vec1263, %vec.epilog.iter.check1293 ], [ 0, %vector.main.loop.iter.check1260 ]
  %bc.merge.rdx1289 = phi i32 [ %i.ews, %vec.epilog.iter.check1293 ], [ %op.rdx, %vector.main.loop.iter.check1260 ]
end_hunk_2
