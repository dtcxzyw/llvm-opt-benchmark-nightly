Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anz, i64 40 ; 2 uses
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !48
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.amx
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !28
  %i.aog = zext i32 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %i.aog ; 5 uses
  %i.aoi = load <3 x float>, ptr %i.ant, align 4, !tbaa !44
  %i.aoj = shufflevector <3 x float> %i.aoi, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aok = load float, ptr %i.ans, align 4, !tbaa !49 ; 2 uses
  %i.aol = load <3 x float>, ptr %i.ans, align 4, !tbaa !44 ; 3 uses
  %i.aom = shufflevector <3 x float> %i.aol, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 3 uses
  %i.aon = fsub <4 x float> %i.aoj, %i.aom        ; 8 uses
  %foldExtExtBinop1211 = fmul <4 x float> %i.aon, %i.aon
  %i.aoo = extractelement <4 x float> %foldExtExtBinop1211, i64 0
  %i.aop = extractelement <4 x float> %i.aon, i64 2 ; 3 uses
  %i.aoq = extractelement <4 x float> %i.aon, i64 1 ; 3 uses
  %i.aor = load <3 x float>, ptr %i.anv, align 4, !tbaa !44
  %i.aos = shufflevector <3 x float> %i.aor, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.aot = shufflevector <3 x float> %i.aol, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.aou = fsub <4 x float> %i.aos, %i.aot        ; 6 uses
  %shift = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fmul <4 x float> %i.aon, %shift
  %i.aov = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.aow = extractelement <4 x float> %i.aou, i64 1
  %i.aox = call float @llvm.fmuladd.f32(float %i.aow, float %i.aop, float %i.aov)
  %i.aoy = extractelement <4 x float> %i.aou, i64 0
  %i.aoz = call float @llvm.fmuladd.f32(float %i.aoy, float %i.aoq, float %i.aox)
  %i.apa = fneg float %i.aoz
  %i.apb = shufflevector <4 x float> %i.aon, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.apc = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apd = shufflevector <4 x float> %i.apc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ape = fmul <4 x float> %i.apb, %i.apd
  %i.apf = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.apg = extractelement <3 x float> %i.aol, i64 2 ; 2 uses
  %i.aph = fneg <4 x float> %i.aou
  %i.api = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.apj = shufflevector <4 x float> %i.aon, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.apk = fmul <4 x float> %i.apj, %i.api
  %i.apl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aon, <4 x float> %i.aou, <4 x float> %i.apk) ; 5 uses
  %i.apm = load <4 x float>, ptr %i.anz, align 4, !tbaa !44
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16 ; 2 uses
  %i.apo = load <4 x float>, ptr %i.aoa, align 4, !tbaa !44
  %i.app = getelementptr inbounds nuw i8, ptr %i.aoh, i64 32 ; 2 uses
  %i.apq = load <2 x float>, ptr %i.aob, align 4, !tbaa !44
  %i.apr = call float @llvm.fmuladd.f32(float %i.aop, float %i.aop, float %i.aoo)
  %i.aps = call float @llvm.fmuladd.f32(float %i.aoq, float %i.aoq, float %i.apr) ; 2 uses
  %sqrt.i.i476 = call float @llvm.sqrt.f32(float %i.aps)
  %i.apt = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apf, <4 x float> %i.apu, <4 x float> %i.ape) ; 5 uses
  %i.apw = shufflevector <4 x float> %i.apv, <4 x float> %i.apl, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.apx = fmul <2 x float> %i.apw, %i.apw
  %i.apy = shufflevector <4 x float> %i.apv, <4 x float> %i.apl, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.apz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apy, <2 x float> %i.apy, <2 x float> %i.apx)
  %i.aqa = shufflevector <4 x float> %i.apv, <4 x float> %i.apl, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.aqb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqa, <2 x float> %i.aqa, <2 x float> %i.apz) ; 3 uses
  %i.aqc = extractelement <2 x float> %i.aqb, i64 1
  %sqrt.i.i69.i = call float @llvm.sqrt.f32(float %i.aqc) ; 2 uses
  %i.aqd = insertelement <4 x float> poison, float %sqrt.i.i69.i, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqf = fdiv <4 x float> %i.apl, %i.aqe
  %i.aqg = fcmp ogt <2 x float> %i.aqb, zeroinitializer ; 2 uses
  %i.aqh = shufflevector <2 x i1> %i.aqg, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aqi = select <4 x i1> %i.aqh, <4 x float> %i.aqf, <4 x float> %i.apl ; 6 uses
  %i.aqj = extractelement <4 x float> %i.aqi, i64 0
  %i.aqk = extractelement <4 x float> %i.aqi, i64 2 ; 2 uses
  %i.aql = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.aqm = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aqn = extractelement <2 x float> %i.aqb, i64 0
  %sqrt.i.i.i477 = call float @llvm.sqrt.f32(float %i.aqn)
  %i.aqo = insertelement <4 x float> poison, float %sqrt.i.i.i477, i64 0
  %i.aqp = shufflevector <4 x float> %i.aqo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = fdiv <4 x float> %i.apv, %i.aqp
  %i.aqr = shufflevector <2 x i1> %i.aqg, <2 x i1> poison, <4 x i32> zeroinitializer
  %i.aqs = select <4 x i1> %i.aqr, <4 x float> %i.aqq, <4 x float> %i.apv ; 6 uses
  %shift1215 = shufflevector <4 x float> %i.aqs, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1216 = fmul <4 x float> %i.aom, %shift1215
  %i.aqt = extractelement <4 x float> %foldExtExtBinop1216, i64 0
  %i.aqu = extractelement <4 x float> %i.aqs, i64 0
  %i.aqv = call float @llvm.fmuladd.f32(float %i.aqu, float %i.aok, float %i.aqt)
  %i.aqw = extractelement <4 x float> %i.aqs, i64 2 ; 2 uses
  %i.aqx = call float @llvm.fmuladd.f32(float %i.aqw, float %i.apg, float %i.aqv)
  %i.aqy = fneg float %i.aqx                      ; 2 uses
  %i.aqz = fmul float %i.anr, %sqrt.i.i476        ; 3 uses
  %i.ara = insertelement <4 x float> poison, float %i.aqz, i64 0
  %i.arb = shufflevector <4 x float> %i.ara, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arc = shufflevector <4 x float> %i.aqs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ard = fmul <4 x float> %i.arb, %i.arc        ; 2 uses
  %i.are = fmul float %i.aqz, %i.aqy              ; 3 uses
  %i.arf = fmul <4 x float> %i.aqs, %i.ard
  %i.arg = fmul float %i.aqw, %i.are
  %i.arh = fmul float %i.are, %i.aqy
  %shift1218 = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1219 = fmul <4 x float> %i.aom, %shift1218
  %i.ari = extractelement <4 x float> %foldExtExtBinop1219, i64 0
  %i.arj = call float @llvm.fmuladd.f32(float %i.aqj, float %i.aok, float %i.ari)
  %i.ark = call float @llvm.fmuladd.f32(float %i.aqk, float %i.apg, float %i.arj) ; 2 uses
  %i.arl = fneg float %i.ark
  %sqrt.i73.i = call float @llvm.sqrt.f32(float %sqrt.i.i69.i)
  %i.arm = fmul float %i.anr, %sqrt.i73.i         ; 2 uses
  %i.arn = insertelement <4 x float> poison, float %i.arm, i64 0
  %i.aro = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arp = fmul <4 x float> %i.aql, %i.aro        ; 2 uses
  %i.arq = fmul float %i.arm, %i.arl              ; 3 uses
  %i.arr = fmul <4 x float> %i.aqi, %i.arp
  %i.ars = fmul float %i.aqk, %i.arq
  %i.art = fadd <4 x float> %i.arr, %i.arf        ; 2 uses
  %i.aru = fadd float %i.ars, %i.arg
  %i.arv = fmul float %i.ark, %i.arq
  %i.arw = fsub float %i.arh, %i.arv
  %i.arx = fadd float %i.aqz, 0.000000e+00        ; 2 uses
  %i.ary = fadd <4 x float> %i.apm, %i.art
  store <4 x float> %i.ary, ptr %i.anz, align 4, !tbaa !44
  %i.arz = insertelement <2 x float> poison, float %i.aru, i64 0
  %i.asa = insertelement <2 x float> %i.arz, float %i.arw, i64 1 ; 2 uses
  %i.asb = fadd <2 x float> %i.asa, %i.apq
  store <2 x float> %i.asb, ptr %i.aob, align 4, !tbaa !44
  %i.asc = fadd float %i.arx, %i.aod
  store float %i.asc, ptr %i.aoc, align 4, !tbaa !48
  %i.asd = load <4 x float>, ptr %i.aoh, align 4, !tbaa !44
  %i.ase = fadd <4 x float> %i.art, %i.asd
  store <4 x float> %i.ase, ptr %i.aoh, align 4, !tbaa !44
  %i.asf = shufflevector <4 x float> %i.aqs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asg = shufflevector <4 x float> %i.ard, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ash = insertelement <2 x float> %i.asg, float %i.are, i64 1
  %i.asi = shufflevector <2 x float> %i.ash, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.asj = fmul <4 x float> %i.asf, %i.asi
  %i.ask = shufflevector <4 x float> %i.arp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.asl = insertelement <2 x float> %i.ask, float %i.arq, i64 1
  %i.asm = shufflevector <2 x float> %i.asl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.asn = fmul <4 x float> %i.aqm, %i.asm
  %i.aso = fadd <4 x float> %i.asn, %i.asj        ; 2 uses
  %i.asp = fadd <4 x float> %i.apo, %i.aso
  store <4 x float> %i.asp, ptr %i.aoa, align 4, !tbaa !44
  %i.asq = load <4 x float>, ptr %i.apn, align 4, !tbaa !44
  %i.asr = fadd <4 x float> %i.aso, %i.asq
  store <4 x float> %i.asr, ptr %i.apn, align 4, !tbaa !44
  %i.ass = load <2 x float>, ptr %i.app, align 4, !tbaa !44
  %i.ast = fadd <2 x float> %i.asa, %i.ass
  store <2 x float> %i.ast, ptr %i.app, align 4, !tbaa !44
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aoh, i64 40 ; 2 uses
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !48
  %i.asw = fadd float %i.arx, %i.asv
  store float %i.asw, ptr %i.asu, align 4, !tbaa !48
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i481 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i481, label %bb.cx, label %bb.cy, !llvm.loop !88

_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit: ; preds = %bb.cx
  br i1 %.not403, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.lr.ph.i485.preheader

.lr.ph.i485.preheader:                            ; preds = %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit
  %i.asx = add i64 %.0330, -1                     ; 3 uses
  %xtraiter1328 = and i64 %.0330, 1
  %i.asy = icmp eq i64 %i.asx, 0
  %unroll_iter1332 = and i64 %.0330, -2
  %lcmp.mod1330.not = icmp eq i64 %xtraiter1328, 0
  %lcmp.mod1331 = trunc i64 %.0330 to i1
  %xtraiter1335 = and i64 %.0330, 1
  %i.asz = icmp eq i64 %i.asx, 0
  %unroll_iter1339 = and i64 %.0330, -2
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1335, 0
  %lcmp.mod1338 = trunc i64 %.0330 to i1
  %xtraiter1342.a = and i64 %.0330, 1
  %i.ata = icmp eq i64 %i.asx, 0
  %unroll_iter1346 = and i64 %.0330, -2
  %lcmp.mod1344.not.a = icmp eq i64 %xtraiter1342.a, 0
  %lcmp.mod1345 = trunc i64 %.0330 to i1
  br label %.lr.ph.i485

.lr.ph.i485:                                      ; preds = %.lr.ph.i485.preheader, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i
  %.080.i = phi i64 [ %i.bau, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i ], [ 0, %.lr.ph.i485.preheader ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.080.i ; 3 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !28
  %i.atd = getelementptr i8, ptr %i.atb, i64 4
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !28
  %i.atf = getelementptr i8, ptr %i.atb, i64 8
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ath = zext i32 %i.atc to i64                 ; 3 uses
  %i.ati = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.ath ; 2 uses
  %i.atj = zext i32 %i.ate to i64                 ; 3 uses
  %i.atk = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.atj
  %i.atl = zext i32 %i.atg to i64                 ; 3 uses
  %i.atm = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.atl
  %i.atn = mul i64 %.0330, %i.ath                 ; 2 uses
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atn
  %i.atp = mul i64 %.0330, %i.atj                 ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atp
  %i.atr = mul i64 %.0330, %i.atl                 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atr
  %i.att = getelementptr inbounds nuw i8, ptr %i.ati, i64 4
  %i.atu = load <3 x float>, ptr %i.atk, align 4, !tbaa !44
  %i.atv = shufflevector <3 x float> %i.atu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.atw = load <3 x float>, ptr %i.ati, align 4, !tbaa !44 ; 3 uses
  %i.atx = shufflevector <3 x float> %i.atw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.aty = load float, ptr %i.att, align 4, !tbaa !50
  %i.atz = fsub <4 x float> %i.atv, %i.atx        ; 10 uses
  %i.aua = load <3 x float>, ptr %i.atm, align 4, !tbaa !44
  %i.aub = shufflevector <3 x float> %i.aua, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.auc = fsub <4 x float> %i.aub, %i.atx        ; 8 uses
  %i.aud = fneg <4 x float> %i.auc                ; 2 uses
  %i.aue = extractelement <4 x float> %i.atz, i64 2
  %i.auf = extractelement <4 x float> %i.auc, i64 2 ; 3 uses
  %i.aug = shufflevector <4 x float> %i.atz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.auh = shufflevector <4 x float> %i.aud, <4 x float> %i.atz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aui = fmul <4 x float> %i.aug, %i.auh
  %i.auj = shufflevector <4 x float> %i.atz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.auk = shufflevector <4 x float> %i.auc, <4 x float> %i.atz, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.aul = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.auj, <4 x float> %i.auk, <4 x float> %i.aui) ; 5 uses
  %18 = extractelement <4 x float> %i.aul, i64 0  ; 2 uses
  %19 = shufflevector <4 x float> %i.aul, <4 x float> %i.atz, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %i.auc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %21 = shufflevector <4 x float> %i.aul, <4 x float> %i.auc, <4 x i32> <i32 2, i32 poison, i32 5, i32 5>
  %22 = insertelement <4 x float> %21, float 1.000000e+00, i64 1
  %23 = fmul <4 x float> %20, %22
  %24 = shufflevector <4 x float> %i.aul, <4 x float> %i.atz, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> %i.auc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %26 = shufflevector <4 x float> %i.aul, <4 x float> %i.auc, <4 x i32> <i32 1, i32 poison, i32 4, i32 4>
  %27 = shufflevector <4 x float> %26, <4 x float> %i.atz, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %27, <4 x float> %23) ; 5 uses
  %i.aum = extractelement <4 x float> %28, i64 0
  %i.aun = call float @llvm.fmuladd.f32(float %18, float %18, float %i.aum)
  %sqrt.i.i486 = call float @llvm.sqrt.f32(float %i.aun)
  %29 = fmul float %sqrt.i.i486, 5.000000e-01     ; 5 uses
  %i.auo = extractelement <4 x float> %28, i64 2
  %i.aup = call float @llvm.fmuladd.f32(float %i.aue, float %i.auf, float %i.auo) ; 3 uses
  %30 = extractelement <4 x float> %28, i64 3
  %i.auq = call float @llvm.fmuladd.f32(float %i.auf, float %i.auf, float %30) ; 2 uses
  %i.aur = fneg float %i.aup
  %i.aus = fmul float %i.aup, %i.aur
  %31 = extractelement <4 x float> %28, i64 1
  %i.aut = call float @llvm.fmuladd.f32(float %31, float %i.auq, float %i.aus) ; 2 uses
  %i.auu = fcmp oeq float %i.aut, 0.000000e+00
  %i.auv = fdiv float 1.000000e+00, %i.aut
  %i.auw = select i1 %i.auu, float 0.000000e+00, float %i.auv
  %i.aux = insertelement <4 x float> poison, float %i.aup, i64 0
  %i.auy = shufflevector <4 x float> %i.aux, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.auz = fmul <4 x float> %i.auy, %i.aud
  %i.ava = insertelement <4 x float> poison, float %i.auq, i64 0
  %i.avb = shufflevector <4 x float> %i.ava, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avb, <4 x float> %i.atz, <4 x float> %i.auz)
  %i.avd = fneg <4 x float> %i.atz
  %i.ave = fmul <4 x float> %i.auy, %i.avd
  %32 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.avf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %i.auc, <4 x float> %i.ave)
  %i.avg = insertelement <4 x float> poison, float %i.auw, i64 0
  %i.avh = shufflevector <4 x float> %i.avg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avi = fmul <4 x float> %i.avc, %i.avh
  %i.avj = fmul <4 x float> %i.avf, %i.avh
  %i.avk = extractelement <3 x float> %i.atw, i64 0
  %i.avl = fneg float %i.avk
  %i.avm = fneg float %i.aty
  %i.avn = extractelement <3 x float> %i.atw, i64 2
  %i.avo = fneg float %i.avn
  %i.avp = insertelement <4 x float> poison, float %29, i64 0
  %i.avq = shufflevector <4 x float> %i.avp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.avr = insertelement <2 x float> poison, float %29, i64 0
  %i.avs = shufflevector <2 x float> %i.avr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i485
  %.0210.i.i = phi i64 [ 0, %.lr.ph.i485 ], [ %i.axh, %bb.df ] ; 5 uses
  %i.avt = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.awn, %bb.df ]
  %i.avu = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.awz, %bb.df ]
  %i.avv = phi <2 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axe, %bb.df ]
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %.0210.i.i
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !44 ; 3 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %.0210.i.i
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !44
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %.0210.i.i
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !44
  %i.awc = fsub float %i.avz, %i.avx
  %i.awd = fsub float %i.awb, %i.avx
  %i.awe = insertelement <4 x float> poison, float %i.awd, i64 0
  %i.awf = shufflevector <4 x float> %i.awe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awg = fmul <4 x float> %i.avj, %i.awf
  %i.awh = insertelement <4 x float> poison, float %i.awc, i64 0
  %i.awi = shufflevector <4 x float> %i.awh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avi, <4 x float> %i.awi, <4 x float> %i.awg) ; 9 uses
  %i.awk = extractelement <4 x float> %i.awj, i64 0
  %i.awl = shufflevector <4 x float> %i.awj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.awm = fmul <4 x float> %i.awj, %i.awl
  %i.awn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avq, <4 x float> %i.awm, <4 x float> %i.avt) ; 4 uses
  %i.awo = shufflevector <4 x float> %i.awj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.awp = shufflevector <4 x float> %i.awj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.awq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.0210.i.i
  %i.awr = extractelement <4 x float> %i.awj, i64 2
  %i.aws = extractelement <4 x float> %i.awj, i64 1
  %i.awt = call float @llvm.fmuladd.f32(float %i.avl, float %i.awk, float %i.avx)
  %i.awu = call float @llvm.fmuladd.f32(float %i.avm, float %i.aws, float %i.awt)
  %i.awv = call float @llvm.fmuladd.f32(float %i.avo, float %i.awr, float %i.awu) ; 4 uses
  %i.aww = insertelement <4 x float> poison, float %i.awv, i64 0
  %i.awx = shufflevector <4 x float> %i.awj, <4 x float> %i.aww, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.awy = fmul <4 x float> %i.awo, %i.awx
  %i.awz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avq, <4 x float> %i.awy, <4 x float> %i.avu) ; 4 uses
  %i.axa = insertelement <2 x float> %i.awp, float %i.awv, i64 1
  %i.axb = insertelement <2 x float> poison, float %i.awv, i64 0
  %i.axc = shufflevector <2 x float> %i.axb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axd = fmul <2 x float> %i.axa, %i.axc
  %i.axe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avs, <2 x float> %i.axd, <2 x float> %i.avv) ; 4 uses
  %i.axf = insertelement <4 x float> %i.awj, float %i.awv, i64 3
  %i.axg = fmul <4 x float> %i.avq, %i.axf
  store <4 x float> %i.axg, ptr %i.awq, align 16, !tbaa !44
  %i.axh = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.axh, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.axi = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.ath ; 5 uses
  %i.axj = load <4 x float>, ptr %i.axi, align 4, !tbaa !44
  %i.axk = fadd <4 x float> %i.awn, %i.axj
  store <4 x float> %i.axk, ptr %i.axi, align 4, !tbaa !44
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axi, i64 16 ; 2 uses
  %i.axm = load <4 x float>, ptr %i.axl, align 4, !tbaa !44
  %i.axn = fadd <4 x float> %i.awz, %i.axm
  store <4 x float> %i.axn, ptr %i.axl, align 4, !tbaa !44
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axi, i64 32 ; 2 uses
  %i.axp = load <2 x float>, ptr %i.axo, align 4, !tbaa !44
  %i.axq = fadd <2 x float> %i.axe, %i.axp
  store <2 x float> %i.axq, ptr %i.axo, align 4, !tbaa !44
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axi, i64 40 ; 2 uses
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !48
  %i.axt = fadd float %29, %i.axs
  store float %i.axt, ptr %i.axr, align 4, !tbaa !48
  %i.axu = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atj ; 5 uses
  %i.axv = load <4 x float>, ptr %i.axu, align 4, !tbaa !44
  %i.axw = fadd <4 x float> %i.awn, %i.axv
  store <4 x float> %i.axw, ptr %i.axu, align 4, !tbaa !44
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axu, i64 16 ; 2 uses
  %i.axy = load <4 x float>, ptr %i.axx, align 4, !tbaa !44
  %i.axz = fadd <4 x float> %i.awz, %i.axy
  store <4 x float> %i.axz, ptr %i.axx, align 4, !tbaa !44
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axu, i64 32 ; 2 uses
  %i.ayb = load <2 x float>, ptr %i.aya, align 4, !tbaa !44
  %i.ayc = fadd <2 x float> %i.axe, %i.ayb
  store <2 x float> %i.ayc, ptr %i.aya, align 4, !tbaa !44
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axu, i64 40 ; 2 uses
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !48
  %i.ayf = fadd float %29, %i.aye
  store float %i.ayf, ptr %i.ayd, align 4, !tbaa !48
  %i.ayg = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atl ; 5 uses
  %i.ayh = load <4 x float>, ptr %i.ayg, align 4, !tbaa !44
  %i.ayi = fadd <4 x float> %i.awn, %i.ayh
  store <4 x float> %i.ayi, ptr %i.ayg, align 4, !tbaa !44
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16 ; 2 uses
  %i.ayk = load <4 x float>, ptr %i.ayj, align 4, !tbaa !44
  %i.ayl = fadd <4 x float> %i.awz, %i.ayk
  store <4 x float> %i.ayl, ptr %i.ayj, align 4, !tbaa !44
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32 ; 2 uses
  %i.ayn = load <2 x float>, ptr %i.aym, align 4, !tbaa !44
  %i.ayo = fadd <2 x float> %i.axe, %i.ayn
  store <2 x float> %i.ayo, ptr %i.aym, align 4, !tbaa !44
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayg, i64 40 ; 2 uses
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !48
  %i.ayr = fadd float %29, %i.ayq
  store float %i.ayr, ptr %i.ayp, align 4, !tbaa !48
  %i.ays = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atn ; 3 uses
  br i1 %i.asy, label %.epil.preheader1327, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.aze, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1333 = phi i64 [ %niter1333.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.ayt = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.ayu = getelementptr inbounds nuw [16 x i8], ptr %i.ays, i64 %.018.i.i ; 2 uses
  %i.ayv = load <4 x float>, ptr %i.ayt, align 16, !tbaa !44
  %i.ayw = load <4 x float>, ptr %i.ayu, align 4, !tbaa !44
  %i.ayx = fadd <4 x float> %i.ayv, %i.ayw
  store <4 x float> %i.ayx, ptr %i.ayu, align 4, !tbaa !44
  %i.ayy = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw [16 x i8], ptr %i.ays, i64 %i.ayy ; 2 uses
  %i.azb = load <4 x float>, ptr %i.ayz, align 16, !tbaa !44
  %i.azc = load <4 x float>, ptr %i.aza, align 4, !tbaa !44
  %i.azd = fadd <4 x float> %i.azb, %i.azc
  store <4 x float> %i.azd, ptr %i.aza, align 4, !tbaa !44
  %i.aze = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1333.next.1 = add nuw i64 %niter1333, 2   ; 2 uses
  %niter1333.ncmp.1 = icmp eq i64 %niter1333.next.1, %unroll_iter1332
  br i1 %niter1333.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1330.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1327

.epil.preheader1327:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.aze, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1331)
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %i.ays, i64 %.018.i.i.epil.init ; 2 uses
  %i.azh = load <4 x float>, ptr %i.azf, align 16, !tbaa !44
  %i.azi = load <4 x float>, ptr %i.azg, align 4, !tbaa !44
  %i.azj = fadd <4 x float> %i.azh, %i.azi
  store <4 x float> %i.azj, ptr %i.azg, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1327
  %i.azk = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atp ; 3 uses
  br i1 %i.asz, label %.epil.preheader1334, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.azw, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1340 = phi i64 [ %niter1340.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.azl = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.azk, i64 %.018.i43.i ; 2 uses
  %i.azn = load <4 x float>, ptr %i.azl, align 16, !tbaa !44
  %i.azo = load <4 x float>, ptr %i.azm, align 4, !tbaa !44
  %i.azp = fadd <4 x float> %i.azn, %i.azo
  store <4 x float> %i.azp, ptr %i.azm, align 4, !tbaa !44
  %i.azq = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azq
  %i.azs = getelementptr inbounds nuw [16 x i8], ptr %i.azk, i64 %i.azq ; 2 uses
  %i.azt = load <4 x float>, ptr %i.azr, align 16, !tbaa !44
  %i.azu = load <4 x float>, ptr %i.azs, align 4, !tbaa !44
  %i.azv = fadd <4 x float> %i.azt, %i.azu
  store <4 x float> %i.azv, ptr %i.azs, align 4, !tbaa !44
  %i.azw = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1340.next.1 = add nuw i64 %niter1340, 2   ; 2 uses
  %niter1340.ncmp.1 = icmp eq i64 %niter1340.next.1, %unroll_iter1339
  br i1 %niter1340.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1337.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1334

.epil.preheader1334:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.azw, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1338)
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %i.azk, i64 %.018.i43.i.epil.init ; 2 uses
  %i.azz = load <4 x float>, ptr %i.azx, align 16, !tbaa !44
  %i.baa = load <4 x float>, ptr %i.azy, align 4, !tbaa !44
  %i.bab = fadd <4 x float> %i.azz, %i.baa
  store <4 x float> %i.bab, ptr %i.azy, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1334
  %i.bac = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atr ; 3 uses
  br i1 %i.ata, label %.epil.preheader1341, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bao, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1347 = phi i64 [ %niter1347.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %i.bac, i64 %.018.i46.i ; 2 uses
  %i.baf = load <4 x float>, ptr %i.bad, align 16, !tbaa !44
  %i.bag = load <4 x float>, ptr %i.bae, align 4, !tbaa !44
  %i.bah = fadd <4 x float> %i.baf, %i.bag
  store <4 x float> %i.bah, ptr %i.bae, align 4, !tbaa !44
  %i.bai = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bai
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %i.bac, i64 %i.bai ; 2 uses
  %i.bal = load <4 x float>, ptr %i.baj, align 16, !tbaa !44
  %i.bam = load <4 x float>, ptr %i.bak, align 4, !tbaa !44
  %i.ban = fadd <4 x float> %i.bal, %i.bam
  store <4 x float> %i.ban, ptr %i.bak, align 4, !tbaa !44
  %i.bao = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1347.next.1 = add nuw i64 %niter1347, 2   ; 2 uses
  %niter1347.ncmp.1 = icmp eq i64 %niter1347.next.1, %unroll_iter1346
  br i1 %niter1347.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1344.not.a, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1341

.epil.preheader1341:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bao, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1345)
  %i.bap = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.baq = getelementptr inbounds nuw [16 x i8], ptr %i.bac, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bar = load <4 x float>, ptr %i.bap, align 16, !tbaa !44
  %i.bas = load <4 x float>, ptr %i.baq, align 4, !tbaa !44
  %i.bat = fadd <4 x float> %i.bar, %i.bas
  store <4 x float> %i.bat, ptr %i.baq, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1341
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bau = add i64 %.080.i, 3                     ; 2 uses
  %i.bav = icmp ult i64 %i.bau, %2
  br i1 %i.bav, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.baw = and i32 %13, 8
  %.not405 = icmp ne i32 %i.baw, 0                ; 3 uses
  br i1 %.not405, label %bb.dg, label %.loopexit726

bb.dg:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bax = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bay = invoke noundef ptr %i.bax(i64 noundef %i.iu)
          to label %bb.dh unwind label %bb.dj, !inline_history !4 ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  %i.baz = load i64, ptr %i.ek, align 8, !tbaa !26 ; 3 uses
  %i.bba = add nuw nsw i64 %i.baz, 1              ; 2 uses
  store i64 %i.bba, ptr %i.ek, align 8, !tbaa !26
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.baz
  store ptr %i.bay, ptr %i.bbb, align 8, !tbaa !27
  %i.bbc = call fastcc noundef i64 @_ZN7meshoptL15buildComponentsEPjmPKjmS2_(ptr noundef %i.bay, i64 noundef %.0703, ptr noundef %0, i64 noundef %2, ptr noundef %i.iv) ; 8 uses
  %i.bbd = shl nuw nsw i64 %i.bbc, 4
  %i.bbe = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbf = invoke noundef ptr %i.bbe(i64 noundef %i.bbd)
          to label %bb.di unwind label %bb.dj, !inline_history !6 ; 10 uses

bb.di:                                            ; preds = %bb.dh
  %i.bbg = add nuw nsw i64 %i.baz, 2
  store i64 %i.bbg, ptr %i.ek, align 8, !tbaa !26
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bba
  store ptr %i.bbf, ptr %i.bbh, align 8, !tbaa !27
  call fastcc void @_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em(ptr noundef %i.bbf, i64 noundef %i.bbc, ptr noundef %i.bay, ptr noundef %i.zc, i64 noundef %.0703)
  %.not831 = icmp eq i64 %i.bbc, 0
  br i1 %.not831, label %.loopexit726, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.di
  %xtraiter1348 = and i64 %i.bbc, 3               ; 3 uses
  %i.bbi = icmp samesign ult i64 %i.bbc, 4
  br i1 %i.bbi, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter1353 = and i64 %i.bbc, 4294967292
  br label %.lr.ph

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0342775 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bbz, %.lr.ph ] ; 5 uses
  %.0697774 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %..3, %.lr.ph ] ; 2 uses
  %niter1354 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter1354.next.3, %.lr.ph ]
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %.0342775
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !44 ; 2 uses
  %i.bbm = fcmp ogt float %.0697774, %i.bbl
  %. = select i1 %i.bbm, float %i.bbl, float %.0697774 ; 2 uses
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %.0342775
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 4
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !44 ; 2 uses
  %i.bbq = fcmp ogt float %., %i.bbp
  %..1 = select i1 %i.bbq, float %i.bbp, float %. ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %.0342775
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bbt = load float, ptr %i.bbs, align 4, !tbaa !44 ; 2 uses
  %i.bbu = fcmp ogt float %..1, %i.bbt
  %..2 = select i1 %i.bbu, float %i.bbt, float %..1 ; 2 uses
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %.0342775
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 12
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !44 ; 2 uses
  %i.bby = fcmp ogt float %..2, %i.bbx
  %..3 = select i1 %i.bby, float %i.bbx, float %..2 ; 3 uses
  %i.bbz = add nuw nsw i64 %.0342775, 4           ; 2 uses
  %niter1354.next.3 = add nuw nsw i64 %niter1354, 4 ; 2 uses
  %niter1354.ncmp.3 = icmp eq i64 %niter1354.next.3, %unroll_iter1353
  br i1 %niter1354.ncmp.3, label %.loopexit726.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !92

.loopexit726.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod1350.not = icmp eq i64 %xtraiter1348, 0
  br i1 %lcmp.mod1350.not, label %.loopexit726, label %.lr.ph.epil.preheader

end_hunk_0
