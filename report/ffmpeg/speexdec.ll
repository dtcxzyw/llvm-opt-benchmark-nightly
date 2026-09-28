Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/speexdec?download=true
inline.NumInlined: 80
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 74
begin_hunk_0_@nb_decode:bb.a
  %i.aqr = fmul nsz <4 x float> %broadcast.splat, %wide.load691.12
  %i.aqs = fmul nsz <4 x float> %broadcast.splat, %wide.load692.12
  store <4 x float> %i.aqr, ptr %i.aqp, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.aqs, ptr %i.aqq, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.aqt = getelementptr i8, ptr %.pre634, i64 224
  %i.aqu = getelementptr i8, ptr %.pre634, i64 240
  %wide.load693.12 = load <4 x float>, ptr %i.aqt, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.12 = load <4 x float>, ptr %i.aqu, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.aqv = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.aqw = getelementptr inbounds nuw i8, ptr %3, i64 400
  store <4 x float> %wide.load693.12, ptr %i.aqv, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.12, ptr %i.aqw, align 4, !tbaa !66, !alias.scope !145
  %i.aqx = getelementptr inbounds nuw i8, ptr %.pre634, i64 416 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.pre634, i64 432 ; 2 uses
  %wide.load691.13 = load <4 x float>, ptr %i.aqx, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.13 = load <4 x float>, ptr %i.aqy, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.aqz = fmul nsz <4 x float> %broadcast.splat, %wide.load691.13
  %i.ara = fmul nsz <4 x float> %broadcast.splat, %wide.load692.13
  store <4 x float> %i.aqz, ptr %i.aqx, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.ara, ptr %i.aqy, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arb = getelementptr i8, ptr %.pre634, i64 256
  %i.arc = getelementptr i8, ptr %.pre634, i64 272
  %wide.load693.13 = load <4 x float>, ptr %i.arb, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.13 = load <4 x float>, ptr %i.arc, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.ard = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.are = getelementptr inbounds nuw i8, ptr %3, i64 432
  store <4 x float> %wide.load693.13, ptr %i.ard, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.13, ptr %i.are, align 4, !tbaa !66, !alias.scope !145
  %i.arf = getelementptr inbounds nuw i8, ptr %.pre634, i64 448 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.pre634, i64 464 ; 2 uses
  %wide.load691.14 = load <4 x float>, ptr %i.arf, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.14 = load <4 x float>, ptr %i.arg, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arh = fmul nsz <4 x float> %broadcast.splat, %wide.load691.14
  %i.ari = fmul nsz <4 x float> %broadcast.splat, %wide.load692.14
  store <4 x float> %i.arh, ptr %i.arf, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.ari, ptr %i.arg, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arj = getelementptr i8, ptr %.pre634, i64 288
  %i.ark = getelementptr i8, ptr %.pre634, i64 304
  %wide.load693.14 = load <4 x float>, ptr %i.arj, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.14 = load <4 x float>, ptr %i.ark, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arl = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.arm = getelementptr inbounds nuw i8, ptr %3, i64 464
  store <4 x float> %wide.load693.14, ptr %i.arl, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.14, ptr %i.arm, align 4, !tbaa !66, !alias.scope !145
  %i.arn = getelementptr inbounds nuw i8, ptr %.pre634, i64 480 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.pre634, i64 496 ; 2 uses
  %wide.load691.15 = load <4 x float>, ptr %i.arn, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.15 = load <4 x float>, ptr %i.aro, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arp = fmul nsz <4 x float> %broadcast.splat, %wide.load691.15
  %i.arq = fmul nsz <4 x float> %broadcast.splat, %wide.load692.15
  store <4 x float> %i.arp, ptr %i.arn, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.arq, ptr %i.aro, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arr = getelementptr i8, ptr %.pre634, i64 320
  %i.ars = getelementptr i8, ptr %.pre634, i64 336
  %wide.load693.15 = load <4 x float>, ptr %i.arr, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.15 = load <4 x float>, ptr %i.ars, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.art = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.aru = getelementptr inbounds nuw i8, ptr %3, i64 496
  store <4 x float> %wide.load693.15, ptr %i.art, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.15, ptr %i.aru, align 4, !tbaa !66, !alias.scope !145
  %i.arv = getelementptr inbounds nuw i8, ptr %.pre634, i64 512 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.pre634, i64 528 ; 2 uses
  %wide.load691.16 = load <4 x float>, ptr %i.arv, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.16 = load <4 x float>, ptr %i.arw, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arx = fmul nsz <4 x float> %broadcast.splat, %wide.load691.16
  %i.ary = fmul nsz <4 x float> %broadcast.splat, %wide.load692.16
  store <4 x float> %i.arx, ptr %i.arv, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.ary, ptr %i.arw, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.arz = getelementptr i8, ptr %.pre634, i64 352
  %i.asa = getelementptr i8, ptr %.pre634, i64 368
  %wide.load693.16 = load <4 x float>, ptr %i.arz, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.16 = load <4 x float>, ptr %i.asa, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asb = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.asc = getelementptr inbounds nuw i8, ptr %3, i64 528
  store <4 x float> %wide.load693.16, ptr %i.asb, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.16, ptr %i.asc, align 4, !tbaa !66, !alias.scope !145
  %i.asd = getelementptr inbounds nuw i8, ptr %.pre634, i64 544 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.pre634, i64 560 ; 2 uses
  %wide.load691.17 = load <4 x float>, ptr %i.asd, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.17 = load <4 x float>, ptr %i.ase, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asf = fmul nsz <4 x float> %broadcast.splat, %wide.load691.17
  %i.asg = fmul nsz <4 x float> %broadcast.splat, %wide.load692.17
  store <4 x float> %i.asf, ptr %i.asd, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.asg, ptr %i.ase, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.ash = getelementptr i8, ptr %.pre634, i64 384
  %i.asi = getelementptr i8, ptr %.pre634, i64 400
  %wide.load693.17 = load <4 x float>, ptr %i.ash, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.17 = load <4 x float>, ptr %i.asi, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asj = getelementptr inbounds nuw i8, ptr %3, i64 544
  %i.ask = getelementptr inbounds nuw i8, ptr %3, i64 560
  store <4 x float> %wide.load693.17, ptr %i.asj, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.17, ptr %i.ask, align 4, !tbaa !66, !alias.scope !145
  %i.asl = getelementptr inbounds nuw i8, ptr %.pre634, i64 576 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %.pre634, i64 592 ; 2 uses
  %wide.load691.18 = load <4 x float>, ptr %i.asl, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.18 = load <4 x float>, ptr %i.asm, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asn = fmul nsz <4 x float> %broadcast.splat, %wide.load691.18
  %i.aso = fmul nsz <4 x float> %broadcast.splat, %wide.load692.18
  store <4 x float> %i.asn, ptr %i.asl, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.aso, ptr %i.asm, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asp = getelementptr i8, ptr %.pre634, i64 416
  %i.asq = getelementptr i8, ptr %.pre634, i64 432
  %wide.load693.18 = load <4 x float>, ptr %i.asp, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.18 = load <4 x float>, ptr %i.asq, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asr = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.ass = getelementptr inbounds nuw i8, ptr %3, i64 592
  store <4 x float> %wide.load693.18, ptr %i.asr, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.18, ptr %i.ass, align 4, !tbaa !66, !alias.scope !145
  %i.ast = getelementptr inbounds nuw i8, ptr %.pre634, i64 608 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.pre634, i64 624 ; 2 uses
  %wide.load691.19 = load <4 x float>, ptr %i.ast, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load692.19 = load <4 x float>, ptr %i.asu, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asv = fmul nsz <4 x float> %broadcast.splat, %wide.load691.19
  %i.asw = fmul nsz <4 x float> %broadcast.splat, %wide.load692.19
  store <4 x float> %i.asv, ptr %i.ast, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.asw, ptr %i.asu, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asx = getelementptr i8, ptr %.pre634, i64 448
  %i.asy = getelementptr i8, ptr %.pre634, i64 464
  %wide.load693.19 = load <4 x float>, ptr %i.asx, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %wide.load694.19 = load <4 x float>, ptr %i.asy, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %i.asz = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.ata = getelementptr inbounds nuw i8, ptr %3, i64 624
  store <4 x float> %wide.load693.19, ptr %i.asz, align 4, !tbaa !66, !alias.scope !145
  store <4 x float> %wide.load694.19, ptr %i.ata, align 4, !tbaa !66, !alias.scope !145
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv546 = phi i64 [ %indvars.iv.next547.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %.pre634, i64 %indvars.iv546 ; 3 uses
  %i.atc = load float, ptr %i.atb, align 4, !tbaa !66
  %i.atd = fmul nsz float %i.amz, %i.atc
  store float %i.atd, ptr %i.atb, align 4, !tbaa !66
  %i.ate = getelementptr i8, ptr %i.atb, i64 -160
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !66
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv546
  store float %i.atf, ptr %i.atg, align 4, !tbaa !66
  %indvars.iv.next547 = or disjoint i64 %indvars.iv546, 1 ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %.pre634, i64 %indvars.iv.next547 ; 3 uses
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !66
  %i.atj = fmul nsz float %i.amz, %i.ati
  store float %i.atj, ptr %i.ath, align 4, !tbaa !66
  %i.atk = getelementptr i8, ptr %i.ath, i64 -160
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !66
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next547
  store float %i.atl, ptr %i.atm, align 4, !tbaa !66
  %indvars.iv.next547.1 = add nuw nsw i64 %indvars.iv546, 2 ; 2 uses
  %exitcond549.not.1 = icmp eq i64 %indvars.iv.next547.1, 160
  br i1 %exitcond549.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !126

.loopexit:                                        ; preds = %scalar.ph, %vector.ph688, %bb.bo
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 2128 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 2760
  %i.atp = getelementptr inbounds nuw i8, ptr %1, i64 2776
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %1, i64 2208 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %1, i64 2204
  %i.att = getelementptr inbounds nuw i8, ptr %1, i64 2244
  %i.atu = load <2 x float>, ptr %i.d, align 16, !tbaa !66
  %i.atv = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %i.atw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.atx = load <8 x float>, ptr %i.atw, align 8, !tbaa !66
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 2212
  %i.atz = getelementptr inbounds nuw i8, ptr %1, i64 2224
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 2228
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %i.aud = getelementptr inbounds nuw i8, ptr %1, i64 2244
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2172
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2180
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2188
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2196
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2204
  br label %.preheader.i

bb.bq:                                            ; preds = %iir_mem.exit466
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !64
  %.not402 = icmp eq i32 %i.aug, 0
  br i1 %.not402, label %highpass.exit, label %bb.br

.preheader.i:                                     ; preds = %.loopexit, %iir_mem.exit466
  %indvars.iv554 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next555, %iir_mem.exit466 ] ; 5 uses
  %i.auh = trunc nuw nsw i64 %indvars.iv554 to i32
  %i.aui = uitofp nneg i32 %i.auh to float
  %i.auj = fadd nnan nsz float %i.aui, 1.000000e+00
  %i.auk = fmul nnan nsz float %i.auj, 2.500000e-01 ; 3 uses
  %i.aul = fsub nsz float 1.000000e+00, %i.auk    ; 2 uses
  %i.aum = insertelement <8 x float> poison, float %i.aul, i64 0
  %i.aun = shufflevector <8 x float> %i.aum, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auo = load <8 x float>, ptr %i.atv, align 8, !tbaa !66
  %i.aup = insertelement <8 x float> poison, float %i.auk, i64 0
  %i.auq = shufflevector <8 x float> %i.aup, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aur = fmul nsz <8 x float> %i.auq, %i.atx
  %i.aus = call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aun, <8 x float> %i.auo, <8 x float> %i.aur) ; 2 uses
  %i.aut = fcmp nsz ogt <8 x float> %i.aus, splat (float 2.000000e-03)
  %i.auu = select <8 x i1> %i.aut, <8 x float> %i.aus, <8 x float> splat (float 2.000000e-03) ; 9 uses
  %i.auv = fcmp nsz ogt <8 x float> %i.auu, splat (float f0x4048EF16) ; 8 uses
  %i.auw = extractelement <8 x i1> %i.auv, i64 7
  %i.aux = extractelement <8 x float> %i.auu, i64 7
  %..i.i444.9 = select nsz i1 %i.auw, float f0x4048EF16, float %i.aux ; 3 uses
  %i.auy = call nsz float @llvm.cos.f32(float %..i.i444.9)
  %i.auz = insertelement <2 x float> poison, float %i.auy, i64 0
  %5 = extractelement <8 x i1> %i.auv, i64 6
  %6 = extractelement <8 x float> %i.auu, i64 6
  %..i.i444.8 = select nsz i1 %5, float f0x4048EF16, float %6 ; 3 uses
  %7 = extractelement <8 x i1> %i.auv, i64 5
  %i.ava = extractelement <8 x float> %i.auu, i64 5
  %..i.i444.7 = select nsz i1 %7, float f0x4048EF16, float %i.ava ; 3 uses
  %8 = extractelement <8 x i1> %i.auv, i64 4
  %i.avb = extractelement <8 x float> %i.auu, i64 4
  %..i.i444.6 = select nsz i1 %8, float f0x4048EF16, float %i.avb ; 3 uses
  %9 = extractelement <8 x i1> %i.auv, i64 3
  %i.avc = extractelement <8 x float> %i.auu, i64 3
  %..i.i444.5 = select nsz i1 %9, float f0x4048EF16, float %i.avc ; 3 uses
  %i.avd = extractelement <8 x i1> %i.auv, i64 2
  %i.ave = extractelement <8 x float> %i.auu, i64 2
  %..i.i444.4 = select nsz i1 %i.avd, float f0x4048EF16, float %i.ave ; 3 uses
  %i.avf = extractelement <8 x i1> %i.auv, i64 1
  %i.avg = extractelement <8 x float> %i.auu, i64 1
  %..i.i444.3 = select nsz i1 %i.avf, float f0x4048EF16, float %i.avg ; 3 uses
  %i.avh = extractelement <8 x i1> %i.auv, i64 0
  %i.avi = extractelement <8 x float> %i.auu, i64 0
  %..i.i444.2 = select nsz i1 %i.avh, float f0x4048EF16, float %i.avi ; 3 uses
  %i.avj = insertelement <2 x float> poison, float %i.aul, i64 0
  %i.avk = shufflevector <2 x float> %i.avj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avl = load <2 x float>, ptr %i.atn, align 8, !tbaa !66
  %i.avm = insertelement <2 x float> poison, float %i.auk, i64 0
  %i.avn = shufflevector <2 x float> %i.avm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avo = fmul nsz <2 x float> %i.avn, %i.atu
  %i.avp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avk, <2 x float> %i.avl, <2 x float> %i.avo) ; 2 uses
  %i.avq = extractelement <2 x float> %i.avp, i64 1 ; 2 uses
  %i.avr = fcmp nsz ogt float %i.avq, 2.000000e-03
  %i.avs = select nsz i1 %i.avr, float %i.avq, float 2.000000e-03 ; 2 uses
  %i.avt = fcmp nsz ogt float %i.avs, f0x4048EF16
  %..i.i444.1 = select nsz i1 %i.avt, float f0x4048EF16, float %i.avs
  %i.avu = extractelement <2 x float> %i.avp, i64 0 ; 2 uses
  %i.avv = fcmp nsz ogt float %i.avu, 2.000000e-03
  %i.avw = select nsz i1 %i.avv, float %i.avu, float 2.000000e-03 ; 2 uses
  %i.avx = fcmp nsz ogt float %i.avw, f0x4048EF16
  %..i.i444 = select nsz i1 %i.avx, float f0x4048EF16, float %i.avw ; 2 uses
  %i.avy = fadd nsz float %..i.i444, 2.000000e-03
  %i.avz = call nsz float @llvm.maxnum.f32(float %..i.i444.1, float %i.avy) ; 3 uses
  %i.awa = fadd nsz float %..i.i444.2, -2.000000e-03
  %i.awb = fcmp nsz ogt float %i.avz, %i.awa
  %i.awc = fadd nsz float %i.avz, %..i.i444.2
  %i.awd = fadd nsz float %i.awc, -2.000000e-03
  %i.awe = fmul nsz float %i.awd, 5.000000e-01
  %.sroa.5.0 = select nsz i1 %i.awb, float %i.awe, float %i.avz ; 2 uses
  %i.awf = fadd nsz float %.sroa.5.0, 2.000000e-03
  %i.awg = call nsz float @llvm.maxnum.f32(float %..i.i444.2, float %i.awf) ; 3 uses
  %i.awh = fadd nsz float %..i.i444.3, -2.000000e-03
  %i.awi = fcmp nsz ogt float %i.awg, %i.awh
  %i.awj = fadd nsz float %i.awg, %..i.i444.3
  %i.awk = fadd nsz float %i.awj, -2.000000e-03
  %i.awl = fmul nsz float %i.awk, 5.000000e-01
  %.sroa.11.0 = select nsz i1 %i.awi, float %i.awl, float %i.awg ; 2 uses
  %i.awm = fadd nsz float %.sroa.11.0, 2.000000e-03
  %i.awn = call nsz float @llvm.maxnum.f32(float %..i.i444.3, float %i.awm) ; 3 uses
  %i.awo = fadd nsz float %..i.i444.4, -2.000000e-03
  %i.awp = fcmp nsz ogt float %i.awn, %i.awo
  %i.awq = fadd nsz float %i.awn, %..i.i444.4
  %i.awr = fadd nsz float %i.awq, -2.000000e-03
  %i.aws = fmul nsz float %i.awr, 5.000000e-01
  %.sroa.17.0 = select nsz i1 %i.awp, float %i.aws, float %i.awn ; 2 uses
  %i.awt = fadd nsz float %.sroa.17.0, 2.000000e-03
  %i.awu = call nsz float @llvm.maxnum.f32(float %..i.i444.4, float %i.awt) ; 3 uses
  %10 = fadd nsz float %..i.i444.5, -2.000000e-03
  %i.awv = fcmp nsz ogt float %i.awu, %10
  %i.aww = fadd nsz float %i.awu, %..i.i444.5
  %i.awx = fadd nsz float %i.aww, -2.000000e-03
  %i.awy = fmul nsz float %i.awx, 5.000000e-01
  %.sroa.23.0 = select nsz i1 %i.awv, float %i.awy, float %i.awu ; 2 uses
  %i.awz = fadd nsz float %.sroa.23.0, 2.000000e-03
  %i.axa = call nsz float @llvm.maxnum.f32(float %..i.i444.5, float %i.awz) ; 3 uses
  %11 = fadd nsz float %..i.i444.6, -2.000000e-03
  %i.axb = fcmp nsz ogt float %i.axa, %11
  %i.axc = fadd nsz float %i.axa, %..i.i444.6
  %i.axd = fadd nsz float %i.axc, -2.000000e-03
  %i.axe = fmul nsz float %i.axd, 5.000000e-01
  %.sroa.29.0 = select nsz i1 %i.axb, float %i.axe, float %i.axa ; 2 uses
  %i.axf = fadd nsz float %.sroa.29.0, 2.000000e-03
  %i.axg = call nsz float @llvm.maxnum.f32(float %..i.i444.6, float %i.axf) ; 3 uses
  %12 = fadd nsz float %..i.i444.7, -2.000000e-03
  %i.axh = fcmp nsz ogt float %i.axg, %12
  %i.axi = fadd nsz float %i.axg, %..i.i444.7
  %i.axj = fadd nsz float %i.axi, -2.000000e-03
  %i.axk = fmul nsz float %i.axj, 5.000000e-01
  %.sroa.35.0 = select nsz i1 %i.axh, float %i.axk, float %i.axg ; 2 uses
  %i.axl = fadd nsz float %.sroa.35.0, 2.000000e-03
  %i.axm = call nsz float @llvm.maxnum.f32(float %..i.i444.7, float %i.axl) ; 3 uses
  %13 = fadd nsz float %..i.i444.8, -2.000000e-03
  %i.axn = fcmp nsz ogt float %i.axm, %13
  %i.axo = fadd nsz float %i.axm, %..i.i444.8
  %i.axp = fadd nsz float %i.axo, -2.000000e-03
  %i.axq = fmul nsz float %i.axp, 5.000000e-01
  %.sroa.41.0 = select nsz i1 %i.axn, float %i.axq, float %i.axm ; 2 uses
  %i.axr = fadd nsz float %.sroa.41.0, 2.000000e-03
  %i.axs = call nsz float @llvm.maxnum.f32(float %..i.i444.8, float %i.axr) ; 3 uses
  %i.axt = fadd nsz float %..i.i444.9, -2.000000e-03
  %i.axu = fcmp nsz ogt float %i.axs, %i.axt
  %i.axv = fadd nsz float %i.axs, %..i.i444.9
  %i.axw = fadd nsz float %i.axv, -2.000000e-03
  %i.axx = fmul nsz float %i.axw, 5.000000e-01
  %.sroa.47.0 = select nsz i1 %i.axu, float %i.axx, float %i.axs
  %i.axy = call nsz float @llvm.cos.f32(float %.sroa.47.0)
  %i.axz = insertelement <2 x float> %i.auz, float %i.axy, i64 1
  %i.aya = fmul nsz <2 x float> %i.axz, splat (float -2.000000e+00) ; 11 uses
  %i.ayb = call nsz float @llvm.cos.f32(float %.sroa.41.0)
  %i.ayc = insertelement <2 x float> poison, float %i.ayb, i64 0
  %i.ayd = call nsz float @llvm.cos.f32(float %.sroa.35.0)
  %i.aye = insertelement <2 x float> %i.ayc, float %i.ayd, i64 1
  %i.ayf = fmul nsz <2 x float> %i.aye, splat (float -2.000000e+00) ; 11 uses
  %i.ayg = call nsz float @llvm.cos.f32(float %.sroa.29.0)
  %i.ayh = insertelement <2 x float> poison, float %i.ayg, i64 0
  %i.ayi = call nsz float @llvm.cos.f32(float %.sroa.23.0)
  %i.ayj = insertelement <2 x float> %i.ayh, float %i.ayi, i64 1
  %i.ayk = fmul nsz <2 x float> %i.ayj, splat (float -2.000000e+00) ; 11 uses
  %i.ayl = call nsz float @llvm.cos.f32(float %.sroa.17.0)
  %i.aym = insertelement <2 x float> poison, float %i.ayl, i64 0
  %i.ayn = call nsz float @llvm.cos.f32(float %.sroa.11.0)
  %i.ayo = insertelement <2 x float> %i.aym, float %i.ayn, i64 1
  %i.ayp = fmul nsz <2 x float> %i.ayo, splat (float -2.000000e+00) ; 11 uses
  %i.ayq = call nsz float @llvm.cos.f32(float %.sroa.5.0)
  %i.ayr = insertelement <2 x float> poison, float %i.ayq, i64 0
  %i.ays = call nsz float @llvm.cos.f32(float %..i.i444)
  %i.ayt = insertelement <2 x float> %i.ayr, float %i.ays, i64 1
  %i.ayu = fmul nsz <2 x float> %i.ayt, splat (float -2.000000e+00) ; 13 uses
  %i.ayv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayu, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ayw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> zeroinitializer, <2 x float> %i.ayv) ; 3 uses
  %i.ayx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> zeroinitializer, <2 x float> %i.ayw) ; 3 uses
  %i.ayy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> zeroinitializer, <2 x float> %i.ayx) ; 3 uses
  %i.ayz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> zeroinitializer, <2 x float> %i.ayy) ; 2 uses
  %i.aza = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.ayv, <2 x float> %i.ayu) ; 3 uses
  %i.azb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.ayw, <2 x float> %i.aza) ; 3 uses
  %i.azc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.ayx, <2 x float> %i.azb) ; 3 uses
  %i.azd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.ayy, <2 x float> %i.azc) ; 4 uses
  %i.aze = fsub nsz <2 x float> %i.azd, %i.ayz
  %i.azf = fadd nsz <2 x float> %i.azd, %i.ayz
  %shift = shufflevector <2 x float> %i.azf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.aze, %shift
  %i.azg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.azh = fmul nsz float %i.azg, 5.000000e-01    ; 2 uses
  %i.azi = fmul nsz <2 x float> %i.ayu, zeroinitializer
  %i.azj = fadd nsz <2 x float> %i.azi, splat (float 1.000000e+00) ; 3 uses
  %i.azk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.ayu, <2 x float> %i.azj)
  %i.azl = fadd nsz <2 x float> %i.azk, %i.ayv    ; 3 uses
  %i.azm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.aza, <2 x float> %i.azl)
  %i.azn = fadd nsz <2 x float> %i.azm, %i.ayw    ; 3 uses
  %i.azo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.azb, <2 x float> %i.azn)
  %i.azp = fadd nsz <2 x float> %i.azo, %i.ayx    ; 3 uses
  %i.azq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.azc, <2 x float> %i.azp)
  %i.azr = fadd nsz <2 x float> %i.azq, %i.ayy    ; 4 uses
  %i.azs = fsub nsz <2 x float> %i.azr, %i.azd
  %i.azt = fadd nsz <2 x float> %i.azr, %i.azd
  %shift.1 = shufflevector <2 x float> %i.azt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd nsz <2 x float> %i.azs, %shift.1
  %i.azu = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.azv = fmul nsz float %i.azu, 5.000000e-01    ; 2 uses
  %i.azw = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.azx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.azj, <2 x float> %i.azw)
  %i.azy = fadd nsz <2 x float> %i.azx, %i.ayu    ; 3 uses
  %i.azz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.azl, <2 x float> %i.azy)
  %i.baa = fadd nsz <2 x float> %i.azz, %i.aza    ; 3 uses
  %i.bab = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.azn, <2 x float> %i.baa)
  %i.bac = fadd nsz <2 x float> %i.bab, %i.azb    ; 3 uses
  %i.bad = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.azp, <2 x float> %i.bac)
  %i.bae = fadd nsz <2 x float> %i.bad, %i.azc    ; 4 uses
  %i.baf = fsub nsz <2 x float> %i.bae, %i.azr
  %i.bag = fadd nsz <2 x float> %i.bae, %i.azr
  %shift.2 = shufflevector <2 x float> %i.bag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fadd nsz <2 x float> %i.baf, %shift.2
  %i.bah = extractelement <2 x float> %foldExtExtBinop.2, i64 0
  %i.bai = fmul nsz float %i.bah, 5.000000e-01    ; 2 uses
  %i.baj = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.bak = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.azw, <2 x float> %i.baj)
  %i.bal = fadd nsz <2 x float> %i.bak, %i.azj    ; 3 uses
  %i.bam = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.azy, <2 x float> %i.bal)
  %i.ban = fadd nsz <2 x float> %i.bam, %i.azl    ; 3 uses
  %i.bao = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.baa, <2 x float> %i.ban)
  %i.bap = fadd nsz <2 x float> %i.bao, %i.azn    ; 3 uses
  %i.baq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bac, <2 x float> %i.bap)
  %i.bar = fadd nsz <2 x float> %i.baq, %i.azp    ; 4 uses
  %i.bas = fsub nsz <2 x float> %i.bar, %i.bae
  %i.bat = fadd nsz <2 x float> %i.bar, %i.bae
  %shift.3 = shufflevector <2 x float> %i.bat, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fadd nsz <2 x float> %i.bas, %shift.3
  %i.bau = extractelement <2 x float> %foldExtExtBinop.3, i64 0
  %i.bav = fmul nsz float %i.bau, 5.000000e-01    ; 2 uses
  %i.baw = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.bax = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.baj, <2 x float> %i.baw)
  %i.bay = fadd nsz <2 x float> %i.bax, %i.azw    ; 3 uses
  %i.baz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bal, <2 x float> %i.bay)
  %i.bba = fadd nsz <2 x float> %i.baz, %i.azy    ; 3 uses
  %i.bbb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.ban, <2 x float> %i.bba)
  %i.bbc = fadd nsz <2 x float> %i.bbb, %i.baa    ; 3 uses
  %i.bbd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bap, <2 x float> %i.bbc)
  %i.bbe = fadd nsz <2 x float> %i.bbd, %i.bac    ; 4 uses
  %i.bbf = fsub nsz <2 x float> %i.bbe, %i.bar
  %i.bbg = fadd nsz <2 x float> %i.bbe, %i.bar
  %shift.4 = shufflevector <2 x float> %i.bbg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4 = fadd nsz <2 x float> %i.bbf, %shift.4
  %i.bbh = extractelement <2 x float> %foldExtExtBinop.4, i64 0
  %i.bbi = fmul nsz float %i.bbh, 5.000000e-01    ; 2 uses
  %i.bbj = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.bbk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.baw, <2 x float> %i.bbj)
  %i.bbl = fadd nsz <2 x float> %i.bbk, %i.baj    ; 3 uses
  %i.bbm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bay, <2 x float> %i.bbl)
  %i.bbn = fadd nsz <2 x float> %i.bbm, %i.bal    ; 3 uses
  %i.bbo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.bba, <2 x float> %i.bbn)
  %i.bbp = fadd nsz <2 x float> %i.bbo, %i.ban    ; 3 uses
  %i.bbq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bbc, <2 x float> %i.bbp)
  %i.bbr = fadd nsz <2 x float> %i.bbq, %i.bap    ; 4 uses
  %i.bbs = fsub nsz <2 x float> %i.bbr, %i.bbe
  %i.bbt = fadd nsz <2 x float> %i.bbr, %i.bbe
  %shift.5 = shufflevector <2 x float> %i.bbt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5 = fadd nsz <2 x float> %i.bbs, %shift.5
  %i.bbu = extractelement <2 x float> %foldExtExtBinop.5, i64 0
  %i.bbv = fmul nsz float %i.bbu, 5.000000e-01    ; 2 uses
  %i.bbw = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.bbx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bbj, <2 x float> %i.bbw)
  %i.bby = fadd nsz <2 x float> %i.bbx, %i.baw    ; 3 uses
  %i.bbz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bbl, <2 x float> %i.bby)
  %i.bca = fadd nsz <2 x float> %i.bbz, %i.bay    ; 3 uses
  %i.bcb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.bbn, <2 x float> %i.bca)
  %i.bcc = fadd nsz <2 x float> %i.bcb, %i.bba    ; 3 uses
  %i.bcd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bbp, <2 x float> %i.bcc)
  %i.bce = fadd nsz <2 x float> %i.bcd, %i.bbc    ; 4 uses
  %i.bcf = fsub nsz <2 x float> %i.bce, %i.bbr
  %i.bcg = fadd nsz <2 x float> %i.bce, %i.bbr
  %shift.6 = shufflevector <2 x float> %i.bcg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6 = fadd nsz <2 x float> %i.bcf, %shift.6
  %i.bch = extractelement <2 x float> %foldExtExtBinop.6, i64 0
  %i.bci = fmul nsz float %i.bch, 5.000000e-01    ; 2 uses
  %i.bcj = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 3 uses
  %i.bck = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bbw, <2 x float> %i.bcj)
  %i.bcl = fadd nsz <2 x float> %i.bck, %i.bbj    ; 3 uses
  %i.bcm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bby, <2 x float> %i.bcl)
  %i.bcn = fadd nsz <2 x float> %i.bcm, %i.bbl    ; 3 uses
  %i.bco = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.bca, <2 x float> %i.bcn)
  %i.bcp = fadd nsz <2 x float> %i.bco, %i.bbn    ; 3 uses
  %i.bcq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bcc, <2 x float> %i.bcp)
  %i.bcr = fadd nsz <2 x float> %i.bcq, %i.bbp    ; 4 uses
  %i.bcs = fsub nsz <2 x float> %i.bcr, %i.bce
  %i.bct = fadd nsz <2 x float> %i.bcr, %i.bce
  %shift.7 = shufflevector <2 x float> %i.bct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fadd nsz <2 x float> %i.bcs, %shift.7
  %i.bcu = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.bcv = fmul nsz float %i.bcu, 5.000000e-01    ; 2 uses
  %i.bcw = fmul nsz <2 x float> %i.ayu, zeroinitializer ; 2 uses
  %i.bcx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bcj, <2 x float> %i.bcw)
  %i.bcy = fadd nsz <2 x float> %i.bcx, %i.bbw    ; 2 uses
  %i.bcz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bcl, <2 x float> %i.bcy)
  %i.bda = fadd nsz <2 x float> %i.bcz, %i.bby    ; 2 uses
  %i.bdb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.bcn, <2 x float> %i.bda)
  %i.bdc = fadd nsz <2 x float> %i.bdb, %i.bca    ; 2 uses
  %i.bdd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bcp, <2 x float> %i.bdc)
  %i.bde = fadd nsz <2 x float> %i.bdd, %i.bcc    ; 4 uses
  %i.bdf = fsub nsz <2 x float> %i.bde, %i.bcr
  %i.bdg = fadd nsz <2 x float> %i.bde, %i.bcr
  %shift.8 = shufflevector <2 x float> %i.bdg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.8 = fadd nsz <2 x float> %i.bdf, %shift.8
  %i.bdh = extractelement <2 x float> %foldExtExtBinop.8, i64 0
  %i.bdi = fmul nsz float %i.bdh, 5.000000e-01    ; 2 uses
  %i.bdj = fmul nsz <2 x float> %i.ayu, zeroinitializer
  %i.bdk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bcw, <2 x float> %i.bdj)
  %i.bdl = fadd nsz <2 x float> %i.bdk, %i.bcj
  %i.bdm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.bcy, <2 x float> %i.bdl)
  %i.bdn = fadd nsz <2 x float> %i.bdm, %i.bcl
  %i.bdo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayf, <2 x float> %i.bda, <2 x float> %i.bdn)
  %i.bdp = fadd nsz <2 x float> %i.bdo, %i.bcn
  %i.bdq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.bdc, <2 x float> %i.bdp)
  %i.bdr = fadd nsz <2 x float> %i.bdq, %i.bcp    ; 2 uses
  %i.bds = fsub nsz <2 x float> %i.bdr, %i.bde
  %i.bdt = fadd nsz <2 x float> %i.bdr, %i.bde
  %shift.9 = shufflevector <2 x float> %i.bdt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.9 = fadd nsz <2 x float> %i.bds, %shift.9
  %i.bdu = extractelement <2 x float> %foldExtExtBinop.9, i64 0
  %i.bdv = fmul nsz float %i.bdu, 5.000000e-01    ; 2 uses
  %i.bdw = fsub nsz float %i.azv, %i.azh
  %i.bdx = fadd nsz float %i.bdw, 1.000000e+00
  %i.bdy = fsub nsz float %i.bav, %i.bai
  %i.bdz = fadd nsz float %i.bdx, %i.bdy
  %i.bea = fsub nsz float %i.bbv, %i.bbi
  %i.beb = fadd nsz float %i.bdz, %i.bea
  %i.bec = fsub nsz float %i.bcv, %i.bci
  %i.bed = fadd nsz float %i.beb, %i.bec
  %i.bee = fsub nsz float %i.bdv, %i.bdi
  %i.bef = fadd nsz float %i.bed, %i.bee
  %i.beg = mul nuw nsw i64 %indvars.iv554, 40     ; 2 uses
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv554
  store float %i.bef, ptr %i.beh, align 4, !tbaa !66
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %.pre634, i64 %i.beg ; 40 uses
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !66 ; 2 uses
  %i.bek = fmul nsz float %i.bej, %i.bej
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 4
  %i.bem = load float, ptr %i.bel, align 4, !tbaa !66 ; 2 uses
  %i.ben = call nsz float @llvm.fmuladd.f32(float %i.bem, float %i.bem, float %i.bek)
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bei, i64 8
end_hunk_0
