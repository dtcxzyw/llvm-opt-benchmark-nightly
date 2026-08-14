inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.afl = getelementptr inbounds nuw i8, ptr %.01230836.i.epil, i64 16
  %i.afm = getelementptr inbounds nuw i8, ptr %.131142837.i.epil, i64 4
  %epil.iter1978.next = add i32 %epil.iter1978, 1 ; 2 uses
  %epil.iter1978.cmp.not = icmp eq i32 %epil.iter1978.next, %xtraiter1977
  br i1 %epil.iter1978.cmp.not, label %.preheader444.loopexit.i, label %.lr.ph839.i.epil, !llvm.loop !324

.preheader444.loopexit.i:                         ; preds = %.lr.ph839.i.epil, %.preheader444.loopexit.i.unr-lcssa
  %.lcssa1848 = phi <4 x i32> [ %i.agu, %.preheader444.loopexit.i.unr-lcssa ], [ %i.afk, %.lr.ph839.i.epil ]
  %i.afn = getelementptr i8, ptr %.121141860.i, i64 %i.an
  %scevgep1507.i = getelementptr i8, ptr %i.afn, i64 4
  br label %.preheader444.i

.preheader444.i:                                  ; preds = %.preheader444.loopexit.i, %bb.q
  %.lcssa515.i = phi <4 x i32> [ %i.afd, %bb.q ], [ %.lcssa1848, %.preheader444.loopexit.i ] ; 2 uses
  %.01233.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.ag, %.preheader444.loopexit.i ] ; 3 uses
  %.01230.lcssa.i = phi ptr [ %.11068867.i, %bb.q ], [ %indvars.iv1503.i, %.preheader444.loopexit.i ] ; 2 uses
  %.131142.lcssa.i = phi ptr [ %.121141860.i, %bb.q ], [ %scevgep1507.i, %.preheader444.loopexit.i ] ; 2 uses
  %i.afo = or disjoint i32 %.01233.lcssa.i, 1
  %i.afp = icmp slt i32 %i.afo, %8
  br i1 %i.afp, label %.lr.ph847.i, label %.preheader443.i

.lr.ph839.i:                                      ; preds = %.lr.ph839.i.preheader, %.lr.ph839.i
  %.131142837.i = phi ptr [ %i.agw, %.lr.ph839.i ], [ %.121141860.i, %.lr.ph839.i.preheader ] ; 5 uses
  %.01230836.i = phi ptr [ %i.agv, %.lr.ph839.i ], [ %.11068867.i, %.lr.ph839.i.preheader ] ; 5 uses
  %i.afq = phi <4 x i32> [ %i.agu, %.lr.ph839.i ], [ %i.afd, %.lr.ph839.i.preheader ]
  %niter1985 = phi i32 [ %niter1985.next.3, %.lr.ph839.i ], [ 0, %.lr.ph839.i.preheader ]
  %i.afr = load <16 x i8>, ptr %.01230836.i, align 1, !tbaa !17
  %i.afs = load float, ptr %.131142837.i, align 1, !tbaa !17
  %i.aft = insertelement <4 x float> poison, float %i.afs, i64 0
  %i.afu = bitcast <4 x float> %i.aft to <16 x i8>
  %i.afv = shufflevector <16 x i8> %i.afu, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afw = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afq, <16 x i8> %i.afv, <16 x i8> %i.afr)
  %i.afx = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 16
  %i.afy = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 4
  %i.afz = load <16 x i8>, ptr %i.afx, align 1, !tbaa !17
  %i.aga = load float, ptr %i.afy, align 1, !tbaa !17
  %i.agb = insertelement <4 x float> poison, float %i.aga, i64 0
  %i.agc = bitcast <4 x float> %i.agb to <16 x i8>
  %i.agd = shufflevector <16 x i8> %i.agc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.age = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afw, <16 x i8> %i.agd, <16 x i8> %i.afz)
  %i.agf = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 32
  %i.agg = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 8
  %i.agh = load <16 x i8>, ptr %i.agf, align 1, !tbaa !17
  %i.agi = load float, ptr %i.agg, align 1, !tbaa !17
  %i.agj = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agk = bitcast <4 x float> %i.agj to <16 x i8>
  %i.agl = shufflevector <16 x i8> %i.agk, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agm = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.age, <16 x i8> %i.agl, <16 x i8> %i.agh)
  %i.agn = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 48
  %i.ago = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 12
  %i.agp = load <16 x i8>, ptr %i.agn, align 1, !tbaa !17
  %i.agq = load float, ptr %i.ago, align 1, !tbaa !17
  %i.agr = insertelement <4 x float> poison, float %i.agq, i64 0
  %i.ags = bitcast <4 x float> %i.agr to <16 x i8>
  %i.agt = shufflevector <16 x i8> %i.ags, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agu = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.agm, <16 x i8> %i.agt, <16 x i8> %i.agp) ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 64 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 16 ; 2 uses
  %niter1985.next.3 = add nuw nsw i32 %niter1985, 4 ; 2 uses
  %niter1985.ncmp.3.not = icmp eq i32 %niter1985.next.3, %unroll_iter1984
  br i1 %niter1985.ncmp.3.not, label %.preheader444.loopexit.i.unr-lcssa, label %.lr.ph839.i, !llvm.loop !325

.preheader443.i:                                  ; preds = %.lr.ph847.i, %.preheader444.i
  %.lcssa516.i = phi <4 x i32> [ %.lcssa515.i, %.preheader444.i ], [ %i.ahw, %.lr.ph847.i ] ; 3 uses
  %.11234.lcssa.i = phi i32 [ %.01233.lcssa.i, %.preheader444.i ], [ %i.ahz, %.lr.ph847.i ] ; 5 uses
  %.11231.lcssa.i = phi ptr [ %.01230.lcssa.i, %.preheader444.i ], [ %i.ahx, %.lr.ph847.i ] ; 3 uses
  %.141143.lcssa.i = phi ptr [ %.131142.lcssa.i, %.preheader444.i ], [ %i.ahy, %.lr.ph847.i ] ; 4 uses
  %i.agx = icmp slt i32 %.11234.lcssa.i, %8
  br i1 %i.agx, label %.lr.ph855.i.preheader, label %._crit_edge856.i

.lr.ph855.i.preheader:                            ; preds = %.preheader443.i
  %i.agy = sub i32 %8, %.11234.lcssa.i
  %.neg2044 = add i32 %.11234.lcssa.i, 1
  %xtraiter1986 = and i32 %i.agy, 1
  %lcmp.mod1987.not = icmp eq i32 %xtraiter1986, 0
  br i1 %lcmp.mod1987.not, label %.lr.ph855.i.prol.loopexit, label %.lr.ph855.i.prol

.lr.ph855.i.prol:                                 ; preds = %.lr.ph855.i.preheader
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
  %i.ahj = add <4 x i32> %.lcssa516.i, %i.ahi     ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.11231.lcssa.i, i64 4
  %i.ahl = getelementptr inbounds nuw i8, ptr %.141143.lcssa.i, i64 1 ; 2 uses
  %i.ahm = add nuw nsw i32 %.11234.lcssa.i, 1
  br label %.lr.ph855.i.prol.loopexit

.lr.ph855.i.prol.loopexit:                        ; preds = %.lr.ph855.i.prol, %.lr.ph855.i.preheader
  %.lcssa1854.unr = phi <4 x i32> [ poison, %.lr.ph855.i.preheader ], [ %i.ahj, %.lr.ph855.i.prol ]
  %.lcssa1853.unr = phi ptr [ poison, %.lr.ph855.i.preheader ], [ %i.ahl, %.lr.ph855.i.prol ]
  %.151144854.i.unr = phi ptr [ %.141143.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahl, %.lr.ph855.i.prol ]
  %.21232853.i.unr = phi ptr [ %.11231.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahk, %.lr.ph855.i.prol ]
  %.21235852.i.unr = phi i32 [ %.11234.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahm, %.lr.ph855.i.prol ]
  %.unr1988 = phi <4 x i32> [ %.lcssa516.i, %.lr.ph855.i.preheader ], [ %i.ahj, %.lr.ph855.i.prol ]
  %i.ahn = icmp eq i32 %8, %.neg2044
  br i1 %i.ahn, label %._crit_edge856.i, label %.lr.ph855.i

.lr.ph847.i:                                      ; preds = %.preheader444.i, %.lr.ph847.i
  %.141143846.i = phi ptr [ %i.ahy, %.lr.ph847.i ], [ %.131142.lcssa.i, %.preheader444.i ] ; 2 uses
  %.11231845.i = phi ptr [ %i.ahx, %.lr.ph847.i ], [ %.01230.lcssa.i, %.preheader444.i ] ; 2 uses
  %.11234844.i = phi i32 [ %i.ahz, %.lr.ph847.i ], [ %.01233.lcssa.i, %.preheader444.i ]
  %i.aho = phi <4 x i32> [ %i.ahw, %.lr.ph847.i ], [ %.lcssa515.i, %.preheader444.i ]
  %i.ahp = load <8 x i8>, ptr %.11231845.i, align 1, !tbaa !17
  %i.ahq = load i16, ptr %.141143846.i, align 2, !tbaa !301
  %i.ahr = insertelement <8 x i16> poison, i16 %i.ahq, i64 0
  %i.ahs = sext <8 x i8> %i.ahp to <8 x i16>
  %i.aht = bitcast <8 x i16> %i.ahr to <16 x i8>
  %i.ahu = shufflevector <16 x i8> %i.aht, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahv = sext <8 x i8> %i.ahu to <8 x i16>
  %i.ahw = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.aho, <8 x i16> %i.ahs, <8 x i16> %i.ahv) ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.11231845.i, i64 8 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.141143846.i, i64 2 ; 2 uses
  %i.ahz = add nuw nsw i32 %.11234844.i, 2        ; 3 uses
  %i.aia = or disjoint i32 %i.ahz, 1
  %i.aib = icmp slt i32 %i.aia, %8
  br i1 %i.aib, label %.lr.ph847.i, label %.preheader443.i, !llvm.loop !326

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.prol.loopexit, %.lr.ph855.i
  %.151144854.i = phi ptr [ %i.ajc, %.lr.ph855.i ], [ %.151144854.i.unr, %.lr.ph855.i.prol.loopexit ] ; 3 uses
  %.21232853.i = phi ptr [ %i.ajb, %.lr.ph855.i ], [ %.21232853.i.unr, %.lr.ph855.i.prol.loopexit ] ; 3 uses
  %.21235852.i = phi i32 [ %i.ajd, %.lr.ph855.i ], [ %.21235852.i.unr, %.lr.ph855.i.prol.loopexit ]
  %i.aic = phi <4 x i32> [ %i.aja, %.lr.ph855.i ], [ %.unr1988, %.lr.ph855.i.prol.loopexit ]
  %i.aid = load <8 x i8>, ptr %.21232853.i, align 1, !tbaa !17
  %i.aie = load i8, ptr %.151144854.i, align 1, !tbaa !17
  %i.aif = sext i8 %i.aie to i16
  %i.aig = insertelement <8 x i16> poison, i16 %i.aif, i64 0
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aii = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aij = mul <8 x i16> %i.aih, %i.aii
  %i.aik = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aii, <8 x i16> %i.aih)
  %i.ail = shufflevector <8 x i16> %i.aij, <8 x i16> %i.aik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aim = bitcast <8 x i16> %i.ail to <4 x i32>
  %i.ain = add <4 x i32> %i.aic, %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %.21232853.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.151144854.i, i64 1
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
  %i.ajb = getelementptr inbounds nuw i8, ptr %.21232853.i, i64 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %.151144854.i, i64 2 ; 2 uses
  %i.ajd = add nuw nsw i32 %.21235852.i, 2        ; 2 uses
  %exitcond1508.not.i.1 = icmp eq i32 %i.ajd, %8
  br i1 %exitcond1508.not.i.1, label %._crit_edge856.i, label %.lr.ph855.i, !llvm.loop !327

._crit_edge856.i:                                 ; preds = %.lr.ph855.i.prol.loopexit, %.lr.ph855.i, %.preheader443.i
  %.lcssa517.i = phi <4 x i32> [ %.lcssa516.i, %.preheader443.i ], [ %.lcssa1854.unr, %.lr.ph855.i.prol.loopexit ], [ %i.aja, %.lr.ph855.i ]
  %.151144.lcssa.i = phi ptr [ %.141143.lcssa.i, %.preheader443.i ], [ %.lcssa1853.unr, %.lr.ph855.i.prol.loopexit ], [ %i.ajc, %.lr.ph855.i ]
  store <4 x i32> %.lcssa517.i, ptr %.9861.i, align 16, !tbaa !17
  %i.aje = getelementptr inbounds nuw i8, ptr %.9861.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.31148859.i, 1        ; 2 uses
  %exitcond1509.not.i = icmp eq i32 %i.ajf, %6
  br i1 %exitcond1509.not.i, label %._crit_edge863.i, label %.lr.ph862.i, !llvm.loop !328

._crit_edge863.i:                                 ; preds = %._crit_edge856.i, %.preheader451.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader451.i ], [ %i.aje, %._crit_edge856.i ] ; 2 uses
  %i.ajg = getelementptr inbounds i8, ptr %.11068867.i, i64 %i.ad ; 2 uses
  %i.ajh = add nuw nsw i32 %.11076865.i, 4        ; 3 uses
  %i.aji = or disjoint i32 %i.ajh, 3
  %i.ajj = icmp slt i32 %i.aji, %4
  %scevgep1504.i = getelementptr i8, ptr %indvars.iv1503.i, i64 %i.ad
  br i1 %i.ajj, label %.preheader454.i, label %.preheader442.i, !llvm.loop !329

.preheader441.i:                                  ; preds = %._crit_edge1028.i, %.preheader441.lr.ph.i
  %indvars.iv1514.i = phi ptr [ %scevgep1513.i, %.preheader441.lr.ph.i ], [ %scevgep1515.i, %._crit_edge1028.i ] ; 4 uses
  %.210691032.i = phi ptr [ %.11068.lcssa.i, %.preheader441.lr.ph.i ], [ %i.cuw, %._crit_edge1028.i ] ; 42 uses
  %.101031.i = phi ptr [ %.5.lcssa.i, %.preheader441.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge1028.i ] ; 2 uses
  %.210771030.i = phi i32 [ %.11076.lcssa.i, %.preheader441.lr.ph.i ], [ %i.cux, %._crit_edge1028.i ]
  br i1 %i.sr, label %.lr.ph901.i, label %.preheader440.i

.preheader429.i:                                  ; preds = %._crit_edge1028.i, %.preheader442.i
  %.21077.lcssa.i = phi i32 [ %.11076.lcssa.i, %.preheader442.i ], [ %i.cux, %._crit_edge1028.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader442.i ], [ %.14.lcssa.i, %._crit_edge1028.i ]
  %.21069.lcssa.i = phi ptr [ %.11068.lcssa.i, %.preheader442.i ], [ %i.cuw, %._crit_edge1028.i ] ; 2 uses
  %i.ajk = icmp slt i32 %.21077.lcssa.i, %4
  br i1 %i.ajk, label %.preheader428.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader428.lr.ph.i:                            ; preds = %.preheader429.i
  %i.ajl = icmp sgt i32 %6, 7
  %i.ajm = icmp eq i32 %7, 0                      ; 4 uses
  %i.ajn = icmp sgt i32 %8, 3                     ; 4 uses
  %i.ajo = sext i32 %8 to i64                     ; 2 uses
  %i.ajp = add i32 %8, -4                         ; 5 uses
  %i.ajq = and i32 %i.ajp, -4
  %i.ajr = add i32 %i.ajq, 4                      ; 4 uses
  %i.ajs = and i32 %6, -8
  %i.ajt = zext i32 %i.ajp to i64                 ; 2 uses
  %i.aju = lshr i64 %i.ajt, 2                     ; 5 uses
  %i.ajv = shl nuw nsw i64 %i.aju, 4
  %i.ajw = and i64 %i.ajt, 4294967292
  %i.ajx = add nuw nsw i64 %i.ajw, 4              ; 2 uses
  %scevgep1524.i = getelementptr i8, ptr %.21069.lcssa.i, i64 %i.ajx
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
  %i.akq = add nuw nsw i64 %i.aju, 1              ; 2 uses
  %min.iters.check1344 = icmp ult i32 %i.ajp, 28
  %n.vec1346 = and i64 %i.akq, 2147483640         ; 4 uses
  %i.akr = trunc nuw nsw i64 %n.vec1346 to i32
  %i.aks = shl i32 %i.akr, 2
  %i.akt = shl nuw nsw i64 %n.vec1346, 2          ; 2 uses
  %cmp.n1364 = icmp eq i64 %i.akq, %n.vec1346
  br label %.preheader428.i

.preheader440.i:                                  ; preds = %._crit_edge894.i, %.preheader441.i
  %.01252.lcssa.i = phi i32 [ 0, %.preheader441.i ], [ %i.sz, %._crit_edge894.i ] ; 3 uses
  %.01236.lcssa.i = phi ptr [ %.val8, %.preheader441.i ], [ %.31239.lcssa.i, %._crit_edge894.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101031.i, %.preheader441.i ], [ %i.aph, %._crit_edge894.i ] ; 2 uses
  %i.aku = or disjoint i32 %.01252.lcssa.i, 3
  %i.akv = icmp slt i32 %i.aku, %6
  br i1 %i.akv, label %.lr.ph935.i, label %.preheader439.i

.lr.ph901.i:                                      ; preds = %.preheader441.i, %._crit_edge894.i
  %.11900.i = phi ptr [ %i.aph, %._crit_edge894.i ], [ %.101031.i, %.preheader441.i ] ; 5 uses
  %.01236899.i = phi ptr [ %.31239.lcssa.i, %._crit_edge894.i ], [ %.val8, %.preheader441.i ] ; 4 uses
  %.01252898.i = phi i32 [ %i.api, %._crit_edge894.i ], [ 0, %.preheader441.i ]
  br i1 %i.ss, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph901.i
  %i.akw = load <8 x i32>, ptr %.11900.i, align 1, !tbaa !17
  %i.akx = getelementptr inbounds nuw i8, ptr %.11900.i, i64 32
  %i.aky = load <8 x i32>, ptr %i.akx, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph901.i
  %i.akz = phi <8 x i32> [ %i.akw, %bb.r ], [ zeroinitializer, %.lr.ph901.i ] ; 3 uses
  %i.ala = phi <8 x i32> [ %i.aky, %bb.r ], [ zeroinitializer, %.lr.ph901.i ] ; 3 uses
  br i1 %i.st, label %.lr.ph875.i.preheader, label %.preheader437.i

.lr.ph875.i.preheader:                            ; preds = %bb.s
  br i1 %i.tm, label %.lr.ph875.i.epil.preheader, label %.lr.ph875.i

.preheader437.i.loopexit.unr-lcssa:               ; preds = %.lr.ph875.i
  br i1 %lcmp.mod1995.not.not, label %.lr.ph875.i.epil.preheader, label %.preheader437.i.loopexit

.lr.ph875.i.epil.preheader:                       ; preds = %.preheader437.i.loopexit.unr-lcssa, %.lr.ph875.i.preheader
  %.11237873.i.epil.init = phi ptr [ %.01236899.i, %.lr.ph875.i.preheader ], [ %i.aml, %.preheader437.i.loopexit.unr-lcssa ]
  %.01256872.i.epil.init = phi ptr [ %.210691032.i, %.lr.ph875.i.preheader ], [ %i.amk, %.preheader437.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1992 = phi <8 x i32> [ %i.ala, %.lr.ph875.i.preheader ], [ %i.amj, %.preheader437.i.loopexit.unr-lcssa ]
  %.epil.init1994 = phi <8 x i32> [ %i.akz, %.lr.ph875.i.preheader ], [ %i.ami, %.preheader437.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1999)
  %i.alb = load double, ptr %.01256872.i.epil.init, align 1, !tbaa !17
  %i.alc = insertelement <4 x double> poison, double %i.alb, i64 0
  %i.ald = bitcast <4 x double> %i.alc to <4 x i64>
  %i.ale = shufflevector <4 x i64> %i.ald, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alf = bitcast <4 x i64> %i.ale to <32 x i8>  ; 2 uses
  %i.alg = shufflevector <32 x i8> %i.alf, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.alh = load <32 x i8>, ptr %.11237873.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ali = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1994, <32 x i8> %i.alh, <32 x i8> %i.alf)
  %i.alj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1992, <32 x i8> %i.alh, <32 x i8> %i.alg)
  %i.alk = getelementptr inbounds nuw i8, ptr %.01256872.i.epil.init, i64 8
  br label %.preheader437.i.loopexit

.preheader437.i.loopexit:                         ; preds = %.preheader437.i.loopexit.unr-lcssa, %.lr.ph875.i.epil.preheader
  %.lcssa1719 = phi <8 x i32> [ %i.ami, %.preheader437.i.loopexit.unr-lcssa ], [ %i.ali, %.lr.ph875.i.epil.preheader ]
  %.lcssa1718 = phi <8 x i32> [ %i.amj, %.preheader437.i.loopexit.unr-lcssa ], [ %i.alj, %.lr.ph875.i.epil.preheader ]
  %.lcssa1717 = phi ptr [ %i.amk, %.preheader437.i.loopexit.unr-lcssa ], [ %i.alk, %.lr.ph875.i.epil.preheader ]
  %i.all = getelementptr i8, ptr %.01236899.i, i64 %i.tg
  %scevgep493 = getelementptr i8, ptr %i.all, i64 32
  br label %.preheader437.i

.preheader437.i:                                  ; preds = %.preheader437.i.loopexit, %bb.s
  %.lcssa474.i = phi <8 x i32> [ %i.akz, %bb.s ], [ %.lcssa1719, %.preheader437.i.loopexit ] ; 2 uses
  %.lcssa473.i = phi <8 x i32> [ %i.ala, %bb.s ], [ %.lcssa1718, %.preheader437.i.loopexit ] ; 2 uses
  %.01265.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.sy, %.preheader437.i.loopexit ] ; 3 uses
  %.01256.lcssa.i = phi ptr [ %.210691032.i, %bb.s ], [ %.lcssa1717, %.preheader437.i.loopexit ] ; 2 uses
  %.11237.lcssa.i = phi ptr [ %.01236899.i, %bb.s ], [ %scevgep493, %.preheader437.i.loopexit ] ; 2 uses
  %i.alm = or disjoint i32 %.01265.lcssa.i, 1
  %i.aln = icmp slt i32 %i.alm, %8
  br i1 %i.aln, label %.lr.ph884.i, label %.preheader436.i

.lr.ph875.i:                                      ; preds = %.lr.ph875.i.preheader, %.lr.ph875.i
  %.11237873.i = phi ptr [ %i.aml, %.lr.ph875.i ], [ %.01236899.i, %.lr.ph875.i.preheader ] ; 3 uses
  %.01256872.i = phi ptr [ %i.amk, %.lr.ph875.i ], [ %.210691032.i, %.lr.ph875.i.preheader ] ; 3 uses
  %i.alo = phi <8 x i32> [ %i.amj, %.lr.ph875.i ], [ %i.ala, %.lr.ph875.i.preheader ]
  %i.alp = phi <8 x i32> [ %i.ami, %.lr.ph875.i ], [ %i.akz, %.lr.ph875.i.preheader ]
  %niter2001 = phi i32 [ %niter2001.next.1, %.lr.ph875.i ], [ 0, %.lr.ph875.i.preheader ]
  %i.alq = load double, ptr %.01256872.i, align 1, !tbaa !17
  %i.alr = insertelement <4 x double> poison, double %i.alq, i64 0
  %i.als = bitcast <4 x double> %i.alr to <4 x i64>
  %i.alt = shufflevector <4 x i64> %i.als, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alu = bitcast <4 x i64> %i.alt to <32 x i8>  ; 2 uses
  %i.alv = shufflevector <32 x i8> %i.alu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.alw = load <32 x i8>, ptr %.11237873.i, align 1, !tbaa !17 ; 2 uses
  %i.alx = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alp, <32 x i8> %i.alw, <32 x i8> %i.alu)
  %i.aly = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alo, <32 x i8> %i.alw, <32 x i8> %i.alv)
  %i.alz = getelementptr inbounds nuw i8, ptr %.01256872.i, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %.11237873.i, i64 32
  %i.amb = load double, ptr %i.alz, align 1, !tbaa !17
  %i.amc = insertelement <4 x double> poison, double %i.amb, i64 0
  %i.amd = bitcast <4 x double> %i.amc to <4 x i64>
  %i.ame = shufflevector <4 x i64> %i.amd, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.amf = bitcast <4 x i64> %i.ame to <32 x i8>  ; 2 uses
  %i.amg = shufflevector <32 x i8> %i.amf, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.amh = load <32 x i8>, ptr %i.ama, align 1, !tbaa !17 ; 2 uses
  %i.ami = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alx, <32 x i8> %i.amh, <32 x i8> %i.amf) ; 3 uses
  %i.amj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.aly, <32 x i8> %i.amh, <32 x i8> %i.amg) ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.01256872.i, i64 16 ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.11237873.i, i64 64 ; 2 uses
  %niter2001.next.1 = add i32 %niter2001, 2       ; 2 uses
  %niter2001.ncmp.1.not = icmp eq i32 %niter2001.next.1, %unroll_iter2000
  br i1 %niter2001.ncmp.1.not, label %.preheader437.i.loopexit.unr-lcssa, label %.lr.ph875.i, !llvm.loop !330

.preheader436.i:                                  ; preds = %.lr.ph884.i, %.preheader437.i
  %.lcssa476.i = phi <8 x i32> [ %.lcssa474.i, %.preheader437.i ], [ %i.anp, %.lr.ph884.i ] ; 3 uses
  %.lcssa475.i = phi <8 x i32> [ %.lcssa473.i, %.preheader437.i ], [ %i.anr, %.lr.ph884.i ] ; 3 uses
  %.11266.lcssa.i = phi i32 [ %.01265.lcssa.i, %.preheader437.i ], [ %i.anu, %.lr.ph884.i ] ; 5 uses
  %.11257.lcssa.i = phi ptr [ %.01256.lcssa.i, %.preheader437.i ], [ %i.ans, %.lr.ph884.i ] ; 3 uses
  %.21238.lcssa.i = phi ptr [ %.11237.lcssa.i, %.preheader437.i ], [ %i.ant, %.lr.ph884.i ] ; 4 uses
  %i.amm = icmp slt i32 %.11266.lcssa.i, %8
  br i1 %i.amm, label %.lr.ph893.i.preheader, label %._crit_edge894.i

.lr.ph893.i.preheader:                            ; preds = %.preheader436.i
  %i.amn = sub i32 %8, %.11266.lcssa.i
  %.neg2045 = add i32 %.11266.lcssa.i, 1
  %xtraiter2002 = and i32 %i.amn, 1
  %lcmp.mod2003.not = icmp eq i32 %xtraiter2002, 0
  br i1 %lcmp.mod2003.not, label %.lr.ph893.i.prol.loopexit, label %.lr.ph893.i.prol

.lr.ph893.i.prol:                                 ; preds = %.lr.ph893.i.preheader
  %i.amo = load i16, ptr %.11257.lcssa.i, align 2, !tbaa !301
  %i.amp = insertelement <8 x i16> poison, i16 %i.amo, i64 0
  %i.amq = load <8 x i8>, ptr %.21238.lcssa.i, align 1, !tbaa !17
  %i.amr = bitcast <8 x i16> %i.amp to <16 x i8>
  %i.ams = shufflevector <16 x i8> %i.amr, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amt = sext <8 x i8> %i.ams to <8 x i16>      ; 2 uses
  %i.amu = sext <8 x i8> %i.amq to <8 x i16>      ; 2 uses
  %i.amv = shufflevector <8 x i16> %i.amt, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.amw = mul nsw <8 x i16> %i.amt, %i.amu
  %i.amx = sext <8 x i16> %i.amw to <8 x i32>
  %i.amy = mul nsw <8 x i16> %i.amv, %i.amu
  %i.amz = sext <8 x i16> %i.amy to <8 x i32>
  %i.ana = add <8 x i32> %.lcssa476.i, %i.amx     ; 2 uses
  %i.anb = add <8 x i32> %.lcssa475.i, %i.amz     ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %.11257.lcssa.i, i64 2
  %i.and = getelementptr inbounds nuw i8, ptr %.21238.lcssa.i, i64 8 ; 2 uses
  %i.ane = add nuw nsw i32 %.11266.lcssa.i, 1
  br label %.lr.ph893.i.prol.loopexit

.lr.ph893.i.prol.loopexit:                        ; preds = %.lr.ph893.i.prol, %.lr.ph893.i.preheader
  %.lcssa1727.unr = phi <8 x i32> [ poison, %.lr.ph893.i.preheader ], [ %i.ana, %.lr.ph893.i.prol ]
  %.lcssa1726.unr = phi <8 x i32> [ poison, %.lr.ph893.i.preheader ], [ %i.anb, %.lr.ph893.i.prol ]
  %.lcssa1725.unr = phi ptr [ poison, %.lr.ph893.i.preheader ], [ %i.and, %.lr.ph893.i.prol ]
  %.31239892.i.unr = phi ptr [ %.21238.lcssa.i, %.lr.ph893.i.preheader ], [ %i.and, %.lr.ph893.i.prol ]
  %.21258891.i.unr = phi ptr [ %.11257.lcssa.i, %.lr.ph893.i.preheader ], [ %i.anc, %.lr.ph893.i.prol ]
  %.21267890.i.unr = phi i32 [ %.11266.lcssa.i, %.lr.ph893.i.preheader ], [ %i.ane, %.lr.ph893.i.prol ]
  %.unr2004 = phi <8 x i32> [ %.lcssa475.i, %.lr.ph893.i.preheader ], [ %i.anb, %.lr.ph893.i.prol ]
  %.unr2005 = phi <8 x i32> [ %.lcssa476.i, %.lr.ph893.i.preheader ], [ %i.ana, %.lr.ph893.i.prol ]
  %i.anf = icmp eq i32 %8, %.neg2045
  br i1 %i.anf, label %._crit_edge894.i, label %.lr.ph893.i

.lr.ph884.i:                                      ; preds = %.preheader437.i, %.lr.ph884.i
  %.21238883.i = phi ptr [ %i.ant, %.lr.ph884.i ], [ %.11237.lcssa.i, %.preheader437.i ] ; 2 uses
  %.11257882.i = phi ptr [ %i.ans, %.lr.ph884.i ], [ %.01256.lcssa.i, %.preheader437.i ] ; 2 uses
  %.11266881.i = phi i32 [ %i.anu, %.lr.ph884.i ], [ %.01265.lcssa.i, %.preheader437.i ]
  %i.ang = phi <8 x i32> [ %i.anr, %.lr.ph884.i ], [ %.lcssa473.i, %.preheader437.i ]
  %i.anh = phi <8 x i32> [ %i.anp, %.lr.ph884.i ], [ %.lcssa474.i, %.preheader437.i ]
  %i.ani = load float, ptr %.11257882.i, align 1, !tbaa !17
  %i.anj = insertelement <4 x float> poison, float %i.ani, i64 0
  %i.ank = load <16 x i8>, ptr %.21238883.i, align 1, !tbaa !17
  %i.anl = bitcast <4 x float> %i.anj to <16 x i8>
  %i.anm = shufflevector <16 x i8> %i.anl, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ann = sext <16 x i8> %i.anm to <16 x i16>    ; 2 uses
  %i.ano = sext <16 x i8> %i.ank to <16 x i16>    ; 2 uses
  %i.anp = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.anh, <16 x i16> %i.ann, <16 x i16> %i.ano) ; 2 uses
  %i.anq = shufflevector <16 x i16> %i.ann, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.anr = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ang, <16 x i16> %i.anq, <16 x i16> %i.ano) ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.11257882.i, i64 4 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.21238883.i, i64 16 ; 2 uses
  %i.anu = add nuw nsw i32 %.11266881.i, 2        ; 3 uses
  %i.anv = or disjoint i32 %i.anu, 1
  %i.anw = icmp slt i32 %i.anv, %8
  br i1 %i.anw, label %.lr.ph884.i, label %.preheader436.i, !llvm.loop !331

.lr.ph893.i:                                      ; preds = %.lr.ph893.i.prol.loopexit, %.lr.ph893.i
  %.31239892.i = phi ptr [ %i.ape, %.lr.ph893.i ], [ %.31239892.i.unr, %.lr.ph893.i.prol.loopexit ] ; 3 uses
  %.21258891.i = phi ptr [ %i.apd, %.lr.ph893.i ], [ %.21258891.i.unr, %.lr.ph893.i.prol.loopexit ] ; 3 uses
  %.21267890.i = phi i32 [ %i.apf, %.lr.ph893.i ], [ %.21267890.i.unr, %.lr.ph893.i.prol.loopexit ]
  %i.anx = phi <8 x i32> [ %i.apc, %.lr.ph893.i ], [ %.unr2004, %.lr.ph893.i.prol.loopexit ]
  %i.any = phi <8 x i32> [ %i.apb, %.lr.ph893.i ], [ %.unr2005, %.lr.ph893.i.prol.loopexit ]
  %i.anz = load i16, ptr %.21258891.i, align 2, !tbaa !301
  %i.aoa = insertelement <8 x i16> poison, i16 %i.anz, i64 0
  %i.aob = load <8 x i8>, ptr %.31239892.i, align 1, !tbaa !17
  %i.aoc = bitcast <8 x i16> %i.aoa to <16 x i8>
  %i.aod = shufflevector <16 x i8> %i.aoc, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aoe = sext <8 x i8> %i.aod to <8 x i16>      ; 2 uses
  %i.aof = sext <8 x i8> %i.aob to <8 x i16>      ; 2 uses
  %i.aog = shufflevector <8 x i16> %i.aoe, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aoh = mul nsw <8 x i16> %i.aoe, %i.aof
  %i.aoi = sext <8 x i16> %i.aoh to <8 x i32>
  %i.aoj = mul nsw <8 x i16> %i.aog, %i.aof
  %i.aok = sext <8 x i16> %i.aoj to <8 x i32>
  %i.aol = add <8 x i32> %i.any, %i.aoi
  %i.aom = add <8 x i32> %i.anx, %i.aok
  %i.aon = getelementptr inbounds nuw i8, ptr %.21258891.i, i64 2
  %i.aoo = getelementptr inbounds nuw i8, ptr %.31239892.i, i64 8
end_hunk_0
