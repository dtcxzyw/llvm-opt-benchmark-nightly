Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/curve_intersector_virtual_4v?download=true
inline.NumInlined: 1827
inline.NumDeleted: 58
begin_hunk_0_@_ZN6embree4sse219CurveNiIntersector1ILi4EE11intersect_nINS0_26OrientedCurve1Intersector1INS_12BezierCurveTELi3ELi4EEENS0_17Intersect1Epilog1ILb1EEEEEvRKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aij = fmul <2 x float> %i.aii, %i.ahu        ; 4 uses
  %i.aik = fmul <2 x float> %i.aii, %i.ahv        ; 4 uses
  %i.ail = fcmp olt <2 x float> %i.aij, %i.aik    ; 3 uses
  %i.aim = extractelement <2 x i1> %i.ail, i64 0
  %i.ain = extractelement <2 x float> %i.aij, i64 0
  %i.aio = extractelement <2 x float> %i.aik, i64 0
  %i.aip = select i1 %i.aim, float %i.aio, float %i.ain ; 2 uses
  %i.aiq = fcmp olt float %i.aih, %i.aip
  %i.air = select i1 %i.aiq, float %i.aip, float %i.aih
  %i.ais = select <2 x i1> %i.aid, <2 x float> %i.aib, <2 x float> %i.aic ; 2 uses
  %i.ait = select <2 x i1> %i.ail, <2 x float> %i.aij, <2 x float> %i.aik ; 2 uses
  %i.aiu = fcmp olt <2 x float> %i.ais, %i.ait
  %i.aiv = select <2 x i1> %i.aiu, <2 x float> %i.ais, <2 x float> %i.ait
  %i.aiw = shufflevector <4 x float> %i.ahz, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aix = fmul <2 x float> %i.aiw, %i.ahw        ; 4 uses
  %i.aiy = fmul <2 x float> %i.aiw, %i.ahx        ; 4 uses
  %i.aiz = fcmp olt <2 x float> %i.aix, %i.aiy    ; 3 uses
  %i.aja = extractelement <2 x i1> %i.aiz, i64 0
  %i.ajb = extractelement <2 x float> %i.aix, i64 0
  %i.ajc = extractelement <2 x float> %i.aiy, i64 0
  %i.ajd = select i1 %i.aja, float %i.ajc, float %i.ajb ; 2 uses
  %i.aje = shufflevector <4 x float> %i.ahz, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajf = fmul <2 x float> %i.aje, %i.ahw        ; 4 uses
  %i.ajg = fmul <2 x float> %i.aje, %i.ahx        ; 4 uses
  %i.ajh = fcmp olt <2 x float> %i.ajf, %i.ajg    ; 3 uses
  %i.aji = extractelement <2 x i1> %i.ajh, i64 0
  %i.ajj = extractelement <2 x float> %i.ajf, i64 0
  %i.ajk = extractelement <2 x float> %i.ajg, i64 0
  %i.ajl = select i1 %i.aji, float %i.ajk, float %i.ajj ; 2 uses
  %i.ajm = fcmp olt float %i.ajd, %i.ajl
  %i.ajn = select i1 %i.ajm, float %i.ajl, float %i.ajd
  %i.ajo = select <2 x i1> %i.aiz, <2 x float> %i.aix, <2 x float> %i.aiy ; 2 uses
  %i.ajp = select <2 x i1> %i.ajh, <2 x float> %i.ajf, <2 x float> %i.ajg ; 2 uses
  %i.ajq = fcmp olt <2 x float> %i.ajo, %i.ajp
  %i.ajr = select <2 x i1> %i.ajq, <2 x float> %i.ajo, <2 x float> %i.ajp
  %i.ajs = shufflevector <2 x i1> %i.aid, <2 x i1> %i.aiz, <2 x i32> <i32 1, i32 3>
  %i.ajt = shufflevector <2 x float> %i.aic, <2 x float> %i.aiy, <2 x i32> <i32 1, i32 3>
  %i.aju = shufflevector <2 x float> %i.aib, <2 x float> %i.aix, <2 x i32> <i32 1, i32 3>
  %i.ajv = select <2 x i1> %i.ajs, <2 x float> %i.ajt, <2 x float> %i.aju ; 2 uses
  %i.ajw = shufflevector <2 x i1> %i.ail, <2 x i1> %i.ajh, <2 x i32> <i32 1, i32 3>
  %i.ajx = shufflevector <2 x float> %i.aik, <2 x float> %i.ajg, <2 x i32> <i32 1, i32 3>
  %i.ajy = shufflevector <2 x float> %i.aij, <2 x float> %i.ajf, <2 x i32> <i32 1, i32 3>
  %i.ajz = select <2 x i1> %i.ajw, <2 x float> %i.ajx, <2 x float> %i.ajy ; 2 uses
  %i.aka = fcmp olt <2 x float> %i.ajv, %i.ajz
  %i.akb = select <2 x i1> %i.aka, <2 x float> %i.ajz, <2 x float> %i.ajv ; 2 uses
  %i.akc = fadd float %i.air, %i.ajn
  %i.akd = fadd <2 x float> %i.aiv, %i.ajr
  %shift3497 = shufflevector <2 x float> %i.akb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3498 = fadd <2 x float> %i.akb, %shift3497
  %i.ake = extractelement <2 x float> %foldExtExtBinop3498, i64 0
  %i.akf = fadd float %.sroa.01479.0.vec.extract, %i.akc ; 2 uses
  %i.akg = shufflevector <4 x float> %i.agl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.akh = fadd <2 x float> %i.akg, %i.akd        ; 3 uses
  %i.aki = fadd float %.sroa.01479.4.vec.extract, %i.ake ; 2 uses
  %i.akj = extractelement <2 x float> %i.akh, i64 0 ; 2 uses
  %i.akk = fcmp olt float %i.akj, %i.vo
  %i.akl = select i1 %i.akk, float %i.vo, float %i.akj
  %i.akm = fcmp olt float %i.akf, %i.vp           ; 2 uses
  %i.akn = select i1 %i.akm, float %i.akf, float %i.vp
  %i.ako = extractelement <2 x float> %i.akh, i64 1 ; 2 uses
  %i.akp = fcmp olt float %i.ako, %i.acx
  %i.akq = select i1 %i.akp, float %i.acx, float %i.ako
  %i.akr = fcmp olt float %i.aki, %i.acy          ; 2 uses
  %i.aks = select i1 %i.akr, float %i.aki, float %i.acy
  %i.akt = fcmp ogt float %i.akl, %i.akn
  %i.aku = fcmp ogt float %i.akq, %i.aks
  %or.cond = select i1 %i.akt, i1 true, i1 %i.aku, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit: ; preds = %bb.r
  %i.akv = shufflevector <2 x float> %i.vn, <2 x float> %i.acw, <2 x i32> <i32 0, i32 2>
  %i.akw = fcmp ogt <2 x float> %i.akh, %i.akv    ; 2 uses
  %i.akx = extractelement <2 x i1> %i.akw, i64 0
  %i.aky = and i1 %i.akx, %i.akm
  %i.akz = extractelement <2 x i1> %i.akw, i64 1
  %i.ala = select i1 %i.aky, i1 %i.akz, i1 false
  %i.alb = select i1 %i.ala, i1 %i.akr, i1 false
  %.demorgan.i = or i1 %i.vv, %i.alb
  br i1 %.demorgan.i, label %.critedge.i42, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i42
  %i.alc = add nuw nsw i64 %.026.i3379, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.alc, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %.critedge.i42, !llvm.loop !4

.critedge.i42:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit, %bb.s
  %.026.i3379 = phi i64 [ %i.alc, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit ]
  %.sroa.02139.03378 = phi <4 x float> [ %i.amk, %bb.s ], [ %i.agl, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit ] ; 6 uses
  %.sroa.02139.0.vec.extract = extractelement <4 x float> %.sroa.02139.03378, i64 0 ; 2 uses
  %i.ald = fsub float 1.000000e+00, %.sroa.02139.0.vec.extract ; 4 uses
  %i.ale = fmul float %i.ald, %i.ald              ; 2 uses
  %i.alf = fmul float %i.ald, %i.ale
  %i.alg = fmul float %.sroa.02139.0.vec.extract, 3.000000e+00
  %i.alh = fmul float %i.alg, %i.ale
  %foldExtExtBinop3500 = fmul <4 x float> %.sroa.02139.03378, %.sroa.02139.03378 ; 2 uses
  %i.ali = extractelement <4 x float> %foldExtExtBinop3500, i64 0
  %i.alj = fmul float %i.ali, 3.000000e+00
  %i.alk = fmul float %i.ald, %i.alj
  %foldExtExtBinop3502 = fmul <4 x float> %.sroa.02139.03378, %foldExtExtBinop3500
  %i.all = insertelement <4 x float> poison, float %i.alf, i64 0
  %i.alm = shufflevector <4 x float> %i.all, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aln = insertelement <4 x float> poison, float %i.alh, i64 0
  %i.alo = shufflevector <4 x float> %i.aln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alp = insertelement <4 x float> poison, float %i.alk, i64 0
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alr = shufflevector <4 x float> %foldExtExtBinop3502, <4 x float> poison, <4 x i32> zeroinitializer
  %i.als = fmul <4 x float> %i.tb, %i.alr
  %i.alt = fmul <4 x float> %i.ta, %i.alq
  %i.alu = fadd <4 x float> %i.als, %i.alt
  %i.alv = fmul <4 x float> %i.sz, %i.alo
  %i.alw = fadd <4 x float> %i.alv, %i.alu
  %i.alx = fmul <4 x float> %i.sy, %i.alm
  %i.aly = fadd <4 x float> %i.alx, %i.alw        ; 2 uses
  %i.alz = shufflevector <4 x float> %i.aly, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ama = shufflevector <4 x float> %i.aly, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.amb = shufflevector <4 x float> %.sroa.02139.03378, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.amc = fsub <4 x float> %i.ama, %i.alz
  %i.amd = fmul <4 x float> %i.amb, %i.amc
  %i.ame = fadd <4 x float> %i.alz, %i.amd        ; 3 uses
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amg = fmul <4 x float> %i.age, %i.amf
  %i.amh = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ami = fmul <4 x float> %i.agf, %i.amh
  %i.amj = fadd <4 x float> %i.amg, %i.ami
  %i.amk = fsub <4 x float> %.sroa.02139.03378, %i.amj ; 10 uses
  %i.aml = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ame) ; 2 uses
  %i.amm = extractelement <4 x float> %i.aml, i64 0 ; 2 uses
  %i.amn = extractelement <4 x float> %i.aml, i64 1 ; 2 uses
  %i.amo = fcmp olt float %i.amm, %i.amn
  %i.amp = select i1 %i.amo, float %i.amn, float %i.amm
  %i.amq = fcmp uge float %i.amp, %i.tr
  br i1 %i.amq, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i42
  %.sroa.02139.0.vec.extract2142 = extractelement <4 x float> %i.amk, i64 0 ; 5 uses
  %.sroa.02139.4.vec.extract2144 = extractelement <4 x float> %i.amk, i64 1 ; 5 uses
  %i.amr = fcmp oge float %.sroa.02139.0.vec.extract2142, 0.000000e+00
  %i.ams = fcmp ole float %.sroa.02139.0.vec.extract2142, 1.000000e+00
  %or.cond.i = and i1 %i.amr, %i.ams
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit

bb.u:                                             ; preds = %bb.t
  %i.amt = fcmp oge float %.sroa.02139.4.vec.extract2144, 0.000000e+00
  %i.amu = fcmp ole float %.sroa.02139.4.vec.extract2144, 1.000000e+00
  %or.cond4.i = and i1 %i.amt, %i.amu
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit

bb.v:                                             ; preds = %bb.u
  %i.amv = load float, ptr %i.ga, align 8, !noalias !3591
  %i.amw = load float, ptr %i.gb, align 8, !noalias !3591
  %i.amx = load float, ptr %i.gc, align 8, !noalias !3591
  %i.amy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.amv, i64 0
  %i.amz = insertelement <4 x float> %i.amy, float %i.amw, i64 1
  %i.ana = insertelement <4 x float> %i.amz, float %i.amx, i64 2 ; 8 uses
  %i.anb = load <4 x float>, ptr %1, align 16, !noalias !3592 ; 9 uses
  %i.anc = fsub <4 x float> %i.pe, %i.anb
  %i.and = fmul <4 x float> %i.ana, %i.anc        ; 3 uses
  %i.ane = fsub <4 x float> %i.px, %i.anb
  %i.anf = fmul <4 x float> %i.ana, %i.ane        ; 3 uses
  %i.ang = fsub <4 x float> %i.pz, %i.anb
  %i.anh = fmul <4 x float> %i.ana, %i.ang        ; 3 uses
  %i.ani = fsub <4 x float> %i.po, %i.anb
  %i.anj = fmul <4 x float> %i.ana, %i.ani        ; 3 uses
  %i.ank = fsub <4 x float> %i.pk, %i.anb
  %i.anl = fmul <4 x float> %i.ana, %i.ank        ; 3 uses
  %i.anm = fsub <4 x float> %i.qb, %i.anb
  %i.ann = fmul <4 x float> %i.ana, %i.anm        ; 3 uses
  %i.ano = fsub <4 x float> %i.qd, %i.anb
  %i.anp = fmul <4 x float> %i.ana, %i.ano        ; 3 uses
  %i.anq = fsub <4 x float> %i.pu, %i.anb
  %i.anr = fmul <4 x float> %i.ana, %i.anq        ; 3 uses
  %i.ans = fsub float 1.000000e+00, %.sroa.02139.4.vec.extract2144
  %i.ant = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anu = shufflevector <4 x float> %i.anl, <4 x float> %i.ann, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.anv = shufflevector <4 x float> %i.anl, <4 x float> %i.ann, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anw = shufflevector <4 x float> %i.anl, <4 x float> %i.ann, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.anx = shufflevector <4 x float> %i.anu, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.any = shufflevector <4 x float> %i.anv, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.anz = shufflevector <4 x float> %i.anw, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aoa = shufflevector <4 x float> %i.anx, <4 x float> %i.anr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aob = shufflevector <4 x float> %i.any, <4 x float> %i.anr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoc = shufflevector <4 x float> %i.anz, <4 x float> %i.anr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aod = fadd <4 x float> %i.aob, %i.aoc
  %i.aoe = fadd <4 x float> %i.aoa, %i.aod
  %i.aof = fmul <4 x float> %i.ant, %i.aoe
  %i.aog = insertelement <4 x float> poison, float %i.ans, i64 0
  %i.aoh = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoi = shufflevector <4 x float> %i.and, <4 x float> %i.anf, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoj = shufflevector <4 x float> %i.and, <4 x float> %i.anf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aok = shufflevector <4 x float> %i.and, <4 x float> %i.anf, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aol = shufflevector <4 x float> %i.aoi, <4 x float> %i.anh, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aom = shufflevector <4 x float> %i.aoj, <4 x float> %i.anh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aon = shufflevector <4 x float> %i.aok, <4 x float> %i.anh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aoo = shufflevector <4 x float> %i.aol, <4 x float> %i.anj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aop = shufflevector <4 x float> %i.aom, <4 x float> %i.anj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoq = shufflevector <4 x float> %i.aon, <4 x float> %i.anj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aor = fadd <4 x float> %i.aop, %i.aoq
  %i.aos = fadd <4 x float> %i.aoo, %i.aor
  %i.aot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoh, <4 x float> %i.aos, <4 x float> %i.aof) ; 4 uses
  %i.aou = fsub float 1.000000e+00, %.sroa.02139.0.vec.extract2142 ; 5 uses
  %i.aov = fmul nnan float %i.aou, %i.aou         ; 2 uses
  %i.aow = fmul float %i.aou, %i.aov              ; 2 uses
  %i.aox = fmul nnan float %.sroa.02139.0.vec.extract2142, 3.000000e+00
  %i.aoy = fmul float %i.aox, %i.aov              ; 2 uses
  %foldExtExtBinop3504 = fmul nnan <4 x float> %i.amk, %i.amk ; 2 uses
  %i.aoz = extractelement <4 x float> %foldExtExtBinop3504, i64 0
  %i.apa = fmul nnan float %i.aoz, 3.000000e+00
  %i.apb = fmul float %i.aou, %i.apa              ; 2 uses
  %foldExtExtBinop3506 = fmul <4 x float> %i.amk, %foldExtExtBinop3504 ; 2 uses
  %shift3508 = shufflevector <4 x float> %i.aot, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3509 = fmul <4 x float> %foldExtExtBinop3506, %shift3508
  %i.apc = extractelement <4 x float> %foldExtExtBinop3509, i64 0
  %i.apd = extractelement <4 x float> %i.aot, i64 2
  %i.ape = call noundef float @llvm.fmuladd.f32(float %i.apb, float %i.apd, float %i.apc)
  %i.apf = extractelement <4 x float> %i.aot, i64 1
  %i.apg = call noundef float @llvm.fmuladd.f32(float %i.aoy, float %i.apf, float %i.ape)
  %i.aph = extractelement <4 x float> %i.aot, i64 0
  %i.api = call noundef float @llvm.fmuladd.f32(float %i.aow, float %i.aph, float %i.apg) ; 4 uses
  %i.apj = extractelement <4 x float> %i.anb, i64 3
  %i.apk = fcmp ugt float %i.apj, %i.api
  br i1 %i.apk, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.apl = load float, ptr %i.ff, align 16        ; 2 uses
  %i.apm = fcmp ugt float %i.api, %i.apl
  br i1 %i.apm, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.apn = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apo = fsub <4 x float> splat (float 1.000000e+00), %i.apn ; 4 uses
  %i.app = fmul <4 x float> %i.pk, %i.apn
  %i.apq = fmul <4 x float> %i.qb, %i.apn
  %i.apr = fmul <4 x float> %i.qd, %i.apn
  %i.aps = fmul <4 x float> %i.pu, %i.apn
  %i.apt = fmul <4 x float> %i.pe, %i.apo
  %i.apu = fadd <4 x float> %i.app, %i.apt
  %i.apv = fmul <4 x float> %i.px, %i.apo
  %i.apw = fadd <4 x float> %i.apq, %i.apv        ; 2 uses
  %i.apx = fmul <4 x float> %i.pz, %i.apo
  %i.apy = fadd <4 x float> %i.apr, %i.apx        ; 2 uses
  %i.apz = fmul <4 x float> %i.po, %i.apo
  %i.aqa = fadd <4 x float> %i.aps, %i.apz
  %i.aqb = fsub <4 x float> %i.apw, %i.apu
  %i.aqc = fsub <4 x float> %i.apy, %i.apw        ; 2 uses
  %i.aqd = fsub <4 x float> %i.aqa, %i.apy
  %i.aqe = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqf = fmul <4 x float> %i.aqe, %i.aqc
  %i.aqg = insertelement <4 x float> poison, float %i.aou, i64 0
  %i.aqh = shufflevector <4 x float> %i.aqg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqi = fmul <4 x float> %i.aqh, %i.aqb
  %i.aqj = fadd <4 x float> %i.aqi, %i.aqf
  %i.aqk = fmul <4 x float> %i.aqe, %i.aqd
  %i.aql = fmul <4 x float> %i.aqh, %i.aqc
  %i.aqm = fadd <4 x float> %i.aql, %i.aqk
  %i.aqn = fmul <4 x float> %i.aqe, %i.aqm
  %i.aqo = fmul <4 x float> %i.aqh, %i.aqj
  %i.aqp = fadd <4 x float> %i.aqo, %i.aqn
  %i.aqq = fmul <4 x float> %i.aqp, splat (float 3.000000e+00) ; 2 uses
  %i.aqr = shufflevector <4 x float> %foldExtExtBinop3506, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqs = fmul <4 x float> %i.ul, %i.aqr
  %i.aqt = insertelement <4 x float> poison, float %i.apb, i64 0
  %i.aqu = shufflevector <4 x float> %i.aqt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqv = fmul <4 x float> %i.uk, %i.aqu
  %i.aqw = fadd <4 x float> %i.aqs, %i.aqv
  %i.aqx = insertelement <4 x float> poison, float %i.aoy, i64 0
  %i.aqy = shufflevector <4 x float> %i.aqx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqz = fmul <4 x float> %i.uj, %i.aqy
  %i.ara = fadd <4 x float> %i.aqz, %i.aqw
  %i.arb = insertelement <4 x float> poison, float %i.aow, i64 0
  %i.arc = shufflevector <4 x float> %i.arb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ard = fmul <4 x float> %i.ui, %i.arc
  %i.are = fadd <4 x float> %i.ard, %i.ara        ; 2 uses
  %i.arf = shufflevector <4 x float> %i.are, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arg = shufflevector <4 x float> %i.aqq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arh = fmul <4 x float> %i.are, %i.arg
  %i.ari = fmul <4 x float> %i.aqq, %i.arf
  %i.arj = fsub <4 x float> %i.ari, %i.arh        ; 3 uses
  %i.ark = load ptr, ptr %2, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 488
  %i.arm = load ptr, ptr %i.arl, align 8
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.arm, i64 %i.he
  %i.aro = load ptr, ptr %i.arn, align 8          ; 5 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 52
  %i.arq = load i32, ptr %i.arp, align 4
  %i.arr = load i32, ptr %i.gd, align 4
  %i.ars = and i32 %i.arr, %i.arq
  %i.art = icmp eq i32 %i.ars, 0
  br i1 %i.art, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aru = load ptr, ptr %i.ge, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  %i.arw = load ptr, ptr %i.arv, align 8
  %.not3370 = icmp eq ptr %i.arw, null
  br i1 %.not3370, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aro, i64 64
  %i.ary = load ptr, ptr %i.arx, align 16
  %.not3371 = icmp eq ptr %i.ary, null
  br i1 %.not3371, label %bb.ah, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.arz = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.asa = shufflevector <4 x float> %i.arj, <4 x float> %i.amk, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.asa, ptr %5, align 16
  store float %.sroa.02139.4.vec.extract2144, ptr %i.gg, align 16
  store <2 x i32> %i.un, ptr %i.gh, align 4
  %i.asb = load i32, ptr %i.arz, align 4
  store i32 %i.asb, ptr %i.gi, align 4
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  %i.asd = load i32, ptr %i.asc, align 4
  store i32 %i.asd, ptr %i.gj, align 16
  store float %i.api, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aro, i64 24
  %i.asf = load ptr, ptr %i.ase, align 8
  store ptr %i.asf, ptr %i.gk, align 8
  %i.asg = load ptr, ptr %i.gf, align 8
  store ptr %i.asg, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aro, i64 64
  %i.asi = load ptr, ptr %i.ash, align 16         ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.asi(ptr noundef nonnull %4), !inline_history !3557
  %i.asj = load ptr, ptr %4, align 8
  %i.ask = load i32, ptr %i.asj, align 4
  %i.asl = icmp eq i32 %i.ask, 0
  br i1 %i.asl, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.asm = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 16
  %i.aso = load ptr, ptr %i.asn, align 8          ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.aso, null
  br i1 %.not14.i.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.asp = load i32, ptr %i.asm, align 8
  %i.asq = and i32 %i.asp, 2
  %.not3372 = icmp eq i32 %i.asq, 0
  br i1 %.not3372, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aro, i64 60
  %i.ass = load i32, ptr %i.asr, align 4
  %i.ast = and i32 %i.ass, 4194304
  %.not3373 = icmp eq i32 %i.ast, 0
  br i1 %.not3373, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.aso(ptr noundef nonnull %4), !inline_history !3557
  %.pre = load ptr, ptr %4, align 8
  %.pre3425 = load i32, ptr %.pre, align 4
  %i.asu = icmp eq i32 %.pre3425, 0
  br i1 %i.asu, label %bb.af, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  %i.asv = load ptr, ptr %i.gm, align 8           ; 9 uses
  %i.asw = load ptr, ptr %i.gn, align 8           ; 9 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 48
  %i.asy = load float, ptr %i.asw, align 4
  store float %i.asy, ptr %i.asx, align 4
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 4
  %i.ata = load float, ptr %i.asz, align 4
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asv, i64 52
  store float %i.ata, ptr %i.atb, align 4
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  %i.atd = load float, ptr %i.atc, align 4
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asv, i64 56
  store float %i.atd, ptr %i.ate, align 4
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asw, i64 12
  %i.atg = load float, ptr %i.atf, align 4
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asv, i64 60
  store float %i.atg, ptr %i.ath, align 4
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %i.atj = load float, ptr %i.ati, align 16
  %i.atk = getelementptr inbounds nuw i8, ptr %i.asv, i64 64
  store float %i.atj, ptr %i.atk, align 16
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asw, i64 20
  %i.atm = load i32, ptr %i.atl, align 4
  %i.atn = getelementptr inbounds nuw i8, ptr %i.asv, i64 68
  store i32 %i.atm, ptr %i.atn, align 4
  %i.ato = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.atp = load i32, ptr %i.ato, align 8
  %i.atq = getelementptr inbounds nuw i8, ptr %i.asv, i64 72
  store i32 %i.atp, ptr %i.atq, align 8
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asw, i64 28
  %i.ats = getelementptr inbounds nuw i8, ptr %i.asv, i64 76
  %i.att = load i32, ptr %i.atr, align 4
  store i32 %i.att, ptr %i.ats, align 4
  %i.atu = getelementptr inbounds nuw i8, ptr %i.asw, i64 32
end_hunk_0
begin_hunk_1_@_ZN6embree4sse219CurveNiIntersector1ILi4EE10occluded_nINS0_26OrientedCurve1Intersector1INS_12BezierCurveTELi3ELi4EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aia = fmul <2 x float> %i.ahz, %i.ahl        ; 4 uses
  %i.aib = fmul <2 x float> %i.ahz, %i.ahm        ; 4 uses
  %i.aic = fcmp olt <2 x float> %i.aia, %i.aib    ; 3 uses
  %i.aid = extractelement <2 x i1> %i.aic, i64 0
  %i.aie = extractelement <2 x float> %i.aia, i64 0
  %i.aif = extractelement <2 x float> %i.aib, i64 0
  %i.aig = select i1 %i.aid, float %i.aif, float %i.aie ; 2 uses
  %i.aih = fcmp olt float %i.ahy, %i.aig
  %i.aii = select i1 %i.aih, float %i.aig, float %i.ahy
  %i.aij = select <2 x i1> %i.ahu, <2 x float> %i.ahs, <2 x float> %i.aht ; 2 uses
  %i.aik = select <2 x i1> %i.aic, <2 x float> %i.aia, <2 x float> %i.aib ; 2 uses
  %i.ail = fcmp olt <2 x float> %i.aij, %i.aik
  %i.aim = select <2 x i1> %i.ail, <2 x float> %i.aij, <2 x float> %i.aik
  %i.ain = shufflevector <4 x float> %i.ahq, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aio = fmul <2 x float> %i.ain, %i.ahn        ; 4 uses
  %i.aip = fmul <2 x float> %i.ain, %i.aho        ; 4 uses
  %i.aiq = fcmp olt <2 x float> %i.aio, %i.aip    ; 3 uses
  %i.air = extractelement <2 x i1> %i.aiq, i64 0
  %i.ais = extractelement <2 x float> %i.aio, i64 0
  %i.ait = extractelement <2 x float> %i.aip, i64 0
  %i.aiu = select i1 %i.air, float %i.ait, float %i.ais ; 2 uses
  %i.aiv = shufflevector <4 x float> %i.ahq, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.aiw = fmul <2 x float> %i.aiv, %i.ahn        ; 4 uses
  %i.aix = fmul <2 x float> %i.aiv, %i.aho        ; 4 uses
  %i.aiy = fcmp olt <2 x float> %i.aiw, %i.aix    ; 3 uses
  %i.aiz = extractelement <2 x i1> %i.aiy, i64 0
  %i.aja = extractelement <2 x float> %i.aiw, i64 0
  %i.ajb = extractelement <2 x float> %i.aix, i64 0
  %i.ajc = select i1 %i.aiz, float %i.ajb, float %i.aja ; 2 uses
  %i.ajd = fcmp olt float %i.aiu, %i.ajc
  %i.aje = select i1 %i.ajd, float %i.ajc, float %i.aiu
  %i.ajf = select <2 x i1> %i.aiq, <2 x float> %i.aio, <2 x float> %i.aip ; 2 uses
  %i.ajg = select <2 x i1> %i.aiy, <2 x float> %i.aiw, <2 x float> %i.aix ; 2 uses
  %i.ajh = fcmp olt <2 x float> %i.ajf, %i.ajg
  %i.aji = select <2 x i1> %i.ajh, <2 x float> %i.ajf, <2 x float> %i.ajg
  %i.ajj = shufflevector <2 x i1> %i.ahu, <2 x i1> %i.aiq, <2 x i32> <i32 1, i32 3>
  %i.ajk = shufflevector <2 x float> %i.aht, <2 x float> %i.aip, <2 x i32> <i32 1, i32 3>
  %i.ajl = shufflevector <2 x float> %i.ahs, <2 x float> %i.aio, <2 x i32> <i32 1, i32 3>
  %i.ajm = select <2 x i1> %i.ajj, <2 x float> %i.ajk, <2 x float> %i.ajl ; 2 uses
  %i.ajn = shufflevector <2 x i1> %i.aic, <2 x i1> %i.aiy, <2 x i32> <i32 1, i32 3>
  %i.ajo = shufflevector <2 x float> %i.aib, <2 x float> %i.aix, <2 x i32> <i32 1, i32 3>
  %i.ajp = shufflevector <2 x float> %i.aia, <2 x float> %i.aiw, <2 x i32> <i32 1, i32 3>
  %i.ajq = select <2 x i1> %i.ajn, <2 x float> %i.ajo, <2 x float> %i.ajp ; 2 uses
  %i.ajr = fcmp olt <2 x float> %i.ajm, %i.ajq
  %i.ajs = select <2 x i1> %i.ajr, <2 x float> %i.ajq, <2 x float> %i.ajm ; 2 uses
  %i.ajt = fadd float %i.aii, %i.aje
  %i.aju = fadd <2 x float> %i.aim, %i.aji
  %shift3474 = shufflevector <2 x float> %i.ajs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3475 = fadd <2 x float> %i.ajs, %shift3474
  %i.ajv = extractelement <2 x float> %foldExtExtBinop3475, i64 0
  %i.ajw = fadd float %.sroa.02104.0.vec.extract, %i.ajt ; 2 uses
  %i.ajx = shufflevector <4 x float> %i.agc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajy = fadd <2 x float> %i.ajx, %i.aju        ; 3 uses
  %i.ajz = fadd float %.sroa.02104.4.vec.extract, %i.ajv ; 2 uses
  %i.aka = extractelement <2 x float> %i.ajy, i64 0 ; 2 uses
  %i.akb = fcmp olt float %i.aka, %i.vf
  %i.akc = select i1 %i.akb, float %i.vf, float %i.aka
  %i.akd = fcmp olt float %i.ajw, %i.vg           ; 2 uses
  %i.ake = select i1 %i.akd, float %i.ajw, float %i.vg
  %i.akf = extractelement <2 x float> %i.ajy, i64 1 ; 2 uses
  %i.akg = fcmp olt float %i.akf, %i.aco
  %i.akh = select i1 %i.akg, float %i.aco, float %i.akf
  %i.aki = fcmp olt float %i.ajz, %i.acp          ; 2 uses
  %i.akj = select i1 %i.aki, float %i.ajz, float %i.acp
  %i.akk = fcmp ogt float %i.akc, %i.ake
  %i.akl = fcmp ogt float %i.akh, %i.akj
  %or.cond = select i1 %i.akk, i1 true, i1 %i.akl, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.akm = shufflevector <2 x float> %i.ve, <2 x float> %i.acn, <2 x i32> <i32 0, i32 2>
  %i.akn = fcmp ogt <2 x float> %i.ajy, %i.akm    ; 2 uses
  %i.ako = extractelement <2 x i1> %i.akn, i64 0
  %i.akp = and i1 %i.ako, %i.akd
  %i.akq = extractelement <2 x i1> %i.akn, i64 1
  %i.akr = select i1 %i.akp, i1 %i.akq, i1 false
  %i.aks = select i1 %i.akr, i1 %i.aki, i1 false
  %.demorgan.i = or i1 %i.vm, %i.aks
  br i1 %.demorgan.i, label %.critedge.i46, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i46
  %i.akt = add nuw nsw i64 %.026.i3343, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.akt, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %.critedge.i46, !llvm.loop !6

.critedge.i46:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3343 = phi i64 [ %i.akt, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03040.03342 = phi <4 x float> [ %i.amb, %bb.s ], [ %i.agc, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03040.0.vec.extract = extractelement <4 x float> %.sroa.03040.03342, i64 0 ; 2 uses
  %i.aku = fsub float 1.000000e+00, %.sroa.03040.0.vec.extract ; 4 uses
  %i.akv = fmul float %i.aku, %i.aku              ; 2 uses
  %i.akw = fmul float %i.aku, %i.akv
  %i.akx = fmul float %.sroa.03040.0.vec.extract, 3.000000e+00
  %i.aky = fmul float %i.akx, %i.akv
  %foldExtExtBinop3477 = fmul <4 x float> %.sroa.03040.03342, %.sroa.03040.03342 ; 2 uses
  %i.akz = extractelement <4 x float> %foldExtExtBinop3477, i64 0
  %i.ala = fmul float %i.akz, 3.000000e+00
  %i.alb = fmul float %i.aku, %i.ala
  %foldExtExtBinop3479 = fmul <4 x float> %.sroa.03040.03342, %foldExtExtBinop3477
  %i.alc = insertelement <4 x float> poison, float %i.akw, i64 0
  %i.ald = shufflevector <4 x float> %i.alc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ale = insertelement <4 x float> poison, float %i.aky, i64 0
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alg = insertelement <4 x float> poison, float %i.alb, i64 0
  %i.alh = shufflevector <4 x float> %i.alg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ali = shufflevector <4 x float> %foldExtExtBinop3479, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alj = fmul <4 x float> %i.su, %i.ali
  %i.alk = fmul <4 x float> %i.st, %i.alh
  %i.all = fadd <4 x float> %i.alj, %i.alk
  %i.alm = fmul <4 x float> %i.ss, %i.alf
  %i.aln = fadd <4 x float> %i.alm, %i.all
  %i.alo = fmul <4 x float> %i.sr, %i.ald
  %i.alp = fadd <4 x float> %i.alo, %i.aln        ; 2 uses
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alr = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.als = shufflevector <4 x float> %.sroa.03040.03342, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.alt = fsub <4 x float> %i.alr, %i.alq
  %i.alu = fmul <4 x float> %i.als, %i.alt
  %i.alv = fadd <4 x float> %i.alq, %i.alu        ; 3 uses
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alx = fmul <4 x float> %i.afv, %i.alw
  %i.aly = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.alz = fmul <4 x float> %i.afw, %i.aly
  %i.ama = fadd <4 x float> %i.alx, %i.alz
  %i.amb = fsub <4 x float> %.sroa.03040.03342, %i.ama ; 10 uses
  %i.amc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.alv) ; 2 uses
  %i.amd = extractelement <4 x float> %i.amc, i64 0 ; 2 uses
  %i.ame = extractelement <4 x float> %i.amc, i64 1 ; 2 uses
  %i.amf = fcmp olt float %i.amd, %i.ame
  %i.amg = select i1 %i.amf, float %i.ame, float %i.amd
  %i.amh = fcmp uge float %i.amg, %i.tk
  br i1 %i.amh, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i46
  %.sroa.03040.0.vec.extract3043 = extractelement <4 x float> %i.amb, i64 0 ; 4 uses
  %.sroa.03040.4.vec.extract3045 = extractelement <4 x float> %i.amb, i64 1 ; 4 uses
  %i.ami = fcmp oge float %.sroa.03040.0.vec.extract3043, 0.000000e+00
  %i.amj = fcmp ole float %.sroa.03040.0.vec.extract3043, 1.000000e+00
  %or.cond.i = and i1 %i.ami, %i.amj
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit

bb.u:                                             ; preds = %bb.t
  %i.amk = fcmp oge float %.sroa.03040.4.vec.extract3045, 0.000000e+00
  %i.aml = fcmp ole float %.sroa.03040.4.vec.extract3045, 1.000000e+00
  %or.cond4.i = and i1 %i.amk, %i.aml
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit

bb.v:                                             ; preds = %bb.u
  %i.amm = load float, ptr %i.ga, align 8, !noalias !3719
  %i.amn = load float, ptr %i.gb, align 8, !noalias !3719
  %i.amo = load float, ptr %i.gc, align 8, !noalias !3719
  %i.amp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.amm, i64 0
  %i.amq = insertelement <4 x float> %i.amp, float %i.amn, i64 1
  %i.amr = insertelement <4 x float> %i.amq, float %i.amo, i64 2 ; 8 uses
  %i.ams = load <4 x float>, ptr %1, align 16, !noalias !3720 ; 9 uses
  %i.amt = fsub <4 x float> %i.ox, %i.ams
  %i.amu = fmul <4 x float> %i.amr, %i.amt        ; 3 uses
  %i.amv = fsub <4 x float> %i.pq, %i.ams
  %i.amw = fmul <4 x float> %i.amr, %i.amv        ; 3 uses
  %i.amx = fsub <4 x float> %i.ps, %i.ams
  %i.amy = fmul <4 x float> %i.amr, %i.amx        ; 3 uses
  %i.amz = fsub <4 x float> %i.ph, %i.ams
  %i.ana = fmul <4 x float> %i.amr, %i.amz        ; 3 uses
  %i.anb = fsub <4 x float> %i.pd, %i.ams
  %i.anc = fmul <4 x float> %i.amr, %i.anb        ; 3 uses
  %i.and = fsub <4 x float> %i.pu, %i.ams
  %i.ane = fmul <4 x float> %i.amr, %i.and        ; 3 uses
  %i.anf = fsub <4 x float> %i.pw, %i.ams
  %i.ang = fmul <4 x float> %i.amr, %i.anf        ; 3 uses
  %i.anh = fsub <4 x float> %i.pn, %i.ams
  %i.ani = fmul <4 x float> %i.amr, %i.anh        ; 3 uses
  %i.anj = fsub float 1.000000e+00, %.sroa.03040.4.vec.extract3045
  %i.ank = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anl = shufflevector <4 x float> %i.anc, <4 x float> %i.ane, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.anm = shufflevector <4 x float> %i.anc, <4 x float> %i.ane, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ann = shufflevector <4 x float> %i.anc, <4 x float> %i.ane, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ano = shufflevector <4 x float> %i.anl, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.anp = shufflevector <4 x float> %i.anm, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.anq = shufflevector <4 x float> %i.ann, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.anr = shufflevector <4 x float> %i.ano, <4 x float> %i.ani, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ans = shufflevector <4 x float> %i.anp, <4 x float> %i.ani, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ant = shufflevector <4 x float> %i.anq, <4 x float> %i.ani, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.anu = fadd <4 x float> %i.ans, %i.ant
  %i.anv = fadd <4 x float> %i.anr, %i.anu
  %i.anw = fmul <4 x float> %i.ank, %i.anv
  %i.anx = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.any = shufflevector <4 x float> %i.anx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anz = shufflevector <4 x float> %i.amu, <4 x float> %i.amw, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoa = shufflevector <4 x float> %i.amu, <4 x float> %i.amw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aob = shufflevector <4 x float> %i.amu, <4 x float> %i.amw, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoc = shufflevector <4 x float> %i.anz, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aod = shufflevector <4 x float> %i.aoa, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aoe = shufflevector <4 x float> %i.aob, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aof = shufflevector <4 x float> %i.aoc, <4 x float> %i.ana, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aog = shufflevector <4 x float> %i.aod, <4 x float> %i.ana, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoh = shufflevector <4 x float> %i.aoe, <4 x float> %i.ana, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoi = fadd <4 x float> %i.aog, %i.aoh
  %i.aoj = fadd <4 x float> %i.aof, %i.aoi
  %i.aok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.any, <4 x float> %i.aoj, <4 x float> %i.anw) ; 4 uses
  %i.aol = fsub float 1.000000e+00, %.sroa.03040.0.vec.extract3043 ; 5 uses
  %i.aom = fmul nnan float %i.aol, %i.aol         ; 2 uses
  %i.aon = fmul float %i.aol, %i.aom              ; 2 uses
  %i.aoo = fmul nnan float %.sroa.03040.0.vec.extract3043, 3.000000e+00
  %i.aop = fmul float %i.aoo, %i.aom              ; 2 uses
  %foldExtExtBinop3481 = fmul nnan <4 x float> %i.amb, %i.amb ; 2 uses
  %i.aoq = extractelement <4 x float> %foldExtExtBinop3481, i64 0
  %i.aor = fmul nnan float %i.aoq, 3.000000e+00
  %i.aos = fmul float %i.aol, %i.aor              ; 2 uses
  %foldExtExtBinop3483 = fmul <4 x float> %i.amb, %foldExtExtBinop3481 ; 2 uses
  %shift3485 = shufflevector <4 x float> %i.aok, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3486 = fmul <4 x float> %foldExtExtBinop3483, %shift3485
  %i.aot = extractelement <4 x float> %foldExtExtBinop3486, i64 0
  %i.aou = extractelement <4 x float> %i.aok, i64 2
  %i.aov = call noundef float @llvm.fmuladd.f32(float %i.aos, float %i.aou, float %i.aot)
  %i.aow = extractelement <4 x float> %i.aok, i64 1
  %i.aox = call noundef float @llvm.fmuladd.f32(float %i.aop, float %i.aow, float %i.aov)
  %i.aoy = extractelement <4 x float> %i.aok, i64 0
  %i.aoz = call noundef float @llvm.fmuladd.f32(float %i.aon, float %i.aoy, float %i.aox) ; 3 uses
  %i.apa = extractelement <4 x float> %i.ams, i64 3
  %i.apb = fcmp ugt float %i.apa, %i.aoz
  br i1 %i.apb, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.apc = load float, ptr %i.ff, align 16        ; 2 uses
  %i.apd = fcmp ugt float %i.aoz, %i.apc
  br i1 %i.apd, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ape = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apf = fsub <4 x float> splat (float 1.000000e+00), %i.ape ; 4 uses
  %i.apg = fmul <4 x float> %i.pd, %i.ape
  %i.aph = fmul <4 x float> %i.pu, %i.ape
  %i.api = fmul <4 x float> %i.pw, %i.ape
  %i.apj = fmul <4 x float> %i.pn, %i.ape
  %i.apk = fmul <4 x float> %i.ox, %i.apf
  %i.apl = fadd <4 x float> %i.apg, %i.apk
  %i.apm = fmul <4 x float> %i.pq, %i.apf
  %i.apn = fadd <4 x float> %i.aph, %i.apm        ; 2 uses
  %i.apo = fmul <4 x float> %i.ps, %i.apf
  %i.app = fadd <4 x float> %i.api, %i.apo        ; 2 uses
  %i.apq = fmul <4 x float> %i.ph, %i.apf
  %i.apr = fadd <4 x float> %i.apj, %i.apq
  %i.aps = fsub <4 x float> %i.apn, %i.apl
  %i.apt = fsub <4 x float> %i.app, %i.apn        ; 2 uses
  %i.apu = fsub <4 x float> %i.apr, %i.app
  %i.apv = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apw = fmul <4 x float> %i.apv, %i.apt
  %i.apx = insertelement <4 x float> poison, float %i.aol, i64 0
  %i.apy = shufflevector <4 x float> %i.apx, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apz = fmul <4 x float> %i.apy, %i.aps
  %i.aqa = fadd <4 x float> %i.apz, %i.apw
  %i.aqb = fmul <4 x float> %i.apv, %i.apu
  %i.aqc = fmul <4 x float> %i.apy, %i.apt
  %i.aqd = fadd <4 x float> %i.aqc, %i.aqb
  %i.aqe = fmul <4 x float> %i.apv, %i.aqd
  %i.aqf = fmul <4 x float> %i.apy, %i.aqa
  %i.aqg = fadd <4 x float> %i.aqf, %i.aqe
  %i.aqh = fmul <4 x float> %i.aqg, splat (float 3.000000e+00) ; 2 uses
  %i.aqi = shufflevector <4 x float> %foldExtExtBinop3483, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqj = fmul <4 x float> %i.ue, %i.aqi
  %i.aqk = insertelement <4 x float> poison, float %i.aos, i64 0
  %i.aql = shufflevector <4 x float> %i.aqk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqm = fmul <4 x float> %i.ud, %i.aql
  %i.aqn = fadd <4 x float> %i.aqj, %i.aqm
  %i.aqo = insertelement <4 x float> poison, float %i.aop, i64 0
  %i.aqp = shufflevector <4 x float> %i.aqo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = fmul <4 x float> %i.uc, %i.aqp
  %i.aqr = fadd <4 x float> %i.aqq, %i.aqn
  %i.aqs = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.aqt = shufflevector <4 x float> %i.aqs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqu = fmul <4 x float> %i.ub, %i.aqt
  %i.aqv = fadd <4 x float> %i.aqu, %i.aqr        ; 2 uses
  %i.aqw = shufflevector <4 x float> %i.aqv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqx = shufflevector <4 x float> %i.aqh, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqy = fmul <4 x float> %i.aqv, %i.aqx
  %i.aqz = fmul <4 x float> %i.aqh, %i.aqw
  %i.ara = fsub <4 x float> %i.aqz, %i.aqy
  %i.arb = load ptr, ptr %2, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 488
  %i.ard = load ptr, ptr %i.arc, align 8
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.gx
  %i.arf = load ptr, ptr %i.are, align 8          ; 5 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 52
  %i.arh = load i32, ptr %i.arg, align 4
  %i.ari = load i32, ptr %i.gd, align 4
  %i.arj = and i32 %i.ari, %i.arh
  %i.ark = icmp eq i32 %i.arj, 0
  br i1 %i.ark, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.arl = load ptr, ptr %i.ge, align 8
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %i.arn = load ptr, ptr %i.arm, align 8
  %.not3334 = icmp eq ptr %i.arn, null
  br i1 %.not3334, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arf, i64 72
  %i.arp = load ptr, ptr %i.aro, align 8
  %.not3335 = icmp eq ptr %i.arp, null
  br i1 %.not3335, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.arq = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.arr = shufflevector <4 x float> %i.ara, <4 x float> %i.amb, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.arr, ptr %5, align 16
  store float %.sroa.03040.4.vec.extract3045, ptr %i.gg, align 16
  store <2 x i32> %i.ug, ptr %i.gh, align 4
  %i.ars = load i32, ptr %i.arq, align 4
  store i32 %i.ars, ptr %i.gi, align 4
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.aru = load i32, ptr %i.art, align 4
  store i32 %i.aru, ptr %i.gj, align 16
  store float %i.aoz, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arf, i64 24
  %i.arw = load ptr, ptr %i.arv, align 8
  store ptr %i.arw, ptr %i.gk, align 8
  %i.arx = load ptr, ptr %i.gf, align 8
  store ptr %i.arx, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arf, i64 72
  %i.arz = load ptr, ptr %i.ary, align 8          ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.arz, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.arz(ptr noundef nonnull %4), !inline_history !3685
  %i.asa = load ptr, ptr %4, align 8
  %i.asb = load i32, ptr %i.asa, align 4
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.asd = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  %i.asf = load ptr, ptr %i.ase, align 8          ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.asf, null
  br i1 %.not12.i.i.i, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.asg = load i32, ptr %i.asd, align 8
  %i.ash = and i32 %i.asg, 2
  %.not3336 = icmp eq i32 %i.ash, 0
  br i1 %.not3336, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arf, i64 60
  %i.asj = load i32, ptr %i.asi, align 4
  %i.ask = and i32 %i.asj, 4194304
  %.not3337 = icmp eq i32 %i.ask, 0
  br i1 %.not3337, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.asf(ptr noundef nonnull %4), !inline_history !3685
  %.pre = load ptr, ptr %4, align 8
  %.pre3394 = load i32, ptr %.pre, align 4
  %i.asl = icmp eq i32 %.pre3394, 0
  br i1 %i.asl, label %bb.af, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.apc, ptr %i.ff, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, %bb.af
  %.0.i.i.i3330 = phi i1 [ %.sroa.84.13361, %bb.af ], [ true, %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit: ; preds = %bb.s, %bb.x, %bb.z, %bb.ag, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit, %bb.v, %bb.w, %bb.u, %bb.t, %bb.r, %bb.e
  %.sroa.84.5 = phi i1 [ %.sroa.84.13361, %bb.e ], [ %.sroa.84.13361, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit ], [ %.sroa.84.13361, %bb.r ], [ %.sroa.84.13361, %bb.w ], [ true, %bb.z ], [ %.sroa.84.13361, %bb.v ], [ %.sroa.84.13361, %bb.t ], [ %.sroa.84.13361, %bb.u ], [ %.sroa.84.13361, %bb.x ], [ %.0.i.i.i3330, %bb.ag ], [ %.sroa.84.13361, %bb.s ] ; 2 uses
  %.not32.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not32.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE30solve_newton_raphson_recursionENS_4BBoxIfEES8_.exit, label %.lr.ph

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge: ; preds = %.lr.ph, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i
  %.sroa.01183.0.be = phi <2 x float> [ %i.acn, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ], [ %i.uo, %.lr.ph ]
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread: ; preds = %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge, %.preheader3338
  %.sroa.84.0 = phi i1 [ false, %.preheader3338 ], [ %.sroa.84.13361, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge ] ; 2 uses
  %.sroa.01183.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3338 ], [ %.sroa.01183.0.be, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge ] ; 2 uses
  %.sroa.01219.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3338 ], [ %i.ve, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge ] ; 5 uses
  %.225.i = phi i32 [ 0, %.preheader3338 ], [ %spec.select.i, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.thread.backedge ] ; 4 uses
  %i.asm = shufflevector <2 x float> %.sroa.01183.0, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 5 uses
  %i.asn = fsub <4 x float> splat (float 1.000000e+00), %i.asm ; 4 uses
  %i.aso = fmul <4 x float> %i.tp, %i.asm
  %i.asp = fmul <4 x float> %i.tq, %i.asm
  %i.asq = fmul <4 x float> %i.tr, %i.asm
end_hunk_1
begin_hunk_2_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE11intersect_nINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EEENS0_18Intersect1KEpilog1ILi4ELb1EEEEEvRNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ajw = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajx = fmul <2 x float> %i.ajw, %i.ajq        ; 4 uses
  %i.ajy = fmul <2 x float> %i.ajw, %i.ajr        ; 4 uses
  %i.ajz = fcmp olt <2 x float> %i.ajx, %i.ajy    ; 3 uses
  %i.aka = extractelement <2 x i1> %i.ajz, i64 0
  %i.akb = extractelement <2 x float> %i.ajx, i64 0
  %i.akc = extractelement <2 x float> %i.ajy, i64 0
  %i.akd = select i1 %i.aka, float %i.akc, float %i.akb ; 2 uses
  %i.ake = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.akf = fmul <2 x float> %i.ake, %i.ajq        ; 4 uses
  %i.akg = fmul <2 x float> %i.ake, %i.ajr        ; 4 uses
  %i.akh = fcmp olt <2 x float> %i.akf, %i.akg    ; 3 uses
  %i.aki = extractelement <2 x i1> %i.akh, i64 0
  %i.akj = extractelement <2 x float> %i.akf, i64 0
  %i.akk = extractelement <2 x float> %i.akg, i64 0
  %i.akl = select i1 %i.aki, float %i.akk, float %i.akj ; 2 uses
  %i.akm = fcmp olt float %i.akd, %i.akl
  %i.akn = select i1 %i.akm, float %i.akl, float %i.akd
  %i.ako = select <2 x i1> %i.ajz, <2 x float> %i.ajx, <2 x float> %i.ajy ; 2 uses
  %i.akp = select <2 x i1> %i.akh, <2 x float> %i.akf, <2 x float> %i.akg ; 2 uses
  %i.akq = fcmp olt <2 x float> %i.ako, %i.akp
  %i.akr = select <2 x i1> %i.akq, <2 x float> %i.ako, <2 x float> %i.akp
  %i.aks = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akt = fmul <2 x float> %i.aks, %i.ajs        ; 4 uses
  %i.aku = fmul <2 x float> %i.aks, %i.ajt        ; 4 uses
  %i.akv = fcmp olt <2 x float> %i.akt, %i.aku    ; 3 uses
  %i.akw = extractelement <2 x i1> %i.akv, i64 0
  %i.akx = extractelement <2 x float> %i.akt, i64 0
  %i.aky = extractelement <2 x float> %i.aku, i64 0
  %i.akz = select i1 %i.akw, float %i.aky, float %i.akx ; 2 uses
  %i.ala = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.alb = fmul <2 x float> %i.ala, %i.ajs        ; 4 uses
  %i.alc = fmul <2 x float> %i.ala, %i.ajt        ; 4 uses
  %i.ald = fcmp olt <2 x float> %i.alb, %i.alc    ; 3 uses
  %i.ale = extractelement <2 x i1> %i.ald, i64 0
  %i.alf = extractelement <2 x float> %i.alb, i64 0
  %i.alg = extractelement <2 x float> %i.alc, i64 0
  %i.alh = select i1 %i.ale, float %i.alg, float %i.alf ; 2 uses
  %i.ali = fcmp olt float %i.akz, %i.alh
  %i.alj = select i1 %i.ali, float %i.alh, float %i.akz
  %i.alk = select <2 x i1> %i.akv, <2 x float> %i.akt, <2 x float> %i.aku ; 2 uses
  %i.all = select <2 x i1> %i.ald, <2 x float> %i.alb, <2 x float> %i.alc ; 2 uses
  %i.alm = fcmp olt <2 x float> %i.alk, %i.all
  %i.aln = select <2 x i1> %i.alm, <2 x float> %i.alk, <2 x float> %i.all
  %i.alo = shufflevector <2 x i1> %i.ajz, <2 x i1> %i.akv, <2 x i32> <i32 1, i32 3>
  %i.alp = shufflevector <2 x float> %i.ajy, <2 x float> %i.aku, <2 x i32> <i32 1, i32 3>
  %i.alq = shufflevector <2 x float> %i.ajx, <2 x float> %i.akt, <2 x i32> <i32 1, i32 3>
  %i.alr = select <2 x i1> %i.alo, <2 x float> %i.alp, <2 x float> %i.alq ; 2 uses
  %i.als = shufflevector <2 x i1> %i.akh, <2 x i1> %i.ald, <2 x i32> <i32 1, i32 3>
  %i.alt = shufflevector <2 x float> %i.akg, <2 x float> %i.alc, <2 x i32> <i32 1, i32 3>
  %i.alu = shufflevector <2 x float> %i.akf, <2 x float> %i.alb, <2 x i32> <i32 1, i32 3>
  %i.alv = select <2 x i1> %i.als, <2 x float> %i.alt, <2 x float> %i.alu ; 2 uses
  %i.alw = fcmp olt <2 x float> %i.alr, %i.alv
  %i.alx = select <2 x i1> %i.alw, <2 x float> %i.alv, <2 x float> %i.alr ; 2 uses
  %i.aly = fadd float %i.akn, %i.alj
  %i.alz = fadd <2 x float> %i.akr, %i.aln
  %shift3553 = shufflevector <2 x float> %i.alx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3554 = fadd <2 x float> %i.alx, %shift3553
  %i.ama = extractelement <2 x float> %foldExtExtBinop3554, i64 0
  %i.amb = fadd float %.sroa.02095.0.vec.extract, %i.aly ; 2 uses
  %i.amc = shufflevector <4 x float> %i.aih, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.amd = fadd <2 x float> %i.amc, %i.alz        ; 3 uses
  %i.ame = fadd float %.sroa.02095.4.vec.extract, %i.ama ; 2 uses
  %i.amf = extractelement <2 x float> %i.amd, i64 0 ; 2 uses
  %i.amg = fcmp olt float %i.amf, %i.xk
  %i.amh = select i1 %i.amg, float %i.xk, float %i.amf
  %i.ami = fcmp olt float %i.amb, %i.xl           ; 2 uses
  %i.amj = select i1 %i.ami, float %i.amb, float %i.xl
  %i.amk = extractelement <2 x float> %i.amd, i64 1 ; 2 uses
  %i.aml = fcmp olt float %i.amk, %i.aet
  %i.amm = select i1 %i.aml, float %i.aet, float %i.amk
  %i.amn = fcmp olt float %i.ame, %i.aeu          ; 2 uses
  %i.amo = select i1 %i.amn, float %i.ame, float %i.aeu
  %i.amp = fcmp ogt float %i.amh, %i.amj
  %i.amq = fcmp ogt float %i.amm, %i.amo
  %or.cond = select i1 %i.amp, i1 true, i1 %i.amq, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.amr = shufflevector <2 x float> %i.xj, <2 x float> %i.aes, <2 x i32> <i32 0, i32 2>
  %i.ams = fcmp ogt <2 x float> %i.amd, %i.amr    ; 2 uses
  %i.amt = extractelement <2 x i1> %i.ams, i64 0
  %i.amu = and i1 %i.amt, %i.ami
  %i.amv = extractelement <2 x i1> %i.ams, i64 1
  %i.amw = select i1 %i.amu, i1 %i.amv, i1 false
  %i.amx = select i1 %i.amw, i1 %i.amn, i1 false
  %.demorgan.i = or i1 %i.xr, %i.amx
  br i1 %.demorgan.i, label %.critedge.i46, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i46
  %i.amy = add nuw nsw i64 %.026.i3437, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.amy, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i46, !llvm.loop !3803

.critedge.i46:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3437 = phi i64 [ %i.amy, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03027.03436 = phi <4 x float> [ %i.aog, %bb.s ], [ %i.aih, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03027.0.vec.extract = extractelement <4 x float> %.sroa.03027.03436, i64 0 ; 2 uses
  %i.amz = fsub float 1.000000e+00, %.sroa.03027.0.vec.extract ; 4 uses
  %i.ana = fmul float %i.amz, %i.amz              ; 2 uses
  %i.anb = fmul float %i.amz, %i.ana
  %i.anc = fmul float %.sroa.03027.0.vec.extract, 3.000000e+00
  %i.and = fmul float %i.anc, %i.ana
  %foldExtExtBinop3556 = fmul <4 x float> %.sroa.03027.03436, %.sroa.03027.03436 ; 2 uses
  %i.ane = extractelement <4 x float> %foldExtExtBinop3556, i64 0
  %i.anf = fmul float %i.ane, 3.000000e+00
  %i.ang = fmul float %i.amz, %i.anf
  %foldExtExtBinop3558 = fmul <4 x float> %.sroa.03027.03436, %foldExtExtBinop3556
  %i.anh = insertelement <4 x float> poison, float %i.anb, i64 0
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anj = insertelement <4 x float> poison, float %i.and, i64 0
  %i.ank = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anl = insertelement <4 x float> poison, float %i.ang, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ann = shufflevector <4 x float> %foldExtExtBinop3558, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ano = fmul <4 x float> %i.ux, %i.ann
  %i.anp = fmul <4 x float> %i.uw, %i.anm
  %i.anq = fadd <4 x float> %i.ano, %i.anp
  %i.anr = fmul <4 x float> %i.uv, %i.ank
  %i.ans = fadd <4 x float> %i.anr, %i.anq
  %i.ant = fmul <4 x float> %i.uu, %i.ani
  %i.anu = fadd <4 x float> %i.ant, %i.ans        ; 2 uses
  %i.anv = shufflevector <4 x float> %i.anu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.anw = shufflevector <4 x float> %i.anu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.anx = shufflevector <4 x float> %.sroa.03027.03436, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.any = fsub <4 x float> %i.anw, %i.anv
  %i.anz = fmul <4 x float> %i.anx, %i.any
  %i.aoa = fadd <4 x float> %i.anv, %i.anz        ; 3 uses
  %i.aob = shufflevector <4 x float> %i.aoa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoc = fmul <4 x float> %i.aia, %i.aob
  %i.aod = shufflevector <4 x float> %i.aoa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aoe = fmul <4 x float> %i.aib, %i.aod
  %i.aof = fadd <4 x float> %i.aoc, %i.aoe
  %i.aog = fsub <4 x float> %.sroa.03027.03436, %i.aof ; 9 uses
  %i.aoh = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aoa) ; 2 uses
  %i.aoi = extractelement <4 x float> %i.aoh, i64 0 ; 2 uses
  %i.aoj = extractelement <4 x float> %i.aoh, i64 1 ; 2 uses
  %i.aok = fcmp olt float %i.aoi, %i.aoj
  %i.aol = select i1 %i.aok, float %i.aoj, float %i.aoi
  %i.aom = fcmp uge float %i.aol, %i.vn
  br i1 %i.aom, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i46
  %.sroa.03027.0.vec.extract3030 = extractelement <4 x float> %i.aog, i64 0 ; 5 uses
  %.sroa.03027.4.vec.extract3032 = extractelement <4 x float> %i.aog, i64 1 ; 4 uses
  %i.aon = fcmp oge float %.sroa.03027.0.vec.extract3030, 0.000000e+00
  %i.aoo = fcmp ole float %.sroa.03027.0.vec.extract3030, 1.000000e+00
  %or.cond.i = and i1 %i.aon, %i.aoo
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.aop = fcmp oge float %.sroa.03027.4.vec.extract3032, 0.000000e+00
  %i.aoq = fcmp ole float %.sroa.03027.4.vec.extract3032, 1.000000e+00
  %or.cond4.i = and i1 %i.aop, %i.aoq
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.aor = load float, ptr %i.gy, align 8, !noalias !3886
  %i.aos = load float, ptr %i.gz, align 8, !noalias !3886
  %i.aot = load float, ptr %i.ha, align 8, !noalias !3886
  %i.aou = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aor, i64 0
  %i.aov = insertelement <4 x float> %i.aou, float %i.aos, i64 1
  %i.aow = insertelement <4 x float> %i.aov, float %i.aot, i64 2 ; 8 uses
  %i.aox = fmul <4 x float> %i.sa, %i.aow         ; 3 uses
  %i.aoy = fmul <4 x float> %i.sj, %i.aow         ; 3 uses
  %i.aoz = fmul <4 x float> %i.ss, %i.aow         ; 3 uses
  %i.apa = fmul <4 x float> %i.tb, %i.aow         ; 3 uses
  %i.apb = fmul <4 x float> %i.tk, %i.aow         ; 3 uses
  %i.apc = fmul <4 x float> %i.tt, %i.aow         ; 3 uses
  %i.apd = fmul <4 x float> %i.uc, %i.aow         ; 3 uses
  %i.ape = fmul <4 x float> %i.ul, %i.aow         ; 3 uses
  %i.apf = fsub float 1.000000e+00, %.sroa.03027.4.vec.extract3032
  %i.apg = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aph = shufflevector <4 x float> %i.apb, <4 x float> %i.apc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.api = shufflevector <4 x float> %i.apb, <4 x float> %i.apc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apj = shufflevector <4 x float> %i.apb, <4 x float> %i.apc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apk = shufflevector <4 x float> %i.aph, <4 x float> %i.apd, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apl = shufflevector <4 x float> %i.api, <4 x float> %i.apd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apm = shufflevector <4 x float> %i.apj, <4 x float> %i.apd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apn = shufflevector <4 x float> %i.apk, <4 x float> %i.ape, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apo = shufflevector <4 x float> %i.apl, <4 x float> %i.ape, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.app = shufflevector <4 x float> %i.apm, <4 x float> %i.ape, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apq = fadd <4 x float> %i.apo, %i.app
  %i.apr = fadd <4 x float> %i.apn, %i.apq
  %i.aps = fmul <4 x float> %i.apg, %i.apr
  %i.apt = insertelement <4 x float> poison, float %i.apf, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apv = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.apw = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apx = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apy = shufflevector <4 x float> %i.apv, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apz = shufflevector <4 x float> %i.apw, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aqa = shufflevector <4 x float> %i.apx, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aqb = shufflevector <4 x float> %i.apy, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aqc = shufflevector <4 x float> %i.apz, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aqd = shufflevector <4 x float> %i.aqa, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqe = fadd <4 x float> %i.aqc, %i.aqd
  %i.aqf = fadd <4 x float> %i.aqb, %i.aqe
  %i.aqg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apu, <4 x float> %i.aqf, <4 x float> %i.aps) ; 4 uses
  %i.aqh = fsub float 1.000000e+00, %.sroa.03027.0.vec.extract3030 ; 5 uses
  %i.aqi = fmul nnan float %i.aqh, %i.aqh         ; 2 uses
  %i.aqj = fmul float %i.aqh, %i.aqi              ; 2 uses
  %i.aqk = fmul nnan float %.sroa.03027.0.vec.extract3030, 3.000000e+00
  %i.aql = fmul float %i.aqk, %i.aqi              ; 2 uses
  %foldExtExtBinop3560 = fmul nnan <4 x float> %i.aog, %i.aog ; 2 uses
  %i.aqm = extractelement <4 x float> %foldExtExtBinop3560, i64 0
  %i.aqn = fmul nnan float %i.aqm, 3.000000e+00
  %i.aqo = fmul float %i.aqh, %i.aqn              ; 2 uses
  %foldExtExtBinop3562 = fmul <4 x float> %i.aog, %foldExtExtBinop3560 ; 2 uses
  %shift3564 = shufflevector <4 x float> %i.aqg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3565 = fmul <4 x float> %foldExtExtBinop3562, %shift3564
  %i.aqp = extractelement <4 x float> %foldExtExtBinop3565, i64 0
  %i.aqq = extractelement <4 x float> %i.aqg, i64 2
  %i.aqr = call noundef float @llvm.fmuladd.f32(float %i.aqo, float %i.aqq, float %i.aqp)
  %i.aqs = extractelement <4 x float> %i.aqg, i64 1
  %i.aqt = call noundef float @llvm.fmuladd.f32(float %i.aql, float %i.aqs, float %i.aqr)
  %i.aqu = extractelement <4 x float> %i.aqg, i64 0
  %i.aqv = call noundef float @llvm.fmuladd.f32(float %i.aqj, float %i.aqu, float %i.aqt) ; 4 uses
  %i.aqw = fcmp ugt float %i.ls, %i.aqv
  br i1 %i.aqw, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aqx = load float, ptr %i.gb, align 4         ; 2 uses
  %i.aqy = fcmp ugt float %i.aqv, %i.aqx
  br i1 %i.aqy, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aqz = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.ara = fsub <4 x float> splat (float 1.000000e+00), %i.aqz ; 4 uses
  %i.arb = fmul <4 x float> %i.rg, %i.aqz
  %i.arc = fmul <4 x float> %i.rx, %i.aqz
  %i.ard = fmul <4 x float> %i.rz, %i.aqz
  %i.are = fmul <4 x float> %i.rq, %i.aqz
  %i.arf = fmul <4 x float> %i.ra, %i.ara
  %i.arg = fadd <4 x float> %i.arb, %i.arf
  %i.arh = fmul <4 x float> %i.rt, %i.ara
  %i.ari = fadd <4 x float> %i.arc, %i.arh        ; 2 uses
  %i.arj = fmul <4 x float> %i.rv, %i.ara
  %i.ark = fadd <4 x float> %i.ard, %i.arj        ; 2 uses
  %i.arl = fmul <4 x float> %i.rk, %i.ara
  %i.arm = fadd <4 x float> %i.are, %i.arl
  %i.arn = fsub <4 x float> %i.ari, %i.arg
  %i.aro = fsub <4 x float> %i.ark, %i.ari        ; 2 uses
  %i.arp = fsub <4 x float> %i.arm, %i.ark
  %i.arq = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.arr = fmul <4 x float> %i.arq, %i.aro
  %i.ars = insertelement <4 x float> poison, float %i.aqh, i64 0
  %i.art = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aru = fmul <4 x float> %i.art, %i.arn
  %i.arv = fadd <4 x float> %i.aru, %i.arr
  %i.arw = fmul <4 x float> %i.arq, %i.arp
  %i.arx = fmul <4 x float> %i.art, %i.aro
  %i.ary = fadd <4 x float> %i.arx, %i.arw
  %i.arz = fmul <4 x float> %i.arq, %i.ary
  %i.asa = fmul <4 x float> %i.art, %i.arv
  %i.asb = fadd <4 x float> %i.asa, %i.arz
  %i.asc = fmul <4 x float> %i.asb, splat (float 3.000000e+00) ; 2 uses
  %i.asd = shufflevector <4 x float> %foldExtExtBinop3562, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ase = fmul <4 x float> %i.wh, %i.asd
  %i.asf = insertelement <4 x float> poison, float %i.aqo, i64 0
  %i.asg = shufflevector <4 x float> %i.asf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ash = fmul <4 x float> %i.wg, %i.asg
  %i.asi = fadd <4 x float> %i.ase, %i.ash
  %i.asj = insertelement <4 x float> poison, float %i.aql, i64 0
  %i.ask = shufflevector <4 x float> %i.asj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asl = fmul <4 x float> %i.wf, %i.ask
  %i.asm = fadd <4 x float> %i.asl, %i.asi
  %i.asn = insertelement <4 x float> poison, float %i.aqj, i64 0
  %i.aso = shufflevector <4 x float> %i.asn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asp = fmul <4 x float> %i.we, %i.aso
  %i.asq = fadd <4 x float> %i.asp, %i.asm        ; 2 uses
  %i.asr = shufflevector <4 x float> %i.asq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ass = shufflevector <4 x float> %i.asc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ast = fmul <4 x float> %i.asq, %i.ass
  %i.asu = fmul <4 x float> %i.asc, %i.asr
  %i.asv = fsub <4 x float> %i.asu, %i.ast        ; 6 uses
  %i.asw = load ptr, ptr %3, align 8
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 488
  %i.asy = load ptr, ptr %i.asx, align 8
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.asy, i64 %i.iu
  %i.ata = load ptr, ptr %i.asz, align 8          ; 5 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 52
  %i.atc = load i32, ptr %i.atb, align 4
  %i.atd = load i32, ptr %i.hc, align 4
  %i.ate = and i32 %i.atd, %i.atc
  %i.atf = icmp eq i32 %i.ate, 0
  br i1 %i.atf, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.atg = load ptr, ptr %i.hd, align 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8
  %.not3428 = icmp eq ptr %i.ati, null
  br i1 %.not3428, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ata, i64 64
  %i.atk = load ptr, ptr %i.atj, align 16
  %.not3429 = icmp eq ptr %i.atk, null
  br i1 %.not3429, label %bb.ak, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.atl = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.atm = shufflevector <4 x float> %i.asv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atn = shufflevector <4 x float> %i.asv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ato = shufflevector <4 x float> %i.asv, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.atm, ptr %7, align 16
  store <4 x float> %i.atn, ptr %i.hf, align 16
  store <4 x float> %i.ato, ptr %i.hg, align 16
  store <4 x float> %i.arq, ptr %i.hh, align 16
  store <4 x float> %i.aqz, ptr %i.hi, align 16
  store <4 x i32> %i.wl, ptr %i.hj, align 16
  store <4 x i32> %i.wj, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.atp = load i32, ptr %i.atl, align 4
  %i.atq = insertelement <4 x i32> poison, i32 %i.atp, i64 0
  %i.atr = shufflevector <4 x i32> %i.atq, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atr, ptr %.ptr12.i.i.i, align 16
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atl, i64 4
  %i.att = load i32, ptr %i.ats, align 4
  %i.atu = insertelement <4 x i32> poison, i32 %i.att, i64 0
  %i.atv = shufflevector <4 x i32> %i.atu, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atv, ptr %.ptr17.i.i.i, align 16
  store float %i.aqv, ptr %i.gb, align 4
  %i.atw = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !3887
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !3887
  store <2 x i64> %i.atw, ptr %6, align 16, !noalias !3887
  store ptr %6, ptr %5, align 8, !noalias !3887
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  %i.aty = load ptr, ptr %i.atx, align 8, !noalias !3887
  store ptr %i.aty, ptr %i.hp, align 8, !noalias !3887
  %i.atz = load ptr, ptr %i.he, align 8, !noalias !3887
  store ptr %i.atz, ptr %i.hq, align 8, !noalias !3887
  store ptr %1, ptr %i.hr, align 8, !noalias !3887
  store ptr %7, ptr %i.hs, align 8, !noalias !3887
  store i32 4, ptr %i.ht, align 8, !noalias !3887
  %i.aua = getelementptr inbounds nuw i8, ptr %i.ata, i64 64
  %i.aub = load ptr, ptr %i.aua, align 16, !noalias !3888 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aub, null
  %i.auc = bitcast <2 x i64> %i.atw to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.aub(ptr noundef nonnull %5), !noalias !3888, !inline_history !3810
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !3889
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.aud = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.auc, %.critedge.i.i ] ; 3 uses
  %i.aue = icmp ne <4 x i32> %i.aud, zeroinitializer ; 2 uses
  %i.auf = bitcast <4 x i1> %i.aue to i4
  %i.aug = icmp eq i4 %i.auf, 0
  br i1 %i.aug, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.auh = load ptr, ptr %i.hd, align 8           ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %i.auj = load ptr, ptr %i.aui, align 8          ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.auj, null
  br i1 %.not13.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.auk = load i32, ptr %i.auh, align 8
  %i.aul = and i32 %i.auk, 2
  %.not3430 = icmp eq i32 %i.aul, 0
  br i1 %.not3430, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ata, i64 60
  %i.aun = load i32, ptr %i.aum, align 4, !noalias !3888
  %i.auo = and i32 %i.aun, 4194304
  %.not3431 = icmp eq i32 %i.auo, 0
  br i1 %.not3431, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.auj(ptr noundef nonnull %5), !inline_history !3810
  %.pre3483 = load <4 x i32>, ptr %6, align 16, !noalias !3890
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.aup = phi <4 x i32> [ %.pre3483, %bb.af ], [ %i.aud, %bb.ae ], [ %i.aud, %bb.ac ]
  %i.auq = icmp ne <4 x i32> %i.aup, zeroinitializer ; 12 uses
  %i.aur = bitcast <4 x i1> %i.auq to i4
  %i.aus = icmp eq i4 %i.aur, 0
  br i1 %i.aus, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aut = load ptr, ptr %i.hr, align 8, !noalias !3888 ; 9 uses
  %i.auu = load ptr, ptr %i.hs, align 8, !noalias !3888 ; 9 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aut, i64 192 ; 2 uses
  %i.auw = load <4 x i32>, ptr %i.auv, align 1, !noalias !3891
  %i.aux = load <4 x i32>, ptr %i.auu, align 16, !noalias !3892
  %i.auy = select <4 x i1> %i.auq, <4 x i32> %i.aux, <4 x i32> %i.auw
  store <4 x i32> %i.auy, ptr %i.auv, align 1
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aut, i64 208 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auu, i64 16
  %i.avb = load <4 x i32>, ptr %i.auz, align 1, !noalias !3893
  %i.avc = load <4 x i32>, ptr %i.ava, align 16, !noalias !3894
  %i.avd = select <4 x i1> %i.auq, <4 x i32> %i.avc, <4 x i32> %i.avb
end_hunk_2
begin_hunk_3_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE10occluded_nINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EEENS0_17Occluded1KEpilog1ILi4ELb1EEEEEbRNS0_21CurvePrecalculationsKILi4EEERNS_4RayKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajf = fmul <2 x float> %i.aje, %i.aiy        ; 4 uses
  %i.ajg = fmul <2 x float> %i.aje, %i.aiz        ; 4 uses
  %i.ajh = fcmp olt <2 x float> %i.ajf, %i.ajg    ; 3 uses
  %i.aji = extractelement <2 x i1> %i.ajh, i64 0
  %i.ajj = extractelement <2 x float> %i.ajf, i64 0
  %i.ajk = extractelement <2 x float> %i.ajg, i64 0
  %i.ajl = select i1 %i.aji, float %i.ajk, float %i.ajj ; 2 uses
  %i.ajm = shufflevector <4 x float> %i.ajd, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ajn = fmul <2 x float> %i.ajm, %i.aiy        ; 4 uses
  %i.ajo = fmul <2 x float> %i.ajm, %i.aiz        ; 4 uses
  %i.ajp = fcmp olt <2 x float> %i.ajn, %i.ajo    ; 3 uses
  %i.ajq = extractelement <2 x i1> %i.ajp, i64 0
  %i.ajr = extractelement <2 x float> %i.ajn, i64 0
  %i.ajs = extractelement <2 x float> %i.ajo, i64 0
  %i.ajt = select i1 %i.ajq, float %i.ajs, float %i.ajr ; 2 uses
  %i.aju = fcmp olt float %i.ajl, %i.ajt
  %i.ajv = select i1 %i.aju, float %i.ajt, float %i.ajl
  %i.ajw = select <2 x i1> %i.ajh, <2 x float> %i.ajf, <2 x float> %i.ajg ; 2 uses
  %i.ajx = select <2 x i1> %i.ajp, <2 x float> %i.ajn, <2 x float> %i.ajo ; 2 uses
  %i.ajy = fcmp olt <2 x float> %i.ajw, %i.ajx
  %i.ajz = select <2 x i1> %i.ajy, <2 x float> %i.ajw, <2 x float> %i.ajx
  %i.aka = shufflevector <4 x float> %i.ajd, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akb = fmul <2 x float> %i.aka, %i.aja        ; 4 uses
  %i.akc = fmul <2 x float> %i.aka, %i.ajb        ; 4 uses
  %i.akd = fcmp olt <2 x float> %i.akb, %i.akc    ; 3 uses
  %i.ake = extractelement <2 x i1> %i.akd, i64 0
  %i.akf = extractelement <2 x float> %i.akb, i64 0
  %i.akg = extractelement <2 x float> %i.akc, i64 0
  %i.akh = select i1 %i.ake, float %i.akg, float %i.akf ; 2 uses
  %i.aki = shufflevector <4 x float> %i.ajd, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.akj = fmul <2 x float> %i.aki, %i.aja        ; 4 uses
  %i.akk = fmul <2 x float> %i.aki, %i.ajb        ; 4 uses
  %i.akl = fcmp olt <2 x float> %i.akj, %i.akk    ; 3 uses
  %i.akm = extractelement <2 x i1> %i.akl, i64 0
  %i.akn = extractelement <2 x float> %i.akj, i64 0
  %i.ako = extractelement <2 x float> %i.akk, i64 0
  %i.akp = select i1 %i.akm, float %i.ako, float %i.akn ; 2 uses
  %i.akq = fcmp olt float %i.akh, %i.akp
  %i.akr = select i1 %i.akq, float %i.akp, float %i.akh
  %i.aks = select <2 x i1> %i.akd, <2 x float> %i.akb, <2 x float> %i.akc ; 2 uses
  %i.akt = select <2 x i1> %i.akl, <2 x float> %i.akj, <2 x float> %i.akk ; 2 uses
  %i.aku = fcmp olt <2 x float> %i.aks, %i.akt
  %i.akv = select <2 x i1> %i.aku, <2 x float> %i.aks, <2 x float> %i.akt
  %i.akw = shufflevector <2 x i1> %i.ajh, <2 x i1> %i.akd, <2 x i32> <i32 1, i32 3>
  %i.akx = shufflevector <2 x float> %i.ajg, <2 x float> %i.akc, <2 x i32> <i32 1, i32 3>
  %i.aky = shufflevector <2 x float> %i.ajf, <2 x float> %i.akb, <2 x i32> <i32 1, i32 3>
  %i.akz = select <2 x i1> %i.akw, <2 x float> %i.akx, <2 x float> %i.aky ; 2 uses
  %i.ala = shufflevector <2 x i1> %i.ajp, <2 x i1> %i.akl, <2 x i32> <i32 1, i32 3>
  %i.alb = shufflevector <2 x float> %i.ajo, <2 x float> %i.akk, <2 x i32> <i32 1, i32 3>
  %i.alc = shufflevector <2 x float> %i.ajn, <2 x float> %i.akj, <2 x i32> <i32 1, i32 3>
  %i.ald = select <2 x i1> %i.ala, <2 x float> %i.alb, <2 x float> %i.alc ; 2 uses
  %i.ale = fcmp olt <2 x float> %i.akz, %i.ald
  %i.alf = select <2 x i1> %i.ale, <2 x float> %i.ald, <2 x float> %i.akz ; 2 uses
  %i.alg = fadd float %i.ajv, %i.akr
  %i.alh = fadd <2 x float> %i.ajz, %i.akv
  %shift3510 = shufflevector <2 x float> %i.alf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3511 = fadd <2 x float> %i.alf, %shift3510
  %i.ali = extractelement <2 x float> %foldExtExtBinop3511, i64 0
  %i.alj = fadd float %.sroa.02099.0.vec.extract, %i.alg ; 2 uses
  %i.alk = shufflevector <4 x float> %i.ahp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.all = fadd <2 x float> %i.alk, %i.alh        ; 3 uses
  %i.alm = fadd float %.sroa.02099.4.vec.extract, %i.ali ; 2 uses
  %i.aln = extractelement <2 x float> %i.all, i64 0 ; 2 uses
  %i.alo = fcmp olt float %i.aln, %i.ws
  %i.alp = select i1 %i.alo, float %i.ws, float %i.aln
  %i.alq = fcmp olt float %i.alj, %i.wt           ; 2 uses
  %i.alr = select i1 %i.alq, float %i.alj, float %i.wt
  %i.als = extractelement <2 x float> %i.all, i64 1 ; 2 uses
  %i.alt = fcmp olt float %i.als, %i.aeb
  %i.alu = select i1 %i.alt, float %i.aeb, float %i.als
  %i.alv = fcmp olt float %i.alm, %i.aec          ; 2 uses
  %i.alw = select i1 %i.alv, float %i.alm, float %i.aec
  %i.alx = fcmp ogt float %i.alp, %i.alr
  %i.aly = fcmp ogt float %i.alu, %i.alw
  %or.cond = select i1 %i.alx, i1 true, i1 %i.aly, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.alz = shufflevector <2 x float> %i.wr, <2 x float> %i.aea, <2 x i32> <i32 0, i32 2>
  %i.ama = fcmp ogt <2 x float> %i.all, %i.alz    ; 2 uses
  %i.amb = extractelement <2 x i1> %i.ama, i64 0
  %i.amc = and i1 %i.amb, %i.alq
  %i.amd = extractelement <2 x i1> %i.ama, i64 1
  %i.ame = select i1 %i.amc, i1 %i.amd, i1 false
  %i.amf = select i1 %i.ame, i1 %i.alv, i1 false
  %.demorgan.i = or i1 %i.wz, %i.amf
  br i1 %.demorgan.i, label %.critedge.i50, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i50
  %i.amg = add nuw nsw i64 %.026.i3382, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.amg, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i50, !llvm.loop !3991

.critedge.i50:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3382 = phi i64 [ %i.amg, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03027.03381 = phi <4 x float> [ %i.ano, %bb.s ], [ %i.ahp, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03027.0.vec.extract = extractelement <4 x float> %.sroa.03027.03381, i64 0 ; 2 uses
  %i.amh = fsub float 1.000000e+00, %.sroa.03027.0.vec.extract ; 4 uses
  %i.ami = fmul float %i.amh, %i.amh              ; 2 uses
  %i.amj = fmul float %i.amh, %i.ami
  %i.amk = fmul float %.sroa.03027.0.vec.extract, 3.000000e+00
  %i.aml = fmul float %i.amk, %i.ami
  %foldExtExtBinop3513 = fmul <4 x float> %.sroa.03027.03381, %.sroa.03027.03381 ; 2 uses
  %i.amm = extractelement <4 x float> %foldExtExtBinop3513, i64 0
  %i.amn = fmul float %i.amm, 3.000000e+00
  %i.amo = fmul float %i.amh, %i.amn
  %foldExtExtBinop3515 = fmul <4 x float> %.sroa.03027.03381, %foldExtExtBinop3513
  %i.amp = insertelement <4 x float> poison, float %i.amj, i64 0
  %i.amq = shufflevector <4 x float> %i.amp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amr = insertelement <4 x float> poison, float %i.aml, i64 0
  %i.ams = shufflevector <4 x float> %i.amr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amt = insertelement <4 x float> poison, float %i.amo, i64 0
  %i.amu = shufflevector <4 x float> %i.amt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amv = shufflevector <4 x float> %foldExtExtBinop3515, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amw = fmul <4 x float> %i.uf, %i.amv
  %i.amx = fmul <4 x float> %i.ue, %i.amu
  %i.amy = fadd <4 x float> %i.amw, %i.amx
  %i.amz = fmul <4 x float> %i.ud, %i.ams
  %i.ana = fadd <4 x float> %i.amz, %i.amy
  %i.anb = fmul <4 x float> %i.uc, %i.amq
  %i.anc = fadd <4 x float> %i.anb, %i.ana        ; 2 uses
  %i.and = shufflevector <4 x float> %i.anc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ane = shufflevector <4 x float> %i.anc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.anf = shufflevector <4 x float> %.sroa.03027.03381, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ang = fsub <4 x float> %i.ane, %i.and
  %i.anh = fmul <4 x float> %i.anf, %i.ang
  %i.ani = fadd <4 x float> %i.and, %i.anh        ; 3 uses
  %i.anj = shufflevector <4 x float> %i.ani, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ank = fmul <4 x float> %i.ahi, %i.anj
  %i.anl = shufflevector <4 x float> %i.ani, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anm = fmul <4 x float> %i.ahj, %i.anl
  %i.ann = fadd <4 x float> %i.ank, %i.anm
  %i.ano = fsub <4 x float> %.sroa.03027.03381, %i.ann ; 9 uses
  %i.anp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ani) ; 2 uses
  %i.anq = extractelement <4 x float> %i.anp, i64 0 ; 2 uses
  %i.anr = extractelement <4 x float> %i.anp, i64 1 ; 2 uses
  %i.ans = fcmp olt float %i.anq, %i.anr
  %i.ant = select i1 %i.ans, float %i.anr, float %i.anq
  %i.anu = fcmp uge float %i.ant, %i.uv
  br i1 %i.anu, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i50
  %.sroa.03027.0.vec.extract3030 = extractelement <4 x float> %i.ano, i64 0 ; 4 uses
  %.sroa.03027.4.vec.extract3032 = extractelement <4 x float> %i.ano, i64 1 ; 3 uses
  %i.anv = fcmp oge float %.sroa.03027.0.vec.extract3030, 0.000000e+00
  %i.anw = fcmp ole float %.sroa.03027.0.vec.extract3030, 1.000000e+00
  %or.cond.i = and i1 %i.anv, %i.anw
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.anx = fcmp oge float %.sroa.03027.4.vec.extract3032, 0.000000e+00
  %i.any = fcmp ole float %.sroa.03027.4.vec.extract3032, 1.000000e+00
  %or.cond4.i = and i1 %i.anx, %i.any
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.anz = load float, ptr %i.gy, align 8, !noalias !4040
  %i.aoa = load float, ptr %i.gz, align 8, !noalias !4040
  %i.aob = load float, ptr %i.ha, align 8, !noalias !4040
  %i.aoc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.anz, i64 0
  %i.aod = insertelement <4 x float> %i.aoc, float %i.aoa, i64 1
  %i.aoe = insertelement <4 x float> %i.aod, float %i.aob, i64 2 ; 8 uses
  %i.aof = fmul <4 x float> %i.ri, %i.aoe         ; 3 uses
  %i.aog = fmul <4 x float> %i.rr, %i.aoe         ; 3 uses
  %i.aoh = fmul <4 x float> %i.sa, %i.aoe         ; 3 uses
  %i.aoi = fmul <4 x float> %i.sj, %i.aoe         ; 3 uses
  %i.aoj = fmul <4 x float> %i.ss, %i.aoe         ; 3 uses
  %i.aok = fmul <4 x float> %i.tb, %i.aoe         ; 3 uses
  %i.aol = fmul <4 x float> %i.tk, %i.aoe         ; 3 uses
  %i.aom = fmul <4 x float> %i.tt, %i.aoe         ; 3 uses
  %i.aon = fsub float 1.000000e+00, %.sroa.03027.4.vec.extract3032
  %i.aoo = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aop = shufflevector <4 x float> %i.aoj, <4 x float> %i.aok, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoq = shufflevector <4 x float> %i.aoj, <4 x float> %i.aok, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aor = shufflevector <4 x float> %i.aoj, <4 x float> %i.aok, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aos = shufflevector <4 x float> %i.aop, <4 x float> %i.aol, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aot = shufflevector <4 x float> %i.aoq, <4 x float> %i.aol, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aou = shufflevector <4 x float> %i.aor, <4 x float> %i.aol, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aov = shufflevector <4 x float> %i.aos, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aow = shufflevector <4 x float> %i.aot, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aox = shufflevector <4 x float> %i.aou, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoy = fadd <4 x float> %i.aow, %i.aox
  %i.aoz = fadd <4 x float> %i.aov, %i.aoy
  %i.apa = fmul <4 x float> %i.aoo, %i.aoz
  %i.apb = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apd = shufflevector <4 x float> %i.aof, <4 x float> %i.aog, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ape = shufflevector <4 x float> %i.aof, <4 x float> %i.aog, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apf = shufflevector <4 x float> %i.aof, <4 x float> %i.aog, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apg = shufflevector <4 x float> %i.apd, <4 x float> %i.aoh, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aph = shufflevector <4 x float> %i.ape, <4 x float> %i.aoh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.api = shufflevector <4 x float> %i.apf, <4 x float> %i.aoh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apj = shufflevector <4 x float> %i.apg, <4 x float> %i.aoi, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apk = shufflevector <4 x float> %i.aph, <4 x float> %i.aoi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apl = shufflevector <4 x float> %i.api, <4 x float> %i.aoi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apm = fadd <4 x float> %i.apk, %i.apl
  %i.apn = fadd <4 x float> %i.apj, %i.apm
  %i.apo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apc, <4 x float> %i.apn, <4 x float> %i.apa) ; 4 uses
  %i.app = fsub float 1.000000e+00, %.sroa.03027.0.vec.extract3030 ; 5 uses
  %i.apq = fmul nnan float %i.app, %i.app         ; 2 uses
  %i.apr = fmul float %i.app, %i.apq              ; 2 uses
  %i.aps = fmul nnan float %.sroa.03027.0.vec.extract3030, 3.000000e+00
  %i.apt = fmul float %i.aps, %i.apq              ; 2 uses
  %foldExtExtBinop3517 = fmul nnan <4 x float> %i.ano, %i.ano ; 2 uses
  %i.apu = extractelement <4 x float> %foldExtExtBinop3517, i64 0
  %i.apv = fmul nnan float %i.apu, 3.000000e+00
  %i.apw = fmul float %i.app, %i.apv              ; 2 uses
  %foldExtExtBinop3519 = fmul <4 x float> %i.ano, %foldExtExtBinop3517 ; 2 uses
  %shift3521 = shufflevector <4 x float> %i.apo, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3522 = fmul <4 x float> %foldExtExtBinop3519, %shift3521
  %i.apx = extractelement <4 x float> %foldExtExtBinop3522, i64 0
  %i.apy = extractelement <4 x float> %i.apo, i64 2
  %i.apz = call noundef float @llvm.fmuladd.f32(float %i.apw, float %i.apy, float %i.apx)
  %i.aqa = extractelement <4 x float> %i.apo, i64 1
  %i.aqb = call noundef float @llvm.fmuladd.f32(float %i.apt, float %i.aqa, float %i.apz)
  %i.aqc = extractelement <4 x float> %i.apo, i64 0
  %i.aqd = call noundef float @llvm.fmuladd.f32(float %i.apr, float %i.aqc, float %i.aqb) ; 3 uses
  %i.aqe = fcmp ugt float %i.la, %i.aqd
  br i1 %i.aqe, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aqf = load float, ptr %i.gb, align 4         ; 2 uses
  %i.aqg = fcmp ugt float %i.aqd, %i.aqf
  br i1 %i.aqg, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aqh = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.aqi = fsub <4 x float> splat (float 1.000000e+00), %i.aqh ; 4 uses
  %i.aqj = fmul <4 x float> %i.qo, %i.aqh
  %i.aqk = fmul <4 x float> %i.rf, %i.aqh
  %i.aql = fmul <4 x float> %i.rh, %i.aqh
  %i.aqm = fmul <4 x float> %i.qy, %i.aqh
  %i.aqn = fmul <4 x float> %i.qi, %i.aqi
  %i.aqo = fadd <4 x float> %i.aqj, %i.aqn
  %i.aqp = fmul <4 x float> %i.rb, %i.aqi
  %i.aqq = fadd <4 x float> %i.aqk, %i.aqp        ; 2 uses
  %i.aqr = fmul <4 x float> %i.rd, %i.aqi
  %i.aqs = fadd <4 x float> %i.aql, %i.aqr        ; 2 uses
  %i.aqt = fmul <4 x float> %i.qs, %i.aqi
  %i.aqu = fadd <4 x float> %i.aqm, %i.aqt
  %i.aqv = fsub <4 x float> %i.aqq, %i.aqo
  %i.aqw = fsub <4 x float> %i.aqs, %i.aqq        ; 2 uses
  %i.aqx = fsub <4 x float> %i.aqu, %i.aqs
  %i.aqy = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqz = fmul <4 x float> %i.aqy, %i.aqw
  %i.ara = insertelement <4 x float> poison, float %i.app, i64 0
  %i.arb = shufflevector <4 x float> %i.ara, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.arc = fmul <4 x float> %i.arb, %i.aqv
  %i.ard = fadd <4 x float> %i.arc, %i.aqz
  %i.are = fmul <4 x float> %i.aqy, %i.aqx
  %i.arf = fmul <4 x float> %i.arb, %i.aqw
  %i.arg = fadd <4 x float> %i.arf, %i.are
  %i.arh = fmul <4 x float> %i.aqy, %i.arg
  %i.ari = fmul <4 x float> %i.arb, %i.ard
  %i.arj = fadd <4 x float> %i.ari, %i.arh
  %i.ark = fmul <4 x float> %i.arj, splat (float 3.000000e+00) ; 2 uses
  %i.arl = shufflevector <4 x float> %foldExtExtBinop3519, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arm = fmul <4 x float> %i.vp, %i.arl
  %i.arn = insertelement <4 x float> poison, float %i.apw, i64 0
  %i.aro = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arp = fmul <4 x float> %i.vo, %i.aro
  %i.arq = fadd <4 x float> %i.arm, %i.arp
  %i.arr = insertelement <4 x float> poison, float %i.apt, i64 0
  %i.ars = shufflevector <4 x float> %i.arr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.art = fmul <4 x float> %i.vn, %i.ars
  %i.aru = fadd <4 x float> %i.art, %i.arq
  %i.arv = insertelement <4 x float> poison, float %i.apr, i64 0
  %i.arw = shufflevector <4 x float> %i.arv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arx = fmul <4 x float> %i.vm, %i.arw
  %i.ary = fadd <4 x float> %i.arx, %i.aru        ; 2 uses
  %i.arz = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.asa = shufflevector <4 x float> %i.ark, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.asb = fmul <4 x float> %i.ary, %i.asa
  %i.asc = fmul <4 x float> %i.ark, %i.arz
  %i.asd = fsub <4 x float> %i.asc, %i.asb        ; 3 uses
  %i.ase = load ptr, ptr %3, align 8
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 488
  %i.asg = load ptr, ptr %i.asf, align 8
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.asg, i64 %i.ic
  %i.asi = load ptr, ptr %i.ash, align 8          ; 5 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 52
  %i.ask = load i32, ptr %i.asj, align 4
  %i.asl = load i32, ptr %i.hc, align 4
  %i.asm = and i32 %i.asl, %i.ask
  %i.asn = icmp eq i32 %i.asm, 0
  br i1 %i.asn, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aso = load ptr, ptr %i.hd, align 8
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %i.asq = load ptr, ptr %i.asp, align 8
  %.not3373 = icmp eq ptr %i.asq, null
  br i1 %.not3373, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asi, i64 72
  %i.ass = load ptr, ptr %i.asr, align 8
  %.not3374 = icmp eq ptr %i.ass, null
  br i1 %.not3374, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_12BezierCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ast = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.asu = shufflevector <4 x float> %i.asd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.asv = shufflevector <4 x float> %i.asd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.asw = shufflevector <4 x float> %i.asd, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.asu, ptr %7, align 16
  store <4 x float> %i.asv, ptr %i.hf, align 16
  store <4 x float> %i.asw, ptr %i.hg, align 16
  store <4 x float> %i.aqy, ptr %i.hh, align 16
  store <4 x float> %i.aqh, ptr %i.hi, align 16
  store <4 x i32> %i.vt, ptr %i.hj, align 16
  store <4 x i32> %i.vr, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.asx = load i32, ptr %i.ast, align 4
  %i.asy = insertelement <4 x i32> poison, i32 %i.asx, i64 0
  %i.asz = shufflevector <4 x i32> %i.asy, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.asz, ptr %.ptr12.i.i.i, align 16
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.atb = load i32, ptr %i.ata, align 4
  %i.atc = insertelement <4 x i32> poison, i32 %i.atb, i64 0
  %i.atd = shufflevector <4 x i32> %i.atc, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atd, ptr %.ptr17.i.i.i, align 16
  store float %i.aqd, ptr %i.gb, align 4
  %i.ate = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !4041
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !4041
  store <2 x i64> %i.ate, ptr %6, align 16, !noalias !4041
  store ptr %6, ptr %5, align 8, !noalias !4041
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asi, i64 24
  %i.atg = load ptr, ptr %i.atf, align 8, !noalias !4041
  store ptr %i.atg, ptr %i.hp, align 8, !noalias !4041
  %i.ath = load ptr, ptr %i.he, align 8, !noalias !4041
  store ptr %i.ath, ptr %i.hq, align 8, !noalias !4041
  store ptr %1, ptr %i.hr, align 8, !noalias !4041
  store ptr %7, ptr %i.hs, align 8, !noalias !4041
  store i32 4, ptr %i.ht, align 8, !noalias !4041
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asi, i64 72
  %i.atj = load ptr, ptr %i.ati, align 8, !noalias !4042 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.atj, null
  %i.atk = bitcast <2 x i64> %i.ate to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.atj(ptr noundef nonnull %5), !noalias !4042, !inline_history !3998
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !4043
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.atl = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.atk, %.critedge.i.i ] ; 3 uses
  %i.atm = icmp ne <4 x i32> %i.atl, zeroinitializer ; 2 uses
  %i.atn = bitcast <4 x i1> %i.atm to i4
  %i.ato = icmp eq i4 %i.atn, 0
  br i1 %i.ato, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.atp = load ptr, ptr %i.hd, align 8, !noalias !4042 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8, !noalias !4042 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.atr, null
  br i1 %.not14.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ats = load i32, ptr %i.atp, align 8, !noalias !4042
  %i.att = and i32 %i.ats, 2
  %.not3375 = icmp eq i32 %i.att, 0
  br i1 %.not3375, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.atu = getelementptr inbounds nuw i8, ptr %i.asi, i64 60
  %i.atv = load i32, ptr %i.atu, align 4, !noalias !4042
  %i.atw = and i32 %i.atv, 4194304
  %.not3376 = icmp eq i32 %i.atw, 0
  br i1 %.not3376, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.atr(ptr noundef nonnull %5), !noalias !4042, !inline_history !3998
  %.pre3433 = load <4 x i32>, ptr %6, align 16, !noalias !4044
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.atx = phi <4 x i32> [ %.pre3433, %bb.af ], [ %i.atl, %bb.ae ], [ %i.atl, %bb.ac ]
  %i.aty = icmp ne <4 x i32> %i.atx, zeroinitializer ; 2 uses
  %i.atz = load ptr, ptr %i.hr, align 8, !noalias !4042
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 128 ; 2 uses
  %i.aub = load <4 x float>, ptr %i.aua, align 16, !noalias !4045
  %i.auc = select <4 x i1> %i.aty, <4 x float> splat (float -inf), <4 x float> %i.aub
  store <4 x float> %i.auc, ptr %i.aua, align 16, !noalias !4042
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ag, %bb.ab
  %.sroa.03044.0.in.in = phi <4 x i1> [ %i.atm, %bb.ab ], [ %i.aty, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !4041
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !4041
  %i.aud = bitcast <4 x i1> %.sroa.03044.0.in.in to i4
  %i.aue = icmp ne i4 %i.aud, 0                   ; 2 uses
  br i1 %i.aue, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  store float %i.aqf, ptr %i.gb, align 4
end_hunk_3
begin_hunk_4_@_ZN6embree4sse219CurveNiIntersector1ILi4EE11intersect_nINS0_26OrientedCurve1Intersector1INS_13BSplineCurveTELi3ELi4EEENS0_17Intersect1Epilog1ILb1EEEEEvRKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aix = fmul <2 x float> %i.aiw, %i.aii        ; 4 uses
  %i.aiy = fmul <2 x float> %i.aiw, %i.aij        ; 4 uses
  %i.aiz = fcmp olt <2 x float> %i.aix, %i.aiy    ; 3 uses
  %i.aja = extractelement <2 x i1> %i.aiz, i64 0
  %i.ajb = extractelement <2 x float> %i.aix, i64 0
  %i.ajc = extractelement <2 x float> %i.aiy, i64 0
  %i.ajd = select i1 %i.aja, float %i.ajc, float %i.ajb ; 2 uses
  %i.aje = fcmp olt float %i.aiv, %i.ajd
  %i.ajf = select i1 %i.aje, float %i.ajd, float %i.aiv
  %i.ajg = select <2 x i1> %i.air, <2 x float> %i.aip, <2 x float> %i.aiq ; 2 uses
  %i.ajh = select <2 x i1> %i.aiz, <2 x float> %i.aix, <2 x float> %i.aiy ; 2 uses
  %i.aji = fcmp olt <2 x float> %i.ajg, %i.ajh
  %i.ajj = select <2 x i1> %i.aji, <2 x float> %i.ajg, <2 x float> %i.ajh
  %i.ajk = shufflevector <4 x float> %i.ain, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ajl = fmul <2 x float> %i.ajk, %i.aik        ; 4 uses
  %i.ajm = fmul <2 x float> %i.ajk, %i.ail        ; 4 uses
  %i.ajn = fcmp olt <2 x float> %i.ajl, %i.ajm    ; 3 uses
  %i.ajo = extractelement <2 x i1> %i.ajn, i64 0
  %i.ajp = extractelement <2 x float> %i.ajl, i64 0
  %i.ajq = extractelement <2 x float> %i.ajm, i64 0
  %i.ajr = select i1 %i.ajo, float %i.ajq, float %i.ajp ; 2 uses
  %i.ajs = shufflevector <4 x float> %i.ain, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajt = fmul <2 x float> %i.ajs, %i.aik        ; 4 uses
  %i.aju = fmul <2 x float> %i.ajs, %i.ail        ; 4 uses
  %i.ajv = fcmp olt <2 x float> %i.ajt, %i.aju    ; 3 uses
  %i.ajw = extractelement <2 x i1> %i.ajv, i64 0
  %i.ajx = extractelement <2 x float> %i.ajt, i64 0
  %i.ajy = extractelement <2 x float> %i.aju, i64 0
  %i.ajz = select i1 %i.ajw, float %i.ajy, float %i.ajx ; 2 uses
  %i.aka = fcmp olt float %i.ajr, %i.ajz
  %i.akb = select i1 %i.aka, float %i.ajz, float %i.ajr
  %i.akc = select <2 x i1> %i.ajn, <2 x float> %i.ajl, <2 x float> %i.ajm ; 2 uses
  %i.akd = select <2 x i1> %i.ajv, <2 x float> %i.ajt, <2 x float> %i.aju ; 2 uses
  %i.ake = fcmp olt <2 x float> %i.akc, %i.akd
  %i.akf = select <2 x i1> %i.ake, <2 x float> %i.akc, <2 x float> %i.akd
  %i.akg = shufflevector <2 x i1> %i.air, <2 x i1> %i.ajn, <2 x i32> <i32 1, i32 3>
  %i.akh = shufflevector <2 x float> %i.aiq, <2 x float> %i.ajm, <2 x i32> <i32 1, i32 3>
  %i.aki = shufflevector <2 x float> %i.aip, <2 x float> %i.ajl, <2 x i32> <i32 1, i32 3>
  %i.akj = select <2 x i1> %i.akg, <2 x float> %i.akh, <2 x float> %i.aki ; 2 uses
  %i.akk = shufflevector <2 x i1> %i.aiz, <2 x i1> %i.ajv, <2 x i32> <i32 1, i32 3>
  %i.akl = shufflevector <2 x float> %i.aiy, <2 x float> %i.aju, <2 x i32> <i32 1, i32 3>
  %i.akm = shufflevector <2 x float> %i.aix, <2 x float> %i.ajt, <2 x i32> <i32 1, i32 3>
  %i.akn = select <2 x i1> %i.akk, <2 x float> %i.akl, <2 x float> %i.akm ; 2 uses
  %i.ako = fcmp olt <2 x float> %i.akj, %i.akn
  %i.akp = select <2 x i1> %i.ako, <2 x float> %i.akn, <2 x float> %i.akj ; 2 uses
  %i.akq = fadd float %i.ajf, %i.akb
  %i.akr = fadd <2 x float> %i.ajj, %i.akf
  %shift3514 = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3515 = fadd <2 x float> %i.akp, %shift3514
  %i.aks = extractelement <2 x float> %foldExtExtBinop3515, i64 0
  %i.akt = fadd float %.sroa.0980.0.vec.extract, %i.akq ; 2 uses
  %i.aku = shufflevector <4 x float> %i.agz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.akv = fadd <2 x float> %i.aku, %i.akr        ; 3 uses
  %i.akw = fadd float %.sroa.0980.4.vec.extract, %i.aks ; 2 uses
  %i.akx = extractelement <2 x float> %i.akv, i64 0 ; 2 uses
  %i.aky = fcmp olt float %i.akx, %i.wc
  %i.akz = select i1 %i.aky, float %i.wc, float %i.akx
  %i.ala = fcmp olt float %i.akt, %i.wd           ; 2 uses
  %i.alb = select i1 %i.ala, float %i.akt, float %i.wd
  %i.alc = extractelement <2 x float> %i.akv, i64 1 ; 2 uses
  %i.ald = fcmp olt float %i.alc, %i.adl
  %i.ale = select i1 %i.ald, float %i.adl, float %i.alc
  %i.alf = fcmp olt float %i.akw, %i.adm          ; 2 uses
  %i.alg = select i1 %i.alf, float %i.akw, float %i.adm
  %i.alh = fcmp ogt float %i.akz, %i.alb
  %i.ali = fcmp ogt float %i.ale, %i.alg
  %or.cond = select i1 %i.alh, i1 true, i1 %i.ali, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.alj = shufflevector <2 x float> %i.wb, <2 x float> %i.adk, <2 x i32> <i32 0, i32 2>
  %i.alk = fcmp ogt <2 x float> %i.akv, %i.alj    ; 2 uses
  %i.all = extractelement <2 x i1> %i.alk, i64 0
  %i.alm = and i1 %i.all, %i.ala
  %i.aln = extractelement <2 x i1> %i.alk, i64 1
  %i.alo = select i1 %i.alm, i1 %i.aln, i1 false
  %i.alp = select i1 %i.alo, i1 %i.alf, i1 false
  %.demorgan.i.i = or i1 %i.wj, %i.alp
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i19.i
  %i.alq = add nuw nsw i64 %.026.i.i3396, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.alq, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !4

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i.i3396 = phi i64 [ %i.alq, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.01640.03395 = phi <4 x float> [ %i.amy, %bb.s ], [ %i.agz, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.01640.0.vec.extract = extractelement <4 x float> %.sroa.01640.03395, i64 0 ; 2 uses
  %i.alr = fsub float 1.000000e+00, %.sroa.01640.0.vec.extract ; 4 uses
  %i.als = fmul float %i.alr, %i.alr              ; 2 uses
  %i.alt = fmul float %i.alr, %i.als
  %i.alu = fmul float %.sroa.01640.0.vec.extract, 3.000000e+00
  %i.alv = fmul float %i.alu, %i.als
  %foldExtExtBinop3517 = fmul <4 x float> %.sroa.01640.03395, %.sroa.01640.03395 ; 2 uses
  %i.alw = extractelement <4 x float> %foldExtExtBinop3517, i64 0
  %i.alx = fmul float %i.alw, 3.000000e+00
  %i.aly = fmul float %i.alr, %i.alx
  %foldExtExtBinop3519 = fmul <4 x float> %.sroa.01640.03395, %foldExtExtBinop3517
  %i.alz = insertelement <4 x float> poison, float %i.alt, i64 0
  %i.ama = shufflevector <4 x float> %i.alz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amb = insertelement <4 x float> poison, float %i.alv, i64 0
  %i.amc = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amd = insertelement <4 x float> poison, float %i.aly, i64 0
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amf = shufflevector <4 x float> %foldExtExtBinop3519, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amg = fmul <4 x float> %i.tp, %i.amf
  %i.amh = fmul <4 x float> %i.to, %i.ame
  %i.ami = fadd <4 x float> %i.amg, %i.amh
  %i.amj = fmul <4 x float> %i.tn, %i.amc
  %i.amk = fadd <4 x float> %i.amj, %i.ami
  %i.aml = fmul <4 x float> %i.tm, %i.ama
  %i.amm = fadd <4 x float> %i.aml, %i.amk        ; 2 uses
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.amo = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.amp = shufflevector <4 x float> %.sroa.01640.03395, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.amq = fsub <4 x float> %i.amo, %i.amn
  %i.amr = fmul <4 x float> %i.amp, %i.amq
  %i.ams = fadd <4 x float> %i.amn, %i.amr        ; 3 uses
  %i.amt = shufflevector <4 x float> %i.ams, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amu = fmul <4 x float> %i.ags, %i.amt
  %i.amv = shufflevector <4 x float> %i.ams, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.amw = fmul <4 x float> %i.agt, %i.amv
  %i.amx = fadd <4 x float> %i.amu, %i.amw
  %i.amy = fsub <4 x float> %.sroa.01640.03395, %i.amx ; 10 uses
  %i.amz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ams) ; 2 uses
  %i.ana = extractelement <4 x float> %i.amz, i64 0 ; 2 uses
  %i.anb = extractelement <4 x float> %i.amz, i64 1 ; 2 uses
  %i.anc = fcmp olt float %i.ana, %i.anb
  %i.and = select i1 %i.anc, float %i.anb, float %i.ana
  %i.ane = fcmp uge float %i.and, %i.uf
  br i1 %i.ane, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i19.i
  %.sroa.01640.0.vec.extract1643 = extractelement <4 x float> %i.amy, i64 0 ; 5 uses
  %.sroa.01640.4.vec.extract1645 = extractelement <4 x float> %i.amy, i64 1 ; 5 uses
  %i.anf = fcmp oge float %.sroa.01640.0.vec.extract1643, 0.000000e+00
  %i.ang = fcmp ole float %.sroa.01640.0.vec.extract1643, 1.000000e+00
  %or.cond.i.i = and i1 %i.anf, %i.ang
  br i1 %or.cond.i.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.anh = fcmp oge float %.sroa.01640.4.vec.extract1645, 0.000000e+00
  %i.ani = fcmp ole float %.sroa.01640.4.vec.extract1645, 1.000000e+00
  %or.cond4.i.i = and i1 %i.anh, %i.ani
  br i1 %or.cond4.i.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.anj = load float, ptr %i.ga, align 8, !noalias !5746
  %i.ank = load float, ptr %i.gb, align 8, !noalias !5746
  %i.anl = load float, ptr %i.gc, align 8, !noalias !5746
  %i.anm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.anj, i64 0
  %i.ann = insertelement <4 x float> %i.anm, float %i.ank, i64 1
  %i.ano = insertelement <4 x float> %i.ann, float %i.anl, i64 2 ; 8 uses
  %i.anp = load <4 x float>, ptr %1, align 16, !noalias !5747 ; 9 uses
  %i.anq = fsub <4 x float> %i.ps, %i.anp
  %i.anr = fmul <4 x float> %i.ano, %i.anq        ; 3 uses
  %i.ans = fsub <4 x float> %i.ql, %i.anp
  %i.ant = fmul <4 x float> %i.ano, %i.ans        ; 3 uses
  %i.anu = fsub <4 x float> %i.qn, %i.anp
  %i.anv = fmul <4 x float> %i.ano, %i.anu        ; 3 uses
  %i.anw = fsub <4 x float> %i.qc, %i.anp
  %i.anx = fmul <4 x float> %i.ano, %i.anw        ; 3 uses
  %i.any = fsub <4 x float> %i.py, %i.anp
  %i.anz = fmul <4 x float> %i.ano, %i.any        ; 3 uses
  %i.aoa = fsub <4 x float> %i.qp, %i.anp
  %i.aob = fmul <4 x float> %i.ano, %i.aoa        ; 3 uses
  %i.aoc = fsub <4 x float> %i.qr, %i.anp
  %i.aod = fmul <4 x float> %i.ano, %i.aoc        ; 3 uses
  %i.aoe = fsub <4 x float> %i.qi, %i.anp
  %i.aof = fmul <4 x float> %i.ano, %i.aoe        ; 3 uses
  %i.aog = fsub float 1.000000e+00, %.sroa.01640.4.vec.extract1645
  %i.aoh = shufflevector <4 x float> %i.amy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aoi = shufflevector <4 x float> %i.anz, <4 x float> %i.aob, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoj = shufflevector <4 x float> %i.anz, <4 x float> %i.aob, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aok = shufflevector <4 x float> %i.anz, <4 x float> %i.aob, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aol = shufflevector <4 x float> %i.aoi, <4 x float> %i.aod, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aom = shufflevector <4 x float> %i.aoj, <4 x float> %i.aod, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aon = shufflevector <4 x float> %i.aok, <4 x float> %i.aod, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aoo = shufflevector <4 x float> %i.aol, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aop = shufflevector <4 x float> %i.aom, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoq = shufflevector <4 x float> %i.aon, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aor = fadd <4 x float> %i.aop, %i.aoq
  %i.aos = fadd <4 x float> %i.aoo, %i.aor
  %i.aot = fmul <4 x float> %i.aoh, %i.aos
  %i.aou = insertelement <4 x float> poison, float %i.aog, i64 0
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aow = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aox = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoy = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoz = shufflevector <4 x float> %i.aow, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apa = shufflevector <4 x float> %i.aox, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apb = shufflevector <4 x float> %i.aoy, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apc = shufflevector <4 x float> %i.aoz, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apd = shufflevector <4 x float> %i.apa, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ape = shufflevector <4 x float> %i.apb, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apf = fadd <4 x float> %i.apd, %i.ape
  %i.apg = fadd <4 x float> %i.apc, %i.apf
  %i.aph = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aov, <4 x float> %i.apg, <4 x float> %i.aot) ; 4 uses
  %i.api = fsub float 1.000000e+00, %.sroa.01640.0.vec.extract1643 ; 5 uses
  %i.apj = fmul nnan float %i.api, %i.api         ; 2 uses
  %i.apk = fmul float %i.api, %i.apj              ; 2 uses
  %i.apl = fmul nnan float %.sroa.01640.0.vec.extract1643, 3.000000e+00
  %i.apm = fmul float %i.apl, %i.apj              ; 2 uses
  %foldExtExtBinop3521 = fmul nnan <4 x float> %i.amy, %i.amy ; 2 uses
  %i.apn = extractelement <4 x float> %foldExtExtBinop3521, i64 0
  %i.apo = fmul nnan float %i.apn, 3.000000e+00
  %i.app = fmul float %i.api, %i.apo              ; 2 uses
  %foldExtExtBinop3523 = fmul <4 x float> %i.amy, %foldExtExtBinop3521 ; 2 uses
  %shift3525 = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3526 = fmul <4 x float> %foldExtExtBinop3523, %shift3525
  %i.apq = extractelement <4 x float> %foldExtExtBinop3526, i64 0
  %i.apr = extractelement <4 x float> %i.aph, i64 2
  %i.aps = call noundef float @llvm.fmuladd.f32(float %i.app, float %i.apr, float %i.apq)
  %i.apt = extractelement <4 x float> %i.aph, i64 1
  %i.apu = call noundef float @llvm.fmuladd.f32(float %i.apm, float %i.apt, float %i.aps)
  %i.apv = extractelement <4 x float> %i.aph, i64 0
  %i.apw = call noundef float @llvm.fmuladd.f32(float %i.apk, float %i.apv, float %i.apu) ; 4 uses
  %i.apx = extractelement <4 x float> %i.anp, i64 3
  %i.apy = fcmp ugt float %i.apx, %i.apw
  br i1 %i.apy, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.apz = load float, ptr %i.ff, align 16        ; 2 uses
  %i.aqa = fcmp ugt float %i.apw, %i.apz
  br i1 %i.aqa, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aqb = shufflevector <4 x float> %i.amy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.aqc = fsub <4 x float> splat (float 1.000000e+00), %i.aqb ; 4 uses
  %i.aqd = fmul <4 x float> %i.py, %i.aqb
  %i.aqe = fmul <4 x float> %i.qp, %i.aqb
  %i.aqf = fmul <4 x float> %i.qr, %i.aqb
  %i.aqg = fmul <4 x float> %i.qi, %i.aqb
  %i.aqh = fmul <4 x float> %i.ps, %i.aqc
  %i.aqi = fadd <4 x float> %i.aqd, %i.aqh
  %i.aqj = fmul <4 x float> %i.ql, %i.aqc
  %i.aqk = fadd <4 x float> %i.aqe, %i.aqj        ; 2 uses
  %i.aql = fmul <4 x float> %i.qn, %i.aqc
  %i.aqm = fadd <4 x float> %i.aqf, %i.aql        ; 2 uses
  %i.aqn = fmul <4 x float> %i.qc, %i.aqc
  %i.aqo = fadd <4 x float> %i.aqg, %i.aqn
  %i.aqp = fsub <4 x float> %i.aqk, %i.aqi
  %i.aqq = fsub <4 x float> %i.aqm, %i.aqk        ; 2 uses
  %i.aqr = fsub <4 x float> %i.aqo, %i.aqm
  %i.aqs = shufflevector <4 x float> %i.amy, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqt = fmul <4 x float> %i.aqs, %i.aqq
  %i.aqu = insertelement <4 x float> poison, float %i.api, i64 0
  %i.aqv = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqw = fmul <4 x float> %i.aqv, %i.aqp
  %i.aqx = fadd <4 x float> %i.aqw, %i.aqt
  %i.aqy = fmul <4 x float> %i.aqs, %i.aqr
  %i.aqz = fmul <4 x float> %i.aqv, %i.aqq
  %i.ara = fadd <4 x float> %i.aqz, %i.aqy
  %i.arb = fmul <4 x float> %i.aqs, %i.ara
  %i.arc = fmul <4 x float> %i.aqv, %i.aqx
  %i.ard = fadd <4 x float> %i.arc, %i.arb
  %i.are = fmul <4 x float> %i.ard, splat (float 3.000000e+00) ; 2 uses
  %i.arf = shufflevector <4 x float> %foldExtExtBinop3523, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arg = fmul <4 x float> %i.uz, %i.arf
  %i.arh = insertelement <4 x float> poison, float %i.app, i64 0
  %i.ari = shufflevector <4 x float> %i.arh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arj = fmul <4 x float> %i.uy, %i.ari
  %i.ark = fadd <4 x float> %i.arg, %i.arj
  %i.arl = insertelement <4 x float> poison, float %i.apm, i64 0
  %i.arm = shufflevector <4 x float> %i.arl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arn = fmul <4 x float> %i.ux, %i.arm
  %i.aro = fadd <4 x float> %i.arn, %i.ark
  %i.arp = insertelement <4 x float> poison, float %i.apk, i64 0
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arr = fmul <4 x float> %i.uw, %i.arq
  %i.ars = fadd <4 x float> %i.arr, %i.aro        ; 2 uses
  %i.art = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aru = shufflevector <4 x float> %i.are, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arv = fmul <4 x float> %i.ars, %i.aru
  %i.arw = fmul <4 x float> %i.are, %i.art
  %i.arx = fsub <4 x float> %i.arw, %i.arv        ; 3 uses
  %i.ary = load ptr, ptr %2, align 8
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 488
  %i.asa = load ptr, ptr %i.arz, align 8
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.he
  %i.asc = load ptr, ptr %i.asb, align 8          ; 5 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 52
  %i.ase = load i32, ptr %i.asd, align 4
  %i.asf = load i32, ptr %i.gd, align 4
  %i.asg = and i32 %i.asf, %i.ase
  %i.ash = icmp eq i32 %i.asg, 0
  br i1 %i.ash, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.asi = load ptr, ptr %i.ge, align 8
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8
  %.not3387 = icmp eq ptr %i.ask, null
  br i1 %.not3387, label %bb.z, label %.critedge.i.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asc, i64 64
  %i.asm = load ptr, ptr %i.asl, align 16
  %.not3388 = icmp eq ptr %i.asm, null
  br i1 %.not3388, label %bb.ah, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.asn = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.aso = shufflevector <4 x float> %i.arx, <4 x float> %i.amy, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.aso, ptr %5, align 16
  store float %.sroa.01640.4.vec.extract1645, ptr %i.gg, align 16
  store <2 x i32> %i.vb, ptr %i.gh, align 4
  %i.asp = load i32, ptr %i.asn, align 4
  store i32 %i.asp, ptr %i.gi, align 4
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.asr = load i32, ptr %i.asq, align 4
  store i32 %i.asr, ptr %i.gj, align 16
  store float %i.apw, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asc, i64 24
  %i.ast = load ptr, ptr %i.ass, align 8
  store ptr %i.ast, ptr %i.gk, align 8
  %i.asu = load ptr, ptr %i.gf, align 8
  store ptr %i.asu, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asc, i64 64
  %i.asw = load ptr, ptr %i.asv, align 16         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.asw, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i
  call void %i.asw(ptr noundef nonnull %4), !inline_history !5712
  %i.asx = load ptr, ptr %4, align 8
  %i.asy = load i32, ptr %i.asx, align 4
  %i.asz = icmp eq i32 %i.asy, 0
  br i1 %i.asz, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i.i
  %i.ata = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8          ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.atc, null
  br i1 %.not14.i.i.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.atd = load i32, ptr %i.ata, align 8
  %i.ate = and i32 %i.atd, 2
  %.not3389 = icmp eq i32 %i.ate, 0
  br i1 %.not3389, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asc, i64 60
  %i.atg = load i32, ptr %i.atf, align 4
  %i.ath = and i32 %i.atg, 4194304
  %.not3390 = icmp eq i32 %i.ath, 0
  br i1 %.not3390, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.atc(ptr noundef nonnull %4), !inline_history !5712
  %.pre = load ptr, ptr %4, align 8
  %.pre3442 = load i32, ptr %.pre, align 4
  %i.ati = icmp eq i32 %.pre3442, 0
  br i1 %i.ati, label %bb.af, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  %i.atj = load ptr, ptr %i.gm, align 8           ; 9 uses
  %i.atk = load ptr, ptr %i.gn, align 8           ; 9 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 48
  %i.atm = load float, ptr %i.atk, align 4
  store float %i.atm, ptr %i.atl, align 4
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
  %i.ato = load float, ptr %i.atn, align 4
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atj, i64 52
  store float %i.ato, ptr %i.atp, align 4
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.atr = load float, ptr %i.atq, align 4
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atj, i64 56
  store float %i.atr, ptr %i.ats, align 4
  %i.att = getelementptr inbounds nuw i8, ptr %i.atk, i64 12
  %i.atu = load float, ptr %i.att, align 4
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atj, i64 60
  store float %i.atu, ptr %i.atv, align 4
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.atx = load float, ptr %i.atw, align 16
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atj, i64 64
  store float %i.atx, ptr %i.aty, align 16
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atk, i64 20
  %i.aua = load i32, ptr %i.atz, align 4
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atj, i64 68
  store i32 %i.aua, ptr %i.aub, align 4
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atk, i64 24
  %i.aud = load i32, ptr %i.auc, align 8
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atj, i64 72
  store i32 %i.aud, ptr %i.aue, align 8
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atk, i64 28
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atj, i64 76
  %i.auh = load i32, ptr %i.auf, align 4
  store i32 %i.auh, ptr %i.aug, align 4
  %i.aui = getelementptr inbounds nuw i8, ptr %i.atk, i64 32
end_hunk_4
begin_hunk_5_@_ZN6embree4sse219CurveNiIntersector1ILi4EE10occluded_nINS0_26OrientedCurve1Intersector1INS_13BSplineCurveTELi3ELi4EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aio = fmul <2 x float> %i.ain, %i.ahz        ; 4 uses
  %i.aip = fmul <2 x float> %i.ain, %i.aia        ; 4 uses
  %i.aiq = fcmp olt <2 x float> %i.aio, %i.aip    ; 3 uses
  %i.air = extractelement <2 x i1> %i.aiq, i64 0
  %i.ais = extractelement <2 x float> %i.aio, i64 0
  %i.ait = extractelement <2 x float> %i.aip, i64 0
  %i.aiu = select i1 %i.air, float %i.ait, float %i.ais ; 2 uses
  %i.aiv = fcmp olt float %i.aim, %i.aiu
  %i.aiw = select i1 %i.aiv, float %i.aiu, float %i.aim
  %i.aix = select <2 x i1> %i.aii, <2 x float> %i.aig, <2 x float> %i.aih ; 2 uses
  %i.aiy = select <2 x i1> %i.aiq, <2 x float> %i.aio, <2 x float> %i.aip ; 2 uses
  %i.aiz = fcmp olt <2 x float> %i.aix, %i.aiy
  %i.aja = select <2 x i1> %i.aiz, <2 x float> %i.aix, <2 x float> %i.aiy
  %i.ajb = shufflevector <4 x float> %i.aie, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ajc = fmul <2 x float> %i.ajb, %i.aib        ; 4 uses
  %i.ajd = fmul <2 x float> %i.ajb, %i.aic        ; 4 uses
  %i.aje = fcmp olt <2 x float> %i.ajc, %i.ajd    ; 3 uses
  %i.ajf = extractelement <2 x i1> %i.aje, i64 0
  %i.ajg = extractelement <2 x float> %i.ajc, i64 0
  %i.ajh = extractelement <2 x float> %i.ajd, i64 0
  %i.aji = select i1 %i.ajf, float %i.ajh, float %i.ajg ; 2 uses
  %i.ajj = shufflevector <4 x float> %i.aie, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajk = fmul <2 x float> %i.ajj, %i.aib        ; 4 uses
  %i.ajl = fmul <2 x float> %i.ajj, %i.aic        ; 4 uses
  %i.ajm = fcmp olt <2 x float> %i.ajk, %i.ajl    ; 3 uses
  %i.ajn = extractelement <2 x i1> %i.ajm, i64 0
  %i.ajo = extractelement <2 x float> %i.ajk, i64 0
  %i.ajp = extractelement <2 x float> %i.ajl, i64 0
  %i.ajq = select i1 %i.ajn, float %i.ajp, float %i.ajo ; 2 uses
  %i.ajr = fcmp olt float %i.aji, %i.ajq
  %i.ajs = select i1 %i.ajr, float %i.ajq, float %i.aji
  %i.ajt = select <2 x i1> %i.aje, <2 x float> %i.ajc, <2 x float> %i.ajd ; 2 uses
  %i.aju = select <2 x i1> %i.ajm, <2 x float> %i.ajk, <2 x float> %i.ajl ; 2 uses
  %i.ajv = fcmp olt <2 x float> %i.ajt, %i.aju
  %i.ajw = select <2 x i1> %i.ajv, <2 x float> %i.ajt, <2 x float> %i.aju
  %i.ajx = shufflevector <2 x i1> %i.aii, <2 x i1> %i.aje, <2 x i32> <i32 1, i32 3>
  %i.ajy = shufflevector <2 x float> %i.aih, <2 x float> %i.ajd, <2 x i32> <i32 1, i32 3>
  %i.ajz = shufflevector <2 x float> %i.aig, <2 x float> %i.ajc, <2 x i32> <i32 1, i32 3>
  %i.aka = select <2 x i1> %i.ajx, <2 x float> %i.ajy, <2 x float> %i.ajz ; 2 uses
  %i.akb = shufflevector <2 x i1> %i.aiq, <2 x i1> %i.ajm, <2 x i32> <i32 1, i32 3>
  %i.akc = shufflevector <2 x float> %i.aip, <2 x float> %i.ajl, <2 x i32> <i32 1, i32 3>
  %i.akd = shufflevector <2 x float> %i.aio, <2 x float> %i.ajk, <2 x i32> <i32 1, i32 3>
  %i.ake = select <2 x i1> %i.akb, <2 x float> %i.akc, <2 x float> %i.akd ; 2 uses
  %i.akf = fcmp olt <2 x float> %i.aka, %i.ake
  %i.akg = select <2 x i1> %i.akf, <2 x float> %i.ake, <2 x float> %i.aka ; 2 uses
  %i.akh = fadd float %i.aiw, %i.ajs
  %i.aki = fadd <2 x float> %i.aja, %i.ajw
  %shift3507 = shufflevector <2 x float> %i.akg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3508 = fadd <2 x float> %i.akg, %shift3507
  %i.akj = extractelement <2 x float> %foldExtExtBinop3508, i64 0
  %i.akk = fadd float %.sroa.01621.0.vec.extract, %i.akh ; 2 uses
  %i.akl = shufflevector <4 x float> %i.agq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.akm = fadd <2 x float> %i.akl, %i.aki        ; 3 uses
  %i.akn = fadd float %.sroa.01621.4.vec.extract, %i.akj ; 2 uses
  %i.ako = extractelement <2 x float> %i.akm, i64 0 ; 2 uses
  %i.akp = fcmp olt float %i.ako, %i.vt
  %i.akq = select i1 %i.akp, float %i.vt, float %i.ako
  %i.akr = fcmp olt float %i.akk, %i.vu           ; 2 uses
  %i.aks = select i1 %i.akr, float %i.akk, float %i.vu
  %i.akt = extractelement <2 x float> %i.akm, i64 1 ; 2 uses
  %i.aku = fcmp olt float %i.akt, %i.adc
  %i.akv = select i1 %i.aku, float %i.adc, float %i.akt
  %i.akw = fcmp olt float %i.akn, %i.add          ; 2 uses
  %i.akx = select i1 %i.akw, float %i.akn, float %i.add
  %i.aky = fcmp ogt float %i.akq, %i.aks
  %i.akz = fcmp ogt float %i.akv, %i.akx
  %or.cond = select i1 %i.aky, i1 true, i1 %i.akz, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i: ; preds = %bb.r
  %i.ala = shufflevector <2 x float> %i.vs, <2 x float> %i.adb, <2 x i32> <i32 0, i32 2>
  %i.alb = fcmp ogt <2 x float> %i.akm, %i.ala    ; 2 uses
  %i.alc = extractelement <2 x i1> %i.alb, i64 0
  %i.ald = and i1 %i.alc, %i.akr
  %i.ale = extractelement <2 x i1> %i.alb, i64 1
  %i.alf = select i1 %i.ald, i1 %i.ale, i1 false
  %i.alg = select i1 %i.alf, i1 %i.akw, i1 false
  %.demorgan.i.i = or i1 %i.wa, %i.alg
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i19.i
  %i.alh = add nuw nsw i64 %.026.i.i3376, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.alh, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !6

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, %bb.s
  %.026.i.i3376 = phi i64 [ %i.alh, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ]
  %.sroa.02557.03375 = phi <4 x float> [ %i.amp, %bb.s ], [ %i.agq, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ] ; 6 uses
  %.sroa.02557.0.vec.extract = extractelement <4 x float> %.sroa.02557.03375, i64 0 ; 2 uses
  %i.ali = fsub float 1.000000e+00, %.sroa.02557.0.vec.extract ; 4 uses
  %i.alj = fmul float %i.ali, %i.ali              ; 2 uses
  %i.alk = fmul float %i.ali, %i.alj
  %i.all = fmul float %.sroa.02557.0.vec.extract, 3.000000e+00
  %i.alm = fmul float %i.all, %i.alj
  %foldExtExtBinop3510 = fmul <4 x float> %.sroa.02557.03375, %.sroa.02557.03375 ; 2 uses
  %i.aln = extractelement <4 x float> %foldExtExtBinop3510, i64 0
  %i.alo = fmul float %i.aln, 3.000000e+00
  %i.alp = fmul float %i.ali, %i.alo
  %foldExtExtBinop3512 = fmul <4 x float> %.sroa.02557.03375, %foldExtExtBinop3510
  %i.alq = insertelement <4 x float> poison, float %i.alk, i64 0
  %i.alr = shufflevector <4 x float> %i.alq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.als = insertelement <4 x float> poison, float %i.alm, i64 0
  %i.alt = shufflevector <4 x float> %i.als, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alu = insertelement <4 x float> poison, float %i.alp, i64 0
  %i.alv = shufflevector <4 x float> %i.alu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alw = shufflevector <4 x float> %foldExtExtBinop3512, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alx = fmul <4 x float> %i.ti, %i.alw
  %i.aly = fmul <4 x float> %i.th, %i.alv
  %i.alz = fadd <4 x float> %i.alx, %i.aly
  %i.ama = fmul <4 x float> %i.tg, %i.alt
  %i.amb = fadd <4 x float> %i.ama, %i.alz
  %i.amc = fmul <4 x float> %i.tf, %i.alr
  %i.amd = fadd <4 x float> %i.amc, %i.amb        ; 2 uses
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.amf = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.amg = shufflevector <4 x float> %.sroa.02557.03375, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.amh = fsub <4 x float> %i.amf, %i.ame
  %i.ami = fmul <4 x float> %i.amg, %i.amh
  %i.amj = fadd <4 x float> %i.ame, %i.ami        ; 3 uses
  %i.amk = shufflevector <4 x float> %i.amj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aml = fmul <4 x float> %i.agj, %i.amk
  %i.amm = shufflevector <4 x float> %i.amj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.amn = fmul <4 x float> %i.agk, %i.amm
  %i.amo = fadd <4 x float> %i.aml, %i.amn
  %i.amp = fsub <4 x float> %.sroa.02557.03375, %i.amo ; 10 uses
  %i.amq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.amj) ; 2 uses
  %i.amr = extractelement <4 x float> %i.amq, i64 0 ; 2 uses
  %i.ams = extractelement <4 x float> %i.amq, i64 1 ; 2 uses
  %i.amt = fcmp olt float %i.amr, %i.ams
  %i.amu = select i1 %i.amt, float %i.ams, float %i.amr
  %i.amv = fcmp uge float %i.amu, %i.ty
  br i1 %i.amv, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i19.i
  %.sroa.02557.0.vec.extract2560 = extractelement <4 x float> %i.amp, i64 0 ; 4 uses
  %.sroa.02557.4.vec.extract2562 = extractelement <4 x float> %i.amp, i64 1 ; 4 uses
  %i.amw = fcmp oge float %.sroa.02557.0.vec.extract2560, 0.000000e+00
  %i.amx = fcmp ole float %.sroa.02557.0.vec.extract2560, 1.000000e+00
  %or.cond.i.i = and i1 %i.amw, %i.amx
  br i1 %or.cond.i.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.amy = fcmp oge float %.sroa.02557.4.vec.extract2562, 0.000000e+00
  %i.amz = fcmp ole float %.sroa.02557.4.vec.extract2562, 1.000000e+00
  %or.cond4.i.i = and i1 %i.amy, %i.amz
  br i1 %or.cond4.i.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ana = load float, ptr %i.ga, align 8, !noalias !5874
  %i.anb = load float, ptr %i.gb, align 8, !noalias !5874
  %i.anc = load float, ptr %i.gc, align 8, !noalias !5874
  %i.and = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ana, i64 0
  %i.ane = insertelement <4 x float> %i.and, float %i.anb, i64 1
  %i.anf = insertelement <4 x float> %i.ane, float %i.anc, i64 2 ; 8 uses
  %i.ang = load <4 x float>, ptr %1, align 16, !noalias !5875 ; 9 uses
  %i.anh = fsub <4 x float> %i.pl, %i.ang
  %i.ani = fmul <4 x float> %i.anf, %i.anh        ; 3 uses
  %i.anj = fsub <4 x float> %i.qe, %i.ang
  %i.ank = fmul <4 x float> %i.anf, %i.anj        ; 3 uses
  %i.anl = fsub <4 x float> %i.qg, %i.ang
  %i.anm = fmul <4 x float> %i.anf, %i.anl        ; 3 uses
  %i.ann = fsub <4 x float> %i.pv, %i.ang
  %i.ano = fmul <4 x float> %i.anf, %i.ann        ; 3 uses
  %i.anp = fsub <4 x float> %i.pr, %i.ang
  %i.anq = fmul <4 x float> %i.anf, %i.anp        ; 3 uses
  %i.anr = fsub <4 x float> %i.qi, %i.ang
  %i.ans = fmul <4 x float> %i.anf, %i.anr        ; 3 uses
  %i.ant = fsub <4 x float> %i.qk, %i.ang
  %i.anu = fmul <4 x float> %i.anf, %i.ant        ; 3 uses
  %i.anv = fsub <4 x float> %i.qb, %i.ang
  %i.anw = fmul <4 x float> %i.anf, %i.anv        ; 3 uses
  %i.anx = fsub float 1.000000e+00, %.sroa.02557.4.vec.extract2562
  %i.any = shufflevector <4 x float> %i.amp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anz = shufflevector <4 x float> %i.anq, <4 x float> %i.ans, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoa = shufflevector <4 x float> %i.anq, <4 x float> %i.ans, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aob = shufflevector <4 x float> %i.anq, <4 x float> %i.ans, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoc = shufflevector <4 x float> %i.anz, <4 x float> %i.anu, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aod = shufflevector <4 x float> %i.aoa, <4 x float> %i.anu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aoe = shufflevector <4 x float> %i.aob, <4 x float> %i.anu, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aof = shufflevector <4 x float> %i.aoc, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aog = shufflevector <4 x float> %i.aod, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoh = shufflevector <4 x float> %i.aoe, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoi = fadd <4 x float> %i.aog, %i.aoh
  %i.aoj = fadd <4 x float> %i.aof, %i.aoi
  %i.aok = fmul <4 x float> %i.any, %i.aoj
  %i.aol = insertelement <4 x float> poison, float %i.anx, i64 0
  %i.aom = shufflevector <4 x float> %i.aol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aon = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aoo = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aop = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoq = shufflevector <4 x float> %i.aon, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aor = shufflevector <4 x float> %i.aoo, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aos = shufflevector <4 x float> %i.aop, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aot = shufflevector <4 x float> %i.aoq, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aou = shufflevector <4 x float> %i.aor, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aov = shufflevector <4 x float> %i.aos, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aow = fadd <4 x float> %i.aou, %i.aov
  %i.aox = fadd <4 x float> %i.aot, %i.aow
  %i.aoy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aom, <4 x float> %i.aox, <4 x float> %i.aok) ; 4 uses
  %i.aoz = fsub float 1.000000e+00, %.sroa.02557.0.vec.extract2560 ; 5 uses
  %i.apa = fmul nnan float %i.aoz, %i.aoz         ; 2 uses
  %i.apb = fmul float %i.aoz, %i.apa              ; 2 uses
  %i.apc = fmul nnan float %.sroa.02557.0.vec.extract2560, 3.000000e+00
  %i.apd = fmul float %i.apc, %i.apa              ; 2 uses
  %foldExtExtBinop3514 = fmul nnan <4 x float> %i.amp, %i.amp ; 2 uses
  %i.ape = extractelement <4 x float> %foldExtExtBinop3514, i64 0
  %i.apf = fmul nnan float %i.ape, 3.000000e+00
  %i.apg = fmul float %i.aoz, %i.apf              ; 2 uses
  %foldExtExtBinop3516 = fmul <4 x float> %i.amp, %foldExtExtBinop3514 ; 2 uses
  %shift3518 = shufflevector <4 x float> %i.aoy, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3519 = fmul <4 x float> %foldExtExtBinop3516, %shift3518
  %i.aph = extractelement <4 x float> %foldExtExtBinop3519, i64 0
  %i.api = extractelement <4 x float> %i.aoy, i64 2
  %i.apj = call noundef float @llvm.fmuladd.f32(float %i.apg, float %i.api, float %i.aph)
  %i.apk = extractelement <4 x float> %i.aoy, i64 1
  %i.apl = call noundef float @llvm.fmuladd.f32(float %i.apd, float %i.apk, float %i.apj)
  %i.apm = extractelement <4 x float> %i.aoy, i64 0
  %i.apn = call noundef float @llvm.fmuladd.f32(float %i.apb, float %i.apm, float %i.apl) ; 3 uses
  %i.apo = extractelement <4 x float> %i.ang, i64 3
  %i.app = fcmp ugt float %i.apo, %i.apn
  br i1 %i.app, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.apq = load float, ptr %i.ff, align 16        ; 2 uses
  %i.apr = fcmp ugt float %i.apn, %i.apq
  br i1 %i.apr, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aps = shufflevector <4 x float> %i.amp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apt = fsub <4 x float> splat (float 1.000000e+00), %i.aps ; 4 uses
  %i.apu = fmul <4 x float> %i.pr, %i.aps
  %i.apv = fmul <4 x float> %i.qi, %i.aps
  %i.apw = fmul <4 x float> %i.qk, %i.aps
  %i.apx = fmul <4 x float> %i.qb, %i.aps
  %i.apy = fmul <4 x float> %i.pl, %i.apt
  %i.apz = fadd <4 x float> %i.apu, %i.apy
  %i.aqa = fmul <4 x float> %i.qe, %i.apt
  %i.aqb = fadd <4 x float> %i.apv, %i.aqa        ; 2 uses
  %i.aqc = fmul <4 x float> %i.qg, %i.apt
  %i.aqd = fadd <4 x float> %i.apw, %i.aqc        ; 2 uses
  %i.aqe = fmul <4 x float> %i.pv, %i.apt
  %i.aqf = fadd <4 x float> %i.apx, %i.aqe
  %i.aqg = fsub <4 x float> %i.aqb, %i.apz
  %i.aqh = fsub <4 x float> %i.aqd, %i.aqb        ; 2 uses
  %i.aqi = fsub <4 x float> %i.aqf, %i.aqd
  %i.aqj = shufflevector <4 x float> %i.amp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqk = fmul <4 x float> %i.aqj, %i.aqh
  %i.aql = insertelement <4 x float> poison, float %i.aoz, i64 0
  %i.aqm = shufflevector <4 x float> %i.aql, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqn = fmul <4 x float> %i.aqm, %i.aqg
  %i.aqo = fadd <4 x float> %i.aqn, %i.aqk
  %i.aqp = fmul <4 x float> %i.aqj, %i.aqi
  %i.aqq = fmul <4 x float> %i.aqm, %i.aqh
  %i.aqr = fadd <4 x float> %i.aqq, %i.aqp
  %i.aqs = fmul <4 x float> %i.aqj, %i.aqr
  %i.aqt = fmul <4 x float> %i.aqm, %i.aqo
  %i.aqu = fadd <4 x float> %i.aqt, %i.aqs
  %i.aqv = fmul <4 x float> %i.aqu, splat (float 3.000000e+00) ; 2 uses
  %i.aqw = shufflevector <4 x float> %foldExtExtBinop3516, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqx = fmul <4 x float> %i.us, %i.aqw
  %i.aqy = insertelement <4 x float> poison, float %i.apg, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ara = fmul <4 x float> %i.ur, %i.aqz
  %i.arb = fadd <4 x float> %i.aqx, %i.ara
  %i.arc = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.ard = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.are = fmul <4 x float> %i.uq, %i.ard
  %i.arf = fadd <4 x float> %i.are, %i.arb
  %i.arg = insertelement <4 x float> poison, float %i.apb, i64 0
  %i.arh = shufflevector <4 x float> %i.arg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ari = fmul <4 x float> %i.up, %i.arh
  %i.arj = fadd <4 x float> %i.ari, %i.arf        ; 2 uses
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arl = shufflevector <4 x float> %i.aqv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arm = fmul <4 x float> %i.arj, %i.arl
  %i.arn = fmul <4 x float> %i.aqv, %i.ark
  %i.aro = fsub <4 x float> %i.arn, %i.arm
  %i.arp = load ptr, ptr %2, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 488
  %i.arr = load ptr, ptr %i.arq, align 8
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %i.gx
  %i.art = load ptr, ptr %i.ars, align 8          ; 5 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 52
  %i.arv = load i32, ptr %i.aru, align 4
  %i.arw = load i32, ptr %i.gd, align 4
  %i.arx = and i32 %i.arw, %i.arv
  %i.ary = icmp eq i32 %i.arx, 0
  br i1 %i.ary, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.arz = load ptr, ptr %i.ge, align 8
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 16
  %i.asb = load ptr, ptr %i.asa, align 8
  %.not3367 = icmp eq ptr %i.asb, null
  br i1 %.not3367, label %bb.z, label %.critedge.i.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.asc = getelementptr inbounds nuw i8, ptr %i.art, i64 72
  %i.asd = load ptr, ptr %i.asc, align 8
  %.not3368 = icmp eq ptr %i.asd, null
  br i1 %.not3368, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ase = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.asf = shufflevector <4 x float> %i.aro, <4 x float> %i.amp, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.asf, ptr %5, align 16
  store float %.sroa.02557.4.vec.extract2562, ptr %i.gg, align 16
  store <2 x i32> %i.uu, ptr %i.gh, align 4
  %i.asg = load i32, ptr %i.ase, align 4
  store i32 %i.asg, ptr %i.gi, align 4
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ase, i64 4
  %i.asi = load i32, ptr %i.ash, align 4
  store i32 %i.asi, ptr %i.gj, align 16
  store float %i.apn, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.asj = getelementptr inbounds nuw i8, ptr %i.art, i64 24
  %i.ask = load ptr, ptr %i.asj, align 8
  store ptr %i.ask, ptr %i.gk, align 8
  %i.asl = load ptr, ptr %i.gf, align 8
  store ptr %i.asl, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.asm = getelementptr inbounds nuw i8, ptr %i.art, i64 72
  %i.asn = load ptr, ptr %i.asm, align 8          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.asn, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i
  call void %i.asn(ptr noundef nonnull %4), !inline_history !5840
  %i.aso = load ptr, ptr %4, align 8
  %i.asp = load i32, ptr %i.aso, align 4
  %i.asq = icmp eq i32 %i.asp, 0
  br i1 %i.asq, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i.i
  %i.asr = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8          ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ast, null
  br i1 %.not12.i.i.i.i, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.asu = load i32, ptr %i.asr, align 8
  %i.asv = and i32 %i.asu, 2
  %.not3369 = icmp eq i32 %i.asv, 0
  br i1 %.not3369, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.asw = getelementptr inbounds nuw i8, ptr %i.art, i64 60
  %i.asx = load i32, ptr %i.asw, align 4
  %i.asy = and i32 %i.asx, 4194304
  %.not3370 = icmp eq i32 %i.asy, 0
  br i1 %.not3370, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.ast(ptr noundef nonnull %4), !inline_history !5840
  %.pre = load ptr, ptr %4, align 8
  %.pre3427 = load i32, ptr %.pre, align 4
  %i.asz = icmp eq i32 %.pre3427, 0
  br i1 %i.asz, label %bb.af, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.apq, ptr %i.ff, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, %bb.af
  %.0.i.i.i.i3363 = phi i1 [ %.sroa.84.13394, %bb.af ], [ true, %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i: ; preds = %bb.s, %bb.x, %bb.z, %bb.ag, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i, %bb.v, %bb.w, %bb.u, %bb.t, %bb.r, %bb.e
  %.sroa.84.3 = phi i1 [ %.sroa.84.13394, %bb.e ], [ %.sroa.84.13394, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i ], [ %.sroa.84.13394, %bb.r ], [ %.sroa.84.13394, %bb.w ], [ true, %bb.z ], [ %.sroa.84.13394, %bb.v ], [ %.sroa.84.13394, %bb.t ], [ %.sroa.84.13394, %bb.u ], [ %.sroa.84.13394, %bb.x ], [ %.0.i.i.i.i3363, %bb.ag ], [ %.sroa.84.13394, %bb.s ] ; 2 uses
  %.not32.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not32.i.i, label %_ZNK6embree4sse226OrientedCurve1Intersector1INS_13BSplineCurveTELi3ELi4EE9intersectINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERT_PNS_15RayQueryContextEPKNS_13CurveGeometryEjRKNS_6Vec3fxESL_SL_SL_RKNS_6Vec3faESO_SO_SO_RKT0_.exit, label %.lr.ph

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge: ; preds = %.lr.ph, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i
  %.sroa.0700.0.be = phi <2 x float> [ %i.adb, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ], [ %i.vc, %.lr.ph ]
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread: ; preds = %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, %.preheader3371
  %.sroa.84.0 = phi i1 [ false, %.preheader3371 ], [ %.sroa.84.13394, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0700.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3371 ], [ %.sroa.0700.0.be, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0736.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3371 ], [ %i.vs, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 5 uses
  %.225.i.i = phi i32 [ 0, %.preheader3371 ], [ %spec.select.i.i, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 4 uses
  %i.ata = shufflevector <2 x float> %.sroa.0700.0, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 5 uses
  %i.atb = fsub <4 x float> splat (float 1.000000e+00), %i.ata ; 4 uses
  %i.atc = fmul <4 x float> %i.ud, %i.ata
  %i.atd = fmul <4 x float> %i.ue, %i.ata
  %i.ate = fmul <4 x float> %i.uf, %i.ata
end_hunk_5
begin_hunk_6_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE11intersect_nINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EEENS0_18Intersect1KEpilog1ILi4ELb1EEEEEvRNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akl = fmul <2 x float> %i.akk, %i.ake        ; 4 uses
  %i.akm = fmul <2 x float> %i.akk, %i.akf        ; 4 uses
  %i.akn = fcmp olt <2 x float> %i.akl, %i.akm    ; 3 uses
  %i.ako = extractelement <2 x i1> %i.akn, i64 0
  %i.akp = extractelement <2 x float> %i.akl, i64 0
  %i.akq = extractelement <2 x float> %i.akm, i64 0
  %i.akr = select i1 %i.ako, float %i.akq, float %i.akp ; 2 uses
  %i.aks = shufflevector <4 x float> %i.akj, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.akt = fmul <2 x float> %i.aks, %i.ake        ; 4 uses
  %i.aku = fmul <2 x float> %i.aks, %i.akf        ; 4 uses
  %i.akv = fcmp olt <2 x float> %i.akt, %i.aku    ; 3 uses
  %i.akw = extractelement <2 x i1> %i.akv, i64 0
  %i.akx = extractelement <2 x float> %i.akt, i64 0
  %i.aky = extractelement <2 x float> %i.aku, i64 0
  %i.akz = select i1 %i.akw, float %i.aky, float %i.akx ; 2 uses
  %i.ala = fcmp olt float %i.akr, %i.akz
  %i.alb = select i1 %i.ala, float %i.akz, float %i.akr
  %i.alc = select <2 x i1> %i.akn, <2 x float> %i.akl, <2 x float> %i.akm ; 2 uses
  %i.ald = select <2 x i1> %i.akv, <2 x float> %i.akt, <2 x float> %i.aku ; 2 uses
  %i.ale = fcmp olt <2 x float> %i.alc, %i.ald
  %i.alf = select <2 x i1> %i.ale, <2 x float> %i.alc, <2 x float> %i.ald
  %i.alg = shufflevector <4 x float> %i.akj, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.alh = fmul <2 x float> %i.alg, %i.akg        ; 4 uses
  %i.ali = fmul <2 x float> %i.alg, %i.akh        ; 4 uses
  %i.alj = fcmp olt <2 x float> %i.alh, %i.ali    ; 3 uses
  %i.alk = extractelement <2 x i1> %i.alj, i64 0
  %i.all = extractelement <2 x float> %i.alh, i64 0
  %i.alm = extractelement <2 x float> %i.ali, i64 0
  %i.aln = select i1 %i.alk, float %i.alm, float %i.all ; 2 uses
  %i.alo = shufflevector <4 x float> %i.akj, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.alp = fmul <2 x float> %i.alo, %i.akg        ; 4 uses
  %i.alq = fmul <2 x float> %i.alo, %i.akh        ; 4 uses
  %i.alr = fcmp olt <2 x float> %i.alp, %i.alq    ; 3 uses
  %i.als = extractelement <2 x i1> %i.alr, i64 0
  %i.alt = extractelement <2 x float> %i.alp, i64 0
  %i.alu = extractelement <2 x float> %i.alq, i64 0
  %i.alv = select i1 %i.als, float %i.alu, float %i.alt ; 2 uses
  %i.alw = fcmp olt float %i.aln, %i.alv
  %i.alx = select i1 %i.alw, float %i.alv, float %i.aln
  %i.aly = select <2 x i1> %i.alj, <2 x float> %i.alh, <2 x float> %i.ali ; 2 uses
  %i.alz = select <2 x i1> %i.alr, <2 x float> %i.alp, <2 x float> %i.alq ; 2 uses
  %i.ama = fcmp olt <2 x float> %i.aly, %i.alz
  %i.amb = select <2 x i1> %i.ama, <2 x float> %i.aly, <2 x float> %i.alz
  %i.amc = shufflevector <2 x i1> %i.akn, <2 x i1> %i.alj, <2 x i32> <i32 1, i32 3>
  %i.amd = shufflevector <2 x float> %i.akm, <2 x float> %i.ali, <2 x i32> <i32 1, i32 3>
  %i.ame = shufflevector <2 x float> %i.akl, <2 x float> %i.alh, <2 x i32> <i32 1, i32 3>
  %i.amf = select <2 x i1> %i.amc, <2 x float> %i.amd, <2 x float> %i.ame ; 2 uses
  %i.amg = shufflevector <2 x i1> %i.akv, <2 x i1> %i.alr, <2 x i32> <i32 1, i32 3>
  %i.amh = shufflevector <2 x float> %i.aku, <2 x float> %i.alq, <2 x i32> <i32 1, i32 3>
  %i.ami = shufflevector <2 x float> %i.akt, <2 x float> %i.alp, <2 x i32> <i32 1, i32 3>
  %i.amj = select <2 x i1> %i.amg, <2 x float> %i.amh, <2 x float> %i.ami ; 2 uses
  %i.amk = fcmp olt <2 x float> %i.amf, %i.amj
  %i.aml = select <2 x i1> %i.amk, <2 x float> %i.amj, <2 x float> %i.amf ; 2 uses
  %i.amm = fadd float %i.alb, %i.alx
  %i.amn = fadd <2 x float> %i.alf, %i.amb
  %shift3593 = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3594 = fadd <2 x float> %i.aml, %shift3593
  %i.amo = extractelement <2 x float> %foldExtExtBinop3594, i64 0
  %i.amp = fadd float %.sroa.02135.0.vec.extract, %i.amm ; 2 uses
  %i.amq = shufflevector <4 x float> %i.aiv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.amr = fadd <2 x float> %i.amq, %i.amn        ; 3 uses
  %i.ams = fadd float %.sroa.02135.4.vec.extract, %i.amo ; 2 uses
  %i.amt = extractelement <2 x float> %i.amr, i64 0 ; 2 uses
  %i.amu = fcmp olt float %i.amt, %i.xy
  %i.amv = select i1 %i.amu, float %i.xy, float %i.amt
  %i.amw = fcmp olt float %i.amp, %i.xz           ; 2 uses
  %i.amx = select i1 %i.amw, float %i.amp, float %i.xz
  %i.amy = extractelement <2 x float> %i.amr, i64 1 ; 2 uses
  %i.amz = fcmp olt float %i.amy, %i.afh
  %i.ana = select i1 %i.amz, float %i.afh, float %i.amy
  %i.anb = fcmp olt float %i.ams, %i.afi          ; 2 uses
  %i.anc = select i1 %i.anb, float %i.ams, float %i.afi
  %i.and = fcmp ogt float %i.amv, %i.amx
  %i.ane = fcmp ogt float %i.ana, %i.anc
  %or.cond = select i1 %i.and, i1 true, i1 %i.ane, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.anf = shufflevector <2 x float> %i.xx, <2 x float> %i.afg, <2 x i32> <i32 0, i32 2>
  %i.ang = fcmp ogt <2 x float> %i.amr, %i.anf    ; 2 uses
  %i.anh = extractelement <2 x i1> %i.ang, i64 0
  %i.ani = and i1 %i.anh, %i.amw
  %i.anj = extractelement <2 x i1> %i.ang, i64 1
  %i.ank = select i1 %i.ani, i1 %i.anj, i1 false
  %i.anl = select i1 %i.ank, i1 %i.anb, i1 false
  %.demorgan.i = or i1 %i.yf, %i.anl
  br i1 %.demorgan.i, label %.critedge.i46, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i46
  %i.anm = add nuw nsw i64 %.026.i3477, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.anm, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i46, !llvm.loop !5958

.critedge.i46:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3477 = phi i64 [ %i.anm, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03067.03476 = phi <4 x float> [ %i.aou, %bb.s ], [ %i.aiv, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03067.0.vec.extract = extractelement <4 x float> %.sroa.03067.03476, i64 0 ; 2 uses
  %i.ann = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract ; 4 uses
  %i.ano = fmul float %i.ann, %i.ann              ; 2 uses
  %i.anp = fmul float %i.ann, %i.ano
  %i.anq = fmul float %.sroa.03067.0.vec.extract, 3.000000e+00
  %i.anr = fmul float %i.anq, %i.ano
  %foldExtExtBinop3596 = fmul <4 x float> %.sroa.03067.03476, %.sroa.03067.03476 ; 2 uses
  %i.ans = extractelement <4 x float> %foldExtExtBinop3596, i64 0
  %i.ant = fmul float %i.ans, 3.000000e+00
  %i.anu = fmul float %i.ann, %i.ant
  %foldExtExtBinop3598 = fmul <4 x float> %.sroa.03067.03476, %foldExtExtBinop3596
  %i.anv = insertelement <4 x float> poison, float %i.anp, i64 0
  %i.anw = shufflevector <4 x float> %i.anv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anx = insertelement <4 x float> poison, float %i.anr, i64 0
  %i.any = shufflevector <4 x float> %i.anx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anz = insertelement <4 x float> poison, float %i.anu, i64 0
  %i.aoa = shufflevector <4 x float> %i.anz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aob = shufflevector <4 x float> %foldExtExtBinop3598, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoc = fmul <4 x float> %i.vl, %i.aob
  %i.aod = fmul <4 x float> %i.vk, %i.aoa
  %i.aoe = fadd <4 x float> %i.aoc, %i.aod
  %i.aof = fmul <4 x float> %i.vj, %i.any
  %i.aog = fadd <4 x float> %i.aof, %i.aoe
  %i.aoh = fmul <4 x float> %i.vi, %i.anw
  %i.aoi = fadd <4 x float> %i.aoh, %i.aog        ; 2 uses
  %i.aoj = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aok = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aol = shufflevector <4 x float> %.sroa.03067.03476, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.aom = fsub <4 x float> %i.aok, %i.aoj
  %i.aon = fmul <4 x float> %i.aol, %i.aom
  %i.aoo = fadd <4 x float> %i.aoj, %i.aon        ; 3 uses
  %i.aop = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoq = fmul <4 x float> %i.aio, %i.aop
  %i.aor = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aos = fmul <4 x float> %i.aip, %i.aor
  %i.aot = fadd <4 x float> %i.aoq, %i.aos
  %i.aou = fsub <4 x float> %.sroa.03067.03476, %i.aot ; 9 uses
  %i.aov = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aoo) ; 2 uses
  %i.aow = extractelement <4 x float> %i.aov, i64 0 ; 2 uses
  %i.aox = extractelement <4 x float> %i.aov, i64 1 ; 2 uses
  %i.aoy = fcmp olt float %i.aow, %i.aox
  %i.aoz = select i1 %i.aoy, float %i.aox, float %i.aow
  %i.apa = fcmp uge float %i.aoz, %i.wb
  br i1 %i.apa, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i46
  %.sroa.03067.0.vec.extract3070 = extractelement <4 x float> %i.aou, i64 0 ; 5 uses
  %.sroa.03067.4.vec.extract3072 = extractelement <4 x float> %i.aou, i64 1 ; 4 uses
  %i.apb = fcmp oge float %.sroa.03067.0.vec.extract3070, 0.000000e+00
  %i.apc = fcmp ole float %.sroa.03067.0.vec.extract3070, 1.000000e+00
  %or.cond.i = and i1 %i.apb, %i.apc
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.apd = fcmp oge float %.sroa.03067.4.vec.extract3072, 0.000000e+00
  %i.ape = fcmp ole float %.sroa.03067.4.vec.extract3072, 1.000000e+00
  %or.cond4.i = and i1 %i.apd, %i.ape
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.apf = load float, ptr %i.gy, align 8, !noalias !6041
  %i.apg = load float, ptr %i.gz, align 8, !noalias !6041
  %i.aph = load float, ptr %i.ha, align 8, !noalias !6041
  %i.api = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.apf, i64 0
  %i.apj = insertelement <4 x float> %i.api, float %i.apg, i64 1
  %i.apk = insertelement <4 x float> %i.apj, float %i.aph, i64 2 ; 8 uses
  %i.apl = fmul <4 x float> %i.so, %i.apk         ; 3 uses
  %i.apm = fmul <4 x float> %i.sx, %i.apk         ; 3 uses
  %i.apn = fmul <4 x float> %i.tg, %i.apk         ; 3 uses
  %i.apo = fmul <4 x float> %i.tp, %i.apk         ; 3 uses
  %i.app = fmul <4 x float> %i.ty, %i.apk         ; 3 uses
  %i.apq = fmul <4 x float> %i.uh, %i.apk         ; 3 uses
  %i.apr = fmul <4 x float> %i.uq, %i.apk         ; 3 uses
  %i.aps = fmul <4 x float> %i.uz, %i.apk         ; 3 uses
  %i.apt = fsub float 1.000000e+00, %.sroa.03067.4.vec.extract3072
  %i.apu = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.apv = shufflevector <4 x float> %i.app, <4 x float> %i.apq, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.apw = shufflevector <4 x float> %i.app, <4 x float> %i.apq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apx = shufflevector <4 x float> %i.app, <4 x float> %i.apq, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apy = shufflevector <4 x float> %i.apv, <4 x float> %i.apr, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apz = shufflevector <4 x float> %i.apw, <4 x float> %i.apr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aqa = shufflevector <4 x float> %i.apx, <4 x float> %i.apr, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aqb = shufflevector <4 x float> %i.apy, <4 x float> %i.aps, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aqc = shufflevector <4 x float> %i.apz, <4 x float> %i.aps, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aqd = shufflevector <4 x float> %i.aqa, <4 x float> %i.aps, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqe = fadd <4 x float> %i.aqc, %i.aqd
  %i.aqf = fadd <4 x float> %i.aqb, %i.aqe
  %i.aqg = fmul <4 x float> %i.apu, %i.aqf
  %i.aqh = insertelement <4 x float> poison, float %i.apt, i64 0
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqj = shufflevector <4 x float> %i.apl, <4 x float> %i.apm, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aqk = shufflevector <4 x float> %i.apl, <4 x float> %i.apm, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aql = shufflevector <4 x float> %i.apl, <4 x float> %i.apm, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aqm = shufflevector <4 x float> %i.aqj, <4 x float> %i.apn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aqn = shufflevector <4 x float> %i.aqk, <4 x float> %i.apn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aqo = shufflevector <4 x float> %i.aql, <4 x float> %i.apn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aqp = shufflevector <4 x float> %i.aqm, <4 x float> %i.apo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aqq = shufflevector <4 x float> %i.aqn, <4 x float> %i.apo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aqr = shufflevector <4 x float> %i.aqo, <4 x float> %i.apo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqs = fadd <4 x float> %i.aqq, %i.aqr
  %i.aqt = fadd <4 x float> %i.aqp, %i.aqs
  %i.aqu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqi, <4 x float> %i.aqt, <4 x float> %i.aqg) ; 4 uses
  %i.aqv = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract3070 ; 5 uses
  %i.aqw = fmul nnan float %i.aqv, %i.aqv         ; 2 uses
  %i.aqx = fmul float %i.aqv, %i.aqw              ; 2 uses
  %i.aqy = fmul nnan float %.sroa.03067.0.vec.extract3070, 3.000000e+00
  %i.aqz = fmul float %i.aqy, %i.aqw              ; 2 uses
  %foldExtExtBinop3600 = fmul nnan <4 x float> %i.aou, %i.aou ; 2 uses
  %i.ara = extractelement <4 x float> %foldExtExtBinop3600, i64 0
  %i.arb = fmul nnan float %i.ara, 3.000000e+00
  %i.arc = fmul float %i.aqv, %i.arb              ; 2 uses
  %foldExtExtBinop3602 = fmul <4 x float> %i.aou, %foldExtExtBinop3600 ; 2 uses
  %shift3604 = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3605 = fmul <4 x float> %foldExtExtBinop3602, %shift3604
  %i.ard = extractelement <4 x float> %foldExtExtBinop3605, i64 0
  %i.are = extractelement <4 x float> %i.aqu, i64 2
  %i.arf = call noundef float @llvm.fmuladd.f32(float %i.arc, float %i.are, float %i.ard)
  %i.arg = extractelement <4 x float> %i.aqu, i64 1
  %i.arh = call noundef float @llvm.fmuladd.f32(float %i.aqz, float %i.arg, float %i.arf)
  %i.ari = extractelement <4 x float> %i.aqu, i64 0
  %i.arj = call noundef float @llvm.fmuladd.f32(float %i.aqx, float %i.ari, float %i.arh) ; 4 uses
  %i.ark = fcmp ugt float %i.ls, %i.arj
  br i1 %i.ark, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.arl = load float, ptr %i.gb, align 4         ; 2 uses
  %i.arm = fcmp ugt float %i.arj, %i.arl
  br i1 %i.arm, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.arn = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.aro = fsub <4 x float> splat (float 1.000000e+00), %i.arn ; 4 uses
  %i.arp = fmul <4 x float> %i.ru, %i.arn
  %i.arq = fmul <4 x float> %i.sl, %i.arn
  %i.arr = fmul <4 x float> %i.sn, %i.arn
  %i.ars = fmul <4 x float> %i.se, %i.arn
  %i.art = fmul <4 x float> %i.ro, %i.aro
  %i.aru = fadd <4 x float> %i.arp, %i.art
  %i.arv = fmul <4 x float> %i.sh, %i.aro
  %i.arw = fadd <4 x float> %i.arq, %i.arv        ; 2 uses
  %i.arx = fmul <4 x float> %i.sj, %i.aro
  %i.ary = fadd <4 x float> %i.arr, %i.arx        ; 2 uses
  %i.arz = fmul <4 x float> %i.ry, %i.aro
  %i.asa = fadd <4 x float> %i.ars, %i.arz
  %i.asb = fsub <4 x float> %i.arw, %i.aru
  %i.asc = fsub <4 x float> %i.ary, %i.arw        ; 2 uses
  %i.asd = fsub <4 x float> %i.asa, %i.ary
  %i.ase = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asf = fmul <4 x float> %i.ase, %i.asc
  %i.asg = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.ash = shufflevector <4 x float> %i.asg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.asi = fmul <4 x float> %i.ash, %i.asb
  %i.asj = fadd <4 x float> %i.asi, %i.asf
  %i.ask = fmul <4 x float> %i.ase, %i.asd
  %i.asl = fmul <4 x float> %i.ash, %i.asc
  %i.asm = fadd <4 x float> %i.asl, %i.ask
  %i.asn = fmul <4 x float> %i.ase, %i.asm
  %i.aso = fmul <4 x float> %i.ash, %i.asj
  %i.asp = fadd <4 x float> %i.aso, %i.asn
  %i.asq = fmul <4 x float> %i.asp, splat (float 3.000000e+00) ; 2 uses
  %i.asr = shufflevector <4 x float> %foldExtExtBinop3602, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ass = fmul <4 x float> %i.wv, %i.asr
  %i.ast = insertelement <4 x float> poison, float %i.arc, i64 0
  %i.asu = shufflevector <4 x float> %i.ast, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asv = fmul <4 x float> %i.wu, %i.asu
  %i.asw = fadd <4 x float> %i.ass, %i.asv
  %i.asx = insertelement <4 x float> poison, float %i.aqz, i64 0
  %i.asy = shufflevector <4 x float> %i.asx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asz = fmul <4 x float> %i.wt, %i.asy
  %i.ata = fadd <4 x float> %i.asz, %i.asw
  %i.atb = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.atc = shufflevector <4 x float> %i.atb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atd = fmul <4 x float> %i.ws, %i.atc
  %i.ate = fadd <4 x float> %i.atd, %i.ata        ; 2 uses
  %i.atf = shufflevector <4 x float> %i.ate, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.atg = shufflevector <4 x float> %i.asq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ath = fmul <4 x float> %i.ate, %i.atg
  %i.ati = fmul <4 x float> %i.asq, %i.atf
  %i.atj = fsub <4 x float> %i.ati, %i.ath        ; 6 uses
  %i.atk = load ptr, ptr %3, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 488
  %i.atm = load ptr, ptr %i.atl, align 8
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.atm, i64 %i.iu
  %i.ato = load ptr, ptr %i.atn, align 8          ; 5 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 52
  %i.atq = load i32, ptr %i.atp, align 4
  %i.atr = load i32, ptr %i.hc, align 4
  %i.ats = and i32 %i.atr, %i.atq
  %i.att = icmp eq i32 %i.ats, 0
  br i1 %i.att, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.atu = load ptr, ptr %i.hd, align 8
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.atw = load ptr, ptr %i.atv, align 8
  %.not3468 = icmp eq ptr %i.atw, null
  br i1 %.not3468, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ato, i64 64
  %i.aty = load ptr, ptr %i.atx, align 16
  %.not3469 = icmp eq ptr %i.aty, null
  br i1 %.not3469, label %bb.ak, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.atz = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.aua = shufflevector <4 x float> %i.atj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aub = shufflevector <4 x float> %i.atj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.auc = shufflevector <4 x float> %i.atj, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aua, ptr %7, align 16
  store <4 x float> %i.aub, ptr %i.hf, align 16
  store <4 x float> %i.auc, ptr %i.hg, align 16
  store <4 x float> %i.ase, ptr %i.hh, align 16
  store <4 x float> %i.arn, ptr %i.hi, align 16
  store <4 x i32> %i.wz, ptr %i.hj, align 16
  store <4 x i32> %i.wx, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.aud = load i32, ptr %i.atz, align 4
  %i.aue = insertelement <4 x i32> poison, i32 %i.aud, i64 0
  %i.auf = shufflevector <4 x i32> %i.aue, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.auf, ptr %.ptr12.i.i.i, align 16
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atz, i64 4
  %i.auh = load i32, ptr %i.aug, align 4
  %i.aui = insertelement <4 x i32> poison, i32 %i.auh, i64 0
  %i.auj = shufflevector <4 x i32> %i.aui, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.auj, ptr %.ptr17.i.i.i, align 16
  store float %i.arj, ptr %i.gb, align 4
  %i.auk = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !6042
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !6042
  store <2 x i64> %i.auk, ptr %6, align 16, !noalias !6042
  store ptr %6, ptr %5, align 8, !noalias !6042
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ato, i64 24
  %i.aum = load ptr, ptr %i.aul, align 8, !noalias !6042
  store ptr %i.aum, ptr %i.hp, align 8, !noalias !6042
  %i.aun = load ptr, ptr %i.he, align 8, !noalias !6042
  store ptr %i.aun, ptr %i.hq, align 8, !noalias !6042
  store ptr %1, ptr %i.hr, align 8, !noalias !6042
  store ptr %7, ptr %i.hs, align 8, !noalias !6042
  store i32 4, ptr %i.ht, align 8, !noalias !6042
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ato, i64 64
  %i.aup = load ptr, ptr %i.auo, align 16, !noalias !6043 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aup, null
  %i.auq = bitcast <2 x i64> %i.auk to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.aup(ptr noundef nonnull %5), !noalias !6043, !inline_history !5965
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !6044
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.aur = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.auq, %.critedge.i.i ] ; 3 uses
  %i.aus = icmp ne <4 x i32> %i.aur, zeroinitializer ; 2 uses
  %i.aut = bitcast <4 x i1> %i.aus to i4
  %i.auu = icmp eq i4 %i.aut, 0
  br i1 %i.auu, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.auv = load ptr, ptr %i.hd, align 8           ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 16
  %i.aux = load ptr, ptr %i.auw, align 8          ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.aux, null
  br i1 %.not13.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.auy = load i32, ptr %i.auv, align 8
  %i.auz = and i32 %i.auy, 2
  %.not3470 = icmp eq i32 %i.auz, 0
  br i1 %.not3470, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ava = getelementptr inbounds nuw i8, ptr %i.ato, i64 60
  %i.avb = load i32, ptr %i.ava, align 4, !noalias !6043
  %i.avc = and i32 %i.avb, 4194304
  %.not3471 = icmp eq i32 %i.avc, 0
  br i1 %.not3471, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.aux(ptr noundef nonnull %5), !inline_history !5965
  %.pre3523 = load <4 x i32>, ptr %6, align 16, !noalias !6045
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.avd = phi <4 x i32> [ %.pre3523, %bb.af ], [ %i.aur, %bb.ae ], [ %i.aur, %bb.ac ]
  %i.ave = icmp ne <4 x i32> %i.avd, zeroinitializer ; 12 uses
  %i.avf = bitcast <4 x i1> %i.ave to i4
  %i.avg = icmp eq i4 %i.avf, 0
  br i1 %i.avg, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.avh = load ptr, ptr %i.hr, align 8, !noalias !6043 ; 9 uses
  %i.avi = load ptr, ptr %i.hs, align 8, !noalias !6043 ; 9 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avh, i64 192 ; 2 uses
  %i.avk = load <4 x i32>, ptr %i.avj, align 1, !noalias !6046
  %i.avl = load <4 x i32>, ptr %i.avi, align 16, !noalias !6047
  %i.avm = select <4 x i1> %i.ave, <4 x i32> %i.avl, <4 x i32> %i.avk
  store <4 x i32> %i.avm, ptr %i.avj, align 1
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avh, i64 208 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avi, i64 16
  %i.avp = load <4 x i32>, ptr %i.avn, align 1, !noalias !6048
  %i.avq = load <4 x i32>, ptr %i.avo, align 16, !noalias !6049
  %i.avr = select <4 x i1> %i.ave, <4 x i32> %i.avq, <4 x i32> %i.avp
end_hunk_6
begin_hunk_7_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE10occluded_nINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EEENS0_17Occluded1KEpilog1ILi4ELb1EEEEEbRNS0_21CurvePrecalculationsKILi4EEERNS_4RayKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ajs = shufflevector <4 x float> %i.ajr, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajt = fmul <2 x float> %i.ajs, %i.ajm        ; 4 uses
  %i.aju = fmul <2 x float> %i.ajs, %i.ajn        ; 4 uses
  %i.ajv = fcmp olt <2 x float> %i.ajt, %i.aju    ; 3 uses
  %i.ajw = extractelement <2 x i1> %i.ajv, i64 0
  %i.ajx = extractelement <2 x float> %i.ajt, i64 0
  %i.ajy = extractelement <2 x float> %i.aju, i64 0
  %i.ajz = select i1 %i.ajw, float %i.ajy, float %i.ajx ; 2 uses
  %i.aka = shufflevector <4 x float> %i.ajr, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.akb = fmul <2 x float> %i.aka, %i.ajm        ; 4 uses
  %i.akc = fmul <2 x float> %i.aka, %i.ajn        ; 4 uses
  %i.akd = fcmp olt <2 x float> %i.akb, %i.akc    ; 3 uses
  %i.ake = extractelement <2 x i1> %i.akd, i64 0
  %i.akf = extractelement <2 x float> %i.akb, i64 0
  %i.akg = extractelement <2 x float> %i.akc, i64 0
  %i.akh = select i1 %i.ake, float %i.akg, float %i.akf ; 2 uses
  %i.aki = fcmp olt float %i.ajz, %i.akh
  %i.akj = select i1 %i.aki, float %i.akh, float %i.ajz
  %i.akk = select <2 x i1> %i.ajv, <2 x float> %i.ajt, <2 x float> %i.aju ; 2 uses
  %i.akl = select <2 x i1> %i.akd, <2 x float> %i.akb, <2 x float> %i.akc ; 2 uses
  %i.akm = fcmp olt <2 x float> %i.akk, %i.akl
  %i.akn = select <2 x i1> %i.akm, <2 x float> %i.akk, <2 x float> %i.akl
  %i.ako = shufflevector <4 x float> %i.ajr, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akp = fmul <2 x float> %i.ako, %i.ajo        ; 4 uses
  %i.akq = fmul <2 x float> %i.ako, %i.ajp        ; 4 uses
  %i.akr = fcmp olt <2 x float> %i.akp, %i.akq    ; 3 uses
  %i.aks = extractelement <2 x i1> %i.akr, i64 0
  %i.akt = extractelement <2 x float> %i.akp, i64 0
  %i.aku = extractelement <2 x float> %i.akq, i64 0
  %i.akv = select i1 %i.aks, float %i.aku, float %i.akt ; 2 uses
  %i.akw = shufflevector <4 x float> %i.ajr, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.akx = fmul <2 x float> %i.akw, %i.ajo        ; 4 uses
  %i.aky = fmul <2 x float> %i.akw, %i.ajp        ; 4 uses
  %i.akz = fcmp olt <2 x float> %i.akx, %i.aky    ; 3 uses
  %i.ala = extractelement <2 x i1> %i.akz, i64 0
  %i.alb = extractelement <2 x float> %i.akx, i64 0
  %i.alc = extractelement <2 x float> %i.aky, i64 0
  %i.ald = select i1 %i.ala, float %i.alc, float %i.alb ; 2 uses
  %i.ale = fcmp olt float %i.akv, %i.ald
  %i.alf = select i1 %i.ale, float %i.ald, float %i.akv
  %i.alg = select <2 x i1> %i.akr, <2 x float> %i.akp, <2 x float> %i.akq ; 2 uses
  %i.alh = select <2 x i1> %i.akz, <2 x float> %i.akx, <2 x float> %i.aky ; 2 uses
  %i.ali = fcmp olt <2 x float> %i.alg, %i.alh
  %i.alj = select <2 x i1> %i.ali, <2 x float> %i.alg, <2 x float> %i.alh
  %i.alk = shufflevector <2 x i1> %i.ajv, <2 x i1> %i.akr, <2 x i32> <i32 1, i32 3>
  %i.all = shufflevector <2 x float> %i.aju, <2 x float> %i.akq, <2 x i32> <i32 1, i32 3>
  %i.alm = shufflevector <2 x float> %i.ajt, <2 x float> %i.akp, <2 x i32> <i32 1, i32 3>
  %i.aln = select <2 x i1> %i.alk, <2 x float> %i.all, <2 x float> %i.alm ; 2 uses
  %i.alo = shufflevector <2 x i1> %i.akd, <2 x i1> %i.akz, <2 x i32> <i32 1, i32 3>
  %i.alp = shufflevector <2 x float> %i.akc, <2 x float> %i.aky, <2 x i32> <i32 1, i32 3>
  %i.alq = shufflevector <2 x float> %i.akb, <2 x float> %i.akx, <2 x i32> <i32 1, i32 3>
  %i.alr = select <2 x i1> %i.alo, <2 x float> %i.alp, <2 x float> %i.alq ; 2 uses
  %i.als = fcmp olt <2 x float> %i.aln, %i.alr
  %i.alt = select <2 x i1> %i.als, <2 x float> %i.alr, <2 x float> %i.aln ; 2 uses
  %i.alu = fadd float %i.akj, %i.alf
  %i.alv = fadd <2 x float> %i.akn, %i.alj
  %shift3550 = shufflevector <2 x float> %i.alt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3551 = fadd <2 x float> %i.alt, %shift3550
  %i.alw = extractelement <2 x float> %foldExtExtBinop3551, i64 0
  %i.alx = fadd float %.sroa.02139.0.vec.extract, %i.alu ; 2 uses
  %i.aly = shufflevector <4 x float> %i.aid, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.alz = fadd <2 x float> %i.aly, %i.alv        ; 3 uses
  %i.ama = fadd float %.sroa.02139.4.vec.extract, %i.alw ; 2 uses
  %i.amb = extractelement <2 x float> %i.alz, i64 0 ; 2 uses
  %i.amc = fcmp olt float %i.amb, %i.xg
  %i.amd = select i1 %i.amc, float %i.xg, float %i.amb
  %i.ame = fcmp olt float %i.alx, %i.xh           ; 2 uses
  %i.amf = select i1 %i.ame, float %i.alx, float %i.xh
  %i.amg = extractelement <2 x float> %i.alz, i64 1 ; 2 uses
  %i.amh = fcmp olt float %i.amg, %i.aep
  %i.ami = select i1 %i.amh, float %i.aep, float %i.amg
  %i.amj = fcmp olt float %i.ama, %i.aeq          ; 2 uses
  %i.amk = select i1 %i.amj, float %i.ama, float %i.aeq
  %i.aml = fcmp ogt float %i.amd, %i.amf
  %i.amm = fcmp ogt float %i.ami, %i.amk
  %or.cond = select i1 %i.aml, i1 true, i1 %i.amm, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.amn = shufflevector <2 x float> %i.xf, <2 x float> %i.aeo, <2 x i32> <i32 0, i32 2>
  %i.amo = fcmp ogt <2 x float> %i.alz, %i.amn    ; 2 uses
  %i.amp = extractelement <2 x i1> %i.amo, i64 0
  %i.amq = and i1 %i.amp, %i.ame
  %i.amr = extractelement <2 x i1> %i.amo, i64 1
  %i.ams = select i1 %i.amq, i1 %i.amr, i1 false
  %i.amt = select i1 %i.ams, i1 %i.amj, i1 false
  %.demorgan.i = or i1 %i.xn, %i.amt
  br i1 %.demorgan.i, label %.critedge.i50, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i50
  %i.amu = add nuw nsw i64 %.026.i3422, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.amu, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i50, !llvm.loop !6146

.critedge.i50:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3422 = phi i64 [ %i.amu, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03067.03421 = phi <4 x float> [ %i.aoc, %bb.s ], [ %i.aid, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03067.0.vec.extract = extractelement <4 x float> %.sroa.03067.03421, i64 0 ; 2 uses
  %i.amv = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract ; 4 uses
  %i.amw = fmul float %i.amv, %i.amv              ; 2 uses
  %i.amx = fmul float %i.amv, %i.amw
  %i.amy = fmul float %.sroa.03067.0.vec.extract, 3.000000e+00
  %i.amz = fmul float %i.amy, %i.amw
  %foldExtExtBinop3553 = fmul <4 x float> %.sroa.03067.03421, %.sroa.03067.03421 ; 2 uses
  %i.ana = extractelement <4 x float> %foldExtExtBinop3553, i64 0
  %i.anb = fmul float %i.ana, 3.000000e+00
  %i.anc = fmul float %i.amv, %i.anb
  %foldExtExtBinop3555 = fmul <4 x float> %.sroa.03067.03421, %foldExtExtBinop3553
  %i.and = insertelement <4 x float> poison, float %i.amx, i64 0
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anf = insertelement <4 x float> poison, float %i.amz, i64 0
  %i.ang = shufflevector <4 x float> %i.anf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anh = insertelement <4 x float> poison, float %i.anc, i64 0
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anj = shufflevector <4 x float> %foldExtExtBinop3555, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ank = fmul <4 x float> %i.ut, %i.anj
  %i.anl = fmul <4 x float> %i.us, %i.ani
  %i.anm = fadd <4 x float> %i.ank, %i.anl
  %i.ann = fmul <4 x float> %i.ur, %i.ang
  %i.ano = fadd <4 x float> %i.ann, %i.anm
  %i.anp = fmul <4 x float> %i.uq, %i.ane
  %i.anq = fadd <4 x float> %i.anp, %i.ano        ; 2 uses
  %i.anr = shufflevector <4 x float> %i.anq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ans = shufflevector <4 x float> %i.anq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ant = shufflevector <4 x float> %.sroa.03067.03421, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.anu = fsub <4 x float> %i.ans, %i.anr
  %i.anv = fmul <4 x float> %i.ant, %i.anu
  %i.anw = fadd <4 x float> %i.anr, %i.anv        ; 3 uses
  %i.anx = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.any = fmul <4 x float> %i.ahw, %i.anx
  %i.anz = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aoa = fmul <4 x float> %i.ahx, %i.anz
  %i.aob = fadd <4 x float> %i.any, %i.aoa
  %i.aoc = fsub <4 x float> %.sroa.03067.03421, %i.aob ; 9 uses
  %i.aod = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.anw) ; 2 uses
  %i.aoe = extractelement <4 x float> %i.aod, i64 0 ; 2 uses
  %i.aof = extractelement <4 x float> %i.aod, i64 1 ; 2 uses
  %i.aog = fcmp olt float %i.aoe, %i.aof
  %i.aoh = select i1 %i.aog, float %i.aof, float %i.aoe
  %i.aoi = fcmp uge float %i.aoh, %i.vj
  br i1 %i.aoi, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i50
  %.sroa.03067.0.vec.extract3070 = extractelement <4 x float> %i.aoc, i64 0 ; 4 uses
  %.sroa.03067.4.vec.extract3072 = extractelement <4 x float> %i.aoc, i64 1 ; 3 uses
  %i.aoj = fcmp oge float %.sroa.03067.0.vec.extract3070, 0.000000e+00
  %i.aok = fcmp ole float %.sroa.03067.0.vec.extract3070, 1.000000e+00
  %or.cond.i = and i1 %i.aoj, %i.aok
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.aol = fcmp oge float %.sroa.03067.4.vec.extract3072, 0.000000e+00
  %i.aom = fcmp ole float %.sroa.03067.4.vec.extract3072, 1.000000e+00
  %or.cond4.i = and i1 %i.aol, %i.aom
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.aon = load float, ptr %i.gy, align 8, !noalias !6195
  %i.aoo = load float, ptr %i.gz, align 8, !noalias !6195
  %i.aop = load float, ptr %i.ha, align 8, !noalias !6195
  %i.aoq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aon, i64 0
  %i.aor = insertelement <4 x float> %i.aoq, float %i.aoo, i64 1
  %i.aos = insertelement <4 x float> %i.aor, float %i.aop, i64 2 ; 8 uses
  %i.aot = fmul <4 x float> %i.rw, %i.aos         ; 3 uses
  %i.aou = fmul <4 x float> %i.sf, %i.aos         ; 3 uses
  %i.aov = fmul <4 x float> %i.so, %i.aos         ; 3 uses
  %i.aow = fmul <4 x float> %i.sx, %i.aos         ; 3 uses
  %i.aox = fmul <4 x float> %i.tg, %i.aos         ; 3 uses
  %i.aoy = fmul <4 x float> %i.tp, %i.aos         ; 3 uses
  %i.aoz = fmul <4 x float> %i.ty, %i.aos         ; 3 uses
  %i.apa = fmul <4 x float> %i.uh, %i.aos         ; 3 uses
  %i.apb = fsub float 1.000000e+00, %.sroa.03067.4.vec.extract3072
  %i.apc = shufflevector <4 x float> %i.aoc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.apd = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ape = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apf = shufflevector <4 x float> %i.aox, <4 x float> %i.aoy, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apg = shufflevector <4 x float> %i.apd, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aph = shufflevector <4 x float> %i.ape, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.api = shufflevector <4 x float> %i.apf, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apj = shufflevector <4 x float> %i.apg, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apk = shufflevector <4 x float> %i.aph, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apl = shufflevector <4 x float> %i.api, <4 x float> %i.apa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apm = fadd <4 x float> %i.apk, %i.apl
  %i.apn = fadd <4 x float> %i.apj, %i.apm
  %i.apo = fmul <4 x float> %i.apc, %i.apn
  %i.app = insertelement <4 x float> poison, float %i.apb, i64 0
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apr = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aps = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apt = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apu = shufflevector <4 x float> %i.apr, <4 x float> %i.aov, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apv = shufflevector <4 x float> %i.aps, <4 x float> %i.aov, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apw = shufflevector <4 x float> %i.apt, <4 x float> %i.aov, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apx = shufflevector <4 x float> %i.apu, <4 x float> %i.aow, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apy = shufflevector <4 x float> %i.apv, <4 x float> %i.aow, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apz = shufflevector <4 x float> %i.apw, <4 x float> %i.aow, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqa = fadd <4 x float> %i.apy, %i.apz
  %i.aqb = fadd <4 x float> %i.apx, %i.aqa
  %i.aqc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apq, <4 x float> %i.aqb, <4 x float> %i.apo) ; 4 uses
  %i.aqd = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract3070 ; 5 uses
  %i.aqe = fmul nnan float %i.aqd, %i.aqd         ; 2 uses
  %i.aqf = fmul float %i.aqd, %i.aqe              ; 2 uses
  %i.aqg = fmul nnan float %.sroa.03067.0.vec.extract3070, 3.000000e+00
  %i.aqh = fmul float %i.aqg, %i.aqe              ; 2 uses
  %foldExtExtBinop3557 = fmul nnan <4 x float> %i.aoc, %i.aoc ; 2 uses
  %i.aqi = extractelement <4 x float> %foldExtExtBinop3557, i64 0
  %i.aqj = fmul nnan float %i.aqi, 3.000000e+00
  %i.aqk = fmul float %i.aqd, %i.aqj              ; 2 uses
  %foldExtExtBinop3559 = fmul <4 x float> %i.aoc, %foldExtExtBinop3557 ; 2 uses
  %shift3561 = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3562 = fmul <4 x float> %foldExtExtBinop3559, %shift3561
  %i.aql = extractelement <4 x float> %foldExtExtBinop3562, i64 0
  %i.aqm = extractelement <4 x float> %i.aqc, i64 2
  %i.aqn = call noundef float @llvm.fmuladd.f32(float %i.aqk, float %i.aqm, float %i.aql)
  %i.aqo = extractelement <4 x float> %i.aqc, i64 1
  %i.aqp = call noundef float @llvm.fmuladd.f32(float %i.aqh, float %i.aqo, float %i.aqn)
  %i.aqq = extractelement <4 x float> %i.aqc, i64 0
  %i.aqr = call noundef float @llvm.fmuladd.f32(float %i.aqf, float %i.aqq, float %i.aqp) ; 3 uses
  %i.aqs = fcmp ugt float %i.la, %i.aqr
  br i1 %i.aqs, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aqt = load float, ptr %i.gb, align 4         ; 2 uses
  %i.aqu = fcmp ugt float %i.aqr, %i.aqt
  br i1 %i.aqu, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aqv = shufflevector <4 x float> %i.aoc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.aqw = fsub <4 x float> splat (float 1.000000e+00), %i.aqv ; 4 uses
  %i.aqx = fmul <4 x float> %i.rc, %i.aqv
  %i.aqy = fmul <4 x float> %i.rt, %i.aqv
  %i.aqz = fmul <4 x float> %i.rv, %i.aqv
  %i.ara = fmul <4 x float> %i.rm, %i.aqv
  %i.arb = fmul <4 x float> %i.qw, %i.aqw
  %i.arc = fadd <4 x float> %i.aqx, %i.arb
  %i.ard = fmul <4 x float> %i.rp, %i.aqw
  %i.are = fadd <4 x float> %i.aqy, %i.ard        ; 2 uses
  %i.arf = fmul <4 x float> %i.rr, %i.aqw
  %i.arg = fadd <4 x float> %i.aqz, %i.arf        ; 2 uses
  %i.arh = fmul <4 x float> %i.rg, %i.aqw
  %i.ari = fadd <4 x float> %i.ara, %i.arh
  %i.arj = fsub <4 x float> %i.are, %i.arc
  %i.ark = fsub <4 x float> %i.arg, %i.are        ; 2 uses
  %i.arl = fsub <4 x float> %i.ari, %i.arg
  %i.arm = shufflevector <4 x float> %i.aoc, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.arn = fmul <4 x float> %i.arm, %i.ark
  %i.aro = insertelement <4 x float> poison, float %i.aqd, i64 0
  %i.arp = shufflevector <4 x float> %i.aro, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.arq = fmul <4 x float> %i.arp, %i.arj
  %i.arr = fadd <4 x float> %i.arq, %i.arn
  %i.ars = fmul <4 x float> %i.arm, %i.arl
  %i.art = fmul <4 x float> %i.arp, %i.ark
  %i.aru = fadd <4 x float> %i.art, %i.ars
  %i.arv = fmul <4 x float> %i.arm, %i.aru
  %i.arw = fmul <4 x float> %i.arp, %i.arr
  %i.arx = fadd <4 x float> %i.arw, %i.arv
  %i.ary = fmul <4 x float> %i.arx, splat (float 3.000000e+00) ; 2 uses
  %i.arz = shufflevector <4 x float> %foldExtExtBinop3559, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asa = fmul <4 x float> %i.wd, %i.arz
  %i.asb = insertelement <4 x float> poison, float %i.aqk, i64 0
  %i.asc = shufflevector <4 x float> %i.asb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asd = fmul <4 x float> %i.wc, %i.asc
  %i.ase = fadd <4 x float> %i.asa, %i.asd
  %i.asf = insertelement <4 x float> poison, float %i.aqh, i64 0
  %i.asg = shufflevector <4 x float> %i.asf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ash = fmul <4 x float> %i.wb, %i.asg
  %i.asi = fadd <4 x float> %i.ash, %i.ase
  %i.asj = insertelement <4 x float> poison, float %i.aqf, i64 0
  %i.ask = shufflevector <4 x float> %i.asj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asl = fmul <4 x float> %i.wa, %i.ask
  %i.asm = fadd <4 x float> %i.asl, %i.asi        ; 2 uses
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aso = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.asp = fmul <4 x float> %i.asm, %i.aso
  %i.asq = fmul <4 x float> %i.ary, %i.asn
  %i.asr = fsub <4 x float> %i.asq, %i.asp        ; 3 uses
  %i.ass = load ptr, ptr %3, align 8
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 488
  %i.asu = load ptr, ptr %i.ast, align 8
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.asu, i64 %i.ic
  %i.asw = load ptr, ptr %i.asv, align 8          ; 5 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 52
  %i.asy = load i32, ptr %i.asx, align 4
  %i.asz = load i32, ptr %i.hc, align 4
  %i.ata = and i32 %i.asz, %i.asy
  %i.atb = icmp eq i32 %i.ata, 0
  br i1 %i.atb, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.atc = load ptr, ptr %i.hd, align 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.ate = load ptr, ptr %i.atd, align 8
  %.not3413 = icmp eq ptr %i.ate, null
  br i1 %.not3413, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asw, i64 72
  %i.atg = load ptr, ptr %i.atf, align 8
  %.not3414 = icmp eq ptr %i.atg, null
  br i1 %.not3414, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13BSplineCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ath = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.ati = shufflevector <4 x float> %i.asr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atj = shufflevector <4 x float> %i.asr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.atk = shufflevector <4 x float> %i.asr, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ati, ptr %7, align 16
  store <4 x float> %i.atj, ptr %i.hf, align 16
  store <4 x float> %i.atk, ptr %i.hg, align 16
  store <4 x float> %i.arm, ptr %i.hh, align 16
  store <4 x float> %i.aqv, ptr %i.hi, align 16
  store <4 x i32> %i.wh, ptr %i.hj, align 16
  store <4 x i32> %i.wf, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.atl = load i32, ptr %i.ath, align 4
  %i.atm = insertelement <4 x i32> poison, i32 %i.atl, i64 0
  %i.atn = shufflevector <4 x i32> %i.atm, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atn, ptr %.ptr12.i.i.i, align 16
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ath, i64 4
  %i.atp = load i32, ptr %i.ato, align 4
  %i.atq = insertelement <4 x i32> poison, i32 %i.atp, i64 0
  %i.atr = shufflevector <4 x i32> %i.atq, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atr, ptr %.ptr17.i.i.i, align 16
  store float %i.aqr, ptr %i.gb, align 4
  %i.ats = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !6196
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !6196
  store <2 x i64> %i.ats, ptr %6, align 16, !noalias !6196
  store ptr %6, ptr %5, align 8, !noalias !6196
  %i.att = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.atu = load ptr, ptr %i.att, align 8, !noalias !6196
  store ptr %i.atu, ptr %i.hp, align 8, !noalias !6196
  %i.atv = load ptr, ptr %i.he, align 8, !noalias !6196
  store ptr %i.atv, ptr %i.hq, align 8, !noalias !6196
  store ptr %1, ptr %i.hr, align 8, !noalias !6196
  store ptr %7, ptr %i.hs, align 8, !noalias !6196
  store i32 4, ptr %i.ht, align 8, !noalias !6196
  %i.atw = getelementptr inbounds nuw i8, ptr %i.asw, i64 72
  %i.atx = load ptr, ptr %i.atw, align 8, !noalias !6197 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.atx, null
  %i.aty = bitcast <2 x i64> %i.ats to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.atx(ptr noundef nonnull %5), !noalias !6197, !inline_history !6153
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !6198
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.atz = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.aty, %.critedge.i.i ] ; 3 uses
  %i.aua = icmp ne <4 x i32> %i.atz, zeroinitializer ; 2 uses
  %i.aub = bitcast <4 x i1> %i.aua to i4
  %i.auc = icmp eq i4 %i.aub, 0
  br i1 %i.auc, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aud = load ptr, ptr %i.hd, align 8, !noalias !6197 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 16
  %i.auf = load ptr, ptr %i.aue, align 8, !noalias !6197 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.auf, null
  br i1 %.not14.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aug = load i32, ptr %i.aud, align 8, !noalias !6197
  %i.auh = and i32 %i.aug, 2
  %.not3415 = icmp eq i32 %i.auh, 0
  br i1 %.not3415, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aui = getelementptr inbounds nuw i8, ptr %i.asw, i64 60
  %i.auj = load i32, ptr %i.aui, align 4, !noalias !6197
  %i.auk = and i32 %i.auj, 4194304
  %.not3416 = icmp eq i32 %i.auk, 0
  br i1 %.not3416, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.auf(ptr noundef nonnull %5), !noalias !6197, !inline_history !6153
  %.pre3473 = load <4 x i32>, ptr %6, align 16, !noalias !6199
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.aul = phi <4 x i32> [ %.pre3473, %bb.af ], [ %i.atz, %bb.ae ], [ %i.atz, %bb.ac ]
  %i.aum = icmp ne <4 x i32> %i.aul, zeroinitializer ; 2 uses
  %i.aun = load ptr, ptr %i.hr, align 8, !noalias !6197
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 128 ; 2 uses
  %i.aup = load <4 x float>, ptr %i.auo, align 16, !noalias !6200
  %i.auq = select <4 x i1> %i.aum, <4 x float> splat (float -inf), <4 x float> %i.aup
  store <4 x float> %i.auq, ptr %i.auo, align 16, !noalias !6197
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ag, %bb.ab
  %.sroa.03084.0.in.in = phi <4 x i1> [ %i.aua, %bb.ab ], [ %i.aum, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !6196
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !6196
  %i.aur = bitcast <4 x i1> %.sroa.03084.0.in.in to i4
  %i.aus = icmp ne i4 %i.aur, 0                   ; 2 uses
  br i1 %i.aus, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  store float %i.aqt, ptr %i.gb, align 4
end_hunk_7
begin_hunk_8_@_ZN6embree4sse219CurveNiIntersector1ILi4EE12intersect_hnINS0_26OrientedCurve1Intersector1INS_13HermiteCurveTELi3ELi4EEENS0_17Intersect1Epilog1ILb1EEEEEvRKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ahy = fmul <2 x float> %i.ahx, %i.ahj        ; 4 uses
  %i.ahz = fmul <2 x float> %i.ahx, %i.ahk        ; 4 uses
  %i.aia = fcmp olt <2 x float> %i.ahy, %i.ahz    ; 3 uses
  %i.aib = extractelement <2 x i1> %i.aia, i64 0
  %i.aic = extractelement <2 x float> %i.ahy, i64 0
  %i.aid = extractelement <2 x float> %i.ahz, i64 0
  %i.aie = select i1 %i.aib, float %i.aid, float %i.aic ; 2 uses
  %i.aif = fcmp olt float %i.ahw, %i.aie
  %i.aig = select i1 %i.aif, float %i.aie, float %i.ahw
  %i.aih = select <2 x i1> %i.ahs, <2 x float> %i.ahq, <2 x float> %i.ahr ; 2 uses
  %i.aii = select <2 x i1> %i.aia, <2 x float> %i.ahy, <2 x float> %i.ahz ; 2 uses
  %i.aij = fcmp olt <2 x float> %i.aih, %i.aii
  %i.aik = select <2 x i1> %i.aij, <2 x float> %i.aih, <2 x float> %i.aii
  %i.ail = shufflevector <4 x float> %i.aho, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aim = fmul <2 x float> %i.ail, %i.ahl        ; 4 uses
  %i.ain = fmul <2 x float> %i.ail, %i.ahm        ; 4 uses
  %i.aio = fcmp olt <2 x float> %i.aim, %i.ain    ; 3 uses
  %i.aip = extractelement <2 x i1> %i.aio, i64 0
  %i.aiq = extractelement <2 x float> %i.aim, i64 0
  %i.air = extractelement <2 x float> %i.ain, i64 0
  %i.ais = select i1 %i.aip, float %i.air, float %i.aiq ; 2 uses
  %i.ait = shufflevector <4 x float> %i.aho, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.aiu = fmul <2 x float> %i.ait, %i.ahl        ; 4 uses
  %i.aiv = fmul <2 x float> %i.ait, %i.ahm        ; 4 uses
  %i.aiw = fcmp olt <2 x float> %i.aiu, %i.aiv    ; 3 uses
  %i.aix = extractelement <2 x i1> %i.aiw, i64 0
  %i.aiy = extractelement <2 x float> %i.aiu, i64 0
  %i.aiz = extractelement <2 x float> %i.aiv, i64 0
  %i.aja = select i1 %i.aix, float %i.aiz, float %i.aiy ; 2 uses
  %i.ajb = fcmp olt float %i.ais, %i.aja
  %i.ajc = select i1 %i.ajb, float %i.aja, float %i.ais
  %i.ajd = select <2 x i1> %i.aio, <2 x float> %i.aim, <2 x float> %i.ain ; 2 uses
  %i.aje = select <2 x i1> %i.aiw, <2 x float> %i.aiu, <2 x float> %i.aiv ; 2 uses
  %i.ajf = fcmp olt <2 x float> %i.ajd, %i.aje
  %i.ajg = select <2 x i1> %i.ajf, <2 x float> %i.ajd, <2 x float> %i.aje
  %i.ajh = shufflevector <2 x i1> %i.ahs, <2 x i1> %i.aio, <2 x i32> <i32 1, i32 3>
  %i.aji = shufflevector <2 x float> %i.ahr, <2 x float> %i.ain, <2 x i32> <i32 1, i32 3>
  %i.ajj = shufflevector <2 x float> %i.ahq, <2 x float> %i.aim, <2 x i32> <i32 1, i32 3>
  %i.ajk = select <2 x i1> %i.ajh, <2 x float> %i.aji, <2 x float> %i.ajj ; 2 uses
  %i.ajl = shufflevector <2 x i1> %i.aia, <2 x i1> %i.aiw, <2 x i32> <i32 1, i32 3>
  %i.ajm = shufflevector <2 x float> %i.ahz, <2 x float> %i.aiv, <2 x i32> <i32 1, i32 3>
  %i.ajn = shufflevector <2 x float> %i.ahy, <2 x float> %i.aiu, <2 x i32> <i32 1, i32 3>
  %i.ajo = select <2 x i1> %i.ajl, <2 x float> %i.ajm, <2 x float> %i.ajn ; 2 uses
  %i.ajp = fcmp olt <2 x float> %i.ajk, %i.ajo
  %i.ajq = select <2 x i1> %i.ajp, <2 x float> %i.ajo, <2 x float> %i.ajk ; 2 uses
  %i.ajr = fadd float %i.aig, %i.ajc
  %i.ajs = fadd <2 x float> %i.aik, %i.ajg
  %shift3479 = shufflevector <2 x float> %i.ajq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3480 = fadd <2 x float> %i.ajq, %shift3479
  %i.ajt = extractelement <2 x float> %foldExtExtBinop3480, i64 0
  %i.aju = fadd float %.sroa.0962.0.vec.extract, %i.ajr ; 2 uses
  %i.ajv = shufflevector <4 x float> %i.aga, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajw = fadd <2 x float> %i.ajv, %i.ajs        ; 3 uses
  %i.ajx = fadd float %.sroa.0962.4.vec.extract, %i.ajt ; 2 uses
  %i.ajy = extractelement <2 x float> %i.ajw, i64 0 ; 2 uses
  %i.ajz = fcmp olt float %i.ajy, %i.vd
  %i.aka = select i1 %i.ajz, float %i.vd, float %i.ajy
  %i.akb = fcmp olt float %i.aju, %i.ve           ; 2 uses
  %i.akc = select i1 %i.akb, float %i.aju, float %i.ve
  %i.akd = extractelement <2 x float> %i.ajw, i64 1 ; 2 uses
  %i.ake = fcmp olt float %i.akd, %i.acm
  %i.akf = select i1 %i.ake, float %i.acm, float %i.akd
  %i.akg = fcmp olt float %i.ajx, %i.acn          ; 2 uses
  %i.akh = select i1 %i.akg, float %i.ajx, float %i.acn
  %i.aki = fcmp ogt float %i.aka, %i.akc
  %i.akj = fcmp ogt float %i.akf, %i.akh
  %or.cond = select i1 %i.aki, i1 true, i1 %i.akj, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.o
  %i.akk = shufflevector <2 x float> %i.vc, <2 x float> %i.acl, <2 x i32> <i32 0, i32 2>
  %i.akl = fcmp ogt <2 x float> %i.ajw, %i.akk    ; 2 uses
  %i.akm = extractelement <2 x i1> %i.akl, i64 0
  %i.akn = and i1 %i.akm, %i.akb
  %i.ako = extractelement <2 x i1> %i.akl, i64 1
  %i.akp = select i1 %i.akn, i1 %i.ako, i1 false
  %i.akq = select i1 %i.akp, i1 %i.akg, i1 false
  %.demorgan.i.i = or i1 %i.vk, %i.akq
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.p:                                             ; preds = %.critedge.i19.i
  %i.akr = add nuw nsw i64 %.026.i.i3362, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.akr, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !4

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.p
  %.026.i.i3362 = phi i64 [ %i.akr, %bb.p ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.01622.03361 = phi <4 x float> [ %i.alz, %bb.p ], [ %i.aga, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.01622.0.vec.extract = extractelement <4 x float> %.sroa.01622.03361, i64 0 ; 2 uses
  %i.aks = fsub float 1.000000e+00, %.sroa.01622.0.vec.extract ; 4 uses
  %i.akt = fmul float %i.aks, %i.aks              ; 2 uses
  %i.aku = fmul float %i.aks, %i.akt
  %i.akv = fmul float %.sroa.01622.0.vec.extract, 3.000000e+00
  %i.akw = fmul float %i.akv, %i.akt
  %foldExtExtBinop3482 = fmul <4 x float> %.sroa.01622.03361, %.sroa.01622.03361 ; 2 uses
  %i.akx = extractelement <4 x float> %foldExtExtBinop3482, i64 0
  %i.aky = fmul float %i.akx, 3.000000e+00
  %i.akz = fmul float %i.aks, %i.aky
  %foldExtExtBinop3484 = fmul <4 x float> %.sroa.01622.03361, %foldExtExtBinop3482
  %i.ala = insertelement <4 x float> poison, float %i.aku, i64 0
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alc = insertelement <4 x float> poison, float %i.akw, i64 0
  %i.ald = shufflevector <4 x float> %i.alc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ale = insertelement <4 x float> poison, float %i.akz, i64 0
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alg = shufflevector <4 x float> %foldExtExtBinop3484, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alh = fmul <4 x float> %i.sq, %i.alg
  %i.ali = fmul <4 x float> %i.sp, %i.alf
  %i.alj = fadd <4 x float> %i.alh, %i.ali
  %i.alk = fmul <4 x float> %i.so, %i.ald
  %i.all = fadd <4 x float> %i.alk, %i.alj
  %i.alm = fmul <4 x float> %i.sn, %i.alb
  %i.aln = fadd <4 x float> %i.alm, %i.all        ; 2 uses
  %i.alo = shufflevector <4 x float> %i.aln, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alp = shufflevector <4 x float> %i.aln, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.alq = shufflevector <4 x float> %.sroa.01622.03361, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.alr = fsub <4 x float> %i.alp, %i.alo
  %i.als = fmul <4 x float> %i.alq, %i.alr
  %i.alt = fadd <4 x float> %i.alo, %i.als        ; 3 uses
  %i.alu = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alv = fmul <4 x float> %i.aft, %i.alu
  %i.alw = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.alx = fmul <4 x float> %i.afu, %i.alw
  %i.aly = fadd <4 x float> %i.alv, %i.alx
  %i.alz = fsub <4 x float> %.sroa.01622.03361, %i.aly ; 10 uses
  %i.ama = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.alt) ; 2 uses
  %i.amb = extractelement <4 x float> %i.ama, i64 0 ; 2 uses
  %i.amc = extractelement <4 x float> %i.ama, i64 1 ; 2 uses
  %i.amd = fcmp olt float %i.amb, %i.amc
  %i.ame = select i1 %i.amd, float %i.amc, float %i.amb
  %i.amf = fcmp uge float %i.ame, %i.tg
  br i1 %i.amf, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.critedge.i19.i
  %.sroa.01622.0.vec.extract1625 = extractelement <4 x float> %i.alz, i64 0 ; 5 uses
  %.sroa.01622.4.vec.extract1627 = extractelement <4 x float> %i.alz, i64 1 ; 5 uses
  %i.amg = fcmp oge float %.sroa.01622.0.vec.extract1625, 0.000000e+00
  %i.amh = fcmp ole float %.sroa.01622.0.vec.extract1625, 1.000000e+00
  %or.cond.i.i = and i1 %i.amg, %i.amh
  br i1 %or.cond.i.i, label %bb.r, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ami = fcmp oge float %.sroa.01622.4.vec.extract1627, 0.000000e+00
  %i.amj = fcmp ole float %.sroa.01622.4.vec.extract1627, 1.000000e+00
  %or.cond4.i.i = and i1 %i.ami, %i.amj
  br i1 %or.cond4.i.i, label %bb.s, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.amk = load float, ptr %i.ga, align 8, !noalias !7902
  %i.aml = load float, ptr %i.gb, align 8, !noalias !7902
  %i.amm = load float, ptr %i.gc, align 8, !noalias !7902
  %i.amn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.amk, i64 0
  %i.amo = insertelement <4 x float> %i.amn, float %i.aml, i64 1
  %i.amp = insertelement <4 x float> %i.amo, float %i.amm, i64 2 ; 8 uses
  %i.amq = load <4 x float>, ptr %1, align 16, !noalias !7903 ; 9 uses
  %i.amr = fsub <4 x float> %i.ot, %i.amq
  %i.ams = fmul <4 x float> %i.amp, %i.amr        ; 3 uses
  %i.amt = fsub <4 x float> %i.pm, %i.amq
  %i.amu = fmul <4 x float> %i.amp, %i.amt        ; 3 uses
  %i.amv = fsub <4 x float> %i.po, %i.amq
  %i.amw = fmul <4 x float> %i.amp, %i.amv        ; 3 uses
  %i.amx = fsub <4 x float> %i.pd, %i.amq
  %i.amy = fmul <4 x float> %i.amp, %i.amx        ; 3 uses
  %i.amz = fsub <4 x float> %i.oz, %i.amq
  %i.ana = fmul <4 x float> %i.amp, %i.amz        ; 3 uses
  %i.anb = fsub <4 x float> %i.pq, %i.amq
  %i.anc = fmul <4 x float> %i.amp, %i.anb        ; 3 uses
  %i.and = fsub <4 x float> %i.ps, %i.amq
  %i.ane = fmul <4 x float> %i.amp, %i.and        ; 3 uses
  %i.anf = fsub <4 x float> %i.pj, %i.amq
  %i.ang = fmul <4 x float> %i.amp, %i.anf        ; 3 uses
  %i.anh = fsub float 1.000000e+00, %.sroa.01622.4.vec.extract1627
  %i.ani = shufflevector <4 x float> %i.alz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anj = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ank = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anl = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.anm = shufflevector <4 x float> %i.anj, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ann = shufflevector <4 x float> %i.ank, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ano = shufflevector <4 x float> %i.anl, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.anp = shufflevector <4 x float> %i.anm, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.anq = shufflevector <4 x float> %i.ann, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.anr = shufflevector <4 x float> %i.ano, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ans = fadd <4 x float> %i.anq, %i.anr
  %i.ant = fadd <4 x float> %i.anp, %i.ans
  %i.anu = fmul <4 x float> %i.ani, %i.ant
  %i.anv = insertelement <4 x float> poison, float %i.anh, i64 0
  %i.anw = shufflevector <4 x float> %i.anv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anx = shufflevector <4 x float> %i.ams, <4 x float> %i.amu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.any = shufflevector <4 x float> %i.ams, <4 x float> %i.amu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anz = shufflevector <4 x float> %i.ams, <4 x float> %i.amu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoa = shufflevector <4 x float> %i.anx, <4 x float> %i.amw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aob = shufflevector <4 x float> %i.any, <4 x float> %i.amw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aoc = shufflevector <4 x float> %i.anz, <4 x float> %i.amw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aod = shufflevector <4 x float> %i.aoa, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aoe = shufflevector <4 x float> %i.aob, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aof = shufflevector <4 x float> %i.aoc, <4 x float> %i.amy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aog = fadd <4 x float> %i.aoe, %i.aof
  %i.aoh = fadd <4 x float> %i.aod, %i.aog
  %i.aoi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anw, <4 x float> %i.aoh, <4 x float> %i.anu) ; 4 uses
  %i.aoj = fsub float 1.000000e+00, %.sroa.01622.0.vec.extract1625 ; 5 uses
  %i.aok = fmul nnan float %i.aoj, %i.aoj         ; 2 uses
  %i.aol = fmul float %i.aoj, %i.aok              ; 2 uses
  %i.aom = fmul nnan float %.sroa.01622.0.vec.extract1625, 3.000000e+00
  %i.aon = fmul float %i.aom, %i.aok              ; 2 uses
  %foldExtExtBinop3486 = fmul nnan <4 x float> %i.alz, %i.alz ; 2 uses
  %i.aoo = extractelement <4 x float> %foldExtExtBinop3486, i64 0
  %i.aop = fmul nnan float %i.aoo, 3.000000e+00
  %i.aoq = fmul float %i.aoj, %i.aop              ; 2 uses
  %foldExtExtBinop3488 = fmul <4 x float> %i.alz, %foldExtExtBinop3486 ; 2 uses
  %shift3490 = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3491 = fmul <4 x float> %foldExtExtBinop3488, %shift3490
  %i.aor = extractelement <4 x float> %foldExtExtBinop3491, i64 0
  %i.aos = extractelement <4 x float> %i.aoi, i64 2
  %i.aot = call noundef float @llvm.fmuladd.f32(float %i.aoq, float %i.aos, float %i.aor)
  %i.aou = extractelement <4 x float> %i.aoi, i64 1
  %i.aov = call noundef float @llvm.fmuladd.f32(float %i.aon, float %i.aou, float %i.aot)
  %i.aow = extractelement <4 x float> %i.aoi, i64 0
  %i.aox = call noundef float @llvm.fmuladd.f32(float %i.aol, float %i.aow, float %i.aov) ; 4 uses
  %i.aoy = extractelement <4 x float> %i.amq, i64 3
  %i.aoz = fcmp ugt float %i.aoy, %i.aox
  br i1 %i.aoz, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.apa = load float, ptr %i.ff, align 16        ; 2 uses
  %i.apb = fcmp ugt float %i.aox, %i.apa
  br i1 %i.apb, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.apc = shufflevector <4 x float> %i.alz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apd = fsub <4 x float> splat (float 1.000000e+00), %i.apc ; 4 uses
  %i.ape = fmul <4 x float> %i.oz, %i.apc
  %i.apf = fmul <4 x float> %i.pq, %i.apc
  %i.apg = fmul <4 x float> %i.ps, %i.apc
  %i.aph = fmul <4 x float> %i.pj, %i.apc
  %i.api = fmul <4 x float> %i.ot, %i.apd
  %i.apj = fadd <4 x float> %i.ape, %i.api
  %i.apk = fmul <4 x float> %i.pm, %i.apd
  %i.apl = fadd <4 x float> %i.apf, %i.apk        ; 2 uses
  %i.apm = fmul <4 x float> %i.po, %i.apd
  %i.apn = fadd <4 x float> %i.apg, %i.apm        ; 2 uses
  %i.apo = fmul <4 x float> %i.pd, %i.apd
  %i.app = fadd <4 x float> %i.aph, %i.apo
  %i.apq = fsub <4 x float> %i.apl, %i.apj
  %i.apr = fsub <4 x float> %i.apn, %i.apl        ; 2 uses
  %i.aps = fsub <4 x float> %i.app, %i.apn
  %i.apt = shufflevector <4 x float> %i.alz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apu = fmul <4 x float> %i.apt, %i.apr
  %i.apv = insertelement <4 x float> poison, float %i.aoj, i64 0
  %i.apw = shufflevector <4 x float> %i.apv, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apx = fmul <4 x float> %i.apw, %i.apq
  %i.apy = fadd <4 x float> %i.apx, %i.apu
  %i.apz = fmul <4 x float> %i.apt, %i.aps
  %i.aqa = fmul <4 x float> %i.apw, %i.apr
  %i.aqb = fadd <4 x float> %i.aqa, %i.apz
  %i.aqc = fmul <4 x float> %i.apt, %i.aqb
  %i.aqd = fmul <4 x float> %i.apw, %i.apy
  %i.aqe = fadd <4 x float> %i.aqd, %i.aqc
  %i.aqf = fmul <4 x float> %i.aqe, splat (float 3.000000e+00) ; 2 uses
  %i.aqg = shufflevector <4 x float> %foldExtExtBinop3488, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqh = fmul <4 x float> %i.ua, %i.aqg
  %i.aqi = insertelement <4 x float> poison, float %i.aoq, i64 0
  %i.aqj = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqk = fmul <4 x float> %i.tz, %i.aqj
  %i.aql = fadd <4 x float> %i.aqh, %i.aqk
  %i.aqm = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.aqn = shufflevector <4 x float> %i.aqm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqo = fmul <4 x float> %i.ty, %i.aqn
  %i.aqp = fadd <4 x float> %i.aqo, %i.aql
  %i.aqq = insertelement <4 x float> poison, float %i.aol, i64 0
  %i.aqr = shufflevector <4 x float> %i.aqq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqs = fmul <4 x float> %i.tx, %i.aqr
  %i.aqt = fadd <4 x float> %i.aqs, %i.aqp        ; 2 uses
  %i.aqu = shufflevector <4 x float> %i.aqt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqv = shufflevector <4 x float> %i.aqf, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqw = fmul <4 x float> %i.aqt, %i.aqv
  %i.aqx = fmul <4 x float> %i.aqf, %i.aqu
  %i.aqy = fsub <4 x float> %i.aqx, %i.aqw        ; 3 uses
  %i.aqz = load ptr, ptr %2, align 8
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 488
  %i.arb = load ptr, ptr %i.ara, align 8
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %i.hc
  %i.ard = load ptr, ptr %i.arc, align 8          ; 5 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 52
  %i.arf = load i32, ptr %i.are, align 4
  %i.arg = load i32, ptr %i.gd, align 4
  %i.arh = and i32 %i.arg, %i.arf
  %i.ari = icmp eq i32 %i.arh, 0
  br i1 %i.ari, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.arj = load ptr, ptr %i.ge, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  %i.arl = load ptr, ptr %i.ark, align 8
  %.not3353 = icmp eq ptr %i.arl, null
  br i1 %.not3353, label %bb.w, label %.critedge.i.i.i, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ard, i64 64
  %i.arn = load ptr, ptr %i.arm, align 16
  %.not3354 = icmp eq ptr %i.arn, null
  br i1 %.not3354, label %bb.ae, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.aro = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.arp = shufflevector <4 x float> %i.aqy, <4 x float> %i.alz, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.arp, ptr %5, align 16
  store float %.sroa.01622.4.vec.extract1627, ptr %i.gg, align 16
  store <2 x i32> %i.uc, ptr %i.gh, align 4
  %i.arq = load i32, ptr %i.aro, align 4
  store i32 %i.arq, ptr %i.gi, align 4
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.ars = load i32, ptr %i.arr, align 4
  store i32 %i.ars, ptr %i.gj, align 16
  store float %i.aox, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.art = getelementptr inbounds nuw i8, ptr %i.ard, i64 24
  %i.aru = load ptr, ptr %i.art, align 8
  store ptr %i.aru, ptr %i.gk, align 8
  %i.arv = load ptr, ptr %i.gf, align 8
  store ptr %i.arv, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ard, i64 64
  %i.arx = load ptr, ptr %i.arw, align 16         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.arx, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i
  call void %i.arx(ptr noundef nonnull %4), !inline_history !7867
  %i.ary = load ptr, ptr %4, align 8
  %i.arz = load i32, ptr %i.ary, align 4
  %i.asa = icmp eq i32 %i.arz, 0
  br i1 %i.asa, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i.i.i
  %i.asb = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 16
  %i.asd = load ptr, ptr %i.asc, align 8          ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.asd, null
  br i1 %.not14.i.i.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ase = load i32, ptr %i.asb, align 8
  %i.asf = and i32 %i.ase, 2
  %.not3355 = icmp eq i32 %i.asf, 0
  br i1 %.not3355, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ard, i64 60
  %i.ash = load i32, ptr %i.asg, align 4
  %i.asi = and i32 %i.ash, 4194304
  %.not3356 = icmp eq i32 %i.asi, 0
  br i1 %.not3356, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void %i.asd(ptr noundef nonnull %4), !inline_history !7867
  %.pre = load ptr, ptr %4, align 8
  %.pre3408 = load i32, ptr %.pre, align 4
  %i.asj = icmp eq i32 %.pre3408, 0
  br i1 %i.asj, label %bb.ac, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.aa, %bb.y, %bb.ab
  %i.ask = load ptr, ptr %i.gm, align 8           ; 9 uses
  %i.asl = load ptr, ptr %i.gn, align 8           ; 9 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 48
  %i.asn = load float, ptr %i.asl, align 4
  store float %i.asn, ptr %i.asm, align 4
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 4
  %i.asp = load float, ptr %i.aso, align 4
  %i.asq = getelementptr inbounds nuw i8, ptr %i.ask, i64 52
  store float %i.asp, ptr %i.asq, align 4
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %i.ass = load float, ptr %i.asr, align 4
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ask, i64 56
  store float %i.ass, ptr %i.ast, align 4
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asl, i64 12
  %i.asv = load float, ptr %i.asu, align 4
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ask, i64 60
  store float %i.asv, ptr %i.asw, align 4
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %i.asy = load float, ptr %i.asx, align 16
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ask, i64 64
  store float %i.asy, ptr %i.asz, align 16
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asl, i64 20
  %i.atb = load i32, ptr %i.ata, align 4
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ask, i64 68
  store i32 %i.atb, ptr %i.atc, align 4
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asl, i64 24
  %i.ate = load i32, ptr %i.atd, align 8
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ask, i64 72
  store i32 %i.ate, ptr %i.atf, align 8
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asl, i64 28
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ask, i64 76
  %i.ati = load i32, ptr %i.atg, align 4
  store i32 %i.ati, ptr %i.ath, align 4
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asl, i64 32
end_hunk_8
begin_hunk_9_@_ZN6embree4sse219CurveNiIntersector1ILi4EE11occluded_hnINS0_26OrientedCurve1Intersector1INS_13HermiteCurveTELi3ELi4EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ahp = fmul <2 x float> %i.aho, %i.aha        ; 4 uses
  %i.ahq = fmul <2 x float> %i.aho, %i.ahb        ; 4 uses
  %i.ahr = fcmp olt <2 x float> %i.ahp, %i.ahq    ; 3 uses
  %i.ahs = extractelement <2 x i1> %i.ahr, i64 0
  %i.aht = extractelement <2 x float> %i.ahp, i64 0
  %i.ahu = extractelement <2 x float> %i.ahq, i64 0
  %i.ahv = select i1 %i.ahs, float %i.ahu, float %i.aht ; 2 uses
  %i.ahw = fcmp olt float %i.ahn, %i.ahv
  %i.ahx = select i1 %i.ahw, float %i.ahv, float %i.ahn
  %i.ahy = select <2 x i1> %i.ahj, <2 x float> %i.ahh, <2 x float> %i.ahi ; 2 uses
  %i.ahz = select <2 x i1> %i.ahr, <2 x float> %i.ahp, <2 x float> %i.ahq ; 2 uses
  %i.aia = fcmp olt <2 x float> %i.ahy, %i.ahz
  %i.aib = select <2 x i1> %i.aia, <2 x float> %i.ahy, <2 x float> %i.ahz
  %i.aic = shufflevector <4 x float> %i.ahf, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aid = fmul <2 x float> %i.aic, %i.ahc        ; 4 uses
  %i.aie = fmul <2 x float> %i.aic, %i.ahd        ; 4 uses
  %i.aif = fcmp olt <2 x float> %i.aid, %i.aie    ; 3 uses
  %i.aig = extractelement <2 x i1> %i.aif, i64 0
  %i.aih = extractelement <2 x float> %i.aid, i64 0
  %i.aii = extractelement <2 x float> %i.aie, i64 0
  %i.aij = select i1 %i.aig, float %i.aii, float %i.aih ; 2 uses
  %i.aik = shufflevector <4 x float> %i.ahf, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ail = fmul <2 x float> %i.aik, %i.ahc        ; 4 uses
  %i.aim = fmul <2 x float> %i.aik, %i.ahd        ; 4 uses
  %i.ain = fcmp olt <2 x float> %i.ail, %i.aim    ; 3 uses
  %i.aio = extractelement <2 x i1> %i.ain, i64 0
  %i.aip = extractelement <2 x float> %i.ail, i64 0
  %i.aiq = extractelement <2 x float> %i.aim, i64 0
  %i.air = select i1 %i.aio, float %i.aiq, float %i.aip ; 2 uses
  %i.ais = fcmp olt float %i.aij, %i.air
  %i.ait = select i1 %i.ais, float %i.air, float %i.aij
  %i.aiu = select <2 x i1> %i.aif, <2 x float> %i.aid, <2 x float> %i.aie ; 2 uses
  %i.aiv = select <2 x i1> %i.ain, <2 x float> %i.ail, <2 x float> %i.aim ; 2 uses
  %i.aiw = fcmp olt <2 x float> %i.aiu, %i.aiv
  %i.aix = select <2 x i1> %i.aiw, <2 x float> %i.aiu, <2 x float> %i.aiv
  %i.aiy = shufflevector <2 x i1> %i.ahj, <2 x i1> %i.aif, <2 x i32> <i32 1, i32 3>
  %i.aiz = shufflevector <2 x float> %i.ahi, <2 x float> %i.aie, <2 x i32> <i32 1, i32 3>
  %i.aja = shufflevector <2 x float> %i.ahh, <2 x float> %i.aid, <2 x i32> <i32 1, i32 3>
  %i.ajb = select <2 x i1> %i.aiy, <2 x float> %i.aiz, <2 x float> %i.aja ; 2 uses
  %i.ajc = shufflevector <2 x i1> %i.ahr, <2 x i1> %i.ain, <2 x i32> <i32 1, i32 3>
  %i.ajd = shufflevector <2 x float> %i.ahq, <2 x float> %i.aim, <2 x i32> <i32 1, i32 3>
  %i.aje = shufflevector <2 x float> %i.ahp, <2 x float> %i.ail, <2 x i32> <i32 1, i32 3>
  %i.ajf = select <2 x i1> %i.ajc, <2 x float> %i.ajd, <2 x float> %i.aje ; 2 uses
  %i.ajg = fcmp olt <2 x float> %i.ajb, %i.ajf
  %i.ajh = select <2 x i1> %i.ajg, <2 x float> %i.ajf, <2 x float> %i.ajb ; 2 uses
  %i.aji = fadd float %i.ahx, %i.ait
  %i.ajj = fadd <2 x float> %i.aib, %i.aix
  %shift3471 = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3472 = fadd <2 x float> %i.ajh, %shift3471
  %i.ajk = extractelement <2 x float> %foldExtExtBinop3472, i64 0
  %i.ajl = fadd float %.sroa.01604.0.vec.extract, %i.aji ; 2 uses
  %i.ajm = shufflevector <4 x float> %i.afr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajn = fadd <2 x float> %i.ajm, %i.ajj        ; 3 uses
  %i.ajo = fadd float %.sroa.01604.4.vec.extract, %i.ajk ; 2 uses
  %i.ajp = extractelement <2 x float> %i.ajn, i64 0 ; 2 uses
  %i.ajq = fcmp olt float %i.ajp, %i.uu
  %i.ajr = select i1 %i.ajq, float %i.uu, float %i.ajp
  %i.ajs = fcmp olt float %i.ajl, %i.uv           ; 2 uses
  %i.ajt = select i1 %i.ajs, float %i.ajl, float %i.uv
  %i.aju = extractelement <2 x float> %i.ajn, i64 1 ; 2 uses
  %i.ajv = fcmp olt float %i.aju, %i.acd
  %i.ajw = select i1 %i.ajv, float %i.acd, float %i.aju
  %i.ajx = fcmp olt float %i.ajo, %i.ace          ; 2 uses
  %i.ajy = select i1 %i.ajx, float %i.ajo, float %i.ace
  %i.ajz = fcmp ogt float %i.ajr, %i.ajt
  %i.aka = fcmp ogt float %i.ajw, %i.ajy
  %or.cond = select i1 %i.ajz, i1 true, i1 %i.aka, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i: ; preds = %bb.o
  %i.akb = shufflevector <2 x float> %i.ut, <2 x float> %i.acc, <2 x i32> <i32 0, i32 2>
  %i.akc = fcmp ogt <2 x float> %i.ajn, %i.akb    ; 2 uses
  %i.akd = extractelement <2 x i1> %i.akc, i64 0
  %i.ake = and i1 %i.akd, %i.ajs
  %i.akf = extractelement <2 x i1> %i.akc, i64 1
  %i.akg = select i1 %i.ake, i1 %i.akf, i1 false
  %i.akh = select i1 %i.akg, i1 %i.ajx, i1 false
  %.demorgan.i.i = or i1 %i.vb, %i.akh
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.p:                                             ; preds = %.critedge.i19.i
  %i.aki = add nuw nsw i64 %.026.i.i3341, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.aki, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !6

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, %bb.p
  %.026.i.i3341 = phi i64 [ %i.aki, %bb.p ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ]
  %.sroa.02540.03340 = phi <4 x float> [ %i.alq, %bb.p ], [ %i.afr, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ] ; 6 uses
  %.sroa.02540.0.vec.extract = extractelement <4 x float> %.sroa.02540.03340, i64 0 ; 2 uses
  %i.akj = fsub float 1.000000e+00, %.sroa.02540.0.vec.extract ; 4 uses
  %i.akk = fmul float %i.akj, %i.akj              ; 2 uses
  %i.akl = fmul float %i.akj, %i.akk
  %i.akm = fmul float %.sroa.02540.0.vec.extract, 3.000000e+00
  %i.akn = fmul float %i.akm, %i.akk
  %foldExtExtBinop3474 = fmul <4 x float> %.sroa.02540.03340, %.sroa.02540.03340 ; 2 uses
  %i.ako = extractelement <4 x float> %foldExtExtBinop3474, i64 0
  %i.akp = fmul float %i.ako, 3.000000e+00
  %i.akq = fmul float %i.akj, %i.akp
  %foldExtExtBinop3476 = fmul <4 x float> %.sroa.02540.03340, %foldExtExtBinop3474
  %i.akr = insertelement <4 x float> poison, float %i.akl, i64 0
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akt = insertelement <4 x float> poison, float %i.akn, i64 0
  %i.aku = shufflevector <4 x float> %i.akt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akv = insertelement <4 x float> poison, float %i.akq, i64 0
  %i.akw = shufflevector <4 x float> %i.akv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akx = shufflevector <4 x float> %foldExtExtBinop3476, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aky = fmul <4 x float> %i.sj, %i.akx
  %i.akz = fmul <4 x float> %i.si, %i.akw
  %i.ala = fadd <4 x float> %i.aky, %i.akz
  %i.alb = fmul <4 x float> %i.sh, %i.aku
  %i.alc = fadd <4 x float> %i.alb, %i.ala
  %i.ald = fmul <4 x float> %i.sg, %i.aks
  %i.ale = fadd <4 x float> %i.ald, %i.alc        ; 2 uses
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alg = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.alh = shufflevector <4 x float> %.sroa.02540.03340, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ali = fsub <4 x float> %i.alg, %i.alf
  %i.alj = fmul <4 x float> %i.alh, %i.ali
  %i.alk = fadd <4 x float> %i.alf, %i.alj        ; 3 uses
  %i.all = shufflevector <4 x float> %i.alk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alm = fmul <4 x float> %i.afk, %i.all
  %i.aln = shufflevector <4 x float> %i.alk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.alo = fmul <4 x float> %i.afl, %i.aln
  %i.alp = fadd <4 x float> %i.alm, %i.alo
  %i.alq = fsub <4 x float> %.sroa.02540.03340, %i.alp ; 10 uses
  %i.alr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.alk) ; 2 uses
  %i.als = extractelement <4 x float> %i.alr, i64 0 ; 2 uses
  %i.alt = extractelement <4 x float> %i.alr, i64 1 ; 2 uses
  %i.alu = fcmp olt float %i.als, %i.alt
  %i.alv = select i1 %i.alu, float %i.alt, float %i.als
  %i.alw = fcmp uge float %i.alv, %i.sz
  br i1 %i.alw, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.critedge.i19.i
  %.sroa.02540.0.vec.extract2543 = extractelement <4 x float> %i.alq, i64 0 ; 4 uses
  %.sroa.02540.4.vec.extract2545 = extractelement <4 x float> %i.alq, i64 1 ; 4 uses
  %i.alx = fcmp oge float %.sroa.02540.0.vec.extract2543, 0.000000e+00
  %i.aly = fcmp ole float %.sroa.02540.0.vec.extract2543, 1.000000e+00
  %or.cond.i.i = and i1 %i.alx, %i.aly
  br i1 %or.cond.i.i, label %bb.r, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.alz = fcmp oge float %.sroa.02540.4.vec.extract2545, 0.000000e+00
  %i.ama = fcmp ole float %.sroa.02540.4.vec.extract2545, 1.000000e+00
  %or.cond4.i.i = and i1 %i.alz, %i.ama
  br i1 %or.cond4.i.i, label %bb.s, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.amb = load float, ptr %i.ga, align 8, !noalias !8031
  %i.amc = load float, ptr %i.gb, align 8, !noalias !8031
  %i.amd = load float, ptr %i.gc, align 8, !noalias !8031
  %i.ame = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.amb, i64 0
  %i.amf = insertelement <4 x float> %i.ame, float %i.amc, i64 1
  %i.amg = insertelement <4 x float> %i.amf, float %i.amd, i64 2 ; 8 uses
  %i.amh = load <4 x float>, ptr %1, align 16, !noalias !8032 ; 9 uses
  %i.ami = fsub <4 x float> %i.om, %i.amh
  %i.amj = fmul <4 x float> %i.amg, %i.ami        ; 3 uses
  %i.amk = fsub <4 x float> %i.pf, %i.amh
  %i.aml = fmul <4 x float> %i.amg, %i.amk        ; 3 uses
  %i.amm = fsub <4 x float> %i.ph, %i.amh
  %i.amn = fmul <4 x float> %i.amg, %i.amm        ; 3 uses
  %i.amo = fsub <4 x float> %i.ow, %i.amh
  %i.amp = fmul <4 x float> %i.amg, %i.amo        ; 3 uses
  %i.amq = fsub <4 x float> %i.os, %i.amh
  %i.amr = fmul <4 x float> %i.amg, %i.amq        ; 3 uses
  %i.ams = fsub <4 x float> %i.pj, %i.amh
  %i.amt = fmul <4 x float> %i.amg, %i.ams        ; 3 uses
  %i.amu = fsub <4 x float> %i.pl, %i.amh
  %i.amv = fmul <4 x float> %i.amg, %i.amu        ; 3 uses
  %i.amw = fsub <4 x float> %i.pc, %i.amh
  %i.amx = fmul <4 x float> %i.amg, %i.amw        ; 3 uses
  %i.amy = fsub float 1.000000e+00, %.sroa.02540.4.vec.extract2545
  %i.amz = shufflevector <4 x float> %i.alq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ana = shufflevector <4 x float> %i.amr, <4 x float> %i.amt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.anb = shufflevector <4 x float> %i.amr, <4 x float> %i.amt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anc = shufflevector <4 x float> %i.amr, <4 x float> %i.amt, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.and = shufflevector <4 x float> %i.ana, <4 x float> %i.amv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ane = shufflevector <4 x float> %i.anb, <4 x float> %i.amv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.anf = shufflevector <4 x float> %i.anc, <4 x float> %i.amv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ang = shufflevector <4 x float> %i.and, <4 x float> %i.amx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.anh = shufflevector <4 x float> %i.ane, <4 x float> %i.amx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ani = shufflevector <4 x float> %i.anf, <4 x float> %i.amx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.anj = fadd <4 x float> %i.anh, %i.ani
  %i.ank = fadd <4 x float> %i.ang, %i.anj
  %i.anl = fmul <4 x float> %i.amz, %i.ank
  %i.anm = insertelement <4 x float> poison, float %i.amy, i64 0
  %i.ann = shufflevector <4 x float> %i.anm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ano = shufflevector <4 x float> %i.amj, <4 x float> %i.aml, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.anp = shufflevector <4 x float> %i.amj, <4 x float> %i.aml, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anq = shufflevector <4 x float> %i.amj, <4 x float> %i.aml, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.anr = shufflevector <4 x float> %i.ano, <4 x float> %i.amn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ans = shufflevector <4 x float> %i.anp, <4 x float> %i.amn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ant = shufflevector <4 x float> %i.anq, <4 x float> %i.amn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.anu = shufflevector <4 x float> %i.anr, <4 x float> %i.amp, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.anv = shufflevector <4 x float> %i.ans, <4 x float> %i.amp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.anw = shufflevector <4 x float> %i.ant, <4 x float> %i.amp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.anx = fadd <4 x float> %i.anv, %i.anw
  %i.any = fadd <4 x float> %i.anu, %i.anx
  %i.anz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> %i.any, <4 x float> %i.anl) ; 4 uses
  %i.aoa = fsub float 1.000000e+00, %.sroa.02540.0.vec.extract2543 ; 5 uses
  %i.aob = fmul nnan float %i.aoa, %i.aoa         ; 2 uses
  %i.aoc = fmul float %i.aoa, %i.aob              ; 2 uses
  %i.aod = fmul nnan float %.sroa.02540.0.vec.extract2543, 3.000000e+00
  %i.aoe = fmul float %i.aod, %i.aob              ; 2 uses
  %foldExtExtBinop3478 = fmul nnan <4 x float> %i.alq, %i.alq ; 2 uses
  %i.aof = extractelement <4 x float> %foldExtExtBinop3478, i64 0
  %i.aog = fmul nnan float %i.aof, 3.000000e+00
  %i.aoh = fmul float %i.aoa, %i.aog              ; 2 uses
  %foldExtExtBinop3480 = fmul <4 x float> %i.alq, %foldExtExtBinop3478 ; 2 uses
  %shift3482 = shufflevector <4 x float> %i.anz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3483 = fmul <4 x float> %foldExtExtBinop3480, %shift3482
  %i.aoi = extractelement <4 x float> %foldExtExtBinop3483, i64 0
  %i.aoj = extractelement <4 x float> %i.anz, i64 2
  %i.aok = call noundef float @llvm.fmuladd.f32(float %i.aoh, float %i.aoj, float %i.aoi)
  %i.aol = extractelement <4 x float> %i.anz, i64 1
  %i.aom = call noundef float @llvm.fmuladd.f32(float %i.aoe, float %i.aol, float %i.aok)
  %i.aon = extractelement <4 x float> %i.anz, i64 0
  %i.aoo = call noundef float @llvm.fmuladd.f32(float %i.aoc, float %i.aon, float %i.aom) ; 3 uses
  %i.aop = extractelement <4 x float> %i.amh, i64 3
  %i.aoq = fcmp ugt float %i.aop, %i.aoo
  br i1 %i.aoq, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aor = load float, ptr %i.ff, align 16        ; 2 uses
  %i.aos = fcmp ugt float %i.aoo, %i.aor
  br i1 %i.aos, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aot = shufflevector <4 x float> %i.alq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.aou = fsub <4 x float> splat (float 1.000000e+00), %i.aot ; 4 uses
  %i.aov = fmul <4 x float> %i.os, %i.aot
  %i.aow = fmul <4 x float> %i.pj, %i.aot
  %i.aox = fmul <4 x float> %i.pl, %i.aot
  %i.aoy = fmul <4 x float> %i.pc, %i.aot
  %i.aoz = fmul <4 x float> %i.om, %i.aou
  %i.apa = fadd <4 x float> %i.aov, %i.aoz
  %i.apb = fmul <4 x float> %i.pf, %i.aou
  %i.apc = fadd <4 x float> %i.aow, %i.apb        ; 2 uses
  %i.apd = fmul <4 x float> %i.ph, %i.aou
  %i.ape = fadd <4 x float> %i.aox, %i.apd        ; 2 uses
  %i.apf = fmul <4 x float> %i.ow, %i.aou
  %i.apg = fadd <4 x float> %i.aoy, %i.apf
  %i.aph = fsub <4 x float> %i.apc, %i.apa
  %i.api = fsub <4 x float> %i.ape, %i.apc        ; 2 uses
  %i.apj = fsub <4 x float> %i.apg, %i.ape
  %i.apk = shufflevector <4 x float> %i.alq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apl = fmul <4 x float> %i.apk, %i.api
  %i.apm = insertelement <4 x float> poison, float %i.aoa, i64 0
  %i.apn = shufflevector <4 x float> %i.apm, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apo = fmul <4 x float> %i.apn, %i.aph
  %i.app = fadd <4 x float> %i.apo, %i.apl
  %i.apq = fmul <4 x float> %i.apk, %i.apj
  %i.apr = fmul <4 x float> %i.apn, %i.api
  %i.aps = fadd <4 x float> %i.apr, %i.apq
  %i.apt = fmul <4 x float> %i.apk, %i.aps
  %i.apu = fmul <4 x float> %i.apn, %i.app
  %i.apv = fadd <4 x float> %i.apu, %i.apt
  %i.apw = fmul <4 x float> %i.apv, splat (float 3.000000e+00) ; 2 uses
  %i.apx = shufflevector <4 x float> %foldExtExtBinop3480, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apy = fmul <4 x float> %i.tt, %i.apx
  %i.apz = insertelement <4 x float> poison, float %i.aoh, i64 0
  %i.aqa = shufflevector <4 x float> %i.apz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqb = fmul <4 x float> %i.ts, %i.aqa
  %i.aqc = fadd <4 x float> %i.apy, %i.aqb
  %i.aqd = insertelement <4 x float> poison, float %i.aoe, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqf = fmul <4 x float> %i.tr, %i.aqe
  %i.aqg = fadd <4 x float> %i.aqf, %i.aqc
  %i.aqh = insertelement <4 x float> poison, float %i.aoc, i64 0
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqj = fmul <4 x float> %i.tq, %i.aqi
  %i.aqk = fadd <4 x float> %i.aqj, %i.aqg        ; 2 uses
  %i.aql = shufflevector <4 x float> %i.aqk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqm = shufflevector <4 x float> %i.apw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aqn = fmul <4 x float> %i.aqk, %i.aqm
  %i.aqo = fmul <4 x float> %i.apw, %i.aql
  %i.aqp = fsub <4 x float> %i.aqo, %i.aqn
  %i.aqq = load ptr, ptr %2, align 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 488
  %i.aqs = load ptr, ptr %i.aqr, align 8
  %i.aqt = getelementptr inbounds nuw [8 x i8], ptr %i.aqs, i64 %i.gv
  %i.aqu = load ptr, ptr %i.aqt, align 8          ; 5 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 52
  %i.aqw = load i32, ptr %i.aqv, align 4
  %i.aqx = load i32, ptr %i.gd, align 4
  %i.aqy = and i32 %i.aqx, %i.aqw
  %i.aqz = icmp eq i32 %i.aqy, 0
  br i1 %i.aqz, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ara = load ptr, ptr %i.ge, align 8
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8
  %.not3332 = icmp eq ptr %i.arc, null
  br i1 %.not3332, label %bb.w, label %.critedge.i.i.i, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqu, i64 72
  %i.are = load ptr, ptr %i.ard, align 8
  %.not3333 = icmp eq ptr %i.are, null
  br i1 %.not3333, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.arf = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.arg = shufflevector <4 x float> %i.aqp, <4 x float> %i.alq, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.arg, ptr %5, align 16
  store float %.sroa.02540.4.vec.extract2545, ptr %i.gg, align 16
  store <2 x i32> %i.tv, ptr %i.gh, align 4
  %i.arh = load i32, ptr %i.arf, align 4
  store i32 %i.arh, ptr %i.gi, align 4
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arf, i64 4
  %i.arj = load i32, ptr %i.ari, align 4
  store i32 %i.arj, ptr %i.gj, align 16
  store float %i.aoo, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24
  %i.arl = load ptr, ptr %i.ark, align 8
  store ptr %i.arl, ptr %i.gk, align 8
  %i.arm = load ptr, ptr %i.gf, align 8
  store ptr %i.arm, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqu, i64 72
  %i.aro = load ptr, ptr %i.arn, align 8          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aro, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i
  call void %i.aro(ptr noundef nonnull %4), !inline_history !7996
  %i.arp = load ptr, ptr %4, align 8
  %i.arq = load i32, ptr %i.arp, align 4
  %i.arr = icmp eq i32 %i.arq, 0
  br i1 %i.arr, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i.i.i
  %i.ars = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load ptr, ptr %i.art, align 8          ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.aru, null
  br i1 %.not12.i.i.i.i, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.arv = load i32, ptr %i.ars, align 8
  %i.arw = and i32 %i.arv, 2
  %.not3334 = icmp eq i32 %i.arw, 0
  br i1 %.not3334, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqu, i64 60
  %i.ary = load i32, ptr %i.arx, align 4
  %i.arz = and i32 %i.ary, 4194304
  %.not3335 = icmp eq i32 %i.arz, 0
  br i1 %.not3335, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void %i.aru(ptr noundef nonnull %4), !inline_history !7996
  %.pre = load ptr, ptr %4, align 8
  %.pre3392 = load i32, ptr %.pre, align 4
  %i.asa = icmp eq i32 %.pre3392, 0
  br i1 %i.asa, label %bb.ac, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.aa, %bb.y, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.aor, ptr %i.ff, align 16
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, %bb.ac
  %.0.i.i.i.i3328 = phi i1 [ %.sroa.84.13359, %bb.ac ], [ true, %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i: ; preds = %bb.p, %bb.u, %bb.w, %bb.ad, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i, %bb.s, %bb.t, %bb.r, %bb.q, %bb.o, %bb.b
  %.sroa.84.3 = phi i1 [ %.sroa.84.13359, %bb.b ], [ %.sroa.84.13359, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i ], [ %.sroa.84.13359, %bb.o ], [ %.sroa.84.13359, %bb.t ], [ true, %bb.w ], [ %.sroa.84.13359, %bb.s ], [ %.sroa.84.13359, %bb.q ], [ %.sroa.84.13359, %bb.r ], [ %.sroa.84.13359, %bb.u ], [ %.0.i.i.i.i3328, %bb.ad ], [ %.sroa.84.13359, %bb.p ] ; 2 uses
  %.not32.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not32.i.i, label %_ZNK6embree4sse226OrientedCurve1Intersector1INS_13HermiteCurveTELi3ELi4EE9intersectINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERT_PNS_15RayQueryContextEPKNS_13CurveGeometryEjRKNS_6Vec3fxESL_SL_SL_RKNS_6Vec3faESO_SO_SO_RKT0_.exit, label %.lr.ph

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge: ; preds = %.lr.ph, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i
  %.sroa.0683.0.be = phi <2 x float> [ %i.acc, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ], [ %i.ud, %.lr.ph ]
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread: ; preds = %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, %.preheader3336
  %.sroa.84.0 = phi i1 [ false, %.preheader3336 ], [ %.sroa.84.13359, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0683.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3336 ], [ %.sroa.0683.0.be, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0719.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3336 ], [ %i.ut, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 5 uses
  %.225.i.i = phi i32 [ 0, %.preheader3336 ], [ %spec.select.i.i, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 4 uses
  %i.asb = shufflevector <2 x float> %.sroa.0683.0, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 5 uses
  %i.asc = fsub <4 x float> splat (float 1.000000e+00), %i.asb ; 4 uses
  %i.asd = fmul <4 x float> %i.te, %i.asb
  %i.ase = fmul <4 x float> %i.tf, %i.asb
  %i.asf = fmul <4 x float> %i.tg, %i.asb
end_hunk_9
begin_hunk_10_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE12intersect_hnINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EEENS0_18Intersect1KEpilog1ILi4ELb1EEEEEvRNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajm = fmul <2 x float> %i.ajl, %i.ajf        ; 4 uses
  %i.ajn = fmul <2 x float> %i.ajl, %i.ajg        ; 4 uses
  %i.ajo = fcmp olt <2 x float> %i.ajm, %i.ajn    ; 3 uses
  %i.ajp = extractelement <2 x i1> %i.ajo, i64 0
  %i.ajq = extractelement <2 x float> %i.ajm, i64 0
  %i.ajr = extractelement <2 x float> %i.ajn, i64 0
  %i.ajs = select i1 %i.ajp, float %i.ajr, float %i.ajq ; 2 uses
  %i.ajt = shufflevector <4 x float> %i.ajk, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aju = fmul <2 x float> %i.ajt, %i.ajf        ; 4 uses
  %i.ajv = fmul <2 x float> %i.ajt, %i.ajg        ; 4 uses
  %i.ajw = fcmp olt <2 x float> %i.aju, %i.ajv    ; 3 uses
  %i.ajx = extractelement <2 x i1> %i.ajw, i64 0
  %i.ajy = extractelement <2 x float> %i.aju, i64 0
  %i.ajz = extractelement <2 x float> %i.ajv, i64 0
  %i.aka = select i1 %i.ajx, float %i.ajz, float %i.ajy ; 2 uses
  %i.akb = fcmp olt float %i.ajs, %i.aka
  %i.akc = select i1 %i.akb, float %i.aka, float %i.ajs
  %i.akd = select <2 x i1> %i.ajo, <2 x float> %i.ajm, <2 x float> %i.ajn ; 2 uses
  %i.ake = select <2 x i1> %i.ajw, <2 x float> %i.aju, <2 x float> %i.ajv ; 2 uses
  %i.akf = fcmp olt <2 x float> %i.akd, %i.ake
  %i.akg = select <2 x i1> %i.akf, <2 x float> %i.akd, <2 x float> %i.ake
  %i.akh = shufflevector <4 x float> %i.ajk, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aki = fmul <2 x float> %i.akh, %i.ajh        ; 4 uses
  %i.akj = fmul <2 x float> %i.akh, %i.aji        ; 4 uses
  %i.akk = fcmp olt <2 x float> %i.aki, %i.akj    ; 3 uses
  %i.akl = extractelement <2 x i1> %i.akk, i64 0
  %i.akm = extractelement <2 x float> %i.aki, i64 0
  %i.akn = extractelement <2 x float> %i.akj, i64 0
  %i.ako = select i1 %i.akl, float %i.akn, float %i.akm ; 2 uses
  %i.akp = shufflevector <4 x float> %i.ajk, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.akq = fmul <2 x float> %i.akp, %i.ajh        ; 4 uses
  %i.akr = fmul <2 x float> %i.akp, %i.aji        ; 4 uses
  %i.aks = fcmp olt <2 x float> %i.akq, %i.akr    ; 3 uses
  %i.akt = extractelement <2 x i1> %i.aks, i64 0
  %i.aku = extractelement <2 x float> %i.akq, i64 0
  %i.akv = extractelement <2 x float> %i.akr, i64 0
  %i.akw = select i1 %i.akt, float %i.akv, float %i.aku ; 2 uses
  %i.akx = fcmp olt float %i.ako, %i.akw
  %i.aky = select i1 %i.akx, float %i.akw, float %i.ako
  %i.akz = select <2 x i1> %i.akk, <2 x float> %i.aki, <2 x float> %i.akj ; 2 uses
  %i.ala = select <2 x i1> %i.aks, <2 x float> %i.akq, <2 x float> %i.akr ; 2 uses
  %i.alb = fcmp olt <2 x float> %i.akz, %i.ala
  %i.alc = select <2 x i1> %i.alb, <2 x float> %i.akz, <2 x float> %i.ala
  %i.ald = shufflevector <2 x i1> %i.ajo, <2 x i1> %i.akk, <2 x i32> <i32 1, i32 3>
  %i.ale = shufflevector <2 x float> %i.ajn, <2 x float> %i.akj, <2 x i32> <i32 1, i32 3>
  %i.alf = shufflevector <2 x float> %i.ajm, <2 x float> %i.aki, <2 x i32> <i32 1, i32 3>
  %i.alg = select <2 x i1> %i.ald, <2 x float> %i.ale, <2 x float> %i.alf ; 2 uses
  %i.alh = shufflevector <2 x i1> %i.ajw, <2 x i1> %i.aks, <2 x i32> <i32 1, i32 3>
  %i.ali = shufflevector <2 x float> %i.ajv, <2 x float> %i.akr, <2 x i32> <i32 1, i32 3>
  %i.alj = shufflevector <2 x float> %i.aju, <2 x float> %i.akq, <2 x i32> <i32 1, i32 3>
  %i.alk = select <2 x i1> %i.alh, <2 x float> %i.ali, <2 x float> %i.alj ; 2 uses
  %i.all = fcmp olt <2 x float> %i.alg, %i.alk
  %i.alm = select <2 x i1> %i.all, <2 x float> %i.alk, <2 x float> %i.alg ; 2 uses
  %i.aln = fadd float %i.akc, %i.aky
  %i.alo = fadd <2 x float> %i.akg, %i.alc
  %shift3558 = shufflevector <2 x float> %i.alm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3559 = fadd <2 x float> %i.alm, %shift3558
  %i.alp = extractelement <2 x float> %foldExtExtBinop3559, i64 0
  %i.alq = fadd float %.sroa.02101.0.vec.extract, %i.aln ; 2 uses
  %i.alr = shufflevector <4 x float> %i.ahw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.als = fadd <2 x float> %i.alr, %i.alo        ; 3 uses
  %i.alt = fadd float %.sroa.02101.4.vec.extract, %i.alp ; 2 uses
  %i.alu = extractelement <2 x float> %i.als, i64 0 ; 2 uses
  %i.alv = fcmp olt float %i.alu, %i.wz
  %i.alw = select i1 %i.alv, float %i.wz, float %i.alu
  %i.alx = fcmp olt float %i.alq, %i.xa           ; 2 uses
  %i.aly = select i1 %i.alx, float %i.alq, float %i.xa
  %i.alz = extractelement <2 x float> %i.als, i64 1 ; 2 uses
  %i.ama = fcmp olt float %i.alz, %i.aei
  %i.amb = select i1 %i.ama, float %i.aei, float %i.alz
  %i.amc = fcmp olt float %i.alt, %i.aej          ; 2 uses
  %i.amd = select i1 %i.amc, float %i.alt, float %i.aej
  %i.ame = fcmp ogt float %i.alw, %i.aly
  %i.amf = fcmp ogt float %i.amb, %i.amd
  %or.cond = select i1 %i.ame, i1 true, i1 %i.amf, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.o
  %i.amg = shufflevector <2 x float> %i.wy, <2 x float> %i.aeh, <2 x i32> <i32 0, i32 2>
  %i.amh = fcmp ogt <2 x float> %i.als, %i.amg    ; 2 uses
  %i.ami = extractelement <2 x i1> %i.amh, i64 0
  %i.amj = and i1 %i.ami, %i.alx
  %i.amk = extractelement <2 x i1> %i.amh, i64 1
  %i.aml = select i1 %i.amj, i1 %i.amk, i1 false
  %i.amm = select i1 %i.aml, i1 %i.amc, i1 false
  %.demorgan.i = or i1 %i.xg, %i.amm
  br i1 %.demorgan.i, label %.critedge.i31, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.p:                                             ; preds = %.critedge.i31
  %i.amn = add nuw nsw i64 %.026.i3443, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.amn, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i31, !llvm.loop !8115

.critedge.i31:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.p
  %.026.i3443 = phi i64 [ %i.amn, %bb.p ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03033.03442 = phi <4 x float> [ %i.anv, %bb.p ], [ %i.ahw, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03033.0.vec.extract = extractelement <4 x float> %.sroa.03033.03442, i64 0 ; 2 uses
  %i.amo = fsub float 1.000000e+00, %.sroa.03033.0.vec.extract ; 4 uses
  %i.amp = fmul float %i.amo, %i.amo              ; 2 uses
  %i.amq = fmul float %i.amo, %i.amp
  %i.amr = fmul float %.sroa.03033.0.vec.extract, 3.000000e+00
  %i.ams = fmul float %i.amr, %i.amp
  %foldExtExtBinop3561 = fmul <4 x float> %.sroa.03033.03442, %.sroa.03033.03442 ; 2 uses
  %i.amt = extractelement <4 x float> %foldExtExtBinop3561, i64 0
  %i.amu = fmul float %i.amt, 3.000000e+00
  %i.amv = fmul float %i.amo, %i.amu
  %foldExtExtBinop3563 = fmul <4 x float> %.sroa.03033.03442, %foldExtExtBinop3561
  %i.amw = insertelement <4 x float> poison, float %i.amq, i64 0
  %i.amx = shufflevector <4 x float> %i.amw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amy = insertelement <4 x float> poison, float %i.ams, i64 0
  %i.amz = shufflevector <4 x float> %i.amy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ana = insertelement <4 x float> poison, float %i.amv, i64 0
  %i.anb = shufflevector <4 x float> %i.ana, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anc = shufflevector <4 x float> %foldExtExtBinop3563, <4 x float> poison, <4 x i32> zeroinitializer
  %i.and = fmul <4 x float> %i.um, %i.anc
  %i.ane = fmul <4 x float> %i.ul, %i.anb
  %i.anf = fadd <4 x float> %i.and, %i.ane
  %i.ang = fmul <4 x float> %i.uk, %i.amz
  %i.anh = fadd <4 x float> %i.ang, %i.anf
  %i.ani = fmul <4 x float> %i.uj, %i.amx
  %i.anj = fadd <4 x float> %i.ani, %i.anh        ; 2 uses
  %i.ank = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.anl = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.anm = shufflevector <4 x float> %.sroa.03033.03442, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ann = fsub <4 x float> %i.anl, %i.ank
  %i.ano = fmul <4 x float> %i.anm, %i.ann
  %i.anp = fadd <4 x float> %i.ank, %i.ano        ; 3 uses
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anr = fmul <4 x float> %i.ahp, %i.anq
  %i.ans = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ant = fmul <4 x float> %i.ahq, %i.ans
  %i.anu = fadd <4 x float> %i.anr, %i.ant
  %i.anv = fsub <4 x float> %.sroa.03033.03442, %i.anu ; 9 uses
  %i.anw = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.anp) ; 2 uses
  %i.anx = extractelement <4 x float> %i.anw, i64 0 ; 2 uses
  %i.any = extractelement <4 x float> %i.anw, i64 1 ; 2 uses
  %i.anz = fcmp olt float %i.anx, %i.any
  %i.aoa = select i1 %i.anz, float %i.any, float %i.anx
  %i.aob = fcmp uge float %i.aoa, %i.vc
  br i1 %i.aob, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.critedge.i31
  %.sroa.03033.0.vec.extract3036 = extractelement <4 x float> %i.anv, i64 0 ; 5 uses
  %.sroa.03033.4.vec.extract3038 = extractelement <4 x float> %i.anv, i64 1 ; 4 uses
  %i.aoc = fcmp oge float %.sroa.03033.0.vec.extract3036, 0.000000e+00
  %i.aod = fcmp ole float %.sroa.03033.0.vec.extract3036, 1.000000e+00
  %or.cond.i = and i1 %i.aoc, %i.aod
  br i1 %or.cond.i, label %bb.r, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.r:                                             ; preds = %bb.q
  %i.aoe = fcmp oge float %.sroa.03033.4.vec.extract3038, 0.000000e+00
  %i.aof = fcmp ole float %.sroa.03033.4.vec.extract3038, 1.000000e+00
  %or.cond4.i = and i1 %i.aoe, %i.aof
  br i1 %or.cond4.i, label %bb.s, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.s:                                             ; preds = %bb.r
  %i.aog = load float, ptr %i.gy, align 8, !noalias !8199
  %i.aoh = load float, ptr %i.gz, align 8, !noalias !8199
  %i.aoi = load float, ptr %i.ha, align 8, !noalias !8199
  %i.aoj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aog, i64 0
  %i.aok = insertelement <4 x float> %i.aoj, float %i.aoh, i64 1
  %i.aol = insertelement <4 x float> %i.aok, float %i.aoi, i64 2 ; 8 uses
  %i.aom = fmul <4 x float> %i.rp, %i.aol         ; 3 uses
  %i.aon = fmul <4 x float> %i.ry, %i.aol         ; 3 uses
  %i.aoo = fmul <4 x float> %i.sh, %i.aol         ; 3 uses
  %i.aop = fmul <4 x float> %i.sq, %i.aol         ; 3 uses
  %i.aoq = fmul <4 x float> %i.sz, %i.aol         ; 3 uses
  %i.aor = fmul <4 x float> %i.ti, %i.aol         ; 3 uses
  %i.aos = fmul <4 x float> %i.tr, %i.aol         ; 3 uses
  %i.aot = fmul <4 x float> %i.ua, %i.aol         ; 3 uses
  %i.aou = fsub float 1.000000e+00, %.sroa.03033.4.vec.extract3038
  %i.aov = shufflevector <4 x float> %i.anv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aow = shufflevector <4 x float> %i.aoq, <4 x float> %i.aor, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aox = shufflevector <4 x float> %i.aoq, <4 x float> %i.aor, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoy = shufflevector <4 x float> %i.aoq, <4 x float> %i.aor, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoz = shufflevector <4 x float> %i.aow, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apa = shufflevector <4 x float> %i.aox, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apb = shufflevector <4 x float> %i.aoy, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apc = shufflevector <4 x float> %i.aoz, <4 x float> %i.aot, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apd = shufflevector <4 x float> %i.apa, <4 x float> %i.aot, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ape = shufflevector <4 x float> %i.apb, <4 x float> %i.aot, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apf = fadd <4 x float> %i.apd, %i.ape
  %i.apg = fadd <4 x float> %i.apc, %i.apf
  %i.aph = fmul <4 x float> %i.aov, %i.apg
  %i.api = insertelement <4 x float> poison, float %i.aou, i64 0
  %i.apj = shufflevector <4 x float> %i.api, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apk = shufflevector <4 x float> %i.aom, <4 x float> %i.aon, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.apl = shufflevector <4 x float> %i.aom, <4 x float> %i.aon, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apm = shufflevector <4 x float> %i.aom, <4 x float> %i.aon, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apn = shufflevector <4 x float> %i.apk, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apo = shufflevector <4 x float> %i.apl, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.app = shufflevector <4 x float> %i.apm, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apq = shufflevector <4 x float> %i.apn, <4 x float> %i.aop, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apr = shufflevector <4 x float> %i.apo, <4 x float> %i.aop, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aps = shufflevector <4 x float> %i.app, <4 x float> %i.aop, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apt = fadd <4 x float> %i.apr, %i.aps
  %i.apu = fadd <4 x float> %i.apq, %i.apt
  %i.apv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apj, <4 x float> %i.apu, <4 x float> %i.aph) ; 4 uses
  %i.apw = fsub float 1.000000e+00, %.sroa.03033.0.vec.extract3036 ; 5 uses
  %i.apx = fmul nnan float %i.apw, %i.apw         ; 2 uses
  %i.apy = fmul float %i.apw, %i.apx              ; 2 uses
  %i.apz = fmul nnan float %.sroa.03033.0.vec.extract3036, 3.000000e+00
  %i.aqa = fmul float %i.apz, %i.apx              ; 2 uses
  %foldExtExtBinop3565 = fmul nnan <4 x float> %i.anv, %i.anv ; 2 uses
  %i.aqb = extractelement <4 x float> %foldExtExtBinop3565, i64 0
  %i.aqc = fmul nnan float %i.aqb, 3.000000e+00
  %i.aqd = fmul float %i.apw, %i.aqc              ; 2 uses
  %foldExtExtBinop3567 = fmul <4 x float> %i.anv, %foldExtExtBinop3565 ; 2 uses
  %shift3569 = shufflevector <4 x float> %i.apv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3570 = fmul <4 x float> %foldExtExtBinop3567, %shift3569
  %i.aqe = extractelement <4 x float> %foldExtExtBinop3570, i64 0
  %i.aqf = extractelement <4 x float> %i.apv, i64 2
  %i.aqg = call noundef float @llvm.fmuladd.f32(float %i.aqd, float %i.aqf, float %i.aqe)
  %i.aqh = extractelement <4 x float> %i.apv, i64 1
  %i.aqi = call noundef float @llvm.fmuladd.f32(float %i.aqa, float %i.aqh, float %i.aqg)
  %i.aqj = extractelement <4 x float> %i.apv, i64 0
  %i.aqk = call noundef float @llvm.fmuladd.f32(float %i.apy, float %i.aqj, float %i.aqi) ; 4 uses
  %i.aql = fcmp ugt float %i.ky, %i.aqk
  br i1 %i.aql, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aqm = load float, ptr %i.gb, align 4         ; 2 uses
  %i.aqn = fcmp ugt float %i.aqk, %i.aqm
  br i1 %i.aqn, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aqo = shufflevector <4 x float> %i.anv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.aqp = fsub <4 x float> splat (float 1.000000e+00), %i.aqo ; 4 uses
  %i.aqq = fmul <4 x float> %i.qv, %i.aqo
  %i.aqr = fmul <4 x float> %i.rm, %i.aqo
  %i.aqs = fmul <4 x float> %i.ro, %i.aqo
  %i.aqt = fmul <4 x float> %i.rf, %i.aqo
  %i.aqu = fmul <4 x float> %i.qp, %i.aqp
  %i.aqv = fadd <4 x float> %i.aqq, %i.aqu
  %i.aqw = fmul <4 x float> %i.ri, %i.aqp
  %i.aqx = fadd <4 x float> %i.aqr, %i.aqw        ; 2 uses
  %i.aqy = fmul <4 x float> %i.rk, %i.aqp
  %i.aqz = fadd <4 x float> %i.aqs, %i.aqy        ; 2 uses
  %i.ara = fmul <4 x float> %i.qz, %i.aqp
  %i.arb = fadd <4 x float> %i.aqt, %i.ara
  %i.arc = fsub <4 x float> %i.aqx, %i.aqv
  %i.ard = fsub <4 x float> %i.aqz, %i.aqx        ; 2 uses
  %i.are = fsub <4 x float> %i.arb, %i.aqz
  %i.arf = shufflevector <4 x float> %i.anv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.arg = fmul <4 x float> %i.arf, %i.ard
  %i.arh = insertelement <4 x float> poison, float %i.apw, i64 0
  %i.ari = shufflevector <4 x float> %i.arh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.arj = fmul <4 x float> %i.ari, %i.arc
  %i.ark = fadd <4 x float> %i.arj, %i.arg
  %i.arl = fmul <4 x float> %i.arf, %i.are
  %i.arm = fmul <4 x float> %i.ari, %i.ard
  %i.arn = fadd <4 x float> %i.arm, %i.arl
  %i.aro = fmul <4 x float> %i.arf, %i.arn
  %i.arp = fmul <4 x float> %i.ari, %i.ark
  %i.arq = fadd <4 x float> %i.arp, %i.aro
  %i.arr = fmul <4 x float> %i.arq, splat (float 3.000000e+00) ; 2 uses
  %i.ars = shufflevector <4 x float> %foldExtExtBinop3567, <4 x float> poison, <4 x i32> zeroinitializer
  %i.art = fmul <4 x float> %i.vw, %i.ars
  %i.aru = insertelement <4 x float> poison, float %i.aqd, i64 0
  %i.arv = shufflevector <4 x float> %i.aru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arw = fmul <4 x float> %i.vv, %i.arv
  %i.arx = fadd <4 x float> %i.art, %i.arw
  %i.ary = insertelement <4 x float> poison, float %i.aqa, i64 0
  %i.arz = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asa = fmul <4 x float> %i.vu, %i.arz
  %i.asb = fadd <4 x float> %i.asa, %i.arx
  %i.asc = insertelement <4 x float> poison, float %i.apy, i64 0
  %i.asd = shufflevector <4 x float> %i.asc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ase = fmul <4 x float> %i.vt, %i.asd
  %i.asf = fadd <4 x float> %i.ase, %i.asb        ; 2 uses
  %i.asg = shufflevector <4 x float> %i.asf, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ash = shufflevector <4 x float> %i.arr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.asi = fmul <4 x float> %i.asf, %i.ash
  %i.asj = fmul <4 x float> %i.arr, %i.asg
  %i.ask = fsub <4 x float> %i.asj, %i.asi        ; 6 uses
  %i.asl = load ptr, ptr %3, align 8
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 488
  %i.asn = load ptr, ptr %i.asm, align 8
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.asn, i64 %i.is
  %i.asp = load ptr, ptr %i.aso, align 8          ; 5 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 52
  %i.asr = load i32, ptr %i.asq, align 4
  %i.ass = load i32, ptr %i.hc, align 4
  %i.ast = and i32 %i.ass, %i.asr
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.asv = load ptr, ptr %i.hd, align 8
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8
  %.not3434 = icmp eq ptr %i.asx, null
  br i1 %.not3434, label %bb.w, label %.critedge.i.i, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asp, i64 64
  %i.asz = load ptr, ptr %i.asy, align 16
  %.not3435 = icmp eq ptr %i.asz, null
  br i1 %.not3435, label %bb.ah, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ata = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.atb = shufflevector <4 x float> %i.ask, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atc = shufflevector <4 x float> %i.ask, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.atd = shufflevector <4 x float> %i.ask, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.atb, ptr %7, align 16
  store <4 x float> %i.atc, ptr %i.hf, align 16
  store <4 x float> %i.atd, ptr %i.hg, align 16
  store <4 x float> %i.arf, ptr %i.hh, align 16
  store <4 x float> %i.aqo, ptr %i.hi, align 16
  store <4 x i32> %i.wa, ptr %i.hj, align 16
  store <4 x i32> %i.vy, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.ate = load i32, ptr %i.ata, align 4
  %i.atf = insertelement <4 x i32> poison, i32 %i.ate, i64 0
  %i.atg = shufflevector <4 x i32> %i.atf, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atg, ptr %.ptr12.i.i.i, align 16
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  %i.ati = load i32, ptr %i.ath, align 4
  %i.atj = insertelement <4 x i32> poison, i32 %i.ati, i64 0
  %i.atk = shufflevector <4 x i32> %i.atj, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atk, ptr %.ptr17.i.i.i, align 16
  store float %i.aqk, ptr %i.gb, align 4
  %i.atl = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !8200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !8200
  store <2 x i64> %i.atl, ptr %6, align 16, !noalias !8200
  store ptr %6, ptr %5, align 8, !noalias !8200
  %i.atm = getelementptr inbounds nuw i8, ptr %i.asp, i64 24
  %i.atn = load ptr, ptr %i.atm, align 8, !noalias !8200
  store ptr %i.atn, ptr %i.hp, align 8, !noalias !8200
  %i.ato = load ptr, ptr %i.he, align 8, !noalias !8200
  store ptr %i.ato, ptr %i.hq, align 8, !noalias !8200
  store ptr %1, ptr %i.hr, align 8, !noalias !8200
  store ptr %7, ptr %i.hs, align 8, !noalias !8200
  store i32 4, ptr %i.ht, align 8, !noalias !8200
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asp, i64 64
  %i.atq = load ptr, ptr %i.atp, align 16, !noalias !8201 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.atq, null
  %i.atr = bitcast <2 x i64> %i.atl to <4 x i32>
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  call void %i.atq(ptr noundef nonnull %5), !noalias !8201, !inline_history !8122
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !8202
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i.i
  %i.ats = phi <4 x i32> [ %.pre, %bb.x ], [ %i.atr, %.critedge.i.i ] ; 3 uses
  %i.att = icmp ne <4 x i32> %i.ats, zeroinitializer ; 2 uses
  %i.atu = bitcast <4 x i1> %i.att to i4
  %i.atv = icmp eq i4 %i.atu, 0
  br i1 %i.atv, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.atw = load ptr, ptr %i.hd, align 8           ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 16
  %i.aty = load ptr, ptr %i.atx, align 8          ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.aty, null
  br i1 %.not13.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.atz = load i32, ptr %i.atw, align 8
  %i.aua = and i32 %i.atz, 2
  %.not3436 = icmp eq i32 %i.aua, 0
  br i1 %.not3436, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aub = getelementptr inbounds nuw i8, ptr %i.asp, i64 60
  %i.auc = load i32, ptr %i.aub, align 4, !noalias !8201
  %i.aud = and i32 %i.auc, 4194304
  %.not3437 = icmp eq i32 %i.aud, 0
  br i1 %.not3437, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void %i.aty(ptr noundef nonnull %5), !inline_history !8122
  %.pre3489 = load <4 x i32>, ptr %6, align 16, !noalias !8203
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %i.aue = phi <4 x i32> [ %.pre3489, %bb.ac ], [ %i.ats, %bb.ab ], [ %i.ats, %bb.z ]
  %i.auf = icmp ne <4 x i32> %i.aue, zeroinitializer ; 12 uses
  %i.aug = bitcast <4 x i1> %i.auf to i4
  %i.auh = icmp eq i4 %i.aug, 0
  br i1 %i.auh, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aui = load ptr, ptr %i.hr, align 8, !noalias !8201 ; 9 uses
  %i.auj = load ptr, ptr %i.hs, align 8, !noalias !8201 ; 9 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 192 ; 2 uses
  %i.aul = load <4 x i32>, ptr %i.auk, align 1, !noalias !8204
  %i.aum = load <4 x i32>, ptr %i.auj, align 16, !noalias !8205
  %i.aun = select <4 x i1> %i.auf, <4 x i32> %i.aum, <4 x i32> %i.aul
  store <4 x i32> %i.aun, ptr %i.auk, align 1
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aui, i64 208 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.auq = load <4 x i32>, ptr %i.auo, align 1, !noalias !8206
  %i.aur = load <4 x i32>, ptr %i.aup, align 16, !noalias !8207
  %i.aus = select <4 x i1> %i.auf, <4 x i32> %i.aur, <4 x i32> %i.auq
end_hunk_10
begin_hunk_11_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE11occluded_hnINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EEENS0_17Occluded1KEpilog1ILi4ELb1EEEEEbRNS0_21CurvePrecalculationsKILi4EEERNS_4RayKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aiu = fmul <2 x float> %i.ait, %i.ain        ; 4 uses
  %i.aiv = fmul <2 x float> %i.ait, %i.aio        ; 4 uses
  %i.aiw = fcmp olt <2 x float> %i.aiu, %i.aiv    ; 3 uses
  %i.aix = extractelement <2 x i1> %i.aiw, i64 0
  %i.aiy = extractelement <2 x float> %i.aiu, i64 0
  %i.aiz = extractelement <2 x float> %i.aiv, i64 0
  %i.aja = select i1 %i.aix, float %i.aiz, float %i.aiy ; 2 uses
  %i.ajb = shufflevector <4 x float> %i.ais, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ajc = fmul <2 x float> %i.ajb, %i.ain        ; 4 uses
  %i.ajd = fmul <2 x float> %i.ajb, %i.aio        ; 4 uses
  %i.aje = fcmp olt <2 x float> %i.ajc, %i.ajd    ; 3 uses
  %i.ajf = extractelement <2 x i1> %i.aje, i64 0
  %i.ajg = extractelement <2 x float> %i.ajc, i64 0
  %i.ajh = extractelement <2 x float> %i.ajd, i64 0
  %i.aji = select i1 %i.ajf, float %i.ajh, float %i.ajg ; 2 uses
  %i.ajj = fcmp olt float %i.aja, %i.aji
  %i.ajk = select i1 %i.ajj, float %i.aji, float %i.aja
  %i.ajl = select <2 x i1> %i.aiw, <2 x float> %i.aiu, <2 x float> %i.aiv ; 2 uses
  %i.ajm = select <2 x i1> %i.aje, <2 x float> %i.ajc, <2 x float> %i.ajd ; 2 uses
  %i.ajn = fcmp olt <2 x float> %i.ajl, %i.ajm
  %i.ajo = select <2 x i1> %i.ajn, <2 x float> %i.ajl, <2 x float> %i.ajm
  %i.ajp = shufflevector <4 x float> %i.ais, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ajq = fmul <2 x float> %i.ajp, %i.aip        ; 4 uses
  %i.ajr = fmul <2 x float> %i.ajp, %i.aiq        ; 4 uses
  %i.ajs = fcmp olt <2 x float> %i.ajq, %i.ajr    ; 3 uses
  %i.ajt = extractelement <2 x i1> %i.ajs, i64 0
  %i.aju = extractelement <2 x float> %i.ajq, i64 0
  %i.ajv = extractelement <2 x float> %i.ajr, i64 0
  %i.ajw = select i1 %i.ajt, float %i.ajv, float %i.aju ; 2 uses
  %i.ajx = shufflevector <4 x float> %i.ais, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajy = fmul <2 x float> %i.ajx, %i.aip        ; 4 uses
  %i.ajz = fmul <2 x float> %i.ajx, %i.aiq        ; 4 uses
  %i.aka = fcmp olt <2 x float> %i.ajy, %i.ajz    ; 3 uses
  %i.akb = extractelement <2 x i1> %i.aka, i64 0
  %i.akc = extractelement <2 x float> %i.ajy, i64 0
  %i.akd = extractelement <2 x float> %i.ajz, i64 0
  %i.ake = select i1 %i.akb, float %i.akd, float %i.akc ; 2 uses
  %i.akf = fcmp olt float %i.ajw, %i.ake
  %i.akg = select i1 %i.akf, float %i.ake, float %i.ajw
  %i.akh = select <2 x i1> %i.ajs, <2 x float> %i.ajq, <2 x float> %i.ajr ; 2 uses
  %i.aki = select <2 x i1> %i.aka, <2 x float> %i.ajy, <2 x float> %i.ajz ; 2 uses
  %i.akj = fcmp olt <2 x float> %i.akh, %i.aki
  %i.akk = select <2 x i1> %i.akj, <2 x float> %i.akh, <2 x float> %i.aki
  %i.akl = shufflevector <2 x i1> %i.aiw, <2 x i1> %i.ajs, <2 x i32> <i32 1, i32 3>
  %i.akm = shufflevector <2 x float> %i.aiv, <2 x float> %i.ajr, <2 x i32> <i32 1, i32 3>
  %i.akn = shufflevector <2 x float> %i.aiu, <2 x float> %i.ajq, <2 x i32> <i32 1, i32 3>
  %i.ako = select <2 x i1> %i.akl, <2 x float> %i.akm, <2 x float> %i.akn ; 2 uses
  %i.akp = shufflevector <2 x i1> %i.aje, <2 x i1> %i.aka, <2 x i32> <i32 1, i32 3>
  %i.akq = shufflevector <2 x float> %i.ajd, <2 x float> %i.ajz, <2 x i32> <i32 1, i32 3>
  %i.akr = shufflevector <2 x float> %i.ajc, <2 x float> %i.ajy, <2 x i32> <i32 1, i32 3>
  %i.aks = select <2 x i1> %i.akp, <2 x float> %i.akq, <2 x float> %i.akr ; 2 uses
  %i.akt = fcmp olt <2 x float> %i.ako, %i.aks
  %i.aku = select <2 x i1> %i.akt, <2 x float> %i.aks, <2 x float> %i.ako ; 2 uses
  %i.akv = fadd float %i.ajk, %i.akg
  %i.akw = fadd <2 x float> %i.ajo, %i.akk
  %shift3514 = shufflevector <2 x float> %i.aku, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3515 = fadd <2 x float> %i.aku, %shift3514
  %i.akx = extractelement <2 x float> %foldExtExtBinop3515, i64 0
  %i.aky = fadd float %.sroa.02104.0.vec.extract, %i.akv ; 2 uses
  %i.akz = shufflevector <4 x float> %i.ahe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ala = fadd <2 x float> %i.akz, %i.akw        ; 3 uses
  %i.alb = fadd float %.sroa.02104.4.vec.extract, %i.akx ; 2 uses
  %i.alc = extractelement <2 x float> %i.ala, i64 0 ; 2 uses
  %i.ald = fcmp olt float %i.alc, %i.wh
  %i.ale = select i1 %i.ald, float %i.wh, float %i.alc
  %i.alf = fcmp olt float %i.aky, %i.wi           ; 2 uses
  %i.alg = select i1 %i.alf, float %i.aky, float %i.wi
  %i.alh = extractelement <2 x float> %i.ala, i64 1 ; 2 uses
  %i.ali = fcmp olt float %i.alh, %i.adq
  %i.alj = select i1 %i.ali, float %i.adq, float %i.alh
  %i.alk = fcmp olt float %i.alb, %i.adr          ; 2 uses
  %i.all = select i1 %i.alk, float %i.alb, float %i.adr
  %i.alm = fcmp ogt float %i.ale, %i.alg
  %i.aln = fcmp ogt float %i.alj, %i.all
  %or.cond = select i1 %i.alm, i1 true, i1 %i.aln, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.o
  %i.alo = shufflevector <2 x float> %i.wg, <2 x float> %i.adp, <2 x i32> <i32 0, i32 2>
  %i.alp = fcmp ogt <2 x float> %i.ala, %i.alo    ; 2 uses
  %i.alq = extractelement <2 x i1> %i.alp, i64 0
  %i.alr = and i1 %i.alq, %i.alf
  %i.als = extractelement <2 x i1> %i.alp, i64 1
  %i.alt = select i1 %i.alr, i1 %i.als, i1 false
  %i.alu = select i1 %i.alt, i1 %i.alk, i1 false
  %.demorgan.i = or i1 %i.wo, %i.alu
  br i1 %.demorgan.i, label %.critedge.i34, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.p:                                             ; preds = %.critedge.i34
  %i.alv = add nuw nsw i64 %.026.i3387, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.alv, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i34, !llvm.loop !8304

.critedge.i34:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.p
  %.026.i3387 = phi i64 [ %i.alv, %bb.p ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03032.03386 = phi <4 x float> [ %i.and, %bb.p ], [ %i.ahe, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03032.0.vec.extract = extractelement <4 x float> %.sroa.03032.03386, i64 0 ; 2 uses
  %i.alw = fsub float 1.000000e+00, %.sroa.03032.0.vec.extract ; 4 uses
  %i.alx = fmul float %i.alw, %i.alw              ; 2 uses
  %i.aly = fmul float %i.alw, %i.alx
  %i.alz = fmul float %.sroa.03032.0.vec.extract, 3.000000e+00
  %i.ama = fmul float %i.alz, %i.alx
  %foldExtExtBinop3517 = fmul <4 x float> %.sroa.03032.03386, %.sroa.03032.03386 ; 2 uses
  %i.amb = extractelement <4 x float> %foldExtExtBinop3517, i64 0
  %i.amc = fmul float %i.amb, 3.000000e+00
  %i.amd = fmul float %i.alw, %i.amc
  %foldExtExtBinop3519 = fmul <4 x float> %.sroa.03032.03386, %foldExtExtBinop3517
  %i.ame = insertelement <4 x float> poison, float %i.aly, i64 0
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amg = insertelement <4 x float> poison, float %i.ama, i64 0
  %i.amh = shufflevector <4 x float> %i.amg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ami = insertelement <4 x float> poison, float %i.amd, i64 0
  %i.amj = shufflevector <4 x float> %i.ami, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amk = shufflevector <4 x float> %foldExtExtBinop3519, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aml = fmul <4 x float> %i.tu, %i.amk
  %i.amm = fmul <4 x float> %i.tt, %i.amj
  %i.amn = fadd <4 x float> %i.aml, %i.amm
  %i.amo = fmul <4 x float> %i.ts, %i.amh
  %i.amp = fadd <4 x float> %i.amo, %i.amn
  %i.amq = fmul <4 x float> %i.tr, %i.amf
  %i.amr = fadd <4 x float> %i.amq, %i.amp        ; 2 uses
  %i.ams = shufflevector <4 x float> %i.amr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.amt = shufflevector <4 x float> %i.amr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.amu = shufflevector <4 x float> %.sroa.03032.03386, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.amv = fsub <4 x float> %i.amt, %i.ams
  %i.amw = fmul <4 x float> %i.amu, %i.amv
  %i.amx = fadd <4 x float> %i.ams, %i.amw        ; 3 uses
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amz = fmul <4 x float> %i.agx, %i.amy
  %i.ana = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anb = fmul <4 x float> %i.agy, %i.ana
  %i.anc = fadd <4 x float> %i.amz, %i.anb
  %i.and = fsub <4 x float> %.sroa.03032.03386, %i.anc ; 9 uses
  %i.ane = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.amx) ; 2 uses
  %i.anf = extractelement <4 x float> %i.ane, i64 0 ; 2 uses
  %i.ang = extractelement <4 x float> %i.ane, i64 1 ; 2 uses
  %i.anh = fcmp olt float %i.anf, %i.ang
  %i.ani = select i1 %i.anh, float %i.ang, float %i.anf
  %i.anj = fcmp uge float %i.ani, %i.uk
  br i1 %i.anj, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.critedge.i34
  %.sroa.03032.0.vec.extract3035 = extractelement <4 x float> %i.and, i64 0 ; 4 uses
  %.sroa.03032.4.vec.extract3037 = extractelement <4 x float> %i.and, i64 1 ; 3 uses
  %i.ank = fcmp oge float %.sroa.03032.0.vec.extract3035, 0.000000e+00
  %i.anl = fcmp ole float %.sroa.03032.0.vec.extract3035, 1.000000e+00
  %or.cond.i = and i1 %i.ank, %i.anl
  br i1 %or.cond.i, label %bb.r, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.r:                                             ; preds = %bb.q
  %i.anm = fcmp oge float %.sroa.03032.4.vec.extract3037, 0.000000e+00
  %i.ann = fcmp ole float %.sroa.03032.4.vec.extract3037, 1.000000e+00
  %or.cond4.i = and i1 %i.anm, %i.ann
  br i1 %or.cond4.i, label %bb.s, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.s:                                             ; preds = %bb.r
  %i.ano = load float, ptr %i.gy, align 8, !noalias !8354
  %i.anp = load float, ptr %i.gz, align 8, !noalias !8354
  %i.anq = load float, ptr %i.ha, align 8, !noalias !8354
  %i.anr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ano, i64 0
  %i.ans = insertelement <4 x float> %i.anr, float %i.anp, i64 1
  %i.ant = insertelement <4 x float> %i.ans, float %i.anq, i64 2 ; 8 uses
  %i.anu = fmul <4 x float> %i.qx, %i.ant         ; 3 uses
  %i.anv = fmul <4 x float> %i.rg, %i.ant         ; 3 uses
  %i.anw = fmul <4 x float> %i.rp, %i.ant         ; 3 uses
  %i.anx = fmul <4 x float> %i.ry, %i.ant         ; 3 uses
  %i.any = fmul <4 x float> %i.sh, %i.ant         ; 3 uses
  %i.anz = fmul <4 x float> %i.sq, %i.ant         ; 3 uses
  %i.aoa = fmul <4 x float> %i.sz, %i.ant         ; 3 uses
  %i.aob = fmul <4 x float> %i.ti, %i.ant         ; 3 uses
  %i.aoc = fsub float 1.000000e+00, %.sroa.03032.4.vec.extract3037
  %i.aod = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aoe = shufflevector <4 x float> %i.any, <4 x float> %i.anz, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aof = shufflevector <4 x float> %i.any, <4 x float> %i.anz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aog = shufflevector <4 x float> %i.any, <4 x float> %i.anz, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoh = shufflevector <4 x float> %i.aoe, <4 x float> %i.aoa, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aoi = shufflevector <4 x float> %i.aof, <4 x float> %i.aoa, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aoj = shufflevector <4 x float> %i.aog, <4 x float> %i.aoa, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aok = shufflevector <4 x float> %i.aoh, <4 x float> %i.aob, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aol = shufflevector <4 x float> %i.aoi, <4 x float> %i.aob, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aom = shufflevector <4 x float> %i.aoj, <4 x float> %i.aob, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aon = fadd <4 x float> %i.aol, %i.aom
  %i.aoo = fadd <4 x float> %i.aok, %i.aon
  %i.aop = fmul <4 x float> %i.aod, %i.aoo
  %i.aoq = insertelement <4 x float> poison, float %i.aoc, i64 0
  %i.aor = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aos = shufflevector <4 x float> %i.anu, <4 x float> %i.anv, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aot = shufflevector <4 x float> %i.anu, <4 x float> %i.anv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aou = shufflevector <4 x float> %i.anu, <4 x float> %i.anv, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aov = shufflevector <4 x float> %i.aos, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aow = shufflevector <4 x float> %i.aot, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aox = shufflevector <4 x float> %i.aou, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aoy = shufflevector <4 x float> %i.aov, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aoz = shufflevector <4 x float> %i.aow, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apa = shufflevector <4 x float> %i.aox, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apb = fadd <4 x float> %i.aoz, %i.apa
  %i.apc = fadd <4 x float> %i.aoy, %i.apb
  %i.apd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> %i.apc, <4 x float> %i.aop) ; 4 uses
  %i.ape = fsub float 1.000000e+00, %.sroa.03032.0.vec.extract3035 ; 5 uses
  %i.apf = fmul nnan float %i.ape, %i.ape         ; 2 uses
  %i.apg = fmul float %i.ape, %i.apf              ; 2 uses
  %i.aph = fmul nnan float %.sroa.03032.0.vec.extract3035, 3.000000e+00
  %i.api = fmul float %i.aph, %i.apf              ; 2 uses
  %foldExtExtBinop3521 = fmul nnan <4 x float> %i.and, %i.and ; 2 uses
  %i.apj = extractelement <4 x float> %foldExtExtBinop3521, i64 0
  %i.apk = fmul nnan float %i.apj, 3.000000e+00
  %i.apl = fmul float %i.ape, %i.apk              ; 2 uses
  %foldExtExtBinop3523 = fmul <4 x float> %i.and, %foldExtExtBinop3521 ; 2 uses
  %shift3525 = shufflevector <4 x float> %i.apd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3526 = fmul <4 x float> %foldExtExtBinop3523, %shift3525
  %i.apm = extractelement <4 x float> %foldExtExtBinop3526, i64 0
  %i.apn = extractelement <4 x float> %i.apd, i64 2
  %i.apo = call noundef float @llvm.fmuladd.f32(float %i.apl, float %i.apn, float %i.apm)
  %i.app = extractelement <4 x float> %i.apd, i64 1
  %i.apq = call noundef float @llvm.fmuladd.f32(float %i.api, float %i.app, float %i.apo)
  %i.apr = extractelement <4 x float> %i.apd, i64 0
  %i.aps = call noundef float @llvm.fmuladd.f32(float %i.apg, float %i.apr, float %i.apq) ; 3 uses
  %i.apt = fcmp ugt float %i.kg, %i.aps
  br i1 %i.apt, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.apu = load float, ptr %i.gb, align 4         ; 2 uses
  %i.apv = fcmp ugt float %i.aps, %i.apu
  br i1 %i.apv, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.apw = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.apx = fsub <4 x float> splat (float 1.000000e+00), %i.apw ; 4 uses
  %i.apy = fmul <4 x float> %i.qd, %i.apw
  %i.apz = fmul <4 x float> %i.qu, %i.apw
  %i.aqa = fmul <4 x float> %i.qw, %i.apw
  %i.aqb = fmul <4 x float> %i.qn, %i.apw
  %i.aqc = fmul <4 x float> %i.px, %i.apx
  %i.aqd = fadd <4 x float> %i.apy, %i.aqc
  %i.aqe = fmul <4 x float> %i.qq, %i.apx
  %i.aqf = fadd <4 x float> %i.apz, %i.aqe        ; 2 uses
  %i.aqg = fmul <4 x float> %i.qs, %i.apx
  %i.aqh = fadd <4 x float> %i.aqa, %i.aqg        ; 2 uses
  %i.aqi = fmul <4 x float> %i.qh, %i.apx
  %i.aqj = fadd <4 x float> %i.aqb, %i.aqi
  %i.aqk = fsub <4 x float> %i.aqf, %i.aqd
  %i.aql = fsub <4 x float> %i.aqh, %i.aqf        ; 2 uses
  %i.aqm = fsub <4 x float> %i.aqj, %i.aqh
  %i.aqn = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqo = fmul <4 x float> %i.aqn, %i.aql
  %i.aqp = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.aqq = shufflevector <4 x float> %i.aqp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqr = fmul <4 x float> %i.aqq, %i.aqk
  %i.aqs = fadd <4 x float> %i.aqr, %i.aqo
  %i.aqt = fmul <4 x float> %i.aqn, %i.aqm
  %i.aqu = fmul <4 x float> %i.aqq, %i.aql
  %i.aqv = fadd <4 x float> %i.aqu, %i.aqt
  %i.aqw = fmul <4 x float> %i.aqn, %i.aqv
  %i.aqx = fmul <4 x float> %i.aqq, %i.aqs
  %i.aqy = fadd <4 x float> %i.aqx, %i.aqw
  %i.aqz = fmul <4 x float> %i.aqy, splat (float 3.000000e+00) ; 2 uses
  %i.ara = shufflevector <4 x float> %foldExtExtBinop3523, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arb = fmul <4 x float> %i.ve, %i.ara
  %i.arc = insertelement <4 x float> poison, float %i.apl, i64 0
  %i.ard = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.are = fmul <4 x float> %i.vd, %i.ard
  %i.arf = fadd <4 x float> %i.arb, %i.are
  %i.arg = insertelement <4 x float> poison, float %i.api, i64 0
  %i.arh = shufflevector <4 x float> %i.arg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ari = fmul <4 x float> %i.vc, %i.arh
  %i.arj = fadd <4 x float> %i.ari, %i.arf
  %i.ark = insertelement <4 x float> poison, float %i.apg, i64 0
  %i.arl = shufflevector <4 x float> %i.ark, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arm = fmul <4 x float> %i.vb, %i.arl
  %i.arn = fadd <4 x float> %i.arm, %i.arj        ; 2 uses
  %i.aro = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.arp = shufflevector <4 x float> %i.aqz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.arq = fmul <4 x float> %i.arn, %i.arp
  %i.arr = fmul <4 x float> %i.aqz, %i.aro
  %i.ars = fsub <4 x float> %i.arr, %i.arq        ; 3 uses
  %i.art = load ptr, ptr %3, align 8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 488
  %i.arv = load ptr, ptr %i.aru, align 8
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %i.ia
  %i.arx = load ptr, ptr %i.arw, align 8          ; 5 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 52
  %i.arz = load i32, ptr %i.ary, align 4
  %i.asa = load i32, ptr %i.hc, align 4
  %i.asb = and i32 %i.asa, %i.arz
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.asd = load ptr, ptr %i.hd, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  %i.asf = load ptr, ptr %i.ase, align 8
  %.not3378 = icmp eq ptr %i.asf, null
  br i1 %.not3378, label %bb.w, label %.critedge.i.i, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arx, i64 72
  %i.ash = load ptr, ptr %i.asg, align 8
  %.not3379 = icmp eq ptr %i.ash, null
  br i1 %.not3379, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_13HermiteCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.asi = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.asj = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ask = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.asl = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.asj, ptr %7, align 16
  store <4 x float> %i.ask, ptr %i.hf, align 16
  store <4 x float> %i.asl, ptr %i.hg, align 16
  store <4 x float> %i.aqn, ptr %i.hh, align 16
  store <4 x float> %i.apw, ptr %i.hi, align 16
  store <4 x i32> %i.vi, ptr %i.hj, align 16
  store <4 x i32> %i.vg, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.asm = load i32, ptr %i.asi, align 4
  %i.asn = insertelement <4 x i32> poison, i32 %i.asm, i64 0
  %i.aso = shufflevector <4 x i32> %i.asn, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aso, ptr %.ptr12.i.i.i, align 16
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asi, i64 4
  %i.asq = load i32, ptr %i.asp, align 4
  %i.asr = insertelement <4 x i32> poison, i32 %i.asq, i64 0
  %i.ass = shufflevector <4 x i32> %i.asr, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ass, ptr %.ptr17.i.i.i, align 16
  store float %i.aps, ptr %i.gb, align 4
  %i.ast = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !8355
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !8355
  store <2 x i64> %i.ast, ptr %6, align 16, !noalias !8355
  store ptr %6, ptr %5, align 8, !noalias !8355
  %i.asu = getelementptr inbounds nuw i8, ptr %i.arx, i64 24
  %i.asv = load ptr, ptr %i.asu, align 8, !noalias !8355
  store ptr %i.asv, ptr %i.hp, align 8, !noalias !8355
  %i.asw = load ptr, ptr %i.he, align 8, !noalias !8355
  store ptr %i.asw, ptr %i.hq, align 8, !noalias !8355
  store ptr %1, ptr %i.hr, align 8, !noalias !8355
  store ptr %7, ptr %i.hs, align 8, !noalias !8355
  store i32 4, ptr %i.ht, align 8, !noalias !8355
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arx, i64 72
  %i.asy = load ptr, ptr %i.asx, align 8, !noalias !8356 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.asy, null
  %i.asz = bitcast <2 x i64> %i.ast to <4 x i32>
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  call void %i.asy(ptr noundef nonnull %5), !noalias !8356, !inline_history !8311
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !8357
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i.i
  %i.ata = phi <4 x i32> [ %.pre, %bb.x ], [ %i.asz, %.critedge.i.i ] ; 3 uses
  %i.atb = icmp ne <4 x i32> %i.ata, zeroinitializer ; 2 uses
  %i.atc = bitcast <4 x i1> %i.atb to i4
  %i.atd = icmp eq i4 %i.atc, 0
  br i1 %i.atd, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ate = load ptr, ptr %i.hd, align 8, !noalias !8356 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 16
  %i.atg = load ptr, ptr %i.atf, align 8, !noalias !8356 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.atg, null
  br i1 %.not14.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ath = load i32, ptr %i.ate, align 8, !noalias !8356
  %i.ati = and i32 %i.ath, 2
  %.not3380 = icmp eq i32 %i.ati, 0
  br i1 %.not3380, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.atj = getelementptr inbounds nuw i8, ptr %i.arx, i64 60
  %i.atk = load i32, ptr %i.atj, align 4, !noalias !8356
  %i.atl = and i32 %i.atk, 4194304
  %.not3381 = icmp eq i32 %i.atl, 0
  br i1 %.not3381, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void %i.atg(ptr noundef nonnull %5), !noalias !8356, !inline_history !8311
  %.pre3438 = load <4 x i32>, ptr %6, align 16, !noalias !8358
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %i.atm = phi <4 x i32> [ %.pre3438, %bb.ac ], [ %i.ata, %bb.ab ], [ %i.ata, %bb.z ]
  %i.atn = icmp ne <4 x i32> %i.atm, zeroinitializer ; 2 uses
  %i.ato = load ptr, ptr %i.hr, align 8, !noalias !8356
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 128 ; 2 uses
  %i.atq = load <4 x float>, ptr %i.atp, align 16, !noalias !8359
  %i.atr = select <4 x i1> %i.atn, <4 x float> splat (float -inf), <4 x float> %i.atq
  store <4 x float> %i.atr, ptr %i.atp, align 16, !noalias !8356
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ad, %bb.y
  %.sroa.03049.0.in.in = phi <4 x i1> [ %i.atb, %bb.y ], [ %i.atn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !8355
  %i.ats = bitcast <4 x i1> %.sroa.03049.0.in.in to i4
  %i.att = icmp ne i4 %i.ats, 0                   ; 2 uses
  br i1 %i.att, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  store float %i.apu, ptr %i.gb, align 4
end_hunk_11
begin_hunk_12_@_ZN6embree4sse219CurveNiIntersector1ILi4EE11intersect_nINS0_26OrientedCurve1Intersector1INS_16CatmullRomCurveTELi3ELi4EEENS0_17Intersect1Epilog1ILb1EEEEEvRKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aip = fmul <2 x float> %i.aio, %i.aia        ; 4 uses
  %i.aiq = fmul <2 x float> %i.aio, %i.aib        ; 4 uses
  %i.air = fcmp olt <2 x float> %i.aip, %i.aiq    ; 3 uses
  %i.ais = extractelement <2 x i1> %i.air, i64 0
  %i.ait = extractelement <2 x float> %i.aip, i64 0
  %i.aiu = extractelement <2 x float> %i.aiq, i64 0
  %i.aiv = select i1 %i.ais, float %i.aiu, float %i.ait ; 2 uses
  %i.aiw = fcmp olt float %i.ain, %i.aiv
  %i.aix = select i1 %i.aiw, float %i.aiv, float %i.ain
  %i.aiy = select <2 x i1> %i.aij, <2 x float> %i.aih, <2 x float> %i.aii ; 2 uses
  %i.aiz = select <2 x i1> %i.air, <2 x float> %i.aip, <2 x float> %i.aiq ; 2 uses
  %i.aja = fcmp olt <2 x float> %i.aiy, %i.aiz
  %i.ajb = select <2 x i1> %i.aja, <2 x float> %i.aiy, <2 x float> %i.aiz
  %i.ajc = shufflevector <4 x float> %i.aif, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ajd = fmul <2 x float> %i.ajc, %i.aic        ; 4 uses
  %i.aje = fmul <2 x float> %i.ajc, %i.aid        ; 4 uses
  %i.ajf = fcmp olt <2 x float> %i.ajd, %i.aje    ; 3 uses
  %i.ajg = extractelement <2 x i1> %i.ajf, i64 0
  %i.ajh = extractelement <2 x float> %i.ajd, i64 0
  %i.aji = extractelement <2 x float> %i.aje, i64 0
  %i.ajj = select i1 %i.ajg, float %i.aji, float %i.ajh ; 2 uses
  %i.ajk = shufflevector <4 x float> %i.aif, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajl = fmul <2 x float> %i.ajk, %i.aic        ; 4 uses
  %i.ajm = fmul <2 x float> %i.ajk, %i.aid        ; 4 uses
  %i.ajn = fcmp olt <2 x float> %i.ajl, %i.ajm    ; 3 uses
  %i.ajo = extractelement <2 x i1> %i.ajn, i64 0
  %i.ajp = extractelement <2 x float> %i.ajl, i64 0
  %i.ajq = extractelement <2 x float> %i.ajm, i64 0
  %i.ajr = select i1 %i.ajo, float %i.ajq, float %i.ajp ; 2 uses
  %i.ajs = fcmp olt float %i.ajj, %i.ajr
  %i.ajt = select i1 %i.ajs, float %i.ajr, float %i.ajj
  %i.aju = select <2 x i1> %i.ajf, <2 x float> %i.ajd, <2 x float> %i.aje ; 2 uses
  %i.ajv = select <2 x i1> %i.ajn, <2 x float> %i.ajl, <2 x float> %i.ajm ; 2 uses
  %i.ajw = fcmp olt <2 x float> %i.aju, %i.ajv
  %i.ajx = select <2 x i1> %i.ajw, <2 x float> %i.aju, <2 x float> %i.ajv
  %i.ajy = shufflevector <2 x i1> %i.aij, <2 x i1> %i.ajf, <2 x i32> <i32 1, i32 3>
  %i.ajz = shufflevector <2 x float> %i.aii, <2 x float> %i.aje, <2 x i32> <i32 1, i32 3>
  %i.aka = shufflevector <2 x float> %i.aih, <2 x float> %i.ajd, <2 x i32> <i32 1, i32 3>
  %i.akb = select <2 x i1> %i.ajy, <2 x float> %i.ajz, <2 x float> %i.aka ; 2 uses
  %i.akc = shufflevector <2 x i1> %i.air, <2 x i1> %i.ajn, <2 x i32> <i32 1, i32 3>
  %i.akd = shufflevector <2 x float> %i.aiq, <2 x float> %i.ajm, <2 x i32> <i32 1, i32 3>
  %i.ake = shufflevector <2 x float> %i.aip, <2 x float> %i.ajl, <2 x i32> <i32 1, i32 3>
  %i.akf = select <2 x i1> %i.akc, <2 x float> %i.akd, <2 x float> %i.ake ; 2 uses
  %i.akg = fcmp olt <2 x float> %i.akb, %i.akf
  %i.akh = select <2 x i1> %i.akg, <2 x float> %i.akf, <2 x float> %i.akb ; 2 uses
  %i.aki = fadd float %i.aix, %i.ajt
  %i.akj = fadd <2 x float> %i.ajb, %i.ajx
  %shift3514 = shufflevector <2 x float> %i.akh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3515 = fadd <2 x float> %i.akh, %shift3514
  %i.akk = extractelement <2 x float> %foldExtExtBinop3515, i64 0
  %i.akl = fadd float %.sroa.0980.0.vec.extract, %i.aki ; 2 uses
  %i.akm = shufflevector <4 x float> %i.agr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.akn = fadd <2 x float> %i.akm, %i.akj        ; 3 uses
  %i.ako = fadd float %.sroa.0980.4.vec.extract, %i.akk ; 2 uses
  %i.akp = extractelement <2 x float> %i.akn, i64 0 ; 2 uses
  %i.akq = fcmp olt float %i.akp, %i.vu
  %i.akr = select i1 %i.akq, float %i.vu, float %i.akp
  %i.aks = fcmp olt float %i.akl, %i.vv           ; 2 uses
  %i.akt = select i1 %i.aks, float %i.akl, float %i.vv
  %i.aku = extractelement <2 x float> %i.akn, i64 1 ; 2 uses
  %i.akv = fcmp olt float %i.aku, %i.add
  %i.akw = select i1 %i.akv, float %i.add, float %i.aku
  %i.akx = fcmp olt float %i.ako, %i.ade          ; 2 uses
  %i.aky = select i1 %i.akx, float %i.ako, float %i.ade
  %i.akz = fcmp ogt float %i.akr, %i.akt
  %i.ala = fcmp ogt float %i.akw, %i.aky
  %or.cond = select i1 %i.akz, i1 true, i1 %i.ala, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.alb = shufflevector <2 x float> %i.vt, <2 x float> %i.adc, <2 x i32> <i32 0, i32 2>
  %i.alc = fcmp ogt <2 x float> %i.akn, %i.alb    ; 2 uses
  %i.ald = extractelement <2 x i1> %i.alc, i64 0
  %i.ale = and i1 %i.ald, %i.aks
  %i.alf = extractelement <2 x i1> %i.alc, i64 1
  %i.alg = select i1 %i.ale, i1 %i.alf, i1 false
  %i.alh = select i1 %i.alg, i1 %i.akx, i1 false
  %.demorgan.i.i = or i1 %i.wb, %i.alh
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i19.i
  %i.ali = add nuw nsw i64 %.026.i.i3396, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ali, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !4

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i.i3396 = phi i64 [ %i.ali, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.01640.03395 = phi <4 x float> [ %i.amq, %bb.s ], [ %i.agr, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.01640.0.vec.extract = extractelement <4 x float> %.sroa.01640.03395, i64 0 ; 2 uses
  %i.alj = fsub float 1.000000e+00, %.sroa.01640.0.vec.extract ; 4 uses
  %i.alk = fmul float %i.alj, %i.alj              ; 2 uses
  %i.all = fmul float %i.alj, %i.alk
  %i.alm = fmul float %.sroa.01640.0.vec.extract, 3.000000e+00
  %i.aln = fmul float %i.alm, %i.alk
  %foldExtExtBinop3517 = fmul <4 x float> %.sroa.01640.03395, %.sroa.01640.03395 ; 2 uses
  %i.alo = extractelement <4 x float> %foldExtExtBinop3517, i64 0
  %i.alp = fmul float %i.alo, 3.000000e+00
  %i.alq = fmul float %i.alj, %i.alp
  %foldExtExtBinop3519 = fmul <4 x float> %.sroa.01640.03395, %foldExtExtBinop3517
  %i.alr = insertelement <4 x float> poison, float %i.all, i64 0
  %i.als = shufflevector <4 x float> %i.alr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alt = insertelement <4 x float> poison, float %i.aln, i64 0
  %i.alu = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alv = insertelement <4 x float> poison, float %i.alq, i64 0
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alx = shufflevector <4 x float> %foldExtExtBinop3519, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aly = fmul <4 x float> %i.th, %i.alx
  %i.alz = fmul <4 x float> %i.tg, %i.alw
  %i.ama = fadd <4 x float> %i.aly, %i.alz
  %i.amb = fmul <4 x float> %i.tf, %i.alu
  %i.amc = fadd <4 x float> %i.amb, %i.ama
  %i.amd = fmul <4 x float> %i.te, %i.als
  %i.ame = fadd <4 x float> %i.amd, %i.amc        ; 2 uses
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.amg = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.amh = shufflevector <4 x float> %.sroa.01640.03395, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ami = fsub <4 x float> %i.amg, %i.amf
  %i.amj = fmul <4 x float> %i.amh, %i.ami
  %i.amk = fadd <4 x float> %i.amf, %i.amj        ; 3 uses
  %i.aml = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amm = fmul <4 x float> %i.agk, %i.aml
  %i.amn = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.amo = fmul <4 x float> %i.agl, %i.amn
  %i.amp = fadd <4 x float> %i.amm, %i.amo
  %i.amq = fsub <4 x float> %.sroa.01640.03395, %i.amp ; 10 uses
  %i.amr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.amk) ; 2 uses
  %i.ams = extractelement <4 x float> %i.amr, i64 0 ; 2 uses
  %i.amt = extractelement <4 x float> %i.amr, i64 1 ; 2 uses
  %i.amu = fcmp olt float %i.ams, %i.amt
  %i.amv = select i1 %i.amu, float %i.amt, float %i.ams
  %i.amw = fcmp uge float %i.amv, %i.tx
  br i1 %i.amw, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i19.i
  %.sroa.01640.0.vec.extract1643 = extractelement <4 x float> %i.amq, i64 0 ; 5 uses
  %.sroa.01640.4.vec.extract1645 = extractelement <4 x float> %i.amq, i64 1 ; 5 uses
  %i.amx = fcmp oge float %.sroa.01640.0.vec.extract1643, 0.000000e+00
  %i.amy = fcmp ole float %.sroa.01640.0.vec.extract1643, 1.000000e+00
  %or.cond.i.i = and i1 %i.amx, %i.amy
  br i1 %or.cond.i.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.amz = fcmp oge float %.sroa.01640.4.vec.extract1645, 0.000000e+00
  %i.ana = fcmp ole float %.sroa.01640.4.vec.extract1645, 1.000000e+00
  %or.cond4.i.i = and i1 %i.amz, %i.ana
  br i1 %or.cond4.i.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.anb = load float, ptr %i.ga, align 8, !noalias !10060
  %i.anc = load float, ptr %i.gb, align 8, !noalias !10060
  %i.and = load float, ptr %i.gc, align 8, !noalias !10060
  %i.ane = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.anb, i64 0
  %i.anf = insertelement <4 x float> %i.ane, float %i.anc, i64 1
  %i.ang = insertelement <4 x float> %i.anf, float %i.and, i64 2 ; 8 uses
  %i.anh = load <4 x float>, ptr %1, align 16, !noalias !10061 ; 9 uses
  %i.ani = fsub <4 x float> %i.pk, %i.anh
  %i.anj = fmul <4 x float> %i.ang, %i.ani        ; 3 uses
  %i.ank = fsub <4 x float> %i.qd, %i.anh
  %i.anl = fmul <4 x float> %i.ang, %i.ank        ; 3 uses
  %i.anm = fsub <4 x float> %i.qf, %i.anh
  %i.ann = fmul <4 x float> %i.ang, %i.anm        ; 3 uses
  %i.ano = fsub <4 x float> %i.pu, %i.anh
  %i.anp = fmul <4 x float> %i.ang, %i.ano        ; 3 uses
  %i.anq = fsub <4 x float> %i.pq, %i.anh
  %i.anr = fmul <4 x float> %i.ang, %i.anq        ; 3 uses
  %i.ans = fsub <4 x float> %i.qh, %i.anh
  %i.ant = fmul <4 x float> %i.ang, %i.ans        ; 3 uses
  %i.anu = fsub <4 x float> %i.qj, %i.anh
  %i.anv = fmul <4 x float> %i.ang, %i.anu        ; 3 uses
  %i.anw = fsub <4 x float> %i.qa, %i.anh
  %i.anx = fmul <4 x float> %i.ang, %i.anw        ; 3 uses
  %i.any = fsub float 1.000000e+00, %.sroa.01640.4.vec.extract1645
  %i.anz = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aoa = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aob = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoc = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aod = shufflevector <4 x float> %i.aoa, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aoe = shufflevector <4 x float> %i.aob, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aof = shufflevector <4 x float> %i.aoc, <4 x float> %i.anv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aog = shufflevector <4 x float> %i.aod, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aoh = shufflevector <4 x float> %i.aoe, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoi = shufflevector <4 x float> %i.aof, <4 x float> %i.anx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoj = fadd <4 x float> %i.aoh, %i.aoi
  %i.aok = fadd <4 x float> %i.aog, %i.aoj
  %i.aol = fmul <4 x float> %i.anz, %i.aok
  %i.aom = insertelement <4 x float> poison, float %i.any, i64 0
  %i.aon = shufflevector <4 x float> %i.aom, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoo = shufflevector <4 x float> %i.anj, <4 x float> %i.anl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aop = shufflevector <4 x float> %i.anj, <4 x float> %i.anl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoq = shufflevector <4 x float> %i.anj, <4 x float> %i.anl, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aor = shufflevector <4 x float> %i.aoo, <4 x float> %i.ann, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aos = shufflevector <4 x float> %i.aop, <4 x float> %i.ann, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aot = shufflevector <4 x float> %i.aoq, <4 x float> %i.ann, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aou = shufflevector <4 x float> %i.aor, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aov = shufflevector <4 x float> %i.aos, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aow = shufflevector <4 x float> %i.aot, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aox = fadd <4 x float> %i.aov, %i.aow
  %i.aoy = fadd <4 x float> %i.aou, %i.aox
  %i.aoz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aon, <4 x float> %i.aoy, <4 x float> %i.aol) ; 4 uses
  %i.apa = fsub float 1.000000e+00, %.sroa.01640.0.vec.extract1643 ; 5 uses
  %i.apb = fmul nnan float %i.apa, %i.apa         ; 2 uses
  %i.apc = fmul float %i.apa, %i.apb              ; 2 uses
  %i.apd = fmul nnan float %.sroa.01640.0.vec.extract1643, 3.000000e+00
  %i.ape = fmul float %i.apd, %i.apb              ; 2 uses
  %foldExtExtBinop3521 = fmul nnan <4 x float> %i.amq, %i.amq ; 2 uses
  %i.apf = extractelement <4 x float> %foldExtExtBinop3521, i64 0
  %i.apg = fmul nnan float %i.apf, 3.000000e+00
  %i.aph = fmul float %i.apa, %i.apg              ; 2 uses
  %foldExtExtBinop3523 = fmul <4 x float> %i.amq, %foldExtExtBinop3521 ; 2 uses
  %shift3525 = shufflevector <4 x float> %i.aoz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3526 = fmul <4 x float> %foldExtExtBinop3523, %shift3525
  %i.api = extractelement <4 x float> %foldExtExtBinop3526, i64 0
  %i.apj = extractelement <4 x float> %i.aoz, i64 2
  %i.apk = call noundef float @llvm.fmuladd.f32(float %i.aph, float %i.apj, float %i.api)
  %i.apl = extractelement <4 x float> %i.aoz, i64 1
  %i.apm = call noundef float @llvm.fmuladd.f32(float %i.ape, float %i.apl, float %i.apk)
  %i.apn = extractelement <4 x float> %i.aoz, i64 0
  %i.apo = call noundef float @llvm.fmuladd.f32(float %i.apc, float %i.apn, float %i.apm) ; 4 uses
  %i.app = extractelement <4 x float> %i.anh, i64 3
  %i.apq = fcmp ugt float %i.app, %i.apo
  br i1 %i.apq, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.apr = load float, ptr %i.ff, align 16        ; 2 uses
  %i.aps = fcmp ugt float %i.apo, %i.apr
  br i1 %i.aps, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.apt = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apu = fsub <4 x float> splat (float 1.000000e+00), %i.apt ; 4 uses
  %i.apv = fmul <4 x float> %i.pq, %i.apt
  %i.apw = fmul <4 x float> %i.qh, %i.apt
  %i.apx = fmul <4 x float> %i.qj, %i.apt
  %i.apy = fmul <4 x float> %i.qa, %i.apt
  %i.apz = fmul <4 x float> %i.pk, %i.apu
  %i.aqa = fadd <4 x float> %i.apv, %i.apz
  %i.aqb = fmul <4 x float> %i.qd, %i.apu
  %i.aqc = fadd <4 x float> %i.apw, %i.aqb        ; 2 uses
  %i.aqd = fmul <4 x float> %i.qf, %i.apu
  %i.aqe = fadd <4 x float> %i.apx, %i.aqd        ; 2 uses
  %i.aqf = fmul <4 x float> %i.pu, %i.apu
  %i.aqg = fadd <4 x float> %i.apy, %i.aqf
  %i.aqh = fsub <4 x float> %i.aqc, %i.aqa
  %i.aqi = fsub <4 x float> %i.aqe, %i.aqc        ; 2 uses
  %i.aqj = fsub <4 x float> %i.aqg, %i.aqe
  %i.aqk = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aql = fmul <4 x float> %i.aqk, %i.aqi
  %i.aqm = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.aqn = shufflevector <4 x float> %i.aqm, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqo = fmul <4 x float> %i.aqn, %i.aqh
  %i.aqp = fadd <4 x float> %i.aqo, %i.aql
  %i.aqq = fmul <4 x float> %i.aqk, %i.aqj
  %i.aqr = fmul <4 x float> %i.aqn, %i.aqi
  %i.aqs = fadd <4 x float> %i.aqr, %i.aqq
  %i.aqt = fmul <4 x float> %i.aqk, %i.aqs
  %i.aqu = fmul <4 x float> %i.aqn, %i.aqp
  %i.aqv = fadd <4 x float> %i.aqu, %i.aqt
  %i.aqw = fmul <4 x float> %i.aqv, splat (float 3.000000e+00) ; 2 uses
  %i.aqx = shufflevector <4 x float> %foldExtExtBinop3523, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqy = fmul <4 x float> %i.ur, %i.aqx
  %i.aqz = insertelement <4 x float> poison, float %i.aph, i64 0
  %i.ara = shufflevector <4 x float> %i.aqz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arb = fmul <4 x float> %i.uq, %i.ara
  %i.arc = fadd <4 x float> %i.aqy, %i.arb
  %i.ard = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.are = shufflevector <4 x float> %i.ard, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arf = fmul <4 x float> %i.up, %i.are
  %i.arg = fadd <4 x float> %i.arf, %i.arc
  %i.arh = insertelement <4 x float> poison, float %i.apc, i64 0
  %i.ari = shufflevector <4 x float> %i.arh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arj = fmul <4 x float> %i.uo, %i.ari
  %i.ark = fadd <4 x float> %i.arj, %i.arg        ; 2 uses
  %i.arl = shufflevector <4 x float> %i.ark, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arm = shufflevector <4 x float> %i.aqw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.arn = fmul <4 x float> %i.ark, %i.arm
  %i.aro = fmul <4 x float> %i.aqw, %i.arl
  %i.arp = fsub <4 x float> %i.aro, %i.arn        ; 3 uses
  %i.arq = load ptr, ptr %2, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 488
  %i.ars = load ptr, ptr %i.arr, align 8
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %i.he
  %i.aru = load ptr, ptr %i.art, align 8          ; 5 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 52
  %i.arw = load i32, ptr %i.arv, align 4
  %i.arx = load i32, ptr %i.gd, align 4
  %i.ary = and i32 %i.arx, %i.arw
  %i.arz = icmp eq i32 %i.ary, 0
  br i1 %i.arz, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_7RayHitKILi1EEENS0_17Intersect1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.asa = load ptr, ptr %i.ge, align 8
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.asc = load ptr, ptr %i.asb, align 8
  %.not3387 = icmp eq ptr %i.asc, null
  br i1 %.not3387, label %bb.z, label %.critedge.i.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aru, i64 64
  %i.ase = load ptr, ptr %i.asd, align 16
  %.not3388 = icmp eq ptr %i.ase, null
  br i1 %.not3388, label %bb.ah, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.asf = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.asg = shufflevector <4 x float> %i.arp, <4 x float> %i.amq, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.asg, ptr %5, align 16
  store float %.sroa.01640.4.vec.extract1645, ptr %i.gg, align 16
  store <2 x i32> %i.ut, ptr %i.gh, align 4
  %i.ash = load i32, ptr %i.asf, align 4
  store i32 %i.ash, ptr %i.gi, align 4
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.asj = load i32, ptr %i.asi, align 4
  store i32 %i.asj, ptr %i.gj, align 16
  store float %i.apo, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aru, i64 24
  %i.asl = load ptr, ptr %i.ask, align 8
  store ptr %i.asl, ptr %i.gk, align 8
  %i.asm = load ptr, ptr %i.gf, align 8
  store ptr %i.asm, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aru, i64 64
  %i.aso = load ptr, ptr %i.asn, align 16         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aso, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i
  call void %i.aso(ptr noundef nonnull %4), !inline_history !10026
  %i.asp = load ptr, ptr %4, align 8
  %i.asq = load i32, ptr %i.asp, align 4
  %i.asr = icmp eq i32 %i.asq, 0
  br i1 %i.asr, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i.i
  %i.ass = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  %i.asu = load ptr, ptr %i.ast, align 8          ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.asu, null
  br i1 %.not14.i.i.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.asv = load i32, ptr %i.ass, align 8
  %i.asw = and i32 %i.asv, 2
  %.not3389 = icmp eq i32 %i.asw, 0
  br i1 %.not3389, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aru, i64 60
  %i.asy = load i32, ptr %i.asx, align 4
  %i.asz = and i32 %i.asy, 4194304
  %.not3390 = icmp eq i32 %i.asz, 0
  br i1 %.not3390, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.asu(ptr noundef nonnull %4), !inline_history !10026
  %.pre = load ptr, ptr %4, align 8
  %.pre3442 = load i32, ptr %.pre, align 4
  %i.ata = icmp eq i32 %.pre3442, 0
  br i1 %i.ata, label %bb.af, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  %i.atb = load ptr, ptr %i.gm, align 8           ; 9 uses
  %i.atc = load ptr, ptr %i.gn, align 8           ; 9 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atb, i64 48
  %i.ate = load float, ptr %i.atc, align 4
  store float %i.ate, ptr %i.atd, align 4
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atc, i64 4
  %i.atg = load float, ptr %i.atf, align 4
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atb, i64 52
  store float %i.atg, ptr %i.ath, align 4
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  %i.atj = load float, ptr %i.ati, align 4
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atb, i64 56
  store float %i.atj, ptr %i.atk, align 4
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atc, i64 12
  %i.atm = load float, ptr %i.atl, align 4
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atb, i64 60
  store float %i.atm, ptr %i.atn, align 4
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.atp = load float, ptr %i.ato, align 16
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atb, i64 64
  store float %i.atp, ptr %i.atq, align 16
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atc, i64 20
  %i.ats = load i32, ptr %i.atr, align 4
  %i.att = getelementptr inbounds nuw i8, ptr %i.atb, i64 68
  store i32 %i.ats, ptr %i.att, align 4
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atc, i64 24
  %i.atv = load i32, ptr %i.atu, align 8
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atb, i64 72
  store i32 %i.atv, ptr %i.atw, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atc, i64 28
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atb, i64 76
  %i.atz = load i32, ptr %i.atx, align 4
  store i32 %i.atz, ptr %i.aty, align 4
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atc, i64 32
end_hunk_12
begin_hunk_13_@_ZN6embree4sse219CurveNiIntersector1ILi4EE10occluded_nINS0_26OrientedCurve1Intersector1INS_16CatmullRomCurveTELi3ELi4EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.aig = fmul <2 x float> %i.aif, %i.ahr        ; 4 uses
  %i.aih = fmul <2 x float> %i.aif, %i.ahs        ; 4 uses
  %i.aii = fcmp olt <2 x float> %i.aig, %i.aih    ; 3 uses
  %i.aij = extractelement <2 x i1> %i.aii, i64 0
  %i.aik = extractelement <2 x float> %i.aig, i64 0
  %i.ail = extractelement <2 x float> %i.aih, i64 0
  %i.aim = select i1 %i.aij, float %i.ail, float %i.aik ; 2 uses
  %i.ain = fcmp olt float %i.aie, %i.aim
  %i.aio = select i1 %i.ain, float %i.aim, float %i.aie
  %i.aip = select <2 x i1> %i.aia, <2 x float> %i.ahy, <2 x float> %i.ahz ; 2 uses
  %i.aiq = select <2 x i1> %i.aii, <2 x float> %i.aig, <2 x float> %i.aih ; 2 uses
  %i.air = fcmp olt <2 x float> %i.aip, %i.aiq
  %i.ais = select <2 x i1> %i.air, <2 x float> %i.aip, <2 x float> %i.aiq
  %i.ait = shufflevector <4 x float> %i.ahw, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aiu = fmul <2 x float> %i.ait, %i.aht        ; 4 uses
  %i.aiv = fmul <2 x float> %i.ait, %i.ahu        ; 4 uses
  %i.aiw = fcmp olt <2 x float> %i.aiu, %i.aiv    ; 3 uses
  %i.aix = extractelement <2 x i1> %i.aiw, i64 0
  %i.aiy = extractelement <2 x float> %i.aiu, i64 0
  %i.aiz = extractelement <2 x float> %i.aiv, i64 0
  %i.aja = select i1 %i.aix, float %i.aiz, float %i.aiy ; 2 uses
  %i.ajb = shufflevector <4 x float> %i.ahw, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajc = fmul <2 x float> %i.ajb, %i.aht        ; 4 uses
  %i.ajd = fmul <2 x float> %i.ajb, %i.ahu        ; 4 uses
  %i.aje = fcmp olt <2 x float> %i.ajc, %i.ajd    ; 3 uses
  %i.ajf = extractelement <2 x i1> %i.aje, i64 0
  %i.ajg = extractelement <2 x float> %i.ajc, i64 0
  %i.ajh = extractelement <2 x float> %i.ajd, i64 0
  %i.aji = select i1 %i.ajf, float %i.ajh, float %i.ajg ; 2 uses
  %i.ajj = fcmp olt float %i.aja, %i.aji
  %i.ajk = select i1 %i.ajj, float %i.aji, float %i.aja
  %i.ajl = select <2 x i1> %i.aiw, <2 x float> %i.aiu, <2 x float> %i.aiv ; 2 uses
  %i.ajm = select <2 x i1> %i.aje, <2 x float> %i.ajc, <2 x float> %i.ajd ; 2 uses
  %i.ajn = fcmp olt <2 x float> %i.ajl, %i.ajm
  %i.ajo = select <2 x i1> %i.ajn, <2 x float> %i.ajl, <2 x float> %i.ajm
  %i.ajp = shufflevector <2 x i1> %i.aia, <2 x i1> %i.aiw, <2 x i32> <i32 1, i32 3>
  %i.ajq = shufflevector <2 x float> %i.ahz, <2 x float> %i.aiv, <2 x i32> <i32 1, i32 3>
  %i.ajr = shufflevector <2 x float> %i.ahy, <2 x float> %i.aiu, <2 x i32> <i32 1, i32 3>
  %i.ajs = select <2 x i1> %i.ajp, <2 x float> %i.ajq, <2 x float> %i.ajr ; 2 uses
  %i.ajt = shufflevector <2 x i1> %i.aii, <2 x i1> %i.aje, <2 x i32> <i32 1, i32 3>
  %i.aju = shufflevector <2 x float> %i.aih, <2 x float> %i.ajd, <2 x i32> <i32 1, i32 3>
  %i.ajv = shufflevector <2 x float> %i.aig, <2 x float> %i.ajc, <2 x i32> <i32 1, i32 3>
  %i.ajw = select <2 x i1> %i.ajt, <2 x float> %i.aju, <2 x float> %i.ajv ; 2 uses
  %i.ajx = fcmp olt <2 x float> %i.ajs, %i.ajw
  %i.ajy = select <2 x i1> %i.ajx, <2 x float> %i.ajw, <2 x float> %i.ajs ; 2 uses
  %i.ajz = fadd float %i.aio, %i.ajk
  %i.aka = fadd <2 x float> %i.ais, %i.ajo
  %shift3507 = shufflevector <2 x float> %i.ajy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3508 = fadd <2 x float> %i.ajy, %shift3507
  %i.akb = extractelement <2 x float> %foldExtExtBinop3508, i64 0
  %i.akc = fadd float %.sroa.01621.0.vec.extract, %i.ajz ; 2 uses
  %i.akd = shufflevector <4 x float> %i.agi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ake = fadd <2 x float> %i.akd, %i.aka        ; 3 uses
  %i.akf = fadd float %.sroa.01621.4.vec.extract, %i.akb ; 2 uses
  %i.akg = extractelement <2 x float> %i.ake, i64 0 ; 2 uses
  %i.akh = fcmp olt float %i.akg, %i.vl
  %i.aki = select i1 %i.akh, float %i.vl, float %i.akg
  %i.akj = fcmp olt float %i.akc, %i.vm           ; 2 uses
  %i.akk = select i1 %i.akj, float %i.akc, float %i.vm
  %i.akl = extractelement <2 x float> %i.ake, i64 1 ; 2 uses
  %i.akm = fcmp olt float %i.akl, %i.acu
  %i.akn = select i1 %i.akm, float %i.acu, float %i.akl
  %i.ako = fcmp olt float %i.akf, %i.acv          ; 2 uses
  %i.akp = select i1 %i.ako, float %i.akf, float %i.acv
  %i.akq = fcmp ogt float %i.aki, %i.akk
  %i.akr = fcmp ogt float %i.akn, %i.akp
  %or.cond = select i1 %i.akq, i1 true, i1 %i.akr, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i: ; preds = %bb.r
  %i.aks = shufflevector <2 x float> %i.vk, <2 x float> %i.act, <2 x i32> <i32 0, i32 2>
  %i.akt = fcmp ogt <2 x float> %i.ake, %i.aks    ; 2 uses
  %i.aku = extractelement <2 x i1> %i.akt, i64 0
  %i.akv = and i1 %i.aku, %i.akj
  %i.akw = extractelement <2 x i1> %i.akt, i64 1
  %i.akx = select i1 %i.akv, i1 %i.akw, i1 false
  %i.aky = select i1 %i.akx, i1 %i.ako, i1 false
  %.demorgan.i.i = or i1 %i.vs, %i.aky
  br i1 %.demorgan.i.i, label %.critedge.i19.i, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i19.i
  %i.akz = add nuw nsw i64 %.026.i.i3376, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.akz, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i19.i, !llvm.loop !6

.critedge.i19.i:                                  ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i, %bb.s
  %.026.i.i3376 = phi i64 [ %i.akz, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ]
  %.sroa.02557.03375 = phi <4 x float> [ %i.amh, %bb.s ], [ %i.agi, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ] ; 6 uses
  %.sroa.02557.0.vec.extract = extractelement <4 x float> %.sroa.02557.03375, i64 0 ; 2 uses
  %i.ala = fsub float 1.000000e+00, %.sroa.02557.0.vec.extract ; 4 uses
  %i.alb = fmul float %i.ala, %i.ala              ; 2 uses
  %i.alc = fmul float %i.ala, %i.alb
  %i.ald = fmul float %.sroa.02557.0.vec.extract, 3.000000e+00
  %i.ale = fmul float %i.ald, %i.alb
  %foldExtExtBinop3510 = fmul <4 x float> %.sroa.02557.03375, %.sroa.02557.03375 ; 2 uses
  %i.alf = extractelement <4 x float> %foldExtExtBinop3510, i64 0
  %i.alg = fmul float %i.alf, 3.000000e+00
  %i.alh = fmul float %i.ala, %i.alg
  %foldExtExtBinop3512 = fmul <4 x float> %.sroa.02557.03375, %foldExtExtBinop3510
  %i.ali = insertelement <4 x float> poison, float %i.alc, i64 0
  %i.alj = shufflevector <4 x float> %i.ali, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alk = insertelement <4 x float> poison, float %i.ale, i64 0
  %i.all = shufflevector <4 x float> %i.alk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alm = insertelement <4 x float> poison, float %i.alh, i64 0
  %i.aln = shufflevector <4 x float> %i.alm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alo = shufflevector <4 x float> %foldExtExtBinop3512, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alp = fmul <4 x float> %i.ta, %i.alo
  %i.alq = fmul <4 x float> %i.sz, %i.aln
  %i.alr = fadd <4 x float> %i.alp, %i.alq
  %i.als = fmul <4 x float> %i.sy, %i.all
  %i.alt = fadd <4 x float> %i.als, %i.alr
  %i.alu = fmul <4 x float> %i.sx, %i.alj
  %i.alv = fadd <4 x float> %i.alu, %i.alt        ; 2 uses
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alx = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aly = shufflevector <4 x float> %.sroa.02557.03375, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.alz = fsub <4 x float> %i.alx, %i.alw
  %i.ama = fmul <4 x float> %i.aly, %i.alz
  %i.amb = fadd <4 x float> %i.alw, %i.ama        ; 3 uses
  %i.amc = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amd = fmul <4 x float> %i.agb, %i.amc
  %i.ame = shufflevector <4 x float> %i.amb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.amf = fmul <4 x float> %i.agc, %i.ame
  %i.amg = fadd <4 x float> %i.amd, %i.amf
  %i.amh = fsub <4 x float> %.sroa.02557.03375, %i.amg ; 10 uses
  %i.ami = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.amb) ; 2 uses
  %i.amj = extractelement <4 x float> %i.ami, i64 0 ; 2 uses
  %i.amk = extractelement <4 x float> %i.ami, i64 1 ; 2 uses
  %i.aml = fcmp olt float %i.amj, %i.amk
  %i.amm = select i1 %i.aml, float %i.amk, float %i.amj
  %i.amn = fcmp uge float %i.amm, %i.tq
  br i1 %i.amn, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i19.i
  %.sroa.02557.0.vec.extract2560 = extractelement <4 x float> %i.amh, i64 0 ; 4 uses
  %.sroa.02557.4.vec.extract2562 = extractelement <4 x float> %i.amh, i64 1 ; 4 uses
  %i.amo = fcmp oge float %.sroa.02557.0.vec.extract2560, 0.000000e+00
  %i.amp = fcmp ole float %.sroa.02557.0.vec.extract2560, 1.000000e+00
  %or.cond.i.i = and i1 %i.amo, %i.amp
  br i1 %or.cond.i.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.amq = fcmp oge float %.sroa.02557.4.vec.extract2562, 0.000000e+00
  %i.amr = fcmp ole float %.sroa.02557.4.vec.extract2562, 1.000000e+00
  %or.cond4.i.i = and i1 %i.amq, %i.amr
  br i1 %or.cond4.i.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ams = load float, ptr %i.ga, align 8, !noalias !10188
  %i.amt = load float, ptr %i.gb, align 8, !noalias !10188
  %i.amu = load float, ptr %i.gc, align 8, !noalias !10188
  %i.amv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ams, i64 0
  %i.amw = insertelement <4 x float> %i.amv, float %i.amt, i64 1
  %i.amx = insertelement <4 x float> %i.amw, float %i.amu, i64 2 ; 8 uses
  %i.amy = load <4 x float>, ptr %1, align 16, !noalias !10189 ; 9 uses
  %i.amz = fsub <4 x float> %i.pd, %i.amy
  %i.ana = fmul <4 x float> %i.amx, %i.amz        ; 3 uses
  %i.anb = fsub <4 x float> %i.pw, %i.amy
  %i.anc = fmul <4 x float> %i.amx, %i.anb        ; 3 uses
  %i.and = fsub <4 x float> %i.py, %i.amy
  %i.ane = fmul <4 x float> %i.amx, %i.and        ; 3 uses
  %i.anf = fsub <4 x float> %i.pn, %i.amy
  %i.ang = fmul <4 x float> %i.amx, %i.anf        ; 3 uses
  %i.anh = fsub <4 x float> %i.pj, %i.amy
  %i.ani = fmul <4 x float> %i.amx, %i.anh        ; 3 uses
  %i.anj = fsub <4 x float> %i.qa, %i.amy
  %i.ank = fmul <4 x float> %i.amx, %i.anj        ; 3 uses
  %i.anl = fsub <4 x float> %i.qc, %i.amy
  %i.anm = fmul <4 x float> %i.amx, %i.anl        ; 3 uses
  %i.ann = fsub <4 x float> %i.pt, %i.amy
  %i.ano = fmul <4 x float> %i.amx, %i.ann        ; 3 uses
  %i.anp = fsub float 1.000000e+00, %.sroa.02557.4.vec.extract2562
  %i.anq = shufflevector <4 x float> %i.amh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.anr = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ans = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ant = shufflevector <4 x float> %i.ani, <4 x float> %i.ank, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.anu = shufflevector <4 x float> %i.anr, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.anv = shufflevector <4 x float> %i.ans, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.anw = shufflevector <4 x float> %i.ant, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.anx = shufflevector <4 x float> %i.anu, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.any = shufflevector <4 x float> %i.anv, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.anz = shufflevector <4 x float> %i.anw, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoa = fadd <4 x float> %i.any, %i.anz
  %i.aob = fadd <4 x float> %i.anx, %i.aoa
  %i.aoc = fmul <4 x float> %i.anq, %i.aob
  %i.aod = insertelement <4 x float> poison, float %i.anp, i64 0
  %i.aoe = shufflevector <4 x float> %i.aod, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aof = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aog = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoh = shufflevector <4 x float> %i.ana, <4 x float> %i.anc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoi = shufflevector <4 x float> %i.aof, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aoj = shufflevector <4 x float> %i.aog, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aok = shufflevector <4 x float> %i.aoh, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aol = shufflevector <4 x float> %i.aoi, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aom = shufflevector <4 x float> %i.aoj, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aon = shufflevector <4 x float> %i.aok, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aoo = fadd <4 x float> %i.aom, %i.aon
  %i.aop = fadd <4 x float> %i.aol, %i.aoo
  %i.aoq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoe, <4 x float> %i.aop, <4 x float> %i.aoc) ; 4 uses
  %i.aor = fsub float 1.000000e+00, %.sroa.02557.0.vec.extract2560 ; 5 uses
  %i.aos = fmul nnan float %i.aor, %i.aor         ; 2 uses
  %i.aot = fmul float %i.aor, %i.aos              ; 2 uses
  %i.aou = fmul nnan float %.sroa.02557.0.vec.extract2560, 3.000000e+00
  %i.aov = fmul float %i.aou, %i.aos              ; 2 uses
  %foldExtExtBinop3514 = fmul nnan <4 x float> %i.amh, %i.amh ; 2 uses
  %i.aow = extractelement <4 x float> %foldExtExtBinop3514, i64 0
  %i.aox = fmul nnan float %i.aow, 3.000000e+00
  %i.aoy = fmul float %i.aor, %i.aox              ; 2 uses
  %foldExtExtBinop3516 = fmul <4 x float> %i.amh, %foldExtExtBinop3514 ; 2 uses
  %shift3518 = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3519 = fmul <4 x float> %foldExtExtBinop3516, %shift3518
  %i.aoz = extractelement <4 x float> %foldExtExtBinop3519, i64 0
  %i.apa = extractelement <4 x float> %i.aoq, i64 2
  %i.apb = call noundef float @llvm.fmuladd.f32(float %i.aoy, float %i.apa, float %i.aoz)
  %i.apc = extractelement <4 x float> %i.aoq, i64 1
  %i.apd = call noundef float @llvm.fmuladd.f32(float %i.aov, float %i.apc, float %i.apb)
  %i.ape = extractelement <4 x float> %i.aoq, i64 0
  %i.apf = call noundef float @llvm.fmuladd.f32(float %i.aot, float %i.ape, float %i.apd) ; 3 uses
  %i.apg = extractelement <4 x float> %i.amy, i64 3
  %i.aph = fcmp ugt float %i.apg, %i.apf
  br i1 %i.aph, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.api = load float, ptr %i.ff, align 16        ; 2 uses
  %i.apj = fcmp ugt float %i.apf, %i.api
  br i1 %i.apj, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.apk = shufflevector <4 x float> %i.amh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apl = fsub <4 x float> splat (float 1.000000e+00), %i.apk ; 4 uses
  %i.apm = fmul <4 x float> %i.pj, %i.apk
  %i.apn = fmul <4 x float> %i.qa, %i.apk
  %i.apo = fmul <4 x float> %i.qc, %i.apk
  %i.app = fmul <4 x float> %i.pt, %i.apk
  %i.apq = fmul <4 x float> %i.pd, %i.apl
  %i.apr = fadd <4 x float> %i.apm, %i.apq
  %i.aps = fmul <4 x float> %i.pw, %i.apl
  %i.apt = fadd <4 x float> %i.apn, %i.aps        ; 2 uses
  %i.apu = fmul <4 x float> %i.py, %i.apl
  %i.apv = fadd <4 x float> %i.apo, %i.apu        ; 2 uses
  %i.apw = fmul <4 x float> %i.pn, %i.apl
  %i.apx = fadd <4 x float> %i.app, %i.apw
  %i.apy = fsub <4 x float> %i.apt, %i.apr
  %i.apz = fsub <4 x float> %i.apv, %i.apt        ; 2 uses
  %i.aqa = fsub <4 x float> %i.apx, %i.apv
  %i.aqb = shufflevector <4 x float> %i.amh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqc = fmul <4 x float> %i.aqb, %i.apz
  %i.aqd = insertelement <4 x float> poison, float %i.aor, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqf = fmul <4 x float> %i.aqe, %i.apy
  %i.aqg = fadd <4 x float> %i.aqf, %i.aqc
  %i.aqh = fmul <4 x float> %i.aqb, %i.aqa
  %i.aqi = fmul <4 x float> %i.aqe, %i.apz
  %i.aqj = fadd <4 x float> %i.aqi, %i.aqh
  %i.aqk = fmul <4 x float> %i.aqb, %i.aqj
  %i.aql = fmul <4 x float> %i.aqe, %i.aqg
  %i.aqm = fadd <4 x float> %i.aql, %i.aqk
  %i.aqn = fmul <4 x float> %i.aqm, splat (float 3.000000e+00) ; 2 uses
  %i.aqo = shufflevector <4 x float> %foldExtExtBinop3516, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqp = fmul <4 x float> %i.uk, %i.aqo
  %i.aqq = insertelement <4 x float> poison, float %i.aoy, i64 0
  %i.aqr = shufflevector <4 x float> %i.aqq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqs = fmul <4 x float> %i.uj, %i.aqr
  %i.aqt = fadd <4 x float> %i.aqp, %i.aqs
  %i.aqu = insertelement <4 x float> poison, float %i.aov, i64 0
  %i.aqv = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqw = fmul <4 x float> %i.ui, %i.aqv
  %i.aqx = fadd <4 x float> %i.aqw, %i.aqt
  %i.aqy = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ara = fmul <4 x float> %i.uh, %i.aqz
  %i.arb = fadd <4 x float> %i.ara, %i.aqx        ; 2 uses
  %i.arc = shufflevector <4 x float> %i.arb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ard = shufflevector <4 x float> %i.aqn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.are = fmul <4 x float> %i.arb, %i.ard
  %i.arf = fmul <4 x float> %i.aqn, %i.arc
  %i.arg = fsub <4 x float> %i.arf, %i.are
  %i.arh = load ptr, ptr %2, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 488
  %i.arj = load ptr, ptr %i.ari, align 8
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.gx
  %i.arl = load ptr, ptr %i.ark, align 8          ; 5 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 52
  %i.arn = load i32, ptr %i.arm, align 4
  %i.aro = load i32, ptr %i.gd, align 4
  %i.arp = and i32 %i.aro, %i.arn
  %i.arq = icmp eq i32 %i.arp, 0
  br i1 %i.arq, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.arr = load ptr, ptr %i.ge, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.art = load ptr, ptr %i.ars, align 8
  %.not3367 = icmp eq ptr %i.art, null
  br i1 %.not3367, label %bb.z, label %.critedge.i.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arl, i64 72
  %i.arv = load ptr, ptr %i.aru, align 8
  %.not3368 = icmp eq ptr %i.arv, null
  br i1 %.not3368, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i, label %.critedge.i.i.i, !prof !14

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.arw = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.arx = shufflevector <4 x float> %i.arg, <4 x float> %i.amh, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  store <4 x float> %i.arx, ptr %5, align 16
  store float %.sroa.02557.4.vec.extract2562, ptr %i.gg, align 16
  store <2 x i32> %i.um, ptr %i.gh, align 4
  %i.ary = load i32, ptr %i.arw, align 4
  store i32 %i.ary, ptr %i.gi, align 4
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.asa = load i32, ptr %i.arz, align 4
  store i32 %i.asa, ptr %i.gj, align 16
  store float %i.apf, ptr %i.ff, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.asc = load ptr, ptr %i.asb, align 8
  store ptr %i.asc, ptr %i.gk, align 8
  %i.asd = load ptr, ptr %i.gf, align 8
  store ptr %i.asd, ptr %i.gl, align 8
  store ptr %1, ptr %i.gm, align 8
  store ptr %5, ptr %i.gn, align 8
  store i32 1, ptr %i.go, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arl, i64 72
  %i.asf = load ptr, ptr %i.ase, align 8          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.asf, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i
  call void %i.asf(ptr noundef nonnull %4), !inline_history !10154
  %i.asg = load ptr, ptr %4, align 8
  %i.ash = load i32, ptr %i.asg, align 4
  %i.asi = icmp eq i32 %i.ash, 0
  br i1 %i.asi, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i.i
  %i.asj = load ptr, ptr %i.ge, align 8           ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %i.asl = load ptr, ptr %i.ask, align 8          ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.asl, null
  br i1 %.not12.i.i.i.i, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.asm = load i32, ptr %i.asj, align 8
  %i.asn = and i32 %i.asm, 2
  %.not3369 = icmp eq i32 %i.asn, 0
  br i1 %.not3369, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.aso = getelementptr inbounds nuw i8, ptr %i.arl, i64 60
  %i.asp = load i32, ptr %i.aso, align 4
  %i.asq = and i32 %i.asp, 4194304
  %.not3370 = icmp eq i32 %i.asq, 0
  br i1 %.not3370, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void %i.asl(ptr noundef nonnull %4), !inline_history !10154
  %.pre = load ptr, ptr %4, align 8
  %.pre3427 = load i32, ptr %.pre, align 4
  %i.asr = icmp eq i32 %.pre3427, 0
  br i1 %i.asr, label %bb.af, label %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i

_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i: ; preds = %bb.ad, %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.api, ptr %i.ff, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i, %bb.af
  %.0.i.i.i.i3363 = phi i1 [ %.sroa.84.13394, %bb.af ], [ true, %_ZN6embree4sse225runOcclusionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i: ; preds = %bb.s, %bb.x, %bb.z, %bb.ag, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i, %bb.v, %bb.w, %bb.u, %bb.t, %bb.r, %bb.e
  %.sroa.84.3 = phi i1 [ %.sroa.84.13394, %bb.e ], [ %.sroa.84.13394, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE12solve_linearEffRKNS_8IntervalIfEESA_RS8_.exit.i ], [ %.sroa.84.13394, %bb.r ], [ %.sroa.84.13394, %bb.w ], [ true, %bb.z ], [ %.sroa.84.13394, %bb.v ], [ %.sroa.84.13394, %bb.t ], [ %.sroa.84.13394, %bb.u ], [ %.sroa.84.13394, %bb.x ], [ %.0.i.i.i.i3363, %bb.ag ], [ %.sroa.84.13394, %bb.s ] ; 2 uses
  %.not32.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not32.i.i, label %_ZNK6embree4sse226OrientedCurve1Intersector1INS_16CatmullRomCurveTELi3ELi4EE9intersectINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEEEEbRKNS0_21CurvePrecalculations1ERT_PNS_15RayQueryContextEPKNS_13CurveGeometryEjRKNS_6Vec3fxESL_SL_SL_RKNS_6Vec3faESO_SO_SO_RKT0_.exit, label %.lr.ph

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge: ; preds = %.lr.ph, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i
  %.sroa.0700.0.be = phi <2 x float> [ %i.act, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i.i ], [ %i.uu, %.lr.ph ]
  br label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread

_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread: ; preds = %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge, %.preheader3371
  %.sroa.84.0 = phi i1 [ false, %.preheader3371 ], [ %.sroa.84.13394, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0700.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3371 ], [ %.sroa.0700.0.be, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 2 uses
  %.sroa.0736.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader3371 ], [ %i.vk, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 5 uses
  %.225.i.i = phi i32 [ 0, %.preheader3371 ], [ %spec.select.i.i, %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS_4RayKILi1EEENS0_16Occluded1Epilog1ILb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEES9_.exit.i.thread.backedge ] ; 4 uses
  %i.ass = shufflevector <2 x float> %.sroa.0700.0, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 5 uses
  %i.ast = fsub <4 x float> splat (float 1.000000e+00), %i.ass ; 4 uses
  %i.asu = fmul <4 x float> %i.tv, %i.ass
  %i.asv = fmul <4 x float> %i.tw, %i.ass
  %i.asw = fmul <4 x float> %i.tx, %i.ass
end_hunk_13
begin_hunk_14_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE11intersect_nINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EEENS0_18Intersect1KEpilog1ILi4ELb1EEEEEvRNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.akc = shufflevector <4 x float> %i.akb, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akd = fmul <2 x float> %i.akc, %i.ajw        ; 4 uses
  %i.ake = fmul <2 x float> %i.akc, %i.ajx        ; 4 uses
  %i.akf = fcmp olt <2 x float> %i.akd, %i.ake    ; 3 uses
  %i.akg = extractelement <2 x i1> %i.akf, i64 0
  %i.akh = extractelement <2 x float> %i.akd, i64 0
  %i.aki = extractelement <2 x float> %i.ake, i64 0
  %i.akj = select i1 %i.akg, float %i.aki, float %i.akh ; 2 uses
  %i.akk = shufflevector <4 x float> %i.akb, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.akl = fmul <2 x float> %i.akk, %i.ajw        ; 4 uses
  %i.akm = fmul <2 x float> %i.akk, %i.ajx        ; 4 uses
  %i.akn = fcmp olt <2 x float> %i.akl, %i.akm    ; 3 uses
  %i.ako = extractelement <2 x i1> %i.akn, i64 0
  %i.akp = extractelement <2 x float> %i.akl, i64 0
  %i.akq = extractelement <2 x float> %i.akm, i64 0
  %i.akr = select i1 %i.ako, float %i.akq, float %i.akp ; 2 uses
  %i.aks = fcmp olt float %i.akj, %i.akr
  %i.akt = select i1 %i.aks, float %i.akr, float %i.akj
  %i.aku = select <2 x i1> %i.akf, <2 x float> %i.akd, <2 x float> %i.ake ; 2 uses
  %i.akv = select <2 x i1> %i.akn, <2 x float> %i.akl, <2 x float> %i.akm ; 2 uses
  %i.akw = fcmp olt <2 x float> %i.aku, %i.akv
  %i.akx = select <2 x i1> %i.akw, <2 x float> %i.aku, <2 x float> %i.akv
  %i.aky = shufflevector <4 x float> %i.akb, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akz = fmul <2 x float> %i.aky, %i.ajy        ; 4 uses
  %i.ala = fmul <2 x float> %i.aky, %i.ajz        ; 4 uses
  %i.alb = fcmp olt <2 x float> %i.akz, %i.ala    ; 3 uses
  %i.alc = extractelement <2 x i1> %i.alb, i64 0
  %i.ald = extractelement <2 x float> %i.akz, i64 0
  %i.ale = extractelement <2 x float> %i.ala, i64 0
  %i.alf = select i1 %i.alc, float %i.ale, float %i.ald ; 2 uses
  %i.alg = shufflevector <4 x float> %i.akb, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.alh = fmul <2 x float> %i.alg, %i.ajy        ; 4 uses
  %i.ali = fmul <2 x float> %i.alg, %i.ajz        ; 4 uses
  %i.alj = fcmp olt <2 x float> %i.alh, %i.ali    ; 3 uses
  %i.alk = extractelement <2 x i1> %i.alj, i64 0
  %i.all = extractelement <2 x float> %i.alh, i64 0
  %i.alm = extractelement <2 x float> %i.ali, i64 0
  %i.aln = select i1 %i.alk, float %i.alm, float %i.all ; 2 uses
  %i.alo = fcmp olt float %i.alf, %i.aln
  %i.alp = select i1 %i.alo, float %i.aln, float %i.alf
  %i.alq = select <2 x i1> %i.alb, <2 x float> %i.akz, <2 x float> %i.ala ; 2 uses
  %i.alr = select <2 x i1> %i.alj, <2 x float> %i.alh, <2 x float> %i.ali ; 2 uses
  %i.als = fcmp olt <2 x float> %i.alq, %i.alr
  %i.alt = select <2 x i1> %i.als, <2 x float> %i.alq, <2 x float> %i.alr
  %i.alu = shufflevector <2 x i1> %i.akf, <2 x i1> %i.alb, <2 x i32> <i32 1, i32 3>
  %i.alv = shufflevector <2 x float> %i.ake, <2 x float> %i.ala, <2 x i32> <i32 1, i32 3>
  %i.alw = shufflevector <2 x float> %i.akd, <2 x float> %i.akz, <2 x i32> <i32 1, i32 3>
  %i.alx = select <2 x i1> %i.alu, <2 x float> %i.alv, <2 x float> %i.alw ; 2 uses
  %i.aly = shufflevector <2 x i1> %i.akn, <2 x i1> %i.alj, <2 x i32> <i32 1, i32 3>
  %i.alz = shufflevector <2 x float> %i.akm, <2 x float> %i.ali, <2 x i32> <i32 1, i32 3>
  %i.ama = shufflevector <2 x float> %i.akl, <2 x float> %i.alh, <2 x i32> <i32 1, i32 3>
  %i.amb = select <2 x i1> %i.aly, <2 x float> %i.alz, <2 x float> %i.ama ; 2 uses
  %i.amc = fcmp olt <2 x float> %i.alx, %i.amb
  %i.amd = select <2 x i1> %i.amc, <2 x float> %i.amb, <2 x float> %i.alx ; 2 uses
  %i.ame = fadd float %i.akt, %i.alp
  %i.amf = fadd <2 x float> %i.akx, %i.alt
  %shift3593 = shufflevector <2 x float> %i.amd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3594 = fadd <2 x float> %i.amd, %shift3593
  %i.amg = extractelement <2 x float> %foldExtExtBinop3594, i64 0
  %i.amh = fadd float %.sroa.02135.0.vec.extract, %i.ame ; 2 uses
  %i.ami = shufflevector <4 x float> %i.ain, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.amj = fadd <2 x float> %i.ami, %i.amf        ; 3 uses
  %i.amk = fadd float %.sroa.02135.4.vec.extract, %i.amg ; 2 uses
  %i.aml = extractelement <2 x float> %i.amj, i64 0 ; 2 uses
  %i.amm = fcmp olt float %i.aml, %i.xq
  %i.amn = select i1 %i.amm, float %i.xq, float %i.aml
  %i.amo = fcmp olt float %i.amh, %i.xr           ; 2 uses
  %i.amp = select i1 %i.amo, float %i.amh, float %i.xr
  %i.amq = extractelement <2 x float> %i.amj, i64 1 ; 2 uses
  %i.amr = fcmp olt float %i.amq, %i.aez
  %i.ams = select i1 %i.amr, float %i.aez, float %i.amq
  %i.amt = fcmp olt float %i.amk, %i.afa          ; 2 uses
  %i.amu = select i1 %i.amt, float %i.amk, float %i.afa
  %i.amv = fcmp ogt float %i.amn, %i.amp
  %i.amw = fcmp ogt float %i.ams, %i.amu
  %or.cond = select i1 %i.amv, i1 true, i1 %i.amw, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.amx = shufflevector <2 x float> %i.xp, <2 x float> %i.aey, <2 x i32> <i32 0, i32 2>
  %i.amy = fcmp ogt <2 x float> %i.amj, %i.amx    ; 2 uses
  %i.amz = extractelement <2 x i1> %i.amy, i64 0
  %i.ana = and i1 %i.amz, %i.amo
  %i.anb = extractelement <2 x i1> %i.amy, i64 1
  %i.anc = select i1 %i.ana, i1 %i.anb, i1 false
  %i.and = select i1 %i.anc, i1 %i.amt, i1 false
  %.demorgan.i = or i1 %i.xx, %i.and
  br i1 %.demorgan.i, label %.critedge.i46, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i46
  %i.ane = add nuw nsw i64 %.026.i3477, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ane, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i46, !llvm.loop !10272

.critedge.i46:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3477 = phi i64 [ %i.ane, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03067.03476 = phi <4 x float> [ %i.aom, %bb.s ], [ %i.ain, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03067.0.vec.extract = extractelement <4 x float> %.sroa.03067.03476, i64 0 ; 2 uses
  %i.anf = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract ; 4 uses
  %i.ang = fmul float %i.anf, %i.anf              ; 2 uses
  %i.anh = fmul float %i.anf, %i.ang
  %i.ani = fmul float %.sroa.03067.0.vec.extract, 3.000000e+00
  %i.anj = fmul float %i.ani, %i.ang
  %foldExtExtBinop3596 = fmul <4 x float> %.sroa.03067.03476, %.sroa.03067.03476 ; 2 uses
  %i.ank = extractelement <4 x float> %foldExtExtBinop3596, i64 0
  %i.anl = fmul float %i.ank, 3.000000e+00
  %i.anm = fmul float %i.anf, %i.anl
  %foldExtExtBinop3598 = fmul <4 x float> %.sroa.03067.03476, %foldExtExtBinop3596
  %i.ann = insertelement <4 x float> poison, float %i.anh, i64 0
  %i.ano = shufflevector <4 x float> %i.ann, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anp = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anr = insertelement <4 x float> poison, float %i.anm, i64 0
  %i.ans = shufflevector <4 x float> %i.anr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ant = shufflevector <4 x float> %foldExtExtBinop3598, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anu = fmul <4 x float> %i.vd, %i.ant
  %i.anv = fmul <4 x float> %i.vc, %i.ans
  %i.anw = fadd <4 x float> %i.anu, %i.anv
  %i.anx = fmul <4 x float> %i.vb, %i.anq
  %i.any = fadd <4 x float> %i.anx, %i.anw
  %i.anz = fmul <4 x float> %i.va, %i.ano
  %i.aoa = fadd <4 x float> %i.anz, %i.any        ; 2 uses
  %i.aob = shufflevector <4 x float> %i.aoa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aoc = shufflevector <4 x float> %i.aoa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aod = shufflevector <4 x float> %.sroa.03067.03476, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.aoe = fsub <4 x float> %i.aoc, %i.aob
  %i.aof = fmul <4 x float> %i.aod, %i.aoe
  %i.aog = fadd <4 x float> %i.aob, %i.aof        ; 3 uses
  %i.aoh = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoi = fmul <4 x float> %i.aig, %i.aoh
  %i.aoj = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aok = fmul <4 x float> %i.aih, %i.aoj
  %i.aol = fadd <4 x float> %i.aoi, %i.aok
  %i.aom = fsub <4 x float> %.sroa.03067.03476, %i.aol ; 9 uses
  %i.aon = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aog) ; 2 uses
  %i.aoo = extractelement <4 x float> %i.aon, i64 0 ; 2 uses
  %i.aop = extractelement <4 x float> %i.aon, i64 1 ; 2 uses
  %i.aoq = fcmp olt float %i.aoo, %i.aop
  %i.aor = select i1 %i.aoq, float %i.aop, float %i.aoo
  %i.aos = fcmp uge float %i.aor, %i.vt
  br i1 %i.aos, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i46
  %.sroa.03067.0.vec.extract3070 = extractelement <4 x float> %i.aom, i64 0 ; 5 uses
  %.sroa.03067.4.vec.extract3072 = extractelement <4 x float> %i.aom, i64 1 ; 4 uses
  %i.aot = fcmp oge float %.sroa.03067.0.vec.extract3070, 0.000000e+00
  %i.aou = fcmp ole float %.sroa.03067.0.vec.extract3070, 1.000000e+00
  %or.cond.i = and i1 %i.aot, %i.aou
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.aov = fcmp oge float %.sroa.03067.4.vec.extract3072, 0.000000e+00
  %i.aow = fcmp ole float %.sroa.03067.4.vec.extract3072, 1.000000e+00
  %or.cond4.i = and i1 %i.aov, %i.aow
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.aox = load float, ptr %i.gy, align 8, !noalias !10355
  %i.aoy = load float, ptr %i.gz, align 8, !noalias !10355
  %i.aoz = load float, ptr %i.ha, align 8, !noalias !10355
  %i.apa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aox, i64 0
  %i.apb = insertelement <4 x float> %i.apa, float %i.aoy, i64 1
  %i.apc = insertelement <4 x float> %i.apb, float %i.aoz, i64 2 ; 8 uses
  %i.apd = fmul <4 x float> %i.sg, %i.apc         ; 3 uses
  %i.ape = fmul <4 x float> %i.sp, %i.apc         ; 3 uses
  %i.apf = fmul <4 x float> %i.sy, %i.apc         ; 3 uses
  %i.apg = fmul <4 x float> %i.th, %i.apc         ; 3 uses
  %i.aph = fmul <4 x float> %i.tq, %i.apc         ; 3 uses
  %i.api = fmul <4 x float> %i.tz, %i.apc         ; 3 uses
  %i.apj = fmul <4 x float> %i.ui, %i.apc         ; 3 uses
  %i.apk = fmul <4 x float> %i.ur, %i.apc         ; 3 uses
  %i.apl = fsub float 1.000000e+00, %.sroa.03067.4.vec.extract3072
  %i.apm = shufflevector <4 x float> %i.aom, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.apn = shufflevector <4 x float> %i.aph, <4 x float> %i.api, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.apo = shufflevector <4 x float> %i.aph, <4 x float> %i.api, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.app = shufflevector <4 x float> %i.aph, <4 x float> %i.api, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apq = shufflevector <4 x float> %i.apn, <4 x float> %i.apj, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apr = shufflevector <4 x float> %i.apo, <4 x float> %i.apj, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aps = shufflevector <4 x float> %i.app, <4 x float> %i.apj, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apt = shufflevector <4 x float> %i.apq, <4 x float> %i.apk, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apu = shufflevector <4 x float> %i.apr, <4 x float> %i.apk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apv = shufflevector <4 x float> %i.aps, <4 x float> %i.apk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.apw = fadd <4 x float> %i.apu, %i.apv
  %i.apx = fadd <4 x float> %i.apt, %i.apw
  %i.apy = fmul <4 x float> %i.apm, %i.apx
  %i.apz = insertelement <4 x float> poison, float %i.apl, i64 0
  %i.aqa = shufflevector <4 x float> %i.apz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqb = shufflevector <4 x float> %i.apd, <4 x float> %i.ape, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aqc = shufflevector <4 x float> %i.apd, <4 x float> %i.ape, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aqd = shufflevector <4 x float> %i.apd, <4 x float> %i.ape, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aqe = shufflevector <4 x float> %i.aqb, <4 x float> %i.apf, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aqf = shufflevector <4 x float> %i.aqc, <4 x float> %i.apf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aqg = shufflevector <4 x float> %i.aqd, <4 x float> %i.apf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aqh = shufflevector <4 x float> %i.aqe, <4 x float> %i.apg, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aqi = shufflevector <4 x float> %i.aqf, <4 x float> %i.apg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aqj = shufflevector <4 x float> %i.aqg, <4 x float> %i.apg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqk = fadd <4 x float> %i.aqi, %i.aqj
  %i.aql = fadd <4 x float> %i.aqh, %i.aqk
  %i.aqm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqa, <4 x float> %i.aql, <4 x float> %i.apy) ; 4 uses
  %i.aqn = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract3070 ; 5 uses
  %i.aqo = fmul nnan float %i.aqn, %i.aqn         ; 2 uses
  %i.aqp = fmul float %i.aqn, %i.aqo              ; 2 uses
  %i.aqq = fmul nnan float %.sroa.03067.0.vec.extract3070, 3.000000e+00
  %i.aqr = fmul float %i.aqq, %i.aqo              ; 2 uses
  %foldExtExtBinop3600 = fmul nnan <4 x float> %i.aom, %i.aom ; 2 uses
  %i.aqs = extractelement <4 x float> %foldExtExtBinop3600, i64 0
  %i.aqt = fmul nnan float %i.aqs, 3.000000e+00
  %i.aqu = fmul float %i.aqn, %i.aqt              ; 2 uses
  %foldExtExtBinop3602 = fmul <4 x float> %i.aom, %foldExtExtBinop3600 ; 2 uses
  %shift3604 = shufflevector <4 x float> %i.aqm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3605 = fmul <4 x float> %foldExtExtBinop3602, %shift3604
  %i.aqv = extractelement <4 x float> %foldExtExtBinop3605, i64 0
  %i.aqw = extractelement <4 x float> %i.aqm, i64 2
  %i.aqx = call noundef float @llvm.fmuladd.f32(float %i.aqu, float %i.aqw, float %i.aqv)
  %i.aqy = extractelement <4 x float> %i.aqm, i64 1
  %i.aqz = call noundef float @llvm.fmuladd.f32(float %i.aqr, float %i.aqy, float %i.aqx)
  %i.ara = extractelement <4 x float> %i.aqm, i64 0
  %i.arb = call noundef float @llvm.fmuladd.f32(float %i.aqp, float %i.ara, float %i.aqz) ; 4 uses
  %i.arc = fcmp ugt float %i.ls, %i.arb
  br i1 %i.arc, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ard = load float, ptr %i.gb, align 4         ; 2 uses
  %i.are = fcmp ugt float %i.arb, %i.ard
  br i1 %i.are, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.arf = shufflevector <4 x float> %i.aom, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.arg = fsub <4 x float> splat (float 1.000000e+00), %i.arf ; 4 uses
  %i.arh = fmul <4 x float> %i.rm, %i.arf
  %i.ari = fmul <4 x float> %i.sd, %i.arf
  %i.arj = fmul <4 x float> %i.sf, %i.arf
  %i.ark = fmul <4 x float> %i.rw, %i.arf
  %i.arl = fmul <4 x float> %i.rg, %i.arg
  %i.arm = fadd <4 x float> %i.arh, %i.arl
  %i.arn = fmul <4 x float> %i.rz, %i.arg
  %i.aro = fadd <4 x float> %i.ari, %i.arn        ; 2 uses
  %i.arp = fmul <4 x float> %i.sb, %i.arg
  %i.arq = fadd <4 x float> %i.arj, %i.arp        ; 2 uses
  %i.arr = fmul <4 x float> %i.rq, %i.arg
  %i.ars = fadd <4 x float> %i.ark, %i.arr
  %i.art = fsub <4 x float> %i.aro, %i.arm
  %i.aru = fsub <4 x float> %i.arq, %i.aro        ; 2 uses
  %i.arv = fsub <4 x float> %i.ars, %i.arq
  %i.arw = shufflevector <4 x float> %i.aom, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.arx = fmul <4 x float> %i.arw, %i.aru
  %i.ary = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.arz = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.asa = fmul <4 x float> %i.arz, %i.art
  %i.asb = fadd <4 x float> %i.asa, %i.arx
  %i.asc = fmul <4 x float> %i.arw, %i.arv
  %i.asd = fmul <4 x float> %i.arz, %i.aru
  %i.ase = fadd <4 x float> %i.asd, %i.asc
  %i.asf = fmul <4 x float> %i.arw, %i.ase
  %i.asg = fmul <4 x float> %i.arz, %i.asb
  %i.ash = fadd <4 x float> %i.asg, %i.asf
  %i.asi = fmul <4 x float> %i.ash, splat (float 3.000000e+00) ; 2 uses
  %i.asj = shufflevector <4 x float> %foldExtExtBinop3602, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ask = fmul <4 x float> %i.wn, %i.asj
  %i.asl = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.asm = shufflevector <4 x float> %i.asl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asn = fmul <4 x float> %i.wm, %i.asm
  %i.aso = fadd <4 x float> %i.ask, %i.asn
  %i.asp = insertelement <4 x float> poison, float %i.aqr, i64 0
  %i.asq = shufflevector <4 x float> %i.asp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asr = fmul <4 x float> %i.wl, %i.asq
  %i.ass = fadd <4 x float> %i.asr, %i.aso
  %i.ast = insertelement <4 x float> poison, float %i.aqp, i64 0
  %i.asu = shufflevector <4 x float> %i.ast, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asv = fmul <4 x float> %i.wk, %i.asu
  %i.asw = fadd <4 x float> %i.asv, %i.ass        ; 2 uses
  %i.asx = shufflevector <4 x float> %i.asw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.asy = shufflevector <4 x float> %i.asi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.asz = fmul <4 x float> %i.asw, %i.asy
  %i.ata = fmul <4 x float> %i.asi, %i.asx
  %i.atb = fsub <4 x float> %i.ata, %i.asz        ; 6 uses
  %i.atc = load ptr, ptr %3, align 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 488
  %i.ate = load ptr, ptr %i.atd, align 8
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.iu
  %i.atg = load ptr, ptr %i.atf, align 8          ; 5 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 52
  %i.ati = load i32, ptr %i.ath, align 4
  %i.atj = load i32, ptr %i.hc, align 4
  %i.atk = and i32 %i.atj, %i.ati
  %i.atl = icmp eq i32 %i.atk, 0
  br i1 %i.atl, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_18Intersect1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.atm = load ptr, ptr %i.hd, align 8
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  %i.ato = load ptr, ptr %i.atn, align 8
  %.not3468 = icmp eq ptr %i.ato, null
  br i1 %.not3468, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 64
  %i.atq = load ptr, ptr %i.atp, align 16
  %.not3469 = icmp eq ptr %i.atq, null
  br i1 %.not3469, label %bb.ak, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.atr = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.ats = shufflevector <4 x float> %i.atb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.att = shufflevector <4 x float> %i.atb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.atu = shufflevector <4 x float> %i.atb, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ats, ptr %7, align 16
  store <4 x float> %i.att, ptr %i.hf, align 16
  store <4 x float> %i.atu, ptr %i.hg, align 16
  store <4 x float> %i.arw, ptr %i.hh, align 16
  store <4 x float> %i.arf, ptr %i.hi, align 16
  store <4 x i32> %i.wr, ptr %i.hj, align 16
  store <4 x i32> %i.wp, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.atv = load i32, ptr %i.atr, align 4
  %i.atw = insertelement <4 x i32> poison, i32 %i.atv, i64 0
  %i.atx = shufflevector <4 x i32> %i.atw, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atx, ptr %.ptr12.i.i.i, align 16
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atr, i64 4
  %i.atz = load i32, ptr %i.aty, align 4
  %i.aua = insertelement <4 x i32> poison, i32 %i.atz, i64 0
  %i.aub = shufflevector <4 x i32> %i.aua, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aub, ptr %.ptr17.i.i.i, align 16
  store float %i.arb, ptr %i.gb, align 4
  %i.auc = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !10356
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !10356
  store <2 x i64> %i.auc, ptr %6, align 16, !noalias !10356
  store ptr %6, ptr %5, align 8, !noalias !10356
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %i.aue = load ptr, ptr %i.aud, align 8, !noalias !10356
  store ptr %i.aue, ptr %i.hp, align 8, !noalias !10356
  %i.auf = load ptr, ptr %i.he, align 8, !noalias !10356
  store ptr %i.auf, ptr %i.hq, align 8, !noalias !10356
  store ptr %1, ptr %i.hr, align 8, !noalias !10356
  store ptr %7, ptr %i.hs, align 8, !noalias !10356
  store i32 4, ptr %i.ht, align 8, !noalias !10356
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atg, i64 64
  %i.auh = load ptr, ptr %i.aug, align 16, !noalias !10357 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.auh, null
  %i.aui = bitcast <2 x i64> %i.auc to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.auh(ptr noundef nonnull %5), !noalias !10357, !inline_history !10279
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !10358
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.auj = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.aui, %.critedge.i.i ] ; 3 uses
  %i.auk = icmp ne <4 x i32> %i.auj, zeroinitializer ; 2 uses
  %i.aul = bitcast <4 x i1> %i.auk to i4
  %i.aum = icmp eq i4 %i.aul, 0
  br i1 %i.aum, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aun = load ptr, ptr %i.hd, align 8           ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.aup = load ptr, ptr %i.auo, align 8          ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.aup, null
  br i1 %.not13.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.auq = load i32, ptr %i.aun, align 8
  %i.aur = and i32 %i.auq, 2
  %.not3470 = icmp eq i32 %i.aur, 0
  br i1 %.not3470, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aus = getelementptr inbounds nuw i8, ptr %i.atg, i64 60
  %i.aut = load i32, ptr %i.aus, align 4, !noalias !10357
  %i.auu = and i32 %i.aut, 4194304
  %.not3471 = icmp eq i32 %i.auu, 0
  br i1 %.not3471, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.aup(ptr noundef nonnull %5), !inline_history !10279
  %.pre3523 = load <4 x i32>, ptr %6, align 16, !noalias !10359
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.auv = phi <4 x i32> [ %.pre3523, %bb.af ], [ %i.auj, %bb.ae ], [ %i.auj, %bb.ac ]
  %i.auw = icmp ne <4 x i32> %i.auv, zeroinitializer ; 12 uses
  %i.aux = bitcast <4 x i1> %i.auw to i4
  %i.auy = icmp eq i4 %i.aux, 0
  br i1 %i.auy, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.auz = load ptr, ptr %i.hr, align 8, !noalias !10357 ; 9 uses
  %i.ava = load ptr, ptr %i.hs, align 8, !noalias !10357 ; 9 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auz, i64 192 ; 2 uses
  %i.avc = load <4 x i32>, ptr %i.avb, align 1, !noalias !10360
  %i.avd = load <4 x i32>, ptr %i.ava, align 16, !noalias !10361
  %i.ave = select <4 x i1> %i.auw, <4 x i32> %i.avd, <4 x i32> %i.avc
  store <4 x i32> %i.ave, ptr %i.avb, align 1
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auz, i64 208 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %i.avh = load <4 x i32>, ptr %i.avf, align 1, !noalias !10362
  %i.avi = load <4 x i32>, ptr %i.avg, align 16, !noalias !10363
  %i.avj = select <4 x i1> %i.auw, <4 x i32> %i.avi, <4 x i32> %i.avh
end_hunk_14
begin_hunk_15_@_ZN6embree4sse219CurveNiIntersectorKILi4ELi4EE10occluded_nINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EEENS0_17Occluded1KEpilog1ILi4ELb1EEEEEbRNS0_21CurvePrecalculationsKILi4EEERNS_4RayKILi4EEEmPNS_15RayQueryContextERKNS_7CurveNiILi4EEE:bb.a
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajl = fmul <2 x float> %i.ajk, %i.aje        ; 4 uses
  %i.ajm = fmul <2 x float> %i.ajk, %i.ajf        ; 4 uses
  %i.ajn = fcmp olt <2 x float> %i.ajl, %i.ajm    ; 3 uses
  %i.ajo = extractelement <2 x i1> %i.ajn, i64 0
  %i.ajp = extractelement <2 x float> %i.ajl, i64 0
  %i.ajq = extractelement <2 x float> %i.ajm, i64 0
  %i.ajr = select i1 %i.ajo, float %i.ajq, float %i.ajp ; 2 uses
  %i.ajs = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ajt = fmul <2 x float> %i.ajs, %i.aje        ; 4 uses
  %i.aju = fmul <2 x float> %i.ajs, %i.ajf        ; 4 uses
  %i.ajv = fcmp olt <2 x float> %i.ajt, %i.aju    ; 3 uses
  %i.ajw = extractelement <2 x i1> %i.ajv, i64 0
  %i.ajx = extractelement <2 x float> %i.ajt, i64 0
  %i.ajy = extractelement <2 x float> %i.aju, i64 0
  %i.ajz = select i1 %i.ajw, float %i.ajy, float %i.ajx ; 2 uses
  %i.aka = fcmp olt float %i.ajr, %i.ajz
  %i.akb = select i1 %i.aka, float %i.ajz, float %i.ajr
  %i.akc = select <2 x i1> %i.ajn, <2 x float> %i.ajl, <2 x float> %i.ajm ; 2 uses
  %i.akd = select <2 x i1> %i.ajv, <2 x float> %i.ajt, <2 x float> %i.aju ; 2 uses
  %i.ake = fcmp olt <2 x float> %i.akc, %i.akd
  %i.akf = select <2 x i1> %i.ake, <2 x float> %i.akc, <2 x float> %i.akd
  %i.akg = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akh = fmul <2 x float> %i.akg, %i.ajg        ; 4 uses
  %i.aki = fmul <2 x float> %i.akg, %i.ajh        ; 4 uses
  %i.akj = fcmp olt <2 x float> %i.akh, %i.aki    ; 3 uses
  %i.akk = extractelement <2 x i1> %i.akj, i64 0
  %i.akl = extractelement <2 x float> %i.akh, i64 0
  %i.akm = extractelement <2 x float> %i.aki, i64 0
  %i.akn = select i1 %i.akk, float %i.akm, float %i.akl ; 2 uses
  %i.ako = shufflevector <4 x float> %i.ajj, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.akp = fmul <2 x float> %i.ako, %i.ajg        ; 4 uses
  %i.akq = fmul <2 x float> %i.ako, %i.ajh        ; 4 uses
  %i.akr = fcmp olt <2 x float> %i.akp, %i.akq    ; 3 uses
  %i.aks = extractelement <2 x i1> %i.akr, i64 0
  %i.akt = extractelement <2 x float> %i.akp, i64 0
  %i.aku = extractelement <2 x float> %i.akq, i64 0
  %i.akv = select i1 %i.aks, float %i.aku, float %i.akt ; 2 uses
  %i.akw = fcmp olt float %i.akn, %i.akv
  %i.akx = select i1 %i.akw, float %i.akv, float %i.akn
  %i.aky = select <2 x i1> %i.akj, <2 x float> %i.akh, <2 x float> %i.aki ; 2 uses
  %i.akz = select <2 x i1> %i.akr, <2 x float> %i.akp, <2 x float> %i.akq ; 2 uses
  %i.ala = fcmp olt <2 x float> %i.aky, %i.akz
  %i.alb = select <2 x i1> %i.ala, <2 x float> %i.aky, <2 x float> %i.akz
  %i.alc = shufflevector <2 x i1> %i.ajn, <2 x i1> %i.akj, <2 x i32> <i32 1, i32 3>
  %i.ald = shufflevector <2 x float> %i.ajm, <2 x float> %i.aki, <2 x i32> <i32 1, i32 3>
  %i.ale = shufflevector <2 x float> %i.ajl, <2 x float> %i.akh, <2 x i32> <i32 1, i32 3>
  %i.alf = select <2 x i1> %i.alc, <2 x float> %i.ald, <2 x float> %i.ale ; 2 uses
  %i.alg = shufflevector <2 x i1> %i.ajv, <2 x i1> %i.akr, <2 x i32> <i32 1, i32 3>
  %i.alh = shufflevector <2 x float> %i.aju, <2 x float> %i.akq, <2 x i32> <i32 1, i32 3>
  %i.ali = shufflevector <2 x float> %i.ajt, <2 x float> %i.akp, <2 x i32> <i32 1, i32 3>
  %i.alj = select <2 x i1> %i.alg, <2 x float> %i.alh, <2 x float> %i.ali ; 2 uses
  %i.alk = fcmp olt <2 x float> %i.alf, %i.alj
  %i.all = select <2 x i1> %i.alk, <2 x float> %i.alj, <2 x float> %i.alf ; 2 uses
  %i.alm = fadd float %i.akb, %i.akx
  %i.aln = fadd <2 x float> %i.akf, %i.alb
  %shift3550 = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3551 = fadd <2 x float> %i.all, %shift3550
  %i.alo = extractelement <2 x float> %foldExtExtBinop3551, i64 0
  %i.alp = fadd float %.sroa.02139.0.vec.extract, %i.alm ; 2 uses
  %i.alq = shufflevector <4 x float> %i.ahv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.alr = fadd <2 x float> %i.alq, %i.aln        ; 3 uses
  %i.als = fadd float %.sroa.02139.4.vec.extract, %i.alo ; 2 uses
  %i.alt = extractelement <2 x float> %i.alr, i64 0 ; 2 uses
  %i.alu = fcmp olt float %i.alt, %i.wy
  %i.alv = select i1 %i.alu, float %i.wy, float %i.alt
  %i.alw = fcmp olt float %i.alp, %i.wz           ; 2 uses
  %i.alx = select i1 %i.alw, float %i.alp, float %i.wz
  %i.aly = extractelement <2 x float> %i.alr, i64 1 ; 2 uses
  %i.alz = fcmp olt float %i.aly, %i.aeh
  %i.ama = select i1 %i.alz, float %i.aeh, float %i.aly
  %i.amb = fcmp olt float %i.als, %i.aei          ; 2 uses
  %i.amc = select i1 %i.amb, float %i.als, float %i.aei
  %i.amd = fcmp ogt float %i.alv, %i.alx
  %i.ame = fcmp ogt float %i.ama, %i.amc
  %or.cond = select i1 %i.amd, i1 true, i1 %i.ame, !prof !16
  br i1 %or.cond, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, !prof !16

_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i: ; preds = %bb.r
  %i.amf = shufflevector <2 x float> %i.wx, <2 x float> %i.aeg, <2 x i32> <i32 0, i32 2>
  %i.amg = fcmp ogt <2 x float> %i.alr, %i.amf    ; 2 uses
  %i.amh = extractelement <2 x i1> %i.amg, i64 0
  %i.ami = and i1 %i.amh, %i.alw
  %i.amj = extractelement <2 x i1> %i.amg, i64 1
  %i.amk = select i1 %i.ami, i1 %i.amj, i1 false
  %i.aml = select i1 %i.amk, i1 %i.amb, i1 false
  %.demorgan.i = or i1 %i.xf, %i.aml
  br i1 %.demorgan.i, label %.critedge.i50, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit.thread.backedge, !prof !14

bb.s:                                             ; preds = %.critedge.i50
  %i.amm = add nuw nsw i64 %.026.i3422, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.amm, 200
  br i1 %exitcond.not, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i50, !llvm.loop !10460

.critedge.i50:                                    ; preds = %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i, %bb.s
  %.026.i3422 = phi i64 [ %i.amm, %bb.s ], [ 0, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ]
  %.sroa.03067.03421 = phi <4 x float> [ %i.anu, %bb.s ], [ %i.ahv, %_ZN6embree6subsetIfEEbRKNS_4Vec2INS_8IntervalIT_EEEES7_.exit.i ] ; 6 uses
  %.sroa.03067.0.vec.extract = extractelement <4 x float> %.sroa.03067.03421, i64 0 ; 2 uses
  %i.amn = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract ; 4 uses
  %i.amo = fmul float %i.amn, %i.amn              ; 2 uses
  %i.amp = fmul float %i.amn, %i.amo
  %i.amq = fmul float %.sroa.03067.0.vec.extract, 3.000000e+00
  %i.amr = fmul float %i.amq, %i.amo
  %foldExtExtBinop3553 = fmul <4 x float> %.sroa.03067.03421, %.sroa.03067.03421 ; 2 uses
  %i.ams = extractelement <4 x float> %foldExtExtBinop3553, i64 0
  %i.amt = fmul float %i.ams, 3.000000e+00
  %i.amu = fmul float %i.amn, %i.amt
  %foldExtExtBinop3555 = fmul <4 x float> %.sroa.03067.03421, %foldExtExtBinop3553
  %i.amv = insertelement <4 x float> poison, float %i.amp, i64 0
  %i.amw = shufflevector <4 x float> %i.amv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amx = insertelement <4 x float> poison, float %i.amr, i64 0
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amz = insertelement <4 x float> poison, float %i.amu, i64 0
  %i.ana = shufflevector <4 x float> %i.amz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anb = shufflevector <4 x float> %foldExtExtBinop3555, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anc = fmul <4 x float> %i.ul, %i.anb
  %i.and = fmul <4 x float> %i.uk, %i.ana
  %i.ane = fadd <4 x float> %i.anc, %i.and
  %i.anf = fmul <4 x float> %i.uj, %i.amy
  %i.ang = fadd <4 x float> %i.anf, %i.ane
  %i.anh = fmul <4 x float> %i.ui, %i.amw
  %i.ani = fadd <4 x float> %i.anh, %i.ang        ; 2 uses
  %i.anj = shufflevector <4 x float> %i.ani, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ank = shufflevector <4 x float> %i.ani, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.anl = shufflevector <4 x float> %.sroa.03067.03421, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.anm = fsub <4 x float> %i.ank, %i.anj
  %i.ann = fmul <4 x float> %i.anl, %i.anm
  %i.ano = fadd <4 x float> %i.anj, %i.ann        ; 3 uses
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = fmul <4 x float> %i.aho, %i.anp
  %i.anr = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ans = fmul <4 x float> %i.ahp, %i.anr
  %i.ant = fadd <4 x float> %i.anq, %i.ans
  %i.anu = fsub <4 x float> %.sroa.03067.03421, %i.ant ; 9 uses
  %i.anv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ano) ; 2 uses
  %i.anw = extractelement <4 x float> %i.anv, i64 0 ; 2 uses
  %i.anx = extractelement <4 x float> %i.anv, i64 1 ; 2 uses
  %i.any = fcmp olt float %i.anw, %i.anx
  %i.anz = select i1 %i.any, float %i.anx, float %i.anw
  %i.aoa = fcmp uge float %i.anz, %i.vb
  br i1 %i.aoa, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.critedge.i50
  %.sroa.03067.0.vec.extract3070 = extractelement <4 x float> %i.anu, i64 0 ; 4 uses
  %.sroa.03067.4.vec.extract3072 = extractelement <4 x float> %i.anu, i64 1 ; 3 uses
  %i.aob = fcmp oge float %.sroa.03067.0.vec.extract3070, 0.000000e+00
  %i.aoc = fcmp ole float %.sroa.03067.0.vec.extract3070, 1.000000e+00
  %or.cond.i = and i1 %i.aob, %i.aoc
  br i1 %or.cond.i, label %bb.u, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.u:                                             ; preds = %bb.t
  %i.aod = fcmp oge float %.sroa.03067.4.vec.extract3072, 0.000000e+00
  %i.aoe = fcmp ole float %.sroa.03067.4.vec.extract3072, 1.000000e+00
  %or.cond4.i = and i1 %i.aod, %i.aoe
  br i1 %or.cond4.i, label %bb.v, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit

bb.v:                                             ; preds = %bb.u
  %i.aof = load float, ptr %i.gy, align 8, !noalias !10509
  %i.aog = load float, ptr %i.gz, align 8, !noalias !10509
  %i.aoh = load float, ptr %i.ha, align 8, !noalias !10509
  %i.aoi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aof, i64 0
  %i.aoj = insertelement <4 x float> %i.aoi, float %i.aog, i64 1
  %i.aok = insertelement <4 x float> %i.aoj, float %i.aoh, i64 2 ; 8 uses
  %i.aol = fmul <4 x float> %i.ro, %i.aok         ; 3 uses
  %i.aom = fmul <4 x float> %i.rx, %i.aok         ; 3 uses
  %i.aon = fmul <4 x float> %i.sg, %i.aok         ; 3 uses
  %i.aoo = fmul <4 x float> %i.sp, %i.aok         ; 3 uses
  %i.aop = fmul <4 x float> %i.sy, %i.aok         ; 3 uses
  %i.aoq = fmul <4 x float> %i.th, %i.aok         ; 3 uses
  %i.aor = fmul <4 x float> %i.tq, %i.aok         ; 3 uses
  %i.aos = fmul <4 x float> %i.tz, %i.aok         ; 3 uses
  %i.aot = fsub float 1.000000e+00, %.sroa.03067.4.vec.extract3072
  %i.aou = shufflevector <4 x float> %i.anu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aov = shufflevector <4 x float> %i.aop, <4 x float> %i.aoq, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aow = shufflevector <4 x float> %i.aop, <4 x float> %i.aoq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aox = shufflevector <4 x float> %i.aop, <4 x float> %i.aoq, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aoy = shufflevector <4 x float> %i.aov, <4 x float> %i.aor, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aoz = shufflevector <4 x float> %i.aow, <4 x float> %i.aor, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apa = shufflevector <4 x float> %i.aox, <4 x float> %i.aor, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.apb = shufflevector <4 x float> %i.aoy, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apc = shufflevector <4 x float> %i.aoz, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apd = shufflevector <4 x float> %i.apa, <4 x float> %i.aos, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ape = fadd <4 x float> %i.apc, %i.apd
  %i.apf = fadd <4 x float> %i.apb, %i.ape
  %i.apg = fmul <4 x float> %i.aou, %i.apf
  %i.aph = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.api = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apj = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.apk = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apl = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.apm = shufflevector <4 x float> %i.apj, <4 x float> %i.aon, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.apn = shufflevector <4 x float> %i.apk, <4 x float> %i.aon, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.apo = shufflevector <4 x float> %i.apl, <4 x float> %i.aon, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.app = shufflevector <4 x float> %i.apm, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.apq = shufflevector <4 x float> %i.apn, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apr = shufflevector <4 x float> %i.apo, <4 x float> %i.aoo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aps = fadd <4 x float> %i.apq, %i.apr
  %i.apt = fadd <4 x float> %i.app, %i.aps
  %i.apu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.api, <4 x float> %i.apt, <4 x float> %i.apg) ; 4 uses
  %i.apv = fsub float 1.000000e+00, %.sroa.03067.0.vec.extract3070 ; 5 uses
  %i.apw = fmul nnan float %i.apv, %i.apv         ; 2 uses
  %i.apx = fmul float %i.apv, %i.apw              ; 2 uses
  %i.apy = fmul nnan float %.sroa.03067.0.vec.extract3070, 3.000000e+00
  %i.apz = fmul float %i.apy, %i.apw              ; 2 uses
  %foldExtExtBinop3557 = fmul nnan <4 x float> %i.anu, %i.anu ; 2 uses
  %i.aqa = extractelement <4 x float> %foldExtExtBinop3557, i64 0
  %i.aqb = fmul nnan float %i.aqa, 3.000000e+00
  %i.aqc = fmul float %i.apv, %i.aqb              ; 2 uses
  %foldExtExtBinop3559 = fmul <4 x float> %i.anu, %foldExtExtBinop3557 ; 2 uses
  %shift3561 = shufflevector <4 x float> %i.apu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3562 = fmul <4 x float> %foldExtExtBinop3559, %shift3561
  %i.aqd = extractelement <4 x float> %foldExtExtBinop3562, i64 0
  %i.aqe = extractelement <4 x float> %i.apu, i64 2
  %i.aqf = call noundef float @llvm.fmuladd.f32(float %i.aqc, float %i.aqe, float %i.aqd)
  %i.aqg = extractelement <4 x float> %i.apu, i64 1
  %i.aqh = call noundef float @llvm.fmuladd.f32(float %i.apz, float %i.aqg, float %i.aqf)
  %i.aqi = extractelement <4 x float> %i.apu, i64 0
  %i.aqj = call noundef float @llvm.fmuladd.f32(float %i.apx, float %i.aqi, float %i.aqh) ; 3 uses
  %i.aqk = fcmp ugt float %i.la, %i.aqj
  br i1 %i.aqk, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aql = load float, ptr %i.gb, align 4         ; 2 uses
  %i.aqm = fcmp ugt float %i.aqj, %i.aql
  br i1 %i.aqm, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aqn = shufflevector <4 x float> %i.anu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.aqo = fsub <4 x float> splat (float 1.000000e+00), %i.aqn ; 4 uses
  %i.aqp = fmul <4 x float> %i.qu, %i.aqn
  %i.aqq = fmul <4 x float> %i.rl, %i.aqn
  %i.aqr = fmul <4 x float> %i.rn, %i.aqn
  %i.aqs = fmul <4 x float> %i.re, %i.aqn
  %i.aqt = fmul <4 x float> %i.qo, %i.aqo
  %i.aqu = fadd <4 x float> %i.aqp, %i.aqt
  %i.aqv = fmul <4 x float> %i.rh, %i.aqo
  %i.aqw = fadd <4 x float> %i.aqq, %i.aqv        ; 2 uses
  %i.aqx = fmul <4 x float> %i.rj, %i.aqo
  %i.aqy = fadd <4 x float> %i.aqr, %i.aqx        ; 2 uses
  %i.aqz = fmul <4 x float> %i.qy, %i.aqo
  %i.ara = fadd <4 x float> %i.aqs, %i.aqz
  %i.arb = fsub <4 x float> %i.aqw, %i.aqu
  %i.arc = fsub <4 x float> %i.aqy, %i.aqw        ; 2 uses
  %i.ard = fsub <4 x float> %i.ara, %i.aqy
  %i.are = shufflevector <4 x float> %i.anu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.arf = fmul <4 x float> %i.are, %i.arc
  %i.arg = insertelement <4 x float> poison, float %i.apv, i64 0
  %i.arh = shufflevector <4 x float> %i.arg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ari = fmul <4 x float> %i.arh, %i.arb
  %i.arj = fadd <4 x float> %i.ari, %i.arf
  %i.ark = fmul <4 x float> %i.are, %i.ard
  %i.arl = fmul <4 x float> %i.arh, %i.arc
  %i.arm = fadd <4 x float> %i.arl, %i.ark
  %i.arn = fmul <4 x float> %i.are, %i.arm
  %i.aro = fmul <4 x float> %i.arh, %i.arj
  %i.arp = fadd <4 x float> %i.aro, %i.arn
  %i.arq = fmul <4 x float> %i.arp, splat (float 3.000000e+00) ; 2 uses
  %i.arr = shufflevector <4 x float> %foldExtExtBinop3559, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ars = fmul <4 x float> %i.vv, %i.arr
  %i.art = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aru = shufflevector <4 x float> %i.art, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arv = fmul <4 x float> %i.vu, %i.aru
  %i.arw = fadd <4 x float> %i.ars, %i.arv
  %i.arx = insertelement <4 x float> poison, float %i.apz, i64 0
  %i.ary = shufflevector <4 x float> %i.arx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arz = fmul <4 x float> %i.vt, %i.ary
  %i.asa = fadd <4 x float> %i.arz, %i.arw
  %i.asb = insertelement <4 x float> poison, float %i.apx, i64 0
  %i.asc = shufflevector <4 x float> %i.asb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asd = fmul <4 x float> %i.vs, %i.asc
  %i.ase = fadd <4 x float> %i.asd, %i.asa        ; 2 uses
  %i.asf = shufflevector <4 x float> %i.ase, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.asg = shufflevector <4 x float> %i.arq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ash = fmul <4 x float> %i.ase, %i.asg
  %i.asi = fmul <4 x float> %i.arq, %i.asf
  %i.asj = fsub <4 x float> %i.asi, %i.ash        ; 3 uses
  %i.ask = load ptr, ptr %3, align 8
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 488
  %i.asm = load ptr, ptr %i.asl, align 8
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.ic
  %i.aso = load ptr, ptr %i.asn, align 8          ; 5 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 52
  %i.asq = load i32, ptr %i.asp, align 4
  %i.asr = load i32, ptr %i.hc, align 4
  %i.ass = and i32 %i.asr, %i.asq
  %i.ast = icmp eq i32 %i.ass, 0
  br i1 %i.ast, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.asu = load ptr, ptr %i.hd, align 8
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8
  %.not3413 = icmp eq ptr %i.asw, null
  br i1 %.not3413, label %bb.z, label %.critedge.i.i, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aso, i64 72
  %i.asy = load ptr, ptr %i.asx, align 8
  %.not3414 = icmp eq ptr %i.asy, null
  br i1 %.not3414, label %_ZN6embree4sse241TensorLinearCubicBezierSurfaceIntersectorINS0_26OrientedCurve1IntersectorKINS_16CatmullRomCurveTELi4EE4Ray1ENS0_17Occluded1KEpilog1ILi4ELb1EEELi3ELi4EE14solve_krawczykEbRNS_4BBoxIfEESB_.exit, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.asz = load ptr, ptr %i.he, align 8           ; 2 uses
  %i.ata = shufflevector <4 x float> %i.asj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atb = shufflevector <4 x float> %i.asj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.atc = shufflevector <4 x float> %i.asj, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ata, ptr %7, align 16
  store <4 x float> %i.atb, ptr %i.hf, align 16
  store <4 x float> %i.atc, ptr %i.hg, align 16
  store <4 x float> %i.are, ptr %i.hh, align 16
  store <4 x float> %i.aqn, ptr %i.hi, align 16
  store <4 x i32> %i.vz, ptr %i.hj, align 16
  store <4 x i32> %i.vx, ptr %i.hk, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.atd = load i32, ptr %i.asz, align 4
  %i.ate = insertelement <4 x i32> poison, i32 %i.atd, i64 0
  %i.atf = shufflevector <4 x i32> %i.ate, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atf, ptr %.ptr12.i.i.i, align 16
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.ath = load i32, ptr %i.atg, align 4
  %i.ati = insertelement <4 x i32> poison, i32 %i.ath, i64 0
  %i.atj = shufflevector <4 x i32> %i.ati, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.atj, ptr %.ptr17.i.i.i, align 16
  store float %i.aqj, ptr %i.gb, align 4
  %i.atk = load <2 x i64>, ptr %i.ho, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !10510
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !10510
  store <2 x i64> %i.atk, ptr %6, align 16, !noalias !10510
  store ptr %6, ptr %5, align 8, !noalias !10510
  %i.atl = getelementptr inbounds nuw i8, ptr %i.aso, i64 24
  %i.atm = load ptr, ptr %i.atl, align 8, !noalias !10510
  store ptr %i.atm, ptr %i.hp, align 8, !noalias !10510
  %i.atn = load ptr, ptr %i.he, align 8, !noalias !10510
  store ptr %i.atn, ptr %i.hq, align 8, !noalias !10510
  store ptr %1, ptr %i.hr, align 8, !noalias !10510
  store ptr %7, ptr %i.hs, align 8, !noalias !10510
  store i32 4, ptr %i.ht, align 8, !noalias !10510
  %i.ato = getelementptr inbounds nuw i8, ptr %i.aso, i64 72
  %i.atp = load ptr, ptr %i.ato, align 8, !noalias !10511 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.atp, null
  %i.atq = bitcast <2 x i64> %i.atk to <4 x i32>
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i
  call void %i.atp(ptr noundef nonnull %5), !noalias !10511, !inline_history !10467
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !10512
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i.i
  %i.atr = phi <4 x i32> [ %.pre, %bb.aa ], [ %i.atq, %.critedge.i.i ] ; 3 uses
  %i.ats = icmp ne <4 x i32> %i.atr, zeroinitializer ; 2 uses
  %i.att = bitcast <4 x i1> %i.ats to i4
  %i.atu = icmp eq i4 %i.att, 0
  br i1 %i.atu, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.atv = load ptr, ptr %i.hd, align 8, !noalias !10511 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 16
  %i.atx = load ptr, ptr %i.atw, align 8, !noalias !10511 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.atx, null
  br i1 %.not14.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aty = load i32, ptr %i.atv, align 8, !noalias !10511
  %i.atz = and i32 %i.aty, 2
  %.not3415 = icmp eq i32 %i.atz, 0
  br i1 %.not3415, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aso, i64 60
  %i.aub = load i32, ptr %i.aua, align 4, !noalias !10511
  %i.auc = and i32 %i.aub, 4194304
  %.not3416 = icmp eq i32 %i.auc, 0
  br i1 %.not3416, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void %i.atx(ptr noundef nonnull %5), !noalias !10511, !inline_history !10467
  %.pre3473 = load <4 x i32>, ptr %6, align 16, !noalias !10513
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.aud = phi <4 x i32> [ %.pre3473, %bb.af ], [ %i.atr, %bb.ae ], [ %i.atr, %bb.ac ]
  %i.aue = icmp ne <4 x i32> %i.aud, zeroinitializer ; 2 uses
  %i.auf = load ptr, ptr %i.hr, align 8, !noalias !10511
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 128 ; 2 uses
  %i.auh = load <4 x float>, ptr %i.aug, align 16, !noalias !10514
  %i.aui = select <4 x i1> %i.aue, <4 x float> splat (float -inf), <4 x float> %i.auh
  store <4 x float> %i.aui, ptr %i.aug, align 16, !noalias !10511
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.ag, %bb.ab
  %.sroa.03084.0.in.in = phi <4 x i1> [ %i.ats, %bb.ab ], [ %i.aue, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !10510
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !10510
  %i.auj = bitcast <4 x i1> %.sroa.03084.0.in.in to i4
  %i.auk = icmp ne i4 %i.auj, 0                   ; 2 uses
  br i1 %i.auk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  store float %i.aql, ptr %i.gb, align 4
end_hunk_15
