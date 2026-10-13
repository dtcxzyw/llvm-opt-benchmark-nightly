Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.033.i
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !28
  %i.aku = zext i32 %i.akt to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.akv = phi i64 [ %i.aku, %bb.cs ], [ %.033.i, %bb.cr ]
  br i1 %.not31.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.akw = getelementptr inbounds nuw i8, ptr %10, i64 %i.akv
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !29
  %i.aky = and i8 %i.akx, 4
  %.not32.i473 = icmp eq i8 %i.aky, 0
  %i.akz = select i1 %.not32.i473, float %i.ako, float 1.000000e+00
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ala = phi float [ %i.ako, %bb.ct ], [ %i.akz, %bb.cu ]
  %i.alb = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.033.i ; 2 uses
  %i.alc = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %.033.i ; 6 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 40
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !46 ; 3 uses
  %i.alg = load <4 x float>, ptr %i.alc, align 4, !tbaa !44
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.ali = load <4 x float>, ptr %i.alh, align 4, !tbaa !44
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alc, i64 32 ; 2 uses
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !130
  %i.all = getelementptr inbounds nuw i8, ptr %i.alc, i64 36 ; 2 uses
  %i.alm = load float, ptr %i.ald, align 4, !tbaa !48
  %i.aln = load <2 x float>, ptr %i.all, align 4, !tbaa !44
  %i.alo = fmul float %i.ala, %i.alm              ; 5 uses
  %i.alp = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.alo, i64 0
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.alr = fadd <4 x float> %i.alg, %i.alq
  %i.als = load <2 x float>, ptr %i.alb, align 4, !tbaa !44 ; 4 uses
  %foldExtExtBinop1209 = fmul <2 x float> %i.als, %i.als
  %i.alt = extractelement <2 x float> %foldExtExtBinop1209, i64 1
  %i.alu = extractelement <2 x float> %i.als, i64 0 ; 2 uses
  %i.alv = call float @llvm.fmuladd.f32(float %i.alu, float %i.alu, float %i.alt)
  %i.alw = call float @llvm.fmuladd.f32(float %i.alf, float %i.alf, float %i.alv)
  %i.alx = fmul float %i.alo, %i.alw
  store <4 x float> %i.alr, ptr %i.alc, align 4, !tbaa !44
  %i.aly = insertelement <2 x float> poison, float %i.alo, i64 0
  %i.alz = shufflevector <2 x float> %i.als, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ama = shufflevector <2 x float> %i.aly, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.amb = fmul <4 x float> %i.alz, %i.ama
  %i.amc = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, <4 x float> %i.amb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amd = fsub <4 x float> %i.ali, %i.amc
  store <4 x float> %i.amd, ptr %i.alh, align 4, !tbaa !44
  %i.ame = fmul float %i.alo, %i.alf
  %i.amf = fsub float %i.alk, %i.ame
  store float %i.amf, ptr %i.alj, align 4, !tbaa !130
  %i.amg = insertelement <2 x float> poison, float %i.alx, i64 0
  %i.amh = insertelement <2 x float> %i.amg, float %i.alo, i64 1
  %i.ami = fadd <2 x float> %i.amh, %i.aln
  store <2 x float> %i.ami, ptr %i.all, align 4, !tbaa !44
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq
  %i.amj = add nuw i64 %.033.i, 1                 ; 2 uses
  %exitcond.not.i471 = icmp eq i64 %i.amj, %.0703
  br i1 %exitcond.not.i471, label %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit, label %bb.cq, !llvm.loop !86

_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit: ; preds = %bb.cw, %bb.cp
  br i1 %.not87.i, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.preheader.i474

.preheader.i474:                                  ; preds = %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit, %bb.cx
  %.0100.i = phi i64 [ %i.aml, %bb.cx ], [ 0, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit ] ; 2 uses
  %i.amk = getelementptr [4 x i8], ptr %0, i64 %.0100.i ; 3 uses
  br label %bb.cy

bb.cx:                                            ; preds = %bb.de
  %i.aml = add i64 %.0100.i, 3                    ; 2 uses
  %i.amm = icmp ult i64 %i.aml, %2
  br i1 %i.amm, label %.preheader.i474, label %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, !llvm.loop !87

bb.cy:                                            ; preds = %bb.de, %.preheader.i474
  %indvars.iv.i = phi i64 [ 0, %.preheader.i474 ], [ %indvars.iv.next.i, %bb.de ] ; 3 uses
  %i.amn = getelementptr [4 x i8], ptr %i.amk, i64 %indvars.iv.i
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !28 ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_E4next, i64 %indvars.iv.i ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !28
  %i.amr = sext i32 %i.amq to i64
  %i.ams = getelementptr [4 x i8], ptr %i.amk, i64 %i.amr
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !28 ; 2 uses
  %i.amu = zext i32 %i.amo to i64                 ; 4 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.amu
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !29 ; 3 uses
  %i.amx = zext i32 %i.amt to i64                 ; 4 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.amx
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !29 ; 3 uses
  %i.ana = add i8 %i.amw, -3
  %or.cond.i475 = icmp ult i8 %i.ana, -2
  %i.anb = add i8 %i.amz, -3
  %i.anc = icmp ult i8 %i.anb, -2
  %or.cond8.i = select i1 %or.cond.i475, i1 %i.anc, i1 false
  br i1 %or.cond8.i, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.and = icmp eq i8 %i.amw, 1
  %i.ane = add i8 %i.amw, -1
  %or.cond11.i = icmp ult i8 %i.ane, 2
  br i1 %or.cond11.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.amu
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !28
  %.not.i483 = icmp eq i32 %i.ang, %i.amt
  br i1 %.not.i483, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.anh = icmp eq i8 %i.amz, 1
  %i.ani = add i8 %i.amz, -1
  %or.cond14.i = icmp ult i8 %i.ani, 2
  br i1 %or.cond14.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.amx
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !28
  %.not68.i = icmp eq i32 %i.ank, %i.amo
  br i1 %.not68.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amp, i64 4
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !28
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr [4 x i8], ptr %i.amk, i64 %i.ann
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !28
  %i.anq = select i1 %i.and, i1 true, i1 %i.anh
  %i.anr = select i1 %i.anq, float 1.000000e+01, float 5.000000e-01 ; 2 uses
  %i.ans = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.amu ; 2 uses
  %i.ant = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.amx
  %i.anu = zext i32 %i.anp to i64
  %i.anv = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.anu
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.amu
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !28
  %i.any = zext i32 %i.anx to i64
  %i.anz = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %i.any ; 5 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 16 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 32 ; 2 uses
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
  %i.aqc = fcmp ogt <2 x float> %i.aqb, zeroinitializer ; 2 uses
  %i.aqd = shufflevector <2 x i1> %i.aqc, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aqe = extractelement <2 x float> %i.aqb, i64 0
  %sqrt.i.i.i477 = call float @llvm.sqrt.f32(float %i.aqe)
  %i.aqf = insertelement <4 x float> poison, float %sqrt.i.i.i477, i64 0
  %i.aqg = shufflevector <4 x float> %i.aqf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqh = fdiv <4 x float> %i.apv, %i.aqg
  %i.aqi = shufflevector <2 x i1> %i.aqc, <2 x i1> poison, <4 x i32> zeroinitializer
  %i.aqj = select <4 x i1> %i.aqi, <4 x float> %i.aqh, <4 x float> %i.apv ; 6 uses
  %shift1215 = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1216 = fmul <4 x float> %i.aom, %shift1215
  %i.aqk = extractelement <4 x float> %foldExtExtBinop1216, i64 0
  %i.aql = extractelement <4 x float> %i.aqj, i64 0
  %i.aqm = call float @llvm.fmuladd.f32(float %i.aql, float %i.aok, float %i.aqk)
  %i.aqn = extractelement <4 x float> %i.aqj, i64 2 ; 2 uses
  %i.aqo = call float @llvm.fmuladd.f32(float %i.aqn, float %i.apg, float %i.aqm)
  %i.aqp = fneg float %i.aqo                      ; 2 uses
  %i.aqq = fmul float %i.anr, %sqrt.i.i476        ; 3 uses
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqt = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.aqu = fmul <4 x float> %i.aqs, %i.aqt        ; 2 uses
  %i.aqv = fmul float %i.aqq, %i.aqp              ; 3 uses
  %i.aqw = fmul <4 x float> %i.aqj, %i.aqu
  %i.aqx = fmul float %i.aqn, %i.aqv
  %i.aqy = fmul float %i.aqv, %i.aqp
  %18 = extractelement <2 x float> %i.aqb, i64 1
  %sqrt.i.i69.i = call float @llvm.sqrt.f32(float %18) ; 2 uses
  %19 = insertelement <4 x float> poison, float %sqrt.i.i69.i, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = fdiv <4 x float> %i.apl, %20
  %22 = select <4 x i1> %i.aqd, <4 x float> %21, <4 x float> %i.apl ; 6 uses
  %shift1218 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1219 = fmul <4 x float> %i.aom, %shift1218
  %23 = extractelement <4 x float> %foldExtExtBinop1219, i64 0
  %i.aqz = extractelement <4 x float> %22, i64 0
  %i.ara = call float @llvm.fmuladd.f32(float %i.aqz, float %i.aok, float %23)
  %24 = extractelement <4 x float> %22, i64 2     ; 2 uses
  %i.arb = call float @llvm.fmuladd.f32(float %24, float %i.apg, float %i.ara) ; 2 uses
  %i.arc = fneg float %i.arb
  %sqrt.i73.i = call float @llvm.sqrt.f32(float %sqrt.i.i69.i)
  %i.ard = fmul float %i.anr, %sqrt.i73.i         ; 2 uses
  %25 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.are = insertelement <4 x float> poison, float %i.ard, i64 0
  %i.arf = shufflevector <4 x float> %i.are, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arg = fmul <4 x float> %25, %i.arf           ; 2 uses
  %i.arh = fmul float %i.ard, %i.arc              ; 3 uses
  %i.ari = fmul <4 x float> %22, %i.arg
  %i.arj = fmul float %24, %i.arh
  %i.ark = fadd <4 x float> %i.ari, %i.aqw        ; 2 uses
  %i.arl = fadd float %i.arj, %i.aqx
  %i.arm = fmul float %i.arb, %i.arh
  %i.arn = fsub float %i.aqy, %i.arm
  %i.aro = fadd float %i.aqq, 0.000000e+00        ; 2 uses
  %i.arp = fadd <4 x float> %i.apm, %i.ark
  store <4 x float> %i.arp, ptr %i.anz, align 4, !tbaa !44
  %i.arq = insertelement <2 x float> poison, float %i.arl, i64 0
  %i.arr = insertelement <2 x float> %i.arq, float %i.arn, i64 1 ; 2 uses
  %i.ars = fadd <2 x float> %i.arr, %i.apq
  store <2 x float> %i.ars, ptr %i.aob, align 4, !tbaa !44
  %i.art = fadd float %i.aro, %i.aod
  store float %i.art, ptr %i.aoc, align 4, !tbaa !48
  %i.aru = load <4 x float>, ptr %i.aoh, align 4, !tbaa !44
  %i.arv = fadd <4 x float> %i.ark, %i.aru
  store <4 x float> %i.arv, ptr %i.aoh, align 4, !tbaa !44
  %i.arw = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.arx = shufflevector <4 x float> %i.aqu, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ary = insertelement <2 x float> %i.arx, float %i.aqv, i64 1
  %i.arz = shufflevector <2 x float> %i.ary, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.asa = fmul <4 x float> %i.arw, %i.arz
  %26 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asb = shufflevector <4 x float> %i.arg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.asc = insertelement <2 x float> %i.asb, float %i.arh, i64 1
  %i.asd = shufflevector <2 x float> %i.asc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ase = fmul <4 x float> %26, %i.asd
  %i.asf = fadd <4 x float> %i.ase, %i.asa        ; 2 uses
  %i.asg = fadd <4 x float> %i.apo, %i.asf
  store <4 x float> %i.asg, ptr %i.aoa, align 4, !tbaa !44
  %i.ash = load <4 x float>, ptr %i.apn, align 4, !tbaa !44
  %i.asi = fadd <4 x float> %i.asf, %i.ash
  store <4 x float> %i.asi, ptr %i.apn, align 4, !tbaa !44
  %i.asj = load <2 x float>, ptr %i.app, align 4, !tbaa !44
  %i.ask = fadd <2 x float> %i.arr, %i.asj
  store <2 x float> %i.ask, ptr %i.app, align 4, !tbaa !44
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aoh, i64 40 ; 2 uses
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !48
  %i.asn = fadd float %i.aro, %i.asm
  store float %i.asn, ptr %i.asl, align 4, !tbaa !48
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i481 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i481, label %bb.cx, label %bb.cy, !llvm.loop !88

_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit: ; preds = %bb.cx
  br i1 %.not403, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, label %.lr.ph.i485.preheader

.lr.ph.i485.preheader:                            ; preds = %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit
  %i.aso = add i64 %.0330, -1                     ; 3 uses
  %xtraiter1322 = and i64 %.0330, 1
  %i.asp = icmp eq i64 %i.aso, 0
  %unroll_iter1326 = and i64 %.0330, -2
  %lcmp.mod1324.not = icmp eq i64 %xtraiter1322, 0
  %lcmp.mod1325 = trunc i64 %.0330 to i1
  %xtraiter1329 = and i64 %.0330, 1
  %i.asq = icmp eq i64 %i.aso, 0
  %unroll_iter1333 = and i64 %.0330, -2
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1329, 0
  %lcmp.mod1332 = trunc i64 %.0330 to i1
  %xtraiter1336 = and i64 %.0330, 1
  %i.asr = icmp eq i64 %i.aso, 0
  %unroll_iter1340 = and i64 %.0330, -2
  %lcmp.mod1338.not = icmp eq i64 %xtraiter1336, 0
  %lcmp.mod1339 = trunc i64 %.0330 to i1
  br label %.lr.ph.i485

.lr.ph.i485:                                      ; preds = %.lr.ph.i485.preheader, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i
  %.080.i = phi i64 [ %i.baz, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i ], [ 0, %.lr.ph.i485.preheader ] ; 2 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.080.i ; 3 uses
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !28
  %i.asu = getelementptr i8, ptr %i.ass, i64 4
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !28
  %i.asw = getelementptr i8, ptr %i.ass, i64 8
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.asy = zext i32 %i.ast to i64                 ; 3 uses
  %i.asz = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.asy ; 2 uses
  %i.ata = zext i32 %i.asv to i64                 ; 3 uses
  %i.atb = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.ata
  %i.atc = zext i32 %i.asx to i64                 ; 3 uses
  %i.atd = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.atc
  %i.ate = mul i64 %.0330, %i.asy                 ; 2 uses
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.ate
  %i.atg = mul i64 %.0330, %i.ata                 ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.atg
  %i.ati = mul i64 %.0330, %i.atc                 ; 2 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.ati
  %i.atk = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.atl = load <3 x float>, ptr %i.atb, align 4, !tbaa !44
  %i.atm = shufflevector <3 x float> %i.atl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.atn = load <3 x float>, ptr %i.asz, align 4, !tbaa !44 ; 3 uses
  %i.ato = shufflevector <3 x float> %i.atn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.atp = load float, ptr %i.atk, align 4, !tbaa !50
  %i.atq = fsub <4 x float> %i.atm, %i.ato        ; 10 uses
  %i.atr = load <3 x float>, ptr %i.atd, align 4, !tbaa !44
  %i.ats = shufflevector <3 x float> %i.atr, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.att = fsub <4 x float> %i.ats, %i.ato        ; 8 uses
  %i.atu = fneg <4 x float> %i.att                ; 2 uses
  %i.atv = extractelement <4 x float> %i.atq, i64 2
  %i.atw = extractelement <4 x float> %i.att, i64 2 ; 3 uses
  %i.atx = shufflevector <4 x float> %i.atq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.aty = shufflevector <4 x float> %i.atu, <4 x float> %i.atq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atz = fmul <4 x float> %i.atx, %i.aty
  %i.aua = shufflevector <4 x float> %i.atq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.aub = shufflevector <4 x float> %i.att, <4 x float> %i.atq, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.auc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aua, <4 x float> %i.aub, <4 x float> %i.atz) ; 5 uses
  %i.aud = extractelement <4 x float> %i.auc, i64 0 ; 2 uses
  %i.aue = shufflevector <4 x float> %i.auc, <4 x float> %i.atq, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.auf = shufflevector <4 x float> %i.aue, <4 x float> %i.att, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aug = shufflevector <4 x float> %i.auc, <4 x float> %i.att, <4 x i32> <i32 2, i32 poison, i32 5, i32 5>
  %i.auh = insertelement <4 x float> %i.aug, float 1.000000e+00, i64 1
  %i.aui = fmul <4 x float> %i.auf, %i.auh
  %i.auj = shufflevector <4 x float> %i.auc, <4 x float> %i.atq, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %i.auk = shufflevector <4 x float> %i.auj, <4 x float> %i.att, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aul = shufflevector <4 x float> %i.auc, <4 x float> %i.att, <4 x i32> <i32 1, i32 poison, i32 4, i32 4>
  %i.aum = shufflevector <4 x float> %i.aul, <4 x float> %i.atq, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.aun = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.auk, <4 x float> %i.aum, <4 x float> %i.aui) ; 5 uses
  %i.auo = extractelement <4 x float> %i.aun, i64 0
  %i.aup = call float @llvm.fmuladd.f32(float %i.aud, float %i.aud, float %i.auo)
  %sqrt.i.i486 = call float @llvm.sqrt.f32(float %i.aup)
  %i.auq = fmul float %sqrt.i.i486, 5.000000e-01  ; 5 uses
  %i.aur = extractelement <4 x float> %i.aun, i64 2
  %i.aus = call float @llvm.fmuladd.f32(float %i.atv, float %i.atw, float %i.aur) ; 3 uses
  %i.aut = extractelement <4 x float> %i.aun, i64 3
  %i.auu = call float @llvm.fmuladd.f32(float %i.atw, float %i.atw, float %i.aut) ; 2 uses
  %i.auv = fneg float %i.aus
  %i.auw = fmul float %i.aus, %i.auv
  %i.aux = extractelement <4 x float> %i.aun, i64 1
  %i.auy = call float @llvm.fmuladd.f32(float %i.aux, float %i.auu, float %i.auw) ; 2 uses
  %i.auz = fcmp oeq float %i.auy, 0.000000e+00
  %i.ava = fdiv float 1.000000e+00, %i.auy
  %i.avb = select i1 %i.auz, float 0.000000e+00, float %i.ava
  %i.avc = insertelement <4 x float> poison, float %i.aus, i64 0
  %i.avd = shufflevector <4 x float> %i.avc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ave = fmul <4 x float> %i.avd, %i.atu
  %i.avf = insertelement <4 x float> poison, float %i.auu, i64 0
  %i.avg = shufflevector <4 x float> %i.avf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avg, <4 x float> %i.atq, <4 x float> %i.ave)
  %i.avi = fneg <4 x float> %i.atq
  %i.avj = fmul <4 x float> %i.avd, %i.avi
  %i.avk = shufflevector <4 x float> %i.aun, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.avl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avk, <4 x float> %i.att, <4 x float> %i.avj)
  %i.avm = insertelement <4 x float> poison, float %i.avb, i64 0
  %i.avn = shufflevector <4 x float> %i.avm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avo = fmul <4 x float> %i.avh, %i.avn
  %i.avp = fmul <4 x float> %i.avl, %i.avn
  %i.avq = extractelement <3 x float> %i.atn, i64 0
  %i.avr = fneg float %i.avq
  %i.avs = fneg float %i.atp
  %i.avt = extractelement <3 x float> %i.atn, i64 2
  %i.avu = fneg float %i.avt
  %i.avv = insertelement <4 x float> poison, float %i.auq, i64 0
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.avx = insertelement <2 x float> poison, float %i.auq, i64 0
  %i.avy = shufflevector <2 x float> %i.avx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i485
  %.0210.i.i = phi i64 [ 0, %.lr.ph.i485 ], [ %i.axm, %bb.df ] ; 5 uses
  %i.avz = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.aws, %bb.df ]
  %i.awa = phi <4 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axe, %bb.df ]
  %i.awb = phi <2 x float> [ zeroinitializer, %.lr.ph.i485 ], [ %i.axj, %bb.df ]
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %.0210.i.i
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !44 ; 3 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %.0210.i.i
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !44
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %.0210.i.i
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !44
  %i.awi = fsub float %i.awf, %i.awd
  %i.awj = fsub float %i.awh, %i.awd
  %i.awk = insertelement <4 x float> poison, float %i.awj, i64 0
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awm = fmul <4 x float> %i.avp, %i.awl
  %i.awn = insertelement <4 x float> poison, float %i.awi, i64 0
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avo, <4 x float> %i.awo, <4 x float> %i.awm) ; 9 uses
  %i.awq = shufflevector <4 x float> %i.awp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.awr = fmul <4 x float> %i.awp, %i.awq
  %i.aws = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avw, <4 x float> %i.awr, <4 x float> %i.avz) ; 4 uses
  %i.awt = shufflevector <4 x float> %i.awp, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.awu = shufflevector <4 x float> %i.awp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.awv = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.0210.i.i
  %i.aww = extractelement <4 x float> %i.awp, i64 0
  %i.awx = extractelement <4 x float> %i.awp, i64 1
  %i.awy = call float @llvm.fmuladd.f32(float %i.avr, float %i.aww, float %i.awd)
  %i.awz = call float @llvm.fmuladd.f32(float %i.avs, float %i.awx, float %i.awy)
  %27 = extractelement <4 x float> %i.awp, i64 2
  %i.axa = call float @llvm.fmuladd.f32(float %i.avu, float %27, float %i.awz) ; 4 uses
  %i.axb = insertelement <4 x float> poison, float %i.axa, i64 0
  %i.axc = shufflevector <4 x float> %i.awp, <4 x float> %i.axb, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.axd = fmul <4 x float> %i.awt, %i.axc
  %i.axe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avw, <4 x float> %i.axd, <4 x float> %i.awa) ; 4 uses
  %i.axf = insertelement <2 x float> %i.awu, float %i.axa, i64 1
  %i.axg = insertelement <2 x float> poison, float %i.axa, i64 0
  %i.axh = shufflevector <2 x float> %i.axg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axi = fmul <2 x float> %i.axf, %i.axh
  %i.axj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avy, <2 x float> %i.axi, <2 x float> %i.awb) ; 4 uses
  %i.axk = insertelement <4 x float> %i.awp, float %i.axa, i64 3
  %i.axl = fmul <4 x float> %i.avw, %i.axk
  store <4 x float> %i.axl, ptr %i.awv, align 16, !tbaa !44
  %i.axm = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.axm, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.axn = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.asy ; 5 uses
  %i.axo = load <4 x float>, ptr %i.axn, align 4, !tbaa !44
  %i.axp = fadd <4 x float> %i.aws, %i.axo
  store <4 x float> %i.axp, ptr %i.axn, align 4, !tbaa !44
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axn, i64 16 ; 2 uses
  %i.axr = load <4 x float>, ptr %i.axq, align 4, !tbaa !44
  %i.axs = fadd <4 x float> %i.axe, %i.axr
  store <4 x float> %i.axs, ptr %i.axq, align 4, !tbaa !44
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axn, i64 32 ; 2 uses
  %i.axu = load <2 x float>, ptr %i.axt, align 4, !tbaa !44
  %i.axv = fadd <2 x float> %i.axj, %i.axu
  store <2 x float> %i.axv, ptr %i.axt, align 4, !tbaa !44
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axn, i64 40 ; 2 uses
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !48
  %i.axy = fadd float %i.auq, %i.axx
  store float %i.axy, ptr %i.axw, align 4, !tbaa !48
  %i.axz = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.ata ; 5 uses
  %i.aya = load <4 x float>, ptr %i.axz, align 4, !tbaa !44
  %i.ayb = fadd <4 x float> %i.aws, %i.aya
  store <4 x float> %i.ayb, ptr %i.axz, align 4, !tbaa !44
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axz, i64 16 ; 2 uses
  %i.ayd = load <4 x float>, ptr %i.ayc, align 4, !tbaa !44
  %i.aye = fadd <4 x float> %i.axe, %i.ayd
  store <4 x float> %i.aye, ptr %i.ayc, align 4, !tbaa !44
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axz, i64 32 ; 2 uses
  %i.ayg = load <2 x float>, ptr %i.ayf, align 4, !tbaa !44
  %i.ayh = fadd <2 x float> %i.axj, %i.ayg
  store <2 x float> %i.ayh, ptr %i.ayf, align 4, !tbaa !44
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axz, i64 40 ; 2 uses
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !48
  %i.ayk = fadd float %i.auq, %i.ayj
  store float %i.ayk, ptr %i.ayi, align 4, !tbaa !48
  %i.ayl = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atc ; 5 uses
  %i.aym = load <4 x float>, ptr %i.ayl, align 4, !tbaa !44
  %i.ayn = fadd <4 x float> %i.aws, %i.aym
  store <4 x float> %i.ayn, ptr %i.ayl, align 4, !tbaa !44
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayl, i64 16 ; 2 uses
  %i.ayp = load <4 x float>, ptr %i.ayo, align 4, !tbaa !44
  %i.ayq = fadd <4 x float> %i.axe, %i.ayp
  store <4 x float> %i.ayq, ptr %i.ayo, align 4, !tbaa !44
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32 ; 2 uses
  %i.ays = load <2 x float>, ptr %i.ayr, align 4, !tbaa !44
  %i.ayt = fadd <2 x float> %i.axj, %i.ays
  store <2 x float> %i.ayt, ptr %i.ayr, align 4, !tbaa !44
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayl, i64 40 ; 2 uses
  %i.ayv = load float, ptr %i.ayu, align 4, !tbaa !48
  %i.ayw = fadd float %i.auq, %i.ayv
  store float %i.ayw, ptr %i.ayu, align 4, !tbaa !48
  %i.ayx = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.ate ; 3 uses
  br i1 %i.asp, label %.epil.preheader1321, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.azj, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1327 = phi i64 [ %niter1327.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.ayy = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %i.ayx, i64 %.018.i.i ; 2 uses
  %i.aza = load <4 x float>, ptr %i.ayy, align 16, !tbaa !44
  %i.azb = load <4 x float>, ptr %i.ayz, align 4, !tbaa !44
  %i.azc = fadd <4 x float> %i.aza, %i.azb
  store <4 x float> %i.azc, ptr %i.ayz, align 4, !tbaa !44
  %i.azd = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.aze = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azd
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %i.ayx, i64 %i.azd ; 2 uses
  %i.azg = load <4 x float>, ptr %i.aze, align 16, !tbaa !44
  %i.azh = load <4 x float>, ptr %i.azf, align 4, !tbaa !44
  %i.azi = fadd <4 x float> %i.azg, %i.azh
  store <4 x float> %i.azi, ptr %i.azf, align 4, !tbaa !44
  %i.azj = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1327.next.1 = add nuw i64 %niter1327, 2   ; 2 uses
  %niter1327.ncmp.1 = icmp eq i64 %niter1327.next.1, %unroll_iter1326
  br i1 %niter1327.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1324.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1321

.epil.preheader1321:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.azj, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1325)
  %i.azk = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.azl = getelementptr inbounds nuw [16 x i8], ptr %i.ayx, i64 %.018.i.i.epil.init ; 2 uses
  %i.azm = load <4 x float>, ptr %i.azk, align 16, !tbaa !44
  %i.azn = load <4 x float>, ptr %i.azl, align 4, !tbaa !44
  %i.azo = fadd <4 x float> %i.azm, %i.azn
  store <4 x float> %i.azo, ptr %i.azl, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1321
  %i.azp = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atg ; 3 uses
  br i1 %i.asq, label %.epil.preheader1328, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.bab, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1334 = phi i64 [ %niter1334.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.azq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %i.azp, i64 %.018.i43.i ; 2 uses
  %i.azs = load <4 x float>, ptr %i.azq, align 16, !tbaa !44
  %i.azt = load <4 x float>, ptr %i.azr, align 4, !tbaa !44
  %i.azu = fadd <4 x float> %i.azs, %i.azt
  store <4 x float> %i.azu, ptr %i.azr, align 4, !tbaa !44
  %i.azv = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.azw = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azv
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.azp, i64 %i.azv ; 2 uses
  %i.azy = load <4 x float>, ptr %i.azw, align 16, !tbaa !44
  %i.azz = load <4 x float>, ptr %i.azx, align 4, !tbaa !44
  %i.baa = fadd <4 x float> %i.azy, %i.azz
  store <4 x float> %i.baa, ptr %i.azx, align 4, !tbaa !44
  %i.bab = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1334.next.1 = add nuw i64 %niter1334, 2   ; 2 uses
  %niter1334.ncmp.1 = icmp eq i64 %niter1334.next.1, %unroll_iter1333
  br i1 %niter1334.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1331.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1328

.epil.preheader1328:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.bab, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1332)
  %i.bac = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.azp, i64 %.018.i43.i.epil.init ; 2 uses
  %i.bae = load <4 x float>, ptr %i.bac, align 16, !tbaa !44
  %i.baf = load <4 x float>, ptr %i.bad, align 4, !tbaa !44
  %i.bag = fadd <4 x float> %i.bae, %i.baf
  store <4 x float> %i.bag, ptr %i.bad, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1328
  %i.bah = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.ati ; 3 uses
  br i1 %i.asr, label %.epil.preheader1335, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bat, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1341 = phi i64 [ %niter1341.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.bai = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %i.bah, i64 %.018.i46.i ; 2 uses
  %i.bak = load <4 x float>, ptr %i.bai, align 16, !tbaa !44
  %i.bal = load <4 x float>, ptr %i.baj, align 4, !tbaa !44
  %i.bam = fadd <4 x float> %i.bak, %i.bal
  store <4 x float> %i.bam, ptr %i.baj, align 4, !tbaa !44
  %i.ban = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.bao = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.ban
  %i.bap = getelementptr inbounds nuw [16 x i8], ptr %i.bah, i64 %i.ban ; 2 uses
  %i.baq = load <4 x float>, ptr %i.bao, align 16, !tbaa !44
  %i.bar = load <4 x float>, ptr %i.bap, align 4, !tbaa !44
  %i.bas = fadd <4 x float> %i.baq, %i.bar
  store <4 x float> %i.bas, ptr %i.bap, align 4, !tbaa !44
  %i.bat = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1341.next.1 = add nuw i64 %niter1341, 2   ; 2 uses
  %niter1341.ncmp.1 = icmp eq i64 %niter1341.next.1, %unroll_iter1340
  br i1 %niter1341.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1338.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1335

.epil.preheader1335:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bat, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1339)
  %i.bau = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.bav = getelementptr inbounds nuw [16 x i8], ptr %i.bah, i64 %.018.i46.i.epil.init ; 2 uses
  %i.baw = load <4 x float>, ptr %i.bau, align 16, !tbaa !44
  %i.bax = load <4 x float>, ptr %i.bav, align 4, !tbaa !44
  %i.bay = fadd <4 x float> %i.baw, %i.bax
  store <4 x float> %i.bay, ptr %i.bav, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1335
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.baz = add i64 %.080.i, 3                     ; 2 uses
  %i.bba = icmp ult i64 %i.baz, %2
  br i1 %i.bba, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.bbb = and i32 %13, 8
  %.not405 = icmp ne i32 %i.bbb, 0                ; 3 uses
  br i1 %.not405, label %bb.dg, label %.loopexit726

bb.dg:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bbc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbd = invoke noundef ptr %i.bbc(i64 noundef %i.iu)
          to label %bb.dh unwind label %bb.dj, !inline_history !4 ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  %i.bbe = load i64, ptr %i.ek, align 8, !tbaa !26 ; 3 uses
  %i.bbf = add nuw nsw i64 %i.bbe, 1              ; 2 uses
end_hunk_0
