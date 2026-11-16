Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-image?download=true
inline.NumInlined: 282
inline.NumDeleted: 140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t:bb.a
  %i.arc = extractelement <2 x float> %i.aqj, i64 1 ; 7 uses
  %i.ard = fcmp ugt float %i.arc, 2.500000e-01
  br i1 %i.ard, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.are = tail call nnan float @llvm.fmuladd.f32(float %i.arc, float 1.600000e+01, float -1.200000e+01)
  %i.arf = tail call float @llvm.fmuladd.f32(float %i.are, float %i.arc, float 4.000000e+00)
  %i.arg = fmul float %i.arc, %i.arf
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.arc)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.arh = phi float [ %i.arg, %bb.bp ], [ %sqrt.i, %bb.bq ]
  %i.ari = tail call float @llvm.fmuladd.f32(float %i.aqu, float 2.000000e+00, float -1.000000e+00)
  %i.arj = fsub float %i.arh, %i.arc
  %i.ark = tail call float @llvm.fmuladd.f32(float %i.ari, float %i.arj, float %i.arc)
  br label %_ZL16blend_soft_lightff.exit217.i

_ZL16blend_soft_lightff.exit217.i:                ; preds = %bb.br, %bb.bn
  %.0.i216.i = phi float [ %i.arb, %bb.bn ], [ %i.ark, %bb.br ]
  %i.arl = extractelement <2 x float> %i.aqc, i64 0 ; 3 uses
  %i.arm = fcmp ugt float %i.arl, 5.000000e-01
  br i1 %i.arm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZL16blend_soft_lightff.exit217.i
  %i.arn = tail call nnan float @llvm.fmuladd.f32(float %i.arl, float -2.000000e+00, float 1.000000e+00)
  %i.aro = extractelement <2 x float> %i.aqj, i64 0 ; 3 uses
  %i.arp = fsub float 1.000000e+00, %i.aro
  %i.arq = fneg float %i.aro
  %i.arr = fmul float %i.arn, %i.arq
  %i.ars = tail call float @llvm.fmuladd.f32(float %i.arr, float %i.arp, float %i.aro)
  br label %_ZL16blend_soft_lightff.exit215.i

bb.bt:                                            ; preds = %_ZL16blend_soft_lightff.exit217.i
  %i.art = extractelement <2 x float> %i.aqj, i64 0 ; 7 uses
  %i.aru = fcmp ugt float %i.art, 2.500000e-01
  br i1 %i.aru, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.arv = tail call nnan float @llvm.fmuladd.f32(float %i.art, float 1.600000e+01, float -1.200000e+01)
  %i.arw = tail call float @llvm.fmuladd.f32(float %i.arv, float %i.art, float 4.000000e+00)
  %i.arx = fmul float %i.art, %i.arw
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %sqrt308.i = tail call float @llvm.sqrt.f32(float %i.art)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ary = phi float [ %i.arx, %bb.bu ], [ %sqrt308.i, %bb.bv ]
  %i.arz = tail call float @llvm.fmuladd.f32(float %i.arl, float 2.000000e+00, float -1.000000e+00)
  %i.asa = fsub float %i.ary, %i.art
  %i.asb = tail call float @llvm.fmuladd.f32(float %i.arz, float %i.asa, float %i.art)
  br label %_ZL16blend_soft_lightff.exit215.i

_ZL16blend_soft_lightff.exit215.i:                ; preds = %bb.bw, %bb.bs
  %.0.i214.i = phi float [ %i.ars, %bb.bs ], [ %i.asb, %bb.bw ]
  %i.asc = fcmp ugt float %i.aqr, 5.000000e-01
  br i1 %i.asc, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZL16blend_soft_lightff.exit215.i
  %i.asd = tail call nnan float @llvm.fmuladd.f32(float %i.aqr, float -2.000000e+00, float 1.000000e+00)
  %i.ase = fsub float 1.000000e+00, %i.aqt
  %i.asf = fneg float %i.aqt
  %i.asg = fmul float %i.asd, %i.asf
  %i.ash = tail call float @llvm.fmuladd.f32(float %i.asg, float %i.ase, float %i.aqt)
  br label %_ZL16blend_soft_lightff.exit.i

bb.by:                                            ; preds = %_ZL16blend_soft_lightff.exit215.i
  %i.asi = fcmp ugt float %i.aqt, 2.500000e-01
  br i1 %i.asi, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.asj = tail call nnan float @llvm.fmuladd.f32(float %i.aqt, float 1.600000e+01, float -1.200000e+01)
  %i.ask = tail call float @llvm.fmuladd.f32(float %i.asj, float %i.aqt, float 4.000000e+00)
  %i.asl = fmul float %i.aqt, %i.ask
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %sqrt309.i = tail call float @llvm.sqrt.f32(float %i.aqt)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.asm = phi float [ %i.asl, %bb.bz ], [ %sqrt309.i, %bb.ca ]
  %i.asn = tail call float @llvm.fmuladd.f32(float %i.aqr, float 2.000000e+00, float -1.000000e+00)
  %i.aso = fsub float %i.asm, %i.aqt
  %i.asp = tail call float @llvm.fmuladd.f32(float %i.asn, float %i.aso, float %i.aqt)
  br label %_ZL16blend_soft_lightff.exit.i

_ZL16blend_soft_lightff.exit.i:                   ; preds = %bb.cb, %bb.bx
  %.0.i213.i = phi float [ %i.ash, %bb.bx ], [ %i.asp, %bb.cb ]
  %i.asq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.apl ; 2 uses
  %i.asr = fneg float %i.apm
  %i.ass = fmul float %i.apm, %i.apr
  %i.ast = shufflevector <2 x float> %i.apl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.asu = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.asq, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.asv = fmul <4 x float> %i.ast, %i.asu
  %i.asw = extractelement <2 x float> %i.asq, i64 0
  %i.asx = fmul float %i.asw, %i.apr
  %i.asy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aqr, i64 0
  %i.asz = shufflevector <2 x float> %i.aqc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ata = shufflevector <4 x float> %i.asy, <4 x float> %i.asz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.atb = fmul <4 x float> %i.asv, %i.ata
  %i.atc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ass, i64 0
  %i.atd = shufflevector <4 x float> %i.atc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ate = insertelement <4 x float> poison, float %.0.i213.i, i64 0
  %i.atf = insertelement <4 x float> %i.ate, float %.0.i214.i, i64 1
  %i.atg = insertelement <4 x float> %i.atf, float %.0.i216.i, i64 2
  %i.ath = shufflevector <2 x float> %i.apl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ati = shufflevector <4 x float> %i.atg, <4 x float> %i.ath, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.atj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atd, <4 x float> %i.ati, <4 x float> %i.atb)
  %i.atk = insertelement <4 x float> poison, float %i.asx, i64 0
  %i.atl = insertelement <4 x float> %i.atk, float %i.asr, i64 1
  %i.atm = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.atn = insertelement <4 x float> poison, float %i.aqt, i64 0
  %i.ato = shufflevector <2 x float> %i.aqj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.atp = shufflevector <4 x float> %i.atn, <4 x float> %i.ato, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.atq = shufflevector <4 x float> %i.atp, <4 x float> %i.ath, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atm, <4 x float> %i.atq, <4 x float> %i.atj) ; 2 uses
  %i.ats = fcmp oge <4 x float> %i.atr, zeroinitializer
  %i.att = select <4 x i1> %i.ats, <4 x float> %i.atr, <4 x float> zeroinitializer ; 2 uses
  %i.atu = fcmp ole <4 x float> %i.att, splat (float 1.000000e+00)
  %i.atv = select <4 x i1> %i.atu, <4 x float> %i.att, <4 x float> splat (float 1.000000e+00)
  %i.atw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atv, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.atx = fptoui <4 x float> %i.atw to <4 x i8>
  %i.aty = bitcast <4 x i8> %i.atx to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cc:                                            ; preds = %bb.b
  %i.atz = lshr i32 %i.q, 8
  %i.aua = lshr i32 %i.q, 16
  %i.aub = uitofp nneg i32 %i.t to float
  %i.auc = lshr i32 %i.s, 8
  %i.aud = lshr i32 %i.s, 16
  %i.aue = uitofp nneg i32 %i.u to float
  %i.auf = and i32 %i.q, 255
  %i.aug = uitofp nneg i32 %i.auf to float
  %i.auh = and i32 %i.atz, 255
  %i.aui = uitofp nneg i32 %i.auh to float
  %i.auj = insertelement <2 x float> poison, float %i.aug, i64 0
  %i.auk = insertelement <2 x float> %i.auj, float %i.aui, i64 1
  %i.aul = fdiv <2 x float> %i.auk, splat (float 2.550000e+02)
  %i.aum = and i32 %i.s, 255
  %i.aun = uitofp nneg i32 %i.aum to float
  %i.auo = and i32 %i.auc, 255
  %i.aup = uitofp nneg i32 %i.auo to float
  %i.auq = insertelement <2 x float> poison, float %i.aun, i64 0
  %i.aur = insertelement <2 x float> %i.auq, float %i.aup, i64 1
  %i.aus = fdiv <2 x float> %i.aur, splat (float 2.550000e+02)
  %i.aut = insertelement <2 x float> poison, float %i.aue, i64 0
  %i.auu = insertelement <2 x float> %i.aut, float %i.aub, i64 1
  %i.auv = fdiv <2 x float> %i.auu, splat (float 2.550000e+02) ; 10 uses
  %i.auw = extractelement <2 x float> %i.auv, i64 1 ; 2 uses
  %i.aux = shufflevector <2 x float> %i.auv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.auy = fdiv <2 x float> %i.aul, %i.aux
  %i.auz = and i32 %i.aua, 255
  %i.ava = uitofp nneg i32 %i.auz to float
  %i.avb = and i32 %i.aud, 255
  %i.avc = uitofp nneg i32 %i.avb to float
  %i.avd = insertelement <2 x float> poison, float %i.avc, i64 0
  %i.ave = insertelement <2 x float> %i.avd, float %i.ava, i64 1
  %i.avf = fdiv <2 x float> %i.ave, splat (float 2.550000e+02)
  %i.avg = fcmp ogt <2 x float> %i.auv, zeroinitializer ; 3 uses
  %i.avh = shufflevector <2 x i1> %i.avg, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.avi = select <2 x i1> %i.avh, <2 x float> %i.auy, <2 x float> zeroinitializer ; 2 uses
  %i.avj = fdiv <2 x float> %i.avf, %i.auv
  %i.avk = select <2 x i1> %i.avg, <2 x float> %i.avj, <2 x float> zeroinitializer ; 4 uses
  %i.avl = shufflevector <2 x float> %i.auv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avm = fdiv <2 x float> %i.aus, %i.avl
  %i.avn = shufflevector <2 x i1> %i.avg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.avo = select <2 x i1> %i.avn, <2 x float> %i.avm, <2 x float> zeroinitializer ; 2 uses
  %shift120 = shufflevector <2 x float> %i.avk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fsub <2 x float> %shift120, %i.avk
  %i.avp = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.avq = tail call noundef float @llvm.fabs.f32(float %i.avp)
  %i.avr = fsub <2 x float> %i.avi, %i.avo
  %i.avs = fneg float %i.auw
  %i.avt = shufflevector <2 x float> %i.auv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.avu = shufflevector <2 x float> %i.auv, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.avv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.avr)
  %i.avw = shufflevector <2 x float> %i.avv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avx = shufflevector <4 x float> %i.avw, <4 x float> %i.avu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.avy = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.avt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.avz = fmul <4 x float> %i.avx, %i.avy        ; 2 uses
  %i.awa = fsub nnan <2 x float> splat (float 1.000000e+00), %i.auv ; 2 uses
  %i.awb = extractelement <2 x float> %i.awa, i64 0
  %i.awc = fmul float %i.auw, %i.awb
  %shift123 = shufflevector <2 x float> %i.awa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124 = fmul <2 x float> %shift123, %i.auv
  %i.awd = shufflevector <2 x float> %i.auv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.awe = insertelement <2 x float> %i.awd, float %i.awc, i64 0
  %i.awf = shufflevector <2 x float> %i.awe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.awg = shufflevector <2 x float> %i.avk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.awh = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.awg, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.awi = shufflevector <2 x float> %i.avi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awj = shufflevector <4 x float> %i.awi, <4 x float> %i.awh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.awk = fmul <4 x float> %i.awf, %i.awj
  %3 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.avz, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.awl = insertelement <4 x float> %3, float %i.avq, i64 2
  %4 = shufflevector <4 x float> %i.awl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.awm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %i.avz, <4 x float> %i.awk)
  %i.awn = shufflevector <2 x float> %foldExtExtBinop124, <2 x float> %i.avk, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.awo = insertelement <4 x float> %i.awn, float %i.avs, i64 3
  %i.awp = shufflevector <4 x float> %i.awo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.awq = shufflevector <2 x float> %i.avo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awr = shufflevector <4 x float> %i.awq, <4 x float> %i.awn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aws = shufflevector <4 x float> %i.awr, <4 x float> %i.avt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.awt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awp, <4 x float> %i.aws, <4 x float> %i.awm) ; 2 uses
  %i.awu = fcmp oge <4 x float> %i.awt, zeroinitializer
  %i.awv = select <4 x i1> %i.awu, <4 x float> %i.awt, <4 x float> zeroinitializer ; 2 uses
  %i.aww = fcmp ole <4 x float> %i.awv, splat (float 1.000000e+00)
  %i.awx = select <4 x i1> %i.aww, <4 x float> %i.awv, <4 x float> splat (float 1.000000e+00)
  %i.awy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awx, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.awz = fptoui <4 x float> %i.awy to <4 x i8>
  %i.axa = bitcast <4 x i8> %i.awz to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cd:                                            ; preds = %bb.b
  %i.axb = and i32 %i.q, 255
  %i.axc = lshr i32 %i.q, 8
  %i.axd = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.axe = insertelement <2 x i32> %i.axd, i32 %i.s, i64 1
  %i.axf = lshr <2 x i32> %i.axe, splat (i32 16)
  %i.axg = uitofp nneg i32 %i.t to float
  %i.axh = and i32 %i.s, 255
  %i.axi = lshr i32 %i.s, 8
  %i.axj = uitofp nneg i32 %i.u to float
  %i.axk = insertelement <2 x float> poison, float %i.axg, i64 0
  %i.axl = insertelement <2 x float> %i.axk, float %i.axj, i64 1
  %i.axm = fdiv <2 x float> %i.axl, splat (float 2.550000e+02) ; 8 uses
  %i.axn = shufflevector <2 x float> %i.axm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.axo = extractelement <2 x float> %i.axm, i64 1 ; 3 uses
  %i.axp = extractelement <2 x float> %i.axm, i64 0 ; 4 uses
  %i.axq = and <2 x i32> %i.axf, splat (i32 255)
  %i.axr = uitofp nneg <2 x i32> %i.axq to <2 x float>
  %i.axs = fdiv <2 x float> %i.axr, splat (float 2.550000e+02)
  %i.axt = fcmp ogt <2 x float> %i.axm, zeroinitializer ; 3 uses
  %i.axu = fdiv <2 x float> %i.axs, %i.axm
  %i.axv = select <2 x i1> %i.axt, <2 x float> %i.axu, <2 x float> zeroinitializer ; 5 uses
  %i.axw = and i32 %i.axc, 255
  %i.axx = uitofp nneg i32 %i.axw to float
  %i.axy = and i32 %i.axi, 255
  %i.axz = uitofp nneg i32 %i.axy to float
  %i.aya = insertelement <2 x float> poison, float %i.axx, i64 0
  %i.ayb = insertelement <2 x float> %i.aya, float %i.axz, i64 1
  %i.ayc = fdiv <2 x float> %i.ayb, splat (float 2.550000e+02)
  %i.ayd = fdiv <2 x float> %i.ayc, %i.axm
  %i.aye = select <2 x i1> %i.axt, <2 x float> %i.ayd, <2 x float> zeroinitializer ; 5 uses
  %i.ayf = uitofp nneg i32 %i.axb to float
  %i.ayg = uitofp nneg i32 %i.axh to float
  %i.ayh = insertelement <2 x float> poison, float %i.ayf, i64 0
  %i.ayi = insertelement <2 x float> %i.ayh, float %i.ayg, i64 1
  %i.ayj = fdiv <2 x float> %i.ayi, splat (float 2.550000e+02)
  %i.ayk = fdiv <2 x float> %i.ayj, %i.axm
  %i.ayl = select <2 x i1> %i.axt, <2 x float> %i.ayk, <2 x float> zeroinitializer ; 4 uses
  %i.aym = shufflevector <2 x float> %i.ayl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ayn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axv)
  %i.ayo = extractelement <2 x float> %i.axv, i64 0
  %i.ayp = extractelement <2 x float> %i.axv, i64 1
  %i.ayq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aye)
  %i.ayr = extractelement <2 x float> %i.aye, i64 0
  %i.ays = extractelement <2 x float> %i.aye, i64 1
  %i.ayt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ayl)
  %i.ayu = extractelement <2 x float> %i.ayl, i64 0 ; 2 uses
  %i.ayv = extractelement <2 x float> %i.ayl, i64 1
  %i.ayw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axm)
  %i.ayx = fneg float %i.axp
  %i.ayy = shufflevector <2 x float> %i.axv, <2 x float> %i.aye, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ayz = insertelement <4 x float> %i.ayy, float %i.ayu, i64 2
  %i.aza = insertelement <4 x float> %i.ayz, float %i.ayx, i64 3
  %i.azb = fmul <4 x float> %i.aza, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float 1.000000e+00>
  %i.azc = shufflevector <2 x float> %i.axv, <2 x float> %i.aye, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.azd = shufflevector <4 x float> %i.azc, <4 x float> %i.aym, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aze = shufflevector <4 x float> %i.azd, <4 x float> %i.axn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.azf = insertelement <4 x float> poison, float %i.ayn, i64 0
  %i.azg = insertelement <4 x float> %i.azf, float %i.ayq, i64 1
  %i.azh = insertelement <4 x float> %i.azg, float %i.ayt, i64 2
  %i.azi = insertelement <4 x float> %i.azh, float %i.ayw, i64 3
  %i.azj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azb, <4 x float> %i.aze, <4 x float> %i.azi) ; 4 uses
  %i.azk = fmul float %i.axp, %i.axo              ; 3 uses
  %i.azl = fsub nnan float 1.000000e+00, %i.axo
  %i.azm = fmul float %i.axp, %i.azl              ; 3 uses
  %i.azn = fmul float %i.azm, %i.ayo
  %i.azo = extractelement <4 x float> %i.azj, i64 0
  %i.azp = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.azo, float %i.azn)
  %i.azq = fsub nnan float 1.000000e+00, %i.axp
  %i.azr = fmul float %i.azq, %i.axo              ; 3 uses
  %i.azs = tail call float @llvm.fmuladd.f32(float %i.azr, float %i.ayp, float %i.azp)
  %i.azt = fmul float %i.azm, %i.ayr
  %i.azu = extractelement <4 x float> %i.azj, i64 1
  %i.azv = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.azu, float %i.azt)
  %i.azw = tail call float @llvm.fmuladd.f32(float %i.azr, float %i.ays, float %i.azv)
  %i.azx = fmul float %i.ayu, %i.azm
  %i.azy = extractelement <4 x float> %i.azj, i64 2
  %i.azz = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.azy, float %i.azx)
  %i.baa = tail call float @llvm.fmuladd.f32(float %i.azr, float %i.ayv, float %i.azz)
  %i.bab = insertelement <4 x float> poison, float %i.baa, i64 0
  %i.bac = insertelement <4 x float> %i.bab, float %i.azw, i64 1
  %i.bad = insertelement <4 x float> %i.bac, float %i.azs, i64 2
  %i.bae = shufflevector <4 x float> %i.bad, <4 x float> %i.azj, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.baf = fcmp oge <4 x float> %i.bae, zeroinitializer
  %i.bag = select <4 x i1> %i.baf, <4 x float> %i.bae, <4 x float> zeroinitializer ; 2 uses
  %i.bah = fcmp ole <4 x float> %i.bag, splat (float 1.000000e+00)
  %i.bai = select <4 x i1> %i.bah, <4 x float> %i.bag, <4 x float> splat (float 1.000000e+00)
  %i.baj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bai, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bak = fptoui <4 x float> %i.baj to <4 x i8>
  %i.bal = bitcast <4 x i8> %i.bak to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ce:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bam = and i32 %i.q, 255
  %i.ban = lshr i32 %i.q, 8
  %i.bao = lshr i32 %i.q, 16
  %i.bap = uitofp nneg i32 %i.t to float
  %i.baq = and i32 %i.s, 255
  %i.bar = lshr i32 %i.s, 8
  %i.bas = lshr i32 %i.s, 16
  %i.bat = uitofp nneg i32 %i.u to float
  %i.bau = insertelement <2 x float> poison, float %i.bap, i64 0
  %i.bav = insertelement <2 x float> %i.bau, float %i.bat, i64 1
  %i.baw = fdiv <2 x float> %i.bav, splat (float 2.550000e+02) ; 9 uses
  %i.bax = shufflevector <2 x float> %i.baw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bay = insertelement <4 x i32> poison, i32 %i.ban, i64 0
  %i.baz = insertelement <4 x i32> %i.bay, i32 %i.bar, i64 1
  %i.bba = insertelement <4 x i32> %i.baz, i32 %i.bao, i64 2
  %i.bbb = insertelement <4 x i32> %i.bba, i32 %i.bas, i64 3
  %i.bbc = and <4 x i32> %i.bbb, splat (i32 255)
  %i.bbd = uitofp nneg <4 x i32> %i.bbc to <4 x float> ; 2 uses
  %i.bbe = shufflevector <4 x float> %i.bbd, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bbf = fdiv <2 x float> %i.bbe, splat (float 2.550000e+02)
  %i.bbg = fdiv <2 x float> %i.bbf, %i.bax
  %i.bbh = shufflevector <4 x float> %i.bbd, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bbi = fdiv <2 x float> %i.bbh, splat (float 2.550000e+02)
  %i.bbj = shufflevector <2 x float> %i.baw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bbk = fdiv <2 x float> %i.bbi, %i.bbj
  %i.bbl = uitofp nneg i32 %i.bam to float
  %i.bbm = uitofp nneg i32 %i.baq to float
  %i.bbn = insertelement <2 x float> poison, float %i.bbl, i64 0
  %i.bbo = insertelement <2 x float> %i.bbn, float %i.bbm, i64 1
  %i.bbp = fdiv <2 x float> %i.bbo, splat (float 2.550000e+02)
  %i.bbq = fcmp ogt <2 x float> %i.baw, zeroinitializer ; 3 uses
  %i.bbr = shufflevector <2 x i1> %i.bbq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bbs = select <2 x i1> %i.bbr, <2 x float> %i.bbg, <2 x float> zeroinitializer ; 12 uses
  %i.bbt = extractelement <2 x float> %i.bbs, i64 1 ; 20 uses
  %i.bbu = extractelement <2 x float> %i.bbs, i64 0 ; 15 uses
  %i.bbv = fdiv <2 x float> %i.bbp, %i.baw
  %i.bbw = shufflevector <2 x i1> %i.bbq, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.bbx = select <2 x i1> %i.bbw, <2 x float> %i.bbk, <2 x float> zeroinitializer ; 12 uses
  %i.bby = extractelement <2 x float> %i.bbx, i64 1 ; 20 uses
  %i.bbz = extractelement <2 x float> %i.bbx, i64 0 ; 19 uses
  %i.bca = select <2 x i1> %i.bbq, <2 x float> %i.bbv, <2 x float> zeroinitializer ; 13 uses
  %i.bcb = extractelement <2 x float> %i.bca, i64 1 ; 20 uses
  %i.bcc = extractelement <2 x float> %i.bca, i64 0 ; 17 uses
  switch i32 %2, label %bb.ed [
    i32 24, label %bb.cf
    i32 25, label %bb.db
    i32 26, label %bb.dx
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.bcd = fcmp oge float %i.bby, %i.bbz
  %.sroa.speculated9.i.i186.i = select i1 %i.bcd, float %i.bby, float %i.bbz ; 2 uses
  %i.bce = fcmp oge float %.sroa.speculated9.i.i186.i, %i.bcb
  %.sroa.speculated4.i.i.i = select i1 %i.bce, float %.sroa.speculated9.i.i186.i, float %i.bcb
  %i.bcf = fcmp ole float %i.bby, %i.bbz
  %.sroa.speculated6.i.i.i = select i1 %i.bcf, float %i.bby, float %i.bbz ; 2 uses
  %i.bcg = fcmp ole float %.sroa.speculated6.i.i.i, %i.bcb
  %.sroa.speculated.i.i187.i = select i1 %i.bcg, float %.sroa.speculated6.i.i.i, float %i.bcb
  %i.bch = fsub float %.sroa.speculated4.i.i.i, %.sroa.speculated.i.i187.i ; 12 uses
  %i.bci = fcmp ugt float %i.bbt, %i.bbu
  br i1 %i.bci, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bcj = fcmp ugt float %i.bbu, %i.bcc
  br i1 %i.bcj, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.bck = fcmp ogt float %i.bcc, %i.bbt
  br i1 %i.bck, label %bb.ci, label %_ZL18hsl_set_saturationRfS_S_f.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.bcl = fsub float %i.bbu, %i.bbt
  %i.bcm = fmul float %i.bcl, %i.bch
  %i.bcn = fsub float %i.bcc, %i.bbt
  %i.bco = fdiv float %i.bcm, %i.bcn
  br label %_ZL18hsl_set_saturationRfS_S_f.exit.i.i

bb.cj:                                            ; preds = %bb.cg
  %i.bcp = fcmp ugt float %i.bbt, %i.bcc
  br i1 %i.bcp, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.bcq = fcmp ogt float %i.bbu, %i.bbt
  br i1 %i.bcq, label %bb.cl, label %_ZL18hsl_set_saturationRfS_S_f.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.bcr = fsub float %i.bcc, %i.bbt
  %i.bcs = fmul float %i.bcr, %i.bch
  %i.bct = fsub float %i.bbu, %i.bbt
  %i.bcu = fdiv float %i.bcs, %i.bct
  br label %_ZL18hsl_set_saturationRfS_S_f.exit.i.i
end_hunk_0
