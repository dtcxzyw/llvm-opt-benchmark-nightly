Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph8030
  %i.adp = load <2 x i64>, ptr %i.adn, align 16, !tbaa !30
  %i.adq = load <2 x i64>, ptr %i.ado, align 16, !tbaa !30
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph8030
  %i.adr = load i64, ptr %i.adn, align 1, !tbaa !30
  %i.ads = insertelement <2 x i64> poison, i64 %i.adr, i64 0
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.da
  %i.adu = load i64, ptr %i.adt, align 1, !tbaa !30
  %i.adv = load i64, ptr %i.ado, align 1, !tbaa !30
  %i.adw = insertelement <2 x i64> poison, i64 %i.adv, i64 0
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.da
  %i.ady = load i64, ptr %i.adx, align 1, !tbaa !30
  %i.adz = insertelement <2 x i64> %i.ads, i64 %i.adu, i64 1
  %i.aea = insertelement <2 x i64> %i.adw, i64 %i.ady, i64 1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph8030
  %i.aeb = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.adn, <16 x i32> %i.eq, <16 x i1> splat (i1 true), i32 1)
  %i.aec = trunc <16 x i32> %i.aeb to <16 x i8>
  %i.aed = bitcast <16 x i8> %i.aec to <2 x i64>
  %i.aee = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ado, <16 x i32> %i.eq, <16 x i1> splat (i1 true), i32 1)
  %i.aef = trunc <16 x i32> %i.aee to <16 x i8>
  %i.aeg = bitcast <16 x i8> %i.aef to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.02950 = phi <2 x i64> [ %i.adq, %bb.l ], [ %i.aea, %bb.m ], [ %i.aeg, %bb.n ]
  %.02949 = phi <2 x i64> [ %i.adp, %bb.l ], [ %i.adz, %bb.m ], [ %i.aed, %bb.n ]
  %i.aeh = bitcast <2 x i64> %.02949 to <16 x i8>
  %i.aei = sext <16 x i8> %i.aeh to <16 x i16>
  %i.aej = bitcast <2 x i64> %.02950 to <16 x i8>
  %i.aek = sext <16 x i8> %i.aej to <16 x i16>
  %i.ael = load <8 x i64>, ptr %.129378029, align 64, !tbaa !30 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.129378029, i64 64
  %i.aen = load <8 x i64>, ptr %i.aem, align 64, !tbaa !30 ; 2 uses
  %i.aeo = bitcast <8 x i64> %i.ael to <64 x i8>
  %i.aep = shufflevector <64 x i8> %i.aeo, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aeq = sext <32 x i8> %i.aep to <32 x i16>    ; 2 uses
  %i.aer = bitcast <8 x i64> %i.ael to <64 x i8>
  %i.aes = shufflevector <64 x i8> %i.aer, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aet = sext <32 x i8> %i.aes to <32 x i16>    ; 2 uses
  %i.aeu = bitcast <8 x i64> %i.aen to <64 x i8>
  %i.aev = shufflevector <64 x i8> %i.aeu, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aew = sext <32 x i8> %i.aev to <32 x i16>    ; 2 uses
  %i.aex = bitcast <8 x i64> %i.aen to <64 x i8>
  %i.aey = shufflevector <64 x i8> %i.aex, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aez = sext <32 x i8> %i.aey to <32 x i16>    ; 2 uses
  %i.afa = shufflevector <16 x i16> %i.aei, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afb = shufflevector <16 x i16> %i.aek, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afc = bitcast <32 x i16> %i.afa to <16 x i32> ; 4 uses
  %i.afd = bitcast <32 x i16> %i.afb to <16 x i32> ; 4 uses
  %i.afe = shufflevector <16 x i32> %i.afc, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aff = bitcast <16 x i32> %i.afe to <32 x i16>
  %i.afg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176418027, <32 x i16> %i.aff, <32 x i16> %i.aeq)
  %i.afh = shufflevector <16 x i32> %i.afd, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.afi = bitcast <16 x i32> %i.afh to <32 x i16>
  %i.afj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176438026, <32 x i16> %i.afi, <32 x i16> %i.aeq)
  %i.afk = shufflevector <16 x i32> %i.afc, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.afl = bitcast <16 x i32> %i.afk to <32 x i16>
  %i.afm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176458025, <32 x i16> %i.afl, <32 x i16> %i.aet)
  %i.afn = shufflevector <16 x i32> %i.afd, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.afo = bitcast <16 x i32> %i.afn to <32 x i16>
  %i.afp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176478024, <32 x i16> %i.afo, <32 x i16> %i.aet)
  %i.afq = shufflevector <16 x i32> %i.afc, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afr = bitcast <16 x i32> %i.afq to <32 x i16>
  %i.afs = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afg, <32 x i16> %i.afr, <32 x i16> %i.aew) ; 2 uses
  %i.aft = shufflevector <16 x i32> %i.afd, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afu = bitcast <16 x i32> %i.aft to <32 x i16>
  %i.afv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afj, <32 x i16> %i.afu, <32 x i16> %i.aew) ; 2 uses
  %i.afw = shufflevector <16 x i32> %i.afc, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.afx = bitcast <16 x i32> %i.afw to <32 x i16>
  %i.afy = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afm, <32 x i16> %i.afx, <32 x i16> %i.aez) ; 2 uses
  %i.afz = shufflevector <16 x i32> %i.afd, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.aga = bitcast <16 x i32> %i.afz to <32 x i16>
  %i.agb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afp, <32 x i16> %i.aga, <32 x i16> %i.aez) ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.129378029, i64 128
  %indvars.iv.next9998 = add nuw nsw i64 %indvars.iv9997, 1 ; 2 uses
  %exitcond10003.not = icmp eq i64 %indvars.iv.next9998, %wide.trip.count10002
  br i1 %exitcond10003.not, label %._crit_edge8031.loopexit, label %.lr.ph8030, !llvm.loop !77

._crit_edge8043.loopexit:                         ; preds = %._crit_edge8031
  %i.agd = and i32 %i.abf, 2147483632
  br label %._crit_edge8043

._crit_edge8043:                                  ; preds = %._crit_edge8043.loopexit, %.noexc3613
  %i.age = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.add, %._crit_edge8043.loopexit ] ; 2 uses
  %i.agf = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.ade, %._crit_edge8043.loopexit ] ; 2 uses
  %i.agg = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.adf, %._crit_edge8043.loopexit ] ; 2 uses
  %i.agh = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.adg, %._crit_edge8043.loopexit ] ; 2 uses
  %.02944.lcssa = phi i32 [ 0, %.noexc3613 ], [ %i.agd, %._crit_edge8043.loopexit ] ; 3 uses
  %.02936.lcssa = phi ptr [ %i.abq, %.noexc3613 ], [ %.12937.lcssa, %._crit_edge8043.loopexit ] ; 2 uses
  %i.agi = shufflevector <16 x i32> %i.agh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agj = shufflevector <16 x i32> %i.agh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agk = add <8 x i32> %i.agi, %i.agj           ; 2 uses
  %i.agl = shufflevector <16 x i32> %i.agg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agm = shufflevector <16 x i32> %i.agg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agn = add <8 x i32> %i.agl, %i.agm           ; 2 uses
  %i.ago = shufflevector <16 x i32> %i.agf, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agp = shufflevector <16 x i32> %i.agf, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agq = add <8 x i32> %i.ago, %i.agp           ; 2 uses
  %i.agr = shufflevector <16 x i32> %i.age, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ags = shufflevector <16 x i32> %i.age, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agt = add <8 x i32> %i.agr, %i.ags           ; 2 uses
  %i.agu = or disjoint i32 %.02944.lcssa, 7
  %i.agv = icmp slt i32 %i.agu, %i.abf
  br i1 %i.agv, label %.noexc3607.lr.ph, label %.preheader7716

.noexc3607.lr.ph:                                 ; preds = %._crit_edge8043
  %i.agw = load i32, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.agx = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !316
  %i.agy = load ptr, ptr %0, align 8, !tbaa !28, !noalias !316 ; 2 uses
  %i.agz = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !316
  %i.aha = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !316 ; 2 uses
  %factor.op.mul8082 = mul i64 %i.agz, %i.aha
  %i.ahb = sext i32 %i.agx to i64
  %i.ahc = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.ahd = extractelement <2 x i32> %i.abj, i64 1
  %i.ahe = mul nsw i32 %i.ahc, %i.ahd
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = mul i64 %i.aha, %i.ahb                 ; 2 uses
  %i.ahh = mul i64 %i.ahg, %i.ahf
  %invariant.gep8084 = getelementptr i8, ptr %i.agy, i64 %i.ahh
  %i.ahi = load i32, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.ahj = extractelement <2 x i32> %.decomposed12449, i64 1
  %i.ahk = mul i32 %i.agw, %i.ahj
  %i.ahl = mul i32 %i.ahk, %i.ahi
  %i.ahm = sext i32 %i.ahl to i64
  %invariant.gep8085 = getelementptr i8, ptr %invariant.gep8084, i64 %i.ahm
  %i.ahn = extractelement <2 x i32> %i.abj, i64 0
  %i.aho = mul nsw i32 %i.ahc, %i.ahn
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = mul i64 %i.ahg, %i.ahp
  %invariant.gep8089 = getelementptr i8, ptr %i.agy, i64 %i.ahq
  %i.ahr = extractelement <2 x i32> %.decomposed12449, i64 0
  %i.ahs = mul i32 %i.agw, %i.ahr
  %i.aht = mul i32 %i.ahs, %i.ahi
  %i.ahu = sext i32 %i.aht to i64
  %invariant.gep8090 = getelementptr i8, ptr %invariant.gep8089, i64 %i.ahu
  %i.ahv = load i32, ptr %i.f, align 4, !tbaa !10 ; 4 uses
  %i.ahw = icmp sgt i32 %i.ahv, 0
  %i.ahx = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.ahy = icmp eq i32 %i.agw, 8
  %i.ahz = add i32 %i.ahv, -1
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = shl nuw nsw i64 %i.aia, 6              ; 2 uses
  %wide.trip.count10009 = zext nneg i32 %i.ahv to i64
  %wide.trip.count10016 = zext nneg i32 %i.ahv to i64
  br label %.noexc3607

.preheader7716:                                   ; preds = %._crit_edge8063, %._crit_edge8043
  %.lcssa7806 = phi <8 x i32> [ %i.agt, %._crit_edge8043 ], [ %.lcssa7802, %._crit_edge8063 ]
  %.lcssa7805 = phi <8 x i32> [ %i.agq, %._crit_edge8043 ], [ %.lcssa7801, %._crit_edge8063 ]
  %.lcssa7804 = phi <8 x i32> [ %i.agn, %._crit_edge8043 ], [ %.lcssa7800, %._crit_edge8063 ] ; 3 uses
  %.lcssa7803 = phi <8 x i32> [ %i.agk, %._crit_edge8043 ], [ %.lcssa7799, %._crit_edge8063 ] ; 3 uses
  %.12945.lcssa = phi i32 [ %.02944.lcssa, %._crit_edge8043 ], [ %i.amt, %._crit_edge8063 ] ; 5 uses
  %.22938.lcssa = phi ptr [ %.02936.lcssa, %._crit_edge8043 ], [ %.32939.lcssa, %._crit_edge8063 ] ; 3 uses
  %i.aic = or disjoint i32 %.12945.lcssa, 1
  %i.aid = icmp slt i32 %i.aic, %i.abf
  br i1 %i.aid, label %.noexc3603.lr.ph, label %.preheader7715

.noexc3603.lr.ph:                                 ; preds = %.preheader7716
  %i.aie = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !317
  %i.aif = load ptr, ptr %0, align 8, !tbaa !28, !noalias !317 ; 2 uses
  %i.aig = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !317
  %i.aih = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !317 ; 2 uses
  %factor.op.mul8105 = mul i64 %i.aig, %i.aih
  %i.aii = sext i32 %i.aie to i64
  %i.aij = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.aik = extractelement <2 x i32> %i.abj, i64 1
  %i.ail = mul nsw i32 %i.aij, %i.aik
  %i.aim = sext i32 %i.ail to i64
  %i.ain = mul i64 %i.aih, %i.aii                 ; 2 uses
  %i.aio = mul i64 %i.ain, %i.aim
  %invariant.gep8107 = getelementptr i8, ptr %i.aif, i64 %i.aio
  %i.aip = load i32, ptr %i.a, align 4, !tbaa !10
  %i.aiq = extractelement <2 x i32> %i.abj, i64 0
  %i.air = mul nsw i32 %i.aij, %i.aiq
  %i.ais = sext i32 %i.air to i64
  %i.ait = mul i64 %i.ain, %i.ais
  %invariant.gep8112 = getelementptr i8, ptr %i.aif, i64 %i.ait
  %i.aiu = insertelement <2 x i32> poison, i32 %i.aip, i64 0
  %i.aiv = shufflevector <2 x i32> %i.aiu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aiw = mul nsw <2 x i32> %i.aiv, %.decomposed12449 ; 2 uses
  %i.aix = extractelement <2 x i32> %i.aiw, i64 1
  %i.aiy = sext i32 %i.aix to i64
  %invariant.gep8108 = getelementptr i8, ptr %invariant.gep8107, i64 %i.aiy
  %i.aiz = extractelement <2 x i32> %i.aiw, i64 0
  %i.aja = sext i32 %i.aiz to i64
  %invariant.gep8113 = getelementptr i8, ptr %invariant.gep8112, i64 %i.aja
  %i.ajb = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.ajc = icmp sgt i32 %i.ajb, 0
  %i.ajd = load ptr, ptr %i.g, align 8
  br i1 %i.ajc, label %.noexc3603.us.preheader, label %.noexc3603.preheader

.noexc3603.preheader:                             ; preds = %.noexc3603.lr.ph
  %i.aje = add nuw nsw i32 %.12945.lcssa, 2
  %i.ajf = add nsw i32 %i.abf, -2
  %i.ajg = sub nsw i32 %i.ajf, %.12945.lcssa
  %i.ajh = and i32 %i.ajg, -2
  %i.aji = add i32 %i.aje, %i.ajh
  br label %.preheader7715

.noexc3603.us.preheader:                          ; preds = %.noexc3603.lr.ph
  %i.ajj = add nsw i32 %i.ajb, -1
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = shl nuw nsw i64 %i.ajk, 4
  %i.ajm = zext nneg i32 %.12945.lcssa to i64
  %wide.trip.count10023 = zext nneg i32 %i.ajb to i64
  br label %.noexc3603.us

.noexc3603.us:                                    ; preds = %.noexc3603.us.preheader, %._crit_edge8095.us
  %indvars.iv10025 = phi i64 [ %i.ajm, %.noexc3603.us.preheader ], [ %indvars.iv.next10026, %._crit_edge8095.us ] ; 2 uses
  %.429408100.us = phi ptr [ %.22938.lcssa, %.noexc3603.us.preheader ], [ %scevgep10021, %._crit_edge8095.us ] ; 2 uses
  %i.ajn = phi <8 x i32> [ %.lcssa7803, %.noexc3603.us.preheader ], [ %i.akn, %._crit_edge8095.us ]
  %i.ajo = phi <8 x i32> [ %.lcssa7804, %.noexc3603.us.preheader ], [ %i.akp, %._crit_edge8095.us ]
  %.reass8106.us = mul i64 %factor.op.mul8105, %indvars.iv10025 ; 2 uses
  %gep8109.us = getelementptr i8, ptr %invariant.gep8108, i64 %.reass8106.us
  %gep8114.us = getelementptr i8, ptr %invariant.gep8113, i64 %.reass8106.us
  br label %bb.p

bb.p:                                             ; preds = %.noexc3603.us, %bb.p
  %indvars.iv10018 = phi i64 [ 0, %.noexc3603.us ], [ %indvars.iv.next10019, %bb.p ] ; 2 uses
  %.529418093.us = phi ptr [ %.429408100.us, %.noexc3603.us ], [ %i.akq, %bb.p ] ; 2 uses
  %i.ajp = phi <8 x i32> [ %i.ajn, %.noexc3603.us ], [ %i.akn, %bb.p ]
  %i.ajq = phi <8 x i32> [ %i.ajo, %.noexc3603.us ], [ %i.akp, %bb.p ]
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %indvars.iv10018
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !10
  %i.ajt = sext i32 %i.ajs to i64                 ; 2 uses
  %i.aju = getelementptr inbounds i8, ptr %gep8109.us, i64 %i.ajt ; 2 uses
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !30
  %i.ajw = sext i8 %i.ajv to i16
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 %i.da
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !30
  %i.ajz = sext i8 %i.ajy to i16
  %i.aka = insertelement <8 x i16> poison, i16 %i.ajw, i64 0
  %i.akb = insertelement <8 x i16> %i.aka, i16 %i.ajz, i64 1
  %i.akc = getelementptr inbounds i8, ptr %gep8114.us, i64 %i.ajt ; 2 uses
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !30
  %i.ake = sext i8 %i.akd to i16
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.da
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !30
  %i.akh = sext i8 %i.akg to i16
  %i.aki = insertelement <8 x i16> poison, i16 %i.ake, i64 0
  %i.akj = insertelement <8 x i16> %i.aki, i16 %i.akh, i64 1
  %i.akk = load <16 x i8>, ptr %.529418093.us, align 16, !tbaa !30
  %i.akl = sext <16 x i8> %i.akk to <16 x i16>    ; 2 uses
  %i.akm = shufflevector <8 x i16> %i.akb, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.akn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ajp, <16 x i16> %i.akm, <16 x i16> %i.akl) ; 3 uses
  %i.ako = shufflevector <8 x i16> %i.akj, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.akp = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ajq, <16 x i16> %i.ako, <16 x i16> %i.akl) ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %.529418093.us, i64 16
  %indvars.iv.next10019 = add nuw nsw i64 %indvars.iv10018, 1 ; 2 uses
  %exitcond10024.not = icmp eq i64 %indvars.iv.next10019, %wide.trip.count10023
  br i1 %exitcond10024.not, label %._crit_edge8095.us, label %bb.p, !llvm.loop !82

._crit_edge8095.us:                               ; preds = %bb.p
  %scevgep10020 = getelementptr i8, ptr %.429408100.us, i64 16
  %scevgep10021 = getelementptr i8, ptr %scevgep10020, i64 %i.ajl ; 2 uses
  %indvars.iv.next10026 = add nuw nsw i64 %indvars.iv10025, 2 ; 3 uses
  %i.akr = trunc i64 %indvars.iv.next10026 to i32
  %i.aks = or i32 %i.akr, 1
  %i.akt = icmp slt i32 %i.aks, %i.abf
  br i1 %i.akt, label %.noexc3603.us, label %.preheader7715.loopexit, !llvm.loop !83

.noexc3607:                                       ; preds = %.noexc3607.lr.ph, %._crit_edge8063
  %.229388075 = phi ptr [ %.02936.lcssa, %.noexc3607.lr.ph ], [ %.32939.lcssa, %._crit_edge8063 ] ; 5 uses
  %.129458074 = phi i32 [ %.02944.lcssa, %.noexc3607.lr.ph ], [ %i.amt, %._crit_edge8063 ] ; 2 uses
  %i.aku = phi <8 x i32> [ %i.agk, %.noexc3607.lr.ph ], [ %.lcssa7799, %._crit_edge8063 ] ; 3 uses
  %i.akv = phi <8 x i32> [ %i.agn, %.noexc3607.lr.ph ], [ %.lcssa7800, %._crit_edge8063 ] ; 3 uses
  %i.akw = phi <8 x i32> [ %i.agq, %.noexc3607.lr.ph ], [ %.lcssa7801, %._crit_edge8063 ] ; 3 uses
  %i.akx = phi <8 x i32> [ %i.agt, %.noexc3607.lr.ph ], [ %.lcssa7802, %._crit_edge8063 ] ; 3 uses
  %i.aky = sdiv i32 %.129458074, %i.agw
  %i.akz = sext i32 %i.aky to i64
  %.reass8083 = mul i64 %factor.op.mul8082, %i.akz ; 2 uses
  %gep8086 = getelementptr i8, ptr %invariant.gep8085, i64 %.reass8083 ; 2 uses
  %gep8091 = getelementptr i8, ptr %invariant.gep8090, i64 %.reass8083 ; 2 uses
  br i1 %i.ahw, label %.lr.ph8062, label %._crit_edge8063

.lr.ph8062:                                       ; preds = %.noexc3607
  br i1 %i.ahy, label %.lr.ph8062.split.us, label %.lr.ph8062.split

.lr.ph8062.split.us:                              ; preds = %.lr.ph8062, %.lr.ph8062.split.us
  %indvars.iv10011 = phi i64 [ %indvars.iv.next10012, %.lr.ph8062.split.us ], [ 0, %.lr.ph8062 ] ; 2 uses
  %.329398061.us = phi ptr [ %i.ams, %.lr.ph8062.split.us ], [ %.229388075, %.lr.ph8062 ] ; 3 uses
  %i.ala = phi <8 x i32> [ %i.aml, %.lr.ph8062.split.us ], [ %i.aku, %.lr.ph8062 ]
  %i.alb = phi <8 x i32> [ %i.amn, %.lr.ph8062.split.us ], [ %i.akv, %.lr.ph8062 ]
  %i.alc = phi <8 x i32> [ %i.amp, %.lr.ph8062.split.us ], [ %i.akw, %.lr.ph8062 ]
  %i.ald = phi <8 x i32> [ %i.amr, %.lr.ph8062.split.us ], [ %i.akx, %.lr.ph8062 ]
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %indvars.iv10011
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !10
  %i.alg = sext i32 %i.alf to i64                 ; 2 uses
  %i.alh = getelementptr inbounds i8, ptr %gep8086, i64 %i.alg
  %i.ali = getelementptr inbounds i8, ptr %gep8091, i64 %i.alg
  %i.alj = load <8 x i8>, ptr %i.alh, align 1, !tbaa !30
  %i.alk = load <8 x i8>, ptr %i.ali, align 1, !tbaa !30
  %i.all = sext <8 x i8> %i.alj to <8 x i16>      ; 4 uses
  %i.alm = sext <8 x i8> %i.alk to <8 x i16>      ; 4 uses
  %i.aln = load <4 x i64>, ptr %.329398061.us, align 32, !tbaa !30 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %.329398061.us, i64 32
  %i.alp = load <4 x i64>, ptr %i.alo, align 32, !tbaa !30 ; 2 uses
  %i.alq = bitcast <4 x i64> %i.aln to <32 x i8>
  %i.alr = shufflevector <32 x i8> %i.alq, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.als = sext <16 x i8> %i.alr to <16 x i16>    ; 2 uses
  %i.alt = bitcast <4 x i64> %i.aln to <32 x i8>
  %i.alu = shufflevector <32 x i8> %i.alt, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.alv = sext <16 x i8> %i.alu to <16 x i16>    ; 2 uses
  %i.alw = bitcast <4 x i64> %i.alp to <32 x i8>
  %i.alx = shufflevector <32 x i8> %i.alw, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aly = sext <16 x i8> %i.alx to <16 x i16>    ; 2 uses
  %i.alz = bitcast <4 x i64> %i.alp to <32 x i8>
  %i.ama = shufflevector <32 x i8> %i.alz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.amb = sext <16 x i8> %i.ama to <16 x i16>    ; 2 uses
  %i.amc = shufflevector <8 x i16> %i.all, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ala, <16 x i16> %i.amc, <16 x i16> %i.als)
  %i.ame = shufflevector <8 x i16> %i.alm, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alb, <16 x i16> %i.ame, <16 x i16> %i.als)
  %i.amg = shufflevector <8 x i16> %i.all, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.amh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alc, <16 x i16> %i.amg, <16 x i16> %i.alv)
  %i.ami = shufflevector <8 x i16> %i.alm, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.amj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ald, <16 x i16> %i.ami, <16 x i16> %i.alv)
  %i.amk = shufflevector <8 x i16> %i.all, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aml = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amd, <16 x i16> %i.amk, <16 x i16> %i.aly) ; 2 uses
  %i.amm = shufflevector <8 x i16> %i.alm, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.amn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amf, <16 x i16> %i.amm, <16 x i16> %i.aly) ; 2 uses
  %i.amo = shufflevector <8 x i16> %i.all, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.amp = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amh, <16 x i16> %i.amo, <16 x i16> %i.amb) ; 2 uses
  %i.amq = shufflevector <8 x i16> %i.alm, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.amr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amj, <16 x i16> %i.amq, <16 x i16> %i.amb) ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.329398061.us, i64 64
  %indvars.iv.next10012 = add nuw nsw i64 %indvars.iv10011, 1 ; 2 uses
  %exitcond10017.not = icmp eq i64 %indvars.iv.next10012, %wide.trip.count10016
  br i1 %exitcond10017.not, label %._crit_edge8063.loopexit, label %.lr.ph8062.split.us, !llvm.loop !84

._crit_edge8063.loopexit:                         ; preds = %.lr.ph8062.split.us
  %scevgep10013 = getelementptr i8, ptr %.229388075, i64 64
  %scevgep10014 = getelementptr i8, ptr %scevgep10013, i64 %i.aib
  br label %._crit_edge8063

._crit_edge8063.loopexit9622:                     ; preds = %.lr.ph8062.split
  %scevgep10006 = getelementptr i8, ptr %.229388075, i64 64
  %scevgep10007 = getelementptr i8, ptr %scevgep10006, i64 %i.aib
  br label %._crit_edge8063

._crit_edge8063:                                  ; preds = %._crit_edge8063.loopexit9622, %._crit_edge8063.loopexit, %.noexc3607
  %.lcssa7802 = phi <8 x i32> [ %i.akx, %.noexc3607 ], [ %i.amr, %._crit_edge8063.loopexit ], [ %i.aop, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7801 = phi <8 x i32> [ %i.akw, %.noexc3607 ], [ %i.amp, %._crit_edge8063.loopexit ], [ %i.aon, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7800 = phi <8 x i32> [ %i.akv, %.noexc3607 ], [ %i.amn, %._crit_edge8063.loopexit ], [ %i.aol, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7799 = phi <8 x i32> [ %i.aku, %.noexc3607 ], [ %i.aml, %._crit_edge8063.loopexit ], [ %i.aoj, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.32939.lcssa = phi ptr [ %.229388075, %.noexc3607 ], [ %scevgep10014, %._crit_edge8063.loopexit ], [ %scevgep10007, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %i.amt = add nuw nsw i32 %.129458074, 8         ; 3 uses
  %i.amu = or disjoint i32 %i.amt, 7
  %i.amv = icmp slt i32 %i.amu, %i.abf
  br i1 %i.amv, label %.noexc3607, label %.preheader7716, !llvm.loop !85

.lr.ph8062.split:                                 ; preds = %.lr.ph8062, %.lr.ph8062.split
  %indvars.iv10004 = phi i64 [ %indvars.iv.next10005, %.lr.ph8062.split ], [ 0, %.lr.ph8062 ] ; 2 uses
  %.329398061 = phi ptr [ %i.aoq, %.lr.ph8062.split ], [ %.229388075, %.lr.ph8062 ] ; 3 uses
  %i.amw = phi <8 x i32> [ %i.aoj, %.lr.ph8062.split ], [ %i.aku, %.lr.ph8062 ]
  %i.amx = phi <8 x i32> [ %i.aol, %.lr.ph8062.split ], [ %i.akv, %.lr.ph8062 ]
  %i.amy = phi <8 x i32> [ %i.aon, %.lr.ph8062.split ], [ %i.akw, %.lr.ph8062 ]
  %i.amz = phi <8 x i32> [ %i.aop, %.lr.ph8062.split ], [ %i.akx, %.lr.ph8062 ]
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %indvars.iv10004
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !10
  %i.anc = sext i32 %i.anb to i64                 ; 2 uses
  %i.and = getelementptr inbounds i8, ptr %gep8086, i64 %i.anc
  %i.ane = getelementptr inbounds i8, ptr %gep8091, i64 %i.anc
  %i.anf = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.and, <8 x i32> %i.et, <8 x i32> splat (i32 -1), i8 1)
  %i.ang = trunc <8 x i32> %i.anf to <8 x i8>
  %i.anh = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ane, <8 x i32> %i.et, <8 x i32> splat (i32 -1), i8 1)
  %i.ani = trunc <8 x i32> %i.anh to <8 x i8>
  %i.anj = sext <8 x i8> %i.ang to <8 x i16>      ; 4 uses
  %i.ank = sext <8 x i8> %i.ani to <8 x i16>      ; 4 uses
  %i.anl = load <4 x i64>, ptr %.329398061, align 32, !tbaa !30 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.329398061, i64 32
  %i.ann = load <4 x i64>, ptr %i.anm, align 32, !tbaa !30 ; 2 uses
  %i.ano = bitcast <4 x i64> %i.anl to <32 x i8>
  %i.anp = shufflevector <32 x i8> %i.ano, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anq = sext <16 x i8> %i.anp to <16 x i16>    ; 2 uses
  %i.anr = bitcast <4 x i64> %i.anl to <32 x i8>
  %i.ans = shufflevector <32 x i8> %i.anr, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ant = sext <16 x i8> %i.ans to <16 x i16>    ; 2 uses
  %i.anu = bitcast <4 x i64> %i.ann to <32 x i8>
  %i.anv = shufflevector <32 x i8> %i.anu, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anw = sext <16 x i8> %i.anv to <16 x i16>    ; 2 uses
  %i.anx = bitcast <4 x i64> %i.ann to <32 x i8>
  %i.any = shufflevector <32 x i8> %i.anx, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.anz = sext <16 x i8> %i.any to <16 x i16>    ; 2 uses
  %i.aoa = shufflevector <8 x i16> %i.anj, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aob = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amw, <16 x i16> %i.aoa, <16 x i16> %i.anq)
  %i.aoc = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aod = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amx, <16 x i16> %i.aoc, <16 x i16> %i.anq)
  %i.aoe = shufflevector <8 x i16> %i.anj, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aof = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amy, <16 x i16> %i.aoe, <16 x i16> %i.ant)
  %i.aog = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aoh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amz, <16 x i16> %i.aog, <16 x i16> %i.ant)
  %i.aoi = shufflevector <8 x i16> %i.anj, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %.lcssa7819 = phi <16 x i32> [ zeroinitializer, %.noexc3595 ], [ %i.avc, %._crit_edge8158.loopexit ], [ zeroinitializer, %.noexc3593.preheader ]
  %.02995.lcssa = phi ptr [ %i.asd, %.noexc3595 ], [ %scevgep10041, %._crit_edge8158.loopexit ], [ %i.asd, %.noexc3593.preheader ] ; 2 uses
  %.02991.lcssa = phi i32 [ 0, %.noexc3595 ], [ %i.avh, %._crit_edge8158.loopexit ], [ %i.asx, %.noexc3593.preheader ] ; 3 uses
  %i.avi = add <16 x i32> %.lcssa7821, %.lcssa7822
  %i.avj = add <16 x i32> %i.avi, %.lcssa7820
  %i.avk = add <16 x i32> %i.avj, %.lcssa7819     ; 2 uses
  %i.avl = shufflevector <16 x i32> %i.avk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avm = shufflevector <16 x i32> %i.avk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avn = add <8 x i32> %i.avl, %i.avm           ; 2 uses
  %i.avo = or disjoint i32 %.02991.lcssa, 7
  %i.avp = icmp slt i32 %i.avo, %i.arv
  br i1 %i.avp, label %.noexc3591.lr.ph, label %._crit_edge8192

.noexc3591.lr.ph:                                 ; preds = %._crit_edge8158
  %i.avq = load i32, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.avr = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !321
  %i.avs = load ptr, ptr %0, align 8, !tbaa !28, !noalias !321
  %i.avt = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !321
  %i.avu = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !321 ; 2 uses
  %factor.op.mul8199 = mul i64 %i.avt, %i.avu
  %i.avv = sext i32 %i.avr to i64
  %i.avw = load i32, ptr %i.b, align 4, !tbaa !10
  %i.avx = mul nsw i32 %i.avw, %i.arw
  %i.avy = sext i32 %i.avx to i64
  %i.avz = mul i64 %i.avu, %i.avv
  %i.awa = mul i64 %i.avz, %i.avy
  %invariant.gep8201 = getelementptr i8, ptr %i.avs, i64 %i.awa
  %i.awb = load i32, ptr %i.a, align 4, !tbaa !10
  %i.awc = mul i32 %i.avq, %i.arx
  %i.awd = mul i32 %i.awc, %i.awb
  %i.awe = sext i32 %i.awd to i64
  %invariant.gep8202 = getelementptr i8, ptr %invariant.gep8201, i64 %i.awe
  %i.awf = load i32, ptr %i.f, align 4, !tbaa !10 ; 4 uses
  %i.awg = icmp sgt i32 %i.awf, 0
  %i.awh = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.awi = icmp eq i32 %i.avq, 8
  %i.awj = add i32 %i.awf, -1
  %i.awk = zext i32 %i.awj to i64
  %i.awl = shl nuw nsw i64 %i.awk, 6              ; 2 uses
  %wide.trip.count10050 = zext nneg i32 %i.awf to i64
  %wide.trip.count10057 = zext nneg i32 %i.awf to i64
  br label %.noexc3591

.noexc3591:                                       ; preds = %.noexc3591.lr.ph, %._crit_edge8179
  %.129928191 = phi i32 [ %.02991.lcssa, %.noexc3591.lr.ph ], [ %i.aya, %._crit_edge8179 ] ; 2 uses
  %.229978190 = phi ptr [ %.02995.lcssa, %.noexc3591.lr.ph ], [ %.32998.lcssa, %._crit_edge8179 ] ; 5 uses
  %i.awm = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7823, %._crit_edge8179 ] ; 3 uses
  %i.awn = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7824, %._crit_edge8179 ] ; 3 uses
  %i.awo = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7825, %._crit_edge8179 ] ; 3 uses
  %i.awp = phi <8 x i32> [ %i.avn, %.noexc3591.lr.ph ], [ %.lcssa7826, %._crit_edge8179 ] ; 3 uses
  %i.awq = sdiv i32 %.129928191, %i.avq
  %i.awr = sext i32 %i.awq to i64
  %.reass8200 = mul i64 %factor.op.mul8199, %i.awr
  %gep8203 = getelementptr i8, ptr %invariant.gep8202, i64 %.reass8200 ; 2 uses
  br i1 %i.awg, label %.lr.ph8178, label %._crit_edge8179

.lr.ph8178:                                       ; preds = %.noexc3591
  br i1 %i.awi, label %.lr.ph8178.split.us, label %.lr.ph8178.split

.lr.ph8178.split.us:                              ; preds = %.lr.ph8178, %.lr.ph8178.split.us
  %indvars.iv10052 = phi i64 [ %indvars.iv.next10053, %.lr.ph8178.split.us ], [ 0, %.lr.ph8178 ] ; 2 uses
  %.329988176.us = phi ptr [ %i.axz, %.lr.ph8178.split.us ], [ %.229978190, %.lr.ph8178 ] ; 3 uses
  %i.aws = phi <8 x i32> [ %i.axy, %.lr.ph8178.split.us ], [ %i.awm, %.lr.ph8178 ]
  %i.awt = phi <8 x i32> [ %i.axw, %.lr.ph8178.split.us ], [ %i.awn, %.lr.ph8178 ]
  %i.awu = phi <8 x i32> [ %i.axu, %.lr.ph8178.split.us ], [ %i.awo, %.lr.ph8178 ]
  %i.awv = phi <8 x i32> [ %i.axs, %.lr.ph8178.split.us ], [ %i.awp, %.lr.ph8178 ]
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %indvars.iv10052
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !10
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds i8, ptr %gep8203, i64 %i.awy
  %i.axa = load <8 x i8>, ptr %i.awz, align 1, !tbaa !30
  %i.axb = sext <8 x i8> %i.axa to <8 x i16>      ; 4 uses
  %i.axc = load <4 x i64>, ptr %.329988176.us, align 32, !tbaa !30 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.329988176.us, i64 32
  %i.axe = load <4 x i64>, ptr %i.axd, align 32, !tbaa !30 ; 2 uses
  %i.axf = bitcast <4 x i64> %i.axc to <32 x i8>
  %i.axg = shufflevector <32 x i8> %i.axf, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axh = sext <16 x i8> %i.axg to <16 x i16>
  %i.axi = bitcast <4 x i64> %i.axc to <32 x i8>
  %i.axj = shufflevector <32 x i8> %i.axi, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axk = sext <16 x i8> %i.axj to <16 x i16>
  %i.axl = bitcast <4 x i64> %i.axe to <32 x i8>
  %i.axm = shufflevector <32 x i8> %i.axl, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axn = sext <16 x i8> %i.axm to <16 x i16>
  %i.axo = bitcast <4 x i64> %i.axe to <32 x i8>
  %i.axp = shufflevector <32 x i8> %i.axo, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axq = sext <16 x i8> %i.axp to <16 x i16>
  %i.axr = shufflevector <8 x i16> %i.axb, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.axs = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.awv, <16 x i16> %i.axr, <16 x i16> %i.axh) ; 2 uses
  %i.axt = shufflevector <8 x i16> %i.axb, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.axu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.awu, <16 x i16> %i.axt, <16 x i16> %i.axk) ; 2 uses
  %i.axv = shufflevector <8 x i16> %i.axb, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.axw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.awt, <16 x i16> %i.axv, <16 x i16> %i.axn) ; 2 uses
  %i.axx = shufflevector <8 x i16> %i.axb, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.axy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aws, <16 x i16> %i.axx, <16 x i16> %i.axq) ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.329988176.us, i64 64
  %indvars.iv.next10053 = add nuw nsw i64 %indvars.iv10052, 1 ; 2 uses
  %exitcond10058.not = icmp eq i64 %indvars.iv.next10053, %wide.trip.count10057
  br i1 %exitcond10058.not, label %._crit_edge8179.loopexit, label %.lr.ph8178.split.us, !llvm.loop !99

._crit_edge8179.loopexit:                         ; preds = %.lr.ph8178.split.us
  %scevgep10054 = getelementptr i8, ptr %.229978190, i64 64
  %scevgep10055 = getelementptr i8, ptr %scevgep10054, i64 %i.awl
  br label %._crit_edge8179

._crit_edge8179.loopexit9621:                     ; preds = %.lr.ph8178.split
  %scevgep10047 = getelementptr i8, ptr %.229978190, i64 64
  %scevgep10048 = getelementptr i8, ptr %scevgep10047, i64 %i.awl
  br label %._crit_edge8179

._crit_edge8179:                                  ; preds = %._crit_edge8179.loopexit9621, %._crit_edge8179.loopexit, %.noexc3591
  %.lcssa7826 = phi <8 x i32> [ %i.awp, %.noexc3591 ], [ %i.axs, %._crit_edge8179.loopexit ], [ %i.aze, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7825 = phi <8 x i32> [ %i.awo, %.noexc3591 ], [ %i.axu, %._crit_edge8179.loopexit ], [ %i.azg, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7824 = phi <8 x i32> [ %i.awn, %.noexc3591 ], [ %i.axw, %._crit_edge8179.loopexit ], [ %i.azi, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7823 = phi <8 x i32> [ %i.awm, %.noexc3591 ], [ %i.axy, %._crit_edge8179.loopexit ], [ %i.azk, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.32998.lcssa = phi ptr [ %.229978190, %.noexc3591 ], [ %scevgep10055, %._crit_edge8179.loopexit ], [ %scevgep10048, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %i.aya = add nuw nsw i32 %.129928191, 8         ; 3 uses
  %i.ayb = or disjoint i32 %i.aya, 7
  %i.ayc = icmp slt i32 %i.ayb, %i.arv
  br i1 %i.ayc, label %.noexc3591, label %._crit_edge8192, !llvm.loop !100

.lr.ph8178.split:                                 ; preds = %.lr.ph8178, %.lr.ph8178.split
  %indvars.iv10045 = phi i64 [ %indvars.iv.next10046, %.lr.ph8178.split ], [ 0, %.lr.ph8178 ] ; 2 uses
  %.329988176 = phi ptr [ %i.azl, %.lr.ph8178.split ], [ %.229978190, %.lr.ph8178 ] ; 3 uses
  %i.ayd = phi <8 x i32> [ %i.azk, %.lr.ph8178.split ], [ %i.awm, %.lr.ph8178 ]
  %i.aye = phi <8 x i32> [ %i.azi, %.lr.ph8178.split ], [ %i.awn, %.lr.ph8178 ]
  %i.ayf = phi <8 x i32> [ %i.azg, %.lr.ph8178.split ], [ %i.awo, %.lr.ph8178 ]
  %i.ayg = phi <8 x i32> [ %i.aze, %.lr.ph8178.split ], [ %i.awp, %.lr.ph8178 ]
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %indvars.iv10045
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !10
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds i8, ptr %gep8203, i64 %i.ayj
  %i.ayl = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ayk, <8 x i32> %i.aba, <8 x i32> splat (i32 -1), i8 1)
  %i.aym = trunc <8 x i32> %i.ayl to <8 x i8>
  %i.ayn = sext <8 x i8> %i.aym to <8 x i16>      ; 4 uses
  %i.ayo = load <4 x i64>, ptr %.329988176, align 32, !tbaa !30 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %.329988176, i64 32
  %i.ayq = load <4 x i64>, ptr %i.ayp, align 32, !tbaa !30 ; 2 uses
  %i.ayr = bitcast <4 x i64> %i.ayo to <32 x i8>
  %i.ays = shufflevector <32 x i8> %i.ayr, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayt = sext <16 x i8> %i.ays to <16 x i16>
  %i.ayu = bitcast <4 x i64> %i.ayo to <32 x i8>
  %i.ayv = shufflevector <32 x i8> %i.ayu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayw = sext <16 x i8> %i.ayv to <16 x i16>
  %i.ayx = bitcast <4 x i64> %i.ayq to <32 x i8>
  %i.ayy = shufflevector <32 x i8> %i.ayx, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayz = sext <16 x i8> %i.ayy to <16 x i16>
  %i.aza = bitcast <4 x i64> %i.ayq to <32 x i8>
  %i.azb = shufflevector <32 x i8> %i.aza, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azc = sext <16 x i8> %i.azb to <16 x i16>
  %i.azd = shufflevector <8 x i16> %i.ayn, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aze = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ayg, <16 x i16> %i.azd, <16 x i16> %i.ayt) ; 2 uses
  %i.azf = shufflevector <8 x i16> %i.ayn, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.azg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ayf, <16 x i16> %i.azf, <16 x i16> %i.ayw) ; 2 uses
  %i.azh = shufflevector <8 x i16> %i.ayn, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.azi = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aye, <16 x i16> %i.azh, <16 x i16> %i.ayz) ; 2 uses
  %i.azj = shufflevector <8 x i16> %i.ayn, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.azk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ayd, <16 x i16> %i.azj, <16 x i16> %i.azc) ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %.329988176, i64 64
  %indvars.iv.next10046 = add nuw nsw i64 %indvars.iv10045, 1 ; 2 uses
  %exitcond10051.not = icmp eq i64 %indvars.iv.next10046, %wide.trip.count10050
  br i1 %exitcond10051.not, label %._crit_edge8179.loopexit9621, label %.lr.ph8178.split, !llvm.loop !99

._crit_edge8192:                                  ; preds = %._crit_edge8179, %._crit_edge8158
  %.lcssa7830 = phi <8 x i32> [ %i.avn, %._crit_edge8158 ], [ %.lcssa7826, %._crit_edge8179 ]
  %.lcssa7829 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7825, %._crit_edge8179 ]
  %.lcssa7828 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7824, %._crit_edge8179 ]
  %.lcssa7827 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7823, %._crit_edge8179 ]
  %.22997.lcssa = phi ptr [ %.02995.lcssa, %._crit_edge8158 ], [ %.32998.lcssa, %._crit_edge8179 ] ; 3 uses
  %.12992.lcssa = phi i32 [ %.02991.lcssa, %._crit_edge8158 ], [ %i.aya, %._crit_edge8179 ] ; 5 uses
  %i.azm = add <8 x i32> %.lcssa7829, %.lcssa7830
  %i.azn = add <8 x i32> %i.azm, %.lcssa7828
  %i.azo = add <8 x i32> %i.azn, %.lcssa7827      ; 3 uses
  %i.azp = or disjoint i32 %.12992.lcssa, 1
  %i.azq = icmp slt i32 %i.azp, %i.arv
  br i1 %i.azq, label %.noexc3589.lr.ph, label %.preheader7714

.noexc3589.lr.ph:                                 ; preds = %._crit_edge8192
  %i.azr = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !322
  %i.azs = load ptr, ptr %0, align 8, !tbaa !28, !noalias !322
  %i.azt = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !322
  %i.azu = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !322 ; 2 uses
  %factor.op.mul8217 = mul i64 %i.azt, %i.azu
  %i.azv = sext i32 %i.azr to i64
  %i.azw = load i32, ptr %i.b, align 4, !tbaa !10
  %i.azx = mul nsw i32 %i.azw, %i.arw
  %i.azy = sext i32 %i.azx to i64
  %i.azz = mul i64 %i.azu, %i.azv
  %i.baa = mul i64 %i.azz, %i.azy
  %invariant.gep8219 = getelementptr i8, ptr %i.azs, i64 %i.baa
  %i.bab = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bac = mul nsw i32 %i.bab, %i.arx
  %i.bad = sext i32 %i.bac to i64
  %invariant.gep8220 = getelementptr i8, ptr %invariant.gep8219, i64 %i.bad
  %i.bae = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.baf = icmp sgt i32 %i.bae, 0
  %i.bag = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.baf, label %.noexc3589.us.preheader, label %.noexc3589.preheader

.noexc3589.preheader:                             ; preds = %.noexc3589.lr.ph
  %i.bah = add nuw nsw i32 %.12992.lcssa, 2
  %i.bai = add nsw i32 %i.arv, -2
  %i.baj = sub nsw i32 %i.bai, %.12992.lcssa
  %i.bak = and i32 %i.baj, -2
  %i.bal = add i32 %i.bah, %i.bak
  br label %.preheader7714

.noexc3589.us.preheader:                          ; preds = %.noexc3589.lr.ph
  %i.bam = add nsw i32 %i.bae, -1
  %i.ban = zext nneg i32 %i.bam to i64
  %i.bao = shl nuw nsw i64 %i.ban, 4
  %i.bap = zext nneg i32 %.12992.lcssa to i64
  %wide.trip.count10064 = zext nneg i32 %i.bae to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count10064, 1
  %i.baq = icmp eq i32 %i.bae, 1
  %unroll_iter = and i64 %wide.trip.count10064, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11943 = trunc i32 %i.bae to i1
  br label %.noexc3589.us

.noexc3589.us:                                    ; preds = %.noexc3589.us.preheader, %._crit_edge8208.us
  %indvars.iv10066 = phi i64 [ %i.bap, %.noexc3589.us.preheader ], [ %indvars.iv.next10067, %._crit_edge8208.us ] ; 2 uses
  %.429998212.us = phi ptr [ %.22997.lcssa, %.noexc3589.us.preheader ], [ %scevgep10062, %._crit_edge8208.us ] ; 3 uses
  %i.bar = phi <8 x i32> [ %i.azo, %.noexc3589.us.preheader ], [ %.lcssa11938, %._crit_edge8208.us ] ; 2 uses
  %.reass8218.us = mul i64 %factor.op.mul8217, %indvars.iv10066
  %gep8221.us = getelementptr i8, ptr %invariant.gep8220, i64 %.reass8218.us ; 3 uses
  br i1 %i.baq, label %.epil.preheader, label %.noexc3589.us.new

.noexc3589.us.new:                                ; preds = %.noexc3589.us, %.noexc3589.us.new
  %indvars.iv10059 = phi i64 [ %indvars.iv.next10060.1, %.noexc3589.us.new ], [ 0, %.noexc3589.us ] ; 3 uses
  %.530008205.us = phi ptr [ %i.bby, %.noexc3589.us.new ], [ %.429998212.us, %.noexc3589.us ] ; 3 uses
  %.376378204.us = phi <8 x i32> [ %i.bbx, %.noexc3589.us.new ], [ %i.bar, %.noexc3589.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc3589.us.new ], [ 0, %.noexc3589.us ]
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %indvars.iv10059
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !10
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.bau ; 2 uses
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !30
  %i.bax = sext i8 %i.baw to i16
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bav, i64 %i.da
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !30
  %i.bba = sext i8 %i.baz to i16
  %i.bbb = insertelement <8 x i16> poison, i16 %i.bax, i64 0
  %i.bbc = insertelement <8 x i16> %i.bbb, i16 %i.bba, i64 1
  %i.bbd = load <16 x i8>, ptr %.530008205.us, align 16, !tbaa !30
  %i.bbe = sext <16 x i8> %i.bbd to <16 x i16>
  %i.bbf = shufflevector <8 x i16> %i.bbc, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bbg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.376378204.us, <16 x i16> %i.bbf, <16 x i16> %i.bbe)
  %i.bbh = getelementptr inbounds nuw i8, ptr %.530008205.us, i64 16
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %indvars.iv10059
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !10
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.bbl ; 2 uses
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !30
  %i.bbo = sext i8 %i.bbn to i16
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbm, i64 %i.da
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !30
  %i.bbr = sext i8 %i.bbq to i16
  %i.bbs = insertelement <8 x i16> poison, i16 %i.bbo, i64 0
  %i.bbt = insertelement <8 x i16> %i.bbs, i16 %i.bbr, i64 1
  %i.bbu = load <16 x i8>, ptr %i.bbh, align 16, !tbaa !30
  %i.bbv = sext <16 x i8> %i.bbu to <16 x i16>
  %i.bbw = shufflevector <8 x i16> %i.bbt, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bbx = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bbg, <16 x i16> %i.bbw, <16 x i16> %i.bbv) ; 3 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %.530008205.us, i64 32 ; 2 uses
  %indvars.iv.next10060.1 = add nuw nsw i64 %indvars.iv10059, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge8208.us.unr-lcssa, label %.noexc3589.us.new, !llvm.loop !103

._crit_edge8208.us.unr-lcssa:                     ; preds = %.noexc3589.us.new
  br i1 %lcmp.mod.not, label %._crit_edge8208.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge8208.us.unr-lcssa, %.noexc3589.us
  %indvars.iv10059.epil.init = phi i64 [ 0, %.noexc3589.us ], [ %indvars.iv.next10060.1, %._crit_edge8208.us.unr-lcssa ]
  %.530008205.us.epil.init = phi ptr [ %.429998212.us, %.noexc3589.us ], [ %i.bby, %._crit_edge8208.us.unr-lcssa ]
  %.376378204.us.epil.init = phi <8 x i32> [ %i.bar, %.noexc3589.us ], [ %i.bbx, %._crit_edge8208.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11943)
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %indvars.iv10059.epil.init
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !10
  %i.bcb = sext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.bcb ; 2 uses
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !30
  %i.bce = sext i8 %i.bcd to i16
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %i.da
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !30
  %i.bch = sext i8 %i.bcg to i16
  %i.bci = insertelement <8 x i16> poison, i16 %i.bce, i64 0
  %i.bcj = insertelement <8 x i16> %i.bci, i16 %i.bch, i64 1
  %i.bck = load <16 x i8>, ptr %.530008205.us.epil.init, align 16, !tbaa !30
  %i.bcl = sext <16 x i8> %i.bck to <16 x i16>
  %i.bcm = shufflevector <8 x i16> %i.bcj, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bcn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.376378204.us.epil.init, <16 x i16> %i.bcm, <16 x i16> %i.bcl)
  br label %._crit_edge8208.us

._crit_edge8208.us:                               ; preds = %._crit_edge8208.us.unr-lcssa, %.epil.preheader
  %.lcssa11938 = phi <8 x i32> [ %i.bbx, %._crit_edge8208.us.unr-lcssa ], [ %i.bcn, %.epil.preheader ] ; 2 uses
  %scevgep10061 = getelementptr i8, ptr %.429998212.us, i64 16
  %scevgep10062 = getelementptr i8, ptr %scevgep10061, i64 %i.bao ; 2 uses
  %indvars.iv.next10067 = add nuw nsw i64 %indvars.iv10066, 2 ; 3 uses
  %i.bco = trunc i64 %indvars.iv.next10067 to i32
  %i.bcp = or i32 %i.bco, 1
  %i.bcq = icmp slt i32 %i.bcp, %i.arv
  br i1 %i.bcq, label %.noexc3589.us, label %.preheader7714.loopexit, !llvm.loop !104

.preheader7714.loopexit:                          ; preds = %._crit_edge8208.us
  %i.bcr = trunc nuw i64 %indvars.iv.next10067 to i32
  br label %.preheader7714

.preheader7714:                                   ; preds = %.noexc3589.preheader, %.preheader7714.loopexit, %._crit_edge8192
  %.27636.lcssa.in = phi <8 x i32> [ %i.azo, %._crit_edge8192 ], [ %.lcssa11938, %.preheader7714.loopexit ], [ %i.azo, %.noexc3589.preheader ] ; 3 uses
  %.42999.lcssa = phi ptr [ %.22997.lcssa, %._crit_edge8192 ], [ %scevgep10062, %.preheader7714.loopexit ], [ %.22997.lcssa, %.noexc3589.preheader ]
  %.22993.lcssa = phi i32 [ %.12992.lcssa, %._crit_edge8192 ], [ %i.bcr, %.preheader7714.loopexit ], [ %i.bal, %.noexc3589.preheader ] ; 2 uses
  %i.bcs = icmp slt i32 %.22993.lcssa, %i.arv
  br i1 %i.bcs, label %.noexc3587.lr.ph, label %._crit_edge8235

.noexc3587.lr.ph:                                 ; preds = %.preheader7714
  %i.bct = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !323
  %i.bcu = load ptr, ptr %0, align 8, !tbaa !28, !noalias !323
  %i.bcv = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !323
  %i.bcw = load i64, ptr %i.cd, align 8, !tbaa !29, !noalias !323 ; 2 uses
  %factor.op.mul8237 = mul i64 %i.bcv, %i.bcw
  %i.bcx = sext i32 %i.bct to i64
  %i.bcy = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bcz = mul nsw i32 %i.bcy, %i.arw
  %i.bda = sext i32 %i.bcz to i64
  %i.bdb = mul i64 %i.bcw, %i.bcx
  %i.bdc = mul i64 %i.bdb, %i.bda
  %invariant.gep8239 = getelementptr i8, ptr %i.bcu, i64 %i.bdc
  %i.bdd = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bde = mul nsw i32 %i.bdd, %i.arx
  %i.bdf = sext i32 %i.bde to i64
  %invariant.gep8240 = getelementptr i8, ptr %invariant.gep8239, i64 %i.bdf
  %i.bdg = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.bdh = icmp sgt i32 %i.bdg, 0
  %i.bdi = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.bdh, label %.noexc3587.us.preheader, label %._crit_edge8235

.noexc3587.us.preheader:                          ; preds = %.noexc3587.lr.ph
  %i.bdj = add nsw i32 %i.bdg, -1
  %i.bdk = zext nneg i32 %i.bdj to i64
  %i.bdl = shl nuw nsw i64 %i.bdk, 3
  %i.bdm = zext i32 %.22993.lcssa to i64
  %wide.trip.count10074 = zext nneg i32 %i.bdg to i64 ; 2 uses
  %xtraiter11945 = and i64 %wide.trip.count10074, 1
  %i.bdn = icmp eq i32 %i.bdg, 1
  %unroll_iter11949 = and i64 %wide.trip.count10074, 2147483646
  %lcmp.mod11946.not = icmp eq i64 %xtraiter11945, 0
  %lcmp.mod11948 = trunc i32 %i.bdg to i1
  br label %.noexc3587.us

.noexc3587.us:                                    ; preds = %.noexc3587.us.preheader, %._crit_edge8229.us
  %indvars.iv10076 = phi i64 [ %i.bdm, %.noexc3587.us.preheader ], [ %indvars.iv.next10077, %._crit_edge8229.us ] ; 2 uses
  %.630018233.us = phi ptr [ %.42999.lcssa, %.noexc3587.us.preheader ], [ %scevgep10072, %._crit_edge8229.us ] ; 3 uses
  %i.bdo = phi <8 x i32> [ %.27636.lcssa.in, %.noexc3587.us.preheader ], [ %.lcssa11939, %._crit_edge8229.us ] ; 2 uses
  %.reass8238.us = mul i64 %factor.op.mul8237, %indvars.iv10076
  %gep8241.us = getelementptr i8, ptr %invariant.gep8240, i64 %.reass8238.us ; 3 uses
  br i1 %i.bdn, label %.epil.preheader11944, label %.noexc3587.us.new

.noexc3587.us.new:                                ; preds = %.noexc3587.us, %.noexc3587.us.new
  %indvars.iv10069 = phi i64 [ %indvars.iv.next10070.1, %.noexc3587.us.new ], [ 0, %.noexc3587.us ] ; 3 uses
  %.730028226.us = phi ptr [ %i.ber, %.noexc3587.us.new ], [ %.630018233.us, %.noexc3587.us ] ; 3 uses
  %.576398225.us = phi <8 x i32> [ %i.beq, %.noexc3587.us.new ], [ %i.bdo, %.noexc3587.us ]
  %niter11950 = phi i64 [ %niter11950.next.1, %.noexc3587.us.new ], [ 0, %.noexc3587.us ]
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv10069
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !10
  %i.bdr = sext i32 %i.bdq to i64
  %i.bds = getelementptr inbounds i8, ptr %gep8241.us, i64 %i.bdr
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !30
  %i.bdu = sext i8 %i.bdt to i16
  %i.bdv = insertelement <8 x i16> poison, i16 %i.bdu, i64 0
  %i.bdw = shufflevector <8 x i16> %i.bdv, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bdx = load <8 x i8>, ptr %.730028226.us, align 1, !tbaa !30
  %i.bdy = sext <8 x i8> %i.bdx to <8 x i16>
  %i.bdz = mul <8 x i16> %i.bdw, %i.bdy
  %i.bea = sext <8 x i16> %i.bdz to <8 x i32>
  %i.beb = add <8 x i32> %.576398225.us, %i.bea
  %i.bec = getelementptr inbounds nuw i8, ptr %.730028226.us, i64 8
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv10069
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 4
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !10
  %i.beg = sext i32 %i.bef to i64
  %i.beh = getelementptr inbounds i8, ptr %gep8241.us, i64 %i.beg
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !30
  %i.bej = sext i8 %i.bei to i16
  %i.bek = insertelement <8 x i16> poison, i16 %i.bej, i64 0
  %i.bel = shufflevector <8 x i16> %i.bek, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bem = load <8 x i8>, ptr %i.bec, align 1, !tbaa !30
  %i.ben = sext <8 x i8> %i.bem to <8 x i16>
  %i.beo = mul <8 x i16> %i.bel, %i.ben
  %i.bep = sext <8 x i16> %i.beo to <8 x i32>
  %i.beq = add <8 x i32> %i.beb, %i.bep           ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %.730028226.us, i64 16 ; 2 uses
  %indvars.iv.next10070.1 = add nuw nsw i64 %indvars.iv10069, 2 ; 2 uses
  %niter11950.next.1 = add i64 %niter11950, 2     ; 2 uses
  %niter11950.ncmp.1 = icmp eq i64 %niter11950.next.1, %unroll_iter11949
  br i1 %niter11950.ncmp.1, label %._crit_edge8229.us.unr-lcssa, label %.noexc3587.us.new, !llvm.loop !107

._crit_edge8229.us.unr-lcssa:                     ; preds = %.noexc3587.us.new
  br i1 %lcmp.mod11946.not, label %._crit_edge8229.us, label %.epil.preheader11944
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %invariant.gep8503 = getelementptr i8, ptr %invariant.gep8502, i64 %i.cmi
  %i.cmj = load i32, ptr %i.f, align 4, !tbaa !10 ; 4 uses
  %i.cmk = icmp sgt i32 %i.cmj, 0
  %i.cml = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.cmm = icmp eq i32 %i.clk, 8
  %i.cmn = add i32 %i.cmj, -1
  %i.cmo = zext i32 %i.cmn to i64
  %i.cmp = shl nuw nsw i64 %i.cmo, 5              ; 2 uses
  %wide.trip.count10133 = zext nneg i32 %i.cmj to i64
  %wide.trip.count10140 = zext nneg i32 %i.cmj to i64
  br label %.noexc3545

.noexc3545:                                       ; preds = %.noexc3545.lr.ph, %._crit_edge8471
  %.129248487 = phi i32 [ %.02923.lcssa, %.noexc3545.lr.ph ], [ %i.coh, %._crit_edge8471 ] ; 2 uses
  %.229298486 = phi ptr [ %.02927.lcssa, %.noexc3545.lr.ph ], [ %.32930.lcssa, %._crit_edge8471 ] ; 5 uses
  %i.cmq = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cog, %._crit_edge8471 ] ; 3 uses
  %i.cmr = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cof, %._crit_edge8471 ] ; 3 uses
  %i.cms = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.coe, %._crit_edge8471 ] ; 3 uses
  %i.cmt = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cod, %._crit_edge8471 ] ; 3 uses
  %i.cmu = sdiv i32 %.129248487, %i.clk
  %i.cmv = sext i32 %i.cmu to i64
  %.reass8496 = mul i64 %factor.op.mul8495, %i.cmv ; 2 uses
  %gep8499 = getelementptr i8, ptr %invariant.gep8498, i64 %.reass8496 ; 2 uses
  %gep8504 = getelementptr i8, ptr %invariant.gep8503, i64 %.reass8496 ; 2 uses
  br i1 %i.cmk, label %.lr.ph8470, label %._crit_edge8471

.lr.ph8470:                                       ; preds = %.noexc3545
  br i1 %i.cmm, label %.lr.ph8470.split.us, label %.lr.ph8470.split

.lr.ph8470.split.us:                              ; preds = %.lr.ph8470, %.lr.ph8470.split.us
  %indvars.iv10135 = phi i64 [ %indvars.iv.next10136, %.lr.ph8470.split.us ], [ 0, %.lr.ph8470 ] ; 2 uses
  %.329308468.us = phi ptr [ %i.coc, %.lr.ph8470.split.us ], [ %.229298486, %.lr.ph8470 ] ; 2 uses
  %.175468467.us = phi <8 x i32> [ %i.cob, %.lr.ph8470.split.us ], [ %i.cmq, %.lr.ph8470 ]
  %.175488466.us = phi <8 x i32> [ %i.cny, %.lr.ph8470.split.us ], [ %i.cmr, %.lr.ph8470 ]
  %.175508465.us = phi <8 x i32> [ %i.cnv, %.lr.ph8470.split.us ], [ %i.cms, %.lr.ph8470 ]
  %.175528464.us = phi <8 x i32> [ %i.cnr, %.lr.ph8470.split.us ], [ %i.cmt, %.lr.ph8470 ]
  %i.cmw = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv10135
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !10
  %i.cmy = sext i32 %i.cmx to i64                 ; 2 uses
  %i.cmz = getelementptr inbounds i8, ptr %gep8499, i64 %i.cmy
  %i.cna = getelementptr inbounds i8, ptr %gep8504, i64 %i.cmy
  %i.cnb = load <8 x i8>, ptr %i.cmz, align 1, !tbaa !30
  %i.cnc = load <8 x i8>, ptr %i.cna, align 1, !tbaa !30
  %i.cnd = sext <8 x i8> %i.cnb to <8 x i16>      ; 2 uses
  %i.cne = sext <8 x i8> %i.cnc to <8 x i16>      ; 2 uses
  %i.cnf = load <4 x i64>, ptr %.329308468.us, align 32, !tbaa !30 ; 2 uses
  %i.cng = bitcast <4 x i64> %i.cnf to <32 x i8>
  %i.cnh = shufflevector <32 x i8> %i.cng, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cni = sext <16 x i8> %i.cnh to <16 x i16>    ; 2 uses
  %i.cnj = bitcast <4 x i64> %i.cnf to <32 x i8>
  %i.cnk = shufflevector <32 x i8> %i.cnj, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cnl = sext <16 x i8> %i.cnk to <16 x i16>    ; 2 uses
  %i.cnm = bitcast <8 x i16> %i.cnd to <4 x i32>  ; 2 uses
  %i.cnn = bitcast <8 x i16> %i.cne to <4 x i32>  ; 2 uses
  %i.cno = bitcast <8 x i16> %i.cnd to <4 x i32>  ; 2 uses
  %i.cnp = shufflevector <4 x i32> %i.cno, <4 x i32> %i.cnm, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cnq = bitcast <8 x i32> %i.cnp to <16 x i16>
  %i.cnr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175528464.us, <16 x i16> %i.cnq, <16 x i16> %i.cni) ; 2 uses
  %i.cns = bitcast <8 x i16> %i.cne to <4 x i32>  ; 2 uses
  %i.cnt = shufflevector <4 x i32> %i.cns, <4 x i32> %i.cnn, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cnu = bitcast <8 x i32> %i.cnt to <16 x i16>
  %i.cnv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175508465.us, <16 x i16> %i.cnu, <16 x i16> %i.cni) ; 2 uses
  %i.cnw = shufflevector <4 x i32> %i.cno, <4 x i32> %i.cnm, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cnx = bitcast <8 x i32> %i.cnw to <16 x i16>
  %i.cny = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175488466.us, <16 x i16> %i.cnx, <16 x i16> %i.cnl) ; 2 uses
  %i.cnz = shufflevector <4 x i32> %i.cns, <4 x i32> %i.cnn, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.coa = bitcast <8 x i32> %i.cnz to <16 x i16>
  %i.cob = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175468467.us, <16 x i16> %i.coa, <16 x i16> %i.cnl) ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %.329308468.us, i64 32
  %indvars.iv.next10136 = add nuw nsw i64 %indvars.iv10135, 1 ; 2 uses
  %exitcond10141.not = icmp eq i64 %indvars.iv.next10136, %wide.trip.count10140
  br i1 %exitcond10141.not, label %._crit_edge8471.loopexit, label %.lr.ph8470.split.us, !llvm.loop !140

._crit_edge8471.loopexit:                         ; preds = %.lr.ph8470.split.us
  %scevgep10137 = getelementptr i8, ptr %.229298486, i64 32
  %scevgep10138 = getelementptr i8, ptr %scevgep10137, i64 %i.cmp
  br label %._crit_edge8471

._crit_edge8471.loopexit9613:                     ; preds = %.lr.ph8470.split
  %scevgep10130 = getelementptr i8, ptr %.229298486, i64 32
  %scevgep10131 = getelementptr i8, ptr %scevgep10130, i64 %i.cmp
  br label %._crit_edge8471

._crit_edge8471:                                  ; preds = %._crit_edge8471.loopexit9613, %._crit_edge8471.loopexit, %.noexc3545
  %i.cod = phi <8 x i32> [ %i.cmt, %.noexc3545 ], [ %i.cnr, %._crit_edge8471.loopexit ], [ %i.cph, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.coe = phi <8 x i32> [ %i.cms, %.noexc3545 ], [ %i.cnv, %._crit_edge8471.loopexit ], [ %i.cpl, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cof = phi <8 x i32> [ %i.cmr, %.noexc3545 ], [ %i.cny, %._crit_edge8471.loopexit ], [ %i.cpo, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cog = phi <8 x i32> [ %i.cmq, %.noexc3545 ], [ %i.cob, %._crit_edge8471.loopexit ], [ %i.cpr, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %.32930.lcssa = phi ptr [ %.229298486, %.noexc3545 ], [ %scevgep10138, %._crit_edge8471.loopexit ], [ %scevgep10131, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.coh = add nuw nsw i32 %.129248487, 8         ; 3 uses
  %i.coi = or disjoint i32 %i.coh, 7
  %i.coj = icmp slt i32 %i.coi, %i.cgf
  br i1 %i.coj, label %.noexc3545, label %._crit_edge8488, !llvm.loop !141

.lr.ph8470.split:                                 ; preds = %.lr.ph8470, %.lr.ph8470.split
  %indvars.iv10128 = phi i64 [ %indvars.iv.next10129, %.lr.ph8470.split ], [ 0, %.lr.ph8470 ] ; 2 uses
  %.329308468 = phi ptr [ %i.cps, %.lr.ph8470.split ], [ %.229298486, %.lr.ph8470 ] ; 2 uses
  %.175468467 = phi <8 x i32> [ %i.cpr, %.lr.ph8470.split ], [ %i.cmq, %.lr.ph8470 ]
  %.175488466 = phi <8 x i32> [ %i.cpo, %.lr.ph8470.split ], [ %i.cmr, %.lr.ph8470 ]
  %.175508465 = phi <8 x i32> [ %i.cpl, %.lr.ph8470.split ], [ %i.cms, %.lr.ph8470 ]
  %.175528464 = phi <8 x i32> [ %i.cph, %.lr.ph8470.split ], [ %i.cmt, %.lr.ph8470 ]
  %i.cok = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv10128
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !10
  %i.com = sext i32 %i.col to i64                 ; 2 uses
  %i.con = getelementptr inbounds i8, ptr %gep8499, i64 %i.com
  %i.coo = getelementptr inbounds i8, ptr %gep8504, i64 %i.com
  %i.cop = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.con, <8 x i32> %i.biq, <8 x i32> splat (i32 -1), i8 1)
  %i.coq = trunc <8 x i32> %i.cop to <8 x i8>
  %i.cor = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.coo, <8 x i32> %i.biq, <8 x i32> splat (i32 -1), i8 1)
  %i.cos = trunc <8 x i32> %i.cor to <8 x i8>
  %i.cot = sext <8 x i8> %i.coq to <8 x i16>      ; 2 uses
  %i.cou = sext <8 x i8> %i.cos to <8 x i16>      ; 2 uses
  %i.cov = load <4 x i64>, ptr %.329308468, align 32, !tbaa !30 ; 2 uses
  %i.cow = bitcast <4 x i64> %i.cov to <32 x i8>
  %i.cox = shufflevector <32 x i8> %i.cow, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.coy = sext <16 x i8> %i.cox to <16 x i16>    ; 2 uses
  %i.coz = bitcast <4 x i64> %i.cov to <32 x i8>
  %i.cpa = shufflevector <32 x i8> %i.coz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cpb = sext <16 x i8> %i.cpa to <16 x i16>    ; 2 uses
  %i.cpc = bitcast <8 x i16> %i.cot to <4 x i32>  ; 2 uses
  %i.cpd = bitcast <8 x i16> %i.cou to <4 x i32>  ; 2 uses
  %i.cpe = bitcast <8 x i16> %i.cot to <4 x i32>  ; 2 uses
  %i.cpf = shufflevector <4 x i32> %i.cpe, <4 x i32> %i.cpc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cpg = bitcast <8 x i32> %i.cpf to <16 x i16>
  %i.cph = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175528464, <16 x i16> %i.cpg, <16 x i16> %i.coy) ; 2 uses
  %i.cpi = bitcast <8 x i16> %i.cou to <4 x i32>  ; 2 uses
  %i.cpj = shufflevector <4 x i32> %i.cpi, <4 x i32> %i.cpd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cpk = bitcast <8 x i32> %i.cpj to <16 x i16>
  %i.cpl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175508465, <16 x i16> %i.cpk, <16 x i16> %i.coy) ; 2 uses
  %i.cpm = shufflevector <4 x i32> %i.cpe, <4 x i32> %i.cpc, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cpn = bitcast <8 x i32> %i.cpm to <16 x i16>
  %i.cpo = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175488466, <16 x i16> %i.cpn, <16 x i16> %i.cpb) ; 2 uses
  %i.cpp = shufflevector <4 x i32> %i.cpi, <4 x i32> %i.cpd, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cpq = bitcast <8 x i32> %i.cpp to <16 x i16>
  %i.cpr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175468467, <16 x i16> %i.cpq, <16 x i16> %i.cpb) ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %.329308468, i64 32
  %indvars.iv.next10129 = add nuw nsw i64 %indvars.iv10128, 1 ; 2 uses
  %exitcond10134.not = icmp eq i64 %indvars.iv.next10129, %wide.trip.count10133
  br i1 %exitcond10134.not, label %._crit_edge8471.loopexit9613, label %.lr.ph8470.split, !llvm.loop !140

._crit_edge8488:                                  ; preds = %._crit_edge8471, %._crit_edge8447
  %i.cpt = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cod, %._crit_edge8471 ] ; 2 uses
  %i.cpu = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.coe, %._crit_edge8471 ] ; 2 uses
  %i.cpv = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cof, %._crit_edge8471 ] ; 2 uses
  %i.cpw = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cog, %._crit_edge8471 ] ; 2 uses
  %.22929.lcssa = phi ptr [ %.02927.lcssa, %._crit_edge8447 ], [ %.32930.lcssa, %._crit_edge8471 ] ; 3 uses
  %.12924.lcssa = phi i32 [ %.02923.lcssa, %._crit_edge8447 ], [ %i.coh, %._crit_edge8471 ] ; 5 uses
  %i.cpx = shufflevector <8 x i32> %i.cpt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cpy = shufflevector <8 x i32> %i.cpt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cpz = shufflevector <8 x i32> %i.cpu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cqa = shufflevector <8 x i32> %i.cpu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cqb = shufflevector <8 x i32> %i.cpv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cqc = shufflevector <8 x i32> %i.cpv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cqd = shufflevector <8 x i32> %i.cpw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cqe = shufflevector <8 x i32> %i.cpw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cqf = add <4 x i32> %i.cla, %i.clb
  %i.cqg = add <4 x i32> %i.cqf, %i.cpy
  %i.cqh = add <4 x i32> %i.cqg, %i.cpx           ; 3 uses
  %i.cqi = add <4 x i32> %i.clc, %i.cld
  %i.cqj = add <4 x i32> %i.cqi, %i.cqa
  %i.cqk = add <4 x i32> %i.cqj, %i.cpz           ; 3 uses
  %i.cql = or disjoint i32 %.12924.lcssa, 1
  %i.cqm = icmp slt i32 %i.cql, %i.cgf
  br i1 %i.cqm, label %.noexc3541.lr.ph, label %.preheader7710

.noexc3541.lr.ph:                                 ; preds = %._crit_edge8488
  %i.cqn = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !333
  %i.cqo = load ptr, ptr %0, align 8, !tbaa !28, !noalias !333 ; 2 uses
  %i.cqp = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !333
  %i.cqq = load i64, ptr %i.cs, align 8, !tbaa !29, !noalias !333 ; 2 uses
  %factor.op.mul8518 = mul i64 %i.cqp, %i.cqq
  %i.cqr = sext i32 %i.cqn to i64
  %i.cqs = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.cqt = extractelement <2 x i32> %i.cgj, i64 1
  %i.cqu = mul nsw i32 %i.cqs, %i.cqt
  %i.cqv = sext i32 %i.cqu to i64
  %i.cqw = mul i64 %i.cqq, %i.cqr                 ; 2 uses
  %i.cqx = mul i64 %i.cqw, %i.cqv
  %invariant.gep8520 = getelementptr i8, ptr %i.cqo, i64 %i.cqx
  %i.cqy = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cqz = extractelement <2 x i32> %i.cgj, i64 0
  %i.cra = mul nsw i32 %i.cqs, %i.cqz
  %i.crb = sext i32 %i.cra to i64
  %i.crc = mul i64 %i.cqw, %i.crb
  %invariant.gep8525 = getelementptr i8, ptr %i.cqo, i64 %i.crc
  %i.crd = insertelement <2 x i32> poison, i32 %i.cqy, i64 0
  %i.cre = shufflevector <2 x i32> %i.crd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.crf = mul nsw <2 x i32> %i.cre, %.decomposed12455 ; 2 uses
  %i.crg = extractelement <2 x i32> %i.crf, i64 1
  %i.crh = sext i32 %i.crg to i64
  %invariant.gep8521 = getelementptr i8, ptr %invariant.gep8520, i64 %i.crh
  %i.cri = extractelement <2 x i32> %i.crf, i64 0
  %i.crj = sext i32 %i.cri to i64
  %invariant.gep8526 = getelementptr i8, ptr %invariant.gep8525, i64 %i.crj
  %i.crk = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.crl = icmp sgt i32 %i.crk, 0
  %i.crm = load ptr, ptr %i.g, align 8
  br i1 %i.crl, label %.noexc3541.us.preheader, label %.noexc3541.preheader

.noexc3541.preheader:                             ; preds = %.noexc3541.lr.ph
  %i.crn = add nuw nsw i32 %.12924.lcssa, 2
  %i.cro = add nsw i32 %i.cgf, -2
  %i.crp = sub nsw i32 %i.cro, %.12924.lcssa
  %i.crq = and i32 %i.crp, -2
  %i.crr = add i32 %i.crn, %i.crq
  br label %.preheader7710

.noexc3541.us.preheader:                          ; preds = %.noexc3541.lr.ph
  %i.crs = add nsw i32 %i.crk, -1
  %i.crt = zext nneg i32 %i.crs to i64
  %i.cru = shl nuw nsw i64 %i.crt, 3
  %i.crv = zext nneg i32 %.12924.lcssa to i64
  %wide.trip.count10147 = zext nneg i32 %i.crk to i64
  br label %.noexc3541.us

.noexc3541.us:                                    ; preds = %.noexc3541.us.preheader, %._crit_edge8508.us
  %indvars.iv10149 = phi i64 [ %i.crv, %.noexc3541.us.preheader ], [ %indvars.iv.next10150, %._crit_edge8508.us ] ; 2 uses
  %.429318512.us = phi ptr [ %.22929.lcssa, %.noexc3541.us.preheader ], [ %scevgep10145, %._crit_edge8508.us ] ; 2 uses
  %i.crw = phi <4 x i32> [ %i.cqk, %.noexc3541.us.preheader ], [ %i.csw, %._crit_edge8508.us ]
  %i.crx = phi <4 x i32> [ %i.cqh, %.noexc3541.us.preheader ], [ %i.csv, %._crit_edge8508.us ]
  %.reass8519.us = mul i64 %factor.op.mul8518, %indvars.iv10149 ; 2 uses
  %gep8522.us = getelementptr i8, ptr %invariant.gep8521, i64 %.reass8519.us
  %gep8527.us = getelementptr i8, ptr %invariant.gep8526, i64 %.reass8519.us
  br label %bb.al

bb.al:                                            ; preds = %.noexc3541.us, %bb.al
  %indvars.iv10142 = phi i64 [ 0, %.noexc3541.us ], [ %indvars.iv.next10143, %bb.al ] ; 2 uses
  %.529328505.us = phi ptr [ %.429318512.us, %.noexc3541.us ], [ %i.csx, %bb.al ] ; 2 uses
  %i.cry = phi <4 x i32> [ %i.crw, %.noexc3541.us ], [ %i.csw, %bb.al ]
  %i.crz = phi <4 x i32> [ %i.crx, %.noexc3541.us ], [ %i.csv, %bb.al ]
  %i.csa = getelementptr inbounds nuw [4 x i8], ptr %i.crm, i64 %indvars.iv10142
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !10
  %i.csc = sext i32 %i.csb to i64                 ; 2 uses
  %i.csd = getelementptr inbounds i8, ptr %gep8522.us, i64 %i.csc ; 2 uses
  %i.cse = load i8, ptr %i.csd, align 1, !tbaa !30
  %i.csf = getelementptr inbounds nuw i8, ptr %i.csd, i64 %i.bgl
  %i.csg = load i8, ptr %i.csf, align 1, !tbaa !30
  %i.csh = insertelement <2 x i8> poison, i8 %i.cse, i64 0
  %i.csi = insertelement <2 x i8> %i.csh, i8 %i.csg, i64 1
  %i.csj = shufflevector <2 x i8> %i.csi, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.csk = sext <8 x i8> %i.csj to <8 x i16>
  %i.csl = getelementptr inbounds i8, ptr %gep8527.us, i64 %i.csc ; 2 uses
  %i.csm = load i8, ptr %i.csl, align 1, !tbaa !30
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csl, i64 %i.bgl
  %i.cso = load i8, ptr %i.csn, align 1, !tbaa !30
  %i.csp = insertelement <2 x i8> poison, i8 %i.csm, i64 0
  %i.csq = insertelement <2 x i8> %i.csp, i8 %i.cso, i64 1
  %i.csr = shufflevector <2 x i8> %i.csq, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.css = sext <8 x i8> %i.csr to <8 x i16>
  %i.cst = load <8 x i8>, ptr %.529328505.us, align 1, !tbaa !30
  %i.csu = sext <8 x i8> %i.cst to <8 x i16>      ; 2 uses
  %i.csv = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.crz, <8 x i16> %i.csk, <8 x i16> %i.csu) ; 3 uses
  %i.csw = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cry, <8 x i16> %i.css, <8 x i16> %i.csu) ; 3 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %.529328505.us, i64 8
  %indvars.iv.next10143 = add nuw nsw i64 %indvars.iv10142, 1 ; 2 uses
  %exitcond10148.not = icmp eq i64 %indvars.iv.next10143, %wide.trip.count10147
  br i1 %exitcond10148.not, label %._crit_edge8508.us, label %bb.al, !llvm.loop !144

._crit_edge8508.us:                               ; preds = %bb.al
  %scevgep10144 = getelementptr i8, ptr %.429318512.us, i64 8
  %scevgep10145 = getelementptr i8, ptr %scevgep10144, i64 %i.cru ; 2 uses
  %indvars.iv.next10150 = add nuw nsw i64 %indvars.iv10149, 2 ; 3 uses
  %i.csy = trunc i64 %indvars.iv.next10150 to i32
  %i.csz = or i32 %i.csy, 1
  %i.cta = icmp slt i32 %i.csz, %i.cgf
  br i1 %i.cta, label %.noexc3541.us, label %.preheader7710.loopexit, !llvm.loop !145

.preheader7710.loopexit:                          ; preds = %._crit_edge8508.us
  %i.ctb = trunc nuw i64 %indvars.iv.next10150 to i32
  br label %.preheader7710

.preheader7710:                                   ; preds = %.noexc3541.preheader, %.preheader7710.loopexit, %._crit_edge8488
  %.lcssa7780 = phi <4 x i32> [ %i.cqh, %._crit_edge8488 ], [ %i.csv, %.preheader7710.loopexit ], [ %i.cqh, %.noexc3541.preheader ] ; 3 uses
  %.lcssa7779 = phi <4 x i32> [ %i.cqk, %._crit_edge8488 ], [ %i.csw, %.preheader7710.loopexit ], [ %i.cqk, %.noexc3541.preheader ] ; 3 uses
  %.42931.lcssa = phi ptr [ %.22929.lcssa, %._crit_edge8488 ], [ %scevgep10145, %.preheader7710.loopexit ], [ %.22929.lcssa, %.noexc3541.preheader ]
  %.22925.lcssa = phi i32 [ %.12924.lcssa, %._crit_edge8488 ], [ %i.ctb, %.preheader7710.loopexit ], [ %i.crr, %.noexc3541.preheader ] ; 2 uses
  %i.ctc = icmp slt i32 %.22925.lcssa, %i.cgf
  br i1 %i.ctc, label %.noexc3537.lr.ph, label %._crit_edge8541

.noexc3537.lr.ph:                                 ; preds = %.preheader7710
  %i.ctd = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !334
  %i.cte = load ptr, ptr %0, align 8, !tbaa !28, !noalias !334 ; 2 uses
  %i.ctf = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !334
  %i.ctg = load i64, ptr %i.cs, align 8, !tbaa !29, !noalias !334 ; 2 uses
  %factor.op.mul8544 = mul i64 %i.ctf, %i.ctg
  %i.cth = sext i32 %i.ctd to i64
  %i.cti = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ctj = mul i64 %i.ctg, %i.cth
  %i.ctk = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ctl = insertelement <2 x i32> poison, i32 %i.cti, i64 0
  %i.ctm = shufflevector <2 x i32> %i.ctl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ctn = mul nsw <2 x i32> %i.ctm, %i.cgj
  %i.cto = sext <2 x i32> %i.ctn to <2 x i64>
  %i.ctp = insertelement <2 x i64> poison, i64 %i.ctj, i64 0
  %i.ctq = shufflevector <2 x i64> %i.ctp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ctr = mul <2 x i64> %i.ctq, %i.cto           ; 2 uses
  %i.cts = extractelement <2 x i64> %i.ctr, i64 1
  %invariant.gep8546 = getelementptr i8, ptr %i.cte, i64 %i.cts
  %i.ctt = extractelement <2 x i64> %i.ctr, i64 0
  %invariant.gep8551 = getelementptr i8, ptr %i.cte, i64 %i.ctt
  %i.ctu = insertelement <2 x i32> poison, i32 %i.ctk, i64 0
  %i.ctv = shufflevector <2 x i32> %i.ctu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ctw = mul nsw <2 x i32> %i.ctv, %.decomposed12455 ; 2 uses
  %i.ctx = extractelement <2 x i32> %i.ctw, i64 1
  %i.cty = sext i32 %i.ctx to i64
  %invariant.gep8547 = getelementptr i8, ptr %invariant.gep8546, i64 %i.cty
  %i.ctz = extractelement <2 x i32> %i.ctw, i64 0
  %i.cua = sext i32 %i.ctz to i64
  %invariant.gep8552 = getelementptr i8, ptr %invariant.gep8551, i64 %i.cua
  %i.cub = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.cuc = icmp sgt i32 %i.cub, 0
  %i.cud = load ptr, ptr %i.g, align 8
  br i1 %i.cuc, label %.noexc3537.us.preheader, label %._crit_edge8541

.noexc3537.us.preheader:                          ; preds = %.noexc3537.lr.ph
  %i.cue = add nsw i32 %i.cub, -1
  %i.cuf = zext nneg i32 %i.cue to i64
  %i.cug = shl nuw nsw i64 %i.cuf, 2
  %i.cuh = zext i32 %.22925.lcssa to i64
  %wide.trip.count10157 = zext nneg i32 %i.cub to i64
  br label %.noexc3537.us

.noexc3537.us:                                    ; preds = %.noexc3537.us.preheader, %._crit_edge8535.us
  %indvars.iv10159 = phi i64 [ %i.cuh, %.noexc3537.us.preheader ], [ %indvars.iv.next10160, %._crit_edge8535.us ] ; 2 uses
  %.629338539.us = phi ptr [ %.42931.lcssa, %.noexc3537.us.preheader ], [ %scevgep10155, %._crit_edge8535.us ] ; 2 uses
  %i.cui = phi <4 x i32> [ %.lcssa7779, %.noexc3537.us.preheader ], [ %i.cvk, %._crit_edge8535.us ]
  %i.cuj = phi <4 x i32> [ %.lcssa7780, %.noexc3537.us.preheader ], [ %i.cvi, %._crit_edge8535.us ]
  %.reass8545.us = mul i64 %factor.op.mul8544, %indvars.iv10159 ; 2 uses
  %gep8548.us = getelementptr i8, ptr %invariant.gep8547, i64 %.reass8545.us
  %gep8553.us = getelementptr i8, ptr %invariant.gep8552, i64 %.reass8545.us
  br label %bb.am

bb.am:                                            ; preds = %.noexc3537.us, %bb.am
  %indvars.iv10152 = phi i64 [ 0, %.noexc3537.us ], [ %indvars.iv.next10153, %bb.am ] ; 2 uses
  %.729348532.us = phi ptr [ %.629338539.us, %.noexc3537.us ], [ %i.cvl, %bb.am ] ; 2 uses
  %i.cuk = phi <4 x i32> [ %i.cui, %.noexc3537.us ], [ %i.cvk, %bb.am ]
  %i.cul = phi <4 x i32> [ %i.cuj, %.noexc3537.us ], [ %i.cvi, %bb.am ]
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.cud, i64 %indvars.iv10152
  %i.cun = load i32, ptr %i.cum, align 4, !tbaa !10
  %i.cuo = sext i32 %i.cun to i64                 ; 2 uses
  %i.cup = getelementptr inbounds i8, ptr %gep8548.us, i64 %i.cuo
  %i.cuq = getelementptr inbounds i8, ptr %gep8553.us, i64 %i.cuo
  %i.cur = load i8, ptr %i.cup, align 1, !tbaa !30
  %i.cus = sext i8 %i.cur to i16
  %i.cut = insertelement <8 x i16> poison, i16 %i.cus, i64 0
  %i.cuu = shufflevector <8 x i16> %i.cut, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cuv = load i8, ptr %i.cuq, align 1, !tbaa !30
  %i.cuw = sext i8 %i.cuv to i16
  %i.cux = insertelement <8 x i16> poison, i16 %i.cuw, i64 0
  %i.cuy = shufflevector <8 x i16> %i.cux, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cuz = load <8 x i8>, ptr %.729348532.us, align 1, !tbaa !30
  %i.cva = sext <8 x i8> %i.cuz to <8 x i16>      ; 4 uses
  %i.cvb = mul <8 x i16> %i.cuu, %i.cva
  %i.cvc = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cuu, <8 x i16> %i.cva)
  %i.cvd = mul <8 x i16> %i.cuy, %i.cva
  %i.cve = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cuy, <8 x i16> %i.cva)
  %i.cvf = shufflevector <8 x i16> %i.cvb, <8 x i16> %i.cvc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cvg = shufflevector <8 x i16> %i.cvd, <8 x i16> %i.cve, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cvh = bitcast <8 x i16> %i.cvf to <4 x i32>
  %i.cvi = add <4 x i32> %i.cul, %i.cvh           ; 3 uses
  %i.cvj = bitcast <8 x i16> %i.cvg to <4 x i32>
  %i.cvk = add <4 x i32> %i.cuk, %i.cvj           ; 3 uses
  %i.cvl = getelementptr inbounds nuw i8, ptr %.729348532.us, i64 4
  %indvars.iv.next10153 = add nuw nsw i64 %indvars.iv10152, 1 ; 2 uses
  %exitcond10158.not = icmp eq i64 %indvars.iv.next10153, %wide.trip.count10157
  br i1 %exitcond10158.not, label %._crit_edge8535.us, label %bb.am, !llvm.loop !148

._crit_edge8535.us:                               ; preds = %bb.am
  %scevgep10154 = getelementptr i8, ptr %.629338539.us, i64 4
  %scevgep10155 = getelementptr i8, ptr %scevgep10154, i64 %i.cug
  %indvars.iv.next10160 = add nuw nsw i64 %indvars.iv10159, 1 ; 2 uses
  %i.cvm = trunc nuw i64 %indvars.iv.next10160 to i32
  %i.cvn = icmp sgt i32 %i.cgf, %i.cvm
  br i1 %i.cvn, label %.noexc3537.us, label %._crit_edge8541, !llvm.loop !149

._crit_edge8541:                                  ; preds = %._crit_edge8535.us, %.noexc3537.lr.ph, %.preheader7710
  %.lcssa7784 = phi <4 x i32> [ %.lcssa7780, %.preheader7710 ], [ %.lcssa7780, %.noexc3537.lr.ph ], [ %i.cvi, %._crit_edge8535.us ]
  %.lcssa7783 = phi <4 x i32> [ %.lcssa7779, %.preheader7710 ], [ %.lcssa7779, %.noexc3537.lr.ph ], [ %i.cvk, %._crit_edge8535.us ]
  %i.cvo = add <4 x i32> %i.cle, %i.clf
  %i.cvp = add <4 x i32> %i.cvo, %i.cqc
  %i.cvq = add <4 x i32> %i.cvp, %i.cqb
  %i.cvr = add <4 x i32> %i.cvq, %.lcssa7784      ; 2 uses
  %i.cvs = add <4 x i32> %i.clg, %i.clh
  %i.cvt = add <4 x i32> %i.cvs, %i.cqe
  %i.cvu = add <4 x i32> %i.cvt, %i.cqd
  %i.cvv = add <4 x i32> %i.cvu, %.lcssa7783      ; 2 uses
  %i.cvw = load i32, ptr %i.e, align 4, !tbaa !10
  switch i32 %i.cvw, label %bb.ao [
    i32 4, label %.thread10700
    i32 1, label %bb.an
  ]

.thread10700:                                     ; preds = %._crit_edge8541
  store <4 x i32> %i.cvr, ptr %.329788556, align 16, !tbaa !30
  %i.cvx = getelementptr inbounds nuw i8, ptr %.329788556, i64 16
  store <4 x i32> %i.cvv, ptr %i.cvx, align 16, !tbaa !30
  %i.cvy = getelementptr inbounds nuw i8, ptr %.329788556, i64 32
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge8541
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.329788556, <4 x i1> splat (i1 true), <4 x i32> %i.biu, <4 x i32> %i.cvr, i32 4)
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.dfj = bitcast <8 x i16> %i.dfb to <4 x i32>  ; 2 uses
  %i.dfk = bitcast <8 x i16> %i.dfb to <4 x i32>  ; 2 uses
  %i.dfl = shufflevector <4 x i32> %i.dfk, <4 x i32> %i.dfj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dfm = bitcast <8 x i32> %i.dfl to <16 x i16>
  %i.dfn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.deq, <16 x i16> %i.dfm, <16 x i16> %i.dff) ; 3 uses
  %i.dfo = shufflevector <4 x i32> %i.dfk, <4 x i32> %i.dfj, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dfp = bitcast <8 x i32> %i.dfo to <16 x i16>
  %i.dfq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.det, <16 x i16> %i.dfp, <16 x i16> %i.dfi) ; 3 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %.329118604.us, i64 64 ; 2 uses
  %indvars.iv.next10191.1 = add nuw nsw i64 %indvars.iv10190, 2 ; 2 uses
  %niter11981.next.1 = add i64 %niter11981, 2     ; 2 uses
  %niter11981.ncmp.1 = icmp eq i64 %niter11981.next.1, %unroll_iter11980
  br i1 %niter11981.ncmp.1, label %._crit_edge8607.loopexit.unr-lcssa, label %.lr.ph8606.split.us, !llvm.loop !159

._crit_edge8607.loopexit.unr-lcssa:               ; preds = %.lr.ph8606.split.us
  br i1 %lcmp.mod11976.not, label %._crit_edge8607.loopexit, label %.lr.ph8606.split.us.epil.preheader

.lr.ph8606.split.us.epil.preheader:               ; preds = %._crit_edge8607.loopexit.unr-lcssa, %.lr.ph8606.split.us.preheader
  %indvars.iv10190.epil.init = phi i64 [ 0, %.lr.ph8606.split.us.preheader ], [ %indvars.iv.next10191.1, %._crit_edge8607.loopexit.unr-lcssa ]
  %.329118604.us.epil.init = phi ptr [ %.229108614, %.lr.ph8606.split.us.preheader ], [ %i.dfr, %._crit_edge8607.loopexit.unr-lcssa ]
  %.epil.init11973 = phi <8 x i32> [ %i.ddt, %.lr.ph8606.split.us.preheader ], [ %i.dfq, %._crit_edge8607.loopexit.unr-lcssa ]
  %.epil.init11975 = phi <8 x i32> [ %i.ddu, %.lr.ph8606.split.us.preheader ], [ %i.dfn, %._crit_edge8607.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11979)
  %i.dfs = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %indvars.iv10190.epil.init
  %i.dft = load i32, ptr %i.dfs, align 4, !tbaa !10
  %i.dfu = sext i32 %i.dft to i64
  %i.dfv = getelementptr inbounds i8, ptr %gep8625, i64 %i.dfu
  %i.dfw = load <8 x i8>, ptr %i.dfv, align 1, !tbaa !30
  %i.dfx = sext <8 x i8> %i.dfw to <8 x i16>      ; 2 uses
  %i.dfy = load <4 x i64>, ptr %.329118604.us.epil.init, align 32, !tbaa !30 ; 2 uses
  %i.dfz = bitcast <4 x i64> %i.dfy to <32 x i8>
  %i.dga = shufflevector <32 x i8> %i.dfz, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dgb = sext <16 x i8> %i.dga to <16 x i16>
  %i.dgc = bitcast <4 x i64> %i.dfy to <32 x i8>
  %i.dgd = shufflevector <32 x i8> %i.dgc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dge = sext <16 x i8> %i.dgd to <16 x i16>
  %i.dgf = bitcast <8 x i16> %i.dfx to <4 x i32>  ; 2 uses
  %i.dgg = bitcast <8 x i16> %i.dfx to <4 x i32>  ; 2 uses
  %i.dgh = shufflevector <4 x i32> %i.dgg, <4 x i32> %i.dgf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dgi = bitcast <8 x i32> %i.dgh to <16 x i16>
  %i.dgj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11975, <16 x i16> %i.dgi, <16 x i16> %i.dgb)
  %i.dgk = shufflevector <4 x i32> %i.dgg, <4 x i32> %i.dgf, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dgl = bitcast <8 x i32> %i.dgk to <16 x i16>
  %i.dgm = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11973, <16 x i16> %i.dgl, <16 x i16> %i.dge)
  br label %._crit_edge8607.loopexit

._crit_edge8607.loopexit:                         ; preds = %._crit_edge8607.loopexit.unr-lcssa, %.lr.ph8606.split.us.epil.preheader
  %.lcssa11876 = phi <8 x i32> [ %i.dfn, %._crit_edge8607.loopexit.unr-lcssa ], [ %i.dgj, %.lr.ph8606.split.us.epil.preheader ]
  %.lcssa11875 = phi <8 x i32> [ %i.dfq, %._crit_edge8607.loopexit.unr-lcssa ], [ %i.dgm, %.lr.ph8606.split.us.epil.preheader ]
  %scevgep10192 = getelementptr i8, ptr %.229108614, i64 32
  %scevgep10193 = getelementptr i8, ptr %scevgep10192, i64 %i.ddp
  br label %._crit_edge8607

._crit_edge8607.loopexit9610.unr-lcssa:           ; preds = %.lr.ph8606.split
  br i1 %lcmp.mod11965.not, label %._crit_edge8607.loopexit9610, label %.lr.ph8606.split.epil.preheader

.lr.ph8606.split.epil.preheader:                  ; preds = %._crit_edge8607.loopexit9610.unr-lcssa, %.lr.ph8606.split.preheader
  %indvars.iv10183.epil.init = phi i64 [ 0, %.lr.ph8606.split.preheader ], [ %indvars.iv.next10184.1, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.329118604.epil.init = phi ptr [ %.229108614, %.lr.ph8606.split.preheader ], [ %i.dji, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.epil.init11962 = phi <8 x i32> [ %i.ddt, %.lr.ph8606.split.preheader ], [ %i.djh, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.epil.init11964 = phi <8 x i32> [ %i.ddu, %.lr.ph8606.split.preheader ], [ %i.dje, %._crit_edge8607.loopexit9610.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11968)
  %i.dgn = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %indvars.iv10183.epil.init
  %i.dgo = load i32, ptr %i.dgn, align 4, !tbaa !10
  %i.dgp = sext i32 %i.dgo to i64
  %i.dgq = getelementptr inbounds i8, ptr %gep8625, i64 %i.dgp
  %i.dgr = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dgq, <8 x i32> %i.cga, <8 x i32> splat (i32 -1), i8 1)
  %i.dgs = trunc <8 x i32> %i.dgr to <8 x i8>
  %i.dgt = sext <8 x i8> %i.dgs to <8 x i16>      ; 2 uses
  %i.dgu = load <4 x i64>, ptr %.329118604.epil.init, align 32, !tbaa !30 ; 2 uses
  %i.dgv = bitcast <4 x i64> %i.dgu to <32 x i8>
  %i.dgw = shufflevector <32 x i8> %i.dgv, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dgx = sext <16 x i8> %i.dgw to <16 x i16>
  %i.dgy = bitcast <4 x i64> %i.dgu to <32 x i8>
  %i.dgz = shufflevector <32 x i8> %i.dgy, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dha = sext <16 x i8> %i.dgz to <16 x i16>
  %i.dhb = bitcast <8 x i16> %i.dgt to <4 x i32>  ; 2 uses
  %i.dhc = bitcast <8 x i16> %i.dgt to <4 x i32>  ; 2 uses
  %i.dhd = shufflevector <4 x i32> %i.dhc, <4 x i32> %i.dhb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dhe = bitcast <8 x i32> %i.dhd to <16 x i16>
  %i.dhf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11964, <16 x i16> %i.dhe, <16 x i16> %i.dgx)
  %i.dhg = shufflevector <4 x i32> %i.dhc, <4 x i32> %i.dhb, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dhh = bitcast <8 x i32> %i.dhg to <16 x i16>
  %i.dhi = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11962, <16 x i16> %i.dhh, <16 x i16> %i.dha)
  br label %._crit_edge8607.loopexit9610

._crit_edge8607.loopexit9610:                     ; preds = %._crit_edge8607.loopexit9610.unr-lcssa, %.lr.ph8606.split.epil.preheader
  %.lcssa11874 = phi <8 x i32> [ %i.dje, %._crit_edge8607.loopexit9610.unr-lcssa ], [ %i.dhf, %.lr.ph8606.split.epil.preheader ]
  %.lcssa11873 = phi <8 x i32> [ %i.djh, %._crit_edge8607.loopexit9610.unr-lcssa ], [ %i.dhi, %.lr.ph8606.split.epil.preheader ]
  %scevgep10185 = getelementptr i8, ptr %.229108614, i64 32
  %scevgep10186 = getelementptr i8, ptr %scevgep10185, i64 %i.ddp
  br label %._crit_edge8607

._crit_edge8607:                                  ; preds = %._crit_edge8607.loopexit9610, %._crit_edge8607.loopexit, %.noexc3529
  %.lcssa7790 = phi <8 x i32> [ %i.ddu, %.noexc3529 ], [ %.lcssa11876, %._crit_edge8607.loopexit ], [ %.lcssa11874, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %.lcssa7789 = phi <8 x i32> [ %i.ddt, %.noexc3529 ], [ %.lcssa11875, %._crit_edge8607.loopexit ], [ %.lcssa11873, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %.32911.lcssa = phi ptr [ %.229108614, %.noexc3529 ], [ %scevgep10193, %._crit_edge8607.loopexit ], [ %scevgep10186, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %i.dhj = add nuw nsw i32 %.129058615, 8         ; 3 uses
  %i.dhk = or disjoint i32 %i.dhj, 7
  %i.dhl = icmp slt i32 %i.dhk, %i.cwf
  br i1 %i.dhl, label %.noexc3529, label %._crit_edge8616.loopexit, !llvm.loop !160

.lr.ph8606.split:                                 ; preds = %.lr.ph8606.split.preheader, %.lr.ph8606.split
  %indvars.iv10183 = phi i64 [ %indvars.iv.next10184.1, %.lr.ph8606.split ], [ 0, %.lr.ph8606.split.preheader ] ; 3 uses
  %.329118604 = phi ptr [ %i.dji, %.lr.ph8606.split ], [ %.229108614, %.lr.ph8606.split.preheader ] ; 3 uses
  %i.dhm = phi <8 x i32> [ %i.djh, %.lr.ph8606.split ], [ %i.ddt, %.lr.ph8606.split.preheader ]
  %i.dhn = phi <8 x i32> [ %i.dje, %.lr.ph8606.split ], [ %i.ddu, %.lr.ph8606.split.preheader ]
  %niter11970 = phi i64 [ %niter11970.next.1, %.lr.ph8606.split ], [ 0, %.lr.ph8606.split.preheader ]
  %i.dho = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %indvars.iv10183
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !10
  %i.dhq = sext i32 %i.dhp to i64
  %i.dhr = getelementptr inbounds i8, ptr %gep8625, i64 %i.dhq
  %i.dhs = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dhr, <8 x i32> %i.cga, <8 x i32> splat (i32 -1), i8 1)
  %i.dht = trunc <8 x i32> %i.dhs to <8 x i8>
  %i.dhu = sext <8 x i8> %i.dht to <8 x i16>      ; 2 uses
  %i.dhv = load <4 x i64>, ptr %.329118604, align 32, !tbaa !30 ; 2 uses
  %i.dhw = bitcast <4 x i64> %i.dhv to <32 x i8>
  %i.dhx = shufflevector <32 x i8> %i.dhw, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dhy = sext <16 x i8> %i.dhx to <16 x i16>
  %i.dhz = bitcast <4 x i64> %i.dhv to <32 x i8>
  %i.dia = shufflevector <32 x i8> %i.dhz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dib = sext <16 x i8> %i.dia to <16 x i16>
  %i.dic = bitcast <8 x i16> %i.dhu to <4 x i32>  ; 2 uses
  %i.did = bitcast <8 x i16> %i.dhu to <4 x i32>  ; 2 uses
  %i.die = shufflevector <4 x i32> %i.did, <4 x i32> %i.dic, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dif = bitcast <8 x i32> %i.die to <16 x i16>
  %i.dig = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dhn, <16 x i16> %i.dif, <16 x i16> %i.dhy)
  %i.dih = shufflevector <4 x i32> %i.did, <4 x i32> %i.dic, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dii = bitcast <8 x i32> %i.dih to <16 x i16>
  %i.dij = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dhm, <16 x i16> %i.dii, <16 x i16> %i.dib)
  %i.dik = getelementptr inbounds nuw i8, ptr %.329118604, i64 32
  %i.dil = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %indvars.iv10183
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dil, i64 4
  %i.din = load i32, ptr %i.dim, align 4, !tbaa !10
  %i.dio = sext i32 %i.din to i64
  %i.dip = getelementptr inbounds i8, ptr %gep8625, i64 %i.dio
  %i.diq = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dip, <8 x i32> %i.cga, <8 x i32> splat (i32 -1), i8 1)
  %i.dir = trunc <8 x i32> %i.diq to <8 x i8>
  %i.dis = sext <8 x i8> %i.dir to <8 x i16>      ; 2 uses
  %i.dit = load <4 x i64>, ptr %i.dik, align 32, !tbaa !30 ; 2 uses
  %i.diu = bitcast <4 x i64> %i.dit to <32 x i8>
  %i.div = shufflevector <32 x i8> %i.diu, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.diw = sext <16 x i8> %i.div to <16 x i16>
  %i.dix = bitcast <4 x i64> %i.dit to <32 x i8>
  %i.diy = shufflevector <32 x i8> %i.dix, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.diz = sext <16 x i8> %i.diy to <16 x i16>
  %i.dja = bitcast <8 x i16> %i.dis to <4 x i32>  ; 2 uses
  %i.djb = bitcast <8 x i16> %i.dis to <4 x i32>  ; 2 uses
  %i.djc = shufflevector <4 x i32> %i.djb, <4 x i32> %i.dja, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.djd = bitcast <8 x i32> %i.djc to <16 x i16>
  %i.dje = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dig, <16 x i16> %i.djd, <16 x i16> %i.diw) ; 3 uses
  %i.djf = shufflevector <4 x i32> %i.djb, <4 x i32> %i.dja, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.djg = bitcast <8 x i32> %i.djf to <16 x i16>
  %i.djh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dij, <16 x i16> %i.djg, <16 x i16> %i.diz) ; 3 uses
  %i.dji = getelementptr inbounds nuw i8, ptr %.329118604, i64 64 ; 2 uses
  %indvars.iv.next10184.1 = add nuw nsw i64 %indvars.iv10183, 2 ; 2 uses
  %niter11970.next.1 = add i64 %niter11970, 2     ; 2 uses
  %niter11970.ncmp.1 = icmp eq i64 %niter11970.next.1, %unroll_iter11969
  br i1 %niter11970.ncmp.1, label %._crit_edge8607.loopexit9610.unr-lcssa, label %.lr.ph8606.split, !llvm.loop !159

._crit_edge8616.loopexit:                         ; preds = %._crit_edge8607
  %i.djj = add <8 x i32> %.lcssa7789, %.lcssa7790
  br label %._crit_edge8616

._crit_edge8616:                                  ; preds = %._crit_edge8616.loopexit, %._crit_edge8582
  %.22910.lcssa = phi ptr [ %.02908.lcssa, %._crit_edge8582 ], [ %.32911.lcssa, %._crit_edge8616.loopexit ] ; 3 uses
  %.12905.lcssa = phi i32 [ %.02904.lcssa, %._crit_edge8582 ], [ %i.dhj, %._crit_edge8616.loopexit ] ; 5 uses
  %i.djk = phi <8 x i32> [ zeroinitializer, %._crit_edge8582 ], [ %i.djj, %._crit_edge8616.loopexit ] ; 2 uses
  %i.djl = shufflevector <8 x i32> %i.djk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.djm = shufflevector <8 x i32> %i.djk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.djn = add <4 x i32> %i.dcq, %i.dcr
  %i.djo = add <4 x i32> %i.djn, %i.djm
  %i.djp = add <4 x i32> %i.djo, %i.djl           ; 3 uses
  %i.djq = or disjoint i32 %.12905.lcssa, 1
  %i.djr = icmp slt i32 %i.djq, %i.cwf
  br i1 %i.djr, label %.noexc3527.lr.ph, label %.preheader7709

.noexc3527.lr.ph:                                 ; preds = %._crit_edge8616
  %i.djs = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !338
  %i.djt = load ptr, ptr %0, align 8, !tbaa !28, !noalias !338
  %i.dju = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !338
  %i.djv = load i64, ptr %i.cs, align 8, !tbaa !29, !noalias !338 ; 2 uses
  %factor.op.mul8637 = mul i64 %i.dju, %i.djv
  %i.djw = sext i32 %i.djs to i64
  %i.djx = load i32, ptr %i.b, align 4, !tbaa !10
  %i.djy = mul nsw i32 %i.djx, %i.cwg
  %i.djz = sext i32 %i.djy to i64
  %i.dka = mul i64 %i.djv, %i.djw
  %i.dkb = mul i64 %i.dka, %i.djz
  %invariant.gep8639 = getelementptr i8, ptr %i.djt, i64 %i.dkb
  %i.dkc = load i32, ptr %i.a, align 4, !tbaa !10
  %i.dkd = mul nsw i32 %i.dkc, %i.cwh
  %i.dke = sext i32 %i.dkd to i64
  %invariant.gep8640 = getelementptr i8, ptr %invariant.gep8639, i64 %i.dke
  %i.dkf = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.dkg = icmp sgt i32 %i.dkf, 0
  %i.dkh = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dkg, label %.noexc3527.us.preheader, label %.noexc3527.preheader

.noexc3527.preheader:                             ; preds = %.noexc3527.lr.ph
  %i.dki = add nuw nsw i32 %.12905.lcssa, 2
  %i.dkj = add nsw i32 %i.cwf, -2
  %i.dkk = sub nsw i32 %i.dkj, %.12905.lcssa
  %i.dkl = and i32 %i.dkk, -2
  %i.dkm = add i32 %i.dki, %i.dkl
  br label %.preheader7709

.noexc3527.us.preheader:                          ; preds = %.noexc3527.lr.ph
  %i.dkn = add nsw i32 %i.dkf, -1
  %i.dko = zext nneg i32 %i.dkn to i64
  %i.dkp = shl nuw nsw i64 %i.dko, 3
  %i.dkq = zext nneg i32 %.12905.lcssa to i64
  %wide.trip.count10202 = zext nneg i32 %i.dkf to i64 ; 2 uses
  %xtraiter11983 = and i64 %wide.trip.count10202, 1
  %i.dkr = icmp eq i32 %i.dkf, 1
  %unroll_iter11989 = and i64 %wide.trip.count10202, 2147483646
  %lcmp.mod11986.not = icmp eq i64 %xtraiter11983, 0
  %lcmp.mod11988 = trunc i32 %i.dkf to i1
  br label %.noexc3527.us

.noexc3527.us:                                    ; preds = %.noexc3527.us.preheader, %._crit_edge8629.us
  %indvars.iv10204 = phi i64 [ %i.dkq, %.noexc3527.us.preheader ], [ %indvars.iv.next10205, %._crit_edge8629.us ] ; 2 uses
  %.429128632.us = phi ptr [ %.22910.lcssa, %.noexc3527.us.preheader ], [ %scevgep10200, %._crit_edge8629.us ] ; 3 uses
  %i.dks = phi <4 x i32> [ %i.djp, %.noexc3527.us.preheader ], [ %.lcssa11878, %._crit_edge8629.us ] ; 2 uses
  %.reass8638.us = mul i64 %factor.op.mul8637, %indvars.iv10204
  %gep8641.us = getelementptr i8, ptr %invariant.gep8640, i64 %.reass8638.us ; 3 uses
  br i1 %i.dkr, label %.epil.preheader11982, label %.noexc3527.us.new

.noexc3527.us.new:                                ; preds = %.noexc3527.us, %.noexc3527.us.new
  %indvars.iv10197 = phi i64 [ %indvars.iv.next10198.1, %.noexc3527.us.new ], [ 0, %.noexc3527.us ] ; 3 uses
  %.529138626.us = phi ptr [ %i.dly, %.noexc3527.us.new ], [ %.429128632.us, %.noexc3527.us ] ; 3 uses
  %i.dkt = phi <4 x i32> [ %i.dlx, %.noexc3527.us.new ], [ %i.dks, %.noexc3527.us ]
  %niter11990 = phi i64 [ %niter11990.next.1, %.noexc3527.us.new ], [ 0, %.noexc3527.us ]
  %i.dku = getelementptr inbounds nuw [4 x i8], ptr %i.dkh, i64 %indvars.iv10197
  %i.dkv = load i32, ptr %i.dku, align 4, !tbaa !10
  %i.dkw = sext i32 %i.dkv to i64
  %i.dkx = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.dkw ; 2 uses
  %i.dky = load i8, ptr %i.dkx, align 1, !tbaa !30
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkx, i64 %i.bgl
  %i.dla = load i8, ptr %i.dkz, align 1, !tbaa !30
  %i.dlb = insertelement <2 x i8> poison, i8 %i.dky, i64 0
  %i.dlc = insertelement <2 x i8> %i.dlb, i8 %i.dla, i64 1
  %i.dld = shufflevector <2 x i8> %i.dlc, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dle = sext <8 x i8> %i.dld to <8 x i16>
  %i.dlf = load <8 x i8>, ptr %.529138626.us, align 1, !tbaa !30
  %i.dlg = sext <8 x i8> %i.dlf to <8 x i16>
  %i.dlh = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.dkt, <8 x i16> %i.dle, <8 x i16> %i.dlg)
  %i.dli = getelementptr inbounds nuw i8, ptr %.529138626.us, i64 8
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %i.dkh, i64 %indvars.iv10197
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 4
  %i.dll = load i32, ptr %i.dlk, align 4, !tbaa !10
  %i.dlm = sext i32 %i.dll to i64
  %i.dln = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.dlm ; 2 uses
  %i.dlo = load i8, ptr %i.dln, align 1, !tbaa !30
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.bgl
  %i.dlq = load i8, ptr %i.dlp, align 1, !tbaa !30
  %i.dlr = insertelement <2 x i8> poison, i8 %i.dlo, i64 0
  %i.dls = insertelement <2 x i8> %i.dlr, i8 %i.dlq, i64 1
  %i.dlt = shufflevector <2 x i8> %i.dls, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dlu = sext <8 x i8> %i.dlt to <8 x i16>
  %i.dlv = load <8 x i8>, ptr %i.dli, align 1, !tbaa !30
  %i.dlw = sext <8 x i8> %i.dlv to <8 x i16>
  %i.dlx = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.dlh, <8 x i16> %i.dlu, <8 x i16> %i.dlw) ; 3 uses
  %i.dly = getelementptr inbounds nuw i8, ptr %.529138626.us, i64 16 ; 2 uses
  %indvars.iv.next10198.1 = add nuw nsw i64 %indvars.iv10197, 2 ; 2 uses
  %niter11990.next.1 = add i64 %niter11990, 2     ; 2 uses
  %niter11990.ncmp.1 = icmp eq i64 %niter11990.next.1, %unroll_iter11989
  br i1 %niter11990.ncmp.1, label %._crit_edge8629.us.unr-lcssa, label %.noexc3527.us.new, !llvm.loop !163

._crit_edge8629.us.unr-lcssa:                     ; preds = %.noexc3527.us.new
  br i1 %lcmp.mod11986.not, label %._crit_edge8629.us, label %.epil.preheader11982

.epil.preheader11982:                             ; preds = %._crit_edge8629.us.unr-lcssa, %.noexc3527.us
  %indvars.iv10197.epil.init = phi i64 [ 0, %.noexc3527.us ], [ %indvars.iv.next10198.1, %._crit_edge8629.us.unr-lcssa ]
  %.529138626.us.epil.init = phi ptr [ %.429128632.us, %.noexc3527.us ], [ %i.dly, %._crit_edge8629.us.unr-lcssa ]
  %.epil.init11985 = phi <4 x i32> [ %i.dks, %.noexc3527.us ], [ %i.dlx, %._crit_edge8629.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11988)
  %i.dlz = getelementptr inbounds nuw [4 x i8], ptr %i.dkh, i64 %indvars.iv10197.epil.init
  %i.dma = load i32, ptr %i.dlz, align 4, !tbaa !10
  %i.dmb = sext i32 %i.dma to i64
  %i.dmc = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.dmb ; 2 uses
  %i.dmd = load i8, ptr %i.dmc, align 1, !tbaa !30
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dmc, i64 %i.bgl
  %i.dmf = load i8, ptr %i.dme, align 1, !tbaa !30
  %i.dmg = insertelement <2 x i8> poison, i8 %i.dmd, i64 0
  %i.dmh = insertelement <2 x i8> %i.dmg, i8 %i.dmf, i64 1
  %i.dmi = shufflevector <2 x i8> %i.dmh, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dmj = sext <8 x i8> %i.dmi to <8 x i16>
  %i.dmk = load <8 x i8>, ptr %.529138626.us.epil.init, align 1, !tbaa !30
  %i.dml = sext <8 x i8> %i.dmk to <8 x i16>
  %i.dmm = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.epil.init11985, <8 x i16> %i.dmj, <8 x i16> %i.dml)
  br label %._crit_edge8629.us

._crit_edge8629.us:                               ; preds = %._crit_edge8629.us.unr-lcssa, %.epil.preheader11982
  %.lcssa11878 = phi <4 x i32> [ %i.dlx, %._crit_edge8629.us.unr-lcssa ], [ %i.dmm, %.epil.preheader11982 ] ; 2 uses
  %scevgep10199 = getelementptr i8, ptr %.429128632.us, i64 8
  %scevgep10200 = getelementptr i8, ptr %scevgep10199, i64 %i.dkp ; 2 uses
  %indvars.iv.next10205 = add nuw nsw i64 %indvars.iv10204, 2 ; 3 uses
  %i.dmn = trunc i64 %indvars.iv.next10205 to i32
  %i.dmo = or i32 %i.dmn, 1
  %i.dmp = icmp slt i32 %i.dmo, %i.cwf
  br i1 %i.dmp, label %.noexc3527.us, label %.preheader7709.loopexit, !llvm.loop !164

.preheader7709.loopexit:                          ; preds = %._crit_edge8629.us
  %i.dmq = trunc nuw i64 %indvars.iv.next10205 to i32
  br label %.preheader7709

.preheader7709:                                   ; preds = %.noexc3527.preheader, %.preheader7709.loopexit, %._crit_edge8616
  %.lcssa7794 = phi <4 x i32> [ %i.djp, %._crit_edge8616 ], [ %.lcssa11878, %.preheader7709.loopexit ], [ %i.djp, %.noexc3527.preheader ] ; 3 uses
  %.42912.lcssa = phi ptr [ %.22910.lcssa, %._crit_edge8616 ], [ %scevgep10200, %.preheader7709.loopexit ], [ %.22910.lcssa, %.noexc3527.preheader ]
  %.22906.lcssa = phi i32 [ %.12905.lcssa, %._crit_edge8616 ], [ %i.dmq, %.preheader7709.loopexit ], [ %i.dkm, %.noexc3527.preheader ] ; 2 uses
  %i.dmr = icmp slt i32 %.22906.lcssa, %i.cwf
  br i1 %i.dmr, label %.noexc3525.lr.ph, label %._crit_edge8653

.noexc3525.lr.ph:                                 ; preds = %.preheader7709
  %i.dms = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !339
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !28, !noalias !339
  %i.dmu = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !339
  %i.dmv = load i64, ptr %i.cs, align 8, !tbaa !29, !noalias !339 ; 2 uses
  %factor.op.mul8655 = mul i64 %i.dmu, %i.dmv
  %i.dmw = sext i32 %i.dms to i64
  %i.dmx = load i32, ptr %i.b, align 4, !tbaa !10
  %i.dmy = mul nsw i32 %i.dmx, %i.cwg
  %i.dmz = sext i32 %i.dmy to i64
  %i.dna = mul i64 %i.dmv, %i.dmw
  %i.dnb = mul i64 %i.dna, %i.dmz
  %invariant.gep8657 = getelementptr i8, ptr %i.dmt, i64 %i.dnb
  %i.dnc = load i32, ptr %i.a, align 4, !tbaa !10
  %i.dnd = mul nsw i32 %i.dnc, %i.cwh
  %i.dne = sext i32 %i.dnd to i64
  %invariant.gep8658 = getelementptr i8, ptr %invariant.gep8657, i64 %i.dne
  %i.dnf = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.dng = icmp sgt i32 %i.dnf, 0
  %i.dnh = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dng, label %.noexc3525.us.preheader, label %._crit_edge8653

.noexc3525.us.preheader:                          ; preds = %.noexc3525.lr.ph
  %i.dni = add nsw i32 %i.dnf, -1
  %i.dnj = zext nneg i32 %i.dni to i64
  %i.dnk = shl nuw nsw i64 %i.dnj, 2
  %i.dnl = zext i32 %.22906.lcssa to i64
  %wide.trip.count10212 = zext nneg i32 %i.dnf to i64 ; 2 uses
  %xtraiter11992 = and i64 %wide.trip.count10212, 1
  %i.dnm = icmp eq i32 %i.dnf, 1
  %unroll_iter11998 = and i64 %wide.trip.count10212, 2147483646
  %lcmp.mod11995.not = icmp eq i64 %xtraiter11992, 0
  %lcmp.mod11997 = trunc i32 %i.dnf to i1
  br label %.noexc3525.us

.noexc3525.us:                                    ; preds = %.noexc3525.us.preheader, %._crit_edge8648.us
  %indvars.iv10214 = phi i64 [ %i.dnl, %.noexc3525.us.preheader ], [ %indvars.iv.next10215, %._crit_edge8648.us ] ; 2 uses
  %.629148651.us = phi ptr [ %.42912.lcssa, %.noexc3525.us.preheader ], [ %scevgep10210, %._crit_edge8648.us ] ; 3 uses
  %i.dnn = phi <4 x i32> [ %.lcssa7794, %.noexc3525.us.preheader ], [ %.lcssa11879, %._crit_edge8648.us ] ; 2 uses
  %.reass8656.us = mul i64 %factor.op.mul8655, %indvars.iv10214
  %gep8659.us = getelementptr i8, ptr %invariant.gep8658, i64 %.reass8656.us ; 3 uses
  br i1 %i.dnm, label %.epil.preheader11991, label %.noexc3525.us.new

.noexc3525.us.new:                                ; preds = %.noexc3525.us, %.noexc3525.us.new
  %indvars.iv10207 = phi i64 [ %indvars.iv.next10208.1, %.noexc3525.us.new ], [ 0, %.noexc3525.us ] ; 3 uses
  %.729158645.us = phi ptr [ %i.dov, %.noexc3525.us.new ], [ %.629148651.us, %.noexc3525.us ] ; 3 uses
  %i.dno = phi <4 x i32> [ %i.dou, %.noexc3525.us.new ], [ %i.dnn, %.noexc3525.us ]
  %niter11999 = phi i64 [ %niter11999.next.1, %.noexc3525.us.new ], [ 0, %.noexc3525.us ]
  %i.dnp = getelementptr inbounds nuw [4 x i8], ptr %i.dnh, i64 %indvars.iv10207
  %i.dnq = load i32, ptr %i.dnp, align 4, !tbaa !10
  %i.dnr = sext i32 %i.dnq to i64
  %i.dns = getelementptr inbounds i8, ptr %gep8659.us, i64 %i.dnr
  %i.dnt = load i8, ptr %i.dns, align 1, !tbaa !30
  %i.dnu = sext i8 %i.dnt to i16
  %i.dnv = insertelement <8 x i16> poison, i16 %i.dnu, i64 0
  %i.dnw = shufflevector <8 x i16> %i.dnv, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dnx = load <8 x i8>, ptr %.729158645.us, align 1, !tbaa !30
  %i.dny = sext <8 x i8> %i.dnx to <8 x i16>      ; 2 uses
  %i.dnz = mul <8 x i16> %i.dnw, %i.dny
  %i.doa = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.dnw, <8 x i16> %i.dny)
  %i.dob = shufflevector <8 x i16> %i.dnz, <8 x i16> %i.doa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.doc = bitcast <8 x i16> %i.dob to <4 x i32>
  %i.dod = add <4 x i32> %i.dno, %i.doc
  %i.doe = getelementptr inbounds nuw i8, ptr %.729158645.us, i64 4
  %i.dof = getelementptr inbounds nuw [4 x i8], ptr %i.dnh, i64 %indvars.iv10207
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 4
  %i.doh = load i32, ptr %i.dog, align 4, !tbaa !10
  %i.doi = sext i32 %i.doh to i64
  %i.doj = getelementptr inbounds i8, ptr %gep8659.us, i64 %i.doi
  %i.dok = load i8, ptr %i.doj, align 1, !tbaa !30
  %i.dol = sext i8 %i.dok to i16
  %i.dom = insertelement <8 x i16> poison, i16 %i.dol, i64 0
  %i.don = shufflevector <8 x i16> %i.dom, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.doo = load <8 x i8>, ptr %i.doe, align 1, !tbaa !30
  %i.dop = sext <8 x i8> %i.doo to <8 x i16>      ; 2 uses
  %i.doq = mul <8 x i16> %i.don, %i.dop
  %i.dor = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.don, <8 x i16> %i.dop)
  %i.dos = shufflevector <8 x i16> %i.doq, <8 x i16> %i.dor, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dot = bitcast <8 x i16> %i.dos to <4 x i32>
  %i.dou = add <4 x i32> %i.dod, %i.dot           ; 3 uses
  %i.dov = getelementptr inbounds nuw i8, ptr %.729158645.us, i64 8 ; 2 uses
  %indvars.iv.next10208.1 = add nuw nsw i64 %indvars.iv10207, 2 ; 2 uses
  %niter11999.next.1 = add i64 %niter11999, 2     ; 2 uses
  %niter11999.ncmp.1 = icmp eq i64 %niter11999.next.1, %unroll_iter11998
  br i1 %niter11999.ncmp.1, label %._crit_edge8648.us.unr-lcssa, label %.noexc3525.us.new, !llvm.loop !167

._crit_edge8648.us.unr-lcssa:                     ; preds = %.noexc3525.us.new
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %wide.trip.count10299 = zext i32 %i.euh to i64  ; 3 uses
  %xtraiter12007 = and i64 %wide.trip.count10299, 1
  %i.euo = icmp eq i32 %i.euh, 1
  %unroll_iter12012 = and i64 %wide.trip.count10299, 2147483646
  %lcmp.mod12008.not = icmp eq i64 %xtraiter12007, 0
  %lcmp.mod12011 = trunc i32 %i.euh to i1
  br label %.noexc3483

.noexc3483:                                       ; preds = %.noexc3483.lr.ph, %._crit_edge8921
  %.128388931 = phi i32 [ %.02837.lcssa, %.noexc3483.lr.ph ], [ %i.ewr, %._crit_edge8921 ] ; 2 uses
  %.228438930 = phi ptr [ %.02841.lcssa, %.noexc3483.lr.ph ], [ %.32844.lcssa, %._crit_edge8921 ] ; 6 uses
  %i.eup = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.ewq, %._crit_edge8921 ] ; 4 uses
  %i.euq = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.ewp, %._crit_edge8921 ] ; 4 uses
  %i.eur = sdiv i32 %.128388931, %i.eti
  %i.eus = sext i32 %i.eur to i64
  %.reass8938 = mul i64 %factor.op.mul8937, %i.eus ; 2 uses
  %gep8941 = getelementptr i8, ptr %invariant.gep8940, i64 %.reass8938 ; 4 uses
  %gep8946 = getelementptr i8, ptr %invariant.gep8945, i64 %.reass8938 ; 4 uses
  br i1 %i.eui, label %.lr.ph8920, label %._crit_edge8921

.lr.ph8920:                                       ; preds = %.noexc3483
  br i1 %i.euk, label %.lr.ph8920.split.us.preheader, label %.lr.ph8920.split

.lr.ph8920.split.us.preheader:                    ; preds = %.lr.ph8920
  br i1 %i.euo, label %.lr.ph8920.split.us.epil.preheader, label %.lr.ph8920.split.us

.lr.ph8920.split.us:                              ; preds = %.lr.ph8920.split.us.preheader, %.lr.ph8920.split.us
  %indvars.iv10301 = phi i64 [ %indvars.iv.next10302.1, %.lr.ph8920.split.us ], [ 0, %.lr.ph8920.split.us.preheader ] ; 3 uses
  %.328448918.us = phi ptr [ %i.evz, %.lr.ph8920.split.us ], [ %.228438930, %.lr.ph8920.split.us.preheader ] ; 3 uses
  %.174958917.us = phi <8 x i32> [ %i.evy, %.lr.ph8920.split.us ], [ %i.eup, %.lr.ph8920.split.us.preheader ]
  %.174978916.us = phi <8 x i32> [ %i.evv, %.lr.ph8920.split.us ], [ %i.euq, %.lr.ph8920.split.us.preheader ]
  %niter12013 = phi i64 [ %niter12013.next.1, %.lr.ph8920.split.us ], [ 0, %.lr.ph8920.split.us.preheader ]
  %i.eut = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %indvars.iv10301
  %i.euu = load i32, ptr %i.eut, align 4, !tbaa !10
  %i.euv = sext i32 %i.euu to i64                 ; 2 uses
  %i.euw = getelementptr inbounds i8, ptr %gep8941, i64 %i.euv
  %i.eux = getelementptr inbounds i8, ptr %gep8946, i64 %i.euv
  %i.euy = load <8 x i8>, ptr %i.euw, align 1, !tbaa !30
  %i.euz = load <8 x i8>, ptr %i.eux, align 1, !tbaa !30
  %i.eva = load <16 x i8>, ptr %.328448918.us, align 16, !tbaa !30
  %i.evb = sext <16 x i8> %i.eva to <16 x i16>    ; 2 uses
  %i.evc = shufflevector <8 x i8> %i.euy, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evd = sext <16 x i8> %i.evc to <16 x i16>
  %i.eve = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916.us, <16 x i16> %i.evd, <16 x i16> %i.evb)
  %i.evf = shufflevector <8 x i8> %i.euz, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evg = sext <16 x i8> %i.evf to <16 x i16>
  %i.evh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917.us, <16 x i16> %i.evg, <16 x i16> %i.evb)
  %i.evi = getelementptr inbounds nuw i8, ptr %.328448918.us, i64 16
  %i.evj = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %indvars.iv10301
  %i.evk = getelementptr inbounds nuw i8, ptr %i.evj, i64 4
  %i.evl = load i32, ptr %i.evk, align 4, !tbaa !10
  %i.evm = sext i32 %i.evl to i64                 ; 2 uses
  %i.evn = getelementptr inbounds i8, ptr %gep8941, i64 %i.evm
  %i.evo = getelementptr inbounds i8, ptr %gep8946, i64 %i.evm
  %i.evp = load <8 x i8>, ptr %i.evn, align 1, !tbaa !30
  %i.evq = load <8 x i8>, ptr %i.evo, align 1, !tbaa !30
  %i.evr = load <16 x i8>, ptr %i.evi, align 16, !tbaa !30
  %i.evs = sext <16 x i8> %i.evr to <16 x i16>    ; 2 uses
  %i.evt = shufflevector <8 x i8> %i.evp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evu = sext <16 x i8> %i.evt to <16 x i16>
  %i.evv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.eve, <16 x i16> %i.evu, <16 x i16> %i.evs) ; 3 uses
  %i.evw = shufflevector <8 x i8> %i.evq, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evx = sext <16 x i8> %i.evw to <16 x i16>
  %i.evy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.evh, <16 x i16> %i.evx, <16 x i16> %i.evs) ; 3 uses
  %i.evz = getelementptr inbounds nuw i8, ptr %.328448918.us, i64 32 ; 2 uses
  %indvars.iv.next10302.1 = add nuw nsw i64 %indvars.iv10301, 2 ; 2 uses
  %niter12013.next.1 = add i64 %niter12013, 2     ; 2 uses
  %niter12013.ncmp.1 = icmp eq i64 %niter12013.next.1, %unroll_iter12012
  br i1 %niter12013.ncmp.1, label %._crit_edge8921.loopexit.unr-lcssa, label %.lr.ph8920.split.us, !llvm.loop !202

._crit_edge8921.loopexit.unr-lcssa:               ; preds = %.lr.ph8920.split.us
  br i1 %lcmp.mod12008.not, label %._crit_edge8921.loopexit, label %.lr.ph8920.split.us.epil.preheader

.lr.ph8920.split.us.epil.preheader:               ; preds = %._crit_edge8921.loopexit.unr-lcssa, %.lr.ph8920.split.us.preheader
  %indvars.iv10301.epil.init = phi i64 [ 0, %.lr.ph8920.split.us.preheader ], [ %indvars.iv.next10302.1, %._crit_edge8921.loopexit.unr-lcssa ]
  %.328448918.us.epil.init = phi ptr [ %.228438930, %.lr.ph8920.split.us.preheader ], [ %i.evz, %._crit_edge8921.loopexit.unr-lcssa ]
  %.174958917.us.epil.init = phi <8 x i32> [ %i.eup, %.lr.ph8920.split.us.preheader ], [ %i.evy, %._crit_edge8921.loopexit.unr-lcssa ]
  %.174978916.us.epil.init = phi <8 x i32> [ %i.euq, %.lr.ph8920.split.us.preheader ], [ %i.evv, %._crit_edge8921.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12011)
  %i.ewa = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %indvars.iv10301.epil.init
  %i.ewb = load i32, ptr %i.ewa, align 4, !tbaa !10
  %i.ewc = sext i32 %i.ewb to i64                 ; 2 uses
  %i.ewd = getelementptr inbounds i8, ptr %gep8941, i64 %i.ewc
  %i.ewe = getelementptr inbounds i8, ptr %gep8946, i64 %i.ewc
  %i.ewf = load <8 x i8>, ptr %i.ewd, align 1, !tbaa !30
  %i.ewg = load <8 x i8>, ptr %i.ewe, align 1, !tbaa !30
  %i.ewh = load <16 x i8>, ptr %.328448918.us.epil.init, align 16, !tbaa !30
  %i.ewi = sext <16 x i8> %i.ewh to <16 x i16>    ; 2 uses
  %i.ewj = shufflevector <8 x i8> %i.ewf, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ewk = sext <16 x i8> %i.ewj to <16 x i16>
  %i.ewl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916.us.epil.init, <16 x i16> %i.ewk, <16 x i16> %i.ewi)
  %i.ewm = shufflevector <8 x i8> %i.ewg, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ewn = sext <16 x i8> %i.ewm to <16 x i16>
  %i.ewo = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917.us.epil.init, <16 x i16> %i.ewn, <16 x i16> %i.ewi)
  br label %._crit_edge8921.loopexit

._crit_edge8921.loopexit:                         ; preds = %._crit_edge8921.loopexit.unr-lcssa, %.lr.ph8920.split.us.epil.preheader
  %.lcssa11742 = phi <8 x i32> [ %i.evv, %._crit_edge8921.loopexit.unr-lcssa ], [ %i.ewl, %.lr.ph8920.split.us.epil.preheader ]
  %.lcssa11741 = phi <8 x i32> [ %i.evy, %._crit_edge8921.loopexit.unr-lcssa ], [ %i.ewo, %.lr.ph8920.split.us.epil.preheader ]
  %scevgep10303 = getelementptr i8, ptr %.228438930, i64 16
  %scevgep10304 = getelementptr i8, ptr %scevgep10303, i64 %i.eun
  br label %._crit_edge8921

._crit_edge8921.loopexit9598:                     ; preds = %.lr.ph8920.split
  %scevgep10296 = getelementptr i8, ptr %.228438930, i64 16
  %scevgep10297 = getelementptr i8, ptr %scevgep10296, i64 %i.eun
  br label %._crit_edge8921

._crit_edge8921:                                  ; preds = %._crit_edge8921.loopexit9598, %._crit_edge8921.loopexit, %.noexc3483
  %i.ewp = phi <8 x i32> [ %i.euq, %.noexc3483 ], [ %.lcssa11742, %._crit_edge8921.loopexit ], [ %i.exg, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %i.ewq = phi <8 x i32> [ %i.eup, %.noexc3483 ], [ %.lcssa11741, %._crit_edge8921.loopexit ], [ %i.exk, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %.32844.lcssa = phi ptr [ %.228438930, %.noexc3483 ], [ %scevgep10304, %._crit_edge8921.loopexit ], [ %scevgep10297, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %i.ewr = add nuw nsw i32 %.128388931, 8         ; 3 uses
  %i.ews = or disjoint i32 %i.ewr, 7
  %i.ewt = icmp slt i32 %i.ews, %i.ems
  br i1 %i.ewt, label %.noexc3483, label %._crit_edge8932, !llvm.loop !203

.lr.ph8920.split:                                 ; preds = %.lr.ph8920, %.lr.ph8920.split
  %indvars.iv10294 = phi i64 [ %indvars.iv.next10295, %.lr.ph8920.split ], [ 0, %.lr.ph8920 ] ; 2 uses
  %.328448918 = phi ptr [ %i.exl, %.lr.ph8920.split ], [ %.228438930, %.lr.ph8920 ] ; 2 uses
  %.174958917 = phi <8 x i32> [ %i.exk, %.lr.ph8920.split ], [ %i.eup, %.lr.ph8920 ]
  %.174978916 = phi <8 x i32> [ %i.exg, %.lr.ph8920.split ], [ %i.euq, %.lr.ph8920 ]
  %i.ewu = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %indvars.iv10294
  %i.ewv = load i32, ptr %i.ewu, align 4, !tbaa !10
  %i.eww = sext i32 %i.ewv to i64                 ; 2 uses
  %i.ewx = getelementptr inbounds i8, ptr %gep8941, i64 %i.eww
  %i.ewy = getelementptr inbounds i8, ptr %gep8946, i64 %i.eww
  %i.ewz = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ewx, <8 x i32> %i.duf, <8 x i32> splat (i32 -1), i8 1)
  %i.exa = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ewy, <8 x i32> %i.duf, <8 x i32> splat (i32 -1), i8 1)
  %i.exb = load <16 x i8>, ptr %.328448918, align 16, !tbaa !30
  %i.exc = sext <16 x i8> %i.exb to <16 x i16>    ; 2 uses
  %i.exd = shufflevector <8 x i32> %i.ewz, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.exe = trunc <16 x i32> %i.exd to <16 x i8>
  %i.exf = sext <16 x i8> %i.exe to <16 x i16>
  %i.exg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916, <16 x i16> %i.exf, <16 x i16> %i.exc) ; 2 uses
  %i.exh = shufflevector <8 x i32> %i.exa, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.exi = trunc <16 x i32> %i.exh to <16 x i8>
  %i.exj = sext <16 x i8> %i.exi to <16 x i16>
  %i.exk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917, <16 x i16> %i.exj, <16 x i16> %i.exc) ; 2 uses
  %i.exl = getelementptr inbounds nuw i8, ptr %.328448918, i64 16
  %indvars.iv.next10295 = add nuw nsw i64 %indvars.iv10294, 1 ; 2 uses
  %exitcond10300.not = icmp eq i64 %indvars.iv.next10295, %wide.trip.count10299
  br i1 %exitcond10300.not, label %._crit_edge8921.loopexit9598, label %.lr.ph8920.split, !llvm.loop !202

._crit_edge8932:                                  ; preds = %._crit_edge8921, %._crit_edge8901
  %i.exm = phi <8 x i32> [ zeroinitializer, %._crit_edge8901 ], [ %i.ewp, %._crit_edge8921 ] ; 2 uses
  %i.exn = phi <8 x i32> [ zeroinitializer, %._crit_edge8901 ], [ %i.ewq, %._crit_edge8921 ] ; 2 uses
  %.22843.lcssa = phi ptr [ %.02841.lcssa, %._crit_edge8901 ], [ %.32844.lcssa, %._crit_edge8921 ] ; 3 uses
  %.12838.lcssa = phi i32 [ %.02837.lcssa, %._crit_edge8901 ], [ %i.ewr, %._crit_edge8921 ] ; 5 uses
  %i.exo = shufflevector <8 x i32> %i.exm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.exp = add <4 x i32> %i.etc, %i.exo
  %i.exq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.exp) ; 3 uses
  %i.exr = shufflevector <8 x i32> %i.exm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.exs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.exr)
  %i.ext = add nsw i32 %i.etd, %i.exs             ; 3 uses
  %i.exu = shufflevector <8 x i32> %i.exn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.exv = shufflevector <8 x i32> %i.exn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.exw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.exv)
  %i.exx = add <4 x i32> %i.ete, %i.exu
  %i.exy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.exx) ; 3 uses
  %i.exz = add nsw i32 %i.etf, %i.exw             ; 3 uses
  %i.eya = or disjoint i32 %.12838.lcssa, 1
  %i.eyb = icmp slt i32 %i.eya, %i.ems
  br i1 %i.eyb, label %.noexc3479.lr.ph, label %.preheader7705

.noexc3479.lr.ph:                                 ; preds = %._crit_edge8932
  %i.eyc = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !350
  %i.eyd = load ptr, ptr %0, align 8, !tbaa !28, !noalias !350 ; 2 uses
  %i.eye = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !350
  %i.eyf = load i64, ptr %i.bgc, align 8, !tbaa !29, !noalias !350 ; 2 uses
  %factor.op.mul8972 = mul i64 %i.eye, %i.eyf
  %i.eyg = sext i32 %i.eyc to i64
  %i.eyh = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.eyi = extractelement <2 x i32> %i.emq, i64 1
  %i.eyj = mul nsw i32 %i.eyh, %i.eyi
  %i.eyk = sext i32 %i.eyj to i64
  %i.eyl = mul i64 %i.eyf, %i.eyg                 ; 2 uses
  %i.eym = mul i64 %i.eyl, %i.eyk
  %invariant.gep8974 = getelementptr i8, ptr %i.eyd, i64 %i.eym
  %i.eyn = load i32, ptr %i.a, align 4, !tbaa !10
  %i.eyo = extractelement <2 x i32> %i.emq, i64 0
  %i.eyp = mul nsw i32 %i.eyh, %i.eyo
  %i.eyq = sext i32 %i.eyp to i64
  %i.eyr = mul i64 %i.eyl, %i.eyq
  %invariant.gep8979 = getelementptr i8, ptr %i.eyd, i64 %i.eyr
  %i.eys = insertelement <2 x i32> poison, i32 %i.eyn, i64 0
  %i.eyt = shufflevector <2 x i32> %i.eys, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eyu = mul nsw <2 x i32> %i.eyt, %.decomposed12461 ; 2 uses
  %i.eyv = extractelement <2 x i32> %i.eyu, i64 1
  %i.eyw = sext i32 %i.eyv to i64
  %invariant.gep8975 = getelementptr i8, ptr %invariant.gep8974, i64 %i.eyw
  %i.eyx = extractelement <2 x i32> %i.eyu, i64 0
  %i.eyy = sext i32 %i.eyx to i64
  %invariant.gep8980 = getelementptr i8, ptr %invariant.gep8979, i64 %i.eyy
  %i.eyz = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.eza = icmp sgt i32 %i.eyz, 0
  %i.ezb = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.eza, label %.noexc3479.us.preheader, label %.noexc3479.preheader

.noexc3479.preheader:                             ; preds = %.noexc3479.lr.ph
  %i.ezc = add nuw nsw i32 %.12838.lcssa, 2
  %i.ezd = add nsw i32 %i.ems, -2
  %i.eze = sub nsw i32 %i.ezd, %.12838.lcssa
  %i.ezf = and i32 %i.eze, -2
  %i.ezg = add i32 %i.ezc, %i.ezf
  br label %.preheader7705

.noexc3479.us.preheader:                          ; preds = %.noexc3479.lr.ph
  %i.ezh = add nsw i32 %i.eyz, -1
  %i.ezi = zext nneg i32 %i.ezh to i64
  %i.ezj = shl nuw nsw i64 %i.ezi, 2
  %i.ezk = zext nneg i32 %.12838.lcssa to i64
  %wide.trip.count10313 = zext nneg i32 %i.eyz to i64 ; 6 uses
  %min.iters.check11349 = icmp ult i32 %i.eyz, 8
  %min.iters.check11351 = icmp ult i32 %i.eyz, 32
  %i.ezl = and i64 %wide.trip.count10313, 24
  %n.vec11353 = and i64 %wide.trip.count10313, 2147483616 ; 5 uses
  %i.ezm = shl nuw nsw i64 %n.vec11353, 2
  %cmp.n11384 = icmp eq i64 %n.vec11353, %wide.trip.count10313
  %min.epilog.iters.check11393 = icmp eq i64 %i.ezl, 0
  %n.vec11395 = and i64 %wide.trip.count10313, 2147483640 ; 4 uses
  %i.ezn = shl nuw nsw i64 %n.vec11395, 2
  %cmp.n11411 = icmp eq i64 %n.vec11395, %wide.trip.count10313
  br label %iter.check11390

iter.check11390:                                  ; preds = %.noexc3479.us.preheader, %._crit_edge8954.us
  %indvars.iv10315 = phi i64 [ %i.ezk, %.noexc3479.us.preheader ], [ %indvars.iv.next10316, %._crit_edge8954.us ] ; 2 uses
  %.428458964.us = phi ptr [ %.22843.lcssa, %.noexc3479.us.preheader ], [ %scevgep10311, %._crit_edge8954.us ] ; 7 uses
  %.028498963.us = phi i32 [ %i.exz, %.noexc3479.us.preheader ], [ %.lcssa11015, %._crit_edge8954.us ] ; 3 uses
  %.028538962.us = phi i32 [ %i.ext, %.noexc3479.us.preheader ], [ %.lcssa11017, %._crit_edge8954.us ] ; 3 uses
  %.028578961.us = phi i32 [ %i.exy, %.noexc3479.us.preheader ], [ %.lcssa11016, %._crit_edge8954.us ] ; 3 uses
  %.028618960.us = phi i32 [ %i.exq, %.noexc3479.us.preheader ], [ %.lcssa11018, %._crit_edge8954.us ] ; 3 uses
  %.reass8973.us = mul i64 %factor.op.mul8972, %indvars.iv10315 ; 2 uses
  %gep8976.us = getelementptr i8, ptr %invariant.gep8975, i64 %.reass8973.us ; 41 uses
  %gep8981.us = getelementptr i8, ptr %invariant.gep8980, i64 %.reass8973.us ; 41 uses
  br i1 %min.iters.check11349, label %vec.epilog.scalar.ph11391.preheader, label %vector.main.loop.iter.check11350

vector.main.loop.iter.check11350:                 ; preds = %iter.check11390
  br i1 %min.iters.check11351, label %vec.epilog.ph11394, label %vector.ph11352

vector.ph11352:                                   ; preds = %vector.main.loop.iter.check11350
  %i.ezo = getelementptr i8, ptr %.428458964.us, i64 %i.ezm
  %i.ezp = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028498963.us, i64 0
  %i.ezq = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028538962.us, i64 0
  %i.ezr = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028578961.us, i64 0
  %i.ezs = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028618960.us, i64 0
  br label %vector.body11354

vector.body11354:                                 ; preds = %vector.body11354, %vector.ph11352
  %index11355 = phi i64 [ 0, %vector.ph11352 ], [ %index.next11378, %vector.body11354 ] ; 3 uses
  %vec.phi11356 = phi <16 x i32> [ %i.ezp, %vector.ph11352 ], [ %i.frt, %vector.body11354 ]
  %vec.phi11357 = phi <16 x i32> [ zeroinitializer, %vector.ph11352 ], [ %i.fru, %vector.body11354 ]
  %vec.phi11358 = phi <16 x i32> [ %i.ezq, %vector.ph11352 ], [ %i.fkv, %vector.body11354 ]
  %vec.phi11359 = phi <16 x i32> [ zeroinitializer, %vector.ph11352 ], [ %i.fkw, %vector.body11354 ]
  %vec.phi11360 = phi <16 x i32> [ %i.ezr, %vector.ph11352 ], [ %i.frp, %vector.body11354 ]
  %vec.phi11361 = phi <16 x i32> [ zeroinitializer, %vector.ph11352 ], [ %i.frq, %vector.body11354 ]
  %vec.phi11362 = phi <16 x i32> [ %i.ezs, %vector.ph11352 ], [ %i.fkp, %vector.body11354 ]
  %vec.phi11363 = phi <16 x i32> [ zeroinitializer, %vector.ph11352 ], [ %i.fkq, %vector.body11354 ]
  %i.ezt = shl i64 %index11355, 2                 ; 2 uses
  %next.gep11364 = getelementptr i8, ptr %.428458964.us, i64 %i.ezt
  %i.ezu = getelementptr i8, ptr %.428458964.us, i64 %i.ezt
  %next.gep11365 = getelementptr i8, ptr %i.ezu, i64 64
  %i.ezv = getelementptr inbounds nuw [4 x i8], ptr %i.ezb, i64 %index11355 ; 2 uses
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.ezv, i64 64
  %wide.load11366 = load <16 x i32>, ptr %i.ezv, align 4, !tbaa !10
  %wide.load11367 = load <16 x i32>, ptr %i.ezw, align 4, !tbaa !10
  %i.ezx = sext <16 x i32> %wide.load11366 to <16 x i64> ; 16 uses
  %i.ezy = sext <16 x i32> %wide.load11367 to <16 x i64> ; 16 uses
  %i.ezz = extractelement <16 x i64> %i.ezx, i64 0 ; 2 uses
  %i.faa = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.ezz ; 2 uses
  %i.fab = extractelement <16 x i64> %i.ezx, i64 1 ; 2 uses
  %i.fac = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fab ; 2 uses
  %i.fad = extractelement <16 x i64> %i.ezx, i64 2 ; 2 uses
  %i.fae = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fad ; 2 uses
  %i.faf = extractelement <16 x i64> %i.ezx, i64 3 ; 2 uses
  %i.fag = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.faf ; 2 uses
  %i.fah = extractelement <16 x i64> %i.ezx, i64 4 ; 2 uses
  %i.fai = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fah ; 2 uses
  %i.faj = extractelement <16 x i64> %i.ezx, i64 5 ; 2 uses
  %i.fak = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.faj ; 2 uses
  %i.fal = extractelement <16 x i64> %i.ezx, i64 6 ; 2 uses
  %i.fam = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fal ; 2 uses
  %i.fan = extractelement <16 x i64> %i.ezx, i64 7 ; 2 uses
  %i.fao = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fan ; 2 uses
  %i.fap = extractelement <16 x i64> %i.ezx, i64 8 ; 2 uses
  %i.faq = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fap ; 2 uses
  %i.far = extractelement <16 x i64> %i.ezx, i64 9 ; 2 uses
  %i.fas = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.far ; 2 uses
  %i.fat = extractelement <16 x i64> %i.ezx, i64 10 ; 2 uses
  %i.fau = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fat ; 2 uses
  %i.fav = extractelement <16 x i64> %i.ezx, i64 11 ; 2 uses
  %i.faw = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fav ; 2 uses
  %i.fax = extractelement <16 x i64> %i.ezx, i64 12 ; 2 uses
  %i.fay = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fax ; 2 uses
  %i.faz = extractelement <16 x i64> %i.ezx, i64 13 ; 2 uses
  %i.fba = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.faz ; 2 uses
  %i.fbb = extractelement <16 x i64> %i.ezx, i64 14 ; 2 uses
  %i.fbc = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbb ; 2 uses
  %i.fbd = extractelement <16 x i64> %i.ezx, i64 15 ; 2 uses
  %i.fbe = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbd ; 2 uses
  %i.fbf = extractelement <16 x i64> %i.ezy, i64 0 ; 2 uses
  %i.fbg = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbf ; 2 uses
  %i.fbh = extractelement <16 x i64> %i.ezy, i64 1 ; 2 uses
  %i.fbi = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbh ; 2 uses
  %i.fbj = extractelement <16 x i64> %i.ezy, i64 2 ; 2 uses
  %i.fbk = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbj ; 2 uses
  %i.fbl = extractelement <16 x i64> %i.ezy, i64 3 ; 2 uses
  %i.fbm = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbl ; 2 uses
  %i.fbn = extractelement <16 x i64> %i.ezy, i64 4 ; 2 uses
  %i.fbo = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbn ; 2 uses
  %i.fbp = extractelement <16 x i64> %i.ezy, i64 5 ; 2 uses
  %i.fbq = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbp ; 2 uses
  %i.fbr = extractelement <16 x i64> %i.ezy, i64 6 ; 2 uses
  %i.fbs = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbr ; 2 uses
  %i.fbt = extractelement <16 x i64> %i.ezy, i64 7 ; 2 uses
  %i.fbu = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbt ; 2 uses
  %i.fbv = extractelement <16 x i64> %i.ezy, i64 8 ; 2 uses
  %i.fbw = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbv ; 2 uses
  %i.fbx = extractelement <16 x i64> %i.ezy, i64 9 ; 2 uses
  %i.fby = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbx ; 2 uses
  %i.fbz = extractelement <16 x i64> %i.ezy, i64 10 ; 2 uses
  %i.fca = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fbz ; 2 uses
  %i.fcb = extractelement <16 x i64> %i.ezy, i64 11 ; 2 uses
  %i.fcc = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fcb ; 2 uses
  %i.fcd = extractelement <16 x i64> %i.ezy, i64 12 ; 2 uses
  %i.fce = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fcd ; 2 uses
  %i.fcf = extractelement <16 x i64> %i.ezy, i64 13 ; 2 uses
  %i.fcg = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fcf ; 2 uses
  %i.fch = extractelement <16 x i64> %i.ezy, i64 14 ; 2 uses
  %i.fci = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fch ; 2 uses
  %i.fcj = extractelement <16 x i64> %i.ezy, i64 15 ; 2 uses
  %i.fck = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.fcj ; 2 uses
  %i.fcl = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.ezz ; 2 uses
  %i.fcm = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fab ; 2 uses
  %i.fcn = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fad ; 2 uses
  %i.fco = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.faf ; 2 uses
  %i.fcp = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fah ; 2 uses
  %i.fcq = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.faj ; 2 uses
  %i.fcr = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fal ; 2 uses
  %i.fcs = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fan ; 2 uses
  %i.fct = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fap ; 2 uses
  %i.fcu = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.far ; 2 uses
  %i.fcv = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fat ; 2 uses
  %i.fcw = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fav ; 2 uses
  %i.fcx = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fax ; 2 uses
  %i.fcy = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.faz ; 2 uses
  %i.fcz = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbb ; 2 uses
  %i.fda = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbd ; 2 uses
  %i.fdb = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbf ; 2 uses
  %i.fdc = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbh ; 2 uses
  %i.fdd = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbj ; 2 uses
  %i.fde = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbl ; 2 uses
  %i.fdf = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbn ; 2 uses
  %i.fdg = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbp ; 2 uses
  %i.fdh = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbr ; 2 uses
  %i.fdi = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbt ; 2 uses
  %i.fdj = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbv ; 2 uses
  %i.fdk = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbx ; 2 uses
  %i.fdl = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fbz ; 2 uses
  %i.fdm = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fcb ; 2 uses
  %i.fdn = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fcd ; 2 uses
  %i.fdo = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fcf ; 2 uses
  %i.fdp = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fch ; 2 uses
  %i.fdq = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.fcj ; 2 uses
  %i.fdr = load i8, ptr %i.faa, align 1, !tbaa !30
  %i.fds = load i8, ptr %i.fac, align 1, !tbaa !30
  %i.fdt = load i8, ptr %i.fae, align 1, !tbaa !30
  %i.fdu = load i8, ptr %i.fag, align 1, !tbaa !30
  %i.fdv = load i8, ptr %i.fai, align 1, !tbaa !30
  %i.fdw = load i8, ptr %i.fak, align 1, !tbaa !30
  %i.fdx = load i8, ptr %i.fam, align 1, !tbaa !30
  %i.fdy = load i8, ptr %i.fao, align 1, !tbaa !30
  %i.fdz = load i8, ptr %i.faq, align 1, !tbaa !30
  %i.fea = load i8, ptr %i.fas, align 1, !tbaa !30
  %i.feb = load i8, ptr %i.fau, align 1, !tbaa !30
  %i.fec = load i8, ptr %i.faw, align 1, !tbaa !30
  %i.fed = load i8, ptr %i.fay, align 1, !tbaa !30
  %i.fee = load i8, ptr %i.fba, align 1, !tbaa !30
  %i.fef = load i8, ptr %i.fbc, align 1, !tbaa !30
  %i.feg = load i8, ptr %i.fbe, align 1, !tbaa !30
  %i.feh = insertelement <16 x i8> poison, i8 %i.fdr, i64 0
  %i.fei = insertelement <16 x i8> %i.feh, i8 %i.fds, i64 1
  %i.fej = insertelement <16 x i8> %i.fei, i8 %i.fdt, i64 2
  %i.fek = insertelement <16 x i8> %i.fej, i8 %i.fdu, i64 3
  %i.fel = insertelement <16 x i8> %i.fek, i8 %i.fdv, i64 4
  %i.fem = insertelement <16 x i8> %i.fel, i8 %i.fdw, i64 5
  %i.fen = insertelement <16 x i8> %i.fem, i8 %i.fdx, i64 6
  %i.feo = insertelement <16 x i8> %i.fen, i8 %i.fdy, i64 7
  %i.fep = insertelement <16 x i8> %i.feo, i8 %i.fdz, i64 8
  %i.feq = insertelement <16 x i8> %i.fep, i8 %i.fea, i64 9
  %i.fer = insertelement <16 x i8> %i.feq, i8 %i.feb, i64 10
  %i.fes = insertelement <16 x i8> %i.fer, i8 %i.fec, i64 11
  %i.fet = insertelement <16 x i8> %i.fes, i8 %i.fed, i64 12
  %i.feu = insertelement <16 x i8> %i.fet, i8 %i.fee, i64 13
  %i.fev = insertelement <16 x i8> %i.feu, i8 %i.fef, i64 14
  %i.few = insertelement <16 x i8> %i.fev, i8 %i.feg, i64 15
  %i.fex = load i8, ptr %i.fbg, align 1, !tbaa !30
  %i.fey = load i8, ptr %i.fbi, align 1, !tbaa !30
  %i.fez = load i8, ptr %i.fbk, align 1, !tbaa !30
  %i.ffa = load i8, ptr %i.fbm, align 1, !tbaa !30
  %i.ffb = load i8, ptr %i.fbo, align 1, !tbaa !30
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.gws = shl nuw nsw i64 %i.gwr, 4              ; 2 uses
  %wide.trip.count10354 = zext i32 %i.gwm to i64  ; 5 uses
  %i.gwt = add nsw i64 %wide.trip.count10354, -1  ; 2 uses
  %xtraiter12032 = and i64 %wide.trip.count10354, 1
  %i.gwu = icmp eq i64 %i.gwt, 0
  %unroll_iter12036 = and i64 %wide.trip.count10354, 2147483646
  %lcmp.mod12033.not = icmp eq i64 %xtraiter12032, 0
  %lcmp.mod12035 = trunc i32 %i.gwm to i1
  %xtraiter12038 = and i64 %wide.trip.count10354, 1
  %i.gwv = icmp eq i64 %i.gwt, 0
  %unroll_iter12042 = and i64 %wide.trip.count10354, 2147483646
  %lcmp.mod12039.not = icmp eq i64 %xtraiter12038, 0
  %lcmp.mod12041 = trunc i32 %i.gwm to i1
  br label %.noexc3467

.noexc3467:                                       ; preds = %.noexc3467.lr.ph, %._crit_edge9077
  %.127989084 = phi i32 [ %.02797.lcssa, %.noexc3467.lr.ph ], [ %i.gys, %._crit_edge9077 ] ; 2 uses
  %.228039083 = phi ptr [ %.02801.lcssa, %.noexc3467.lr.ph ], [ %.32804.lcssa, %._crit_edge9077 ] ; 7 uses
  %i.gww = phi <8 x i32> [ zeroinitializer, %.noexc3467.lr.ph ], [ %i.gyr, %._crit_edge9077 ] ; 5 uses
  %i.gwx = sdiv i32 %.127989084, %i.gvx
  %i.gwy = sext i32 %i.gwx to i64
  %.reass9090 = mul i64 %factor.op.mul9089, %i.gwy
  %gep9093 = getelementptr i8, ptr %invariant.gep9092, i64 %.reass9090 ; 6 uses
  br i1 %i.gwn, label %.lr.ph9076, label %._crit_edge9077

.lr.ph9076:                                       ; preds = %.noexc3467
  br i1 %i.gwp, label %.lr.ph9076.split.us.preheader, label %.lr.ph9076.split.preheader

.lr.ph9076.split.preheader:                       ; preds = %.lr.ph9076
  br i1 %i.gwu, label %.lr.ph9076.split.epil.preheader, label %.lr.ph9076.split

.lr.ph9076.split.us.preheader:                    ; preds = %.lr.ph9076
  br i1 %i.gwv, label %.lr.ph9076.split.us.epil.preheader, label %.lr.ph9076.split.us

.lr.ph9076.split.us:                              ; preds = %.lr.ph9076.split.us.preheader, %.lr.ph9076.split.us
  %indvars.iv10356 = phi i64 [ %indvars.iv.next10357.1, %.lr.ph9076.split.us ], [ 0, %.lr.ph9076.split.us.preheader ] ; 3 uses
  %.328049074.us = phi ptr [ %i.gxv, %.lr.ph9076.split.us ], [ %.228039083, %.lr.ph9076.split.us.preheader ] ; 3 uses
  %.174909073.us = phi <8 x i32> [ %i.gxu, %.lr.ph9076.split.us ], [ %i.gww, %.lr.ph9076.split.us.preheader ]
  %niter12043 = phi i64 [ %niter12043.next.1, %.lr.ph9076.split.us ], [ 0, %.lr.ph9076.split.us.preheader ]
  %i.gwz = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10356
  %i.gxa = load i32, ptr %i.gwz, align 4, !tbaa !10
  %i.gxb = sext i32 %i.gxa to i64
  %i.gxc = getelementptr inbounds i8, ptr %gep9093, i64 %i.gxb
  %i.gxd = load <8 x i8>, ptr %i.gxc, align 1, !tbaa !30
  %i.gxe = load <16 x i8>, ptr %.328049074.us, align 16, !tbaa !30
  %i.gxf = sext <16 x i8> %i.gxe to <16 x i16>
  %i.gxg = shufflevector <8 x i8> %i.gxd, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gxh = sext <16 x i8> %i.gxg to <16 x i16>
  %i.gxi = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.us, <16 x i16> %i.gxh, <16 x i16> %i.gxf)
  %i.gxj = getelementptr inbounds nuw i8, ptr %.328049074.us, i64 16
  %i.gxk = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10356
  %i.gxl = getelementptr inbounds nuw i8, ptr %i.gxk, i64 4
  %i.gxm = load i32, ptr %i.gxl, align 4, !tbaa !10
  %i.gxn = sext i32 %i.gxm to i64
  %i.gxo = getelementptr inbounds i8, ptr %gep9093, i64 %i.gxn
  %i.gxp = load <8 x i8>, ptr %i.gxo, align 1, !tbaa !30
  %i.gxq = load <16 x i8>, ptr %i.gxj, align 16, !tbaa !30
  %i.gxr = sext <16 x i8> %i.gxq to <16 x i16>
  %i.gxs = shufflevector <8 x i8> %i.gxp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gxt = sext <16 x i8> %i.gxs to <16 x i16>
  %i.gxu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gxi, <16 x i16> %i.gxt, <16 x i16> %i.gxr) ; 3 uses
  %i.gxv = getelementptr inbounds nuw i8, ptr %.328049074.us, i64 32 ; 2 uses
  %indvars.iv.next10357.1 = add nuw nsw i64 %indvars.iv10356, 2 ; 2 uses
  %niter12043.next.1 = add i64 %niter12043, 2     ; 2 uses
  %niter12043.ncmp.1 = icmp eq i64 %niter12043.next.1, %unroll_iter12042
  br i1 %niter12043.ncmp.1, label %._crit_edge9077.loopexit.unr-lcssa, label %.lr.ph9076.split.us, !llvm.loop !223

._crit_edge9077.loopexit.unr-lcssa:               ; preds = %.lr.ph9076.split.us
  br i1 %lcmp.mod12039.not, label %._crit_edge9077.loopexit, label %.lr.ph9076.split.us.epil.preheader

.lr.ph9076.split.us.epil.preheader:               ; preds = %._crit_edge9077.loopexit.unr-lcssa, %.lr.ph9076.split.us.preheader
  %indvars.iv10356.epil.init = phi i64 [ 0, %.lr.ph9076.split.us.preheader ], [ %indvars.iv.next10357.1, %._crit_edge9077.loopexit.unr-lcssa ]
  %.328049074.us.epil.init = phi ptr [ %.228039083, %.lr.ph9076.split.us.preheader ], [ %i.gxv, %._crit_edge9077.loopexit.unr-lcssa ]
  %.174909073.us.epil.init = phi <8 x i32> [ %i.gww, %.lr.ph9076.split.us.preheader ], [ %i.gxu, %._crit_edge9077.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12041)
  %i.gxw = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10356.epil.init
  %i.gxx = load i32, ptr %i.gxw, align 4, !tbaa !10
  %i.gxy = sext i32 %i.gxx to i64
  %i.gxz = getelementptr inbounds i8, ptr %gep9093, i64 %i.gxy
  %i.gya = load <8 x i8>, ptr %i.gxz, align 1, !tbaa !30
  %i.gyb = load <16 x i8>, ptr %.328049074.us.epil.init, align 16, !tbaa !30
  %i.gyc = sext <16 x i8> %i.gyb to <16 x i16>
  %i.gyd = shufflevector <8 x i8> %i.gya, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gye = sext <16 x i8> %i.gyd to <16 x i16>
  %i.gyf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.us.epil.init, <16 x i16> %i.gye, <16 x i16> %i.gyc)
  br label %._crit_edge9077.loopexit

._crit_edge9077.loopexit:                         ; preds = %._crit_edge9077.loopexit.unr-lcssa, %.lr.ph9076.split.us.epil.preheader
  %.lcssa11785 = phi <8 x i32> [ %i.gxu, %._crit_edge9077.loopexit.unr-lcssa ], [ %i.gyf, %.lr.ph9076.split.us.epil.preheader ]
  %scevgep10358 = getelementptr i8, ptr %.228039083, i64 16
  %scevgep10359 = getelementptr i8, ptr %scevgep10358, i64 %i.gws
  br label %._crit_edge9077

._crit_edge9077.loopexit9595.unr-lcssa:           ; preds = %.lr.ph9076.split
  br i1 %lcmp.mod12033.not, label %._crit_edge9077.loopexit9595, label %.lr.ph9076.split.epil.preheader

.lr.ph9076.split.epil.preheader:                  ; preds = %._crit_edge9077.loopexit9595.unr-lcssa, %.lr.ph9076.split.preheader
  %indvars.iv10349.epil.init = phi i64 [ 0, %.lr.ph9076.split.preheader ], [ %indvars.iv.next10350.1, %._crit_edge9077.loopexit9595.unr-lcssa ]
  %.328049074.epil.init = phi ptr [ %.228039083, %.lr.ph9076.split.preheader ], [ %i.gzt, %._crit_edge9077.loopexit9595.unr-lcssa ]
  %.174909073.epil.init = phi <8 x i32> [ %i.gww, %.lr.ph9076.split.preheader ], [ %i.gzs, %._crit_edge9077.loopexit9595.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12035)
  %i.gyg = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10349.epil.init
  %i.gyh = load i32, ptr %i.gyg, align 4, !tbaa !10
  %i.gyi = sext i32 %i.gyh to i64
  %i.gyj = getelementptr inbounds i8, ptr %gep9093, i64 %i.gyi
  %i.gyk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gyj, <8 x i32> %i.emm, <8 x i32> splat (i32 -1), i8 1)
  %i.gyl = load <16 x i8>, ptr %.328049074.epil.init, align 16, !tbaa !30
  %i.gym = sext <16 x i8> %i.gyl to <16 x i16>
  %i.gyn = shufflevector <8 x i32> %i.gyk, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gyo = trunc <16 x i32> %i.gyn to <16 x i8>
  %i.gyp = sext <16 x i8> %i.gyo to <16 x i16>
  %i.gyq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.epil.init, <16 x i16> %i.gyp, <16 x i16> %i.gym)
  br label %._crit_edge9077.loopexit9595

._crit_edge9077.loopexit9595:                     ; preds = %._crit_edge9077.loopexit9595.unr-lcssa, %.lr.ph9076.split.epil.preheader
  %.lcssa11784 = phi <8 x i32> [ %i.gzs, %._crit_edge9077.loopexit9595.unr-lcssa ], [ %i.gyq, %.lr.ph9076.split.epil.preheader ]
  %scevgep10351 = getelementptr i8, ptr %.228039083, i64 16
  %scevgep10352 = getelementptr i8, ptr %scevgep10351, i64 %i.gws
  br label %._crit_edge9077

._crit_edge9077:                                  ; preds = %._crit_edge9077.loopexit9595, %._crit_edge9077.loopexit, %.noexc3467
  %i.gyr = phi <8 x i32> [ %i.gww, %.noexc3467 ], [ %.lcssa11785, %._crit_edge9077.loopexit ], [ %.lcssa11784, %._crit_edge9077.loopexit9595 ] ; 2 uses
  %.32804.lcssa = phi ptr [ %.228039083, %.noexc3467 ], [ %scevgep10359, %._crit_edge9077.loopexit ], [ %scevgep10352, %._crit_edge9077.loopexit9595 ] ; 2 uses
  %i.gys = add nuw nsw i32 %.127989084, 8         ; 3 uses
  %i.gyt = or disjoint i32 %i.gys, 7
  %i.gyu = icmp slt i32 %i.gyt, %i.gpe
  br i1 %i.gyu, label %.noexc3467, label %._crit_edge9085, !llvm.loop !224

.lr.ph9076.split:                                 ; preds = %.lr.ph9076.split.preheader, %.lr.ph9076.split
  %indvars.iv10349 = phi i64 [ %indvars.iv.next10350.1, %.lr.ph9076.split ], [ 0, %.lr.ph9076.split.preheader ] ; 3 uses
  %.328049074 = phi ptr [ %i.gzt, %.lr.ph9076.split ], [ %.228039083, %.lr.ph9076.split.preheader ] ; 3 uses
  %.174909073 = phi <8 x i32> [ %i.gzs, %.lr.ph9076.split ], [ %i.gww, %.lr.ph9076.split.preheader ]
  %niter12037 = phi i64 [ %niter12037.next.1, %.lr.ph9076.split ], [ 0, %.lr.ph9076.split.preheader ]
  %i.gyv = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10349
  %i.gyw = load i32, ptr %i.gyv, align 4, !tbaa !10
  %i.gyx = sext i32 %i.gyw to i64
  %i.gyy = getelementptr inbounds i8, ptr %gep9093, i64 %i.gyx
  %i.gyz = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gyy, <8 x i32> %i.emm, <8 x i32> splat (i32 -1), i8 1)
  %i.gza = load <16 x i8>, ptr %.328049074, align 16, !tbaa !30
  %i.gzb = sext <16 x i8> %i.gza to <16 x i16>
  %i.gzc = shufflevector <8 x i32> %i.gyz, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gzd = trunc <16 x i32> %i.gzc to <16 x i8>
  %i.gze = sext <16 x i8> %i.gzd to <16 x i16>
  %i.gzf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073, <16 x i16> %i.gze, <16 x i16> %i.gzb)
  %i.gzg = getelementptr inbounds nuw i8, ptr %.328049074, i64 16
  %i.gzh = getelementptr inbounds nuw [4 x i8], ptr %i.gwo, i64 %indvars.iv10349
  %i.gzi = getelementptr inbounds nuw i8, ptr %i.gzh, i64 4
  %i.gzj = load i32, ptr %i.gzi, align 4, !tbaa !10
  %i.gzk = sext i32 %i.gzj to i64
  %i.gzl = getelementptr inbounds i8, ptr %gep9093, i64 %i.gzk
  %i.gzm = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gzl, <8 x i32> %i.emm, <8 x i32> splat (i32 -1), i8 1)
  %i.gzn = load <16 x i8>, ptr %i.gzg, align 16, !tbaa !30
  %i.gzo = sext <16 x i8> %i.gzn to <16 x i16>
  %i.gzp = shufflevector <8 x i32> %i.gzm, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gzq = trunc <16 x i32> %i.gzp to <16 x i8>
  %i.gzr = sext <16 x i8> %i.gzq to <16 x i16>
  %i.gzs = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gzf, <16 x i16> %i.gzr, <16 x i16> %i.gzo) ; 3 uses
  %i.gzt = getelementptr inbounds nuw i8, ptr %.328049074, i64 32 ; 2 uses
  %indvars.iv.next10350.1 = add nuw nsw i64 %indvars.iv10349, 2 ; 2 uses
  %niter12037.next.1 = add i64 %niter12037, 2     ; 2 uses
  %niter12037.ncmp.1 = icmp eq i64 %niter12037.next.1, %unroll_iter12036
  br i1 %niter12037.ncmp.1, label %._crit_edge9077.loopexit9595.unr-lcssa, label %.lr.ph9076.split, !llvm.loop !223

._crit_edge9085:                                  ; preds = %._crit_edge9077, %._crit_edge9053
  %i.gzu = phi <8 x i32> [ zeroinitializer, %._crit_edge9053 ], [ %i.gyr, %._crit_edge9077 ] ; 2 uses
  %.22803.lcssa = phi ptr [ %.02801.lcssa, %._crit_edge9053 ], [ %.32804.lcssa, %._crit_edge9077 ] ; 3 uses
  %.12798.lcssa = phi i32 [ %.02797.lcssa, %._crit_edge9053 ], [ %i.gys, %._crit_edge9077 ] ; 5 uses
  %i.gzv = shufflevector <8 x i32> %i.gzu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gzw = shufflevector <8 x i32> %i.gzu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gzx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gzw)
  %i.gzy = add <4 x i32> %i.gvt, %i.gzv
  %i.gzz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gzy) ; 3 uses
  %i.haa = add nsw i32 %i.gvu, %i.gzx             ; 3 uses
  %i.hab = or disjoint i32 %.12798.lcssa, 1
  %i.hac = icmp slt i32 %i.hab, %i.gpe
  br i1 %i.hac, label %.noexc3465.lr.ph, label %.preheader7704

.noexc3465.lr.ph:                                 ; preds = %._crit_edge9085
  %i.had = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !354
  %i.hae = load ptr, ptr %0, align 8, !tbaa !28, !noalias !354
  %i.haf = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !354
  %i.hag = load i64, ptr %i.bgc, align 8, !tbaa !29, !noalias !354 ; 2 uses
  %factor.op.mul9111 = mul i64 %i.haf, %i.hag
  %i.hah = sext i32 %i.had to i64
  %i.hai = load i32, ptr %i.b, align 4, !tbaa !10
  %i.haj = mul nsw i32 %i.hai, %i.gpc
  %i.hak = sext i32 %i.haj to i64
  %i.hal = mul i64 %i.hag, %i.hah
  %i.ham = mul i64 %i.hal, %i.hak
  %invariant.gep9113 = getelementptr i8, ptr %i.hae, i64 %i.ham
  %i.han = load i32, ptr %i.a, align 4, !tbaa !10
  %i.hao = mul nsw i32 %i.han, %i.gpd
  %i.hap = sext i32 %i.hao to i64
  %invariant.gep9114 = getelementptr i8, ptr %invariant.gep9113, i64 %i.hap
  %i.haq = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.har = icmp sgt i32 %i.haq, 0
  %i.has = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.har, label %.noexc3465.us.preheader, label %.noexc3465.preheader

.noexc3465.preheader:                             ; preds = %.noexc3465.lr.ph
  %i.hat = add nuw nsw i32 %.12798.lcssa, 2
  %i.hau = add nsw i32 %i.gpe, -2
  %i.hav = sub nsw i32 %i.hau, %.12798.lcssa
  %i.haw = and i32 %i.hav, -2
  %i.hax = add i32 %i.hat, %i.haw
  br label %.preheader7704

.noexc3465.us.preheader:                          ; preds = %.noexc3465.lr.ph
  %i.hay = add nsw i32 %i.haq, -1
  %i.haz = zext nneg i32 %i.hay to i64
  %i.hba = shl nuw nsw i64 %i.haz, 2
  %i.hbb = zext nneg i32 %.12798.lcssa to i64
  %wide.trip.count10368 = zext nneg i32 %i.haq to i64 ; 6 uses
  %min.iters.check11229 = icmp ult i32 %i.haq, 8
  %min.iters.check11231 = icmp ult i32 %i.haq, 32
  %i.hbc = and i64 %wide.trip.count10368, 24
  %n.vec11233 = and i64 %wide.trip.count10368, 2147483616 ; 5 uses
  %i.hbd = shl nuw nsw i64 %n.vec11233, 2
  %cmp.n11258 = icmp eq i64 %n.vec11233, %wide.trip.count10368
  %min.epilog.iters.check11265 = icmp eq i64 %i.hbc, 0
  %n.vec11267 = and i64 %wide.trip.count10368, 2147483640 ; 4 uses
  %i.hbe = shl nuw nsw i64 %n.vec11267, 2
  %cmp.n11281 = icmp eq i64 %n.vec11267, %wide.trip.count10368
  br label %iter.check11262

iter.check11262:                                  ; preds = %.noexc3465.us.preheader, %._crit_edge9099.us
  %indvars.iv10370 = phi i64 [ %i.hbb, %.noexc3465.us.preheader ], [ %indvars.iv.next10371, %._crit_edge9099.us ] ; 2 uses
  %.428059105.us = phi ptr [ %.22803.lcssa, %.noexc3465.us.preheader ], [ %scevgep10366, %._crit_edge9099.us ] ; 7 uses
  %.028099104.us = phi i32 [ %i.haa, %.noexc3465.us.preheader ], [ %.lcssa11032, %._crit_edge9099.us ] ; 3 uses
  %.028139103.us = phi i32 [ %i.gzz, %.noexc3465.us.preheader ], [ %.lcssa11033, %._crit_edge9099.us ] ; 3 uses
  %.reass9112.us = mul i64 %factor.op.mul9111, %indvars.iv10370
  %gep9115.us = getelementptr i8, ptr %invariant.gep9114, i64 %.reass9112.us ; 41 uses
  br i1 %min.iters.check11229, label %vec.epilog.scalar.ph11263.preheader, label %vector.main.loop.iter.check11230

vector.main.loop.iter.check11230:                 ; preds = %iter.check11262
  br i1 %min.iters.check11231, label %vec.epilog.ph11266, label %vector.ph11232

vector.ph11232:                                   ; preds = %vector.main.loop.iter.check11230
  %i.hbf = getelementptr i8, ptr %.428059105.us, i64 %i.hbd
  %i.hbg = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028099104.us, i64 0
  %i.hbh = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028139103.us, i64 0
  br label %vector.body11234

vector.body11234:                                 ; preds = %vector.body11234, %vector.ph11232
  %index11235 = phi i64 [ 0, %vector.ph11232 ], [ %index.next11254, %vector.body11234 ] ; 3 uses
  %vec.phi11236 = phi <16 x i32> [ %i.hbg, %vector.ph11232 ], [ %i.hle, %vector.body11234 ]
  %vec.phi11237 = phi <16 x i32> [ zeroinitializer, %vector.ph11232 ], [ %i.hlf, %vector.body11234 ]
  %vec.phi11238 = phi <16 x i32> [ %i.hbh, %vector.ph11232 ], [ %i.hky, %vector.body11234 ]
  %vec.phi11239 = phi <16 x i32> [ zeroinitializer, %vector.ph11232 ], [ %i.hkz, %vector.body11234 ]
  %i.hbi = shl i64 %index11235, 2                 ; 2 uses
  %next.gep11240 = getelementptr i8, ptr %.428059105.us, i64 %i.hbi
  %i.hbj = getelementptr i8, ptr %.428059105.us, i64 %i.hbi
  %next.gep11241 = getelementptr i8, ptr %i.hbj, i64 64
  %i.hbk = getelementptr inbounds nuw [4 x i8], ptr %i.has, i64 %index11235 ; 2 uses
  %i.hbl = getelementptr inbounds nuw i8, ptr %i.hbk, i64 64
  %wide.load11242 = load <16 x i32>, ptr %i.hbk, align 4, !tbaa !10
  %wide.load11243 = load <16 x i32>, ptr %i.hbl, align 4, !tbaa !10
  %i.hbm = sext <16 x i32> %wide.load11242 to <16 x i64> ; 16 uses
  %i.hbn = sext <16 x i32> %wide.load11243 to <16 x i64> ; 16 uses
  %i.hbo = extractelement <16 x i64> %i.hbm, i64 0
  %i.hbp = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hbo ; 2 uses
  %i.hbq = extractelement <16 x i64> %i.hbm, i64 1
  %i.hbr = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hbq ; 2 uses
  %i.hbs = extractelement <16 x i64> %i.hbm, i64 2
  %i.hbt = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hbs ; 2 uses
  %i.hbu = extractelement <16 x i64> %i.hbm, i64 3
  %i.hbv = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hbu ; 2 uses
  %i.hbw = extractelement <16 x i64> %i.hbm, i64 4
  %i.hbx = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hbw ; 2 uses
  %i.hby = extractelement <16 x i64> %i.hbm, i64 5
  %i.hbz = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hby ; 2 uses
  %i.hca = extractelement <16 x i64> %i.hbm, i64 6
  %i.hcb = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hca ; 2 uses
  %i.hcc = extractelement <16 x i64> %i.hbm, i64 7
  %i.hcd = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcc ; 2 uses
  %i.hce = extractelement <16 x i64> %i.hbm, i64 8
  %i.hcf = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hce ; 2 uses
  %i.hcg = extractelement <16 x i64> %i.hbm, i64 9
  %i.hch = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcg ; 2 uses
  %i.hci = extractelement <16 x i64> %i.hbm, i64 10
  %i.hcj = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hci ; 2 uses
  %i.hck = extractelement <16 x i64> %i.hbm, i64 11
  %i.hcl = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hck ; 2 uses
  %i.hcm = extractelement <16 x i64> %i.hbm, i64 12
  %i.hcn = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcm ; 2 uses
  %i.hco = extractelement <16 x i64> %i.hbm, i64 13
  %i.hcp = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hco ; 2 uses
  %i.hcq = extractelement <16 x i64> %i.hbm, i64 14
  %i.hcr = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcq ; 2 uses
  %i.hcs = extractelement <16 x i64> %i.hbm, i64 15
  %i.hct = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcs ; 2 uses
  %i.hcu = extractelement <16 x i64> %i.hbn, i64 0
  %i.hcv = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcu ; 2 uses
  %i.hcw = extractelement <16 x i64> %i.hbn, i64 1
  %i.hcx = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcw ; 2 uses
  %i.hcy = extractelement <16 x i64> %i.hbn, i64 2
  %i.hcz = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hcy ; 2 uses
  %i.hda = extractelement <16 x i64> %i.hbn, i64 3
  %i.hdb = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hda ; 2 uses
  %i.hdc = extractelement <16 x i64> %i.hbn, i64 4
  %i.hdd = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdc ; 2 uses
  %i.hde = extractelement <16 x i64> %i.hbn, i64 5
  %i.hdf = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hde ; 2 uses
  %i.hdg = extractelement <16 x i64> %i.hbn, i64 6
  %i.hdh = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdg ; 2 uses
  %i.hdi = extractelement <16 x i64> %i.hbn, i64 7
  %i.hdj = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdi ; 2 uses
  %i.hdk = extractelement <16 x i64> %i.hbn, i64 8
  %i.hdl = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdk ; 2 uses
  %i.hdm = extractelement <16 x i64> %i.hbn, i64 9
  %i.hdn = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdm ; 2 uses
  %i.hdo = extractelement <16 x i64> %i.hbn, i64 10
  %i.hdp = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdo ; 2 uses
  %i.hdq = extractelement <16 x i64> %i.hbn, i64 11
  %i.hdr = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdq ; 2 uses
  %i.hds = extractelement <16 x i64> %i.hbn, i64 12
  %i.hdt = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hds ; 2 uses
  %i.hdu = extractelement <16 x i64> %i.hbn, i64 13
  %i.hdv = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdu ; 2 uses
  %i.hdw = extractelement <16 x i64> %i.hbn, i64 14
  %i.hdx = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdw ; 2 uses
  %i.hdy = extractelement <16 x i64> %i.hbn, i64 15
  %i.hdz = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hdy ; 2 uses
  %i.hea = load i8, ptr %i.hbp, align 1, !tbaa !30
  %i.heb = load i8, ptr %i.hbr, align 1, !tbaa !30
  %i.hec = load i8, ptr %i.hbt, align 1, !tbaa !30
  %i.hed = load i8, ptr %i.hbv, align 1, !tbaa !30
  %i.hee = load i8, ptr %i.hbx, align 1, !tbaa !30
  %i.hef = load i8, ptr %i.hbz, align 1, !tbaa !30
  %i.heg = load i8, ptr %i.hcb, align 1, !tbaa !30
  %i.heh = load i8, ptr %i.hcd, align 1, !tbaa !30
  %i.hei = load i8, ptr %i.hcf, align 1, !tbaa !30
  %i.hej = load i8, ptr %i.hch, align 1, !tbaa !30
  %i.hek = load i8, ptr %i.hcj, align 1, !tbaa !30
  %i.hel = load i8, ptr %i.hcl, align 1, !tbaa !30
  %i.hem = load i8, ptr %i.hcn, align 1, !tbaa !30
  %i.hen = load i8, ptr %i.hcp, align 1, !tbaa !30
  %i.heo = load i8, ptr %i.hcr, align 1, !tbaa !30
  %i.hep = load i8, ptr %i.hct, align 1, !tbaa !30
  %i.heq = insertelement <16 x i8> poison, i8 %i.hea, i64 0
  %i.her = insertelement <16 x i8> %i.heq, i8 %i.heb, i64 1
  %i.hes = insertelement <16 x i8> %i.her, i8 %i.hec, i64 2
  %i.het = insertelement <16 x i8> %i.hes, i8 %i.hed, i64 3
  %i.heu = insertelement <16 x i8> %i.het, i8 %i.hee, i64 4
  %i.hev = insertelement <16 x i8> %i.heu, i8 %i.hef, i64 5
  %i.hew = insertelement <16 x i8> %i.hev, i8 %i.heg, i64 6
  %i.hex = insertelement <16 x i8> %i.hew, i8 %i.heh, i64 7
  %i.hey = insertelement <16 x i8> %i.hex, i8 %i.hei, i64 8
  %i.hez = insertelement <16 x i8> %i.hey, i8 %i.hej, i64 9
  %i.hfa = insertelement <16 x i8> %i.hez, i8 %i.hek, i64 10
  %i.hfb = insertelement <16 x i8> %i.hfa, i8 %i.hel, i64 11
  %i.hfc = insertelement <16 x i8> %i.hfb, i8 %i.hem, i64 12
  %i.hfd = insertelement <16 x i8> %i.hfc, i8 %i.hen, i64 13
  %i.hfe = insertelement <16 x i8> %i.hfd, i8 %i.heo, i64 14
  %i.hff = insertelement <16 x i8> %i.hfe, i8 %i.hep, i64 15
  %i.hfg = load i8, ptr %i.hcv, align 1, !tbaa !30
  %i.hfh = load i8, ptr %i.hcx, align 1, !tbaa !30
  %i.hfi = load i8, ptr %i.hcz, align 1, !tbaa !30
  %i.hfj = load i8, ptr %i.hdb, align 1, !tbaa !30
  %i.hfk = load i8, ptr %i.hdd, align 1, !tbaa !30
  %i.hfl = load i8, ptr %i.hdf, align 1, !tbaa !30
  %i.hfm = load i8, ptr %i.hdh, align 1, !tbaa !30
  %i.hfn = load i8, ptr %i.hdj, align 1, !tbaa !30
  %i.hfo = load i8, ptr %i.hdl, align 1, !tbaa !30
  %i.hfp = load i8, ptr %i.hdn, align 1, !tbaa !30
  %i.hfq = load i8, ptr %i.hdp, align 1, !tbaa !30
  %i.hfr = load i8, ptr %i.hdr, align 1, !tbaa !30
  %i.hfs = load i8, ptr %i.hdt, align 1, !tbaa !30
  %i.hft = load i8, ptr %i.hdv, align 1, !tbaa !30
  %i.hfu = load i8, ptr %i.hdx, align 1, !tbaa !30
  %i.hfv = load i8, ptr %i.hdz, align 1, !tbaa !30
  %i.hfw = insertelement <16 x i8> poison, i8 %i.hfg, i64 0
  %i.hfx = insertelement <16 x i8> %i.hfw, i8 %i.hfh, i64 1
  %i.hfy = insertelement <16 x i8> %i.hfx, i8 %i.hfi, i64 2
  %i.hfz = insertelement <16 x i8> %i.hfy, i8 %i.hfj, i64 3
  %i.hga = insertelement <16 x i8> %i.hfz, i8 %i.hfk, i64 4
  %i.hgb = insertelement <16 x i8> %i.hga, i8 %i.hfl, i64 5
  %i.hgc = insertelement <16 x i8> %i.hgb, i8 %i.hfm, i64 6
  %i.hgd = insertelement <16 x i8> %i.hgc, i8 %i.hfn, i64 7
  %i.hge = insertelement <16 x i8> %i.hgd, i8 %i.hfo, i64 8
  %i.hgf = insertelement <16 x i8> %i.hge, i8 %i.hfp, i64 9
  %i.hgg = insertelement <16 x i8> %i.hgf, i8 %i.hfq, i64 10
  %i.hgh = insertelement <16 x i8> %i.hgg, i8 %i.hfr, i64 11
  %i.hgi = insertelement <16 x i8> %i.hgh, i8 %i.hfs, i64 12
  %i.hgj = insertelement <16 x i8> %i.hgi, i8 %i.hft, i64 13
  %i.hgk = insertelement <16 x i8> %i.hgj, i8 %i.hfu, i64 14
  %i.hgl = insertelement <16 x i8> %i.hgk, i8 %i.hfv, i64 15
  %i.hgm = sext <16 x i8> %i.hff to <16 x i32>    ; 2 uses
  %i.hgn = sext <16 x i8> %i.hgl to <16 x i32>    ; 2 uses
  %wide.vec11244 = load <64 x i8>, ptr %next.gep11240, align 1, !tbaa !30 ; 4 uses
  %strided.vec11245 = shufflevector <64 x i8> %wide.vec11244, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11246 = shufflevector <64 x i8> %wide.vec11244, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11247 = shufflevector <64 x i8> %wide.vec11244, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11248 = shufflevector <64 x i8> %wide.vec11244, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec11249 = load <64 x i8>, ptr %next.gep11241, align 1, !tbaa !30 ; 4 uses
  %strided.vec11250 = shufflevector <64 x i8> %wide.vec11249, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11251 = shufflevector <64 x i8> %wide.vec11249, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11252 = shufflevector <64 x i8> %wide.vec11249, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11253 = shufflevector <64 x i8> %wide.vec11249, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.hgo = sext <16 x i8> %strided.vec11245 to <16 x i32>
  %i.hgp = sext <16 x i8> %strided.vec11250 to <16 x i32>
end_hunk_5
begin_hunk_6_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.jfo = sext i32 %i.jfn to i64                 ; 2 uses
  %i.jfp = getelementptr inbounds i8, ptr %gep9405, i64 %i.jfo
  %i.jfq = getelementptr inbounds i8, ptr %gep9410, i64 %i.jfo
  %i.jfr = load <8 x i8>, ptr %i.jfp, align 1, !tbaa !30
  %i.jfs = load <8 x i8>, ptr %i.jfq, align 1, !tbaa !30
  %i.jft = sext <8 x i8> %i.jfr to <8 x i16>
  %i.jfu = sext <8 x i8> %i.jfs to <8 x i16>
  %i.jfv = load <8 x i8>, ptr %.327359382.us, align 1, !tbaa !30
  %i.jfw = sext <8 x i8> %i.jfv to <8 x i16>      ; 2 uses
  %i.jfx = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.us, <8 x i16> %i.jft, <8 x i16> %i.jfw)
  %i.jfy = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.us, <8 x i16> %i.jfu, <8 x i16> %i.jfw)
  %i.jfz = getelementptr inbounds nuw i8, ptr %.327359382.us, i64 8
  %i.jga = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv10470
  %i.jgb = getelementptr inbounds nuw i8, ptr %i.jga, i64 4
  %i.jgc = load i32, ptr %i.jgb, align 4, !tbaa !10
  %i.jgd = sext i32 %i.jgc to i64                 ; 2 uses
  %i.jge = getelementptr inbounds i8, ptr %gep9405, i64 %i.jgd
  %i.jgf = getelementptr inbounds i8, ptr %gep9410, i64 %i.jgd
  %i.jgg = load <8 x i8>, ptr %i.jge, align 1, !tbaa !30
  %i.jgh = load <8 x i8>, ptr %i.jgf, align 1, !tbaa !30
  %i.jgi = sext <8 x i8> %i.jgg to <8 x i16>
  %i.jgj = sext <8 x i8> %i.jgh to <8 x i16>
  %i.jgk = load <8 x i8>, ptr %i.jfz, align 1, !tbaa !30
  %i.jgl = sext <8 x i8> %i.jgk to <8 x i16>      ; 2 uses
  %i.jgm = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jfx, <8 x i16> %i.jgi, <8 x i16> %i.jgl) ; 3 uses
  %i.jgn = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jfy, <8 x i16> %i.jgj, <8 x i16> %i.jgl) ; 3 uses
  %i.jgo = getelementptr inbounds nuw i8, ptr %.327359382.us, i64 16 ; 2 uses
  %indvars.iv.next10471.1 = add nuw nsw i64 %indvars.iv10470, 2 ; 2 uses
  %niter12071.next.1 = add i64 %niter12071, 2     ; 2 uses
  %niter12071.ncmp.1 = icmp eq i64 %niter12071.next.1, %unroll_iter12070
  br i1 %niter12071.ncmp.1, label %._crit_edge9385.loopexit.unr-lcssa, label %.lr.ph9384.split.us, !llvm.loop !270

._crit_edge9385.loopexit.unr-lcssa:               ; preds = %.lr.ph9384.split.us
  br i1 %lcmp.mod12066.not, label %._crit_edge9385.loopexit, label %.lr.ph9384.split.us.epil.preheader

.lr.ph9384.split.us.epil.preheader:               ; preds = %._crit_edge9385.loopexit.unr-lcssa, %.lr.ph9384.split.us.preheader
  %indvars.iv10470.epil.init = phi i64 [ 0, %.lr.ph9384.split.us.preheader ], [ %indvars.iv.next10471.1, %._crit_edge9385.loopexit.unr-lcssa ]
  %.327359382.us.epil.init = phi ptr [ %.227349394, %.lr.ph9384.split.us.preheader ], [ %i.jgo, %._crit_edge9385.loopexit.unr-lcssa ]
  %.174519381.us.epil.init = phi <4 x i32> [ %i.jfi, %.lr.ph9384.split.us.preheader ], [ %i.jgn, %._crit_edge9385.loopexit.unr-lcssa ]
  %.174539380.us.epil.init = phi <4 x i32> [ %i.jfj, %.lr.ph9384.split.us.preheader ], [ %i.jgm, %._crit_edge9385.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12069)
  %i.jgp = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv10470.epil.init
  %i.jgq = load i32, ptr %i.jgp, align 4, !tbaa !10
  %i.jgr = sext i32 %i.jgq to i64                 ; 2 uses
  %i.jgs = getelementptr inbounds i8, ptr %gep9405, i64 %i.jgr
  %i.jgt = getelementptr inbounds i8, ptr %gep9410, i64 %i.jgr
  %i.jgu = load <8 x i8>, ptr %i.jgs, align 1, !tbaa !30
  %i.jgv = load <8 x i8>, ptr %i.jgt, align 1, !tbaa !30
  %i.jgw = sext <8 x i8> %i.jgu to <8 x i16>
  %i.jgx = sext <8 x i8> %i.jgv to <8 x i16>
  %i.jgy = load <8 x i8>, ptr %.327359382.us.epil.init, align 1, !tbaa !30
  %i.jgz = sext <8 x i8> %i.jgy to <8 x i16>      ; 2 uses
  %i.jha = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.us.epil.init, <8 x i16> %i.jgw, <8 x i16> %i.jgz)
  %i.jhb = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.us.epil.init, <8 x i16> %i.jgx, <8 x i16> %i.jgz)
  br label %._crit_edge9385.loopexit

._crit_edge9385.loopexit:                         ; preds = %._crit_edge9385.loopexit.unr-lcssa, %.lr.ph9384.split.us.epil.preheader
  %.lcssa11658 = phi <4 x i32> [ %i.jgm, %._crit_edge9385.loopexit.unr-lcssa ], [ %i.jha, %.lr.ph9384.split.us.epil.preheader ]
  %.lcssa11657 = phi <4 x i32> [ %i.jgn, %._crit_edge9385.loopexit.unr-lcssa ], [ %i.jhb, %.lr.ph9384.split.us.epil.preheader ]
  %scevgep10472 = getelementptr i8, ptr %.227349394, i64 8
  %scevgep10473 = getelementptr i8, ptr %scevgep10472, i64 %i.jfe
  br label %._crit_edge9385

._crit_edge9385.loopexit9583.unr-lcssa:           ; preds = %.lr.ph9384.split
  br i1 %lcmp.mod12059.not, label %._crit_edge9385.loopexit9583, label %.lr.ph9384.split.epil.preheader

.lr.ph9384.split.epil.preheader:                  ; preds = %._crit_edge9385.loopexit9583.unr-lcssa, %.lr.ph9384.split.preheader
  %indvars.iv10463.epil.init = phi i64 [ 0, %.lr.ph9384.split.preheader ], [ %indvars.iv.next10464.1, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.327359382.epil.init = phi ptr [ %.227349394, %.lr.ph9384.split.preheader ], [ %i.jjc, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.174519381.epil.init = phi <4 x i32> [ %i.jfi, %.lr.ph9384.split.preheader ], [ %i.jjb, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.174539380.epil.init = phi <4 x i32> [ %i.jfj, %.lr.ph9384.split.preheader ], [ %i.jja, %._crit_edge9385.loopexit9583.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12062)
  %i.jhc = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv10463.epil.init
  %i.jhd = load i32, ptr %i.jhc, align 4, !tbaa !10
  %i.jhe = sext i32 %i.jhd to i64                 ; 2 uses
  %i.jhf = getelementptr inbounds i8, ptr %gep9405, i64 %i.jhe
  %i.jhg = getelementptr inbounds i8, ptr %gep9410, i64 %i.jhe
  %i.jhh = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jhf, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jhi = trunc <8 x i32> %i.jhh to <8 x i8>
  %i.jhj = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jhg, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jhk = trunc <8 x i32> %i.jhj to <8 x i8>
  %i.jhl = sext <8 x i8> %i.jhi to <8 x i16>
  %i.jhm = sext <8 x i8> %i.jhk to <8 x i16>
  %i.jhn = load <8 x i8>, ptr %.327359382.epil.init, align 1, !tbaa !30
  %i.jho = sext <8 x i8> %i.jhn to <8 x i16>      ; 2 uses
  %i.jhp = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.epil.init, <8 x i16> %i.jhl, <8 x i16> %i.jho)
  %i.jhq = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.epil.init, <8 x i16> %i.jhm, <8 x i16> %i.jho)
  br label %._crit_edge9385.loopexit9583

._crit_edge9385.loopexit9583:                     ; preds = %._crit_edge9385.loopexit9583.unr-lcssa, %.lr.ph9384.split.epil.preheader
  %.lcssa11656 = phi <4 x i32> [ %i.jja, %._crit_edge9385.loopexit9583.unr-lcssa ], [ %i.jhp, %.lr.ph9384.split.epil.preheader ]
  %.lcssa11655 = phi <4 x i32> [ %i.jjb, %._crit_edge9385.loopexit9583.unr-lcssa ], [ %i.jhq, %.lr.ph9384.split.epil.preheader ]
  %scevgep10465 = getelementptr i8, ptr %.227349394, i64 8
  %scevgep10466 = getelementptr i8, ptr %scevgep10465, i64 %i.jfe
  br label %._crit_edge9385

._crit_edge9385:                                  ; preds = %._crit_edge9385.loopexit9583, %._crit_edge9385.loopexit, %.noexc3421
  %i.jhr = phi <4 x i32> [ %i.jfj, %.noexc3421 ], [ %.lcssa11658, %._crit_edge9385.loopexit ], [ %.lcssa11656, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %i.jhs = phi <4 x i32> [ %i.jfi, %.noexc3421 ], [ %.lcssa11657, %._crit_edge9385.loopexit ], [ %.lcssa11655, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %.32735.lcssa = phi ptr [ %.227349394, %.noexc3421 ], [ %scevgep10473, %._crit_edge9385.loopexit ], [ %scevgep10466, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %i.jht = add nuw nsw i32 %.127299395, 8         ; 3 uses
  %i.jhu = or disjoint i32 %i.jht, 7
  %i.jhv = icmp slt i32 %i.jhu, %i.ixp
  br i1 %i.jhv, label %.noexc3421, label %._crit_edge9396.loopexit, !llvm.loop !271

.lr.ph9384.split:                                 ; preds = %.lr.ph9384.split.preheader, %.lr.ph9384.split
  %indvars.iv10463 = phi i64 [ %indvars.iv.next10464.1, %.lr.ph9384.split ], [ 0, %.lr.ph9384.split.preheader ] ; 3 uses
  %.327359382 = phi ptr [ %i.jjc, %.lr.ph9384.split ], [ %.227349394, %.lr.ph9384.split.preheader ] ; 3 uses
  %.174519381 = phi <4 x i32> [ %i.jjb, %.lr.ph9384.split ], [ %i.jfi, %.lr.ph9384.split.preheader ]
  %.174539380 = phi <4 x i32> [ %i.jja, %.lr.ph9384.split ], [ %i.jfj, %.lr.ph9384.split.preheader ]
  %niter12064 = phi i64 [ %niter12064.next.1, %.lr.ph9384.split ], [ 0, %.lr.ph9384.split.preheader ]
  %i.jhw = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv10463
  %i.jhx = load i32, ptr %i.jhw, align 4, !tbaa !10
  %i.jhy = sext i32 %i.jhx to i64                 ; 2 uses
  %i.jhz = getelementptr inbounds i8, ptr %gep9405, i64 %i.jhy
  %i.jia = getelementptr inbounds i8, ptr %gep9410, i64 %i.jhy
  %i.jib = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jhz, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jic = trunc <8 x i32> %i.jib to <8 x i8>
  %i.jid = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jia, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jie = trunc <8 x i32> %i.jid to <8 x i8>
  %i.jif = sext <8 x i8> %i.jic to <8 x i16>
  %i.jig = sext <8 x i8> %i.jie to <8 x i16>
  %i.jih = load <8 x i8>, ptr %.327359382, align 1, !tbaa !30
  %i.jii = sext <8 x i8> %i.jih to <8 x i16>      ; 2 uses
  %i.jij = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380, <8 x i16> %i.jif, <8 x i16> %i.jii)
  %i.jik = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381, <8 x i16> %i.jig, <8 x i16> %i.jii)
  %i.jil = getelementptr inbounds nuw i8, ptr %.327359382, i64 8
  %i.jim = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv10463
  %i.jin = getelementptr inbounds nuw i8, ptr %i.jim, i64 4
  %i.jio = load i32, ptr %i.jin, align 4, !tbaa !10
  %i.jip = sext i32 %i.jio to i64                 ; 2 uses
  %i.jiq = getelementptr inbounds i8, ptr %gep9405, i64 %i.jip
  %i.jir = getelementptr inbounds i8, ptr %gep9410, i64 %i.jip
  %i.jis = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jiq, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jit = trunc <8 x i32> %i.jis to <8 x i8>
  %i.jiu = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jir, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.jiv = trunc <8 x i32> %i.jiu to <8 x i8>
  %i.jiw = sext <8 x i8> %i.jit to <8 x i16>
  %i.jix = sext <8 x i8> %i.jiv to <8 x i16>
  %i.jiy = load <8 x i8>, ptr %i.jil, align 1, !tbaa !30
  %i.jiz = sext <8 x i8> %i.jiy to <8 x i16>      ; 2 uses
  %i.jja = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jij, <8 x i16> %i.jiw, <8 x i16> %i.jiz) ; 3 uses
  %i.jjb = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jik, <8 x i16> %i.jix, <8 x i16> %i.jiz) ; 3 uses
  %i.jjc = getelementptr inbounds nuw i8, ptr %.327359382, i64 16 ; 2 uses
  %indvars.iv.next10464.1 = add nuw nsw i64 %indvars.iv10463, 2 ; 2 uses
  %niter12064.next.1 = add i64 %niter12064, 2     ; 2 uses
  %niter12064.ncmp.1 = icmp eq i64 %niter12064.next.1, %unroll_iter12063
  br i1 %niter12064.ncmp.1, label %._crit_edge9385.loopexit9583.unr-lcssa, label %.lr.ph9384.split, !llvm.loop !270

._crit_edge9396.loopexit:                         ; preds = %._crit_edge9385
  %i.jjd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jhr)
  %i.jje = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jhs)
  br label %._crit_edge9396

._crit_edge9396:                                  ; preds = %._crit_edge9396.loopexit, %._crit_edge9365
  %i.jjf = phi i32 [ 0, %._crit_edge9365 ], [ %i.jjd, %._crit_edge9396.loopexit ]
  %i.jjg = phi i32 [ 0, %._crit_edge9365 ], [ %i.jje, %._crit_edge9396.loopexit ]
  %.22734.lcssa = phi ptr [ %.02732.lcssa, %._crit_edge9365 ], [ %.32735.lcssa, %._crit_edge9396.loopexit ] ; 3 uses
  %.12729.lcssa = phi i32 [ %.02728.lcssa, %._crit_edge9365 ], [ %i.jht, %._crit_edge9396.loopexit ] ; 5 uses
  %i.jjh = add nsw i32 %i.jjf, %i.jdv             ; 3 uses
  %i.jji = add nsw i32 %i.jjg, %i.jdw             ; 3 uses
  %i.jjj = or disjoint i32 %.12729.lcssa, 1
  %i.jjk = icmp slt i32 %i.jjj, %i.ixp
  br i1 %i.jjk, label %.noexc3417.lr.ph, label %.preheader7700

.noexc3417.lr.ph:                                 ; preds = %._crit_edge9396
  %i.jjl = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !366
  %i.jjm = load ptr, ptr %0, align 8, !tbaa !28, !noalias !366 ; 2 uses
  %i.jjn = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !366
  %i.jjo = load i64, ptr %i.dqe, align 8, !tbaa !29, !noalias !366 ; 2 uses
  %factor.op.mul9428 = mul i64 %i.jjn, %i.jjo
  %i.jjp = sext i32 %i.jjl to i64
  %i.jjq = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.jjr = extractelement <2 x i32> %i.ixn, i64 1
  %i.jjs = mul nsw i32 %i.jjq, %i.jjr
  %i.jjt = sext i32 %i.jjs to i64
  %i.jju = mul i64 %i.jjo, %i.jjp                 ; 2 uses
  %i.jjv = mul i64 %i.jju, %i.jjt
  %invariant.gep9430 = getelementptr i8, ptr %i.jjm, i64 %i.jjv
  %i.jjw = load i32, ptr %i.a, align 4, !tbaa !10
  %i.jjx = extractelement <2 x i32> %i.ixn, i64 0
  %i.jjy = mul nsw i32 %i.jjq, %i.jjx
  %i.jjz = sext i32 %i.jjy to i64
  %i.jka = mul i64 %i.jju, %i.jjz
  %invariant.gep9435 = getelementptr i8, ptr %i.jjm, i64 %i.jka
  %i.jkb = insertelement <2 x i32> poison, i32 %i.jjw, i64 0
  %i.jkc = shufflevector <2 x i32> %i.jkb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jkd = mul nsw <2 x i32> %i.jkc, %.decomposed12467 ; 2 uses
  %i.jke = extractelement <2 x i32> %i.jkd, i64 1
  %i.jkf = sext i32 %i.jke to i64
  %invariant.gep9431 = getelementptr i8, ptr %invariant.gep9430, i64 %i.jkf
  %i.jkg = extractelement <2 x i32> %i.jkd, i64 0
  %i.jkh = sext i32 %i.jkg to i64
  %invariant.gep9436 = getelementptr i8, ptr %invariant.gep9435, i64 %i.jkh
  %i.jki = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.jkj = icmp sgt i32 %i.jki, 0
  %i.jkk = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.jkj, label %.noexc3417.us.preheader, label %.noexc3417.preheader

.noexc3417.preheader:                             ; preds = %.noexc3417.lr.ph
  %i.jkl = add nuw nsw i32 %.12729.lcssa, 2
  %i.jkm = add nsw i32 %i.ixp, -2
  %i.jkn = sub nsw i32 %i.jkm, %.12729.lcssa
  %i.jko = and i32 %i.jkn, -2
  %i.jkp = add i32 %i.jkl, %i.jko
  br label %.preheader7700

.noexc3417.us.preheader:                          ; preds = %.noexc3417.lr.ph
  %i.jkq = add nsw i32 %i.jki, -1
  %i.jkr = zext nneg i32 %i.jkq to i64
  %i.jks = shl nuw nsw i64 %i.jkr, 1
  %i.jkt = zext nneg i32 %.12729.lcssa to i64
  %wide.trip.count10482 = zext nneg i32 %i.jki to i64 ; 6 uses
  %min.iters.check11553 = icmp ult i32 %i.jki, 16
  %min.iters.check11555 = icmp ult i32 %i.jki, 32
  %i.jku = and i64 %wide.trip.count10482, 16
  %n.vec11557 = and i64 %wide.trip.count10482, 2147483616 ; 5 uses
  %i.jkv = shl nuw nsw i64 %n.vec11557, 1
  %cmp.n11578 = icmp eq i64 %n.vec11557, %wide.trip.count10482
  %min.epilog.iters.check11585.not.not = icmp eq i64 %i.jku, 0
  %n.vec11587 = and i64 %wide.trip.count10482, 2147483632 ; 4 uses
  %i.jkw = shl nuw nsw i64 %n.vec11587, 1
  %cmp.n11599 = icmp eq i64 %n.vec11587, %wide.trip.count10482
  br label %iter.check11582

iter.check11582:                                  ; preds = %.noexc3417.us.preheader, %._crit_edge9416.us
  %indvars.iv10484 = phi i64 [ %i.jkt, %.noexc3417.us.preheader ], [ %indvars.iv.next10485, %._crit_edge9416.us ] ; 2 uses
  %.427369422.us = phi ptr [ %.22734.lcssa, %.noexc3417.us.preheader ], [ %scevgep10480, %._crit_edge9416.us ] ; 7 uses
  %.027409421.us = phi i32 [ %i.jji, %.noexc3417.us.preheader ], [ %.lcssa10962, %._crit_edge9416.us ] ; 3 uses
  %.027449420.us = phi i32 [ %i.jjh, %.noexc3417.us.preheader ], [ %.lcssa10963, %._crit_edge9416.us ] ; 3 uses
  %.reass9429.us = mul i64 %factor.op.mul9428, %indvars.iv10484 ; 2 uses
  %gep9432.us = getelementptr i8, ptr %invariant.gep9431, i64 %.reass9429.us ; 49 uses
  %gep9437.us = getelementptr i8, ptr %invariant.gep9436, i64 %.reass9429.us ; 49 uses
  br i1 %min.iters.check11553, label %vec.epilog.scalar.ph11583.preheader, label %vector.main.loop.iter.check11554

vector.main.loop.iter.check11554:                 ; preds = %iter.check11582
  br i1 %min.iters.check11555, label %vec.epilog.ph11586, label %vector.ph11556

vector.ph11556:                                   ; preds = %vector.main.loop.iter.check11554
  %i.jkx = getelementptr i8, ptr %.427369422.us, i64 %i.jkv
  %i.jky = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027409421.us, i64 0
  %i.jkz = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027449420.us, i64 0
  br label %vector.body11558

vector.body11558:                                 ; preds = %vector.body11558, %vector.ph11556
  %index11559 = phi i64 [ 0, %vector.ph11556 ], [ %index.next11574, %vector.body11558 ] ; 3 uses
  %vec.phi11560 = phi <16 x i32> [ %i.jky, %vector.ph11556 ], [ %i.kcg, %vector.body11558 ]
  %vec.phi11561 = phi <16 x i32> [ zeroinitializer, %vector.ph11556 ], [ %i.kch, %vector.body11558 ]
  %vec.phi11562 = phi <16 x i32> [ %i.jkz, %vector.ph11556 ], [ %i.jvq, %vector.body11558 ]
  %vec.phi11563 = phi <16 x i32> [ zeroinitializer, %vector.ph11556 ], [ %i.jvr, %vector.body11558 ]
  %i.jla = shl i64 %index11559, 1                 ; 2 uses
  %next.gep11564 = getelementptr i8, ptr %.427369422.us, i64 %i.jla
  %i.jlb = getelementptr i8, ptr %.427369422.us, i64 %i.jla
  %next.gep11565 = getelementptr i8, ptr %i.jlb, i64 32
  %i.jlc = getelementptr inbounds nuw [4 x i8], ptr %i.jkk, i64 %index11559 ; 2 uses
  %i.jld = getelementptr inbounds nuw i8, ptr %i.jlc, i64 64
  %wide.load11566 = load <16 x i32>, ptr %i.jlc, align 4, !tbaa !10
  %wide.load11567 = load <16 x i32>, ptr %i.jld, align 4, !tbaa !10
  %i.jle = sext <16 x i32> %wide.load11566 to <16 x i64> ; 16 uses
  %i.jlf = sext <16 x i32> %wide.load11567 to <16 x i64> ; 16 uses
  %i.jlg = extractelement <16 x i64> %i.jle, i64 0 ; 2 uses
  %i.jlh = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlg ; 2 uses
  %i.jli = extractelement <16 x i64> %i.jle, i64 1 ; 2 uses
  %i.jlj = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jli ; 2 uses
  %i.jlk = extractelement <16 x i64> %i.jle, i64 2 ; 2 uses
  %i.jll = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlk ; 2 uses
  %i.jlm = extractelement <16 x i64> %i.jle, i64 3 ; 2 uses
  %i.jln = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlm ; 2 uses
  %i.jlo = extractelement <16 x i64> %i.jle, i64 4 ; 2 uses
  %i.jlp = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlo ; 2 uses
  %i.jlq = extractelement <16 x i64> %i.jle, i64 5 ; 2 uses
  %i.jlr = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlq ; 2 uses
  %i.jls = extractelement <16 x i64> %i.jle, i64 6 ; 2 uses
  %i.jlt = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jls ; 2 uses
  %i.jlu = extractelement <16 x i64> %i.jle, i64 7 ; 2 uses
  %i.jlv = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlu ; 2 uses
  %i.jlw = extractelement <16 x i64> %i.jle, i64 8 ; 2 uses
  %i.jlx = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jlw ; 2 uses
  %i.jly = extractelement <16 x i64> %i.jle, i64 9 ; 2 uses
  %i.jlz = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jly ; 2 uses
  %i.jma = extractelement <16 x i64> %i.jle, i64 10 ; 2 uses
  %i.jmb = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jma ; 2 uses
  %i.jmc = extractelement <16 x i64> %i.jle, i64 11 ; 2 uses
  %i.jmd = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmc ; 2 uses
  %i.jme = extractelement <16 x i64> %i.jle, i64 12 ; 2 uses
  %i.jmf = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jme ; 2 uses
  %i.jmg = extractelement <16 x i64> %i.jle, i64 13 ; 2 uses
  %i.jmh = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmg ; 2 uses
  %i.jmi = extractelement <16 x i64> %i.jle, i64 14 ; 2 uses
  %i.jmj = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmi ; 2 uses
  %i.jmk = extractelement <16 x i64> %i.jle, i64 15 ; 2 uses
  %i.jml = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmk ; 2 uses
  %i.jmm = extractelement <16 x i64> %i.jlf, i64 0 ; 2 uses
  %i.jmn = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmm ; 2 uses
  %i.jmo = extractelement <16 x i64> %i.jlf, i64 1 ; 2 uses
  %i.jmp = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmo ; 2 uses
  %i.jmq = extractelement <16 x i64> %i.jlf, i64 2 ; 2 uses
  %i.jmr = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmq ; 2 uses
  %i.jms = extractelement <16 x i64> %i.jlf, i64 3 ; 2 uses
  %i.jmt = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jms ; 2 uses
  %i.jmu = extractelement <16 x i64> %i.jlf, i64 4 ; 2 uses
  %i.jmv = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmu ; 2 uses
  %i.jmw = extractelement <16 x i64> %i.jlf, i64 5 ; 2 uses
  %i.jmx = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmw ; 2 uses
  %i.jmy = extractelement <16 x i64> %i.jlf, i64 6 ; 2 uses
  %i.jmz = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jmy ; 2 uses
  %i.jna = extractelement <16 x i64> %i.jlf, i64 7 ; 2 uses
  %i.jnb = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jna ; 2 uses
  %i.jnc = extractelement <16 x i64> %i.jlf, i64 8 ; 2 uses
  %i.jnd = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jnc ; 2 uses
  %i.jne = extractelement <16 x i64> %i.jlf, i64 9 ; 2 uses
  %i.jnf = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jne ; 2 uses
  %i.jng = extractelement <16 x i64> %i.jlf, i64 10 ; 2 uses
  %i.jnh = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jng ; 2 uses
  %i.jni = extractelement <16 x i64> %i.jlf, i64 11 ; 2 uses
  %i.jnj = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jni ; 2 uses
  %i.jnk = extractelement <16 x i64> %i.jlf, i64 12 ; 2 uses
  %i.jnl = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jnk ; 2 uses
  %i.jnm = extractelement <16 x i64> %i.jlf, i64 13 ; 2 uses
  %i.jnn = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jnm ; 2 uses
  %i.jno = extractelement <16 x i64> %i.jlf, i64 14 ; 2 uses
  %i.jnp = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jno ; 2 uses
  %i.jnq = extractelement <16 x i64> %i.jlf, i64 15 ; 2 uses
  %i.jnr = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jnq ; 2 uses
  %i.jns = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlg ; 2 uses
  %i.jnt = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jli ; 2 uses
  %i.jnu = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlk ; 2 uses
  %i.jnv = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlm ; 2 uses
  %i.jnw = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlo ; 2 uses
  %i.jnx = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlq ; 2 uses
  %i.jny = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jls ; 2 uses
  %i.jnz = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlu ; 2 uses
  %i.joa = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jlw ; 2 uses
  %i.job = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jly ; 2 uses
  %i.joc = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jma ; 2 uses
  %i.jod = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmc ; 2 uses
  %i.joe = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jme ; 2 uses
  %i.jof = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmg ; 2 uses
  %i.jog = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmi ; 2 uses
  %i.joh = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmk ; 2 uses
  %i.joi = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmm ; 2 uses
  %i.joj = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmo ; 2 uses
  %i.jok = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmq ; 2 uses
  %i.jol = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jms ; 2 uses
  %i.jom = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmu ; 2 uses
  %i.jon = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmw ; 2 uses
  %i.joo = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jmy ; 2 uses
  %i.jop = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jna ; 2 uses
  %i.joq = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jnc ; 2 uses
  %i.jor = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jne ; 2 uses
  %i.jos = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jng ; 2 uses
  %i.jot = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jni ; 2 uses
  %i.jou = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jnk ; 2 uses
  %i.jov = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jnm ; 2 uses
  %i.jow = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jno ; 2 uses
  %i.jox = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jnq ; 2 uses
  %i.joy = load i8, ptr %i.jlh, align 1, !tbaa !30
  %i.joz = load i8, ptr %i.jlj, align 1, !tbaa !30
  %i.jpa = load i8, ptr %i.jll, align 1, !tbaa !30
  %i.jpb = load i8, ptr %i.jln, align 1, !tbaa !30
  %i.jpc = load i8, ptr %i.jlp, align 1, !tbaa !30
  %i.jpd = load i8, ptr %i.jlr, align 1, !tbaa !30
  %i.jpe = load i8, ptr %i.jlt, align 1, !tbaa !30
  %i.jpf = load i8, ptr %i.jlv, align 1, !tbaa !30
  %i.jpg = load i8, ptr %i.jlx, align 1, !tbaa !30
  %i.jph = load i8, ptr %i.jlz, align 1, !tbaa !30
  %i.jpi = load i8, ptr %i.jmb, align 1, !tbaa !30
  %i.jpj = load i8, ptr %i.jmd, align 1, !tbaa !30
  %i.jpk = load i8, ptr %i.jmf, align 1, !tbaa !30
  %i.jpl = load i8, ptr %i.jmh, align 1, !tbaa !30
  %i.jpm = load i8, ptr %i.jmj, align 1, !tbaa !30
  %i.jpn = load i8, ptr %i.jml, align 1, !tbaa !30
  %i.jpo = insertelement <16 x i8> poison, i8 %i.joy, i64 0
  %i.jpp = insertelement <16 x i8> %i.jpo, i8 %i.joz, i64 1
  %i.jpq = insertelement <16 x i8> %i.jpp, i8 %i.jpa, i64 2
  %i.jpr = insertelement <16 x i8> %i.jpq, i8 %i.jpb, i64 3
  %i.jps = insertelement <16 x i8> %i.jpr, i8 %i.jpc, i64 4
  %i.jpt = insertelement <16 x i8> %i.jps, i8 %i.jpd, i64 5
  %i.jpu = insertelement <16 x i8> %i.jpt, i8 %i.jpe, i64 6
  %i.jpv = insertelement <16 x i8> %i.jpu, i8 %i.jpf, i64 7
  %i.jpw = insertelement <16 x i8> %i.jpv, i8 %i.jpg, i64 8
  %i.jpx = insertelement <16 x i8> %i.jpw, i8 %i.jph, i64 9
  %i.jpy = insertelement <16 x i8> %i.jpx, i8 %i.jpi, i64 10
  %i.jpz = insertelement <16 x i8> %i.jpy, i8 %i.jpj, i64 11
  %i.jqa = insertelement <16 x i8> %i.jpz, i8 %i.jpk, i64 12
  %i.jqb = insertelement <16 x i8> %i.jqa, i8 %i.jpl, i64 13
  %i.jqc = insertelement <16 x i8> %i.jqb, i8 %i.jpm, i64 14
  %i.jqd = insertelement <16 x i8> %i.jqc, i8 %i.jpn, i64 15
  %i.jqe = load i8, ptr %i.jmn, align 1, !tbaa !30
  %i.jqf = load i8, ptr %i.jmp, align 1, !tbaa !30
  %i.jqg = load i8, ptr %i.jmr, align 1, !tbaa !30
  %i.jqh = load i8, ptr %i.jmt, align 1, !tbaa !30
  %i.jqi = load i8, ptr %i.jmv, align 1, !tbaa !30
  %i.jqj = load i8, ptr %i.jmx, align 1, !tbaa !30
  %i.jqk = load i8, ptr %i.jmz, align 1, !tbaa !30
  %i.jql = load i8, ptr %i.jnb, align 1, !tbaa !30
  %i.jqm = load i8, ptr %i.jnd, align 1, !tbaa !30
  %i.jqn = load i8, ptr %i.jnf, align 1, !tbaa !30
  %i.jqo = load i8, ptr %i.jnh, align 1, !tbaa !30
  %i.jqp = load i8, ptr %i.jnj, align 1, !tbaa !30
  %i.jqq = load i8, ptr %i.jnl, align 1, !tbaa !30
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %invariant.gep9534 = getelementptr i8, ptr %invariant.gep9533, i64 %i.lhh
  %i.lhi = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.lhj = icmp sgt i32 %i.lhi, 0
  %i.lhk = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.lhl = icmp eq i32 %i.lgt, 8
  %i.lhm = add i32 %i.lhi, -1
  %i.lhn = zext i32 %i.lhm to i64
  %i.lho = shl nuw nsw i64 %i.lhn, 3              ; 2 uses
  %wide.trip.count10523 = zext i32 %i.lhi to i64  ; 5 uses
  %i.lhp = add nsw i64 %wide.trip.count10523, -1  ; 2 uses
  %xtraiter12090 = and i64 %wide.trip.count10523, 1
  %i.lhq = icmp eq i64 %i.lhp, 0
  %unroll_iter12094 = and i64 %wide.trip.count10523, 2147483646
  %lcmp.mod12091.not = icmp eq i64 %xtraiter12090, 0
  %lcmp.mod12093 = trunc i32 %i.lhi to i1
  %xtraiter12096 = and i64 %wide.trip.count10523, 1
  %i.lhr = icmp eq i64 %i.lhp, 0
  %unroll_iter12100 = and i64 %wide.trip.count10523, 2147483646
  %lcmp.mod12097.not = icmp eq i64 %xtraiter12096, 0
  %lcmp.mod12099 = trunc i32 %i.lhi to i1
  br label %.noexc3405

.noexc3405:                                       ; preds = %.noexc3405.lr.ph, %._crit_edge9519
  %.19526 = phi i32 [ %.02513.lcssa, %.noexc3405.lr.ph ], [ %i.ljk, %._crit_edge9519 ] ; 2 uses
  %.225169525 = phi ptr [ %.02514.lcssa, %.noexc3405.lr.ph ], [ %.32517.lcssa, %._crit_edge9519 ] ; 7 uses
  %i.lhs = phi <4 x i32> [ zeroinitializer, %.noexc3405.lr.ph ], [ %i.ljj, %._crit_edge9519 ] ; 5 uses
  %i.lht = sdiv i32 %.19526, %i.lgt
  %i.lhu = sext i32 %i.lht to i64
  %.reass9532 = mul i64 %factor.op.mul9531, %i.lhu
  %gep9535 = getelementptr i8, ptr %invariant.gep9534, i64 %.reass9532 ; 6 uses
  br i1 %i.lhj, label %.lr.ph9518, label %._crit_edge9519

.lr.ph9518:                                       ; preds = %.noexc3405
  br i1 %i.lhl, label %.lr.ph9518.split.us.preheader, label %.lr.ph9518.split.preheader

.lr.ph9518.split.preheader:                       ; preds = %.lr.ph9518
  br i1 %i.lhq, label %.lr.ph9518.split.epil.preheader, label %.lr.ph9518.split

.lr.ph9518.split.us.preheader:                    ; preds = %.lr.ph9518
  br i1 %i.lhr, label %.lr.ph9518.split.us.epil.preheader, label %.lr.ph9518.split.us

.lr.ph9518.split.us:                              ; preds = %.lr.ph9518.split.us.preheader, %.lr.ph9518.split.us
  %indvars.iv10525 = phi i64 [ %indvars.iv.next10526.1, %.lr.ph9518.split.us ], [ 0, %.lr.ph9518.split.us.preheader ] ; 3 uses
  %.325179516.us = phi ptr [ %i.lip, %.lr.ph9518.split.us ], [ %.225169525, %.lr.ph9518.split.us.preheader ] ; 3 uses
  %.174229515.us = phi <4 x i32> [ %i.lio, %.lr.ph9518.split.us ], [ %i.lhs, %.lr.ph9518.split.us.preheader ]
  %niter12101 = phi i64 [ %niter12101.next.1, %.lr.ph9518.split.us ], [ 0, %.lr.ph9518.split.us.preheader ]
  %i.lhv = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10525
  %i.lhw = load i32, ptr %i.lhv, align 4, !tbaa !10
  %i.lhx = sext i32 %i.lhw to i64
  %i.lhy = getelementptr inbounds i8, ptr %gep9535, i64 %i.lhx
  %i.lhz = load <8 x i8>, ptr %i.lhy, align 1, !tbaa !30
  %i.lia = sext <8 x i8> %i.lhz to <8 x i16>
  %i.lib = load <8 x i8>, ptr %.325179516.us, align 1, !tbaa !30
  %i.lic = sext <8 x i8> %i.lib to <8 x i16>
  %i.lid = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.us, <8 x i16> %i.lia, <8 x i16> %i.lic)
  %i.lie = getelementptr inbounds nuw i8, ptr %.325179516.us, i64 8
  %i.lif = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10525
  %i.lig = getelementptr inbounds nuw i8, ptr %i.lif, i64 4
  %i.lih = load i32, ptr %i.lig, align 4, !tbaa !10
  %i.lii = sext i32 %i.lih to i64
  %i.lij = getelementptr inbounds i8, ptr %gep9535, i64 %i.lii
  %i.lik = load <8 x i8>, ptr %i.lij, align 1, !tbaa !30
  %i.lil = sext <8 x i8> %i.lik to <8 x i16>
  %i.lim = load <8 x i8>, ptr %i.lie, align 1, !tbaa !30
  %i.lin = sext <8 x i8> %i.lim to <8 x i16>
  %i.lio = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.lid, <8 x i16> %i.lil, <8 x i16> %i.lin) ; 3 uses
  %i.lip = getelementptr inbounds nuw i8, ptr %.325179516.us, i64 16 ; 2 uses
  %indvars.iv.next10526.1 = add nuw nsw i64 %indvars.iv10525, 2 ; 2 uses
  %niter12101.next.1 = add i64 %niter12101, 2     ; 2 uses
  %niter12101.ncmp.1 = icmp eq i64 %niter12101.next.1, %unroll_iter12100
  br i1 %niter12101.ncmp.1, label %._crit_edge9519.loopexit.unr-lcssa, label %.lr.ph9518.split.us, !llvm.loop !291

._crit_edge9519.loopexit.unr-lcssa:               ; preds = %.lr.ph9518.split.us
  br i1 %lcmp.mod12097.not, label %._crit_edge9519.loopexit, label %.lr.ph9518.split.us.epil.preheader

.lr.ph9518.split.us.epil.preheader:               ; preds = %._crit_edge9519.loopexit.unr-lcssa, %.lr.ph9518.split.us.preheader
  %indvars.iv10525.epil.init = phi i64 [ 0, %.lr.ph9518.split.us.preheader ], [ %indvars.iv.next10526.1, %._crit_edge9519.loopexit.unr-lcssa ]
  %.325179516.us.epil.init = phi ptr [ %.225169525, %.lr.ph9518.split.us.preheader ], [ %i.lip, %._crit_edge9519.loopexit.unr-lcssa ]
  %.174229515.us.epil.init = phi <4 x i32> [ %i.lhs, %.lr.ph9518.split.us.preheader ], [ %i.lio, %._crit_edge9519.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12099)
  %i.liq = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10525.epil.init
  %i.lir = load i32, ptr %i.liq, align 4, !tbaa !10
  %i.lis = sext i32 %i.lir to i64
  %i.lit = getelementptr inbounds i8, ptr %gep9535, i64 %i.lis
  %i.liu = load <8 x i8>, ptr %i.lit, align 1, !tbaa !30
  %i.liv = sext <8 x i8> %i.liu to <8 x i16>
  %i.liw = load <8 x i8>, ptr %.325179516.us.epil.init, align 1, !tbaa !30
  %i.lix = sext <8 x i8> %i.liw to <8 x i16>
  %i.liy = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.us.epil.init, <8 x i16> %i.liv, <8 x i16> %i.lix)
  br label %._crit_edge9519.loopexit

._crit_edge9519.loopexit:                         ; preds = %._crit_edge9519.loopexit.unr-lcssa, %.lr.ph9518.split.us.epil.preheader
  %.lcssa11684 = phi <4 x i32> [ %i.lio, %._crit_edge9519.loopexit.unr-lcssa ], [ %i.liy, %.lr.ph9518.split.us.epil.preheader ]
  %scevgep10527 = getelementptr i8, ptr %.225169525, i64 8
  %scevgep10528 = getelementptr i8, ptr %scevgep10527, i64 %i.lho
  br label %._crit_edge9519

._crit_edge9519.loopexit9580.unr-lcssa:           ; preds = %.lr.ph9518.split
  br i1 %lcmp.mod12091.not, label %._crit_edge9519.loopexit9580, label %.lr.ph9518.split.epil.preheader

.lr.ph9518.split.epil.preheader:                  ; preds = %._crit_edge9519.loopexit9580.unr-lcssa, %.lr.ph9518.split.preheader
  %indvars.iv10518.epil.init = phi i64 [ 0, %.lr.ph9518.split.preheader ], [ %indvars.iv.next10519.1, %._crit_edge9519.loopexit9580.unr-lcssa ]
  %.325179516.epil.init = phi ptr [ %.225169525, %.lr.ph9518.split.preheader ], [ %i.lkj, %._crit_edge9519.loopexit9580.unr-lcssa ]
  %.174229515.epil.init = phi <4 x i32> [ %i.lhs, %.lr.ph9518.split.preheader ], [ %i.lki, %._crit_edge9519.loopexit9580.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12093)
  %i.liz = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10518.epil.init
  %i.lja = load i32, ptr %i.liz, align 4, !tbaa !10
  %i.ljb = sext i32 %i.lja to i64
  %i.ljc = getelementptr inbounds i8, ptr %gep9535, i64 %i.ljb
  %i.ljd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ljc, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.lje = trunc <8 x i32> %i.ljd to <8 x i8>
  %i.ljf = sext <8 x i8> %i.lje to <8 x i16>
  %i.ljg = load <8 x i8>, ptr %.325179516.epil.init, align 1, !tbaa !30
  %i.ljh = sext <8 x i8> %i.ljg to <8 x i16>
  %i.lji = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.epil.init, <8 x i16> %i.ljf, <8 x i16> %i.ljh)
  br label %._crit_edge9519.loopexit9580

._crit_edge9519.loopexit9580:                     ; preds = %._crit_edge9519.loopexit9580.unr-lcssa, %.lr.ph9518.split.epil.preheader
  %.lcssa11683 = phi <4 x i32> [ %i.lki, %._crit_edge9519.loopexit9580.unr-lcssa ], [ %i.lji, %.lr.ph9518.split.epil.preheader ]
  %scevgep10520 = getelementptr i8, ptr %.225169525, i64 8
  %scevgep10521 = getelementptr i8, ptr %scevgep10520, i64 %i.lho
  br label %._crit_edge9519

._crit_edge9519:                                  ; preds = %._crit_edge9519.loopexit9580, %._crit_edge9519.loopexit, %.noexc3405
  %i.ljj = phi <4 x i32> [ %i.lhs, %.noexc3405 ], [ %.lcssa11684, %._crit_edge9519.loopexit ], [ %.lcssa11683, %._crit_edge9519.loopexit9580 ] ; 2 uses
  %.32517.lcssa = phi ptr [ %.225169525, %.noexc3405 ], [ %scevgep10528, %._crit_edge9519.loopexit ], [ %scevgep10521, %._crit_edge9519.loopexit9580 ] ; 2 uses
  %i.ljk = add nuw nsw i32 %.19526, 8             ; 3 uses
  %i.ljl = or disjoint i32 %i.ljk, 7
  %i.ljm = icmp slt i32 %i.ljl, %i.lbc
  br i1 %i.ljm, label %.noexc3405, label %._crit_edge9527.loopexit, !llvm.loop !292

.lr.ph9518.split:                                 ; preds = %.lr.ph9518.split.preheader, %.lr.ph9518.split
  %indvars.iv10518 = phi i64 [ %indvars.iv.next10519.1, %.lr.ph9518.split ], [ 0, %.lr.ph9518.split.preheader ] ; 3 uses
  %.325179516 = phi ptr [ %i.lkj, %.lr.ph9518.split ], [ %.225169525, %.lr.ph9518.split.preheader ] ; 3 uses
  %.174229515 = phi <4 x i32> [ %i.lki, %.lr.ph9518.split ], [ %i.lhs, %.lr.ph9518.split.preheader ]
  %niter12095 = phi i64 [ %niter12095.next.1, %.lr.ph9518.split ], [ 0, %.lr.ph9518.split.preheader ]
  %i.ljn = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10518
  %i.ljo = load i32, ptr %i.ljn, align 4, !tbaa !10
  %i.ljp = sext i32 %i.ljo to i64
  %i.ljq = getelementptr inbounds i8, ptr %gep9535, i64 %i.ljp
  %i.ljr = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ljq, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.ljs = trunc <8 x i32> %i.ljr to <8 x i8>
  %i.ljt = sext <8 x i8> %i.ljs to <8 x i16>
  %i.lju = load <8 x i8>, ptr %.325179516, align 1, !tbaa !30
  %i.ljv = sext <8 x i8> %i.lju to <8 x i16>
  %i.ljw = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515, <8 x i16> %i.ljt, <8 x i16> %i.ljv)
  %i.ljx = getelementptr inbounds nuw i8, ptr %.325179516, i64 8
  %i.ljy = getelementptr inbounds nuw [4 x i8], ptr %i.lhk, i64 %indvars.iv10518
  %i.ljz = getelementptr inbounds nuw i8, ptr %i.ljy, i64 4
  %i.lka = load i32, ptr %i.ljz, align 4, !tbaa !10
  %i.lkb = sext i32 %i.lka to i64
  %i.lkc = getelementptr inbounds i8, ptr %gep9535, i64 %i.lkb
  %i.lkd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lkc, <8 x i32> %i.dql, <8 x i32> splat (i32 -1), i8 1)
  %i.lke = trunc <8 x i32> %i.lkd to <8 x i8>
  %i.lkf = sext <8 x i8> %i.lke to <8 x i16>
  %i.lkg = load <8 x i8>, ptr %i.ljx, align 1, !tbaa !30
  %i.lkh = sext <8 x i8> %i.lkg to <8 x i16>
  %i.lki = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.ljw, <8 x i16> %i.lkf, <8 x i16> %i.lkh) ; 3 uses
  %i.lkj = getelementptr inbounds nuw i8, ptr %.325179516, i64 16 ; 2 uses
  %indvars.iv.next10519.1 = add nuw nsw i64 %indvars.iv10518, 2 ; 2 uses
  %niter12095.next.1 = add i64 %niter12095, 2     ; 2 uses
  %niter12095.ncmp.1 = icmp eq i64 %niter12095.next.1, %unroll_iter12094
  br i1 %niter12095.ncmp.1, label %._crit_edge9519.loopexit9580.unr-lcssa, label %.lr.ph9518.split, !llvm.loop !291

._crit_edge9527.loopexit:                         ; preds = %._crit_edge9519
  %i.lkk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ljj)
  br label %._crit_edge9527

._crit_edge9527:                                  ; preds = %._crit_edge9527.loopexit, %._crit_edge9495
  %i.lkl = phi i32 [ 0, %._crit_edge9495 ], [ %i.lkk, %._crit_edge9527.loopexit ]
  %.22516.lcssa = phi ptr [ %.02514.lcssa, %._crit_edge9495 ], [ %.32517.lcssa, %._crit_edge9527.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.02513.lcssa, %._crit_edge9495 ], [ %i.ljk, %._crit_edge9527.loopexit ] ; 5 uses
  %i.lkm = add nsw i32 %i.lkl, %i.lgq             ; 3 uses
  %i.lkn = or disjoint i32 %.1.lcssa, 1
  %i.lko = icmp slt i32 %i.lkn, %i.lbc
  br i1 %i.lko, label %.noexc3403.lr.ph, label %.preheader

.noexc3403.lr.ph:                                 ; preds = %._crit_edge9527
  %i.lkp = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !371
  %i.lkq = load ptr, ptr %0, align 8, !tbaa !28, !noalias !371
  %i.lkr = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !371
  %i.lks = load i64, ptr %i.dqe, align 8, !tbaa !29, !noalias !371 ; 2 uses
  %factor.op.mul9549 = mul i64 %i.lkr, %i.lks
  %i.lkt = sext i32 %i.lkp to i64
  %i.lku = load i32, ptr %i.b, align 4, !tbaa !10
  %i.lkv = mul nsw i32 %i.lku, %i.lba
  %i.lkw = sext i32 %i.lkv to i64
  %i.lkx = mul i64 %i.lks, %i.lkt
  %i.lky = mul i64 %i.lkx, %i.lkw
  %invariant.gep9551 = getelementptr i8, ptr %i.lkq, i64 %i.lky
  %i.lkz = load i32, ptr %i.a, align 4, !tbaa !10
  %i.lla = mul nsw i32 %i.lkz, %i.lbb
  %i.llb = sext i32 %i.lla to i64
  %invariant.gep9552 = getelementptr i8, ptr %invariant.gep9551, i64 %i.llb
  %i.llc = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.lld = icmp sgt i32 %i.llc, 0
  %i.lle = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.lld, label %.noexc3403.us.preheader, label %.noexc3403.preheader

.noexc3403.preheader:                             ; preds = %.noexc3403.lr.ph
  %i.llf = add nuw nsw i32 %.1.lcssa, 2
  %i.llg = add nsw i32 %i.lbc, -2
  %i.llh = sub nsw i32 %i.llg, %.1.lcssa
  %i.lli = and i32 %i.llh, -2
  %i.llj = add i32 %i.llf, %i.lli
  br label %.preheader

.noexc3403.us.preheader:                          ; preds = %.noexc3403.lr.ph
  %i.llk = add nsw i32 %i.llc, -1
  %i.lll = zext nneg i32 %i.llk to i64
  %i.llm = shl nuw nsw i64 %i.lll, 1
  %i.lln = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count10537 = zext nneg i32 %i.llc to i64 ; 6 uses
  %min.iters.check11464 = icmp ult i32 %i.llc, 8
  %min.iters.check11466 = icmp ult i32 %i.llc, 32
  %i.llo = and i64 %wide.trip.count10537, 24
  %n.vec11468 = and i64 %wide.trip.count10537, 2147483616 ; 5 uses
  %i.llp = shl nuw nsw i64 %n.vec11468, 1
  %cmp.n11486 = icmp eq i64 %n.vec11468, %wide.trip.count10537
  %min.epilog.iters.check11492 = icmp eq i64 %i.llo, 0
  %n.vec11494 = and i64 %wide.trip.count10537, 2147483640 ; 4 uses
  %i.llq = shl nuw nsw i64 %n.vec11494, 1
  %cmp.n11505 = icmp eq i64 %n.vec11494, %wide.trip.count10537
  br label %iter.check11489

iter.check11489:                                  ; preds = %.noexc3403.us.preheader, %._crit_edge9540.us
  %indvars.iv10539 = phi i64 [ %i.lln, %.noexc3403.us.preheader ], [ %indvars.iv.next10540, %._crit_edge9540.us ] ; 2 uses
  %.49544.us = phi ptr [ %.22516.lcssa, %.noexc3403.us.preheader ], [ %scevgep10535, %._crit_edge9540.us ] ; 7 uses
  %.025189543.us = phi i32 [ %i.lkm, %.noexc3403.us.preheader ], [ %.lcssa10974, %._crit_edge9540.us ] ; 3 uses
  %.reass9550.us = mul i64 %factor.op.mul9549, %indvars.iv10539
  %gep9553.us = getelementptr i8, ptr %invariant.gep9552, i64 %.reass9550.us ; 41 uses
  br i1 %min.iters.check11464, label %vec.epilog.scalar.ph11490.preheader, label %vector.main.loop.iter.check11465

vector.main.loop.iter.check11465:                 ; preds = %iter.check11489
  br i1 %min.iters.check11466, label %vec.epilog.ph11493, label %vector.ph11467

vector.ph11467:                                   ; preds = %vector.main.loop.iter.check11465
  %i.llr = getelementptr i8, ptr %.49544.us, i64 %i.llp
  %i.lls = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.025189543.us, i64 0
  br label %vector.body11469

vector.body11469:                                 ; preds = %vector.body11469, %vector.ph11467
  %index11470 = phi i64 [ 0, %vector.ph11467 ], [ %index.next11483, %vector.body11469 ] ; 3 uses
  %vec.phi11471 = phi <16 x i32> [ %i.lls, %vector.ph11467 ], [ %i.lvd, %vector.body11469 ]
  %vec.phi11472 = phi <16 x i32> [ zeroinitializer, %vector.ph11467 ], [ %i.lve, %vector.body11469 ]
  %i.llt = shl i64 %index11470, 1                 ; 2 uses
  %next.gep11473 = getelementptr i8, ptr %.49544.us, i64 %i.llt
  %i.llu = getelementptr i8, ptr %.49544.us, i64 %i.llt
  %next.gep11474 = getelementptr i8, ptr %i.llu, i64 32
  %i.llv = getelementptr inbounds nuw [4 x i8], ptr %i.lle, i64 %index11470 ; 2 uses
  %i.llw = getelementptr inbounds nuw i8, ptr %i.llv, i64 64
  %wide.load11475 = load <16 x i32>, ptr %i.llv, align 4, !tbaa !10
  %wide.load11476 = load <16 x i32>, ptr %i.llw, align 4, !tbaa !10
  %i.llx = sext <16 x i32> %wide.load11475 to <16 x i64> ; 16 uses
  %i.lly = sext <16 x i32> %wide.load11476 to <16 x i64> ; 16 uses
  %i.llz = extractelement <16 x i64> %i.llx, i64 0
  %i.lma = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.llz ; 2 uses
  %i.lmb = extractelement <16 x i64> %i.llx, i64 1
  %i.lmc = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmb ; 2 uses
  %i.lmd = extractelement <16 x i64> %i.llx, i64 2
  %i.lme = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmd ; 2 uses
  %i.lmf = extractelement <16 x i64> %i.llx, i64 3
  %i.lmg = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmf ; 2 uses
  %i.lmh = extractelement <16 x i64> %i.llx, i64 4
  %i.lmi = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmh ; 2 uses
  %i.lmj = extractelement <16 x i64> %i.llx, i64 5
  %i.lmk = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmj ; 2 uses
  %i.lml = extractelement <16 x i64> %i.llx, i64 6
  %i.lmm = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lml ; 2 uses
  %i.lmn = extractelement <16 x i64> %i.llx, i64 7
  %i.lmo = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmn ; 2 uses
  %i.lmp = extractelement <16 x i64> %i.llx, i64 8
  %i.lmq = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmp ; 2 uses
  %i.lmr = extractelement <16 x i64> %i.llx, i64 9
  %i.lms = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmr ; 2 uses
  %i.lmt = extractelement <16 x i64> %i.llx, i64 10
  %i.lmu = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmt ; 2 uses
  %i.lmv = extractelement <16 x i64> %i.llx, i64 11
  %i.lmw = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmv ; 2 uses
  %i.lmx = extractelement <16 x i64> %i.llx, i64 12
  %i.lmy = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmx ; 2 uses
  %i.lmz = extractelement <16 x i64> %i.llx, i64 13
  %i.lna = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lmz ; 2 uses
  %i.lnb = extractelement <16 x i64> %i.llx, i64 14
  %i.lnc = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnb ; 2 uses
  %i.lnd = extractelement <16 x i64> %i.llx, i64 15
  %i.lne = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnd ; 2 uses
  %i.lnf = extractelement <16 x i64> %i.lly, i64 0
  %i.lng = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnf ; 2 uses
  %i.lnh = extractelement <16 x i64> %i.lly, i64 1
  %i.lni = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnh ; 2 uses
  %i.lnj = extractelement <16 x i64> %i.lly, i64 2
  %i.lnk = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnj ; 2 uses
  %i.lnl = extractelement <16 x i64> %i.lly, i64 3
  %i.lnm = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnl ; 2 uses
  %i.lnn = extractelement <16 x i64> %i.lly, i64 4
  %i.lno = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnn ; 2 uses
  %i.lnp = extractelement <16 x i64> %i.lly, i64 5
  %i.lnq = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnp ; 2 uses
  %i.lnr = extractelement <16 x i64> %i.lly, i64 6
  %i.lns = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnr ; 2 uses
  %i.lnt = extractelement <16 x i64> %i.lly, i64 7
  %i.lnu = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnt ; 2 uses
  %i.lnv = extractelement <16 x i64> %i.lly, i64 8
  %i.lnw = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnv ; 2 uses
  %i.lnx = extractelement <16 x i64> %i.lly, i64 9
  %i.lny = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnx ; 2 uses
  %i.lnz = extractelement <16 x i64> %i.lly, i64 10
  %i.loa = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lnz ; 2 uses
  %i.lob = extractelement <16 x i64> %i.lly, i64 11
  %i.loc = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lob ; 2 uses
  %i.lod = extractelement <16 x i64> %i.lly, i64 12
  %i.loe = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lod ; 2 uses
  %i.lof = extractelement <16 x i64> %i.lly, i64 13
  %i.log = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lof ; 2 uses
  %i.loh = extractelement <16 x i64> %i.lly, i64 14
  %i.loi = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.loh ; 2 uses
  %i.loj = extractelement <16 x i64> %i.lly, i64 15
  %i.lok = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.loj ; 2 uses
  %i.lol = load i8, ptr %i.lma, align 1, !tbaa !30
  %i.lom = load i8, ptr %i.lmc, align 1, !tbaa !30
  %i.lon = load i8, ptr %i.lme, align 1, !tbaa !30
  %i.loo = load i8, ptr %i.lmg, align 1, !tbaa !30
  %i.lop = load i8, ptr %i.lmi, align 1, !tbaa !30
  %i.loq = load i8, ptr %i.lmk, align 1, !tbaa !30
  %i.lor = load i8, ptr %i.lmm, align 1, !tbaa !30
  %i.los = load i8, ptr %i.lmo, align 1, !tbaa !30
  %i.lot = load i8, ptr %i.lmq, align 1, !tbaa !30
  %i.lou = load i8, ptr %i.lms, align 1, !tbaa !30
  %i.lov = load i8, ptr %i.lmu, align 1, !tbaa !30
  %i.low = load i8, ptr %i.lmw, align 1, !tbaa !30
  %i.lox = load i8, ptr %i.lmy, align 1, !tbaa !30
  %i.loy = load i8, ptr %i.lna, align 1, !tbaa !30
  %i.loz = load i8, ptr %i.lnc, align 1, !tbaa !30
  %i.lpa = load i8, ptr %i.lne, align 1, !tbaa !30
  %i.lpb = insertelement <16 x i8> poison, i8 %i.lol, i64 0
  %i.lpc = insertelement <16 x i8> %i.lpb, i8 %i.lom, i64 1
  %i.lpd = insertelement <16 x i8> %i.lpc, i8 %i.lon, i64 2
  %i.lpe = insertelement <16 x i8> %i.lpd, i8 %i.loo, i64 3
  %i.lpf = insertelement <16 x i8> %i.lpe, i8 %i.lop, i64 4
  %i.lpg = insertelement <16 x i8> %i.lpf, i8 %i.loq, i64 5
  %i.lph = insertelement <16 x i8> %i.lpg, i8 %i.lor, i64 6
  %i.lpi = insertelement <16 x i8> %i.lph, i8 %i.los, i64 7
  %i.lpj = insertelement <16 x i8> %i.lpi, i8 %i.lot, i64 8
  %i.lpk = insertelement <16 x i8> %i.lpj, i8 %i.lou, i64 9
  %i.lpl = insertelement <16 x i8> %i.lpk, i8 %i.lov, i64 10
  %i.lpm = insertelement <16 x i8> %i.lpl, i8 %i.low, i64 11
  %i.lpn = insertelement <16 x i8> %i.lpm, i8 %i.lox, i64 12
  %i.lpo = insertelement <16 x i8> %i.lpn, i8 %i.loy, i64 13
  %i.lpp = insertelement <16 x i8> %i.lpo, i8 %i.loz, i64 14
  %i.lpq = insertelement <16 x i8> %i.lpp, i8 %i.lpa, i64 15
  %i.lpr = load i8, ptr %i.lng, align 1, !tbaa !30
  %i.lps = load i8, ptr %i.lni, align 1, !tbaa !30
  %i.lpt = load i8, ptr %i.lnk, align 1, !tbaa !30
  %i.lpu = load i8, ptr %i.lnm, align 1, !tbaa !30
  %i.lpv = load i8, ptr %i.lno, align 1, !tbaa !30
  %i.lpw = load i8, ptr %i.lnq, align 1, !tbaa !30
  %i.lpx = load i8, ptr %i.lns, align 1, !tbaa !30
  %i.lpy = load i8, ptr %i.lnu, align 1, !tbaa !30
  %i.lpz = load i8, ptr %i.lnw, align 1, !tbaa !30
  %i.lqa = load i8, ptr %i.lny, align 1, !tbaa !30
  %i.lqb = load i8, ptr %i.loa, align 1, !tbaa !30
  %i.lqc = load i8, ptr %i.loc, align 1, !tbaa !30
  %i.lqd = load i8, ptr %i.loe, align 1, !tbaa !30
  %i.lqe = load i8, ptr %i.log, align 1, !tbaa !30
  %i.lqf = load i8, ptr %i.loi, align 1, !tbaa !30
  %i.lqg = load i8, ptr %i.lok, align 1, !tbaa !30
  %i.lqh = insertelement <16 x i8> poison, i8 %i.lpr, i64 0
  %i.lqi = insertelement <16 x i8> %i.lqh, i8 %i.lps, i64 1
  %i.lqj = insertelement <16 x i8> %i.lqi, i8 %i.lpt, i64 2
  %i.lqk = insertelement <16 x i8> %i.lqj, i8 %i.lpu, i64 3
  %i.lql = insertelement <16 x i8> %i.lqk, i8 %i.lpv, i64 4
  %i.lqm = insertelement <16 x i8> %i.lql, i8 %i.lpw, i64 5
  %i.lqn = insertelement <16 x i8> %i.lqm, i8 %i.lpx, i64 6
  %i.lqo = insertelement <16 x i8> %i.lqn, i8 %i.lpy, i64 7
  %i.lqp = insertelement <16 x i8> %i.lqo, i8 %i.lpz, i64 8
  %i.lqq = insertelement <16 x i8> %i.lqp, i8 %i.lqa, i64 9
  %i.lqr = insertelement <16 x i8> %i.lqq, i8 %i.lqb, i64 10
  %i.lqs = insertelement <16 x i8> %i.lqr, i8 %i.lqc, i64 11
  %i.lqt = insertelement <16 x i8> %i.lqs, i8 %i.lqd, i64 12
  %i.lqu = insertelement <16 x i8> %i.lqt, i8 %i.lqe, i64 13
  %i.lqv = insertelement <16 x i8> %i.lqu, i8 %i.lqf, i64 14
  %i.lqw = insertelement <16 x i8> %i.lqv, i8 %i.lqg, i64 15
  %i.lqx = sext <16 x i8> %i.lpq to <16 x i32>
  %i.lqy = sext <16 x i8> %i.lqw to <16 x i32>
  %wide.vec11477 = load <32 x i8>, ptr %next.gep11473, align 1, !tbaa !30 ; 2 uses
  %strided.vec11478 = shufflevector <32 x i8> %wide.vec11477, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec11479 = shufflevector <32 x i8> %wide.vec11477, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec11480 = load <32 x i8>, ptr %next.gep11474, align 1, !tbaa !30 ; 2 uses
  %strided.vec11481 = shufflevector <32 x i8> %wide.vec11480, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec11482 = shufflevector <32 x i8> %wide.vec11480, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lqz = sext <16 x i8> %strided.vec11478 to <16 x i32>
  %i.lra = sext <16 x i8> %strided.vec11481 to <16 x i32>
  %i.lrb = mul nsw <16 x i32> %i.lqz, %i.lqx
  %i.lrc = mul nsw <16 x i32> %i.lra, %i.lqy
  %i.lrd = add <16 x i32> %i.lrb, %vec.phi11471
  %i.lre = add <16 x i32> %i.lrc, %vec.phi11472
  %i.lrf = getelementptr inbounds nuw i8, ptr %i.lma, i64 %i.t
  %i.lrg = getelementptr inbounds nuw i8, ptr %i.lmc, i64 %i.t
  %i.lrh = getelementptr inbounds nuw i8, ptr %i.lme, i64 %i.t
  %i.lri = getelementptr inbounds nuw i8, ptr %i.lmg, i64 %i.t
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
._crit_edge2381.loopexit:                         ; preds = %bb.v
  %scevgep2714 = getelementptr i8, ptr %.07462387, i64 256
  %scevgep2715 = getelementptr i8, ptr %scevgep2714, i64 %i.aet
  br label %._crit_edge2381

._crit_edge2381:                                  ; preds = %._crit_edge2381.loopexit, %.noexc853
  %.lcssa2183 = phi <16 x i32> [ %i.agf, %.noexc853 ], [ %i.akm, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2182 = phi <16 x i32> [ %i.age, %.noexc853 ], [ %i.akp, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2181 = phi <16 x i32> [ %i.agd, %.noexc853 ], [ %i.aks, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2180 = phi <16 x i32> [ %i.agc, %.noexc853 ], [ %i.akv, %._crit_edge2381.loopexit ] ; 2 uses
  %.1747.lcssa = phi ptr [ %.07462387, %.noexc853 ], [ %scevgep2715, %._crit_edge2381.loopexit ] ; 2 uses
  %i.agj = add nuw nsw i32 %.07422388, 16         ; 2 uses
  %i.agk = or disjoint i32 %i.agj, 15
  %i.agl = icmp slt i32 %i.agk, %i.ado
  br i1 %i.agl, label %.noexc853, label %.preheader2142.loopexit, !llvm.loop !400

bb.r:                                             ; preds = %.lr.ph2380, %bb.v
  %indvars.iv2712 = phi i64 [ 0, %.lr.ph2380 ], [ %indvars.iv.next2713, %bb.v ] ; 2 uses
  %.17472378 = phi ptr [ %.07462387, %.lr.ph2380 ], [ %i.akw, %bb.v ] ; 5 uses
  %i.agm = phi <16 x i32> [ %i.agc, %.lr.ph2380 ], [ %i.akv, %bb.v ]
  %i.agn = phi <16 x i32> [ %i.agd, %.lr.ph2380 ], [ %i.aks, %bb.v ]
  %i.ago = phi <16 x i32> [ %i.age, %.lr.ph2380 ], [ %i.akp, %bb.v ]
  %i.agp = phi <16 x i32> [ %i.agf, %.lr.ph2380 ], [ %i.akm, %bb.v ]
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv2712
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !10
  %i.ags = sext i32 %i.agr to i64                 ; 2 uses
  %i.agt = getelementptr inbounds i8, ptr %gep2399, i64 %i.ags ; 4 uses
  %i.agu = getelementptr inbounds i8, ptr %gep2404, i64 %i.ags ; 4 uses
  switch i32 %i.adq, label %bb.u [
    i32 16, label %bb.s
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.agv = load <2 x i64>, ptr %i.agt, align 16, !tbaa !30
  %i.agw = load <2 x i64>, ptr %i.agu, align 16, !tbaa !30
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.agx = load i64, ptr %i.agt, align 1, !tbaa !30
  %i.agy = insertelement <2 x i64> poison, i64 %i.agx, i64 0
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.aa
  %i.aha = load i64, ptr %i.agz, align 1, !tbaa !30
  %i.ahb = load i64, ptr %i.agu, align 1, !tbaa !30
  %i.ahc = insertelement <2 x i64> poison, i64 %i.ahb, i64 0
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.aa
  %i.ahe = load i64, ptr %i.ahd, align 1, !tbaa !30
  %i.ahf = insertelement <2 x i64> %i.agy, i64 %i.aha, i64 1
  %i.ahg = insertelement <2 x i64> %i.ahc, i64 %i.ahe, i64 1
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ahh = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.agt, <16 x i32> %i.bh, <16 x i1> splat (i1 true), i32 1)
  %i.ahi = trunc <16 x i32> %i.ahh to <16 x i8>
  %i.ahj = bitcast <16 x i8> %i.ahi to <2 x i64>
  %i.ahk = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.agu, <16 x i32> %i.bh, <16 x i1> splat (i1 true), i32 1)
  %i.ahl = trunc <16 x i32> %i.ahk to <16 x i8>
  %i.ahm = bitcast <16 x i8> %i.ahl to <2 x i64>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0740 = phi <2 x i64> [ %i.agv, %bb.s ], [ %i.ahf, %bb.t ], [ %i.ahj, %bb.u ]
  %.0739 = phi <2 x i64> [ %i.agw, %bb.s ], [ %i.ahg, %bb.t ], [ %i.ahm, %bb.u ]
  %i.ahn = bitcast <2 x i64> %.0740 to <16 x i8>
  %i.aho = sext <16 x i8> %i.ahn to <16 x i16>    ; 2 uses
  %i.ahp = bitcast <2 x i64> %.0739 to <16 x i8>
  %i.ahq = sext <16 x i8> %i.ahp to <16 x i16>    ; 2 uses
  %i.ahr = load <8 x i64>, ptr %.17472378, align 64, !tbaa !30 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.17472378, i64 64
  %i.aht = load <8 x i64>, ptr %i.ahs, align 64, !tbaa !30 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.17472378, i64 128
  %i.ahv = load <8 x i64>, ptr %i.ahu, align 64, !tbaa !30 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.17472378, i64 192
  %i.ahx = load <8 x i64>, ptr %i.ahw, align 64, !tbaa !30 ; 2 uses
  %i.ahy = bitcast <8 x i64> %i.ahr to <64 x i8>
  %i.ahz = shufflevector <64 x i8> %i.ahy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aia = sext <32 x i8> %i.ahz to <32 x i16>    ; 2 uses
  %i.aib = bitcast <8 x i64> %i.ahr to <64 x i8>
  %i.aic = shufflevector <64 x i8> %i.aib, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aid = sext <32 x i8> %i.aic to <32 x i16>    ; 2 uses
  %i.aie = bitcast <8 x i64> %i.aht to <64 x i8>
  %i.aif = shufflevector <64 x i8> %i.aie, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aig = sext <32 x i8> %i.aif to <32 x i16>    ; 2 uses
  %i.aih = bitcast <8 x i64> %i.aht to <64 x i8>
  %i.aii = shufflevector <64 x i8> %i.aih, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aij = sext <32 x i8> %i.aii to <32 x i16>    ; 2 uses
  %i.aik = bitcast <8 x i64> %i.ahv to <64 x i8>
  %i.ail = shufflevector <64 x i8> %i.aik, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aim = sext <32 x i8> %i.ail to <32 x i16>    ; 2 uses
  %i.ain = bitcast <8 x i64> %i.ahv to <64 x i8>
  %i.aio = shufflevector <64 x i8> %i.ain, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aip = sext <32 x i8> %i.aio to <32 x i16>    ; 2 uses
  %i.aiq = bitcast <8 x i64> %i.ahx to <64 x i8>
  %i.air = shufflevector <64 x i8> %i.aiq, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ais = sext <32 x i8> %i.air to <32 x i16>    ; 2 uses
  %i.ait = bitcast <8 x i64> %i.ahx to <64 x i8>
  %i.aiu = shufflevector <64 x i8> %i.ait, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aiv = sext <32 x i8> %i.aiu to <32 x i16>    ; 2 uses
  %i.aiw = bitcast <16 x i16> %i.aho to <8 x i32> ; 4 uses
  %i.aix = bitcast <16 x i16> %i.aho to <8 x i32> ; 4 uses
  %i.aiy = bitcast <16 x i16> %i.ahq to <8 x i32> ; 4 uses
  %i.aiz = bitcast <16 x i16> %i.ahq to <8 x i32> ; 4 uses
  %i.aja = shufflevector <8 x i32> %i.aiw, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.ajb = bitcast <16 x i32> %i.aja to <32 x i16>
  %i.ajc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.agp, <32 x i16> %i.ajb, <32 x i16> %i.aia)
  %i.ajd = shufflevector <8 x i32> %i.aiy, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.aje = bitcast <16 x i32> %i.ajd to <32 x i16>
  %i.ajf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ago, <32 x i16> %i.aje, <32 x i16> %i.aia)
  %i.ajg = shufflevector <8 x i32> %i.aiw, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ajh = bitcast <16 x i32> %i.ajg to <32 x i16>
  %i.aji = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.agn, <32 x i16> %i.ajh, <32 x i16> %i.aid)
  %i.ajj = shufflevector <8 x i32> %i.aiy, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ajk = bitcast <16 x i32> %i.ajj to <32 x i16>
  %i.ajl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.agm, <32 x i16> %i.ajk, <32 x i16> %i.aid)
  %i.ajm = shufflevector <8 x i32> %i.aiw, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ajn = bitcast <16 x i32> %i.ajm to <32 x i16>
  %i.ajo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajc, <32 x i16> %i.ajn, <32 x i16> %i.aig)
  %i.ajp = shufflevector <8 x i32> %i.aiy, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ajq = bitcast <16 x i32> %i.ajp to <32 x i16>
  %i.ajr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajf, <32 x i16> %i.ajq, <32 x i16> %i.aig)
  %i.ajs = shufflevector <8 x i32> %i.aiw, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ajt = bitcast <16 x i32> %i.ajs to <32 x i16>
  %i.aju = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aji, <32 x i16> %i.ajt, <32 x i16> %i.aij)
  %i.ajv = shufflevector <8 x i32> %i.aiy, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ajw = bitcast <16 x i32> %i.ajv to <32 x i16>
  %i.ajx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajl, <32 x i16> %i.ajw, <32 x i16> %i.aij)
  %i.ajy = shufflevector <8 x i32> %i.aix, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ajz = bitcast <16 x i32> %i.ajy to <32 x i16>
  %i.aka = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajo, <32 x i16> %i.ajz, <32 x i16> %i.aim)
  %i.akb = shufflevector <8 x i32> %i.aiz, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.akc = bitcast <16 x i32> %i.akb to <32 x i16>
  %i.akd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajr, <32 x i16> %i.akc, <32 x i16> %i.aim)
  %i.ake = shufflevector <8 x i32> %i.aix, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.akf = bitcast <16 x i32> %i.ake to <32 x i16>
  %i.akg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aju, <32 x i16> %i.akf, <32 x i16> %i.aip)
  %i.akh = shufflevector <8 x i32> %i.aiz, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.aki = bitcast <16 x i32> %i.akh to <32 x i16>
  %i.akj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajx, <32 x i16> %i.aki, <32 x i16> %i.aip)
  %i.akk = shufflevector <8 x i32> %i.aix, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.akl = bitcast <16 x i32> %i.akk to <32 x i16>
  %i.akm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aka, <32 x i16> %i.akl, <32 x i16> %i.ais) ; 2 uses
  %i.akn = shufflevector <8 x i32> %i.aiz, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ako = bitcast <16 x i32> %i.akn to <32 x i16>
  %i.akp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.akd, <32 x i16> %i.ako, <32 x i16> %i.ais) ; 2 uses
  %i.akq = shufflevector <8 x i32> %i.aix, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.akr = bitcast <16 x i32> %i.akq to <32 x i16>
  %i.aks = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.akg, <32 x i16> %i.akr, <32 x i16> %i.aiv) ; 2 uses
  %i.akt = shufflevector <8 x i32> %i.aiz, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.aku = bitcast <16 x i32> %i.akt to <32 x i16>
  %i.akv = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.akj, <32 x i16> %i.aku, <32 x i16> %i.aiv) ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.17472378, i64 256
  %indvars.iv.next2713 = add nuw nsw i64 %indvars.iv2712, 1 ; 2 uses
  %exitcond2718.not = icmp eq i64 %indvars.iv.next2713, %wide.trip.count2717
  br i1 %exitcond2718.not, label %._crit_edge2381.loopexit, label %bb.r, !llvm.loop !401

.preheader2141:                                   ; preds = %._crit_edge2408, %.preheader2142
  %.lcssa2195 = phi <16 x i32> [ %.lcssa2187, %.preheader2142 ], [ %.lcssa2191, %._crit_edge2408 ] ; 3 uses
  %.lcssa2194 = phi <16 x i32> [ %.lcssa2186, %.preheader2142 ], [ %.lcssa2190, %._crit_edge2408 ] ; 3 uses
  %.lcssa2193 = phi <16 x i32> [ %.lcssa2185, %.preheader2142 ], [ %.lcssa2189, %._crit_edge2408 ]
  %.lcssa2192 = phi <16 x i32> [ %.lcssa2184, %.preheader2142 ], [ %.lcssa2188, %._crit_edge2408 ]
  %.2748.lcssa = phi ptr [ %.0746.lcssa, %.preheader2142 ], [ %.3749.lcssa, %._crit_edge2408 ] ; 3 uses
  %.1743.lcssa = phi i32 [ %.0742.lcssa, %.preheader2142 ], [ %i.app, %._crit_edge2408 ] ; 5 uses
  %i.akx = or disjoint i32 %.1743.lcssa, 1
  %i.aky = icmp slt i32 %i.akx, %i.ado
  br i1 %i.aky, label %.noexc845.lr.ph, label %.preheader2140

.noexc845.lr.ph:                                  ; preds = %.preheader2141
  %i.akz = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !441
  %i.ala = load ptr, ptr %4, align 8, !tbaa !28, !noalias !441 ; 2 uses
  %i.alb = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !441
  %i.alc = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !441 ; 2 uses
  %factor.op.mul2450 = mul i64 %i.alb, %i.alc
  %i.ald = sext i32 %i.akz to i64
  %i.ale = load i32, ptr %9, align 4, !tbaa !10   ; 2 uses
  %i.alf = extractelement <2 x i32> %i.adg, i64 1
  %i.alg = mul nsw i32 %i.ale, %i.alf
  %i.alh = sext i32 %i.alg to i64
  %i.ali = mul i64 %i.alc, %i.ald                 ; 2 uses
  %i.alj = mul i64 %i.ali, %i.alh
  %invariant.gep2452 = getelementptr i8, ptr %i.ala, i64 %i.alj
  %i.alk = load i32, ptr %10, align 4, !tbaa !10
  %i.all = extractelement <2 x i32> %i.adg, i64 0
  %i.alm = mul nsw i32 %i.ale, %i.all
  %i.aln = sext i32 %i.alm to i64
  %i.alo = mul i64 %i.ali, %i.aln
  %invariant.gep2457 = getelementptr i8, ptr %i.ala, i64 %i.alo
  %i.alp = insertelement <2 x i32> poison, i32 %i.alk, i64 0
  %i.alq = shufflevector <2 x i32> %i.alp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.alr = mul nsw <2 x i32> %i.alq, %.decomposed3074 ; 2 uses
  %i.als = extractelement <2 x i32> %i.alr, i64 1
  %i.alt = sext i32 %i.als to i64
  %invariant.gep2453 = getelementptr i8, ptr %invariant.gep2452, i64 %i.alt
  %i.alu = extractelement <2 x i32> %i.alr, i64 0
  %i.alv = sext i32 %i.alu to i64
  %invariant.gep2458 = getelementptr i8, ptr %invariant.gep2457, i64 %i.alv
  %i.alw = load i32, ptr %11, align 4, !tbaa !10  ; 3 uses
  %i.alx = icmp sgt i32 %i.alw, 0
  br i1 %i.alx, label %.noexc845.lr.ph.split.us, label %.noexc845.preheader

.noexc845.preheader:                              ; preds = %.noexc845.lr.ph
  %i.aly = add nuw nsw i32 %.1743.lcssa, 2
  %i.alz = add nsw i32 %i.ado, -2
  %i.ama = sub nsw i32 %i.alz, %.1743.lcssa
  %i.amb = and i32 %i.ama, -2
  %i.amc = add i32 %i.aly, %i.amb
  br label %.preheader2140

.noexc845.lr.ph.split.us:                         ; preds = %.noexc845.lr.ph
  %i.amd = load ptr, ptr %12, align 8, !tbaa !21
  %i.ame = add nsw i32 %i.alw, -1
  %i.amf = zext nneg i32 %i.ame to i64
  %i.amg = shl nuw nsw i64 %i.amf, 5
  %i.amh = zext nneg i32 %.1743.lcssa to i64
  %wide.trip.count2738 = zext nneg i32 %i.alw to i64
  br label %.noexc845.us

.noexc845.us:                                     ; preds = %._crit_edge2440.us, %.noexc845.lr.ph.split.us
  %indvars.iv2740 = phi i64 [ %indvars.iv.next2741, %._crit_edge2440.us ], [ %i.amh, %.noexc845.lr.ph.split.us ] ; 2 uses
  %.47502444.us = phi ptr [ %scevgep2736, %._crit_edge2440.us ], [ %.2748.lcssa, %.noexc845.lr.ph.split.us ] ; 2 uses
  %i.ami = phi <16 x i32> [ %i.ank, %._crit_edge2440.us ], [ %.lcssa2194, %.noexc845.lr.ph.split.us ]
  %i.amj = phi <16 x i32> [ %i.ani, %._crit_edge2440.us ], [ %.lcssa2195, %.noexc845.lr.ph.split.us ]
  %.reass2451.us = mul i64 %factor.op.mul2450, %indvars.iv2740 ; 2 uses
  %gep2454.us = getelementptr i8, ptr %invariant.gep2453, i64 %.reass2451.us
  %gep2459.us = getelementptr i8, ptr %invariant.gep2458, i64 %.reass2451.us
  br label %bb.w

bb.w:                                             ; preds = %.noexc845.us, %bb.w
  %indvars.iv2733 = phi i64 [ 0, %.noexc845.us ], [ %indvars.iv.next2734, %bb.w ] ; 2 uses
  %.57512437.us = phi ptr [ %.47502444.us, %.noexc845.us ], [ %i.anl, %bb.w ] ; 2 uses
  %i.amk = phi <16 x i32> [ %i.ami, %.noexc845.us ], [ %i.ank, %bb.w ]
  %i.aml = phi <16 x i32> [ %i.amj, %.noexc845.us ], [ %i.ani, %bb.w ]
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %indvars.iv2733
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !10
  %i.amo = sext i32 %i.amn to i64                 ; 2 uses
  %i.amp = getelementptr inbounds i8, ptr %gep2454.us, i64 %i.amo ; 2 uses
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !30
  %i.amr = sext i8 %i.amq to i16
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.aa
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !30
  %i.amu = sext i8 %i.amt to i16
  %i.amv = insertelement <8 x i16> poison, i16 %i.amr, i64 0
  %i.amw = insertelement <8 x i16> %i.amv, i16 %i.amu, i64 1
  %i.amx = getelementptr inbounds i8, ptr %gep2459.us, i64 %i.amo ; 2 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !30
  %i.amz = sext i8 %i.amy to i16
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 %i.aa
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !30
  %i.anc = sext i8 %i.anb to i16
  %i.and = insertelement <8 x i16> poison, i16 %i.amz, i64 0
  %i.ane = insertelement <8 x i16> %i.and, i16 %i.anc, i64 1
  %i.anf = load <32 x i8>, ptr %.57512437.us, align 32, !tbaa !30
  %i.ang = sext <32 x i8> %i.anf to <32 x i16>    ; 2 uses
  %i.anh = shufflevector <8 x i16> %i.amw, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ani = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aml, <32 x i16> %i.anh, <32 x i16> %i.ang) ; 3 uses
  %i.anj = shufflevector <8 x i16> %i.ane, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ank = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.amk, <32 x i16> %i.anj, <32 x i16> %i.ang) ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.57512437.us, i64 32
  %indvars.iv.next2734 = add nuw nsw i64 %indvars.iv2733, 1 ; 2 uses
  %exitcond2739.not = icmp eq i64 %indvars.iv.next2734, %wide.trip.count2738
  br i1 %exitcond2739.not, label %._crit_edge2440.us, label %bb.w, !llvm.loop !404

._crit_edge2440.us:                               ; preds = %bb.w
  %scevgep2735 = getelementptr i8, ptr %.47502444.us, i64 32
  %scevgep2736 = getelementptr i8, ptr %scevgep2735, i64 %i.amg ; 2 uses
  %indvars.iv.next2741 = add nuw nsw i64 %indvars.iv2740, 2 ; 3 uses
  %i.anm = trunc i64 %indvars.iv.next2741 to i32
  %i.ann = or i32 %i.anm, 1
  %i.ano = icmp slt i32 %i.ann, %i.ado
  br i1 %i.ano, label %.noexc845.us, label %.preheader2140.loopexit, !llvm.loop !405

.noexc849:                                        ; preds = %.noexc849.lr.ph, %._crit_edge2408
  %.17432420 = phi i32 [ %.0742.lcssa, %.noexc849.lr.ph ], [ %i.app, %._crit_edge2408 ] ; 2 uses
  %.27482419 = phi ptr [ %.0746.lcssa, %.noexc849.lr.ph ], [ %.3749.lcssa, %._crit_edge2408 ] ; 5 uses
  %i.anp = phi <16 x i32> [ %.lcssa2184, %.noexc849.lr.ph ], [ %.lcssa2188, %._crit_edge2408 ] ; 3 uses
  %i.anq = phi <16 x i32> [ %.lcssa2185, %.noexc849.lr.ph ], [ %.lcssa2189, %._crit_edge2408 ] ; 3 uses
  %i.anr = phi <16 x i32> [ %.lcssa2186, %.noexc849.lr.ph ], [ %.lcssa2190, %._crit_edge2408 ] ; 3 uses
  %i.ans = phi <16 x i32> [ %.lcssa2187, %.noexc849.lr.ph ], [ %.lcssa2191, %._crit_edge2408 ] ; 3 uses
  %i.ant = sdiv i32 %.17432420, %i.aex
  %i.anu = sext i32 %i.ant to i64
  %.reass2428 = mul i64 %factor.op.mul2427, %i.anu ; 2 uses
  %gep2431 = getelementptr i8, ptr %invariant.gep2430, i64 %.reass2428 ; 2 uses
  %gep2436 = getelementptr i8, ptr %invariant.gep2435, i64 %.reass2428 ; 2 uses
  br i1 %i.afx, label %.lr.ph2407, label %._crit_edge2408

.lr.ph2407:                                       ; preds = %.noexc849
  %i.anv = load ptr, ptr %12, align 8, !tbaa !21  ; 2 uses
  br i1 %i.agb, label %.lr.ph2407.split.us, label %.lr.ph2407.split

.lr.ph2407.split.us:                              ; preds = %.lr.ph2407, %.lr.ph2407.split.us
  %indvars.iv2726 = phi i64 [ %indvars.iv.next2727, %.lr.ph2407.split.us ], [ 0, %.lr.ph2407 ] ; 2 uses
  %.37492405.us = phi ptr [ %i.apo, %.lr.ph2407.split.us ], [ %.27482419, %.lr.ph2407 ] ; 3 uses
  %i.anw = phi <16 x i32> [ %i.apn, %.lr.ph2407.split.us ], [ %i.anp, %.lr.ph2407 ]
  %i.anx = phi <16 x i32> [ %i.apl, %.lr.ph2407.split.us ], [ %i.anq, %.lr.ph2407 ]
  %i.any = phi <16 x i32> [ %i.apj, %.lr.ph2407.split.us ], [ %i.anr, %.lr.ph2407 ]
  %i.anz = phi <16 x i32> [ %i.aph, %.lr.ph2407.split.us ], [ %i.ans, %.lr.ph2407 ]
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %indvars.iv2726
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !10
  %i.aoc = sext i32 %i.aob to i64                 ; 2 uses
  %i.aod = getelementptr inbounds i8, ptr %gep2431, i64 %i.aoc
  %i.aoe = getelementptr inbounds i8, ptr %gep2436, i64 %i.aoc
  %i.aof = load <8 x i8>, ptr %i.aod, align 1, !tbaa !30
  %i.aog = load <8 x i8>, ptr %i.aoe, align 1, !tbaa !30
  %i.aoh = sext <8 x i8> %i.aof to <8 x i16>      ; 4 uses
  %i.aoi = sext <8 x i8> %i.aog to <8 x i16>      ; 4 uses
  %i.aoj = load <8 x i64>, ptr %.37492405.us, align 64, !tbaa !30 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.37492405.us, i64 64
  %i.aol = load <8 x i64>, ptr %i.aok, align 64, !tbaa !30 ; 2 uses
  %i.aom = bitcast <8 x i64> %i.aoj to <64 x i8>
  %i.aon = shufflevector <64 x i8> %i.aom, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aoo = sext <32 x i8> %i.aon to <32 x i16>    ; 2 uses
  %i.aop = bitcast <8 x i64> %i.aoj to <64 x i8>
  %i.aoq = shufflevector <64 x i8> %i.aop, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aor = sext <32 x i8> %i.aoq to <32 x i16>    ; 2 uses
  %i.aos = bitcast <8 x i64> %i.aol to <64 x i8>
  %i.aot = shufflevector <64 x i8> %i.aos, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aou = sext <32 x i8> %i.aot to <32 x i16>    ; 2 uses
  %i.aov = bitcast <8 x i64> %i.aol to <64 x i8>
  %i.aow = shufflevector <64 x i8> %i.aov, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aox = sext <32 x i8> %i.aow to <32 x i16>    ; 2 uses
  %i.aoy = shufflevector <8 x i16> %i.aoh, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aoz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.anz, <32 x i16> %i.aoy, <32 x i16> %i.aoo)
  %i.apa = shufflevector <8 x i16> %i.aoi, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.apb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.any, <32 x i16> %i.apa, <32 x i16> %i.aoo)
  %i.apc = shufflevector <8 x i16> %i.aoh, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.apd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.anx, <32 x i16> %i.apc, <32 x i16> %i.aor)
  %i.ape = shufflevector <8 x i16> %i.aoi, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.apf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.anw, <32 x i16> %i.ape, <32 x i16> %i.aor)
  %i.apg = shufflevector <8 x i16> %i.aoh, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aph = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aoz, <32 x i16> %i.apg, <32 x i16> %i.aou) ; 2 uses
  %i.api = shufflevector <8 x i16> %i.aoi, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.apj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apb, <32 x i16> %i.api, <32 x i16> %i.aou) ; 2 uses
  %i.apk = shufflevector <8 x i16> %i.aoh, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.apl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apd, <32 x i16> %i.apk, <32 x i16> %i.aox) ; 2 uses
  %i.apm = shufflevector <8 x i16> %i.aoi, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.apn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apf, <32 x i16> %i.apm, <32 x i16> %i.aox) ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.37492405.us, i64 128
  %indvars.iv.next2727 = add nuw nsw i64 %indvars.iv2726, 1 ; 2 uses
  %exitcond2732.not = icmp eq i64 %indvars.iv.next2727, %wide.trip.count2731
  br i1 %exitcond2732.not, label %._crit_edge2408.loopexit, label %.lr.ph2407.split.us, !llvm.loop !406

._crit_edge2408.loopexit:                         ; preds = %.lr.ph2407.split.us
  %scevgep2728 = getelementptr i8, ptr %.27482419, i64 128
  %scevgep2729 = getelementptr i8, ptr %scevgep2728, i64 %i.aga
  br label %._crit_edge2408

._crit_edge2408.loopexit2589:                     ; preds = %.lr.ph2407.split
  %scevgep2721 = getelementptr i8, ptr %.27482419, i64 128
  %scevgep2722 = getelementptr i8, ptr %scevgep2721, i64 %i.aga
  br label %._crit_edge2408

._crit_edge2408:                                  ; preds = %._crit_edge2408.loopexit2589, %._crit_edge2408.loopexit, %.noexc849
  %.lcssa2191 = phi <16 x i32> [ %i.ans, %.noexc849 ], [ %i.aph, %._crit_edge2408.loopexit ], [ %i.arf, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2190 = phi <16 x i32> [ %i.anr, %.noexc849 ], [ %i.apj, %._crit_edge2408.loopexit ], [ %i.arh, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2189 = phi <16 x i32> [ %i.anq, %.noexc849 ], [ %i.apl, %._crit_edge2408.loopexit ], [ %i.arj, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2188 = phi <16 x i32> [ %i.anp, %.noexc849 ], [ %i.apn, %._crit_edge2408.loopexit ], [ %i.arl, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.3749.lcssa = phi ptr [ %.27482419, %.noexc849 ], [ %scevgep2729, %._crit_edge2408.loopexit ], [ %scevgep2722, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %i.app = add nuw nsw i32 %.17432420, 8          ; 3 uses
  %i.apq = or disjoint i32 %i.app, 7
  %i.apr = icmp slt i32 %i.apq, %i.ado
  br i1 %i.apr, label %.noexc849, label %.preheader2141, !llvm.loop !407

.lr.ph2407.split:                                 ; preds = %.lr.ph2407, %.lr.ph2407.split
  %indvars.iv2719 = phi i64 [ %indvars.iv.next2720, %.lr.ph2407.split ], [ 0, %.lr.ph2407 ] ; 2 uses
  %.37492405 = phi ptr [ %i.arm, %.lr.ph2407.split ], [ %.27482419, %.lr.ph2407 ] ; 3 uses
  %i.aps = phi <16 x i32> [ %i.arl, %.lr.ph2407.split ], [ %i.anp, %.lr.ph2407 ]
  %i.apt = phi <16 x i32> [ %i.arj, %.lr.ph2407.split ], [ %i.anq, %.lr.ph2407 ]
  %i.apu = phi <16 x i32> [ %i.arh, %.lr.ph2407.split ], [ %i.anr, %.lr.ph2407 ]
  %i.apv = phi <16 x i32> [ %i.arf, %.lr.ph2407.split ], [ %i.ans, %.lr.ph2407 ]
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %indvars.iv2719
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !10
  %i.apy = sext i32 %i.apx to i64                 ; 2 uses
  %i.apz = getelementptr inbounds i8, ptr %gep2431, i64 %i.apy
  %i.aqa = getelementptr inbounds i8, ptr %gep2436, i64 %i.apy
  %i.aqb = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apz, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 1)
  %i.aqc = trunc <8 x i32> %i.aqb to <8 x i8>
  %i.aqd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aqa, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 1)
  %i.aqe = trunc <8 x i32> %i.aqd to <8 x i8>
  %i.aqf = sext <8 x i8> %i.aqc to <8 x i16>      ; 4 uses
  %i.aqg = sext <8 x i8> %i.aqe to <8 x i16>      ; 4 uses
  %i.aqh = load <8 x i64>, ptr %.37492405, align 64, !tbaa !30 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.37492405, i64 64
  %i.aqj = load <8 x i64>, ptr %i.aqi, align 64, !tbaa !30 ; 2 uses
  %i.aqk = bitcast <8 x i64> %i.aqh to <64 x i8>
  %i.aql = shufflevector <64 x i8> %i.aqk, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aqm = sext <32 x i8> %i.aql to <32 x i16>    ; 2 uses
  %i.aqn = bitcast <8 x i64> %i.aqh to <64 x i8>
  %i.aqo = shufflevector <64 x i8> %i.aqn, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aqp = sext <32 x i8> %i.aqo to <32 x i16>    ; 2 uses
  %i.aqq = bitcast <8 x i64> %i.aqj to <64 x i8>
  %i.aqr = shufflevector <64 x i8> %i.aqq, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aqs = sext <32 x i8> %i.aqr to <32 x i16>    ; 2 uses
  %i.aqt = bitcast <8 x i64> %i.aqj to <64 x i8>
  %i.aqu = shufflevector <64 x i8> %i.aqt, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aqv = sext <32 x i8> %i.aqu to <32 x i16>    ; 2 uses
  %i.aqw = shufflevector <8 x i16> %i.aqf, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apv, <32 x i16> %i.aqw, <32 x i16> %i.aqm)
  %i.aqy = shufflevector <8 x i16> %i.aqg, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apu, <32 x i16> %i.aqy, <32 x i16> %i.aqm)
  %i.ara = shufflevector <8 x i16> %i.aqf, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.arb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.apt, <32 x i16> %i.ara, <32 x i16> %i.aqp)
  %i.arc = shufflevector <8 x i16> %i.aqg, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
end_hunk_8
begin_hunk_9_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  br label %.noexc835.us

.noexc835.us:                                     ; preds = %._crit_edge2495.us, %.noexc835.lr.ph.split.us
  %.07292502.us = phi i32 [ 0, %.noexc835.lr.ph.split.us ], [ %i.azw, %._crit_edge2495.us ] ; 2 uses
  %.07302501.us = phi ptr [ %i.avs, %.noexc835.lr.ph.split.us ], [ %scevgep2756, %._crit_edge2495.us ] ; 2 uses
  %i.awr = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.azu, %._crit_edge2495.us ]
  %i.aws = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.azr, %._crit_edge2495.us ]
  %i.awt = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.azo, %._crit_edge2495.us ]
  %i.awu = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.azl, %._crit_edge2495.us ]
  %i.awv = sdiv i32 %.07292502.us, %i.avv
  %i.aww = sext i32 %i.awv to i64
  %.reass2510.us = mul i64 %factor.op.mul2509, %i.aww
  %gep2513.us = getelementptr i8, ptr %invariant.gep2512, i64 %.reass2510.us
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc835.us, %bb.ak
  %indvars.iv2753 = phi i64 [ 0, %.noexc835.us ], [ %indvars.iv.next2754, %bb.ak ] ; 2 uses
  %.17312492.us = phi ptr [ %.07302501.us, %.noexc835.us ], [ %i.azv, %bb.ak ] ; 5 uses
  %i.awx = phi <16 x i32> [ %i.awr, %.noexc835.us ], [ %i.azu, %bb.ak ]
  %i.awy = phi <16 x i32> [ %i.aws, %.noexc835.us ], [ %i.azr, %bb.ak ]
  %i.awz = phi <16 x i32> [ %i.awt, %.noexc835.us ], [ %i.azo, %bb.ak ]
  %i.axa = phi <16 x i32> [ %i.awu, %.noexc835.us ], [ %i.azl, %bb.ak ]
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awn, i64 %indvars.iv2753
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !10
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds i8, ptr %gep2513.us, i64 %i.axd ; 4 uses
  switch i32 %i.avv, label %bb.aj [
    i32 16, label %bb.ai
    i32 8, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.axf = load i64, ptr %i.axe, align 1, !tbaa !30
  %i.axg = insertelement <2 x i64> poison, i64 %i.axf, i64 0
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.aa
  %i.axi = load i64, ptr %i.axh, align 1, !tbaa !30
  %i.axj = insertelement <2 x i64> %i.axg, i64 %i.axi, i64 1
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.axk = load <2 x i64>, ptr %i.axe, align 16, !tbaa !30
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.axl = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.axe, <16 x i32> %i.acv, <16 x i1> splat (i1 true), i32 1)
  %i.axm = trunc <16 x i32> %i.axl to <16 x i8>
  %i.axn = bitcast <16 x i8> %i.axm to <2 x i64>
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0727.us = phi <2 x i64> [ %i.axk, %bb.ai ], [ %i.axj, %bb.ah ], [ %i.axn, %bb.aj ]
  %i.axo = bitcast <2 x i64> %.0727.us to <16 x i8>
  %i.axp = sext <16 x i8> %i.axo to <16 x i16>    ; 2 uses
  %i.axq = load <8 x i64>, ptr %.17312492.us, align 64, !tbaa !30 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 64
  %i.axs = load <8 x i64>, ptr %i.axr, align 64, !tbaa !30 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 128
  %i.axu = load <8 x i64>, ptr %i.axt, align 64, !tbaa !30 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 192
  %i.axw = load <8 x i64>, ptr %i.axv, align 64, !tbaa !30 ; 2 uses
  %i.axx = bitcast <8 x i64> %i.axq to <64 x i8>
  %i.axy = shufflevector <64 x i8> %i.axx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axz = sext <32 x i8> %i.axy to <32 x i16>
  %i.aya = bitcast <8 x i64> %i.axq to <64 x i8>
  %i.ayb = shufflevector <64 x i8> %i.aya, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ayc = sext <32 x i8> %i.ayb to <32 x i16>
  %i.ayd = bitcast <8 x i64> %i.axs to <64 x i8>
  %i.aye = shufflevector <64 x i8> %i.ayd, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayf = sext <32 x i8> %i.aye to <32 x i16>
  %i.ayg = bitcast <8 x i64> %i.axs to <64 x i8>
  %i.ayh = shufflevector <64 x i8> %i.ayg, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ayi = sext <32 x i8> %i.ayh to <32 x i16>
  %i.ayj = bitcast <8 x i64> %i.axu to <64 x i8>
  %i.ayk = shufflevector <64 x i8> %i.ayj, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayl = sext <32 x i8> %i.ayk to <32 x i16>
  %i.aym = bitcast <8 x i64> %i.axu to <64 x i8>
  %i.ayn = shufflevector <64 x i8> %i.aym, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ayo = sext <32 x i8> %i.ayn to <32 x i16>
  %i.ayp = bitcast <8 x i64> %i.axw to <64 x i8>
  %i.ayq = shufflevector <64 x i8> %i.ayp, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayr = sext <32 x i8> %i.ayq to <32 x i16>
  %i.ays = bitcast <8 x i64> %i.axw to <64 x i8>
  %i.ayt = shufflevector <64 x i8> %i.ays, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ayu = sext <32 x i8> %i.ayt to <32 x i16>
  %i.ayv = bitcast <16 x i16> %i.axp to <8 x i32> ; 4 uses
  %i.ayw = bitcast <16 x i16> %i.axp to <8 x i32> ; 4 uses
  %i.ayx = shufflevector <8 x i32> %i.ayv, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.ayy = bitcast <16 x i32> %i.ayx to <32 x i16>
  %i.ayz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.axa, <32 x i16> %i.ayy, <32 x i16> %i.axz)
  %i.aza = shufflevector <8 x i32> %i.ayv, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.azb = bitcast <16 x i32> %i.aza to <32 x i16>
  %i.azc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.awz, <32 x i16> %i.azb, <32 x i16> %i.ayc)
  %i.azd = shufflevector <8 x i32> %i.ayv, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aze = bitcast <16 x i32> %i.azd to <32 x i16>
  %i.azf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.awy, <32 x i16> %i.aze, <32 x i16> %i.ayf)
  %i.azg = shufflevector <8 x i32> %i.ayv, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.azh = bitcast <16 x i32> %i.azg to <32 x i16>
  %i.azi = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.awx, <32 x i16> %i.azh, <32 x i16> %i.ayi)
  %i.azj = shufflevector <8 x i32> %i.ayw, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.azk = bitcast <16 x i32> %i.azj to <32 x i16>
  %i.azl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ayz, <32 x i16> %i.azk, <32 x i16> %i.ayl) ; 3 uses
  %i.azm = shufflevector <8 x i32> %i.ayw, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.azn = bitcast <16 x i32> %i.azm to <32 x i16>
  %i.azo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.azc, <32 x i16> %i.azn, <32 x i16> %i.ayo) ; 3 uses
  %i.azp = shufflevector <8 x i32> %i.ayw, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.azq = bitcast <16 x i32> %i.azp to <32 x i16>
  %i.azr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.azf, <32 x i16> %i.azq, <32 x i16> %i.ayr) ; 3 uses
  %i.azs = shufflevector <8 x i32> %i.ayw, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.azt = bitcast <16 x i32> %i.azs to <32 x i16>
  %i.azu = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.azi, <32 x i16> %i.azt, <32 x i16> %i.ayu) ; 3 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 256
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %exitcond2759.not = icmp eq i64 %indvars.iv.next2754, %wide.trip.count2758
  br i1 %exitcond2759.not, label %._crit_edge2495.us, label %bb.ag, !llvm.loop !417

._crit_edge2495.us:                               ; preds = %bb.ak
  %scevgep2755 = getelementptr i8, ptr %.07302501.us, i64 256
  %scevgep2756 = getelementptr i8, ptr %scevgep2755, i64 %i.awq ; 2 uses
  %i.azw = add nuw nsw i32 %.07292502.us, 16      ; 2 uses
  %i.azx = or disjoint i32 %i.azw, 15
  %i.azy = icmp slt i32 %i.azx, %i.avt
  br i1 %i.azy, label %.noexc835.us, label %.preheader2139.loopexit, !llvm.loop !418

.preheader2139.loopexit:                          ; preds = %._crit_edge2495.us
  %i.azz = and i32 %i.avt, 2147483632
  br label %.preheader2139

.preheader2139:                                   ; preds = %.noexc835.preheader, %.preheader2139.loopexit, %.noexc837
  %.lcssa2211 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.azl, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2210 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.azo, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2209 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.azr, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2208 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.azu, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.0730.lcssa = phi ptr [ %i.avs, %.noexc837 ], [ %scevgep2756, %.preheader2139.loopexit ], [ %i.avs, %.noexc835.preheader ] ; 2 uses
  %.0729.lcssa = phi i32 [ 0, %.noexc837 ], [ %i.azz, %.preheader2139.loopexit ], [ %i.awm, %.noexc835.preheader ] ; 3 uses
  %i.baa = or disjoint i32 %.0729.lcssa, 7
  %i.bab = icmp slt i32 %i.baa, %i.avt
  br i1 %i.bab, label %.noexc833.lr.ph, label %.preheader2138

.noexc833.lr.ph:                                  ; preds = %.preheader2139
  %i.bac = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bad = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !445
  %i.bae = load ptr, ptr %4, align 8, !tbaa !28, !noalias !445
  %i.baf = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !445
  %i.bag = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !445 ; 2 uses
  %factor.op.mul2542 = mul i64 %i.baf, %i.bag
  %i.bah = sext i32 %i.bad to i64
  %i.bai = load i32, ptr %9, align 4, !tbaa !10
  %i.baj = mul nsw i32 %i.bai, %i.avl
  %i.bak = sext i32 %i.baj to i64
  %i.bal = mul i64 %i.bag, %i.bah
  %i.bam = mul i64 %i.bal, %i.bak
  %invariant.gep2544 = getelementptr i8, ptr %i.bae, i64 %i.bam
  %i.ban = load i32, ptr %10, align 4, !tbaa !10
  %i.bao = mul i32 %i.bac, %i.avm
  %i.bap = mul i32 %i.bao, %i.ban
  %i.baq = sext i32 %i.bap to i64
  %invariant.gep2545 = getelementptr i8, ptr %invariant.gep2544, i64 %i.baq
  %i.bar = load i32, ptr %11, align 4, !tbaa !10  ; 4 uses
  %i.bas = icmp sgt i32 %i.bar, 0
  %i.bat = add i32 %i.bar, -1
  %i.bau = zext i32 %i.bat to i64
  %i.bav = shl nuw nsw i64 %i.bau, 7              ; 2 uses
  %i.baw = icmp eq i32 %i.bac, 8
  %wide.trip.count2765 = zext nneg i32 %i.bar to i64
  %wide.trip.count2772 = zext nneg i32 %i.bar to i64
  br label %.noexc833

.preheader2138:                                   ; preds = %._crit_edge2523, %.preheader2139
  %.lcssa2219 = phi <16 x i32> [ %.lcssa2211, %.preheader2139 ], [ %.lcssa2215, %._crit_edge2523 ] ; 3 uses
  %.lcssa2218 = phi <16 x i32> [ %.lcssa2210, %.preheader2139 ], [ %.lcssa2214, %._crit_edge2523 ]
  %.lcssa2217 = phi <16 x i32> [ %.lcssa2209, %.preheader2139 ], [ %.lcssa2213, %._crit_edge2523 ]
  %.lcssa2216 = phi <16 x i32> [ %.lcssa2208, %.preheader2139 ], [ %.lcssa2212, %._crit_edge2523 ]
  %.2732.lcssa = phi ptr [ %.0730.lcssa, %.preheader2139 ], [ %.3733.lcssa, %._crit_edge2523 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0729.lcssa, %.preheader2139 ], [ %i.bfp, %._crit_edge2523 ] ; 5 uses
  %i.bax = or disjoint i32 %.1.lcssa, 1
  %i.bay = icmp slt i32 %i.bax, %i.avt
  br i1 %i.bay, label %.noexc831.lr.ph, label %.preheader

.noexc831.lr.ph:                                  ; preds = %.preheader2138
  %i.baz = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !446
  %i.bba = load ptr, ptr %4, align 8, !tbaa !28, !noalias !446
  %i.bbb = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !446
  %i.bbc = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !446 ; 2 uses
  %factor.op.mul2558 = mul i64 %i.bbb, %i.bbc
  %i.bbd = sext i32 %i.baz to i64
  %i.bbe = load i32, ptr %9, align 4, !tbaa !10
  %i.bbf = mul nsw i32 %i.bbe, %i.avl
  %i.bbg = sext i32 %i.bbf to i64
  %i.bbh = mul i64 %i.bbc, %i.bbd
  %i.bbi = mul i64 %i.bbh, %i.bbg
  %invariant.gep2560 = getelementptr i8, ptr %i.bba, i64 %i.bbi
  %i.bbj = load i32, ptr %10, align 4, !tbaa !10
  %i.bbk = mul nsw i32 %i.bbj, %i.avm
  %i.bbl = sext i32 %i.bbk to i64
  %invariant.gep2561 = getelementptr i8, ptr %invariant.gep2560, i64 %i.bbl
  %i.bbm = load i32, ptr %11, align 4, !tbaa !10  ; 5 uses
  %i.bbn = icmp sgt i32 %i.bbm, 0
  br i1 %i.bbn, label %.noexc831.lr.ph.split.us, label %.noexc831.preheader

.noexc831.preheader:                              ; preds = %.noexc831.lr.ph
  %i.bbo = add nuw nsw i32 %.1.lcssa, 2
  %i.bbp = add nsw i32 %i.avt, -2
  %i.bbq = sub nsw i32 %i.bbp, %.1.lcssa
  %i.bbr = and i32 %i.bbq, -2
  %i.bbs = add i32 %i.bbo, %i.bbr
  br label %.preheader

.noexc831.lr.ph.split.us:                         ; preds = %.noexc831.lr.ph
  %i.bbt = load ptr, ptr %12, align 8, !tbaa !21  ; 3 uses
  %i.bbu = add nsw i32 %i.bbm, -1
  %i.bbv = zext nneg i32 %i.bbu to i64
  %i.bbw = shl nuw nsw i64 %i.bbv, 5
  %i.bbx = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count2779 = zext nneg i32 %i.bbm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count2779, 1
  %i.bby = icmp eq i32 %i.bbm, 1
  %unroll_iter = and i64 %wide.trip.count2779, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3004 = trunc i32 %i.bbm to i1
  br label %.noexc831.us

.noexc831.us:                                     ; preds = %._crit_edge2550.us, %.noexc831.lr.ph.split.us
  %indvars.iv2781 = phi i64 [ %indvars.iv.next2782, %._crit_edge2550.us ], [ %i.bbx, %.noexc831.lr.ph.split.us ] ; 2 uses
  %.42553.us = phi ptr [ %scevgep2777, %._crit_edge2550.us ], [ %.2732.lcssa, %.noexc831.lr.ph.split.us ] ; 3 uses
  %i.bbz = phi <16 x i32> [ %.lcssa3001, %._crit_edge2550.us ], [ %.lcssa2219, %.noexc831.lr.ph.split.us ] ; 2 uses
  %.reass2559.us = mul i64 %factor.op.mul2558, %indvars.iv2781
  %gep2562.us = getelementptr i8, ptr %invariant.gep2561, i64 %.reass2559.us ; 3 uses
  br i1 %i.bby, label %.epil.preheader, label %.noexc831.us.new

.noexc831.us.new:                                 ; preds = %.noexc831.us, %.noexc831.us.new
  %indvars.iv2774 = phi i64 [ %indvars.iv.next2775.1, %.noexc831.us.new ], [ 0, %.noexc831.us ] ; 3 uses
  %.52547.us = phi ptr [ %i.bdh, %.noexc831.us.new ], [ %.42553.us, %.noexc831.us ] ; 3 uses
  %i.bca = phi <16 x i32> [ %i.bdg, %.noexc831.us.new ], [ %i.bbz, %.noexc831.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc831.us.new ], [ 0, %.noexc831.us ]
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %indvars.iv2774
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !10
  %i.bcd = sext i32 %i.bcc to i64
  %i.bce = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bcd ; 2 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !30
  %i.bcg = sext i8 %i.bcf to i16
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.aa
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !30
  %i.bcj = sext i8 %i.bci to i16
  %i.bck = insertelement <8 x i16> poison, i16 %i.bcg, i64 0
  %i.bcl = insertelement <8 x i16> %i.bck, i16 %i.bcj, i64 1
  %i.bcm = load <32 x i8>, ptr %.52547.us, align 32, !tbaa !30
  %i.bcn = sext <32 x i8> %i.bcm to <32 x i16>
  %i.bco = shufflevector <8 x i16> %i.bcl, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bcp = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bca, <32 x i16> %i.bco, <32 x i16> %i.bcn)
  %i.bcq = getelementptr inbounds nuw i8, ptr %.52547.us, i64 32
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %indvars.iv2774
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 4
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !10
  %i.bcu = sext i32 %i.bct to i64
  %i.bcv = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bcu ; 2 uses
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !30
  %i.bcx = sext i8 %i.bcw to i16
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.aa
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !30
  %i.bda = sext i8 %i.bcz to i16
  %i.bdb = insertelement <8 x i16> poison, i16 %i.bcx, i64 0
  %i.bdc = insertelement <8 x i16> %i.bdb, i16 %i.bda, i64 1
  %i.bdd = load <32 x i8>, ptr %i.bcq, align 32, !tbaa !30
  %i.bde = sext <32 x i8> %i.bdd to <32 x i16>
  %i.bdf = shufflevector <8 x i16> %i.bdc, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bdg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bcp, <32 x i16> %i.bdf, <32 x i16> %i.bde) ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %.52547.us, i64 64 ; 2 uses
  %indvars.iv.next2775.1 = add nuw nsw i64 %indvars.iv2774, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2550.us.unr-lcssa, label %.noexc831.us.new, !llvm.loop !423

._crit_edge2550.us.unr-lcssa:                     ; preds = %.noexc831.us.new
  br i1 %lcmp.mod.not, label %._crit_edge2550.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2550.us.unr-lcssa, %.noexc831.us
  %indvars.iv2774.epil.init = phi i64 [ 0, %.noexc831.us ], [ %indvars.iv.next2775.1, %._crit_edge2550.us.unr-lcssa ]
  %.52547.us.epil.init = phi ptr [ %.42553.us, %.noexc831.us ], [ %i.bdh, %._crit_edge2550.us.unr-lcssa ]
  %.epil.init = phi <16 x i32> [ %i.bbz, %.noexc831.us ], [ %i.bdg, %._crit_edge2550.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3004)
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %indvars.iv2774.epil.init
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !10
  %i.bdk = sext i32 %i.bdj to i64
  %i.bdl = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bdk ; 2 uses
  %i.bdm = load i8, ptr %i.bdl, align 1, !tbaa !30
  %i.bdn = sext i8 %i.bdm to i16
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdl, i64 %i.aa
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !30
  %i.bdq = sext i8 %i.bdp to i16
  %i.bdr = insertelement <8 x i16> poison, i16 %i.bdn, i64 0
  %i.bds = insertelement <8 x i16> %i.bdr, i16 %i.bdq, i64 1
  %i.bdt = load <32 x i8>, ptr %.52547.us.epil.init, align 32, !tbaa !30
  %i.bdu = sext <32 x i8> %i.bdt to <32 x i16>
  %i.bdv = shufflevector <8 x i16> %i.bds, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bdw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.epil.init, <32 x i16> %i.bdv, <32 x i16> %i.bdu)
  br label %._crit_edge2550.us

._crit_edge2550.us:                               ; preds = %._crit_edge2550.us.unr-lcssa, %.epil.preheader
  %.lcssa3001 = phi <16 x i32> [ %i.bdg, %._crit_edge2550.us.unr-lcssa ], [ %i.bdw, %.epil.preheader ] ; 2 uses
  %scevgep2776 = getelementptr i8, ptr %.42553.us, i64 32
  %scevgep2777 = getelementptr i8, ptr %scevgep2776, i64 %i.bbw ; 2 uses
  %indvars.iv.next2782 = add nuw nsw i64 %indvars.iv2781, 2 ; 3 uses
  %i.bdx = trunc i64 %indvars.iv.next2782 to i32
  %i.bdy = or i32 %i.bdx, 1
  %i.bdz = icmp slt i32 %i.bdy, %i.avt
  br i1 %i.bdz, label %.noexc831.us, label %.preheader.loopexit, !llvm.loop !424

.noexc833:                                        ; preds = %.noexc833.lr.ph, %._crit_edge2523
  %.12535 = phi i32 [ %.0729.lcssa, %.noexc833.lr.ph ], [ %i.bfp, %._crit_edge2523 ] ; 2 uses
  %.27322534 = phi ptr [ %.0730.lcssa, %.noexc833.lr.ph ], [ %.3733.lcssa, %._crit_edge2523 ] ; 5 uses
  %i.bea = phi <16 x i32> [ %.lcssa2208, %.noexc833.lr.ph ], [ %.lcssa2212, %._crit_edge2523 ] ; 3 uses
  %i.beb = phi <16 x i32> [ %.lcssa2209, %.noexc833.lr.ph ], [ %.lcssa2213, %._crit_edge2523 ] ; 3 uses
  %i.bec = phi <16 x i32> [ %.lcssa2210, %.noexc833.lr.ph ], [ %.lcssa2214, %._crit_edge2523 ] ; 3 uses
  %i.bed = phi <16 x i32> [ %.lcssa2211, %.noexc833.lr.ph ], [ %.lcssa2215, %._crit_edge2523 ] ; 3 uses
  %i.bee = sdiv i32 %.12535, %i.bac
  %i.bef = sext i32 %i.bee to i64
  %.reass2543 = mul i64 %factor.op.mul2542, %i.bef
  %gep2546 = getelementptr i8, ptr %invariant.gep2545, i64 %.reass2543 ; 2 uses
  br i1 %i.bas, label %.lr.ph2522, label %._crit_edge2523

.lr.ph2522:                                       ; preds = %.noexc833
  %i.beg = load ptr, ptr %12, align 8, !tbaa !21  ; 2 uses
  br i1 %i.baw, label %.lr.ph2522.split.us, label %.lr.ph2522.split

.lr.ph2522.split.us:                              ; preds = %.lr.ph2522, %.lr.ph2522.split.us
  %indvars.iv2767 = phi i64 [ %indvars.iv.next2768, %.lr.ph2522.split.us ], [ 0, %.lr.ph2522 ] ; 2 uses
  %.37332520.us = phi ptr [ %i.bfo, %.lr.ph2522.split.us ], [ %.27322534, %.lr.ph2522 ] ; 3 uses
  %i.beh = phi <16 x i32> [ %i.bfn, %.lr.ph2522.split.us ], [ %i.bea, %.lr.ph2522 ]
  %i.bei = phi <16 x i32> [ %i.bfl, %.lr.ph2522.split.us ], [ %i.beb, %.lr.ph2522 ]
  %i.bej = phi <16 x i32> [ %i.bfj, %.lr.ph2522.split.us ], [ %i.bec, %.lr.ph2522 ]
  %i.bek = phi <16 x i32> [ %i.bfh, %.lr.ph2522.split.us ], [ %i.bed, %.lr.ph2522 ]
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.beg, i64 %indvars.iv2767
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !10
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %gep2546, i64 %i.ben
  %i.bep = load <8 x i8>, ptr %i.beo, align 1, !tbaa !30
  %i.beq = sext <8 x i8> %i.bep to <8 x i16>      ; 4 uses
  %i.ber = load <8 x i64>, ptr %.37332520.us, align 64, !tbaa !30 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %.37332520.us, i64 64
  %i.bet = load <8 x i64>, ptr %i.bes, align 64, !tbaa !30 ; 2 uses
  %i.beu = bitcast <8 x i64> %i.ber to <64 x i8>
  %i.bev = shufflevector <64 x i8> %i.beu, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bew = sext <32 x i8> %i.bev to <32 x i16>
  %i.bex = bitcast <8 x i64> %i.ber to <64 x i8>
  %i.bey = shufflevector <64 x i8> %i.bex, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bez = sext <32 x i8> %i.bey to <32 x i16>
  %i.bfa = bitcast <8 x i64> %i.bet to <64 x i8>
  %i.bfb = shufflevector <64 x i8> %i.bfa, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfc = sext <32 x i8> %i.bfb to <32 x i16>
  %i.bfd = bitcast <8 x i64> %i.bet to <64 x i8>
  %i.bfe = shufflevector <64 x i8> %i.bfd, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bff = sext <32 x i8> %i.bfe to <32 x i16>
  %i.bfg = shufflevector <8 x i16> %i.beq, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bfh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bek, <32 x i16> %i.bfg, <32 x i16> %i.bew) ; 2 uses
  %i.bfi = shufflevector <8 x i16> %i.beq, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.bfj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bej, <32 x i16> %i.bfi, <32 x i16> %i.bez) ; 2 uses
  %i.bfk = shufflevector <8 x i16> %i.beq, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.bfl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bei, <32 x i16> %i.bfk, <32 x i16> %i.bfc) ; 2 uses
  %i.bfm = shufflevector <8 x i16> %i.beq, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.bfn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.beh, <32 x i16> %i.bfm, <32 x i16> %i.bff) ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.37332520.us, i64 128
  %indvars.iv.next2768 = add nuw nsw i64 %indvars.iv2767, 1 ; 2 uses
  %exitcond2773.not = icmp eq i64 %indvars.iv.next2768, %wide.trip.count2772
  br i1 %exitcond2773.not, label %._crit_edge2523.loopexit, label %.lr.ph2522.split.us, !llvm.loop !425

._crit_edge2523.loopexit:                         ; preds = %.lr.ph2522.split.us
  %scevgep2769 = getelementptr i8, ptr %.27322534, i64 128
  %scevgep2770 = getelementptr i8, ptr %scevgep2769, i64 %i.bav
  br label %._crit_edge2523

._crit_edge2523.loopexit2588:                     ; preds = %.lr.ph2522.split
  %scevgep2762 = getelementptr i8, ptr %.27322534, i64 128
  %scevgep2763 = getelementptr i8, ptr %scevgep2762, i64 %i.bav
  br label %._crit_edge2523

._crit_edge2523:                                  ; preds = %._crit_edge2523.loopexit2588, %._crit_edge2523.loopexit, %.noexc833
  %.lcssa2215 = phi <16 x i32> [ %i.bed, %.noexc833 ], [ %i.bfh, %._crit_edge2523.loopexit ], [ %i.bgt, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2214 = phi <16 x i32> [ %i.bec, %.noexc833 ], [ %i.bfj, %._crit_edge2523.loopexit ], [ %i.bgv, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2213 = phi <16 x i32> [ %i.beb, %.noexc833 ], [ %i.bfl, %._crit_edge2523.loopexit ], [ %i.bgx, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2212 = phi <16 x i32> [ %i.bea, %.noexc833 ], [ %i.bfn, %._crit_edge2523.loopexit ], [ %i.bgz, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.3733.lcssa = phi ptr [ %.27322534, %.noexc833 ], [ %scevgep2770, %._crit_edge2523.loopexit ], [ %scevgep2763, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %i.bfp = add nuw nsw i32 %.12535, 8             ; 3 uses
  %i.bfq = or disjoint i32 %i.bfp, 7
  %i.bfr = icmp slt i32 %i.bfq, %i.avt
  br i1 %i.bfr, label %.noexc833, label %.preheader2138, !llvm.loop !426

.lr.ph2522.split:                                 ; preds = %.lr.ph2522, %.lr.ph2522.split
  %indvars.iv2760 = phi i64 [ %indvars.iv.next2761, %.lr.ph2522.split ], [ 0, %.lr.ph2522 ] ; 2 uses
  %.37332520 = phi ptr [ %i.bha, %.lr.ph2522.split ], [ %.27322534, %.lr.ph2522 ] ; 3 uses
  %i.bfs = phi <16 x i32> [ %i.bgz, %.lr.ph2522.split ], [ %i.bea, %.lr.ph2522 ]
  %i.bft = phi <16 x i32> [ %i.bgx, %.lr.ph2522.split ], [ %i.beb, %.lr.ph2522 ]
  %i.bfu = phi <16 x i32> [ %i.bgv, %.lr.ph2522.split ], [ %i.bec, %.lr.ph2522 ]
  %i.bfv = phi <16 x i32> [ %i.bgt, %.lr.ph2522.split ], [ %i.bed, %.lr.ph2522 ]
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.beg, i64 %indvars.iv2760
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !10
  %i.bfy = sext i32 %i.bfx to i64
  %i.bfz = getelementptr inbounds i8, ptr %gep2546, i64 %i.bfy
  %i.bga = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bfz, <8 x i32> %i.acy, <8 x i32> splat (i32 -1), i8 1)
  %i.bgb = trunc <8 x i32> %i.bga to <8 x i8>
  %i.bgc = sext <8 x i8> %i.bgb to <8 x i16>      ; 4 uses
  %i.bgd = load <8 x i64>, ptr %.37332520, align 64, !tbaa !30 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
  store <8 x i32> %i.gg, ptr %i.gf, align 32, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %i.by, label %bb.q [
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k, %bb.h, %.split.us.i
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.cb ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx537.i ; 2 uses
  %i.gk = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gk, ptr %i.fb, align 16, !tbaa !30
  %i.gl = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.gl, ptr %i.gh, align 16, !tbaa !30
  %i.gm = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gm, ptr %i.gi, align 16, !tbaa !30
  %i.gn = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gn, ptr %i.gj, align 16, !tbaa !30
  br i1 %i.fd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.gp = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gp, ptr %i.go, align 16, !tbaa !30
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gr = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.gr, ptr %i.gq, align 16, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gt = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gt, ptr %i.gs, align 16, !tbaa !30
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gv = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gv, ptr %i.gu, align 16, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.cp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.h, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %i.fb, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.fx, i32 4)
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.gw, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.fy, i32 4)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.h, %.split.us.i, %bb.e
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.cv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4ncnn3MatD2Ev.exit545.us.i
  %.1525.us.i = phi ptr [ %i.fb, %_ZN4ncnn3MatD2Ev.exit545.us.i ], [ %i.gx, %bb.q ] ; 12 uses
  %i.gy = or disjoint i32 %i.et, 1
  %.not536.us.1.i = icmp slt i32 %i.gy, %i.bx
  br i1 %.not536.us.1.i, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.gz = add <16 x i32> %i.dk, %i.ds
  %i.ha = add <16 x i32> %i.gz, %i.ea
  %i.hb = add <16 x i32> %i.ds, %i.ee
  %i.hc = add <16 x i32> %i.ea, %i.ef
  %i.hd = sub <16 x i32> %i.hb, %i.hc
  %i.he = add <16 x i32> %i.hd, %i.eg
  %i.hf = ashr <16 x i32> %i.ha, splat (i32 2)    ; 8 uses
  %i.hg = ashr <16 x i32> %i.he, splat (i32 2)    ; 8 uses
  br i1 %i.cn, label %.split.us.1.i, label %bb.ae

.split.us.1.i:                                    ; preds = %bb.s
  switch i32 %i.co, label %bb.ae [
    i32 4, label %bb.t
    i32 3, label %bb.w
    i32 2, label %bb.z
    i32 0, label %bb.ac
  ]

bb.t:                                             ; preds = %.split.us.1.i
  store <16 x i32> %i.hf, ptr %.1525.us.i, align 64, !tbaa !30
  br i1 %i.fd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hh = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 64
  store <16 x i32> %i.hg, ptr %i.hh, align 64, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i32 %i.by, label %bb.ae [
    i32 8, label %bb.w
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v, %.split.us.1.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.cb ; 2 uses
  %i.hj = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hj, ptr %.1525.us.i, align 32, !tbaa !30
  %i.hk = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.hk, ptr %i.hi, align 32, !tbaa !30
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hl = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 32
  %i.hm = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hm, ptr %i.hl, align 32, !tbaa !30
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.ho = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ho, ptr %i.hn, align 32, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  switch i32 %i.by, label %bb.ae [
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y, %bb.v, %.split.us.1.i
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.cb ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx.i ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx537.i ; 2 uses
  %i.hs = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hs, ptr %.1525.us.i, align 16, !tbaa !30
  %i.ht = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ht, ptr %i.hp, align 16, !tbaa !30
  %i.hu = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.hu, ptr %i.hq, align 16, !tbaa !30
  %i.hv = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.hv, ptr %i.hr, align 16, !tbaa !30
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 16
  %i.hx = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hx, ptr %i.hw, align 16, !tbaa !30
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hz, ptr %i.hy, align 16, !tbaa !30
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ib = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ib, ptr %i.ia, align 16, !tbaa !30
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.id = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.id, ptr %i.ic, align 16, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.v, %.split.us.1.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.1525.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.hf, i32 4)
  br i1 %i.fd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ie, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.hg, i32 4)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %.split.us.1.i, %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit545.us.i, !llvm.loop !584

._crit_edge.us.i:                                 ; preds = %bb.ae
  %indvars.iv.next766.i = add nuw nsw i64 %indvars.iv765.i, 16 ; 3 uses
  %i.if = or disjoint i64 %indvars.iv.next766.i, 15
  %i.ig = icmp samesign ult i64 %i.if, %i.bj
  br i1 %i.ig, label %.lr.ph.us.i, label %.preheader663.loopexit.i, !llvm.loop !585

.preheader663.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.ih = trunc nsw i64 %indvars.iv.next766.i to i32
  br label %.preheader663.i

.preheader663.i:                                  ; preds = %.lr.ph675.i, %.preheader663.loopexit.i, %._crit_edge
  %.0502.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ih, %.preheader663.loopexit.i ], [ %i.bi, %.lr.ph675.i ] ; 5 uses
  %i.ii = or disjoint i32 %.0502.lcssa.i, 7
  %i.ij = icmp slt i32 %i.ii, %.sroa.speculated120
  br i1 %i.ij, label %.lr.ph686.i, label %.preheader662.i

.lr.ph686.i:                                      ; preds = %.preheader663.i
  %i.ik = icmp sgt i32 %.sroa.speculated116, 0
  %i.il = shl nuw nsw i32 %.sroa.speculated116, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = zext nneg i32 %factor.op.mul672.i to i64
  %i.io = mul nuw nsw i32 %.sroa.speculated116, 24
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = shl nuw nsw i32 %.sroa.speculated116, 5
  %i.ir = zext nneg i32 %i.iq to i64              ; 12 uses
  %i.is = trunc i64 %i.cb to i32
  %i.it = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %i.iu = shufflevector <8 x i32> %i.it, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.iv = mul <8 x i32> %i.iu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.iw = mul nsw i32 %i.by, %i.bw
  %i.ix = sext i32 %i.iw to i64
  br i1 %i.ik, label %.lr.ph.us689.preheader.i, label %.lr.ph686.split.preheader.i

.lr.ph686.split.preheader.i:                      ; preds = %.lr.ph686.i
  %i.iy = sub i32 %i.bk, %.0502.lcssa.i
  %i.iz = and i32 %i.iy, -8
  %i.ja = add nsw i32 %.0502.lcssa.i, 8
  %i.jb = add i32 %i.ja, %i.iz
  br label %.preheader662.i

.lr.ph.us689.preheader.i:                         ; preds = %.lr.ph686.i
  %i.jc = sext i32 %.0502.lcssa.i to i64
  %wide.trip.count778.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us689.i

.lr.ph.us689.i:                                   ; preds = %._crit_edge.us690.i, %.lr.ph.us689.preheader.i
  %indvars.iv780.i = phi i64 [ %i.jc, %.lr.ph.us689.preheader.i ], [ %indvars.iv.next781.i, %._crit_edge.us690.i ] ; 2 uses
  %i.jd = trunc nsw i64 %indvars.iv780.i to i32   ; 2 uses
  %factor.op.mul.reass.us688.i = mul i32 %factor.op.mul672.i, %i.jd
  %i.je = sext i32 %factor.op.mul.reass.us688.i to i64
  %i.jf = add i32 %i.at, %i.jd
  %i.jg = sdiv i32 %i.jf, %i.by
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.je
  br label %_ZN4ncnn3MatD2Ev.exit544.us.i

_ZN4ncnn3MatD2Ev.exit544.us.i:                    ; preds = %bb.av, %.lr.ph.us689.i
  %indvars.iv775.i = phi i64 [ 0, %.lr.ph.us689.i ], [ %indvars.iv.next776.i, %bb.av ] ; 3 uses
  %.idx873.i = shl nuw nsw i64 %indvars.iv775.i, 5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx873.i ; 5 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.im ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.in ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ip ; 2 uses
  %i.jn = load <8 x i32>, ptr %i.jk, align 32, !tbaa !30 ; 2 uses
  %i.jo = load <8 x i32>, ptr %i.jl, align 32, !tbaa !30 ; 2 uses
  %i.jp = load <8 x i32>, ptr %i.jm, align 32, !tbaa !30
  %i.jq = sub <8 x i32> %i.jn, %i.jo
  %i.jr = add <8 x i32> %i.jq, %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ir ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ir ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ir ; 2 uses
  %i.jv = load <8 x i32>, ptr %i.js, align 32, !tbaa !30 ; 2 uses
  %i.jw = load <8 x i32>, ptr %i.jt, align 32, !tbaa !30 ; 2 uses
  %i.jx = load <8 x i32>, ptr %i.ju, align 32, !tbaa !30
  %i.jy = sub <8 x i32> %i.jv, %i.jw
  %i.jz = add <8 x i32> %i.jy, %i.jx              ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ir ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ir ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ir ; 2 uses
  %i.kd = load <8 x i32>, ptr %i.ka, align 32, !tbaa !30 ; 2 uses
  %i.ke = load <8 x i32>, ptr %i.kb, align 32, !tbaa !30 ; 2 uses
  %i.kf = load <8 x i32>, ptr %i.kc, align 32, !tbaa !30
  %i.kg = sub <8 x i32> %i.kd, %i.ke
  %i.kh = add <8 x i32> %i.kg, %i.kf              ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ir
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.ir
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ir
  %i.kl = load <8 x i32>, ptr %i.ki, align 32, !tbaa !30 ; 2 uses
  %i.km = load <8 x i32>, ptr %i.kj, align 32, !tbaa !30 ; 2 uses
  %i.kn = load <8 x i32>, ptr %i.kk, align 32, !tbaa !30
  %i.ko = trunc i64 %indvars.iv775.i to i32
  %i.kp = add i32 %.044161, %i.ko                 ; 2 uses
  %i.kq = sdiv i32 %i.kp, %i.cd
  %i.kr = srem i32 %i.kp, %i.cd
  %i.ks = load i32, ptr %i.an, align 4, !tbaa !16, !noalias !614
  %i.kt = load ptr, ptr %12, align 8, !tbaa !28, !noalias !614
  %i.ku = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !614
  %i.kv = mul i64 %i.ku, %i.jh
  %i.kw = load i64, ptr %i.ar, align 8, !tbaa !29, !noalias !614 ; 2 uses
  %i.kx = mul i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kx
  %i.kz = sext i32 %i.ks to i64
  %i.la = shl nsw i32 %i.kq, 1                    ; 3 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul nsw i64 %i.kz, %i.lb
  %i.ld = mul i64 %i.lc, %i.kw
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ld
  %i.lf = shl nsw i32 %i.kr, 1                    ; 2 uses
  %i.lg = mul nsw i32 %i.lf, %i.by
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lh ; 9 uses
  %i.lj = or disjoint i32 %i.lf, 1
  %i.lk = icmp slt i32 %i.lj, %i.bw               ; 6 uses
  %.not535.us.i = icmp slt i32 %i.la, %i.bx
  br i1 %.not535.us.i, label %bb.af, label %bb.an

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit544.us.i
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ir ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.ir ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ir
  %i.lo = load <8 x i32>, ptr %i.ln, align 32, !tbaa !30
  %i.lp = load <8 x i32>, ptr %i.lm, align 32, !tbaa !30
  %i.lq = add <8 x i32> %i.ke, %i.kd
  %i.lr = add <8 x i32> %i.lq, %i.lp              ; 2 uses
  %i.ls = load <8 x i32>, ptr %i.ll, align 32, !tbaa !30
  %i.lt = add <8 x i32> %i.jw, %i.jv
  %i.lu = add <8 x i32> %i.lt, %i.ls              ; 2 uses
  %i.lv = load <8 x i32>, ptr %i.jj, align 32, !tbaa !30
  %i.lw = add <8 x i32> %i.jo, %i.jn
  %i.lx = add <8 x i32> %i.lw, %i.lv
  %i.ly = add <8 x i32> %i.lx, %i.lr
  %i.lz = add <8 x i32> %i.ly, %i.lu
  %i.ma = add <8 x i32> %i.km, %i.kl
  %i.mb = add <8 x i32> %i.ma, %i.lo
  %i.mc = sub <8 x i32> %i.mb, %i.lr
  %i.md = add <8 x i32> %i.mc, %i.lu
  %i.me = ashr <8 x i32> %i.lz, splat (i32 2)     ; 3 uses
  %i.mf = ashr <8 x i32> %i.md, splat (i32 2)     ; 3 uses
  %i.mg = bitcast <8 x i32> %i.mf to <4 x i64>    ; 2 uses
  switch i32 %i.by, label %bb.am [
    i32 8, label %bb.ak
    i32 4, label %bb.ai
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %i.li, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.me, i32 4)
  br i1 %i.lk, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.mh = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.mh, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.mf, i32 4)
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mi = bitcast <8 x i32> %i.me to <4 x i64>    ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.cb ; 2 uses
  %i.mk = shufflevector <4 x i64> %i.mi, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mk, ptr %i.li, align 16, !tbaa !30
  %i.ml = shufflevector <4 x i64> %i.mi, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ml, ptr %i.mj, align 16, !tbaa !30
  br i1 %i.lk, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.mm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.mn = shufflevector <4 x i64> %i.mg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mn, ptr %i.mm, align 16, !tbaa !30
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = shufflevector <4 x i64> %i.mg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mp, ptr %i.mo, align 16, !tbaa !30
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  store <8 x i32> %i.me, ptr %i.li, align 32, !tbaa !30
  br i1 %i.lk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mq = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store <8 x i32> %i.mf, ptr %i.mq, align 32, !tbaa !30
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ix
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit544.us.i
  %.1512.us.i = phi ptr [ %i.li, %_ZN4ncnn3MatD2Ev.exit544.us.i ], [ %i.mr, %bb.am ] ; 7 uses
  %i.ms = or disjoint i32 %i.la, 1
  %.not535.us.1.i = icmp slt i32 %i.ms, %i.bx
  br i1 %.not535.us.1.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.mt = add <8 x i32> %i.jr, %i.jz
  %i.mu = add <8 x i32> %i.mt, %i.kh
  %i.mv = add <8 x i32> %i.jz, %i.kl
  %i.mw = add <8 x i32> %i.kh, %i.km
  %i.mx = sub <8 x i32> %i.mv, %i.mw
  %i.my = add <8 x i32> %i.mx, %i.kn
  %i.mz = ashr <8 x i32> %i.mu, splat (i32 2)     ; 3 uses
  %i.na = ashr <8 x i32> %i.my, splat (i32 2)     ; 3 uses
  %i.nb = bitcast <8 x i32> %i.na to <4 x i64>    ; 2 uses
  switch i32 %i.by, label %bb.av [
    i32 8, label %bb.at
    i32 4, label %bb.ar
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.1512.us.i, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.mz, i32 4)
  br i1 %i.lk, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.nc = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.nc, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.na, i32 4)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.nd = bitcast <8 x i32> %i.mz to <4 x i64>    ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.1512.us.i, i64 %i.cb ; 2 uses
  %i.nf = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nf, ptr %.1512.us.i, align 16, !tbaa !30
  %i.ng = shufflevector <4 x i64> %i.nd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ng, ptr %i.ne, align 16, !tbaa !30
  br i1 %i.lk, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.nh = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 16
  %i.ni = shufflevector <4 x i64> %i.nb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ni, ptr %i.nh, align 16, !tbaa !30
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nk = shufflevector <4 x i64> %i.nb, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.nk, ptr %i.nj, align 16, !tbaa !30
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  store <8 x i32> %i.mz, ptr %.1512.us.i, align 32, !tbaa !30
  br i1 %i.lk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nl = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 32
  store <8 x i32> %i.na, ptr %i.nl, align 32, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %indvars.iv.next776.i = add nuw nsw i64 %indvars.iv775.i, 1 ; 2 uses
  %exitcond779.not.i = icmp eq i64 %indvars.iv.next776.i, %wide.trip.count778.i
  br i1 %exitcond779.not.i, label %._crit_edge.us690.i, label %_ZN4ncnn3MatD2Ev.exit544.us.i, !llvm.loop !588

._crit_edge.us690.i:                              ; preds = %bb.av
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 8 ; 3 uses
  %i.nm = icmp slt i64 %indvars.iv.next781.i, %invariant.op.i
  br i1 %i.nm, label %.lr.ph.us689.i, label %.preheader662.loopexit.i, !llvm.loop !589

.preheader662.loopexit.i:                         ; preds = %._crit_edge.us690.i
  %i.nn = trunc nsw i64 %indvars.iv.next781.i to i32
  br label %.preheader662.i

.preheader662.i:                                  ; preds = %.preheader662.loopexit.i, %.lr.ph686.split.preheader.i, %.preheader663.i
  %.1503.lcssa.i = phi i32 [ %.0502.lcssa.i, %.preheader663.i ], [ %i.nn, %.preheader662.loopexit.i ], [ %i.jb, %.lr.ph686.split.preheader.i ] ; 5 uses
  %i.no = or disjoint i32 %.1503.lcssa.i, 3
  %i.np = icmp slt i32 %i.no, %.sroa.speculated120
  br i1 %i.np, label %.lr.ph702.i, label %.preheader661.i

.lr.ph702.i:                                      ; preds = %.preheader662.i
  %i.nq = icmp sgt i32 %.sroa.speculated116, 0
  %i.nr = shl nuw nsw i32 %.sroa.speculated116, 2
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl nuw nsw i32 %.sroa.speculated116, 3
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = mul nuw nsw i32 %.sroa.speculated116, 12
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = zext nneg i32 %factor.op.mul672.i to i64 ; 12 uses
  %i.ny = trunc i64 %i.cb to i32
  %i.nz = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %i.oa = shufflevector <4 x i32> %i.nz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ob = mul <4 x i32> %i.oa, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.oc = mul nsw i32 %i.by, %i.bw
  %i.od = sext i32 %i.oc to i64
  br i1 %i.nq, label %.lr.ph.us705.preheader.i, label %.lr.ph702.split.preheader.i

.lr.ph702.split.preheader.i:                      ; preds = %.lr.ph702.i
  %i.oe = sub i32 %i.bm, %.1503.lcssa.i
  %i.of = and i32 %i.oe, -4
  %i.og = add nsw i32 %.1503.lcssa.i, 4
  %i.oh = add i32 %i.og, %i.of
  br label %.preheader661.i

.lr.ph.us705.preheader.i:                         ; preds = %.lr.ph702.i
  %i.oi = sext i32 %.1503.lcssa.i to i64
  %wide.trip.count793.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us705.i

.lr.ph.us705.i:                                   ; preds = %._crit_edge.us706.i, %.lr.ph.us705.preheader.i
  %indvars.iv795.i = phi i64 [ %i.oi, %.lr.ph.us705.preheader.i ], [ %indvars.iv.next796.i, %._crit_edge.us706.i ] ; 2 uses
  %i.oj = trunc nsw i64 %indvars.iv795.i to i32   ; 2 uses
  %factor.op.mul.reass.us704.i = mul i32 %factor.op.mul672.i, %i.oj
  %i.ok = sext i32 %factor.op.mul.reass.us704.i to i64
  %i.ol = add i32 %i.at, %i.oj
  %i.om = sdiv i32 %i.ol, %i.by
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ok
  br label %_ZN4ncnn3MatD2Ev.exit543.us.i

_ZN4ncnn3MatD2Ev.exit543.us.i:                    ; preds = %bb.bi, %.lr.ph.us705.i
  %indvars.iv790.i = phi i64 [ 0, %.lr.ph.us705.i ], [ %indvars.iv.next791.i, %bb.bi ] ; 3 uses
  %.idx874.i = shl nuw nsw i64 %indvars.iv790.i, 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx874.i ; 5 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.ns ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nu ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nw ; 2 uses
  %i.ot = load <4 x i32>, ptr %i.oq, align 16, !tbaa !30 ; 2 uses
  %i.ou = load <4 x i32>, ptr %i.or, align 16, !tbaa !30 ; 2 uses
  %i.ov = load <4 x i32>, ptr %i.os, align 16, !tbaa !30
  %i.ow = sub <4 x i32> %i.ot, %i.ou
  %i.ox = add <4 x i32> %i.ow, %i.ov
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.nx ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.nx ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.nx ; 2 uses
  %i.pb = load <4 x i32>, ptr %i.oy, align 16, !tbaa !30 ; 2 uses
  %i.pc = load <4 x i32>, ptr %i.oz, align 16, !tbaa !30 ; 2 uses
  %i.pd = load <4 x i32>, ptr %i.pa, align 16, !tbaa !30
  %i.pe = sub <4 x i32> %i.pb, %i.pc
  %i.pf = add <4 x i32> %i.pe, %i.pd              ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nx ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nx ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.nx ; 2 uses
  %i.pj = load <4 x i32>, ptr %i.pg, align 16, !tbaa !30 ; 2 uses
  %i.pk = load <4 x i32>, ptr %i.ph, align 16, !tbaa !30 ; 2 uses
  %i.pl = load <4 x i32>, ptr %i.pi, align 16, !tbaa !30
  %i.pm = sub <4 x i32> %i.pj, %i.pk
  %i.pn = add <4 x i32> %i.pm, %i.pl              ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.nx
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.nx
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.nx
  %i.pr = load <4 x i32>, ptr %i.po, align 16, !tbaa !30 ; 2 uses
  %i.ps = load <4 x i32>, ptr %i.pp, align 16, !tbaa !30 ; 2 uses
  %i.pt = load <4 x i32>, ptr %i.pq, align 16, !tbaa !30
  %i.pu = trunc i64 %indvars.iv790.i to i32
  %i.pv = add i32 %.044161, %i.pu                 ; 2 uses
  %i.pw = sdiv i32 %i.pv, %i.cd
  %i.px = srem i32 %i.pv, %i.cd
  %i.py = load i32, ptr %i.an, align 4, !tbaa !16, !noalias !615
  %i.pz = load ptr, ptr %12, align 8, !tbaa !28, !noalias !615
  %i.qa = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !615
  %i.qb = mul i64 %i.qa, %i.on
  %i.qc = load i64, ptr %i.ar, align 8, !tbaa !29, !noalias !615 ; 2 uses
  %i.qd = mul i64 %i.qb, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qd
  %i.qf = sext i32 %i.py to i64
  %i.qg = shl nsw i32 %i.pw, 1                    ; 3 uses
  %i.qh = sext i32 %i.qg to i64
  %i.qi = mul nsw i64 %i.qf, %i.qh
  %i.qj = mul i64 %i.qi, %i.qc
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qj
  %i.ql = shl nsw i32 %i.px, 1                    ; 2 uses
  %i.qm = mul nsw i32 %i.ql, %i.by
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qn ; 6 uses
  %i.qp = or disjoint i32 %i.ql, 1
  %i.qq = icmp slt i32 %i.qp, %i.bw               ; 4 uses
  %.not534.us.i = icmp slt i32 %i.qg, %i.bx
  br i1 %.not534.us.i, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit543.us.i
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nx ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.nx ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.nx
  %i.qu = load <4 x i32>, ptr %i.qt, align 16, !tbaa !30
  %i.qv = load <4 x i32>, ptr %i.qs, align 16, !tbaa !30
  %i.qw = add <4 x i32> %i.pk, %i.pj
  %i.qx = add <4 x i32> %i.qw, %i.qv              ; 2 uses
  %i.qy = load <4 x i32>, ptr %i.qr, align 16, !tbaa !30
  %i.qz = add <4 x i32> %i.pc, %i.pb
  %i.ra = add <4 x i32> %i.qz, %i.qy              ; 2 uses
  %i.rb = load <4 x i32>, ptr %i.op, align 16, !tbaa !30
  %i.rc = add <4 x i32> %i.ou, %i.ot
  %i.rd = add <4 x i32> %i.rc, %i.rb
  %i.re = add <4 x i32> %i.rd, %i.qx
  %i.rf = add <4 x i32> %i.re, %i.ra
  %i.rg = add <4 x i32> %i.ps, %i.pr
  %i.rh = add <4 x i32> %i.rg, %i.qu
  %i.ri = sub <4 x i32> %i.rh, %i.qx
  %i.rj = add <4 x i32> %i.ri, %i.ra
  %i.rk = ashr <4 x i32> %i.rf, splat (i32 2)     ; 2 uses
  %i.rl = ashr <4 x i32> %i.rj, splat (i32 2)     ; 2 uses
  switch i32 %i.by, label %bb.bb [
    i32 4, label %bb.az
    i32 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %i.qo, <4 x i1> splat (i1 true), <4 x i32> %i.ob, <4 x i32> %i.rk, i32 4)
  br i1 %i.qq, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.rm, <4 x i1> splat (i1 true), <4 x i32> %i.ob, <4 x i32> %i.rl, i32 4)
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  store <4 x i32> %i.rk, ptr %i.qo, align 16, !tbaa !30
  br i1 %i.qq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store <4 x i32> %i.rl, ptr %i.rn, align 16, !tbaa !30
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.od
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4ncnn3MatD2Ev.exit543.us.i
  %.1501.us.i = phi ptr [ %i.qo, %_ZN4ncnn3MatD2Ev.exit543.us.i ], [ %i.ro, %bb.bb ] ; 4 uses
  %i.rp = or disjoint i32 %i.qg, 1
  %.not534.us.1.i = icmp slt i32 %i.rp, %i.bx
  br i1 %.not534.us.1.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rq = add <4 x i32> %i.ox, %i.pf
  %i.rr = add <4 x i32> %i.rq, %i.pn
  %i.rs = add <4 x i32> %i.pf, %i.pr
  %i.rt = add <4 x i32> %i.pn, %i.ps
  %i.ru = sub <4 x i32> %i.rs, %i.rt
  %i.rv = add <4 x i32> %i.ru, %i.pt
  %i.rw = ashr <4 x i32> %i.rr, splat (i32 2)     ; 2 uses
  %i.rx = ashr <4 x i32> %i.rv, splat (i32 2)     ; 2 uses
  switch i32 %i.by, label %bb.bi [
    i32 4, label %bb.bg
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.1501.us.i, <4 x i1> splat (i1 true), <4 x i32> %i.ob, <4 x i32> %i.rw, i32 4)
  br i1 %i.qq, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ry = getelementptr inbounds nuw i8, ptr %.1501.us.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.ry, <4 x i1> splat (i1 true), <4 x i32> %i.ob, <4 x i32> %i.rx, i32 4)
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  store <4 x i32> %i.rw, ptr %.1501.us.i, align 16, !tbaa !30
  br i1 %i.qq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rz = getelementptr inbounds nuw i8, ptr %.1501.us.i, i64 16
  store <4 x i32> %i.rx, ptr %i.rz, align 16, !tbaa !30
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %indvars.iv.next791.i = add nuw nsw i64 %indvars.iv790.i, 1 ; 2 uses
  %exitcond794.not.i = icmp eq i64 %indvars.iv.next791.i, %wide.trip.count793.i
  br i1 %exitcond794.not.i, label %._crit_edge.us706.i, label %_ZN4ncnn3MatD2Ev.exit543.us.i, !llvm.loop !592

._crit_edge.us706.i:                              ; preds = %bb.bi
  %indvars.iv.next796.i = add nuw nsw i64 %indvars.iv795.i, 4 ; 3 uses
  %i.sa = icmp slt i64 %indvars.iv.next796.i, %invariant.op876.i
  br i1 %i.sa, label %.lr.ph.us705.i, label %.preheader661.loopexit.i, !llvm.loop !593

.preheader661.loopexit.i:                         ; preds = %._crit_edge.us706.i
  %i.sb = trunc nsw i64 %indvars.iv.next796.i to i32
  br label %.preheader661.i

.preheader661.i:                                  ; preds = %.preheader661.loopexit.i, %.lr.ph702.split.preheader.i, %.preheader662.i
  %.2.lcssa.i = phi i32 [ %.1503.lcssa.i, %.preheader662.i ], [ %i.sb, %.preheader661.loopexit.i ], [ %i.oh, %.lr.ph702.split.preheader.i ] ; 5 uses
  %i.sc = or disjoint i32 %.2.lcssa.i, 1
  %i.sd = icmp slt i32 %i.sc, %.sroa.speculated120
  br i1 %i.sd, label %.lr.ph718.i, label %.preheader.i

.lr.ph718.i:                                      ; preds = %.preheader661.i
  %i.se = icmp sgt i32 %.sroa.speculated116, 0
  %i.sf = shl nuw nsw i32 %.sroa.speculated116, 1
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl nuw nsw i32 %.sroa.speculated116, 2
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = mul nuw nsw i32 %.sroa.speculated116, 6
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = shl nuw nsw i32 %.sroa.speculated116, 3
  %i.sm = zext nneg i32 %i.sl to i64              ; 12 uses
  %i.sn = sext i32 %i.bw to i64
  br i1 %i.se, label %.lr.ph718.split.us.i, label %.lr.ph718.split.preheader.i

.lr.ph718.split.preheader.i:                      ; preds = %.lr.ph718.i
  %i.so = sub i32 %i.bn, %.2.lcssa.i
  %i.sp = and i32 %i.so, -2
  %i.sq = add nsw i32 %.2.lcssa.i, 2
  %i.sr = add i32 %i.sq, %i.sp
  br label %.preheader.i

.lr.ph718.split.us.i:                             ; preds = %.lr.ph718.i
  %i.ss = load ptr, ptr %12, align 8, !tbaa !28, !noalias !616
  %i.st = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !616
  %i.su = load i64, ptr %i.ar, align 8, !tbaa !29, !noalias !616 ; 2 uses
  %factor.op.mul.i = mul i64 %i.su, %i.st
  %i.sv = sext i32 %.2.lcssa.i to i64
  %wide.trip.count808.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us721.i

.lr.ph.us721.i:                                   ; preds = %._crit_edge.us722.i, %.lr.ph718.split.us.i
  %indvars.iv810.i = phi i64 [ %indvars.iv.next811.i, %._crit_edge.us722.i ], [ %i.sv, %.lr.ph718.split.us.i ] ; 3 uses
  %i.sw = trunc nsw i64 %indvars.iv810.i to i32
  %factor.op.mul.reass.us720.i = mul i32 %factor.op.mul672.i, %i.sw
  %i.sx = sext i32 %factor.op.mul.reass.us720.i to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.sx
  %i.sz = add nsw i64 %indvars.iv810.i, %i.bo
  %.reass.i = mul i64 %factor.op.mul.i, %i.sz
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit542.us.i

_ZN4ncnn3MatD2Ev.exit542.us.i:                    ; preds = %bb.bp, %.lr.ph.us721.i
  %indvars.iv805.i = phi i64 [ 0, %.lr.ph.us721.i ], [ %indvars.iv.next806.i, %bb.bp ] ; 3 uses
  %.idx875.i = shl nuw nsw i64 %indvars.iv805.i, 3
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.idx875.i ; 6 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.sg ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.si ; 3 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.sk ; 3 uses
  %i.tf = load i32, ptr %i.tc, align 4, !tbaa !10 ; 2 uses
  %i.tg = load i32, ptr %i.td, align 4, !tbaa !10 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !10 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !10 ; 2 uses
  %i.tl = sub i32 %i.tf, %i.tg
  %i.tm = load i32, ptr %i.te, align 4, !tbaa !10
  %i.tn = add nsw i32 %i.tl, %i.tm
  %i.to = sub i32 %i.ti, %i.tk
  %i.tp = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !10
  %i.tr = add nsw i32 %i.to, %i.tq
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.sm ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.sm ; 3 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.sm ; 3 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sm ; 3 uses
  %i.tw = load i32, ptr %i.ts, align 4, !tbaa !10
  %i.tx = load i32, ptr %i.tt, align 4, !tbaa !10 ; 2 uses
  %i.ty = add nsw i32 %i.tx, %i.tw
  %i.tz = load i32, ptr %i.tu, align 4, !tbaa !10 ; 2 uses
  %i.ua = add nsw i32 %i.ty, %i.tz                ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !10
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !10 ; 2 uses
  %i.uf = add nsw i32 %i.ue, %i.uc
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !10 ; 2 uses
  %i.ui = add nsw i32 %i.uf, %i.uh                ; 2 uses
  %i.uj = sub i32 %i.tx, %i.tz
  %i.uk = load i32, ptr %i.tv, align 4, !tbaa !10
  %i.ul = add nsw i32 %i.uk, %i.uj                ; 2 uses
  %i.um = sub i32 %i.ue, %i.uh
  %i.un = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10
  %i.up = add nsw i32 %i.uo, %i.um                ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.sm ; 3 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.sm ; 3 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.sm ; 3 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.sm ; 3 uses
  %i.uu = load i32, ptr %i.uq, align 4, !tbaa !10
  %i.uv = load i32, ptr %i.ur, align 4, !tbaa !10 ; 2 uses
  %i.uw = add nsw i32 %i.uv, %i.uu
  %i.ux = load i32, ptr %i.us, align 4, !tbaa !10 ; 2 uses
  %i.uy = add nsw i32 %i.uw, %i.ux                ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !10
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !10 ; 2 uses
  %i.vd = add nsw i32 %i.vc, %i.va
  %i.ve = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !10 ; 2 uses
  %i.vg = add nsw i32 %i.vd, %i.vf                ; 2 uses
  %i.vh = sub i32 %i.uv, %i.ux
  %i.vi = load i32, ptr %i.ut, align 4, !tbaa !10
  %i.vj = add nsw i32 %i.vi, %i.vh                ; 2 uses
  %i.vk = sub i32 %i.vc, %i.vf
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !10
  %i.vn = add nsw i32 %i.vm, %i.vk                ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.sm ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.sm ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.sm ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.sm ; 2 uses
  %i.vs = load i32, ptr %i.vo, align 4, !tbaa !10
  %i.vt = load i32, ptr %i.vp, align 4, !tbaa !10 ; 2 uses
  %i.vu = load i32, ptr %i.vq, align 4, !tbaa !10 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !10
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !10 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !10 ; 2 uses
  %i.wb = load i32, ptr %i.vr, align 4, !tbaa !10
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !10
  %i.we = trunc i64 %indvars.iv805.i to i32
  %i.wf = add i32 %.044161, %i.we                 ; 2 uses
  %i.wg = sdiv i32 %i.wf, %i.cd
  %i.wh = srem i32 %i.wf, %i.cd
  %i.wi = load i32, ptr %i.an, align 4, !tbaa !16, !noalias !616
  %i.wj = sext i32 %i.wi to i64
  %i.wk = shl nsw i32 %i.wg, 1                    ; 3 uses
  %i.wl = sext i32 %i.wk to i64
  %i.wm = mul i64 %i.su, %i.wl
  %i.wn = mul i64 %i.wm, %i.wj
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.wn
  %i.wp = shl nsw i32 %i.wh, 1                    ; 2 uses
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.wq ; 5 uses
  %i.ws = or disjoint i32 %i.wp, 1
  %i.wt = icmp slt i32 %i.ws, %i.bw               ; 2 uses
  %.not533.us.i = icmp slt i32 %i.wk, %i.bx
  br i1 %.not533.us.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit542.us.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !10
  %i.ww = load i32, ptr %i.tb, align 4, !tbaa !10
  %i.wx = add i32 %i.tg, %i.tf
  %i.wy = add i32 %i.wx, %i.ua
  %i.wz = add i32 %i.wy, %i.uy
  %i.xa = add i32 %i.wz, %i.ww
  %i.xb = add i32 %i.tk, %i.ti
  %i.xc = add i32 %i.xb, %i.ui
  %i.xd = add i32 %i.xc, %i.vg
  %i.xe = add i32 %i.xd, %i.wv
  %i.xf = ashr i32 %i.xa, 2
  %i.xg = ashr i32 %i.xe, 2
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.cb ; 2 uses
  store i32 %i.xf, ptr %i.wr, align 4, !tbaa !10
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !10
  br i1 %i.wt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.xi = sub i32 %i.ui, %i.vg
  %i.xj = add i32 %i.xi, %i.vw
  %i.xk = add i32 %i.xj, %i.vy
  %i.xl = add i32 %i.xk, %i.wa
  %i.xm = ashr i32 %i.xl, 2
  %i.xn = sub i32 %i.ua, %i.uy
  %i.xo = add i32 %i.xn, %i.vs
  %i.xp = add i32 %i.xo, %i.vt
  %i.xq = add i32 %i.xp, %i.vu
  %i.xr = ashr i32 %i.xq, 2
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !10
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  store i32 %i.xm, ptr %i.xt, align 4, !tbaa !10
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.sn
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN4ncnn3MatD2Ev.exit542.us.i
  %.1492.us.i = phi ptr [ %i.wr, %_ZN4ncnn3MatD2Ev.exit542.us.i ], [ %i.xu, %bb.bl ] ; 3 uses
  %i.xv = or disjoint i32 %i.wk, 1
  %.not533.us.1.i = icmp slt i32 %i.xv, %i.bx
  br i1 %.not533.us.1.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.xw = add nsw i32 %i.tn, %i.ul
  %i.xx = add nsw i32 %i.xw, %i.vj
  %i.xy = add nsw i32 %i.tr, %i.up
  %i.xz = add nsw i32 %i.xy, %i.vn
  %i.ya = ashr i32 %i.xx, 2
  %i.yb = ashr i32 %i.xz, 2
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.1492.us.i, i64 %i.cb ; 2 uses
  store i32 %i.ya, ptr %.1492.us.i, align 4, !tbaa !10
  store i32 %i.yb, ptr %i.yc, align 4, !tbaa !10
  br i1 %i.wt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.yd = add i32 %i.up, %i.vy
  %i.ye = add i32 %i.vn, %i.wa
  %i.yf = sub i32 %i.yd, %i.ye
  %i.yg = add i32 %i.yf, %i.wd
  %i.yh = ashr i32 %i.yg, 2
  %i.yi = add i32 %i.ul, %i.vt
  %i.yj = add i32 %i.vj, %i.vu
  %i.yk = sub i32 %i.yi, %i.yj
  %i.yl = add i32 %i.yk, %i.wb
  %i.ym = ashr i32 %i.yl, 2
  %i.yn = getelementptr inbounds nuw i8, ptr %.1492.us.i, i64 4
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  store i32 %i.yh, ptr %i.yo, align 4, !tbaa !10
  br label %bb.bp
end_hunk_10
begin_hunk_11_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
    i32 1, label %bb.ab
  ]

bb.n:                                             ; preds = %bb.m, %.split.us.i
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.01155105.us.i, i64 %i.cw ; 4 uses
  %i.nd = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.nd, ptr %.01155105.us.i, align 32, !tbaa !30
  %i.ne = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ne, ptr %i.nc, align 32, !tbaa !30
  br i1 %i.lh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nf = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 32
  %i.ng = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.ng, ptr %i.nf, align 32, !tbaa !30
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ni = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ni, ptr %i.nh, align 32, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.lj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nj = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 64
  %i.nk = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.nk, ptr %i.nj, align 32, !tbaa !30
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nm = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.nm, ptr %i.nl, align 32, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.ll, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.nn = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 96
  %i.no = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.no, ptr %i.nn, align 32, !tbaa !30
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %i.nq = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.nq, ptr %i.np, align 32, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  switch i32 %i.ct, label %bb.ah [
    i32 4, label %bb.u
    i32 1, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.m, %.split.us.i
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.01155105.us.i, i64 %i.cw ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 %.idx.i ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 %.idx1218.i ; 4 uses
  %i.nu = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.nu, ptr %.01155105.us.i, align 16, !tbaa !30
  %i.nv = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.nv, ptr %i.nr, align 16, !tbaa !30
  %i.nw = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.nw, ptr %i.ns, align 16, !tbaa !30
  %i.nx = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.nx, ptr %i.nt, align 16, !tbaa !30
  br i1 %i.lh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ny = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 16
  %i.nz = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.nz, ptr %i.ny, align 16, !tbaa !30
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ob = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ob, ptr %i.oa, align 16, !tbaa !30
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.od = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.od, ptr %i.oc, align 16, !tbaa !30
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.of = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.of, ptr %i.oe, align 16, !tbaa !30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.lj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.og = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 32
  %i.oh = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.oh, ptr %i.og, align 16, !tbaa !30
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.oj = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.oj, ptr %i.oi, align 16, !tbaa !30
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.ol = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ol, ptr %i.ok, align 16, !tbaa !30
  %i.om = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.on = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.on, ptr %i.om, align 16, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ll, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.oo = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 48
  %i.op = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.op, ptr %i.oo, align 16, !tbaa !30
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.or = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.or, ptr %i.oq, align 16, !tbaa !30
  %i.os = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.ot = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ot, ptr %i.os, align 16, !tbaa !30
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.ov = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.ov, ptr %i.ou, align 16, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.dt, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa, %bb.t, %bb.m, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.01155105.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.mp, i32 4)
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ow = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ow, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.ms, i32 4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.lj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ox = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 8
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ox, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.mv, i32 4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.ll, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.oy = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 12
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.oy, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.my, i32 4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.t, %bb.m, %.split.us.i, %bb.f
  %i.oz = getelementptr inbounds [4 x i8], ptr %.01155105.us.i, i64 %i.dz
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.e
  %.11156.us.i = phi ptr [ %.01155105.us.i, %bb.e ], [ %i.oz, %bb.ah ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aj, label %bb.e, !llvm.loop !794

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next429.i = add nuw nsw i64 %indvars.iv428.i, 1 ; 2 uses
  %exitcond431.not.i = icmp eq i64 %indvars.iv.next429.i, %wide.trip.count.i
  br i1 %exitcond431.not.i, label %._crit_edge.us.i, label %.preheader87.us.i, !llvm.loop !795

._crit_edge.us.i:                                 ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next433.i = add nuw nsw i64 %indvars.iv432.i, 16 ; 3 uses
  %i.pa = or disjoint i64 %indvars.iv.next433.i, 15
  %i.pb = icmp samesign ult i64 %i.pa, %i.cg
  br i1 %i.pb, label %.lr.ph.us.i, label %.preheader86.loopexit.i, !llvm.loop !796

.preheader86.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.pc = trunc nsw i64 %indvars.iv.next433.i to i32
  br label %.preheader86.i

.preheader86.i:                                   ; preds = %.lr.ph110.i, %.preheader86.loopexit.i, %._crit_edge
  %.01120.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pc, %.preheader86.loopexit.i ], [ %i.cf, %.lr.ph110.i ] ; 5 uses
  %i.pd = or disjoint i32 %.01120.lcssa.i, 7
  %i.pe = icmp slt i32 %i.pd, %.sroa.speculated121
  br i1 %i.pe, label %.lr.ph157.i, label %.preheader84.i

.lr.ph157.i:                                      ; preds = %.preheader86.i
  %i.pf = icmp sgt i32 %.sroa.speculated117, 0
  %i.pg = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i32 %.sroa.speculated117, 4
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = mul nuw nsw i32 %.sroa.speculated117, 24
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl nuw nsw i32 %.sroa.speculated117, 5
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i32 %.sroa.speculated117, 40
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = mul nuw nsw i32 %.sroa.speculated117, 48
  %i.pr = zext nneg i32 %i.pq to i64              ; 30 uses
  %i.ps = trunc i64 %i.cw to i32
  %i.pt = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.pu = shufflevector <8 x i32> %i.pt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.pv = mul <8 x i32> %i.pu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 16 uses
  %i.pw = mul nsw i32 %i.ct, %i.cz
  %i.px = sext i32 %i.pw to i64                   ; 3 uses
  br i1 %i.pf, label %.lr.ph.us160.preheader.i, label %.lr.ph157.split.preheader.i

.lr.ph157.split.preheader.i:                      ; preds = %.lr.ph157.i
  %i.py = sub i32 %i.ch, %.01120.lcssa.i
  %i.pz = and i32 %i.py, -8
  %i.qa = add nsw i32 %.01120.lcssa.i, 8
  %i.qb = add i32 %i.qa, %i.pz
  br label %.preheader84.i

.lr.ph.us160.preheader.i:                         ; preds = %.lr.ph157.i
  %i.qc = sext i32 %.01120.lcssa.i to i64
  %wide.trip.count446.i = zext nneg i32 %.sroa.speculated117 to i64
  %i.qd = extractelement <4 x i32> %i.dc, i64 0
  %i.qe = extractelement <2 x i32> %i.cx, i64 1   ; 3 uses
  %i.qf = shufflevector <4 x i32> %i.dc, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.qg = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.lr.ph.us160.i

.lr.ph.us160.i:                                   ; preds = %._crit_edge.us161.i, %.lr.ph.us160.preheader.i
  %indvars.iv448.i = phi i64 [ %i.qc, %.lr.ph.us160.preheader.i ], [ %indvars.iv.next449.i, %._crit_edge.us161.i ] ; 2 uses
  %i.qh = trunc nsw i64 %indvars.iv448.i to i32   ; 2 uses
  %factor.op.mul.reass.us159.i = mul i32 %factor.op.mul107.i, %i.qh
  %i.qi = sext i32 %factor.op.mul.reass.us159.i to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.qi
  %i.qk = add i32 %i.bq, %i.qh
  %i.ql = sdiv i32 %i.qk, %i.ct
  %i.qm = sext i32 %i.ql to i64
  br label %.preheader85.us.i

.preheader85.us.i:                                ; preds = %bb.do, %.lr.ph.us160.i
  %indvars.iv443.i = phi i64 [ 0, %.lr.ph.us160.i ], [ %indvars.iv.next444.i, %bb.do ] ; 3 uses
  %.idx555.i = shl nuw nsw i64 %indvars.iv443.i, 5
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.idx555.i ; 7 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.ph ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pj ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pl ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pn ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pp ; 2 uses
  %i.qt = load <8 x i32>, ptr %i.qo, align 32, !tbaa !30 ; 2 uses
  %i.qu = load <8 x i32>, ptr %i.qp, align 32, !tbaa !30 ; 2 uses
  %i.qv = load <8 x i32>, ptr %i.qq, align 32, !tbaa !30 ; 2 uses
  %i.qw = load <8 x i32>, ptr %i.qr, align 32, !tbaa !30 ; 2 uses
  %i.qx = load <8 x i32>, ptr %i.qs, align 32, !tbaa !30
  %i.qy = add <8 x i32> %i.qu, %i.qt              ; 2 uses
  %i.qz = add <8 x i32> %i.qw, %i.qv              ; 2 uses
  %i.ra = sub <8 x i32> %i.qt, %i.qu              ; 2 uses
  %i.rb = sub <8 x i32> %i.qv, %i.qw              ; 2 uses
  %i.rc = shl <8 x i32> %i.rb, splat (i32 1)
  %i.rd = add <8 x i32> %i.rc, %i.ra
  %i.re = shl <8 x i32> %i.qz, splat (i32 2)
  %i.rf = add <8 x i32> %i.re, %i.qy
  %i.rg = shl <8 x i32> %i.rb, splat (i32 3)
  %i.rh = add <8 x i32> %i.rg, %i.ra
  %i.ri = shl <8 x i32> %i.qx, splat (i32 2)
  %i.rj = add <8 x i32> %i.rh, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.pr ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.pr ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.pr ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.pr ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.pr ; 2 uses
  %i.rp = load <8 x i32>, ptr %i.rk, align 32, !tbaa !30 ; 2 uses
  %i.rq = load <8 x i32>, ptr %i.rl, align 32, !tbaa !30 ; 2 uses
  %i.rr = load <8 x i32>, ptr %i.rm, align 32, !tbaa !30 ; 2 uses
  %i.rs = load <8 x i32>, ptr %i.rn, align 32, !tbaa !30 ; 2 uses
  %i.rt = load <8 x i32>, ptr %i.ro, align 32, !tbaa !30
  %i.ru = add <8 x i32> %i.rq, %i.rp              ; 2 uses
  %i.rv = add <8 x i32> %i.rs, %i.rr              ; 2 uses
  %i.rw = sub <8 x i32> %i.rp, %i.rq              ; 2 uses
  %i.rx = sub <8 x i32> %i.rr, %i.rs              ; 2 uses
  %i.ry = shl <8 x i32> %i.rx, splat (i32 1)
  %i.rz = add <8 x i32> %i.ry, %i.rw              ; 2 uses
  %i.sa = shl <8 x i32> %i.rv, splat (i32 2)
  %i.sb = add <8 x i32> %i.sa, %i.ru              ; 2 uses
  %i.sc = shl <8 x i32> %i.rx, splat (i32 3)
  %i.sd = add <8 x i32> %i.sc, %i.rw
  %i.se = shl <8 x i32> %i.rt, splat (i32 2)
  %i.sf = add <8 x i32> %i.sd, %i.se              ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.pr ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.pr ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.pr ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.pr ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.pr ; 2 uses
  %i.sl = load <8 x i32>, ptr %i.sg, align 32, !tbaa !30 ; 2 uses
  %i.sm = load <8 x i32>, ptr %i.sh, align 32, !tbaa !30 ; 2 uses
  %i.sn = load <8 x i32>, ptr %i.si, align 32, !tbaa !30 ; 2 uses
  %i.so = load <8 x i32>, ptr %i.sj, align 32, !tbaa !30 ; 2 uses
  %i.sp = load <8 x i32>, ptr %i.sk, align 32, !tbaa !30
  %i.sq = add <8 x i32> %i.sm, %i.sl              ; 2 uses
  %i.sr = add <8 x i32> %i.so, %i.sn              ; 2 uses
  %i.ss = sub <8 x i32> %i.sl, %i.sm              ; 2 uses
  %i.st = sub <8 x i32> %i.sn, %i.so              ; 2 uses
  %i.su = shl <8 x i32> %i.st, splat (i32 1)
  %i.sv = add <8 x i32> %i.su, %i.ss              ; 2 uses
  %i.sw = shl <8 x i32> %i.sr, splat (i32 2)
  %i.sx = add <8 x i32> %i.sw, %i.sq              ; 2 uses
  %i.sy = shl <8 x i32> %i.st, splat (i32 3)
  %i.sz = add <8 x i32> %i.sy, %i.ss
  %i.ta = shl <8 x i32> %i.sp, splat (i32 2)
  %i.tb = add <8 x i32> %i.sz, %i.ta              ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.pr ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pr ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.pr ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.pr ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.pr ; 2 uses
  %i.th = load <8 x i32>, ptr %i.tc, align 32, !tbaa !30 ; 2 uses
  %i.ti = load <8 x i32>, ptr %i.td, align 32, !tbaa !30 ; 2 uses
  %i.tj = load <8 x i32>, ptr %i.te, align 32, !tbaa !30 ; 2 uses
  %i.tk = load <8 x i32>, ptr %i.tf, align 32, !tbaa !30 ; 2 uses
  %i.tl = load <8 x i32>, ptr %i.tg, align 32, !tbaa !30
  %i.tm = add <8 x i32> %i.ti, %i.th              ; 2 uses
  %i.tn = add <8 x i32> %i.tk, %i.tj              ; 2 uses
  %i.to = sub <8 x i32> %i.th, %i.ti              ; 2 uses
  %i.tp = sub <8 x i32> %i.tj, %i.tk              ; 2 uses
  %i.tq = shl <8 x i32> %i.tp, splat (i32 1)
  %i.tr = add <8 x i32> %i.tq, %i.to              ; 2 uses
  %i.ts = shl <8 x i32> %i.tn, splat (i32 2)
  %i.tt = add <8 x i32> %i.ts, %i.tm              ; 2 uses
  %i.tu = shl <8 x i32> %i.tp, splat (i32 3)
  %i.tv = add <8 x i32> %i.tu, %i.to
  %i.tw = shl <8 x i32> %i.tl, splat (i32 2)
  %i.tx = add <8 x i32> %i.tv, %i.tw              ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.pr ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.pr ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.pr ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.pr ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.pr ; 2 uses
  %i.ud = load <8 x i32>, ptr %i.ty, align 32, !tbaa !30 ; 2 uses
  %i.ue = load <8 x i32>, ptr %i.tz, align 32, !tbaa !30 ; 2 uses
  %i.uf = load <8 x i32>, ptr %i.ua, align 32, !tbaa !30 ; 2 uses
  %i.ug = load <8 x i32>, ptr %i.ub, align 32, !tbaa !30 ; 2 uses
  %i.uh = load <8 x i32>, ptr %i.uc, align 32, !tbaa !30
  %i.ui = add <8 x i32> %i.ue, %i.ud              ; 2 uses
  %i.uj = add <8 x i32> %i.ug, %i.uf              ; 2 uses
  %i.uk = sub <8 x i32> %i.ud, %i.ue              ; 2 uses
  %i.ul = sub <8 x i32> %i.uf, %i.ug              ; 2 uses
  %i.um = shl <8 x i32> %i.ul, splat (i32 1)
  %i.un = add <8 x i32> %i.um, %i.uk              ; 2 uses
  %i.uo = shl <8 x i32> %i.uj, splat (i32 2)
  %i.up = add <8 x i32> %i.uo, %i.ui              ; 2 uses
  %i.uq = shl <8 x i32> %i.ul, splat (i32 3)
  %i.ur = add <8 x i32> %i.uq, %i.uk
  %i.us = shl <8 x i32> %i.uh, splat (i32 2)
  %i.ut = add <8 x i32> %i.ur, %i.us              ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.pr
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.pr
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.pr
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.pr
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.pr
  %i.uz = trunc i64 %indvars.iv443.i to i32
  %i.va = add i32 %.044131, %i.uz                 ; 2 uses
  %i.vb = load <8 x i32>, ptr %i.uu, align 32, !tbaa !30 ; 2 uses
  %i.vc = load <8 x i32>, ptr %i.uv, align 32, !tbaa !30 ; 2 uses
  %i.vd = load <8 x i32>, ptr %i.uw, align 32, !tbaa !30 ; 2 uses
  %i.ve = load <8 x i32>, ptr %i.ux, align 32, !tbaa !30 ; 2 uses
  %i.vf = load <8 x i32>, ptr %i.uy, align 32, !tbaa !30
  %i.vg = add <8 x i32> %i.vc, %i.vb              ; 2 uses
  %i.vh = add <8 x i32> %i.ve, %i.vd              ; 2 uses
  %i.vi = sub <8 x i32> %i.vb, %i.vc
  %i.vj = sub <8 x i32> %i.vd, %i.ve              ; 2 uses
  %i.vk = shl <8 x i32> %i.vj, splat (i32 3)
  %i.vl = shl <8 x i32> %i.vi, splat (i32 2)      ; 2 uses
  %i.vm = shl <8 x i32> %i.vh, splat (i32 4)
  %i.vn = shl <8 x i32> %i.vg, splat (i32 2)
  %i.vo = shl <8 x i32> %i.vf, splat (i32 4)
  %i.vp = shl <8 x i32> %i.vj, splat (i32 5)
  %i.vq = load i32, ptr %i.ao, align 4, !tbaa !16, !noalias !825
  %i.vr = load ptr, ptr %12, align 8, !tbaa !28, !noalias !825
  %i.vs = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !825
  %i.vt = mul i64 %i.vs, %i.qm
  %i.vu = load i64, ptr %i.ay, align 8, !tbaa !29, !noalias !825 ; 2 uses
  %i.vv = mul i64 %i.vt, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vv
  %i.vx = sext i32 %i.vq to i64
  %i.vy = srem i32 %i.va, %i.qd
  %i.vz = insertelement <4 x i32> poison, i32 %i.vy, i64 0
  %i.wa = insertelement <4 x i32> %i.vz, i32 %i.va, i64 1
  %i.wb = shufflevector <4 x i32> %i.wa, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wc = sdiv <4 x i32> %i.wb, %i.qf
  %i.wd = shl nsw <4 x i32> %i.wc, splat (i32 2)  ; 3 uses
  %i.we = extractelement <4 x i32> %i.wd, i64 3   ; 4 uses
  %i.wf = sext i32 %i.we to i64
  %i.wg = mul nsw i64 %i.vx, %i.wf
  %i.wh = mul i64 %i.wg, %i.vu
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wh
  %i.wj = extractelement <4 x i32> %i.wd, i64 0
  %i.wk = mul nsw i32 %i.wj, %i.ct
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %i.wl ; 15 uses
  %i.wn = or disjoint <4 x i32> %i.wd, <i32 3, i32 2, i32 1, i32 0>
  %i.wo = icmp slt <4 x i32> %i.wn, %i.qg         ; 4 uses
  %i.wp = extractelement <4 x i1> %i.wo, i64 2    ; 12 uses
  %i.wq = extractelement <4 x i1> %i.wo, i64 1    ; 12 uses
  %i.wr = extractelement <4 x i1> %i.wo, i64 0    ; 12 uses
  %i.ws = extractelement <4 x i1> %i.wo, i64 3
  br i1 %i.ws, label %bb.ak, label %bb.be

bb.ak:                                            ; preds = %.preheader85.us.i
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pr ; 2 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.pr ; 2 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.pr ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.pr ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.pr
  %i.wy = load <8 x i32>, ptr %i.wx, align 32, !tbaa !30
  %i.wz = add <8 x i32> %i.vh, %i.vg
  %i.xa = add <8 x i32> %i.wz, %i.wy
  %i.xb = shl <8 x i32> %i.xa, splat (i32 2)
end_hunk_11
begin_hunk_12_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.wq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.adp = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 64
  store <8 x i32> %i.acp, ptr %i.adp, align 32, !tbaa !30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.wr, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.adq = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 96
  store <8 x i32> %i.act, ptr %i.adq, align 32, !tbaa !30
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cm, %bb.cl, %bb.cg, %bb.cf, %bb.ca
  %i.adr = getelementptr inbounds [4 x i8], ptr %.11192.us.1.i, i64 %i.px
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.bz
  %.11192.us.2.i = phi ptr [ %.11192.us.1.i, %bb.bz ], [ %i.adr, %bb.ct ] ; 13 uses
  %i.ads = or disjoint i32 %i.we, 3
  %.not1216.us.3.i = icmp slt i32 %i.ads, %i.qe
  br i1 %.not1216.us.3.i, label %bb.cv, label %bb.do

bb.cv:                                            ; preds = %bb.cu
  %i.adt = add <8 x i32> %i.tb, %i.sf             ; 2 uses
  %i.adu = add <8 x i32> %i.ut, %i.tx             ; 2 uses
  %i.adv = sub <8 x i32> %i.sf, %i.tb             ; 2 uses
  %i.adw = sub <8 x i32> %i.tx, %i.ut             ; 2 uses
  %i.adx = add <8 x i32> %i.rj, %i.adt
  %i.ady = add <8 x i32> %i.adx, %i.adu
  %i.adz = shl <8 x i32> %i.adw, splat (i32 1)
  %i.aea = add <8 x i32> %i.adz, %i.adv
  %i.aeb = shl <8 x i32> %i.adu, splat (i32 2)
  %i.aec = add <8 x i32> %i.aeb, %i.adt
  %i.aed = shl <8 x i32> %i.adw, splat (i32 3)
  %i.aee = add <8 x i32> %i.aed, %i.adv
  %i.aef = add <8 x i32> %i.aee, %i.vl
  %i.aeg = add <8 x i32> %i.aef, %i.vp
  %i.aeh = add <8 x i32> %i.aeg, %i.vo
  %i.aei = sitofp fast <8 x i32> %i.ady to <8 x float>
  %i.aej = fmul fast <8 x float> %i.aei, splat (float f0x3AE38E39)
  %i.aek = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aej) ; 3 uses
  %i.ael = sitofp fast <8 x i32> %i.aea to <8 x float>
  %i.aem = fmul fast <8 x float> %i.ael, splat (float f0x3AE38E39)
  %i.aen = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aem) ; 3 uses
  %i.aeo = bitcast <8 x i32> %i.aen to <4 x i64>  ; 2 uses
  %i.aep = sitofp fast <8 x i32> %i.aec to <8 x float>
  %i.aeq = fmul fast <8 x float> %i.aep, splat (float f0x3AE38E39)
  %i.aer = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aeq) ; 3 uses
  %i.aes = bitcast <8 x i32> %i.aer to <4 x i64>  ; 2 uses
  %i.aet = sitofp fast <8 x i32> %i.aeh to <8 x float>
  %i.aeu = fmul fast <8 x float> %i.aet, splat (float f0x3AE38E39)
  %i.aev = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aeu) ; 3 uses
  %i.aew = bitcast <8 x i32> %i.aev to <4 x i64>  ; 2 uses
  switch i32 %i.ct, label %bb.do [
    i32 8, label %bb.di
    i32 4, label %bb.dc
    i32 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.11192.us.2.i, <8 x i1> splat (i1 true), <8 x i32> %i.pv, <8 x i32> %i.aek, i32 4)
  br i1 %i.wp, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aex = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.aex, <8 x i1> splat (i1 true), <8 x i32> %i.pv, <8 x i32> %i.aen, i32 4)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  br i1 %i.wq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aey = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.aey, <8 x i1> splat (i1 true), <8 x i32> %i.pv, <8 x i32> %i.aer, i32 4)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.wr, label %bb.db, label %bb.do

bb.db:                                            ; preds = %bb.da
  %i.aez = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.aez, <8 x i1> splat (i1 true), <8 x i32> %i.pv, <8 x i32> %i.aev, i32 4)
  br label %bb.do

bb.dc:                                            ; preds = %bb.cv
  %i.afa = bitcast <8 x i32> %i.aek to <4 x i64>  ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.11192.us.2.i, i64 %i.cw ; 4 uses
  %i.afc = shufflevector <4 x i64> %i.afa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.afc, ptr %.11192.us.2.i, align 16, !tbaa !30
  %i.afd = shufflevector <4 x i64> %i.afa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.afd, ptr %i.afb, align 16, !tbaa !30
  br i1 %i.wp, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.afe = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 16
  %i.aff = shufflevector <4 x i64> %i.aeo, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.aff, ptr %i.afe, align 16, !tbaa !30
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afh = shufflevector <4 x i64> %i.aeo, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.afh, ptr %i.afg, align 16, !tbaa !30
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %i.wq, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.afi = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 32
  %i.afj = shufflevector <4 x i64> %i.aes, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.afj, ptr %i.afi, align 16, !tbaa !30
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.afl = shufflevector <4 x i64> %i.aes, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.afl, ptr %i.afk, align 16, !tbaa !30
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  br i1 %i.wr, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.afm = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 48
  %i.afn = shufflevector <4 x i64> %i.aew, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.afn, ptr %i.afm, align 16, !tbaa !30
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afb, i64 48
  %i.afp = shufflevector <4 x i64> %i.aew, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.afp, ptr %i.afo, align 16, !tbaa !30
  br label %bb.do

bb.di:                                            ; preds = %bb.cv
  store <8 x i32> %i.aek, ptr %.11192.us.2.i, align 32, !tbaa !30
  br i1 %i.wp, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.afq = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 32
  store <8 x i32> %i.aen, ptr %i.afq, align 32, !tbaa !30
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br i1 %i.wq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.afr = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 64
  store <8 x i32> %i.aer, ptr %i.afr, align 32, !tbaa !30
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.wr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.afs = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 96
  store <8 x i32> %i.aev, ptr %i.afs, align 32, !tbaa !30
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dh, %bb.dg, %bb.db, %bb.da, %bb.cv, %bb.cu
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1 ; 2 uses
  %exitcond447.not.i = icmp eq i64 %indvars.iv.next444.i, %wide.trip.count446.i
  br i1 %exitcond447.not.i, label %._crit_edge.us161.i, label %.preheader85.us.i, !llvm.loop !799

._crit_edge.us161.i:                              ; preds = %bb.do
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 8 ; 3 uses
  %i.aft = icmp slt i64 %indvars.iv.next449.i, %invariant.op.i
  br i1 %i.aft, label %.lr.ph.us160.i, label %.preheader84.loopexit.i, !llvm.loop !800

.preheader84.loopexit.i:                          ; preds = %._crit_edge.us161.i
  %i.afu = trunc nsw i64 %indvars.iv.next449.i to i32
  br label %.preheader84.i

.preheader84.i:                                   ; preds = %.preheader84.loopexit.i, %.lr.ph157.split.preheader.i, %.preheader86.i
  %.11121.lcssa.i = phi i32 [ %.01120.lcssa.i, %.preheader86.i ], [ %i.afu, %.preheader84.loopexit.i ], [ %i.qb, %.lr.ph157.split.preheader.i ] ; 5 uses
  %i.afv = or disjoint i32 %.11121.lcssa.i, 3
  %i.afw = icmp slt i32 %i.afv, %.sroa.speculated121
  br i1 %i.afw, label %.lr.ph209.i, label %.preheader82.i

.lr.ph209.i:                                      ; preds = %.preheader84.i
  %i.afx = icmp sgt i32 %.sroa.speculated117, 0
  %i.afy = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.agb = zext nneg i32 %i.aga to i64
  %i.agc = mul nuw nsw i32 %.sroa.speculated117, 12
  %i.agd = zext nneg i32 %i.agc to i64
  %i.age = shl nuw nsw i32 %.sroa.speculated117, 4
  %i.agf = zext nneg i32 %i.age to i64
  %i.agg = mul nuw nsw i32 %.sroa.speculated117, 20
  %i.agh = zext nneg i32 %i.agg to i64
  %i.agi = mul nuw nsw i32 %.sroa.speculated117, 24
  %i.agj = zext nneg i32 %i.agi to i64            ; 30 uses
  %i.agk = trunc i64 %i.cw to i32
  %i.agl = insertelement <4 x i32> poison, i32 %i.agk, i64 0
  %i.agm = shufflevector <4 x i32> %i.agl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agn = mul <4 x i32> %i.agm, <i32 0, i32 1, i32 2, i32 3> ; 16 uses
  %i.ago = mul nsw i32 %i.ct, %i.cz
  %i.agp = sext i32 %i.ago to i64                 ; 3 uses
  br i1 %i.afx, label %.lr.ph.us212.preheader.i, label %.lr.ph209.split.preheader.i

.lr.ph209.split.preheader.i:                      ; preds = %.lr.ph209.i
  %i.agq = sub i32 %i.cj, %.11121.lcssa.i
  %i.agr = and i32 %i.agq, -4
  %i.ags = add nsw i32 %.11121.lcssa.i, 4
  %i.agt = add i32 %i.ags, %i.agr
  br label %.preheader82.i

.lr.ph.us212.preheader.i:                         ; preds = %.lr.ph209.i
  %i.agu = sext i32 %.11121.lcssa.i to i64
  %wide.trip.count462.i = zext nneg i32 %.sroa.speculated117 to i64
  %i.agv = extractelement <4 x i32> %i.dc, i64 0
  %i.agw = extractelement <2 x i32> %i.cx, i64 1  ; 3 uses
  %i.agx = shufflevector <4 x i32> %i.dc, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.agy = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.lr.ph.us212.i

.lr.ph.us212.i:                                   ; preds = %._crit_edge.us213.i, %.lr.ph.us212.preheader.i
  %indvars.iv464.i = phi i64 [ %i.agu, %.lr.ph.us212.preheader.i ], [ %indvars.iv.next465.i, %._crit_edge.us213.i ] ; 2 uses
  %i.agz = trunc nsw i64 %indvars.iv464.i to i32  ; 2 uses
  %factor.op.mul.reass.us211.i = mul i32 %factor.op.mul107.i, %i.agz
  %i.aha = sext i32 %factor.op.mul.reass.us211.i to i64
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.aha
  %i.ahc = add i32 %i.bq, %i.agz
  %i.ahd = sdiv i32 %i.ahc, %i.ct
  %i.ahe = sext i32 %i.ahd to i64
  br label %.preheader83.us.i

.preheader83.us.i:                                ; preds = %bb.fv, %.lr.ph.us212.i
  %indvars.iv459.i = phi i64 [ 0, %.lr.ph.us212.i ], [ %indvars.iv.next460.i, %bb.fv ] ; 3 uses
  %.idx556.i = shl nuw nsw i64 %indvars.iv459.i, 4
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.idx556.i ; 7 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.afz ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.agb ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.agd ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.agf ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.agh ; 2 uses
  %i.ahl = load <4 x i32>, ptr %i.ahg, align 16, !tbaa !30 ; 2 uses
  %i.ahm = load <4 x i32>, ptr %i.ahh, align 16, !tbaa !30 ; 2 uses
  %i.ahn = load <4 x i32>, ptr %i.ahi, align 16, !tbaa !30 ; 2 uses
  %i.aho = load <4 x i32>, ptr %i.ahj, align 16, !tbaa !30 ; 2 uses
  %i.ahp = load <4 x i32>, ptr %i.ahk, align 16, !tbaa !30
  %i.ahq = add <4 x i32> %i.ahm, %i.ahl           ; 2 uses
  %i.ahr = add <4 x i32> %i.aho, %i.ahn           ; 2 uses
  %i.ahs = sub <4 x i32> %i.ahl, %i.ahm           ; 2 uses
  %i.aht = sub <4 x i32> %i.ahn, %i.aho           ; 2 uses
  %i.ahu = shl <4 x i32> %i.aht, splat (i32 1)
  %i.ahv = add <4 x i32> %i.ahu, %i.ahs
  %i.ahw = shl <4 x i32> %i.ahr, splat (i32 2)
  %i.ahx = add <4 x i32> %i.ahw, %i.ahq
  %i.ahy = shl <4 x i32> %i.aht, splat (i32 3)
  %i.ahz = add <4 x i32> %i.ahy, %i.ahs
  %i.aia = shl <4 x i32> %i.ahp, splat (i32 2)
  %i.aib = add <4 x i32> %i.ahz, %i.aia
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.agj ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.agj ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.agj ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.agj ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.agj ; 2 uses
  %i.aih = load <4 x i32>, ptr %i.aic, align 16, !tbaa !30 ; 2 uses
  %i.aii = load <4 x i32>, ptr %i.aid, align 16, !tbaa !30 ; 2 uses
  %i.aij = load <4 x i32>, ptr %i.aie, align 16, !tbaa !30 ; 2 uses
  %i.aik = load <4 x i32>, ptr %i.aif, align 16, !tbaa !30 ; 2 uses
  %i.ail = load <4 x i32>, ptr %i.aig, align 16, !tbaa !30
  %i.aim = add <4 x i32> %i.aii, %i.aih           ; 2 uses
  %i.ain = add <4 x i32> %i.aik, %i.aij           ; 2 uses
  %i.aio = sub <4 x i32> %i.aih, %i.aii           ; 2 uses
  %i.aip = sub <4 x i32> %i.aij, %i.aik           ; 2 uses
  %i.aiq = shl <4 x i32> %i.aip, splat (i32 1)
  %i.air = add <4 x i32> %i.aiq, %i.aio           ; 2 uses
  %i.ais = shl <4 x i32> %i.ain, splat (i32 2)
  %i.ait = add <4 x i32> %i.ais, %i.aim           ; 2 uses
  %i.aiu = shl <4 x i32> %i.aip, splat (i32 3)
  %i.aiv = add <4 x i32> %i.aiu, %i.aio
  %i.aiw = shl <4 x i32> %i.ail, splat (i32 2)
  %i.aix = add <4 x i32> %i.aiv, %i.aiw           ; 2 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.agj ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.agj ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.agj ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.agj ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.agj ; 2 uses
  %i.ajd = load <4 x i32>, ptr %i.aiy, align 16, !tbaa !30 ; 2 uses
  %i.aje = load <4 x i32>, ptr %i.aiz, align 16, !tbaa !30 ; 2 uses
  %i.ajf = load <4 x i32>, ptr %i.aja, align 16, !tbaa !30 ; 2 uses
  %i.ajg = load <4 x i32>, ptr %i.ajb, align 16, !tbaa !30 ; 2 uses
  %i.ajh = load <4 x i32>, ptr %i.ajc, align 16, !tbaa !30
  %i.aji = add <4 x i32> %i.aje, %i.ajd           ; 2 uses
  %i.ajj = add <4 x i32> %i.ajg, %i.ajf           ; 2 uses
  %i.ajk = sub <4 x i32> %i.ajd, %i.aje           ; 2 uses
  %i.ajl = sub <4 x i32> %i.ajf, %i.ajg           ; 2 uses
  %i.ajm = shl <4 x i32> %i.ajl, splat (i32 1)
  %i.ajn = add <4 x i32> %i.ajm, %i.ajk           ; 2 uses
  %i.ajo = shl <4 x i32> %i.ajj, splat (i32 2)
  %i.ajp = add <4 x i32> %i.ajo, %i.aji           ; 2 uses
  %i.ajq = shl <4 x i32> %i.ajl, splat (i32 3)
  %i.ajr = add <4 x i32> %i.ajq, %i.ajk
  %i.ajs = shl <4 x i32> %i.ajh, splat (i32 2)
  %i.ajt = add <4 x i32> %i.ajr, %i.ajs           ; 2 uses
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.agj ; 2 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.agj ; 2 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.agj ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.agj ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.agj ; 2 uses
  %i.ajz = load <4 x i32>, ptr %i.aju, align 16, !tbaa !30 ; 2 uses
  %i.aka = load <4 x i32>, ptr %i.ajv, align 16, !tbaa !30 ; 2 uses
  %i.akb = load <4 x i32>, ptr %i.ajw, align 16, !tbaa !30 ; 2 uses
  %i.akc = load <4 x i32>, ptr %i.ajx, align 16, !tbaa !30 ; 2 uses
  %i.akd = load <4 x i32>, ptr %i.ajy, align 16, !tbaa !30
  %i.ake = add <4 x i32> %i.aka, %i.ajz           ; 2 uses
  %i.akf = add <4 x i32> %i.akc, %i.akb           ; 2 uses
  %i.akg = sub <4 x i32> %i.ajz, %i.aka           ; 2 uses
  %i.akh = sub <4 x i32> %i.akb, %i.akc           ; 2 uses
  %i.aki = shl <4 x i32> %i.akh, splat (i32 1)
  %i.akj = add <4 x i32> %i.aki, %i.akg           ; 2 uses
  %i.akk = shl <4 x i32> %i.akf, splat (i32 2)
  %i.akl = add <4 x i32> %i.akk, %i.ake           ; 2 uses
  %i.akm = shl <4 x i32> %i.akh, splat (i32 3)
  %i.akn = add <4 x i32> %i.akm, %i.akg
  %i.ako = shl <4 x i32> %i.akd, splat (i32 2)
  %i.akp = add <4 x i32> %i.akn, %i.ako           ; 2 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.agj ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.agj ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.agj ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.agj ; 2 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %i.agj ; 2 uses
  %i.akv = load <4 x i32>, ptr %i.akq, align 16, !tbaa !30 ; 2 uses
  %i.akw = load <4 x i32>, ptr %i.akr, align 16, !tbaa !30 ; 2 uses
  %i.akx = load <4 x i32>, ptr %i.aks, align 16, !tbaa !30 ; 2 uses
  %i.aky = load <4 x i32>, ptr %i.akt, align 16, !tbaa !30 ; 2 uses
  %i.akz = load <4 x i32>, ptr %i.aku, align 16, !tbaa !30
  %i.ala = add <4 x i32> %i.akw, %i.akv           ; 2 uses
  %i.alb = add <4 x i32> %i.aky, %i.akx           ; 2 uses
  %i.alc = sub <4 x i32> %i.akv, %i.akw           ; 2 uses
  %i.ald = sub <4 x i32> %i.akx, %i.aky           ; 2 uses
  %i.ale = shl <4 x i32> %i.ald, splat (i32 1)
  %i.alf = add <4 x i32> %i.ale, %i.alc           ; 2 uses
  %i.alg = shl <4 x i32> %i.alb, splat (i32 2)
  %i.alh = add <4 x i32> %i.alg, %i.ala           ; 2 uses
  %i.ali = shl <4 x i32> %i.ald, splat (i32 3)
  %i.alj = add <4 x i32> %i.ali, %i.alc
  %i.alk = shl <4 x i32> %i.akz, splat (i32 2)
  %i.all = add <4 x i32> %i.alj, %i.alk           ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.agj
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.agj
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %i.agj
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %i.agj
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.agj
  %i.alr = trunc i64 %indvars.iv459.i to i32
  %i.als = add i32 %.044131, %i.alr               ; 2 uses
  %i.alt = load <4 x i32>, ptr %i.alm, align 16, !tbaa !30 ; 2 uses
  %i.alu = load <4 x i32>, ptr %i.aln, align 16, !tbaa !30 ; 2 uses
  %i.alv = load <4 x i32>, ptr %i.alo, align 16, !tbaa !30 ; 2 uses
  %i.alw = load <4 x i32>, ptr %i.alp, align 16, !tbaa !30 ; 2 uses
  %i.alx = load <4 x i32>, ptr %i.alq, align 16, !tbaa !30
  %i.aly = add <4 x i32> %i.alu, %i.alt           ; 2 uses
  %i.alz = add <4 x i32> %i.alw, %i.alv           ; 2 uses
  %i.ama = sub <4 x i32> %i.alt, %i.alu
  %i.amb = sub <4 x i32> %i.alv, %i.alw           ; 2 uses
  %i.amc = shl <4 x i32> %i.amb, splat (i32 3)
  %i.amd = shl <4 x i32> %i.ama, splat (i32 2)    ; 2 uses
  %i.ame = shl <4 x i32> %i.alz, splat (i32 4)
  %i.amf = shl <4 x i32> %i.aly, splat (i32 2)
  %i.amg = shl <4 x i32> %i.alx, splat (i32 4)
  %i.amh = shl <4 x i32> %i.amb, splat (i32 5)
  %i.ami = load i32, ptr %i.ao, align 4, !tbaa !16, !noalias !826
  %i.amj = load ptr, ptr %12, align 8, !tbaa !28, !noalias !826
  %i.amk = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !826
  %i.aml = mul i64 %i.amk, %i.ahe
  %i.amm = load i64, ptr %i.ay, align 8, !tbaa !29, !noalias !826 ; 2 uses
  %i.amn = mul i64 %i.aml, %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.amn
  %i.amp = sext i32 %i.ami to i64
  %i.amq = srem i32 %i.als, %i.agv
  %i.amr = insertelement <4 x i32> poison, i32 %i.amq, i64 0
  %i.ams = insertelement <4 x i32> %i.amr, i32 %i.als, i64 1
  %i.amt = shufflevector <4 x i32> %i.ams, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.amu = sdiv <4 x i32> %i.amt, %i.agx
  %i.amv = shl nsw <4 x i32> %i.amu, splat (i32 2) ; 3 uses
  %i.amw = extractelement <4 x i32> %i.amv, i64 3 ; 4 uses
  %i.amx = sext i32 %i.amw to i64
  %i.amy = mul nsw i64 %i.amp, %i.amx
  %i.amz = mul i64 %i.amy, %i.amm
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amz
  %i.anb = extractelement <4 x i32> %i.amv, i64 0
  %i.anc = mul nsw i32 %i.anb, %i.ct
  %i.and = sext i32 %i.anc to i64
  %i.ane = getelementptr inbounds [4 x i8], ptr %i.ana, i64 %i.and ; 10 uses
  %i.anf = or disjoint <4 x i32> %i.amv, <i32 3, i32 2, i32 1, i32 0>
  %i.ang = icmp slt <4 x i32> %i.anf, %i.agy      ; 25 uses
  %i.anh = extractelement <4 x i1> %i.ang, i64 3
  br i1 %i.anh, label %bb.dp, label %bb.ed

bb.dp:                                            ; preds = %.preheader83.us.i
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.agj ; 2 uses
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.ani, i64 %i.agj ; 2 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %i.agj ; 2 uses
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %i.agj ; 2 uses
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.agj
  %i.ann = load <4 x i32>, ptr %i.anm, align 16, !tbaa !30
  %i.ano = add <4 x i32> %i.alz, %i.aly
  %i.anp = add <4 x i32> %i.ano, %i.ann
  %i.anq = shl <4 x i32> %i.anp, splat (i32 2)
  %i.anr = load <4 x i32>, ptr %i.anl, align 16, !tbaa !30
  %i.ans = add <4 x i32> %i.alb, %i.ala
  %i.ant = add <4 x i32> %i.ans, %i.anr           ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  switch i32 %i.ct, label %bb.fg [
    i32 4, label %bb.fa
    i32 1, label %bb.eu
  ]

bb.eu:                                            ; preds = %bb.et
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.11188.us.1.i, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.arx, i32 4)
  %i.ash = extractelement <4 x i1> %i.ang, i64 2
  br i1 %i.ash, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.asi = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.asi, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.asa, i32 4)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.asj = extractelement <4 x i1> %i.ang, i64 1
  br i1 %i.asj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ask = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.ask, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.asd, i32 4)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.asl = extractelement <4 x i1> %i.ang, i64 0
  br i1 %i.asl, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.asm = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.asm, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.asg, i32 4)
  br label %bb.fg

bb.fa:                                            ; preds = %bb.et
  store <4 x i32> %i.arx, ptr %.11188.us.1.i, align 16, !tbaa !30
  %i.asn = extractelement <4 x i1> %i.ang, i64 2
  br i1 %i.asn, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aso = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 16
  store <4 x i32> %i.asa, ptr %i.aso, align 16, !tbaa !30
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.asp = extractelement <4 x i1> %i.ang, i64 1
  br i1 %i.asp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.asq = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 32
  store <4 x i32> %i.asd, ptr %i.asq, align 16, !tbaa !30
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.asr = extractelement <4 x i1> %i.ang, i64 0
  br i1 %i.asr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.ass = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 48
  store <4 x i32> %i.asg, ptr %i.ass, align 16, !tbaa !30
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.ez, %bb.ey, %bb.et
  %i.ast = getelementptr inbounds [4 x i8], ptr %.11188.us.1.i, i64 %i.agp
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.es
  %.11188.us.2.i = phi ptr [ %.11188.us.1.i, %bb.es ], [ %i.ast, %bb.fg ] ; 8 uses
  %i.asu = or disjoint i32 %i.amw, 3
  %.not1215.us.3.i = icmp slt i32 %i.asu, %i.agw
  br i1 %.not1215.us.3.i, label %bb.fi, label %bb.fv

bb.fi:                                            ; preds = %bb.fh
  %i.asv = add <4 x i32> %i.ajt, %i.aix           ; 2 uses
  %i.asw = add <4 x i32> %i.all, %i.akp           ; 2 uses
  %i.asx = sub <4 x i32> %i.aix, %i.ajt           ; 2 uses
  %i.asy = sub <4 x i32> %i.akp, %i.all           ; 2 uses
  %i.asz = add <4 x i32> %i.aib, %i.asv
  %i.ata = add <4 x i32> %i.asz, %i.asw
  %i.atb = shl <4 x i32> %i.asy, splat (i32 1)
  %i.atc = add <4 x i32> %i.atb, %i.asx
  %i.atd = shl <4 x i32> %i.asw, splat (i32 2)
  %i.ate = add <4 x i32> %i.atd, %i.asv
  %i.atf = shl <4 x i32> %i.asy, splat (i32 3)
  %i.atg = add <4 x i32> %i.atf, %i.asx
  %i.ath = add <4 x i32> %i.atg, %i.amd
  %i.ati = add <4 x i32> %i.ath, %i.amh
  %i.atj = add <4 x i32> %i.ati, %i.amg
  %i.atk = sitofp fast <4 x i32> %i.ata to <4 x float>
  %i.atl = fmul fast <4 x float> %i.atk, splat (float f0x3AE38E39)
  %i.atm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atl) ; 2 uses
  %i.atn = sitofp fast <4 x i32> %i.atc to <4 x float>
  %i.ato = fmul fast <4 x float> %i.atn, splat (float f0x3AE38E39)
  %i.atp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ato) ; 2 uses
  %i.atq = sitofp fast <4 x i32> %i.ate to <4 x float>
  %i.atr = fmul fast <4 x float> %i.atq, splat (float f0x3AE38E39)
  %i.ats = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atr) ; 2 uses
  %i.att = sitofp fast <4 x i32> %i.atj to <4 x float>
  %i.atu = fmul fast <4 x float> %i.att, splat (float f0x3AE38E39)
  %i.atv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atu) ; 2 uses
  switch i32 %i.ct, label %bb.fv [
    i32 4, label %bb.fp
    i32 1, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.11188.us.2.i, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.atm, i32 4)
  %i.atw = extractelement <4 x i1> %i.ang, i64 2
  br i1 %i.atw, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.atx = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.atx, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.atp, i32 4)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.aty = extractelement <4 x i1> %i.ang, i64 1
  br i1 %i.aty, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.atz = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.atz, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.ats, i32 4)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.aua = extractelement <4 x i1> %i.ang, i64 0
  br i1 %i.aua, label %bb.fo, label %bb.fv

bb.fo:                                            ; preds = %bb.fn
  %i.aub = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.aub, <4 x i1> splat (i1 true), <4 x i32> %i.agn, <4 x i32> %i.atv, i32 4)
  br label %bb.fv

bb.fp:                                            ; preds = %bb.fi
  store <4 x i32> %i.atm, ptr %.11188.us.2.i, align 16, !tbaa !30
  %i.auc = extractelement <4 x i1> %i.ang, i64 2
  br i1 %i.auc, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aud = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 16
  store <4 x i32> %i.atp, ptr %i.aud, align 16, !tbaa !30
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.aue = extractelement <4 x i1> %i.ang, i64 1
  br i1 %i.aue, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.auf = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 32
  store <4 x i32> %i.ats, ptr %i.auf, align 16, !tbaa !30
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.aug = extractelement <4 x i1> %i.ang, i64 0
  br i1 %i.aug, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.auh = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 48
  store <4 x i32> %i.atv, ptr %i.auh, align 16, !tbaa !30
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fo, %bb.fn, %bb.fi, %bb.fh
  %indvars.iv.next460.i = add nuw nsw i64 %indvars.iv459.i, 1 ; 2 uses
  %exitcond463.not.i = icmp eq i64 %indvars.iv.next460.i, %wide.trip.count462.i
  br i1 %exitcond463.not.i, label %._crit_edge.us213.i, label %.preheader83.us.i, !llvm.loop !803

._crit_edge.us213.i:                              ; preds = %bb.fv
  %indvars.iv.next465.i = add nuw nsw i64 %indvars.iv464.i, 4 ; 3 uses
  %i.aui = icmp slt i64 %indvars.iv.next465.i, %invariant.op558.i
  br i1 %i.aui, label %.lr.ph.us212.i, label %.preheader82.loopexit.i, !llvm.loop !804

.preheader82.loopexit.i:                          ; preds = %._crit_edge.us213.i
  %i.auj = trunc nsw i64 %indvars.iv.next465.i to i32
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.lr.ph209.split.preheader.i, %.preheader84.i
  %.2.lcssa.i = phi i32 [ %.11121.lcssa.i, %.preheader84.i ], [ %i.auj, %.preheader82.loopexit.i ], [ %i.agt, %.lr.ph209.split.preheader.i ] ; 5 uses
  %i.auk = or disjoint i32 %.2.lcssa.i, 1
  %i.aul = icmp slt i32 %i.auk, %.sroa.speculated121
  br i1 %i.aul, label %.lr.ph265.i, label %.preheader80.i

.lr.ph265.i:                                      ; preds = %.preheader82.i
  %i.aum = icmp sgt i32 %.sroa.speculated117, 0
  %i.aun = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.auo = zext nneg i32 %i.aun to i64
  %i.aup = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.auq = zext nneg i32 %i.aup to i64
  %i.aur = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.aus = zext nneg i32 %i.aur to i64
  %i.aut = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = mul nuw nsw i32 %.sroa.speculated117, 10
  %i.auw = zext nneg i32 %i.auv to i64
  %i.aux = mul nuw nsw i32 %.sroa.speculated117, 12
  %i.auy = zext nneg i32 %i.aux to i64            ; 30 uses
  %i.auz = sext i32 %i.cz to i64                  ; 3 uses
  br i1 %i.aum, label %.lr.ph265.split.us.i, label %.lr.ph265.split.preheader.i

.lr.ph265.split.preheader.i:                      ; preds = %.lr.ph265.i
  %i.ava = sub i32 %i.ck, %.2.lcssa.i
  %i.avb = and i32 %i.ava, -2
  %i.avc = add nsw i32 %.2.lcssa.i, 2
  %i.avd = add i32 %i.avc, %i.avb
  br label %.preheader80.i

.lr.ph265.split.us.i:                             ; preds = %.lr.ph265.i
  %i.ave = load ptr, ptr %12, align 8, !tbaa !28, !noalias !827
  %i.avf = load i64, ptr %i.aq, align 8, !tbaa !19, !noalias !827
  %i.avg = load i64, ptr %i.ay, align 8, !tbaa !29, !noalias !827 ; 2 uses
  %factor.op.mul.i = mul i64 %i.avg, %i.avf
  %i.avh = sext i32 %.2.lcssa.i to i64
  %wide.trip.count478.i = zext nneg i32 %.sroa.speculated117 to i64
  %i.avi = extractelement <4 x i32> %i.dc, i64 0  ; 2 uses
  %i.avj = extractelement <2 x i32> %i.cx, i64 1  ; 4 uses
  br label %.lr.ph.us268.i

.lr.ph.us268.i:                                   ; preds = %._crit_edge.us269.i, %.lr.ph265.split.us.i
  %indvars.iv480.i = phi i64 [ %indvars.iv.next481.i, %._crit_edge.us269.i ], [ %i.avh, %.lr.ph265.split.us.i ] ; 3 uses
  %i.avk = trunc nsw i64 %indvars.iv480.i to i32
  %factor.op.mul.reass.us267.i = mul i32 %factor.op.mul107.i, %i.avk
  %i.avl = sext i32 %factor.op.mul.reass.us267.i to i64
  %i.avm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.avl
  %i.avn = add nsw i64 %indvars.iv480.i, %i.cl
  %.reass.i = mul i64 %factor.op.mul.i, %i.avn
  %i.avo = getelementptr inbounds nuw i8, ptr %i.ave, i64 %.reass.i
  br label %.preheader81.us.i

.preheader81.us.i:                                ; preds = %bb.ha, %.lr.ph.us268.i
  %indvars.iv475.i = phi i64 [ 0, %.lr.ph.us268.i ], [ %indvars.iv.next476.i, %bb.ha ] ; 3 uses
  %.idx557.i = shl nuw nsw i64 %indvars.iv475.i, 3
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 %.idx557.i ; 8 uses
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.auo ; 3 uses
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.auq ; 3 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.aus ; 3 uses
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.auu ; 3 uses
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.auw ; 3 uses
  %i.avv = load i32, ptr %i.avq, align 4, !tbaa !10 ; 2 uses
  %i.avw = load i32, ptr %i.avr, align 4, !tbaa !10 ; 2 uses
  %i.avx = add nsw i32 %i.avw, %i.avv             ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !10 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avr, i64 4
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !10 ; 2 uses
  %i.awc = add nsw i32 %i.awb, %i.avz             ; 2 uses
  %i.awd = load i32, ptr %i.avs, align 4, !tbaa !10 ; 2 uses
  %i.awe = load i32, ptr %i.avt, align 4, !tbaa !10 ; 2 uses
  %i.awf = add nsw i32 %i.awe, %i.awd             ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !10 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !10 ; 2 uses
  %i.awk = add nsw i32 %i.awj, %i.awh             ; 2 uses
  %i.awl = sub nsw i32 %i.avv, %i.avw             ; 2 uses
  %i.awm = sub nsw i32 %i.avz, %i.awb             ; 2 uses
  %i.awn = sub nsw i32 %i.awd, %i.awe             ; 2 uses
  %i.awo = sub nsw i32 %i.awh, %i.awj             ; 2 uses
  %i.awp = add nsw i32 %i.awf, %i.avx
  %i.awq = load i32, ptr %i.avp, align 4, !tbaa !10
  %i.awr = add nsw i32 %i.awp, %i.awq
  %i.aws = add nsw i32 %i.awk, %i.awc
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avp, i64 4
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !10
  %i.awv = add nsw i32 %i.aws, %i.awu
  %i.aww = shl nsw i32 %i.awn, 1
  %i.awx = add nsw i32 %i.aww, %i.awl
  %i.awy = shl nsw i32 %i.awo, 1
  %i.awz = add nsw i32 %i.awy, %i.awm
  %i.axa = shl nsw i32 %i.awf, 2
  %i.axb = add nsw i32 %i.axa, %i.avx
  %i.axc = shl nsw i32 %i.awk, 2
  %i.axd = add nsw i32 %i.axc, %i.awc
  %i.axe = shl nsw i32 %i.awn, 3
  %i.axf = add nsw i32 %i.axe, %i.awl
  %i.axg = load i32, ptr %i.avu, align 4, !tbaa !10
  %i.axh = shl nsw i32 %i.axg, 2
  %i.axi = add nsw i32 %i.axf, %i.axh
  %i.axj = shl nsw i32 %i.awo, 3
  %i.axk = add nsw i32 %i.axj, %i.awm
  %i.axl = getelementptr inbounds nuw i8, ptr %i.avu, i64 4
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !10
  %i.axn = shl nsw i32 %i.axm, 2
  %i.axo = add nsw i32 %i.axk, %i.axn
  %.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %i.awr, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x i32> %.sroa.0.0.vec.insert, i32 %i.awv, i64 1
  %.sroa.20.48.vec.insert = insertelement <2 x i32> poison, i32 %i.awx, i64 0
  %.sroa.20.52.vec.insert = insertelement <2 x i32> %.sroa.20.48.vec.insert, i32 %i.awz, i64 1
  %.sroa.38.96.vec.insert = insertelement <2 x i32> poison, i32 %i.axb, i64 0
  %.sroa.38.100.vec.insert = insertelement <2 x i32> %.sroa.38.96.vec.insert, i32 %i.axd, i64 1
  %.sroa.56.144.vec.insert = insertelement <2 x i32> poison, i32 %i.axi, i64 0
  %.sroa.56.148.vec.insert = insertelement <2 x i32> %.sroa.56.144.vec.insert, i32 %i.axo, i64 1
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.auy ; 3 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.avq, i64 %i.auy ; 3 uses
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.avr, i64 %i.auy ; 3 uses
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.auy ; 3 uses
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.avt, i64 %i.auy ; 3 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.avu, i64 %i.auy ; 3 uses
  %i.axv = load i32, ptr %i.axq, align 4, !tbaa !10 ; 2 uses
  %i.axw = load i32, ptr %i.axr, align 4, !tbaa !10 ; 2 uses
  %i.axx = add nsw i32 %i.axw, %i.axv             ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axq, i64 4
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !10 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axr, i64 4
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !10 ; 2 uses
  %i.ayc = add nsw i32 %i.ayb, %i.axz             ; 2 uses
  %i.ayd = load i32, ptr %i.axs, align 4, !tbaa !10 ; 2 uses
  %i.aye = load i32, ptr %i.axt, align 4, !tbaa !10 ; 2 uses
  %i.ayf = add nsw i32 %i.aye, %i.ayd             ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !10 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axt, i64 4
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !10 ; 2 uses
  %i.ayk = add nsw i32 %i.ayj, %i.ayh             ; 2 uses
  %i.ayl = sub nsw i32 %i.axv, %i.axw             ; 2 uses
  %i.aym = sub nsw i32 %i.axz, %i.ayb             ; 2 uses
  %i.ayn = sub nsw i32 %i.ayd, %i.aye             ; 2 uses
  %i.ayo = sub nsw i32 %i.ayh, %i.ayj             ; 2 uses
  %i.ayp = add nsw i32 %i.ayf, %i.axx
  %i.ayq = load i32, ptr %i.axp, align 4, !tbaa !10
  %i.ayr = add nsw i32 %i.ayp, %i.ayq
  %i.ays = add nsw i32 %i.ayk, %i.ayc
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axp, i64 4
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !10
  %i.ayv = add nsw i32 %i.ays, %i.ayu
  %i.ayw = shl nsw i32 %i.ayn, 1
  %i.ayx = add nsw i32 %i.ayw, %i.ayl
  %i.ayy = shl nsw i32 %i.ayo, 1
  %i.ayz = add nsw i32 %i.ayy, %i.aym
  %i.aza = shl nsw i32 %i.ayf, 2
  %i.azb = add nsw i32 %i.aza, %i.axx
  %i.azc = shl nsw i32 %i.ayk, 2
  %i.azd = add nsw i32 %i.azc, %i.ayc
  %i.aze = shl nsw i32 %i.ayn, 3
  %i.azf = add nsw i32 %i.aze, %i.ayl
  %i.azg = load i32, ptr %i.axu, align 4, !tbaa !10
  %i.azh = shl nsw i32 %i.azg, 2
  %i.azi = add nsw i32 %i.azf, %i.azh
  %i.azj = shl nsw i32 %i.ayo, 3
  %i.azk = add nsw i32 %i.azj, %i.aym
  %i.azl = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !10
  %i.azn = shl nsw i32 %i.azm, 2
  %i.azo = add nsw i32 %i.azk, %i.azn
  %.sroa.5.8.vec.insert = insertelement <2 x i32> poison, i32 %i.ayr, i64 0
  %.sroa.5.12.vec.insert = insertelement <2 x i32> %.sroa.5.8.vec.insert, i32 %i.ayv, i64 1 ; 2 uses
  %.sroa.23.56.vec.insert = insertelement <2 x i32> poison, i32 %i.ayx, i64 0
  %.sroa.23.60.vec.insert = insertelement <2 x i32> %.sroa.23.56.vec.insert, i32 %i.ayz, i64 1 ; 2 uses
  %.sroa.41.104.vec.insert = insertelement <2 x i32> poison, i32 %i.azb, i64 0
  %.sroa.41.108.vec.insert = insertelement <2 x i32> %.sroa.41.104.vec.insert, i32 %i.azd, i64 1 ; 2 uses
  %.sroa.59.152.vec.insert = insertelement <2 x i32> poison, i32 %i.azi, i64 0
  %.sroa.59.156.vec.insert = insertelement <2 x i32> %.sroa.59.152.vec.insert, i32 %i.azo, i64 1 ; 2 uses
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %i.auy ; 3 uses
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %i.auy ; 3 uses
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %i.auy ; 3 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.auy ; 3 uses
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.auy ; 3 uses
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %i.auy ; 3 uses
  %i.azv = load i32, ptr %i.azq, align 4, !tbaa !10 ; 2 uses
  %i.azw = load i32, ptr %i.azr, align 4, !tbaa !10 ; 2 uses
  %i.azx = add nsw i32 %i.azw, %i.azv             ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azq, i64 4
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !10 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azr, i64 4
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !10 ; 2 uses
  %i.bac = add nsw i32 %i.bab, %i.azz             ; 2 uses
  %i.bad = load i32, ptr %i.azs, align 4, !tbaa !10 ; 2 uses
  %i.bae = load i32, ptr %i.azt, align 4, !tbaa !10 ; 2 uses
  %i.baf = add nsw i32 %i.bae, %i.bad             ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azs, i64 4
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !10 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azt, i64 4
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !10 ; 2 uses
  %i.bak = add nsw i32 %i.baj, %i.bah             ; 2 uses
  %i.bal = sub nsw i32 %i.azv, %i.azw             ; 2 uses
  %i.bam = sub nsw i32 %i.azz, %i.bab             ; 2 uses
  %i.ban = sub nsw i32 %i.bad, %i.bae             ; 2 uses
  %i.bao = sub nsw i32 %i.bah, %i.baj             ; 2 uses
  %i.bap = add nsw i32 %i.baf, %i.azx
  %i.baq = load i32, ptr %i.azp, align 4, !tbaa !10
  %i.bar = add nsw i32 %i.bap, %i.baq
  %i.bas = add nsw i32 %i.bak, %i.bac
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azp, i64 4
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !10
  %i.bav = add nsw i32 %i.bas, %i.bau
  %i.baw = shl nsw i32 %i.ban, 1
  %i.bax = add nsw i32 %i.baw, %i.bal
  %i.bay = shl nsw i32 %i.bao, 1
  %i.baz = add nsw i32 %i.bay, %i.bam
  %i.bba = shl nsw i32 %i.baf, 2
  %i.bbb = add nsw i32 %i.bba, %i.azx
  %i.bbc = shl nsw i32 %i.bak, 2
  %i.bbd = add nsw i32 %i.bbc, %i.bac
  %i.bbe = shl nsw i32 %i.ban, 3
  %i.bbf = add nsw i32 %i.bbe, %i.bal
  %i.bbg = load i32, ptr %i.azu, align 4, !tbaa !10
  %i.bbh = shl nsw i32 %i.bbg, 2
  %i.bbi = add nsw i32 %i.bbf, %i.bbh
  %i.bbj = shl nsw i32 %i.bao, 3
  %i.bbk = add nsw i32 %i.bbj, %i.bam
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.azu, i64 4
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !10
  %i.bbn = shl nsw i32 %i.bbm, 2
  %i.bbo = add nsw i32 %i.bbk, %i.bbn
end_hunk_13
