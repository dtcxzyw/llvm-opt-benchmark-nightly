Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_detect_dots?download=true
inline.NumInlined: 1664
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3jxl22DetectGaussianEllipsesERKNS_6Image3IfEERKNS_5RectTImEERKNS_20GaussianDetectParamsERKNS_18EllipseQuantParamsEPNS_10ThreadPoolE:bb.a
  %.pre67.i = load i64, ptr %i.um, align 8, !tbaa !300, !noalias !312
  br label %.thread482.i.i

.thread482.i.i:                                   ; preds = %..thread482.i_crit_edge.i, %bb.dg, %.thread476.i.i
  %i.bhd = phi i64 [ %.pre67.i, %..thread482.i_crit_edge.i ], [ %i.bgf, %bb.dg ], [ %i.bgf, %.thread476.i.i ]
  %i.bhe = phi i32 [ 0, %..thread482.i_crit_edge.i ], [ %i.aae, %bb.dg ], [ %i.aae, %.thread476.i.i ] ; 2 uses
  %i.bhf = phi <2 x double> [ %i.bdd, %..thread482.i_crit_edge.i ], [ %i.bhc, %bb.dg ], [ %i.bgh, %.thread476.i.i ] ; 2 uses
  %i.bhg = zext nneg i32 %i.bhe to i64            ; 3 uses
  %.not157.4.i.i = icmp ugt i64 %i.bhd, %i.bhg
  br i1 %.not157.4.i.i, label %bb.di, label %.loopexit.i.i136

bb.di:                                            ; preds = %.thread482.i.i
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %i.bhg
  %i.bhi = load float, ptr %i.bhh, align 4, !tbaa !85, !noalias !312
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bds, i64 %i.bhg
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !85, !noalias !312
  %i.bhl = fsub float %i.bhi, %i.bhk
  %i.bhm = fpext float %i.bhl to double
  %i.bhn = uitofp nneg i32 %i.bhe to double
  %i.bho = fsub double %i.bhn, %i.yh
  %i.bhp = insertelement <2 x double> poison, double %i.bho, i64 0
  %i.bhq = shufflevector <2 x double> %i.bhp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aak, <2 x double> %i.bhq, <2 x double> %i.bdx) ; 2 uses
  %i.bhs = fmul <2 x double> %i.bhr, %i.bhr
  %i.bht = fdiv <2 x double> %i.bhs, %i.ze
  %i.bhu = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bht)
  %i.bhv = fmul double %i.bhu, -5.000000e-01
  %i.bhw = call double @exp(double noundef %i.bhv) #26, !noalias !312
  %i.bhx = insertelement <2 x double> poison, double %i.bhw, i64 0
  %i.bhy = shufflevector <2 x double> %i.bhx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhz = insertelement <2 x double> %i.bhy, double %i.bhm, i64 1
  %i.bia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bhy, <2 x double> %i.bhz, <2 x double> %i.bhf)
  br label %.loopexit.i.i136

.loopexit.i.i136:                                 ; preds = %bb.di, %.thread482.i.i, %bb.dh, %bb.cx, %bb.cw
  %i.bib = phi <2 x double> [ %i.bdd, %bb.cw ], [ %i.bdd, %bb.cx ], [ %i.bdd, %bb.dh ], [ %i.bhf, %.thread482.i.i ], [ %i.bia, %bb.di ] ; 3 uses
  %i.bic = add nsw i32 %.0128223.i.i, 1
  %.not.not.i.i = icmp slt i32 %.0128223.i.i, %i.zq
  br i1 %.not.not.i.i, label %bb.cw, label %bb.cv, !llvm.loop !262

.critedge.i137:                                   ; preds = %._crit_edge.us.i.i.i.2, %bb.by
  %.sroa.17.40.copyload = phi i64 [ %i.bcp, %._crit_edge.us.i.i.i.2 ], [ 0, %bb.by ]
  %i.bid = phi double [ %.pre.i.i.i, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.bie = phi double [ %i.bco, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.bif = phi double [ %i.bct, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %.us-phi.i.i.i = phi double [ %i.bcs, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.big = sitofp i32 %i.zo to double
  %i.bih = fsub double %i.big, %i.yh              ; 2 uses
  %i.bii = sitofp i32 %i.zn to double
  %i.bij = fsub double %i.bii, %i.yi              ; 2 uses
  %i.bik = fmul double %i.bij, %i.bij
  %i.bil = call double @llvm.fmuladd.f64(double %i.bih, double %i.bih, double %i.bik)
  %i.bim = insertelement <2 x double> poison, double %i.bif, i64 0
  %i.bin = insertelement <2 x double> %i.bim, double %i.bie, i64 1
  %i.bio = insertelement <2 x double> poison, double %.us-phi.i.i.i, i64 0
  %i.bip = shufflevector <2 x double> %i.bio, <2 x double> poison, <2 x i32> zeroinitializer
  %i.biq = fdiv <2 x double> %i.bin, %i.bip       ; 2 uses
  %i.bir = extractelement <2 x double> %i.biq, i64 0 ; 2 uses
  store double %i.bir, ptr %i.ut, align 8, !noalias !314
  %i.bis = call double @llvm.fmuladd.f64(double %i.bil, double 2.000000e+01, double %i.bid)
  %i.bit = extractelement <2 x double> %i.biq, i64 1
  %i.biu = fadd double %i.bis, %i.bit
  %i.biv = load <2 x double>, ptr %i.ub, align 8, !noalias !314 ; 2 uses
  %i.biw = load double, ptr %i.uo, align 8, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !312
  %i.bix = extractelement <2 x double> %i.ze, i64 0 ; 3 uses
  %i.biy = extractelement <2 x double> %i.ze, i64 1 ; 3 uses
  %i.biz = fcmp olt double %i.bix, %i.biy         ; 3 uses
  %i.bja = fadd double %i.zh, f0x3FF921FB54442D18
  %.sroa.12.0.i = select i1 %i.biz, double %i.bja, double %i.zh ; 2 uses
  %.sroa.8.0.i = select i1 %i.biz, double %i.bix, double %i.biy
  %.sroa.4.0.i = select i1 %i.biz, double %i.biy, double %i.bix
  %i.bjb = fdiv double %.sroa.12.0.i, f0x400921FB54442D18
  %i.bjc = call double @llvm.floor.f64(double %i.bjb)
  %i.bjd = call double @llvm.fmuladd.f64(double %i.bjc, double f0xC00921FB54442D18, double %.sroa.12.0.i) ; 3 uses
  %i.bje = fadd double %i.bjd, f0xC00921FB54442D18
  %i.bjf = call double @llvm.fabs.f64(double %i.bje)
  %i.bjg = fcmp olt double %i.bjf, f0x3EB0C6F7A0B5ED8D
  %i.bjh = call double @llvm.fabs.f64(double %i.bjd)
  %i.bji = fcmp olt double %i.bjh, f0x3EB0C6F7A0B5ED8D
  %or.cond10.i = or i1 %i.bji, %i.bjg
  %spec.store.select.i = select i1 %or.cond10.i, double 0.000000e+00, double %i.bjd ; 2 uses
  %i.bjj = fcmp ult double %spec.store.select.i, 0.000000e+00
  %i.bjk = fcmp ugt double %spec.store.select.i, f0x400921FB54442D18
  %or.cond.not42.i = or i1 %i.bjj, %i.bjk
  %i.bjl = fcmp ult double %.sroa.4.0.i, %.sroa.8.0.i
  %or.cond40.i = or i1 %i.bjl, %or.cond.not42.i
  br i1 %or.cond40.i, label %bb.dr, label %.critedge109

.critedge109:                                     ; preds = %.critedge.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bjm = fcmp olt double %i.yh, 0.000000e+00
  br i1 %i.bjm, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %.critedge109
  %i.bjn = call double @llvm.ceil.f64(double %i.yh)
  %i.bjo = load i64, ptr %i.um, align 8, !tbaa !300
  %i.bjp = uitofp i64 %i.bjo to double
  %i.bjq = fcmp oge double %i.bjn, %i.bjp
  %i.bjr = fcmp olt double %i.yi, 0.000000e+00
  %or.cond = select i1 %i.bjq, i1 true, i1 %i.bjr
  br i1 %or.cond, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bjs = call double @llvm.ceil.f64(double %i.yi)
  %i.bjt = load i64, ptr %i.ul, align 8, !tbaa !299
  %i.bju = uitofp i64 %i.bjt to double
  %i.bjv = fcmp ult double %i.bjs, %i.bju
  br i1 %i.bjv, label %bb.dl, label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  %i.bjw = load i64, ptr %i.uy, align 8, !tbaa !316
  %i.bjx = icmp ugt i64 %.sroa.17.40.copyload, %i.bjw
  br i1 %i.bjx, label %.loopexit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bjy = load <2 x i32>, ptr %i.vn, align 8, !tbaa !81
  %i.bjz = sitofp <2 x i32> %i.bjy to <2 x double>
  %i.bka = fsub <2 x double> %i.yt, %i.bjz        ; 4 uses
  %i.bkb = shufflevector <2 x double> %i.biv, <2 x double> %i.bka, <2 x i32> <i32 1, i32 3>
  %i.bkc = insertelement <2 x double> %i.bka, double f0x3FE70A3D70A3D70A, i64 0
  %i.bkd = fmul <2 x double> %i.bkb, %i.bkc
  %i.bke = shufflevector <2 x double> %i.biv, <2 x double> %i.bka, <2 x i32> <i32 0, i32 2>
  %i.bkf = shufflevector <2 x double> <double 2.100000e-01, double poison>, <2 x double> %i.bka, <2 x i32> <i32 0, i32 2>
  %i.bkg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bke, <2 x double> %i.bkf, <2 x double> %i.bkd) ; 2 uses
  %i.bkh = extractelement <2 x double> %i.bkg, i64 0
  %i.bki = call double @llvm.fmuladd.f64(double %i.biw, double 7.000000e-02, double %i.bkh) ; 2 uses
  %i.bkj = fmul double %i.bki, %i.bki
  %i.bkk = load double, ptr %i.uz, align 8, !tbaa !317
  %i.bkl = fcmp olt double %i.bir, %i.bkk
  br i1 %i.bkl, label %bb.dn, label %.loopexit

bb.dn:                                            ; preds = %bb.dm
  %i.bkm = load double, ptr %i.va, align 8, !tbaa !318
  %i.bkn = fcmp olt double %i.biu, %i.bkm
  br i1 %i.bkn, label %bb.do, label %.loopexit

bb.do:                                            ; preds = %bb.dn
  %i.bko = load double, ptr %i.vb, align 8, !tbaa !319 ; 2 uses
  %i.bkp = fmul double %i.bko, %i.bko
  %i.bkq = fcmp ogt double %i.bkj, %i.bkp
  br i1 %i.bkq, label %bb.dp, label %.loopexit

bb.dp:                                            ; preds = %bb.do
  %i.bkr = load double, ptr %i.vc, align 8, !tbaa !320 ; 2 uses
  %i.bks = fmul double %i.bkr, %i.bkr
  %i.bkt = extractelement <2 x double> %i.bkg, i64 1
  %i.bku = fcmp olt double %i.bkt, %i.bks
  br i1 %i.bku, label %bb.dq, label %.loopexit

bb.dq:                                            ; preds = %bb.dp
  %i.bkv = load i64, ptr %.sroa.0171.0316, align 8, !tbaa !302 ; 4 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %.sroa.0171.0316, i64 8
  %i.bkx = load i64, ptr %i.bkw, align 8, !tbaa !301 ; 3 uses
  %i.bky = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18) #27 ; 0 uses
  %i.bkz = load ptr, ptr %i.vd, align 8, !tbaa !102
  %i.bla = getelementptr inbounds i8, ptr %i.bkz, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.blb = trunc i64 %i.bkv to i32
  store i32 %i.blb, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.blc = trunc i64 %i.bkx to i32
  store i32 %i.blc, ptr %i.b, align 4, !tbaa !81
  %i.bld = call noundef nonnull align 1 ptr @_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bla, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ble = load ptr, ptr %i.vd, align 8, !tbaa !102 ; 5 uses
  %i.blf = getelementptr inbounds i8, ptr %i.ble, i64 -184
  %i.blg = load i64, ptr %i.aqx, align 8, !tbaa !300 ; 9 uses
  store i64 %i.blg, ptr %i.blf, align 8, !tbaa !322
  %i.blh = load i64, ptr %i.aqt, align 8, !tbaa !299 ; 5 uses
  %i.bli = getelementptr inbounds i8, ptr %i.ble, i64 -176
  store i64 %i.blh, ptr %i.bli, align 8, !tbaa !323
  %.not317 = icmp eq i64 %i.blh, 0
  br i1 %.not317, label %.loopexit, label %.preheader229.lr.ph

.preheader229.lr.ph:                              ; preds = %bb.dq
  %.not318 = icmp eq i64 %i.blg, 0
  %i.blj = load i64, ptr %i.ue, align 8           ; 4 uses
  br i1 %.not318, label %.loopexit, label %.preheader229.lr.ph.split

.preheader229.lr.ph.split:                        ; preds = %.preheader229.lr.ph
  %i.blk = getelementptr inbounds i8, ptr %i.ble, i64 -96
  %i.bll = load i64, ptr %i.uc, align 8, !tbaa !301 ; 2 uses
  %invariant.op = add i64 %i.bkx, %i.bll          ; 3 uses
  %i.blm = load i64, ptr %i.ud, align 8, !tbaa !34 ; 4 uses
  %i.bln = load i64, ptr %2, align 8, !tbaa !302  ; 7 uses
  %.pre410.pre = load ptr, ptr %i.blk, align 8, !tbaa !107 ; 5 uses
  %.pre412.pre = load ptr, ptr %.phi.trans.insert411.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre414.pre = load ptr, ptr %.phi.trans.insert413.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert415.phi.trans.insert = getelementptr inbounds i8, ptr %i.ble, i64 -72
  %.pre416.pre = load ptr, ptr %.phi.trans.insert415.phi.trans.insert, align 8, !tbaa !107 ; 5 uses
  %.pre419.pre = load ptr, ptr %.phi.trans.insert418.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre421.pre = load ptr, ptr %.phi.trans.insert420.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert422.phi.trans.insert = getelementptr inbounds i8, ptr %i.ble, i64 -48
  %.pre423.pre = load ptr, ptr %.phi.trans.insert422.phi.trans.insert, align 8, !tbaa !107 ; 3 uses
  %.pre = load ptr, ptr %i.uf, align 8, !tbaa !33 ; 4 uses
  %.pre409 = load ptr, ptr %i.ug, align 8, !tbaa !33 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre, i64 64), "align"(ptr %.pre409, i64 64), "align"(ptr %.pre412.pre, i64 64), "align"(ptr %.pre414.pre, i64 64), "align"(ptr %.pre419.pre, i64 64), "align"(ptr %.pre421.pre, i64 64) ]
  %i.blo = shl i64 %i.blh, 2
  %i.blp = mul i64 %i.blo, %i.blg                 ; 3 uses
  %scevgep = getelementptr i8, ptr %.pre410.pre, i64 %i.blp ; 3 uses
  %i.blq = shl i64 %i.blg, 2                      ; 3 uses
  %scevgep726 = getelementptr i8, ptr %.pre416.pre, i64 %i.blp ; 3 uses
  %scevgep727 = getelementptr i8, ptr %.pre423.pre, i64 %i.blp
  %i.blr = mul i64 %i.blm, %invariant.op
  %i.bls = shl i64 %i.bkv, 2                      ; 4 uses
  %i.blt = add i64 %i.blr, %i.bls
  %i.blu = shl nuw nsw i64 %i.bln, 2              ; 4 uses
  %i.blv = add i64 %i.blt, %i.blu                 ; 3 uses
  %scevgep728 = getelementptr nuw i8, ptr %.pre, i64 %i.blv ; 2 uses
  %i.blw = add i64 %i.bkx, -1
  %i.blx = add i64 %i.blw, %i.blh
  %i.bly = add i64 %i.blx, %i.bll                 ; 2 uses
  %i.blz = mul i64 %i.blm, %i.bly
  %i.bma = add i64 %i.blz, %i.bls
  %i.bmb = add i64 %i.bma, %i.blq
  %i.bmc = add i64 %i.bmb, %i.blu                 ; 3 uses
  %scevgep729 = getelementptr i8, ptr %.pre, i64 %i.bmc ; 2 uses
  %i.bmd = mul i64 %i.blj, %invariant.op
  %i.bme = add i64 %i.bmd, %i.bls
  %i.bmf = add i64 %i.bme, %i.blu                 ; 3 uses
  %scevgep730 = getelementptr nuw i8, ptr %.pre409, i64 %i.bmf ; 2 uses
  %i.bmg = mul i64 %i.blj, %i.bly
  %i.bmh = add i64 %i.bmg, %i.bls
  %i.bmi = add i64 %i.bmh, %i.blq
  %i.bmj = add i64 %i.bmi, %i.blu                 ; 3 uses
  %scevgep731 = getelementptr i8, ptr %.pre409, i64 %i.bmj ; 2 uses
  %scevgep732 = getelementptr nuw i8, ptr %.pre412.pre, i64 %i.blv ; 2 uses
  %scevgep733 = getelementptr i8, ptr %.pre412.pre, i64 %i.bmc ; 2 uses
  %scevgep734 = getelementptr nuw i8, ptr %.pre414.pre, i64 %i.bmf ; 2 uses
  %scevgep735 = getelementptr i8, ptr %.pre414.pre, i64 %i.bmj ; 2 uses
  %scevgep736 = getelementptr nuw i8, ptr %.pre419.pre, i64 %i.blv ; 2 uses
  %scevgep737 = getelementptr i8, ptr %.pre419.pre, i64 %i.bmc ; 2 uses
  %scevgep738 = getelementptr nuw i8, ptr %.pre421.pre, i64 %i.bmf ; 3 uses
  %scevgep739 = getelementptr i8, ptr %.pre421.pre, i64 %i.bmj ; 3 uses
  %i.bmk = insertelement <4 x ptr> poison, ptr %.pre423.pre, i64 0 ; 3 uses
  %i.bml = shufflevector <4 x ptr> %i.bmk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bmm = insertelement <4 x ptr> poison, ptr %scevgep729, i64 0
  %i.bmn = insertelement <4 x ptr> %i.bmm, ptr %scevgep731, i64 1
  %i.bmo = insertelement <4 x ptr> %i.bmn, ptr %scevgep733, i64 2
  %i.bmp = insertelement <4 x ptr> %i.bmo, ptr %scevgep735, i64 3
  %i.bmq = shufflevector <4 x ptr> %i.bmk, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bmr = insertelement <2 x ptr> poison, ptr %scevgep737, i64 0
  %i.bms = insertelement <2 x ptr> %i.bmr, ptr %scevgep739, i64 1
  %i.bmt = insertelement <4 x ptr> poison, ptr %scevgep728, i64 0
  %i.bmu = insertelement <4 x ptr> %i.bmt, ptr %scevgep730, i64 1
  %i.bmv = insertelement <4 x ptr> %i.bmu, ptr %scevgep732, i64 2
  %i.bmw = insertelement <4 x ptr> %i.bmv, ptr %scevgep734, i64 3
  %i.bmx = insertelement <4 x ptr> poison, ptr %scevgep727, i64 0 ; 3 uses
  %i.bmy = shufflevector <4 x ptr> %i.bmx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bmz = insertelement <2 x ptr> poison, ptr %scevgep736, i64 0
  %i.bna = insertelement <2 x ptr> %i.bmz, ptr %scevgep738, i64 1
  %i.bnb = shufflevector <4 x ptr> %i.bmx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnc = insertelement <4 x ptr> poison, ptr %.pre416.pre, i64 0 ; 2 uses
  %i.bnd = shufflevector <4 x ptr> %i.bnc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bne = insertelement <4 x ptr> %i.bmx, ptr %scevgep729, i64 1
  %i.bnf = insertelement <4 x ptr> %i.bne, ptr %scevgep731, i64 2
  %i.bng = insertelement <4 x ptr> %i.bnf, ptr %scevgep733, i64 3 ; 2 uses
  %i.bnh = shufflevector <4 x ptr> %i.bnc, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bni = insertelement <2 x ptr> poison, ptr %scevgep735, i64 0
  %i.bnj = insertelement <2 x ptr> %i.bni, ptr %scevgep737, i64 1 ; 2 uses
  %i.bnk = insertelement <4 x ptr> %i.bmk, ptr %scevgep728, i64 1
  %i.bnl = insertelement <4 x ptr> %i.bnk, ptr %scevgep730, i64 2
  %i.bnm = insertelement <4 x ptr> %i.bnl, ptr %scevgep732, i64 3 ; 2 uses
  %i.bnn = insertelement <4 x ptr> poison, ptr %scevgep726, i64 0 ; 2 uses
  %i.bno = shufflevector <4 x ptr> %i.bnn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnp = insertelement <2 x ptr> poison, ptr %scevgep734, i64 0
  %i.bnq = insertelement <2 x ptr> %i.bnp, ptr %scevgep736, i64 1 ; 2 uses
  %i.bnr = shufflevector <4 x ptr> %i.bnn, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bns = insertelement <4 x ptr> poison, ptr %.pre410.pre, i64 0 ; 2 uses
  %i.bnt = shufflevector <4 x ptr> %i.bns, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnu = shufflevector <4 x ptr> %i.bns, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.bnw = shufflevector <4 x ptr> %i.bnv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnx = shufflevector <4 x ptr> %i.bnv, <4 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check822 = icmp ult i64 %i.blg, 28
  %bound0 = icmp ult ptr %.pre410.pre, %scevgep726
  %bound1 = icmp ult ptr %.pre416.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bny = icmp ult <4 x ptr> %i.bnt, %i.bng
  %i.bnz = icmp ult <4 x ptr> %i.bnm, %i.bnw
  %i.boa = icmp ult <2 x ptr> %i.bnu, %i.bnj
  %i.bob = icmp ult <2 x ptr> %i.bnq, %i.bnx
  %bound0765 = icmp ult ptr %.pre410.pre, %scevgep739
  %bound1766 = icmp ult ptr %scevgep738, %scevgep
  %i.boc = icmp ult <4 x ptr> %i.bnd, %i.bng
  %i.bod = icmp ult <4 x ptr> %i.bnm, %i.bno
  %i.boe = icmp ult <2 x ptr> %i.bnh, %i.bnj
  %i.bof = icmp ult <2 x ptr> %i.bnq, %i.bnr
  %bound0793 = icmp ult ptr %.pre416.pre, %scevgep739
  %bound1794 = icmp ult ptr %scevgep738, %scevgep726
  %stride.check751 = icmp slt i64 %i.blj, 0
  %i.bog = insertelement <8 x i1> poison, i1 %bound0793, i64 6
  %i.boh = insertelement <8 x i1> %i.bog, i1 %stride.check751, i64 7
  %i.boi = shufflevector <4 x i1> %i.boc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boj = shufflevector <8 x i1> %i.boi, <8 x i1> %i.boh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bok = shufflevector <2 x i1> %i.boe, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bol = shufflevector <8 x i1> %i.boj, <8 x i1> %i.bok, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bom = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1794, i64 6
  %i.bon = shufflevector <4 x i1> %i.bod, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boo = shufflevector <8 x i1> %i.bon, <8 x i1> %i.bom, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bop = shufflevector <2 x i1> %i.bof, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boq = shufflevector <8 x i1> %i.boo, <8 x i1> %i.bop, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bor = and <8 x i1> %i.bol, %i.boq
  %i.bos = icmp ult <4 x ptr> %i.bml, %i.bmp
  %i.bot = icmp ult <4 x ptr> %i.bmw, %i.bmy
  %i.bou = icmp ult <2 x ptr> %i.bmq, %i.bms
  %i.bov = icmp ult <2 x ptr> %i.bna, %i.bnb
  %stride.check = icmp slt i64 %i.blq, 0
  %stride.check746 = icmp slt i64 %i.blm, 0
  %i.bow = insertelement <8 x i1> poison, i1 %stride.check, i64 6
  %i.box = insertelement <8 x i1> %i.bow, i1 %stride.check746, i64 7
  %i.boy = shufflevector <4 x i1> %i.bos, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boz = shufflevector <8 x i1> %i.boy, <8 x i1> %i.box, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpa = shufflevector <2 x i1> %i.bou, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpb = shufflevector <8 x i1> %i.boz, <8 x i1> %i.bpa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpc = shufflevector <4 x i1> %i.bot, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpd = shufflevector <8 x i1> %i.bpc, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpe = shufflevector <2 x i1> %i.bov, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpf = shufflevector <8 x i1> %i.bpd, <8 x i1> %i.bpe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpg = and <8 x i1> %i.bpb, %i.bpf
  %i.bph = bitcast <8 x i1> %i.bpg to i8
  %i.bpi = icmp ne i8 %i.bph, 0
  %i.bpj = insertelement <8 x i1> poison, i1 %bound0765, i64 6
  %i.bpk = insertelement <8 x i1> %i.bpj, i1 %i.bpi, i64 7
  %i.bpl = shufflevector <4 x i1> %i.bny, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpm = shufflevector <8 x i1> %i.bpl, <8 x i1> %i.bpk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpn = shufflevector <2 x i1> %i.boa, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpo = shufflevector <8 x i1> %i.bpm, <8 x i1> %i.bpn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpp = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1766, i64 6
  %i.bpq = shufflevector <4 x i1> %i.bnz, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpr = shufflevector <8 x i1> %i.bpq, <8 x i1> %i.bpp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bps = shufflevector <2 x i1> %i.bob, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpt = shufflevector <8 x i1> %i.bpr, <8 x i1> %i.bps, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpu = and <8 x i1> %i.bpo, %i.bpt
  %i.bpv = or <8 x i1> %i.bor, %i.bpu
  %i.bpw = bitcast <8 x i1> %i.bpv to i8
  %i.bpx = icmp ne i8 %i.bpw, 0
  %op.rdx860 = or i1 %i.bpx, %found.conflict
  %n.vec824 = and i64 %i.blg, -4                  ; 3 uses
  %cmp.n834 = icmp eq i64 %i.blg, %n.vec824
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.lr.ph.split, %._crit_edge
  %.099314 = phi i64 [ 0, %.preheader229.lr.ph.split ], [ %i.bry, %._crit_edge ] ; 3 uses
  %.reass = add i64 %.099314, %invariant.op       ; 2 uses
  %i.bpy = mul i64 %.reass, %i.blm                ; 3 uses
  %i.bpz = mul i64 %i.blj, %.reass                ; 3 uses
  %i.bqa = mul i64 %.099314, %i.blg               ; 3 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bpy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqb, i64 64) ]
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.bqb, i64 %i.bln ; 2 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %.pre409, i64 %i.bpz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqd, i64 64) ]
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %i.bqd, i64 %i.bln ; 2 uses
  %i.bqf = getelementptr [4 x i8], ptr %.pre410.pre, i64 %i.bqa ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %.pre412.pre, i64 %i.bpy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqg, i64 64) ]
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %i.bln ; 2 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %.pre414.pre, i64 %i.bpz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqi, i64 64) ]
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %i.bln ; 2 uses
  %i.bqk = getelementptr [4 x i8], ptr %.pre416.pre, i64 %i.bqa ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.pre419.pre, i64 %i.bpy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bql, i64 64) ]
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bql, i64 %i.bln ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %.pre421.pre, i64 %i.bpz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqn, i64 64) ]
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %i.bln ; 2 uses
  %i.bqp = getelementptr [4 x i8], ptr %.pre423.pre, i64 %i.bqa ; 2 uses
  %brmerge = select i1 %min.iters.check822, i1 true, i1 %op.rdx860
  br i1 %brmerge, label %.preheader.preheader, label %vector.body825

vector.body825:                                   ; preds = %.preheader229, %vector.body825
  %index826 = phi i64 [ %index.next832, %vector.body825 ], [ 0, %.preheader229 ] ; 5 uses
  %i.bqq = add i64 %index826, %i.bkv              ; 6 uses
  %i.bqr = getelementptr inbounds nuw [4 x i8], ptr %i.bqc, i64 %i.bqq
  %wide.load = load <4 x float>, ptr %i.bqr, align 4, !tbaa !85, !alias.scope !324
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %i.bqe, i64 %i.bqq
  %wide.load827 = load <4 x float>, ptr %i.bqs, align 4, !tbaa !85, !alias.scope !325
  %i.bqt = fsub <4 x float> %wide.load, %wide.load827
  %i.bqu = getelementptr [4 x i8], ptr %i.bqf, i64 %index826
  store <4 x float> %i.bqt, ptr %i.bqu, align 4, !tbaa !85, !alias.scope !326, !noalias !327
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %i.bqq
  %wide.load828 = load <4 x float>, ptr %i.bqv, align 4, !tbaa !85, !alias.scope !328
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.bqq
  %wide.load829 = load <4 x float>, ptr %i.bqw, align 4, !tbaa !85, !alias.scope !329
  %i.bqx = fsub <4 x float> %wide.load828, %wide.load829
  %i.bqy = getelementptr [4 x i8], ptr %i.bqk, i64 %index826
  store <4 x float> %i.bqx, ptr %i.bqy, align 4, !tbaa !85, !alias.scope !330, !noalias !331
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %i.bqq
  %wide.load830 = load <4 x float>, ptr %i.bqz, align 4, !tbaa !85, !alias.scope !332
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bqo, i64 %i.bqq
  %wide.load831 = load <4 x float>, ptr %i.bra, align 4, !tbaa !85, !alias.scope !333
  %i.brb = fsub <4 x float> %wide.load830, %wide.load831
  %i.brc = getelementptr [4 x i8], ptr %i.bqp, i64 %index826
  store <4 x float> %i.brb, ptr %i.brc, align 4, !tbaa !85, !alias.scope !334, !noalias !335
  %index.next832 = add nuw i64 %index826, 4       ; 2 uses
end_hunk_0
