Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_detect_dots?download=true
inline.NumInlined: 1664
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3jxl22DetectGaussianEllipsesERKNS_6Image3IfEERKNS_5RectTImEERKNS_20GaussianDetectParamsERKNS_18EllipseQuantParamsEPNS_10ThreadPoolE:bb.a
  %i.bgy = call double @exp(double noundef %i.bgx) #26, !noalias !312
  %i.bgz = insertelement <2 x double> poison, double %i.bgy, i64 0
  %i.bha = shufflevector <2 x double> %i.bgz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhb = insertelement <2 x double> %i.bha, double %i.bgo, i64 1
  %i.bhc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bha, <2 x double> %i.bhb, <2 x double> %i.bgh)
  br label %.thread482.i.i

bb.dh:                                            ; preds = %bb.df
  br i1 %i.aaf, label %.loopexit.i.i136, label %..thread482.i_crit_edge.i

..thread482.i_crit_edge.i:                        ; preds = %bb.dh
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
  %.pre410.pre = load ptr, ptr %i.blk, align 8, !tbaa !107 ; 8 uses
  %.pre412.pre = load ptr, ptr %.phi.trans.insert411.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre414.pre = load ptr, ptr %.phi.trans.insert413.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert415.phi.trans.insert = getelementptr inbounds i8, ptr %i.ble, i64 -72
  %.pre416.pre = load ptr, ptr %.phi.trans.insert415.phi.trans.insert, align 8, !tbaa !107 ; 8 uses
  %.pre419.pre = load ptr, ptr %.phi.trans.insert418.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.pre421.pre = load ptr, ptr %.phi.trans.insert420.phi.trans.insert, align 8, !tbaa !33 ; 4 uses
  %.phi.trans.insert422.phi.trans.insert = getelementptr inbounds i8, ptr %i.ble, i64 -48
  %.pre423.pre = load ptr, ptr %.phi.trans.insert422.phi.trans.insert, align 8, !tbaa !107 ; 6 uses
  %.pre = load ptr, ptr %i.uf, align 8, !tbaa !33 ; 4 uses
  %.pre409 = load ptr, ptr %i.ug, align 8, !tbaa !33 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre, i64 64), "align"(ptr %.pre409, i64 64), "align"(ptr %.pre412.pre, i64 64), "align"(ptr %.pre414.pre, i64 64), "align"(ptr %.pre419.pre, i64 64), "align"(ptr %.pre421.pre, i64 64) ]
  %23 = shl i64 %i.blh, 2
  %24 = mul i64 %23, %i.blg                       ; 3 uses
  %scevgep = getelementptr i8, ptr %.pre423.pre, i64 %24
  %scevgep824 = getelementptr i8, ptr %.pre416.pre, i64 %24 ; 3 uses
  %i.blo = add i64 %i.bkx, -1
  %i.blp = add i64 %i.blo, %i.blh
  %i.blq = add i64 %i.blp, %i.bll                 ; 2 uses
  %i.blr = mul i64 %i.blj, %i.blq
  %i.bls = shl i64 %i.bkv, 2                      ; 4 uses
  %i.blt = add i64 %i.blr, %i.bls
  %i.blu = shl i64 %i.blg, 2                      ; 6 uses
  %i.blv = add i64 %i.blt, %i.blu
  %i.blw = shl nuw nsw i64 %i.bln, 2              ; 4 uses
  %i.blx = add i64 %i.blv, %i.blw                 ; 3 uses
  %scevgep.a = getelementptr i8, ptr %.pre421.pre, i64 %i.blx ; 3 uses
  %i.bly = mul i64 %i.blj, %invariant.op
  %i.blz = add i64 %i.bly, %i.bls
  %i.bma = add i64 %i.blz, %i.blw                 ; 3 uses
  %scevgep821 = getelementptr nuw i8, ptr %.pre421.pre, i64 %i.bma ; 3 uses
  %i.bmb = mul i64 %i.blm, %i.blq
  %i.bmc = add i64 %i.bmb, %i.bls
  %i.bmd = add i64 %i.bmc, %i.blu
  %i.bme = add i64 %i.bmd, %i.blw                 ; 3 uses
  %scevgep822 = getelementptr i8, ptr %.pre419.pre, i64 %i.bme ; 3 uses
  %i.bmf = mul i64 %i.blm, %invariant.op
  %i.bmg = add i64 %i.bmf, %i.bls
  %i.bmh = add i64 %i.bmg, %i.blw                 ; 3 uses
  %scevgep823 = getelementptr nuw i8, ptr %.pre419.pre, i64 %i.bmh ; 3 uses
  %scevgep824.a = getelementptr i8, ptr %.pre414.pre, i64 %i.blx
  %scevgep825 = getelementptr nuw i8, ptr %.pre414.pre, i64 %i.bma
  %scevgep826 = getelementptr i8, ptr %.pre412.pre, i64 %i.bme
  %scevgep827 = getelementptr nuw i8, ptr %.pre412.pre, i64 %i.bmh
  %scevgep828 = getelementptr i8, ptr %.pre409, i64 %i.blx
  %scevgep829 = getelementptr nuw i8, ptr %.pre409, i64 %i.bma
  %scevgep830 = getelementptr i8, ptr %.pre, i64 %i.bme
  %scevgep831 = getelementptr nuw i8, ptr %.pre, i64 %i.bmh
  %scevgep837 = getelementptr i8, ptr %.pre410.pre, i64 %24 ; 3 uses
  %scevgep832 = getelementptr i8, ptr %.pre423.pre, i64 %i.blu ; 2 uses
  %scevgep833 = getelementptr i8, ptr %.pre416.pre, i64 %i.blu ; 2 uses
  %scevgep834 = getelementptr i8, ptr %.pre410.pre, i64 %i.blu ; 2 uses
  %i.bmi = insertelement <4 x ptr> poison, ptr %.pre423.pre, i64 0 ; 2 uses
  %i.bmj = shufflevector <4 x ptr> %i.bmi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bmk = insertelement <4 x ptr> poison, ptr %scevgep830, i64 0
  %i.bml = insertelement <4 x ptr> %i.bmk, ptr %scevgep828, i64 1
  %i.bmm = insertelement <4 x ptr> %i.bml, ptr %scevgep826, i64 2
  %i.bmn = insertelement <4 x ptr> %i.bmm, ptr %scevgep824.a, i64 3 ; 3 uses
  %i.bmo = shufflevector <4 x ptr> %i.bmi, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bmp = insertelement <2 x ptr> poison, ptr %scevgep822, i64 0
  %i.bmq = insertelement <2 x ptr> %i.bmp, ptr %scevgep.a, i64 1
  %i.bmr = insertelement <4 x ptr> poison, ptr %scevgep831, i64 0
  %i.bms = insertelement <4 x ptr> %i.bmr, ptr %scevgep829, i64 1
  %i.bmt = insertelement <4 x ptr> %i.bms, ptr %scevgep827, i64 2
  %i.bmu = insertelement <4 x ptr> %i.bmt, ptr %scevgep825, i64 3 ; 3 uses
  %i.bmv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.bmw = shufflevector <4 x ptr> %i.bmv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bmx = insertelement <2 x ptr> poison, ptr %scevgep823, i64 0
  %i.bmy = insertelement <2 x ptr> %i.bmx, ptr %scevgep821, i64 1
  %i.bmz = shufflevector <4 x ptr> %i.bmv, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bna = insertelement <4 x ptr> poison, ptr %.pre410.pre, i64 0
  %i.bnb = shufflevector <4 x ptr> %i.bna, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnc = insertelement <4 x ptr> poison, ptr %scevgep837, i64 0
  %25 = shufflevector <4 x ptr> %i.bnc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnd = insertelement <4 x ptr> poison, ptr %.pre416.pre, i64 0
  %i.bne = shufflevector <4 x ptr> %i.bnd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bnf = insertelement <4 x ptr> poison, ptr %scevgep824, i64 0
  %i.bng = shufflevector <4 x ptr> %i.bnf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check842 = icmp ult i64 %i.blg, 28
  %bound0 = icmp ult ptr %.pre410.pre, %scevgep833
  %bound1 = icmp ult ptr %.pre416.pre, %scevgep834
  %found.conflict = and i1 %bound0, %bound1
  %bound0.a = icmp ult ptr %.pre410.pre, %scevgep832
  %bound1.a = icmp ult ptr %.pre423.pre, %scevgep834
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %i.bnh = icmp ult <4 x ptr> %i.bnb, %i.bmn
  %i.bni = icmp ult <4 x ptr> %i.bmu, %25
  %26 = or i64 %i.blm, %i.blu
  %27 = and <4 x i1> %i.bnh, %i.bni
  %bound0862 = icmp ult ptr %.pre410.pre, %scevgep822
  %bound1863 = icmp ult ptr %scevgep823, %scevgep837
  %found.conflict866 = and i1 %bound0862, %bound1863
  %bound0890 = icmp ult ptr %.pre410.pre, %scevgep.a
  %bound1891 = icmp ult ptr %scevgep821, %scevgep837
  %found.conflict870 = and i1 %bound0890, %bound1891
  %bound0872 = icmp ult ptr %.pre416.pre, %scevgep832
  %bound1873 = icmp ult ptr %.pre423.pre, %scevgep833
  %found.conflict874 = and i1 %bound0872, %bound1873
  %28 = icmp ult <4 x ptr> %i.bne, %i.bmn
  %29 = icmp ult <4 x ptr> %i.bmu, %i.bng
  %30 = and <4 x i1> %28, %29
  %bound0892 = icmp ult ptr %.pre416.pre, %scevgep822
  %bound1893 = icmp ult ptr %scevgep823, %scevgep824
  %found.conflict894 = and i1 %bound0892, %bound1893
  %bound0896 = icmp ult ptr %.pre416.pre, %scevgep.a
  %bound1897 = icmp ult ptr %scevgep821, %scevgep824
  %found.conflict898 = and i1 %bound0896, %bound1897
  %i.bnj = icmp ult <4 x ptr> %i.bmj, %i.bmn
  %i.bnk = icmp ult <4 x ptr> %i.bmu, %i.bmw
  %i.bnl = icmp ult <2 x ptr> %i.bmo, %i.bmq
  %i.bnm = icmp ult <2 x ptr> %i.bmy, %i.bmz
  %stride.check = icmp slt i64 %26, 0
  %stride.check843 = icmp slt i64 %i.blj, 0
  %i.bnn = insertelement <8 x i1> poison, i1 %stride.check, i64 6
  %i.bno = insertelement <8 x i1> %i.bnn, i1 %stride.check843, i64 7
  %i.bnp = shufflevector <4 x i1> %i.bnj, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnq = shufflevector <8 x i1> %i.bnp, <8 x i1> %i.bno, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bnr = shufflevector <2 x i1> %i.bnl, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bns = shufflevector <8 x i1> %i.bnq, <8 x i1> %i.bnr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bnt = shufflevector <4 x i1> %i.bnk, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnu = shufflevector <8 x i1> %i.bnt, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bnv = shufflevector <2 x i1> %i.bnm, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnw = shufflevector <8 x i1> %i.bnu, <8 x i1> %i.bnv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bnx = and <8 x i1> %i.bns, %i.bnw
  %i.bny = bitcast <8 x i1> %i.bnx to i8
  %i.bnz = icmp ne i8 %i.bny, 0
  %rdx.op = or <4 x i1> %27, %30
  %31 = bitcast <4 x i1> %rdx.op to i4
  %32 = icmp ne i4 %31, 0
  %op.rdx951 = or i1 %32, %found.conflict
  %op.rdx952 = or i1 %found.conflict.a, %found.conflict866
  %op.rdx953 = or i1 %found.conflict870, %found.conflict874
  %op.rdx954 = or i1 %found.conflict894, %found.conflict898
  %op.rdx955 = or i1 %op.rdx951, %op.rdx952
  %op.rdx956 = or i1 %op.rdx953, %op.rdx954
  %op.rdx957 = or i1 %op.rdx955, %op.rdx956
  %op.rdx955.a = or i1 %op.rdx957, %i.bnz
  %n.vec919 = and i64 %i.blg, -4                  ; 3 uses
  %cmp.n929 = icmp eq i64 %i.blg, %n.vec919
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.lr.ph.split, %._crit_edge
  %.099314 = phi i64 [ 0, %.preheader229.lr.ph.split ], [ %i.bqa, %._crit_edge ] ; 3 uses
  %.reass = add i64 %.099314, %invariant.op       ; 2 uses
  %i.boa = mul i64 %.reass, %i.blm                ; 3 uses
  %i.bob = mul i64 %i.blj, %.reass                ; 3 uses
  %i.boc = mul i64 %.099314, %i.blg               ; 3 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.boa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bod, i64 64) ]
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.bln ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %.pre409, i64 %i.bob ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bof, i64 64) ]
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bof, i64 %i.bln ; 2 uses
  %i.boh = getelementptr [4 x i8], ptr %.pre410.pre, i64 %i.boc ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %.pre412.pre, i64 %i.boa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.boi, i64 64) ]
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bln ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %.pre414.pre, i64 %i.bob ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bok, i64 64) ]
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.bln ; 2 uses
  %i.bom = getelementptr [4 x i8], ptr %.pre416.pre, i64 %i.boc ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.pre419.pre, i64 %i.boa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bon, i64 64) ]
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bln ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %.pre421.pre, i64 %i.bob ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bop, i64 64) ]
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.bln ; 2 uses
  %i.bor = getelementptr [4 x i8], ptr %.pre423.pre, i64 %i.boc ; 2 uses
  %brmerge = select i1 %min.iters.check842, i1 true, i1 %op.rdx955.a
  br i1 %brmerge, label %.preheader.preheader, label %vector.body920

vector.body920:                                   ; preds = %.preheader229, %vector.body920
  %index921 = phi i64 [ %index.next927, %vector.body920 ], [ 0, %.preheader229 ] ; 5 uses
  %i.bos = add i64 %index921, %i.bkv              ; 6 uses
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bos
  %wide.load = load <4 x float>, ptr %i.bot, align 4, !tbaa !85, !alias.scope !324
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %i.bos
  %wide.load922 = load <4 x float>, ptr %i.bou, align 4, !tbaa !85, !alias.scope !325
  %i.bov = fsub <4 x float> %wide.load, %wide.load922
  %i.bow = getelementptr [4 x i8], ptr %i.boh, i64 %index921
  store <4 x float> %i.bov, ptr %i.bow, align 4, !tbaa !85, !alias.scope !326, !noalias !327
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bos
  %wide.load923 = load <4 x float>, ptr %i.box, align 4, !tbaa !85, !alias.scope !328
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bol, i64 %i.bos
  %wide.load924 = load <4 x float>, ptr %i.boy, align 4, !tbaa !85, !alias.scope !329
  %i.boz = fsub <4 x float> %wide.load923, %wide.load924
  %i.bpa = getelementptr [4 x i8], ptr %i.bom, i64 %index921
  store <4 x float> %i.boz, ptr %i.bpa, align 4, !tbaa !85, !alias.scope !330, !noalias !331
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.boo, i64 %i.bos
  %wide.load925 = load <4 x float>, ptr %i.bpb, align 4, !tbaa !85, !alias.scope !332
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bos
  %wide.load926 = load <4 x float>, ptr %i.bpc, align 4, !tbaa !85, !alias.scope !333
  %i.bpd = fsub <4 x float> %wide.load925, %wide.load926
  %i.bpe = getelementptr [4 x i8], ptr %i.bor, i64 %index921
  store <4 x float> %i.bpd, ptr %i.bpe, align 4, !tbaa !85, !alias.scope !334, !noalias !335
  %index.next927 = add nuw i64 %index921, 4       ; 2 uses
  %i.bpf = icmp eq i64 %index.next927, %n.vec919
  br i1 %i.bpf, label %middle.block928, label %vector.body920, !llvm.loop !273

middle.block928:                                  ; preds = %vector.body920
  br i1 %cmp.n929, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader229, %middle.block928
  %.098313.ph = phi i64 [ %n.vec919, %middle.block928 ], [ 0, %.preheader229 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.098313 = phi i64 [ %i.bpz, %.preheader ], [ %.098313.ph, %.preheader.preheader ] ; 5 uses
  %i.bpg = add i64 %.098313, %i.bkv               ; 6 uses
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bpg
  %i.bpi = load float, ptr %i.bph, align 4, !tbaa !85
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %i.bpg
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !85
  %i.bpl = fsub float %i.bpi, %i.bpk
  %i.bpm = getelementptr [4 x i8], ptr %i.boh, i64 %.098313
  store float %i.bpl, ptr %i.bpm, align 4, !tbaa !85
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bpg
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !85
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bol, i64 %i.bpg
  %i.bpq = load float, ptr %i.bpp, align 4, !tbaa !85
  %i.bpr = fsub float %i.bpo, %i.bpq
  %i.bps = getelementptr [4 x i8], ptr %i.bom, i64 %.098313
  store float %i.bpr, ptr %i.bps, align 4, !tbaa !85
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %i.boo, i64 %i.bpg
  %i.bpu = load float, ptr %i.bpt, align 4, !tbaa !85
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bpg
  %i.bpw = load float, ptr %i.bpv, align 4, !tbaa !85
  %i.bpx = fsub float %i.bpu, %i.bpw
  %i.bpy = getelementptr [4 x i8], ptr %i.bor, i64 %.098313
  store float %i.bpx, ptr %i.bpy, align 4, !tbaa !85
  %i.bpz = add nuw i64 %.098313, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bpz, %i.blg
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !274

._crit_edge:                                      ; preds = %.preheader, %middle.block928
  %i.bqa = add nuw i64 %.099314, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.bqa, %i.blh
  br i1 %exitcond407.not, label %.loopexit, label %.preheader229, !llvm.loop !275

.loopexit:                                        ; preds = %._crit_edge, %bb.dq, %.preheader229.lr.ph, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dl, %.critedge109, %bb.dj, %bb.dk
  %i.bqb = getelementptr inbounds nuw i8, ptr %.sroa.0171.0316, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.bqb, %.sroa.11180.0
  br i1 %.not, label %.critedge111, label %bb.bh

bb.dr:                                            ; preds = %.critedge.i137, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.bqc, align 8, !tbaa !278
  br label %bb.ds

.critedge111:                                     ; preds = %.loopexit, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bqe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bqe, align 8
  %i.bqf = load <2 x ptr>, ptr %18, align 16, !tbaa !108
  store <2 x ptr> %i.bqf, ptr %0, align 8, !tbaa !108
  %i.bqg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bqh = load ptr, ptr %i.bqg, align 16, !tbaa !108
  store ptr %i.bqh, ptr %i.bqd, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.critedge111
  %.not.i.i140 = icmp eq ptr %.sroa.0186.1, null
  br i1 %.not.i.i140, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  br i1 %.not315, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dt, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bqi, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i ], [ %.sroa.11180.0, %bb.dt ] ; 4 uses
  %i.bqi = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -88 ; 2 uses
  %i.bqj = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bqk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bql = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -48
  store ptr %i.bqk, ptr %i.bql, align 8, !tbaa !92
  %i.bqm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -40
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bqm, align 8, !tbaa !91
  %i.bqn = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i to i64
  %i.bqo = ptrtoint ptr %i.bqk to i64
  %i.bqp = sub i64 %i.bqn, %i.bqo
  call void @_ZdlPvm(ptr noundef nonnull %i.bqk, i64 noundef %i.bqp) #30
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.du, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0186.1, %i.bqi
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl12_GLOBAL__N_118ConnectedComponentEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, %bb.dt
  %i.bqq = sub i64 %.sroa.11189.1, %i.te
  call void @_ZdlPvm(ptr noundef %.sroa.0186.1, i64 noundef %i.bqq) #30
  br label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %bb.ds, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_118ConnectedComponentENS_9allocatorIS3_EEED2B8nn180100Ev.exit.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ek) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %.pr = load i32, ptr %i.eg, align 8, !tbaa !22
  %i.bqr = icmp eq i32 %.pr, 0
  br i1 %i.bqr, label %bb.dv, label %bb.dw

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
  %i.bqs = icmp eq i32 %.pr227, 0
  br i1 %i.bqs, label %bb.dx, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ae) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #26
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #26
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %.thread228, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.bqt = load ptr, ptr %18, align 16, !tbaa !109 ; 5 uses
  %.not.i.i146 = icmp eq ptr %i.bqt, null
  br i1 %.not.i.i146, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEED2B8nn180100Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit
  %i.bqu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !102 ; 2 uses
  %.not6.i.i.i.i147 = icmp eq ptr %i.bqt, %i.bqv
  br i1 %.not6.i.i.i.i147, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i148

.lr.ph.i.i.i.i148:                                ; preds = %bb.dy, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i
  %.07.i.i.i.i149 = phi ptr [ %i.bqw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i ], [ %i.bqv, %bb.dy ] ; 4 uses
  %i.bqw = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -184 ; 3 uses
  %i.bqx = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -24
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i150 = icmp eq ptr %i.bqy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i150, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i148
  %i.bqz = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -16
  store ptr %i.bqy, ptr %i.bqz, align 8, !tbaa !115
  %i.bra = getelementptr inbounds i8, ptr %.07.i.i.i.i149, i64 -8
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !116
  %i.brc = ptrtoint ptr %i.brb to i64
  %i.brd = ptrtoint ptr %i.bqy to i64
  %i.bre = sub i64 %i.brc, %i.brd
  call void @_ZdlPvm(ptr noundef nonnull %i.bqy, i64 noundef %i.bre) #30
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i: ; preds = %bb.dz, %.lr.ph.i.i.i.i148
  call void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(184) %i.bqw) #26
  %.not.i.i.i.i151 = icmp eq ptr %i.bqt, %i.bqw
  br i1 %.not.i.i.i.i151, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i148, !llvm.loop !276

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS1_IS6_EEEEEEEEE7destroyB8nn180100IS9_vEEvRSA_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %18, align 16, !tbaa !109
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.i.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, %bb.dy
  %i.brf = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE7__clearB8nn180100Ev.exit.loopexit.i.i ], [ %i.bqt, %bb.dy ] ; 2 uses
  store ptr %i.bqt, ptr %i.bqu, align 8, !tbaa !102
  %i.brg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.brh = load ptr, ptr %i.brg, align 16, !tbaa !108
end_hunk_0
