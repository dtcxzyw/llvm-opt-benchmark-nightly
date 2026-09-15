Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.arh = fmul float %i.aon, %sqrt.i.i476        ; 3 uses
  %i.ari = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = shufflevector <4 x float> %i.arf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.arl = fmul <4 x float> %i.arj, %i.ark        ; 2 uses
  %i.arm = fmul <4 x float> %i.arf, %i.arl
  %i.arn = insertelement <4 x float> poison, float %sqrt.i.i69.i, i64 0
  %i.aro = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arp = fdiv <4 x float> %i.aqg, %i.aro
  %i.arq = select <4 x i1> %i.aqy, <4 x float> %i.arp, <4 x float> %i.aqg ; 7 uses
  %i.arr = extractelement <4 x float> %i.arq, i64 2
  %i.ars = shufflevector <4 x float> %i.arq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.art = shufflevector <3 x float> %i.aph, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aru = shufflevector <4 x float> %i.arf, <4 x float> %i.arq, <2 x i32> <i32 1, i32 5>
  %i.arv = fmul <2 x float> %i.art, %i.aru
  %i.arw = shufflevector <4 x float> %i.arf, <4 x float> %i.arq, <2 x i32> <i32 0, i32 4>
  %i.arx = insertelement <2 x float> poison, float %i.apg, i64 0
  %i.ary = shufflevector <2 x float> %i.arx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.arz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arw, <2 x float> %i.ary, <2 x float> %i.arv)
  %i.asa = shufflevector <4 x float> %i.arf, <4 x float> %i.arq, <2 x i32> <i32 2, i32 6>
  %i.asb = shufflevector <3 x float> %i.aph, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.asc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asa, <2 x float> %i.asb, <2 x float> %i.arz) ; 2 uses
  %i.asd = fneg <2 x float> %i.asc                ; 2 uses
  %i.ase = insertelement <2 x float> poison, float %i.arh, i64 0
  %i.asf = insertelement <2 x float> %i.ase, float %i.aon, i64 1
  %i.asg = insertelement <2 x float> %i.asd, float %sqrt.i73.i, i64 1
  %i.ash = fmul <2 x float> %i.asf, %i.asg        ; 4 uses
  %i.asi = shufflevector <2 x float> %i.ash, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.asj = fmul <4 x float> %i.ars, %i.asi        ; 2 uses
  %i.ask = fmul <4 x float> %i.arq, %i.asj
  %i.asl = fmul <2 x float> %i.ash, %i.asd        ; 4 uses
  %i.asm = extractelement <2 x float> %i.asl, i64 1
  %i.asn = fmul float %i.arr, %i.asm
  %i.aso = fadd <4 x float> %i.ask, %i.arm        ; 2 uses
  %foldExtExtBinop1215 = fmul <2 x float> %i.asc, %i.asl
  %i.asp = extractelement <2 x float> %i.ash, i64 0
  %i.asq = fmul float %i.arg, %i.asp
  %shift1217 = shufflevector <2 x float> %foldExtExtBinop1215, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1218 = fsub <2 x float> %i.asl, %shift1217
  %i.asr = fadd float %i.asn, %i.asq
  %i.ass = fadd float %i.arh, 0.000000e+00        ; 2 uses
  %i.ast = fadd <4 x float> %i.aqh, %i.aso
  store <4 x float> %i.ast, ptr %i.aov, align 4, !tbaa !44
  %i.asu = insertelement <2 x float> poison, float %i.asr, i64 0
  %i.asv = shufflevector <2 x float> %i.asu, <2 x float> %foldExtExtBinop1218, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asw = fadd <2 x float> %i.asv, %i.aql
  store <2 x float> %i.asw, ptr %i.aox, align 4, !tbaa !44
  %i.asx = fadd float %i.ass, %i.aoz
  store float %i.asx, ptr %i.aoy, align 4, !tbaa !48
  %i.asy = load <4 x float>, ptr %i.apd, align 4, !tbaa !44
  %i.asz = fadd <4 x float> %i.aso, %i.asy
  store <4 x float> %i.asz, ptr %i.apd, align 4, !tbaa !44
  %i.ata = shufflevector <4 x float> %i.arf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.atb = shufflevector <4 x float> %i.arl, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.atc = shufflevector <2 x float> %i.atb, <2 x float> %i.ash, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.atd = fmul <4 x float> %i.ata, %i.atc
  %i.ate = shufflevector <4 x float> %i.arq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.atf = shufflevector <4 x float> %i.asj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.atg = shufflevector <2 x float> %i.atf, <2 x float> %i.asl, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.ath = fmul <4 x float> %i.ate, %i.atg
  %i.ati = fadd <4 x float> %i.ath, %i.atd        ; 2 uses
  %i.atj = fadd <4 x float> %i.aqj, %i.ati
  store <4 x float> %i.atj, ptr %i.aow, align 4, !tbaa !44
  %i.atk = load <4 x float>, ptr %i.aqi, align 4, !tbaa !44
  %i.atl = fadd <4 x float> %i.ati, %i.atk
  store <4 x float> %i.atl, ptr %i.aqi, align 4, !tbaa !44
  %i.atm = load <2 x float>, ptr %i.aqk, align 4, !tbaa !44
  %i.atn = fadd <2 x float> %i.asv, %i.atm
  store <2 x float> %i.atn, ptr %i.aqk, align 4, !tbaa !44
  %i.ato = getelementptr inbounds nuw i8, ptr %i.apd, i64 40 ; 2 uses
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !48
  %i.atq = fadd float %i.ass, %i.atp
  store float %i.atq, ptr %i.ato, align 4, !tbaa !48
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i481 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i481, label %bb.cx, label %bb.cy, !llvm.loop !88

_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit: ; preds = %bb.cx
  br i1 %.not403, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.lr.ph.i485.preheader

.lr.ph.i485.preheader:                            ; preds = %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit
  %i.atr = add i64 %.0330, -1                     ; 3 uses
  %xtraiter1327 = and i64 %.0330, 1
  %i.ats = icmp eq i64 %i.atr, 0
  %unroll_iter1331 = and i64 %.0330, -2
  %lcmp.mod1329.not = icmp eq i64 %xtraiter1327, 0
  %lcmp.mod1330 = trunc i64 %.0330 to i1
  %xtraiter1334 = and i64 %.0330, 1
  %i.att = icmp eq i64 %i.atr, 0
  %unroll_iter1338 = and i64 %.0330, -2
  %lcmp.mod1336.not = icmp eq i64 %xtraiter1334, 0
  %lcmp.mod1337 = trunc i64 %.0330 to i1
  %xtraiter1341 = and i64 %.0330, 1
  %i.atu = icmp eq i64 %i.atr, 0
  %unroll_iter1345 = and i64 %.0330, -2
  %lcmp.mod1343.not = icmp eq i64 %xtraiter1341, 0
  %lcmp.mod1344 = trunc i64 %.0330 to i1
  br label %.lr.ph.i485

.lr.ph.i485:                                      ; preds = %.lr.ph.i485.preheader, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i
  %.080.i = phi i64 [ %i.bbv, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i ], [ 0, %.lr.ph.i485.preheader ] ; 2 uses
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.080.i ; 3 uses
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !28
  %i.atx = getelementptr i8, ptr %i.atv, i64 4
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !28
  %i.atz = getelementptr i8, ptr %i.atv, i64 8
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.aub = zext i32 %i.atw to i64                 ; 3 uses
  %i.auc = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.aub ; 2 uses
  %i.aud = zext i32 %i.aty to i64                 ; 3 uses
  %i.aue = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.aud
  %i.auf = zext i32 %i.aua to i64                 ; 3 uses
  %i.aug = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.auf
  %i.auh = mul i64 %.0330, %i.aub                 ; 2 uses
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.auh
  %i.auj = mul i64 %.0330, %i.aud                 ; 2 uses
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.auj
  %i.aul = mul i64 %.0330, %i.auf                 ; 2 uses
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.aul
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auc, i64 4
  %i.auo = load <3 x float>, ptr %i.aue, align 4, !tbaa !44
  %i.aup = shufflevector <3 x float> %i.auo, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.auq = load <3 x float>, ptr %i.auc, align 4, !tbaa !44 ; 3 uses
  %i.aur = shufflevector <3 x float> %i.auq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.aus = load float, ptr %i.aun, align 4, !tbaa !50
  %i.aut = fsub <4 x float> %i.aup, %i.aur        ; 9 uses
  %i.auu = load <3 x float>, ptr %i.aug, align 4, !tbaa !44
  %i.auv = shufflevector <3 x float> %i.auu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.auw = fsub <4 x float> %i.auv, %i.aur        ; 8 uses
  %i.aux = fneg <4 x float> %i.auw                ; 2 uses
  %i.auy = extractelement <4 x float> %i.aut, i64 2 ; 3 uses
  %i.auz = extractelement <4 x float> %i.auw, i64 2 ; 3 uses
  %i.ava = extractelement <4 x float> %i.aut, i64 0
  %i.avb = extractelement <4 x float> %i.auw, i64 0 ; 3 uses
  %foldExtExtBinop1220 = fmul <4 x float> %i.aut, %i.auw
  %i.avc = extractelement <4 x float> %foldExtExtBinop1220, i64 1
  %foldExtExtBinop1222 = fmul <4 x float> %i.auw, %i.auw
  %i.avd = extractelement <4 x float> %foldExtExtBinop1222, i64 1
  %i.ave = shufflevector <4 x float> %i.aut, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.avf = shufflevector <4 x float> %i.aux, <4 x float> %i.aut, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.avg = fmul <4 x float> %i.ave, %i.avf
  %i.avh = shufflevector <4 x float> %i.aut, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.avi = shufflevector <4 x float> %i.auw, <4 x float> %i.aut, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.avj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avh, <4 x float> %i.avi, <4 x float> %i.avg) ; 5 uses
  %foldExtExtBinop1224 = fmul <4 x float> %i.avj, %i.avj
  %i.avk = extractelement <4 x float> %foldExtExtBinop1224, i64 2
  %i.avl = extractelement <4 x float> %i.avj, i64 1 ; 2 uses
  %i.avm = call float @llvm.fmuladd.f32(float %i.avl, float %i.avl, float %i.avk)
  %i.avn = extractelement <4 x float> %i.avj, i64 0 ; 2 uses
  %i.avo = call float @llvm.fmuladd.f32(float %i.avn, float %i.avn, float %i.avm)
  %sqrt.i.i486 = call float @llvm.sqrt.f32(float %i.avo)
  %i.avp = fmul float %sqrt.i.i486, 5.000000e-01  ; 5 uses
  %i.avq = call float @llvm.fmuladd.f32(float %i.ava, float %i.avb, float %i.avc)
  %i.avr = call float @llvm.fmuladd.f32(float %i.avb, float %i.avb, float %i.avd)
  %i.avs = extractelement <4 x float> %i.avj, i64 3
  %i.avt = call float @llvm.fmuladd.f32(float %i.auy, float %i.auy, float %i.avs) ; 2 uses
  %i.avu = call float @llvm.fmuladd.f32(float %i.auy, float %i.auz, float %i.avq) ; 3 uses
  %i.avv = call float @llvm.fmuladd.f32(float %i.auz, float %i.auz, float %i.avr) ; 2 uses
  %i.avw = fneg float %i.avu
  %i.avx = fmul float %i.avu, %i.avw
  %i.avy = call float @llvm.fmuladd.f32(float %i.avt, float %i.avv, float %i.avx) ; 2 uses
  %i.avz = fcmp oeq float %i.avy, 0.000000e+00
  %i.awa = fdiv float 1.000000e+00, %i.avy
  %i.awb = select i1 %i.avz, float 0.000000e+00, float %i.awa
  %i.awc = insertelement <4 x float> poison, float %i.avu, i64 0
  %i.awd = shufflevector <4 x float> %i.awc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awe = fmul <4 x float> %i.awd, %i.aux
  %i.awf = insertelement <4 x float> poison, float %i.avv, i64 0
  %i.awg = shufflevector <4 x float> %i.awf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awg, <4 x float> %i.aut, <4 x float> %i.awe)
  %i.awi = fneg <4 x float> %i.aut
  %i.awj = fmul <4 x float> %i.awd, %i.awi
  %i.awk = insertelement <4 x float> poison, float %i.avt, i64 0
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awl, <4 x float> %i.auw, <4 x float> %i.awj)
  %i.awn = insertelement <4 x float> poison, float %i.awb, i64 0
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awp = fmul <4 x float> %i.awh, %i.awo
  %i.awq = fmul <4 x float> %i.awm, %i.awo
  %i.awr = extractelement <3 x float> %i.auq, i64 0
  %i.aws = fneg float %i.awr
  %i.awt = fneg float %i.aus
  %i.awu = extractelement <3 x float> %i.auq, i64 2
  %i.awv = fneg float %i.awu
  %i.aww = insertelement <4 x float> poison, float %i.avp, i64 0
  %i.awx = shufflevector <4 x float> %i.aww, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.awy = insertelement <2 x float> poison, float %i.avp, i64 0
  %i.awz = shufflevector <2 x float> %i.awy, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i485
  %.0210.i.i = phi i64 [ 0, %.lr.ph.i485 ], [ %i.ayi, %bb.df ] ; 5 uses
  %i.axa = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axn, %bb.df ]
  %i.axb = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.aya, %bb.df ]
  %i.axc = phi <2 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.ayf, %bb.df ]
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %.0210.i.i
  %i.axe = load float, ptr %i.axd, align 4, !tbaa !44 ; 3 uses
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.auk, i64 %.0210.i.i
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !44
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.0210.i.i
  %i.axi = load float, ptr %i.axh, align 4, !tbaa !44
  %18 = fsub float %i.axi, %i.axe
  %19 = fsub float %i.axg, %i.axe
  %20 = insertelement <4 x float> poison, float %18, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = fmul <4 x float> %i.awq, %21
  %23 = insertelement <4 x float> poison, float %19, i64 0
  %i.axj = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awp, <4 x float> %i.axj, <4 x float> %22) ; 9 uses
  %i.axl = shufflevector <4 x float> %i.axk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.axm = fmul <4 x float> %i.axk, %i.axl
  %i.axn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awx, <4 x float> %i.axm, <4 x float> %i.axa) ; 4 uses
  %i.axo = shufflevector <4 x float> %i.axk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.axp = shufflevector <4 x float> %i.axk, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.axq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.0210.i.i
  %i.axr = extractelement <4 x float> %i.axk, i64 0
  %i.axs = extractelement <4 x float> %i.axk, i64 1
  %i.axt = extractelement <4 x float> %i.axk, i64 2
  %i.axu = call float @llvm.fmuladd.f32(float %i.aws, float %i.axr, float %i.axe)
  %i.axv = call float @llvm.fmuladd.f32(float %i.awt, float %i.axs, float %i.axu)
  %i.axw = call float @llvm.fmuladd.f32(float %i.awv, float %i.axt, float %i.axv) ; 4 uses
  %i.axx = insertelement <4 x float> poison, float %i.axw, i64 0
  %i.axy = shufflevector <4 x float> %i.axk, <4 x float> %i.axx, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.axz = fmul <4 x float> %i.axo, %i.axy
  %i.aya = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awx, <4 x float> %i.axz, <4 x float> %i.axb) ; 4 uses
  %i.ayb = insertelement <2 x float> %i.axp, float %i.axw, i64 1
  %i.ayc = insertelement <2 x float> poison, float %i.axw, i64 0
  %i.ayd = shufflevector <2 x float> %i.ayc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aye = fmul <2 x float> %i.ayb, %i.ayd
  %i.ayf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awz, <2 x float> %i.aye, <2 x float> %i.axc) ; 4 uses
  %i.ayg = insertelement <4 x float> %i.axk, float %i.axw, i64 3
  %i.ayh = fmul <4 x float> %i.awx, %i.ayg
  store <4 x float> %i.ayh, ptr %i.axq, align 16, !tbaa !44
  %i.ayi = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.ayi, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.ayj = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.aub ; 5 uses
  %i.ayk = load <4 x float>, ptr %i.ayj, align 4, !tbaa !44
  %i.ayl = fadd <4 x float> %i.axn, %i.ayk
  store <4 x float> %i.ayl, ptr %i.ayj, align 4, !tbaa !44
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayj, i64 16 ; 2 uses
  %i.ayn = load <4 x float>, ptr %i.aym, align 4, !tbaa !44
  %i.ayo = fadd <4 x float> %i.aya, %i.ayn
  store <4 x float> %i.ayo, ptr %i.aym, align 4, !tbaa !44
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayj, i64 32 ; 2 uses
  %i.ayq = load <2 x float>, ptr %i.ayp, align 4, !tbaa !44
  %i.ayr = fadd <2 x float> %i.ayf, %i.ayq
  store <2 x float> %i.ayr, ptr %i.ayp, align 4, !tbaa !44
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayj, i64 40 ; 2 uses
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !48
  %i.ayu = fadd float %i.avp, %i.ayt
  store float %i.ayu, ptr %i.ays, align 4, !tbaa !48
  %i.ayv = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.aud ; 5 uses
  %i.ayw = load <4 x float>, ptr %i.ayv, align 4, !tbaa !44
  %i.ayx = fadd <4 x float> %i.axn, %i.ayw
  store <4 x float> %i.ayx, ptr %i.ayv, align 4, !tbaa !44
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16 ; 2 uses
  %i.ayz = load <4 x float>, ptr %i.ayy, align 4, !tbaa !44
  %i.aza = fadd <4 x float> %i.aya, %i.ayz
  store <4 x float> %i.aza, ptr %i.ayy, align 4, !tbaa !44
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32 ; 2 uses
  %i.azc = load <2 x float>, ptr %i.azb, align 4, !tbaa !44
  %i.azd = fadd <2 x float> %i.ayf, %i.azc
  store <2 x float> %i.azd, ptr %i.azb, align 4, !tbaa !44
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayv, i64 40 ; 2 uses
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !48
  %i.azg = fadd float %i.avp, %i.azf
  store float %i.azg, ptr %i.aze, align 4, !tbaa !48
  %i.azh = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.auf ; 5 uses
  %i.azi = load <4 x float>, ptr %i.azh, align 4, !tbaa !44
  %i.azj = fadd <4 x float> %i.axn, %i.azi
  store <4 x float> %i.azj, ptr %i.azh, align 4, !tbaa !44
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 16 ; 2 uses
  %i.azl = load <4 x float>, ptr %i.azk, align 4, !tbaa !44
  %i.azm = fadd <4 x float> %i.aya, %i.azl
  store <4 x float> %i.azm, ptr %i.azk, align 4, !tbaa !44
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azh, i64 32 ; 2 uses
  %i.azo = load <2 x float>, ptr %i.azn, align 4, !tbaa !44
  %i.azp = fadd <2 x float> %i.ayf, %i.azo
  store <2 x float> %i.azp, ptr %i.azn, align 4, !tbaa !44
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azh, i64 40 ; 2 uses
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !48
  %i.azs = fadd float %i.avp, %i.azr
  store float %i.azs, ptr %i.azq, align 4, !tbaa !48
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.auh ; 3 uses
  br i1 %i.ats, label %.epil.preheader1326, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.baf, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1332 = phi i64 [ %niter1332.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.azu = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.azv = getelementptr inbounds nuw [16 x i8], ptr %i.azt, i64 %.018.i.i ; 2 uses
  %i.azw = load <4 x float>, ptr %i.azu, align 16, !tbaa !44
  %i.azx = load <4 x float>, ptr %i.azv, align 4, !tbaa !44
  %i.azy = fadd <4 x float> %i.azw, %i.azx
  store <4 x float> %i.azy, ptr %i.azv, align 4, !tbaa !44
  %i.azz = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.baa = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azz
  %i.bab = getelementptr inbounds nuw [16 x i8], ptr %i.azt, i64 %i.azz ; 2 uses
  %i.bac = load <4 x float>, ptr %i.baa, align 16, !tbaa !44
  %i.bad = load <4 x float>, ptr %i.bab, align 4, !tbaa !44
  %i.bae = fadd <4 x float> %i.bac, %i.bad
  store <4 x float> %i.bae, ptr %i.bab, align 4, !tbaa !44
  %i.baf = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1332.next.1 = add nuw i64 %niter1332, 2   ; 2 uses
  %niter1332.ncmp.1 = icmp eq i64 %niter1332.next.1, %unroll_iter1331
  br i1 %niter1332.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1329.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1326

.epil.preheader1326:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.baf, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1330)
  %i.bag = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.bah = getelementptr inbounds nuw [16 x i8], ptr %i.azt, i64 %.018.i.i.epil.init ; 2 uses
  %i.bai = load <4 x float>, ptr %i.bag, align 16, !tbaa !44
  %i.baj = load <4 x float>, ptr %i.bah, align 4, !tbaa !44
  %i.bak = fadd <4 x float> %i.bai, %i.baj
  store <4 x float> %i.bak, ptr %i.bah, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1326
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.auj ; 3 uses
  br i1 %i.att, label %.epil.preheader1333, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.bax, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1339 = phi i64 [ %niter1339.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.bam = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.ban = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %.018.i43.i ; 2 uses
  %i.bao = load <4 x float>, ptr %i.bam, align 16, !tbaa !44
  %i.bap = load <4 x float>, ptr %i.ban, align 4, !tbaa !44
  %i.baq = fadd <4 x float> %i.bao, %i.bap
  store <4 x float> %i.baq, ptr %i.ban, align 4, !tbaa !44
  %i.bar = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.bas = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bar
  %i.bat = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %i.bar ; 2 uses
  %i.bau = load <4 x float>, ptr %i.bas, align 16, !tbaa !44
  %i.bav = load <4 x float>, ptr %i.bat, align 4, !tbaa !44
  %i.baw = fadd <4 x float> %i.bau, %i.bav
  store <4 x float> %i.baw, ptr %i.bat, align 4, !tbaa !44
  %i.bax = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1339.next.1 = add nuw i64 %niter1339, 2   ; 2 uses
  %niter1339.ncmp.1 = icmp eq i64 %niter1339.next.1, %unroll_iter1338
  br i1 %niter1339.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1336.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1333

.epil.preheader1333:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.bax, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1337)
  %i.bay = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.baz = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %.018.i43.i.epil.init ; 2 uses
  %i.bba = load <4 x float>, ptr %i.bay, align 16, !tbaa !44
  %i.bbb = load <4 x float>, ptr %i.baz, align 4, !tbaa !44
  %i.bbc = fadd <4 x float> %i.bba, %i.bbb
  store <4 x float> %i.bbc, ptr %i.baz, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1333
  %i.bbd = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.aul ; 3 uses
  br i1 %i.atu, label %.epil.preheader1340, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bbp, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1346 = phi i64 [ %niter1346.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.bbe = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %i.bbd, i64 %.018.i46.i ; 2 uses
  %i.bbg = load <4 x float>, ptr %i.bbe, align 16, !tbaa !44
  %i.bbh = load <4 x float>, ptr %i.bbf, align 4, !tbaa !44
  %i.bbi = fadd <4 x float> %i.bbg, %i.bbh
  store <4 x float> %i.bbi, ptr %i.bbf, align 4, !tbaa !44
  %i.bbj = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.bbk = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bbj
  %i.bbl = getelementptr inbounds nuw [16 x i8], ptr %i.bbd, i64 %i.bbj ; 2 uses
  %i.bbm = load <4 x float>, ptr %i.bbk, align 16, !tbaa !44
  %i.bbn = load <4 x float>, ptr %i.bbl, align 4, !tbaa !44
  %i.bbo = fadd <4 x float> %i.bbm, %i.bbn
  store <4 x float> %i.bbo, ptr %i.bbl, align 4, !tbaa !44
  %i.bbp = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1346.next.1 = add nuw i64 %niter1346, 2   ; 2 uses
  %niter1346.ncmp.1 = icmp eq i64 %niter1346.next.1, %unroll_iter1345
  br i1 %niter1346.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1343.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1340

.epil.preheader1340:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bbp, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1344)
  %i.bbq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.bbd, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bbs = load <4 x float>, ptr %i.bbq, align 16, !tbaa !44
  %i.bbt = load <4 x float>, ptr %i.bbr, align 4, !tbaa !44
  %i.bbu = fadd <4 x float> %i.bbs, %i.bbt
  store <4 x float> %i.bbu, ptr %i.bbr, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1340
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bbv = add i64 %.080.i, 3                     ; 2 uses
  %i.bbw = icmp ult i64 %i.bbv, %2
  br i1 %i.bbw, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
end_hunk_0
