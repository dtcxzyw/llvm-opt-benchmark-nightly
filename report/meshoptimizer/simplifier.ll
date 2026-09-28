Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.arc = insertelement <4 x float> poison, float %i.arb, i64 0
  %i.ard = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.are = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.arf = fmul <4 x float> %i.ard, %i.are        ; 2 uses
  %i.arg = fmul float %i.arb, %i.ara              ; 3 uses
  %i.arh = fmul <4 x float> %i.aqu, %i.arf
  %i.ari = fmul float %i.aqy, %i.arg
  %i.arj = fmul float %i.arg, %i.ara
  %shift1218 = shufflevector <4 x float> %i.aqk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1219 = fmul <4 x float> %i.aoo, %shift1218
  %i.ark = extractelement <4 x float> %foldExtExtBinop1219, i64 0
  %i.arl = call float @llvm.fmuladd.f32(float %i.aql, float %i.aom, float %i.ark)
  %i.arm = call float @llvm.fmuladd.f32(float %i.aqm, float %i.api, float %i.arl) ; 2 uses
  %i.arn = fneg float %i.arm
  %sqrt.i73.i = call float @llvm.sqrt.f32(float %sqrt.i.i69.i)
  %i.aro = fmul float %i.ant, %sqrt.i73.i         ; 2 uses
  %i.arp = insertelement <4 x float> poison, float %i.aro, i64 0
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arr = fmul <4 x float> %i.aqn, %i.arq        ; 2 uses
  %i.ars = fmul float %i.aro, %i.arn              ; 3 uses
  %i.art = fmul <4 x float> %i.aqk, %i.arr
  %i.aru = fmul float %i.aqm, %i.ars
  %i.arv = fadd <4 x float> %i.art, %i.arh        ; 2 uses
  %i.arw = fadd float %i.aru, %i.ari
  %i.arx = fmul float %i.arm, %i.ars
  %i.ary = fsub float %i.arj, %i.arx
  %i.arz = fadd float %i.arb, 0.000000e+00        ; 2 uses
  %i.asa = fadd <4 x float> %i.apo, %i.arv
  store <4 x float> %i.asa, ptr %i.aob, align 4, !tbaa !44
  %i.asb = insertelement <2 x float> poison, float %i.arw, i64 0
  %i.asc = insertelement <2 x float> %i.asb, float %i.ary, i64 1 ; 2 uses
  %i.asd = fadd <2 x float> %i.asc, %i.aps
  store <2 x float> %i.asd, ptr %i.aod, align 4, !tbaa !44
  %i.ase = fadd float %i.arz, %i.aof
  store float %i.ase, ptr %i.aoe, align 4, !tbaa !48
  %i.asf = load <4 x float>, ptr %i.aoj, align 4, !tbaa !44
  %i.asg = fadd <4 x float> %i.arv, %i.asf
  store <4 x float> %i.asg, ptr %i.aoj, align 4, !tbaa !44
  %i.ash = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asi = shufflevector <4 x float> %i.arf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.asj = insertelement <2 x float> %i.asi, float %i.arg, i64 1
  %i.ask = shufflevector <2 x float> %i.asj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.asl = fmul <4 x float> %i.ash, %i.ask
  %i.asm = shufflevector <4 x float> %i.arr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.asn = insertelement <2 x float> %i.asm, float %i.ars, i64 1
  %i.aso = shufflevector <2 x float> %i.asn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.asp = fmul <4 x float> %i.aqo, %i.aso
  %i.asq = fadd <4 x float> %i.asp, %i.asl        ; 2 uses
  %i.asr = fadd <4 x float> %i.apq, %i.asq
  store <4 x float> %i.asr, ptr %i.aoc, align 4, !tbaa !44
  %i.ass = load <4 x float>, ptr %i.app, align 4, !tbaa !44
  %i.ast = fadd <4 x float> %i.asq, %i.ass
  store <4 x float> %i.ast, ptr %i.app, align 4, !tbaa !44
  %i.asu = load <2 x float>, ptr %i.apr, align 4, !tbaa !44
  %i.asv = fadd <2 x float> %i.asc, %i.asu
  store <2 x float> %i.asv, ptr %i.apr, align 4, !tbaa !44
  %i.asw = getelementptr inbounds nuw i8, ptr %i.aoj, i64 40 ; 2 uses
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !48
  %i.asy = fadd float %i.arz, %i.asx
  store float %i.asy, ptr %i.asw, align 4, !tbaa !48
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i481 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i481, label %bb.cx, label %bb.cy, !llvm.loop !88

_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit: ; preds = %bb.cx
  br i1 %.not403, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.lr.ph.i485.preheader

.lr.ph.i485.preheader:                            ; preds = %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit
  %i.asz = add i64 %.0330, -1                     ; 3 uses
  %xtraiter1328 = and i64 %.0330, 1
  %i.ata = icmp eq i64 %i.asz, 0
  %unroll_iter1332 = and i64 %.0330, -2
  %lcmp.mod1330.not = icmp eq i64 %xtraiter1328, 0
  %lcmp.mod1331 = trunc i64 %.0330 to i1
  %xtraiter1335 = and i64 %.0330, 1
  %i.atb = icmp eq i64 %i.asz, 0
  %unroll_iter1339 = and i64 %.0330, -2
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1335, 0
  %lcmp.mod1338 = trunc i64 %.0330 to i1
  %xtraiter1342 = and i64 %.0330, 1
  %i.atc = icmp eq i64 %i.asz, 0
  %unroll_iter1346 = and i64 %.0330, -2
  %lcmp.mod1344.not = icmp eq i64 %xtraiter1342, 0
  %lcmp.mod1345 = trunc i64 %.0330 to i1
  br label %.lr.ph.i485

.lr.ph.i485:                                      ; preds = %.lr.ph.i485.preheader, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i
  %.080.i = phi i64 [ %i.bbh, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i ], [ 0, %.lr.ph.i485.preheader ] ; 2 uses
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.080.i ; 3 uses
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !28
  %i.atf = getelementptr i8, ptr %i.atd, i64 4
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !28
  %i.ath = getelementptr i8, ptr %i.atd, i64 8
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.atj = zext i32 %i.ate to i64                 ; 3 uses
  %i.atk = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.atj ; 2 uses
  %i.atl = zext i32 %i.atg to i64                 ; 3 uses
  %i.atm = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.atl
  %i.atn = zext i32 %i.ati to i64                 ; 3 uses
  %i.ato = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.atn
  %i.atp = mul i64 %.0330, %i.atj                 ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atp
  %i.atr = mul i64 %.0330, %i.atl                 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atr
  %i.att = mul i64 %.0330, %i.atn                 ; 2 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.att
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
  %i.atw = load <3 x float>, ptr %i.atm, align 4, !tbaa !44
  %i.atx = shufflevector <3 x float> %i.atw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.aty = load <3 x float>, ptr %i.atk, align 4, !tbaa !44 ; 3 uses
  %i.atz = shufflevector <3 x float> %i.aty, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.aua = load float, ptr %i.atv, align 4, !tbaa !50
  %i.aub = fsub <4 x float> %i.atx, %i.atz        ; 9 uses
  %i.auc = load <3 x float>, ptr %i.ato, align 4, !tbaa !44
  %i.aud = shufflevector <3 x float> %i.auc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.aue = fsub <4 x float> %i.aud, %i.atz        ; 8 uses
  %i.auf = fneg <4 x float> %i.aue                ; 2 uses
  %i.aug = extractelement <4 x float> %i.aub, i64 2 ; 3 uses
  %i.auh = extractelement <4 x float> %i.aue, i64 2 ; 3 uses
  %i.aui = extractelement <4 x float> %i.aub, i64 0
  %i.auj = extractelement <4 x float> %i.aue, i64 0 ; 3 uses
  %i.auk = shufflevector <4 x float> %i.aub, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aul = shufflevector <4 x float> %i.auf, <4 x float> %i.aub, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aum = fmul <4 x float> %i.auk, %i.aul
  %i.aun = shufflevector <4 x float> %i.aub, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.auo = shufflevector <4 x float> %i.aue, <4 x float> %i.aub, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.aup = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aun, <4 x float> %i.auo, <4 x float> %i.aum) ; 5 uses
  %foldExtExtBinop1221 = fmul <4 x float> %i.aup, %i.aup
  %i.auq = extractelement <4 x float> %foldExtExtBinop1221, i64 2
  %i.aur = extractelement <4 x float> %i.aup, i64 1 ; 2 uses
  %i.aus = call float @llvm.fmuladd.f32(float %i.aur, float %i.aur, float %i.auq)
  %i.aut = extractelement <4 x float> %i.aup, i64 0 ; 2 uses
  %i.auu = call float @llvm.fmuladd.f32(float %i.aut, float %i.aut, float %i.aus)
  %sqrt.i.i486 = call float @llvm.sqrt.f32(float %i.auu)
  %i.auv = fmul float %sqrt.i.i486, 5.000000e-01  ; 5 uses
  %i.auw = extractelement <4 x float> %i.aup, i64 3
  %i.aux = call float @llvm.fmuladd.f32(float %i.aug, float %i.aug, float %i.auw) ; 2 uses
  %foldExtExtBinop1223 = fmul <4 x float> %i.aub, %i.aue
  %i.auy = extractelement <4 x float> %foldExtExtBinop1223, i64 1
  %i.auz = call float @llvm.fmuladd.f32(float %i.aui, float %i.auj, float %i.auy)
  %i.ava = call float @llvm.fmuladd.f32(float %i.aug, float %i.auh, float %i.auz) ; 3 uses
  %foldExtExtBinop1225 = fmul <4 x float> %i.aue, %i.aue
  %i.avb = extractelement <4 x float> %foldExtExtBinop1225, i64 1
  %i.avc = call float @llvm.fmuladd.f32(float %i.auj, float %i.auj, float %i.avb)
  %i.avd = call float @llvm.fmuladd.f32(float %i.auh, float %i.auh, float %i.avc) ; 2 uses
  %i.ave = fneg float %i.ava
  %i.avf = fmul float %i.ava, %i.ave
  %i.avg = call float @llvm.fmuladd.f32(float %i.aux, float %i.avd, float %i.avf) ; 2 uses
  %i.avh = fcmp oeq float %i.avg, 0.000000e+00
  %i.avi = fdiv float 1.000000e+00, %i.avg
  %i.avj = select i1 %i.avh, float 0.000000e+00, float %i.avi
  %i.avk = insertelement <4 x float> poison, float %i.ava, i64 0
  %i.avl = shufflevector <4 x float> %i.avk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avm = fmul <4 x float> %i.avl, %i.auf
  %i.avn = insertelement <4 x float> poison, float %i.avd, i64 0
  %i.avo = shufflevector <4 x float> %i.avn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avo, <4 x float> %i.aub, <4 x float> %i.avm)
  %i.avq = fneg <4 x float> %i.aub
  %i.avr = fmul <4 x float> %i.avl, %i.avq
  %i.avs = insertelement <4 x float> poison, float %i.aux, i64 0
  %i.avt = shufflevector <4 x float> %i.avs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avt, <4 x float> %i.aue, <4 x float> %i.avr)
  %i.avv = insertelement <4 x float> poison, float %i.avj, i64 0
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avx = fmul <4 x float> %i.avp, %i.avw
  %i.avy = fmul <4 x float> %i.avu, %i.avw
  %i.avz = extractelement <3 x float> %i.aty, i64 0
  %i.awa = fneg float %i.avz
  %i.awb = fneg float %i.aua
  %i.awc = extractelement <3 x float> %i.aty, i64 2
  %i.awd = fneg float %i.awc
  %i.awe = insertelement <4 x float> poison, float %i.auv, i64 0
  %i.awf = shufflevector <4 x float> %i.awe, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.awg = insertelement <2 x float> poison, float %i.auv, i64 0
  %i.awh = shufflevector <2 x float> %i.awg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i485
  %.0210.i.i = phi i64 [ 0, %.lr.ph.i485 ], [ %i.axu, %bb.df ] ; 5 uses
  %i.awi = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axc, %bb.df ]
  %i.awj = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axm, %bb.df ]
  %i.awk = phi <2 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axr, %bb.df ]
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %.0210.i.i
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !44 ; 3 uses
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %.0210.i.i
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !44
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.atu, i64 %.0210.i.i
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !44
  %i.awr = fsub float %i.awo, %i.awm
  %i.aws = fsub float %i.awq, %i.awm
  %i.awt = insertelement <4 x float> poison, float %i.aws, i64 0
  %i.awu = shufflevector <4 x float> %i.awt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awv = fmul <4 x float> %i.avy, %i.awu
  %i.aww = insertelement <4 x float> poison, float %i.awr, i64 0
  %i.awx = shufflevector <4 x float> %i.aww, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avx, <4 x float> %i.awx, <4 x float> %i.awv) ; 9 uses
  %i.awz = extractelement <4 x float> %i.awy, i64 0
  %i.axa = shufflevector <4 x float> %i.awy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.axb = fmul <4 x float> %i.awy, %i.axa
  %i.axc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awf, <4 x float> %i.axb, <4 x float> %i.awi) ; 4 uses
  %i.axd = shufflevector <4 x float> %i.awy, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.axe = shufflevector <4 x float> %i.awy, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.axf = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.0210.i.i
  %18 = extractelement <4 x float> %i.awy, i64 2
  %19 = extractelement <4 x float> %i.awy, i64 1
  %i.axg = call float @llvm.fmuladd.f32(float %i.awa, float %i.awz, float %i.awm)
  %i.axh = call float @llvm.fmuladd.f32(float %i.awb, float %19, float %i.axg)
  %i.axi = call float @llvm.fmuladd.f32(float %i.awd, float %18, float %i.axh) ; 4 uses
  %i.axj = insertelement <4 x float> poison, float %i.axi, i64 0
  %i.axk = shufflevector <4 x float> %i.awy, <4 x float> %i.axj, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.axl = fmul <4 x float> %i.axd, %i.axk
  %i.axm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awf, <4 x float> %i.axl, <4 x float> %i.awj) ; 4 uses
  %i.axn = insertelement <2 x float> %i.axe, float %i.axi, i64 1
  %i.axo = insertelement <2 x float> poison, float %i.axi, i64 0
  %i.axp = shufflevector <2 x float> %i.axo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axq = fmul <2 x float> %i.axn, %i.axp
  %i.axr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awh, <2 x float> %i.axq, <2 x float> %i.awk) ; 4 uses
  %i.axs = insertelement <4 x float> %i.awy, float %i.axi, i64 3
  %i.axt = fmul <4 x float> %i.awf, %i.axs
  store <4 x float> %i.axt, ptr %i.axf, align 16, !tbaa !44
  %i.axu = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.axu, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.axv = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atj ; 5 uses
  %i.axw = load <4 x float>, ptr %i.axv, align 4, !tbaa !44
  %i.axx = fadd <4 x float> %i.axc, %i.axw
  store <4 x float> %i.axx, ptr %i.axv, align 4, !tbaa !44
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 16 ; 2 uses
  %i.axz = load <4 x float>, ptr %i.axy, align 4, !tbaa !44
  %i.aya = fadd <4 x float> %i.axm, %i.axz
  store <4 x float> %i.aya, ptr %i.axy, align 4, !tbaa !44
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axv, i64 32 ; 2 uses
  %i.ayc = load <2 x float>, ptr %i.ayb, align 4, !tbaa !44
  %i.ayd = fadd <2 x float> %i.axr, %i.ayc
  store <2 x float> %i.ayd, ptr %i.ayb, align 4, !tbaa !44
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axv, i64 40 ; 2 uses
  %i.ayf = load float, ptr %i.aye, align 4, !tbaa !48
  %i.ayg = fadd float %i.auv, %i.ayf
  store float %i.ayg, ptr %i.aye, align 4, !tbaa !48
  %i.ayh = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atl ; 5 uses
  %i.ayi = load <4 x float>, ptr %i.ayh, align 4, !tbaa !44
  %i.ayj = fadd <4 x float> %i.axc, %i.ayi
  store <4 x float> %i.ayj, ptr %i.ayh, align 4, !tbaa !44
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16 ; 2 uses
  %i.ayl = load <4 x float>, ptr %i.ayk, align 4, !tbaa !44
  %i.aym = fadd <4 x float> %i.axm, %i.ayl
  store <4 x float> %i.aym, ptr %i.ayk, align 4, !tbaa !44
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayh, i64 32 ; 2 uses
  %i.ayo = load <2 x float>, ptr %i.ayn, align 4, !tbaa !44
  %i.ayp = fadd <2 x float> %i.axr, %i.ayo
  store <2 x float> %i.ayp, ptr %i.ayn, align 4, !tbaa !44
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayh, i64 40 ; 2 uses
  %i.ayr = load float, ptr %i.ayq, align 4, !tbaa !48
  %i.ays = fadd float %i.auv, %i.ayr
  store float %i.ays, ptr %i.ayq, align 4, !tbaa !48
  %i.ayt = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atn ; 5 uses
  %i.ayu = load <4 x float>, ptr %i.ayt, align 4, !tbaa !44
  %i.ayv = fadd <4 x float> %i.axc, %i.ayu
  store <4 x float> %i.ayv, ptr %i.ayt, align 4, !tbaa !44
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16 ; 2 uses
  %i.ayx = load <4 x float>, ptr %i.ayw, align 4, !tbaa !44
  %i.ayy = fadd <4 x float> %i.axm, %i.ayx
  store <4 x float> %i.ayy, ptr %i.ayw, align 4, !tbaa !44
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32 ; 2 uses
  %i.aza = load <2 x float>, ptr %i.ayz, align 4, !tbaa !44
  %i.azb = fadd <2 x float> %i.axr, %i.aza
  store <2 x float> %i.azb, ptr %i.ayz, align 4, !tbaa !44
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayt, i64 40 ; 2 uses
  %i.azd = load float, ptr %i.azc, align 4, !tbaa !48
  %i.aze = fadd float %i.auv, %i.azd
  store float %i.aze, ptr %i.azc, align 4, !tbaa !48
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atp ; 3 uses
  br i1 %i.ata, label %.epil.preheader1327, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.azr, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1333 = phi i64 [ %niter1333.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.azh = getelementptr inbounds nuw [16 x i8], ptr %i.azf, i64 %.018.i.i ; 2 uses
  %i.azi = load <4 x float>, ptr %i.azg, align 16, !tbaa !44
  %i.azj = load <4 x float>, ptr %i.azh, align 4, !tbaa !44
  %i.azk = fadd <4 x float> %i.azi, %i.azj
  store <4 x float> %i.azk, ptr %i.azh, align 4, !tbaa !44
  %i.azl = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azl
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.azf, i64 %i.azl ; 2 uses
  %i.azo = load <4 x float>, ptr %i.azm, align 16, !tbaa !44
  %i.azp = load <4 x float>, ptr %i.azn, align 4, !tbaa !44
  %i.azq = fadd <4 x float> %i.azo, %i.azp
  store <4 x float> %i.azq, ptr %i.azn, align 4, !tbaa !44
  %i.azr = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1333.next.1 = add nuw i64 %niter1333, 2   ; 2 uses
  %niter1333.ncmp.1 = icmp eq i64 %niter1333.next.1, %unroll_iter1332
  br i1 %niter1333.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1330.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1327

.epil.preheader1327:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.azr, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1331)
  %i.azs = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %i.azf, i64 %.018.i.i.epil.init ; 2 uses
  %i.azu = load <4 x float>, ptr %i.azs, align 16, !tbaa !44
  %i.azv = load <4 x float>, ptr %i.azt, align 4, !tbaa !44
  %i.azw = fadd <4 x float> %i.azu, %i.azv
  store <4 x float> %i.azw, ptr %i.azt, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1327
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atr ; 3 uses
  br i1 %i.atb, label %.epil.preheader1334, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.baj, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1340 = phi i64 [ %niter1340.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.azz = getelementptr inbounds nuw [16 x i8], ptr %i.azx, i64 %.018.i43.i ; 2 uses
  %i.baa = load <4 x float>, ptr %i.azy, align 16, !tbaa !44
  %i.bab = load <4 x float>, ptr %i.azz, align 4, !tbaa !44
  %i.bac = fadd <4 x float> %i.baa, %i.bab
  store <4 x float> %i.bac, ptr %i.azz, align 4, !tbaa !44
  %i.bad = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bad
  %i.baf = getelementptr inbounds nuw [16 x i8], ptr %i.azx, i64 %i.bad ; 2 uses
  %i.bag = load <4 x float>, ptr %i.bae, align 16, !tbaa !44
  %i.bah = load <4 x float>, ptr %i.baf, align 4, !tbaa !44
  %i.bai = fadd <4 x float> %i.bag, %i.bah
  store <4 x float> %i.bai, ptr %i.baf, align 4, !tbaa !44
  %i.baj = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1340.next.1 = add nuw i64 %niter1340, 2   ; 2 uses
  %niter1340.ncmp.1 = icmp eq i64 %niter1340.next.1, %unroll_iter1339
  br i1 %niter1340.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1337.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1334

.epil.preheader1334:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.baj, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1338)
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %i.azx, i64 %.018.i43.i.epil.init ; 2 uses
  %i.bam = load <4 x float>, ptr %i.bak, align 16, !tbaa !44
  %i.ban = load <4 x float>, ptr %i.bal, align 4, !tbaa !44
  %i.bao = fadd <4 x float> %i.bam, %i.ban
  store <4 x float> %i.bao, ptr %i.bal, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1334
  %i.bap = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.att ; 3 uses
  br i1 %i.atc, label %.epil.preheader1341, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bbb, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1347 = phi i64 [ %niter1347.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.baq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bar = getelementptr inbounds nuw [16 x i8], ptr %i.bap, i64 %.018.i46.i ; 2 uses
  %i.bas = load <4 x float>, ptr %i.baq, align 16, !tbaa !44
  %i.bat = load <4 x float>, ptr %i.bar, align 4, !tbaa !44
  %i.bau = fadd <4 x float> %i.bas, %i.bat
  store <4 x float> %i.bau, ptr %i.bar, align 4, !tbaa !44
  %i.bav = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.baw = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bav
  %i.bax = getelementptr inbounds nuw [16 x i8], ptr %i.bap, i64 %i.bav ; 2 uses
  %i.bay = load <4 x float>, ptr %i.baw, align 16, !tbaa !44
  %i.baz = load <4 x float>, ptr %i.bax, align 4, !tbaa !44
  %i.bba = fadd <4 x float> %i.bay, %i.baz
  store <4 x float> %i.bba, ptr %i.bax, align 4, !tbaa !44
  %i.bbb = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1347.next.1 = add nuw i64 %niter1347, 2   ; 2 uses
  %niter1347.ncmp.1 = icmp eq i64 %niter1347.next.1, %unroll_iter1346
  br i1 %niter1347.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1344.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1341

.epil.preheader1341:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bbb, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1345)
  %i.bbc = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.bbd = getelementptr inbounds nuw [16 x i8], ptr %i.bap, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bbe = load <4 x float>, ptr %i.bbc, align 16, !tbaa !44
  %i.bbf = load <4 x float>, ptr %i.bbd, align 4, !tbaa !44
  %i.bbg = fadd <4 x float> %i.bbe, %i.bbf
  store <4 x float> %i.bbg, ptr %i.bbd, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1341
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bbh = add i64 %.080.i, 3                     ; 2 uses
  %i.bbi = icmp ult i64 %i.bbh, %2
  br i1 %i.bbi, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.bbj = and i32 %13, 8
  %.not405 = icmp ne i32 %i.bbj, 0                ; 3 uses
  br i1 %.not405, label %bb.dg, label %.loopexit727

bb.dg:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bbk = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbl = invoke noundef ptr %i.bbk(i64 noundef %i.iu)
          to label %bb.dh unwind label %bb.dj, !inline_history !4 ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  %i.bbm = load i64, ptr %i.ek, align 8, !tbaa !26 ; 3 uses
  %i.bbn = add nuw nsw i64 %i.bbm, 1              ; 2 uses
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 24
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 28
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 32
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 36
  %.sroa.33.0.copyload.i = load float, ptr %.sroa.33.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.011.0.copyload.i = load float, ptr %i.cyr, align 4, !tbaa !44 ; 3 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.38.0.copyload.i = load float, ptr %.sroa.38.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.43.0.copyload.i = load float, ptr %.sroa.43.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.48.0.copyload.i = load float, ptr %.sroa.48.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 40
  %.sroa.50.0.copyload.i = load float, ptr %.sroa.50.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyq, i64 4 ; 2 uses
  %i.cyt = load <2 x float>, ptr %i.cyq, align 4, !tbaa !44 ; 3 uses
  %i.cyu = load float, ptr %i.cys, align 4, !tbaa !50 ; 6 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyq, i64 8 ; 2 uses
  %i.cyw = load float, ptr %i.cyv, align 4, !tbaa !46 ; 8 uses
  %i.cyx = fmul float %.sroa.50.0.copyload.i, f0x38D1B717 ; 6 uses
  %i.cyy = extractelement <2 x float> %i.cyt, i64 0 ; 7 uses
  %i.cyz = fmul float %i.cyy, %i.cyx
  %i.cza = fsub float %.sroa.33.0.copyload.i, %i.cyz ; 2 uses
  %i.czb = fmul float %i.cyx, %i.cyu
  %i.czc = load <2 x float>, ptr %.sroa.1819.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.czd = shufflevector <2 x float> %i.czc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.cze = insertelement <4 x float> %i.czd, float %.sroa.38.0.copyload.i, i64 0
  %i.czf = insertelement <4 x float> %i.cze, float %.sroa.011.0.copyload.i, i64 3 ; 2 uses
  %i.czg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.czb, i64 0
  %i.czh = insertelement <4 x float> %i.czg, float %i.cyx, i64 3 ; 2 uses
  %i.czi = fsub <4 x float> %i.czf, %i.czh
  %i.czj = fadd <4 x float> %i.czf, %i.czh
  %i.czk = shufflevector <4 x float> %i.czi, <4 x float> %i.czj, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.czl = fmul float %i.cyx, %i.cyw
  %i.czm = load <2 x float>, ptr %.sroa.814.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44
  %i.czn = shufflevector <2 x float> %i.czm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.czo = insertelement <4 x float> %i.czn, float %.sroa.28.0.copyload.i, i64 0
  %i.czp = insertelement <4 x float> %i.czo, float %.sroa.43.0.copyload.i, i64 3 ; 2 uses
  %i.czq = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cyx, i64 1
  %i.czr = insertelement <4 x float> %i.czq, float %i.czl, i64 3
  %i.czs = shufflevector <4 x float> %i.czr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.czt = fadd <4 x float> %i.czp, %i.czs
  %i.czu = fsub <4 x float> %i.czp, %i.czs
  %i.czv = shufflevector <4 x float> %i.czt, <4 x float> %i.czu, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.czw = fadd float %.sroa.50.0.copyload.i, %i.cyx ; 4 uses
  %i.czx = shufflevector <4 x float> %i.czv, <4 x float> %i.czk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not403, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.czy = trunc nuw i64 %.06245.i to i32
  %i.czz = shufflevector <4 x float> %i.czv, <4 x float> %i.czk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.daa = insertelement <8 x float> poison, float %i.czw, i64 0
  %i.dab = shufflevector <8 x float> %i.daa, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, %bb.hn
  %.sroa.33.0.i = phi float [ %i.cza, %bb.hn ], [ %i.dbq, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %.0.i = phi i32 [ %i.czy, %bb.hn ], [ %i.dbu, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.dac = phi <8 x float> [ %i.czz, %bb.hn ], [ %i.dbr, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.dad = zext i32 %.0.i to i64                  ; 3 uses
  %i.dae = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dad ; 5 uses
  %i.daf = mul i64 %.0330, %i.dad
  %i.dag = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.daf
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  %i.dai = getelementptr inbounds nuw i8, ptr %i.dae, i64 24
  %i.daj = load float, ptr %i.dai, align 4, !tbaa !51
  %i.dak = call float @llvm.fmuladd.f32(float %i.daj, float %i.czw, float %.sroa.33.0.i)
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dae, i64 28
  %i.dam = load <4 x float>, ptr %i.dae, align 4, !tbaa !44 ; 2 uses
  %i.dan = load <2 x float>, ptr %i.dah, align 4, !tbaa !44 ; 2 uses
  %i.dao = load <2 x float>, ptr %i.dal, align 4, !tbaa !44
  %i.dap = shufflevector <2 x float> %i.dan, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.daq = shufflevector <4 x float> %i.dap, <4 x float> %i.dam, <8 x i32> <i32 1, i32 6, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dar = shufflevector <2 x float> %i.dao, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.das = shufflevector <8 x float> %i.daq, <8 x float> %i.dar, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 8, i32 poison, i32 poison, i32 poison>
  %i.dat = shufflevector <2 x float> %i.dan, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dau = shufflevector <8 x float> %i.das, <8 x float> %i.dat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.dav = shufflevector <4 x float> %i.dam, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.daw = shufflevector <8 x float> %i.dau, <8 x float> %i.dav, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 8>
  %i.dax = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.daw, <8 x float> %i.dab, <8 x float> %i.dac)
  %i.day = getelementptr inbounds nuw i8, ptr %i.dae, i64 40
  %i.daz = load float, ptr %i.day, align 4, !tbaa !48 ; 2 uses
  %i.dba = fcmp oeq float %i.daz, 0.000000e+00
  %i.dbb = fdiv float %i.czw, %i.daz
  %i.dbc = select i1 %i.dba, float 0.000000e+00, float %i.dbb ; 2 uses
  %i.dbd = insertelement <8 x float> poison, float %i.dbc, i64 0
  %i.dbe = shufflevector <8 x float> %i.dbd, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %bb.ho
  %.087.i.i = phi i64 [ 0, %bb.ho ], [ %i.dbs, %bb.hp ] ; 2 uses
  %i.dbf = phi float [ %i.dak, %bb.ho ], [ %i.dbq, %bb.hp ]
  %i.dbg = phi <8 x float> [ %i.dax, %bb.ho ], [ %i.dbr, %bb.hp ]
  %i.dbh = getelementptr inbounds nuw [16 x i8], ptr %i.dag, i64 %.087.i.i
  %i.dbi = load <4 x float>, ptr %i.dbh, align 4, !tbaa !44 ; 3 uses
  %i.dbj = fneg <4 x float> %i.dbi                ; 2 uses
  %i.dbk = shufflevector <4 x float> %i.dbj, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 0>
  %i.dbl = shufflevector <4 x float> %i.dbi, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0>
  %i.dbm = fmul <8 x float> %i.dbl, %i.dbk
  %i.dbn = extractelement <4 x float> %i.dbj, i64 3
  %i.dbo = extractelement <4 x float> %i.dbi, i64 0
  %i.dbp = fmul float %i.dbo, %i.dbn
  %i.dbq = call float @llvm.fmuladd.f32(float %i.dbp, float %i.dbc, float %i.dbf) ; 4 uses
  %i.dbr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbm, <8 x float> %i.dbe, <8 x float> %i.dbg) ; 4 uses
  %i.dbs = add nuw i64 %.087.i.i, 1               ; 2 uses
  %exitcond.not.i.i587 = icmp eq i64 %i.dbs, %.0330
  br i1 %exitcond.not.i.i587, label %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, label %bb.hp, !llvm.loop !114

_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i: ; preds = %bb.hp
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.dad
  %i.dbu = load i32, ptr %i.dbt, align 4, !tbaa !28 ; 2 uses
  %i.dbv = zext i32 %i.dbu to i64
  %.not69.i = icmp eq i64 %.06245.i, %i.dbv
  br i1 %.not69.i, label %bb.hq, label %bb.ho, !llvm.loop !115

bb.hq:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i
  br i1 %.not70.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.dbw = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %.06245.i ; 4 uses
  %.sroa.08.0.copyload.i = load float, ptr %i.dbw, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.i588 = getelementptr inbounds nuw i8, ptr %i.dbw, i64 4
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i588, align 4, !tbaa !44
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dbw, i64 8
  %.sroa.69.0.copyload.i = load float, ptr %.sroa.69.0..sroa_idx.i, align 4, !tbaa !44
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dbw, i64 12
  %.sroa.710.0.copyload.i = load float, ptr %.sroa.710.0..sroa_idx.i, align 4, !tbaa !44
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hm
  %.sroa.33.1.i = phi float [ %i.cza, %bb.hm ], [ %i.dbq, %bb.hq ], [ %i.dbq, %bb.hr ] ; 4 uses
  %.sroa.08.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.08.0.copyload.i, %bb.hr ] ; 2 uses
  %.sroa.5.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.5.0.copyload.i, %bb.hr ]
  %.sroa.69.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.69.0.copyload.i, %bb.hr ]
  %.sroa.710.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.710.0.copyload.i, %bb.hr ]
  %i.dbx = phi <8 x float> [ %i.czx, %bb.hm ], [ %i.dbr, %bb.hq ], [ %i.dbr, %bb.hr ] ; 9 uses
  %i.dby = fneg float %.sroa.33.1.i
  %i.dbz = extractelement <8 x float> %i.dbx, i64 4
  %i.dca = fneg float %i.dbz
  %i.dcb = extractelement <8 x float> %i.dbx, i64 3
  %i.dcc = fneg float %i.dcb
  %i.dcd = fmul float %i.czw, f0x358637BD         ; 4 uses
  %i.dce = extractelement <8 x float> %i.dbx, i64 6
  %i.dcf = extractelement <8 x float> %i.dbx, i64 7 ; 4 uses
  %i.dcg = fdiv float %i.dce, %i.dcf              ; 4 uses
  %i.dch = fneg <8 x float> %i.dbx                ; 2 uses
  %i.dci = shufflevector <8 x float> %i.dch, <8 x float> poison, <2 x i32> <i32 5, i32 6>
  %i.dcj = insertelement <2 x float> poison, float %i.dcg, i64 0
  %i.dck = shufflevector <2 x float> %i.dcj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dcl = shufflevector <8 x float> %i.dbx, <8 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dcm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dci, <2 x float> %i.dck, <2 x float> %i.dcl) ; 3 uses
  %i.dcn = extractelement <2 x float> %i.dcm, i64 1 ; 3 uses
  %i.dco = fneg float %i.dcg
  %i.dcp = call float @llvm.fmuladd.f32(float %i.dcg, float %.sroa.33.1.i, float %i.dca) ; 3 uses
  %i.dcq = fdiv float %i.dcp, %i.dcn
  %i.dcr = fneg float %.sroa.710.0.i
  %i.dcs = fdiv float %.sroa.08.0.i, %i.dcf       ; 3 uses
  %i.dct = shufflevector <2 x float> %i.dcm, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dcu = shufflevector <8 x float> %i.dct, <8 x float> %i.dbx, <2 x i32> <i32 0, i32 13>
  %i.dcv = shufflevector <8 x float> %i.dct, <8 x float> %i.dbx, <2 x i32> <i32 1, i32 15>
  %i.dcw = fdiv <2 x float> %i.dcu, %i.dcv        ; 4 uses
  %i.dcx = extractelement <2 x float> %i.dcw, i64 1 ; 2 uses
  %i.dcy = fneg float %i.dcx
  %i.dcz = call float @llvm.fmuladd.f32(float %i.dcx, float %.sroa.33.1.i, float %i.dcc)
  %i.dda = extractelement <2 x float> %i.dcw, i64 0
  %i.ddb = fneg float %i.dda                      ; 2 uses
  %i.ddc = call float @llvm.fmuladd.f32(float %i.ddb, float %i.dcp, float %i.dcz) ; 2 uses
  %i.ddd = fneg float %.sroa.08.0.i               ; 3 uses
  %i.dde = call float @llvm.fmuladd.f32(float %i.ddd, float %i.dcg, float %.sroa.5.0.i) ; 2 uses
  %i.ddf = shufflevector <8 x float> %i.dch, <8 x float> poison, <2 x i32> <i32 poison, i32 5>
  %i.ddg = insertelement <2 x float> %i.ddf, float %i.ddd, i64 0
  %i.ddh = shufflevector <2 x float> %i.dcw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ddi = shufflevector <8 x float> %i.dbx, <8 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ddj = insertelement <2 x float> %i.ddi, float %.sroa.69.0.i, i64 0
  %i.ddk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddg, <2 x float> %i.ddh, <2 x float> %i.ddj)
  %i.ddl = shufflevector <2 x float> %i.dcm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ddm = insertelement <2 x float> %i.ddl, float %i.dde, i64 0
  %i.ddn = fneg <2 x float> %i.ddm                ; 2 uses
  %i.ddo = shufflevector <2 x float> %i.dcw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ddp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddn, <2 x float> %i.ddo, <2 x float> %i.ddk) ; 2 uses
  %i.ddq = extractelement <2 x float> %i.ddp, i64 1 ; 3 uses
  %i.ddr = fdiv float %i.ddc, %i.ddq
  %i.dds = fdiv float %i.dde, %i.dcn              ; 2 uses
  %i.ddt = extractelement <2 x float> %i.ddp, i64 0 ; 2 uses
  %i.ddu = fdiv float %i.ddt, %i.ddq              ; 2 uses
  %i.ddv = call float @llvm.fmuladd.f32(float %i.ddd, float %i.dcs, float 0.000000e+00)
  %i.ddw = extractelement <2 x float> %i.ddn, i64 0
  %i.ddx = call float @llvm.fmuladd.f32(float %i.ddw, float %i.dds, float %i.ddv)
  %i.ddy = fneg float %i.ddt
  %i.ddz = call float @llvm.fmuladd.f32(float %i.ddy, float %i.ddu, float %i.ddx) ; 2 uses
  %i.dea = fneg float %i.dcs
  %i.deb = call float @llvm.fmuladd.f32(float %i.dcs, float %.sroa.33.1.i, float %i.dcr)
  %i.dec = fneg float %i.dds                      ; 2 uses
  %i.ded = call float @llvm.fmuladd.f32(float %i.dec, float %i.dcp, float %i.deb)
  %i.dee = fneg float %i.ddu                      ; 2 uses
  %i.def = call float @llvm.fmuladd.f32(float %i.dee, float %i.ddc, float %i.ded)
  %i.deg = call float @llvm.fabs.f32(float %i.ddz)
  %i.deh = fcmp ogt float %i.deg, %i.dcd
  %i.dei = fdiv float %i.def, %i.ddz
  %i.dej = select i1 %i.deh, float %i.dei, float 0.000000e+00 ; 3 uses
  %20 = fdiv float %i.dby, %i.dcf
  %i.dek = call float @llvm.fmuladd.f32(float %i.dee, float %i.dej, float %i.ddr) ; 8 uses
  %i.del = call float @llvm.fmuladd.f32(float %i.ddb, float %i.dek, float %i.dcq)
  %21 = call float @llvm.fmuladd.f32(float %i.dec, float %i.dej, float %i.del) ; 7 uses
  %i.dem = call float @llvm.fmuladd.f32(float %i.dco, float %21, float %20)
  %i.den = call float @llvm.fmuladd.f32(float %i.dcy, float %i.dek, float %i.dem)
  %i.deo = call float @llvm.fmuladd.f32(float %i.dea, float %i.dej, float %i.den) ; 6 uses
  %i.dep = call float @llvm.fabs.f32(float %i.dcf)
  %i.deq = fcmp ogt float %i.dep, %i.dcd
  %i.der = call float @llvm.fabs.f32(float %i.dcn)
  %i.des = fcmp ogt float %i.der, %i.dcd
  %or.cond.i.i = select i1 %i.deq, i1 %i.des, i1 false
  %i.det = call float @llvm.fabs.f32(float %i.ddq)
  %i.deu = fcmp ogt float %i.det, %i.dcd
  %i.dev = select i1 %or.cond.i.i, i1 %i.deu, i1 false
  br i1 %i.dev, label %bb.ht, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.ht:                                            ; preds = %bb.hs
  %i.dew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.06245.i ; 2 uses
  %i.dex = load i32, ptr %i.dew, align 4, !tbaa !28 ; 3 uses
  %i.dey = zext i32 %i.dex to i64
  %i.dez = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dey
  %i.dfa = add nuw nsw i64 %.06245.i, 1
  %i.dfb = and i64 %i.dfa, 4294967295
  %i.dfc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.dfb ; 2 uses
  %i.dfd = load i32, ptr %i.dfc, align 4, !tbaa !28 ; 2 uses
  %i.dfe = sub i32 %i.dfd, %i.dex
  %i.dff = zext i32 %i.dfe to i64
  %.not.i.i589 = icmp eq i32 %i.dfd, %i.dex
  br i1 %.not.i.i589, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i590

.lr.ph.i.i590:                                    ; preds = %bb.ht, %.lr.ph.i.i590
  %.02.i.i = phi float [ %i.dgn, %.lr.ph.i.i590 ], [ 0.000000e+00, %bb.ht ] ; 2 uses
  %.0521.i.i = phi i64 [ %i.dgo, %.lr.ph.i.i590 ], [ 0, %bb.ht ] ; 2 uses
  %i.dfg = getelementptr inbounds nuw [8 x i8], ptr %i.dez, i64 %.0521.i.i ; 2 uses
  %i.dfh = load i32, ptr %i.dfg, align 4, !tbaa !39
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dfg, i64 4
  %i.dfj = load i32, ptr %i.dfi, align 4, !tbaa !40
  %i.dfk = zext i32 %i.dfh to i64
  %i.dfl = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.dfk ; 3 uses
  %i.dfm = zext i32 %i.dfj to i64
  %i.dfn = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.dfm ; 3 uses
  %i.dfo = load float, ptr %i.dfl, align 4, !tbaa !49
  %i.dfp = fsub float %i.dfo, %i.cyy              ; 2 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfl, i64 4
  %i.dfr = load float, ptr %i.dfq, align 4, !tbaa !50
  %i.dfs = fsub float %i.dfr, %i.cyu              ; 2 uses
  %i.dft = fmul float %i.dfs, %i.dfs
  %i.dfu = call float @llvm.fmuladd.f32(float %i.dfp, float %i.dfp, float %i.dft)
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfl, i64 8
  %i.dfw = load float, ptr %i.dfv, align 4, !tbaa !46
  %i.dfx = fsub float %i.dfw, %i.cyw              ; 2 uses
  %i.dfy = call float @llvm.fmuladd.f32(float %i.dfx, float %i.dfx, float %i.dfu) ; 2 uses
  %i.dfz = load float, ptr %i.dfn, align 4, !tbaa !49
  %i.dga = fsub float %i.dfz, %i.cyy              ; 2 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dfn, i64 4
  %i.dgc = load float, ptr %i.dgb, align 4, !tbaa !50
  %i.dgd = fsub float %i.dgc, %i.cyu              ; 2 uses
  %i.dge = fmul float %i.dgd, %i.dgd
  %i.dgf = call float @llvm.fmuladd.f32(float %i.dga, float %i.dga, float %i.dge)
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dfn, i64 8
  %i.dgh = load float, ptr %i.dgg, align 4, !tbaa !46
  %i.dgi = fsub float %i.dgh, %i.cyw              ; 2 uses
  %i.dgj = call float @llvm.fmuladd.f32(float %i.dgi, float %i.dgi, float %i.dgf) ; 2 uses
  %i.dgk = fcmp olt float %.02.i.i, %i.dfy
  %i.dgl = select i1 %i.dgk, float %i.dfy, float %.02.i.i ; 2 uses
  %i.dgm = fcmp olt float %i.dgl, %i.dgj
  %i.dgn = select i1 %i.dgm, float %i.dgj, float %i.dgl ; 2 uses
  %i.dgo = add nuw nsw i64 %.0521.i.i, 1          ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %i.dgo, %i.dff
  br i1 %exitcond.not.i74.i, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i590, !llvm.loop !116

_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i: ; preds = %.lr.ph.i.i590, %bb.ht
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.ht ], [ %i.dgn, %.lr.ph.i.i590 ]
  %i.dgp = call noundef float @sqrtf(float noundef %.0.lcssa.i.i) #14 ; 2 uses
  %i.dgq = fsub float %i.deo, %i.cyy              ; 2 uses
  %i.dgr = fsub float %21, %i.cyu                 ; 2 uses
  %i.dgs = fmul float %i.dgr, %i.dgr
  %i.dgt = call float @llvm.fmuladd.f32(float %i.dgq, float %i.dgq, float %i.dgs)
  %i.dgu = fsub float %i.dek, %i.cyw              ; 2 uses
  %i.dgv = call float @llvm.fmuladd.f32(float %i.dgu, float %i.dgu, float %i.dgt)
  %i.dgw = fmul float %i.dgp, %i.dgp
  %i.dgx = fcmp ogt float %i.dgv, %i.dgw
  br i1 %i.dgx, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i
  %i.dgy = load i32, ptr %i.dew, align 4, !tbaa !28 ; 3 uses
  %i.dgz = zext i32 %i.dgy to i64
  %i.dha = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dgz
  %i.dhb = load i32, ptr %i.dfc, align 4, !tbaa !28 ; 2 uses
  %i.dhc = sub i32 %i.dhb, %i.dgy
  %i.dhd = zext i32 %i.dhc to i64
  %.not1.not.i.i591 = icmp eq i32 %i.dhb, %i.dgy
  br i1 %.not1.not.i.i591, label %.loopexit.i592, label %.lr.ph.i75.i.preheader

.lr.ph.i75.i.preheader:                           ; preds = %bb.hu
  %i.dhe = shufflevector <2 x float> %i.cyt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dhf = insertelement <4 x float> %i.dhe, float %i.cyw, i64 2
  %i.dhg = insertelement <4 x float> %i.dhf, float %21, i64 3 ; 2 uses
  %i.dhh = insertelement <4 x float> %i.dhg, float %i.dek, i64 3
  %i.dhi = shufflevector <4 x float> %i.dhh, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  br label %.lr.ph.i75.i

bb.hv:                                            ; preds = %.lr.ph.i75.i
  %i.dhj = add nuw nsw i64 %.0252.i.i, 1          ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %i.dhj, %i.dhd
  br i1 %exitcond.not.i76.i, label %.loopexit.i592, label %.lr.ph.i75.i, !llvm.loop !117

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.preheader, %bb.hv
  %.0252.i.i = phi i64 [ %i.dhj, %bb.hv ], [ 0, %.lr.ph.i75.i.preheader ] ; 2 uses
  %i.dhk = getelementptr inbounds nuw [8 x i8], ptr %i.dha, i64 %.0252.i.i ; 2 uses
  %i.dhl = load i32, ptr %i.dhk, align 4, !tbaa !39
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhk, i64 4
  %i.dhn = load i32, ptr %i.dhm, align 4, !tbaa !40
  %i.dho = zext i32 %i.dhl to i64
  %i.dhp = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.dho
  %i.dhq = zext i32 %i.dhn to i64
  %i.dhr = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %i.dhq
  %i.dhs = load <3 x float>, ptr %i.dhr, align 4, !tbaa !44
  %i.dht = shufflevector <3 x float> %i.dhs, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dhu = load <3 x float>, ptr %i.dhp, align 4, !tbaa !44 ; 3 uses
  %i.dhv = shufflevector <3 x float> %i.dhu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.dhw = fsub <4 x float> %i.dht, %i.dhv        ; 5 uses
  %i.dhx = extractelement <3 x float> %i.dhu, i64 0
  %i.dhy = fsub float %i.deo, %i.dhx              ; 2 uses
  %i.dhz = fsub <4 x float> %i.dhg, %i.dhv        ; 2 uses
  %i.dia = shufflevector <3 x float> %i.dhu, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dib = fsub <4 x float> %i.dhi, %i.dia        ; 2 uses
  %i.dic = fneg <4 x float> %i.dhz
  %i.did = shufflevector <4 x float> %i.dhw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.die = fmul <4 x float> %i.did, %i.dic
  %i.dif = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dhw, <4 x float> %i.dib, <4 x float> %i.die) ; 4 uses
  %i.dig = extractelement <4 x float> %i.dib, i64 3
  %i.dih = fneg float %i.dig
  %i.dii = extractelement <4 x float> %i.dhw, i64 0 ; 2 uses
  %i.dij = fmul float %i.dii, %i.dih
  %i.dik = extractelement <4 x float> %i.dhw, i64 2
  %i.dil = call float @llvm.fmuladd.f32(float %i.dik, float %i.dhy, float %i.dij) ; 3 uses
  %i.dim = fneg float %i.dhy
  %i.din = extractelement <4 x float> %i.dhw, i64 1
  %i.dio = fmul float %i.din, %i.dim
  %i.dip = extractelement <4 x float> %i.dhz, i64 3
  %i.diq = call float @llvm.fmuladd.f32(float %i.dii, float %i.dip, float %i.dio) ; 3 uses
  %i.dir = extractelement <4 x float> %i.dif, i64 2 ; 3 uses
  %i.dis = fmul float %i.dir, %i.dil
  %i.dit = extractelement <4 x float> %i.dif, i64 1 ; 3 uses
  %i.diu = extractelement <4 x float> %i.dif, i64 3 ; 3 uses
  %i.div = call float @llvm.fmuladd.f32(float %i.dit, float %i.diu, float %i.dis)
  %i.diw = extractelement <4 x float> %i.dif, i64 0 ; 3 uses
  %i.dix = call float @llvm.fmuladd.f32(float %i.diw, float %i.diq, float %i.div)
  %i.diy = fmul float %i.dir, %i.dir
  %i.diz = call float @llvm.fmuladd.f32(float %i.dit, float %i.dit, float %i.diy)
  %i.dja = call float @llvm.fmuladd.f32(float %i.diw, float %i.diw, float %i.diz)
  %i.djb = fmul float %i.dil, %i.dil
  %i.djc = call float @llvm.fmuladd.f32(float %i.diu, float %i.diu, float %i.djb)
  %i.djd = call float @llvm.fmuladd.f32(float %i.diq, float %i.diq, float %i.djc)
  %i.dje = fmul float %i.dja, %i.djd
  %i.djf = call float @sqrtf(float noundef %i.dje) #14
  %i.djg = fmul float %i.djf, 2.500000e-01
  %i.djh = fcmp ugt float %i.dix, %i.djg
  br i1 %i.djh, label %bb.hv, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

.loopexit.i592:                                   ; preds = %bb.hv, %bb.hu
  %i.dji = fcmp oeq float %.sroa.50.0.copyload.i, 0.000000e+00
  %i.djj = fdiv float 1.000000e+00, %.sroa.50.0.copyload.i
  %i.djk = select i1 %i.dji, float 0.000000e+00, float %i.djj ; 2 uses
  %i.djl = extractelement <2 x float> %i.czc, i64 0
  %i.djm = call float @llvm.fmuladd.f32(float %i.djl, float %21, float %.sroa.33.0.copyload.i)
  %i.djn = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %i.dek, float %.sroa.38.0.copyload.i)
  %i.djo = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.deo, float %.sroa.43.0.copyload.i)
  %i.djp = fmul float %i.djm, 2.000000e+00
  %i.djq = insertelement <4 x float> poison, float %.sroa.48.0.copyload.i, i64 0
  %i.djr = insertelement <4 x float> %i.djq, float %i.djn, i64 1
  %i.djs = insertelement <4 x float> %i.djr, float %i.djo, i64 2
  %i.djt = insertelement <4 x float> %i.djs, float %.sroa.33.0.copyload.i, i64 3
  %i.dju = fmul <4 x float> %i.djt, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.djv = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.deo, float %i.djp)
  %i.djw = insertelement <4 x float> poison, float %i.djv, i64 0
  %i.djx = shufflevector <4 x float> %i.djw, <4 x float> %i.czn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.djy = shufflevector <4 x float> %i.djx, <4 x float> %i.czd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.djz = insertelement <4 x float> poison, float %i.deo, i64 0
  %i.dka = insertelement <4 x float> %i.djz, float %21, i64 1
  %i.dkb = insertelement <4 x float> %i.dka, float %i.dek, i64 2
  %i.dkc = shufflevector <2 x float> %i.cyt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dkd = shufflevector <4 x float> %i.dkb, <4 x float> %i.dkc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dke = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.djy, <4 x float> %i.dkd, <4 x float> %i.dju) ; 4 uses
  %i.dkf = extractelement <4 x float> %i.dke, i64 0
  %i.dkg = extractelement <4 x float> %i.dke, i64 1
  %i.dkh = call float @llvm.fmuladd.f32(float %i.dkg, float %21, float %i.dkf)
  %i.dki = extractelement <4 x float> %i.dke, i64 2
  %i.dkj = call noundef float @llvm.fmuladd.f32(float %i.dki, float %i.dek, float %i.dkh)
  %i.dkk = call float @llvm.fabs.f32(float %i.dkj)
  %i.dkl = fmul float %i.djk, %i.dkk
  %i.dkm = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %i.cyw, float %.sroa.38.0.copyload.i)
  %i.dkn = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.cyy, float %.sroa.43.0.copyload.i)
  %i.dko = extractelement <4 x float> %i.dke, i64 3
  %i.dkp = fmul float %i.dko, 2.000000e+00
  %i.dkq = fmul float %i.dkm, 2.000000e+00
  %i.dkr = fmul float %i.dkn, 2.000000e+00
  %i.dks = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.cyy, float %i.dkp)
  %i.dkt = extractelement <2 x float> %i.czm, i64 0
  %i.dku = call float @llvm.fmuladd.f32(float %i.dkt, float %i.cyu, float %i.dkq)
  %i.dkv = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyw, float %i.dkr)
  %i.dkw = call float @llvm.fmuladd.f32(float %i.dks, float %i.cyy, float %.sroa.48.0.copyload.i)
  %i.dkx = call float @llvm.fmuladd.f32(float %i.dku, float %i.cyu, float %i.dkw)
  %i.dky = call noundef float @llvm.fmuladd.f32(float %i.dkv, float %i.cyw, float %i.dkx)
  %i.dkz = call float @llvm.fabs.f32(float %i.dky)
  %i.dla = fmul float %i.djk, %i.dkz
  %i.dlb = call float @llvm.fmuladd.f32(float %i.dla, float 1.500000e+00, float f0x358637BD)
  %i.dlc = fcmp ogt float %i.dkl, %i.dlb
  br i1 %i.dlc, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hw

bb.hw:                                            ; preds = %.loopexit.i592
  store float %i.deo, ptr %i.cyq, align 4, !tbaa !44
  store float %21, ptr %i.cys, align 4, !tbaa !44
  store float %i.dek, ptr %i.cyv, align 4, !tbaa !44
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i: ; preds = %.lr.ph.i75.i, %bb.hw, %.loopexit.i592, %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, %bb.hs, %bb.hl, %bb.hj, %bb.hj, %bb.hj, %bb.hi
  %i.dld = add nuw i64 %.06245.i, 1               ; 2 uses
  %exitcond.not.i585 = icmp eq i64 %i.dld, %.0702
  br i1 %exitcond.not.i585, label %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, label %bb.hi, !llvm.loop !118

.lr.ph824:                                        ; preds = %.lr.ph824, %.lr.ph824.preheader.new
  %.0331822 = phi i64 [ 0, %.lr.ph824.preheader.new ], [ %i.dlv, %.lr.ph824 ] ; 3 uses
  %niter1389 = phi i64 [ 0, %.lr.ph824.preheader.new ], [ %niter1389.next.1, %.lr.ph824 ]
  %i.dle = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331822
  %i.dlf = load i32, ptr %i.dle, align 4, !tbaa !28
  %i.dlg = zext i32 %i.dlf to i64                 ; 2 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.dlg
  store i8 1, ptr %i.dlh, align 1, !tbaa !29
  %i.dli = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dlg
  %i.dlj = load i32, ptr %i.dli, align 4, !tbaa !28
  %i.dlk = zext i32 %i.dlj to i64
  %i.dll = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.dlk
  store i8 1, ptr %i.dll, align 1, !tbaa !29
  %i.dlm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331822
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlm, i64 4
  %i.dlo = load i32, ptr %i.dln, align 4, !tbaa !28
  %i.dlp = zext i32 %i.dlo to i64                 ; 2 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.dlp
  store i8 1, ptr %i.dlq, align 1, !tbaa !29
  %i.dlr = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dlp
  %i.dls = load i32, ptr %i.dlr, align 4, !tbaa !28
  %i.dlt = zext i32 %i.dls to i64
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.dlt
  store i8 1, ptr %i.dlu, align 1, !tbaa !29
  %i.dlv = add nuw i64 %.0331822, 2               ; 2 uses
  %niter1389.next.1 = add nuw i64 %niter1389, 2   ; 2 uses
  %niter1389.ncmp.1 = icmp eq i64 %niter1389.next.1, %unroll_iter1388
  br i1 %niter1389.ncmp.1, label %._crit_edge825.loopexit.unr-lcssa, label %.lr.ph824, !llvm.loop !119

_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit: ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  br i1 %.not403, label %.lr.ph.i594, label %.lr.ph91.i

.lr.ph.i594:                                      ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit
  %i.dlw = lshr i64 %5, 2
  %.not54.i595 = icmp eq ptr %.0379, null
  %.not55.i = icmp eq ptr %10, null
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dly = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dlz = load float, ptr %i.b, align 4
  %i.dma = load float, ptr %i.dlx, align 4
  %i.dmb = load float, ptr %i.dly, align 4
  br label %.lr.ph.split.us.i596

.lr.ph.split.us.i596:                             ; preds = %bb.ie, %.lr.ph.i594
  %.05060.us.i = phi i64 [ %i.dnc, %bb.ie ], [ 0, %.lr.ph.i594 ] ; 6 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.bew, i64 %.05060.us.i
  %i.dmd = load i8, ptr %i.dmc, align 1, !tbaa !29
  %.not.us.i = icmp eq i8 %i.dmd, 0
  br i1 %.not.us.i, label %bb.ie, label %bb.hx

bb.hx:                                            ; preds = %.lr.ph.split.us.i596
  br i1 %.not54.i595, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.dme = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.05060.us.i
  %i.dmf = load i32, ptr %i.dme, align 4, !tbaa !28
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.dmg = trunc i64 %.05060.us.i to i32
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.dmh = phi i32 [ %i.dmf, %bb.hy ], [ %i.dmg, %bb.hz ] ; 2 uses
  br i1 %.not55.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.dmi = zext i32 %i.dmh to i64
  %i.dmj = getelementptr inbounds nuw i8, ptr %10, i64 %i.dmi
  %i.dmk = load i8, ptr %i.dmj, align 1, !tbaa !29
  %i.dml = and i8 %i.dmk, 1
  %.not56.us.i = icmp eq i8 %i.dml, 0
  br i1 %.not56.us.i, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.05060.us.i
  %i.dmn = load i8, ptr %i.dmm, align 1, !tbaa !29
  %.not57.us.i = icmp eq i8 %i.dmn, 4
  br i1 %.not57.us.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.dmo = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %.05060.us.i ; 3 uses
  %i.dmp = zext i32 %i.dmh to i64
  %i.dmq = mul i64 %i.dlw, %i.dmp
  %i.dmr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dmq ; 3 uses
  %i.dms = load float, ptr %i.dmo, align 4, !tbaa !49
  %i.dmt = call float @llvm.fmuladd.f32(float %i.dms, float %i.zh, float %i.dlz)
  store float %i.dmt, ptr %i.dmr, align 4, !tbaa !44
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmo, i64 4
  %i.dmv = load float, ptr %i.dmu, align 4, !tbaa !50
  %i.dmw = call float @llvm.fmuladd.f32(float %i.dmv, float %i.zh, float %i.dma)
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmr, i64 4
  store float %i.dmw, ptr %i.dmx, align 4, !tbaa !44
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.dmo, i64 8
  %i.dmz = load float, ptr %i.dmy, align 4, !tbaa !46
  %i.dna = call float @llvm.fmuladd.f32(float %i.dmz, float %i.zh, float %i.dmb)
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dmr, i64 8
  store float %i.dna, ptr %i.dnb, align 4, !tbaa !44
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib, %.lr.ph.split.us.i596
  %i.dnc = add nuw i64 %.05060.us.i, 1            ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.dnc, %.0702
  br i1 %exitcond79.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.us.i596, !llvm.loop !120

.lr.ph91.i:                                       ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, %.loopexit75.i
  %.090.i598 = phi i64 [ %i.dpk, %.loopexit75.i ], [ 0, %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit ] ; 12 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.bew, i64 %.090.i598
  %i.dne = load i8, ptr %i.dnd, align 1, !tbaa !29
  %.not.i599 = icmp eq i8 %i.dne, 0
  br i1 %.not.i599, label %.loopexit75.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph91.i
  %i.dnf = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.090.i598
  %i.dng = load i32, ptr %i.dnf, align 4, !tbaa !28
  %i.dnh = zext i32 %i.dng to i64
  %.not71.i = icmp eq i64 %.090.i598, %i.dnh
  br i1 %.not71.i, label %.preheader.i602, label %.loopexit75.i

.preheader.i602:                                  ; preds = %bb.if
  %i.dni = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.090.i598
  %i.dnj = trunc nuw i64 %.090.i598 to i32        ; 3 uses
  %i.dnk = getelementptr inbounds nuw [12 x i8], ptr %i.ze, i64 %.090.i598 ; 3 uses
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dnk, i64 4
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnk, i64 8
  %.065.in78.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.090.i598
  %i.dnn = mul i64 %.090.i598, %.0330
  %invariant.gep88.i = getelementptr [4 x i8], ptr %.0352, i64 %i.dnn
  br label %bb.ig

bb.ig:                                            ; preds = %bb.im, %.preheader.i602
  %.06787.i = phi i64 [ 0, %.preheader.i602 ], [ %i.dpj, %bb.im ] ; 5 uses
  %i.dno = load i8, ptr %i.dni, align 1, !tbaa !29
  %i.dnp = icmp eq i8 %i.dno, 3
  br i1 %i.dnp, label %bb.ih, label %.loopexit.i603

bb.ih:                                            ; preds = %bb.ig
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0352, i64 %.06787.i
  %.06579.i = load i32, ptr %.065.in78.i, align 4, !tbaa !28 ; 2 uses
  %i.dnq = zext i32 %.06579.i to i64              ; 2 uses
  %.not7280.i = icmp eq i64 %.090.i598, %i.dnq
  br i1 %.not7280.i, label %.loopexit.i603, label %.lr.ph.i606

.lr.ph.i606:                                      ; preds = %bb.ih
  %gep89.i = getelementptr [4 x i8], ptr %invariant.gep88.i, i64 %.06787.i
  %i.dnr = load float, ptr %gep89.i, align 4, !tbaa !44
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ik, %.lr.ph.i606
  %i.dns = phi i64 [ %i.dnq, %.lr.ph.i606 ], [ %i.doe, %bb.ik ] ; 3 uses
  %.06582.i = phi i32 [ %.06579.i, %.lr.ph.i606 ], [ %.065.i, %bb.ik ]
  %.06681.i = phi i32 [ %i.dnj, %.lr.ph.i606 ], [ %.1.i609, %bb.ik ] ; 3 uses
  %i.dnt = mul i64 %i.dns, %.0330
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dnt
  %i.dnu = load float, ptr %gep.i, align 4, !tbaa !44
  %i.dnv = fcmp une float %i.dnu, %i.dnr
  %.not74.i = icmp eq i32 %.06681.i, -1
  %or.cond.i607 = select i1 %i.dnv, i1 true, i1 %.not74.i
  br i1 %or.cond.i607, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.dnw = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dns
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 40
  %i.dny = load float, ptr %i.dnx, align 4, !tbaa !48
  %i.dnz = zext i32 %.06681.i to i64
  %i.doa = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dnz
  %i.dob = getelementptr inbounds nuw i8, ptr %i.doa, i64 40
  %i.doc = load float, ptr %i.dob, align 4, !tbaa !48
  %i.dod = fcmp ogt float %i.dny, %i.doc
  %spec.select.i608 = select i1 %i.dod, i32 %.06582.i, i32 %.06681.i
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.1.i609 = phi i32 [ -1, %bb.ii ], [ %spec.select.i608, %bb.ij ] ; 2 uses
  %.065.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.dns
  %.065.i = load i32, ptr %.065.in.i, align 4, !tbaa !28 ; 2 uses
  %i.doe = zext i32 %.065.i to i64                ; 2 uses
  %.not72.i = icmp eq i64 %.090.i598, %i.doe
  br i1 %.not72.i, label %.loopexit.i603, label %bb.ii, !llvm.loop !121

.loopexit.i603:                                   ; preds = %bb.ik, %bb.ih, %bb.ig
  %.2.i604 = phi i32 [ -1, %bb.ig ], [ %i.dnj, %bb.ih ], [ %.1.i609, %bb.ik ] ; 2 uses
  %i.dof = icmp eq i32 %.2.i604, -1
  %invariant.gep83.i = getelementptr [16 x i8], ptr %.0347, i64 %.06787.i
  %invariant.gep85.i = getelementptr [4 x i8], ptr %.0352, i64 %.06787.i
  br label %bb.il

bb.il:                                            ; preds = %bb.il, %.loopexit.i603
  %.064.i = phi i32 [ %i.dnj, %.loopexit.i603 ], [ %i.dph, %bb.il ] ; 2 uses
  %i.dog = select i1 %i.dof, i32 %.064.i, i32 %.2.i604
  %i.doh = zext i32 %i.dog to i64                 ; 2 uses
  %i.doi = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.doh
  %i.doj = mul i64 %.0330, %i.doh
end_hunk_1
