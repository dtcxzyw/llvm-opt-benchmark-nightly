Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %index1203 = phi i64 [ %index.next1204, %vector.body1202 ], [ 0, %.lr.ph777.preheader ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body1202 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph777.preheader ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %index1203 ; 2 uses
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 16
  store <4 x i32> %vec.ind, ptr %i.chc, align 4, !tbaa !28
  store <4 x i32> %step.add, ptr %i.chd, align 4, !tbaa !28
  %index.next1204 = add nuw i64 %index1203, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.che = icmp eq i64 %index.next1204, %n.vec1201
  br i1 %i.che, label %middle.block1205, label %vector.body1202, !llvm.loop !105

middle.block1205:                                 ; preds = %vector.body1202
  br i1 %cmp.n1206, label %._crit_edge, label %.lr.ph777.preheader1232

.lr.ph777.preheader1232:                          ; preds = %.lr.ph777.preheader, %middle.block1205
  %.0336776.ph = phi i64 [ 0, %.lr.ph777.preheader ], [ %n.vec1201, %middle.block1205 ]
  br label %.lr.ph777

._crit_edge:                                      ; preds = %.lr.ph777, %middle.block1205, %_ZN7meshoptL17sortEdgeCollapsesEPjPKNS_8CollapseEm.exit
  call void @llvm.memset.p0.i64(ptr align 1 %i.beo, i8 0, i64 %.0703, i1 false)
  %i.chf = lshr i64 %i.chb, 1
  %i.chg = udiv i64 %i.cha, 18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ft, %._crit_edge
  %.6695 = phi float [ %.0689779, %._crit_edge ], [ %.7696, %bb.ft ] ; 7 uses
  %.0128.i = phi i64 [ 0, %._crit_edge ], [ %.3.ph.i, %bb.ft ] ; 5 uses
  %.094127.i = phi i64 [ 0, %._crit_edge ], [ %i.cnw, %bb.ft ] ; 2 uses
  %.095126.i = phi i64 [ %i.chf, %._crit_edge ], [ %.398.ph.i, %bb.ft ] ; 5 uses
  %.099125.i = phi i64 [ 0, %._crit_edge ], [ %.3102.ph.i, %bb.ft ] ; 5 uses
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.beg, i64 %.094127.i
  %i.chi = load i32, ptr %i.chh, align 4, !tbaa !28
  %i.chj = zext i32 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [12 x i8], ptr %i.bdy, i64 %i.chj ; 3 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chk, i64 8 ; 2 uses
  %i.chm = load float, ptr %i.chl, align 4, !tbaa !29 ; 3 uses
  %i.chn = fcmp ule float %i.chm, %i.bev
  %.not.i527 = icmp ult i64 %.099125.i, %i.chb
  %or.cond114.i = select i1 %i.chn, i1 %.not.i527, i1 false
  br i1 %or.cond114.i, label %bb.fd, label %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit

bb.fd:                                            ; preds = %bb.fc
  %i.cho = icmp ult i64 %.095126.i, %.4.2.i
  br i1 %i.cho, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.chp = getelementptr inbounds nuw [4 x i8], ptr %i.beg, i64 %.095126.i
  %i.chq = load i32, ptr %i.chp, align 4, !tbaa !28
  %i.chr = zext i32 %i.chq to i64
  %i.chs = getelementptr inbounds nuw [12 x i8], ptr %i.bdy, i64 %i.chr
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 8
  %i.chu = load float, ptr %i.cht, align 4, !tbaa !29
  %i.chv = fmul float %i.chu, 1.500000e+00
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.chw = phi float [ %i.chv, %bb.fe ], [ f0x7F7FFFFF, %bb.fd ]
  %i.chx = fcmp ogt float %i.chm, %i.chw
  br i1 %i.chx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.chy = fcmp ogt float %i.chm, %.6695
  %i.chz = icmp ugt i64 %.099125.i, %i.chg
  %or.cond.i541 = select i1 %i.chy, i1 %i.chz, i1 false
  br i1 %or.cond.i541, label %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.cia = load i32, ptr %i.chk, align 4, !tbaa !132 ; 3 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.chk, i64 4
  %i.cic = load i32, ptr %i.cib, align 4, !tbaa !133 ; 5 uses
  %i.cid = zext i32 %i.cia to i64                 ; 6 uses
  %i.cie = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cid
  %i.cif = load i32, ptr %i.cie, align 4, !tbaa !28 ; 2 uses
  %i.cig = zext i32 %i.cic to i64                 ; 2 uses
  %i.cih = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cig ; 2 uses
  %i.cii = load i32, ptr %i.cih, align 4, !tbaa !28 ; 3 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.cid
  %i.cik = load i8, ptr %i.cij, align 1, !tbaa !29 ; 2 uses
  %i.cil = zext i32 %i.cif to i64                 ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.cil ; 2 uses
  %i.cin = load i8, ptr %i.cim, align 1, !tbaa !29
  %i.cio = zext i32 %i.cii to i64                 ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.cio ; 2 uses
  %i.ciq = load i8, ptr %i.cip, align 1, !tbaa !29
  %i.cir = or i8 %i.ciq, %i.cin
  %.not110.i = icmp eq i8 %i.cir, 0
  br i1 %.not110.i, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %bb.fh
  %i.cis = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cil ; 3 uses
  %i.cit = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cio ; 3 uses
  %i.ciu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.cil
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !28 ; 3 uses
  %i.ciw = zext i32 %i.civ to i64
  %i.cix = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ciw
  %i.ciy = add i32 %i.cif, 1
  %i.ciz = zext i32 %i.ciy to i64
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ciz
  %i.cjb = load i32, ptr %i.cja, align 4, !tbaa !28 ; 2 uses
  %i.cjc = sub i32 %i.cjb, %i.civ
  %i.cjd = zext i32 %i.cjc to i64
  %.not2.not.i.i = icmp eq i32 %i.cjb, %i.civ
  br i1 %.not2.not.i.i, label %.loopexit124.i, label %.lr.ph.i.i530

.lr.ph.i.i530:                                    ; preds = %bb.fi
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cis, i64 4
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cis, i64 8
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cit, i64 4
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cit, i64 8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fl, %.lr.ph.i.i530
  %.0343.i.i = phi i64 [ 0, %.lr.ph.i.i530 ], [ %i.cml, %bb.fl ] ; 2 uses
  %i.cji = getelementptr inbounds nuw [8 x i8], ptr %i.cix, i64 %.0343.i.i ; 2 uses
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !39
  %i.cjk = zext i32 %i.cjj to i64
  %i.cjl = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %i.cjk
  %i.cjm = load i32, ptr %i.cjl, align 4, !tbaa !28 ; 3 uses
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cji, i64 4
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !40
  %i.cjp = zext i32 %i.cjo to i64
  %i.cjq = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %i.cjp
  %i.cjr = load i32, ptr %i.cjq, align 4, !tbaa !28 ; 3 uses
  %i.cjs = icmp eq i32 %i.cjm, %i.cii
  %i.cjt = icmp eq i32 %i.cjr, %i.cii
  %i.cju = icmp eq i32 %i.cjm, %i.cjr
  %i.cjv = or i1 %i.cjt, %i.cju
  %or.cond40.i.i = select i1 %i.cjs, i1 true, i1 %i.cjv
  br i1 %or.cond40.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.cjw = zext i32 %i.cjm to i64
  %i.cjx = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cjw ; 3 uses
  %i.cjy = zext i32 %i.cjr to i64
  %i.cjz = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cjy ; 3 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 4
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjx, i64 4
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cjz, i64 8
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cjx, i64 8
  %i.cke = load float, ptr %i.cis, align 4, !tbaa !49
  %i.ckf = load float, ptr %i.cje, align 4, !tbaa !50
  %i.ckg = load float, ptr %i.cjf, align 4, !tbaa !46
  %i.ckh = load float, ptr %i.cit, align 4, !tbaa !49
  %i.cki = load float, ptr %i.cjg, align 4, !tbaa !50
  %i.ckj = load float, ptr %i.cjh, align 4, !tbaa !46
  %i.ckk = insertelement <2 x float> poison, float %i.cke, i64 0
  %i.ckl = insertelement <2 x float> %i.ckk, float %i.ckh, i64 1
  %i.ckm = insertelement <2 x float> poison, float %i.ckg, i64 0
  %i.ckn = insertelement <2 x float> %i.ckm, float %i.ckj, i64 1
  %i.cko = load float, ptr %i.cjz, align 4, !tbaa !49
  %i.ckp = load float, ptr %i.cjx, align 4, !tbaa !49 ; 2 uses
  %i.ckq = load float, ptr %i.cka, align 4, !tbaa !50
  %i.ckr = load float, ptr %i.ckb, align 4, !tbaa !50 ; 2 uses
  %i.cks = fsub float %i.ckq, %i.ckr
  %i.ckt = load float, ptr %i.ckc, align 4, !tbaa !46
  %i.cku = load float, ptr %i.ckd, align 4, !tbaa !46 ; 2 uses
  %i.ckv = insertelement <2 x float> poison, float %i.ckf, i64 0
  %i.ckw = insertelement <2 x float> %i.ckv, float %i.cki, i64 1
  %i.ckx = insertelement <2 x float> poison, float %i.ckr, i64 0
  %i.cky = shufflevector <2 x float> %i.ckx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ckz = fsub <2 x float> %i.ckw, %i.cky        ; 2 uses
  %i.cla = fneg <2 x float> %i.ckz
  %i.clb = fsub float %i.cko, %i.ckp
  %i.clc = fsub float %i.ckt, %i.cku
  %i.cld = insertelement <2 x float> poison, float %i.ckp, i64 0
  %i.cle = shufflevector <2 x float> %i.cld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clf = fsub <2 x float> %i.ckl, %i.cle        ; 2 uses
  %i.clg = insertelement <2 x float> poison, float %i.cku, i64 0
  %i.clh = shufflevector <2 x float> %i.clg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cli = fsub <2 x float> %i.ckn, %i.clh        ; 2 uses
  %i.clj = insertelement <2 x float> poison, float %i.clc, i64 0
  %i.clk = shufflevector <2 x float> %i.clj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cll = fmul <2 x float> %i.clk, %i.cla
  %i.clm = insertelement <2 x float> poison, float %i.cks, i64 0
  %i.cln = shufflevector <2 x float> %i.clm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.clo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cln, <2 x float> %i.cli, <2 x float> %i.cll) ; 4 uses
  %i.clp = fneg <2 x float> %i.cli
  %i.clq = insertelement <2 x float> poison, float %i.clb, i64 0
  %i.clr = shufflevector <2 x float> %i.clq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cls = fmul <2 x float> %i.clr, %i.clp
  %i.clt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clk, <2 x float> %i.clf, <2 x float> %i.cls) ; 4 uses
  %i.clu = fneg <2 x float> %i.clf
  %i.clv = fmul <2 x float> %i.cln, %i.clu
  %i.clw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clr, <2 x float> %i.ckz, <2 x float> %i.clv) ; 4 uses
  %shift1221 = shufflevector <2 x float> %i.clt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1222 = fmul <2 x float> %i.clt, %shift1221
  %i.clx = extractelement <2 x float> %foldExtExtBinop1222, i64 0
  %i.cly = extractelement <2 x float> %i.clo, i64 0
  %i.clz = extractelement <2 x float> %i.clo, i64 1
  %i.cma = call float @llvm.fmuladd.f32(float %i.cly, float %i.clz, float %i.clx)
  %i.cmb = extractelement <2 x float> %i.clw, i64 0
  %i.cmc = extractelement <2 x float> %i.clw, i64 1
  %i.cmd = call float @llvm.fmuladd.f32(float %i.cmb, float %i.cmc, float %i.cma)
  %i.cme = fmul <2 x float> %i.clt, %i.clt
  %i.cmf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clo, <2 x float> %i.clo, <2 x float> %i.cme)
  %i.cmg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clw, <2 x float> %i.clw, <2 x float> %i.cmf) ; 2 uses
  %shift1224 = shufflevector <2 x float> %i.cmg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1225 = fmul <2 x float> %i.cmg, %shift1224
  %i.cmh = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.cmi = call float @llvm.sqrt.f32(float %i.cmh)
  %i.cmj = fmul float %i.cmi, 2.500000e-01
  %i.cmk = fcmp ugt float %i.cmd, %i.cmj
  br i1 %i.cmk, label %bb.fl, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.cml = add nuw nsw i64 %.0343.i.i, 1          ; 2 uses
  %exitcond.not.i.i531 = icmp eq i64 %i.cml, %i.cjd
  br i1 %exitcond.not.i.i531, label %.loopexit124.i, label %bb.fj, !llvm.loop !106

_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i: ; preds = %bb.fk
  %i.cmm = add i64 %.095126.i, 1
  br label %bb.ft

.loopexit124.i:                                   ; preds = %bb.fl, %bb.fi
  switch i8 %i.cik, label %.loopexit.sink.split.i [
    i8 3, label %.preheader.i536
    i8 2, label %bb.fq
  ]

.preheader.i536:                                  ; preds = %.loopexit124.i, %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539
  %.090.i = phi i32 [ %i.cnd, %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539 ], [ %i.cia, %.loopexit124.i ]
  %i.cmn = load i32, ptr %i.cih, align 4, !tbaa !28 ; 2 uses
  %i.cmo = zext i32 %.090.i to i64                ; 4 uses
  %i.cmp = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.cmo
  %i.cmq = load i32, ptr %i.cmp, align 4, !tbaa !28 ; 3 uses
  %.not.i.i537 = icmp eq i32 %i.cmq, -1
  br i1 %.not.i.i537, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.preheader.i536
  %i.cmr = zext i32 %i.cmq to i64
  %i.cms = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cmr
  %i.cmt = load i32, ptr %i.cms, align 4, !tbaa !28
  %i.cmu = icmp eq i32 %i.cmt, %i.cmn
  br i1 %i.cmu, label %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.preheader.i536
  %i.cmv = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.cmo
  %i.cmw = load i32, ptr %i.cmv, align 4, !tbaa !28 ; 3 uses
  %.not21.i.i538 = icmp eq i32 %i.cmw, -1
  br i1 %.not21.i.i538, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.cmx = zext i32 %i.cmw to i64
  %i.cmy = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cmx
  %i.cmz = load i32, ptr %i.cmy, align 4, !tbaa !28
  %i.cna = icmp eq i32 %i.cmz, %i.cmn
  br i1 %i.cna, label %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  br label %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539

_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539: ; preds = %bb.fp, %bb.fo, %bb.fm
  %.0.i.i540 = phi i32 [ %i.cic, %bb.fp ], [ %i.cmq, %bb.fm ], [ %i.cmw, %bb.fo ]
  %i.cnb = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %i.cmo
  store i32 %.0.i.i540, ptr %i.cnb, align 4, !tbaa !28
  %i.cnc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.cmo
  %i.cnd = load i32, ptr %i.cnc, align 4, !tbaa !28 ; 2 uses
  %.not112.i = icmp eq i32 %i.cnd, %i.cia
  br i1 %.not112.i, label %.loopexit.i535, label %.preheader.i536, !llvm.loop !107

bb.fq:                                            ; preds = %.loopexit124.i
  %i.cne = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.cid
  %i.cnf = load i32, ptr %i.cne, align 4, !tbaa !28
  %i.cng = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.cid
  %i.cnh = load i32, ptr %i.cng, align 4, !tbaa !28
  %i.cni = icmp eq i32 %i.cnh, %i.cic
  %i.cnj = zext i32 %i.cnf to i64                 ; 2 uses
  %.in.v.i532 = select i1 %i.cni, ptr %i.jm, ptr %i.ji
  %.in.i533 = getelementptr inbounds nuw [4 x i8], ptr %.in.v.i532, i64 %i.cnj
  %i.cnk = load i32, ptr %.in.i533, align 4, !tbaa !28 ; 2 uses
  %.not111.i = icmp eq i32 %i.cnk, -1
  br i1 %.not111.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.cnl = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.cig
  %i.cnm = load i32, ptr %i.cnl, align 4, !tbaa !28
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.cnn = phi i32 [ %i.cnm, %bb.fr ], [ %i.cnk, %bb.fq ]
  %i.cno = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %i.cid
  store i32 %i.cic, ptr %i.cno, align 4, !tbaa !28
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.fs, %.loopexit124.i
  %.sink138.i = phi i64 [ %i.cnj, %bb.fs ], [ %i.cid, %.loopexit124.i ]
  %.sink.i534 = phi i32 [ %i.cnn, %bb.fs ], [ %i.cic, %.loopexit124.i ]
  %i.cnp = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %.sink138.i
  store i32 %.sink.i534, ptr %i.cnp, align 4, !tbaa !28
  br label %.loopexit.i535

.loopexit.i535:                                   ; preds = %_ZN7meshoptL16getComplexTargetEjjPKjS1_S1_.exit.i539, %.loopexit.sink.split.i
  store i8 1, ptr %i.cim, align 1, !tbaa !29
  store i8 1, ptr %i.cip, align 1, !tbaa !29
  %i.cnq = icmp eq i8 %i.cik, 1
  %i.cnr = select i1 %i.cnq, i64 1, i64 2
  %i.cns = add nuw nsw i64 %i.cnr, %.099125.i
  %i.cnt = add i64 %.0128.i, 1
  %i.cnu = load float, ptr %i.chl, align 4, !tbaa !29 ; 2 uses
  %i.cnv = fcmp olt float %.6695, %i.cnu
  %..i = select i1 %i.cnv, float %i.cnu, float %.6695
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit.i535, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i, %bb.fh
  %.7696 = phi float [ %..i, %.loopexit.i535 ], [ %.6695, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i ], [ %.6695, %bb.fh ] ; 2 uses
  %.3102.ph.i = phi i64 [ %i.cns, %.loopexit.i535 ], [ %.099125.i, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i ], [ %.099125.i, %bb.fh ]
  %.398.ph.i = phi i64 [ %.095126.i, %.loopexit.i535 ], [ %i.cmm, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i ], [ %.095126.i, %bb.fh ]
  %.3.ph.i = phi i64 [ %i.cnt, %.loopexit.i535 ], [ %.0128.i, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EPKjjj.exit.i ], [ %.0128.i, %bb.fh ] ; 2 uses
  %i.cnw = add nuw i64 %.094127.i, 1              ; 2 uses
  %exitcond.not.i529 = icmp eq i64 %i.cnw, %.4.2.i
  br i1 %exitcond.not.i529, label %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit, label %bb.fc, !llvm.loop !108

.lr.ph777:                                        ; preds = %.lr.ph777.preheader1232, %.lr.ph777
  %.0336776 = phi i64 [ %i.cnz, %.lr.ph777 ], [ %.0336776.ph, %.lr.ph777.preheader1232 ] ; 3 uses
  %i.cnx = trunc i64 %.0336776 to i32
  %i.cny = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %.0336776
  store i32 %i.cnx, ptr %i.cny, align 4, !tbaa !28
  %i.cnz = add nuw i64 %.0336776, 1               ; 2 uses
  %exitcond886.not = icmp eq i64 %i.cnz, %.0703
  br i1 %exitcond886.not, label %._crit_edge, label %.lr.ph777, !llvm.loop !109

_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit: ; preds = %bb.ft, %bb.fg, %bb.fc
  %.8 = phi float [ %.6695, %bb.fg ], [ %.7696, %bb.ft ], [ %.6695, %bb.fc ] ; 4 uses
  %.0.lcssa.i528 = phi i64 [ %.0128.i, %bb.fg ], [ %.3.ph.i, %bb.ft ], [ %.0128.i, %bb.fc ]
  %i.coa = icmp eq i64 %.0.lcssa.i528, 0
  br i1 %i.coa, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread, label %bb.fu

bb.fu:                                            ; preds = %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit
  br i1 %.not88.i, label %_ZN7meshoptL14remapEdgeLoopsEPjmPKj.exit562, label %.lr.ph.i542

.lr.ph.i542:                                      ; preds = %bb.fu, %bb.gb
  %.5686 = phi float [ %.6687, %bb.gb ], [ %.0681780, %bb.fu ] ; 5 uses
  %.053.i = phi i64 [ %i.csv, %bb.gb ], [ 0, %bb.fu ] ; 5 uses
  %i.cob = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %.053.i
  %i.coc = load i32, ptr %i.cob, align 4, !tbaa !28
  %i.cod = zext i32 %i.coc to i64                 ; 4 uses
  %i.coe = icmp eq i64 %.053.i, %i.cod
  br i1 %i.coe, label %bb.gb, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i542
  %i.cof = trunc i64 %.053.i to i32
  %i.cog = and i64 %.053.i, 4294967295            ; 6 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cog
  %i.coi = load i32, ptr %i.coh, align 4, !tbaa !28
  %i.coj = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cod
  %i.cok = load i32, ptr %i.coj, align 4, !tbaa !28 ; 2 uses
  %i.col = icmp eq i32 %i.coi, %i.cof             ; 2 uses
  br i1 %i.col, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.com = zext i32 %i.cok to i64                 ; 2 uses
  %i.con = getelementptr inbounds nuw [44 x i8], ptr %i.adm, i64 %i.com ; 5 uses
  %i.coo = getelementptr inbounds nuw [44 x i8], ptr %i.adm, i64 %i.cog ; 4 uses
  %i.cop = load <4 x float>, ptr %i.coo, align 4, !tbaa !44
  %i.coq = load <4 x float>, ptr %i.con, align 4, !tbaa !44
  %i.cor = fadd <4 x float> %i.cop, %i.coq
  store <4 x float> %i.cor, ptr %i.con, align 4, !tbaa !44
  %i.cos = getelementptr inbounds nuw i8, ptr %i.coo, i64 16
  %i.cot = getelementptr inbounds nuw i8, ptr %i.con, i64 16 ; 2 uses
  %i.cou = load <4 x float>, ptr %i.cos, align 4, !tbaa !44
  %i.cov = load <4 x float>, ptr %i.cot, align 4, !tbaa !44
  %i.cow = fadd <4 x float> %i.cou, %i.cov
  store <4 x float> %i.cow, ptr %i.cot, align 4, !tbaa !44
  %i.cox = getelementptr inbounds nuw i8, ptr %i.coo, i64 32
  %i.coy = getelementptr inbounds nuw i8, ptr %i.con, i64 32 ; 2 uses
  %i.coz = load <2 x float>, ptr %i.cox, align 4, !tbaa !44
  %i.cpa = load <2 x float>, ptr %i.coy, align 4, !tbaa !44
  %i.cpb = fadd <2 x float> %i.coz, %i.cpa
  store <2 x float> %i.cpb, ptr %i.coy, align 4, !tbaa !44
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.coo, i64 40
  %i.cpd = load float, ptr %i.cpc, align 4, !tbaa !48
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.con, i64 40 ; 2 uses
  %i.cpf = load float, ptr %i.cpe, align 4, !tbaa !48
  %i.cpg = fadd float %i.cpd, %i.cpf
  store float %i.cpg, ptr %i.cpe, align 4, !tbaa !48
  br i1 %.not.i543, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.cph = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.com ; 2 uses
  %i.cpi = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.cog
  %i.cpj = load <4 x float>, ptr %i.cpi, align 4, !tbaa !44
  %i.cpk = load <4 x float>, ptr %i.cph, align 4, !tbaa !44
  %i.cpl = fadd <4 x float> %i.cpj, %i.cpk
  store <4 x float> %i.cpl, ptr %i.cph, align 4, !tbaa !44
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  br i1 %.not403, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.cpm = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.cod ; 5 uses
  %i.cpn = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.cog ; 4 uses
  %i.cpo = load <4 x float>, ptr %i.cpn, align 4, !tbaa !44
  %i.cpp = load <4 x float>, ptr %i.cpm, align 4, !tbaa !44
  %i.cpq = fadd <4 x float> %i.cpo, %i.cpp
  store <4 x float> %i.cpq, ptr %i.cpm, align 4, !tbaa !44
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpn, i64 16
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpm, i64 16 ; 2 uses
  %i.cpt = load <4 x float>, ptr %i.cpr, align 4, !tbaa !44
  %i.cpu = load <4 x float>, ptr %i.cps, align 4, !tbaa !44
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.dck = shufflevector <2 x float> %i.dcd, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dcl = shufflevector <8 x float> %i.dck, <8 x float> %i.dbo, <2 x i32> <i32 0, i32 13>
  %i.dcm = shufflevector <8 x float> %i.dck, <8 x float> %i.dbo, <2 x i32> <i32 1, i32 15>
  %i.dcn = fdiv <2 x float> %i.dcl, %i.dcm        ; 4 uses
  %i.dco = extractelement <2 x float> %i.dcn, i64 1 ; 2 uses
  %i.dcp = fneg float %i.dco
  %i.dcq = call float @llvm.fmuladd.f32(float %i.dco, float %.sroa.33.1.i, float %i.dbt)
  %i.dcr = extractelement <2 x float> %i.dcn, i64 0
  %i.dcs = fneg float %i.dcr                      ; 2 uses
  %i.dct = call float @llvm.fmuladd.f32(float %i.dcs, float %i.dcg, float %i.dcq) ; 2 uses
  %i.dcu = fneg float %.sroa.08.0.i               ; 3 uses
  %i.dcv = call float @llvm.fmuladd.f32(float %i.dcu, float %i.dbx, float %.sroa.5.0.i) ; 2 uses
  %i.dcw = shufflevector <8 x float> %i.dby, <8 x float> poison, <2 x i32> <i32 poison, i32 5>
  %i.dcx = insertelement <2 x float> %i.dcw, float %i.dcu, i64 0
  %i.dcy = shufflevector <2 x float> %i.dcn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dcz = shufflevector <8 x float> %i.dbo, <8 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.dda = insertelement <2 x float> %i.dcz, float %.sroa.69.0.i, i64 0
  %i.ddb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dcx, <2 x float> %i.dcy, <2 x float> %i.dda)
  %i.ddc = shufflevector <2 x float> %i.dcd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ddd = insertelement <2 x float> %i.ddc, float %i.dcv, i64 0
  %i.dde = fneg <2 x float> %i.ddd                ; 2 uses
  %i.ddf = shufflevector <2 x float> %i.dcn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ddg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dde, <2 x float> %i.ddf, <2 x float> %i.ddb) ; 2 uses
  %i.ddh = extractelement <2 x float> %i.ddg, i64 1 ; 3 uses
  %i.ddi = fdiv float %i.dct, %i.ddh
  %i.ddj = fdiv float %i.dcv, %i.dce              ; 2 uses
  %i.ddk = extractelement <2 x float> %i.ddg, i64 0 ; 2 uses
  %i.ddl = fdiv float %i.ddk, %i.ddh              ; 2 uses
  %i.ddm = call float @llvm.fmuladd.f32(float %i.dcu, float %i.dcj, float 0.000000e+00)
  %i.ddn = extractelement <2 x float> %i.dde, i64 0
  %i.ddo = call float @llvm.fmuladd.f32(float %i.ddn, float %i.ddj, float %i.ddm)
  %i.ddp = fneg float %i.ddk
  %i.ddq = call float @llvm.fmuladd.f32(float %i.ddp, float %i.ddl, float %i.ddo) ; 2 uses
  %i.ddr = fneg float %i.dcj
  %i.dds = call float @llvm.fmuladd.f32(float %i.dcj, float %.sroa.33.1.i, float %i.dci)
  %i.ddt = fneg float %i.ddj                      ; 2 uses
  %i.ddu = call float @llvm.fmuladd.f32(float %i.ddt, float %i.dcg, float %i.dds)
  %i.ddv = fneg float %i.ddl                      ; 2 uses
  %i.ddw = call float @llvm.fmuladd.f32(float %i.ddv, float %i.dct, float %i.ddu)
  %i.ddx = call float @llvm.fabs.f32(float %i.ddq)
  %i.ddy = fcmp ogt float %i.ddx, %i.dbu
  %i.ddz = fdiv float %i.ddw, %i.ddq
  %i.dea = select i1 %i.ddy, float %i.ddz, float 0.000000e+00 ; 3 uses
  %i.deb = fdiv float %i.dbp, %i.dbw
  %i.dec = call float @llvm.fmuladd.f32(float %i.ddv, float %i.dea, float %i.ddi) ; 8 uses
  %i.ded = call float @llvm.fmuladd.f32(float %i.dcs, float %i.dec, float %i.dch)
  %i.dee = call float @llvm.fmuladd.f32(float %i.ddt, float %i.dea, float %i.ded) ; 7 uses
  %i.def = call float @llvm.fmuladd.f32(float %i.dcf, float %i.dee, float %i.deb)
  %i.deg = call float @llvm.fmuladd.f32(float %i.dcp, float %i.dec, float %i.def)
  %i.deh = call float @llvm.fmuladd.f32(float %i.ddr, float %i.dea, float %i.deg) ; 6 uses
  %i.dei = call float @llvm.fabs.f32(float %i.dbw)
  %i.dej = fcmp ogt float %i.dei, %i.dbu
  %i.dek = call float @llvm.fabs.f32(float %i.dce)
  %i.del = fcmp ogt float %i.dek, %i.dbu
  %or.cond.i.i = select i1 %i.dej, i1 %i.del, i1 false
  %i.dem = call float @llvm.fabs.f32(float %i.ddh)
  %i.den = fcmp ogt float %i.dem, %i.dbu
  %i.deo = select i1 %or.cond.i.i, i1 %i.den, i1 false
  br i1 %i.deo, label %bb.hg, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.06245.i ; 2 uses
  %i.deq = load i32, ptr %i.dep, align 4, !tbaa !28 ; 3 uses
  %i.der = zext i32 %i.deq to i64
  %i.des = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.der
  %i.det = add nuw nsw i64 %.06245.i, 1
  %i.deu = and i64 %i.det, 4294967295
  %i.dev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.deu ; 2 uses
  %i.dew = load i32, ptr %i.dev, align 4, !tbaa !28 ; 2 uses
  %i.dex = sub i32 %i.dew, %i.deq
  %i.dey = zext i32 %i.dex to i64
  %.not.i.i590 = icmp eq i32 %i.dew, %i.deq
  br i1 %.not.i.i590, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i591

.lr.ph.i.i591:                                    ; preds = %bb.hg, %.lr.ph.i.i591
  %.02.i.i = phi float [ %i.dgg, %.lr.ph.i.i591 ], [ 0.000000e+00, %bb.hg ] ; 2 uses
  %.0521.i.i = phi i64 [ %i.dgh, %.lr.ph.i.i591 ], [ 0, %bb.hg ] ; 2 uses
  %i.dez = getelementptr inbounds nuw [8 x i8], ptr %i.des, i64 %.0521.i.i ; 2 uses
  %i.dfa = load i32, ptr %i.dez, align 4, !tbaa !39
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dez, i64 4
  %i.dfc = load i32, ptr %i.dfb, align 4, !tbaa !40
  %i.dfd = zext i32 %i.dfa to i64
  %i.dfe = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dfd ; 3 uses
  %i.dff = zext i32 %i.dfc to i64
  %i.dfg = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dff ; 3 uses
  %i.dfh = load float, ptr %i.dfe, align 4, !tbaa !49
  %i.dfi = fsub float %i.dfh, %i.cyl              ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfe, i64 4
  %i.dfk = load float, ptr %i.dfj, align 4, !tbaa !50
  %i.dfl = fsub float %i.dfk, %i.cyu              ; 2 uses
  %i.dfm = fmul float %i.dfl, %i.dfl
  %i.dfn = call float @llvm.fmuladd.f32(float %i.dfi, float %i.dfi, float %i.dfm)
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dfe, i64 8
  %i.dfp = load float, ptr %i.dfo, align 4, !tbaa !46
  %i.dfq = fsub float %i.dfp, %i.cyt              ; 2 uses
  %i.dfr = call float @llvm.fmuladd.f32(float %i.dfq, float %i.dfq, float %i.dfn) ; 2 uses
  %i.dfs = load float, ptr %i.dfg, align 4, !tbaa !49
  %i.dft = fsub float %i.dfs, %i.cyl              ; 2 uses
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfg, i64 4
  %i.dfv = load float, ptr %i.dfu, align 4, !tbaa !50
  %i.dfw = fsub float %i.dfv, %i.cyu              ; 2 uses
  %i.dfx = fmul float %i.dfw, %i.dfw
  %i.dfy = call float @llvm.fmuladd.f32(float %i.dft, float %i.dft, float %i.dfx)
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dfg, i64 8
  %i.dga = load float, ptr %i.dfz, align 4, !tbaa !46
  %i.dgb = fsub float %i.dga, %i.cyt              ; 2 uses
  %i.dgc = call float @llvm.fmuladd.f32(float %i.dgb, float %i.dgb, float %i.dfy) ; 2 uses
  %i.dgd = fcmp olt float %.02.i.i, %i.dfr
  %i.dge = select i1 %i.dgd, float %i.dfr, float %.02.i.i ; 2 uses
  %i.dgf = fcmp olt float %i.dge, %i.dgc
  %i.dgg = select i1 %i.dgf, float %i.dgc, float %i.dge ; 2 uses
  %i.dgh = add nuw nsw i64 %.0521.i.i, 1          ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %i.dgh, %i.dey
  br i1 %exitcond.not.i74.i, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i591, !llvm.loop !116

_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i: ; preds = %.lr.ph.i.i591, %bb.hg
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.hg ], [ %i.dgg, %.lr.ph.i.i591 ]
  %i.dgi = call noundef float @sqrtf(float noundef %.0.lcssa.i.i) #14 ; 2 uses
  %i.dgj = fsub float %i.deh, %i.cyl              ; 2 uses
  %i.dgk = fsub float %i.dee, %i.cyu              ; 2 uses
  %i.dgl = fmul float %i.dgk, %i.dgk
  %i.dgm = call float @llvm.fmuladd.f32(float %i.dgj, float %i.dgj, float %i.dgl)
  %i.dgn = fsub float %i.dec, %i.cyt              ; 2 uses
  %i.dgo = call float @llvm.fmuladd.f32(float %i.dgn, float %i.dgn, float %i.dgm)
  %i.dgp = fmul float %i.dgi, %i.dgi
  %i.dgq = fcmp ogt float %i.dgo, %i.dgp
  br i1 %i.dgq, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hh

bb.hh:                                            ; preds = %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i
  %i.dgr = load i32, ptr %i.dep, align 4, !tbaa !28 ; 3 uses
  %i.dgs = zext i32 %i.dgr to i64
  %i.dgt = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dgs
  %i.dgu = load i32, ptr %i.dev, align 4, !tbaa !28 ; 2 uses
  %i.dgv = sub i32 %i.dgu, %i.dgr
  %i.dgw = zext i32 %i.dgv to i64
  %.not1.not.i.i592 = icmp eq i32 %i.dgu, %i.dgr
  br i1 %.not1.not.i.i592, label %.loopexit.i593, label %.lr.ph.i75.i.preheader

.lr.ph.i75.i.preheader:                           ; preds = %bb.hh
  %i.dgx = shufflevector <2 x float> %i.cyi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dgy = insertelement <4 x float> %i.dgx, float %i.cyt, i64 2
  %i.dgz = insertelement <4 x float> %i.dgy, float %i.dee, i64 3 ; 2 uses
  %i.dha = insertelement <4 x float> %i.dgz, float %i.dec, i64 3
  %i.dhb = shufflevector <4 x float> %i.dha, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  br label %.lr.ph.i75.i

bb.hi:                                            ; preds = %.lr.ph.i75.i
  %i.dhc = add nuw nsw i64 %.0252.i.i, 1          ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %i.dhc, %i.dgw
  br i1 %exitcond.not.i76.i, label %.loopexit.i593, label %.lr.ph.i75.i, !llvm.loop !117

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.preheader, %bb.hi
  %.0252.i.i = phi i64 [ %i.dhc, %bb.hi ], [ 0, %.lr.ph.i75.i.preheader ] ; 2 uses
  %i.dhd = getelementptr inbounds nuw [8 x i8], ptr %i.dgt, i64 %.0252.i.i ; 2 uses
  %i.dhe = load i32, ptr %i.dhd, align 4, !tbaa !39
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dhd, i64 4
  %i.dhg = load i32, ptr %i.dhf, align 4, !tbaa !40
  %i.dhh = zext i32 %i.dhe to i64
  %i.dhi = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dhh
  %i.dhj = zext i32 %i.dhg to i64
  %i.dhk = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dhj
  %i.dhl = load <3 x float>, ptr %i.dhk, align 4, !tbaa !44
  %i.dhm = shufflevector <3 x float> %i.dhl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dhn = load <3 x float>, ptr %i.dhi, align 4, !tbaa !44 ; 3 uses
  %i.dho = shufflevector <3 x float> %i.dhn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.dhp = fsub <4 x float> %i.dhm, %i.dho        ; 5 uses
  %i.dhq = extractelement <3 x float> %i.dhn, i64 0
  %i.dhr = fsub float %i.deh, %i.dhq              ; 2 uses
  %i.dhs = fsub <4 x float> %i.dgz, %i.dho        ; 2 uses
  %i.dht = shufflevector <3 x float> %i.dhn, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dhu = fsub <4 x float> %i.dhb, %i.dht        ; 2 uses
  %i.dhv = fneg <4 x float> %i.dhs
  %i.dhw = shufflevector <4 x float> %i.dhp, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dhx = fmul <4 x float> %i.dhw, %i.dhv
  %i.dhy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dhp, <4 x float> %i.dhu, <4 x float> %i.dhx) ; 4 uses
  %i.dhz = extractelement <4 x float> %i.dhu, i64 3
  %i.dia = fneg float %i.dhz
  %i.dib = extractelement <4 x float> %i.dhp, i64 0 ; 2 uses
  %i.dic = fmul float %i.dib, %i.dia
  %i.did = extractelement <4 x float> %i.dhp, i64 2
  %i.die = call float @llvm.fmuladd.f32(float %i.did, float %i.dhr, float %i.dic) ; 3 uses
  %i.dif = fneg float %i.dhr
  %i.dig = extractelement <4 x float> %i.dhp, i64 1
  %i.dih = fmul float %i.dig, %i.dif
  %i.dii = extractelement <4 x float> %i.dhs, i64 3
  %i.dij = call float @llvm.fmuladd.f32(float %i.dib, float %i.dii, float %i.dih) ; 3 uses
  %i.dik = extractelement <4 x float> %i.dhy, i64 2 ; 3 uses
  %i.dil = fmul float %i.dik, %i.die
  %i.dim = extractelement <4 x float> %i.dhy, i64 1 ; 3 uses
  %i.din = extractelement <4 x float> %i.dhy, i64 3 ; 3 uses
  %i.dio = call float @llvm.fmuladd.f32(float %i.dim, float %i.din, float %i.dil)
  %i.dip = extractelement <4 x float> %i.dhy, i64 0 ; 3 uses
  %i.diq = call float @llvm.fmuladd.f32(float %i.dip, float %i.dij, float %i.dio)
  %i.dir = fmul float %i.dik, %i.dik
  %i.dis = call float @llvm.fmuladd.f32(float %i.dim, float %i.dim, float %i.dir)
  %i.dit = call float @llvm.fmuladd.f32(float %i.dip, float %i.dip, float %i.dis)
  %i.diu = fmul float %i.die, %i.die
  %i.div = call float @llvm.fmuladd.f32(float %i.din, float %i.din, float %i.diu)
  %i.diw = call float @llvm.fmuladd.f32(float %i.dij, float %i.dij, float %i.div)
  %i.dix = fmul float %i.dit, %i.diw
  %i.diy = call float @llvm.sqrt.f32(float %i.dix)
  %i.diz = fmul float %i.diy, 2.500000e-01
  %i.dja = fcmp ugt float %i.diq, %i.diz
  br i1 %i.dja, label %bb.hi, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

.loopexit.i593:                                   ; preds = %bb.hi, %bb.hh
  %i.djb = fcmp oeq float %.sroa.50.0.copyload.i, 0.000000e+00
  %i.djc = fdiv float 1.000000e+00, %.sroa.50.0.copyload.i
  %i.djd = select i1 %i.djb, float 0.000000e+00, float %i.djc ; 2 uses
  %i.dje = extractelement <2 x float> %i.cyo, i64 0
  %i.djf = call float @llvm.fmuladd.f32(float %i.dje, float %i.dee, float %.sroa.33.0.copyload.i)
  %i.djg = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %i.dec, float %.sroa.38.0.copyload.i)
  %i.djh = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.deh, float %.sroa.43.0.copyload.i)
  %i.dji = fmul float %i.djf, 2.000000e+00
  %i.djj = insertelement <4 x float> poison, float %.sroa.48.0.copyload.i, i64 0
  %i.djk = insertelement <4 x float> %i.djj, float %i.djg, i64 1
  %i.djl = insertelement <4 x float> %i.djk, float %i.djh, i64 2
  %i.djm = insertelement <4 x float> %i.djl, float %.sroa.33.0.copyload.i, i64 3
  %i.djn = fmul <4 x float> %i.djm, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.djo = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.deh, float %i.dji)
  %i.djp = insertelement <4 x float> poison, float %i.djo, i64 0
  %i.djq = shufflevector <4 x float> %i.djp, <4 x float> %i.czf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.djr = shufflevector <4 x float> %i.djq, <4 x float> %i.cyp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.djs = insertelement <4 x float> poison, float %i.deh, i64 0
  %i.djt = insertelement <4 x float> %i.djs, float %i.dee, i64 1
  %i.dju = insertelement <4 x float> %i.djt, float %i.dec, i64 2
  %i.djv = shufflevector <2 x float> %i.cyi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.djw = shufflevector <4 x float> %i.dju, <4 x float> %i.djv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.djx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.djr, <4 x float> %i.djw, <4 x float> %i.djn) ; 4 uses
  %i.djy = extractelement <4 x float> %i.djx, i64 0
  %i.djz = extractelement <4 x float> %i.djx, i64 1
  %i.dka = call float @llvm.fmuladd.f32(float %i.djz, float %i.dee, float %i.djy)
  %i.dkb = extractelement <4 x float> %i.djx, i64 2
  %i.dkc = call noundef float @llvm.fmuladd.f32(float %i.dkb, float %i.dec, float %i.dka)
  %i.dkd = call float @llvm.fabs.f32(float %i.dkc)
  %i.dke = fmul float %i.djd, %i.dkd
  %i.dkf = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %i.cyt, float %.sroa.38.0.copyload.i)
  %i.dkg = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.cyl, float %.sroa.43.0.copyload.i)
  %i.dkh = extractelement <4 x float> %i.djx, i64 3
  %i.dki = fmul float %i.dkh, 2.000000e+00
  %i.dkj = fmul float %i.dkf, 2.000000e+00
  %i.dkk = fmul float %i.dkg, 2.000000e+00
  %i.dkl = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.cyl, float %i.dki)
  %i.dkm = extractelement <2 x float> %i.cze, i64 0
  %i.dkn = call float @llvm.fmuladd.f32(float %i.dkm, float %i.cyu, float %i.dkj)
  %i.dko = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyt, float %i.dkk)
  %i.dkp = call float @llvm.fmuladd.f32(float %i.dkl, float %i.cyl, float %.sroa.48.0.copyload.i)
  %i.dkq = call float @llvm.fmuladd.f32(float %i.dkn, float %i.cyu, float %i.dkp)
  %i.dkr = call noundef float @llvm.fmuladd.f32(float %i.dko, float %i.cyt, float %i.dkq)
  %i.dks = call float @llvm.fabs.f32(float %i.dkr)
  %i.dkt = fmul float %i.djd, %i.dks
  %i.dku = call float @llvm.fmuladd.f32(float %i.dkt, float 1.500000e+00, float f0x358637BD)
  %i.dkv = fcmp ogt float %i.dke, %i.dku
  br i1 %i.dkv, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %.loopexit.i593
  store float %i.deh, ptr %i.cyf, align 4, !tbaa !44
  store float %i.dee, ptr %i.cyh, align 4, !tbaa !44
  store float %i.dec, ptr %i.cyj, align 4, !tbaa !44
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i: ; preds = %.lr.ph.i75.i, %bb.hj, %.loopexit.i593, %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, %bb.hf, %bb.gy, %bb.gw, %bb.gw, %bb.gw, %bb.gv
  %i.dkw = add nuw i64 %.06245.i, 1               ; 2 uses
  %exitcond.not.i586 = icmp eq i64 %i.dkw, %.0703
  br i1 %exitcond.not.i586, label %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, label %bb.gv, !llvm.loop !118

.lr.ph823:                                        ; preds = %.lr.ph823, %.lr.ph823.preheader.new
  %.0331821 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %i.dlo, %.lr.ph823 ] ; 3 uses
  %niter1383 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %niter1383.next.1, %.lr.ph823 ]
  %i.dkx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331821
  %i.dky = load i32, ptr %i.dkx, align 4, !tbaa !28
  %i.dkz = zext i32 %i.dky to i64                 ; 2 uses
  %i.dla = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.dkz
  store i8 1, ptr %i.dla, align 1, !tbaa !29
  %i.dlb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dkz
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !28
  %i.dld = zext i32 %i.dlc to i64
  %i.dle = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.dld
  store i8 1, ptr %i.dle, align 1, !tbaa !29
  %i.dlf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331821
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 4
  %i.dlh = load i32, ptr %i.dlg, align 4, !tbaa !28
  %i.dli = zext i32 %i.dlh to i64                 ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.dli
  store i8 1, ptr %i.dlj, align 1, !tbaa !29
  %i.dlk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dli
  %i.dll = load i32, ptr %i.dlk, align 4, !tbaa !28
  %i.dlm = zext i32 %i.dll to i64
  %i.dln = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.dlm
  store i8 1, ptr %i.dln, align 1, !tbaa !29
  %i.dlo = add nuw i64 %.0331821, 2               ; 2 uses
  %niter1383.next.1 = add nuw i64 %niter1383, 2   ; 2 uses
  %niter1383.ncmp.1 = icmp eq i64 %niter1383.next.1, %unroll_iter1382
  br i1 %niter1383.ncmp.1, label %._crit_edge824.loopexit.unr-lcssa, label %.lr.ph823, !llvm.loop !119

_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit: ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  br i1 %.not403, label %.lr.ph.i595, label %.lr.ph91.i

.lr.ph.i595:                                      ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit
  %i.dlp = lshr i64 %5, 2
  %.not54.i596 = icmp eq ptr %.0379, null
  %.not55.i = icmp eq ptr %10, null
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dls = load float, ptr %i.b, align 4
  %i.dlt = load float, ptr %i.dlq, align 4
  %i.dlu = load float, ptr %i.dlr, align 4
  br label %.lr.ph.split.us.i597

.lr.ph.split.us.i597:                             ; preds = %bb.hr, %.lr.ph.i595
  %.05060.us.i = phi i64 [ %i.dmv, %bb.hr ], [ 0, %.lr.ph.i595 ] ; 6 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.beo, i64 %.05060.us.i
  %i.dlw = load i8, ptr %i.dlv, align 1, !tbaa !29
  %.not.us.i = icmp eq i8 %i.dlw, 0
  br i1 %.not.us.i, label %bb.hr, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.split.us.i597
  br i1 %.not54.i596, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.dlx = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.05060.us.i
  %i.dly = load i32, ptr %i.dlx, align 4, !tbaa !28
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.dlz = trunc i64 %.05060.us.i to i32
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.dma = phi i32 [ %i.dly, %bb.hl ], [ %i.dlz, %bb.hm ] ; 2 uses
  br i1 %.not55.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.dmb = zext i32 %i.dma to i64
  %i.dmc = getelementptr inbounds nuw i8, ptr %10, i64 %i.dmb
  %i.dmd = load i8, ptr %i.dmc, align 1, !tbaa !29
  %i.dme = and i8 %i.dmd, 1
  %.not56.us.i = icmp eq i8 %i.dme, 0
  br i1 %.not56.us.i, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.05060.us.i
  %i.dmg = load i8, ptr %i.dmf, align 1, !tbaa !29
  %.not57.us.i = icmp eq i8 %i.dmg, 4
  br i1 %.not57.us.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.dmh = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.05060.us.i ; 3 uses
  %i.dmi = zext i32 %i.dma to i64
  %i.dmj = mul i64 %i.dlp, %i.dmi
  %i.dmk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dmj ; 3 uses
  %i.dml = load float, ptr %i.dmh, align 4, !tbaa !49
  %i.dmm = call float @llvm.fmuladd.f32(float %i.dml, float %i.zf, float %i.dls)
  store float %i.dmm, ptr %i.dmk, align 4, !tbaa !44
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmh, i64 4
  %i.dmo = load float, ptr %i.dmn, align 4, !tbaa !50
  %i.dmp = call float @llvm.fmuladd.f32(float %i.dmo, float %i.zf, float %i.dlt)
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmk, i64 4
  store float %i.dmp, ptr %i.dmq, align 4, !tbaa !44
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmh, i64 8
  %i.dms = load float, ptr %i.dmr, align 4, !tbaa !46
  %i.dmt = call float @llvm.fmuladd.f32(float %i.dms, float %i.zf, float %i.dlu)
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmk, i64 8
  store float %i.dmt, ptr %i.dmu, align 4, !tbaa !44
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %.lr.ph.split.us.i597
  %i.dmv = add nuw i64 %.05060.us.i, 1            ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.dmv, %.0703
  br i1 %exitcond79.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.us.i597, !llvm.loop !120

.lr.ph91.i:                                       ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, %.loopexit75.i
  %.090.i599 = phi i64 [ %i.dpd, %.loopexit75.i ], [ 0, %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit ] ; 12 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.beo, i64 %.090.i599
  %i.dmx = load i8, ptr %i.dmw, align 1, !tbaa !29
  %.not.i600 = icmp eq i8 %i.dmx, 0
  br i1 %.not.i600, label %.loopexit75.i, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph91.i
  %i.dmy = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.090.i599
  %i.dmz = load i32, ptr %i.dmy, align 4, !tbaa !28
  %i.dna = zext i32 %i.dmz to i64
  %.not71.i = icmp eq i64 %.090.i599, %i.dna
  br i1 %.not71.i, label %.preheader.i603, label %.loopexit75.i

.preheader.i603:                                  ; preds = %bb.hs
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.090.i599
  %i.dnc = trunc nuw i64 %.090.i599 to i32        ; 3 uses
  %i.dnd = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.090.i599 ; 3 uses
  %i.dne = getelementptr inbounds nuw i8, ptr %i.dnd, i64 4
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dnd, i64 8
  %.065.in78.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.090.i599
  %i.dng = mul i64 %.090.i599, %.0330
  %invariant.gep88.i = getelementptr [4 x i8], ptr %.0352, i64 %i.dng
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hz, %.preheader.i603
  %.06787.i = phi i64 [ 0, %.preheader.i603 ], [ %i.dpc, %bb.hz ] ; 5 uses
  %i.dnh = load i8, ptr %i.dnb, align 1, !tbaa !29
  %i.dni = icmp eq i8 %i.dnh, 3
  br i1 %i.dni, label %bb.hu, label %.loopexit.i604
end_hunk_1
