Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %sqrtf.i.us.us.i = call float @sqrtf(float noundef %i.cib) #39 ; 2 uses
  %i.cid = fneg float %i.cht
  %i.cie = fmul float %i.cek, 2.000000e+00
  %i.cif = fsub float %sqrtf.i.us.us.i, %i.cht
  %i.cig = fsub float %i.cid, %sqrtf.i.us.us.i
  %i.cih = insertelement <2 x float> poison, float %i.cie, i64 0
  %i.cii = shufflevector <2 x float> %i.cih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cij = insertelement <2 x float> poison, float %i.cig, i64 0
  %i.cik = insertelement <2 x float> %i.cij, float %i.cif, i64 1
  %i.cil = fdiv <2 x float> %i.cik, %i.cii        ; 2 uses
  %i.cim = extractelement <2 x float> %i.cil, i64 0
  %i.cin = extractelement <2 x float> %i.cil, i64 1
  br label %stbtt__solve_cubic.exit.i.us.us.i

bb.ol:                                            ; preds = %bb.oi
  %i.cio = call float @llvm.fabs.f32(float %i.cht)
  %i.cip = fcmp ult float %i.cio, f0x35800000
  br i1 %i.cip, label %stbtt__solve_cubic.exit.i.us.us.i, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.ciq = fneg float %i.chv
  %i.cir = fdiv float %i.ciq, %i.cht
  br label %stbtt__solve_cubic.exit.i.us.us.i

stbtt__solve_cubic.exit.i.us.us.i:                ; preds = %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oh, %stbtt__cuberoot.exit49.i.i.us.us.i
  %.sroa.0.0.i.us.us.i = phi float [ 0.000000e+00, %bb.ol ], [ %i.cir, %bb.om ], [ 0.000000e+00, %bb.oj ], [ %i.cim, %bb.ok ], [ %i.chj, %bb.oh ], [ %i.cgp, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %.sroa.8.0.i.us.us.i = phi float [ 0.000000e+00, %bb.ol ], [ 0.000000e+00, %bb.om ], [ 0.000000e+00, %bb.oj ], [ %i.cin, %bb.ok ], [ %i.chm, %bb.oh ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %.sroa.11.0.i.us.us.i = phi float [ 0.000000e+00, %bb.ol ], [ 0.000000e+00, %bb.om ], [ 0.000000e+00, %bb.oj ], [ 0.000000e+00, %bb.ok ], [ %i.cho, %bb.oh ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %i.cis = phi i1 [ false, %bb.ol ], [ true, %bb.om ], [ false, %bb.oj ], [ true, %bb.ok ], [ true, %bb.oh ], [ true, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.cit = phi i1 [ false, %bb.ol ], [ false, %bb.om ], [ false, %bb.oj ], [ true, %bb.ok ], [ true, %bb.oh ], [ false, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.ciu = phi i1 [ false, %bb.ol ], [ false, %bb.om ], [ false, %bb.oj ], [ false, %bb.ok ], [ true, %bb.oh ], [ false, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.civ = fmul float %i.cee, %i.cee
  %i.ciw = call float @llvm.fmuladd.f32(float %i.ced, float %i.ced, float %i.civ) ; 2 uses
  %i.cix = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.ciy = fcmp olt float %i.ciw, %i.cix
  %sqrt481.i.us.us.i = call float @llvm.sqrt.f32(float %i.ciw)
  %.4.i.us.us.i = select i1 %i.ciy, float %sqrt481.i.us.us.i, float %.0428489.i.us.us.i ; 4 uses
  %i.ciz = fcmp oge float %.sroa.0.0.i.us.us.i, 0.000000e+00
  %i.cja = fcmp ole float %.sroa.0.0.i.us.us.i, 1.000000e+00
  %i.cjb = and i1 %i.ciz, %i.cja
  %or.cond7.i.us.us.i = select i1 %i.cis, i1 %i.cjb, i1 false
  br i1 %or.cond7.i.us.us.i, label %bb.on, label %bb.op

bb.on:                                            ; preds = %stbtt__solve_cubic.exit.i.us.us.i
  %i.cjc = fsub float 1.000000e+00, %.sroa.0.0.i.us.us.i ; 3 uses
  %i.cjd = fmul float %i.cjc, %i.cjc              ; 2 uses
  %i.cje = fmul nnan float %.sroa.0.0.i.us.us.i, 2.000000e+00
  %i.cjf = fmul float %i.cje, %i.cjc              ; 2 uses
  %i.cjg = fmul float %i.cds, %i.cjf
  %i.cjh = call float @llvm.fmuladd.f32(float %i.cjd, float %i.cdr, float %i.cjg)
  %i.cji = fmul nnan float %.sroa.0.0.i.us.us.i, %.sroa.0.0.i.us.us.i ; 2 uses
  %i.cjj = call float @llvm.fmuladd.f32(float %i.cji, float %i.cdy, float %i.cjh)
  %i.cjk = fmul float %i.cdv, %i.cjf
  %i.cjl = call float @llvm.fmuladd.f32(float %i.cjd, float %i.cdu, float %i.cjk)
  %i.cjm = call float @llvm.fmuladd.f32(float %i.cji, float %i.ceb, float %i.cjl)
  %i.cjn = fsub float %i.cjj, %i.bvr              ; 2 uses
  %i.cjo = fsub float %i.cjm, %i.bvi              ; 2 uses
  %i.cjp = fmul float %i.cjo, %i.cjo
  %i.cjq = call float @llvm.fmuladd.f32(float %i.cjn, float %i.cjn, float %i.cjp) ; 2 uses
  %i.cjr = fmul float %.4.i.us.us.i, %.4.i.us.us.i
  %i.cjs = fcmp olt float %i.cjq, %i.cjr
  br i1 %i.cjs, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  %sqrt482.i.us.us.i = call float @llvm.sqrt.f32(float %i.cjq)
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on, %stbtt__solve_cubic.exit.i.us.us.i
  %.5.i.us.us.i = phi float [ %sqrt482.i.us.us.i, %bb.oo ], [ %.4.i.us.us.i, %bb.on ], [ %.4.i.us.us.i, %stbtt__solve_cubic.exit.i.us.us.i ] ; 4 uses
  %i.cjt = fcmp oge float %.sroa.8.0.i.us.us.i, 0.000000e+00
  %i.cju = fcmp ole float %.sroa.8.0.i.us.us.i, 1.000000e+00
  %i.cjv = and i1 %i.cjt, %i.cju
  %or.cond13.i.us.us.i = select i1 %i.cit, i1 %i.cjv, i1 false
  br i1 %or.cond13.i.us.us.i, label %bb.oq, label %bb.os

bb.oq:                                            ; preds = %bb.op
  %i.cjw = fsub float 1.000000e+00, %.sroa.8.0.i.us.us.i ; 3 uses
  %i.cjx = fmul float %i.cjw, %i.cjw              ; 2 uses
  %i.cjy = fmul nnan float %.sroa.8.0.i.us.us.i, 2.000000e+00
  %i.cjz = fmul float %i.cjy, %i.cjw              ; 2 uses
  %i.cka = fmul float %i.cds, %i.cjz
  %i.ckb = call float @llvm.fmuladd.f32(float %i.cjx, float %i.cdr, float %i.cka)
  %i.ckc = fmul nnan float %.sroa.8.0.i.us.us.i, %.sroa.8.0.i.us.us.i ; 2 uses
  %i.ckd = call float @llvm.fmuladd.f32(float %i.ckc, float %i.cdy, float %i.ckb)
  %i.cke = fmul float %i.cdv, %i.cjz
  %i.ckf = call float @llvm.fmuladd.f32(float %i.cjx, float %i.cdu, float %i.cke)
  %i.ckg = call float @llvm.fmuladd.f32(float %i.ckc, float %i.ceb, float %i.ckf)
  %i.ckh = fsub float %i.ckd, %i.bvr              ; 2 uses
  %i.cki = fsub float %i.ckg, %i.bvi              ; 2 uses
  %i.ckj = fmul float %i.cki, %i.cki
  %i.ckk = call float @llvm.fmuladd.f32(float %i.ckh, float %i.ckh, float %i.ckj) ; 2 uses
  %i.ckl = fmul float %.5.i.us.us.i, %.5.i.us.us.i
  %i.ckm = fcmp olt float %i.ckk, %i.ckl
  br i1 %i.ckm, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %sqrt483.i.us.us.i = call float @llvm.sqrt.f32(float %i.ckk)
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq, %bb.op
  %.6.i.us.us.i = phi float [ %sqrt483.i.us.us.i, %bb.or ], [ %.5.i.us.us.i, %bb.oq ], [ %.5.i.us.us.i, %bb.op ] ; 4 uses
  %i.ckn = fcmp oge float %.sroa.11.0.i.us.us.i, 0.000000e+00
  %i.cko = fcmp ole float %.sroa.11.0.i.us.us.i, 1.000000e+00
  %i.ckp = and i1 %i.ckn, %i.cko
  %or.cond19.i.us.us.i = select i1 %i.ciu, i1 %i.ckp, i1 false
  br i1 %or.cond19.i.us.us.i, label %bb.ot, label %.thread.i.us.us.i

bb.ot:                                            ; preds = %bb.os
  %i.ckq = fsub float 1.000000e+00, %.sroa.11.0.i.us.us.i ; 3 uses
  %i.ckr = fmul float %i.ckq, %i.ckq              ; 2 uses
  %i.cks = fmul nnan float %.sroa.11.0.i.us.us.i, 2.000000e+00
  %i.ckt = fmul float %i.cks, %i.ckq              ; 2 uses
  %i.cku = fmul float %i.cds, %i.ckt
  %i.ckv = call float @llvm.fmuladd.f32(float %i.ckr, float %i.cdr, float %i.cku)
  %i.ckw = fmul nnan float %.sroa.11.0.i.us.us.i, %.sroa.11.0.i.us.us.i ; 2 uses
  %i.ckx = call float @llvm.fmuladd.f32(float %i.ckw, float %i.cdy, float %i.ckv)
  %i.cky = fmul float %i.cdv, %i.ckt
  %i.ckz = call float @llvm.fmuladd.f32(float %i.ckr, float %i.cdu, float %i.cky)
  %i.cla = call float @llvm.fmuladd.f32(float %i.ckw, float %i.ceb, float %i.ckz)
  %i.clb = fsub float %i.ckx, %i.bvr              ; 2 uses
  %i.clc = fsub float %i.cla, %i.bvi              ; 2 uses
  %i.cld = fmul float %i.clc, %i.clc
  %i.cle = call float @llvm.fmuladd.f32(float %i.clb, float %i.clb, float %i.cld) ; 2 uses
  %i.clf = fmul float %.6.i.us.us.i, %.6.i.us.us.i
  %i.clg = fcmp olt float %i.cle, %i.clf
  br i1 %i.clg, label %bb.ou, label %.thread.i.us.us.i

bb.ou:                                            ; preds = %bb.ot
  %sqrt484.i.us.us.i = call float @llvm.sqrt.f32(float %i.cle)
  br label %.thread.i.us.us.i

bb.ov:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %indvars.iv497.i.us.us.i
  %i.cli = load float, ptr %i.clh, align 4        ; 2 uses
  %i.clj = fcmp une float %i.cli, 0.000000e+00
  br i1 %i.clj, label %bb.ow, label %.thread.i.us.us.i

bb.ow:                                            ; preds = %bb.ov
  %i.clk = getelementptr i8, ptr %i.ccg, i64 -14
  %i.cll = load <2 x i16>, ptr %i.clk, align 2
  %i.clm = sitofp <2 x i16> %i.cll to <2 x float> ; 2 uses
  %i.cln = extractelement <2 x float> %i.clm, i64 0
  %i.clo = fmul float %i.yc, %i.cln
  %i.clp = extractelement <2 x float> %i.clm, i64 1
  %i.clq = fmul float %i.clp, %i.yu
  %i.clr = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.cls = shufflevector <2 x float> %i.ccj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.clt = insertelement <2 x float> %i.cls, float %i.clq, i64 1
  %i.clu = insertelement <2 x float> %i.ccj, float %i.bvi, i64 0
  %i.clv = fsub <2 x float> %i.clt, %i.clu        ; 5 uses
  %i.clw = insertelement <2 x float> %i.ccj, float %i.clo, i64 1
  %i.clx = shufflevector <2 x float> %i.ccj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cly = insertelement <2 x float> %i.clx, float %i.bvr, i64 0
  %i.clz = fsub <2 x float> %i.clw, %i.cly        ; 5 uses
  %i.cma = fneg <2 x float> %i.clz
  %i.cmb = shufflevector <2 x float> %i.clv, <2 x float> %i.cma, <2 x i32> <i32 0, i32 2>
  %i.cmc = fmul <2 x float> %i.clv, %i.cmb
  %i.cmd = shufflevector <2 x float> %i.clz, <2 x float> %i.clv, <2 x i32> <i32 0, i32 2>
  %i.cme = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clz, <2 x float> %i.cmd, <2 x float> %i.cmc) ; 2 uses
  %i.cmf = extractelement <2 x float> %i.cme, i64 0 ; 2 uses
  %i.cmg = fcmp olt float %i.cmf, %i.clr
  %sqrt480.i.us.us.i = call float @llvm.sqrt.f32(float %i.cmf)
  %.1429.i.us.us.i = select i1 %i.cmg, float %sqrt480.i.us.us.i, float %.0428489.i.us.us.i ; 3 uses
  %i.cmh = extractelement <2 x float> %i.cme, i64 1
  %i.cmi = call float @llvm.fabs.f32(float %i.cmh)
  %i.cmj = fmul float %i.cli, %i.cmi              ; 2 uses
  %i.cmk = fcmp olt float %i.cmj, %.1429.i.us.us.i
  br i1 %i.cmk, label %bb.ox, label %.thread.i.us.us.i

bb.ox:                                            ; preds = %bb.ow
  %i.cml = shufflevector <2 x float> %i.clv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cmm = fmul <2 x float> %i.cml, %i.clv
  %i.cmn = shufflevector <2 x float> %i.clz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cmo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cmn, <2 x float> %i.clz, <2 x float> %i.cmm) ; 2 uses
  %i.cmp = extractelement <2 x float> %i.cmo, i64 0
  %i.cmq = fneg float %i.cmp
  %i.cmr = extractelement <2 x float> %i.cmo, i64 1
  %i.cms = fdiv float %i.cmq, %i.cmr              ; 2 uses
  %i.cmt = fcmp oge float %i.cms, 0.000000e+00
  %i.cmu = fcmp ole float %i.cms, 1.000000e+00
  %or.cond.i.us.us.i = and i1 %i.cmt, %i.cmu
  %.2430.i.us.us.i = select i1 %or.cond.i.us.us.i, float %i.cmj, float %.1429.i.us.us.i
  br label %.thread.i.us.us.i

.thread.i.us.us.i:                                ; preds = %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.nz, %.lr.ph490.i.us.us.i
  %.9.i.us.us.i = phi float [ %.0428489.i.us.us.i, %.lr.ph490.i.us.us.i ], [ %.1429.i.us.us.i, %bb.ow ], [ %.2430.i.us.us.i, %bb.ox ], [ %.6.i.us.us.i, %bb.os ], [ %.0428489.i.us.us.i, %bb.nz ], [ %sqrt484.i.us.us.i, %bb.ou ], [ %.6.i.us.us.i, %bb.ot ], [ %.0428489.i.us.us.i, %bb.ov ] ; 3 uses
  %indvars.iv.next498.i.us.us.i = add nuw nsw i64 %indvars.iv497.i.us.us.i, 1 ; 2 uses
  %exitcond501.not.i.us.us.i = icmp eq i64 %indvars.iv.next498.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond501.not.i.us.us.i, label %._crit_edge.i.us.us.i, label %.lr.ph490.i.us.us.i

._crit_edge.i.us.us.i:                            ; preds = %.thread.i.us.us.i
  %i.cmv = icmp eq i32 %.9.i.fr.i.us.us.i, 0
  %i.cmw = fneg float %.9.i.us.us.i
  %i.cmx = select i1 %i.cmv, float %i.cmw, float %.9.i.us.us.i
  %i.cmy = call float @llvm.fmuladd.f32(float %i.cmx, float 6.400000e+01, float 1.280000e+02) ; 3 uses
  %i.cmz = fcmp olt float %i.cmy, 0.000000e+00
  br i1 %i.cmz, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %._crit_edge.i.us.us.i
  %i.cna = fcmp ogt float %i.cmy, 2.550000e+02
  br i1 %i.cna, label %10, label %bb.oz

10:                                               ; preds = %bb.oy
  br label %bb.oz

bb.oz:                                            ; preds = %10, %bb.oy, %._crit_edge.i.us.us.i
  %.0431.i.us.us.i = phi float [ %i.cmy, %bb.oy ], [ 2.550000e+02, %10 ], [ 0.000000e+00, %._crit_edge.i.us.us.i ]
  %11 = fptoui float %.0431.i.us.us.i to i8
  %i.cnb = add i32 %.reass.i.us.i, %i.bvp
  %i.cnc = sext i32 %i.cnb to i64
  %i.cnd = getelementptr inbounds i8, ptr %i.buh, i64 %i.cnc
  store i8 %11, ptr %i.cnd, align 1
  %indvars.iv.next503.i.us.us.i = add nuw nsw i64 %indvars.iv502.i.us.us.i, 1 ; 2 uses
  %lftr.wideiv.i.us.us.i = trunc i64 %indvars.iv.next503.i.us.us.i to i32
  %exitcond505.not.i.us.us.i = icmp eq i32 %i.bua, %lftr.wideiv.i.us.us.i
  br i1 %exitcond505.not.i.us.us.i, label %._crit_edge493.i.split.us.us.i, label %bb.nd

._crit_edge493.i.split.us.us.i:                   ; preds = %bb.oz
  %i.cne = add nsw i32 %.0435494.i.us.i, 1        ; 2 uses
  %exitcond506.not.i.us.i = icmp eq i32 %i.cne, %i.bub
  br i1 %exitcond506.not.i.us.i, label %._crit_edge495.split.i.i, label %.preheader.i.us.i

bb.pa:                                            ; preds = %bb.pe, %.lr.ph.i.i157
  %indvars.iv.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i161, %bb.pe ] ; 4 uses
  %.0432487.i.i = phi i64 [ %i.bun, %.lr.ph.i.i157 ], [ %indvars.iv.i.i159, %bb.pe ] ; 2 uses
  %i.cnf = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i159 ; 4 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 12
  %i.cnh = load i8, ptr %i.cng, align 2
  switch i8 %i.cnh, label %bb.pe [
    i8 2, label %bb.pb
    i8 3, label %bb.pc
  ]

bb.pb:                                            ; preds = %bb.pa
  %i.cni = load i16, ptr %i.cnf, align 2
  %i.cnj = sitofp i16 %i.cni to float
  %i.cnk = fmul float %i.yc, %i.cnj
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnf, i64 2
  %i.cnm = load i16, ptr %i.cnl, align 2
  %i.cnn = sitofp i16 %i.cnm to float
  %i.cno = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cnp = load i16, ptr %i.cno, align 2
  %i.cnq = sitofp i16 %i.cnp to float
  %i.cnr = fmul float %i.yc, %i.cnq
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cno, i64 2
  %i.cnt = load i16, ptr %i.cns, align 2
  %i.cnu = sitofp i16 %i.cnt to float
  %i.cnv = fsub float %i.cnr, %i.cnk              ; 2 uses
  %i.cnw = fmul float %i.yc, %i.cnn
  %i.cnx = fmul float %i.yc, %i.cnu
  %i.cny = fsub float %i.cnw, %i.cnx              ; 2 uses
  %i.cnz = fmul float %i.cny, %i.cny
  %i.coa = call float @llvm.fmuladd.f32(float %i.cnv, float %i.cnv, float %i.cnz)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.coa) ; 2 uses
  %i.cob = fcmp olt float %sqrt.i.i, f0x3A800000
  %i.coc = fdiv float 1.000000e+00, %sqrt.i.i
  %i.cod = select i1 %i.cob, float 0.000000e+00, float %i.coc
  br label %bb.pe

bb.pc:                                            ; preds = %bb.pa
  %i.coe = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cof = load i16, ptr %i.coe, align 2
  %i.cog = sitofp i16 %i.cof to float
  %i.coh = fmul float %i.yc, %i.cog
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coe, i64 2
  %i.coj = load i16, ptr %i.coi, align 2
  %i.cok = sitofp i16 %i.coj to float
  %i.col = load <4 x i16>, ptr %i.cnf, align 2
  %i.com = sitofp <4 x i16> %i.col to <4 x float> ; 4 uses
  %i.con = extractelement <4 x float> %i.com, i64 2
  %i.coo = fmul float %i.yc, %i.con
  %i.cop = extractelement <4 x float> %i.com, i64 3
  %i.coq = fmul float %i.cop, %i.yu
  %i.cor = extractelement <4 x float> %i.com, i64 0
  %i.cos = fmul float %i.yc, %i.cor
  %i.cot = extractelement <4 x float> %i.com, i64 1
  %i.cou = fmul float %i.cot, %i.yu
  %i.cov = call float @llvm.fmuladd.f32(float %i.coo, float -2.000000e+00, float %i.cos)
  %i.cow = fadd float %i.coh, %i.cov              ; 2 uses
  %i.cox = call float @llvm.fmuladd.f32(float %i.coq, float -2.000000e+00, float %i.cou)
  %i.coy = fmul float %i.yc, %i.cok
  %i.coz = fsub float %i.cox, %i.coy              ; 2 uses
  %i.cpa = fmul float %i.coz, %i.coz
  %i.cpb = call float @llvm.fmuladd.f32(float %i.cow, float %i.cow, float %i.cpa) ; 2 uses
  %i.cpc = fcmp ult float %i.cpb, f0x35800000
  br i1 %i.cpc, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.cpd = fdiv float 1.000000e+00, %i.cpb
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %bb.pb, %bb.pa
  %.sink.i.i160 = phi float [ %i.cpd, %bb.pd ], [ 0.000000e+00, %bb.pc ], [ %i.cod, %bb.pb ], [ 0.000000e+00, %bb.pa ]
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %indvars.iv.i.i159
  store float %.sink.i.i160, ptr %i.cpe, align 4
  %indvars.iv.next.i.i161 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i162 = icmp eq i64 %indvars.iv.next.i.i161, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i162, label %.preheader485.i.i, label %bb.pa

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge493.i.split.i
  %.0435494.i.i = phi i32 [ %i.ctk, %._crit_edge493.i.split.i ], [ %i.btz, %.preheader.i.i.preheader ] ; 3 uses
  %i.cpf = sitofp i32 %.0435494.i.i to float
  %i.cpg = fadd float %i.cpf, 5.000000e-01
  %i.cph = fdiv float %i.cpg, %i.yu
  %i.cpi = fpext float %i.cph to double
  %i.cpj = sub i32 %.0435494.i.i, %i.btz
  %i.cpk = mul i32 %i.cpj, %i.buc                 ; 11 uses
  %.reass.i.i = add i32 %i.cpk, %reass.sub.i.i    ; 15 uses
  %i.cpl = call double @fmod(double noundef %i.cpi, double noundef 1.000000e+00) #39 ; 2 uses
  %i.cpm = fcmp olt double %i.cpl, f0x3F847AE130000000
  br i1 %i.cpm, label %iter.check658, label %.preheader.i.split.split.i

iter.check658:                                    ; preds = %.preheader.i.i
  %i.cpn = add i32 %i.cpk, %i.bus
  %i.cpo = icmp slt i32 %i.cpn, %i.cpk
  %or.cond723 = or i1 %min.iters.check646, %i.cpo
  br i1 %or.cond723, label %._crit_edge.thread.i.us12.i.preheader, label %vector.main.loop.iter.check647

vector.main.loop.iter.check647:                   ; preds = %iter.check658
  br i1 %min.iters.check648, label %vec.epilog.ph662, label %vector.body651

vector.body651:                                   ; preds = %vector.main.loop.iter.check647, %vector.body651
  %index652 = phi i64 [ %index.next653, %vector.body651 ], [ 0, %vector.main.loop.iter.check647 ] ; 2 uses
  %i.cpp = trunc i64 %index652 to i32
  %i.cpq = add i32 %i.cpk, %i.cpp
  %i.cpr = sext i32 %i.cpq to i64
  %i.cps = getelementptr inbounds i8, ptr %i.buh, i64 %i.cpr ; 2 uses
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cps, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cps, align 1
  store <16 x i8> zeroinitializer, ptr %i.cpt, align 1
  %index.next653 = add nuw i64 %index652, 32      ; 2 uses
  %i.cpu = icmp eq i64 %index.next653, %n.vec650
  br i1 %i.cpu, label %middle.block654, label %vector.body651, !llvm.loop !30

middle.block654:                                  ; preds = %vector.body651
  br i1 %cmp.n655, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block654
  br i1 %min.epilog.iters.check661, label %._crit_edge.thread.i.us12.i.preheader, label %vec.epilog.ph662, !prof !31

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check647, %vec.epilog.iter.check660
  %vec.epilog.resume.val656 = phi i64 [ %n.vec650, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check647 ]
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph662
  %index665 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph662 ], [ %index.next666, %vec.epilog.vector.body664 ] ; 2 uses
  %i.cpv = trunc i64 %index665 to i32
  %i.cpw = add i32 %i.cpk, %i.cpv
  %i.cpx = sext i32 %i.cpw to i64
  %i.cpy = getelementptr inbounds i8, ptr %i.buh, i64 %i.cpx
  store <8 x i8> zeroinitializer, ptr %i.cpy, align 1
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.cpz = icmp eq i64 %index.next666, %n.vec663
  br i1 %i.cpz, label %vec.epilog.middle.block667, label %vec.epilog.vector.body664, !llvm.loop !32

vec.epilog.middle.block667:                       ; preds = %vec.epilog.vector.body664
  br i1 %cmp.n668, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader

._crit_edge.thread.i.us12.i.preheader:            ; preds = %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block667
  %indvars.iv502.i.us11.i.ph = phi i64 [ %i.buq, %iter.check658 ], [ %i.bvf, %vec.epilog.iter.check660 ], [ %i.bvg, %vec.epilog.middle.block667 ] ; 3 uses
  %i.cqa = trunc i64 %indvars.iv502.i.us11.i.ph to i32 ; 2 uses
  %i.cqb = sub i32 %i.btt, %i.cqa
  %i.cqc = sub i32 %i.bux, %i.cqa
  %xtraiter818 = and i32 %i.cqb, 3                ; 2 uses
  %lcmp.mod819.not = icmp eq i32 %xtraiter818, 0
  br i1 %lcmp.mod819.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol

._crit_edge.thread.i.us12.i.prol:                 ; preds = %._crit_edge.thread.i.us12.i.preheader, %._crit_edge.thread.i.us12.i.prol
  %indvars.iv502.i.us11.i.prol = phi i64 [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ], [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ] ; 2 uses
  %prol.iter820 = phi i32 [ %prol.iter820.next, %._crit_edge.thread.i.us12.i.prol ], [ 0, %._crit_edge.thread.i.us12.i.preheader ]
  %i.cqd = trunc i64 %indvars.iv502.i.us11.i.prol to i32
  %i.cqe = add i32 %.reass.i.i, %i.cqd
  %i.cqf = sext i32 %i.cqe to i64
  %i.cqg = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqf
  store i8 0, ptr %i.cqg, align 1
  %indvars.iv.next503.i.us13.i.prol = add nuw nsw i64 %indvars.iv502.i.us11.i.prol, 1 ; 2 uses
  %prol.iter820.next = add i32 %prol.iter820, 1   ; 2 uses
  %prol.iter820.cmp.not = icmp eq i32 %prol.iter820.next, %xtraiter818
  br i1 %prol.iter820.cmp.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol, !llvm.loop !33

._crit_edge.thread.i.us12.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us12.i.prol, %._crit_edge.thread.i.us12.i.preheader
  %indvars.iv502.i.us11.i.unr = phi i64 [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ], [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ]
  %i.cqh = icmp ult i32 %i.cqc, 3
  br i1 %i.cqh, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader.new

._crit_edge.thread.i.us12.i.preheader.new:        ; preds = %._crit_edge.thread.i.us12.i.prol.loopexit
  %invariant.op870 = add i32 1, %.reass.i.i
  %invariant.op872 = add i32 2, %.reass.i.i
  %invariant.op874 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us12.i

._crit_edge.thread.i.us12.i:                      ; preds = %._crit_edge.thread.i.us12.i, %._crit_edge.thread.i.us12.i.preheader.new
  %indvars.iv502.i.us11.i = phi i64 [ %indvars.iv502.i.us11.i.unr, %._crit_edge.thread.i.us12.i.preheader.new ], [ %indvars.iv.next503.i.us13.i.3, %._crit_edge.thread.i.us12.i ] ; 5 uses
  %i.cqi = trunc i64 %indvars.iv502.i.us11.i to i32
  %i.cqj = add i32 %.reass.i.i, %i.cqi
  %i.cqk = sext i32 %i.cqj to i64
  %i.cql = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqk
  store i8 0, ptr %i.cql, align 1
  %i.cqm = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass871 = add i32 %i.cqm, %invariant.op870
  %i.cqn = sext i32 %.reass871 to i64
  %i.cqo = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqn
  store i8 0, ptr %i.cqo, align 1
  %i.cqp = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass873 = add i32 %i.cqp, %invariant.op872
  %i.cqq = sext i32 %.reass873 to i64
  %i.cqr = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqq
  store i8 0, ptr %i.cqr, align 1
  %i.cqs = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass875 = add i32 %i.cqs, %invariant.op874
  %i.cqt = sext i32 %.reass875 to i64
  %i.cqu = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqt
end_hunk_0
