Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.aum = sdiv <2 x i32> %i.aul, %i.alo
  %i.aun = mul <2 x i32> %i.aum, %i.alq
  %i.auo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aun)
  %i.aup = sext i32 %i.auo to i64
  %i.auq = load ptr, ptr %0, align 8, !tbaa !28
  %i.aur = getelementptr i8, ptr %i.auq, i64 %i.aui
  %i.aus = getelementptr i8, ptr %i.aur, i64 %i.ass
  %i.aut = getelementptr i8, ptr %i.aus, i64 %i.aup
  %i.auu = load <2 x i64>, ptr %i.aut, align 1, !tbaa !30
  store <2 x i64> %i.auu, ptr %.3328.i.i, align 16, !tbaa !30
  %i.auv = getelementptr inbounds nuw i8, ptr %.3328.i.i, i64 16 ; 2 uses
  %i.auw = add nuw nsw i32 %.21647327.i.i, 1      ; 2 uses
  %exitcond571.not.i.i = icmp eq i32 %i.auw, %5
  br i1 %exitcond571.not.i.i, label %.loopexit290.i.i, label %bb.m, !llvm.loop !500

.loopexit292.i.i:                                 ; preds = %bb.j
  br i1 %brmerge488.i.i, label %.loopexit290.i.i, label %.lr.ph333.i.i

.lr.ph333.i.i:                                    ; preds = %.loopexit292.i.i
  %i.aux = sext i32 %i.apc to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph333.i.i
  %.5332.i.i = phi ptr [ %.0336.i.i, %.lr.ph333.i.i ], [ %i.awb, %bb.n ] ; 3 uses
  %.01648331.i.i = phi i32 [ 0, %.lr.ph333.i.i ], [ %i.awc, %bb.n ] ; 2 uses
  %i.auy = add nsw i32 %.01648331.i.i, %i.akn     ; 2 uses
  %i.auz = srem i32 %i.auy, %i.ahb                ; 2 uses
  %i.ava = insertelement <2 x i32> poison, i32 %i.auy, i64 0
  %i.avb = insertelement <2 x i32> %i.ava, i32 %i.auz, i64 1
  %i.avc = sdiv <2 x i32> %i.avb, %i.ale          ; 2 uses
  %i.avd = srem i32 %i.auz, %6
  %i.ave = extractelement <2 x i32> %i.avc, i64 0
  %i.avf = sext i32 %i.ave to i64
  %i.avg = mul i64 %i.l, %i.avf
  %i.avh = add i64 %i.avg, %i.aux
  %i.avi = extractelement <2 x i32> %i.avc, i64 1
  %i.avj = mul i32 %i.avi, %.scalar588.i.i
  %i.avk = mul nsw i32 %i.avd, %8
  %i.avl = add nsw i32 %i.avk, %i.avj
  %i.avm = sext i32 %i.avl to i64
  %i.avn = add i64 %i.avh, %i.avm
  %i.avo = shl i64 %i.avn, 3
  %i.avp = load ptr, ptr %0, align 8, !tbaa !28
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 %i.avo ; 2 uses
  %i.avr = load <16 x i32>, ptr %i.avq, align 1, !tbaa !30 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avq, i64 64
  %i.avt = load <16 x i32>, ptr %i.avs, align 1, !tbaa !30 ; 2 uses
  %i.avu = shufflevector <16 x i32> %i.avr, <16 x i32> %i.avt, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.avv = shufflevector <16 x i32> %i.avr, <16 x i32> %i.avt, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.avw = bitcast <16 x i32> %i.avu to <64 x i8>
  %i.avx = add <64 x i8> %i.avw, splat (i8 127)
  %i.avy = bitcast <16 x i32> %i.avv to <64 x i8>
  %i.avz = add <64 x i8> %i.avy, splat (i8 127)
  store <64 x i8> %i.avx, ptr %.5332.i.i, align 1, !tbaa !30
  %i.awa = getelementptr inbounds nuw i8, ptr %.5332.i.i, i64 64
  store <64 x i8> %i.avz, ptr %i.awa, align 1, !tbaa !30
  %i.awb = getelementptr inbounds nuw i8, ptr %.5332.i.i, i64 128 ; 2 uses
  %i.awc = add nuw nsw i32 %.01648331.i.i, 1      ; 2 uses
  %exitcond572.not.i.i = icmp eq i32 %i.awc, %i.akl
  br i1 %exitcond572.not.i.i, label %.loopexit290.i.i, label %bb.n, !llvm.loop !501

bb.o:                                             ; preds = %bb.i
  br i1 %i.ajr, label %.preheader300.i.i, label %.loopexit298.i.i

.preheader300.i.i:                                ; preds = %bb.o
  br i1 %i.ajs, label %.lr.ph.i40.i, label %.preheader299.i.i

.preheader299.i.i:                                ; preds = %.lr.ph.i40.i, %.preheader300.i.i
  %.01649.lcssa.i.i = phi i32 [ 0, %.preheader300.i.i ], [ %i.azl, %.lr.ph.i40.i ] ; 3 uses
  %.7.lcssa.i38.i = phi ptr [ %.0336.i.i, %.preheader300.i.i ], [ %i.azk, %.lr.ph.i40.i ] ; 2 uses
  %i.awd = or disjoint i32 %.01649.lcssa.i.i, 1
  %i.awe = icmp slt i32 %i.awd, %5
  br i1 %i.awe, label %.lr.ph306.i.i, label %.preheader297.i.i

.lr.ph.i40.i:                                     ; preds = %.preheader300.i.i, %.lr.ph.i40.i
  %.7302.i.i = phi ptr [ %i.azk, %.lr.ph.i40.i ], [ %.0336.i.i, %.preheader300.i.i ] ; 5 uses
  %.01649301.i.i = phi i32 [ %i.azl, %.lr.ph.i40.i ], [ 0, %.preheader300.i.i ] ; 2 uses
  %i.awf = add nsw i32 %.01649301.i.i, %4
  %i.awg = insertelement <4 x i32> poison, i32 %i.awf, i64 0
  %i.awh = shufflevector <4 x i32> %i.awg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awi = add <4 x i32> %i.awh, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.awj = bitcast <4 x i32> %i.awi to <2 x i64>
  %i.awk = bitcast <4 x i32> %i.awi to <2 x i64>
  %i.awl = and <2 x i64> %i.awk, splat (i64 4294967295)
  %i.awm = mul nuw <2 x i64> %i.awl, %i.aju
  %i.awn = lshr <2 x i64> %i.awm, splat (i64 32)
  %i.awo = lshr <2 x i64> %i.awj, splat (i64 32)
  %i.awp = mul nuw <2 x i64> %i.awo, %i.aju
  %i.awq = bitcast <2 x i64> %i.awn to <8 x i16>
  %i.awr = bitcast <2 x i64> %i.awp to <8 x i16>
  %i.aws = shufflevector <8 x i16> %i.awq, <8 x i16> %i.awr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.awt = bitcast <8 x i16> %i.aws to <4 x i32>  ; 2 uses
  %i.awu = sub <4 x i32> %i.awi, %i.awt
  %i.awv = lshr <4 x i32> %i.awu, %i.ajv
  %i.aww = add <4 x i32> %i.awv, %i.awt
  %i.awx = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.aww, <4 x i32> %i.aio) ; 2 uses
  %i.awy = mul <4 x i32> %i.awx, %i.ajx
  %i.awz = sub <4 x i32> %i.awi, %i.awy           ; 4 uses
  %i.axa = bitcast <4 x i32> %i.awz to <2 x i64>
  %i.axb = bitcast <4 x i32> %i.awz to <2 x i64>
  %i.axc = and <2 x i64> %i.axb, splat (i64 4294967295)
  %i.axd = mul nuw <2 x i64> %i.axc, %i.ajz
  %i.axe = lshr <2 x i64> %i.axd, splat (i64 32)
  %i.axf = lshr <2 x i64> %i.axa, splat (i64 32)
  %i.axg = mul nuw <2 x i64> %i.axf, %i.ajz
  %i.axh = bitcast <2 x i64> %i.axe to <8 x i16>
  %i.axi = bitcast <2 x i64> %i.axg to <8 x i16>
  %i.axj = shufflevector <8 x i16> %i.axh, <8 x i16> %i.axi, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.axk = bitcast <8 x i16> %i.axj to <4 x i32>  ; 2 uses
  %i.axl = sub <4 x i32> %i.awz, %i.axk
  %i.axm = lshr <4 x i32> %i.axl, %i.aka
  %i.axn = add <4 x i32> %i.axm, %i.axk
  %i.axo = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.axn, <4 x i32> %i.ajg) ; 2 uses
  %i.axp = mul <4 x i32> %i.axo, %i.akc
  %i.axq = sub <4 x i32> %i.awz, %i.axp
  %i.axr = mul <4 x i32> %i.awx, %i.akf
  %i.axs = mul <4 x i32> %i.axq, %i.akh
  %i.axt = mul <4 x i32> %i.axo, %i.akj
  %i.axu = add <4 x i32> %i.axt, %i.axr
  %i.axv = add <4 x i32> %i.axu, %i.axs           ; 4 uses
  %i.axw = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.axx = add <16 x i32> %i.axw, %i.aoz
  %i.axy = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.axz = add <16 x i32> %i.axy, %i.aoz
  %i.aya = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ayb = add <16 x i32> %i.aya, %i.aoz
  %i.ayc = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ayd = add <16 x i32> %i.ayc, %i.aoz
  %i.aye = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.ayf = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aye, <16 x i32> %i.axx, <16 x i1> splat (i1 true), i32 1)
  %i.ayg = trunc <16 x i32> %i.ayf to <16 x i8>   ; 2 uses
  %i.ayh = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aye, <16 x i32> %i.axz, <16 x i1> splat (i1 true), i32 1)
  %i.ayi = trunc <16 x i32> %i.ayh to <16 x i8>   ; 2 uses
  %i.ayj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aye, <16 x i32> %i.ayb, <16 x i1> splat (i1 true), i32 1)
  %i.ayk = trunc <16 x i32> %i.ayj to <16 x i8>   ; 2 uses
  %i.ayl = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aye, <16 x i32> %i.ayd, <16 x i1> splat (i1 true), i32 1)
  %i.aym = trunc <16 x i32> %i.ayl to <16 x i8>   ; 2 uses
  %i.ayn = shufflevector <16 x i8> %i.ayg, <16 x i8> %i.ayi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ayo = shufflevector <16 x i8> %i.ayg, <16 x i8> %i.ayi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ayp = shufflevector <16 x i8> %i.ayk, <16 x i8> %i.aym, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ayq = shufflevector <16 x i8> %i.ayk, <16 x i8> %i.aym, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ayr = bitcast <16 x i8> %i.ayn to <8 x i16>  ; 2 uses
  %i.ays = bitcast <16 x i8> %i.ayp to <8 x i16>  ; 2 uses
  %i.ayt = shufflevector <8 x i16> %i.ayr, <8 x i16> %i.ays, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ayu = shufflevector <8 x i16> %i.ayr, <8 x i16> %i.ays, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ayv = bitcast <16 x i8> %i.ayo to <8 x i16>  ; 2 uses
  %i.ayw = bitcast <16 x i8> %i.ayq to <8 x i16>  ; 2 uses
  %i.ayx = shufflevector <8 x i16> %i.ayv, <8 x i16> %i.ayw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ayy = shufflevector <8 x i16> %i.ayv, <8 x i16> %i.ayw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ayz = bitcast <8 x i16> %i.ayt to <16 x i8>
  %i.aza = add <16 x i8> %i.ayz, splat (i8 127)
  %i.azb = bitcast <8 x i16> %i.ayu to <16 x i8>
  %i.azc = add <16 x i8> %i.azb, splat (i8 127)
  %i.azd = bitcast <8 x i16> %i.ayx to <16 x i8>
  %i.aze = add <16 x i8> %i.azd, splat (i8 127)
  %i.azf = bitcast <8 x i16> %i.ayy to <16 x i8>
  %i.azg = add <16 x i8> %i.azf, splat (i8 127)
  store <16 x i8> %i.aza, ptr %.7302.i.i, align 16, !tbaa !30
  %i.azh = getelementptr inbounds nuw i8, ptr %.7302.i.i, i64 16
  store <16 x i8> %i.azc, ptr %i.azh, align 16, !tbaa !30
  %i.azi = getelementptr inbounds nuw i8, ptr %.7302.i.i, i64 32
  store <16 x i8> %i.aze, ptr %i.azi, align 16, !tbaa !30
  %i.azj = getelementptr inbounds nuw i8, ptr %.7302.i.i, i64 48
  store <16 x i8> %i.azg, ptr %i.azj, align 16, !tbaa !30
  %i.azk = getelementptr inbounds nuw i8, ptr %.7302.i.i, i64 64 ; 2 uses
  %i.azl = add nuw nsw i32 %.01649301.i.i, 4      ; 3 uses
  %i.azm = or disjoint i32 %i.azl, 3
  %i.azn = icmp slt i32 %i.azm, %5
  br i1 %i.azn, label %.lr.ph.i40.i, label %.preheader299.i.i, !llvm.loop !502

.preheader297.i.i:                                ; preds = %.lr.ph306.i.i, %.preheader299.i.i
  %.11650.lcssa.i.i = phi i32 [ %.01649.lcssa.i.i, %.preheader299.i.i ], [ %i.bau, %.lr.ph306.i.i ] ; 2 uses
  %.8.lcssa.i.i = phi ptr [ %.7.lcssa.i38.i, %.preheader299.i.i ], [ %i.bat, %.lr.ph306.i.i ] ; 2 uses
  %i.azo = icmp slt i32 %.11650.lcssa.i.i, %5
  br i1 %i.azo, label %.lr.ph311.i.i, label %.loopexit290.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader299.i.i, %.lr.ph306.i.i
  %.8305.i.i = phi ptr [ %i.bat, %.lr.ph306.i.i ], [ %.7.lcssa.i38.i, %.preheader299.i.i ] ; 3 uses
  %.11650304.i.i = phi i32 [ %i.bau, %.lr.ph306.i.i ], [ %.01649.lcssa.i.i, %.preheader299.i.i ] ; 2 uses
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
  %12 = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <16 x i32> zeroinitializer
  %13 = shufflevector <2 x i32> %i.bac, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bah = add <16 x i32> %12, %13
  %i.bai = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.baj = add <16 x i32> %i.bah, %i.bai
  %i.bak = add <16 x i32> %i.baj, %i.aoz
  %i.bal = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bam = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bal, <16 x i32> %i.bag, <16 x i1> splat (i1 true), i32 1)
  %i.ban = trunc <16 x i32> %i.bam to <16 x i8>   ; 2 uses
  %i.bao = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bal, <16 x i32> %i.bak, <16 x i1> splat (i1 true), i32 1)
  %i.bap = trunc <16 x i32> %i.bao to <16 x i8>   ; 2 uses
  %i.baq = shufflevector <16 x i8> %i.ban, <16 x i8> %i.bap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bar = shufflevector <16 x i8> %i.ban, <16 x i8> %i.bap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.baq, ptr %.8305.i.i, align 16, !tbaa !30
  %i.bas = getelementptr inbounds nuw i8, ptr %.8305.i.i, i64 16
  store <16 x i8> %i.bar, ptr %i.bas, align 16, !tbaa !30
  %i.bat = getelementptr inbounds nuw i8, ptr %.8305.i.i, i64 32 ; 2 uses
  %i.bau = add nuw nsw i32 %.11650304.i.i, 2      ; 3 uses
  %i.bav = or disjoint i32 %i.bau, 1
  %i.baw = icmp slt i32 %i.bav, %5
  br i1 %i.baw, label %.lr.ph306.i.i, label %.preheader297.i.i, !llvm.loop !503

.lr.ph311.i.i:                                    ; preds = %.preheader297.i.i, %.lr.ph311.i.i
  %.9310.i.i = phi ptr [ %i.bbq, %.lr.ph311.i.i ], [ %.8.lcssa.i.i, %.preheader297.i.i ] ; 2 uses
  %.21651309.i.i = phi i32 [ %i.bbr, %.lr.ph311.i.i ], [ %.11650.lcssa.i.i, %.preheader297.i.i ] ; 2 uses
  %i.bax = add nsw i32 %.21651309.i.i, %4         ; 2 uses
  %i.bay = sdiv i32 %i.bax, %i.ahb
  %i.baz = srem i32 %i.bax, %i.ahb                ; 2 uses
  %i.bba = srem i32 %i.baz, %6
  %i.bbb = insertelement <2 x i32> poison, i32 %i.baz, i64 0
  %i.bbc = insertelement <2 x i32> %i.bbb, i32 %i.bba, i64 1
  %i.bbd = sdiv <2 x i32> %i.bbc, %i.ala
  %i.bbe = mul <2 x i32> %i.bbd, %i.alc           ; 2 uses
  %i.bbf = mul i32 %i.bay, %i.akd
  %i.bbg = extractelement <2 x i32> %i.bbe, i64 0
  %i.bbh = add i32 %i.bbg, %i.bbf
  %i.bbi = extractelement <2 x i32> %i.bbe, i64 1
  %i.bbj = add i32 %i.bbh, %i.bbi
  %i.bbk = insertelement <16 x i32> poison, i32 %i.bbj, i64 0
  %i.bbl = shufflevector <16 x i32> %i.bbk, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bbm = add <16 x i32> %i.bbl, %i.aoz
  %i.bbn = load ptr, ptr %0, align 8, !tbaa !28
  %i.bbo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bbn, <16 x i32> %i.bbm, <16 x i1> splat (i1 true), i32 1)
  %i.bbp = trunc <16 x i32> %i.bbo to <16 x i8>
  store <16 x i8> %i.bbp, ptr %.9310.i.i, align 16, !tbaa !30
  %i.bbq = getelementptr inbounds nuw i8, ptr %.9310.i.i, i64 16 ; 2 uses
  %i.bbr = add nuw nsw i32 %.21651309.i.i, 1      ; 2 uses
  %exitcond.not.i39.i = icmp eq i32 %i.bbr, %5
  br i1 %exitcond.not.i39.i, label %.loopexit290.i.i, label %.lr.ph311.i.i, !llvm.loop !504

.loopexit298.i.i:                                 ; preds = %bb.o
  br i1 %brmerge488.i.i, label %.loopexit290.i.i, label %.lr.ph315.i37.i

.lr.ph315.i37.i:                                  ; preds = %.loopexit298.i.i, %.lr.ph315.i37.i
  %.11314.i.i = phi ptr [ %i.bcx, %.lr.ph315.i37.i ], [ %.0336.i.i, %.loopexit298.i.i ] ; 3 uses
  %.01652313.i.i = phi i32 [ %i.bcy, %.lr.ph315.i37.i ], [ 0, %.loopexit298.i.i ] ; 2 uses
  %i.bbs = add nsw i32 %.01652313.i.i, %i.akn     ; 2 uses
  %i.bbt = sdiv i32 %i.bbs, %i.ahb
  %i.bbu = srem i32 %i.bbs, %i.ahb                ; 2 uses
  %i.bbv = srem i32 %i.bbu, %6
  %i.bbw = insertelement <2 x i32> poison, i32 %i.bbu, i64 0
  %i.bbx = insertelement <2 x i32> %i.bbw, i32 %i.bbv, i64 1
  %i.bby = sdiv <2 x i32> %i.bbx, %i.ako
  %i.bbz = mul <2 x i32> %i.bby, %i.akq           ; 2 uses
  %i.bca = mul i32 %i.bbt, %i.akd
  %i.bcb = extractelement <2 x i32> %i.bbz, i64 0
  %i.bcc = add i32 %i.bcb, %i.bca
  %i.bcd = extractelement <2 x i32> %i.bbz, i64 1
  %i.bce = add i32 %i.bcc, %i.bcd
  %i.bcf = insertelement <16 x i32> poison, i32 %i.bce, i64 0
  %i.bcg = shufflevector <16 x i32> %i.bcf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bch = add <16 x i32> %i.bcg, %i.aoz
  %i.bci = shl <16 x i32> %i.bch, splat (i32 3)   ; 2 uses
  %i.bcj = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bck = shufflevector <16 x i32> %i.bci, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcl = tail call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.bcj, <8 x i32> %i.bck, <8 x i1> splat (i1 true), i32 1)
  %i.bcm = shufflevector <16 x i32> %i.bci, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcn = tail call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.bcj, <8 x i32> %i.bcm, <8 x i1> splat (i1 true), i32 1)
  %i.bco = bitcast <8 x i64> %i.bcl to <16 x i32> ; 2 uses
  %i.bcp = bitcast <8 x i64> %i.bcn to <16 x i32> ; 2 uses
  %i.bcq = shufflevector <16 x i32> %i.bco, <16 x i32> %i.bcp, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bcr = shufflevector <16 x i32> %i.bco, <16 x i32> %i.bcp, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bcs = bitcast <16 x i32> %i.bcq to <64 x i8>
  %i.bct = add <64 x i8> %i.bcs, splat (i8 127)
  %i.bcu = bitcast <16 x i32> %i.bcr to <64 x i8>
  %i.bcv = add <64 x i8> %i.bcu, splat (i8 127)
  store <64 x i8> %i.bct, ptr %.11314.i.i, align 1, !tbaa !30
  %i.bcw = getelementptr inbounds nuw i8, ptr %.11314.i.i, i64 64
  store <64 x i8> %i.bcv, ptr %i.bcw, align 1, !tbaa !30
  %i.bcx = getelementptr inbounds nuw i8, ptr %.11314.i.i, i64 128 ; 2 uses
  %i.bcy = add nuw nsw i32 %.01652313.i.i, 1      ; 2 uses
  %exitcond570.not.i.i = icmp eq i32 %i.bcy, %i.akl
  br i1 %exitcond570.not.i.i, label %.loopexit290.i.i, label %.lr.ph315.i37.i, !llvm.loop !505

.loopexit290.i.i:                                 ; preds = %.lr.ph315.i37.i, %.lr.ph311.i.i, %bb.n, %bb.m, %.loopexit298.i.i, %.preheader297.i.i, %.loopexit292.i.i, %.preheader291.i.i
  %.12.i.i = phi ptr [ %.0336.i.i, %.loopexit298.i.i ], [ %.2.lcssa.i.i, %.preheader291.i.i ], [ %.0336.i.i, %.loopexit292.i.i ], [ %i.awb, %bb.n ], [ %i.auv, %bb.m ], [ %.8.lcssa.i.i, %.preheader297.i.i ], [ %i.bbq, %.lr.ph311.i.i ], [ %i.bcx, %.lr.ph315.i37.i ] ; 2 uses
  %i.bcz = add nuw nsw i32 %.01640335.i.i, 16     ; 3 uses
  %i.bda = or disjoint i32 %i.bcz, 15
  %i.bdb = icmp slt i32 %i.bda, %3
  br i1 %i.bdb, label %bb.i, label %.preheader288.i.i, !llvm.loop !506

.preheader275.i.i:                                ; preds = %.loopexit277.i.i, %.preheader288.i.i
  %.11641.lcssa.i.i = phi i32 [ %.01640.lcssa.i.i, %.preheader288.i.i ], [ %i.bsz, %.loopexit277.i.i ] ; 3 uses
  %.13.lcssa.i.i = phi ptr [ %.0.lcssa.i33.i, %.preheader288.i.i ], [ %.25.i.i, %.loopexit277.i.i ] ; 2 uses
  %i.bdc = or disjoint i32 %.11641.lcssa.i.i, 3
  %i.bdd = icmp slt i32 %i.bdc, %3
  br i1 %i.bdd, label %.lr.ph419.i.i, label %.preheader262.i.i

.lr.ph419.i.i:                                    ; preds = %.preheader275.i.i
  %i.bde = shufflevector <8 x i64> %i.ahs, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdf = and <2 x i64> %i.bde, splat (i64 4294967295) ; 2 uses
  %i.bdg = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdh = insertelement <4 x i32> poison, i32 %i.aha, i64 0
  %i.bdi = shufflevector <4 x i32> %i.bdh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdj = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.bdk = shufflevector <4 x i32> %i.bdj, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar593.i.i = mul i32 %i.agt, %11
  %i.bdl = insertelement <4 x i32> poison, i32 %.scalar593.i.i, i64 0
  %i.bdm = shufflevector <4 x i32> %i.bdl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdn = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.bdo = icmp sgt i32 %5, 3                     ; 2 uses
  %i.bdp = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdq = and <2 x i64> %i.bdp, splat (i64 4294967295) ; 4 uses
  %i.bdr = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bds = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.bdt = shufflevector <4 x i32> %i.bds, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdu = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bdv = and <2 x i64> %i.bdu, splat (i64 4294967295) ; 4 uses
  %i.bdw = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdx = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bdy = shufflevector <4 x i32> %i.bdx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdz = trunc i64 %i.l to i32                  ; 4 uses
  %i.bea = insertelement <4 x i32> poison, i32 %i.bdz, i64 0
  %i.beb = shufflevector <4 x i32> %i.bea, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bec = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bed = shufflevector <4 x i32> %i.bec, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar594.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.bee = insertelement <4 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bef = shufflevector <4 x i32> %i.bee, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.beg = icmp ne i32 %i.agv, 8
  %i.beh = sdiv i32 %5, 8                         ; 2 uses
  %i.bei = icmp slt i32 %5, 8
  %i.bej = sdiv i32 %4, 8                         ; 2 uses
  %brmerge500.i.i = or i1 %i.bei, %i.beg          ; 2 uses
  %i.bek = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.bel = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bem = insertelement <2 x i32> %i.bel, i32 %8, i64 1
  %i.ben = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0 ; 2 uses
  %i.beo = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bep = insertelement <2 x i32> %i.beo, i32 %8, i64 1 ; 2 uses
  %i.beq = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.ber = shufflevector <2 x i32> %i.beq, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bes = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bet = shufflevector <2 x i32> %i.bes, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.beu = insertelement <2 x i32> poison, i32 %i.bdz, i64 0
  %i.bev = shufflevector <2 x i32> %i.beu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bew = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.bex = insertelement <2 x i32> poison, i32 %.scalar594.i.i, i64 0
  %i.bey = insertelement <2 x i32> %i.bex, i32 %8, i64 1
  %i.bez = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bfa = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bfb = insertelement <2 x i32> %i.bfa, i32 %.scalar594.i.i, i64 1
  %i.bfc = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.bfd = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bfe = insertelement <2 x i32> %i.bfd, i32 %.scalar594.i.i, i64 1 ; 2 uses
  %i.bff = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bfg = shufflevector <2 x i32> %i.bff, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bfh = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bfi = shufflevector <2 x i32> %i.bfh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bfj = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bfk = shufflevector <2 x i64> %i.bfj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bfl = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bfm = insertelement <2 x i32> %i.bfl, i32 %6, i64 1
  br label %bb.w

bb.p:                                             ; preds = %.loopexit277.i.i, %.lr.ph378.i.i
  %.13377.i.i = phi ptr [ %.0.lcssa.i33.i, %.lr.ph378.i.i ], [ %.25.i.i, %.loopexit277.i.i ] ; 8 uses
  %.11641376.i.i = phi i32 [ %.01640.lcssa.i.i, %.lr.ph378.i.i ], [ %i.bsz, %.loopexit277.i.i ] ; 2 uses
  %i.bfn = add nsw i32 %.11641376.i.i, %2
  %i.bfo = insertelement <8 x i32> poison, i32 %i.bfn, i64 0
  %i.bfp = shufflevector <8 x i32> %i.bfo, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bfq = add <8 x i32> %i.bfp, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfr = bitcast <8 x i32> %i.bfq to <4 x i64>
  %i.bfs = bitcast <8 x i32> %i.bfq to <4 x i64>
  %i.bft = and <4 x i64> %i.bfs, splat (i64 4294967295)
  %i.bfu = mul nuw <4 x i64> %i.bft, %i.alu
  %i.bfv = lshr <4 x i64> %i.bfu, splat (i64 32)
  %i.bfw = lshr <4 x i64> %i.bfr, splat (i64 32)
  %i.bfx = mul nuw <4 x i64> %i.bfw, %i.alu
  %i.bfy = bitcast <4 x i64> %i.bfv to <16 x i16>
  %i.bfz = bitcast <4 x i64> %i.bfx to <16 x i16>
  %i.bga = shufflevector <16 x i16> %i.bfy, <16 x i16> %i.bfz, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.bgb = bitcast <16 x i16> %i.bga to <8 x i32> ; 2 uses
  %i.bgc = sub <8 x i32> %i.bfq, %i.bgb
  %i.bgd = lshr <8 x i32> %i.bgc, %i.alv
  %i.bge = add <8 x i32> %i.bgd, %i.bgb
  %i.bgf = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.bge, <4 x i32> %i.ahu) ; 2 uses
  %i.bgg = mul <8 x i32> %i.bgf, %i.alx
  %i.bgh = sub <8 x i32> %i.bfq, %i.bgg
  %i.bgi = mul <8 x i32> %i.bgh, %i.alz           ; 2 uses
  %i.bgj = mul <8 x i32> %i.bgf, %i.amb           ; 4 uses
  %i.bgk = add <8 x i32> %i.bgi, %i.bgj           ; 8 uses
  %shift579 = shufflevector <8 x i32> %i.bgj, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgl = icmp eq <8 x i32> %i.bgj, %shift579
  %i.bgm = extractelement <8 x i1> %i.bgl, i64 0
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.bkl = icmp slt i32 %i.bkk, %5
  br i1 %i.bkl, label %bb.s, label %.preheader278.i.i, !llvm.loop !508

bb.t:                                             ; preds = %bb.t, %.lr.ph370.i.i
  %.16369.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph370.i.i ], [ %i.bld, %bb.t ] ; 2 uses
  %.21655368.i.i = phi i32 [ %.11654.lcssa.i.i, %.lr.ph370.i.i ], [ %i.ble, %bb.t ] ; 2 uses
  %i.bkm = add nsw i32 %.21655368.i.i, %4         ; 2 uses
  %i.bkn = sdiv i32 %i.bkm, %i.ahb
  %i.bko = srem i32 %i.bkm, %i.ahb                ; 2 uses
  %i.bkp = sext i32 %i.bkn to i64
  %i.bkq = mul i64 %i.l, %i.bkp
  %i.bkr = srem i32 %i.bko, %6
  %i.bks = insertelement <2 x i32> poison, i32 %i.bkr, i64 0
  %i.bkt = insertelement <2 x i32> %i.bks, i32 %i.bko, i64 1
  %i.bku = sdiv <2 x i32> %i.bkt, %i.aoa
  %i.bkv = mul <2 x i32> %i.bku, %i.aoc
  %i.bkw = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bkv)
  %i.bkx = sext i32 %i.bkw to i64
  %i.bky = load ptr, ptr %0, align 8, !tbaa !28
  %i.bkz = getelementptr i8, ptr %i.bky, i64 %i.bkq
  %i.bla = getelementptr i8, ptr %i.bkz, i64 %i.biy
  %i.blb = getelementptr i8, ptr %i.bla, i64 %i.bkx
  %i.blc = load i64, ptr %i.blb, align 1, !tbaa !30
  store i64 %i.blc, ptr %.16369.i.i, align 1, !tbaa !30
  %i.bld = getelementptr inbounds nuw i8, ptr %.16369.i.i, i64 8 ; 2 uses
  %i.ble = add nuw nsw i32 %.21655368.i.i, 1      ; 2 uses
  %exitcond575.not.i.i = icmp eq i32 %i.ble, %5
  br i1 %exitcond575.not.i.i, label %.loopexit277.i.i, label %bb.t, !llvm.loop !509

.loopexit279.i.i:                                 ; preds = %bb.q
  br i1 %brmerge494.i.i, label %.loopexit277.i.i, label %.lr.ph374.i.i

.lr.ph374.i.i:                                    ; preds = %.loopexit279.i.i
  %i.blf = sext i32 %i.bgn to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph374.i.i
  %.18373.i.i = phi ptr [ %.13377.i.i, %.lr.ph374.i.i ], [ %i.bml, %bb.u ] ; 3 uses
  %.01656372.i.i = phi i32 [ 0, %.lr.ph374.i.i ], [ %i.bmm, %bb.u ] ; 2 uses
  %i.blg = add nsw i32 %.01656372.i.i, %i.amy     ; 2 uses
  %i.blh = sdiv i32 %i.blg, %i.ahb
  %i.bli = srem i32 %i.blg, %i.ahb                ; 2 uses
  %i.blj = sext i32 %i.blh to i64
  %i.blk = mul i64 %i.l, %i.blj
  %i.bll = add i64 %i.blk, %i.blf
  %i.blm = srem i32 %i.bli, %6
  %i.bln = insertelement <2 x i32> poison, i32 %i.blm, i64 0
  %i.blo = insertelement <2 x i32> %i.bln, i32 %i.bli, i64 1
  %i.blp = sdiv <2 x i32> %i.blo, %i.ano
  %i.blq = mul <2 x i32> %i.blp, %i.anq
  %i.blr = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.blq)
  %i.bls = sext i32 %i.blr to i64
  %i.blt = add i64 %i.bll, %i.bls
  %i.blu = shl i64 %i.blt, 3
  %i.blv = load ptr, ptr %0, align 8, !tbaa !28
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 %i.blu ; 2 uses
  %i.blx = load <8 x i32>, ptr %i.blw, align 1, !tbaa !30 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blw, i64 32
  %i.blz = load <8 x i32>, ptr %i.bly, align 1, !tbaa !30 ; 2 uses
  %i.bma = shufflevector <8 x i32> %i.blx, <8 x i32> %i.blz, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.bmb = bitcast <8 x i32> %i.bma to <4 x i64>
  %i.bmc = shufflevector <8 x i32> %i.blx, <8 x i32> %i.blz, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.bmd = bitcast <8 x i32> %i.bmc to <4 x i64>
  %i.bme = shufflevector <4 x i64> %i.bmb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bmf = shufflevector <4 x i64> %i.bmd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bmg = bitcast <4 x i64> %i.bme to <32 x i8>
  %i.bmh = add <32 x i8> %i.bmg, splat (i8 127)
  %i.bmi = bitcast <4 x i64> %i.bmf to <32 x i8>
  %i.bmj = add <32 x i8> %i.bmi, splat (i8 127)
  store <32 x i8> %i.bmh, ptr %.18373.i.i, align 1, !tbaa !30
  %i.bmk = getelementptr inbounds nuw i8, ptr %.18373.i.i, i64 32
  store <32 x i8> %i.bmj, ptr %i.bmk, align 1, !tbaa !30
  %i.bml = getelementptr inbounds nuw i8, ptr %.18373.i.i, i64 64 ; 2 uses
  %i.bmm = add nuw nsw i32 %.01656372.i.i, 1      ; 2 uses
  %exitcond576.not.i.i = icmp eq i32 %i.bmm, %i.amw
  br i1 %exitcond576.not.i.i, label %.loopexit277.i.i, label %bb.u, !llvm.loop !510

bb.v:                                             ; preds = %bb.p
  br i1 %i.amc, label %.preheader287.i.i, label %.loopexit285.i.i

.preheader287.i.i:                                ; preds = %bb.v
  br i1 %i.amd, label %.lr.ph342.i.i, label %.preheader286.i.i

.preheader286.i.i:                                ; preds = %.lr.ph342.i.i, %.preheader287.i.i
  %.01657.lcssa.i.i = phi i32 [ 0, %.preheader287.i.i ], [ %i.bph, %.lr.ph342.i.i ] ; 3 uses
  %.20.lcssa.i.i = phi ptr [ %.13377.i.i, %.preheader287.i.i ], [ %i.bpg, %.lr.ph342.i.i ] ; 2 uses
  %i.bmn = or disjoint i32 %.01657.lcssa.i.i, 1
  %i.bmo = icmp slt i32 %i.bmn, %5
  br i1 %i.bmo, label %.lr.ph347.i.i, label %.preheader284.i.i

.lr.ph342.i.i:                                    ; preds = %.preheader287.i.i, %.lr.ph342.i.i
  %.20341.i.i = phi ptr [ %i.bpg, %.lr.ph342.i.i ], [ %.13377.i.i, %.preheader287.i.i ] ; 3 uses
  %.01657340.i.i = phi i32 [ %i.bph, %.lr.ph342.i.i ], [ 0, %.preheader287.i.i ] ; 2 uses
  %i.bmp = add nsw i32 %.01657340.i.i, %4
  %i.bmq = insertelement <4 x i32> poison, i32 %i.bmp, i64 0
  %i.bmr = shufflevector <4 x i32> %i.bmq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bms = add <4 x i32> %i.bmr, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bmt = bitcast <4 x i32> %i.bms to <2 x i64>
  %i.bmu = bitcast <4 x i32> %i.bms to <2 x i64>
  %i.bmv = and <2 x i64> %i.bmu, splat (i64 4294967295)
  %i.bmw = mul nuw <2 x i64> %i.bmv, %i.amf
  %i.bmx = lshr <2 x i64> %i.bmw, splat (i64 32)
  %i.bmy = lshr <2 x i64> %i.bmt, splat (i64 32)
  %i.bmz = mul nuw <2 x i64> %i.bmy, %i.amf
  %i.bna = bitcast <2 x i64> %i.bmx to <8 x i16>
  %i.bnb = bitcast <2 x i64> %i.bmz to <8 x i16>
  %i.bnc = shufflevector <8 x i16> %i.bna, <8 x i16> %i.bnb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bnd = bitcast <8 x i16> %i.bnc to <4 x i32>  ; 2 uses
  %i.bne = sub <4 x i32> %i.bms, %i.bnd
  %i.bnf = lshr <4 x i32> %i.bne, %i.amg
  %i.bng = add <4 x i32> %i.bnf, %i.bnd
  %i.bnh = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bng, <4 x i32> %i.aio) ; 2 uses
  %i.bni = mul <4 x i32> %i.bnh, %i.ami
  %i.bnj = sub <4 x i32> %i.bms, %i.bni           ; 4 uses
  %i.bnk = bitcast <4 x i32> %i.bnj to <2 x i64>
  %i.bnl = bitcast <4 x i32> %i.bnj to <2 x i64>
  %i.bnm = and <2 x i64> %i.bnl, splat (i64 4294967295)
  %i.bnn = mul nuw <2 x i64> %i.bnm, %i.amk
  %i.bno = lshr <2 x i64> %i.bnn, splat (i64 32)
  %i.bnp = lshr <2 x i64> %i.bnk, splat (i64 32)
  %i.bnq = mul nuw <2 x i64> %i.bnp, %i.amk
  %i.bnr = bitcast <2 x i64> %i.bno to <8 x i16>
  %i.bns = bitcast <2 x i64> %i.bnq to <8 x i16>
  %i.bnt = shufflevector <8 x i16> %i.bnr, <8 x i16> %i.bns, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bnu = bitcast <8 x i16> %i.bnt to <4 x i32>  ; 2 uses
  %i.bnv = sub <4 x i32> %i.bnj, %i.bnu
  %i.bnw = lshr <4 x i32> %i.bnv, %i.aml
  %i.bnx = add <4 x i32> %i.bnw, %i.bnu
  %i.bny = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bnx, <4 x i32> %i.ajg) ; 2 uses
  %i.bnz = mul <4 x i32> %i.bny, %i.amn
  %i.boa = sub <4 x i32> %i.bnj, %i.bnz
  %i.bob = mul <4 x i32> %i.bnh, %i.amq
  %i.boc = mul <4 x i32> %i.boa, %i.ams
  %i.bod = mul <4 x i32> %i.bny, %i.amu
  %i.boe = add <4 x i32> %i.bod, %i.bob
  %i.bof = add <4 x i32> %i.boe, %i.boc           ; 4 uses
  %i.bog = shufflevector <4 x i32> %i.bof, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.boh = add <8 x i32> %i.bog, %i.bgk
  %i.boi = shufflevector <4 x i32> %i.bof, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.boj = add <8 x i32> %i.boi, %i.bgk
  %i.bok = shufflevector <4 x i32> %i.bof, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bol = add <8 x i32> %i.bok, %i.bgk
  %i.bom = shufflevector <4 x i32> %i.bof, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.bon = add <8 x i32> %i.bom, %i.bgk
  %i.boo = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.bop = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boo, <8 x i32> %i.boh, <8 x i32> splat (i32 -1), i8 1)
  %i.boq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boo, <8 x i32> %i.boj, <8 x i32> splat (i32 -1), i8 1)
  %i.bor = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boo, <8 x i32> %i.bol, <8 x i32> splat (i32 -1), i8 1)
  %i.bos = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boo, <8 x i32> %i.bon, <8 x i32> splat (i32 -1), i8 1)
  %i.bot = shufflevector <8 x i32> %i.bop, <8 x i32> %i.boq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bou = trunc <16 x i32> %i.bot to <16 x i8>
  %i.bov = shufflevector <8 x i32> %i.bor, <8 x i32> %i.bos, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bow = trunc <16 x i32> %i.bov to <16 x i8>
  %i.box = bitcast <16 x i8> %i.bou to <8 x i16>  ; 2 uses
  %i.boy = bitcast <16 x i8> %i.bow to <8 x i16>  ; 2 uses
  %i.boz = shufflevector <8 x i16> %i.box, <8 x i16> %i.boy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpa = shufflevector <8 x i16> %i.box, <8 x i16> %i.boy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpb = bitcast <8 x i16> %i.boz to <16 x i8>
  %i.bpc = add <16 x i8> %i.bpb, splat (i8 127)
  %i.bpd = bitcast <8 x i16> %i.bpa to <16 x i8>
  %i.bpe = add <16 x i8> %i.bpd, splat (i8 127)
  store <16 x i8> %i.bpc, ptr %.20341.i.i, align 1, !tbaa !30
  %i.bpf = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 16
  store <16 x i8> %i.bpe, ptr %i.bpf, align 1, !tbaa !30
  %i.bpg = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 32 ; 2 uses
  %i.bph = add nuw nsw i32 %.01657340.i.i, 4      ; 3 uses
  %i.bpi = or disjoint i32 %i.bph, 3
  %i.bpj = icmp slt i32 %i.bpi, %5
  br i1 %i.bpj, label %.lr.ph342.i.i, label %.preheader286.i.i, !llvm.loop !511

.preheader284.i.i:                                ; preds = %.lr.ph347.i.i, %.preheader286.i.i
  %.11658.lcssa.i.i = phi i32 [ %.01657.lcssa.i.i, %.preheader286.i.i ], [ %i.bqn, %.lr.ph347.i.i ] ; 2 uses
  %.21.lcssa.i35.i = phi ptr [ %.20.lcssa.i.i, %.preheader286.i.i ], [ %i.bqm, %.lr.ph347.i.i ] ; 2 uses
  %i.bpk = icmp slt i32 %.11658.lcssa.i.i, %5
  br i1 %i.bpk, label %.lr.ph352.i.i, label %.loopexit277.i.i

.lr.ph347.i.i:                                    ; preds = %.preheader286.i.i, %.lr.ph347.i.i
  %.21346.i.i = phi ptr [ %i.bqm, %.lr.ph347.i.i ], [ %.20.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %.11658345.i.i = phi i32 [ %i.bqn, %.lr.ph347.i.i ], [ %.01657.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %i.bpl = add nsw i32 %.11658345.i.i, %4         ; 2 uses
  %i.bpm = add nsw i32 %i.bpl, 1
  %i.bpn = insertelement <2 x i32> poison, i32 %i.bpl, i64 0
  %i.bpo = insertelement <2 x i32> %i.bpn, i32 %i.bpm, i64 1
  %.frozen827 = freeze <2 x i32> %i.bpo           ; 2 uses
  %i.bpp = sdiv <2 x i32> %.frozen827, %i.ang     ; 2 uses
  %i.bpq = mul <2 x i32> %i.bpp, %i.ang
  %.decomposed828 = sub <2 x i32> %.frozen827, %i.bpq ; 3 uses
  %i.bpr = srem <2 x i32> %.decomposed828, %i.ani ; 2 uses
  %i.bps = shufflevector <2 x i32> %i.bpr, <2 x i32> %.decomposed828, <2 x i32> <i32 2, i32 0>
  %i.bpt = sdiv <2 x i32> %i.bps, %i.anc
  %i.bpu = mul <2 x i32> %i.bpt, %i.ane           ; 2 uses
  %i.bpv = shufflevector <2 x i32> %i.bpr, <2 x i32> %.decomposed828, <2 x i32> <i32 3, i32 1>
  %i.bpw = sdiv <2 x i32> %i.bpv, %i.anc
  %i.bpx = mul <2 x i32> %i.bpw, %i.ane           ; 2 uses
  %i.bpy = mul <2 x i32> %i.bpp, %i.ank           ; 2 uses
  %foldExtExtBinop521 = add <2 x i32> %i.bpu, %i.bpy
  %i.bpz = shufflevector <2 x i32> %foldExtExtBinop521, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqa = shufflevector <2 x i32> %i.bpu, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqb = add <8 x i32> %i.bpz, %i.bqa
  %i.bqc = add <8 x i32> %i.bqb, %i.bgk
  %14 = shufflevector <2 x i32> %i.bpx, <2 x i32> poison, <8 x i32> zeroinitializer
  %15 = shufflevector <2 x i32> %i.bpy, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqd = add <8 x i32> %14, %15
  %i.bqe = shufflevector <2 x i32> %i.bpx, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqf = add <8 x i32> %i.bqd, %i.bqe
  %i.bqg = add <8 x i32> %i.bqf, %i.bgk
  %i.bqh = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bqi = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqh, <8 x i32> %i.bqc, <8 x i32> splat (i32 -1), i8 1)
  %i.bqj = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqh, <8 x i32> %i.bqg, <8 x i32> splat (i32 -1), i8 1)
  %i.bqk = shufflevector <8 x i32> %i.bqi, <8 x i32> %i.bqj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bql = trunc <16 x i32> %i.bqk to <16 x i8>
  store <16 x i8> %i.bql, ptr %.21346.i.i, align 1, !tbaa !30
  %i.bqm = getelementptr inbounds nuw i8, ptr %.21346.i.i, i64 16 ; 2 uses
  %i.bqn = add nuw nsw i32 %.11658345.i.i, 2      ; 3 uses
  %i.bqo = or disjoint i32 %i.bqn, 1
  %i.bqp = icmp slt i32 %i.bqo, %5
  br i1 %i.bqp, label %.lr.ph347.i.i, label %.preheader284.i.i, !llvm.loop !512

.lr.ph352.i.i:                                    ; preds = %.preheader284.i.i, %.lr.ph352.i.i
  %.22351.i.i = phi ptr [ %i.brm, %.lr.ph352.i.i ], [ %.21.lcssa.i35.i, %.preheader284.i.i ] ; 2 uses
  %.21659350.i.i = phi i32 [ %i.brn, %.lr.ph352.i.i ], [ %.11658.lcssa.i.i, %.preheader284.i.i ] ; 2 uses
  %i.bqq = add nsw i32 %.21659350.i.i, %4         ; 2 uses
  %i.bqr = sdiv i32 %i.bqq, %i.ahb
  %i.bqs = srem i32 %i.bqq, %i.ahb                ; 2 uses
  %i.bqt = srem i32 %i.bqs, %6
  %i.bqu = insertelement <2 x i32> poison, i32 %i.bqs, i64 0
  %i.bqv = insertelement <2 x i32> %i.bqu, i32 %i.bqt, i64 1
  %i.bqw = sdiv <2 x i32> %i.bqv, %i.anl
  %i.bqx = mul <2 x i32> %i.bqw, %i.ann           ; 2 uses
  %i.bqy = mul i32 %i.bqr, %i.amo
  %i.bqz = extractelement <2 x i32> %i.bqx, i64 0
  %i.bra = add i32 %i.bqz, %i.bqy
  %i.brb = extractelement <2 x i32> %i.bqx, i64 1
  %i.brc = add i32 %i.bra, %i.brb
  %i.brd = insertelement <8 x i32> poison, i32 %i.brc, i64 0
  %i.bre = shufflevector <8 x i32> %i.brd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.brf = add <8 x i32> %i.bre, %i.bgk
  %i.brg = load ptr, ptr %0, align 8, !tbaa !28
  %i.brh = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.brg, <8 x i32> %i.brf, <8 x i32> splat (i32 -1), i8 1)
  %i.bri = shufflevector <8 x i32> %i.brh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brj = trunc <16 x i32> %i.bri to <16 x i8>
  %i.brk = bitcast <16 x i8> %i.brj to <2 x i64>
  %i.brl = extractelement <2 x i64> %i.brk, i64 0
  store i64 %i.brl, ptr %.22351.i.i, align 1, !tbaa !30
  %i.brm = getelementptr inbounds nuw i8, ptr %.22351.i.i, i64 8 ; 2 uses
  %i.brn = add nuw nsw i32 %.21659350.i.i, 1      ; 2 uses
  %exitcond573.not.i.i = icmp eq i32 %i.brn, %5
  br i1 %exitcond573.not.i.i, label %.loopexit277.i.i, label %.lr.ph352.i.i, !llvm.loop !513

.loopexit285.i.i:                                 ; preds = %bb.v
  br i1 %brmerge494.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i

.lr.ph356.i.i:                                    ; preds = %.loopexit285.i.i, %.lr.ph356.i.i
  %.24355.i.i = phi ptr [ %i.bsx, %.lr.ph356.i.i ], [ %.13377.i.i, %.loopexit285.i.i ] ; 3 uses
  %.01660354.i.i = phi i32 [ %i.bsy, %.lr.ph356.i.i ], [ 0, %.loopexit285.i.i ] ; 2 uses
  %i.bro = add nsw i32 %.01660354.i.i, %i.amy     ; 2 uses
  %i.brp = sdiv i32 %i.bro, %i.ahb
  %i.brq = srem i32 %i.bro, %i.ahb                ; 2 uses
  %i.brr = srem i32 %i.brq, %6
  %i.brs = insertelement <2 x i32> poison, i32 %i.brq, i64 0
  %i.brt = insertelement <2 x i32> %i.brs, i32 %i.brr, i64 1
  %i.bru = sdiv <2 x i32> %i.brt, %i.amz
  %i.brv = mul <2 x i32> %i.bru, %i.anb           ; 2 uses
  %i.brw = mul i32 %i.brp, %i.amo
  %i.brx = extractelement <2 x i32> %i.brv, i64 0
  %i.bry = add i32 %i.brx, %i.brw
  %i.brz = extractelement <2 x i32> %i.brv, i64 1
  %i.bsa = add i32 %i.bry, %i.brz
  %i.bsb = insertelement <8 x i32> poison, i32 %i.bsa, i64 0
  %i.bsc = shufflevector <8 x i32> %i.bsb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsd = add <8 x i32> %i.bsc, %i.bgk
  %i.bse = shl <8 x i32> %i.bsd, splat (i32 3)    ; 2 uses
  %i.bsf = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bsg = shufflevector <8 x i32> %i.bse, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsh = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsf, <4 x i32> %i.bsg, <4 x i64> splat (i64 -1), i8 1)
  %i.bsi = shufflevector <8 x i32> %i.bse, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsj = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsf, <4 x i32> %i.bsi, <4 x i64> splat (i64 -1), i8 1)
  %i.bsk = bitcast <4 x i64> %i.bsh to <8 x i32>  ; 2 uses
  %i.bsl = bitcast <4 x i64> %i.bsj to <8 x i32>  ; 2 uses
  %i.bsm = shufflevector <8 x i32> %i.bsk, <8 x i32> %i.bsl, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.bsn = bitcast <8 x i32> %i.bsm to <4 x i64>
  %i.bso = shufflevector <8 x i32> %i.bsk, <8 x i32> %i.bsl, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.bsp = bitcast <8 x i32> %i.bso to <4 x i64>
  %i.bsq = shufflevector <4 x i64> %i.bsn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsr = shufflevector <4 x i64> %i.bsp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bss = bitcast <4 x i64> %i.bsq to <32 x i8>
  %i.bst = add <32 x i8> %i.bss, splat (i8 127)
  %i.bsu = bitcast <4 x i64> %i.bsr to <32 x i8>
  %i.bsv = add <32 x i8> %i.bsu, splat (i8 127)
  store <32 x i8> %i.bst, ptr %.24355.i.i, align 1, !tbaa !30
  %i.bsw = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 32
  store <32 x i8> %i.bsv, ptr %i.bsw, align 1, !tbaa !30
  %i.bsx = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 64 ; 2 uses
  %i.bsy = add nuw nsw i32 %.01660354.i.i, 1      ; 2 uses
  %exitcond574.not.i.i = icmp eq i32 %i.bsy, %i.amw
  br i1 %exitcond574.not.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i, !llvm.loop !514

.loopexit277.i.i:                                 ; preds = %.lr.ph356.i.i, %.lr.ph352.i.i, %bb.u, %bb.t, %.loopexit285.i.i, %.preheader284.i.i, %.loopexit279.i.i, %.preheader278.i.i
  %.25.i.i = phi ptr [ %.13377.i.i, %.loopexit285.i.i ], [ %.15.lcssa.i.i, %.preheader278.i.i ], [ %.13377.i.i, %.loopexit279.i.i ], [ %i.bml, %bb.u ], [ %i.bld, %bb.t ], [ %.21.lcssa.i35.i, %.preheader284.i.i ], [ %i.brm, %.lr.ph352.i.i ], [ %i.bsx, %.lr.ph356.i.i ] ; 2 uses
  %i.bsz = add nuw nsw i32 %.11641376.i.i, 8      ; 3 uses
  %i.bta = or disjoint i32 %i.bsz, 7
  %i.btb = icmp slt i32 %i.bta, %3
  br i1 %i.btb, label %bb.p, label %.preheader275.i.i, !llvm.loop !515

.preheader262.i.i:                                ; preds = %.loopexit264.i.i, %.preheader275.i.i
  %.21642.lcssa.i.i = phi i32 [ %.11641.lcssa.i.i, %.preheader275.i.i ], [ %i.cit, %.loopexit264.i.i ] ; 3 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader275.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 2 uses
  %i.btc = or disjoint i32 %.21642.lcssa.i.i, 1
  %i.btd = icmp slt i32 %i.btc, %3
  br i1 %i.btd, label %.lr.ph461.i.i, label %.preheader249.i.i

.lr.ph461.i.i:                                    ; preds = %.preheader262.i.i
  %i.bte = mul i32 %i.agt, %11
  %i.btf = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.btg = icmp sgt i32 %5, 3                     ; 2 uses
  %i.bth = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bti = and <2 x i64> %i.bth, splat (i64 4294967295) ; 4 uses
  %i.btj = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btk = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.btl = shufflevector <4 x i32> %i.btk, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btm = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btn = and <2 x i64> %i.btm, splat (i64 4294967295) ; 4 uses
  %i.bto = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btp = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.btq = shufflevector <4 x i32> %i.btp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btr = trunc i64 %i.l to i32                  ; 2 uses
  %i.bts = insertelement <4 x i32> poison, i32 %i.btr, i64 0
  %i.btt = shufflevector <4 x i32> %i.bts, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btu = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.btv = shufflevector <4 x i32> %i.btu, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar596.i.i = mul i32 %i.agt, %9            ; 8 uses
  %i.btw = insertelement <4 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.btx = shufflevector <4 x i32> %i.btw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bty = icmp eq i32 %i.agv, 8
  %i.btz = sdiv i32 %5, 8                         ; 2 uses
  %i.bua = sdiv i32 %4, 8                         ; 2 uses
  %i.bub = icmp sgt i32 %5, 7
  %or.cond504.i.i = and i1 %i.bub, %i.bty         ; 2 uses
  %i.buc = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.bud = shufflevector <2 x i32> %i.buc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bue = insertelement <2 x i32> poison, i32 %i.aha, i64 0
  %i.buf = shufflevector <2 x i32> %i.bue, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bug = insertelement <2 x i32> poison, i32 %i.bte, i64 0
  %i.buh = shufflevector <2 x i32> %i.bug, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bui = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.buj = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.buk = insertelement <2 x i32> %i.buj, i32 %.scalar596.i.i, i64 1
  %i.bul = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bum = shufflevector <2 x i32> %i.bul, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bun = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.buo = shufflevector <2 x i32> %i.bun, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bup = insertelement <2 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.buq = shufflevector <2 x i32> %i.bup, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bur = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bus = shufflevector <2 x i32> %i.bur, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.but = insertelement <2 x i32> poison, i32 %i.btr, i64 0
  %i.buu = shufflevector <2 x i32> %i.but, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buv = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.buw = insertelement <2 x i32> %i.buv, i32 %6, i64 1
  %i.bux = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.buy = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.buz = insertelement <2 x i32> %i.buy, i32 %.scalar596.i.i, i64 1
  %i.bva = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvb = shufflevector <2 x i32> %i.bva, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bvc = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bvd = shufflevector <2 x i32> %i.bvc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bve = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bvf = shufflevector <2 x i64> %i.bve, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bvg = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvh = insertelement <2 x i32> %i.bvg, i32 %6, i64 1
  br label %bb.ad

bb.w:                                             ; preds = %.loopexit264.i.i, %.lr.ph419.i.i
  %.26418.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph419.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 8 uses
  %.21642417.i.i = phi i32 [ %.11641.lcssa.i.i, %.lr.ph419.i.i ], [ %i.cit, %.loopexit264.i.i ] ; 2 uses
  %i.bvi = add nsw i32 %.21642417.i.i, %2
  %i.bvj = insertelement <4 x i32> poison, i32 %i.bvi, i64 0
  %i.bvk = shufflevector <4 x i32> %i.bvj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bvl = add <4 x i32> %i.bvk, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bvm = bitcast <4 x i32> %i.bvl to <2 x i64>
  %i.bvn = bitcast <4 x i32> %i.bvl to <2 x i64>
  %i.bvo = and <2 x i64> %i.bvn, splat (i64 4294967295)
  %i.bvp = mul nuw <2 x i64> %i.bvo, %i.bdf
  %i.bvq = lshr <2 x i64> %i.bvp, splat (i64 32)
  %i.bvr = lshr <2 x i64> %i.bvm, splat (i64 32)
  %i.bvs = mul nuw <2 x i64> %i.bvr, %i.bdf
  %i.bvt = bitcast <2 x i64> %i.bvq to <8 x i16>
  %i.bvu = bitcast <2 x i64> %i.bvs to <8 x i16>
  %i.bvv = shufflevector <8 x i16> %i.bvt, <8 x i16> %i.bvu, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bvw = bitcast <8 x i16> %i.bvv to <4 x i32>  ; 2 uses
  %i.bvx = sub <4 x i32> %i.bvl, %i.bvw
  %i.bvy = lshr <4 x i32> %i.bvx, %i.bdg
  %i.bvz = add <4 x i32> %i.bvy, %i.bvw
  %i.bwa = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bvz, <4 x i32> %i.ahu) ; 2 uses
  %i.bwb = mul <4 x i32> %i.bwa, %i.bdi
  %i.bwc = sub <4 x i32> %i.bvl, %i.bwb
  %i.bwd = mul <4 x i32> %i.bwc, %i.bdk           ; 2 uses
  %i.bwe = mul <4 x i32> %i.bwa, %i.bdm           ; 4 uses
  %i.bwf = add <4 x i32> %i.bwd, %i.bwe           ; 8 uses
  %shift578 = shufflevector <4 x i32> %i.bwe, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bwg = icmp eq <4 x i32> %i.bwe, %shift578
  %i.bwh = extractelement <4 x i1> %i.bwg, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.bwh
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

end_hunk_1
begin_hunk_2_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.cak = srem i32 %i.cag, %6
  %i.cal = extractelement <2 x i32> %i.caj, i64 0
  %i.cam = sext i32 %i.cal to i64
  %i.can = mul i64 %i.l, %i.cam
  %i.cao = add i64 %i.can, %i.byp
  %i.cap = extractelement <2 x i32> %i.caj, i64 1
  %i.caq = mul i32 %i.cap, %.scalar594.i.i
  %i.car = mul nsw i32 %i.cak, %8
  %i.cas = add nsw i32 %i.car, %i.caq
  %i.cat = sext i32 %i.cas to i64
  %i.cau = add i64 %i.cao, %i.cat                 ; 4 uses
  %i.cav = load ptr, ptr %0, align 8, !tbaa !28
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 %i.cau
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !30
  store i8 %i.cax, ptr %.29410.i.i, align 1, !tbaa !30
  %i.cay = load ptr, ptr %0, align 8, !tbaa !28
  %i.caz = getelementptr i8, ptr %i.cay, i64 %i.cau
  %i.cba = getelementptr i8, ptr %i.caz, i64 1
  %i.cbb = load i8, ptr %i.cba, align 1, !tbaa !30
  %i.cbc = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 1
  store i8 %i.cbb, ptr %i.cbc, align 1, !tbaa !30
  %i.cbd = load ptr, ptr %0, align 8, !tbaa !28
  %i.cbe = getelementptr i8, ptr %i.cbd, i64 %i.cau
  %i.cbf = getelementptr i8, ptr %i.cbe, i64 2
  %i.cbg = load i8, ptr %i.cbf, align 1, !tbaa !30
  %i.cbh = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 2
  store i8 %i.cbg, ptr %i.cbh, align 1, !tbaa !30
  %i.cbi = load ptr, ptr %0, align 8, !tbaa !28
  %i.cbj = getelementptr i8, ptr %i.cbi, i64 %i.cau
  %i.cbk = getelementptr i8, ptr %i.cbj, i64 3
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !30
  %i.cbm = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 3
  store i8 %i.cbl, ptr %i.cbm, align 1, !tbaa !30
  %i.cbn = getelementptr inbounds nuw i8, ptr %.29410.i.i, i64 4 ; 2 uses
  %i.cbo = add nuw nsw i32 %.21663409.i.i, 1      ; 2 uses
  %exitcond579.not.i.i = icmp eq i32 %i.cbo, %5
  br i1 %exitcond579.not.i.i, label %.loopexit264.i.i, label %bb.aa, !llvm.loop !518

.loopexit266.i.i:                                 ; preds = %bb.x
  br i1 %brmerge500.i.i, label %.loopexit264.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %.loopexit266.i.i
  %i.cbp = sext i32 %i.bwi to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph415.i.i
  %.31414.i.i = phi ptr [ %.26418.i.i, %.lr.ph415.i.i ], [ %i.ccr, %bb.ab ] ; 3 uses
  %.01664413.i.i = phi i32 [ 0, %.lr.ph415.i.i ], [ %i.ccs, %bb.ab ] ; 2 uses
  %i.cbq = add nsw i32 %.01664413.i.i, %i.bej     ; 2 uses
  %i.cbr = sdiv i32 %i.cbq, %i.ahb
  %i.cbs = srem i32 %i.cbq, %i.ahb                ; 2 uses
  %i.cbt = sext i32 %i.cbr to i64
  %i.cbu = mul i64 %i.l, %i.cbt
  %i.cbv = add i64 %i.cbu, %i.cbp
  %i.cbw = srem i32 %i.cbs, %6
  %i.cbx = insertelement <2 x i32> poison, i32 %i.cbw, i64 0
  %i.cby = insertelement <2 x i32> %i.cbx, i32 %i.cbs, i64 1
  %i.cbz = sdiv <2 x i32> %i.cby, %i.bez
  %i.cca = mul <2 x i32> %i.cbz, %i.bfb
  %i.ccb = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cca)
  %i.ccc = sext i32 %i.ccb to i64
  %i.ccd = add i64 %i.cbv, %i.ccc
  %i.cce = shl i64 %i.ccd, 3
  %i.ccf = load ptr, ptr %0, align 8, !tbaa !28
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 %i.cce ; 2 uses
  %i.cch = load <4 x i32>, ptr %i.ccg, align 1, !tbaa !30 ; 2 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  %i.ccj = load <4 x i32>, ptr %i.cci, align 1, !tbaa !30 ; 2 uses
  %i.cck = shufflevector <4 x i32> %i.cch, <4 x i32> %i.ccj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ccl = shufflevector <4 x i32> %i.cch, <4 x i32> %i.ccj, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ccm = bitcast <4 x i32> %i.cck to <16 x i8>
  %i.ccn = add <16 x i8> %i.ccm, splat (i8 127)
  %i.cco = bitcast <4 x i32> %i.ccl to <16 x i8>
  %i.ccp = add <16 x i8> %i.cco, splat (i8 127)
  store <16 x i8> %i.ccn, ptr %.31414.i.i, align 1, !tbaa !30
  %i.ccq = getelementptr inbounds nuw i8, ptr %.31414.i.i, i64 16
  store <16 x i8> %i.ccp, ptr %i.ccq, align 1, !tbaa !30
  %i.ccr = getelementptr inbounds nuw i8, ptr %.31414.i.i, i64 32 ; 2 uses
  %i.ccs = add nuw nsw i32 %.01664413.i.i, 1      ; 2 uses
  %exitcond580.not.i.i = icmp eq i32 %i.ccs, %i.beh
  br i1 %exitcond580.not.i.i, label %.loopexit264.i.i, label %bb.ab, !llvm.loop !519

bb.ac:                                            ; preds = %bb.w
  br i1 %i.bdn, label %.preheader274.i.i, label %.loopexit272.i.i

.preheader274.i.i:                                ; preds = %bb.ac
  br i1 %i.bdo, label %.lr.ph383.i.i, label %.preheader273.i.i

.preheader273.i.i:                                ; preds = %.lr.ph383.i.i, %.preheader274.i.i
  %.01665.lcssa.i.i = phi i32 [ 0, %.preheader274.i.i ], [ %i.cfj, %.lr.ph383.i.i ] ; 3 uses
  %.33.lcssa.i.i = phi ptr [ %.26418.i.i, %.preheader274.i.i ], [ %i.cfi, %.lr.ph383.i.i ] ; 2 uses
  %i.cct = or disjoint i32 %.01665.lcssa.i.i, 1
  %i.ccu = icmp slt i32 %i.cct, %5
  br i1 %i.ccu, label %.lr.ph388.i.i, label %.preheader271.i.i

.lr.ph383.i.i:                                    ; preds = %.preheader274.i.i, %.lr.ph383.i.i
  %.33382.i.i = phi ptr [ %i.cfi, %.lr.ph383.i.i ], [ %.26418.i.i, %.preheader274.i.i ] ; 2 uses
  %.01665381.i.i = phi i32 [ %i.cfj, %.lr.ph383.i.i ], [ 0, %.preheader274.i.i ] ; 2 uses
  %i.ccv = add nsw i32 %.01665381.i.i, %4
  %i.ccw = insertelement <4 x i32> poison, i32 %i.ccv, i64 0
  %i.ccx = shufflevector <4 x i32> %i.ccw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccy = add <4 x i32> %i.ccx, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ccz = bitcast <4 x i32> %i.ccy to <2 x i64>
  %i.cda = bitcast <4 x i32> %i.ccy to <2 x i64>
  %i.cdb = and <2 x i64> %i.cda, splat (i64 4294967295)
  %i.cdc = mul nuw <2 x i64> %i.cdb, %i.bdq
  %i.cdd = lshr <2 x i64> %i.cdc, splat (i64 32)
  %i.cde = lshr <2 x i64> %i.ccz, splat (i64 32)
  %i.cdf = mul nuw <2 x i64> %i.cde, %i.bdq
  %i.cdg = bitcast <2 x i64> %i.cdd to <8 x i16>
  %i.cdh = bitcast <2 x i64> %i.cdf to <8 x i16>
  %i.cdi = shufflevector <8 x i16> %i.cdg, <8 x i16> %i.cdh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cdj = bitcast <8 x i16> %i.cdi to <4 x i32>  ; 2 uses
  %i.cdk = sub <4 x i32> %i.ccy, %i.cdj
  %i.cdl = lshr <4 x i32> %i.cdk, %i.bdr
  %i.cdm = add <4 x i32> %i.cdl, %i.cdj
  %i.cdn = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cdm, <4 x i32> %i.aio) ; 2 uses
  %i.cdo = mul <4 x i32> %i.cdn, %i.bdt
  %i.cdp = sub <4 x i32> %i.ccy, %i.cdo           ; 4 uses
  %i.cdq = bitcast <4 x i32> %i.cdp to <2 x i64>
  %i.cdr = bitcast <4 x i32> %i.cdp to <2 x i64>
  %i.cds = and <2 x i64> %i.cdr, splat (i64 4294967295)
  %i.cdt = mul nuw <2 x i64> %i.cds, %i.bdv
  %i.cdu = lshr <2 x i64> %i.cdt, splat (i64 32)
  %i.cdv = lshr <2 x i64> %i.cdq, splat (i64 32)
  %i.cdw = mul nuw <2 x i64> %i.cdv, %i.bdv
  %i.cdx = bitcast <2 x i64> %i.cdu to <8 x i16>
  %i.cdy = bitcast <2 x i64> %i.cdw to <8 x i16>
  %i.cdz = shufflevector <8 x i16> %i.cdx, <8 x i16> %i.cdy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cea = bitcast <8 x i16> %i.cdz to <4 x i32>  ; 2 uses
  %i.ceb = sub <4 x i32> %i.cdp, %i.cea
  %i.cec = lshr <4 x i32> %i.ceb, %i.bdw
  %i.ced = add <4 x i32> %i.cec, %i.cea
  %i.cee = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ced, <4 x i32> %i.ajg) ; 2 uses
  %i.cef = mul <4 x i32> %i.cee, %i.bdy
  %i.ceg = sub <4 x i32> %i.cdp, %i.cef
  %i.ceh = mul <4 x i32> %i.cdn, %i.beb
  %i.cei = mul <4 x i32> %i.ceg, %i.bed
  %i.cej = mul <4 x i32> %i.cee, %i.bef
  %i.cek = add <4 x i32> %i.cej, %i.ceh
  %i.cel = add <4 x i32> %i.cek, %i.cei           ; 4 uses
  %i.cem = shufflevector <4 x i32> %i.cel, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cen = add <4 x i32> %i.cem, %i.bwf
  %i.ceo = shufflevector <4 x i32> %i.cel, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cep = add <4 x i32> %i.ceo, %i.bwf
  %i.ceq = shufflevector <4 x i32> %i.cel, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cer = add <4 x i32> %i.ceq, %i.bwf
  %i.ces = shufflevector <4 x i32> %i.cel, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cet = add <4 x i32> %i.ces, %i.bwf
  %i.ceu = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.cev = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ceu, <4 x i32> %i.cen, <4 x i32> splat (i32 -1), i8 1)
  %i.cew = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ceu, <4 x i32> %i.cep, <4 x i32> splat (i32 -1), i8 1)
  %i.cex = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ceu, <4 x i32> %i.cer, <4 x i32> splat (i32 -1), i8 1)
  %i.cey = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ceu, <4 x i32> %i.cet, <4 x i32> splat (i32 -1), i8 1)
  %i.cez = shufflevector <4 x i32> %i.cev, <4 x i32> %i.cew, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cfa = trunc <16 x i32> %i.cez to <16 x i8>
  %i.cfb = shufflevector <4 x i32> %i.cex, <4 x i32> %i.cey, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cfc = trunc <16 x i32> %i.cfb to <16 x i8>
  %i.cfd = bitcast <16 x i8> %i.cfa to <8 x i16>
  %i.cfe = bitcast <16 x i8> %i.cfc to <8 x i16>
  %i.cff = shufflevector <8 x i16> %i.cfd, <8 x i16> %i.cfe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cfg = bitcast <8 x i16> %i.cff to <16 x i8>
  %i.cfh = add <16 x i8> %i.cfg, splat (i8 127)
  store <16 x i8> %i.cfh, ptr %.33382.i.i, align 1, !tbaa !30
  %i.cfi = getelementptr inbounds nuw i8, ptr %.33382.i.i, i64 16 ; 2 uses
  %i.cfj = add nuw nsw i32 %.01665381.i.i, 4      ; 3 uses
  %i.cfk = or disjoint i32 %i.cfj, 3
  %i.cfl = icmp slt i32 %i.cfk, %5
  br i1 %i.cfl, label %.lr.ph383.i.i, label %.preheader273.i.i, !llvm.loop !520

.preheader271.i.i:                                ; preds = %.lr.ph388.i.i, %.preheader273.i.i
  %.11666.lcssa.i.i = phi i32 [ %.01665.lcssa.i.i, %.preheader273.i.i ], [ %i.cgr, %.lr.ph388.i.i ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33.lcssa.i.i, %.preheader273.i.i ], [ %i.cgq, %.lr.ph388.i.i ] ; 2 uses
  %i.cfm = icmp slt i32 %.11666.lcssa.i.i, %5
  br i1 %i.cfm, label %.lr.ph393.i.i, label %.loopexit264.i.i

.lr.ph388.i.i:                                    ; preds = %.preheader273.i.i, %.lr.ph388.i.i
  %.34387.i.i = phi ptr [ %i.cgq, %.lr.ph388.i.i ], [ %.33.lcssa.i.i, %.preheader273.i.i ] ; 2 uses
  %.11666386.i.i = phi i32 [ %i.cgr, %.lr.ph388.i.i ], [ %.01665.lcssa.i.i, %.preheader273.i.i ] ; 2 uses
  %i.cfn = add nsw i32 %.11666386.i.i, %4         ; 2 uses
  %i.cfo = add nsw i32 %i.cfn, 1
  %i.cfp = insertelement <2 x i32> poison, i32 %i.cfn, i64 0
  %i.cfq = insertelement <2 x i32> %i.cfp, i32 %i.cfo, i64 1
  %.frozen831 = freeze <2 x i32> %i.cfq           ; 2 uses
  %i.cfr = sdiv <2 x i32> %.frozen831, %i.ber     ; 2 uses
  %i.cfs = mul <2 x i32> %i.cfr, %i.ber
  %.decomposed832 = sub <2 x i32> %.frozen831, %i.cfs ; 3 uses
  %i.cft = srem <2 x i32> %.decomposed832, %i.bet ; 2 uses
  %i.cfu = shufflevector <2 x i32> %i.cft, <2 x i32> %.decomposed832, <2 x i32> <i32 2, i32 0>
  %i.cfv = sdiv <2 x i32> %i.cfu, %i.ben
  %i.cfw = mul <2 x i32> %i.cfv, %i.bep           ; 2 uses
  %i.cfx = shufflevector <2 x i32> %i.cft, <2 x i32> %.decomposed832, <2 x i32> <i32 3, i32 1>
  %i.cfy = sdiv <2 x i32> %i.cfx, %i.ben
  %i.cfz = mul <2 x i32> %i.cfy, %i.bep           ; 2 uses
  %i.cga = mul <2 x i32> %i.cfr, %i.bev           ; 2 uses
  %foldExtExtBinop548 = add <2 x i32> %i.cfw, %i.cga
  %i.cgb = shufflevector <2 x i32> %foldExtExtBinop548, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cgc = shufflevector <2 x i32> %i.cfw, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgd = add <4 x i32> %i.cgb, %i.cgc
  %i.cge = add <4 x i32> %i.cgd, %i.bwf
  %16 = shufflevector <2 x i32> %i.cfz, <2 x i32> poison, <4 x i32> zeroinitializer
  %17 = shufflevector <2 x i32> %i.cga, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgf = add <4 x i32> %16, %17
  %i.cgg = shufflevector <2 x i32> %i.cfz, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgh = add <4 x i32> %i.cgf, %i.cgg
  %i.cgi = add <4 x i32> %i.cgh, %i.bwf
  %i.cgj = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.cgk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cgj, <4 x i32> %i.cge, <4 x i32> splat (i32 -1), i8 1)
  %i.cgl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cgj, <4 x i32> %i.cgi, <4 x i32> splat (i32 -1), i8 1)
  %i.cgm = shufflevector <4 x i32> %i.cgk, <4 x i32> %i.cgl, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgn = trunc <16 x i32> %i.cgm to <16 x i8>
  %i.cgo = bitcast <16 x i8> %i.cgn to <2 x i64>
  %i.cgp = extractelement <2 x i64> %i.cgo, i64 0
  store i64 %i.cgp, ptr %.34387.i.i, align 1, !tbaa !30
  %i.cgq = getelementptr inbounds nuw i8, ptr %.34387.i.i, i64 8 ; 2 uses
  %i.cgr = add nuw nsw i32 %.11666386.i.i, 2      ; 3 uses
  %i.cgs = or disjoint i32 %i.cgr, 1
  %i.cgt = icmp slt i32 %i.cgs, %5
  br i1 %i.cgt, label %.lr.ph388.i.i, label %.preheader271.i.i, !llvm.loop !521

.lr.ph393.i.i:                                    ; preds = %.preheader271.i.i, %.lr.ph393.i.i
  %.35392.i.i = phi ptr [ %i.chq, %.lr.ph393.i.i ], [ %.34.lcssa.i.i, %.preheader271.i.i ] ; 2 uses
  %.21667391.i.i = phi i32 [ %i.chr, %.lr.ph393.i.i ], [ %.11666.lcssa.i.i, %.preheader271.i.i ] ; 2 uses
  %i.cgu = add nsw i32 %.21667391.i.i, %4         ; 2 uses
  %i.cgv = sdiv i32 %i.cgu, %i.ahb
  %i.cgw = srem i32 %i.cgu, %i.ahb                ; 2 uses
  %i.cgx = srem i32 %i.cgw, %6
  %i.cgy = insertelement <2 x i32> poison, i32 %i.cgw, i64 0
  %i.cgz = insertelement <2 x i32> %i.cgy, i32 %i.cgx, i64 1
  %i.cha = sdiv <2 x i32> %i.cgz, %i.bew
  %i.chb = mul <2 x i32> %i.cha, %i.bey           ; 2 uses
  %i.chc = mul i32 %i.cgv, %i.bdz
  %i.chd = extractelement <2 x i32> %i.chb, i64 0
  %i.che = add i32 %i.chd, %i.chc
  %i.chf = extractelement <2 x i32> %i.chb, i64 1
  %i.chg = add i32 %i.che, %i.chf
  %i.chh = insertelement <4 x i32> poison, i32 %i.chg, i64 0
  %i.chi = shufflevector <4 x i32> %i.chh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.chj = add <4 x i32> %i.chi, %i.bwf
  %i.chk = load ptr, ptr %0, align 8, !tbaa !28
  %i.chl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.chk, <4 x i32> %i.chj, <4 x i32> splat (i32 -1), i8 1)
  %i.chm = shufflevector <4 x i32> %i.chl, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chn = trunc <16 x i32> %i.chm to <16 x i8>
  %i.cho = bitcast <16 x i8> %i.chn to <4 x float>
  %i.chp = extractelement <4 x float> %i.cho, i64 0
  store float %i.chp, ptr %.35392.i.i, align 1, !tbaa !30
  %i.chq = getelementptr inbounds nuw i8, ptr %.35392.i.i, i64 4 ; 2 uses
  %i.chr = add nuw nsw i32 %.21667391.i.i, 1      ; 2 uses
  %exitcond577.not.i.i = icmp eq i32 %i.chr, %5
  br i1 %exitcond577.not.i.i, label %.loopexit264.i.i, label %.lr.ph393.i.i, !llvm.loop !522

.loopexit272.i.i:                                 ; preds = %bb.ac
  br i1 %brmerge500.i.i, label %.loopexit264.i.i, label %.lr.ph397.i.i

.lr.ph397.i.i:                                    ; preds = %.loopexit272.i.i, %.lr.ph397.i.i
  %.37396.i.i = phi ptr [ %i.cir, %.lr.ph397.i.i ], [ %.26418.i.i, %.loopexit272.i.i ] ; 2 uses
  %.01671395.i.i = phi i32 [ %i.cis, %.lr.ph397.i.i ], [ 0, %.loopexit272.i.i ] ; 2 uses
  %i.chs = add nsw i32 %.01671395.i.i, %i.bej     ; 2 uses
  %i.cht = sdiv i32 %i.chs, %i.ahb
  %i.chu = srem i32 %i.chs, %i.ahb                ; 2 uses
  %i.chv = srem i32 %i.chu, %6
  %i.chw = insertelement <2 x i32> poison, i32 %i.chu, i64 0
  %i.chx = insertelement <2 x i32> %i.chw, i32 %i.chv, i64 1
  %i.chy = sdiv <2 x i32> %i.chx, %i.bek
  %i.chz = mul <2 x i32> %i.chy, %i.bem           ; 2 uses
  %i.cia = mul i32 %i.cht, %i.bdz
  %i.cib = extractelement <2 x i32> %i.chz, i64 0
  %i.cic = add i32 %i.cib, %i.cia
  %i.cid = extractelement <2 x i32> %i.chz, i64 1
  %i.cie = add i32 %i.cic, %i.cid
  %i.cif = insertelement <4 x i32> poison, i32 %i.cie, i64 0
  %i.cig = shufflevector <4 x i32> %i.cif, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cih = add <4 x i32> %i.cig, %i.bwf
  %i.cii = shl <4 x i32> %i.cih, splat (i32 3)
  %i.cij = load ptr, ptr %0, align 8, !tbaa !28
  %i.cik = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.cij, <4 x i32> %i.cii, <4 x i64> splat (i64 -1), i8 1)
  %i.cil = bitcast <4 x i64> %i.cik to <8 x i32>
  %i.cim = shufflevector <8 x i32> %i.cil, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.cin = bitcast <8 x i32> %i.cim to <4 x i64>
  %i.cio = shufflevector <4 x i64> %i.cin, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cip = bitcast <4 x i64> %i.cio to <32 x i8>
  %i.ciq = add <32 x i8> %i.cip, splat (i8 127)
  store <32 x i8> %i.ciq, ptr %.37396.i.i, align 1, !tbaa !30
  %i.cir = getelementptr inbounds nuw i8, ptr %.37396.i.i, i64 32 ; 2 uses
  %i.cis = add nuw nsw i32 %.01671395.i.i, 1      ; 2 uses
  %exitcond578.not.i.i = icmp eq i32 %i.cis, %i.beh
  br i1 %exitcond578.not.i.i, label %.loopexit264.i.i, label %.lr.ph397.i.i, !llvm.loop !523

.loopexit264.i.i:                                 ; preds = %.lr.ph397.i.i, %.lr.ph393.i.i, %bb.ab, %bb.aa, %.loopexit272.i.i, %.preheader271.i.i, %.loopexit266.i.i, %.preheader265.i.i
  %.38.i.i = phi ptr [ %.26418.i.i, %.loopexit272.i.i ], [ %.28.lcssa.i.i, %.preheader265.i.i ], [ %.26418.i.i, %.loopexit266.i.i ], [ %i.ccr, %bb.ab ], [ %i.cbn, %bb.aa ], [ %.34.lcssa.i.i, %.preheader271.i.i ], [ %i.chq, %.lr.ph393.i.i ], [ %i.cir, %.lr.ph397.i.i ] ; 2 uses
  %i.cit = add nuw nsw i32 %.21642417.i.i, 4      ; 3 uses
  %i.ciu = or disjoint i32 %i.cit, 3
  %i.civ = icmp slt i32 %i.ciu, %3
  br i1 %i.civ, label %bb.w, label %.preheader262.i.i, !llvm.loop !524

.preheader249.i.i:                                ; preds = %.loopexit251.i.i, %.preheader262.i.i
  %.31643.lcssa.i.i = phi i32 [ %.21642.lcssa.i.i, %.preheader262.i.i ], [ %i.cyp, %.loopexit251.i.i ] ; 2 uses
  %.39.lcssa.i.i = phi ptr [ %.26.lcssa.i.i, %.preheader262.i.i ], [ %.52.i.i, %.loopexit251.i.i ]
  %i.ciw = icmp slt i32 %.31643.lcssa.i.i, %3
  br i1 %i.ciw, label %.lr.ph484.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph484.i.i:                                    ; preds = %.preheader249.i.i
  %i.cix = mul i32 %i.agt, %11
  %i.ciy = icmp eq i32 %i.agv, 1
  %i.ciz = icmp sgt i32 %5, 3
  %i.cja = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cjb = and <2 x i64> %i.cja, splat (i64 4294967295) ; 2 uses
  %i.cjc = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjd = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.cje = shufflevector <4 x i32> %i.cjd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjf = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cjg = and <2 x i64> %i.cjf, splat (i64 4294967295) ; 2 uses
  %i.cjh = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cji = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.cjj = shufflevector <4 x i32> %i.cji, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjk = trunc i64 %i.l to i32
  %i.cjl = insertelement <4 x i32> poison, i32 %i.cjk, i64 0
  %i.cjm = shufflevector <4 x i32> %i.cjl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjn = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.cjo = shufflevector <4 x i32> %i.cjn, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar598.i.i = mul i32 %i.agt, %9            ; 5 uses
  %i.cjp = insertelement <4 x i32> poison, i32 %.scalar598.i.i, i64 0
  %i.cjq = shufflevector <4 x i32> %i.cjp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cjr = icmp ne i32 %i.agv, 8
  %i.cjs = lshr i32 %5, 3
  %i.cjt = icmp slt i32 %5, 8
  %i.cju = sdiv i32 %4, 8
  %brmerge507.i.i = or i1 %i.cjt, %i.cjr
  %i.cjv = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.cjw = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.cjx = insertelement <2 x i32> %i.cjw, i32 %.scalar598.i.i, i64 1
  %i.cjy = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.cjz = shufflevector <2 x i32> %i.cjy, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cka = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.ckb = shufflevector <2 x i32> %i.cka, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ckc = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.ckd = shufflevector <2 x i64> %i.ckc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cke = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.ckf = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.ckg = insertelement <2 x i32> %i.ckf, i32 %.scalar598.i.i, i64 1
  br label %bb.am

bb.ad:                                            ; preds = %.loopexit251.i.i, %.lr.ph461.i.i
  %.39460.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph461.i.i ], [ %.52.i.i, %.loopexit251.i.i ] ; 8 uses
  %.31643459.i.i = phi i32 [ %.21642.lcssa.i.i, %.lr.ph461.i.i ], [ %i.cyp, %.loopexit251.i.i ] ; 2 uses
  %i.ckh = add nsw i32 %.31643459.i.i, %2         ; 2 uses
  %i.cki = add nsw i32 %i.ckh, 1
  %i.ckj = insertelement <2 x i32> poison, i32 %i.ckh, i64 0
  %i.ckk = insertelement <2 x i32> %i.ckj, i32 %i.cki, i64 1
  %.frozen833 = freeze <2 x i32> %i.ckk           ; 2 uses
  %.frozen834 = freeze <2 x i32> %i.buf           ; 2 uses
  %i.ckl = sdiv <2 x i32> %.frozen833, %.frozen834 ; 2 uses
  %i.ckm = mul <2 x i32> %i.ckl, %.frozen834
  %.decomposed835 = sub <2 x i32> %.frozen833, %i.ckm
  %i.ckn = mul nsw <2 x i32> %.decomposed835, %i.bud
  %i.cko = mul <2 x i32> %i.ckl, %i.buh           ; 3 uses
  %i.ckp = add nsw <2 x i32> %i.ckn, %i.cko       ; 11 uses
  %shift559 = shufflevector <2 x i32> %i.cko, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckq = icmp eq <2 x i32> %i.cko, %shift559
  %i.ckr = extractelement <2 x i1> %i.ckq, i64 0
  %or.cond7.i.i = and i1 %i.g, %i.ckr
  br i1 %or.cond7.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.btf, label %.preheader255.i.i, label %.loopexit253.i.i

.preheader255.i.i:                                ; preds = %bb.ae
  br i1 %i.btg, label %.lr.ph443.i.i, label %.preheader254.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader255.i.i
  %i.cks = shufflevector <2 x i32> %i.ckp, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.af

.preheader254.i.i:                                ; preds = %bb.af, %.preheader255.i.i
  %.01672.lcssa.i.i = phi i32 [ 0, %.preheader255.i.i ], [ %i.cmy, %bb.af ] ; 3 uses
  %.40.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader255.i.i ], [ %i.cmx, %bb.af ] ; 2 uses
  %i.ckt = or disjoint i32 %.01672.lcssa.i.i, 1
  %i.cku = icmp slt i32 %i.ckt, %5
  br i1 %i.cku, label %.lr.ph448.i.i, label %.preheader252.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader254.i.i
  %i.ckv = extractelement <2 x i32> %i.ckp, i64 0
  %i.ckw = sext i32 %i.ckv to i64                 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph443.i.i
  %.40442.i.i = phi ptr [ %.39460.i.i, %.lr.ph443.i.i ], [ %i.cmx, %bb.af ] ; 2 uses
  %.01672441.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.cmy, %bb.af ] ; 2 uses
  %i.ckx = add nsw i32 %.01672441.i.i, %4
  %i.cky = insertelement <4 x i32> poison, i32 %i.ckx, i64 0
  %i.ckz = shufflevector <4 x i32> %i.cky, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cla = add <4 x i32> %i.ckz, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.clb = bitcast <4 x i32> %i.cla to <2 x i64>
  %i.clc = bitcast <4 x i32> %i.cla to <2 x i64>
  %i.cld = and <2 x i64> %i.clc, splat (i64 4294967295)
  %i.cle = mul nuw <2 x i64> %i.cld, %i.bti
  %i.clf = lshr <2 x i64> %i.cle, splat (i64 32)
  %i.clg = lshr <2 x i64> %i.clb, splat (i64 32)
  %i.clh = mul nuw <2 x i64> %i.clg, %i.bti
  %i.cli = bitcast <2 x i64> %i.clf to <8 x i16>
  %i.clj = bitcast <2 x i64> %i.clh to <8 x i16>
  %i.clk = shufflevector <8 x i16> %i.cli, <8 x i16> %i.clj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cll = bitcast <8 x i16> %i.clk to <4 x i32>  ; 2 uses
  %i.clm = sub <4 x i32> %i.cla, %i.cll
  %i.cln = lshr <4 x i32> %i.clm, %i.btj
end_hunk_2
begin_hunk_3_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %i.nx = load <8 x i64>, ptr %i.nw, align 64, !tbaa !30
  %i.ny = getelementptr inbounds nuw i8, ptr %.31149, i64 384
  %i.nz = load <8 x i64>, ptr %i.ny, align 64, !tbaa !30
  %i.oa = getelementptr inbounds nuw i8, ptr %.31149, i64 448
  %i.ob = load <8 x i64>, ptr %i.oa, align 64, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph1150, %bb.h
  %.0840 = phi <8 x i64> [ %i.nz, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0836 = phi <8 x i64> [ %i.nx, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0832 = phi <8 x i64> [ %i.nv, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0828 = phi <8 x i64> [ %i.nt, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0809 = phi <8 x i64> [ %i.nr, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0805 = phi <8 x i64> [ %i.np, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %.0801 = phi <8 x i64> [ %i.nn, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  %storemerge1677 = phi <8 x i64> [ %i.ob, %bb.h ], [ zeroinitializer, %.lr.ph1150 ] ; 2 uses
  br i1 %i.h, label %.lr.ph1113.preheader, label %.preheader999

.lr.ph1113.preheader:                             ; preds = %bb.i
  %i.oc = bitcast <8 x i64> %.0801 to <16 x i32>
  %i.od = bitcast <8 x i64> %.0805 to <16 x i32>
  %i.oe = bitcast <8 x i64> %.0809 to <16 x i32>
  %i.of = bitcast <8 x i64> %.0828 to <16 x i32>
  %i.og = bitcast <8 x i64> %.0832 to <16 x i32>
  %i.oh = bitcast <8 x i64> %.0836 to <16 x i32>
  %i.oi = bitcast <8 x i64> %.0840 to <16 x i32>
  %i.oj = bitcast <8 x i64> %storemerge1677 to <16 x i32>
  br label %.lr.ph1113

.preheader999.loopexit:                           ; preds = %.lr.ph1113
  %i.ok = bitcast <16 x i32> %i.px to <8 x i64>
  %i.ol = bitcast <16 x i32> %i.pw to <8 x i64>
  %i.om = bitcast <16 x i32> %i.pv to <8 x i64>
  %i.on = bitcast <16 x i32> %i.pu to <8 x i64>
  %i.oo = bitcast <16 x i32> %i.ps to <8 x i64>
  %i.op = bitcast <16 x i32> %i.pq to <8 x i64>
  %i.oq = bitcast <16 x i32> %i.po to <8 x i64>
  %i.or = bitcast <16 x i32> %i.pm to <8 x i64>
  %i.os = getelementptr i8, ptr %.314121148, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.os, i64 32
  br label %.preheader999

.preheader999:                                    ; preds = %.preheader999.loopexit, %bb.i
  %.0844.lcssa = phi <8 x i64> [ %storemerge1677, %bb.i ], [ %i.ok, %.preheader999.loopexit ] ; 2 uses
  %.1841.lcssa = phi <8 x i64> [ %.0840, %bb.i ], [ %i.ol, %.preheader999.loopexit ] ; 2 uses
  %.1837.lcssa = phi <8 x i64> [ %.0836, %bb.i ], [ %i.om, %.preheader999.loopexit ] ; 2 uses
  %.1833.lcssa = phi <8 x i64> [ %.0832, %bb.i ], [ %i.on, %.preheader999.loopexit ] ; 2 uses
  %.1829.lcssa = phi <8 x i64> [ %.0828, %bb.i ], [ %i.oo, %.preheader999.loopexit ] ; 2 uses
  %.1810.lcssa = phi <8 x i64> [ %.0809, %bb.i ], [ %i.op, %.preheader999.loopexit ] ; 2 uses
  %.1806.lcssa = phi <8 x i64> [ %.0805, %bb.i ], [ %i.oq, %.preheader999.loopexit ] ; 2 uses
  %.1802.lcssa = phi <8 x i64> [ %.0801, %bb.i ], [ %i.or, %.preheader999.loopexit ] ; 2 uses
  %.01442.lcssa = phi i32 [ 0, %bb.i ], [ %i.k, %.preheader999.loopexit ] ; 2 uses
  %.01440.lcssa = phi ptr [ %i.bs, %bb.i ], [ %i.py, %.preheader999.loopexit ]
  %.41413.lcssa = phi ptr [ %.314121148, %bb.i ], [ %scevgep, %.preheader999.loopexit ] ; 2 uses
  %i.ot = icmp slt i32 %.01442.lcssa, %6
  br i1 %i.ot, label %.lr.ph1136.preheader, label %._crit_edge1137

.lr.ph1136.preheader:                             ; preds = %.preheader999
  %i.ou = bitcast <8 x i64> %.1802.lcssa to <16 x i32>
  %i.ov = bitcast <8 x i64> %.1806.lcssa to <16 x i32>
  %i.ow = bitcast <8 x i64> %.1810.lcssa to <16 x i32>
  %i.ox = bitcast <8 x i64> %.1829.lcssa to <16 x i32>
  %i.oy = bitcast <8 x i64> %.1833.lcssa to <16 x i32>
  %i.oz = bitcast <8 x i64> %.1837.lcssa to <16 x i32>
  %i.pa = bitcast <8 x i64> %.1841.lcssa to <16 x i32>
  %i.pb = bitcast <8 x i64> %.0844.lcssa to <16 x i32>
  br label %.lr.ph1136

.lr.ph1113:                                       ; preds = %.lr.ph1113.preheader, %.lr.ph1113
  %.414131111 = phi ptr [ %i.pz, %.lr.ph1113 ], [ %.314121148, %.lr.ph1113.preheader ] ; 2 uses
  %.014401110 = phi ptr [ %i.py, %.lr.ph1113 ], [ %i.bs, %.lr.ph1113.preheader ] ; 2 uses
  %.014421109 = phi i32 [ %i.qa, %.lr.ph1113 ], [ 0, %.lr.ph1113.preheader ]
  %.18021108 = phi <16 x i32> [ %i.pm, %.lr.ph1113 ], [ %i.oc, %.lr.ph1113.preheader ]
  %.18061107 = phi <16 x i32> [ %i.po, %.lr.ph1113 ], [ %i.od, %.lr.ph1113.preheader ]
  %.18101106 = phi <16 x i32> [ %i.pq, %.lr.ph1113 ], [ %i.oe, %.lr.ph1113.preheader ]
  %.18291105 = phi <16 x i32> [ %i.ps, %.lr.ph1113 ], [ %i.of, %.lr.ph1113.preheader ]
  %.18331104 = phi <16 x i32> [ %i.pu, %.lr.ph1113 ], [ %i.og, %.lr.ph1113.preheader ]
  %.18371103 = phi <16 x i32> [ %i.pv, %.lr.ph1113 ], [ %i.oh, %.lr.ph1113.preheader ]
  %.18411102 = phi <16 x i32> [ %i.pw, %.lr.ph1113 ], [ %i.oi, %.lr.ph1113.preheader ]
  %.08441101 = phi <16 x i32> [ %i.px, %.lr.ph1113 ], [ %i.oj, %.lr.ph1113.preheader ]
  %i.pc = load <8 x i64>, ptr %.014401110, align 1, !tbaa !30 ; 2 uses
  %i.pd = load <4 x i64>, ptr %.414131111, align 1, !tbaa !30
  %i.pe = shufflevector <8 x i64> %i.pc, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.pf = shufflevector <4 x i64> %i.pd, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.pg = bitcast <8 x i64> %i.pf to <16 x i32>   ; 3 uses
  %i.ph = shufflevector <16 x i32> %i.pg, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.pi = shufflevector <16 x i32> %i.pg, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.pj = shufflevector <16 x i32> %i.pg, <16 x i32> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.pk = bitcast <8 x i64> %i.pc to <32 x i16>   ; 4 uses
  %i.pl = bitcast <8 x i64> %i.pf to <32 x i16>   ; 2 uses
  %i.pm = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18021108, <32 x i16> %i.pk, <32 x i16> %i.pl) ; 2 uses
  %i.pn = bitcast <16 x i32> %i.ph to <32 x i16>  ; 2 uses
  %i.po = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18061107, <32 x i16> %i.pk, <32 x i16> %i.pn) ; 2 uses
  %i.pp = bitcast <16 x i32> %i.pi to <32 x i16>  ; 2 uses
  %i.pq = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18101106, <32 x i16> %i.pk, <32 x i16> %i.pp) ; 2 uses
  %i.pr = bitcast <16 x i32> %i.pj to <32 x i16>  ; 2 uses
  %i.ps = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18291105, <32 x i16> %i.pk, <32 x i16> %i.pr) ; 2 uses
  %i.pt = bitcast <8 x i64> %i.pe to <32 x i16>   ; 4 uses
  %i.pu = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18331104, <32 x i16> %i.pt, <32 x i16> %i.pl) ; 2 uses
  %i.pv = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18371103, <32 x i16> %i.pt, <32 x i16> %i.pn) ; 2 uses
  %i.pw = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18411102, <32 x i16> %i.pt, <32 x i16> %i.pp) ; 2 uses
  %i.px = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.08441101, <32 x i16> %i.pt, <32 x i16> %i.pr) ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.014401110, i64 64 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.414131111, i64 32
  %i.qa = add nuw nsw i32 %.014421109, 2          ; 2 uses
  %i.qb = or disjoint i32 %i.qa, 1
  %i.qc = icmp slt i32 %i.qb, %6
  br i1 %i.qc, label %.lr.ph1113, label %.preheader999.loopexit, !llvm.loop !626

.lr.ph1136:                                       ; preds = %.lr.ph1136.preheader, %.lr.ph1136
  %.514141135 = phi ptr [ %i.rd, %.lr.ph1136 ], [ %.41413.lcssa, %.lr.ph1136.preheader ] ; 2 uses
  %.114411134 = phi ptr [ %i.rc, %.lr.ph1136 ], [ %.01440.lcssa, %.lr.ph1136.preheader ] ; 2 uses
  %.114431133 = phi i32 [ %i.re, %.lr.ph1136 ], [ %.01442.lcssa, %.lr.ph1136.preheader ]
  %.28031132 = phi <16 x i32> [ %i.qu, %.lr.ph1136 ], [ %i.ou, %.lr.ph1136.preheader ]
  %.28071131 = phi <16 x i32> [ %i.qv, %.lr.ph1136 ], [ %i.ov, %.lr.ph1136.preheader ]
  %.28111130 = phi <16 x i32> [ %i.qw, %.lr.ph1136 ], [ %i.ow, %.lr.ph1136.preheader ]
  %.28301129 = phi <16 x i32> [ %i.qx, %.lr.ph1136 ], [ %i.ox, %.lr.ph1136.preheader ]
  %.28341128 = phi <16 x i32> [ %i.qy, %.lr.ph1136 ], [ %i.oy, %.lr.ph1136.preheader ]
  %.28381127 = phi <16 x i32> [ %i.qz, %.lr.ph1136 ], [ %i.oz, %.lr.ph1136.preheader ]
  %.28421126 = phi <16 x i32> [ %i.ra, %.lr.ph1136 ], [ %i.pa, %.lr.ph1136.preheader ]
  %.18451125 = phi <16 x i32> [ %i.rb, %.lr.ph1136 ], [ %i.pb, %.lr.ph1136.preheader ]
  %i.qd = load <16 x i16>, ptr %.114411134, align 32, !tbaa !30
  %i.qe = sext <16 x i16> %i.qd to <16 x i32>     ; 5 uses
  %i.qf = load <8 x i16>, ptr %.514141135, align 16, !tbaa !30
  %i.qg = sext <8 x i16> %i.qf to <8 x i32>       ; 4 uses
  %i.qh = shufflevector <8 x i32> %i.qg, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qi = shufflevector <8 x i32> %i.qg, <8 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.qj = shufflevector <8 x i32> %i.qg, <8 x i32> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.qk = mul nsw <16 x i32> %i.qh, %i.qe
  %i.ql = mul nsw <16 x i32> %i.qi, %i.qe
  %i.qm = shufflevector <8 x i32> %i.qg, <8 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.qn = mul nsw <16 x i32> %i.qm, %i.qe
  %i.qo = mul nsw <16 x i32> %i.qj, %i.qe
  %i.qp = shufflevector <16 x i32> %i.qe, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.qq = mul nsw <16 x i32> %i.qh, %i.qp
  %i.qr = mul nsw <16 x i32> %i.qi, %i.qp
  %i.qs = mul nsw <16 x i32> %i.qm, %i.qp
  %i.qt = mul nsw <16 x i32> %i.qj, %i.qp
  %i.qu = add <16 x i32> %i.qk, %.28031132        ; 2 uses
  %i.qv = add <16 x i32> %i.ql, %.28071131        ; 2 uses
  %i.qw = add <16 x i32> %i.qn, %.28111130        ; 2 uses
  %i.qx = add <16 x i32> %i.qo, %.28301129        ; 2 uses
  %i.qy = add <16 x i32> %i.qq, %.28341128        ; 2 uses
  %i.qz = add <16 x i32> %i.qr, %.28381127        ; 2 uses
  %i.ra = add <16 x i32> %i.qs, %.28421126        ; 2 uses
  %i.rb = add <16 x i32> %i.qt, %.18451125        ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.114411134, i64 32
  %i.rd = getelementptr inbounds nuw i8, ptr %.514141135, i64 16 ; 2 uses
  %i.re = add nuw nsw i32 %.114431133, 1          ; 2 uses
  %exitcond2204.not = icmp eq i32 %i.re, %6
  br i1 %exitcond2204.not, label %._crit_edge1137.loopexit, label %.lr.ph1136, !llvm.loop !627

._crit_edge1137.loopexit:                         ; preds = %.lr.ph1136
  %i.rf = bitcast <16 x i32> %i.rb to <8 x i64>
  %i.rg = bitcast <16 x i32> %i.ra to <8 x i64>
  %i.rh = bitcast <16 x i32> %i.qz to <8 x i64>
  %i.ri = bitcast <16 x i32> %i.qy to <8 x i64>
  %i.rj = bitcast <16 x i32> %i.qx to <8 x i64>
  %i.rk = bitcast <16 x i32> %i.qw to <8 x i64>
  %i.rl = bitcast <16 x i32> %i.qv to <8 x i64>
  %i.rm = bitcast <16 x i32> %i.qu to <8 x i64>
  br label %._crit_edge1137

._crit_edge1137:                                  ; preds = %._crit_edge1137.loopexit, %.preheader999
  %.1845.lcssa = phi <8 x i64> [ %.0844.lcssa, %.preheader999 ], [ %i.rf, %._crit_edge1137.loopexit ] ; 2 uses
  %.2842.lcssa = phi <8 x i64> [ %.1841.lcssa, %.preheader999 ], [ %i.rg, %._crit_edge1137.loopexit ] ; 2 uses
  %.2838.lcssa = phi <8 x i64> [ %.1837.lcssa, %.preheader999 ], [ %i.rh, %._crit_edge1137.loopexit ] ; 2 uses
  %.2834.lcssa = phi <8 x i64> [ %.1833.lcssa, %.preheader999 ], [ %i.ri, %._crit_edge1137.loopexit ] ; 2 uses
  %.2830.lcssa = phi <8 x i64> [ %.1829.lcssa, %.preheader999 ], [ %i.rj, %._crit_edge1137.loopexit ] ; 2 uses
  %.2811.lcssa = phi <8 x i64> [ %.1810.lcssa, %.preheader999 ], [ %i.rk, %._crit_edge1137.loopexit ] ; 2 uses
  %.2807.lcssa = phi <8 x i64> [ %.1806.lcssa, %.preheader999 ], [ %i.rl, %._crit_edge1137.loopexit ] ; 2 uses
  %.2803.lcssa = phi <8 x i64> [ %.1802.lcssa, %.preheader999 ], [ %i.rm, %._crit_edge1137.loopexit ] ; 2 uses
  %.51414.lcssa = phi ptr [ %.41413.lcssa, %.preheader999 ], [ %i.rd, %._crit_edge1137.loopexit ] ; 2 uses
  br i1 %7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge1137
  %i.rn = bitcast <8 x i64> %.2807.lcssa to <16 x i32> ; 2 uses
  %i.ro = bitcast <8 x i64> %.2811.lcssa to <16 x i32> ; 2 uses
  %i.rp = bitcast <8 x i64> %.2830.lcssa to <16 x i32> ; 2 uses
  %i.rq = bitcast <8 x i64> %.2838.lcssa to <16 x i32> ; 2 uses
  %i.rr = bitcast <8 x i64> %.2842.lcssa to <16 x i32> ; 2 uses
  %i.rs = bitcast <8 x i64> %.1845.lcssa to <16 x i32> ; 2 uses
  %i.rt = bitcast <8 x i64> %.2803.lcssa to <16 x i32> ; 2 uses
  %i.ru = shufflevector <16 x i32> %i.rt, <16 x i32> %i.rp, <16 x i32> <i32 0, i32 17, i32 1, i32 18, i32 4, i32 21, i32 5, i32 22, i32 8, i32 25, i32 9, i32 26, i32 12, i32 29, i32 13, i32 30> ; 2 uses
  %i.rv = shufflevector <16 x i32> %i.rt, <16 x i32> %i.rp, <16 x i32> <i32 2, i32 19, i32 3, i32 16, i32 6, i32 23, i32 7, i32 20, i32 10, i32 27, i32 11, i32 24, i32 14, i32 31, i32 15, i32 28> ; 2 uses
  %i.rw = shufflevector <16 x i32> %i.ro, <16 x i32> %i.rn, <16 x i32> <i32 2, i32 19, i32 3, i32 16, i32 6, i32 23, i32 7, i32 20, i32 10, i32 27, i32 11, i32 24, i32 14, i32 31, i32 15, i32 28> ; 2 uses
  %i.rx = shufflevector <16 x i32> %i.ro, <16 x i32> %i.rn, <16 x i32> <i32 0, i32 17, i32 1, i32 18, i32 4, i32 21, i32 5, i32 22, i32 8, i32 25, i32 9, i32 26, i32 12, i32 29, i32 13, i32 30> ; 2 uses
  %i.ry = bitcast <8 x i64> %.2834.lcssa to <16 x i32> ; 2 uses
  %i.rz = shufflevector <16 x i32> %i.ry, <16 x i32> %i.rs, <16 x i32> <i32 0, i32 17, i32 1, i32 18, i32 4, i32 21, i32 5, i32 22, i32 8, i32 25, i32 9, i32 26, i32 12, i32 29, i32 13, i32 30> ; 2 uses
  %i.sa = shufflevector <16 x i32> %i.ry, <16 x i32> %i.rs, <16 x i32> <i32 2, i32 19, i32 3, i32 16, i32 6, i32 23, i32 7, i32 20, i32 10, i32 27, i32 11, i32 24, i32 14, i32 31, i32 15, i32 28> ; 2 uses
  %i.sb = shufflevector <16 x i32> %i.rr, <16 x i32> %i.rq, <16 x i32> <i32 2, i32 19, i32 3, i32 16, i32 6, i32 23, i32 7, i32 20, i32 10, i32 27, i32 11, i32 24, i32 14, i32 31, i32 15, i32 28> ; 2 uses
  %i.sc = shufflevector <16 x i32> %i.rr, <16 x i32> %i.rq, <16 x i32> <i32 0, i32 17, i32 1, i32 18, i32 4, i32 21, i32 5, i32 22, i32 8, i32 25, i32 9, i32 26, i32 12, i32 29, i32 13, i32 30> ; 2 uses
  %i.sd = shufflevector <16 x i32> %i.ru, <16 x i32> %i.rw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.se = shufflevector <16 x i32> %i.ru, <16 x i32> %i.rw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.sf = shufflevector <16 x i32> %i.rx, <16 x i32> %i.rv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.sg = shufflevector <16 x i32> %i.rx, <16 x i32> %i.rv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.sh = shufflevector <16 x i32> %i.rz, <16 x i32> %i.sb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.si = shufflevector <16 x i32> %i.rz, <16 x i32> %i.sb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.sj = shufflevector <16 x i32> %i.sc, <16 x i32> %i.sa, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.sk = shufflevector <16 x i32> %i.sc, <16 x i32> %i.sa, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %8 = shufflevector <16 x i32> %i.sd, <16 x i32> %i.sh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.sl = bitcast <16 x i32> %8 to <8 x i64>
  %9 = shufflevector <16 x i32> %i.se, <16 x i32> %i.si, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 19, i32 16, i32 17, i32 18, i32 11, i32 8, i32 9, i32 10, i32 27, i32 24, i32 25, i32 26>
  %i.sm = bitcast <16 x i32> %9 to <8 x i64>
  %10 = shufflevector <16 x i32> %i.sf, <16 x i32> %i.sj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.sn = bitcast <16 x i32> %10 to <8 x i64>
  %11 = shufflevector <16 x i32> %i.sg, <16 x i32> %i.sk, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 19, i32 16, i32 17, i32 18, i32 11, i32 8, i32 9, i32 10, i32 27, i32 24, i32 25, i32 26>
  %i.so = bitcast <16 x i32> %11 to <8 x i64>
  %12 = shufflevector <16 x i32> %i.sh, <16 x i32> %i.sd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.sp = bitcast <16 x i32> %12 to <8 x i64>
  %13 = shufflevector <16 x i32> %i.si, <16 x i32> %i.se, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 23, i32 20, i32 21, i32 22, i32 15, i32 12, i32 13, i32 14, i32 31, i32 28, i32 29, i32 30>
  %i.sq = bitcast <16 x i32> %13 to <8 x i64>
  %14 = shufflevector <16 x i32> %i.sj, <16 x i32> %i.sf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.sr = bitcast <16 x i32> %14 to <8 x i64>
  %i.ss = shufflevector <16 x i32> %i.sk, <16 x i32> %i.sg, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 23, i32 20, i32 21, i32 22, i32 15, i32 12, i32 13, i32 14, i32 31, i32 28, i32 29, i32 30>
  %i.st = bitcast <16 x i32> %i.ss to <8 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge1137
  %.2846 = phi <8 x i64> [ %i.st, %bb.j ], [ %.1845.lcssa, %._crit_edge1137 ]
  %.3843 = phi <8 x i64> [ %i.sr, %bb.j ], [ %.2842.lcssa, %._crit_edge1137 ]
  %.3839 = phi <8 x i64> [ %i.sq, %bb.j ], [ %.2838.lcssa, %._crit_edge1137 ]
  %.3835 = phi <8 x i64> [ %i.sp, %bb.j ], [ %.2834.lcssa, %._crit_edge1137 ]
  %.3831 = phi <8 x i64> [ %i.so, %bb.j ], [ %.2830.lcssa, %._crit_edge1137 ]
  %.3812 = phi <8 x i64> [ %i.sn, %bb.j ], [ %.2811.lcssa, %._crit_edge1137 ]
  %.3808 = phi <8 x i64> [ %i.sm, %bb.j ], [ %.2807.lcssa, %._crit_edge1137 ]
  %.3804 = phi <8 x i64> [ %i.sl, %bb.j ], [ %.2803.lcssa, %._crit_edge1137 ]
  store <8 x i64> %.3804, ptr %.31149, align 64, !tbaa !30
  %i.su = getelementptr inbounds nuw i8, ptr %.31149, i64 64
  store <8 x i64> %.3808, ptr %i.su, align 64, !tbaa !30
  %i.sv = getelementptr inbounds nuw i8, ptr %.31149, i64 128
  store <8 x i64> %.3812, ptr %i.sv, align 64, !tbaa !30
  %i.sw = getelementptr inbounds nuw i8, ptr %.31149, i64 192
  store <8 x i64> %.3831, ptr %i.sw, align 64, !tbaa !30
  %i.sx = getelementptr inbounds nuw i8, ptr %.31149, i64 256
  store <8 x i64> %.3835, ptr %i.sx, align 64, !tbaa !30
  %i.sy = getelementptr inbounds nuw i8, ptr %.31149, i64 320
  store <8 x i64> %.3839, ptr %i.sy, align 64, !tbaa !30
  %i.sz = getelementptr inbounds nuw i8, ptr %.31149, i64 384
  store <8 x i64> %.3843, ptr %i.sz, align 64, !tbaa !30
  %i.ta = getelementptr inbounds nuw i8, ptr %.31149, i64 448
  store <8 x i64> %.2846, ptr %i.ta, align 64, !tbaa !30
  %i.tb = getelementptr inbounds nuw i8, ptr %.31149, i64 512 ; 2 uses
  %i.tc = add nuw nsw i32 %.114251147, 8          ; 3 uses
  %i.td = or disjoint i32 %i.tc, 7
  %i.te = icmp slt i32 %i.td, %4
  br i1 %i.te, label %.lr.ph1150, label %.preheader1003, !llvm.loop !628

.preheader1002:                                   ; preds = %bb.o, %.preheader1003
  %.21426.lcssa = phi i32 [ %.11425.lcssa, %.preheader1003 ], [ %i.xs, %bb.o ] ; 3 uses
  %.61415.lcssa = phi ptr [ %.31412.lcssa, %.preheader1003 ], [ %.81417.lcssa, %bb.o ] ; 2 uses
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader1003 ], [ %i.xr, %bb.o ] ; 2 uses
  %i.tf = or disjoint i32 %.21426.lcssa, 1
  %i.tg = icmp slt i32 %i.tf, %4
  br i1 %i.tg, label %.lr.ph1216, label %.preheader1001

.lr.ph1187:                                       ; preds = %.preheader1003, %bb.o
  %.41186 = phi ptr [ %i.xr, %bb.o ], [ %.3.lcssa, %.preheader1003 ] ; 9 uses
  %.614151185 = phi ptr [ %.81417.lcssa, %bb.o ], [ %.31412.lcssa, %.preheader1003 ] ; 4 uses
  %.214261184 = phi i32 [ %i.xs, %bb.o ], [ %.11425.lcssa, %.preheader1003 ]
  br i1 %i.g, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph1187
  %i.th = load <8 x i64>, ptr %.41186, align 64, !tbaa !30
  %i.ti = getelementptr inbounds nuw i8, ptr %.41186, i64 64
  %i.tj = load <8 x i64>, ptr %i.ti, align 64, !tbaa !30
  %i.tk = getelementptr inbounds nuw i8, ptr %.41186, i64 128
  %i.tl = load <8 x i64>, ptr %i.tk, align 64, !tbaa !30
  %i.tm = getelementptr inbounds nuw i8, ptr %.41186, i64 192
  %i.tn = load <8 x i64>, ptr %i.tm, align 64, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph1187, %bb.l
  %.0870 = phi <8 x i64> [ %i.tl, %bb.l ], [ zeroinitializer, %.lr.ph1187 ] ; 2 uses
  %.0866 = phi <8 x i64> [ %i.tj, %bb.l ], [ zeroinitializer, %.lr.ph1187 ] ; 2 uses
  %.0847 = phi <8 x i64> [ %i.th, %bb.l ], [ zeroinitializer, %.lr.ph1187 ] ; 2 uses
  %storemerge1675 = phi <8 x i64> [ %i.tn, %bb.l ], [ zeroinitializer, %.lr.ph1187 ] ; 2 uses
  br i1 %i.h, label %.lr.ph1162.preheader, label %.preheader998

.lr.ph1162.preheader:                             ; preds = %bb.m
  %i.to = bitcast <8 x i64> %.0847 to <16 x i32>  ; 2 uses
  %i.tp = bitcast <8 x i64> %.0866 to <16 x i32>  ; 2 uses
  %i.tq = bitcast <8 x i64> %.0870 to <16 x i32>  ; 2 uses
  %i.tr = bitcast <8 x i64> %storemerge1675 to <16 x i32> ; 2 uses
  br i1 %i.w, label %.lr.ph1162.epil.preheader, label %.lr.ph1162

.preheader998.loopexit.unr-lcssa:                 ; preds = %.lr.ph1162
  br i1 %lcmp.mod.not.not, label %.lr.ph1162.epil.preheader, label %.preheader998.loopexit

.lr.ph1162.epil.preheader:                        ; preds = %.preheader998.loopexit.unr-lcssa, %.lr.ph1162.preheader
  %.714161160.epil.init = phi ptr [ %.614151185, %.lr.ph1162.preheader ], [ %i.vw, %.preheader998.loopexit.unr-lcssa ]
  %.014441159.epil.init = phi ptr [ %i.bs, %.lr.ph1162.preheader ], [ %i.vv, %.preheader998.loopexit.unr-lcssa ] ; 2 uses
  %.18481157.epil.init = phi <16 x i32> [ %i.to, %.lr.ph1162.preheader ], [ %i.vo, %.preheader998.loopexit.unr-lcssa ]
  %.18671156.epil.init = phi <16 x i32> [ %i.tp, %.lr.ph1162.preheader ], [ %i.vr, %.preheader998.loopexit.unr-lcssa ]
  %.18711155.epil.init = phi <16 x i32> [ %i.tq, %.lr.ph1162.preheader ], [ %i.vt, %.preheader998.loopexit.unr-lcssa ]
  %.08741154.epil.init = phi <16 x i32> [ %i.tr, %.lr.ph1162.preheader ], [ %i.vu, %.preheader998.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3788)
  %i.ts = load <8 x i64>, ptr %.014441159.epil.init, align 1, !tbaa !30 ; 2 uses
  %i.tt = load <2 x i64>, ptr %.714161160.epil.init, align 1, !tbaa !30 ; 2 uses
  %i.tu = bitcast <8 x i64> %i.ts to <16 x i32>
  %i.tv = shufflevector <16 x i32> %i.tu, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.tw = bitcast <8 x i64> %i.ts to <32 x i16>   ; 2 uses
  %i.tx = bitcast <2 x i64> %i.tt to <8 x i16>
  %i.ty = shufflevector <8 x i16> %i.tx, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.tz = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18481157.epil.init, <32 x i16> %i.tw, <32 x i16> %i.ty)
  %i.ua = bitcast <2 x i64> %i.tt to <8 x i16>
  %i.ub = shufflevector <8 x i16> %i.ua, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.uc = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18671156.epil.init, <32 x i16> %i.tw, <32 x i16> %i.ub)
  %i.ud = bitcast <16 x i32> %i.tv to <32 x i16>  ; 2 uses
  %i.ue = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18711155.epil.init, <32 x i16> %i.ud, <32 x i16> %i.ty)
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.08741154.epil.init, <32 x i16> %i.ud, <32 x i16> %i.ub)
  %i.ug = getelementptr inbounds nuw i8, ptr %.014441159.epil.init, i64 64
  br label %.preheader998.loopexit

.preheader998.loopexit:                           ; preds = %.preheader998.loopexit.unr-lcssa, %.lr.ph1162.epil.preheader
  %.lcssa3762 = phi <16 x i32> [ %i.vo, %.preheader998.loopexit.unr-lcssa ], [ %i.tz, %.lr.ph1162.epil.preheader ]
  %.lcssa3761 = phi <16 x i32> [ %i.vr, %.preheader998.loopexit.unr-lcssa ], [ %i.uc, %.lr.ph1162.epil.preheader ]
  %.lcssa3760 = phi <16 x i32> [ %i.vt, %.preheader998.loopexit.unr-lcssa ], [ %i.ue, %.lr.ph1162.epil.preheader ]
  %.lcssa3759 = phi <16 x i32> [ %i.vu, %.preheader998.loopexit.unr-lcssa ], [ %i.uf, %.lr.ph1162.epil.preheader ]
  %.lcssa3758 = phi ptr [ %i.vv, %.preheader998.loopexit.unr-lcssa ], [ %i.ug, %.lr.ph1162.epil.preheader ]
  %i.uh = bitcast <16 x i32> %.lcssa3759 to <8 x i64>
  %i.ui = bitcast <16 x i32> %.lcssa3760 to <8 x i64>
  %i.uj = bitcast <16 x i32> %.lcssa3761 to <8 x i64>
  %i.uk = bitcast <16 x i32> %.lcssa3762 to <8 x i64>
  %i.ul = getelementptr i8, ptr %.614151185, i64 %i.p
  %scevgep2205 = getelementptr i8, ptr %i.ul, i64 16
  br label %.preheader998

.preheader998:                                    ; preds = %.preheader998.loopexit, %bb.m
  %.0874.lcssa = phi <8 x i64> [ %storemerge1675, %bb.m ], [ %i.uh, %.preheader998.loopexit ] ; 2 uses
  %.1871.lcssa = phi <8 x i64> [ %.0870, %bb.m ], [ %i.ui, %.preheader998.loopexit ] ; 2 uses
  %.1867.lcssa = phi <8 x i64> [ %.0866, %bb.m ], [ %i.uj, %.preheader998.loopexit ] ; 2 uses
  %.1848.lcssa = phi <8 x i64> [ %.0847, %bb.m ], [ %i.uk, %.preheader998.loopexit ] ; 2 uses
  %.01446.lcssa = phi i32 [ 0, %bb.m ], [ %i.k, %.preheader998.loopexit ] ; 2 uses
  %.01444.lcssa = phi ptr [ %i.bs, %bb.m ], [ %.lcssa3758, %.preheader998.loopexit ]
  %.71416.lcssa = phi ptr [ %.614151185, %bb.m ], [ %scevgep2205, %.preheader998.loopexit ] ; 2 uses
  %i.um = icmp slt i32 %.01446.lcssa, %6
  br i1 %i.um, label %.lr.ph1177.preheader, label %._crit_edge1178

.lr.ph1177.preheader:                             ; preds = %.preheader998
  %i.un = bitcast <8 x i64> %.1848.lcssa to <16 x i32>
  %i.uo = bitcast <8 x i64> %.1867.lcssa to <16 x i32>
  %i.up = bitcast <8 x i64> %.1871.lcssa to <16 x i32>
  %i.uq = bitcast <8 x i64> %.0874.lcssa to <16 x i32>
  br label %.lr.ph1177

.lr.ph1162:                                       ; preds = %.lr.ph1162.preheader, %.lr.ph1162
  %.714161160 = phi ptr [ %i.vw, %.lr.ph1162 ], [ %.614151185, %.lr.ph1162.preheader ] ; 3 uses
  %.014441159 = phi ptr [ %i.vv, %.lr.ph1162 ], [ %i.bs, %.lr.ph1162.preheader ] ; 3 uses
  %.18481157 = phi <16 x i32> [ %i.vo, %.lr.ph1162 ], [ %i.to, %.lr.ph1162.preheader ]
  %.18671156 = phi <16 x i32> [ %i.vr, %.lr.ph1162 ], [ %i.tp, %.lr.ph1162.preheader ]
  %.18711155 = phi <16 x i32> [ %i.vt, %.lr.ph1162 ], [ %i.tq, %.lr.ph1162.preheader ]
  %.08741154 = phi <16 x i32> [ %i.vu, %.lr.ph1162 ], [ %i.tr, %.lr.ph1162.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1162 ], [ 0, %.lr.ph1162.preheader ]
  %i.ur = load <8 x i64>, ptr %.014441159, align 1, !tbaa !30 ; 2 uses
  %i.us = load <2 x i64>, ptr %.714161160, align 1, !tbaa !30 ; 2 uses
  %i.ut = bitcast <8 x i64> %i.ur to <16 x i32>
  %i.uu = shufflevector <16 x i32> %i.ut, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.uv = bitcast <8 x i64> %i.ur to <32 x i16>   ; 2 uses
  %i.uw = bitcast <2 x i64> %i.us to <8 x i16>
  %i.ux = shufflevector <8 x i16> %i.uw, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.uy = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18481157, <32 x i16> %i.uv, <32 x i16> %i.ux)
  %i.uz = bitcast <2 x i64> %i.us to <8 x i16>
  %i.va = shufflevector <8 x i16> %i.uz, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.vb = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18671156, <32 x i16> %i.uv, <32 x i16> %i.va)
  %i.vc = bitcast <16 x i32> %i.uu to <32 x i16>  ; 2 uses
  %i.vd = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18711155, <32 x i16> %i.vc, <32 x i16> %i.ux)
  %i.ve = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.08741154, <32 x i16> %i.vc, <32 x i16> %i.va)
  %i.vf = getelementptr inbounds nuw i8, ptr %.014441159, i64 64
  %i.vg = getelementptr inbounds nuw i8, ptr %.714161160, i64 16
  %i.vh = load <8 x i64>, ptr %i.vf, align 1, !tbaa !30 ; 2 uses
  %i.vi = load <2 x i64>, ptr %i.vg, align 1, !tbaa !30 ; 2 uses
  %i.vj = bitcast <8 x i64> %i.vh to <16 x i32>
  %i.vk = shufflevector <16 x i32> %i.vj, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.vl = bitcast <8 x i64> %i.vh to <32 x i16>   ; 2 uses
  %i.vm = bitcast <2 x i64> %i.vi to <8 x i16>
  %i.vn = shufflevector <8 x i16> %i.vm, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vo = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.uy, <32 x i16> %i.vl, <32 x i16> %i.vn) ; 3 uses
  %i.vp = bitcast <2 x i64> %i.vi to <8 x i16>
  %i.vq = shufflevector <8 x i16> %i.vp, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.vr = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.vb, <32 x i16> %i.vl, <32 x i16> %i.vq) ; 3 uses
  %i.vs = bitcast <16 x i32> %i.vk to <32 x i16>  ; 2 uses
  %i.vt = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.vd, <32 x i16> %i.vs, <32 x i16> %i.vn) ; 3 uses
  %i.vu = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ve, <32 x i16> %i.vs, <32 x i16> %i.vq) ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.014441159, i64 128 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.714161160, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader998.loopexit.unr-lcssa, label %.lr.ph1162, !llvm.loop !629

.lr.ph1177:                                       ; preds = %.lr.ph1177.preheader, %.lr.ph1177
  %.814171176 = phi ptr [ %i.wq, %.lr.ph1177 ], [ %.71416.lcssa, %.lr.ph1177.preheader ] ; 2 uses
  %.114451175 = phi ptr [ %i.wp, %.lr.ph1177 ], [ %.01444.lcssa, %.lr.ph1177.preheader ] ; 2 uses
  %.114471174 = phi i32 [ %i.wr, %.lr.ph1177 ], [ %.01446.lcssa, %.lr.ph1177.preheader ]
  %.28491173 = phi <16 x i32> [ %i.wl, %.lr.ph1177 ], [ %i.un, %.lr.ph1177.preheader ]
  %.28681172 = phi <16 x i32> [ %i.wm, %.lr.ph1177 ], [ %i.uo, %.lr.ph1177.preheader ]
  %.28721171 = phi <16 x i32> [ %i.wn, %.lr.ph1177 ], [ %i.up, %.lr.ph1177.preheader ]
  %.18751170 = phi <16 x i32> [ %i.wo, %.lr.ph1177 ], [ %i.uq, %.lr.ph1177.preheader ]
  %i.vx = load <16 x i16>, ptr %.114451175, align 32, !tbaa !30
  %i.vy = sext <16 x i16> %i.vx to <16 x i32>     ; 3 uses
  %i.vz = load double, ptr %.814171176, align 1, !tbaa !30
  %i.wa = insertelement <4 x double> poison, double %i.vz, i64 0
  %i.wb = bitcast <4 x double> %i.wa to <4 x i64>
  %i.wc = shufflevector <4 x i64> %i.wb, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.wd = bitcast <4 x i64> %i.wc to <16 x i16>
  %i.we = sext <16 x i16> %i.wd to <16 x i32>     ; 3 uses
  %i.wf = shufflevector <16 x i32> %i.we, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.wg = mul nsw <16 x i32> %i.we, %i.vy
  %i.wh = mul nsw <16 x i32> %i.wf, %i.vy
  %i.wi = shufflevector <16 x i32> %i.vy, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.wj = mul nsw <16 x i32> %i.wi, %i.we
  %i.wk = mul nsw <16 x i32> %i.wf, %i.wi
  %i.wl = add <16 x i32> %i.wg, %.28491173        ; 2 uses
  %i.wm = add <16 x i32> %i.wh, %.28681172        ; 2 uses
  %i.wn = add <16 x i32> %i.wj, %.28721171        ; 2 uses
  %i.wo = add <16 x i32> %i.wk, %.18751170        ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.114451175, i64 32
  %i.wq = getelementptr inbounds nuw i8, ptr %.814171176, i64 8 ; 2 uses
  %i.wr = add nuw nsw i32 %.114471174, 1          ; 2 uses
  %exitcond2206.not = icmp eq i32 %i.wr, %6
  br i1 %exitcond2206.not, label %._crit_edge1178.loopexit, label %.lr.ph1177, !llvm.loop !630

._crit_edge1178.loopexit:                         ; preds = %.lr.ph1177
  %i.ws = bitcast <16 x i32> %i.wo to <8 x i64>
  %i.wt = bitcast <16 x i32> %i.wn to <8 x i64>
  %i.wu = bitcast <16 x i32> %i.wm to <8 x i64>
  %i.wv = bitcast <16 x i32> %i.wl to <8 x i64>
end_hunk_3
