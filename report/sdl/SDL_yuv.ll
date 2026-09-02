Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.arr = and <4 x i32> %i.arq, splat (i32 255)  ; 2 uses
  %i.ars = lshr <4 x i32> %strided.vec1835, splat (i32 8)
  %i.art = and <4 x i32> %i.ars, splat (i32 255)  ; 2 uses
  %i.aru = and <4 x i32> %strided.vec1835, splat (i32 255) ; 2 uses
  %i.arv = lshr <4 x i32> %strided.vec1836, splat (i32 16)
  %i.arw = and <4 x i32> %i.arv, splat (i32 255)  ; 2 uses
  %i.arx = lshr <4 x i32> %strided.vec1836, splat (i32 8)
  %i.ary = and <4 x i32> %i.arx, splat (i32 255)  ; 2 uses
  %i.arz = and <4 x i32> %strided.vec1836, splat (i32 255) ; 2 uses
  %i.asa = add nuw nsw <4 x i32> %i.arw, %i.arr
  %i.asb = lshr <4 x i32> %i.asa, splat (i32 1)
  %i.asc = add nuw nsw <4 x i32> %i.ary, %i.art
  %i.asd = lshr <4 x i32> %i.asc, splat (i32 1)
  %i.ase = add nuw nsw <4 x i32> %i.arz, %i.aru
  %i.asf = lshr <4 x i32> %i.ase, splat (i32 1)
  %i.asg = uitofp nneg <4 x i32> %i.arr to <4 x float>
  %i.ash = uitofp nneg <4 x i32> %i.art to <4 x float>
  %i.asi = fmul <4 x float> %broadcast.splat1814, %i.ash
  %i.asj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1812, <4 x float> %i.asg, <4 x float> %i.asi)
  %i.ask = uitofp nneg <4 x i32> %i.aru to <4 x float>
  %i.asl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1816, <4 x float> %i.ask, <4 x float> %i.asj)
  %i.asm = fadd <4 x float> %i.asl, splat (float 5.000000e-01)
  %i.asn = fptosi <4 x float> %i.asm to <4 x i32>
  %i.aso = add nsw <4 x i32> %broadcast.splat1818, %i.asn
  %i.asp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aso, <4 x i32> zeroinitializer)
  %i.asq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.asp, <4 x i32> splat (i32 255))
  %i.asr = trunc nuw <4 x i32> %i.asq to <4 x i8>
  %i.ass = uitofp nneg <4 x i32> %i.asb to <4 x float> ; 2 uses
  %i.ast = uitofp nneg <4 x i32> %i.asd to <4 x float> ; 2 uses
  %i.asu = fmul <4 x float> %broadcast.splat1822, %i.ast
  %i.asv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1820, <4 x float> %i.ass, <4 x float> %i.asu)
  %i.asw = uitofp nneg <4 x i32> %i.asf to <4 x float> ; 2 uses
  %i.asx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1824, <4 x float> %i.asw, <4 x float> %i.asv)
  %i.asy = fadd <4 x float> %i.asx, splat (float 5.000000e-01)
  %i.asz = fptosi <4 x float> %i.asy to <4 x i32> ; 3 uses
  %i.ata = icmp sgt <4 x i32> %i.asz, splat (i32 -129)
  %i.atb = icmp sgt <4 x i32> %i.asz, splat (i32 127)
  %i.atc = trunc <4 x i32> %i.asz to <4 x i8>
  %i.atd = xor <4 x i8> %i.atc, splat (i8 -128)
  %predphi1837 = select <4 x i1> %i.atb, <4 x i8> splat (i8 -1), <4 x i8> %i.atd
  %predphi1838 = select <4 x i1> %i.ata, <4 x i8> %predphi1837, <4 x i8> zeroinitializer
  %i.ate = uitofp nneg <4 x i32> %i.arw to <4 x float>
  %i.atf = uitofp nneg <4 x i32> %i.ary to <4 x float>
  %i.atg = fmul <4 x float> %broadcast.splat1814, %i.atf
  %i.ath = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1812, <4 x float> %i.ate, <4 x float> %i.atg)
  %i.ati = uitofp nneg <4 x i32> %i.arz to <4 x float>
  %i.atj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1816, <4 x float> %i.ati, <4 x float> %i.ath)
  %i.atk = fadd <4 x float> %i.atj, splat (float 5.000000e-01)
  %i.atl = fptosi <4 x float> %i.atk to <4 x i32>
  %i.atm = add nsw <4 x i32> %broadcast.splat1818, %i.atl
  %i.atn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.atm, <4 x i32> zeroinitializer)
  %i.ato = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.atn, <4 x i32> splat (i32 255))
  %i.atp = trunc nuw <4 x i32> %i.ato to <4 x i8>
  %i.atq = fmul <4 x float> %broadcast.splat1828, %i.ast
  %i.atr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1826, <4 x float> %i.ass, <4 x float> %i.atq)
  %i.ats = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1830, <4 x float> %i.asw, <4 x float> %i.atr)
  %i.att = fadd <4 x float> %i.ats, splat (float 5.000000e-01)
  %i.atu = fptosi <4 x float> %i.att to <4 x i32> ; 3 uses
  %i.atv = icmp sgt <4 x i32> %i.atu, splat (i32 -129)
  %i.atw = icmp sgt <4 x i32> %i.atu, splat (i32 127)
  %i.atx = trunc <4 x i32> %i.atu to <4 x i8>
  %i.aty = xor <4 x i8> %i.atx, splat (i8 -128)
  %predphi1839 = select <4 x i1> %i.atw, <4 x i8> splat (i8 -1), <4 x i8> %i.aty
  %predphi1840 = select <4 x i1> %i.atv, <4 x i8> %predphi1839, <4 x i8> zeroinitializer
  %i.atz = shufflevector <4 x i8> %i.asr, <4 x i8> %predphi1838, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aua = shufflevector <4 x i8> %i.atp, <4 x i8> %predphi1840, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1841 = shufflevector <8 x i8> %i.atz, <8 x i8> %i.aua, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec1841, ptr %next.gep1833, align 1, !alias.scope !100, !noalias !99
  %index.next1842 = add nuw i64 %index1832, 4     ; 2 uses
  %i.aub = icmp eq i64 %index.next1842, %n.vec1810
  br i1 %i.aub, label %middle.block1843, label %vector.body1831, !llvm.loop !56

middle.block1843:                                 ; preds = %vector.body1831
  br i1 %cmp.n1844, label %._crit_edge1469, label %scalar.ph1807.preheader

scalar.ph1807.preheader:                          ; preds = %vector.memcheck1800, %.lr.ph1468, %middle.block1843
  %indvars.iv1591.ph = phi i64 [ 0, %vector.memcheck1800 ], [ 0, %.lr.ph1468 ], [ %n.vec1810, %middle.block1843 ]
  %.11467.ph = phi ptr [ %.01474, %vector.memcheck1800 ], [ %.01474, %.lr.ph1468 ], [ %i.arm, %middle.block1843 ]
  %i.auc = extractelement <2 x float> %i.arh, i64 0
  %i.aud = shufflevector <2 x float> %i.arh, <2 x float> %i.arj, <2 x i32> <i32 1, i32 3>
  %i.aue = shufflevector <2 x float> %i.arh, <2 x float> %i.arj, <2 x i32> <i32 0, i32 2>
  %i.auf = insertelement <2 x float> poison, float %i.arc, i64 0
  %i.aug = insertelement <2 x float> %i.auf, float %i.ark, i64 1
  br label %scalar.ph1807

scalar.ph1807:                                    ; preds = %scalar.ph1807.preheader, %bb.cq
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592, %bb.cq ], [ %indvars.iv1591.ph, %scalar.ph1807.preheader ] ; 2 uses
  %.11467 = phi ptr [ %i.axd, %bb.cq ], [ %.11467.ph, %scalar.ph1807.preheader ] ; 5 uses
  %.idx1687 = shl nuw nsw i64 %indvars.iv1591, 3
  %i.auh = getelementptr inbounds nuw i8, ptr %.013031473, i64 %.idx1687 ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 4          ; 3 uses
  %i.auj = lshr i32 %i.aui, 16
  %i.auk = and i32 %i.auj, 255                    ; 2 uses
  %i.aul = lshr i32 %i.aui, 8
  %i.aum = and i32 %i.aul, 255                    ; 2 uses
  %i.aun = and i32 %i.aui, 255                    ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  %i.aup = load i32, ptr %i.auo, align 4          ; 3 uses
  %i.auq = lshr i32 %i.aup, 16
  %i.aur = and i32 %i.auq, 255                    ; 2 uses
  %i.aus = lshr i32 %i.aup, 8
  %i.aut = and i32 %i.aus, 255                    ; 2 uses
  %i.auu = and i32 %i.aup, 255                    ; 2 uses
  %i.auv = add nuw nsw i32 %i.aur, %i.auk
  %i.auw = lshr i32 %i.auv, 1
  %i.aux = add nuw nsw i32 %i.aut, %i.aum
  %i.auy = lshr i32 %i.aux, 1
  %i.auz = add nuw nsw i32 %i.auu, %i.aun
  %i.ava = lshr i32 %i.auz, 1
  %i.avb = uitofp nneg i32 %i.auk to float
  %i.avc = uitofp nneg i32 %i.aum to float
  %i.avd = fmul float %i.ari, %i.avc
  %i.ave = tail call float @llvm.fmuladd.f32(float %i.auc, float %i.avb, float %i.avd)
  %i.avf = uitofp nneg i32 %i.aun to float
  %i.avg = tail call float @llvm.fmuladd.f32(float %i.arc, float %i.avf, float %i.ave)
  %i.avh = fadd float %i.avg, 5.000000e-01
  %i.avi = fptosi float %i.avh to i32
  %i.avj = add nsw i32 %i.ard, %i.avi
  %i.avk = tail call i32 @llvm.smax.i32(i32 %i.avj, i32 0)
  %i.avl = tail call i32 @llvm.umin.i32(i32 %i.avk, i32 255)
  %i.avm = trunc nuw i32 %i.avl to i8
  %i.avn = getelementptr inbounds nuw i8, ptr %.11467, i64 1
  store i8 %i.avm, ptr %.11467, align 1
  %i.avo = uitofp nneg i32 %i.auw to float        ; 2 uses
  %i.avp = uitofp nneg i32 %i.auy to float        ; 2 uses
  %i.avq = fmul float %i.arf, %i.avp
  %i.avr = tail call float @llvm.fmuladd.f32(float %i.are, float %i.avo, float %i.avq)
  %i.avs = uitofp nneg i32 %i.ava to float        ; 2 uses
  %i.avt = tail call float @llvm.fmuladd.f32(float %i.arg, float %i.avs, float %i.avr)
  %i.avu = fadd float %i.avt, 5.000000e-01
  %i.avv = fptosi float %i.avu to i32             ; 3 uses
  %i.avw = icmp slt i32 %i.avv, -128
  br i1 %i.avw, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %scalar.ph1807
  %i.avx = icmp sgt i32 %i.avv, 127
  br i1 %i.avx, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.avy = trunc nsw i32 %i.avv to i8
  %i.avz = xor i8 %i.avy, -128
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %scalar.ph1807
  %i.awa = phi i8 [ 0, %scalar.ph1807 ], [ %i.avz, %bb.cm ], [ -1, %bb.cl ]
  %i.awb = getelementptr inbounds nuw i8, ptr %.11467, i64 2
  store i8 %i.awa, ptr %i.avn, align 1
  %i.awc = uitofp nneg i32 %i.aur to float
  %i.awd = uitofp nneg i32 %i.aut to float
  %i.awe = uitofp nneg i32 %i.auu to float
  %i.awf = getelementptr inbounds nuw i8, ptr %.11467, i64 3
  %i.awg = insertelement <2 x float> poison, float %i.awd, i64 0
  %i.awh = insertelement <2 x float> %i.awg, float %i.avp, i64 1
  %i.awi = fmul <2 x float> %i.aud, %i.awh
  %i.awj = insertelement <2 x float> poison, float %i.awc, i64 0
  %i.awk = insertelement <2 x float> %i.awj, float %i.avo, i64 1
  %i.awl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aue, <2 x float> %i.awk, <2 x float> %i.awi)
  %i.awm = insertelement <2 x float> poison, float %i.awe, i64 0
  %i.awn = insertelement <2 x float> %i.awm, float %i.avs, i64 1
  %i.awo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aug, <2 x float> %i.awn, <2 x float> %i.awl)
  %i.awp = fadd <2 x float> %i.awo, splat (float 5.000000e-01) ; 2 uses
  %i.awq = extractelement <2 x float> %i.awp, i64 0
  %i.awr = fptosi float %i.awq to i32
  %i.aws = add nsw i32 %i.ard, %i.awr
  %i.awt = tail call i32 @llvm.smax.i32(i32 %i.aws, i32 0)
  %i.awu = tail call i32 @llvm.umin.i32(i32 %i.awt, i32 255)
  %i.awv = trunc nuw i32 %i.awu to i8
  store i8 %i.awv, ptr %i.awb, align 1
  %i.aww = extractelement <2 x float> %i.awp, i64 1
  %i.awx = fptosi float %i.aww to i32             ; 3 uses
  %i.awy = icmp slt i32 %i.awx, -128
  br i1 %i.awy, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.awz = icmp sgt i32 %i.awx, 127
  br i1 %i.awz, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.axa = trunc nsw i32 %i.awx to i8
  %i.axb = xor i8 %i.axa, -128
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.axc = phi i8 [ 0, %bb.cn ], [ %i.axb, %bb.cp ], [ -1, %bb.co ]
  %i.axd = getelementptr inbounds nuw i8, ptr %.11467, i64 4 ; 2 uses
  store i8 %i.axc, ptr %i.awf, align 1
  %indvars.iv.next1592 = add nuw nsw i64 %indvars.iv1591, 1 ; 2 uses
  %exitcond1595.not = icmp eq i64 %indvars.iv.next1592, %wide.trip.count1594
  br i1 %exitcond1595.not, label %._crit_edge1469, label %scalar.ph1807, !llvm.loop !57

._crit_edge1469:                                  ; preds = %bb.cq, %middle.block1843, %.preheader1443
  %.71337.lcssa.shrunk = phi i32 [ 0, %.preheader1443 ], [ %i.aqu, %middle.block1843 ], [ %i.aqu, %bb.cq ]
  %.1.lcssa = phi ptr [ %.01474, %.preheader1443 ], [ %i.arm, %middle.block1843 ], [ %i.axd, %bb.cq ] ; 6 uses
  br i1 %.not1397, label %bb.cy, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge1469
  %.71337.lcssa = zext nneg i32 %.71337.lcssa.shrunk to i64
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %.013031473, i64 %.71337.lcssa
  %i.axf = load i32, ptr %i.l, align 8
  %i.axg = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.axh = load i32, ptr %i.axe, align 4          ; 3 uses
  %8 = lshr i32 %i.axh, 8
  %9 = lshr i32 %i.axh, 16
  %10 = and i32 %8, 255
  %11 = and i32 %9, 255
  %12 = and i32 %i.axh, 255
  %13 = uitofp nneg i32 %10 to float              ; 2 uses
  %14 = uitofp nneg i32 %11 to float              ; 2 uses
  %15 = uitofp nneg i32 %12 to float              ; 2 uses
  %i.axi = load <4 x float>, ptr %i.aqj, align 4  ; 3 uses
  %i.axj = load <2 x float>, ptr %i.aqn, align 4  ; 2 uses
  %i.axk = shufflevector <4 x float> %i.axi, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.axl = shufflevector <2 x float> %i.axj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.axm = shufflevector <4 x float> %i.axi, <4 x float> %i.axl, <2 x i32> <i32 1, i32 4>
  %16 = insertelement <2 x float> poison, float %13, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axn = fmul <2 x float> %i.axm, %17
  %i.axo = shufflevector <4 x float> %i.axi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %18 = insertelement <2 x float> poison, float %14, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axo, <2 x float> %19, <2 x float> %i.axn)
  %i.axq = shufflevector <2 x float> %i.axk, <2 x float> %i.axj, <2 x i32> <i32 0, i32 3>
  %20 = insertelement <2 x float> poison, float %15, i64 0
  %i.axr = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axq, <2 x float> %i.axr, <2 x float> %i.axp)
  %i.axt = fadd <2 x float> %i.axs, splat (float 5.000000e-01) ; 2 uses
  %i.axu = extractelement <2 x float> %i.axt, i64 0
  %i.axv = fptosi float %i.axu to i32
  %i.axw = add nsw i32 %i.axf, %i.axv
  %i.axx = tail call i32 @llvm.smax.i32(i32 %i.axw, i32 0)
  %i.axy = tail call i32 @llvm.umin.i32(i32 %i.axx, i32 255)
  %i.axz = trunc nuw i32 %i.axy to i8             ; 2 uses
  store i8 %i.axz, ptr %.1.lcssa, align 1
  %i.aya = extractelement <2 x float> %i.axt, i64 1
  %i.ayb = fptosi float %i.aya to i32             ; 3 uses
  %i.ayc = icmp slt i32 %i.ayb, -128
  br i1 %i.ayc, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayd = icmp sgt i32 %i.ayb, 127
  br i1 %i.ayd, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aye = trunc nsw i32 %i.ayb to i8
  %i.ayf = xor i8 %i.aye, -128
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.ayg = phi i8 [ 0, %bb.cr ], [ %i.ayf, %bb.ct ], [ -1, %bb.cs ]
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  store i8 %i.ayg, ptr %i.axg, align 1
  %i.ayi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 3
  store i8 %i.axz, ptr %i.ayh, align 1
  %i.ayj = load float, ptr %i.aqp, align 4
  %i.ayk = load float, ptr %i.aqq, align 8
  %i.ayl = fmul float %i.ayk, %13
  %i.aym = tail call float @llvm.fmuladd.f32(float %i.ayj, float %14, float %i.ayl)
  %i.ayn = load float, ptr %i.aqr, align 4
  %i.ayo = tail call float @llvm.fmuladd.f32(float %i.ayn, float %15, float %i.aym)
  %i.ayp = fadd float %i.ayo, 5.000000e-01
  %i.ayq = fptosi float %i.ayp to i32             ; 3 uses
  %i.ayr = icmp slt i32 %i.ayq, -128
  br i1 %i.ayr, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ays = icmp sgt i32 %i.ayq, 127
  br i1 %i.ays, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ayt = trunc nsw i32 %i.ayq to i8
  %i.ayu = xor i8 %i.ayt, -128
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.ayv = phi i8 [ 0, %bb.cu ], [ %i.ayu, %bb.cw ], [ -1, %bb.cv ]
  %i.ayw = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  store i8 %i.ayv, ptr %i.ayi, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge1469
  %.2 = phi ptr [ %i.ayw, %bb.cx ], [ %.1.lcssa, %._crit_edge1469 ]
  %i.ayx = getelementptr inbounds i8, ptr %.2, i64 %i.aqs
  %i.ayy = getelementptr inbounds i8, ptr %.013031473, i64 %i.aqt
  %i.ayz = add nuw nsw i32 %.413271472, 1         ; 2 uses
  %exitcond1596.not = icmp eq i32 %i.ayz, %1
  br i1 %exitcond1596.not, label %.thread1425, label %.preheader1443, !llvm.loop !58

.preheader1445:                                   ; preds = %.preheader1445.lr.ph, %bb.dm
  %.31465 = phi ptr [ %5, %.preheader1445.lr.ph ], [ %i.bgy, %bb.dm ] ; 7 uses
  %.113041464 = phi ptr [ %2, %.preheader1445.lr.ph ], [ %i.bgz, %bb.dm ] ; 4 uses
  %.513281463 = phi i32 [ 0, %.preheader1445.lr.ph ], [ %i.bha, %bb.dm ]
  br i1 %i.apo, label %.lr.ph1459, label %._crit_edge1460

.lr.ph1459:                                       ; preds = %.preheader1445
  %i.aza = load float, ptr %i.app, align 8        ; 2 uses
  %i.azb = load float, ptr %i.apq, align 4        ; 2 uses
  %i.azc = load float, ptr %i.apr, align 8        ; 2 uses
  %i.azd = load float, ptr %i.apu, align 4        ; 3 uses
  %i.aze = load i32, ptr %i.l, align 8            ; 3 uses
  %i.azf = load <2 x float>, ptr %i.aps, align 4  ; 5 uses
  %i.azg = load float, ptr %i.apt, align 8
  %i.azh = load <2 x float>, ptr %i.apv, align 4  ; 4 uses
  %i.azi = load float, ptr %i.apw, align 4        ; 2 uses
  br i1 %min.iters.check1761, label %scalar.ph1760.preheader, label %vector.memcheck1753

vector.memcheck1753:                              ; preds = %.lr.ph1459
  %scevgep1754 = getelementptr i8, ptr %.31465, i64 %i.aqa
  %bound01756 = icmp ult ptr %.31465, %scevgep1755
  %bound11757 = icmp ult ptr %2, %scevgep1754
  %found.conflict1758 = and i1 %bound01756, %bound11757
  %i.azj = or i1 %found.conflict1758, %stride.check1759
  br i1 %i.azj, label %scalar.ph1760.preheader, label %vector.ph1762

vector.ph1762:                                    ; preds = %vector.memcheck1753
  %i.azk = getelementptr i8, ptr %.31465, i64 %i.aqg ; 2 uses
  %broadcast.splatinsert1764 = insertelement <4 x float> poison, float %i.aza, i64 0
  %broadcast.splat1765 = shufflevector <4 x float> %broadcast.splatinsert1764, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1766 = insertelement <4 x float> poison, float %i.azb, i64 0
  %broadcast.splat1767 = shufflevector <4 x float> %broadcast.splatinsert1766, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1768 = insertelement <4 x float> poison, float %i.azc, i64 0
  %broadcast.splat1769 = shufflevector <4 x float> %broadcast.splatinsert1768, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1771 = shufflevector <2 x float> %i.azf, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1773 = shufflevector <2 x float> %i.azf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert1774 = insertelement <4 x float> poison, float %i.azd, i64 0
  %broadcast.splat1775 = shufflevector <4 x float> %broadcast.splatinsert1774, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1776 = insertelement <4 x i32> poison, i32 %i.aze, i64 0
  %broadcast.splat1777 = shufflevector <4 x i32> %broadcast.splatinsert1776, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1779 = shufflevector <2 x float> %i.azh, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1781 = shufflevector <2 x float> %i.azh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1782 = insertelement <4 x float> poison, float %i.azi, i64 0
  %broadcast.splat1783 = shufflevector <4 x float> %broadcast.splatinsert1782, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1784

vector.body1784:                                  ; preds = %vector.body1784, %vector.ph1762
  %index1785 = phi i64 [ 0, %vector.ph1762 ], [ %index.next1795, %vector.body1784 ] ; 3 uses
  %i.azl = shl i64 %index1785, 2
  %next.gep1786 = getelementptr i8, ptr %.31465, i64 %i.azl
  %i.azm = shl nuw nsw i64 %index1785, 3
  %i.azn = getelementptr inbounds nuw i8, ptr %.113041464, i64 %i.azm
  %wide.vec1787 = load <8 x i32>, ptr %i.azn, align 4, !alias.scope !101 ; 2 uses
  %strided.vec1788 = shufflevector <8 x i32> %wide.vec1787, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1789 = shufflevector <8 x i32> %wide.vec1787, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.azo = lshr <4 x i32> %strided.vec1788, splat (i32 16)
  %i.azp = and <4 x i32> %i.azo, splat (i32 255)  ; 2 uses
  %i.azq = lshr <4 x i32> %strided.vec1788, splat (i32 8)
  %i.azr = and <4 x i32> %i.azq, splat (i32 255)  ; 2 uses
  %i.azs = and <4 x i32> %strided.vec1788, splat (i32 255) ; 2 uses
  %i.azt = lshr <4 x i32> %strided.vec1789, splat (i32 16)
  %i.azu = and <4 x i32> %i.azt, splat (i32 255)  ; 2 uses
  %i.azv = lshr <4 x i32> %strided.vec1789, splat (i32 8)
  %i.azw = and <4 x i32> %i.azv, splat (i32 255)  ; 2 uses
  %i.azx = and <4 x i32> %strided.vec1789, splat (i32 255) ; 2 uses
  %i.azy = add nuw nsw <4 x i32> %i.azu, %i.azp
  %i.azz = lshr <4 x i32> %i.azy, splat (i32 1)
  %i.baa = add nuw nsw <4 x i32> %i.azw, %i.azr
  %i.bab = lshr <4 x i32> %i.baa, splat (i32 1)
  %i.bac = add nuw nsw <4 x i32> %i.azx, %i.azs
  %i.bad = lshr <4 x i32> %i.bac, splat (i32 1)
  %i.bae = uitofp nneg <4 x i32> %i.azz to <4 x float> ; 2 uses
  %i.baf = uitofp nneg <4 x i32> %i.bab to <4 x float> ; 2 uses
  %i.bag = fmul <4 x float> %broadcast.splat1767, %i.baf
  %i.bah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1765, <4 x float> %i.bae, <4 x float> %i.bag)
  %i.bai = uitofp nneg <4 x i32> %i.bad to <4 x float> ; 2 uses
  %i.baj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1769, <4 x float> %i.bai, <4 x float> %i.bah)
  %i.bak = fadd <4 x float> %i.baj, splat (float 5.000000e-01)
  %i.bal = fptosi <4 x float> %i.bak to <4 x i32> ; 3 uses
  %i.bam = icmp sgt <4 x i32> %i.bal, splat (i32 -129)
  %i.ban = icmp sgt <4 x i32> %i.bal, splat (i32 127)
  %i.bao = trunc <4 x i32> %i.bal to <4 x i8>
  %i.bap = xor <4 x i8> %i.bao, splat (i8 -128)
  %predphi1790 = select <4 x i1> %i.ban, <4 x i8> splat (i8 -1), <4 x i8> %i.bap
  %predphi1791 = select <4 x i1> %i.bam, <4 x i8> %predphi1790, <4 x i8> zeroinitializer
  %i.baq = uitofp nneg <4 x i32> %i.azp to <4 x float>
  %i.bar = uitofp nneg <4 x i32> %i.azr to <4 x float>
  %i.bas = fmul <4 x float> %broadcast.splat1773, %i.bar
  %i.bat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1771, <4 x float> %i.baq, <4 x float> %i.bas)
  %i.bau = uitofp nneg <4 x i32> %i.azs to <4 x float>
  %i.bav = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1775, <4 x float> %i.bau, <4 x float> %i.bat)
  %i.baw = fadd <4 x float> %i.bav, splat (float 5.000000e-01)
  %i.bax = fptosi <4 x float> %i.baw to <4 x i32>
  %i.bay = add nsw <4 x i32> %broadcast.splat1777, %i.bax
  %i.baz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bay, <4 x i32> zeroinitializer)
  %i.bba = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.baz, <4 x i32> splat (i32 255))
  %i.bbb = trunc nuw <4 x i32> %i.bba to <4 x i8>
  %i.bbc = fmul <4 x float> %broadcast.splat1781, %i.baf
  %i.bbd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1779, <4 x float> %i.bae, <4 x float> %i.bbc)
  %i.bbe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1783, <4 x float> %i.bai, <4 x float> %i.bbd)
  %i.bbf = fadd <4 x float> %i.bbe, splat (float 5.000000e-01)
  %i.bbg = fptosi <4 x float> %i.bbf to <4 x i32> ; 3 uses
  %i.bbh = icmp sgt <4 x i32> %i.bbg, splat (i32 -129)
  %i.bbi = icmp sgt <4 x i32> %i.bbg, splat (i32 127)
  %i.bbj = trunc <4 x i32> %i.bbg to <4 x i8>
  %i.bbk = xor <4 x i8> %i.bbj, splat (i8 -128)
  %predphi1792 = select <4 x i1> %i.bbi, <4 x i8> splat (i8 -1), <4 x i8> %i.bbk
  %predphi1793 = select <4 x i1> %i.bbh, <4 x i8> %predphi1792, <4 x i8> zeroinitializer
  %i.bbl = uitofp nneg <4 x i32> %i.azu to <4 x float>
  %i.bbm = uitofp nneg <4 x i32> %i.azw to <4 x float>
  %i.bbn = fmul <4 x float> %broadcast.splat1773, %i.bbm
  %i.bbo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1771, <4 x float> %i.bbl, <4 x float> %i.bbn)
  %i.bbp = uitofp nneg <4 x i32> %i.azx to <4 x float>
  %i.bbq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1775, <4 x float> %i.bbp, <4 x float> %i.bbo)
  %i.bbr = fadd <4 x float> %i.bbq, splat (float 5.000000e-01)
  %i.bbs = fptosi <4 x float> %i.bbr to <4 x i32>
  %i.bbt = add nsw <4 x i32> %broadcast.splat1777, %i.bbs
  %i.bbu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bbt, <4 x i32> zeroinitializer)
  %i.bbv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bbu, <4 x i32> splat (i32 255))
  %i.bbw = trunc nuw <4 x i32> %i.bbv to <4 x i8>
  %i.bbx = shufflevector <4 x i8> %predphi1791, <4 x i8> %i.bbb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bby = shufflevector <4 x i8> %predphi1793, <4 x i8> %i.bbw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1794 = shufflevector <8 x i8> %i.bbx, <8 x i8> %i.bby, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec1794, ptr %next.gep1786, align 1, !alias.scope !102, !noalias !101
  %index.next1795 = add nuw i64 %index1785, 4     ; 2 uses
  %i.bbz = icmp eq i64 %index.next1795, %n.vec1763
  br i1 %i.bbz, label %middle.block1796, label %vector.body1784, !llvm.loop !62

middle.block1796:                                 ; preds = %vector.body1784
  br i1 %cmp.n1797, label %._crit_edge1460, label %scalar.ph1760.preheader

scalar.ph1760.preheader:                          ; preds = %vector.memcheck1753, %.lr.ph1459, %middle.block1796
  %indvars.iv1585.ph = phi i64 [ 0, %vector.memcheck1753 ], [ 0, %.lr.ph1459 ], [ %n.vec1763, %middle.block1796 ]
  %.41458.ph = phi ptr [ %.31465, %vector.memcheck1753 ], [ %.31465, %.lr.ph1459 ], [ %i.azk, %middle.block1796 ]
  %i.bca = shufflevector <2 x float> %i.azf, <2 x float> %i.azh, <2 x i32> <i32 1, i32 3>
  %i.bcb = shufflevector <2 x float> %i.azf, <2 x float> %i.azh, <2 x i32> <i32 0, i32 2>
  %i.bcc = insertelement <2 x float> poison, float %i.azd, i64 0
  %i.bcd = insertelement <2 x float> %i.bcc, float %i.azi, i64 1
  %i.bce = extractelement <2 x float> %i.azf, i64 0
  br label %scalar.ph1760

scalar.ph1760:                                    ; preds = %scalar.ph1760.preheader, %bb.de
  %indvars.iv1585 = phi i64 [ %indvars.iv.next1586, %bb.de ], [ %indvars.iv1585.ph, %scalar.ph1760.preheader ] ; 2 uses
  %.41458 = phi ptr [ %i.bfb, %bb.de ], [ %.41458.ph, %scalar.ph1760.preheader ] ; 5 uses
  %.idx1686 = shl nuw nsw i64 %indvars.iv1585, 3
  %i.bcf = getelementptr inbounds nuw i8, ptr %.113041464, i64 %.idx1686 ; 2 uses
  %i.bcg = load i32, ptr %i.bcf, align 4          ; 3 uses
  %i.bch = lshr i32 %i.bcg, 16
  %i.bci = and i32 %i.bch, 255                    ; 2 uses
  %i.bcj = lshr i32 %i.bcg, 8
  %i.bck = and i32 %i.bcj, 255                    ; 2 uses
  %i.bcl = and i32 %i.bcg, 255                    ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcf, i64 4
  %i.bcn = load i32, ptr %i.bcm, align 4          ; 3 uses
  %i.bco = lshr i32 %i.bcn, 16
  %i.bcp = and i32 %i.bco, 255                    ; 2 uses
  %i.bcq = lshr i32 %i.bcn, 8
  %i.bcr = and i32 %i.bcq, 255                    ; 2 uses
  %i.bcs = and i32 %i.bcn, 255                    ; 2 uses
  %i.bct = add nuw nsw i32 %i.bcp, %i.bci
  %i.bcu = lshr i32 %i.bct, 1
  %i.bcv = add nuw nsw i32 %i.bcr, %i.bck
  %i.bcw = lshr i32 %i.bcv, 1
  %i.bcx = add nuw nsw i32 %i.bcs, %i.bcl
  %i.bcy = lshr i32 %i.bcx, 1
  %i.bcz = uitofp nneg i32 %i.bcu to float        ; 2 uses
  %i.bda = uitofp nneg i32 %i.bcw to float        ; 2 uses
  %i.bdb = fmul float %i.azb, %i.bda
  %i.bdc = tail call float @llvm.fmuladd.f32(float %i.aza, float %i.bcz, float %i.bdb)
  %i.bdd = uitofp nneg i32 %i.bcy to float        ; 2 uses
  %i.bde = tail call float @llvm.fmuladd.f32(float %i.azc, float %i.bdd, float %i.bdc)
  %i.bdf = fadd float %i.bde, 5.000000e-01
  %i.bdg = fptosi float %i.bdf to i32             ; 3 uses
  %i.bdh = icmp slt i32 %i.bdg, -128
  br i1 %i.bdh, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %scalar.ph1760
  %i.bdi = icmp sgt i32 %i.bdg, 127
  br i1 %i.bdi, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bdj = trunc nsw i32 %i.bdg to i8
  %i.bdk = xor i8 %i.bdj, -128
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %scalar.ph1760
  %i.bdl = phi i8 [ 0, %scalar.ph1760 ], [ %i.bdk, %bb.da ], [ -1, %bb.cz ]
  %i.bdm = getelementptr inbounds nuw i8, ptr %.41458, i64 1
  store i8 %i.bdl, ptr %.41458, align 1
  %i.bdn = uitofp nneg i32 %i.bci to float
  %i.bdo = uitofp nneg i32 %i.bck to float
  %i.bdp = uitofp nneg i32 %i.bcl to float
  %i.bdq = getelementptr inbounds nuw i8, ptr %.41458, i64 2
  %i.bdr = insertelement <2 x float> poison, float %i.bdo, i64 0
  %i.bds = insertelement <2 x float> %i.bdr, float %i.bda, i64 1
  %i.bdt = fmul <2 x float> %i.bca, %i.bds
  %i.bdu = insertelement <2 x float> poison, float %i.bdn, i64 0
  %i.bdv = insertelement <2 x float> %i.bdu, float %i.bcz, i64 1
  %i.bdw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcb, <2 x float> %i.bdv, <2 x float> %i.bdt)
  %i.bdx = insertelement <2 x float> poison, float %i.bdp, i64 0
  %i.bdy = insertelement <2 x float> %i.bdx, float %i.bdd, i64 1
  %i.bdz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcd, <2 x float> %i.bdy, <2 x float> %i.bdw)
  %i.bea = fadd <2 x float> %i.bdz, splat (float 5.000000e-01) ; 2 uses
  %i.beb = extractelement <2 x float> %i.bea, i64 0
  %i.bec = fptosi float %i.beb to i32
  %i.bed = add nsw i32 %i.aze, %i.bec
  %i.bee = tail call i32 @llvm.smax.i32(i32 %i.bed, i32 0)
  %i.bef = tail call i32 @llvm.umin.i32(i32 %i.bee, i32 255)
  %i.beg = trunc nuw i32 %i.bef to i8
  store i8 %i.beg, ptr %i.bdm, align 1
  %i.beh = extractelement <2 x float> %i.bea, i64 1
  %i.bei = fptosi float %i.beh to i32             ; 3 uses
  %i.bej = icmp slt i32 %i.bei, -128
  br i1 %i.bej, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bek = icmp sgt i32 %i.bei, 127
  br i1 %i.bek, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bel = trunc nsw i32 %i.bei to i8
  %i.bem = xor i8 %i.bel, -128
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.ben = phi i8 [ 0, %bb.db ], [ %i.bem, %bb.dd ], [ -1, %bb.dc ]
  %i.beo = getelementptr inbounds nuw i8, ptr %.41458, i64 3
  store i8 %i.ben, ptr %i.bdq, align 1
  %i.bep = uitofp nneg i32 %i.bcp to float
  %i.beq = uitofp nneg i32 %i.bcr to float
  %i.ber = fmul float %i.azg, %i.beq
  %i.bes = tail call float @llvm.fmuladd.f32(float %i.bce, float %i.bep, float %i.ber)
  %i.bet = uitofp nneg i32 %i.bcs to float
  %i.beu = tail call float @llvm.fmuladd.f32(float %i.azd, float %i.bet, float %i.bes)
  %i.bev = fadd float %i.beu, 5.000000e-01
  %i.bew = fptosi float %i.bev to i32
  %i.bex = add nsw i32 %i.aze, %i.bew
  %i.bey = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 0)
  %i.bez = tail call i32 @llvm.umin.i32(i32 %i.bey, i32 255)
  %i.bfa = trunc nuw i32 %i.bez to i8
  %i.bfb = getelementptr inbounds nuw i8, ptr %.41458, i64 4 ; 2 uses
  store i8 %i.bfa, ptr %i.beo, align 1
  %indvars.iv.next1586 = add nuw nsw i64 %indvars.iv1585, 1 ; 2 uses
  %exitcond1589.not = icmp eq i64 %indvars.iv.next1586, %wide.trip.count1588
  br i1 %exitcond1589.not, label %._crit_edge1460, label %scalar.ph1760, !llvm.loop !63

._crit_edge1460:                                  ; preds = %bb.de, %middle.block1796, %.preheader1445
  %.81338.lcssa.shrunk = phi i32 [ 0, %.preheader1445 ], [ %i.apz, %middle.block1796 ], [ %i.apz, %bb.de ]
  %.4.lcssa = phi ptr [ %.31465, %.preheader1445 ], [ %i.azk, %middle.block1796 ], [ %i.bfb, %bb.de ] ; 6 uses
  br i1 %.not1396, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %._crit_edge1460
  %.81338.lcssa = zext nneg i32 %.81338.lcssa.shrunk to i64
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %.113041464, i64 %.81338.lcssa
  %i.bfd = load float, ptr %i.app, align 8
  %i.bfe = load float, ptr %i.apq, align 4
  %i.bff = load float, ptr %i.apr, align 8
  %i.bfg = load i32, ptr %i.bfc, align 4          ; 3 uses
  %i.bfh = lshr i32 %i.bfg, 8
  %i.bfi = lshr i32 %i.bfg, 16
  %21 = and i32 %i.bfh, 255
  %22 = and i32 %i.bfi, 255
  %23 = and i32 %i.bfg, 255
  %24 = uitofp nneg i32 %21 to float              ; 2 uses
  %25 = uitofp nneg i32 %22 to float              ; 2 uses
  %26 = uitofp nneg i32 %23 to float              ; 2 uses
  %i.bfj = fmul float %i.bfe, %24
  %i.bfk = tail call float @llvm.fmuladd.f32(float %i.bfd, float %25, float %i.bfj)
  %i.bfl = tail call float @llvm.fmuladd.f32(float %i.bff, float %26, float %i.bfk)
  %i.bfm = fadd float %i.bfl, 5.000000e-01
  %i.bfn = fptosi float %i.bfm to i32             ; 3 uses
  %i.bfo = icmp slt i32 %i.bfn, -128
  br i1 %i.bfo, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bfp = icmp sgt i32 %i.bfn, 127
  br i1 %i.bfp, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bfq = trunc nsw i32 %i.bfn to i8
  %i.bfr = xor i8 %i.bfq, -128
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %i.bfs = phi i8 [ 0, %bb.df ], [ %i.bfr, %bb.dh ], [ -1, %bb.dg ]
  %i.bft = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  store i8 %i.bfs, ptr %.4.lcssa, align 1
  %i.bfu = load float, ptr %i.apu, align 4
  %i.bfv = load i32, ptr %i.l, align 8
  %i.bfw = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.bfx = load float, ptr %i.apw, align 4
  %i.bfy = load <2 x float>, ptr %i.aps, align 4  ; 2 uses
  %i.bfz = load <2 x float>, ptr %i.apv, align 4  ; 2 uses
  %i.bga = shufflevector <2 x float> %i.bfy, <2 x float> %i.bfz, <2 x i32> <i32 1, i32 3>
  %27 = insertelement <2 x float> poison, float %24, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgb = fmul <2 x float> %i.bga, %28
  %i.bgc = shufflevector <2 x float> %i.bfy, <2 x float> %i.bfz, <2 x i32> <i32 0, i32 2>
  %29 = insertelement <2 x float> poison, float %25, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgc, <2 x float> %30, <2 x float> %i.bgb)
  %31 = insertelement <2 x float> poison, float %i.bfu, i64 0
  %i.bge = insertelement <2 x float> %31, float %i.bfx, i64 1
  %i.bgf = insertelement <2 x float> poison, float %26, i64 0
  %i.bgg = shufflevector <2 x float> %i.bgf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bge, <2 x float> %i.bgg, <2 x float> %i.bgd)
  %i.bgi = fadd <2 x float> %i.bgh, splat (float 5.000000e-01) ; 2 uses
  %i.bgj = extractelement <2 x float> %i.bgi, i64 0
  %i.bgk = fptosi float %i.bgj to i32
  %i.bgl = add nsw i32 %i.bfv, %i.bgk
  %i.bgm = tail call i32 @llvm.smax.i32(i32 %i.bgl, i32 0)
  %i.bgn = tail call i32 @llvm.umin.i32(i32 %i.bgm, i32 255)
  %i.bgo = trunc nuw i32 %i.bgn to i8             ; 2 uses
  store i8 %i.bgo, ptr %i.bft, align 1
  %i.bgp = extractelement <2 x float> %i.bgi, i64 1
  %i.bgq = fptosi float %i.bgp to i32             ; 3 uses
  %i.bgr = icmp slt i32 %i.bgq, -128
  br i1 %i.bgr, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bgs = icmp sgt i32 %i.bgq, 127
  br i1 %i.bgs, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bgt = trunc nsw i32 %i.bgq to i8
  %i.bgu = xor i8 %i.bgt, -128
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %i.bgv = phi i8 [ 0, %bb.di ], [ %i.bgu, %bb.dk ], [ -1, %bb.dj ]
  %i.bgw = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  store i8 %i.bgv, ptr %i.bfw, align 1
  %i.bgx = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  store i8 %i.bgo, ptr %i.bgw, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %._crit_edge1460
  %.5 = phi ptr [ %i.bgx, %bb.dl ], [ %.4.lcssa, %._crit_edge1460 ]
  %i.bgy = getelementptr inbounds i8, ptr %.5, i64 %i.apx
  %i.bgz = getelementptr inbounds i8, ptr %.113041464, i64 %i.apy
  %i.bha = add nuw nsw i32 %.513281463, 1         ; 2 uses
  %exitcond1590.not = icmp eq i32 %i.bha, %1
  br i1 %exitcond1590.not, label %.thread1425, label %.preheader1445, !llvm.loop !64

.preheader1448:                                   ; preds = %.preheader1448.lr.ph, %bb.ea
  %.61456 = phi ptr [ %5, %.preheader1448.lr.ph ], [ %i.boy, %bb.ea ] ; 7 uses
  %.213051455 = phi ptr [ %2, %.preheader1448.lr.ph ], [ %i.boz, %bb.ea ] ; 4 uses
  %.613291454 = phi i32 [ 0, %.preheader1448.lr.ph ], [ %i.bpa, %bb.ea ]
  br i1 %i.aot, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1448
  %i.bhb = load i32, ptr %i.l, align 8            ; 3 uses
  %i.bhc = load float, ptr %i.aox, align 4        ; 2 uses
  %i.bhd = load float, ptr %i.aoy, align 8        ; 2 uses
  %i.bhe = load float, ptr %i.aoz, align 4        ; 2 uses
  %i.bhf = load <4 x float>, ptr %i.aou, align 4  ; 8 uses
  %i.bhg = load float, ptr %i.aow, align 4
  %i.bhh = load float, ptr %i.aov, align 8
  %i.bhi = load <2 x float>, ptr %i.apb, align 4  ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %.61456, i64 %i.apg
  %bound0 = icmp ult ptr %.61456, %scevgep1729
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bhj = or i1 %found.conflict, %stride.check
  br i1 %i.bhj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bhk = getelementptr i8, ptr %.61456, i64 %i.apm ; 2 uses
  %broadcast.splat = shufflevector <4 x float> %i.bhf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1731 = shufflevector <4 x float> %i.bhf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat1733 = shufflevector <4 x float> %i.bhf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splatinsert1734 = insertelement <4 x i32> poison, i32 %i.bhb, i64 0
  %broadcast.splat1735 = shufflevector <4 x i32> %broadcast.splatinsert1734, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1736 = insertelement <4 x float> poison, float %i.bhc, i64 0
  %broadcast.splat1737 = shufflevector <4 x float> %broadcast.splatinsert1736, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1738 = insertelement <4 x float> poison, float %i.bhd, i64 0
  %broadcast.splat1739 = shufflevector <4 x float> %broadcast.splatinsert1738, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1740 = insertelement <4 x float> poison, float %i.bhe, i64 0
  %broadcast.splat1741 = shufflevector <4 x float> %broadcast.splatinsert1740, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1743 = shufflevector <4 x float> %i.bhf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat1745 = shufflevector <2 x float> %i.bhi, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1747 = shufflevector <2 x float> %i.bhi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bhl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.61456, i64 %i.bhl
  %i.bhm = shl nuw nsw i64 %index, 3
  %i.bhn = getelementptr inbounds nuw i8, ptr %.213051455, i64 %i.bhm
  %wide.vec = load <8 x i32>, ptr %i.bhn, align 4, !alias.scope !103 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1748 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.bho = lshr <4 x i32> %strided.vec, splat (i32 16)
  %i.bhp = and <4 x i32> %i.bho, splat (i32 255)  ; 2 uses
  %i.bhq = lshr <4 x i32> %strided.vec, splat (i32 8)
  %i.bhr = and <4 x i32> %i.bhq, splat (i32 255)  ; 2 uses
  %i.bhs = and <4 x i32> %strided.vec, splat (i32 255) ; 2 uses
  %i.bht = lshr <4 x i32> %strided.vec1748, splat (i32 16)
  %i.bhu = and <4 x i32> %i.bht, splat (i32 255)  ; 2 uses
  %i.bhv = lshr <4 x i32> %strided.vec1748, splat (i32 8)
  %i.bhw = and <4 x i32> %i.bhv, splat (i32 255)  ; 2 uses
  %i.bhx = and <4 x i32> %strided.vec1748, splat (i32 255) ; 2 uses
  %i.bhy = add nuw nsw <4 x i32> %i.bhu, %i.bhp
  %i.bhz = lshr <4 x i32> %i.bhy, splat (i32 1)
  %i.bia = add nuw nsw <4 x i32> %i.bhw, %i.bhr
  %i.bib = lshr <4 x i32> %i.bia, splat (i32 1)
  %i.bic = add nuw nsw <4 x i32> %i.bhx, %i.bhs
  %i.bid = lshr <4 x i32> %i.bic, splat (i32 1)
  %i.bie = uitofp nneg <4 x i32> %i.bhp to <4 x float>
  %i.bif = uitofp nneg <4 x i32> %i.bhr to <4 x float>
  %i.big = fmul <4 x float> %broadcast.splat1731, %i.bif
  %i.bih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bie, <4 x float> %i.big)
  %i.bii = uitofp nneg <4 x i32> %i.bhs to <4 x float>
  %i.bij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1733, <4 x float> %i.bii, <4 x float> %i.bih)
  %i.bik = fadd <4 x float> %i.bij, splat (float 5.000000e-01)
  %i.bil = fptosi <4 x float> %i.bik to <4 x i32>
  %i.bim = add nsw <4 x i32> %broadcast.splat1735, %i.bil
  %i.bin = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bim, <4 x i32> zeroinitializer)
  %i.bio = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bin, <4 x i32> splat (i32 255))
  %i.bip = trunc nuw <4 x i32> %i.bio to <4 x i8>
  %i.biq = uitofp nneg <4 x i32> %i.bhz to <4 x float> ; 2 uses
  %i.bir = uitofp nneg <4 x i32> %i.bib to <4 x float> ; 2 uses
  %i.bis = fmul <4 x float> %broadcast.splat1739, %i.bir
  %i.bit = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1737, <4 x float> %i.biq, <4 x float> %i.bis)
  %i.biu = uitofp nneg <4 x i32> %i.bid to <4 x float> ; 2 uses
  %i.biv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1741, <4 x float> %i.biu, <4 x float> %i.bit)
  %i.biw = fadd <4 x float> %i.biv, splat (float 5.000000e-01)
  %i.bix = fptosi <4 x float> %i.biw to <4 x i32> ; 3 uses
  %i.biy = icmp sgt <4 x i32> %i.bix, splat (i32 -129)
  %i.biz = icmp sgt <4 x i32> %i.bix, splat (i32 127)
  %i.bja = trunc <4 x i32> %i.bix to <4 x i8>
  %i.bjb = xor <4 x i8> %i.bja, splat (i8 -128)
  %predphi = select <4 x i1> %i.biz, <4 x i8> splat (i8 -1), <4 x i8> %i.bjb
  %predphi1749 = select <4 x i1> %i.biy, <4 x i8> %predphi, <4 x i8> zeroinitializer
  %i.bjc = uitofp nneg <4 x i32> %i.bhu to <4 x float>
  %i.bjd = uitofp nneg <4 x i32> %i.bhw to <4 x float>
  %i.bje = fmul <4 x float> %broadcast.splat1731, %i.bjd
  %i.bjf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bjc, <4 x float> %i.bje)
  %i.bjg = uitofp nneg <4 x i32> %i.bhx to <4 x float>
  %i.bjh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1733, <4 x float> %i.bjg, <4 x float> %i.bjf)
  %i.bji = fadd <4 x float> %i.bjh, splat (float 5.000000e-01)
  %i.bjj = fptosi <4 x float> %i.bji to <4 x i32>
  %i.bjk = add nsw <4 x i32> %broadcast.splat1735, %i.bjj
  %i.bjl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bjk, <4 x i32> zeroinitializer)
  %i.bjm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bjl, <4 x i32> splat (i32 255))
  %i.bjn = trunc nuw <4 x i32> %i.bjm to <4 x i8>
  %i.bjo = fmul <4 x float> %broadcast.splat1745, %i.bir
  %i.bjp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1743, <4 x float> %i.biq, <4 x float> %i.bjo)
  %i.bjq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1747, <4 x float> %i.biu, <4 x float> %i.bjp)
  %i.bjr = fadd <4 x float> %i.bjq, splat (float 5.000000e-01)
  %i.bjs = fptosi <4 x float> %i.bjr to <4 x i32> ; 3 uses
  %i.bjt = icmp sgt <4 x i32> %i.bjs, splat (i32 -129)
  %i.bju = icmp sgt <4 x i32> %i.bjs, splat (i32 127)
  %i.bjv = trunc <4 x i32> %i.bjs to <4 x i8>
  %i.bjw = xor <4 x i8> %i.bjv, splat (i8 -128)
  %predphi1750 = select <4 x i1> %i.bju, <4 x i8> splat (i8 -1), <4 x i8> %i.bjw
  %predphi1751 = select <4 x i1> %i.bjt, <4 x i8> %predphi1750, <4 x i8> zeroinitializer
  %i.bjx = shufflevector <4 x i8> %i.bip, <4 x i8> %predphi1749, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjy = shufflevector <4 x i8> %i.bjn, <4 x i8> %predphi1751, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i8> %i.bjx, <8 x i8> %i.bjy, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !104, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bjz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bjz, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.71452.ph = phi ptr [ %.61456, %vector.memcheck ], [ %.61456, %.lr.ph ], [ %i.bhk, %middle.block ]
  %i.bka = extractelement <4 x float> %i.bhf, i64 0
  %i.bkb = shufflevector <4 x float> %i.bhf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bkc = shufflevector <2 x float> %i.bhi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bkd = shufflevector <4 x float> %i.bhf, <4 x float> %i.bkc, <2 x i32> <i32 1, i32 4>
  %i.bke = shufflevector <4 x float> %i.bhf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bkf = shufflevector <2 x float> %i.bkb, <2 x float> %i.bhi, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ds
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ds ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.71452 = phi ptr [ %i.bnc, %bb.ds ], [ %.71452.ph, %scalar.ph.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bkg = getelementptr inbounds nuw i8, ptr %.213051455, i64 %.idx ; 2 uses
  %i.bkh = load i32, ptr %i.bkg, align 4          ; 3 uses
  %i.bki = lshr i32 %i.bkh, 16
  %i.bkj = and i32 %i.bki, 255                    ; 2 uses
  %i.bkk = lshr i32 %i.bkh, 8
  %i.bkl = and i32 %i.bkk, 255                    ; 2 uses
  %i.bkm = and i32 %i.bkh, 255                    ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkg, i64 4
  %i.bko = load i32, ptr %i.bkn, align 4          ; 3 uses
  %i.bkp = lshr i32 %i.bko, 16
  %i.bkq = and i32 %i.bkp, 255                    ; 2 uses
  %i.bkr = lshr i32 %i.bko, 8
  %i.bks = and i32 %i.bkr, 255                    ; 2 uses
  %i.bkt = and i32 %i.bko, 255                    ; 2 uses
  %i.bku = add nuw nsw i32 %i.bkq, %i.bkj
  %i.bkv = lshr i32 %i.bku, 1
  %i.bkw = add nuw nsw i32 %i.bks, %i.bkl
  %i.bkx = lshr i32 %i.bkw, 1
  %i.bky = add nuw nsw i32 %i.bkt, %i.bkm
  %i.bkz = lshr i32 %i.bky, 1
  %i.bla = uitofp nneg i32 %i.bkj to float
  %i.blb = uitofp nneg i32 %i.bkl to float
  %i.blc = fmul float %i.bhh, %i.blb
  %i.bld = tail call float @llvm.fmuladd.f32(float %i.bka, float %i.bla, float %i.blc)
  %i.ble = uitofp nneg i32 %i.bkm to float
  %i.blf = tail call float @llvm.fmuladd.f32(float %i.bhg, float %i.ble, float %i.bld)
  %i.blg = fadd float %i.blf, 5.000000e-01
  %i.blh = fptosi float %i.blg to i32
  %i.bli = add nsw i32 %i.bhb, %i.blh
  %i.blj = tail call i32 @llvm.smax.i32(i32 %i.bli, i32 0)
  %i.blk = tail call i32 @llvm.umin.i32(i32 %i.blj, i32 255)
  %i.bll = trunc nuw i32 %i.blk to i8
  %i.blm = getelementptr inbounds nuw i8, ptr %.71452, i64 1
  store i8 %i.bll, ptr %.71452, align 1
  %i.bln = uitofp nneg i32 %i.bkv to float        ; 2 uses
  %i.blo = uitofp nneg i32 %i.bkx to float        ; 2 uses
  %i.blp = fmul float %i.bhd, %i.blo
  %i.blq = tail call float @llvm.fmuladd.f32(float %i.bhc, float %i.bln, float %i.blp)
  %i.blr = uitofp nneg i32 %i.bkz to float        ; 2 uses
  %i.bls = tail call float @llvm.fmuladd.f32(float %i.bhe, float %i.blr, float %i.blq)
  %i.blt = fadd float %i.bls, 5.000000e-01
  %i.blu = fptosi float %i.blt to i32             ; 3 uses
  %i.blv = icmp slt i32 %i.blu, -128
  br i1 %i.blv, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %scalar.ph
  %i.blw = icmp sgt i32 %i.blu, 127
  br i1 %i.blw, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.blx = trunc nsw i32 %i.blu to i8
  %i.bly = xor i8 %i.blx, -128
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %scalar.ph
  %i.blz = phi i8 [ 0, %scalar.ph ], [ %i.bly, %bb.do ], [ -1, %bb.dn ]
  %i.bma = getelementptr inbounds nuw i8, ptr %.71452, i64 2
  store i8 %i.blz, ptr %i.blm, align 1
  %i.bmb = uitofp nneg i32 %i.bkq to float
  %i.bmc = uitofp nneg i32 %i.bks to float
  %i.bmd = uitofp nneg i32 %i.bkt to float
  %i.bme = getelementptr inbounds nuw i8, ptr %.71452, i64 3
  %i.bmf = insertelement <2 x float> poison, float %i.bmc, i64 0
  %i.bmg = insertelement <2 x float> %i.bmf, float %i.blo, i64 1
  %i.bmh = fmul <2 x float> %i.bkd, %i.bmg
  %i.bmi = insertelement <2 x float> poison, float %i.bmb, i64 0
  %i.bmj = insertelement <2 x float> %i.bmi, float %i.bln, i64 1
  %i.bmk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bke, <2 x float> %i.bmj, <2 x float> %i.bmh)
  %i.bml = insertelement <2 x float> poison, float %i.bmd, i64 0
  %i.bmm = insertelement <2 x float> %i.bml, float %i.blr, i64 1
  %i.bmn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkf, <2 x float> %i.bmm, <2 x float> %i.bmk)
  %i.bmo = fadd <2 x float> %i.bmn, splat (float 5.000000e-01) ; 2 uses
  %i.bmp = extractelement <2 x float> %i.bmo, i64 0
  %i.bmq = fptosi float %i.bmp to i32
  %i.bmr = add nsw i32 %i.bhb, %i.bmq
  %i.bms = tail call i32 @llvm.smax.i32(i32 %i.bmr, i32 0)
  %i.bmt = tail call i32 @llvm.umin.i32(i32 %i.bms, i32 255)
  %i.bmu = trunc nuw i32 %i.bmt to i8
  store i8 %i.bmu, ptr %i.bma, align 1
  %i.bmv = extractelement <2 x float> %i.bmo, i64 1
  %i.bmw = fptosi float %i.bmv to i32             ; 3 uses
  %i.bmx = icmp slt i32 %i.bmw, -128
  br i1 %i.bmx, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bmy = icmp sgt i32 %i.bmw, 127
  br i1 %i.bmy, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bmz = trunc nsw i32 %i.bmw to i8
  %i.bna = xor i8 %i.bmz, -128
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.bnb = phi i8 [ 0, %bb.dp ], [ %i.bna, %bb.dr ], [ -1, %bb.dq ]
  %i.bnc = getelementptr inbounds nuw i8, ptr %.71452, i64 4 ; 2 uses
  store i8 %i.bnb, ptr %i.bme, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.ds, %middle.block, %.preheader1448
  %.9.lcssa.shrunk = phi i32 [ 0, %.preheader1448 ], [ %i.apf, %middle.block ], [ %i.apf, %bb.ds ]
  %.7.lcssa = phi ptr [ %.61456, %.preheader1448 ], [ %i.bhk, %middle.block ], [ %i.bnc, %bb.ds ] ; 6 uses
  br i1 %.not, label %bb.ea, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge
  %.9.lcssa = zext nneg i32 %.9.lcssa.shrunk to i64
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.213051455, i64 %.9.lcssa
  %i.bne = load float, ptr %i.aow, align 4
  %i.bnf = load i32, ptr %i.l, align 8
  %i.bng = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 1
  %i.bnh = load float, ptr %i.aoz, align 4
  %i.bni = load i32, ptr %i.bnd, align 4          ; 3 uses
  %i.bnj = lshr i32 %i.bni, 8
  %i.bnk = lshr i32 %i.bni, 16
  %32 = and i32 %i.bnj, 255
  %33 = and i32 %i.bnk, 255
  %34 = and i32 %i.bni, 255
  %35 = load <2 x float>, ptr %i.aou, align 4     ; 2 uses
  %36 = uitofp nneg i32 %32 to float              ; 2 uses
  %37 = uitofp nneg i32 %33 to float              ; 2 uses
  %38 = uitofp nneg i32 %34 to float              ; 2 uses
  %i.bnl = load <2 x float>, ptr %i.aox, align 4  ; 2 uses
  %i.bnm = shufflevector <2 x float> %35, <2 x float> %i.bnl, <2 x i32> <i32 1, i32 3>
  %39 = insertelement <2 x float> poison, float %36, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnn = fmul <2 x float> %i.bnm, %40
  %i.bno = shufflevector <2 x float> %35, <2 x float> %i.bnl, <2 x i32> <i32 0, i32 2>
  %41 = insertelement <2 x float> poison, float %37, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bno, <2 x float> %42, <2 x float> %i.bnn)
  %43 = insertelement <2 x float> poison, float %i.bne, i64 0
  %i.bnq = insertelement <2 x float> %43, float %i.bnh, i64 1
  %i.bnr = insertelement <2 x float> poison, float %38, i64 0
  %i.bns = shufflevector <2 x float> %i.bnr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnq, <2 x float> %i.bns, <2 x float> %i.bnp)
  %i.bnu = fadd <2 x float> %i.bnt, splat (float 5.000000e-01) ; 2 uses
  %i.bnv = extractelement <2 x float> %i.bnu, i64 0
  %i.bnw = fptosi float %i.bnv to i32
  %i.bnx = add nsw i32 %i.bnf, %i.bnw
  %i.bny = tail call i32 @llvm.smax.i32(i32 %i.bnx, i32 0)
  %i.bnz = tail call i32 @llvm.umin.i32(i32 %i.bny, i32 255)
  %i.boa = trunc nuw i32 %i.bnz to i8             ; 2 uses
  store i8 %i.boa, ptr %.7.lcssa, align 1
  %i.bob = extractelement <2 x float> %i.bnu, i64 1
  %i.boc = fptosi float %i.bob to i32             ; 3 uses
  %i.bod = icmp slt i32 %i.boc, -128
  br i1 %i.bod, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.boe = icmp sgt i32 %i.boc, 127
  br i1 %i.boe, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bof = trunc nsw i32 %i.boc to i8
  %i.bog = xor i8 %i.bof, -128
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.boh = phi i8 [ 0, %bb.dt ], [ %i.bog, %bb.dv ], [ -1, %bb.du ]
  %i.boi = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 2
  store i8 %i.boh, ptr %i.bng, align 1
  %i.boj = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 3
  store i8 %i.boa, ptr %i.boi, align 1
  %i.bok = load float, ptr %i.apa, align 8
  %i.bol = load float, ptr %i.apb, align 4
  %i.bom = fmul float %i.bol, %36
  %i.bon = tail call float @llvm.fmuladd.f32(float %i.bok, float %37, float %i.bom)
  %i.boo = load float, ptr %i.apc, align 8
  %i.bop = tail call float @llvm.fmuladd.f32(float %i.boo, float %38, float %i.bon)
  %i.boq = fadd float %i.bop, 5.000000e-01
  %i.bor = fptosi float %i.boq to i32             ; 3 uses
  %i.bos = icmp slt i32 %i.bor, -128
  br i1 %i.bos, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bot = icmp sgt i32 %i.bor, 127
  br i1 %i.bot, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bou = trunc nsw i32 %i.bor to i8
  %i.bov = xor i8 %i.bou, -128
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.bow = phi i8 [ 0, %bb.dw ], [ %i.bov, %bb.dy ], [ -1, %bb.dx ]
  %i.box = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 4
  store i8 %i.bow, ptr %i.boj, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge
  %.8 = phi ptr [ %i.box, %bb.dz ], [ %.7.lcssa, %._crit_edge ]
  %i.boy = getelementptr inbounds i8, ptr %.8, i64 %i.apd
  %i.boz = getelementptr inbounds i8, ptr %.213051455, i64 %i.ape
  %i.bpa = add nuw nsw i32 %.613291454, 1         ; 2 uses
  %exitcond1584.not = icmp eq i32 %i.bpa, %1
  br i1 %exitcond1584.not, label %.thread1425, label %.preheader1448, !llvm.loop !70

bb.eb:                                            ; preds = %bb.a
  %i.bpb = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %4) #6
  %i.bpc = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15, ptr noundef %i.bpb) #6
  br label %.thread1425

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread1425

.thread1425:                                      ; preds = %bb.ea, %bb.dm, %bb.cy, %.preheader1449, %.preheader1446, %.preheader1444, %bb.ck, %._crit_edge1531._crit_edge, %.thread, %.critedge, %bb.eb
  %.21341 = phi i1 [ %i.bpc, %bb.eb ], [ %i.aoq, %.thread ], [ false, %.critedge ], [ true, %.preheader1446 ], [ true, %.preheader1444 ], [ true, %bb.ck ], [ true, %._crit_edge1531._crit_edge ], [ true, %.preheader1449 ], [ true, %bb.dm ], [ true, %bb.cy ], [ true, %bb.ea ]
  ret i1 %.21341
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @SDL_ConvertPixels_XBGR2101010_to_P010(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = shl i32 %3, 1                            ; 2 uses
  %i.b = sdiv i32 %1, 2                           ; 2 uses
  %i.c = and i32 %1, 1
  %i.d = sdiv i32 %0, 2                           ; 4 uses
  %i.e = and i32 %0, 1                            ; 2 uses
  %i.f = zext i32 %6 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @RGB2YUVFactorTables, i64 %i.f ; 14 uses
  %i.h = add nsw i32 %0, 1                        ; 2 uses
  %i.i = sdiv i32 %i.h, 2
  %i.j = shl i32 %i.i, 2
  %i.k = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.j)
  %i.l = lshr i32 %5, 1                           ; 2 uses
  %i.m = lshr i32 %i.k, 1
  %i.n = mul i32 %i.l, %1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.preheader185.lr.ph, label %._crit_edge201

.preheader185.lr.ph:                              ; preds = %bb.a
  %i.r = sub i32 %i.l, %0
  %i.s = icmp sgt i32 %0, 0
  %i.t = zext i32 %i.r to i64
  %i.u = sext i32 %3 to i64                       ; 3 uses
  br i1 %i.s, label %.preheader185.lr.ph.split, label %._crit_edge191.split

.preheader185.lr.ph.split:                        ; preds = %.preheader185.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = load float, ptr %i.w, align 8            ; 2 uses
  %i.aa = load float, ptr %i.v, align 4           ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8             ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.ac = shl nuw nsw i64 %wide.trip.count, 1
  %i.ad = add nsw i32 %1, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.u, %i.ae
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2
  %i.ah = getelementptr i8, ptr %2, i64 %i.af
  %scevgep5 = getelementptr i8, ptr %i.ah, i64 %i.ag
  %min.iters.check = icmp ult i32 %0, 4
  %stride.check = icmp slt i32 %3, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.ai = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.lr.ph.split, %._crit_edge
  %.0160190 = phi i32 [ 0, %.preheader185.lr.ph.split ], [ %i.by, %._crit_edge ]
  %.0162189 = phi ptr [ %2, %.preheader185.lr.ph.split ], [ %i.bx, %._crit_edge ] ; 3 uses
  %.0188 = phi ptr [ %4, %.preheader185.lr.ph.split ], [ %i.bw, %._crit_edge ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader185
  %scevgep = getelementptr i8, ptr %.0188, i64 %i.ac
  %bound0 = icmp ult ptr %.0188, %scevgep5
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i1 %found.conflict, %stride.check
  br i1 %i.aj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ak = getelementptr i8, ptr %.0188, i64 %i.ai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0188, i64 %i.al
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %index
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !alias.scope !123 ; 3 uses
  %i.an = and <4 x i32> %wide.load, splat (i32 1023)
  %i.ao = lshr <4 x i32> %wide.load, splat (i32 10)
  %i.ap = and <4 x i32> %i.ao, splat (i32 1023)
  %i.aq = lshr <4 x i32> %wide.load, splat (i32 20)
  %i.ar = and <4 x i32> %i.aq, splat (i32 1023)
  %i.as = uitofp nneg <4 x i32> %i.an to <4 x float>
  %i.at = uitofp nneg <4 x i32> %i.ap to <4 x float>
  %i.au = fmul <4 x float> %broadcast.splat, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat7, <4 x float> %i.as, <4 x float> %i.au)
  %i.aw = uitofp nneg <4 x i32> %i.ar to <4 x float>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.aw, <4 x float> %i.av)
  %i.ay = fadd <4 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fptosi <4 x float> %i.ay to <4 x i32>
  %i.ba = add nsw <4 x i32> %broadcast.splat11, %i.az
  %i.bb = trunc <4 x i32> %i.ba to <4 x i16>
  %i.bc = shl <4 x i16> %i.bb, splat (i16 6)
  store <4 x i16> %i.bc, ptr %next.gep, align 2, !alias.scope !124, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader185, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader185 ], [ %n.vec, %middle.block ]
  %.1183186.ph = phi ptr [ %.0188, %vector.memcheck ], [ %.0188, %.preheader185 ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1183186 = phi ptr [ %i.bv, %scalar.ph ], [ %.1183186.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = and i32 %i.bf, 1023
  %i.bh = lshr i32 %i.bf, 10
  %i.bi = and i32 %i.bh, 1023
  %i.bj = lshr i32 %i.bf, 20
  %i.bk = and i32 %i.bj, 1023
  %i.bl = uitofp nneg i32 %i.bg to float
  %i.bm = uitofp nneg i32 %i.bi to float
  %i.bn = fmul float %i.z, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bl, float %i.bn)
  %i.bp = uitofp nneg i32 %i.bk to float
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bp, float %i.bo)
  %i.br = fadd float %i.bq, 5.000000e-01
  %i.bs = fptosi float %i.br to i32
  %i.bt = add nsw i32 %i.ab, %i.bs
  %.tr178 = trunc i32 %i.bt to i16
  %i.bu = shl i16 %.tr178, 6
  %i.bv = getelementptr inbounds nuw i8, ptr %.1183186, i64 2 ; 2 uses
  store i16 %i.bu, ptr %.1183186, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa4 = phi ptr [ %i.ak, %middle.block ], [ %i.bv, %scalar.ph ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.lcssa4, i64 %i.t
  %i.bx = getelementptr inbounds i8, ptr %.0162189, i64 %i.u
  %i.by = add nuw nsw i32 %.0160190, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.by, %1
  br i1 %exitcond217.not, label %._crit_edge191.split, label %.preheader185, !llvm.loop !110

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader185.lr.ph
  %.not236 = icmp eq i32 %1, 1
  br i1 %.not236, label %._crit_edge201, label %.preheader184.lr.ph

.preheader184.lr.ph:                              ; preds = %._crit_edge191.split
end_hunk_0
