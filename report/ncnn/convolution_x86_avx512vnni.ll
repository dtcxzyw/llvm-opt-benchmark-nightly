Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %.8.lcssa.i.i = phi ptr [ %.7.lcssa.i38.i, %.preheader299.i.i ], [ %i.baw, %.lr.ph306.i.i ] ; 2 uses
  %i.azo = icmp slt i32 %.11650.lcssa.i.i, %5
  br i1 %i.azo, label %.lr.ph311.i.i, label %.loopexit290.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader299.i.i, %.lr.ph306.i.i
  %.8305.i.i = phi ptr [ %i.baw, %.lr.ph306.i.i ], [ %.7.lcssa.i38.i, %.preheader299.i.i ] ; 3 uses
  %.11650304.i.i = phi i32 [ %i.bax, %.lr.ph306.i.i ], [ %.01649.lcssa.i.i, %.preheader299.i.i ] ; 2 uses
  %i.azp = add nsw i32 %.11650304.i.i, %4         ; 2 uses
  %i.azq = add nsw i32 %i.azp, 1
  %i.azr = insertelement <2 x i32> poison, i32 %i.azp, i64 0
  %i.azs = insertelement <2 x i32> %i.azr, i32 %i.azq, i64 1
  %.frozen823 = freeze <2 x i32> %i.azs           ; 2 uses
  %i.azt = sdiv <2 x i32> %.frozen823, %i.akv     ; 2 uses
  %i.azu = mul <2 x i32> %i.azt, %i.akv
  %.decomposed824 = sub <2 x i32> %.frozen823, %i.azu ; 3 uses
  %i.azv = srem <2 x i32> %.decomposed824, %i.akx ; 2 uses
  %i.azw = shufflevector <2 x i32> %i.azv, <2 x i32> %.decomposed824, <2 x i32> <i32 2, i32 0>
  %i.azx = sdiv <2 x i32> %i.azw, %i.akr
  %i.azy = mul <2 x i32> %i.azx, %i.akt           ; 2 uses
  %i.azz = shufflevector <2 x i32> %i.azv, <2 x i32> %.decomposed824, <2 x i32> <i32 3, i32 1>
  %i.baa = sdiv <2 x i32> %i.azz, %i.akr
  %i.bab = mul <2 x i32> %i.baa, %i.akt           ; 2 uses
  %i.bac = mul <2 x i32> %i.azt, %i.akz           ; 2 uses
  %foldExtExtBinop491 = add <2 x i32> %i.azy, %i.bac
  %i.bad = shufflevector <2 x i32> %foldExtExtBinop491, <2 x i32> poison, <16 x i32> zeroinitializer
  %i.bae = shufflevector <2 x i32> %i.azy, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.baf = add <16 x i32> %i.bad, %i.bae
  %i.bag = add <16 x i32> %i.baf, %i.aoz
  %i.bah = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bai = shufflevector <2 x i32> %i.bac, <2 x i32> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.baj = add <16 x i32> %i.bah, %i.bai
  %i.bak = shufflevector <16 x i32> %i.baj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bal = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bam = add <16 x i32> %i.bak, %i.bal
  %i.ban = add <16 x i32> %i.bam, %i.aoz
  %i.bao = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bap = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bao, <16 x i32> %i.bag, <16 x i1> splat (i1 true), i32 1)
  %i.baq = trunc <16 x i32> %i.bap to <16 x i8>   ; 2 uses
  %i.bar = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bao, <16 x i32> %i.ban, <16 x i1> splat (i1 true), i32 1)
  %i.bas = trunc <16 x i32> %i.bar to <16 x i8>   ; 2 uses
  %i.bat = shufflevector <16 x i8> %i.baq, <16 x i8> %i.bas, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bau = shufflevector <16 x i8> %i.baq, <16 x i8> %i.bas, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bat, ptr %.8305.i.i, align 16, !tbaa !30
  %i.bav = getelementptr inbounds nuw i8, ptr %.8305.i.i, i64 16
  store <16 x i8> %i.bau, ptr %i.bav, align 16, !tbaa !30
  %i.baw = getelementptr inbounds nuw i8, ptr %.8305.i.i, i64 32 ; 2 uses
  %i.bax = add nuw nsw i32 %.11650304.i.i, 2      ; 3 uses
  %i.bay = or disjoint i32 %i.bax, 1
  %i.baz = icmp slt i32 %i.bay, %5
  br i1 %i.baz, label %.lr.ph306.i.i, label %.preheader297.i.i, !llvm.loop !503

.lr.ph311.i.i:                                    ; preds = %.preheader297.i.i, %.lr.ph311.i.i
  %.9310.i.i = phi ptr [ %i.bbt, %.lr.ph311.i.i ], [ %.8.lcssa.i.i, %.preheader297.i.i ] ; 2 uses
  %.21651309.i.i = phi i32 [ %i.bbu, %.lr.ph311.i.i ], [ %.11650.lcssa.i.i, %.preheader297.i.i ] ; 2 uses
  %i.bba = add nsw i32 %.21651309.i.i, %4         ; 2 uses
  %i.bbb = sdiv i32 %i.bba, %i.ahb
  %i.bbc = srem i32 %i.bba, %i.ahb                ; 2 uses
  %i.bbd = srem i32 %i.bbc, %6
  %i.bbe = insertelement <2 x i32> poison, i32 %i.bbc, i64 0
  %i.bbf = insertelement <2 x i32> %i.bbe, i32 %i.bbd, i64 1
  %i.bbg = sdiv <2 x i32> %i.bbf, %i.ala
  %i.bbh = mul <2 x i32> %i.bbg, %i.alc           ; 2 uses
  %i.bbi = mul i32 %i.bbb, %i.akd
  %i.bbj = extractelement <2 x i32> %i.bbh, i64 0
  %i.bbk = add i32 %i.bbj, %i.bbi
  %i.bbl = extractelement <2 x i32> %i.bbh, i64 1
  %i.bbm = add i32 %i.bbk, %i.bbl
  %i.bbn = insertelement <16 x i32> poison, i32 %i.bbm, i64 0
  %i.bbo = shufflevector <16 x i32> %i.bbn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bbp = add <16 x i32> %i.bbo, %i.aoz
  %i.bbq = load ptr, ptr %0, align 8, !tbaa !28
  %i.bbr = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bbq, <16 x i32> %i.bbp, <16 x i1> splat (i1 true), i32 1)
  %i.bbs = trunc <16 x i32> %i.bbr to <16 x i8>
  store <16 x i8> %i.bbs, ptr %.9310.i.i, align 16, !tbaa !30
  %i.bbt = getelementptr inbounds nuw i8, ptr %.9310.i.i, i64 16 ; 2 uses
  %i.bbu = add nuw nsw i32 %.21651309.i.i, 1      ; 2 uses
  %exitcond.not.i39.i = icmp eq i32 %i.bbu, %5
  br i1 %exitcond.not.i39.i, label %.loopexit290.i.i, label %.lr.ph311.i.i, !llvm.loop !504

.loopexit298.i.i:                                 ; preds = %bb.o
  br i1 %brmerge488.i.i, label %.loopexit290.i.i, label %.lr.ph315.i37.i

.lr.ph315.i37.i:                                  ; preds = %.loopexit298.i.i, %.lr.ph315.i37.i
  %.11314.i.i = phi ptr [ %i.bda, %.lr.ph315.i37.i ], [ %.0336.i.i, %.loopexit298.i.i ] ; 3 uses
  %.01652313.i.i = phi i32 [ %i.bdb, %.lr.ph315.i37.i ], [ 0, %.loopexit298.i.i ] ; 2 uses
  %i.bbv = add nsw i32 %.01652313.i.i, %i.akn     ; 2 uses
  %i.bbw = sdiv i32 %i.bbv, %i.ahb
  %i.bbx = srem i32 %i.bbv, %i.ahb                ; 2 uses
  %i.bby = srem i32 %i.bbx, %6
  %i.bbz = insertelement <2 x i32> poison, i32 %i.bbx, i64 0
  %i.bca = insertelement <2 x i32> %i.bbz, i32 %i.bby, i64 1
  %i.bcb = sdiv <2 x i32> %i.bca, %i.ako
  %i.bcc = mul <2 x i32> %i.bcb, %i.akq           ; 2 uses
  %i.bcd = mul i32 %i.bbw, %i.akd
  %i.bce = extractelement <2 x i32> %i.bcc, i64 0
  %i.bcf = add i32 %i.bce, %i.bcd
  %i.bcg = extractelement <2 x i32> %i.bcc, i64 1
  %i.bch = add i32 %i.bcf, %i.bcg
  %i.bci = insertelement <16 x i32> poison, i32 %i.bch, i64 0
  %i.bcj = shufflevector <16 x i32> %i.bci, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bck = add <16 x i32> %i.bcj, %i.aoz
  %i.bcl = shl <16 x i32> %i.bck, splat (i32 3)   ; 2 uses
  %i.bcm = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bcn = shufflevector <16 x i32> %i.bcl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bco = tail call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.bcm, <8 x i32> %i.bcn, <8 x i1> splat (i1 true), i32 1)
  %i.bcp = shufflevector <16 x i32> %i.bcl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcq = tail call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.bcm, <8 x i32> %i.bcp, <8 x i1> splat (i1 true), i32 1)
  %i.bcr = bitcast <8 x i64> %i.bco to <16 x i32> ; 2 uses
  %i.bcs = bitcast <8 x i64> %i.bcq to <16 x i32> ; 2 uses
  %i.bct = shufflevector <16 x i32> %i.bcr, <16 x i32> %i.bcs, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bcu = shufflevector <16 x i32> %i.bcr, <16 x i32> %i.bcs, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bcv = bitcast <16 x i32> %i.bct to <64 x i8>
  %i.bcw = add <64 x i8> %i.bcv, splat (i8 127)
  %i.bcx = bitcast <16 x i32> %i.bcu to <64 x i8>
  %i.bcy = add <64 x i8> %i.bcx, splat (i8 127)
  store <64 x i8> %i.bcw, ptr %.11314.i.i, align 1, !tbaa !30
  %i.bcz = getelementptr inbounds nuw i8, ptr %.11314.i.i, i64 64
  store <64 x i8> %i.bcy, ptr %i.bcz, align 1, !tbaa !30
  %i.bda = getelementptr inbounds nuw i8, ptr %.11314.i.i, i64 128 ; 2 uses
  %i.bdb = add nuw nsw i32 %.01652313.i.i, 1      ; 2 uses
  %exitcond570.not.i.i = icmp eq i32 %i.bdb, %i.akl
  br i1 %exitcond570.not.i.i, label %.loopexit290.i.i, label %.lr.ph315.i37.i, !llvm.loop !505

.loopexit290.i.i:                                 ; preds = %.lr.ph315.i37.i, %.lr.ph311.i.i, %bb.n, %bb.m, %.loopexit298.i.i, %.preheader297.i.i, %.loopexit292.i.i, %.preheader291.i.i
  %.12.i.i = phi ptr [ %.0336.i.i, %.loopexit298.i.i ], [ %.2.lcssa.i.i, %.preheader291.i.i ], [ %.0336.i.i, %.loopexit292.i.i ], [ %i.awb, %bb.n ], [ %i.auv, %bb.m ], [ %.8.lcssa.i.i, %.preheader297.i.i ], [ %i.bbt, %.lr.ph311.i.i ], [ %i.bda, %.lr.ph315.i37.i ] ; 2 uses
  %i.bdc = add nuw nsw i32 %.01640335.i.i, 16     ; 3 uses
  %i.bdd = or disjoint i32 %i.bdc, 15
  %i.bde = icmp slt i32 %i.bdd, %3
  br i1 %i.bde, label %bb.i, label %.preheader288.i.i, !llvm.loop !506

.preheader275.i.i:                                ; preds = %.loopexit277.i.i, %.preheader288.i.i
  %.11641.lcssa.i.i = phi i32 [ %.01640.lcssa.i.i, %.preheader288.i.i ], [ %i.btf, %.loopexit277.i.i ] ; 3 uses
  %.13.lcssa.i.i = phi ptr [ %.0.lcssa.i33.i, %.preheader288.i.i ], [ %.25.i.i, %.loopexit277.i.i ] ; 2 uses
  %i.bdf = or disjoint i32 %.11641.lcssa.i.i, 3
  %i.bdg = icmp slt i32 %i.bdf, %3
  br i1 %i.bdg, label %.lr.ph419.i.i, label %.preheader262.i.i

.lr.ph419.i.i:                                    ; preds = %.preheader275.i.i
  %i.bdh = shufflevector <8 x i64> %i.ahs, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdi = and <2 x i64> %i.bdh, splat (i64 4294967295) ; 2 uses
  %i.bdj = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdk = insertelement <4 x i32> poison, i32 %i.aha, i64 0
  %i.bdl = shufflevector <4 x i32> %i.bdk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdm = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.bdn = shufflevector <4 x i32> %i.bdm, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar593.i.i = mul i32 %i.agt, %11
  %i.bdo = insertelement <4 x i32> poison, i32 %.scalar593.i.i, i64 0
  %i.bdp = shufflevector <4 x i32> %i.bdo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdq = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.bdr = icmp sgt i32 %5, 3                     ; 2 uses
  %i.bds = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdt = and <2 x i64> %i.bds, splat (i64 4294967295) ; 4 uses
  %i.bdu = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdv = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.bdw = shufflevector <4 x i32> %i.bdv, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdx = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdy = and <2 x i64> %i.bdx, splat (i64 4294967295) ; 4 uses
  %i.bdz = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bea = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.beb = shufflevector <4 x i32> %i.bea, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bec = trunc i64 %i.l to i32                  ; 4 uses
  %i.bed = insertelement <4 x i32> poison, i32 %i.bec, i64 0
  %i.bee = shufflevector <4 x i32> %i.bed, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bef = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.beg = shufflevector <4 x i32> %i.bef, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar594.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.beh = insertelement <4 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bei = shufflevector <4 x i32> %i.beh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bej = icmp ne i32 %i.agv, 8
  %i.bek = sdiv i32 %5, 8                         ; 2 uses
  %i.bel = icmp slt i32 %5, 8
  %i.bem = sdiv i32 %4, 8                         ; 2 uses
  %brmerge500.i.i = or i1 %i.bel, %i.bej          ; 2 uses
  %i.ben = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.beo = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bep = insertelement <2 x i32> %i.beo, i32 %8, i64 1
  %i.beq = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0 ; 2 uses
  %i.ber = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bes = insertelement <2 x i32> %i.ber, i32 %8, i64 1 ; 2 uses
  %i.bet = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.beu = shufflevector <2 x i32> %i.bet, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bev = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bew = shufflevector <2 x i32> %i.bev, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bex = insertelement <2 x i32> poison, i32 %i.bec, i64 0
  %i.bey = shufflevector <2 x i32> %i.bex, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bez = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.bfa = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bfb = insertelement <2 x i32> %i.bfa, i32 %8, i64 1
  %i.bfc = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bfd = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bfe = insertelement <2 x i32> %i.bfd, i32 %.scalar594.i.i, i64 1
  %i.bff = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.bfg = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bfh = insertelement <2 x i32> %i.bfg, i32 %.scalar594.i.i, i64 1 ; 2 uses
  %i.bfi = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bfj = shufflevector <2 x i32> %i.bfi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bfk = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bfl = shufflevector <2 x i32> %i.bfk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bfm = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bfn = shufflevector <2 x i64> %i.bfm, <2 x i64> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bfo = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bfp = insertelement <2 x i32> %i.bfo, i32 %.scalar594.i.i, i64 1
  br label %bb.w

bb.p:                                             ; preds = %.loopexit277.i.i, %.lr.ph378.i.i
  %.13377.i.i = phi ptr [ %.0.lcssa.i33.i, %.lr.ph378.i.i ], [ %.25.i.i, %.loopexit277.i.i ] ; 8 uses
  %.11641376.i.i = phi i32 [ %.01640.lcssa.i.i, %.lr.ph378.i.i ], [ %i.btf, %.loopexit277.i.i ] ; 2 uses
  %i.bfq = add nsw i32 %.11641376.i.i, %2
  %i.bfr = insertelement <8 x i32> poison, i32 %i.bfq, i64 0
  %i.bfs = shufflevector <8 x i32> %i.bfr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bft = add <8 x i32> %i.bfs, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfu = bitcast <8 x i32> %i.bft to <4 x i64>
  %i.bfv = bitcast <8 x i32> %i.bft to <4 x i64>
  %i.bfw = and <4 x i64> %i.bfv, splat (i64 4294967295)
  %i.bfx = mul nuw <4 x i64> %i.bfw, %i.alu
  %i.bfy = lshr <4 x i64> %i.bfx, splat (i64 32)
  %i.bfz = lshr <4 x i64> %i.bfu, splat (i64 32)
  %i.bga = mul nuw <4 x i64> %i.bfz, %i.alu
  %i.bgb = bitcast <4 x i64> %i.bfy to <16 x i16>
  %i.bgc = bitcast <4 x i64> %i.bga to <16 x i16>
  %i.bgd = shufflevector <16 x i16> %i.bgb, <16 x i16> %i.bgc, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.bge = bitcast <16 x i16> %i.bgd to <8 x i32> ; 2 uses
  %i.bgf = sub <8 x i32> %i.bft, %i.bge
  %i.bgg = lshr <8 x i32> %i.bgf, %i.alv
  %i.bgh = add <8 x i32> %i.bgg, %i.bge
  %i.bgi = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.bgh, <4 x i32> %i.ahu) ; 2 uses
  %i.bgj = mul <8 x i32> %i.bgi, %i.alx
  %i.bgk = sub <8 x i32> %i.bft, %i.bgj
  %i.bgl = mul <8 x i32> %i.bgk, %i.alz           ; 2 uses
  %i.bgm = mul <8 x i32> %i.bgi, %i.amb           ; 4 uses
  %i.bgn = add <8 x i32> %i.bgl, %i.bgm           ; 8 uses
  %shift579 = shufflevector <8 x i32> %i.bgm, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgo = icmp eq <8 x i32> %i.bgm, %shift579
  %i.bgp = extractelement <8 x i1> %i.bgo, i64 0
  %or.cond3.i.i = and i1 %i.g, %i.bgp
  br i1 %or.cond3.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %foldExtExtBinop503 = add nsw <8 x i32> %i.bgl, %i.bgm ; 2 uses
  %i.bgq = extractelement <8 x i32> %foldExtExtBinop503, i64 0 ; 3 uses
  br i1 %i.amc, label %.preheader281.i.i, label %.loopexit279.i.i

.preheader281.i.i:                                ; preds = %bb.q
  br i1 %i.amd, label %.lr.ph360.i.i, label %.preheader280.i.i

.lr.ph360.i.i:                                    ; preds = %.preheader281.i.i
  %i.bgr = shufflevector <8 x i32> %foldExtExtBinop503, <8 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.r

.preheader280.i.i:                                ; preds = %bb.r, %.preheader281.i.i
  %.01653.lcssa.i.i = phi i32 [ 0, %.preheader281.i.i ], [ %i.bix, %bb.r ] ; 3 uses
  %.14.lcssa.i36.i = phi ptr [ %.13377.i.i, %.preheader281.i.i ], [ %i.biw, %bb.r ] ; 2 uses
  %i.bgs = or disjoint i32 %.01653.lcssa.i.i, 1
  %i.bgt = icmp slt i32 %i.bgs, %5
  br i1 %i.bgt, label %.lr.ph365.i.i, label %.preheader278.i.i

.lr.ph365.i.i:                                    ; preds = %.preheader280.i.i
  %i.bgu = sext i32 %i.bgq to i64                 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph360.i.i
  %.14359.i.i = phi ptr [ %.13377.i.i, %.lr.ph360.i.i ], [ %i.biw, %bb.r ] ; 2 uses
  %.01653358.i.i = phi i32 [ 0, %.lr.ph360.i.i ], [ %i.bix, %bb.r ] ; 2 uses
  %i.bgv = add nsw i32 %.01653358.i.i, %4
  %i.bgw = insertelement <4 x i32> poison, i32 %i.bgv, i64 0
  %i.bgx = shufflevector <4 x i32> %i.bgw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgy = add <4 x i32> %i.bgx, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bgz = bitcast <4 x i32> %i.bgy to <2 x i64>
  %i.bha = bitcast <4 x i32> %i.bgy to <2 x i64>
  %i.bhb = and <2 x i64> %i.bha, splat (i64 4294967295)
  %i.bhc = mul nuw <2 x i64> %i.bhb, %i.amf
  %i.bhd = lshr <2 x i64> %i.bhc, splat (i64 32)
  %i.bhe = lshr <2 x i64> %i.bgz, splat (i64 32)
  %i.bhf = mul nuw <2 x i64> %i.bhe, %i.amf
  %i.bhg = bitcast <2 x i64> %i.bhd to <8 x i16>
  %i.bhh = bitcast <2 x i64> %i.bhf to <8 x i16>
  %i.bhi = shufflevector <8 x i16> %i.bhg, <8 x i16> %i.bhh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bhj = bitcast <8 x i16> %i.bhi to <4 x i32>  ; 2 uses
  %i.bhk = sub <4 x i32> %i.bgy, %i.bhj
  %i.bhl = lshr <4 x i32> %i.bhk, %i.amg
  %i.bhm = add <4 x i32> %i.bhl, %i.bhj
  %i.bhn = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bhm, <4 x i32> %i.aio) ; 2 uses
  %i.bho = mul <4 x i32> %i.bhn, %i.ami
  %i.bhp = sub <4 x i32> %i.bgy, %i.bho           ; 4 uses
  %i.bhq = bitcast <4 x i32> %i.bhp to <2 x i64>
  %i.bhr = bitcast <4 x i32> %i.bhp to <2 x i64>
  %i.bhs = and <2 x i64> %i.bhr, splat (i64 4294967295)
  %i.bht = mul nuw <2 x i64> %i.bhs, %i.amk
  %i.bhu = lshr <2 x i64> %i.bht, splat (i64 32)
  %i.bhv = lshr <2 x i64> %i.bhq, splat (i64 32)
  %i.bhw = mul nuw <2 x i64> %i.bhv, %i.amk
  %i.bhx = bitcast <2 x i64> %i.bhu to <8 x i16>
  %i.bhy = bitcast <2 x i64> %i.bhw to <8 x i16>
  %i.bhz = shufflevector <8 x i16> %i.bhx, <8 x i16> %i.bhy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bia = bitcast <8 x i16> %i.bhz to <4 x i32>  ; 2 uses
  %i.bib = sub <4 x i32> %i.bhp, %i.bia
  %i.bic = lshr <4 x i32> %i.bib, %i.aml
  %i.bid = add <4 x i32> %i.bic, %i.bia
  %i.bie = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bid, <4 x i32> %i.ajg) ; 2 uses
  %i.bif = mul <4 x i32> %i.bie, %i.amn
  %i.big = sub <4 x i32> %i.bhp, %i.bif
  %i.bih = mul <4 x i32> %i.bhn, %i.amq
  %i.bii = mul <4 x i32> %i.big, %i.ams
  %i.bij = mul <4 x i32> %i.bie, %i.amu
  %i.bik = add <4 x i32> %i.bih, %i.bgr
  %i.bil = add <4 x i32> %i.bik, %i.bij
  %i.bim = add <4 x i32> %i.bil, %i.bii
  %i.bin = load ptr, ptr %0, align 8, !tbaa !28
  %i.bio = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bin, <4 x i32> %i.bim, <4 x i64> splat (i64 -1), i8 1)
  %i.bip = bitcast <4 x i64> %i.bio to <8 x i32>
  %i.biq = shufflevector <8 x i32> %i.bip, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.bir = bitcast <8 x i32> %i.biq to <4 x i64>
  %i.bis = shufflevector <4 x i64> %i.bir, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bit = bitcast <4 x i64> %i.bis to <32 x i8>
  %i.biu = add <32 x i8> %i.bit, splat (i8 127)
  %i.biv = shufflevector <32 x i8> %i.biu, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %i.biv, ptr %.14359.i.i, align 1, !tbaa !30
  %i.biw = getelementptr inbounds nuw i8, ptr %.14359.i.i, i64 32 ; 2 uses
  %i.bix = add nuw nsw i32 %.01653358.i.i, 4      ; 3 uses
  %i.biy = or disjoint i32 %i.bix, 3
  %i.biz = icmp slt i32 %i.biy, %5
  br i1 %i.biz, label %bb.r, label %.preheader280.i.i, !llvm.loop !507

.preheader278.i.i:                                ; preds = %bb.s, %.preheader280.i.i
  %.11654.lcssa.i.i = phi i32 [ %.01653.lcssa.i.i, %.preheader280.i.i ], [ %i.bkm, %bb.s ] ; 2 uses
  %.15.lcssa.i.i = phi ptr [ %.14.lcssa.i36.i, %.preheader280.i.i ], [ %i.bkl, %bb.s ] ; 2 uses
  %i.bja = icmp slt i32 %.11654.lcssa.i.i, %5
  br i1 %i.bja, label %.lr.ph370.i.i, label %.loopexit277.i.i

.lr.ph370.i.i:                                    ; preds = %.preheader278.i.i
  %i.bjb = sext i32 %i.bgq to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph365.i.i
  %.15364.i.i = phi ptr [ %.14.lcssa.i36.i, %.lr.ph365.i.i ], [ %i.bkl, %bb.s ] ; 2 uses
  %.11654363.i.i = phi i32 [ %.01653.lcssa.i.i, %.lr.ph365.i.i ], [ %i.bkm, %bb.s ] ; 2 uses
  %i.bjc = add nsw i32 %.11654363.i.i, %4         ; 2 uses
  %i.bjd = add nsw i32 %i.bjc, 1
  %i.bje = insertelement <2 x i32> poison, i32 %i.bjc, i64 0
  %i.bjf = insertelement <2 x i32> %i.bje, i32 %i.bjd, i64 1
  %.frozen825 = freeze <2 x i32> %i.bjf           ; 2 uses
  %i.bjg = sdiv <2 x i32> %.frozen825, %i.anv     ; 2 uses
  %i.bjh = sext <2 x i32> %i.bjg to <2 x i64>
  %i.bji = mul <2 x i64> %i.anz, %i.bjh           ; 2 uses
  %i.bjj = mul <2 x i32> %i.bjg, %i.anv
  %.decomposed826 = sub <2 x i32> %.frozen825, %i.bjj ; 3 uses
  %i.bjk = srem <2 x i32> %.decomposed826, %i.anx ; 2 uses
  %i.bjl = shufflevector <2 x i32> %i.bjk, <2 x i32> %.decomposed826, <2 x i32> <i32 0, i32 2>
  %i.bjm = sdiv <2 x i32> %i.bjl, %i.anr
  %i.bjn = mul <2 x i32> %i.bjm, %i.ant
  %i.bjo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bjn)
  %i.bjp = sext i32 %i.bjo to i64
  %i.bjq = shufflevector <2 x i32> %i.bjk, <2 x i32> %.decomposed826, <2 x i32> <i32 1, i32 3>
  %i.bjr = sdiv <2 x i32> %i.bjq, %i.anr
  %i.bjs = mul <2 x i32> %i.bjr, %i.ant
  %i.bjt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bjs)
  %i.bju = sext i32 %i.bjt to i64
  %i.bjv = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bjw = extractelement <2 x i64> %i.bji, i64 0
  %i.bjx = getelementptr i8, ptr %i.bjv, i64 %i.bjw
  %i.bjy = getelementptr i8, ptr %i.bjx, i64 %i.bgu
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 %i.bjp
  %i.bka = load i64, ptr %i.bjz, align 1, !tbaa !30
  %i.bkb = insertelement <2 x i64> poison, i64 %i.bka, i64 0
  %i.bkc = extractelement <2 x i64> %i.bji, i64 1
  %i.bkd = getelementptr i8, ptr %i.bjv, i64 %i.bkc
  %i.bke = getelementptr i8, ptr %i.bkd, i64 %i.bgu
  %i.bkf = getelementptr i8, ptr %i.bke, i64 %i.bju
  %i.bkg = load i64, ptr %i.bkf, align 1, !tbaa !30
  %i.bkh = insertelement <2 x i64> poison, i64 %i.bkg, i64 0
  %i.bki = bitcast <2 x i64> %i.bkb to <16 x i8>
  %i.bkj = bitcast <2 x i64> %i.bkh to <16 x i8>
  %i.bkk = shufflevector <16 x i8> %i.bki, <16 x i8> %i.bkj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bkk, ptr %.15364.i.i, align 1, !tbaa !30
  %i.bkl = getelementptr inbounds nuw i8, ptr %.15364.i.i, i64 16 ; 2 uses
  %i.bkm = add nuw nsw i32 %.11654363.i.i, 2      ; 3 uses
  %i.bkn = or disjoint i32 %i.bkm, 1
  %i.bko = icmp slt i32 %i.bkn, %5
  br i1 %i.bko, label %bb.s, label %.preheader278.i.i, !llvm.loop !508

bb.t:                                             ; preds = %bb.t, %.lr.ph370.i.i
  %.16369.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph370.i.i ], [ %i.blg, %bb.t ] ; 2 uses
  %.21655368.i.i = phi i32 [ %.11654.lcssa.i.i, %.lr.ph370.i.i ], [ %i.blh, %bb.t ] ; 2 uses
  %i.bkp = add nsw i32 %.21655368.i.i, %4         ; 2 uses
  %i.bkq = sdiv i32 %i.bkp, %i.ahb
  %i.bkr = srem i32 %i.bkp, %i.ahb                ; 2 uses
  %i.bks = sext i32 %i.bkq to i64
  %i.bkt = mul i64 %i.l, %i.bks
  %i.bku = srem i32 %i.bkr, %6
  %i.bkv = insertelement <2 x i32> poison, i32 %i.bku, i64 0
  %i.bkw = insertelement <2 x i32> %i.bkv, i32 %i.bkr, i64 1
  %i.bkx = sdiv <2 x i32> %i.bkw, %i.aoa
  %i.bky = mul <2 x i32> %i.bkx, %i.aoc
  %i.bkz = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bky)
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = load ptr, ptr %0, align 8, !tbaa !28
  %i.blc = getelementptr i8, ptr %i.blb, i64 %i.bkt
  %i.bld = getelementptr i8, ptr %i.blc, i64 %i.bjb
  %i.ble = getelementptr i8, ptr %i.bld, i64 %i.bla
  %i.blf = load i64, ptr %i.ble, align 1, !tbaa !30
  store i64 %i.blf, ptr %.16369.i.i, align 1, !tbaa !30
  %i.blg = getelementptr inbounds nuw i8, ptr %.16369.i.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.boe = mul <4 x i32> %i.bnk, %i.amq
  %i.bof = mul <4 x i32> %i.bod, %i.ams
  %i.bog = mul <4 x i32> %i.bob, %i.amu
  %i.boh = add <4 x i32> %i.bog, %i.boe
  %i.boi = add <4 x i32> %i.boh, %i.bof           ; 4 uses
  %i.boj = shufflevector <4 x i32> %i.boi, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.bok = add <8 x i32> %i.boj, %i.bgn
  %i.bol = shufflevector <4 x i32> %i.boi, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bom = add <8 x i32> %i.bol, %i.bgn
  %i.bon = shufflevector <4 x i32> %i.boi, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.boo = add <8 x i32> %i.bon, %i.bgn
  %i.bop = shufflevector <4 x i32> %i.boi, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.boq = add <8 x i32> %i.bop, %i.bgn
  %i.bor = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.bos = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bor, <8 x i32> %i.bok, <8 x i32> splat (i32 -1), i8 1)
  %i.bot = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bor, <8 x i32> %i.bom, <8 x i32> splat (i32 -1), i8 1)
  %i.bou = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bor, <8 x i32> %i.boo, <8 x i32> splat (i32 -1), i8 1)
  %i.bov = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bor, <8 x i32> %i.boq, <8 x i32> splat (i32 -1), i8 1)
  %i.bow = shufflevector <8 x i32> %i.bos, <8 x i32> %i.bot, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.box = trunc <16 x i32> %i.bow to <16 x i8>
  %i.boy = shufflevector <8 x i32> %i.bou, <8 x i32> %i.bov, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.boz = trunc <16 x i32> %i.boy to <16 x i8>
  %i.bpa = bitcast <16 x i8> %i.box to <8 x i16>  ; 2 uses
  %i.bpb = bitcast <16 x i8> %i.boz to <8 x i16>  ; 2 uses
  %i.bpc = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpd = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpe = bitcast <8 x i16> %i.bpc to <16 x i8>
  %i.bpf = add <16 x i8> %i.bpe, splat (i8 127)
  %i.bpg = bitcast <8 x i16> %i.bpd to <16 x i8>
  %i.bph = add <16 x i8> %i.bpg, splat (i8 127)
  store <16 x i8> %i.bpf, ptr %.20341.i.i, align 1, !tbaa !30
  %i.bpi = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 16
  store <16 x i8> %i.bph, ptr %i.bpi, align 1, !tbaa !30
  %i.bpj = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 32 ; 2 uses
  %i.bpk = add nuw nsw i32 %.01657340.i.i, 4      ; 3 uses
  %i.bpl = or disjoint i32 %i.bpk, 3
  %i.bpm = icmp slt i32 %i.bpl, %5
  br i1 %i.bpm, label %.lr.ph342.i.i, label %.preheader286.i.i, !llvm.loop !511

.preheader284.i.i:                                ; preds = %.lr.ph347.i.i, %.preheader286.i.i
  %.11658.lcssa.i.i = phi i32 [ %.01657.lcssa.i.i, %.preheader286.i.i ], [ %i.bqt, %.lr.ph347.i.i ] ; 2 uses
  %.21.lcssa.i35.i = phi ptr [ %.20.lcssa.i.i, %.preheader286.i.i ], [ %i.bqs, %.lr.ph347.i.i ] ; 2 uses
  %i.bpn = icmp slt i32 %.11658.lcssa.i.i, %5
  br i1 %i.bpn, label %.lr.ph352.i.i, label %.loopexit277.i.i

.lr.ph347.i.i:                                    ; preds = %.preheader286.i.i, %.lr.ph347.i.i
  %.21346.i.i = phi ptr [ %i.bqs, %.lr.ph347.i.i ], [ %.20.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %.11658345.i.i = phi i32 [ %i.bqt, %.lr.ph347.i.i ], [ %.01657.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %i.bpo = add nsw i32 %.11658345.i.i, %4         ; 2 uses
  %i.bpp = add nsw i32 %i.bpo, 1
  %i.bpq = insertelement <2 x i32> poison, i32 %i.bpo, i64 0
  %i.bpr = insertelement <2 x i32> %i.bpq, i32 %i.bpp, i64 1
  %.frozen827 = freeze <2 x i32> %i.bpr           ; 2 uses
  %i.bps = sdiv <2 x i32> %.frozen827, %i.ang     ; 2 uses
  %i.bpt = mul <2 x i32> %i.bps, %i.ang
  %.decomposed828 = sub <2 x i32> %.frozen827, %i.bpt ; 3 uses
  %i.bpu = srem <2 x i32> %.decomposed828, %i.ani ; 2 uses
  %i.bpv = shufflevector <2 x i32> %i.bpu, <2 x i32> %.decomposed828, <2 x i32> <i32 2, i32 0>
  %i.bpw = sdiv <2 x i32> %i.bpv, %i.anc
  %i.bpx = mul <2 x i32> %i.bpw, %i.ane           ; 2 uses
  %i.bpy = shufflevector <2 x i32> %i.bpu, <2 x i32> %.decomposed828, <2 x i32> <i32 3, i32 1>
  %i.bpz = sdiv <2 x i32> %i.bpy, %i.anc
  %i.bqa = mul <2 x i32> %i.bpz, %i.ane           ; 2 uses
  %i.bqb = mul <2 x i32> %i.bps, %i.ank           ; 2 uses
  %foldExtExtBinop521 = add <2 x i32> %i.bpx, %i.bqb
  %i.bqc = shufflevector <2 x i32> %foldExtExtBinop521, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqd = shufflevector <2 x i32> %i.bpx, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqe = add <8 x i32> %i.bqc, %i.bqd
  %i.bqf = add <8 x i32> %i.bqe, %i.bgn
  %i.bqg = shufflevector <2 x i32> %i.bqa, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqh = shufflevector <2 x i32> %i.bqb, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqi = add <8 x i32> %i.bqg, %i.bqh
  %i.bqj = shufflevector <8 x i32> %i.bqi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bqk = shufflevector <2 x i32> %i.bqa, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bql = add <8 x i32> %i.bqj, %i.bqk
  %i.bqm = add <8 x i32> %i.bql, %i.bgn
  %i.bqn = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bqo = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqn, <8 x i32> %i.bqf, <8 x i32> splat (i32 -1), i8 1)
  %i.bqp = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqn, <8 x i32> %i.bqm, <8 x i32> splat (i32 -1), i8 1)
  %i.bqq = shufflevector <8 x i32> %i.bqo, <8 x i32> %i.bqp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bqr = trunc <16 x i32> %i.bqq to <16 x i8>
  store <16 x i8> %i.bqr, ptr %.21346.i.i, align 1, !tbaa !30
  %i.bqs = getelementptr inbounds nuw i8, ptr %.21346.i.i, i64 16 ; 2 uses
  %i.bqt = add nuw nsw i32 %.11658345.i.i, 2      ; 3 uses
  %i.bqu = or disjoint i32 %i.bqt, 1
  %i.bqv = icmp slt i32 %i.bqu, %5
  br i1 %i.bqv, label %.lr.ph347.i.i, label %.preheader284.i.i, !llvm.loop !512

.lr.ph352.i.i:                                    ; preds = %.preheader284.i.i, %.lr.ph352.i.i
  %.22351.i.i = phi ptr [ %i.brs, %.lr.ph352.i.i ], [ %.21.lcssa.i35.i, %.preheader284.i.i ] ; 2 uses
  %.21659350.i.i = phi i32 [ %i.brt, %.lr.ph352.i.i ], [ %.11658.lcssa.i.i, %.preheader284.i.i ] ; 2 uses
  %i.bqw = add nsw i32 %.21659350.i.i, %4         ; 2 uses
  %i.bqx = sdiv i32 %i.bqw, %i.ahb
  %i.bqy = srem i32 %i.bqw, %i.ahb                ; 2 uses
  %i.bqz = srem i32 %i.bqy, %6
  %i.bra = insertelement <2 x i32> poison, i32 %i.bqy, i64 0
  %i.brb = insertelement <2 x i32> %i.bra, i32 %i.bqz, i64 1
  %i.brc = sdiv <2 x i32> %i.brb, %i.anl
  %i.brd = mul <2 x i32> %i.brc, %i.ann           ; 2 uses
  %i.bre = mul i32 %i.bqx, %i.amo
  %i.brf = extractelement <2 x i32> %i.brd, i64 0
  %i.brg = add i32 %i.brf, %i.bre
  %i.brh = extractelement <2 x i32> %i.brd, i64 1
  %i.bri = add i32 %i.brg, %i.brh
  %i.brj = insertelement <8 x i32> poison, i32 %i.bri, i64 0
  %i.brk = shufflevector <8 x i32> %i.brj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.brl = add <8 x i32> %i.brk, %i.bgn
  %i.brm = load ptr, ptr %0, align 8, !tbaa !28
  %i.brn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.brm, <8 x i32> %i.brl, <8 x i32> splat (i32 -1), i8 1)
  %i.bro = shufflevector <8 x i32> %i.brn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brp = trunc <16 x i32> %i.bro to <16 x i8>
  %i.brq = bitcast <16 x i8> %i.brp to <2 x i64>
  %i.brr = extractelement <2 x i64> %i.brq, i64 0
  store i64 %i.brr, ptr %.22351.i.i, align 1, !tbaa !30
  %i.brs = getelementptr inbounds nuw i8, ptr %.22351.i.i, i64 8 ; 2 uses
  %i.brt = add nuw nsw i32 %.21659350.i.i, 1      ; 2 uses
  %exitcond573.not.i.i = icmp eq i32 %i.brt, %5
  br i1 %exitcond573.not.i.i, label %.loopexit277.i.i, label %.lr.ph352.i.i, !llvm.loop !513

.loopexit285.i.i:                                 ; preds = %bb.v
  br i1 %brmerge494.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i

.lr.ph356.i.i:                                    ; preds = %.loopexit285.i.i, %.lr.ph356.i.i
  %.24355.i.i = phi ptr [ %i.btd, %.lr.ph356.i.i ], [ %.13377.i.i, %.loopexit285.i.i ] ; 3 uses
  %.01660354.i.i = phi i32 [ %i.bte, %.lr.ph356.i.i ], [ 0, %.loopexit285.i.i ] ; 2 uses
  %i.bru = add nsw i32 %.01660354.i.i, %i.amy     ; 2 uses
  %i.brv = sdiv i32 %i.bru, %i.ahb
  %i.brw = srem i32 %i.bru, %i.ahb                ; 2 uses
  %i.brx = srem i32 %i.brw, %6
  %i.bry = insertelement <2 x i32> poison, i32 %i.brw, i64 0
  %i.brz = insertelement <2 x i32> %i.bry, i32 %i.brx, i64 1
  %i.bsa = sdiv <2 x i32> %i.brz, %i.amz
  %i.bsb = mul <2 x i32> %i.bsa, %i.anb           ; 2 uses
  %i.bsc = mul i32 %i.brv, %i.amo
  %i.bsd = extractelement <2 x i32> %i.bsb, i64 0
  %i.bse = add i32 %i.bsd, %i.bsc
  %i.bsf = extractelement <2 x i32> %i.bsb, i64 1
  %i.bsg = add i32 %i.bse, %i.bsf
  %i.bsh = insertelement <8 x i32> poison, i32 %i.bsg, i64 0
  %i.bsi = shufflevector <8 x i32> %i.bsh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsj = add <8 x i32> %i.bsi, %i.bgn
  %i.bsk = shl <8 x i32> %i.bsj, splat (i32 3)    ; 2 uses
  %i.bsl = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bsm = shufflevector <8 x i32> %i.bsk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsn = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsl, <4 x i32> %i.bsm, <4 x i64> splat (i64 -1), i8 1)
  %i.bso = shufflevector <8 x i32> %i.bsk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsp = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsl, <4 x i32> %i.bso, <4 x i64> splat (i64 -1), i8 1)
  %i.bsq = bitcast <4 x i64> %i.bsn to <8 x i32>  ; 2 uses
  %i.bsr = bitcast <4 x i64> %i.bsp to <8 x i32>  ; 2 uses
  %i.bss = shufflevector <8 x i32> %i.bsq, <8 x i32> %i.bsr, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.bst = bitcast <8 x i32> %i.bss to <4 x i64>
  %i.bsu = shufflevector <8 x i32> %i.bsq, <8 x i32> %i.bsr, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.bsv = bitcast <8 x i32> %i.bsu to <4 x i64>
  %i.bsw = shufflevector <4 x i64> %i.bst, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsx = shufflevector <4 x i64> %i.bsv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsy = bitcast <4 x i64> %i.bsw to <32 x i8>
  %i.bsz = add <32 x i8> %i.bsy, splat (i8 127)
  %i.bta = bitcast <4 x i64> %i.bsx to <32 x i8>
  %i.btb = add <32 x i8> %i.bta, splat (i8 127)
  store <32 x i8> %i.bsz, ptr %.24355.i.i, align 1, !tbaa !30
  %i.btc = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 32
  store <32 x i8> %i.btb, ptr %i.btc, align 1, !tbaa !30
  %i.btd = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 64 ; 2 uses
  %i.bte = add nuw nsw i32 %.01660354.i.i, 1      ; 2 uses
  %exitcond574.not.i.i = icmp eq i32 %i.bte, %i.amw
  br i1 %exitcond574.not.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i, !llvm.loop !514

.loopexit277.i.i:                                 ; preds = %.lr.ph356.i.i, %.lr.ph352.i.i, %bb.u, %bb.t, %.loopexit285.i.i, %.preheader284.i.i, %.loopexit279.i.i, %.preheader278.i.i
  %.25.i.i = phi ptr [ %.13377.i.i, %.loopexit285.i.i ], [ %.15.lcssa.i.i, %.preheader278.i.i ], [ %.13377.i.i, %.loopexit279.i.i ], [ %i.bmo, %bb.u ], [ %i.blg, %bb.t ], [ %.21.lcssa.i35.i, %.preheader284.i.i ], [ %i.brs, %.lr.ph352.i.i ], [ %i.btd, %.lr.ph356.i.i ] ; 2 uses
  %i.btf = add nuw nsw i32 %.11641376.i.i, 8      ; 3 uses
  %i.btg = or disjoint i32 %i.btf, 7
  %i.bth = icmp slt i32 %i.btg, %3
  br i1 %i.bth, label %bb.p, label %.preheader275.i.i, !llvm.loop !515

.preheader262.i.i:                                ; preds = %.loopexit264.i.i, %.preheader275.i.i
  %.21642.lcssa.i.i = phi i32 [ %.11641.lcssa.i.i, %.preheader275.i.i ], [ %i.cin, %.loopexit264.i.i ] ; 3 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader275.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 2 uses
  %i.bti = or disjoint i32 %.21642.lcssa.i.i, 1
  %i.btj = icmp slt i32 %i.bti, %3
  br i1 %i.btj, label %.lr.ph461.i.i, label %.preheader249.i.i

.lr.ph461.i.i:                                    ; preds = %.preheader262.i.i
  %i.btk = mul i32 %i.agt, %11
  %i.btl = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.btm = icmp sgt i32 %5, 3                     ; 2 uses
  %i.btn = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bto = and <2 x i64> %i.btn, splat (i64 4294967295) ; 4 uses
  %i.btp = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btq = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.btr = shufflevector <4 x i32> %i.btq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bts = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btt = and <2 x i64> %i.bts, splat (i64 4294967295) ; 4 uses
  %i.btu = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btv = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.btw = shufflevector <4 x i32> %i.btv, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btx = trunc i64 %i.l to i32                  ; 2 uses
  %i.bty = insertelement <4 x i32> poison, i32 %i.btx, i64 0
  %i.btz = shufflevector <4 x i32> %i.bty, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bua = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bub = shufflevector <4 x i32> %i.bua, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar596.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.buc = insertelement <4 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.bud = shufflevector <4 x i32> %i.buc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bue = icmp eq i32 %i.agv, 8
  %i.buf = sdiv i32 %5, 8                         ; 2 uses
  %i.bug = sdiv i32 %4, 8                         ; 2 uses
  %i.buh = icmp sgt i32 %5, 7
  %or.cond504.i.i = and i1 %i.buh, %i.bue         ; 2 uses
  %i.bui = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.buj = shufflevector <2 x i32> %i.bui, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buk = insertelement <2 x i32> poison, i32 %i.aha, i64 0
  %i.bul = shufflevector <2 x i32> %i.buk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bum = insertelement <2 x i32> poison, i32 %i.btk, i64 0
  %i.bun = shufflevector <2 x i32> %i.bum, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buo = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bup = insertelement <2 x i32> poison, i32 %8, i64 0
  %13 = insertelement <2 x i32> %i.bup, i32 %.scalar596.i.i, i64 1
  %14 = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0 ; 2 uses
  %15 = insertelement <2 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.buq = insertelement <2 x i32> %15, i32 %8, i64 1 ; 2 uses
  %i.bur = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bus = shufflevector <2 x i32> %i.bur, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.but = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.buu = shufflevector <2 x i32> %i.but, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buv = insertelement <2 x i32> poison, i32 %i.btx, i64 0
  %i.buw = shufflevector <2 x i32> %i.buv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bux = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %16 = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.buy = insertelement <2 x i32> %16, i32 %.scalar596.i.i, i64 1
  %17 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.buz = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bva = insertelement <2 x i32> %i.buz, i32 %.scalar596.i.i, i64 1
  %i.bvb = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.bvc = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bvd = insertelement <2 x i32> %i.bvc, i32 %.scalar596.i.i, i64 1 ; 2 uses
  %i.bve = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvf = shufflevector <2 x i32> %i.bve, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bvg = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bvh = shufflevector <2 x i32> %i.bvg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvi = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bvj = shufflevector <2 x i64> %i.bvi, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bvk = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bvl = insertelement <2 x i32> %i.bvk, i32 %.scalar596.i.i, i64 1
  br label %bb.ad

bb.w:                                             ; preds = %.loopexit264.i.i, %.lr.ph419.i.i
  %.26418.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph419.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 8 uses
  %.21642417.i.i = phi i32 [ %.11641.lcssa.i.i, %.lr.ph419.i.i ], [ %i.cin, %.loopexit264.i.i ] ; 2 uses
  %i.bvm = add nsw i32 %.21642417.i.i, %2
  %i.bvn = insertelement <4 x i32> poison, i32 %i.bvm, i64 0
  %i.bvo = shufflevector <4 x i32> %i.bvn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bvp = add <4 x i32> %i.bvo, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bvq = bitcast <4 x i32> %i.bvp to <2 x i64>
  %i.bvr = bitcast <4 x i32> %i.bvp to <2 x i64>
  %i.bvs = and <2 x i64> %i.bvr, splat (i64 4294967295)
  %i.bvt = mul nuw <2 x i64> %i.bvs, %i.bdi
  %i.bvu = lshr <2 x i64> %i.bvt, splat (i64 32)
  %i.bvv = lshr <2 x i64> %i.bvq, splat (i64 32)
  %i.bvw = mul nuw <2 x i64> %i.bvv, %i.bdi
  %i.bvx = bitcast <2 x i64> %i.bvu to <8 x i16>
  %i.bvy = bitcast <2 x i64> %i.bvw to <8 x i16>
  %i.bvz = shufflevector <8 x i16> %i.bvx, <8 x i16> %i.bvy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bwa = bitcast <8 x i16> %i.bvz to <4 x i32>  ; 2 uses
  %i.bwb = sub <4 x i32> %i.bvp, %i.bwa
  %i.bwc = lshr <4 x i32> %i.bwb, %i.bdj
  %i.bwd = add <4 x i32> %i.bwc, %i.bwa
  %i.bwe = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bwd, <4 x i32> %i.ahu) ; 2 uses
  %i.bwf = mul <4 x i32> %i.bwe, %i.bdl
  %i.bwg = sub <4 x i32> %i.bvp, %i.bwf
  %i.bwh = mul <4 x i32> %i.bwg, %i.bdn           ; 2 uses
  %i.bwi = mul <4 x i32> %i.bwe, %i.bdp           ; 4 uses
  %i.bwj = add <4 x i32> %i.bwh, %i.bwi           ; 8 uses
  %shift578 = shufflevector <4 x i32> %i.bwi, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bwk = icmp eq <4 x i32> %i.bwi, %shift578
  %i.bwl = extractelement <4 x i1> %i.bwk, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.bwl
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %foldExtExtBinop533 = add nsw <4 x i32> %i.bwh, %i.bwi ; 2 uses
  %i.bwm = extractelement <4 x i32> %foldExtExtBinop533, i64 0 ; 3 uses
  br i1 %i.bdq, label %.preheader268.i.i, label %.loopexit266.i.i

.preheader268.i.i:                                ; preds = %bb.x
  br i1 %i.bdr, label %.lr.ph401.i.i, label %.preheader267.i.i

.lr.ph401.i.i:                                    ; preds = %.preheader268.i.i
  %i.bwn = shufflevector <4 x i32> %foldExtExtBinop533, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.y

.preheader267.i.i:                                ; preds = %bb.y, %.preheader268.i.i
  %.01661.lcssa.i.i = phi i32 [ 0, %.preheader268.i.i ], [ %i.byp, %bb.y ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26418.i.i, %.preheader268.i.i ], [ %i.byo, %bb.y ] ; 2 uses
  %i.bwo = or disjoint i32 %.01661.lcssa.i.i, 1
  %i.bwp = icmp slt i32 %i.bwo, %5
  br i1 %i.bwp, label %.lr.ph406.i.i, label %.preheader265.i.i

.lr.ph406.i.i:                                    ; preds = %.preheader267.i.i
  %i.bwq = sext i32 %i.bwm to i64                 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph401.i.i
  %.27400.i.i = phi ptr [ %.26418.i.i, %.lr.ph401.i.i ], [ %i.byo, %bb.y ] ; 2 uses
  %.01661399.i.i = phi i32 [ 0, %.lr.ph401.i.i ], [ %i.byp, %bb.y ] ; 2 uses
  %i.bwr = add nsw i32 %.01661399.i.i, %4
  %i.bws = insertelement <4 x i32> poison, i32 %i.bwr, i64 0
  %i.bwt = shufflevector <4 x i32> %i.bws, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bwu = add <4 x i32> %i.bwt, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bwv = bitcast <4 x i32> %i.bwu to <2 x i64>
  %i.bww = bitcast <4 x i32> %i.bwu to <2 x i64>
  %i.bwx = and <2 x i64> %i.bww, splat (i64 4294967295)
  %i.bwy = mul nuw <2 x i64> %i.bwx, %i.bdt
  %i.bwz = lshr <2 x i64> %i.bwy, splat (i64 32)
  %i.bxa = lshr <2 x i64> %i.bwv, splat (i64 32)
  %i.bxb = mul nuw <2 x i64> %i.bxa, %i.bdt
  %i.bxc = bitcast <2 x i64> %i.bwz to <8 x i16>
  %i.bxd = bitcast <2 x i64> %i.bxb to <8 x i16>
  %i.bxe = shufflevector <8 x i16> %i.bxc, <8 x i16> %i.bxd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxf = bitcast <8 x i16> %i.bxe to <4 x i32>  ; 2 uses
  %i.bxg = sub <4 x i32> %i.bwu, %i.bxf
  %i.bxh = lshr <4 x i32> %i.bxg, %i.bdu
  %i.bxi = add <4 x i32> %i.bxh, %i.bxf
  %i.bxj = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxi, <4 x i32> %i.aio) ; 2 uses
  %i.bxk = mul <4 x i32> %i.bxj, %i.bdw
  %i.bxl = sub <4 x i32> %i.bwu, %i.bxk           ; 4 uses
  %i.bxm = bitcast <4 x i32> %i.bxl to <2 x i64>
  %i.bxn = bitcast <4 x i32> %i.bxl to <2 x i64>
  %i.bxo = and <2 x i64> %i.bxn, splat (i64 4294967295)
  %i.bxp = mul nuw <2 x i64> %i.bxo, %i.bdy
  %i.bxq = lshr <2 x i64> %i.bxp, splat (i64 32)
  %i.bxr = lshr <2 x i64> %i.bxm, splat (i64 32)
  %i.bxs = mul nuw <2 x i64> %i.bxr, %i.bdy
  %i.bxt = bitcast <2 x i64> %i.bxq to <8 x i16>
  %i.bxu = bitcast <2 x i64> %i.bxs to <8 x i16>
  %i.bxv = shufflevector <8 x i16> %i.bxt, <8 x i16> %i.bxu, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxw = bitcast <8 x i16> %i.bxv to <4 x i32>  ; 2 uses
  %i.bxx = sub <4 x i32> %i.bxl, %i.bxw
  %i.bxy = lshr <4 x i32> %i.bxx, %i.bdz
  %i.bxz = add <4 x i32> %i.bxy, %i.bxw
  %i.bya = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxz, <4 x i32> %i.ajg) ; 2 uses
  %i.byb = mul <4 x i32> %i.bya, %i.beb
  %i.byc = sub <4 x i32> %i.bxl, %i.byb
  %i.byd = mul <4 x i32> %i.bxj, %i.bee
  %i.bye = mul <4 x i32> %i.byc, %i.beg
  %i.byf = mul <4 x i32> %i.bya, %i.bei
  %i.byg = add <4 x i32> %i.byd, %i.bwn
  %i.byh = add <4 x i32> %i.byg, %i.byf
  %i.byi = add <4 x i32> %i.byh, %i.bye
  %i.byj = load ptr, ptr %0, align 8, !tbaa !28
  %i.byk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.byj, <4 x i32> %i.byi, <4 x i32> splat (i32 -1), i8 1)
  %i.byl = bitcast <4 x i32> %i.byk to <16 x i8>
  %i.bym = add <16 x i8> %i.byl, splat (i8 127)
  %i.byn = shufflevector <16 x i8> %i.bym, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.byn, ptr %.27400.i.i, align 1, !tbaa !30
  %i.byo = getelementptr inbounds nuw i8, ptr %.27400.i.i, i64 16 ; 2 uses
  %i.byp = add nuw nsw i32 %.01661399.i.i, 4      ; 3 uses
  %i.byq = or disjoint i32 %i.byp, 3
  %i.byr = icmp slt i32 %i.byq, %5
  br i1 %i.byr, label %bb.y, label %.preheader267.i.i, !llvm.loop !516

.preheader265.i.i:                                ; preds = %bb.z, %.preheader267.i.i
  %.11662.lcssa.i.i = phi i32 [ %.01661.lcssa.i.i, %.preheader267.i.i ], [ %i.cag, %bb.z ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader267.i.i ], [ %i.caf, %bb.z ] ; 2 uses
  %i.bys = icmp slt i32 %.11662.lcssa.i.i, %5
  br i1 %i.bys, label %.lr.ph411.i.i, label %.loopexit264.i.i

.lr.ph411.i.i:                                    ; preds = %.preheader265.i.i
  %i.byt = sext i32 %i.bwm to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph406.i.i
  %.28405.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph406.i.i ], [ %i.caf, %bb.z ] ; 2 uses
  %.11662404.i.i = phi i32 [ %.01661.lcssa.i.i, %.lr.ph406.i.i ], [ %i.cag, %bb.z ] ; 2 uses
  %i.byu = add nsw i32 %.11662404.i.i, %4         ; 2 uses
  %i.byv = add nsw i32 %i.byu, 1
  %i.byw = insertelement <2 x i32> poison, i32 %i.byu, i64 0
  %i.byx = insertelement <2 x i32> %i.byw, i32 %i.byv, i64 1
  %.frozen829 = freeze <2 x i32> %i.byx           ; 2 uses
  %i.byy = sdiv <2 x i32> %.frozen829, %i.bfj     ; 2 uses
  %i.byz = sext <2 x i32> %i.byy to <2 x i64>
  %i.bza = mul <2 x i64> %i.bfn, %i.byz           ; 2 uses
  %i.bzb = mul <2 x i32> %i.byy, %i.bfj
  %.decomposed830 = sub <2 x i32> %.frozen829, %i.bzb ; 3 uses
  %i.bzc = srem <2 x i32> %.decomposed830, %i.bfl ; 2 uses
  %i.bzd = shufflevector <2 x i32> %i.bzc, <2 x i32> %.decomposed830, <2 x i32> <i32 0, i32 2>
  %i.bze = sdiv <2 x i32> %i.bzd, %i.bff
  %i.bzf = mul <2 x i32> %i.bze, %i.bfh
  %i.bzg = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bzf)
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = shufflevector <2 x i32> %i.bzc, <2 x i32> %.decomposed830, <2 x i32> <i32 1, i32 3>
  %i.bzj = sdiv <2 x i32> %i.bzi, %i.bff
  %i.bzk = mul <2 x i32> %i.bzj, %i.bfh
  %i.bzl = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bzk)
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bzo = extractelement <2 x i64> %i.bza, i64 0
  %i.bzp = getelementptr i8, ptr %i.bzn, i64 %i.bzo
  %i.bzq = getelementptr i8, ptr %i.bzp, i64 %i.bwq
  %i.bzr = getelementptr i8, ptr %i.bzq, i64 %i.bzh
  %i.bzs = load i64, ptr %i.bzr, align 1, !tbaa !30
  %i.bzt = insertelement <2 x i64> poison, i64 %i.bzs, i64 0
  %i.bzu = extractelement <2 x i64> %i.bza, i64 1
  %i.bzv = getelementptr i8, ptr %i.bzn, i64 %i.bzu
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 %i.bwq
  %i.bzx = getelementptr i8, ptr %i.bzw, i64 %i.bzm
  %i.bzy = load i64, ptr %i.bzx, align 1, !tbaa !30
  %i.bzz = insertelement <2 x i64> poison, i64 %i.bzy, i64 0
  %i.caa = bitcast <2 x i64> %i.bzt to <16 x i8>
  %i.cab = bitcast <2 x i64> %i.bzz to <16 x i8>
  %i.cac = shufflevector <16 x i8> %i.caa, <16 x i8> %i.cab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cad = bitcast <16 x i8> %i.cac to <2 x i64>
  %i.cae = extractelement <2 x i64> %i.cad, i64 0
  store i64 %i.cae, ptr %.28405.i.i, align 1, !tbaa !30
  %i.caf = getelementptr inbounds nuw i8, ptr %.28405.i.i, i64 8 ; 2 uses
  %i.cag = add nuw nsw i32 %.11662404.i.i, 2      ; 3 uses
  %i.cah = or disjoint i32 %i.cag, 1
  %i.cai = icmp slt i32 %i.cah, %5
  br i1 %i.cai, label %bb.z, label %.preheader265.i.i, !llvm.loop !517

bb.aa:                                            ; preds = %bb.aa, %.lr.ph411.i.i
  %.29410.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph411.i.i ], [ %i.cbe, %bb.aa ] ; 5 uses
  %.21663409.i.i = phi i32 [ %.11662.lcssa.i.i, %.lr.ph411.i.i ], [ %i.cbf, %bb.aa ] ; 2 uses
  %i.caj = add nsw i32 %.21663409.i.i, %4         ; 2 uses
  %19 = sdiv i32 %i.caj, %i.ahb
  %20 = srem i32 %i.caj, %i.ahb                   ; 2 uses
  %21 = sext i32 %19 to i64
  %22 = mul i64 %i.l, %21
  %23 = add i64 %22, %i.byt
  %24 = srem i32 %20, %6
  %25 = insertelement <2 x i32> poison, i32 %24, i64 0
  %26 = insertelement <2 x i32> %25, i32 %20, i64 1
  %27 = sdiv <2 x i32> %26, %12
  %28 = mul <2 x i32> %27, %i.bfp
  %29 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %28)
  %i.cak = sext i32 %29 to i64
  %i.cal = add i64 %23, %i.cak                    ; 4 uses
  %i.cam = load ptr, ptr %0, align 8, !tbaa !28
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 %i.cal
  %i.cao = load i8, ptr %i.can, align 1, !tbaa !30
  store i8 %i.cao, ptr %.29410.i.i, align 1, !tbaa !30
  %i.cap = load ptr, ptr %0, align 8, !tbaa !28
  %i.caq = getelementptr i8, ptr %i.cap, i64 %i.cal
  %i.car = getelementptr i8, ptr %i.caq, i64 1
  %i.cas = load i8, ptr %i.car, align 1, !tbaa !30
  %i.cat = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 1
  store i8 %i.cas, ptr %i.cat, align 1, !tbaa !30
  %i.cau = load ptr, ptr %0, align 8, !tbaa !28
  %i.cav = getelementptr i8, ptr %i.cau, i64 %i.cal
  %i.caw = getelementptr i8, ptr %i.cav, i64 2
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !30
  %i.cay = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 2
  store i8 %i.cax, ptr %i.cay, align 1, !tbaa !30
  %i.caz = load ptr, ptr %0, align 8, !tbaa !28
  %i.cba = getelementptr i8, ptr %i.caz, i64 %i.cal
  %i.cbb = getelementptr i8, ptr %i.cba, i64 3
  %i.cbc = load i8, ptr %i.cbb, align 1, !tbaa !30
  %i.cbd = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 3
  store i8 %i.cbc, ptr %i.cbd, align 1, !tbaa !30
  %i.cbe = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 4 ; 2 uses
  %i.cbf = add nuw nsw i32 %.21663409.i.i, 1      ; 2 uses
  %exitcond579.not.i.i = icmp eq i32 %i.cbf, %5
  br i1 %exitcond579.not.i.i, label %.loopexit264.i.i, label %bb.aa, !llvm.loop !518

.loopexit266.i.i:                                 ; preds = %bb.x
  br i1 %brmerge500.i.i, label %.loopexit264.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %.loopexit266.i.i
  %i.cbg = sext i32 %i.bwm to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph415.i.i
  %.31414.i.i = phi ptr [ %.26418.i.i, %.lr.ph415.i.i ], [ %i.cci, %bb.ab ] ; 3 uses
  %.01664413.i.i = phi i32 [ 0, %.lr.ph415.i.i ], [ %i.ccj, %bb.ab ] ; 2 uses
  %i.cbh = add nsw i32 %.01664413.i.i, %i.bem     ; 2 uses
  %i.cbi = sdiv i32 %i.cbh, %i.ahb
  %i.cbj = srem i32 %i.cbh, %i.ahb                ; 2 uses
  %i.cbk = sext i32 %i.cbi to i64
  %i.cbl = mul i64 %i.l, %i.cbk
  %i.cbm = add i64 %i.cbl, %i.cbg
  %i.cbn = srem i32 %i.cbj, %6
  %i.cbo = insertelement <2 x i32> poison, i32 %i.cbn, i64 0
  %i.cbp = insertelement <2 x i32> %i.cbo, i32 %i.cbj, i64 1
  %i.cbq = sdiv <2 x i32> %i.cbp, %i.bfc
  %i.cbr = mul <2 x i32> %i.cbq, %i.bfe
  %i.cbs = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cbr)
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = add i64 %i.cbm, %i.cbt
  %i.cbv = shl i64 %i.cbu, 3
  %i.cbw = load ptr, ptr %0, align 8, !tbaa !28
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 %i.cbv ; 2 uses
  %i.cby = load <4 x i32>, ptr %i.cbx, align 1, !tbaa !30 ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbx, i64 16
  %i.cca = load <4 x i32>, ptr %i.cbz, align 1, !tbaa !30 ; 2 uses
  %i.ccb = shufflevector <4 x i32> %i.cby, <4 x i32> %i.cca, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ccc = shufflevector <4 x i32> %i.cby, <4 x i32> %i.cca, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ccd = bitcast <4 x i32> %i.ccb to <16 x i8>
  %i.cce = add <16 x i8> %i.ccd, splat (i8 127)
  %i.ccf = bitcast <4 x i32> %i.ccc to <16 x i8>
  %i.ccg = add <16 x i8> %i.ccf, splat (i8 127)
  store <16 x i8> %i.cce, ptr %.31414.i.i, align 1, !tbaa !30
  %i.cch = getelementptr inbounds nuw i8, ptr %.31414.i.i, i64 16
  store <16 x i8> %i.ccg, ptr %i.cch, align 1, !tbaa !30
  %i.cci = getelementptr inbounds nuw i8, ptr %.31414.i.i, i64 32 ; 2 uses
  %i.ccj = add nuw nsw i32 %.01664413.i.i, 1      ; 2 uses
  %exitcond580.not.i.i = icmp eq i32 %i.ccj, %i.bek
  br i1 %exitcond580.not.i.i, label %.loopexit264.i.i, label %bb.ab, !llvm.loop !519

bb.ac:                                            ; preds = %bb.w
  br i1 %i.bdq, label %.preheader274.i.i, label %.loopexit272.i.i

.preheader274.i.i:                                ; preds = %bb.ac
  br i1 %i.bdr, label %.lr.ph383.i.i, label %.preheader273.i.i

.preheader273.i.i:                                ; preds = %.lr.ph383.i.i, %.preheader274.i.i
  %.01665.lcssa.i.i = phi i32 [ 0, %.preheader274.i.i ], [ %i.cfa, %.lr.ph383.i.i ] ; 3 uses
  %.33.lcssa.i.i = phi ptr [ %.26418.i.i, %.preheader274.i.i ], [ %i.cez, %.lr.ph383.i.i ] ; 2 uses
  %i.cck = or disjoint i32 %.01665.lcssa.i.i, 1
  %i.ccl = icmp slt i32 %i.cck, %5
  br i1 %i.ccl, label %.lr.ph388.i.i, label %.preheader271.i.i

.lr.ph383.i.i:                                    ; preds = %.preheader274.i.i, %.lr.ph383.i.i
  %.33382.i.i = phi ptr [ %i.cez, %.lr.ph383.i.i ], [ %.26418.i.i, %.preheader274.i.i ] ; 2 uses
  %.01665381.i.i = phi i32 [ %i.cfa, %.lr.ph383.i.i ], [ 0, %.preheader274.i.i ] ; 2 uses
  %i.ccm = add nsw i32 %.01665381.i.i, %4
  %i.ccn = insertelement <4 x i32> poison, i32 %i.ccm, i64 0
  %i.cco = shufflevector <4 x i32> %i.ccn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccp = add <4 x i32> %i.cco, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ccq = bitcast <4 x i32> %i.ccp to <2 x i64>
  %i.ccr = bitcast <4 x i32> %i.ccp to <2 x i64>
  %i.ccs = and <2 x i64> %i.ccr, splat (i64 4294967295)
  %i.cct = mul nuw <2 x i64> %i.ccs, %i.bdt
  %i.ccu = lshr <2 x i64> %i.cct, splat (i64 32)
  %i.ccv = lshr <2 x i64> %i.ccq, splat (i64 32)
  %i.ccw = mul nuw <2 x i64> %i.ccv, %i.bdt
  %i.ccx = bitcast <2 x i64> %i.ccu to <8 x i16>
  %i.ccy = bitcast <2 x i64> %i.ccw to <8 x i16>
  %i.ccz = shufflevector <8 x i16> %i.ccx, <8 x i16> %i.ccy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cda = bitcast <8 x i16> %i.ccz to <4 x i32>  ; 2 uses
  %i.cdb = sub <4 x i32> %i.ccp, %i.cda
  %i.cdc = lshr <4 x i32> %i.cdb, %i.bdu
  %i.cdd = add <4 x i32> %i.cdc, %i.cda
  %i.cde = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cdd, <4 x i32> %i.aio) ; 2 uses
  %i.cdf = mul <4 x i32> %i.cde, %i.bdw
  %i.cdg = sub <4 x i32> %i.ccp, %i.cdf           ; 4 uses
  %i.cdh = bitcast <4 x i32> %i.cdg to <2 x i64>
  %i.cdi = bitcast <4 x i32> %i.cdg to <2 x i64>
  %i.cdj = and <2 x i64> %i.cdi, splat (i64 4294967295)
  %i.cdk = mul nuw <2 x i64> %i.cdj, %i.bdy
  %i.cdl = lshr <2 x i64> %i.cdk, splat (i64 32)
  %i.cdm = lshr <2 x i64> %i.cdh, splat (i64 32)
  %i.cdn = mul nuw <2 x i64> %i.cdm, %i.bdy
  %i.cdo = bitcast <2 x i64> %i.cdl to <8 x i16>
  %i.cdp = bitcast <2 x i64> %i.cdn to <8 x i16>
  %i.cdq = shufflevector <8 x i16> %i.cdo, <8 x i16> %i.cdp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cdr = bitcast <8 x i16> %i.cdq to <4 x i32>  ; 2 uses
  %i.cds = sub <4 x i32> %i.cdg, %i.cdr
  %i.cdt = lshr <4 x i32> %i.cds, %i.bdz
  %i.cdu = add <4 x i32> %i.cdt, %i.cdr
  %i.cdv = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cdu, <4 x i32> %i.ajg) ; 2 uses
  %i.cdw = mul <4 x i32> %i.cdv, %i.beb
  %i.cdx = sub <4 x i32> %i.cdg, %i.cdw
  %i.cdy = mul <4 x i32> %i.cde, %i.bee
  %i.cdz = mul <4 x i32> %i.cdx, %i.beg
  %i.cea = mul <4 x i32> %i.cdv, %i.bei
  %i.ceb = add <4 x i32> %i.cea, %i.cdy
  %i.cec = add <4 x i32> %i.ceb, %i.cdz           ; 4 uses
  %i.ced = shufflevector <4 x i32> %i.cec, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cee = add <4 x i32> %i.ced, %i.bwj
  %i.cef = shufflevector <4 x i32> %i.cec, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ceg = add <4 x i32> %i.cef, %i.bwj
  %i.ceh = shufflevector <4 x i32> %i.cec, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cei = add <4 x i32> %i.ceh, %i.bwj
  %i.cej = shufflevector <4 x i32> %i.cec, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cek = add <4 x i32> %i.cej, %i.bwj
  %i.cel = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.cem = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cel, <4 x i32> %i.cee, <4 x i32> splat (i32 -1), i8 1)
  %i.cen = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cel, <4 x i32> %i.ceg, <4 x i32> splat (i32 -1), i8 1)
  %i.ceo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cel, <4 x i32> %i.cei, <4 x i32> splat (i32 -1), i8 1)
  %i.cep = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cel, <4 x i32> %i.cek, <4 x i32> splat (i32 -1), i8 1)
  %i.ceq = shufflevector <4 x i32> %i.cem, <4 x i32> %i.cen, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cer = trunc <16 x i32> %i.ceq to <16 x i8>
  %i.ces = shufflevector <4 x i32> %i.ceo, <4 x i32> %i.cep, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cet = trunc <16 x i32> %i.ces to <16 x i8>
  %i.ceu = bitcast <16 x i8> %i.cer to <8 x i16>
  %i.cev = bitcast <16 x i8> %i.cet to <8 x i16>
  %i.cew = shufflevector <8 x i16> %i.ceu, <8 x i16> %i.cev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cex = bitcast <8 x i16> %i.cew to <16 x i8>
  %i.cey = add <16 x i8> %i.cex, splat (i8 127)
  store <16 x i8> %i.cey, ptr %.33382.i.i, align 1, !tbaa !30
  %i.cez = getelementptr inbounds nuw i8, ptr %.33382.i.i, i64 16 ; 2 uses
  %i.cfa = add nuw nsw i32 %.01665381.i.i, 4      ; 3 uses
  %i.cfb = or disjoint i32 %i.cfa, 3
  %i.cfc = icmp slt i32 %i.cfb, %5
  br i1 %i.cfc, label %.lr.ph383.i.i, label %.preheader273.i.i, !llvm.loop !520

.preheader271.i.i:                                ; preds = %.lr.ph388.i.i, %.preheader273.i.i
  %.11666.lcssa.i.i = phi i32 [ %.01665.lcssa.i.i, %.preheader273.i.i ], [ %i.cgl, %.lr.ph388.i.i ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33.lcssa.i.i, %.preheader273.i.i ], [ %i.cgk, %.lr.ph388.i.i ] ; 2 uses
  %i.cfd = icmp slt i32 %.11666.lcssa.i.i, %5
  br i1 %i.cfd, label %.lr.ph393.i.i, label %.loopexit264.i.i

.lr.ph388.i.i:                                    ; preds = %.preheader273.i.i, %.lr.ph388.i.i
  %.34387.i.i = phi ptr [ %i.cgk, %.lr.ph388.i.i ], [ %.33.lcssa.i.i, %.preheader273.i.i ] ; 2 uses
  %.11666386.i.i = phi i32 [ %i.cgl, %.lr.ph388.i.i ], [ %.01665.lcssa.i.i, %.preheader273.i.i ] ; 2 uses
  %i.cfe = add nsw i32 %.11666386.i.i, %4         ; 2 uses
  %i.cff = add nsw i32 %i.cfe, 1
  %i.cfg = insertelement <2 x i32> poison, i32 %i.cfe, i64 0
  %i.cfh = insertelement <2 x i32> %i.cfg, i32 %i.cff, i64 1
  %.frozen831 = freeze <2 x i32> %i.cfh           ; 2 uses
  %i.cfi = sdiv <2 x i32> %.frozen831, %i.beu     ; 2 uses
  %i.cfj = mul <2 x i32> %i.cfi, %i.beu
  %.decomposed832 = sub <2 x i32> %.frozen831, %i.cfj ; 3 uses
  %i.cfk = srem <2 x i32> %.decomposed832, %i.bew ; 2 uses
  %i.cfl = shufflevector <2 x i32> %i.cfk, <2 x i32> %.decomposed832, <2 x i32> <i32 2, i32 0>
  %i.cfm = sdiv <2 x i32> %i.cfl, %i.beq
  %i.cfn = mul <2 x i32> %i.cfm, %i.bes           ; 2 uses
  %i.cfo = shufflevector <2 x i32> %i.cfk, <2 x i32> %.decomposed832, <2 x i32> <i32 3, i32 1>
  %i.cfp = sdiv <2 x i32> %i.cfo, %i.beq
  %i.cfq = mul <2 x i32> %i.cfp, %i.bes           ; 2 uses
  %i.cfr = mul <2 x i32> %i.cfi, %i.bey           ; 2 uses
  %foldExtExtBinop548 = add <2 x i32> %i.cfn, %i.cfr
  %i.cfs = shufflevector <2 x i32> %foldExtExtBinop548, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cft = shufflevector <2 x i32> %i.cfn, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cfu = add <4 x i32> %i.cfs, %i.cft
  %i.cfv = add <4 x i32> %i.cfu, %i.bwj
  %i.cfw = shufflevector <2 x i32> %i.cfq, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cfx = shufflevector <2 x i32> %i.cfr, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cfy = add <4 x i32> %i.cfw, %i.cfx
  %i.cfz = shufflevector <4 x i32> %i.cfy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cga = shufflevector <2 x i32> %i.cfq, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgb = add <4 x i32> %i.cfz, %i.cga
  %i.cgc = add <4 x i32> %i.cgb, %i.bwj
  %i.cgd = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.cge = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cgd, <4 x i32> %i.cfv, <4 x i32> splat (i32 -1), i8 1)
  %i.cgf = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cgd, <4 x i32> %i.cgc, <4 x i32> splat (i32 -1), i8 1)
  %i.cgg = shufflevector <4 x i32> %i.cge, <4 x i32> %i.cgf, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgh = trunc <16 x i32> %i.cgg to <16 x i8>
  %i.cgi = bitcast <16 x i8> %i.cgh to <2 x i64>
  %i.cgj = extractelement <2 x i64> %i.cgi, i64 0
  store i64 %i.cgj, ptr %.34387.i.i, align 1, !tbaa !30
  %i.cgk = getelementptr inbounds nuw i8, ptr %.34387.i.i, i64 8 ; 2 uses
  %i.cgl = add nuw nsw i32 %.11666386.i.i, 2      ; 3 uses
  %i.cgm = or disjoint i32 %i.cgl, 1
  %i.cgn = icmp slt i32 %i.cgm, %5
  br i1 %i.cgn, label %.lr.ph388.i.i, label %.preheader271.i.i, !llvm.loop !521

.lr.ph393.i.i:                                    ; preds = %.preheader271.i.i, %.lr.ph393.i.i
  %.35392.i.i = phi ptr [ %i.chk, %.lr.ph393.i.i ], [ %.34.lcssa.i.i, %.preheader271.i.i ] ; 2 uses
  %.21667391.i.i = phi i32 [ %i.chl, %.lr.ph393.i.i ], [ %.11666.lcssa.i.i, %.preheader271.i.i ] ; 2 uses
  %i.cgo = add nsw i32 %.21667391.i.i, %4         ; 2 uses
  %i.cgp = sdiv i32 %i.cgo, %i.ahb
  %i.cgq = srem i32 %i.cgo, %i.ahb                ; 2 uses
  %i.cgr = srem i32 %i.cgq, %6
  %i.cgs = insertelement <2 x i32> poison, i32 %i.cgq, i64 0
  %i.cgt = insertelement <2 x i32> %i.cgs, i32 %i.cgr, i64 1
  %i.cgu = sdiv <2 x i32> %i.cgt, %i.bez
  %i.cgv = mul <2 x i32> %i.cgu, %i.bfb           ; 2 uses
  %i.cgw = mul i32 %i.cgp, %i.bec
  %i.cgx = extractelement <2 x i32> %i.cgv, i64 0
  %i.cgy = add i32 %i.cgx, %i.cgw
  %i.cgz = extractelement <2 x i32> %i.cgv, i64 1
  %i.cha = add i32 %i.cgy, %i.cgz
  %i.chb = insertelement <4 x i32> poison, i32 %i.cha, i64 0
  %i.chc = shufflevector <4 x i32> %i.chb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.chd = add <4 x i32> %i.chc, %i.bwj
  %i.che = load ptr, ptr %0, align 8, !tbaa !28
  %i.chf = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.che, <4 x i32> %i.chd, <4 x i32> splat (i32 -1), i8 1)
  %i.chg = shufflevector <4 x i32> %i.chf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chh = trunc <16 x i32> %i.chg to <16 x i8>
  %i.chi = bitcast <16 x i8> %i.chh to <4 x float>
  %i.chj = extractelement <4 x float> %i.chi, i64 0
  store float %i.chj, ptr %.35392.i.i, align 1, !tbaa !30
  %i.chk = getelementptr inbounds nuw i8, ptr %.35392.i.i, i64 4 ; 2 uses
  %i.chl = add nuw nsw i32 %.21667391.i.i, 1      ; 2 uses
  %exitcond577.not.i.i = icmp eq i32 %i.chl, %5
  br i1 %exitcond577.not.i.i, label %.loopexit264.i.i, label %.lr.ph393.i.i, !llvm.loop !522

.loopexit272.i.i:                                 ; preds = %bb.ac
  br i1 %brmerge500.i.i, label %.loopexit264.i.i, label %.lr.ph397.i.i

.lr.ph397.i.i:                                    ; preds = %.loopexit272.i.i, %.lr.ph397.i.i
  %.37396.i.i = phi ptr [ %i.cil, %.lr.ph397.i.i ], [ %.26418.i.i, %.loopexit272.i.i ] ; 2 uses
  %.01671395.i.i = phi i32 [ %i.cim, %.lr.ph397.i.i ], [ 0, %.loopexit272.i.i ] ; 2 uses
  %i.chm = add nsw i32 %.01671395.i.i, %i.bem     ; 2 uses
  %i.chn = sdiv i32 %i.chm, %i.ahb
  %i.cho = srem i32 %i.chm, %i.ahb                ; 2 uses
  %i.chp = srem i32 %i.cho, %6
  %i.chq = insertelement <2 x i32> poison, i32 %i.cho, i64 0
  %i.chr = insertelement <2 x i32> %i.chq, i32 %i.chp, i64 1
  %i.chs = sdiv <2 x i32> %i.chr, %i.ben
  %i.cht = mul <2 x i32> %i.chs, %i.bep           ; 2 uses
  %i.chu = mul i32 %i.chn, %i.bec
  %i.chv = extractelement <2 x i32> %i.cht, i64 0
  %i.chw = add i32 %i.chv, %i.chu
  %i.chx = extractelement <2 x i32> %i.cht, i64 1
  %i.chy = add i32 %i.chw, %i.chx
  %i.chz = insertelement <4 x i32> poison, i32 %i.chy, i64 0
  %i.cia = shufflevector <4 x i32> %i.chz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cib = add <4 x i32> %i.cia, %i.bwj
  %i.cic = shl <4 x i32> %i.cib, splat (i32 3)
  %i.cid = load ptr, ptr %0, align 8, !tbaa !28
  %i.cie = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.cid, <4 x i32> %i.cic, <4 x i64> splat (i64 -1), i8 1)
  %i.cif = bitcast <4 x i64> %i.cie to <8 x i32>
  %i.cig = shufflevector <8 x i32> %i.cif, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.cih = bitcast <8 x i32> %i.cig to <4 x i64>
  %i.cii = shufflevector <4 x i64> %i.cih, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cij = bitcast <4 x i64> %i.cii to <32 x i8>
  %i.cik = add <32 x i8> %i.cij, splat (i8 127)
  store <32 x i8> %i.cik, ptr %.37396.i.i, align 1, !tbaa !30
  %i.cil = getelementptr inbounds nuw i8, ptr %.37396.i.i, i64 32 ; 2 uses
  %i.cim = add nuw nsw i32 %.01671395.i.i, 1      ; 2 uses
  %exitcond578.not.i.i = icmp eq i32 %i.cim, %i.bek
  br i1 %exitcond578.not.i.i, label %.loopexit264.i.i, label %.lr.ph397.i.i, !llvm.loop !523

.loopexit264.i.i:                                 ; preds = %.lr.ph397.i.i, %.lr.ph393.i.i, %bb.ab, %bb.aa, %.loopexit272.i.i, %.preheader271.i.i, %.loopexit266.i.i, %.preheader265.i.i
  %.38.i.i = phi ptr [ %.26418.i.i, %.loopexit272.i.i ], [ %.28.lcssa.i.i, %.preheader265.i.i ], [ %.26418.i.i, %.loopexit266.i.i ], [ %i.cci, %bb.ab ], [ %i.cbe, %bb.aa ], [ %.34.lcssa.i.i, %.preheader271.i.i ], [ %i.chk, %.lr.ph393.i.i ], [ %i.cil, %.lr.ph397.i.i ] ; 2 uses
  %i.cin = add nuw nsw i32 %.21642417.i.i, 4      ; 3 uses
  %i.cio = or disjoint i32 %i.cin, 3
  %i.cip = icmp slt i32 %i.cio, %3
  br i1 %i.cip, label %bb.w, label %.preheader262.i.i, !llvm.loop !524

.preheader249.i.i:                                ; preds = %.loopexit251.i.i, %.preheader262.i.i
  %.31643.lcssa.i.i = phi i32 [ %.21642.lcssa.i.i, %.preheader262.i.i ], [ %i.cwv, %.loopexit251.i.i ] ; 2 uses
  %.39.lcssa.i.i = phi ptr [ %.26.lcssa.i.i, %.preheader262.i.i ], [ %.52.i.i, %.loopexit251.i.i ]
  %i.ciq = icmp slt i32 %.31643.lcssa.i.i, %3
  br i1 %i.ciq, label %.lr.ph484.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph484.i.i:                                    ; preds = %.preheader249.i.i
  %i.cir = mul i32 %i.agt, %11
  %i.cis = icmp eq i32 %i.agv, 1
  %i.cit = icmp sgt i32 %5, 3
  %i.ciu = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.civ = and <2 x i64> %i.ciu, splat (i64 4294967295) ; 2 uses
  %i.ciw = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cix = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.ciy = shufflevector <4 x i32> %i.cix, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ciz = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cja = and <2 x i64> %i.ciz, splat (i64 4294967295) ; 2 uses
  %i.cjb = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjc = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.cjd = shufflevector <4 x i32> %i.cjc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cje = trunc i64 %i.l to i32
  %i.cjf = insertelement <4 x i32> poison, i32 %i.cje, i64 0
  %i.cjg = shufflevector <4 x i32> %i.cjf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjh = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.cji = shufflevector <4 x i32> %i.cjh, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar598.i.i = mul i32 %i.agt, %9            ; 4 uses
  %i.cjj = insertelement <4 x i32> poison, i32 %.scalar598.i.i, i64 0
  %i.cjk = shufflevector <4 x i32> %i.cjj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjl = icmp ne i32 %i.agv, 8
  %i.cjm = lshr i32 %5, 3
  %i.cjn = icmp slt i32 %5, 8
  %i.cjo = sdiv i32 %4, 8
  %brmerge507.i.i = or i1 %i.cjn, %i.cjl
  %30 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %31 = insertelement <2 x i32> poison, i32 %8, i64 0
  %32 = insertelement <2 x i32> %31, i32 %.scalar598.i.i, i64 1
  %i.cjp = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.cjq = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.cjr = insertelement <2 x i32> %i.cjq, i32 %.scalar598.i.i, i64 1 ; 2 uses
  %i.cjs = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.cjt = shufflevector <2 x i32> %i.cjs, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cju = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.cjv = shufflevector <2 x i32> %i.cju, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cjw = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.cjx = shufflevector <2 x i64> %i.cjw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cjy = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.cjz = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.cka = insertelement <2 x i32> %i.cjz, i32 %.scalar598.i.i, i64 1
  br label %bb.am

bb.ad:                                            ; preds = %.loopexit251.i.i, %.lr.ph461.i.i
  %.39460.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph461.i.i ], [ %.52.i.i, %.loopexit251.i.i ] ; 8 uses
  %.31643459.i.i = phi i32 [ %.21642.lcssa.i.i, %.lr.ph461.i.i ], [ %i.cwv, %.loopexit251.i.i ] ; 2 uses
  %i.ckb = add nsw i32 %.31643459.i.i, %2         ; 2 uses
  %i.ckc = add nsw i32 %i.ckb, 1
  %i.ckd = insertelement <2 x i32> poison, i32 %i.ckb, i64 0
  %i.cke = insertelement <2 x i32> %i.ckd, i32 %i.ckc, i64 1
  %.frozen833 = freeze <2 x i32> %i.cke           ; 2 uses
  %.frozen834 = freeze <2 x i32> %i.bul           ; 2 uses
  %i.ckf = sdiv <2 x i32> %.frozen833, %.frozen834 ; 2 uses
  %i.ckg = mul <2 x i32> %i.ckf, %.frozen834
  %.decomposed835 = sub <2 x i32> %.frozen833, %i.ckg
  %i.ckh = mul nsw <2 x i32> %.decomposed835, %i.buj
  %i.cki = mul <2 x i32> %i.ckf, %i.bun           ; 3 uses
  %i.ckj = add nsw <2 x i32> %i.ckh, %i.cki       ; 11 uses
  %shift559 = shufflevector <2 x i32> %i.cki, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckk = icmp eq <2 x i32> %i.cki, %shift559
  %i.ckl = extractelement <2 x i1> %i.ckk, i64 0
  %or.cond7.i.i = and i1 %i.g, %i.ckl
  br i1 %or.cond7.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.btl, label %.preheader255.i.i, label %.loopexit253.i.i

.preheader255.i.i:                                ; preds = %bb.ae
  br i1 %i.btm, label %.lr.ph443.i.i, label %.preheader254.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader255.i.i
  %i.ckm = shufflevector <2 x i32> %i.ckj, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.af

.preheader254.i.i:                                ; preds = %bb.af, %.preheader255.i.i
  %.01672.lcssa.i.i = phi i32 [ 0, %.preheader255.i.i ], [ %i.cms, %bb.af ] ; 3 uses
  %.40.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader255.i.i ], [ %i.cmr, %bb.af ] ; 2 uses
  %i.ckn = or disjoint i32 %.01672.lcssa.i.i, 1
  %i.cko = icmp slt i32 %i.ckn, %5
  br i1 %i.cko, label %.lr.ph448.i.i, label %.preheader252.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader254.i.i
  %i.ckp = extractelement <2 x i32> %i.ckj, i64 0
  %i.ckq = sext i32 %i.ckp to i64                 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph443.i.i
  %.40442.i.i = phi ptr [ %.39460.i.i, %.lr.ph443.i.i ], [ %i.cmr, %bb.af ] ; 2 uses
  %.01672441.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.cms, %bb.af ] ; 2 uses
  %i.ckr = add nsw i32 %.01672441.i.i, %4
  %i.cks = insertelement <4 x i32> poison, i32 %i.ckr, i64 0
  %i.ckt = shufflevector <4 x i32> %i.cks, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cku = add <4 x i32> %i.ckt, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ckv = bitcast <4 x i32> %i.cku to <2 x i64>
  %i.ckw = bitcast <4 x i32> %i.cku to <2 x i64>
  %i.ckx = and <2 x i64> %i.ckw, splat (i64 4294967295)
  %i.cky = mul nuw <2 x i64> %i.ckx, %i.bto
  %i.ckz = lshr <2 x i64> %i.cky, splat (i64 32)
  %i.cla = lshr <2 x i64> %i.ckv, splat (i64 32)
  %i.clb = mul nuw <2 x i64> %i.cla, %i.bto
  %i.clc = bitcast <2 x i64> %i.ckz to <8 x i16>
  %i.cld = bitcast <2 x i64> %i.clb to <8 x i16>
  %i.cle = shufflevector <8 x i16> %i.clc, <8 x i16> %i.cld, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.clf = bitcast <8 x i16> %i.cle to <4 x i32>  ; 2 uses
  %i.clg = sub <4 x i32> %i.cku, %i.clf
  %i.clh = lshr <4 x i32> %i.clg, %i.btp
  %i.cli = add <4 x i32> %i.clh, %i.clf
  %i.clj = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cli, <4 x i32> %i.aio) ; 2 uses
  %i.clk = mul <4 x i32> %i.clj, %i.btr
  %i.cll = sub <4 x i32> %i.cku, %i.clk           ; 4 uses
  %i.clm = bitcast <4 x i32> %i.cll to <2 x i64>
  %i.cln = bitcast <4 x i32> %i.cll to <2 x i64>
  %i.clo = and <2 x i64> %i.cln, splat (i64 4294967295)
  %i.clp = mul nuw <2 x i64> %i.clo, %i.btt
  %i.clq = lshr <2 x i64> %i.clp, splat (i64 32)
  %i.clr = lshr <2 x i64> %i.clm, splat (i64 32)
  %i.cls = mul nuw <2 x i64> %i.clr, %i.btt
  %i.clt = bitcast <2 x i64> %i.clq to <8 x i16>
  %i.clu = bitcast <2 x i64> %i.cls to <8 x i16>
  %i.clv = shufflevector <8 x i16> %i.clt, <8 x i16> %i.clu, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.clw = bitcast <8 x i16> %i.clv to <4 x i32>  ; 2 uses
  %i.clx = sub <4 x i32> %i.cll, %i.clw
  %i.cly = lshr <4 x i32> %i.clx, %i.btu
  %i.clz = add <4 x i32> %i.cly, %i.clw
  %i.cma = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.clz, <4 x i32> %i.ajg) ; 2 uses
  %i.cmb = mul <4 x i32> %i.cma, %i.btw
  %i.cmc = sub <4 x i32> %i.cll, %i.cmb
  %i.cmd = mul <4 x i32> %i.clj, %i.btz
  %i.cme = mul <4 x i32> %i.cmc, %i.bub
  %i.cmf = mul <4 x i32> %i.cma, %i.bud
  %i.cmg = add <4 x i32> %i.cmd, %i.ckm
  %i.cmh = add <4 x i32> %i.cmg, %i.cmf
  %i.cmi = add <4 x i32> %i.cmh, %i.cme
  %i.cmj = load ptr, ptr %0, align 8, !tbaa !28
  %i.cmk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cmj, <4 x i32> %i.cmi, <4 x i32> splat (i32 -1), i8 1)
  %i.cml = trunc <4 x i32> %i.cmk to <4 x i16>
  %i.cmm = bitcast <4 x i16> %i.cml to <8 x i8>
  %i.cmn = add <8 x i8> %i.cmm, splat (i8 127)
  %i.cmo = shufflevector <8 x i8> %i.cmn, <8 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmp = bitcast <16 x i8> %i.cmo to <2 x i64>
  %i.cmq = extractelement <2 x i64> %i.cmp, i64 0
  store i64 %i.cmq, ptr %.40442.i.i, align 1, !tbaa !30
  %i.cmr = getelementptr inbounds nuw i8, ptr %.40442.i.i, i64 8 ; 2 uses
  %i.cms = add nuw nsw i32 %.01672441.i.i, 4      ; 3 uses
  %i.cmt = or disjoint i32 %i.cms, 3
  %i.cmu = icmp slt i32 %i.cmt, %5
  br i1 %i.cmu, label %bb.af, label %.preheader254.i.i, !llvm.loop !525

.preheader252.i.i:                                ; preds = %bb.ag, %.preheader254.i.i
  %.11673.lcssa.i.i = phi i32 [ %.01672.lcssa.i.i, %.preheader254.i.i ], [ %i.cnz, %bb.ag ] ; 2 uses
  %.41.lcssa.i.i = phi ptr [ %.40.lcssa.i.i, %.preheader254.i.i ], [ %i.cny, %bb.ag ] ; 2 uses
  %i.cmv = icmp slt i32 %.11673.lcssa.i.i, %5
  br i1 %i.cmv, label %.lr.ph453.i.i, label %.loopexit251.i.i

.lr.ph453.i.i:                                    ; preds = %.preheader252.i.i
  %i.cmw = extractelement <2 x i32> %i.ckj, i64 0
  %i.cmx = sext i32 %i.cmw to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph448.i.i
  %.41447.i.i = phi ptr [ %.40.lcssa.i.i, %.lr.ph448.i.i ], [ %i.cny, %bb.ag ] ; 5 uses
  %.11673446.i.i = phi i32 [ %.01672.lcssa.i.i, %.lr.ph448.i.i ], [ %i.cnz, %bb.ag ] ; 2 uses
  %i.cmy = add nsw i32 %.11673446.i.i, %4         ; 2 uses
  %i.cmz = add nsw i32 %i.cmy, 1
  %i.cna = insertelement <2 x i32> poison, i32 %i.cmy, i64 0
  %i.cnb = insertelement <2 x i32> %i.cna, i32 %i.cmz, i64 1
  %.frozen836 = freeze <2 x i32> %i.cnb           ; 2 uses
  %i.cnc = sdiv <2 x i32> %.frozen836, %i.bvf     ; 2 uses
  %33 = sext <2 x i32> %i.cnc to <2 x i64>
  %34 = mul <2 x i64> %i.bvj, %33                 ; 2 uses
  %35 = mul <2 x i32> %i.cnc, %i.bvf
  %.decomposed858 = sub <2 x i32> %.frozen836, %35 ; 3 uses
  %i.cnd = srem <2 x i32> %.decomposed858, %i.bvh ; 2 uses
  %36 = shufflevector <2 x i32> %i.cnd, <2 x i32> %.decomposed858, <2 x i32> <i32 0, i32 2>
  %37 = sdiv <2 x i32> %36, %i.bvb
  %38 = mul <2 x i32> %37, %i.bvd
  %39 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %38)
  %i.cne = sext i32 %39 to i64
  %40 = shufflevector <2 x i32> %i.cnd, <2 x i32> %.decomposed858, <2 x i32> <i32 1, i32 3>
  %41 = sdiv <2 x i32> %40, %i.bvb
  %42 = mul <2 x i32> %41, %i.bvd
  %43 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %42)
  %i.cnf = sext i32 %43 to i64
  %i.cng = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.cnh = extractelement <2 x i64> %34, i64 0
  %i.cni = getelementptr i8, ptr %i.cng, i64 %i.cnh
  %i.cnj = getelementptr i8, ptr %i.cni, i64 %i.ckq
  %i.cnk = getelementptr i8, ptr %i.cnj, i64 %i.cne ; 2 uses
  %i.cnl = extractelement <2 x i64> %34, i64 1
  %i.cnm = getelementptr i8, ptr %i.cng, i64 %i.cnl
  %i.cnn = getelementptr i8, ptr %i.cnm, i64 %i.ckq
  %i.cno = getelementptr i8, ptr %i.cnn, i64 %i.cnf ; 2 uses
  %i.cnp = load i8, ptr %i.cnk, align 1, !tbaa !30
  store i8 %i.cnp, ptr %.41447.i.i, align 1, !tbaa !30
  %i.cnq = load i8, ptr %i.cno, align 1, !tbaa !30
  %i.cnr = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 1
  store i8 %i.cnq, ptr %i.cnr, align 1, !tbaa !30
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnk, i64 1
  %i.cnt = load i8, ptr %i.cns, align 1, !tbaa !30
  %i.cnu = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 2
  store i8 %i.cnt, ptr %i.cnu, align 1, !tbaa !30
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.cno, i64 1
  %i.cnw = load i8, ptr %i.cnv, align 1, !tbaa !30
  %i.cnx = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 3
  store i8 %i.cnw, ptr %i.cnx, align 1, !tbaa !30
  %i.cny = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 4 ; 2 uses
  %i.cnz = add nuw nsw i32 %.11673446.i.i, 2      ; 3 uses
  %i.coa = or disjoint i32 %i.cnz, 1
  %i.cob = icmp slt i32 %i.coa, %5
  br i1 %i.cob, label %bb.ag, label %.preheader252.i.i, !llvm.loop !526

bb.ah:                                            ; preds = %bb.ah, %.lr.ph453.i.i
  %.42452.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph453.i.i ], [ %i.con, %bb.ah ] ; 3 uses
  %.21674451.i.i = phi i32 [ %.11673.lcssa.i.i, %.lr.ph453.i.i ], [ %i.coo, %bb.ah ] ; 2 uses
  %i.coc = add nsw i32 %.21674451.i.i, %4         ; 2 uses
  %44 = sdiv i32 %i.coc, %i.ahb
  %45 = srem i32 %i.coc, %i.ahb                   ; 2 uses
  %46 = sext i32 %44 to i64
  %47 = mul i64 %i.l, %46
  %i.cod = srem i32 %45, %6
  %48 = insertelement <2 x i32> poison, i32 %i.cod, i64 0
  %49 = insertelement <2 x i32> %48, i32 %45, i64 1
  %50 = sdiv <2 x i32> %49, %18
  %51 = mul <2 x i32> %50, %i.bvl
  %52 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %51)
  %i.coe = sext i32 %52 to i64
  %i.cof = load ptr, ptr %0, align 8, !tbaa !28
  %i.cog = getelementptr i8, ptr %i.cof, i64 %47
  %i.coh = getelementptr i8, ptr %i.cog, i64 %i.cmx
  %i.coi = getelementptr i8, ptr %i.coh, i64 %i.coe ; 2 uses
  %i.coj = load i8, ptr %i.coi, align 1, !tbaa !30
  store i8 %i.coj, ptr %.42452.i.i, align 1, !tbaa !30
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coi, i64 1
  %i.col = load i8, ptr %i.cok, align 1, !tbaa !30
  %i.com = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 1
  store i8 %i.col, ptr %i.com, align 1, !tbaa !30
  %i.con = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 2 ; 2 uses
  %i.coo = add nuw nsw i32 %.21674451.i.i, 1      ; 2 uses
  %exitcond583.not.i.i = icmp eq i32 %i.coo, %5
  br i1 %exitcond583.not.i.i, label %.loopexit251.i.i, label %bb.ah, !llvm.loop !527

.loopexit253.i.i:                                 ; preds = %bb.ae
  br i1 %or.cond504.i.i, label %.lr.ph457.i.i, label %.loopexit251.i.i

.lr.ph457.i.i:                                    ; preds = %.loopexit253.i.i
  %i.cop = extractelement <2 x i32> %i.ckj, i64 0
  %i.coq = sext i32 %i.cop to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph457.i.i
  %.44456.i.i = phi ptr [ %.39460.i.i, %.lr.ph457.i.i ], [ %i.cpl, %bb.ai ] ; 2 uses
  %.01675455.i.i = phi i32 [ 0, %.lr.ph457.i.i ], [ %i.cpm, %bb.ai ] ; 2 uses
  %i.cor = add nsw i32 %.01675455.i.i, %i.bug     ; 2 uses
  %i.cos = sdiv i32 %i.cor, %i.ahb
  %i.cot = srem i32 %i.cor, %i.ahb                ; 2 uses
  %i.cou = sext i32 %i.cos to i64
  %i.cov = mul i64 %i.l, %i.cou
  %i.cow = add i64 %i.cov, %i.coq
  %i.cox = srem i32 %i.cot, %6
  %i.coy = insertelement <2 x i32> poison, i32 %i.cox, i64 0
  %i.coz = insertelement <2 x i32> %i.coy, i32 %i.cot, i64 1
  %i.cpa = sdiv <2 x i32> %i.coz, %17
  %i.cpb = mul <2 x i32> %i.cpa, %i.bva
  %i.cpc = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cpb)
  %i.cpd = sext i32 %i.cpc to i64
  %i.cpe = add i64 %i.cow, %i.cpd
  %i.cpf = shl i64 %i.cpe, 3
  %i.cpg = load ptr, ptr %0, align 8, !tbaa !28
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpg, i64 %i.cpf
  %i.cpi = load <16 x i8>, ptr %i.cph, align 1, !tbaa !30
  %i.cpj = add <16 x i8> %i.cpi, splat (i8 127)
  %i.cpk = shufflevector <16 x i8> %i.cpj, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.cpk, ptr %.44456.i.i, align 1, !tbaa !30
  %i.cpl = getelementptr inbounds nuw i8, ptr %.44456.i.i, i64 16 ; 2 uses
  %i.cpm = add nuw nsw i32 %.01675455.i.i, 1      ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %i.cpm, %i.buf
  br i1 %exitcond584.not.i.i, label %.loopexit251.i.i, label %bb.ai, !llvm.loop !528

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.btl, label %.preheader261.i.i, label %.loopexit259.i.i

.preheader261.i.i:                                ; preds = %bb.aj
  br i1 %i.btm, label %.lr.ph424.i.i.preheader, label %.preheader260.i.i

.lr.ph424.i.i.preheader:                          ; preds = %.preheader261.i.i
  %i.cpn = extractelement <2 x i32> %i.ckj, i64 0 ; 4 uses
  %i.cpo = extractelement <2 x i32> %i.ckj, i64 1 ; 4 uses
  br label %.lr.ph424.i.i

.preheader260.i.i:                                ; preds = %.lr.ph424.i.i, %.preheader261.i.i
  %.01676.lcssa.i.i = phi i32 [ 0, %.preheader261.i.i ], [ %i.ctg, %.lr.ph424.i.i ] ; 3 uses
  %.46.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader261.i.i ], [ %i.ctf, %.lr.ph424.i.i ] ; 2 uses
  %i.cpp = or disjoint i32 %.01676.lcssa.i.i, 1
  %i.cpq = icmp slt i32 %i.cpp, %5
  br i1 %i.cpq, label %.lr.ph429.i.i.preheader, label %.preheader258.i.i

.lr.ph429.i.i.preheader:                          ; preds = %.preheader260.i.i
  %i.cpr = shufflevector <2 x i32> %i.ckj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph429.i.i

.lr.ph424.i.i:                                    ; preds = %.lr.ph424.i.i.preheader, %.lr.ph424.i.i
  %.46423.i.i = phi ptr [ %i.ctf, %.lr.ph424.i.i ], [ %.39460.i.i, %.lr.ph424.i.i.preheader ] ; 9 uses
  %.01676422.i.i = phi i32 [ %i.ctg, %.lr.ph424.i.i ], [ 0, %.lr.ph424.i.i.preheader ] ; 2 uses
  %i.cps = add nsw i32 %.01676422.i.i, %4
  %i.cpt = insertelement <4 x i32> poison, i32 %i.cps, i64 0
  %i.cpu = shufflevector <4 x i32> %i.cpt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cpv = add <4 x i32> %i.cpu, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cpw = bitcast <4 x i32> %i.cpv to <2 x i64>
  %i.cpx = bitcast <4 x i32> %i.cpv to <2 x i64>
  %i.cpy = and <2 x i64> %i.cpx, splat (i64 4294967295)
  %i.cpz = mul nuw <2 x i64> %i.cpy, %i.bto
  %i.cqa = lshr <2 x i64> %i.cpz, splat (i64 32)
  %i.cqb = lshr <2 x i64> %i.cpw, splat (i64 32)
  %i.cqc = mul nuw <2 x i64> %i.cqb, %i.bto
  %i.cqd = bitcast <2 x i64> %i.cqa to <8 x i16>
  %i.cqe = bitcast <2 x i64> %i.cqc to <8 x i16>
  %i.cqf = shufflevector <8 x i16> %i.cqd, <8 x i16> %i.cqe, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cqg = bitcast <8 x i16> %i.cqf to <4 x i32>  ; 2 uses
  %i.cqh = sub <4 x i32> %i.cpv, %i.cqg
  %i.cqi = lshr <4 x i32> %i.cqh, %i.btp
  %i.cqj = add <4 x i32> %i.cqi, %i.cqg
  %i.cqk = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cqj, <4 x i32> %i.aio) ; 2 uses
  %i.cql = mul <4 x i32> %i.cqk, %i.btr
  %i.cqm = sub <4 x i32> %i.cpv, %i.cql           ; 4 uses
  %i.cqn = bitcast <4 x i32> %i.cqm to <2 x i64>
  %i.cqo = bitcast <4 x i32> %i.cqm to <2 x i64>
  %i.cqp = and <2 x i64> %i.cqo, splat (i64 4294967295)
  %i.cqq = mul nuw <2 x i64> %i.cqp, %i.btt
  %i.cqr = lshr <2 x i64> %i.cqq, splat (i64 32)
  %i.cqs = lshr <2 x i64> %i.cqn, splat (i64 32)
  %i.cqt = mul nuw <2 x i64> %i.cqs, %i.btt
  %i.cqu = bitcast <2 x i64> %i.cqr to <8 x i16>
  %i.cqv = bitcast <2 x i64> %i.cqt to <8 x i16>
  %i.cqw = shufflevector <8 x i16> %i.cqu, <8 x i16> %i.cqv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cqx = bitcast <8 x i16> %i.cqw to <4 x i32>  ; 2 uses
  %i.cqy = sub <4 x i32> %i.cqm, %i.cqx
  %i.cqz = lshr <4 x i32> %i.cqy, %i.btu
  %i.cra = add <4 x i32> %i.cqz, %i.cqx
  %i.crb = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cra, <4 x i32> %i.ajg) ; 2 uses
  %i.crc = mul <4 x i32> %i.crb, %i.btw
  %i.crd = sub <4 x i32> %i.cqm, %i.crc
  %i.cre = mul <4 x i32> %i.cqk, %i.btz
  %i.crf = mul <4 x i32> %i.crd, %i.bub
  %i.crg = mul <4 x i32> %i.crb, %i.bud
  %i.crh = add <4 x i32> %i.crg, %i.cre
  %i.cri = add <4 x i32> %i.crh, %i.crf           ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.cri, i64 0 ; 2 uses
  %i.crj = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.cpn
  %i.crk = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.cpo
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.cri, i64 1 ; 2 uses
  %i.crl = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.cpn
  %i.crm = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.cpo
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.cri, i64 2 ; 2 uses
  %i.crn = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.cpn
  %i.cro = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.cpo
  %.sroa.09.12.vec.extract.i.i = extractelement <4 x i32> %i.cri, i64 3 ; 2 uses
  %i.crp = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.cpn
  %i.crq = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.cpo
  %i.crr = load ptr, ptr %0, align 8, !tbaa !28   ; 8 uses
  %i.crs = sext i32 %i.crj to i64
  %i.crt = getelementptr inbounds i8, ptr %i.crr, i64 %i.crs
  %i.cru = sext i32 %i.crk to i64
  %i.crv = getelementptr inbounds i8, ptr %i.crr, i64 %i.cru
  %i.crw = sext i32 %i.crl to i64
  %i.crx = getelementptr inbounds i8, ptr %i.crr, i64 %i.crw
  %i.cry = sext i32 %i.crm to i64
  %i.crz = getelementptr inbounds i8, ptr %i.crr, i64 %i.cry
  %i.csa = sext i32 %i.crn to i64
  %i.csb = getelementptr inbounds i8, ptr %i.crr, i64 %i.csa
  %i.csc = sext i32 %i.cro to i64
  %i.csd = getelementptr inbounds i8, ptr %i.crr, i64 %i.csc
  %i.cse = sext i32 %i.crp to i64
  %i.csf = getelementptr inbounds i8, ptr %i.crr, i64 %i.cse
  %i.csg = sext i32 %i.crq to i64
  %i.csh = getelementptr inbounds i8, ptr %i.crr, i64 %i.csg
  %i.csi = load i8, ptr %i.crt, align 1, !tbaa !30
  %i.csj = add i8 %i.csi, 127
  store i8 %i.csj, ptr %.46423.i.i, align 1, !tbaa !30
  %i.csk = load i8, ptr %i.crx, align 1, !tbaa !30
  %i.csl = add i8 %i.csk, 127
  %i.csm = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 1
  store i8 %i.csl, ptr %i.csm, align 1, !tbaa !30
  %i.csn = load i8, ptr %i.csb, align 1, !tbaa !30
  %i.cso = add i8 %i.csn, 127
  %i.csp = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 2
  store i8 %i.cso, ptr %i.csp, align 1, !tbaa !30
  %i.csq = load i8, ptr %i.csf, align 1, !tbaa !30
  %i.csr = add i8 %i.csq, 127
  %i.css = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 3
  store i8 %i.csr, ptr %i.css, align 1, !tbaa !30
  %i.cst = load i8, ptr %i.crv, align 1, !tbaa !30
  %i.csu = add i8 %i.cst, 127
  %i.csv = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 4
  store i8 %i.csu, ptr %i.csv, align 1, !tbaa !30
  %i.csw = load i8, ptr %i.crz, align 1, !tbaa !30
  %i.csx = add i8 %i.csw, 127
  %i.csy = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 5
  store i8 %i.csx, ptr %i.csy, align 1, !tbaa !30
  %i.csz = load i8, ptr %i.csd, align 1, !tbaa !30
  %i.cta = add i8 %i.csz, 127
  %i.ctb = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 6
  store i8 %i.cta, ptr %i.ctb, align 1, !tbaa !30
  %i.ctc = load i8, ptr %i.csh, align 1, !tbaa !30
  %i.ctd = add i8 %i.ctc, 127
  %i.cte = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 7
  store i8 %i.ctd, ptr %i.cte, align 1, !tbaa !30
  %i.ctf = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 8 ; 2 uses
  %i.ctg = add nuw nsw i32 %.01676422.i.i, 4      ; 3 uses
  %i.cth = or disjoint i32 %i.ctg, 3
  %i.cti = icmp slt i32 %i.cth, %5
  br i1 %i.cti, label %.lr.ph424.i.i, label %.preheader260.i.i, !llvm.loop !529

.preheader258.i.i:                                ; preds = %.lr.ph429.i.i, %.preheader260.i.i
  %.11677.lcssa.i.i = phi i32 [ %.01676.lcssa.i.i, %.preheader260.i.i ], [ %i.cuv, %.lr.ph429.i.i ] ; 2 uses
  %.47.lcssa.i.i = phi ptr [ %.46.lcssa.i.i, %.preheader260.i.i ], [ %i.cuu, %.lr.ph429.i.i ] ; 2 uses
  %i.ctj = icmp slt i32 %.11677.lcssa.i.i, %5
  br i1 %i.ctj, label %.lr.ph434.i.i, label %.loopexit251.i.i

.lr.ph434.i.i:                                    ; preds = %.preheader258.i.i
  %i.ctk = extractelement <2 x i32> %i.ckj, i64 0
  %i.ctl = extractelement <2 x i32> %i.ckj, i64 1
  %i.ctm = sext i32 %i.ctk to i64
  %i.ctn = sext i32 %i.ctl to i64
  br label %bb.ak

.lr.ph429.i.i:                                    ; preds = %.lr.ph429.i.i.preheader, %.lr.ph429.i.i
  %.47428.i.i = phi ptr [ %i.cuu, %.lr.ph429.i.i ], [ %.46.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 5 uses
  %.11677427.i.i = phi i32 [ %i.cuv, %.lr.ph429.i.i ], [ %.01676.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 2 uses
  %i.cto = add nsw i32 %.11677427.i.i, %4         ; 2 uses
  %i.ctp = add nsw i32 %i.cto, 1
  %i.ctq = insertelement <2 x i32> poison, i32 %i.cto, i64 0
  %i.ctr = insertelement <2 x i32> %i.ctq, i32 %i.ctp, i64 1
  %.frozen838 = freeze <2 x i32> %i.ctr           ; 2 uses
  %i.cts = sdiv <2 x i32> %.frozen838, %i.bus     ; 2 uses
  %i.ctt = mul <2 x i32> %i.cts, %i.bus
  %.decomposed839 = sub <2 x i32> %.frozen838, %i.ctt ; 3 uses
  %53 = srem <2 x i32> %.decomposed839, %i.buu    ; 2 uses
  %54 = shufflevector <2 x i32> %53, <2 x i32> %.decomposed839, <2 x i32> <i32 2, i32 0>
  %i.ctu = sdiv <2 x i32> %54, %14
  %i.ctv = mul <2 x i32> %i.ctu, %i.buq           ; 2 uses
  %55 = shufflevector <2 x i32> %53, <2 x i32> %.decomposed839, <2 x i32> <i32 3, i32 1>
  %56 = sdiv <2 x i32> %55, %14
  %i.ctw = mul <2 x i32> %56, %i.buq              ; 2 uses
  %57 = load ptr, ptr %0, align 8, !tbaa !28      ; 4 uses
  %i.ctx = mul <2 x i32> %i.cts, %i.buw
  %58 = shufflevector <2 x i32> %i.ctv, <2 x i32> %i.ctw, <2 x i32> <i32 0, i32 2>
  %i.cty = add <2 x i32> %58, %i.ctx
  %i.ctz = shufflevector <2 x i32> %i.cty, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %59 = shufflevector <2 x i32> %i.ctv, <2 x i32> %i.ctw, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %60 = add <4 x i32> %i.ctz, %59
  %i.cua = add <4 x i32> %60, %i.cpr              ; 4 uses
  %i.cub = extractelement <4 x i32> %i.cua, i64 0
  %i.cuc = sext i32 %i.cub to i64
  %i.cud = getelementptr inbounds i8, ptr %57, i64 %i.cuc
  %i.cue = extractelement <4 x i32> %i.cua, i64 1
  %i.cuf = sext i32 %i.cue to i64
  %i.cug = getelementptr inbounds i8, ptr %57, i64 %i.cuf
  %i.cuh = extractelement <4 x i32> %i.cua, i64 2
  %i.cui = sext i32 %i.cuh to i64
  %i.cuj = getelementptr inbounds i8, ptr %57, i64 %i.cui
  %i.cuk = extractelement <4 x i32> %i.cua, i64 3
  %i.cul = sext i32 %i.cuk to i64
  %i.cum = getelementptr inbounds i8, ptr %57, i64 %i.cul
  %i.cun = load i8, ptr %i.cud, align 1, !tbaa !30
  store i8 %i.cun, ptr %.47428.i.i, align 1, !tbaa !30
  %i.cuo = load i8, ptr %i.cuj, align 1, !tbaa !30
  %i.cup = getelementptr inbounds nuw i8, ptr %.47428.i.i, i64 1
  store i8 %i.cuo, ptr %i.cup, align 1, !tbaa !30
  %i.cuq = load i8, ptr %i.cug, align 1, !tbaa !30
  %i.cur = getelementptr inbounds nuw i8, ptr %.47428.i.i, i64 2
  store i8 %i.cuq, ptr %i.cur, align 1, !tbaa !30
  %i.cus = load i8, ptr %i.cum, align 1, !tbaa !30
  %i.cut = getelementptr inbounds nuw i8, ptr %.47428.i.i, i64 3
  store i8 %i.cus, ptr %i.cut, align 1, !tbaa !30
  %i.cuu = getelementptr inbounds nuw i8, ptr %.47428.i.i, i64 4 ; 2 uses
  %i.cuv = add nuw nsw i32 %.11677427.i.i, 2      ; 3 uses
  %i.cuw = or disjoint i32 %i.cuv, 1
  %i.cux = icmp slt i32 %i.cuw, %5
  br i1 %i.cux, label %.lr.ph429.i.i, label %.preheader258.i.i, !llvm.loop !530

bb.ak:                                            ; preds = %bb.ak, %.lr.ph434.i.i
  %.48433.i.i = phi ptr [ %.47.lcssa.i.i, %.lr.ph434.i.i ], [ %i.cvk, %bb.ak ] ; 3 uses
  %.21678432.i.i = phi i32 [ %.11677.lcssa.i.i, %.lr.ph434.i.i ], [ %i.cvl, %bb.ak ] ; 2 uses
  %i.cuy = add nsw i32 %.21678432.i.i, %4         ; 2 uses
  %61 = sdiv i32 %i.cuy, %i.ahb
  %62 = srem i32 %i.cuy, %i.ahb                   ; 2 uses
  %63 = sext i32 %61 to i64
  %64 = mul i64 %i.l, %63
  %i.cuz = srem i32 %62, %6
  %65 = insertelement <2 x i32> poison, i32 %i.cuz, i64 0
  %66 = insertelement <2 x i32> %65, i32 %62, i64 1
  %67 = sdiv <2 x i32> %66, %i.bux
  %68 = mul <2 x i32> %67, %i.buy
  %69 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %68)
  %i.cva = sext i32 %69 to i64                    ; 2 uses
  %i.cvb = load ptr, ptr %0, align 8, !tbaa !28
  %i.cvc = getelementptr i8, ptr %i.cvb, i64 %64  ; 2 uses
  %i.cvd = getelementptr i8, ptr %i.cvc, i64 %i.ctm
  %i.cve = getelementptr i8, ptr %i.cvd, i64 %i.cva
  %i.cvf = getelementptr i8, ptr %i.cvc, i64 %i.ctn
  %i.cvg = getelementptr i8, ptr %i.cvf, i64 %i.cva
  %i.cvh = load i8, ptr %i.cve, align 1, !tbaa !30
  store i8 %i.cvh, ptr %.48433.i.i, align 1, !tbaa !30
  %i.cvi = load i8, ptr %i.cvg, align 1, !tbaa !30
  %i.cvj = getelementptr inbounds nuw i8, ptr %.48433.i.i, i64 1
  store i8 %i.cvi, ptr %i.cvj, align 1, !tbaa !30
  %i.cvk = getelementptr inbounds nuw i8, ptr %.48433.i.i, i64 2 ; 2 uses
  %i.cvl = add nuw nsw i32 %.21678432.i.i, 1      ; 2 uses
  %exitcond581.not.i.i = icmp eq i32 %i.cvl, %5
  br i1 %exitcond581.not.i.i, label %.loopexit251.i.i, label %bb.ak, !llvm.loop !531

.loopexit259.i.i:                                 ; preds = %bb.aj
  br i1 %or.cond504.i.i, label %.lr.ph439.i.i, label %.loopexit251.i.i

.lr.ph439.i.i:                                    ; preds = %.loopexit259.i.i
  %i.cvm = extractelement <2 x i32> %i.ckj, i64 0
  %i.cvn = sext i32 %i.cvm to i64
  %i.cvo = extractelement <2 x i32> %i.ckj, i64 1
  %i.cvp = sext i32 %i.cvo to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph439.i.i
  %.50438.i.i = phi ptr [ %.39460.i.i, %.lr.ph439.i.i ], [ %i.cwt, %bb.al ] ; 2 uses
  %.41680437.i.i = phi i32 [ 0, %.lr.ph439.i.i ], [ %i.cwu, %bb.al ] ; 2 uses
  %i.cvq = add nsw i32 %.41680437.i.i, %i.bug     ; 2 uses
  %i.cvr = sdiv i32 %i.cvq, %i.ahb
  %i.cvs = srem i32 %i.cvq, %i.ahb                ; 2 uses
  %i.cvt = sext i32 %i.cvr to i64
  %i.cvu = mul i64 %i.l, %i.cvt
  %i.cvv = srem i32 %i.cvs, %6
  %i.cvw = insertelement <2 x i32> poison, i32 %i.cvv, i64 0
  %i.cvx = insertelement <2 x i32> %i.cvw, i32 %i.cvs, i64 1
  %i.cvy = sdiv <2 x i32> %i.cvx, %i.buo
  %i.cvz = mul <2 x i32> %i.cvy, %13
  %i.cwa = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cvz)
  %i.cwb = sext i32 %i.cwa to i64
  %i.cwc = add i64 %i.cvu, %i.cwb                 ; 2 uses
  %i.cwd = add i64 %i.cwc, %i.cvn
  %i.cwe = shl i64 %i.cwd, 3
  %i.cwf = add i64 %i.cwc, %i.cvp
  %i.cwg = shl i64 %i.cwf, 3
  %i.cwh = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 %i.cwe
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwh, i64 %i.cwg
  %i.cwk = load i64, ptr %i.cwi, align 1, !tbaa !30
  %i.cwl = insertelement <2 x i64> poison, i64 %i.cwk, i64 0
  %i.cwm = load i64, ptr %i.cwj, align 1, !tbaa !30
  %i.cwn = insertelement <2 x i64> poison, i64 %i.cwm, i64 0
  %i.cwo = bitcast <2 x i64> %i.cwl to <4 x i32>
  %i.cwp = bitcast <2 x i64> %i.cwn to <4 x i32>
  %i.cwq = shufflevector <4 x i32> %i.cwo, <4 x i32> %i.cwp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cwr = bitcast <4 x i32> %i.cwq to <16 x i8>
  %i.cws = add <16 x i8> %i.cwr, splat (i8 127)
  store <16 x i8> %i.cws, ptr %.50438.i.i, align 1, !tbaa !30
  %i.cwt = getelementptr inbounds nuw i8, ptr %.50438.i.i, i64 16 ; 2 uses
  %i.cwu = add nuw nsw i32 %.41680437.i.i, 1      ; 2 uses
  %exitcond582.not.i.i = icmp eq i32 %i.cwu, %i.buf
  br i1 %exitcond582.not.i.i, label %.loopexit251.i.i, label %bb.al, !llvm.loop !532

.loopexit251.i.i:                                 ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %.loopexit259.i.i, %.preheader258.i.i, %.loopexit253.i.i, %.preheader252.i.i
  %.52.i.i = phi ptr [ %.39460.i.i, %.loopexit259.i.i ], [ %.39460.i.i, %.loopexit253.i.i ], [ %.41.lcssa.i.i, %.preheader252.i.i ], [ %i.cpl, %bb.ai ], [ %i.con, %bb.ah ], [ %.47.lcssa.i.i, %.preheader258.i.i ], [ %i.cvk, %bb.ak ], [ %i.cwt, %bb.al ] ; 2 uses
  %i.cwv = add nuw nsw i32 %.31643459.i.i, 2      ; 3 uses
  %i.cww = or disjoint i32 %i.cwv, 1
  %i.cwx = icmp slt i32 %i.cww, %3
  br i1 %i.cwx, label %bb.ad, label %.preheader249.i.i, !llvm.loop !533

bb.am:                                            ; preds = %.loopexit.i34.i, %.lr.ph484.i.i
  %.53483.i.i = phi ptr [ %.39.lcssa.i.i, %.lr.ph484.i.i ], [ %.59.i.i, %.loopexit.i34.i ] ; 4 uses
  %.41644482.i.i = phi i32 [ %.31643.lcssa.i.i, %.lr.ph484.i.i ], [ %i.dct, %.loopexit.i34.i ] ; 2 uses
  %i.cwy = add nsw i32 %.41644482.i.i, %2         ; 2 uses
  %i.cwz = sdiv i32 %i.cwy, %i.aha
  %i.cxa = srem i32 %i.cwy, %i.aha
  %i.cxb = mul nsw i32 %i.cxa, %10
  %i.cxc = mul i32 %i.cir, %i.cwz
  %i.cxd = add nsw i32 %i.cxb, %i.cxc             ; 7 uses
  br i1 %i.cis, label %.preheader248.i.i, label %.loopexit246.i.i

.preheader248.i.i:                                ; preds = %bb.am
  br i1 %i.cit, label %.lr.ph466.i.i, label %.preheader247.i.i

.preheader247.i.i:                                ; preds = %.lr.ph466.i.i, %.preheader248.i.i
  %.01668.lcssa.i.i = phi i32 [ 0, %.preheader248.i.i ], [ %i.czx, %.lr.ph466.i.i ] ; 3 uses
  %.54.lcssa.i.i = phi ptr [ %.53483.i.i, %.preheader248.i.i ], [ %i.czw, %.lr.ph466.i.i ] ; 2 uses
  %i.cxe = or disjoint i32 %.01668.lcssa.i.i, 1
  %i.cxf = icmp slt i32 %i.cxe, %5
  br i1 %i.cxf, label %.lr.ph471.i.i, label %.preheader245.i.i

.lr.ph471.i.i:                                    ; preds = %.preheader247.i.i
  %i.cxg = sext i32 %i.cxd to i64                 ; 2 uses
  br label %bb.an

.lr.ph466.i.i:                                    ; preds = %.preheader248.i.i, %.lr.ph466.i.i
  %.54465.i.i = phi ptr [ %i.czw, %.lr.ph466.i.i ], [ %.53483.i.i, %.preheader248.i.i ] ; 5 uses
  %.01668464.i.i = phi i32 [ %i.czx, %.lr.ph466.i.i ], [ 0, %.preheader248.i.i ] ; 2 uses
  %i.cxh = add nsw i32 %.01668464.i.i, %4
  %i.cxi = insertelement <4 x i32> poison, i32 %i.cxh, i64 0
  %i.cxj = shufflevector <4 x i32> %i.cxi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cxk = add <4 x i32> %i.cxj, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cxl = bitcast <4 x i32> %i.cxk to <2 x i64>
  %i.cxm = bitcast <4 x i32> %i.cxk to <2 x i64>
  %i.cxn = and <2 x i64> %i.cxm, splat (i64 4294967295)
  %i.cxo = mul nuw <2 x i64> %i.cxn, %i.civ
  %i.cxp = lshr <2 x i64> %i.cxo, splat (i64 32)
  %i.cxq = lshr <2 x i64> %i.cxl, splat (i64 32)
  %i.cxr = mul nuw <2 x i64> %i.cxq, %i.civ
  %i.cxs = bitcast <2 x i64> %i.cxp to <8 x i16>
  %i.cxt = bitcast <2 x i64> %i.cxr to <8 x i16>
  %i.cxu = shufflevector <8 x i16> %i.cxs, <8 x i16> %i.cxt, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cxv = bitcast <8 x i16> %i.cxu to <4 x i32>  ; 2 uses
  %i.cxw = sub <4 x i32> %i.cxk, %i.cxv
  %i.cxx = lshr <4 x i32> %i.cxw, %i.ciw
  %i.cxy = add <4 x i32> %i.cxx, %i.cxv
  %i.cxz = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cxy, <4 x i32> %i.aio) ; 2 uses
  %i.cya = mul <4 x i32> %i.cxz, %i.ciy
  %i.cyb = sub <4 x i32> %i.cxk, %i.cya           ; 4 uses
  %i.cyc = bitcast <4 x i32> %i.cyb to <2 x i64>
  %i.cyd = bitcast <4 x i32> %i.cyb to <2 x i64>
  %i.cye = and <2 x i64> %i.cyd, splat (i64 4294967295)
  %i.cyf = mul nuw <2 x i64> %i.cye, %i.cja
  %i.cyg = lshr <2 x i64> %i.cyf, splat (i64 32)
  %i.cyh = lshr <2 x i64> %i.cyc, splat (i64 32)
  %i.cyi = mul nuw <2 x i64> %i.cyh, %i.cja
  %i.cyj = bitcast <2 x i64> %i.cyg to <8 x i16>
  %i.cyk = bitcast <2 x i64> %i.cyi to <8 x i16>
  %i.cyl = shufflevector <8 x i16> %i.cyj, <8 x i16> %i.cyk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cym = bitcast <8 x i16> %i.cyl to <4 x i32>  ; 2 uses
  %i.cyn = sub <4 x i32> %i.cyb, %i.cym
  %i.cyo = lshr <4 x i32> %i.cyn, %i.cjb
  %i.cyp = add <4 x i32> %i.cyo, %i.cym
  %i.cyq = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cyp, <4 x i32> %i.ajg) ; 2 uses
  %i.cyr = mul <4 x i32> %i.cyq, %i.cjd
  %i.cys = sub <4 x i32> %i.cyb, %i.cyr
  %i.cyt = mul <4 x i32> %i.cxz, %i.cjg
  %i.cyu = mul <4 x i32> %i.cys, %i.cji
  %i.cyv = mul <4 x i32> %i.cyq, %i.cjk
  %i.cyw = add <4 x i32> %i.cyv, %i.cyt
  %i.cyx = add <4 x i32> %i.cyw, %i.cyu           ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.cyx, i64 0
  %i.cyy = add nsw i32 %.sroa.0.0.vec.extract.i.i, %i.cxd
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.cyx, i64 1
  %i.cyz = add nsw i32 %.sroa.0.4.vec.extract.i.i, %i.cxd
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.cyx, i64 2
  %i.cza = add nsw i32 %.sroa.0.8.vec.extract.i.i, %i.cxd
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.cyx, i64 3
  %i.czb = add nsw i32 %.sroa.0.12.vec.extract.i.i, %i.cxd
  %i.czc = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.czd = sext i32 %i.cyy to i64
  %i.cze = getelementptr inbounds i8, ptr %i.czc, i64 %i.czd
  %i.czf = sext i32 %i.cyz to i64
  %i.czg = getelementptr inbounds i8, ptr %i.czc, i64 %i.czf
  %i.czh = sext i32 %i.cza to i64
  %i.czi = getelementptr inbounds i8, ptr %i.czc, i64 %i.czh
  %i.czj = sext i32 %i.czb to i64
  %i.czk = getelementptr inbounds i8, ptr %i.czc, i64 %i.czj
  %i.czl = load i8, ptr %i.cze, align 1, !tbaa !30
  %i.czm = add i8 %i.czl, 127
  store i8 %i.czm, ptr %.54465.i.i, align 1, !tbaa !30
  %i.czn = load i8, ptr %i.czg, align 1, !tbaa !30
  %i.czo = add i8 %i.czn, 127
  %i.czp = getelementptr inbounds nuw i8, ptr %.54465.i.i, i64 1
  store i8 %i.czo, ptr %i.czp, align 1, !tbaa !30
  %i.czq = load i8, ptr %i.czi, align 1, !tbaa !30
  %i.czr = add i8 %i.czq, 127
  %i.czs = getelementptr inbounds nuw i8, ptr %.54465.i.i, i64 2
  store i8 %i.czr, ptr %i.czs, align 1, !tbaa !30
  %i.czt = load i8, ptr %i.czk, align 1, !tbaa !30
  %i.czu = add i8 %i.czt, 127
  %i.czv = getelementptr inbounds nuw i8, ptr %.54465.i.i, i64 3
  store i8 %i.czu, ptr %i.czv, align 1, !tbaa !30
  %i.czw = getelementptr inbounds nuw i8, ptr %.54465.i.i, i64 4 ; 2 uses
  %i.czx = add nuw nsw i32 %.01668464.i.i, 4      ; 3 uses
  %i.czy = or disjoint i32 %i.czx, 3
  %i.czz = icmp slt i32 %i.czy, %5
  br i1 %i.czz, label %.lr.ph466.i.i, label %.preheader247.i.i, !llvm.loop !534

.preheader245.i.i:                                ; preds = %bb.an, %.preheader247.i.i
  %.11669.lcssa.i.i = phi i32 [ %.01668.lcssa.i.i, %.preheader247.i.i ], [ %i.dax, %bb.an ] ; 2 uses
  %.55.lcssa.i.i = phi ptr [ %.54.lcssa.i.i, %.preheader247.i.i ], [ %i.daw, %bb.an ] ; 2 uses
  %i.daa = icmp slt i32 %.11669.lcssa.i.i, %5
  br i1 %i.daa, label %.lr.ph476.i.i, label %.loopexit.i34.i

.lr.ph476.i.i:                                    ; preds = %.preheader245.i.i
  %i.dab = sext i32 %i.cxd to i64
  br label %bb.ao

bb.an:                                            ; preds = %bb.an, %.lr.ph471.i.i
  %.55470.i.i = phi ptr [ %.54.lcssa.i.i, %.lr.ph471.i.i ], [ %i.daw, %bb.an ] ; 3 uses
  %.11669469.i.i = phi i32 [ %.01668.lcssa.i.i, %.lr.ph471.i.i ], [ %i.dax, %bb.an ] ; 2 uses
  %i.dac = add nsw i32 %.11669469.i.i, %4         ; 2 uses
  %i.dad = add nsw i32 %i.dac, 1
  %i.dae = insertelement <2 x i32> poison, i32 %i.dac, i64 0
  %i.daf = insertelement <2 x i32> %i.dae, i32 %i.dad, i64 1
  %.frozen841 = freeze <2 x i32> %i.daf           ; 2 uses
  %i.dag = sdiv <2 x i32> %.frozen841, %i.cjt     ; 2 uses
  %70 = sext <2 x i32> %i.dag to <2 x i64>
  %71 = mul <2 x i64> %i.cjx, %70                 ; 2 uses
  %72 = mul <2 x i32> %i.dag, %i.cjt
  %.decomposed862 = sub <2 x i32> %.frozen841, %72 ; 3 uses
  %i.dah = srem <2 x i32> %.decomposed862, %i.cjv ; 2 uses
  %73 = shufflevector <2 x i32> %i.dah, <2 x i32> %.decomposed862, <2 x i32> <i32 0, i32 2>
  %74 = sdiv <2 x i32> %73, %i.cjp
  %75 = mul <2 x i32> %74, %i.cjr
  %76 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %75)
  %i.dai = sext i32 %76 to i64
  %77 = shufflevector <2 x i32> %i.dah, <2 x i32> %.decomposed862, <2 x i32> <i32 1, i32 3>
  %78 = sdiv <2 x i32> %77, %i.cjp
  %79 = mul <2 x i32> %78, %i.cjr
  %80 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %79)
  %i.daj = sext i32 %80 to i64
  %i.dak = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.dal = extractelement <2 x i64> %71, i64 0
  %i.dam = getelementptr i8, ptr %i.dak, i64 %i.dal
  %i.dan = getelementptr i8, ptr %i.dam, i64 %i.cxg
  %i.dao = getelementptr i8, ptr %i.dan, i64 %i.dai
  %i.dap = extractelement <2 x i64> %71, i64 1
  %i.daq = getelementptr i8, ptr %i.dak, i64 %i.dap
  %i.dar = getelementptr i8, ptr %i.daq, i64 %i.cxg
  %i.das = getelementptr i8, ptr %i.dar, i64 %i.daj
  %i.dat = load i8, ptr %i.dao, align 1, !tbaa !30
  store i8 %i.dat, ptr %.55470.i.i, align 1, !tbaa !30
  %i.dau = load i8, ptr %i.das, align 1, !tbaa !30
  %i.dav = getelementptr inbounds nuw i8, ptr %.55470.i.i, i64 1
  store i8 %i.dau, ptr %i.dav, align 1, !tbaa !30
  %i.daw = getelementptr inbounds nuw i8, ptr %.55470.i.i, i64 2 ; 2 uses
  %i.dax = add nuw nsw i32 %.11669469.i.i, 2      ; 3 uses
  %i.day = or disjoint i32 %i.dax, 1
  %i.daz = icmp slt i32 %i.day, %5
  br i1 %i.daz, label %bb.an, label %.preheader245.i.i, !llvm.loop !535

bb.ao:                                            ; preds = %bb.ao, %.lr.ph476.i.i
  %.56475.i.i = phi ptr [ %.55.lcssa.i.i, %.lr.ph476.i.i ], [ %i.dbr, %bb.ao ] ; 2 uses
  %.21670474.i.i = phi i32 [ %.11669.lcssa.i.i, %.lr.ph476.i.i ], [ %i.dbs, %bb.ao ] ; 2 uses
  %i.dba = add nsw i32 %.21670474.i.i, %4         ; 2 uses
  %i.dbb = sdiv i32 %i.dba, %i.ahb
  %i.dbc = srem i32 %i.dba, %i.ahb                ; 2 uses
  %i.dbd = sext i32 %i.dbb to i64
  %i.dbe = mul i64 %i.l, %i.dbd
  %i.dbf = srem i32 %i.dbc, %6
  %i.dbg = insertelement <2 x i32> poison, i32 %i.dbf, i64 0
  %i.dbh = insertelement <2 x i32> %i.dbg, i32 %i.dbc, i64 1
  %i.dbi = sdiv <2 x i32> %i.dbh, %i.cjy
  %i.dbj = mul <2 x i32> %i.dbi, %i.cka
  %i.dbk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dbj)
  %i.dbl = sext i32 %i.dbk to i64
  %i.dbm = load ptr, ptr %0, align 8, !tbaa !28
  %i.dbn = getelementptr i8, ptr %i.dbm, i64 %i.dbe
  %i.dbo = getelementptr i8, ptr %i.dbn, i64 %i.dab
  %i.dbp = getelementptr i8, ptr %i.dbo, i64 %i.dbl
  %i.dbq = load i8, ptr %i.dbp, align 1, !tbaa !30
  store i8 %i.dbq, ptr %.56475.i.i, align 1, !tbaa !30
  %i.dbr = getelementptr inbounds nuw i8, ptr %.56475.i.i, i64 1 ; 2 uses
  %i.dbs = add nuw nsw i32 %.21670474.i.i, 1      ; 2 uses
  %exitcond585.not.i.i = icmp eq i32 %i.dbs, %5
  br i1 %exitcond585.not.i.i, label %.loopexit.i34.i, label %bb.ao, !llvm.loop !536

.loopexit246.i.i:                                 ; preds = %bb.am
  br i1 %brmerge507.i.i, label %.loopexit.i34.i, label %.lr.ph480.i.i

.lr.ph480.i.i:                                    ; preds = %.loopexit246.i.i
  %i.dbt = sext i32 %i.cxd to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph480.i.i
  %.58479.i.i = phi ptr [ %.53483.i.i, %.lr.ph480.i.i ], [ %i.dcr, %bb.ap ] ; 2 uses
  %.01639478.i.i = phi i32 [ 0, %.lr.ph480.i.i ], [ %i.dcs, %bb.ap ] ; 2 uses
  %i.dbu = add nsw i32 %.01639478.i.i, %i.cjo     ; 2 uses
  %i.dbv = sdiv i32 %i.dbu, %i.ahb
  %i.dbw = srem i32 %i.dbu, %i.ahb                ; 2 uses
  %i.dbx = sext i32 %i.dbv to i64
  %i.dby = mul i64 %i.l, %i.dbx
  %i.dbz = add i64 %i.dby, %i.dbt
  %i.dca = srem i32 %i.dbw, %6
  %i.dcb = insertelement <2 x i32> poison, i32 %i.dca, i64 0
  %i.dcc = insertelement <2 x i32> %i.dcb, i32 %i.dbw, i64 1
  %i.dcd = sdiv <2 x i32> %i.dcc, %30
  %i.dce = mul <2 x i32> %i.dcd, %32
  %i.dcf = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dce)
  %i.dcg = sext i32 %i.dcf to i64
  %i.dch = add i64 %i.dbz, %i.dcg
  %i.dci = shl i64 %i.dch, 3
  %i.dcj = load ptr, ptr %0, align 8, !tbaa !28
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dcj, i64 %i.dci
  %i.dcl = load i64, ptr %i.dck, align 1, !tbaa !30
  %i.dcm = insertelement <2 x i64> poison, i64 %i.dcl, i64 0
  %i.dcn = bitcast <2 x i64> %i.dcm to <16 x i8>
  %i.dco = add <16 x i8> %i.dcn, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.dcp = bitcast <16 x i8> %i.dco to <2 x i64>
  %i.dcq = extractelement <2 x i64> %i.dcp, i64 0
  store i64 %i.dcq, ptr %.58479.i.i, align 1, !tbaa !30
  %i.dcr = getelementptr inbounds nuw i8, ptr %.58479.i.i, i64 8 ; 2 uses
  %i.dcs = add nuw nsw i32 %.01639478.i.i, 1      ; 2 uses
  %exitcond586.not.i.i = icmp eq i32 %i.dcs, %i.cjm
  br i1 %exitcond586.not.i.i, label %.loopexit.i34.i, label %bb.ap, !llvm.loop !537

.loopexit.i34.i:                                  ; preds = %bb.ap, %bb.ao, %.loopexit246.i.i, %.preheader245.i.i
  %.59.i.i = phi ptr [ %.53483.i.i, %.loopexit246.i.i ], [ %i.dbr, %bb.ao ], [ %.55.lcssa.i.i, %.preheader245.i.i ], [ %i.dcr, %bb.ap ]
  %i.dct = add nuw nsw i32 %.41644482.i.i, 1      ; 2 uses
  %exitcond587.not.i.i = icmp eq i32 %i.dct, %3
  br i1 %exitcond587.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.am, !llvm.loop !538

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i34.i, %.loopexit.i.i, %.preheader166.i.i, %.preheader249.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrl.d.512(<16 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) #12

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn36conv3x3s1_winograd23_int8_avx512vnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !10
  %i.p = add nsw <2 x i32> %i.o, splat (i32 1)
  %i.q = sdiv <2 x i32> %i.p, splat (i32 2)       ; 2 uses
  %shift = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.q
  %i.r = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.r, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.aa = add i32 %i.r, -1
  %i.ab = mul nsw i32 %i.v, %i.t                  ; 3 uses
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !10
  %i.ac = mul nsw i32 %i.z, %i.x                  ; 3 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !10
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %i.ab, i32 noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !10  ; 3 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ac, i64 1
  %i.ah = add <2 x i32> %i.ag, splat (i32 -1)
  %i.ai = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ae, i64 1 ; 2 uses
  %i.ak = add <2 x i32> %i.ah, %i.aj
  %i.al = sdiv <2 x i32> %i.ak, %i.aj             ; 2 uses
  %i.am = extractelement <2 x i32> %i.al, i64 0
  store i32 %i.am, ptr %i.j, align 4, !tbaa !10
  %i.an = load i32, ptr %i.h, align 4, !tbaa !10  ; 4 uses
  %i.ao = add i32 %i.aa, %i.an
  %i.ap = sdiv i32 %i.ao, %i.an                   ; 2 uses
  %i.aq = extractelement <2 x i32> %i.al, i64 1   ; 3 uses
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.ar = mul nsw i32 %i.ae, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ar, i32 noundef 16, i32 noundef %i.aq, i32 noundef %i.ap, i64 noundef 2, ptr noundef %i.at)
  %i.bb = load ptr, ptr %5, align 8, !tbaa !28
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit167.i

_ZNK4ncnn3Mat5emptyEv.exit167.i:                  ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bf = load i32, ptr %i.bd, align 8, !tbaa !18
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.be, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit167.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.bj = mul nsw i32 %i.aq, %i.ap                ; 2 uses
  store i32 %i.bj, ptr %i.l, align 4, !tbaa !10
  %i.bk = icmp sgt i32 %3, 1
  %i.bl = icmp slt i32 %i.bj, %3
  %or.cond.i = select i1 %i.bk, i1 %i.bl, i1 false
  %i.bm = shl nsw i32 %i.an, 4
  %i.bn = mul nsw i32 %i.ae, %i.bm                ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.bn, i64 noundef 2, ptr noundef %i.bo)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.c
  %i.bt = load ptr, ptr %6, align 8, !tbaa !28
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit166.i

_ZNK4ncnn3Mat5emptyEv.exit166.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !19
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit166.i
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !10
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %.noexc.i

bb.d:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
end_hunk_1
