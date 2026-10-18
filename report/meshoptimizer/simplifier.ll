Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.akd = fmul float %i.agn, %i.akc
  %i.ake = call float @llvm.fmuladd.f32(float %i.aka, float %.sroa.0.0.i40.i, float %i.akd)
  %i.akf = fneg float %i.afh
  %i.akg = extractelement <2 x float> %i.ajy, i64 1
  %i.akh = call float @llvm.fmuladd.f32(float %i.akf, float %i.akg, float %i.ake)
  %i.aki = load i32, ptr %i.agq, align 4, !tbaa !28
  %i.akj = zext i32 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.akj ; 2 uses
  %i.akl = load i32, ptr %i.agz, align 4, !tbaa !28
  %i.akm = zext i32 %i.akl to i64
  %i.akn = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.akm ; 2 uses
  %i.ako = load i32, ptr %i.ahi, align 4, !tbaa !28
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.akp ; 2 uses
  %i.akr = insertelement <4 x float> poison, float %i.ajz, i64 0
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akt = insertelement <4 x float> poison, float %.sroa.0.0.i40.i, i64 0
  %i.aku = shufflevector <2 x float> %i.ajy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akv = shufflevector <4 x float> %i.akt, <4 x float> %i.aku, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.akw = insertelement <4 x float> %i.akv, float %i.akh, i64 3
  %i.akx = fmul <4 x float> %i.aks, %i.akw        ; 3 uses
  %i.aky = load <4 x float>, ptr %i.akk, align 4, !tbaa !44
  %i.akz = fadd <4 x float> %i.aky, %i.akx
  store <4 x float> %i.akz, ptr %i.akk, align 4, !tbaa !44
  %i.ala = load <4 x float>, ptr %i.akn, align 4, !tbaa !44
  %i.alb = fadd <4 x float> %i.akx, %i.ala
  store <4 x float> %i.alb, ptr %i.akn, align 4, !tbaa !44
  %i.alc = load <4 x float>, ptr %i.akq, align 4, !tbaa !44
  %i.ald = fadd <4 x float> %i.akx, %i.alc
  store <4 x float> %i.ald, ptr %i.akq, align 4, !tbaa !44
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ale = add i64 %.075.i, 3                     ; 2 uses
  %i.alf = icmp ult i64 %i.ale, %2
  br i1 %i.alf, label %bb.cl, label %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit, !llvm.loop !85

_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit: ; preds = %bb.cn, %bb.ck
  %i.alg = and i32 %13, 64
  %.not.i469 = icmp eq i32 %i.alg, 0
  br i1 %.not.i469, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit
  %i.alh = and i32 %13, 16
  %.not28.i = icmp eq i32 %i.alh, 0
  %i.ali = select i1 %.not28.i, float 1.000000e-07, float 1.000000e-01
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit
  %i.alj = phi float [ %i.ali, %bb.co ], [ f0x3C23D70A, %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit ] ; 2 uses
  br i1 %.not88.i, label %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit, label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %bb.cp
  %.not30.i = icmp eq ptr %.0379, null
  %.not31.i = icmp eq ptr %10, null
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cw, %.lr.ph.i470
  %.033.i = phi i64 [ 0, %.lr.ph.i470 ], [ %i.ane, %bb.cw ] ; 7 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.033.i
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !28
  %i.alm = zext i32 %i.all to i64
  %.not29.i = icmp eq i64 %.033.i, %i.alm
  br i1 %.not29.i, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not30.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.033.i
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !28
  %i.alp = zext i32 %i.alo to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.alq = phi i64 [ %i.alp, %bb.cs ], [ %.033.i, %bb.cr ]
  br i1 %.not31.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.alr = getelementptr inbounds nuw i8, ptr %10, i64 %i.alq
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !29
  %i.alt = and i8 %i.als, 4
  %.not32.i473 = icmp eq i8 %i.alt, 0
  %i.alu = select i1 %.not32.i473, float %i.alj, float 1.000000e+00
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.alv = phi float [ %i.alj, %bb.ct ], [ %i.alu, %bb.cu ]
  %i.alw = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.033.i ; 2 uses
  %i.alx = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %.033.i ; 6 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 40
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !46 ; 3 uses
  %i.amb = load <4 x float>, ptr %i.alx, align 4, !tbaa !44
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alx, i64 16 ; 2 uses
  %i.amd = load <4 x float>, ptr %i.amc, align 4, !tbaa !44
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 32 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !130
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alx, i64 36 ; 2 uses
  %i.amh = load float, ptr %i.aly, align 4, !tbaa !48
  %i.ami = load <2 x float>, ptr %i.amg, align 4, !tbaa !44
  %i.amj = fmul float %i.alv, %i.amh              ; 5 uses
  %i.amk = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.amj, i64 0
  %i.aml = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.amm = fadd <4 x float> %i.amb, %i.aml
  %i.amn = load <2 x float>, ptr %i.alw, align 4, !tbaa !44 ; 4 uses
  %foldExtExtBinop1206 = fmul <2 x float> %i.amn, %i.amn
  %i.amo = extractelement <2 x float> %foldExtExtBinop1206, i64 1
  %i.amp = extractelement <2 x float> %i.amn, i64 0 ; 2 uses
  %i.amq = call float @llvm.fmuladd.f32(float %i.amp, float %i.amp, float %i.amo)
  %i.amr = call float @llvm.fmuladd.f32(float %i.ama, float %i.ama, float %i.amq)
  %i.ams = fmul float %i.amj, %i.amr
  store <4 x float> %i.amm, ptr %i.alx, align 4, !tbaa !44
  %i.amt = insertelement <2 x float> poison, float %i.amj, i64 0
  %i.amu = shufflevector <2 x float> %i.amn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amv = shufflevector <2 x float> %i.amt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.amw = fmul <4 x float> %i.amu, %i.amv
  %i.amx = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, <4 x float> %i.amw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amy = fsub <4 x float> %i.amd, %i.amx
  store <4 x float> %i.amy, ptr %i.amc, align 4, !tbaa !44
  %i.amz = fmul float %i.amj, %i.ama
  %i.ana = fsub float %i.amf, %i.amz
  store float %i.ana, ptr %i.ame, align 4, !tbaa !130
  %i.anb = insertelement <2 x float> poison, float %i.ams, i64 0
  %i.anc = insertelement <2 x float> %i.anb, float %i.amj, i64 1
  %i.and = fadd <2 x float> %i.anc, %i.ami
  store <2 x float> %i.and, ptr %i.amg, align 4, !tbaa !44
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq
  %i.ane = add nuw i64 %.033.i, 1                 ; 2 uses
  %exitcond.not.i471 = icmp eq i64 %i.ane, %.0700
  br i1 %exitcond.not.i471, label %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit, label %bb.cq, !llvm.loop !86

_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit: ; preds = %bb.cw, %bb.cp
  br i1 %.not87.i, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.preheader.i474

.preheader.i474:                                  ; preds = %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit, %bb.cx
  %.098.i = phi i64 [ %i.ang, %bb.cx ], [ 0, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit ] ; 2 uses
  %i.anf = getelementptr [4 x i8], ptr %0, i64 %.098.i ; 3 uses
  br label %bb.cy

bb.cx:                                            ; preds = %bb.de
  %i.ang = add i64 %.098.i, 3                     ; 2 uses
  %i.anh = icmp ult i64 %i.ang, %2
  br i1 %i.anh, label %.preheader.i474, label %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, !llvm.loop !87

bb.cy:                                            ; preds = %bb.de, %.preheader.i474
  %indvars.iv.i = phi i64 [ 0, %.preheader.i474 ], [ %indvars.iv.next.i, %bb.de ] ; 3 uses
  %i.ani = getelementptr [4 x i8], ptr %i.anf, i64 %indvars.iv.i
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !28 ; 2 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_E4next, i64 %indvars.iv.i ; 2 uses
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !28
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr [4 x i8], ptr %i.anf, i64 %i.anm
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !28 ; 2 uses
  %i.anp = zext i32 %i.anj to i64                 ; 4 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !29 ; 3 uses
  %i.ans = zext i32 %i.ano to i64                 ; 4 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ans
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !29 ; 3 uses
  %i.anv = add i8 %i.anr, -3
  %or.cond.i475 = icmp ult i8 %i.anv, -2
  %i.anw = add i8 %i.anu, -3
  %i.anx = icmp ult i8 %i.anw, -2
  %or.cond8.i = select i1 %or.cond.i475, i1 %i.anx, i1 false
  br i1 %or.cond8.i, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.any = icmp eq i8 %i.anr, 1
  %i.anz = add i8 %i.anr, -1
  %or.cond11.i = icmp ult i8 %i.anz, 2
  br i1 %or.cond11.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.anp
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !28
  %.not.i481 = icmp eq i32 %i.aob, %i.ano
  br i1 %.not.i481, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.aoc = icmp eq i8 %i.anu, 1
  %i.aod = add i8 %i.anu, -1
  %or.cond14.i = icmp ult i8 %i.aod, 2
  br i1 %or.cond14.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ans
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !28
  %.not68.i = icmp eq i32 %i.aof, %i.anj
  br i1 %.not68.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ank, i64 4
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !28
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = getelementptr [4 x i8], ptr %i.anf, i64 %i.aoi
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !28
  %i.aol = select i1 %i.any, i1 true, i1 %i.aoc
  %i.aom = select i1 %i.aol, float 1.000000e+01, float 5.000000e-01
  %i.aon = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.anp ; 2 uses
  %i.aoo = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.ans
  %i.aop = zext i32 %i.aok to i64
  %i.aoq = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.aop
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.anp
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ans
  %i.aot = load <3 x float>, ptr %i.aoo, align 4, !tbaa !44
  %i.aou = shufflevector <3 x float> %i.aot, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aov = load float, ptr %i.aon, align 4, !tbaa !49
  %i.aow = load <3 x float>, ptr %i.aon, align 4, !tbaa !44 ; 4 uses
  %i.aox = shufflevector <3 x float> %i.aow, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aoy = fsub <4 x float> %i.aou, %i.aox        ; 8 uses
  %foldExtExtBinop1208 = fmul <4 x float> %i.aoy, %i.aoy
  %i.aoz = extractelement <4 x float> %foldExtExtBinop1208, i64 0
  %i.apa = extractelement <4 x float> %i.aoy, i64 2 ; 3 uses
  %i.apb = call float @llvm.fmuladd.f32(float %i.apa, float %i.apa, float %i.aoz)
  %i.apc = extractelement <4 x float> %i.aoy, i64 1 ; 3 uses
  %i.apd = call float @llvm.fmuladd.f32(float %i.apc, float %i.apc, float %i.apb) ; 2 uses
  %i.ape = call float @sqrtf(float noundef %i.apd) #14
  %i.apf = load <3 x float>, ptr %i.aoq, align 4, !tbaa !44
  %i.apg = shufflevector <3 x float> %i.apf, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.aph = shufflevector <3 x float> %i.aow, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.api = fsub <4 x float> %i.apg, %i.aph        ; 6 uses
  %shift = shufflevector <4 x float> %i.api, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fmul <4 x float> %i.aoy, %shift
  %i.apj = extractelement <4 x float> %foldExtExtBinop1210, i64 0
  %i.apk = extractelement <4 x float> %i.api, i64 1
  %i.apl = call float @llvm.fmuladd.f32(float %i.apk, float %i.apa, float %i.apj)
  %i.apm = extractelement <4 x float> %i.api, i64 0
  %i.apn = call float @llvm.fmuladd.f32(float %i.apm, float %i.apc, float %i.apl)
  %i.apo = fneg float %i.apn
  %i.app = shufflevector <4 x float> %i.aoy, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.apq = insertelement <4 x float> poison, float %i.apo, i64 0
  %i.apr = shufflevector <4 x float> %i.apq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aps = fmul <4 x float> %i.app, %i.apr
  %i.apt = shufflevector <4 x float> %i.api, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.apu = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apv = shufflevector <4 x float> %i.apu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apt, <4 x float> %i.apv, <4 x float> %i.aps) ; 6 uses
  %foldExtExtBinop1212 = fmul <4 x float> %i.apw, %i.apw
  %i.apx = extractelement <4 x float> %foldExtExtBinop1212, i64 1
  %i.apy = extractelement <4 x float> %i.apw, i64 0 ; 2 uses
  %i.apz = call float @llvm.fmuladd.f32(float %i.apy, float %i.apy, float %i.apx)
  %i.aqa = extractelement <4 x float> %i.apw, i64 2 ; 2 uses
  %i.aqb = call float @llvm.fmuladd.f32(float %i.aqa, float %i.aqa, float %i.apz)
  %i.aqc = call float @sqrtf(float noundef %i.aqb) #14 ; 2 uses
  %i.aqd = fcmp ogt float %i.aqc, 0.000000e+00
  %i.aqe = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aqf = shufflevector <4 x float> %i.aqe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqg = fdiv <4 x float> %i.apw, %i.aqf
  %i.aqh = insertelement <4 x i1> poison, i1 %i.aqd, i64 0
  %i.aqi = shufflevector <4 x i1> %i.aqh, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.aqj = select <4 x i1> %i.aqi, <4 x float> %i.aqg, <4 x float> %i.apw ; 6 uses
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.aql = fneg <4 x float> %i.api
  %i.aqm = shufflevector <4 x float> %i.aql, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.aqn = shufflevector <4 x float> %i.aoy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aqo = fmul <4 x float> %i.aqn, %i.aqm
  %i.aqp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.api, <4 x float> %i.aqo) ; 6 uses
  %foldExtExtBinop1217 = fmul <4 x float> %i.aqp, %i.aqp
  %i.aqq = extractelement <4 x float> %foldExtExtBinop1217, i64 1
  %i.aqr = extractelement <4 x float> %i.aqp, i64 0 ; 2 uses
  %i.aqs = call float @llvm.fmuladd.f32(float %i.aqr, float %i.aqr, float %i.aqq)
  %i.aqt = extractelement <4 x float> %i.aqp, i64 2 ; 2 uses
  %i.aqu = call float @llvm.fmuladd.f32(float %i.aqt, float %i.aqt, float %i.aqs)
  %i.aqv = call float @sqrtf(float noundef %i.aqu) #14 ; 3 uses
  %i.aqw = fcmp ogt float %i.aqv, 0.000000e+00
  %i.aqx = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.aqy = shufflevector <4 x float> %i.aqx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqz = fdiv <4 x float> %i.aqp, %i.aqy
  %i.ara = insertelement <4 x i1> poison, i1 %i.aqw, i64 0
  %i.arb = shufflevector <4 x i1> %i.ara, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.arc = select <4 x i1> %i.arb, <4 x float> %i.aqz, <4 x float> %i.aqp ; 6 uses
  %18 = call float @sqrtf(float noundef %i.aqv) #14
  %19 = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %20 = load i32, ptr %i.aor, align 4, !tbaa !28
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %21 ; 5 uses
  %23 = load <4 x float>, ptr %22, align 4, !tbaa !44
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %27 = load float, ptr %26, align 4, !tbaa !48
  %28 = load i32, ptr %i.aos, align 4, !tbaa !28
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %29 ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %32 = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %33 = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %34 = load <4 x float>, ptr %24, align 4, !tbaa !44
  %35 = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %37 = shufflevector <3 x float> %i.aow, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %38 = shufflevector <4 x float> %i.arc, <4 x float> %i.aqj, <2 x i32> <i32 1, i32 5>
  %39 = fmul <2 x float> %37, %38
  %40 = shufflevector <4 x float> %i.arc, <4 x float> %i.aqj, <2 x i32> <i32 0, i32 4>
  %41 = insertelement <2 x float> poison, float %i.aov, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %42, <2 x float> %39)
  %44 = shufflevector <4 x float> %i.arc, <4 x float> %i.aqj, <2 x i32> <i32 2, i32 6> ; 2 uses
  %45 = shufflevector <3 x float> %i.aow, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %45, <2 x float> %43) ; 2 uses
  %47 = fneg <2 x float> %46                      ; 2 uses
  %48 = insertelement <2 x float> poison, float %i.aom, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x float> poison, float %18, i64 0
  %i.ard = insertelement <2 x float> %50, float %i.ape, i64 1
  %51 = fmul <2 x float> %49, %i.ard              ; 4 uses
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> zeroinitializer
  %i.are = fmul <4 x float> %19, %52              ; 2 uses
  %53 = fmul <4 x float> %i.arc, %i.are
  %54 = fmul <2 x float> %51, %47                 ; 5 uses
  %foldExtExtBinop1216 = fmul <2 x float> %46, %54
  %55 = shufflevector <4 x float> %i.are, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %56 = shufflevector <2 x float> %55, <2 x float> %54, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %57 = fmul <4 x float> %33, %56
  %58 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %59 = fmul <4 x float> %58, %i.aqk              ; 2 uses
  %i.arf = fmul <4 x float> %i.aqj, %59
  %60 = fmul <2 x float> %44, %54                 ; 2 uses
  %foldExtExtBinop1218 = fmul <2 x float> %54, %47
  %i.arg = fadd <4 x float> %53, %i.arf           ; 2 uses
  %61 = shufflevector <2 x float> %foldExtExtBinop1218, <2 x float> %51, <2 x i32> <i32 1, i32 3>
  %62 = insertelement <2 x float> %foldExtExtBinop1216, float -0.000000e+00, i64 1
  %63 = fsub <2 x float> %61, %62                 ; 3 uses
  %i.arh = fadd <4 x float> %i.arg, %23
  store <4 x float> %i.arh, ptr %22, align 4, !tbaa !44
  %64 = load <2 x float>, ptr %25, align 4, !tbaa !44
  %shift1220 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1221 = fadd <2 x float> %60, %shift1220 ; 2 uses
  %65 = extractelement <2 x float> %foldExtExtBinop1221, i64 0
  %66 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %67 = shufflevector <2 x float> %foldExtExtBinop1221, <2 x float> %66, <2 x i32> <i32 0, i32 3>
  %i.ari = fadd <2 x float> %67, %64
  store <2 x float> %i.ari, ptr %25, align 4, !tbaa !44
  %68 = extractelement <2 x float> %63, i64 1
  %69 = fadd float %68, %27
  store float %69, ptr %26, align 4, !tbaa !48
  %i.arj = load <4 x float>, ptr %30, align 4, !tbaa !44
  %i.ark = fadd <4 x float> %i.arg, %i.arj
  store <4 x float> %i.ark, ptr %30, align 4, !tbaa !44
  %i.arl = shufflevector <4 x float> %59, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %70 = shufflevector <2 x float> %i.arl, <2 x float> %54, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.arm = fmul <4 x float> %32, %70
  %i.arn = fadd <4 x float> %57, %i.arm           ; 2 uses
  %i.aro = fadd <4 x float> %i.arn, %34
  store <4 x float> %i.aro, ptr %24, align 4, !tbaa !44
  %i.arp = load <4 x float>, ptr %31, align 4, !tbaa !44
  %i.arq = fadd <4 x float> %i.arn, %i.arp
  store <4 x float> %i.arq, ptr %31, align 4, !tbaa !44
  %i.arr = load float, ptr %35, align 4, !tbaa !130
  %i.ars = fadd float %65, %i.arr
  store float %i.ars, ptr %35, align 4, !tbaa !130
  %i.art = load <2 x float>, ptr %36, align 4, !tbaa !44
  %i.aru = fadd <2 x float> %63, %i.art
  store <2 x float> %i.aru, ptr %36, align 4, !tbaa !44
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i479 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i479, label %bb.cx, label %bb.cy, !llvm.loop !88

_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit: ; preds = %bb.cx
  br i1 %.not403, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.lr.ph.i483.preheader

.lr.ph.i483.preheader:                            ; preds = %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit
  %i.arv = add i64 %.0330, -1                     ; 3 uses
  %xtraiter1323 = and i64 %.0330, 1
  %i.arw = icmp eq i64 %i.arv, 0
  %unroll_iter1327 = and i64 %.0330, -2
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1323, 0
  %lcmp.mod1326 = trunc i64 %.0330 to i1
  %xtraiter1330 = and i64 %.0330, 1
  %i.arx = icmp eq i64 %i.arv, 0
  %unroll_iter1334 = and i64 %.0330, -2
  %lcmp.mod1332.not = icmp eq i64 %xtraiter1330, 0
  %lcmp.mod1333 = trunc i64 %.0330 to i1
  %xtraiter1337 = and i64 %.0330, 1
  %i.ary = icmp eq i64 %i.arv, 0
  %unroll_iter1341 = and i64 %.0330, -2
  %lcmp.mod1339.not = icmp eq i64 %xtraiter1337, 0
  %lcmp.mod1340 = trunc i64 %.0330 to i1
  br label %.lr.ph.i483

.lr.ph.i483:                                      ; preds = %.lr.ph.i483.preheader, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i
  %.080.i = phi i64 [ %i.bai, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i ], [ 0, %.lr.ph.i483.preheader ] ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.080.i ; 3 uses
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !28
  %i.asb = getelementptr i8, ptr %i.arz, i64 4
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !28
  %i.asd = getelementptr i8, ptr %i.arz, i64 8
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.asf = zext i32 %i.asa to i64                 ; 3 uses
  %i.asg = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.asf ; 2 uses
  %i.ash = zext i32 %i.asc to i64                 ; 3 uses
  %i.asi = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.ash
  %i.asj = zext i32 %i.ase to i64                 ; 3 uses
  %i.ask = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.asj
  %i.asl = mul i64 %.0330, %i.asf                 ; 2 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.asl
  %i.asn = mul i64 %.0330, %i.ash                 ; 2 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.asn
  %i.asp = mul i64 %.0330, %i.asj                 ; 2 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.asp
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asg, i64 4
  %i.ass = load <3 x float>, ptr %i.asi, align 4, !tbaa !44
  %i.ast = shufflevector <3 x float> %i.ass, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.asu = load <3 x float>, ptr %i.asg, align 4, !tbaa !44 ; 3 uses
  %i.asv = shufflevector <3 x float> %i.asu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.asw = load float, ptr %i.asr, align 4, !tbaa !50
  %i.asx = fsub <4 x float> %i.ast, %i.asv        ; 10 uses
  %i.asy = load <3 x float>, ptr %i.ask, align 4, !tbaa !44
  %i.asz = shufflevector <3 x float> %i.asy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ata = fsub <4 x float> %i.asz, %i.asv        ; 8 uses
  %i.atb = fneg <4 x float> %i.ata                ; 2 uses
  %i.atc = extractelement <4 x float> %i.asx, i64 2
  %i.atd = extractelement <4 x float> %i.ata, i64 2 ; 3 uses
  %i.ate = shufflevector <4 x float> %i.asx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.atf = shufflevector <4 x float> %i.atb, <4 x float> %i.asx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atg = fmul <4 x float> %i.ate, %i.atf
  %i.ath = shufflevector <4 x float> %i.asx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ati = shufflevector <4 x float> %i.ata, <4 x float> %i.asx, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.atj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ath, <4 x float> %i.ati, <4 x float> %i.atg) ; 5 uses
  %i.atk = extractelement <4 x float> %i.atj, i64 0 ; 2 uses
  %i.atl = shufflevector <4 x float> %i.atj, <4 x float> %i.asx, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.atm = shufflevector <4 x float> %i.atl, <4 x float> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atn = shufflevector <4 x float> %i.atj, <4 x float> %i.ata, <4 x i32> <i32 2, i32 poison, i32 5, i32 5>
  %i.ato = insertelement <4 x float> %i.atn, float 1.000000e+00, i64 1
  %i.atp = fmul <4 x float> %i.atm, %i.ato
  %i.atq = shufflevector <4 x float> %i.atj, <4 x float> %i.asx, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %i.atr = shufflevector <4 x float> %i.atq, <4 x float> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ats = shufflevector <4 x float> %i.atj, <4 x float> %i.ata, <4 x i32> <i32 1, i32 poison, i32 4, i32 4>
  %i.att = shufflevector <4 x float> %i.ats, <4 x float> %i.asx, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.atu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atr, <4 x float> %i.att, <4 x float> %i.atp) ; 5 uses
  %i.atv = extractelement <4 x float> %i.atu, i64 0
  %i.atw = call float @llvm.fmuladd.f32(float %i.atk, float %i.atk, float %i.atv)
  %i.atx = call float @sqrtf(float noundef %i.atw) #14
  %i.aty = fmul float %i.atx, 5.000000e-01        ; 5 uses
  %i.atz = extractelement <4 x float> %i.atu, i64 2
  %i.aua = call float @llvm.fmuladd.f32(float %i.atc, float %i.atd, float %i.atz) ; 3 uses
  %i.aub = extractelement <4 x float> %i.atu, i64 3
  %i.auc = call float @llvm.fmuladd.f32(float %i.atd, float %i.atd, float %i.aub) ; 2 uses
  %i.aud = fneg float %i.aua
  %i.aue = fmul float %i.aua, %i.aud
  %i.auf = extractelement <4 x float> %i.atu, i64 1
  %i.aug = call float @llvm.fmuladd.f32(float %i.auf, float %i.auc, float %i.aue) ; 2 uses
  %i.auh = fcmp oeq float %i.aug, 0.000000e+00
  %i.aui = fdiv float 1.000000e+00, %i.aug
  %i.auj = select i1 %i.auh, float 0.000000e+00, float %i.aui
  %i.auk = insertelement <4 x float> poison, float %i.aua, i64 0
  %i.aul = shufflevector <4 x float> %i.auk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aum = fmul <4 x float> %i.aul, %i.atb
  %i.aun = insertelement <4 x float> poison, float %i.auc, i64 0
  %i.auo = shufflevector <4 x float> %i.aun, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aup = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.auo, <4 x float> %i.asx, <4 x float> %i.aum)
  %i.auq = fneg <4 x float> %i.asx
  %i.aur = fmul <4 x float> %i.aul, %i.auq
  %i.aus = shufflevector <4 x float> %i.atu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aut = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aus, <4 x float> %i.ata, <4 x float> %i.aur)
  %i.auu = insertelement <4 x float> poison, float %i.auj, i64 0
  %i.auv = shufflevector <4 x float> %i.auu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.auw = fmul <4 x float> %i.aup, %i.auv
  %i.aux = fmul <4 x float> %i.aut, %i.auv
  %i.auy = extractelement <3 x float> %i.asu, i64 0
  %i.auz = fneg float %i.auy
  %i.ava = fneg float %i.asw
  %i.avb = extractelement <3 x float> %i.asu, i64 2
  %i.avc = fneg float %i.avb
  %i.avd = insertelement <4 x float> poison, float %i.aty, i64 0
  %i.ave = shufflevector <4 x float> %i.avd, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.avf = insertelement <2 x float> poison, float %i.aty, i64 0
  %i.avg = shufflevector <2 x float> %i.avf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i483
  %.0210.i.i = phi i64 [ 0, %.lr.ph.i483 ], [ %i.awv, %bb.df ] ; 5 uses
  %i.avh = phi <4 x float> [ zeroinitializer, %.lr.ph.i483 ], [ %i.awa, %bb.df ]
  %i.avi = phi <4 x float> [ zeroinitializer, %.lr.ph.i483 ], [ %i.awn, %bb.df ]
  %i.avj = phi <2 x float> [ zeroinitializer, %.lr.ph.i483 ], [ %i.aws, %bb.df ]
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.0210.i.i
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !44 ; 3 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.aso, i64 %.0210.i.i
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !44
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %.0210.i.i
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !44
  %i.avq = fsub float %i.avn, %i.avl
  %i.avr = fsub float %i.avp, %i.avl
  %i.avs = insertelement <4 x float> poison, float %i.avr, i64 0
  %i.avt = shufflevector <4 x float> %i.avs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avu = fmul <4 x float> %i.aux, %i.avt
  %i.avv = insertelement <4 x float> poison, float %i.avq, i64 0
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.auw, <4 x float> %i.avw, <4 x float> %i.avu) ; 9 uses
  %i.avy = shufflevector <4 x float> %i.avx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.avz = fmul <4 x float> %i.avx, %i.avy
  %i.awa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ave, <4 x float> %i.avz, <4 x float> %i.avh) ; 4 uses
  %i.awb = shufflevector <4 x float> %i.avx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.awc = shufflevector <4 x float> %i.avx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.0210.i.i
  %i.awe = extractelement <4 x float> %i.avx, i64 0
  %i.awf = extractelement <4 x float> %i.avx, i64 1
  %i.awg = call float @llvm.fmuladd.f32(float %i.auz, float %i.awe, float %i.avl)
  %i.awh = call float @llvm.fmuladd.f32(float %i.ava, float %i.awf, float %i.awg)
  %i.awi = extractelement <4 x float> %i.avx, i64 2
  %i.awj = call float @llvm.fmuladd.f32(float %i.avc, float %i.awi, float %i.awh) ; 4 uses
  %i.awk = insertelement <4 x float> poison, float %i.awj, i64 0
  %i.awl = shufflevector <4 x float> %i.avx, <4 x float> %i.awk, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.awm = fmul <4 x float> %i.awb, %i.awl
  %i.awn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ave, <4 x float> %i.awm, <4 x float> %i.avi) ; 4 uses
  %i.awo = insertelement <2 x float> %i.awc, float %i.awj, i64 1
  %i.awp = insertelement <2 x float> poison, float %i.awj, i64 0
  %i.awq = shufflevector <2 x float> %i.awp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awr = fmul <2 x float> %i.awo, %i.awq
  %i.aws = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avg, <2 x float> %i.awr, <2 x float> %i.avj) ; 4 uses
  %i.awt = insertelement <4 x float> %i.avx, float %i.awj, i64 3
  %i.awu = fmul <4 x float> %i.ave, %i.awt
  store <4 x float> %i.awu, ptr %i.awd, align 16, !tbaa !44
  %i.awv = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i484 = icmp eq i64 %i.awv, %.0330
  br i1 %exitcond.not.i.i484, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.aww = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.asf ; 5 uses
  %i.awx = load <4 x float>, ptr %i.aww, align 4, !tbaa !44
  %i.awy = fadd <4 x float> %i.awa, %i.awx
  store <4 x float> %i.awy, ptr %i.aww, align 4, !tbaa !44
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 16 ; 2 uses
  %i.axa = load <4 x float>, ptr %i.awz, align 4, !tbaa !44
  %i.axb = fadd <4 x float> %i.awn, %i.axa
  store <4 x float> %i.axb, ptr %i.awz, align 4, !tbaa !44
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aww, i64 32 ; 2 uses
  %i.axd = load <2 x float>, ptr %i.axc, align 4, !tbaa !44
  %i.axe = fadd <2 x float> %i.aws, %i.axd
  store <2 x float> %i.axe, ptr %i.axc, align 4, !tbaa !44
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aww, i64 40 ; 2 uses
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !48
  %i.axh = fadd float %i.aty, %i.axg
  store float %i.axh, ptr %i.axf, align 4, !tbaa !48
  %i.axi = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.ash ; 5 uses
  %i.axj = load <4 x float>, ptr %i.axi, align 4, !tbaa !44
  %i.axk = fadd <4 x float> %i.awa, %i.axj
  store <4 x float> %i.axk, ptr %i.axi, align 4, !tbaa !44
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axi, i64 16 ; 2 uses
  %i.axm = load <4 x float>, ptr %i.axl, align 4, !tbaa !44
  %i.axn = fadd <4 x float> %i.awn, %i.axm
  store <4 x float> %i.axn, ptr %i.axl, align 4, !tbaa !44
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axi, i64 32 ; 2 uses
  %i.axp = load <2 x float>, ptr %i.axo, align 4, !tbaa !44
  %i.axq = fadd <2 x float> %i.aws, %i.axp
  store <2 x float> %i.axq, ptr %i.axo, align 4, !tbaa !44
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axi, i64 40 ; 2 uses
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !48
  %i.axt = fadd float %i.aty, %i.axs
  store float %i.axt, ptr %i.axr, align 4, !tbaa !48
end_hunk_0
