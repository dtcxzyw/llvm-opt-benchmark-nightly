Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/constants?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 132
begin_hunk_0_@constants:bb.a
  %i.glm = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.geb
  store i32 %.reass.4, ptr %i.glm, align 4, !tbaa !7
  %i.gln = getelementptr inbounds nuw i8, ptr %i.gku, i64 20
  %i.glo = load i32, ptr %i.gln, align 4, !tbaa !7
  %.reass.5 = add i32 %i.glo, %invariant.op1426
  %i.glp = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.ged
  store i32 %.reass.5, ptr %i.glp, align 4, !tbaa !7
  %i.glq = getelementptr inbounds nuw i8, ptr %i.gku, i64 24
  %i.glr = load i32, ptr %i.glq, align 8, !tbaa !7
  %.reass.6 = add i32 %i.glr, %invariant.op1426
  %i.gls = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gam
  store i32 %.reass.6, ptr %i.gls, align 4, !tbaa !7
  %i.glt = getelementptr inbounds nuw i8, ptr %i.gku, i64 28
  %i.glu = load i32, ptr %i.glt, align 4, !tbaa !7
  %.reass.7 = add i32 %i.glu, %invariant.op1426
  %i.glv = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gap
  store i32 %.reass.7, ptr %i.glv, align 4, !tbaa !7
  %i.glw = getelementptr inbounds nuw i8, ptr %i.gku, i64 32
  %i.glx = load i32, ptr %i.glw, align 8, !tbaa !7
  %.reass.8 = add i32 %i.glx, %invariant.op1426
  %i.gly = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gas
  store i32 %.reass.8, ptr %i.gly, align 4, !tbaa !7
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gku, i64 36
  %i.gma = load i32, ptr %i.glz, align 4, !tbaa !7
  %.reass.9 = add i32 %i.gma, %invariant.op1426
  %i.gmb = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gav
  store i32 %.reass.9, ptr %i.gmb, align 4, !tbaa !7
  %i.gmc = getelementptr inbounds nuw i8, ptr %i.gku, i64 40
  %i.gmd = load i32, ptr %i.gmc, align 8, !tbaa !7
  %.reass.10 = add i32 %i.gmd, %invariant.op1426
  %i.gme = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gay
  store i32 %.reass.10, ptr %i.gme, align 4, !tbaa !7
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.gku, i64 44
  %i.gmg = load i32, ptr %i.gmf, align 4, !tbaa !7
  %.reass.11 = add i32 %i.gmg, %invariant.op1426
  %i.gmh = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gbb
  store i32 %.reass.11, ptr %i.gmh, align 4, !tbaa !7
  %i.gmi = getelementptr inbounds nuw i8, ptr %i.gku, i64 48
  %i.gmj = load i32, ptr %i.gmi, align 8, !tbaa !7
  %.reass.12 = add i32 %i.gmj, %invariant.op1426
  %i.gmk = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gbe
  store i32 %.reass.12, ptr %i.gmk, align 4, !tbaa !7
  %i.gml = getelementptr inbounds nuw i8, ptr %i.gku, i64 52
  %i.gmm = load i32, ptr %i.gml, align 4, !tbaa !7
  %.reass.13 = add i32 %i.gmm, %invariant.op1426
  %i.gmn = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gbh
  store i32 %.reass.13, ptr %i.gmn, align 4, !tbaa !7
  %i.gmo = getelementptr inbounds nuw i8, ptr %i.gku, i64 56
  %i.gmp = load i32, ptr %i.gmo, align 8, !tbaa !7
  %.reass.14 = add i32 %i.gmp, %invariant.op1426
  %i.gmq = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gbk
  store i32 %.reass.14, ptr %i.gmq, align 4, !tbaa !7
  %i.gmr = getelementptr inbounds nuw i8, ptr %i.gku, i64 60
  %i.gms = load i32, ptr %i.gmr, align 4, !tbaa !7
  %.reass.15 = add i32 %i.gms, %invariant.op1426
  %i.gmt = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gbn
  store i32 %.reass.15, ptr %i.gmt, align 4, !tbaa !7
  %i.gmu = getelementptr inbounds nuw i8, ptr %i.gku, i64 64
  %i.gmv = load i32, ptr %i.gmu, align 8, !tbaa !7
  %.reass.16 = add i32 %i.gmv, %invariant.op1426
  %i.gmw = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gef
  store i32 %.reass.16, ptr %i.gmw, align 4, !tbaa !7
  %i.gmx = getelementptr inbounds nuw i8, ptr %i.gku, i64 68
  %i.gmy = load i32, ptr %i.gmx, align 4, !tbaa !7
  %.reass.17 = add i32 %i.gmy, %invariant.op1426
  %i.gmz = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.geh
  store i32 %.reass.17, ptr %i.gmz, align 4, !tbaa !7
  %i.gna = getelementptr inbounds nuw i8, ptr %i.gku, i64 72
  %i.gnb = load i32, ptr %i.gna, align 8, !tbaa !7
  %.reass.18 = add i32 %i.gnb, %invariant.op1426
  %i.gnc = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gej
  store i32 %.reass.18, ptr %i.gnc, align 4, !tbaa !7
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.gku, i64 76
  %i.gne = load i32, ptr %i.gnd, align 4, !tbaa !7
  %.reass.19 = add i32 %i.gne, %invariant.op1426
  %i.gnf = getelementptr inbounds [4 x i8], ptr %i.gky, i64 %i.gel
  store i32 %.reass.19, ptr %i.gnf, align 4, !tbaa !7
  %indvars.iv.next2077 = add nuw nsw i64 %indvars.iv2076, 1 ; 2 uses
  %exitcond2079.not = icmp eq i64 %indvars.iv.next2077, 20
  br i1 %exitcond2079.not, label %.preheader1109, label %.preheader1111, !llvm.loop !134

.preheader1109:                                   ; preds = %.preheader1111
  %i.gng = load i32, ptr @offset, align 4, !tbaa !7
  %i.gnh = load i32, ptr @offsetFFT, align 4, !tbaa !7
  %invariant.op1422 = sub i32 %i.gng, %i.gnh
  %i.gni = insertelement <4 x i32> poison, i32 %invariant.op1422, i64 0
  %i.gnj = shufflevector <4 x i32> %i.gni, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  br label %.preheader1108

.preheader1108:                                   ; preds = %.preheader1109, %.preheader1108
  %indvars.iv2084 = phi i64 [ 0, %.preheader1109 ], [ %indvars.iv.next2085, %.preheader1108 ] ; 3 uses
  %i.gnk = getelementptr inbounds nuw [104 x i8], ptr @n_dis, i64 %indvars.iv2084 ; 5 uses
  %i.gnl = getelementptr inbounds nuw [104 x i8], ptr @n_disFFT, i64 %indvars.iv2084 ; 5 uses
  %i.gnm = load <4 x i32>, ptr %i.gnk, align 8, !tbaa !7
  %i.gnn = add <4 x i32> %i.gnm, %i.gnj
  store <4 x i32> %i.gnn, ptr %i.gnl, align 8, !tbaa !7
  %i.gno = getelementptr inbounds nuw i8, ptr %i.gnk, i64 16
  %i.gnp = getelementptr inbounds nuw i8, ptr %i.gnl, i64 16
  %i.gnq = load <4 x i32>, ptr %i.gno, align 8, !tbaa !7
  %i.gnr = add <4 x i32> %i.gnq, %i.gnj
  store <4 x i32> %i.gnr, ptr %i.gnp, align 8, !tbaa !7
  %i.gns = getelementptr inbounds nuw i8, ptr %i.gnk, i64 32
  %i.gnt = getelementptr inbounds nuw i8, ptr %i.gnl, i64 32
  %i.gnu = load <4 x i32>, ptr %i.gns, align 8, !tbaa !7
  %i.gnv = add <4 x i32> %i.gnu, %i.gnj
  store <4 x i32> %i.gnv, ptr %i.gnt, align 8, !tbaa !7
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.gnk, i64 48
  %i.gnx = getelementptr inbounds nuw i8, ptr %i.gnl, i64 48
  %i.gny = load <4 x i32>, ptr %i.gnw, align 8, !tbaa !7
  %i.gnz = add <4 x i32> %i.gny, %i.gnj
  store <4 x i32> %i.gnz, ptr %i.gnx, align 8, !tbaa !7
  %i.goa = getelementptr inbounds nuw i8, ptr %i.gnk, i64 64
  %i.gob = getelementptr inbounds nuw i8, ptr %i.gnl, i64 64
  %i.goc = load <4 x i32>, ptr %i.goa, align 8, !tbaa !7
  %i.god = add <4 x i32> %i.goc, %i.gnj
  store <4 x i32> %i.god, ptr %i.gob, align 8, !tbaa !7
  %indvars.iv.next2085 = add nuw nsw i64 %indvars.iv2084, 1 ; 2 uses
  %exitcond2087.not = icmp eq i64 %indvars.iv.next2085, 20
  br i1 %exitcond2087.not, label %.loopexit1101, label %.preheader1108, !llvm.loop !135

.loopexit1101:                                    ; preds = %.preheader1108, %.preheader1107
  store i32 0, ptr @ppid, align 4, !tbaa !7
  %i.goe = load i32, ptr @fftThreshold, align 4, !tbaa !7
  %i.gof = icmp eq i32 %i.goe, 100009
  br i1 %i.gof, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %.loopexit1101
  store i32 80, ptr @fftThreshold, align 4, !tbaa !7
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %.loopexit1101
  %i.gog = load i32, ptr @fftWinSize, align 4, !tbaa !7
  %i.goh = icmp eq i32 %i.gog, 100009
  br i1 %i.goh, label %.sink.split, label %bb.lf

.sink.split:                                      ; preds = %bb.le
  %. = select i1 %i.gdp, i32 100, i32 20
  store i32 %., ptr @fftWinSize, align 4, !tbaa !7
  br label %bb.lf

bb.lf:                                            ; preds = %.sink.split, %bb.le
  %i.goi = load i32, ptr @fftscore, align 4, !tbaa !7
  %.not1064 = icmp eq i32 %i.goi, 0
  br i1 %.not1064, label %.loopexit, label %.preheader1098.preheader

.preheader1098.preheader:                         ; preds = %bb.lf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @polarity, ptr noundef nonnull align 16 dereferenceable(160) @polarity_, i64 160, i1 false), !tbaa !74
  %i.goj = load <2 x double>, ptr @polarity, align 16, !tbaa !74 ; 3 uses
  %i.gok = extractelement <2 x double> %i.goj, i64 0
  %i.gol = fadd double %i.gok, 0.000000e+00
  %i.gom = extractelement <2 x double> %i.goj, i64 1
  %i.gon = fadd double %i.gol, %i.gom
  %i.goo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 16), align 16, !tbaa !74 ; 3 uses
  %i.gop = extractelement <2 x double> %i.goo, i64 0
  %i.goq = fadd double %i.gon, %i.gop
  %i.gor = extractelement <2 x double> %i.goo, i64 1
  %i.gos = fadd double %i.goq, %i.gor
  %i.got = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 32), align 16, !tbaa !74 ; 3 uses
  %i.gou = extractelement <2 x double> %i.got, i64 0
  %i.gov = fadd double %i.gos, %i.gou
  %i.gow = extractelement <2 x double> %i.got, i64 1
  %i.gox = fadd double %i.gov, %i.gow
  %i.goy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 48), align 16, !tbaa !74 ; 3 uses
  %i.goz = extractelement <2 x double> %i.goy, i64 0
  %i.gpa = fadd double %i.gox, %i.goz
  %i.gpb = extractelement <2 x double> %i.goy, i64 1
  %i.gpc = fadd double %i.gpa, %i.gpb
  %i.gpd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 64), align 16, !tbaa !74 ; 3 uses
  %i.gpe = extractelement <2 x double> %i.gpd, i64 0
  %i.gpf = fadd double %i.gpc, %i.gpe
  %i.gpg = extractelement <2 x double> %i.gpd, i64 1
  %i.gph = fadd double %i.gpf, %i.gpg
  %i.gpi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 80), align 16, !tbaa !74 ; 3 uses
  %i.gpj = extractelement <2 x double> %i.gpi, i64 0
  %i.gpk = fadd double %i.gph, %i.gpj
  %i.gpl = extractelement <2 x double> %i.gpi, i64 1
  %i.gpm = fadd double %i.gpk, %i.gpl
  %i.gpn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 96), align 16, !tbaa !74 ; 3 uses
  %i.gpo = extractelement <2 x double> %i.gpn, i64 0
  %i.gpp = fadd double %i.gpm, %i.gpo
  %i.gpq = extractelement <2 x double> %i.gpn, i64 1
  %i.gpr = fadd double %i.gpp, %i.gpq
  %i.gps = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 112), align 16, !tbaa !74 ; 3 uses
  %i.gpt = extractelement <2 x double> %i.gps, i64 0
  %i.gpu = fadd double %i.gpr, %i.gpt
  %i.gpv = extractelement <2 x double> %i.gps, i64 1
  %i.gpw = fadd double %i.gpu, %i.gpv
  %i.gpx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 128), align 16, !tbaa !74 ; 3 uses
  %i.gpy = extractelement <2 x double> %i.gpx, i64 0
  %i.gpz = fadd double %i.gpw, %i.gpy
  %i.gqa = extractelement <2 x double> %i.gpx, i64 1
  %i.gqb = fadd double %i.gpz, %i.gqa
  %i.gqc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 144), align 16, !tbaa !74 ; 3 uses
  %i.gqd = extractelement <2 x double> %i.gqc, i64 0
  %i.gqe = fadd double %i.gqb, %i.gqd
  %i.gqf = extractelement <2 x double> %i.gqc, i64 1
  %i.gqg = fadd double %i.gqe, %i.gqf
  %i.gqh = fdiv double %i.gqg, 2.000000e+01
  %i.gqi = insertelement <2 x double> poison, double %i.gqh, i64 0
  %i.gqj = shufflevector <2 x double> %i.gqi, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.gqk = fsub <2 x double> %i.goj, %i.gqj       ; 3 uses
  %2 = extractelement <2 x double> %i.gqk, i64 0  ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  %i.gql = extractelement <2 x double> %i.gqk, i64 1 ; 2 uses
  %i.gqm = tail call double @llvm.fmuladd.f64(double %i.gql, double %i.gql, double %3)
  %i.gqn = fsub <2 x double> %i.goo, %i.gqj       ; 3 uses
  %i.gqo = extractelement <2 x double> %i.gqn, i64 0 ; 2 uses
  %i.gqp = tail call double @llvm.fmuladd.f64(double %i.gqo, double %i.gqo, double %i.gqm)
  %i.gqq = extractelement <2 x double> %i.gqn, i64 1 ; 2 uses
  %i.gqr = tail call double @llvm.fmuladd.f64(double %i.gqq, double %i.gqq, double %i.gqp)
  %i.gqs = fsub <2 x double> %i.got, %i.gqj       ; 3 uses
  %i.gqt = extractelement <2 x double> %i.gqs, i64 0 ; 2 uses
  %i.gqu = tail call double @llvm.fmuladd.f64(double %i.gqt, double %i.gqt, double %i.gqr)
  %i.gqv = extractelement <2 x double> %i.gqs, i64 1 ; 2 uses
  %i.gqw = tail call double @llvm.fmuladd.f64(double %i.gqv, double %i.gqv, double %i.gqu)
  %i.gqx = fsub <2 x double> %i.goy, %i.gqj       ; 3 uses
  %i.gqy = extractelement <2 x double> %i.gqx, i64 0 ; 2 uses
  %i.gqz = tail call double @llvm.fmuladd.f64(double %i.gqy, double %i.gqy, double %i.gqw)
  %i.gra = extractelement <2 x double> %i.gqx, i64 1 ; 2 uses
  %i.grb = tail call double @llvm.fmuladd.f64(double %i.gra, double %i.gra, double %i.gqz)
  %i.grc = fsub <2 x double> %i.gpd, %i.gqj       ; 3 uses
  %i.grd = extractelement <2 x double> %i.grc, i64 0 ; 2 uses
  %i.gre = tail call double @llvm.fmuladd.f64(double %i.grd, double %i.grd, double %i.grb)
  %i.grf = extractelement <2 x double> %i.grc, i64 1 ; 2 uses
  %i.grg = tail call double @llvm.fmuladd.f64(double %i.grf, double %i.grf, double %i.gre)
  %i.grh = fsub <2 x double> %i.gpi, %i.gqj       ; 3 uses
  %i.gri = extractelement <2 x double> %i.grh, i64 0 ; 2 uses
  %i.grj = tail call double @llvm.fmuladd.f64(double %i.gri, double %i.gri, double %i.grg)
  %i.grk = extractelement <2 x double> %i.grh, i64 1 ; 2 uses
  %i.grl = tail call double @llvm.fmuladd.f64(double %i.grk, double %i.grk, double %i.grj)
  %i.grm = fsub <2 x double> %i.gpn, %i.gqj       ; 3 uses
  %i.grn = extractelement <2 x double> %i.grm, i64 0 ; 2 uses
  %i.gro = tail call double @llvm.fmuladd.f64(double %i.grn, double %i.grn, double %i.grl)
  %i.grp = extractelement <2 x double> %i.grm, i64 1 ; 2 uses
  %i.grq = tail call double @llvm.fmuladd.f64(double %i.grp, double %i.grp, double %i.gro)
  %i.grr = fsub <2 x double> %i.gps, %i.gqj       ; 3 uses
  %i.grs = extractelement <2 x double> %i.grr, i64 0 ; 2 uses
  %i.grt = tail call double @llvm.fmuladd.f64(double %i.grs, double %i.grs, double %i.grq)
  %i.gru = extractelement <2 x double> %i.grr, i64 1 ; 2 uses
  %i.grv = tail call double @llvm.fmuladd.f64(double %i.gru, double %i.gru, double %i.grt)
  %i.grw = fsub <2 x double> %i.gpx, %i.gqj       ; 3 uses
  %i.grx = extractelement <2 x double> %i.grw, i64 0 ; 2 uses
  %i.gry = tail call double @llvm.fmuladd.f64(double %i.grx, double %i.grx, double %i.grv)
  %i.grz = extractelement <2 x double> %i.grw, i64 1 ; 2 uses
  %i.gsa = tail call double @llvm.fmuladd.f64(double %i.grz, double %i.grz, double %i.gry)
  %i.gsb = fsub <2 x double> %i.gqc, %i.gqj       ; 3 uses
  %i.gsc = extractelement <2 x double> %i.gsb, i64 0 ; 2 uses
  %i.gsd = tail call double @llvm.fmuladd.f64(double %i.gsc, double %i.gsc, double %i.gsa)
  %i.gse = extractelement <2 x double> %i.gsb, i64 1 ; 2 uses
  %i.gsf = tail call double @llvm.fmuladd.f64(double %i.gse, double %i.gse, double %i.gsd)
  %i.gsg = fdiv double %i.gsf, 2.000000e+01
  %i.gsh = tail call double @sqrt(double noundef %i.gsg) #15, !tbaa !7
  %i.gsi = insertelement <2 x double> poison, double %i.gsh, i64 0
  %i.gsj = shufflevector <2 x double> %i.gsi, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.gsk = fdiv <2 x double> %i.gqk, %i.gsj
  store <2 x double> %i.gsk, ptr @polarity, align 16, !tbaa !74
  %i.gsl = fdiv <2 x double> %i.gqn, %i.gsj
  store <2 x double> %i.gsl, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 16), align 16, !tbaa !74
  %i.gsm = fdiv <2 x double> %i.gqs, %i.gsj
  store <2 x double> %i.gsm, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 32), align 16, !tbaa !74
  %i.gsn = fdiv <2 x double> %i.gqx, %i.gsj
  store <2 x double> %i.gsn, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 48), align 16, !tbaa !74
  %i.gso = fdiv <2 x double> %i.grc, %i.gsj
  store <2 x double> %i.gso, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 64), align 16, !tbaa !74
  %i.gsp = fdiv <2 x double> %i.grh, %i.gsj
  store <2 x double> %i.gsp, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 80), align 16, !tbaa !74
  %i.gsq = fdiv <2 x double> %i.grm, %i.gsj
  store <2 x double> %i.gsq, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 96), align 16, !tbaa !74
  %i.gsr = fdiv <2 x double> %i.grr, %i.gsj
  store <2 x double> %i.gsr, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 112), align 16, !tbaa !74
  %i.gss = fdiv <2 x double> %i.grw, %i.gsj
  store <2 x double> %i.gss, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 128), align 16, !tbaa !74
  %i.gst = fdiv <2 x double> %i.gsb, %i.gsj
  store <2 x double> %i.gst, ptr getelementptr inbounds nuw (i8, ptr @polarity, i64 144), align 16, !tbaa !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @volume, ptr noundef nonnull align 16 dereferenceable(160) @volume_, i64 160, i1 false), !tbaa !74
  %i.gsu = load <2 x double>, ptr @volume, align 16, !tbaa !74 ; 3 uses
  %i.gsv = extractelement <2 x double> %i.gsu, i64 0
  %i.gsw = fadd double %i.gsv, 0.000000e+00
  %i.gsx = extractelement <2 x double> %i.gsu, i64 1
  %i.gsy = fadd double %i.gsw, %i.gsx
  %i.gsz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 16), align 16, !tbaa !74 ; 3 uses
  %i.gta = extractelement <2 x double> %i.gsz, i64 0
  %i.gtb = fadd double %i.gsy, %i.gta
  %i.gtc = extractelement <2 x double> %i.gsz, i64 1
  %i.gtd = fadd double %i.gtb, %i.gtc
  %i.gte = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 32), align 16, !tbaa !74 ; 3 uses
  %i.gtf = extractelement <2 x double> %i.gte, i64 0
  %i.gtg = fadd double %i.gtd, %i.gtf
  %i.gth = extractelement <2 x double> %i.gte, i64 1
  %i.gti = fadd double %i.gtg, %i.gth
  %i.gtj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 48), align 16, !tbaa !74 ; 3 uses
  %i.gtk = extractelement <2 x double> %i.gtj, i64 0
  %i.gtl = fadd double %i.gti, %i.gtk
  %i.gtm = extractelement <2 x double> %i.gtj, i64 1
  %i.gtn = fadd double %i.gtl, %i.gtm
  %i.gto = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 64), align 16, !tbaa !74 ; 3 uses
  %i.gtp = extractelement <2 x double> %i.gto, i64 0
  %i.gtq = fadd double %i.gtn, %i.gtp
  %i.gtr = extractelement <2 x double> %i.gto, i64 1
  %i.gts = fadd double %i.gtq, %i.gtr
  %i.gtt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 80), align 16, !tbaa !74 ; 3 uses
  %i.gtu = extractelement <2 x double> %i.gtt, i64 0
  %i.gtv = fadd double %i.gts, %i.gtu
  %i.gtw = extractelement <2 x double> %i.gtt, i64 1
  %i.gtx = fadd double %i.gtv, %i.gtw
  %i.gty = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 96), align 16, !tbaa !74 ; 3 uses
  %i.gtz = extractelement <2 x double> %i.gty, i64 0
  %i.gua = fadd double %i.gtx, %i.gtz
  %i.gub = extractelement <2 x double> %i.gty, i64 1
  %i.guc = fadd double %i.gua, %i.gub
  %i.gud = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 112), align 16, !tbaa !74 ; 3 uses
  %i.gue = extractelement <2 x double> %i.gud, i64 0
  %i.guf = fadd double %i.guc, %i.gue
  %i.gug = extractelement <2 x double> %i.gud, i64 1
  %i.guh = fadd double %i.guf, %i.gug
  %i.gui = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 128), align 16, !tbaa !74 ; 3 uses
  %i.guj = extractelement <2 x double> %i.gui, i64 0
  %i.guk = fadd double %i.guh, %i.guj
  %i.gul = extractelement <2 x double> %i.gui, i64 1
  %i.gum = fadd double %i.guk, %i.gul
  %i.gun = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 144), align 16, !tbaa !74 ; 3 uses
  %i.guo = extractelement <2 x double> %i.gun, i64 0
  %i.gup = fadd double %i.gum, %i.guo
  %i.guq = extractelement <2 x double> %i.gun, i64 1
  %i.gur = fadd double %i.gup, %i.guq
  %i.gus = fdiv double %i.gur, 2.000000e+01
  %i.gut = insertelement <2 x double> poison, double %i.gus, i64 0
  %i.guu = shufflevector <2 x double> %i.gut, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.guv = fsub <2 x double> %i.gsu, %i.guu       ; 3 uses
  %4 = extractelement <2 x double> %i.guv, i64 0  ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  %i.guw = extractelement <2 x double> %i.guv, i64 1 ; 2 uses
  %i.gux = tail call double @llvm.fmuladd.f64(double %i.guw, double %i.guw, double %5)
  %i.guy = fsub <2 x double> %i.gsz, %i.guu       ; 3 uses
  %i.guz = extractelement <2 x double> %i.guy, i64 0 ; 2 uses
  %i.gva = tail call double @llvm.fmuladd.f64(double %i.guz, double %i.guz, double %i.gux)
  %i.gvb = extractelement <2 x double> %i.guy, i64 1 ; 2 uses
  %i.gvc = tail call double @llvm.fmuladd.f64(double %i.gvb, double %i.gvb, double %i.gva)
  %i.gvd = fsub <2 x double> %i.gte, %i.guu       ; 3 uses
  %i.gve = extractelement <2 x double> %i.gvd, i64 0 ; 2 uses
  %i.gvf = tail call double @llvm.fmuladd.f64(double %i.gve, double %i.gve, double %i.gvc)
  %i.gvg = extractelement <2 x double> %i.gvd, i64 1 ; 2 uses
  %i.gvh = tail call double @llvm.fmuladd.f64(double %i.gvg, double %i.gvg, double %i.gvf)
  %i.gvi = fsub <2 x double> %i.gtj, %i.guu       ; 3 uses
  %i.gvj = extractelement <2 x double> %i.gvi, i64 0 ; 2 uses
  %i.gvk = tail call double @llvm.fmuladd.f64(double %i.gvj, double %i.gvj, double %i.gvh)
  %i.gvl = extractelement <2 x double> %i.gvi, i64 1 ; 2 uses
  %i.gvm = tail call double @llvm.fmuladd.f64(double %i.gvl, double %i.gvl, double %i.gvk)
  %i.gvn = fsub <2 x double> %i.gto, %i.guu       ; 3 uses
  %i.gvo = extractelement <2 x double> %i.gvn, i64 0 ; 2 uses
  %i.gvp = tail call double @llvm.fmuladd.f64(double %i.gvo, double %i.gvo, double %i.gvm)
  %i.gvq = extractelement <2 x double> %i.gvn, i64 1 ; 2 uses
  %i.gvr = tail call double @llvm.fmuladd.f64(double %i.gvq, double %i.gvq, double %i.gvp)
  %i.gvs = fsub <2 x double> %i.gtt, %i.guu       ; 3 uses
  %i.gvt = extractelement <2 x double> %i.gvs, i64 0 ; 2 uses
  %i.gvu = tail call double @llvm.fmuladd.f64(double %i.gvt, double %i.gvt, double %i.gvr)
  %i.gvv = extractelement <2 x double> %i.gvs, i64 1 ; 2 uses
  %i.gvw = tail call double @llvm.fmuladd.f64(double %i.gvv, double %i.gvv, double %i.gvu)
  %i.gvx = fsub <2 x double> %i.gty, %i.guu       ; 3 uses
  %i.gvy = extractelement <2 x double> %i.gvx, i64 0 ; 2 uses
  %i.gvz = tail call double @llvm.fmuladd.f64(double %i.gvy, double %i.gvy, double %i.gvw)
  %i.gwa = extractelement <2 x double> %i.gvx, i64 1 ; 2 uses
  %i.gwb = tail call double @llvm.fmuladd.f64(double %i.gwa, double %i.gwa, double %i.gvz)
  %i.gwc = fsub <2 x double> %i.gud, %i.guu       ; 3 uses
  %i.gwd = extractelement <2 x double> %i.gwc, i64 0 ; 2 uses
  %i.gwe = tail call double @llvm.fmuladd.f64(double %i.gwd, double %i.gwd, double %i.gwb)
  %i.gwf = extractelement <2 x double> %i.gwc, i64 1 ; 2 uses
  %i.gwg = tail call double @llvm.fmuladd.f64(double %i.gwf, double %i.gwf, double %i.gwe)
  %i.gwh = fsub <2 x double> %i.gui, %i.guu       ; 3 uses
  %i.gwi = extractelement <2 x double> %i.gwh, i64 0 ; 2 uses
  %i.gwj = tail call double @llvm.fmuladd.f64(double %i.gwi, double %i.gwi, double %i.gwg)
  %i.gwk = extractelement <2 x double> %i.gwh, i64 1 ; 2 uses
  %i.gwl = tail call double @llvm.fmuladd.f64(double %i.gwk, double %i.gwk, double %i.gwj)
  %i.gwm = fsub <2 x double> %i.gun, %i.guu       ; 3 uses
  %i.gwn = extractelement <2 x double> %i.gwm, i64 0 ; 2 uses
  %i.gwo = tail call double @llvm.fmuladd.f64(double %i.gwn, double %i.gwn, double %i.gwl)
  %i.gwp = extractelement <2 x double> %i.gwm, i64 1 ; 2 uses
  %i.gwq = tail call double @llvm.fmuladd.f64(double %i.gwp, double %i.gwp, double %i.gwo)
  %i.gwr = fdiv double %i.gwq, 2.000000e+01
  %i.gws = tail call double @sqrt(double noundef %i.gwr) #15, !tbaa !7
  %i.gwt = insertelement <2 x double> poison, double %i.gws, i64 0
  %i.gwu = shufflevector <2 x double> %i.gwt, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.gwv = fdiv <2 x double> %i.guv, %i.gwu
  store <2 x double> %i.gwv, ptr @volume, align 16, !tbaa !74
  %i.gww = fdiv <2 x double> %i.guy, %i.gwu
  store <2 x double> %i.gww, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 16), align 16, !tbaa !74
  %i.gwx = fdiv <2 x double> %i.gvd, %i.gwu
  store <2 x double> %i.gwx, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 32), align 16, !tbaa !74
  %i.gwy = fdiv <2 x double> %i.gvi, %i.gwu
  store <2 x double> %i.gwy, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 48), align 16, !tbaa !74
  %i.gwz = fdiv <2 x double> %i.gvn, %i.gwu
  store <2 x double> %i.gwz, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 64), align 16, !tbaa !74
  %i.gxa = fdiv <2 x double> %i.gvs, %i.gwu
  store <2 x double> %i.gxa, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 80), align 16, !tbaa !74
  %i.gxb = fdiv <2 x double> %i.gvx, %i.gwu
  store <2 x double> %i.gxb, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 96), align 16, !tbaa !74
  %i.gxc = fdiv <2 x double> %i.gwc, %i.gwu
  store <2 x double> %i.gxc, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 112), align 16, !tbaa !74
  %i.gxd = fdiv <2 x double> %i.gwh, %i.gwu
  store <2 x double> %i.gxd, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 128), align 16, !tbaa !74
  %i.gxe = fdiv <2 x double> %i.gwm, %i.gwu
  store <2 x double> %i.gxe, ptr getelementptr inbounds nuw (i8, ptr @volume, i64 144), align 16, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1098.preheader, %bb.lf
  ret void
}

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @MtxuntDouble(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @MtxmltDouble(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @calcfreq_nuc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 32)) %2) unnamed_addr #8 !guid !141 {
.preheader44:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !74
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph50.preheader, label %.preheader43.thread

.lr.ph50.preheader:                               ; preds = %.preheader44
  %wide.trip.count60 = zext nneg i32 %0 to i64
  br label %.lr.ph50

.preheader43:                                     ; preds = %._crit_edge
  %.pre = load double, ptr %2, align 8, !tbaa !74 ; 2 uses
  %i.b = fcmp olt double %.pre, 1.000000e-04
  br i1 %i.b, label %.preheader43.thread, label %.preheader42.preheader

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 4 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #19 ; 5 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph50
  %wide.trip.count = and i64 %i.e, 2147483647
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %wide.trip.count, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !76
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 2 uses
  %i.n = icmp eq i32 %i.m, 4
  %spec.store.select = select i1 %i.n, i32 3, i32 %i.m ; 2 uses
  %or.cond = icmp ult i32 %spec.store.select, 4
  br i1 %or.cond, label %bb.a, label %.lr.ph.1

bb.a:                                             ; preds = %.lr.ph
  %i.o = zext nneg i32 %spec.store.select to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !74
  %i.r = fadd double %i.q, 1.000000e+00
  store double %i.r, ptr %i.p, align 8, !tbaa !74
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !76
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 2 uses
  %i.y = icmp eq i32 %i.x, 4
  %spec.store.select.1 = select i1 %i.y, i32 3, i32 %i.x ; 2 uses
  %or.cond.1 = icmp ult i32 %spec.store.select.1, 4
  br i1 %or.cond.1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.1
  %i.z = zext nneg i32 %spec.store.select.1 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !74
  %i.ac = fadd double %i.ab, 1.000000e+00
  store double %i.ac, ptr %i.aa, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !139

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod79 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.epil.init
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !76
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 4
  %spec.store.select.epil = select i1 %i.ai, i32 3, i32 %i.ah ; 2 uses
  %or.cond.epil = icmp ult i32 %spec.store.select.epil, 4
  br i1 %or.cond.epil, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.aj = zext nneg i32 %spec.store.select.epil to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !74
  %i.am = fadd double %i.al, 1.000000e+00
  store double %i.am, ptr %i.ak, align 8, !tbaa !74
  br label %._crit_edge

end_hunk_0
