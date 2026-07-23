inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.aik = load <2 x double>, ptr %i.aij, align 8 ; 11 uses
  %.sroa.13503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %.sroa.13503.0.copyload = load double, ptr %.sroa.13503.0..sroa_idx, align 8
  %i.ail = insertelement <2 x double> poison, double %.sroa.8512.0.copyload, i64 0
  %i.aim = insertelement <2 x double> %i.ail, double %.sroa.13503.0.copyload, i64 1
  br i1 %i.acd, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ain = shufflevector <2 x double> %i.aii, <2 x double> %i.aik, <2 x i32> <i32 0, i32 2>
  %i.aio = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aip = fsub <2 x double> %i.ain, %i.aio
  %i.aiq = fmul <2 x double> %i.aci, %i.aip
  %i.air = fdiv <2 x double> %i.aiq, %i.ace
  %i.ais = insertelement <2 x double> poison, double %.sroa.17.0, i64 0
  %i.ait = shufflevector <2 x double> %i.ais, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiu = fadd <2 x double> %i.ait, %i.air
  %i.aiv = shufflevector <2 x double> %i.aii, <2 x double> %i.aik, <2 x i32> <i32 1, i32 3>
  %i.aiw = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aix = fsub <2 x double> %i.aiv, %i.aiw
  %i.aiy = fmul <2 x double> %i.ack, %i.aix
  %i.aiz = fdiv <2 x double> %i.aiy, %i.ace
  %i.aja = fadd <2 x double> %i.aiu, %i.aiz
  br label %bb.dj

.loopexit781:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i344
  %lpad.loopexit783 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp782:                            ; preds = %bb.cx
  %lpad.loopexit.split-lp784 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ajb = phi <2 x double> [ %i.aja, %bb.di ], [ %i.aim, %bb.dh ] ; 3 uses
  %i.ajc = fsub <2 x double> %i.aik, %i.aii       ; 3 uses
  %i.ajd = extractelement <2 x double> %i.ajb, i64 0
  %i.aje = extractelement <2 x double> %i.ajb, i64 1 ; 5 uses
  %i.ajf = fsub double %i.aje, %i.ajd             ; 2 uses
  %i.ajg = load double, ptr %i.fn, align 16, !noalias !193 ; 2 uses
  %i.ajh = load double, ptr %i.fm, align 8, !noalias !193
  %i.aji = load <2 x double>, ptr %7, align 16, !noalias !193 ; 2 uses
  %i.ajj = shufflevector <2 x double> %i.aji, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajk = insertelement <2 x double> %i.ajj, double %i.ajg, i64 0
  %i.ajl = fneg <2 x double> %i.ajk
  %i.ajm = fneg double %i.ajh
  %i.ajn = fmul <2 x double> %i.ajc, %i.ajl
  %i.ajo = fmul double %i.ajf, %i.ajm
  %i.ajp = shufflevector <2 x double> %i.ajc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajq = insertelement <2 x double> %i.ajp, double %i.ajf, i64 0
  %i.ajr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajq, <2 x double> %i.aji, <2 x double> %i.ajn) ; 5 uses
  %i.ajs = extractelement <2 x double> %i.ajc, i64 1
  %i.ajt = call double @llvm.fmuladd.f64(double %i.ajs, double %i.ajg, double %i.ajo) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ajr, %i.ajr
  %i.aju = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ajv = call double @llvm.fmuladd.f64(double %i.ajt, double %i.ajt, double %i.aju)
  %i.ajw = extractelement <2 x double> %i.ajr, i64 1 ; 2 uses
  %i.ajx = call noundef double @llvm.fmuladd.f64(double %i.ajw, double %i.ajw, double %i.ajv) ; 2 uses
  %i.ajy = fcmp oeq double %i.ajx, 0.000000e+00
  br i1 %i.ajy, label %bb.dk, label %_ZN10aiVector3tIdEdVEd.exit.i375

_ZN10aiVector3tIdEdVEd.exit.i375:                 ; preds = %bb.dj
  %sqrt.i.i376 = call noundef double @llvm.sqrt.f64(double %i.ajx)
  %i.ajz = fdiv double 1.000000e+00, %sqrt.i.i376 ; 2 uses
  %i.aka = fmul double %i.ajt, %i.ajz
  %i.akb = insertelement <2 x double> poison, double %i.ajz, i64 0
  %i.akc = shufflevector <2 x double> %i.akb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akd = fmul <2 x double> %i.ajr, %i.akc
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZN10aiVector3tIdEdVEd.exit.i375
  %.sroa.0487.0 = phi double [ %i.ajt, %bb.dj ], [ %i.aka, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 2 uses
  %i.ake = phi <2 x double> [ %i.ajr, %bb.dj ], [ %i.akd, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 3 uses
  %i.akf = shufflevector <2 x double> %i.ake, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.akg = insertelement <2 x double> %i.akf, double %.sroa.0487.0, i64 1
  %i.akh = fmul <2 x double> %i.akg, %i.acg
  %i.aki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ake, <2 x double> %i.abq, <2 x double> %i.akh) ; 5 uses
  %i.akj = shufflevector <2 x double> %i.ake, <2 x double> %i.aki, <2 x i32> <i32 0, i32 3>
  %i.akk = shufflevector <2 x double> %i.aki, <2 x double> %i.acl, <2 x i32> <i32 3, i32 1>
  %i.akl = fmul <2 x double> %i.akj, %i.akk
  %i.akm = shufflevector <2 x double> %i.aki, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.akn = insertelement <2 x double> %i.akm, double %.sroa.0487.0, i64 0
  %i.ako = insertelement <2 x double> %i.akm, double %i.abr, i64 0
  %i.akp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akn, <2 x double> %i.ako, <2 x double> %i.akl) ; 2 uses
  %i.akq = extractelement <2 x double> %i.akp, i64 0 ; 4 uses
  %i.akr = extractelement <2 x double> %i.akp, i64 1
  %i.aks = call noundef double @llvm.fmuladd.f64(double %i.akq, double %i.akq, double %i.akr) ; 2 uses
  %i.akt = fcmp oeq double %i.aks, 0.000000e+00
  br i1 %i.akt, label %bb.dl, label %_ZN10aiVector3tIdEdVEd.exit.i378

_ZN10aiVector3tIdEdVEd.exit.i378:                 ; preds = %bb.dk
  %sqrt.i.i379 = call noundef double @llvm.sqrt.f64(double %i.aks)
  %i.aku = fdiv double 1.000000e+00, %sqrt.i.i379 ; 2 uses
  %i.akv = insertelement <2 x double> poison, double %i.aku, i64 0
  %i.akw = shufflevector <2 x double> %i.akv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akx = fmul <2 x double> %i.aki, %i.akw
  %i.aky = fmul double %i.akq, %i.aku
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10aiVector3tIdEdVEd.exit.i378
  %.sroa.11.0 = phi double [ %i.akq, %bb.dk ], [ %i.aky, %_ZN10aiVector3tIdEdVEd.exit.i378 ]
  %i.akz = phi <2 x double> [ %i.aki, %bb.dk ], [ %i.akx, %_ZN10aiVector3tIdEdVEd.exit.i378 ] ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  %i.alb = fmul double %i.ach, %i.ala             ; 4 uses
  %i.alc = extractelement <2 x double> %i.akz, i64 1
  %i.ald = fmul double %i.ach, %i.alc             ; 4 uses
  %i.ale = fmul double %i.ach, %.sroa.11.0        ; 4 uses
  br i1 %i.acd, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %foldExtExtBinop1363 = fsub <2 x double> %i.aik, %i.ahw
  %i.alf = extractelement <2 x double> %foldExtExtBinop1363, i64 0 ; 2 uses
  %foldExtExtBinop1365 = fsub <2 x double> %i.aik, %i.ahw ; 2 uses
  %i.alg = fsub double %i.aje, %.sroa.17.0        ; 2 uses
  %foldExtExtBinop1367 = fmul <2 x double> %foldExtExtBinop1365, %foldExtExtBinop1365
  %i.alh = extractelement <2 x double> %foldExtExtBinop1367, i64 1
  %i.ali = call double @llvm.fmuladd.f64(double %i.alf, double %i.alf, double %i.alh)
  %i.alj = call noundef double @llvm.fmuladd.f64(double %i.alg, double %i.alg, double %i.ali)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.alj) ; 2 uses
  %i.alk = fcmp olt double %sqrt.i, 1.000000e+10
  %.sroa.speculated = select i1 %i.alk, double %sqrt.i, double 1.000000e+10
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.0750 = phi double [ %.sroa.speculated, %bb.dm ], [ 1.000000e+10, %bb.dl ] ; 3 uses
  %i.all = load double, ptr %9, align 16, !noalias !196 ; 2 uses
  %i.alm = load double, ptr %i.ahv, align 8, !noalias !196 ; 3 uses
  %i.aln = load double, ptr %i.et, align 8, !noalias !196 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.alp = load double, ptr %i.alo, align 8, !noalias !196 ; 3 uses
  %i.alq = fmul double %i.aln, %i.alp
  %i.alr = call double @llvm.fmuladd.f64(double %i.all, double %i.alm, double %i.alq)
  %i.als = load double, ptr %i.eu, align 16, !noalias !196 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  %i.alu = load double, ptr %i.alt, align 8, !noalias !196 ; 3 uses
  %i.alv = call double @llvm.fmuladd.f64(double %i.als, double %i.alu, double %i.alr)
  %i.alw = load double, ptr %i.ev, align 8, !noalias !196 ; 2 uses
  %i.alx = fadd double %i.alv, %i.alw
  %i.aly = load double, ptr %i.ew, align 16, !noalias !196 ; 2 uses
  %i.alz = load double, ptr %i.ex, align 8, !noalias !196 ; 2 uses
  %i.ama = fmul double %i.alp, %i.alz
  %i.amb = call double @llvm.fmuladd.f64(double %i.aly, double %i.alm, double %i.ama)
  %i.amc = load double, ptr %i.ey, align 16, !noalias !196 ; 2 uses
  %i.amd = call double @llvm.fmuladd.f64(double %i.amc, double %i.alu, double %i.amb)
  %i.ame = load double, ptr %i.ez, align 8, !noalias !196 ; 2 uses
  %i.amf = fadd double %i.ame, %i.amd
  %i.amg = load double, ptr %i.fa, align 16, !noalias !196 ; 2 uses
  %i.amh = load double, ptr %i.fb, align 8, !noalias !196 ; 2 uses
  %i.ami = fmul double %i.alp, %i.amh
  %i.amj = call double @llvm.fmuladd.f64(double %i.amg, double %i.alm, double %i.ami)
  %i.amk = load double, ptr %i.fc, align 16, !noalias !196 ; 2 uses
  %i.aml = call double @llvm.fmuladd.f64(double %i.amk, double %i.alu, double %i.amj)
  %i.amm = load double, ptr %i.fd, align 8, !noalias !196 ; 2 uses
  %i.amn = fadd double %i.amm, %i.aml
  %i.amo = extractelement <2 x double> %i.ahw, i64 0 ; 2 uses
  %i.amp = fsub double %i.alx, %i.amo             ; 2 uses
  %i.amq = extractelement <2 x double> %i.ahw, i64 1 ; 2 uses
  %i.amr = fsub double %i.amf, %i.amq             ; 2 uses
  %i.ams = fsub double %i.amn, %.sroa.17.0        ; 2 uses
  %i.amt = fmul double %i.ald, %i.amr
  %i.amu = call double @llvm.fmuladd.f64(double %i.amp, double %i.alb, double %i.amt)
  %i.amv = call noundef double @llvm.fmuladd.f64(double %i.ams, double %i.ale, double %i.amu) ; 6 uses
  %i.amw = fcmp ule double %i.amv, f0xBEB0C6F7A0B5ED8D
  %i.amx = fcmp ugt double %i.amv, %.0750
  %or.cond = or i1 %i.amw, %i.amx
  br i1 %or.cond, label %.critedge8, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.amy = fmul double %i.alb, %i.amv
  %i.amz = fmul double %i.ald, %i.amv
  %i.ana = fmul double %i.ale, %i.amv
  %i.anb = fsub double %i.amp, %i.amy             ; 2 uses
  %i.anc = fsub double %i.amr, %i.amz             ; 2 uses
  %i.and = fsub double %i.ams, %i.ana             ; 2 uses
  %i.ane = fmul double %i.anc, %i.anc
  %i.anf = call double @llvm.fmuladd.f64(double %i.anb, double %i.anb, double %i.ane)
  %i.ang = call noundef double @llvm.fmuladd.f64(double %i.and, double %i.and, double %i.anf)
  %i.anh = fcmp olt double %i.ang, 1.000000e-10
  br i1 %i.anh, label %bb.dp, label %.critedge8

bb.dp:                                            ; preds = %bb.do
  br label %.critedge8

bb.dq:                                            ; preds = %.noexc388, %.noexc387, %bb.dy, %bb.dx
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.critedge8:                                       ; preds = %bb.dn, %bb.dp, %bb.do
  %.1751 = phi double [ %.0750, %bb.do ], [ %i.amv, %bb.dp ], [ %.0750, %bb.dn ]
  %.1 = phi i64 [ -1, %bb.do ], [ %i.ahq, %bb.dp ], [ -1, %bb.dn ] ; 2 uses
  br i1 %.not985, label %._crit_edge968, label %.lr.ph967.preheader

.lr.ph967.preheader:                              ; preds = %.critedge8
  %i.anj = insertelement <2 x double> poison, double %i.als, i64 0
  %i.ank = insertelement <2 x double> %i.anj, double %i.aly, i64 1
  %i.anl = insertelement <2 x double> poison, double %i.amc, i64 0
  %i.anm = insertelement <2 x double> %i.anl, double %i.amg, i64 1
  %i.ann = insertelement <2 x double> poison, double %i.amk, i64 0
  %19 = insertelement <2 x double> poison, double %i.alb, i64 1
  br label %.lr.ph967

._crit_edge968:                                   ; preds = %.critedge10, %.critedge8
  %.2139.lcssa = phi i64 [ %.1, %.critedge8 ], [ %.3, %.critedge10 ] ; 4 uses
  %i.ano = icmp eq i64 %.2139.lcssa, -1
  br i1 %i.ano, label %bb.dt, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.lr.ph967:                                        ; preds = %.lr.ph967.preheader, %.critedge10
  %.0966 = phi i64 [ %i.apl, %.critedge10 ], [ 0, %.lr.ph967.preheader ] ; 3 uses
  %.2139965 = phi i64 [ %.3, %.critedge10 ], [ %.1, %.lr.ph967.preheader ] ; 2 uses
  %.2752964 = phi double [ %.3753, %.critedge10 ], [ %.1751, %.lr.ph967.preheader ] ; 3 uses
  %i.anp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0611.0.lcssa, i64 %.0966 ; 3 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %i.anr = load double, ptr %i.anq, align 8, !noalias !199 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  %i.ant = load double, ptr %i.ans, align 8, !noalias !199 ; 3 uses
  %i.anu = fmul double %i.aln, %i.ant
  %i.anv = call double @llvm.fmuladd.f64(double %i.all, double %i.anr, double %i.anu)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anp, i64 24
  %i.anx = load double, ptr %i.anw, align 8, !noalias !199 ; 2 uses
  %i.any = fmul double %i.alz, %i.ant
  %i.anz = insertelement <2 x double> poison, double %i.anx, i64 0
  %i.aoa = insertelement <2 x double> %i.anz, double %i.anr, i64 1 ; 2 uses
  %i.aob = insertelement <2 x double> poison, double %i.anv, i64 0
  %i.aoc = insertelement <2 x double> %i.aob, double %i.any, i64 1
  %i.aod = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ank, <2 x double> %i.aoa, <2 x double> %i.aoc) ; 2 uses
  %i.aoe = extractelement <2 x double> %i.aod, i64 0
  %i.aof = fadd double %i.alw, %i.aoe
  %i.aog = fmul double %i.amh, %i.ant
  %i.aoh = shufflevector <2 x double> %i.aod, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aoi = insertelement <2 x double> %i.aoh, double %i.aog, i64 1
  %i.aoj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anm, <2 x double> %i.aoa, <2 x double> %i.aoi) ; 2 uses
  %i.aok = extractelement <2 x double> %i.aoj, i64 0
  %i.aol = fadd double %i.ame, %i.aok
  %i.aom = fsub double %i.aof, %i.amo             ; 2 uses
  %i.aon = fsub double %i.aol, %i.amq             ; 2 uses
  %i.aoo = fmul double %i.ald, %i.aon
  %i.aop = insertelement <2 x double> %i.ann, double %i.aom, i64 1
  %i.aoq = insertelement <2 x double> %19, double %i.anx, i64 0
  %i.aor = shufflevector <2 x double> %i.aoj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aos = insertelement <2 x double> %i.aor, double %i.aoo, i64 1
  %i.aot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aop, <2 x double> %i.aoq, <2 x double> %i.aos) ; 2 uses
  %i.aou = extractelement <2 x double> %i.aot, i64 0
  %i.aov = fadd double %i.amm, %i.aou
  %i.aow = fsub double %i.aov, %.sroa.17.0        ; 2 uses
  %i.aox = extractelement <2 x double> %i.aot, i64 1
  %i.aoy = call noundef double @llvm.fmuladd.f64(double %i.aow, double %i.ale, double %i.aox) ; 6 uses
  %i.aoz = fcmp ule double %i.aoy, f0xBEB0C6F7A0B5ED8D
  %i.apa = fcmp ugt double %i.aoy, %.2752964
  %or.cond241 = select i1 %i.aoz, i1 true, i1 %i.apa
  br i1 %or.cond241, label %.critedge10, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph967
  %i.apb = fmul double %i.alb, %i.aoy
  %i.apc = fmul double %i.ald, %i.aoy
  %i.apd = fmul double %i.ale, %i.aoy
  %i.ape = fsub double %i.aom, %i.apb             ; 2 uses
  %i.apf = fsub double %i.aon, %i.apc             ; 2 uses
  %i.apg = fsub double %i.aow, %i.apd             ; 2 uses
  %i.aph = fmul double %i.apf, %i.apf
  %i.api = call double @llvm.fmuladd.f64(double %i.ape, double %i.ape, double %i.aph)
  %i.apj = call noundef double @llvm.fmuladd.f64(double %i.apg, double %i.apg, double %i.api)
  %i.apk = fcmp olt double %i.apj, 1.000000e-10
  br i1 %i.apk, label %bb.ds, label %.critedge10

bb.ds:                                            ; preds = %bb.dr
  br label %.critedge10

.critedge10:                                      ; preds = %.lr.ph967, %bb.dr, %bb.ds
  %.3753 = phi double [ %.2752964, %bb.dr ], [ %i.aoy, %bb.ds ], [ %.2752964, %.lr.ph967 ]
  %.3 = phi i64 [ %.2139965, %bb.dr ], [ %.0966, %bb.ds ], [ %.2139965, %.lr.ph967 ] ; 2 uses
  %i.apl = add nuw i64 %.0966, 2                  ; 2 uses
  %i.apm = icmp ult i64 %i.apl, %i.ahq
  br i1 %i.apm, label %.lr.ph967, label %._crit_edge968, !llvm.loop !202

bb.dt:                                            ; preds = %._crit_edge968
  %i.apn = extractelement <2 x double> %i.aik, i64 1
  %i.apo = extractelement <2 x double> %i.aik, i64 0
  %i.app = load <8 x double>, ptr %8, align 8, !noalias !203 ; 4 uses
  %i.apq = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.apr = shufflevector <8 x double> %i.app, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.aps = fmul <2 x double> %i.apq, %i.apr
  %i.apt = shufflevector <8 x double> %i.app, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.apu = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apt, <2 x double> %i.apu, <2 x double> %i.aps)
  %i.apw = shufflevector <8 x double> %i.app, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.apx = shufflevector <2 x double> %i.ajb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.apy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apw, <2 x double> %i.apx, <2 x double> %i.apv)
  %i.apz = shufflevector <8 x double> %i.app, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.aqa = fadd <2 x double> %i.apz, %i.apy       ; 2 uses
  %i.aqb = load double, ptr %i.fi, align 8, !noalias !203
  %i.aqc = load double, ptr %i.fj, align 8, !noalias !203
  %i.aqd = fmul double %i.apn, %i.aqc
  %i.aqe = call double @llvm.fmuladd.f64(double %i.aqb, double %i.apo, double %i.aqd)
  %i.aqf = load double, ptr %i.cl, align 8, !noalias !203
  %i.aqg = call double @llvm.fmuladd.f64(double %i.aqf, double %i.aje, double %i.aqe)
  %i.aqh = load double, ptr %i.cm, align 8, !noalias !203
  %i.aqi = fadd double %i.aqh, %i.aqg             ; 2 uses
  %.not.i.i381 = icmp eq ptr %i.ahu, %i.aht
  br i1 %.not.i.i381, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store <2 x double> %i.aqa, ptr %i.ahu, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  store double %i.aqi, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24 ; 2 uses
  store ptr %i.aqj, ptr %i.fo, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.aqk = ptrtoint ptr %i.aht to i64
  %i.aql = ptrtoint ptr %i.ahv to i64
  %i.aqm = sub i64 %i.aqk, %i.aql                 ; 4 uses
  %i.aqn = icmp eq i64 %i.aqm, 9223372036854775800
  br i1 %i.aqn, label %bb.dw, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc384 unwind label %.loopexit.split-lp

.noexc384:                                        ; preds = %bb.dw
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dv
  %i.aqo = sdiv exact i64 %i.aqm, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i382 = call i64 @llvm.umax.i64(i64 %i.aqo, i64 1)
  %i.aqp = add nsw i64 %.sroa.speculated.i.i.i.i382, %i.aqo ; 2 uses
  %i.aqq = icmp ult i64 %i.aqp, %i.aqo
  %i.aqr = call i64 @llvm.umin.i64(i64 %i.aqp, i64 384307168202282325)
  %i.aqs = select i1 %i.aqq, i64 384307168202282325, i64 %i.aqr ; 3 uses
  %.not.i.i.i.i383 = icmp ne i64 %i.aqs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i383)
  %i.aqt = mul nuw nsw i64 %i.aqs, 24
  %i.aqu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqt) #23
          to label %.noexc385 unwind label %.loopexit ; 6 uses

.noexc385:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqm ; 2 uses
  store <2 x double> %i.aqa, ptr %i.aqv, align 8
  %.sroa.7.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %i.aqv, i64 16
  store double %i.aqi, ptr %.sroa.7.0..sroa_idx434, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ahv, %i.aht
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc385, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aqx, %.lr.ph.i.i.i.i.i.i ], [ %i.aqu, %.noexc385 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aqw, %.lr.ph.i.i.i.i.i.i ], [ %i.ahv, %.noexc385 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !206
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aqw, %i.aht
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc385
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aqu, %.noexc385 ], [ %i.aqx, %.lr.ph.i.i.i.i.i.i ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ahv, i64 noundef %i.aqm) #24
  store ptr %i.aqu, ptr %18, align 8
  store ptr %i.aqy, ptr %i.fo, align 8
  %i.aqz = getelementptr inbounds nuw [24 x i8], ptr %i.aqu, i64 %i.aqs ; 2 uses
  store ptr %i.aqz, ptr %i.fp, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp:                               ; preds = %bb.dw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.du, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %._crit_edge968
  %i.ara = phi ptr [ %i.aht, %._crit_edge968 ], [ %i.aqz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aht, %bb.du ]
  %i.arb = phi ptr [ %i.ahu, %._crit_edge968 ], [ %i.aqy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aqj, %bb.du ] ; 4 uses
  %i.arc = phi ptr [ %i.ahv, %._crit_edge968 ], [ %i.aqu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ahv, %bb.du ] ; 2 uses
  %.sroa.17.1 = phi double [ %.sroa.17.0, %._crit_edge968 ], [ %i.aje, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aje, %bb.du ]
  %.1141 = phi i64 [ %.0140, %._crit_edge968 ], [ %i.aig, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aig, %bb.du ]
  %i.ard = phi <2 x double> [ %i.ahw, %._crit_edge968 ], [ %i.aik, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aik, %bb.du ]
  %i.are = ptrtoint ptr %i.arb to i64
  %i.arf = ptrtoint ptr %i.arc to i64
  %i.arg = sub i64 %i.are, %i.arf
  %i.arh = sdiv exact i64 %i.arg, 24
  %i.ari = load ptr, ptr %.sroa.gep712, align 8
  %i.arj = load ptr, ptr %11, align 8
  %i.ark = ptrtoint ptr %i.ari to i64
  %i.arl = ptrtoint ptr %i.arj to i64
  %i.arm = sub i64 %i.ark, %i.arl
  %i.arn = sdiv exact i64 %i.arm, 24
  %i.aro = load ptr, ptr %i.cc, align 8           ; 2 uses
  %i.arp = load ptr, ptr %i.bt, align 8           ; 2 uses
  %i.arq = ptrtoint ptr %i.aro to i64
  %i.arr = ptrtoint ptr %i.arp to i64
  %i.ars = sub i64 %i.arq, %i.arr
  %i.art = sdiv exact i64 %i.ars, 24
  %i.aru = add nsw i64 %i.art, %i.arn
  %i.arv = icmp ugt i64 %i.arh, %i.aru
  br i1 %i.arv, label %bb.dx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit

bb.dx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %i.arw = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc386 unwind label %bb.dq

.noexc386:                                        ; preds = %bb.dx
  br i1 %i.arw, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %.noexc386
  %i.arx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc387 unwind label %bb.dq

.noexc387:                                        ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ary = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc388 unwind label %bb.dq

.noexc388:                                        ; preds = %.noexc387
  store ptr %i.ary, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA81_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.arx, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) @.str.4)
          to label %.noexc389 unwind label %bb.dq

.noexc389:                                        ; preds = %.noexc388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit, %.noexc389, %.noexc386
  %i.arz = phi ptr [ %i.arb, %.noexc389 ], [ %i.arb, %.noexc386 ], [ %i.ahu, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ]
  %.4 = phi i64 [ %.2139.lcssa, %.noexc389 ], [ %.2139.lcssa, %.noexc386 ], [ %.0138, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ] ; 2 uses
  %.not209 = icmp ult i64 %.4, %i.ahq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br i1 %.not209, label %bb.cn, label %bb.ea

bb.dz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit781, %.loopexit.split-lp782, %.loopexit770, %.loopexit.split-lp771, %.loopexit776, %.loopexit.split-lp777, %bb.dq
  %.pn216.pn = phi { ptr, i32 } [ %i.ani, %bb.dq ], [ %lpad.loopexit.split-lp784, %.loopexit.split-lp782 ], [ %lpad.loopexit.split-lp779, %.loopexit.split-lp777 ], [ %lpad.loopexit.split-lp773, %.loopexit.split-lp771 ], [ %lpad.loopexit778, %.loopexit776 ], [ %lpad.loopexit772, %.loopexit770 ], [ %lpad.loopexit783, %.loopexit781 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br label %bb.ee

bb.ea:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
end_hunk_0
