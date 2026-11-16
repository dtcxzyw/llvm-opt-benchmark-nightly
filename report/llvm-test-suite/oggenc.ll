Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@setup_tone_curves:bb.a
  %wide.load495.5 = load <4 x float>, ptr %i.avn, align 16 ; 2 uses
  %wide.load496.5 = load <4 x float>, ptr %i.avo, align 16 ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.axt, i64 1504 ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %i.axt, i64 1520 ; 2 uses
  %wide.load497.5 = load <4 x float>, ptr %i.cif, align 16 ; 2 uses
  %wide.load498.5 = load <4 x float>, ptr %i.cig, align 16 ; 2 uses
  %i.cih = fcmp olt <4 x float> %wide.load495.5, %wide.load497.5
  %i.cii = fcmp olt <4 x float> %wide.load496.5, %wide.load498.5
  %i.cij = select <4 x i1> %i.cih, <4 x float> %wide.load495.5, <4 x float> %wide.load497.5
  %i.cik = select <4 x i1> %i.cii, <4 x float> %wide.load496.5, <4 x float> %wide.load498.5
  store <4 x float> %i.cij, ptr %i.cif, align 16
  store <4 x float> %i.cik, ptr %i.cig, align 16
  %wide.load495.6 = load <4 x float>, ptr %i.avp, align 16 ; 2 uses
  %wide.load496.6 = load <4 x float>, ptr %i.avq, align 16 ; 2 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %i.axt, i64 1536 ; 2 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.axt, i64 1552 ; 2 uses
  %wide.load497.6 = load <4 x float>, ptr %i.cil, align 16 ; 2 uses
  %wide.load498.6 = load <4 x float>, ptr %i.cim, align 16 ; 2 uses
  %i.cin = fcmp olt <4 x float> %wide.load495.6, %wide.load497.6
  %i.cio = fcmp olt <4 x float> %wide.load496.6, %wide.load498.6
  %i.cip = select <4 x i1> %i.cin, <4 x float> %wide.load495.6, <4 x float> %wide.load497.6
  %i.ciq = select <4 x i1> %i.cio, <4 x float> %wide.load496.6, <4 x float> %wide.load498.6
  store <4 x float> %i.cip, ptr %i.cil, align 16
  store <4 x float> %i.ciq, ptr %i.cim, align 16
  %wide.load486 = load <4 x float>, ptr %i.v, align 16 ; 2 uses
  %wide.load487 = load <4 x float>, ptr %i.avr, align 16 ; 2 uses
  %wide.load488 = load <4 x float>, ptr %i.u, align 16 ; 2 uses
  %wide.load489 = load <4 x float>, ptr %i.avs, align 16 ; 2 uses
  %i.cir = fcmp olt <4 x float> %wide.load486, %wide.load488
  %i.cis = fcmp olt <4 x float> %wide.load487, %wide.load489
  %i.cit = select <4 x i1> %i.cir, <4 x float> %wide.load486, <4 x float> %wide.load488
  %i.ciu = select <4 x i1> %i.cis, <4 x float> %wide.load487, <4 x float> %wide.load489
  store <4 x float> %i.cit, ptr %i.u, align 16
  store <4 x float> %i.ciu, ptr %i.avs, align 16
  %wide.load486.1 = load <4 x float>, ptr %i.avt, align 16 ; 2 uses
  %wide.load487.1 = load <4 x float>, ptr %i.avu, align 16 ; 2 uses
  %wide.load488.1 = load <4 x float>, ptr %i.avv, align 16 ; 2 uses
  %wide.load489.1 = load <4 x float>, ptr %i.avw, align 16 ; 2 uses
  %i.civ = fcmp olt <4 x float> %wide.load486.1, %wide.load488.1
  %i.ciw = fcmp olt <4 x float> %wide.load487.1, %wide.load489.1
  %i.cix = select <4 x i1> %i.civ, <4 x float> %wide.load486.1, <4 x float> %wide.load488.1
  %i.ciy = select <4 x i1> %i.ciw, <4 x float> %wide.load487.1, <4 x float> %wide.load489.1
  store <4 x float> %i.cix, ptr %i.avv, align 16
  store <4 x float> %i.ciy, ptr %i.avw, align 16
  %wide.load486.2 = load <4 x float>, ptr %i.avx, align 16 ; 2 uses
  %wide.load487.2 = load <4 x float>, ptr %i.avy, align 16 ; 2 uses
  %wide.load488.2 = load <4 x float>, ptr %i.avz, align 16 ; 2 uses
  %wide.load489.2 = load <4 x float>, ptr %i.awa, align 16 ; 2 uses
  %i.ciz = fcmp olt <4 x float> %wide.load486.2, %wide.load488.2
  %i.cja = fcmp olt <4 x float> %wide.load487.2, %wide.load489.2
  %i.cjb = select <4 x i1> %i.ciz, <4 x float> %wide.load486.2, <4 x float> %wide.load488.2
  %i.cjc = select <4 x i1> %i.cja, <4 x float> %wide.load487.2, <4 x float> %wide.load489.2
  store <4 x float> %i.cjb, ptr %i.avz, align 16
  store <4 x float> %i.cjc, ptr %i.awa, align 16
  %wide.load486.3 = load <4 x float>, ptr %i.awb, align 16 ; 2 uses
  %wide.load487.3 = load <4 x float>, ptr %i.awc, align 16 ; 2 uses
  %wide.load488.3 = load <4 x float>, ptr %i.awd, align 16 ; 2 uses
  %wide.load489.3 = load <4 x float>, ptr %i.awe, align 16 ; 2 uses
  %i.cjd = fcmp olt <4 x float> %wide.load486.3, %wide.load488.3
  %i.cje = fcmp olt <4 x float> %wide.load487.3, %wide.load489.3
  %i.cjf = select <4 x i1> %i.cjd, <4 x float> %wide.load486.3, <4 x float> %wide.load488.3
  %i.cjg = select <4 x i1> %i.cje, <4 x float> %wide.load487.3, <4 x float> %wide.load489.3
  store <4 x float> %i.cjf, ptr %i.awd, align 16
  store <4 x float> %i.cjg, ptr %i.awe, align 16
  %wide.load486.4 = load <4 x float>, ptr %i.awf, align 16 ; 2 uses
  %wide.load487.4 = load <4 x float>, ptr %i.awg, align 16 ; 2 uses
  %wide.load488.4 = load <4 x float>, ptr %i.awh, align 16 ; 2 uses
  %wide.load489.4 = load <4 x float>, ptr %i.awi, align 16 ; 2 uses
  %i.cjh = fcmp olt <4 x float> %wide.load486.4, %wide.load488.4
  %i.cji = fcmp olt <4 x float> %wide.load487.4, %wide.load489.4
  %i.cjj = select <4 x i1> %i.cjh, <4 x float> %wide.load486.4, <4 x float> %wide.load488.4
  %i.cjk = select <4 x i1> %i.cji, <4 x float> %wide.load487.4, <4 x float> %wide.load489.4
  store <4 x float> %i.cjj, ptr %i.awh, align 16
  store <4 x float> %i.cjk, ptr %i.awi, align 16
  %wide.load486.5 = load <4 x float>, ptr %i.awj, align 16 ; 2 uses
  %wide.load487.5 = load <4 x float>, ptr %i.awk, align 16 ; 2 uses
  %wide.load488.5 = load <4 x float>, ptr %i.awl, align 16 ; 2 uses
  %wide.load489.5 = load <4 x float>, ptr %i.awm, align 16 ; 2 uses
  %i.cjl = fcmp olt <4 x float> %wide.load486.5, %wide.load488.5
  %i.cjm = fcmp olt <4 x float> %wide.load487.5, %wide.load489.5
  %i.cjn = select <4 x i1> %i.cjl, <4 x float> %wide.load486.5, <4 x float> %wide.load488.5
  %i.cjo = select <4 x i1> %i.cjm, <4 x float> %wide.load487.5, <4 x float> %wide.load489.5
  store <4 x float> %i.cjn, ptr %i.awl, align 16
  store <4 x float> %i.cjo, ptr %i.awm, align 16
  %wide.load486.6 = load <4 x float>, ptr %i.awn, align 16 ; 2 uses
  %wide.load487.6 = load <4 x float>, ptr %i.awo, align 16 ; 2 uses
  %wide.load488.6 = load <4 x float>, ptr %i.awp, align 16 ; 2 uses
  %wide.load489.6 = load <4 x float>, ptr %i.awq, align 16 ; 2 uses
  %i.cjp = fcmp olt <4 x float> %wide.load486.6, %wide.load488.6
  %i.cjq = fcmp olt <4 x float> %wide.load487.6, %wide.load489.6
  %i.cjr = select <4 x i1> %i.cjp, <4 x float> %wide.load486.6, <4 x float> %wide.load488.6
  %i.cjs = select <4 x i1> %i.cjq, <4 x float> %wide.load487.6, <4 x float> %wide.load489.6
  store <4 x float> %i.cjr, ptr %i.awp, align 16
  store <4 x float> %i.cjs, ptr %i.awq, align 16
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.axt, i64 1568 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 16 ; 2 uses
  %wide.load480 = load <4 x float>, ptr %i.w, align 16 ; 2 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.axt, i64 1584 ; 2 uses
  %wide.load481 = load <4 x float>, ptr %i.cjt, align 16 ; 2 uses
  %wide.load482 = load <4 x float>, ptr %i.cju, align 16 ; 2 uses
  %i.cjv = fcmp olt <4 x float> %wide.load, %wide.load481
  %i.cjw = fcmp olt <4 x float> %wide.load480, %wide.load482
  %i.cjx = select <4 x i1> %i.cjv, <4 x float> %wide.load, <4 x float> %wide.load481
  %i.cjy = select <4 x i1> %i.cjw, <4 x float> %wide.load480, <4 x float> %wide.load482
  store <4 x float> %i.cjx, ptr %i.cjt, align 16
  store <4 x float> %i.cjy, ptr %i.cju, align 16
  %wide.load.1 = load <4 x float>, ptr %i.awr, align 16 ; 2 uses
  %wide.load480.1 = load <4 x float>, ptr %i.aws, align 16 ; 2 uses
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.axt, i64 1600 ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.axt, i64 1616 ; 2 uses
  %wide.load481.1 = load <4 x float>, ptr %i.cjz, align 16 ; 2 uses
  %wide.load482.1 = load <4 x float>, ptr %i.cka, align 16 ; 2 uses
  %i.ckb = fcmp olt <4 x float> %wide.load.1, %wide.load481.1
  %i.ckc = fcmp olt <4 x float> %wide.load480.1, %wide.load482.1
  %i.ckd = select <4 x i1> %i.ckb, <4 x float> %wide.load.1, <4 x float> %wide.load481.1
  %i.cke = select <4 x i1> %i.ckc, <4 x float> %wide.load480.1, <4 x float> %wide.load482.1
  store <4 x float> %i.ckd, ptr %i.cjz, align 16
  store <4 x float> %i.cke, ptr %i.cka, align 16
  %wide.load.2 = load <4 x float>, ptr %i.awt, align 16 ; 2 uses
  %wide.load480.2 = load <4 x float>, ptr %i.awu, align 16 ; 2 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.axt, i64 1632 ; 2 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.axt, i64 1648 ; 2 uses
  %wide.load481.2 = load <4 x float>, ptr %i.ckf, align 16 ; 2 uses
  %wide.load482.2 = load <4 x float>, ptr %i.ckg, align 16 ; 2 uses
  %i.ckh = fcmp olt <4 x float> %wide.load.2, %wide.load481.2
  %i.cki = fcmp olt <4 x float> %wide.load480.2, %wide.load482.2
  %i.ckj = select <4 x i1> %i.ckh, <4 x float> %wide.load.2, <4 x float> %wide.load481.2
  %i.ckk = select <4 x i1> %i.cki, <4 x float> %wide.load480.2, <4 x float> %wide.load482.2
  store <4 x float> %i.ckj, ptr %i.ckf, align 16
  store <4 x float> %i.ckk, ptr %i.ckg, align 16
  %wide.load.3 = load <4 x float>, ptr %i.awv, align 16 ; 2 uses
  %wide.load480.3 = load <4 x float>, ptr %i.aww, align 16 ; 2 uses
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.axt, i64 1664 ; 2 uses
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.axt, i64 1680 ; 2 uses
  %wide.load481.3 = load <4 x float>, ptr %i.ckl, align 16 ; 2 uses
  %wide.load482.3 = load <4 x float>, ptr %i.ckm, align 16 ; 2 uses
  %i.ckn = fcmp olt <4 x float> %wide.load.3, %wide.load481.3
  %i.cko = fcmp olt <4 x float> %wide.load480.3, %wide.load482.3
  %i.ckp = select <4 x i1> %i.ckn, <4 x float> %wide.load.3, <4 x float> %wide.load481.3
  %i.ckq = select <4 x i1> %i.cko, <4 x float> %wide.load480.3, <4 x float> %wide.load482.3
  store <4 x float> %i.ckp, ptr %i.ckl, align 16
  store <4 x float> %i.ckq, ptr %i.ckm, align 16
  %wide.load.4 = load <4 x float>, ptr %i.awx, align 16 ; 2 uses
  %wide.load480.4 = load <4 x float>, ptr %i.awy, align 16 ; 2 uses
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.axt, i64 1696 ; 2 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %i.axt, i64 1712 ; 2 uses
  %wide.load481.4 = load <4 x float>, ptr %i.ckr, align 16 ; 2 uses
  %wide.load482.4 = load <4 x float>, ptr %i.cks, align 16 ; 2 uses
  %i.ckt = fcmp olt <4 x float> %wide.load.4, %wide.load481.4
  %i.cku = fcmp olt <4 x float> %wide.load480.4, %wide.load482.4
  %i.ckv = select <4 x i1> %i.ckt, <4 x float> %wide.load.4, <4 x float> %wide.load481.4
  %i.ckw = select <4 x i1> %i.cku, <4 x float> %wide.load480.4, <4 x float> %wide.load482.4
  store <4 x float> %i.ckv, ptr %i.ckr, align 16
  store <4 x float> %i.ckw, ptr %i.cks, align 16
  %wide.load.5 = load <4 x float>, ptr %i.awz, align 16 ; 2 uses
  %wide.load480.5 = load <4 x float>, ptr %i.axa, align 16 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.axt, i64 1728 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %i.axt, i64 1744 ; 2 uses
  %wide.load481.5 = load <4 x float>, ptr %i.ckx, align 16 ; 2 uses
  %wide.load482.5 = load <4 x float>, ptr %i.cky, align 16 ; 2 uses
  %i.ckz = fcmp olt <4 x float> %wide.load.5, %wide.load481.5
  %i.cla = fcmp olt <4 x float> %wide.load480.5, %wide.load482.5
  %i.clb = select <4 x i1> %i.ckz, <4 x float> %wide.load.5, <4 x float> %wide.load481.5
  %i.clc = select <4 x i1> %i.cla, <4 x float> %wide.load480.5, <4 x float> %wide.load482.5
  store <4 x float> %i.clb, ptr %i.ckx, align 16
  store <4 x float> %i.clc, ptr %i.cky, align 16
  %wide.load.6 = load <4 x float>, ptr %i.axb, align 16 ; 2 uses
  %wide.load480.6 = load <4 x float>, ptr %i.axc, align 16 ; 2 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %i.axt, i64 1760 ; 2 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %i.axt, i64 1776 ; 2 uses
  %wide.load481.6 = load <4 x float>, ptr %i.cld, align 16 ; 2 uses
  %wide.load482.6 = load <4 x float>, ptr %i.cle, align 16 ; 2 uses
  %i.clf = fcmp olt <4 x float> %wide.load.6, %wide.load481.6
  %i.clg = fcmp olt <4 x float> %wide.load480.6, %wide.load482.6
  %i.clh = select <4 x i1> %i.clf, <4 x float> %wide.load.6, <4 x float> %wide.load481.6
  %i.cli = select <4 x i1> %i.clg, <4 x float> %wide.load480.6, <4 x float> %wide.load482.6
  store <4 x float> %i.clh, ptr %i.cld, align 16
  store <4 x float> %i.cli, ptr %i.cle, align 16
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond387.not = icmp eq i64 %indvar.next, 17
  br i1 %exitcond387.not, label %.preheader295, label %bb.b, !llvm.loop !3954

bb.i:                                             ; preds = %.preheader295, %bb.bs
  %indvars.iv441 = phi i64 [ 0, %.preheader295 ], [ %indvars.iv.next442, %bb.bs ] ; 4 uses
  %i.clj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #69 ; 2 uses
  %i.clk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv441
  store ptr %i.clj, ptr %i.clk, align 8
  %i.cll = trunc nuw nsw i64 %indvars.iv441 to i32 ; 2 uses
  %i.clm = uitofp nneg i32 %i.cll to double
  %i.cln = fmul nnan double %i.clm, 5.000000e-01  ; 3 uses
  %i.clo = fadd nnan double %i.cln, f0x4017DCF680000000
  %i.clp = fmul nnan double %i.clo, f0x3FE62E42A0000000
  %i.clq = tail call double @exp(double noundef %i.clp) #62
  %i.clr = fdiv double %i.clq, %i.axd
  %i.cls = tail call double @llvm.floor.f64(double %i.clr)
  %i.clt = fptosi double %i.cls to i32
  %i.clu = insertelement <2 x i32> poison, i32 %i.clt, i64 0
  %i.clv = shufflevector <2 x i32> %i.clu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.clw = add nsw <2 x i32> %i.clv, <i32 0, i32 1>
  %i.clx = sitofp <2 x i32> %i.clw to <2 x float>
  %i.cly = fmul <2 x float> %i.axg, %i.clx        ; 2 uses
  %i.clz = fadd <2 x float> %i.cly, <float 1.000000e+00, float poison>
  %5 = shufflevector <2 x float> %i.clz, <2 x float> %i.cly, <2 x i32> <i32 0, i32 3>
  %i.cma = fpext <2 x float> %5 to <2 x double>   ; 2 uses
  %i.cmb = extractelement <2 x double> %i.cma, i64 0
  %i.cmc = tail call double @log(double noundef %i.cmb) #62
  %i.cmd = fmul double %i.cmc, f0x3FF7154760000000
  %i.cme = fadd double %i.cmd, f0xC017DCF680000000
  %i.cmf = fmul double %i.cme, 2.000000e+00
  %i.cmg = tail call double @llvm.ceil.f64(double %i.cmf)
  %i.cmh = fptosi double %i.cmg to i32
  %i.cmi = extractelement <2 x double> %i.cma, i64 1
  %i.cmj = tail call double @log(double noundef %i.cmi) #62
  %i.cmk = fmul double %i.cmj, f0x3FF7154760000000
  %i.cml = fadd double %i.cmk, f0xC017DCF680000000
  %i.cmm = fmul double %i.cml, 2.000000e+00
  %i.cmn = tail call double @llvm.floor.f64(double %i.cmm)
  %i.cmo = fptosi double %i.cmn to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cll, i32 %i.cmh)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 2 uses
  %spec.store.select9 = tail call i32 @llvm.smin.i32(i32 %i.cmo, i32 16) ; 2 uses
  %.not330 = icmp sgt i32 %spec.store.select, %spec.store.select9
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %.not272 = icmp eq i64 %indvars.iv441, 16
  %invariant.gep350 = getelementptr inbounds nuw [1792 x i8], ptr %i.b, i64 %indvars.iv.next442
  %i.cmp = zext nneg i32 %spec.store.select to i64
  %i.cmq = sext i32 %spec.store.select9 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.br
  %indvars.iv437 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next438, %bb.br ] ; 4 uses
  %i.cmr = tail call noalias dereferenceable_or_null(232) ptr @malloc(i64 noundef 232) #69
  %i.cms = getelementptr inbounds nuw [8 x i8], ptr %i.clj, i64 %indvars.iv437 ; 4 uses
  store ptr %i.cmr, ptr %i.cms, align 8
  br i1 %i.axe, label %.lr.ph.preheader, label %.preheader294

.lr.ph.preheader:                                 ; preds = %bb.j
  br i1 %min.iters.check865, label %.lr.ph.preheader874, label %vector.body868

vector.body868:                                   ; preds = %.lr.ph.preheader, %vector.body868
  %index869 = phi i64 [ %index.next870, %vector.body868 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index869 ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmt, i64 16
  store <4 x float> splat (float 9.990000e+02), ptr %i.cmt, align 16
  store <4 x float> splat (float 9.990000e+02), ptr %i.cmu, align 16
  %index.next870 = add nuw i64 %index869, 8       ; 2 uses
  %i.cmv = icmp eq i64 %index.next870, %n.vec867
  br i1 %i.cmv, label %middle.block871, label %vector.body868, !llvm.loop !3955

middle.block871:                                  ; preds = %vector.body868
  br i1 %cmp.n872, label %.preheader294, label %.lr.ph.preheader874

.lr.ph.preheader874:                              ; preds = %.lr.ph.preheader, %middle.block871
  %indvars.iv388.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec867, %middle.block871 ]
  br label %.lr.ph

.preheader294:                                    ; preds = %.lr.ph, %middle.block871, %bb.j
  br i1 %.not330, label %._crit_edge332, label %.preheader290.lr.ph

.preheader290.lr.ph:                              ; preds = %.preheader294
  %invariant.gep = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %indvars.iv437
  br label %.preheader290

.lr.ph:                                           ; preds = %.lr.ph.preheader874, %.lr.ph
  %indvars.iv388 = phi i64 [ %indvars.iv.next389, %.lr.ph ], [ %indvars.iv388.ph, %.lr.ph.preheader874 ] ; 2 uses
  %i.cmw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv388
  store float 9.990000e+02, ptr %i.cmw, align 4
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count
  br i1 %exitcond391.not, label %.preheader294, label %.lr.ph, !llvm.loop !3956

.preheader290:                                    ; preds = %.preheader290.lr.ph, %._crit_edge329
  %indvars.iv407 = phi i64 [ %i.cmp, %.preheader290.lr.ph ], [ %indvars.iv.next408, %._crit_edge329 ] ; 4 uses
  %i.cmx = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.cmy = uitofp nneg i32 %i.cmx to double
  %i.cmz = fmul nnan double %i.cmy, 5.000000e-01
  %gep = getelementptr inbounds nuw [1792 x i8], ptr %invariant.gep, i64 %indvars.iv407 ; 2 uses
  br label %bb.k

.preheader:                                       ; preds = %._crit_edge
  %i.cna = icmp slt i32 %.2246.lcssa, %2
  br i1 %i.cna, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %.preheader
  %i.cnb = getelementptr inbounds nuw i8, ptr %gep, i64 220
  %i.cnc = load float, ptr %i.cnb, align 4        ; 3 uses
  %i.cnd = sext i32 %.2246.lcssa to i64           ; 4 uses
  %i.cne = sub nsw i64 %i.d, %i.cnd               ; 3 uses
  %min.iters.check837 = icmp ult i64 %i.cne, 8
  br i1 %min.iters.check837, label %scalar.ph836.preheader, label %vector.ph838

vector.ph838:                                     ; preds = %.lr.ph328
  %n.vec839 = and i64 %i.cne, -8                  ; 3 uses
  %i.cnf = add nsw i64 %n.vec839, %i.cnd
  %broadcast.splatinsert840 = insertelement <4 x float> poison, float %i.cnc, i64 0
  %broadcast.splat841 = shufflevector <4 x float> %broadcast.splatinsert840, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep876 = getelementptr [4 x i8], ptr %i.f, i64 %i.cnd
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph838
  %index843 = phi i64 [ 0, %vector.ph838 ], [ %index.next846, %vector.body842 ] ; 2 uses
  %gep877 = getelementptr [4 x i8], ptr %invariant.gep876, i64 %index843 ; 3 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %gep877, i64 16 ; 2 uses
  %wide.load844 = load <4 x float>, ptr %gep877, align 4 ; 2 uses
  %wide.load845 = load <4 x float>, ptr %i.cng, align 4 ; 2 uses
  %i.cnh = fcmp ogt <4 x float> %wide.load844, %broadcast.splat841
  %i.cni = fcmp ogt <4 x float> %wide.load845, %broadcast.splat841
  %i.cnj = select <4 x i1> %i.cnh, <4 x float> %broadcast.splat841, <4 x float> %wide.load844
  %i.cnk = select <4 x i1> %i.cni, <4 x float> %broadcast.splat841, <4 x float> %wide.load845
  store <4 x float> %i.cnj, ptr %gep877, align 4
  store <4 x float> %i.cnk, ptr %i.cng, align 4
  %index.next846 = add nuw i64 %index843, 8       ; 2 uses
  %i.cnl = icmp eq i64 %index.next846, %n.vec839
  br i1 %i.cnl, label %middle.block847, label %vector.body842, !llvm.loop !3957

middle.block847:                                  ; preds = %vector.body842
  %cmp.n848 = icmp eq i64 %i.cne, %n.vec839
  br i1 %cmp.n848, label %._crit_edge329, label %scalar.ph836.preheader

scalar.ph836.preheader:                           ; preds = %.lr.ph328, %middle.block847
  %indvars.iv401.ph = phi i64 [ %i.cnd, %.lr.ph328 ], [ %i.cnf, %middle.block847 ]
  br label %scalar.ph836

bb.k:                                             ; preds = %.preheader290, %._crit_edge
  %indvars.iv396 = phi i64 [ 0, %.preheader290 ], [ %indvars.iv.next397, %._crit_edge ] ; 3 uses
  %.0244324 = phi i32 [ 0, %.preheader290 ], [ %.2246.lcssa, %._crit_edge ] ; 2 uses
  %i.cnm = trunc nuw nsw i64 %indvars.iv396 to i32
  %i.cnn = uitofp nneg i32 %i.cnm to double
  %i.cno = fmul nnan double %i.cnn, 1.250000e-01
  %i.cnp = fadd double %i.cmz, %i.cno
  %i.cnq = insertelement <2 x double> poison, double %i.cnp, i64 0
  %i.cnr = shufflevector <2 x double> %i.cnq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cns = fadd <2 x double> %i.cnr, <double -2.062500e+00, double -1.937500e+00>
  %i.cnt = fadd <2 x double> %i.cns, splat (double f0x4017DCF680000000)
  %i.cnu = fmul <2 x double> %i.cnt, splat (double f0x3FE62E42A0000000) ; 2 uses
  %i.cnv = extractelement <2 x double> %i.cnu, i64 0
  %i.cnw = tail call double @exp(double noundef %i.cnv) #62
  %i.cnx = extractelement <2 x double> %i.cnu, i64 1
  %i.cny = tail call double @exp(double noundef %i.cnx) #62
  %i.cnz = insertelement <2 x double> poison, double %i.cnw, i64 0
  %i.coa = insertelement <2 x double> %i.cnz, double %i.cny, i64 1
  %i.cob = fdiv <2 x double> %i.coa, %i.axi
  %i.coc = fadd <2 x double> %i.cob, <double -0.000000e+00, double 1.000000e+00>
  %i.cod = fptosi <2 x double> %i.coc to <2 x i32>
  %i.coe = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cod, <2 x i32> zeroinitializer) ; 2 uses
  %i.cof = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.coe, <2 x i32> %i.axj)
  %i.cog = insertelement <2 x i32> %i.axk, i32 %.0244324, i64 0
  %i.coh = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cof, <2 x i32> %i.cog) ; 2 uses
  %i.coi = extractelement <2 x i32> %i.coh, i64 0 ; 4 uses
  %i.coj = extractelement <2 x i32> %i.coh, i64 1 ; 3 uses
  %i.cok = icmp slt i32 %i.coi, %i.coj
  br i1 %i.cok, label %.lr.ph322, label %._crit_edge

.lr.ph322:                                        ; preds = %bb.k
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv396
  %i.com = load float, ptr %i.col, align 4        ; 3 uses
  %i.con = tail call i32 @llvm.smin.i32(i32 %.0244324, i32 %2)
  %smin = sext i32 %i.con to i64
  %i.coo = extractelement <2 x i32> %i.coe, i64 0
  %i.cop = zext nneg i32 %i.coo to i64
  %smin392 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %i.cop) ; 4 uses
  %i.coq = trunc nsw i64 %smin392 to i32
  %i.cor = add i32 %i.coj, %i.coq
  %i.cos = sub i32 %i.cor, %i.coi                 ; 3 uses
  %i.cot = xor i32 %i.coi, -1
  %i.cou = add i32 %i.coj, %i.cot                 ; 2 uses
  %i.cov = zext i32 %i.cou to i64
  %i.cow = add nuw nsw i64 %i.cov, 1              ; 2 uses
  %min.iters.check851 = icmp ult i32 %i.cou, 7
  br i1 %min.iters.check851, label %scalar.ph850.preheader, label %vector.ph852

vector.ph852:                                     ; preds = %.lr.ph322
  %n.vec853 = and i64 %i.cow, 8589934584          ; 3 uses
  %i.cox = add i64 %smin392, %n.vec853
  %broadcast.splatinsert854 = insertelement <4 x float> poison, float %i.com, i64 0
  %broadcast.splat855 = shufflevector <4 x float> %broadcast.splatinsert854, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.coy = getelementptr [4 x i8], ptr %i.f, i64 %smin392
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph852
  %index857 = phi i64 [ 0, %vector.ph852 ], [ %index.next860, %vector.body856 ] ; 2 uses
  %i.coz = getelementptr [4 x i8], ptr %i.coy, i64 %index857 ; 3 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 16 ; 2 uses
  %wide.load858 = load <4 x float>, ptr %i.coz, align 4 ; 2 uses
  %wide.load859 = load <4 x float>, ptr %i.cpa, align 4 ; 2 uses
  %i.cpb = fcmp ogt <4 x float> %wide.load858, %broadcast.splat855
  %i.cpc = fcmp ogt <4 x float> %wide.load859, %broadcast.splat855
  %i.cpd = select <4 x i1> %i.cpb, <4 x float> %broadcast.splat855, <4 x float> %wide.load858
  %i.cpe = select <4 x i1> %i.cpc, <4 x float> %broadcast.splat855, <4 x float> %wide.load859
  store <4 x float> %i.cpd, ptr %i.coz, align 4
  store <4 x float> %i.cpe, ptr %i.cpa, align 4
  %index.next860 = add nuw i64 %index857, 8       ; 2 uses
  %i.cpf = icmp eq i64 %index.next860, %n.vec853
  br i1 %i.cpf, label %middle.block861, label %vector.body856, !llvm.loop !3958

middle.block861:                                  ; preds = %vector.body856
  %cmp.n862 = icmp eq i64 %i.cow, %n.vec853
  br i1 %cmp.n862, label %._crit_edge, label %scalar.ph850.preheader

scalar.ph850.preheader:                           ; preds = %.lr.ph322, %middle.block861
  %indvars.iv393.ph = phi i64 [ %smin392, %.lr.ph322 ], [ %i.cox, %middle.block861 ]
  br label %scalar.ph850

scalar.ph850:                                     ; preds = %scalar.ph850.preheader, %scalar.ph850
end_hunk_0
