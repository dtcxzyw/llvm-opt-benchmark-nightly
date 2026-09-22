Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_detect_dots?download=true
inline.NumInlined: 1664
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3jxl22DetectGaussianEllipsesERKNS_6Image3IfEERKNS_5RectTImEERKNS_20GaussianDetectParamsERKNS_18EllipseQuantParamsEPNS_10ThreadPoolE:bb.a
..thread482.i_crit_edge.i:                        ; preds = %bb.dh
  %.pre67.i = load i64, ptr %i.uo, align 8, !tbaa !300, !noalias !312
  br label %.thread482.i.i

.thread482.i.i:                                   ; preds = %..thread482.i_crit_edge.i, %bb.dg, %.thread476.i.i
  %i.bhe = phi i64 [ %.pre67.i, %..thread482.i_crit_edge.i ], [ %i.bgg, %bb.dg ], [ %i.bgg, %.thread476.i.i ]
  %i.bhf = phi i32 [ 0, %..thread482.i_crit_edge.i ], [ %i.aab, %bb.dg ], [ %i.aab, %.thread476.i.i ] ; 2 uses
  %i.bhg = phi <2 x double> [ %i.bde, %..thread482.i_crit_edge.i ], [ %i.bhd, %bb.dg ], [ %i.bgi, %.thread476.i.i ] ; 2 uses
  %i.bhh = zext nneg i32 %i.bhf to i64            ; 3 uses
  %.not157.4.i.i = icmp ugt i64 %i.bhe, %i.bhh
  br i1 %.not157.4.i.i, label %bb.di, label %.loopexit.i.i136

bb.di:                                            ; preds = %.thread482.i.i
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bdp, i64 %i.bhh
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !85, !noalias !312
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bdt, i64 %i.bhh
  %i.bhl = load float, ptr %i.bhk, align 4, !tbaa !85, !noalias !312
  %i.bhm = fsub float %i.bhj, %i.bhl
  %i.bhn = fpext float %i.bhm to double
  %i.bho = uitofp nneg i32 %i.bhf to double
  %i.bhp = fsub double %i.bho, %i.yh
  %i.bhq = insertelement <2 x double> poison, double %i.bhp, i64 0
  %i.bhr = shufflevector <2 x double> %i.bhq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aah, <2 x double> %i.bhr, <2 x double> %i.bdy) ; 2 uses
  %i.bht = fmul <2 x double> %i.bhs, %i.bhs
  %i.bhu = fdiv <2 x double> %i.bht, %i.zb
  %i.bhv = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bhu)
  %i.bhw = fmul double %i.bhv, -5.000000e-01
  %i.bhx = call double @exp(double noundef %i.bhw) #26, !noalias !312
  %i.bhy = insertelement <2 x double> poison, double %i.bhx, i64 0
  %i.bhz = shufflevector <2 x double> %i.bhy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bia = insertelement <2 x double> %i.bhz, double %i.bhn, i64 1
  %i.bib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bhz, <2 x double> %i.bia, <2 x double> %i.bhg)
  br label %.loopexit.i.i136

.loopexit.i.i136:                                 ; preds = %bb.di, %.thread482.i.i, %bb.dh, %bb.cx, %bb.cw
  %i.bic = phi <2 x double> [ %i.bde, %bb.cw ], [ %i.bde, %bb.cx ], [ %i.bde, %bb.dh ], [ %i.bhg, %.thread482.i.i ], [ %i.bib, %bb.di ] ; 3 uses
  %i.bid = add nsw i32 %.0128223.i.i, 1
  %.not.not.i.i = icmp slt i32 %.0128223.i.i, %i.zn
  br i1 %.not.not.i.i, label %bb.cw, label %bb.cv, !llvm.loop !262

.critedge.i137:                                   ; preds = %._crit_edge.us.i.i.i.2, %bb.by
  %.sroa.17.40.copyload = phi i64 [ %i.bcq, %._crit_edge.us.i.i.i.2 ], [ 0, %bb.by ]
  %i.bie = phi double [ %.pre.i.i.i, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.bif = phi double [ %i.bcp, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.big = phi double [ %i.bcu, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %.us-phi.i.i.i = phi double [ %i.bct, %._crit_edge.us.i.i.i.2 ], [ 0.000000e+00, %bb.by ]
  %i.bih = sitofp i32 %i.zl to double
  %i.bii = fsub double %i.bih, %i.yh              ; 2 uses
  %i.bij = sitofp i32 %i.zk to double
  %i.bik = fsub double %i.bij, %i.yi              ; 2 uses
  %i.bil = fmul double %i.bik, %i.bik
  %i.bim = call double @llvm.fmuladd.f64(double %i.bii, double %i.bii, double %i.bil)
  %i.bin = insertelement <2 x double> poison, double %i.big, i64 0
  %i.bio = insertelement <2 x double> %i.bin, double %i.bif, i64 1
  %i.bip = insertelement <2 x double> poison, double %.us-phi.i.i.i, i64 0
  %i.biq = shufflevector <2 x double> %i.bip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bir = fdiv <2 x double> %i.bio, %i.biq       ; 2 uses
  %i.bis = extractelement <2 x double> %i.bir, i64 0 ; 2 uses
  store double %i.bis, ptr %i.uv, align 8, !noalias !314
  %i.bit = call double @llvm.fmuladd.f64(double %i.bim, double 2.000000e+01, double %i.bie)
  %i.biu = extractelement <2 x double> %i.bir, i64 1
  %i.biv = fadd double %i.bit, %i.biu
  %i.biw = load <2 x double>, ptr %i.ud, align 8, !noalias !314 ; 2 uses
  %i.bix = load double, ptr %i.uq, align 8, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !312
  %i.biy = extractelement <2 x double> %i.zb, i64 0 ; 3 uses
  %i.biz = extractelement <2 x double> %i.zb, i64 1 ; 3 uses
  %i.bja = fcmp olt double %i.biy, %i.biz         ; 3 uses
  %i.bjb = fadd double %i.ze, f0x3FF921FB54442D18
  %.sroa.12.0.i = select i1 %i.bja, double %i.bjb, double %i.ze ; 2 uses
  %.sroa.8.0.i = select i1 %i.bja, double %i.biy, double %i.biz
  %.sroa.4.0.i = select i1 %i.bja, double %i.biz, double %i.biy
  %i.bjc = fdiv double %.sroa.12.0.i, f0x400921FB54442D18
  %i.bjd = call double @llvm.floor.f64(double %i.bjc)
  %i.bje = call double @llvm.fmuladd.f64(double %i.bjd, double f0xC00921FB54442D18, double %.sroa.12.0.i) ; 3 uses
  %i.bjf = fadd double %i.bje, f0xC00921FB54442D18
  %i.bjg = call double @llvm.fabs.f64(double %i.bjf)
  %i.bjh = fcmp olt double %i.bjg, f0x3EB0C6F7A0B5ED8D
  %i.bji = call double @llvm.fabs.f64(double %i.bje)
  %i.bjj = fcmp olt double %i.bji, f0x3EB0C6F7A0B5ED8D
  %or.cond10.i = or i1 %i.bjj, %i.bjh
  %spec.store.select.i = select i1 %or.cond10.i, double 0.000000e+00, double %i.bje ; 2 uses
  %i.bjk = fcmp ult double %spec.store.select.i, 0.000000e+00
  %i.bjl = fcmp ugt double %spec.store.select.i, f0x400921FB54442D18
  %or.cond.not42.i = or i1 %i.bjk, %i.bjl
  %i.bjm = fcmp ult double %.sroa.4.0.i, %.sroa.8.0.i
  %or.cond40.i = or i1 %i.bjm, %or.cond.not42.i
  br i1 %or.cond40.i, label %bb.dr, label %.critedge109

.critedge109:                                     ; preds = %.critedge.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bjn = fcmp olt double %i.yh, 0.000000e+00
  br i1 %i.bjn, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %.critedge109
  %i.bjo = call double @llvm.ceil.f64(double %i.yh)
  %i.bjp = load i64, ptr %i.uo, align 8, !tbaa !300
  %i.bjq = uitofp i64 %i.bjp to double
  %i.bjr = fcmp oge double %i.bjo, %i.bjq
  %i.bjs = fcmp olt double %i.yi, 0.000000e+00
  %or.cond = select i1 %i.bjr, i1 true, i1 %i.bjs
  br i1 %or.cond, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bjt = call double @llvm.ceil.f64(double %i.yi)
  %i.bju = load i64, ptr %i.un, align 8, !tbaa !299
  %i.bjv = uitofp i64 %i.bju to double
  %i.bjw = fcmp ult double %i.bjt, %i.bjv
  br i1 %i.bjw, label %bb.dl, label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  %i.bjx = load i64, ptr %i.va, align 8, !tbaa !316
  %i.bjy = icmp ugt i64 %.sroa.17.40.copyload, %i.bjx
  br i1 %i.bjy, label %.loopexit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bjz = load <2 x i32>, ptr %i.vp, align 8, !tbaa !81
  %i.bka = sitofp <2 x i32> %i.bjz to <2 x double>
  %i.bkb = fsub <2 x double> %i.yd, %i.bka        ; 4 uses
  %i.bkc = shufflevector <2 x double> %i.biw, <2 x double> %i.bkb, <2 x i32> <i32 1, i32 3>
  %i.bkd = insertelement <2 x double> %i.bkb, double f0x3FE70A3D70A3D70A, i64 0
  %i.bke = fmul <2 x double> %i.bkc, %i.bkd
  %i.bkf = shufflevector <2 x double> %i.biw, <2 x double> %i.bkb, <2 x i32> <i32 0, i32 2>
  %i.bkg = shufflevector <2 x double> <double 2.100000e-01, double poison>, <2 x double> %i.bkb, <2 x i32> <i32 0, i32 2>
  %i.bkh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bkf, <2 x double> %i.bkg, <2 x double> %i.bke) ; 2 uses
  %i.bki = extractelement <2 x double> %i.bkh, i64 0
  %i.bkj = call double @llvm.fmuladd.f64(double %i.bix, double 7.000000e-02, double %i.bki) ; 2 uses
  %i.bkk = fmul double %i.bkj, %i.bkj
  %i.bkl = load double, ptr %i.vb, align 8, !tbaa !317
  %i.bkm = fcmp olt double %i.bis, %i.bkl
  br i1 %i.bkm, label %bb.dn, label %.loopexit

bb.dn:                                            ; preds = %bb.dm
  %i.bkn = load double, ptr %i.vc, align 8, !tbaa !318
  %i.bko = fcmp olt double %i.biv, %i.bkn
  br i1 %i.bko, label %bb.do, label %.loopexit

bb.do:                                            ; preds = %bb.dn
  %i.bkp = load double, ptr %i.vd, align 8, !tbaa !319 ; 2 uses
  %i.bkq = fmul double %i.bkp, %i.bkp
  %i.bkr = fcmp ogt double %i.bkk, %i.bkq
  br i1 %i.bkr, label %bb.dp, label %.loopexit

bb.dp:                                            ; preds = %bb.do
  %i.bks = load double, ptr %i.ve, align 8, !tbaa !320 ; 2 uses
  %i.bkt = fmul double %i.bks, %i.bks
  %i.bku = extractelement <2 x double> %i.bkh, i64 1
  %i.bkv = fcmp olt double %i.bku, %i.bkt
  br i1 %i.bkv, label %bb.dq, label %.loopexit

bb.dq:                                            ; preds = %bb.dp
  %i.bkw = load i64, ptr %.sroa.0171.0316, align 8, !tbaa !302 ; 4 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %.sroa.0171.0316, i64 8
  %i.bky = load i64, ptr %i.bkx, align 8, !tbaa !301 ; 3 uses
  %i.bkz = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18) #27 ; 0 uses
  %i.bla = load ptr, ptr %i.vf, align 8, !tbaa !102
  %i.blb = getelementptr inbounds i8, ptr %i.bla, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.blc = trunc i64 %i.bkw to i32
  store i32 %i.blc, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bld = trunc i64 %i.bky to i32
  store i32 %i.bld, ptr %i.b, align 4, !tbaa !81
  %i.ble = call noundef nonnull align 1 ptr @_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.blb, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.blf = load ptr, ptr %i.vf, align 8, !tbaa !102 ; 5 uses
  %i.blg = getelementptr inbounds i8, ptr %i.blf, i64 -184
  %i.blh = load i64, ptr %i.aqy, align 8, !tbaa !300 ; 9 uses
  store i64 %i.blh, ptr %i.blg, align 8, !tbaa !322
  %i.bli = load i64, ptr %i.aqu, align 8, !tbaa !299 ; 5 uses
  %i.blj = getelementptr inbounds i8, ptr %i.blf, i64 -176
  store i64 %i.bli, ptr %i.blj, align 8, !tbaa !323
  %.not317 = icmp eq i64 %i.bli, 0
  br i1 %.not317, label %.loopexit, label %.preheader229.lr.ph

.preheader229.lr.ph:                              ; preds = %bb.dq
  %.not318 = icmp eq i64 %i.blh, 0
  %i.blk = load i64, ptr %i.ug, align 8           ; 5 uses
  br i1 %.not318, label %.loopexit, label %.preheader229.lr.ph.split

.preheader229.lr.ph.split:                        ; preds = %.preheader229.lr.ph
  %i.bll = getelementptr inbounds i8, ptr %i.blf, i64 -96
  %i.blm = load i64, ptr %i.ue, align 8, !tbaa !301 ; 2 uses
  %invariant.op = add i64 %i.bky, %i.blm          ; 3 uses
  %i.bln = load i64, ptr %i.uf, align 8, !tbaa !34 ; 6 uses
  %i.blo = load i64, ptr %2, align 8, !tbaa !302  ; 7 uses
  %.pre410.pre = load ptr, ptr %i.bll, align 8, !tbaa !107 ; 5 uses
  %.pre412.pre = load ptr, ptr %.phi.trans.insert411.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre414.pre = load ptr, ptr %.phi.trans.insert413.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert415.phi.trans.insert = getelementptr inbounds i8, ptr %i.blf, i64 -72
  %.pre416.pre = load ptr, ptr %.phi.trans.insert415.phi.trans.insert, align 8, !tbaa !107 ; 4 uses
  %.pre419.pre = load ptr, ptr %.phi.trans.insert418.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre421.pre = load ptr, ptr %.phi.trans.insert420.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert422.phi.trans.insert = getelementptr inbounds i8, ptr %i.blf, i64 -48
  %.pre423.pre = load ptr, ptr %.phi.trans.insert422.phi.trans.insert, align 8, !tbaa !107 ; 4 uses
  %.pre = load ptr, ptr %i.uh, align 8, !tbaa !33 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre, i64 64) ]
  %.pre409 = load ptr, ptr %i.ui, align 8, !tbaa !33 ; 4 uses
  %i.blp = shl i64 %i.bli, 2
  %i.blq = mul i64 %i.blp, %i.blh                 ; 3 uses
  %scevgep = getelementptr i8, ptr %.pre410.pre, i64 %i.blq ; 3 uses
  %i.blr = shl i64 %i.blh, 2                      ; 6 uses
  %scevgep724 = getelementptr i8, ptr %.pre416.pre, i64 %i.blq ; 2 uses
  %scevgep725 = getelementptr i8, ptr %.pre423.pre, i64 %i.blq ; 2 uses
  %i.bls = mul i64 %i.bln, %invariant.op
  %i.blt = shl i64 %i.bkw, 2                      ; 4 uses
  %i.blu = add i64 %i.bls, %i.blt
  %i.blv = shl nuw nsw i64 %i.blo, 2              ; 4 uses
  %i.blw = add i64 %i.blu, %i.blv                 ; 3 uses
  %scevgep726 = getelementptr nuw i8, ptr %.pre, i64 %i.blw ; 3 uses
  %i.blx = add i64 %i.bky, -1
  %i.bly = add i64 %i.blx, %i.bli
  %i.blz = add i64 %i.bly, %i.blm                 ; 2 uses
  %i.bma = mul i64 %i.bln, %i.blz
  %i.bmb = add i64 %i.bma, %i.blr
  %i.bmc = add i64 %i.bmb, %i.blt
  %i.bmd = add i64 %i.bmc, %i.blv                 ; 3 uses
  %scevgep727 = getelementptr i8, ptr %.pre, i64 %i.bmd ; 3 uses
  %i.bme = mul i64 %i.blk, %invariant.op
  %i.bmf = add i64 %i.bme, %i.blt
  %i.bmg = add i64 %i.bmf, %i.blv                 ; 3 uses
  %scevgep728 = getelementptr nuw i8, ptr %.pre409, i64 %i.bmg ; 3 uses
  %i.bmh = mul i64 %i.blk, %i.blz
  %i.bmi = add i64 %i.bmh, %i.blr
  %i.bmj = add i64 %i.bmi, %i.blt
  %i.bmk = add i64 %i.bmj, %i.blv                 ; 3 uses
  %scevgep729 = getelementptr i8, ptr %.pre409, i64 %i.bmk ; 3 uses
  %scevgep730 = getelementptr nuw i8, ptr %.pre412.pre, i64 %i.blw ; 3 uses
  %scevgep731 = getelementptr i8, ptr %.pre412.pre, i64 %i.bmd ; 3 uses
  %scevgep732 = getelementptr nuw i8, ptr %.pre414.pre, i64 %i.bmg ; 2 uses
  %scevgep733 = getelementptr i8, ptr %.pre414.pre, i64 %i.bmk ; 2 uses
  %scevgep734 = getelementptr nuw i8, ptr %.pre419.pre, i64 %i.blw ; 2 uses
  %scevgep735 = getelementptr i8, ptr %.pre419.pre, i64 %i.bmd ; 2 uses
  %scevgep736 = getelementptr nuw i8, ptr %.pre421.pre, i64 %i.bmg ; 3 uses
  %scevgep737 = getelementptr i8, ptr %.pre421.pre, i64 %i.bmk ; 3 uses
  %i.bml = insertelement <4 x ptr> poison, ptr %.pre423.pre, i64 0 ; 3 uses
  %i.bmm = shufflevector <4 x ptr> %i.bml, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bmn = insertelement <4 x ptr> poison, ptr %scevgep727, i64 0
  %i.bmo = insertelement <4 x ptr> %i.bmn, ptr %scevgep729, i64 1
  %i.bmp = insertelement <4 x ptr> %i.bmo, ptr %scevgep731, i64 2
  %i.bmq = insertelement <4 x ptr> %i.bmp, ptr %scevgep733, i64 3
  %i.bmr = shufflevector <4 x ptr> %i.bml, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bms = insertelement <2 x ptr> poison, ptr %scevgep735, i64 0
  %i.bmt = insertelement <2 x ptr> %i.bms, ptr %scevgep737, i64 1
  %i.bmu = insertelement <4 x ptr> poison, ptr %scevgep726, i64 0
  %i.bmv = insertelement <4 x ptr> %i.bmu, ptr %scevgep728, i64 1
  %i.bmw = insertelement <4 x ptr> %i.bmv, ptr %scevgep730, i64 2
  %i.bmx = insertelement <4 x ptr> %i.bmw, ptr %scevgep732, i64 3
  %i.bmy = insertelement <4 x ptr> poison, ptr %scevgep725, i64 0 ; 3 uses
  %i.bmz = shufflevector <4 x ptr> %i.bmy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bna = insertelement <2 x ptr> poison, ptr %scevgep734, i64 0
  %i.bnb = insertelement <2 x ptr> %i.bna, ptr %scevgep736, i64 1
  %i.bnc = shufflevector <4 x ptr> %i.bmy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnd = insertelement <4 x ptr> poison, ptr %.pre416.pre, i64 0 ; 3 uses
  %i.bne = shufflevector <4 x ptr> %i.bnd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnf = insertelement <4 x ptr> %i.bmy, ptr %scevgep727, i64 1
  %i.bng = insertelement <4 x ptr> %i.bnf, ptr %scevgep729, i64 2
  %i.bnh = insertelement <4 x ptr> %i.bng, ptr %scevgep731, i64 3
  %i.bni = shufflevector <4 x ptr> %i.bnd, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnj = insertelement <2 x ptr> poison, ptr %scevgep733, i64 0
  %i.bnk = insertelement <2 x ptr> %i.bnj, ptr %scevgep735, i64 1 ; 2 uses
  %i.bnl = insertelement <4 x ptr> %i.bml, ptr %scevgep726, i64 1
  %i.bnm = insertelement <4 x ptr> %i.bnl, ptr %scevgep728, i64 2
  %i.bnn = insertelement <4 x ptr> %i.bnm, ptr %scevgep730, i64 3
  %i.bno = insertelement <4 x ptr> poison, ptr %scevgep724, i64 0 ; 3 uses
  %i.bnp = shufflevector <4 x ptr> %i.bno, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnq = insertelement <2 x ptr> poison, ptr %scevgep732, i64 0
  %i.bnr = insertelement <2 x ptr> %i.bnq, ptr %scevgep734, i64 1 ; 2 uses
  %i.bns = shufflevector <4 x ptr> %i.bno, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnt = insertelement <4 x ptr> poison, ptr %.pre410.pre, i64 0 ; 2 uses
  %i.bnu = shufflevector <4 x ptr> %i.bnt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnv = insertelement <4 x ptr> %i.bno, ptr %scevgep727, i64 1
  %i.bnw = insertelement <4 x ptr> %i.bnv, ptr %scevgep729, i64 2
  %i.bnx = insertelement <4 x ptr> %i.bnw, ptr %scevgep731, i64 3
  %i.bny = shufflevector <4 x ptr> %i.bnt, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bnz = insertelement <4 x ptr> %i.bnd, ptr %scevgep726, i64 1
  %i.boa = insertelement <4 x ptr> %i.bnz, ptr %scevgep728, i64 2
  %i.bob = insertelement <4 x ptr> %i.boa, ptr %scevgep730, i64 3
  %i.boc = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.bod = shufflevector <4 x ptr> %i.boc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.boe = shufflevector <4 x ptr> %i.boc, <4 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check859 = icmp ult i64 %i.blh, 48
  %i.bof = icmp ult <4 x ptr> %i.bnu, %i.bnx
  %i.bog = icmp ult <4 x ptr> %i.bob, %i.bod
  %bound0739 = icmp ult ptr %.pre410.pre, %scevgep725
  %bound1740 = icmp ult ptr %.pre423.pre, %scevgep
  %found.conflict741 = and i1 %bound0739, %bound1740
  %i.boh = or i64 %i.bln, %i.blr
  %i.boi = icmp ult <2 x ptr> %i.bny, %i.bnk
  %i.boj = icmp ult <2 x ptr> %i.bnr, %i.boe
  %i.bok = or i64 %i.blk, %i.blr
  %bound0774 = icmp ult ptr %.pre410.pre, %scevgep737
  %bound1775 = icmp ult ptr %scevgep736, %scevgep
  %i.bol = icmp ult <4 x ptr> %i.bne, %i.bnh
  %i.bom = icmp ult <4 x ptr> %i.bnn, %i.bnp
  %i.bon = icmp ult <2 x ptr> %i.bni, %i.bnk
  %i.boo = icmp ult <2 x ptr> %i.bnr, %i.bns
  %bound0816 = icmp ult ptr %.pre416.pre, %scevgep737
  %bound1817 = icmp ult ptr %scevgep736, %scevgep724
  %i.bop = icmp ult <4 x ptr> %i.bmm, %i.bmq
  %i.boq = icmp ult <4 x ptr> %i.bmx, %i.bmz
  %i.bor = icmp ult <2 x ptr> %i.bmr, %i.bmt
  %i.bos = icmp ult <2 x ptr> %i.bnb, %i.bnc
  %stride.check742 = icmp slt i64 %i.blr, 0
  %i.bot = icmp slt i64 %i.boh, 0
  %i.bou = insertelement <8 x i1> poison, i1 %stride.check742, i64 6
  %i.bov = insertelement <8 x i1> %i.bou, i1 %i.bot, i64 7
  %i.bow = shufflevector <4 x i1> %i.bop, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.box = shufflevector <8 x i1> %i.bow, <8 x i1> %i.bov, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.boy = shufflevector <2 x i1> %i.bor, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boz = shufflevector <8 x i1> %i.box, <8 x i1> %i.boy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpa = shufflevector <4 x i1> %i.boq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpb = shufflevector <8 x i1> %i.bpa, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpc = shufflevector <2 x i1> %i.bos, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpd = shufflevector <8 x i1> %i.bpb, <8 x i1> %i.bpc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpe = and <8 x i1> %i.boz, %i.bpd
  %i.bpf = or i64 %i.blk, %i.blr
  %i.bpg = bitcast <8 x i1> %i.bpe to i8
  %i.bph = icmp ne i8 %i.bpg, 0
  %i.bpi = insertelement <8 x i1> poison, i1 %bound0816, i64 6
  %i.bpj = insertelement <8 x i1> %i.bpi, i1 %i.bph, i64 7
  %i.bpk = shufflevector <4 x i1> %i.bol, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpl = shufflevector <8 x i1> %i.bpk, <8 x i1> %i.bpj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpm = shufflevector <2 x i1> %i.bon, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpn = shufflevector <8 x i1> %i.bpl, <8 x i1> %i.bpm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpo = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1817, i64 6
  %i.bpp = shufflevector <4 x i1> %i.bom, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpq = shufflevector <8 x i1> %i.bpp, <8 x i1> %i.bpo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bpr = shufflevector <2 x i1> %i.boo, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bps = shufflevector <8 x i1> %i.bpq, <8 x i1> %i.bpr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bpt = and <8 x i1> %i.bpn, %i.bps
  %i.bpu = bitcast <8 x i1> %i.bpt to i8
  %i.bpv = icmp ne i8 %i.bpu, 0
  %i.bpw = insertelement <8 x i1> poison, i1 %bound0774, i64 6
  %i.bpx = insertelement <8 x i1> %i.bpw, i1 %i.bpv, i64 7
  %i.bpy = shufflevector <4 x i1> %i.bof, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpz = shufflevector <8 x i1> %i.bpy, <8 x i1> %i.bpx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bqa = shufflevector <2 x i1> %i.boi, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqb = shufflevector <8 x i1> %i.bpz, <8 x i1> %i.bqa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bqc = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1775, i64 6
  %i.bqd = shufflevector <4 x i1> %i.bog, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqe = shufflevector <8 x i1> %i.bqd, <8 x i1> %i.bqc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bqf = shufflevector <2 x i1> %i.boj, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqg = shufflevector <8 x i1> %i.bqe, <8 x i1> %i.bqf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bqh = and <8 x i1> %i.bqb, %i.bqg
  %i.bqi = bitcast <8 x i1> %i.bqh to i8
  %i.bqj = icmp ne i8 %i.bqi, 0
  %i.bqk = or i64 %i.bln, %i.bpf
  %op.rdx936 = icmp slt i64 %i.bqk, 0
  %op.rdx941 = or i1 %op.rdx936, %found.conflict741
  %i.bql = or i64 %i.bln, %i.bok
  %i.bqm = icmp slt i64 %i.bql, 0
  %op.rdx944 = or i1 %i.bqj, %i.bqm
  %op.rdx945 = or i1 %op.rdx944, %op.rdx941
  %n.vec861 = and i64 %i.blh, -4                  ; 3 uses
  %cmp.n871 = icmp eq i64 %i.blh, %n.vec861
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.lr.ph.split, %._crit_edge
  %.099314 = phi i64 [ 0, %.preheader229.lr.ph.split ], [ %i.bsn, %._crit_edge ] ; 3 uses
  %.reass = add i64 %.099314, %invariant.op       ; 2 uses
  %i.bqn = mul i64 %.reass, %i.bln                ; 3 uses
  %i.bqo = mul i64 %i.blk, %.reass                ; 3 uses
  %i.bqp = mul i64 %.099314, %i.blh               ; 3 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bqn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqq, i64 64), "align"(ptr %.pre409, i64 64) ]
  %i.bqr = getelementptr inbounds nuw [4 x i8], ptr %i.bqq, i64 %i.blo ; 2 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %.pre409, i64 %i.bqo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqs, i64 64), "align"(ptr %.pre412.pre, i64 64) ]
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bqs, i64 %i.blo ; 2 uses
  %i.bqu = getelementptr [4 x i8], ptr %.pre410.pre, i64 %i.bqp ; 2 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %.pre412.pre, i64 %i.bqn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqv, i64 64), "align"(ptr %.pre414.pre, i64 64) ]
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.bqv, i64 %i.blo ; 2 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %.pre414.pre, i64 %i.bqo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqx, i64 64), "align"(ptr %.pre419.pre, i64 64) ]
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %i.bqx, i64 %i.blo ; 2 uses
  %i.bqz = getelementptr [4 x i8], ptr %.pre416.pre, i64 %i.bqp ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %.pre419.pre, i64 %i.bqn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bra, i64 64), "align"(ptr %.pre421.pre, i64 64) ]
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %i.bra, i64 %i.blo ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %.pre421.pre, i64 %i.bqo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.brc, i64 64) ]
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %i.blo ; 2 uses
  %i.bre = getelementptr [4 x i8], ptr %.pre423.pre, i64 %i.bqp ; 2 uses
  %brmerge = select i1 %min.iters.check859, i1 true, i1 %op.rdx945
  br i1 %brmerge, label %.preheader.preheader, label %vector.body862

vector.body862:                                   ; preds = %.preheader229, %vector.body862
  %index863 = phi i64 [ %index.next869, %vector.body862 ], [ 0, %.preheader229 ] ; 5 uses
  %i.brf = add i64 %index863, %i.bkw              ; 6 uses
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %i.brf
  %wide.load = load <4 x float>, ptr %i.brg, align 4, !tbaa !85, !alias.scope !324
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.brf
  %wide.load864 = load <4 x float>, ptr %i.brh, align 4, !tbaa !85, !alias.scope !325
  %i.bri = fsub <4 x float> %wide.load, %wide.load864
  %i.brj = getelementptr [4 x i8], ptr %i.bqu, i64 %index863
  store <4 x float> %i.bri, ptr %i.brj, align 4, !tbaa !85, !alias.scope !326, !noalias !327
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.bqw, i64 %i.brf
  %wide.load865 = load <4 x float>, ptr %i.brk, align 4, !tbaa !85, !alias.scope !328
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %i.bqy, i64 %i.brf
  %wide.load866 = load <4 x float>, ptr %i.brl, align 4, !tbaa !85, !alias.scope !329
  %i.brm = fsub <4 x float> %wide.load865, %wide.load866
  %i.brn = getelementptr [4 x i8], ptr %i.bqz, i64 %index863
  store <4 x float> %i.brm, ptr %i.brn, align 4, !tbaa !85, !alias.scope !330, !noalias !331
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %i.brb, i64 %i.brf
  %wide.load867 = load <4 x float>, ptr %i.bro, align 4, !tbaa !85, !alias.scope !332
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.brd, i64 %i.brf
  %wide.load868 = load <4 x float>, ptr %i.brp, align 4, !tbaa !85, !alias.scope !333
  %i.brq = fsub <4 x float> %wide.load867, %wide.load868
  %i.brr = getelementptr [4 x i8], ptr %i.bre, i64 %index863
  store <4 x float> %i.brq, ptr %i.brr, align 4, !tbaa !85, !alias.scope !334, !noalias !335
  %index.next869 = add nuw i64 %index863, 4       ; 2 uses
  %i.brs = icmp eq i64 %index.next869, %n.vec861
  br i1 %i.brs, label %middle.block870, label %vector.body862, !llvm.loop !273

middle.block870:                                  ; preds = %vector.body862
  br i1 %cmp.n871, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader229, %middle.block870
  %.098313.ph = phi i64 [ %n.vec861, %middle.block870 ], [ 0, %.preheader229 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.098313 = phi i64 [ %i.bsm, %.preheader ], [ %.098313.ph, %.preheader.preheader ] ; 5 uses
  %i.brt = add i64 %.098313, %i.bkw               ; 6 uses
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %i.brt
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !85
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.brt
  %i.brx = load float, ptr %i.brw, align 4, !tbaa !85
  %i.bry = fsub float %i.brv, %i.brx
  %i.brz = getelementptr [4 x i8], ptr %i.bqu, i64 %.098313
  store float %i.bry, ptr %i.brz, align 4, !tbaa !85
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.bqw, i64 %i.brt
  %i.bsb = load float, ptr %i.bsa, align 4, !tbaa !85
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %i.bqy, i64 %i.brt
  %i.bsd = load float, ptr %i.bsc, align 4, !tbaa !85
  %i.bse = fsub float %i.bsb, %i.bsd
  %i.bsf = getelementptr [4 x i8], ptr %i.bqz, i64 %.098313
  store float %i.bse, ptr %i.bsf, align 4, !tbaa !85
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %i.brb, i64 %i.brt
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !85
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.brd, i64 %i.brt
  %i.bsj = load float, ptr %i.bsi, align 4, !tbaa !85
  %i.bsk = fsub float %i.bsh, %i.bsj
  %i.bsl = getelementptr [4 x i8], ptr %i.bre, i64 %.098313
  store float %i.bsk, ptr %i.bsl, align 4, !tbaa !85
  %i.bsm = add nuw i64 %.098313, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bsm, %i.blh
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !274

._crit_edge:                                      ; preds = %.preheader, %middle.block870
  %i.bsn = add nuw i64 %.099314, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.bsn, %i.bli
  br i1 %exitcond407.not, label %.loopexit, label %.preheader229, !llvm.loop !275

.loopexit:                                        ; preds = %._crit_edge, %bb.dq, %.preheader229.lr.ph, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dl, %.critedge109, %bb.dj, %bb.dk
  %i.bso = getelementptr inbounds nuw i8, ptr %.sroa.0171.0316, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.bso, %.sroa.11180.0
  br i1 %.not, label %.critedge111, label %bb.bh

bb.dr:                                            ; preds = %.critedge.i137, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bsp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.bsp, align 8, !tbaa !278
  br label %bb.ds

.critedge111:                                     ; preds = %.loopexit, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit
  %i.bsq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bsr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bsr, align 8
  %i.bss = load <2 x ptr>, ptr %18, align 16, !tbaa !108
  store <2 x ptr> %i.bss, ptr %0, align 8, !tbaa !108
  %i.bst = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bsu = load ptr, ptr %i.bst, align 16, !tbaa !108
  store ptr %i.bsu, ptr %i.bsq, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.critedge111
  %.not.i.i140 = icmp eq ptr %.sroa.0186.1, null
  br i1 %.not.i.i140, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  br i1 %.not315, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dt, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bsv, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i ], [ %.sroa.11180.0, %bb.dt ] ; 4 uses
  %i.bsv = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -88 ; 2 uses
  %i.bsw = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bsx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bsy = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -48
  store ptr %i.bsx, ptr %i.bsy, align 8, !tbaa !92
  %i.bsz = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -40
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bsz, align 8, !tbaa !91
  %i.bta = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i to i64
  %i.btb = ptrtoint ptr %i.bsx to i64
  %i.btc = sub i64 %i.bta, %i.btb
  call void @_ZdlPvm(ptr noundef nonnull %i.bsx, i64 noundef %i.btc) #30
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.du, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0186.1, %i.bsv
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, %bb.dt
  %i.btd = sub i64 %.sroa.11189.1, %i.tg
  call void @_ZdlPvm(ptr noundef %.sroa.0186.1, i64 noundef %i.btd) #30
  br label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %bb.ds, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ek) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %.pr = load i32, ptr %i.eg, align 8, !tbaa !22
  %i.bte = icmp eq i32 %.pr, 0
  br i1 %i.bte, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.el) #26
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit, %.thread226
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %.pr227 = load i32, ptr %i.j, align 8, !tbaa !80
  %i.btf = icmp eq i32 %.pr227, 0
  br i1 %i.btf, label %bb.dx, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ae) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #26
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %.thread228, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.btg = load ptr, ptr %18, align 16, !tbaa !109 ; 5 uses
  %.not.i.i146 = icmp eq ptr %i.btg, null
  br i1 %.not.i.i146, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEED2B8nn180100Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit
  %i.bth = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bti = load ptr, ptr %i.bth, align 8, !tbaa !102 ; 2 uses
  %.not6.i.i.i.i147 = icmp eq ptr %i.btg, %i.bti
  br i1 %.not6.i.i.i.i147, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i148

.lr.ph.i.i.i.i148:                                ; preds = %bb.dy, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i
  %.07.i.i.i.i149 = phi ptr [ %i.btj, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i ], [ %i.bti, %bb.dy ] ; 4 uses
  %i.btj = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -184 ; 3 uses
  %i.btk = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -24
  %i.btl = load ptr, ptr %i.btk, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i150 = icmp eq ptr %i.btl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i150, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i148
  %i.btm = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -16
  store ptr %i.btl, ptr %i.btm, align 8, !tbaa !115
  %i.btn = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -8
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !116
  %i.btp = ptrtoint ptr %i.bto to i64
  %i.btq = ptrtoint ptr %i.btl to i64
  %i.btr = sub i64 %i.btp, %i.btq
  call void @_ZdlPvm(ptr noundef nonnull %i.btl, i64 noundef %i.btr) #30
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i: ; preds = %bb.dz, %.lr.ph.i.i.i.i148
  call void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(184) %i.btj) #26
  %.not.i.i.i.i151 = icmp eq ptr %i.btg, %i.btj
  br i1 %.not.i.i.i.i151, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i148, !llvm.loop !276

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %18, align 16, !tbaa !109
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.i.i
end_hunk_0
