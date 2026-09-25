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
  %i.auu = select <8 x i1> %i.aut, <8 x float> %i.aus, <8 x float> splat (float 2.000000e-03) ; 6 uses
  %i.auv = fcmp nsz ogt <8 x float> %i.auu, splat (float f0x4048EF16) ; 5 uses
  %i.auw = extractelement <8 x i1> %i.auv, i64 7
  %i.aux = extractelement <8 x float> %i.auu, i64 7
  %..i.i444.9 = select nsz i1 %i.auw, float f0x4048EF16, float %i.aux ; 3 uses
  %i.auy = call nsz float @llvm.cos.f32(float %..i.i444.9)
  %i.auz = insertelement <2 x float> poison, float %i.auy, i64 0
  %5 = shufflevector <8 x i1> %i.auv, <8 x i1> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %6 = shufflevector <8 x float> %i.auu, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %7 = select <4 x i1> %5, <4 x float> splat (float f0x4048EF16), <4 x float> %6 ; 5 uses
  %i.ava = extractelement <4 x float> %7, i64 3   ; 2 uses
  %i.avb = extractelement <4 x float> %7, i64 2   ; 2 uses
  %i.avc = extractelement <4 x float> %7, i64 1   ; 2 uses
  %8 = extractelement <4 x float> %7, i64 0       ; 2 uses
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
  %9 = fadd nsz <4 x float> %7, splat (float -2.000000e-03) ; 4 uses
  %10 = extractelement <4 x float> %9, i64 0
  %i.awv = fcmp nsz ogt float %i.awu, %10
  %i.aww = fadd nsz float %i.awu, %8
  %i.awx = fadd nsz float %i.aww, -2.000000e-03
  %i.awy = fmul nsz float %i.awx, 5.000000e-01
  %.sroa.23.0 = select nsz i1 %i.awv, float %i.awy, float %i.awu ; 2 uses
  %i.awz = fadd nsz float %.sroa.23.0, 2.000000e-03
  %i.axa = call nsz float @llvm.maxnum.f32(float %8, float %i.awz) ; 3 uses
  %11 = extractelement <4 x float> %9, i64 1
  %i.axb = fcmp nsz ogt float %i.axa, %11
  %i.axc = fadd nsz float %i.axa, %i.avc
  %i.axd = fadd nsz float %i.axc, -2.000000e-03
  %i.axe = fmul nsz float %i.axd, 5.000000e-01
  %.sroa.29.0 = select nsz i1 %i.axb, float %i.axe, float %i.axa ; 2 uses
  %i.axf = fadd nsz float %.sroa.29.0, 2.000000e-03
  %i.axg = call nsz float @llvm.maxnum.f32(float %i.avc, float %i.axf) ; 3 uses
  %12 = extractelement <4 x float> %9, i64 2
  %i.axh = fcmp nsz ogt float %i.axg, %12
  %i.axi = fadd nsz float %i.axg, %i.avb
  %i.axj = fadd nsz float %i.axi, -2.000000e-03
  %i.axk = fmul nsz float %i.axj, 5.000000e-01
  %.sroa.35.0 = select nsz i1 %i.axh, float %i.axk, float %i.axg ; 2 uses
  %i.axl = fadd nsz float %.sroa.35.0, 2.000000e-03
  %i.axm = call nsz float @llvm.maxnum.f32(float %i.avb, float %i.axl) ; 3 uses
  %13 = extractelement <4 x float> %9, i64 3
  %i.axn = fcmp nsz ogt float %i.axm, %13
  %i.axo = fadd nsz float %i.axm, %i.ava
  %i.axp = fadd nsz float %i.axo, -2.000000e-03
  %i.axq = fmul nsz float %i.axp, 5.000000e-01
  %.sroa.41.0 = select nsz i1 %i.axn, float %i.axq, float %i.axm ; 2 uses
  %i.axr = fadd nsz float %.sroa.41.0, 2.000000e-03
  %i.axs = call nsz float @llvm.maxnum.f32(float %i.ava, float %i.axr) ; 3 uses
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
begin_hunk_1_@qmf_synth:bb.a
  %i.ju = load float, ptr %i.jt, align 16, !tbaa !66
  store float %i.ju, ptr %i.bi, align 4, !tbaa !66
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !66
  store float %i.jw, ptr %i.bm, align 4, !tbaa !66
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.jy = load float, ptr %i.jx, align 8, !tbaa !66
  store float %i.jy, ptr %i.bq, align 4, !tbaa !66
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !66
  store float %i.ka, ptr %i.bu, align 4, !tbaa !66
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.kc = load float, ptr %i.kb, align 16, !tbaa !66
  store float %i.kc, ptr %i.by, align 4, !tbaa !66
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !66
  store float %i.ke, ptr %i.cc, align 4, !tbaa !66
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !66
  store float %i.kg, ptr %i.cg, align 4, !tbaa !66
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !66
  store float %i.ki, ptr %i.ck, align 4, !tbaa !66
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.kk = load float, ptr %i.kj, align 16, !tbaa !66
  store float %i.kk, ptr %i.co, align 4, !tbaa !66
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.km = load float, ptr %i.kl, align 4, !tbaa !66
  store float %i.km, ptr %i.cs, align 4, !tbaa !66
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ko = load float, ptr %i.kn, align 8, !tbaa !66
  store float %i.ko, ptr %i.cw, align 4, !tbaa !66
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !66
  store float %i.kq, ptr %i.da, align 4, !tbaa !66
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ks = load float, ptr %i.kr, align 16, !tbaa !66
  store float %i.ks, ptr %i.de, align 4, !tbaa !66
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !66
  store float %i.ku, ptr %i.di, align 4, !tbaa !66
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.kw = load float, ptr %i.kv, align 8, !tbaa !66
  store float %i.kw, ptr %i.dm, align 4, !tbaa !66
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !66
  store float %i.ky, ptr %i.dq, align 4, !tbaa !66
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.la = load float, ptr %i.kz, align 16, !tbaa !66
  store float %i.la, ptr %i.du, align 4, !tbaa !66
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !66
  store float %i.lc, ptr %i.dy, align 4, !tbaa !66
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.le = load float, ptr %i.ld, align 8, !tbaa !66
  store float %i.le, ptr %i.ec, align 4, !tbaa !66
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !66
  store float %i.lg, ptr %i.eg, align 4, !tbaa !66
  %i.lh = load float, ptr %i.b, align 16, !tbaa !66
  store float %i.lh, ptr %i.ew, align 4, !tbaa !66
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.lj = load float, ptr %i.li, align 4, !tbaa !66
  store float %i.lj, ptr %i.ez, align 4, !tbaa !66
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ll = load float, ptr %i.lk, align 8, !tbaa !66
  store float %i.ll, ptr %i.fc, align 4, !tbaa !66
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !66
  store float %i.ln, ptr %i.ff, align 4, !tbaa !66
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.lp = load float, ptr %i.lo, align 16, !tbaa !66
  store float %i.lp, ptr %i.fi, align 4, !tbaa !66
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !66
  store float %i.lr, ptr %i.fl, align 4, !tbaa !66
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lt = load float, ptr %i.ls, align 8, !tbaa !66
  store float %i.lt, ptr %i.fo, align 4, !tbaa !66
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !66
  store float %i.lv, ptr %i.fr, align 4, !tbaa !66
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lx = load float, ptr %i.lw, align 16, !tbaa !66
  store float %i.lx, ptr %i.fu, align 4, !tbaa !66
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !66
  store float %i.lz, ptr %i.fx, align 4, !tbaa !66
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.mb = load float, ptr %i.ma, align 8, !tbaa !66
  store float %i.mb, ptr %i.ga, align 4, !tbaa !66
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.md = load float, ptr %i.mc, align 4, !tbaa !66
  store float %i.md, ptr %i.gd, align 4, !tbaa !66
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.mf = load float, ptr %i.me, align 16, !tbaa !66
  store float %i.mf, ptr %i.gg, align 4, !tbaa !66
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !66
  store float %i.mh, ptr %i.gj, align 4, !tbaa !66
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !66
  store float %i.mj, ptr %i.gm, align 4, !tbaa !66
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !66
  store float %i.ml, ptr %i.gp, align 4, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.mn = load float, ptr %i.mm, align 16, !tbaa !66
  store float %i.mn, ptr %i.gs, align 4, !tbaa !66
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !66
  store float %i.mp, ptr %i.gv, align 4, !tbaa !66
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !66
  store float %i.mr, ptr %i.gy, align 4, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !66
  store float %i.mt, ptr %i.hb, align 4, !tbaa !66
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.mv = load float, ptr %i.mu, align 16, !tbaa !66
  store float %i.mv, ptr %i.he, align 4, !tbaa !66
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !66
  store float %i.mx, ptr %i.hh, align 4, !tbaa !66
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.mz = load float, ptr %i.my, align 8, !tbaa !66
  store float %i.mz, ptr %i.hk, align 4, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.nb = load float, ptr %i.na, align 4, !tbaa !66
  store float %i.nb, ptr %i.hn, align 4, !tbaa !66
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.nd = load float, ptr %i.nc, align 16, !tbaa !66
  store float %i.nd, ptr %i.hq, align 4, !tbaa !66
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !66
  store float %i.nf, ptr %i.ht, align 4, !tbaa !66
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !66
  store float %i.nh, ptr %i.hw, align 4, !tbaa !66
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !66
  store float %i.nj, ptr %i.hz, align 4, !tbaa !66
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.nl = load float, ptr %i.nk, align 16, !tbaa !66
  store float %i.nl, ptr %i.ic, align 4, !tbaa !66
  %i.nm = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !66
  store float %i.nn, ptr %i.if, align 4, !tbaa !66
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.np = load float, ptr %i.no, align 8, !tbaa !66
  store float %i.np, ptr %i.ii, align 4, !tbaa !66
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !66
  store float %i.nr, ptr %i.il, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.b:                                             ; preds = %.lr.ph20, %bb.c
  %indvars.iv45 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next46, %bb.c ] ; 2 uses
  %indvars.iv43 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next44, %bb.c ] ; 4 uses
  %i.ns = add nsw i64 %indvars.iv43, %i.iv        ; 2 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ns
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !66
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ns
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !66
  %i.nx = add nsw i64 %indvars.iv43, %i.iu
  %i.ny = add nsw i64 %indvars.iv43, %.pre-phi
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.nz = fmul nsz <4 x float> %i.pf, splat (float 2.000000e+00)
  %.idx59 = shl nuw nsw i64 %indvars.iv45, 3
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx59
  store <4 x float> %i.nz, ptr %i.oa, align 4, !tbaa !66
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %i.ob = icmp slt i64 %indvars.iv.next46, %.pre-phi
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -2
  br i1 %i.ob, label %bb.b, label %.preheader1, !llvm.loop !255

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv40 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next41, %bb.d ] ; 5 uses
  %.011916 = phi float [ %i.nw, %bb.b ], [ %i.oo, %bb.d ] ; 2 uses
  %.012015 = phi float [ %i.nu, %bb.b ], [ %i.om, %bb.d ] ; 2 uses
  %i.oc = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.pf, %bb.d ]
  %.idx = shl nuw nsw i64 %indvars.iv40, 3
  %i.od = getelementptr inbounds nuw i8, ptr @h0, i64 %.idx ; 2 uses
  %i.oe = add nsw i64 %i.nx, %indvars.iv40        ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4, !tbaa !66 ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.oe
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !66 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.ok = add nsw i64 %i.ny, %indvars.iv40        ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ok
  %i.om = load float, ptr %i.ol, align 4, !tbaa !66 ; 3 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ok
  %i.oo = load float, ptr %i.on, align 4, !tbaa !66 ; 3 uses
  %i.op = load <2 x float>, ptr %i.od, align 16, !tbaa !66
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = fadd nsz float %.012015, %.011916
  %i.or = fsub nsz float %.012015, %.011916
  %i.os = fadd nsz float %i.og, %i.oi
  %i.ot = fsub nsz float %i.og, %i.oi
  %i.ou = fadd nsz float %i.om, %i.oo
  %7 = fsub nsz float %i.om, %i.oo
  %i.ov = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 1 ; 2 uses
  %i.ox = insertelement <4 x float> %i.ow, float %i.or, i64 2
  %i.oy = insertelement <4 x float> %i.ox, float %6, i64 3
  %i.oz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> %i.oy, <4 x float> %i.oc)
  %i.pa = load <2 x float>, ptr %i.oj, align 8, !tbaa !66
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pc = shufflevector <4 x float> %i.ow, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.pd = insertelement <4 x float> %i.pc, float %7, i64 0
  %i.pe = insertelement <4 x float> %i.pd, float %i.ou, i64 1
  %i.pf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pb, <4 x float> %i.pe, <4 x float> %i.oz) ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 2
  %i.pg = icmp samesign ult i64 %indvars.iv40, 30
  br i1 %i.pg, label %bb.d, label %bb.c, !llvm.loop !256
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @lsp_unquant_high(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.c = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.d = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.b, <4 x float> splat (float 3.125000e-01), <4 x float> splat (float 7.500000e-01))
  %i.e = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> splat (float 3.125000e-01), <4 x float> splat (float 7.500000e-01))
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %i.d, ptr %i.f, align 4, !tbaa !66
  store <4 x float> %i.e, ptr %i.g, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader75

.lr.ph.preheader75:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !69   ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !36
  %i.r = add i32 %i.j, 6
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.r) ; 5 uses
  store i32 %i.s, ptr %i.i, align 8, !tbaa !70
  br i1 %i.a, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %._crit_edge
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.u = and i32 %i.j, 7
  %i.v = shl i32 %i.t, %i.u
  %i.w = lshr i32 %i.v, 26
  %i.x = mul nuw nsw i32 %i.w, %1
  %i.y = zext nneg i32 %i.x to i64
  %wide.trip.count39 = zext nneg i32 %1 to i64    ; 5 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr @high_lsp_cdbk, i64 %i.y ; 2 uses
  %min.iters.check49 = icmp ult i32 %1, 8
  br i1 %min.iters.check49, label %scalar.ph48.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph29
  %n.vec51 = and i64 %wide.trip.count39, 2147483640 ; 3 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next57, %vector.body52 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index53 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %wide.load = load <4 x i8>, ptr %i.z, align 1, !tbaa !36
  %wide.load54 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !36
  %i.ab = sitofp <4 x i8> %wide.load to <4 x float>
  %i.ac = sitofp <4 x i8> %wide.load54 to <4 x float>
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index53 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load55 = load <4 x float>, ptr %i.ad, align 4, !tbaa !66
  %wide.load56 = load <4 x float>, ptr %i.ae, align 4, !tbaa !66
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float 3.906250e-03), <4 x float> %wide.load55)
  %i.ag = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float 3.906250e-03), <4 x float> %wide.load56)
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !66
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !66
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next57, %n.vec51
  br i1 %i.ah, label %middle.block58, label %vector.body52, !llvm.loop !258

middle.block58:                                   ; preds = %vector.body52
  %cmp.n59 = icmp eq i64 %n.vec51, %wide.trip.count39
  br i1 %cmp.n59, label %.lr.ph33, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.lr.ph29, %middle.block58
  %indvars.iv36.ph = phi i64 [ 0, %.lr.ph29 ], [ %n.vec51, %middle.block58 ]
  br label %scalar.ph48

.lr.ph:                                           ; preds = %.lr.ph.preheader75, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader75 ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = uitofp nsz nneg i32 %i.ai to float
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float 3.125000e-01, float 7.500000e-01)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.ak, ptr %i.al, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !259

._crit_edge30:                                    ; preds = %._crit_edge
  %i.am = add i32 %i.s, 6
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.am)
  store i32 %i.an, ptr %i.i, align 8, !tbaa !70
  br label %._crit_edge34

.lr.ph33:                                         ; preds = %scalar.ph48, %middle.block58
  %i.ao = lshr i32 %i.s, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !36
  %i.as = add i32 %i.s, 6
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.as)
  store i32 %i.at, ptr %i.i, align 8, !tbaa !70
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.av = and i32 %i.s, 7
  %i.aw = shl i32 %i.au, %i.av
  %i.ax = lshr i32 %i.aw, 26
  %i.ay = mul nuw nsw i32 %i.ax, %1
  %i.az = zext nneg i32 %i.ay to i64
  %wide.trip.count44 = zext nneg i32 %1 to i64
  %invariant.gep46 = getelementptr inbounds nuw i8, ptr @high_lsp_cdbk2, i64 %i.az ; 2 uses
  %min.iters.check62 = icmp ult i32 %1, 8
  br i1 %min.iters.check62, label %scalar.ph61.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph33
  %n.vec64 = and i64 %wide.trip.count39, 2147483640 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 %index66 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.load67 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !36
  %wide.load68 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !36
  %i.bc = sitofp <4 x i8> %wide.load67 to <4 x float>
  %i.bd = sitofp <4 x i8> %wide.load68 to <4 x float>
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index66 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.be, align 4, !tbaa !66
  %wide.load70 = load <4 x float>, ptr %i.bf, align 4, !tbaa !66
  %i.bg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> splat (float f0x3B000000), <4 x float> %wide.load69)
  %i.bh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> splat (float f0x3B000000), <4 x float> %wide.load70)
  store <4 x float> %i.bg, ptr %i.be, align 4, !tbaa !66
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !66
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.bi, label %middle.block72, label %vector.body65, !llvm.loop !260

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %n.vec64, %wide.trip.count39
  br i1 %cmp.n73, label %._crit_edge34, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %.lr.ph33, %middle.block72
  %indvars.iv41.ph = phi i64 [ 0, %.lr.ph33 ], [ %n.vec64, %middle.block72 ]
  br label %scalar.ph61

scalar.ph48:                                      ; preds = %scalar.ph48.preheader, %scalar.ph48
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %scalar.ph48 ], [ %indvars.iv36.ph, %scalar.ph48.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv36
  %i.bj = load i8, ptr %gep, align 1, !tbaa !36
  %i.bk = sitofp i8 %i.bj to float
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv36 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !66
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float 3.906250e-03, float %i.bm)
  store float %i.bn, ptr %i.bl, align 4, !tbaa !66
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.lr.ph33, label %scalar.ph48, !llvm.loop !261

._crit_edge34:                                    ; preds = %scalar.ph61, %middle.block72, %._crit_edge30
  ret void

scalar.ph61:                                      ; preds = %scalar.ph61.preheader, %scalar.ph61
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %scalar.ph61 ], [ %indvars.iv41.ph, %scalar.ph61.preheader ] ; 3 uses
  %gep47 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 %indvars.iv41
  %i.bo = load i8, ptr %gep47, align 1, !tbaa !36
  %i.bp = sitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float f0x3B000000, float %i.br)
  store float %i.bs, ptr %i.bq, align 4, !tbaa !66
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
end_hunk_1
