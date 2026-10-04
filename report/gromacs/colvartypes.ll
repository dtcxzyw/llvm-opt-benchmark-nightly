Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvartypes?download=true
inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm:bb.a
  %i.aup = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.auo, <2 x double> %i.aun)
  store <2 x double> %i.aup, ptr %i.ajx, align 16, !tbaa !55
  %i.auq = load <2 x double>, ptr %i.aka, align 8
  %i.aur = load double, ptr %i.akc, align 16, !tbaa !55
  %i.aus = load <2 x double>, ptr %i.akb, align 16, !tbaa !55
  %i.aut = insertelement <2 x double> %i.auq, double %i.aur, i64 1
  %i.auu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.aut, <2 x double> %i.aus)
  store <2 x double> %i.auu, ptr %i.akb, align 16, !tbaa !55
  %i.auv = load <2 x double>, ptr %i.ake, align 8
  %i.auw = load double, ptr %i.akf, align 16, !tbaa !55
  %i.aux = load <2 x double>, ptr %i.akd, align 16, !tbaa !55
  %i.auy = insertelement <2 x double> %i.auv, double %i.auw, i64 1
  %i.auz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.auy, <2 x double> %i.aux)
  store <2 x double> %i.auz, ptr %i.akd, align 16, !tbaa !55
  %i.ava = load <2 x double>, ptr %i.akg, align 8
  %i.avb = load double, ptr %i.aki, align 16, !tbaa !55
  %i.avc = load <2 x double>, ptr %i.akh, align 16, !tbaa !55
  %i.avd = insertelement <2 x double> %i.ava, double %i.avb, i64 1
  %i.ave = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avd, <2 x double> %i.avc)
  store <2 x double> %i.ave, ptr %i.akh, align 16, !tbaa !55
  %i.avf = load <2 x double>, ptr %i.akk, align 8
  %i.avg = load double, ptr %i.akl, align 16, !tbaa !55
  %i.avh = load <2 x double>, ptr %i.akj, align 16, !tbaa !55
  %i.avi = insertelement <2 x double> %i.avf, double %i.avg, i64 1
  %i.avj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avi, <2 x double> %i.avh)
  store <2 x double> %i.avj, ptr %i.akj, align 16, !tbaa !55
  %i.avk = load <2 x double>, ptr %i.akm, align 8
  %i.avl = load double, ptr %i.ako, align 16, !tbaa !55
  %i.avm = load <2 x double>, ptr %i.akn, align 16, !tbaa !55
  %i.avn = insertelement <2 x double> %i.avk, double %i.avl, i64 1
  %i.avo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avn, <2 x double> %i.avm)
  store <2 x double> %i.avo, ptr %i.akn, align 16, !tbaa !55
  br label %.split751.us

.preheader.us.preheader:                          ; preds = %bb.ef
  %i.avp = load <2 x double>, ptr %50, align 16
  %i.avq = load double, ptr %i.akp, align 8, !tbaa !55
  %i.avr = load <2 x double>, ptr %i.j, align 16, !tbaa !55
  %i.avs = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.avt = shufflevector <2 x double> %i.avs, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.avu = insertelement <2 x double> %i.avp, double %i.avq, i64 1
  %i.avv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.avu, <2 x double> %i.avr)
  store <2 x double> %i.avv, ptr %i.j, align 16, !tbaa !55
  %i.avw = load <2 x double>, ptr %i.akq, align 16
  %i.avx = load double, ptr %i.aks, align 8, !tbaa !55
  %i.avy = load <2 x double>, ptr %i.akr, align 16, !tbaa !55
  %i.avz = insertelement <2 x double> %i.avw, double %i.avx, i64 1
  %i.awa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.avz, <2 x double> %i.avy)
  store <2 x double> %i.awa, ptr %i.akr, align 16, !tbaa !55
  %i.awb = load <2 x double>, ptr %i.akt, align 16
  %i.awc = load double, ptr %i.akv, align 8, !tbaa !55
  %i.awd = load <2 x double>, ptr %i.aku, align 16, !tbaa !55
  %i.awe = insertelement <2 x double> %i.awb, double %i.awc, i64 1
  %i.awf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awe, <2 x double> %i.awd)
  store <2 x double> %i.awf, ptr %i.aku, align 16, !tbaa !55
  %i.awg = load <2 x double>, ptr %i.akw, align 16
  %i.awh = load double, ptr %i.aky, align 8, !tbaa !55
  %i.awi = load <2 x double>, ptr %i.akx, align 16, !tbaa !55
  %i.awj = insertelement <2 x double> %i.awg, double %i.awh, i64 1
  %i.awk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awj, <2 x double> %i.awi)
  store <2 x double> %i.awk, ptr %i.akx, align 16, !tbaa !55
  %i.awl = load <2 x double>, ptr %i.akz, align 16
  %i.awm = load double, ptr %i.alb, align 8, !tbaa !55
  %i.awn = load <2 x double>, ptr %i.ala, align 16, !tbaa !55
  %i.awo = insertelement <2 x double> %i.awl, double %i.awm, i64 1
  %i.awp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awo, <2 x double> %i.awn)
  store <2 x double> %i.awp, ptr %i.ala, align 16, !tbaa !55
  %i.awq = load <2 x double>, ptr %i.alc, align 16
  %i.awr = load double, ptr %i.ale, align 8, !tbaa !55
  %i.aws = load <2 x double>, ptr %i.ald, align 16, !tbaa !55
  %i.awt = insertelement <2 x double> %i.awq, double %i.awr, i64 1
  %i.awu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awt, <2 x double> %i.aws)
  store <2 x double> %i.awu, ptr %i.ald, align 16, !tbaa !55
  %i.awv = load <2 x double>, ptr %i.alf, align 16
  %i.aww = load double, ptr %i.alh, align 8, !tbaa !55
  %i.awx = load <2 x double>, ptr %i.alg, align 16, !tbaa !55
  %i.awy = insertelement <2 x double> %i.awv, double %i.aww, i64 1
  %i.awz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awy, <2 x double> %i.awx)
  store <2 x double> %i.awz, ptr %i.alg, align 16, !tbaa !55
  %i.axa = load <2 x double>, ptr %i.ali, align 16
  %i.axb = load double, ptr %i.alk, align 8, !tbaa !55
  %i.axc = load <2 x double>, ptr %i.alj, align 16, !tbaa !55
  %i.axd = insertelement <2 x double> %i.axa, double %i.axb, i64 1
  %i.axe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.axd, <2 x double> %i.axc)
  store <2 x double> %i.axe, ptr %i.alj, align 16, !tbaa !55
  br label %.split751.us

.split748:                                        ; preds = %bb.ef
  %i.axf = icmp eq i64 %.038758, 2                ; 16 uses
  %.sroa.gep.val = load double, ptr %.sroa.gep, align 16
  %.val = load double, ptr %50, align 16
  %i.axg = select i1 %i.axf, double %.sroa.gep.val, double %.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 40, i64 24
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.axh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.axi = load <2 x double>, ptr %i.j, align 16, !tbaa !55
  %i.axj = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.axk = shufflevector <2 x double> %i.axj, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.axl = insertelement <2 x double> poison, double %i.axg, i64 0
  %i.axm = insertelement <2 x double> %i.axl, double %i.axh, i64 1
  %i.axn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axm, <2 x double> %i.axi)
  store <2 x double> %i.axn, ptr %i.j, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v = select i1 %i.axf, i64 64, i64 48
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v
  %i.axo = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v = select i1 %i.axf, i64 88, i64 72
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v
  %i.axp = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel, align 8, !tbaa !55
  %i.axq = load <2 x double>, ptr %i.all, align 16, !tbaa !55
  %i.axr = insertelement <2 x double> poison, double %i.axo, i64 0
  %i.axs = insertelement <2 x double> %i.axr, double %i.axp, i64 1
  %i.axt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axs, <2 x double> %i.axq)
  store <2 x double> %i.axt, ptr %i.all, align 16, !tbaa !55
  %.sroa.gep.sroa.gep788.val = load double, ptr %.sroa.gep.sroa.gep788, align 16
  %.sroa.gep763.sroa.gep789.val = load double, ptr %.sroa.gep763.sroa.gep789, align 16
  %i.axu = select i1 %i.axf, double %.sroa.gep.sroa.gep788.val, double %.sroa.gep763.sroa.gep789.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v = select i1 %i.axf, i64 136, i64 120
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v
  %i.axv = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel, align 8, !tbaa !55
  %i.axw = load <2 x double>, ptr %i.alm, align 16, !tbaa !55
  %i.axx = insertelement <2 x double> poison, double %i.axu, i64 0
  %i.axy = insertelement <2 x double> %i.axx, double %i.axv, i64 1
  %i.axz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axy, <2 x double> %i.axw)
  store <2 x double> %i.axz, ptr %i.alm, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v = select i1 %i.axf, i64 160, i64 144
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v
  %i.aya = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 184, i64 168
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v
  %i.ayb = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayc = load <2 x double>, ptr %i.aln, align 16, !tbaa !55
  %i.ayd = insertelement <2 x double> poison, double %i.aya, i64 0
  %i.aye = insertelement <2 x double> %i.ayd, double %i.ayb, i64 1
  %i.ayf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.aye, <2 x double> %i.ayc)
  store <2 x double> %i.ayf, ptr %i.aln, align 16, !tbaa !55
  %.sroa.gep.sroa.gep779.val = load double, ptr %.sroa.gep.sroa.gep779, align 16
  %.sroa.gep763.sroa.gep780.val = load double, ptr %.sroa.gep763.sroa.gep780, align 16
  %i.ayg = select i1 %i.axf, double %.sroa.gep.sroa.gep779.val, double %.sroa.gep763.sroa.gep780.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v = select i1 %i.axf, i64 232, i64 216
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v
  %i.ayh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel, align 8, !tbaa !55
  %i.ayi = load <2 x double>, ptr %i.alo, align 16, !tbaa !55
  %i.ayj = insertelement <2 x double> poison, double %i.ayg, i64 0
  %i.ayk = insertelement <2 x double> %i.ayj, double %i.ayh, i64 1
  %i.ayl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayk, <2 x double> %i.ayi)
  store <2 x double> %i.ayl, ptr %i.alo, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v = select i1 %i.axf, i64 256, i64 240
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v
  %i.aym = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 280, i64 264
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v
  %i.ayn = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayo = load <2 x double>, ptr %i.alp, align 16, !tbaa !55
  %i.ayp = insertelement <2 x double> poison, double %i.aym, i64 0
  %i.ayq = insertelement <2 x double> %i.ayp, double %i.ayn, i64 1
  %i.ayr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayq, <2 x double> %i.ayo)
  store <2 x double> %i.ayr, ptr %i.alp, align 16, !tbaa !55
  %.sroa.gep.sroa.gep770.val = load double, ptr %.sroa.gep.sroa.gep770, align 16
  %.sroa.gep763.sroa.gep771.val = load double, ptr %.sroa.gep763.sroa.gep771, align 16
  %i.ays = select i1 %i.axf, double %.sroa.gep.sroa.gep770.val, double %.sroa.gep763.sroa.gep771.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v = select i1 %i.axf, i64 328, i64 312
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v
  %i.ayt = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel, align 8, !tbaa !55
  %i.ayu = load <2 x double>, ptr %i.alq, align 16, !tbaa !55
  %i.ayv = insertelement <2 x double> poison, double %i.ays, i64 0
  %i.ayw = insertelement <2 x double> %i.ayv, double %i.ayt, i64 1
  %i.ayx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayw, <2 x double> %i.ayu)
  store <2 x double> %i.ayx, ptr %i.alq, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v = select i1 %i.axf, i64 352, i64 336
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v
  %i.ayy = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 376, i64 360
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v
  %i.ayz = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.aza = load <2 x double>, ptr %i.alr, align 16, !tbaa !55
  %i.azb = insertelement <2 x double> poison, double %i.ayy, i64 0
  %i.azc = insertelement <2 x double> %i.azb, double %i.ayz, i64 1
  %i.azd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.azc, <2 x double> %i.aza)
  store <2 x double> %i.azd, ptr %i.alr, align 16, !tbaa !55
  br label %.split751.us

.split751.us:                                     ; preds = %.preheader.us753.preheader, %.preheader.us.preheader, %.split748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.l, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.aze = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a)
  %.not.i570 = icmp eq i32 %i.aze, 0
  br i1 %.not.i570, label %.preheader.i, label %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge

.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge: ; preds = %.split751.us
  %i.azf = load <4 x double>, ptr %i.l, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

.preheader.i:                                     ; preds = %.split751.us
  %i.azg = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.azh = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %i.l) ; 0 uses
  %i.azi = load <4 x double>, ptr %i.l, align 16, !tbaa !55 ; 5 uses
  %i.azj = extractelement <4 x double> %i.azi, i64 0 ; 2 uses
  %i.azk = extractelement <4 x double> %i.azi, i64 1 ; 2 uses
  %i.azl = load <2 x double>, ptr %i.ait, align 16, !tbaa !55 ; 3 uses
  %i.azm = call double @llvm.fmuladd.f64(double %i.azj, double %i.azj, double 0.000000e+00)
  %i.azn = call double @llvm.fmuladd.f64(double %i.azk, double %i.azk, double %i.azm)
  %57 = shufflevector <2 x double> %i.azl, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.azo = shufflevector <4 x double> %i.azi, <4 x double> %57, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.azp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.azn, i64 0
  %i.azq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azo, <2 x double> %i.azo, <2 x double> %i.azp) ; 2 uses
  %58 = extractelement <2 x double> %i.azl, i64 1 ; 2 uses
  %59 = extractelement <2 x double> %i.azq, i64 1
  %i.azr = load <2 x double>, ptr %i.aiu, align 16, !tbaa !55 ; 3 uses
  %i.azs = load <2 x double>, ptr %i.aiv, align 16, !tbaa !55 ; 3 uses
  %60 = call double @llvm.fmuladd.f64(double %58, double %58, double %59)
  %i.azt = shufflevector <2 x double> %i.azr, <2 x double> %i.azs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %61 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %60, i64 0
  %i.azu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azt, <2 x double> %i.azt, <2 x double> %61) ; 2 uses
  %62 = shufflevector <2 x double> %i.azr, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %63 = shufflevector <4 x double> %i.azi, <4 x double> %62, <2 x i32> <i32 3, i32 5> ; 2 uses
  %i.azv = shufflevector <2 x double> %i.azq, <2 x double> %i.azu, <2 x i32> <i32 0, i32 2>
  %64 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %63, <2 x double> %i.azv)
  %i.azw = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %64) ; 2 uses
  %i.azx = shufflevector <2 x double> %i.azw, <2 x double> poison, <4 x i32> zeroinitializer
  %i.azy = fdiv <4 x double> %i.azi, %i.azx       ; 3 uses
  %i.azz = shufflevector <4 x double> %i.azy, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.azz, ptr %i.l, align 16, !tbaa !55
  %i.baa = shufflevector <4 x double> %i.azy, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.baa, ptr %i.ais, align 16, !tbaa !55
  %i.bab = shufflevector <2 x double> %i.azw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bac = fdiv <2 x double> %i.azl, %i.bab
  store <2 x double> %i.bac, ptr %i.ait, align 16, !tbaa !55
  %i.bad = fdiv <2 x double> %i.azr, %i.bab
  store <2 x double> %i.bad, ptr %i.aiu, align 16, !tbaa !55
  %65 = extractelement <2 x double> %i.azs, i64 1 ; 2 uses
  %66 = extractelement <2 x double> %i.azu, i64 1
  %i.bae = load <2 x double>, ptr %i.aiw, align 16, !tbaa !55 ; 3 uses
  %i.baf = load <2 x double>, ptr %i.aix, align 16, !tbaa !55 ; 3 uses
  %67 = call double @llvm.fmuladd.f64(double %65, double %65, double %66)
  %i.bag = shufflevector <2 x double> %i.bae, <2 x double> %i.baf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %68 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %67, i64 0
  %i.bah = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bag, <2 x double> %i.bag, <2 x double> %68) ; 2 uses
  %69 = extractelement <2 x double> %i.baf, i64 1 ; 2 uses
  %70 = extractelement <2 x double> %i.bah, i64 1
  %i.bai = load <2 x double>, ptr %i.aiy, align 16, !tbaa !55 ; 3 uses
  %i.baj = extractelement <2 x double> %i.bai, i64 0 ; 2 uses
  %71 = call double @llvm.fmuladd.f64(double %69, double %69, double %70)
  %72 = call double @llvm.fmuladd.f64(double %i.baj, double %i.baj, double %71)
  %73 = shufflevector <2 x double> %i.bae, <2 x double> %i.bai, <2 x i32> <i32 1, i32 3> ; 2 uses
  %74 = insertelement <2 x double> %i.bah, double %72, i64 1
  %75 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %73, <2 x double> %74)
  %i.bak = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %75) ; 2 uses
  %i.bal = shufflevector <2 x double> %i.bak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bam = fdiv <2 x double> %i.azs, %i.bal
  store <2 x double> %i.bam, ptr %i.aiv, align 16, !tbaa !55
  %i.ban = fdiv <2 x double> %i.bae, %i.bal
  store <2 x double> %i.ban, ptr %i.aiw, align 16, !tbaa !55
  %i.bao = shufflevector <2 x double> %i.bak, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bap = fdiv <2 x double> %i.baf, %i.bao
  store <2 x double> %i.bap, ptr %i.aix, align 16, !tbaa !55
  %i.baq = fdiv <2 x double> %i.bai, %i.bao
  store <2 x double> %i.baq, ptr %i.aiy, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit:       ; preds = %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge, %.preheader.i
  %i.bar = phi <4 x double> [ %i.azf, %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge ], [ %i.azy, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  switch i32 %i.aty, label %_ZN12colvarmodule7rvectorixEi.exit [
    i32 0, label %_ZN12colvarmodule7rvectorixEi.exit.thread
    i32 1, label %_ZN12colvarmodule7rvectorixEi.exit.thread679
  ]

_ZN12colvarmodule7rvectorixEi.exit.thread:        ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bas = load <2 x double>, ptr %48, align 16
  %i.bat = shufflevector <2 x double> %i.bas, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bau = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.bav = load double, ptr %49, align 8, !tbaa !55
  %i.baw = load double, ptr %i.aje, align 8, !tbaa !55
  %i.bax = load double, ptr %i.ajf, align 8, !tbaa !55
  %i.bay = insertelement <4 x double> poison, double %i.bau, i64 0
  %i.baz = shufflevector <4 x double> %i.bay, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bba = insertelement <4 x double> %i.bat, double %i.bax, i64 1
  %i.bbb = insertelement <4 x double> %i.bba, double %i.bav, i64 2
  %i.bbc = insertelement <4 x double> %i.bbb, double %i.baw, i64 3
  %i.bbd = fmul <4 x double> %i.baz, %i.bbc
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit.thread679:     ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bbe = load <2 x double>, ptr %i.aiz, align 8
  %i.bbf = shufflevector <2 x double> %i.bbe, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bbg = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.bbh = load double, ptr %i.aja, align 8, !tbaa !55
  %i.bbi = load double, ptr %i.ajb, align 8, !tbaa !55
  %i.bbj = load double, ptr %i.ajc, align 8, !tbaa !55
  %i.bbk = insertelement <4 x double> poison, double %i.bbg, i64 0
  %i.bbl = shufflevector <4 x double> %i.bbk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bbm = insertelement <4 x double> %i.bbf, double %i.bbj, i64 1
  %i.bbn = insertelement <4 x double> %i.bbm, double %i.bbh, i64 2
  %i.bbo = insertelement <4 x double> %i.bbn, double %i.bbi, i64 3
  %i.bbp = fmul <4 x double> %i.bbl, %i.bbo
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit:               ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bbq = icmp eq i64 %.038758, 2                ; 5 uses
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bbq, i64 16, i64 0
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %48, i64 %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bbr = load double, ptr %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 16, !tbaa !55
  %i.bbs = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bbq, i64 16, i64 0
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bbt = load double, ptr %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !55
  %.sroa.gep799.val = load double, ptr %.sroa.gep799, align 8
  %.val1125 = load double, ptr %i.aje, align 8
  %i.bbu = select i1 %i.bbq, double %.sroa.gep799.val, double %.val1125
  %.sroa.gep801.val = load double, ptr %.sroa.gep801, align 8
  %.val1126 = load double, ptr %i.ajf, align 8
  %i.bbv = select i1 %i.bbq, double %.sroa.gep801.val, double %.val1126
  %i.bbw = insertelement <4 x double> poison, double %i.bbs, i64 0
  %i.bbx = shufflevector <4 x double> %i.bbw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bby = insertelement <4 x double> poison, double %i.bbr, i64 0
  %i.bbz = insertelement <4 x double> %i.bby, double %i.bbv, i64 1
  %i.bca = insertelement <4 x double> %i.bbz, double %i.bbt, i64 2
  %i.bcb = insertelement <4 x double> %i.bca, double %i.bbu, i64 3
  %i.bcc = fmul <4 x double> %i.bbx, %i.bcb
  %.idx.i577.sroa.sel.v.sroa.sel = select i1 %i.bbq, ptr %.sroa.gep803, ptr %i.ajg
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit578:            ; preds = %_ZN12colvarmodule7rvectorixEi.exit.thread, %_ZN12colvarmodule7rvectorixEi.exit.thread679, %_ZN12colvarmodule7rvectorixEi.exit
  %i.bcd = phi double [ %i.bbs, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bbg, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bau, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bce = phi ptr [ %.idx.i577.sroa.sel.v.sroa.sel, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.ajd, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.ajg, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bcf = phi <4 x double> [ %i.bcc, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bbp, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bbd, %_ZN12colvarmodule7rvectorixEi.exit.thread ] ; 3 uses
  %i.bcg = load double, ptr %i.bce, align 8, !tbaa !55
  %i.bch = fmul double %i.bcd, %i.bcg
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.bci = load double, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.bcj = extractelement <4 x double> %i.bcf, i64 0
  %i.bck = fadd double %i.bcj, %i.bci
  %i.bcl = load double, ptr %i.k, align 16, !tbaa !55
  %i.bcm = fsub double %i.bck, %i.bcl
  %i.bcn = call noundef double @llvm.fabs.f64(double %i.bcm)
  %i.bco = fdiv double %i.bcn, %i.bci
  store double %i.bco, ptr %i.m, align 8, !tbaa !55
  call void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.ay, i64 noundef %i.az)
  %i.bcp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 29)
          to label %.noexc583 unwind label %bb.ev ; 6 uses

.noexc583:                                        ; preds = %_ZN12colvarmodule7rvectorixEi.exit578
  store ptr %i.ajh, ptr %54, align 8, !tbaa !33, !alias.scope !215
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !40 ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcp, i64 16 ; 5 uses
  %i.bcs = icmp eq ptr %i.bcq, %i.bcr
  br i1 %i.bcs, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

bb.eg:                                            ; preds = %.noexc583
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !35 ; 3 uses
  %i.bcv = icmp ult i64 %i.bcu, 16
  call void @llvm.assume(i1 %i.bcv)
  %i.bcw = add nuw nsw i64 %i.bcu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajh, ptr noundef nonnull align 8 dereferenceable(1) %i.bcr, i64 %i.bcw, i1 false)
  br label %bb.eh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %.noexc583
  store ptr %i.bcq, ptr %54, align 8, !tbaa !40, !alias.scope !215
  %i.bcx = load i64, ptr %i.bcr, align 8, !tbaa !36
  store i64 %i.bcx, ptr %i.ajh, align 8, !tbaa !36, !alias.scope !215
  %.phi.trans.insert.i580 = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %.pre.i581 = load i64, ptr %.phi.trans.insert.i580, align 8, !tbaa !35
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.eg
  %i.bcy = phi i64 [ %i.bcu, %bb.eg ], [ %.pre.i581, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ]
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  store i64 %i.bcy, ptr %i.aji, align 8, !tbaa !35, !alias.scope !215
  store ptr %i.bcr, ptr %i.bcp, align 8, !tbaa !40
  store i64 0, ptr %i.bcz, align 8, !tbaa !35
  store i8 0, ptr %i.bcr, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bda = load i64, ptr %i.aji, align 8, !tbaa !35, !noalias !216
  %i.bdb = add i64 %i.bda, -4611686018427387877
  %i.bdc = icmp ult i64 %i.bdb, 27
  br i1 %i.bdc, label %bb.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc592 unwind label %.loopexit.split-lp

.noexc592:                                        ; preds = %bb.ei
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587: ; preds = %bb.eh
  %i.bdd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.22, i64 noundef 27)
          to label %.noexc593 unwind label %.loopexit ; 6 uses

.noexc593:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587
  store ptr %i.ajj, ptr %53, align 8, !tbaa !33, !alias.scope !216
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !40 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16 ; 5 uses
  %i.bdg = icmp eq ptr %i.bde, %i.bdf
  br i1 %i.bdg, label %bb.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

bb.ej:                                            ; preds = %.noexc593
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  %i.bdi = load i64, ptr %i.bdh, align 8, !tbaa !35 ; 3 uses
  %i.bdj = icmp ult i64 %i.bdi, 16
  call void @llvm.assume(i1 %i.bdj)
  %i.bdk = add nuw nsw i64 %i.bdi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajj, ptr noundef nonnull align 8 dereferenceable(1) %i.bdf, i64 %i.bdk, i1 false)
  br label %bb.ek

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %.noexc593
  store ptr %i.bde, ptr %53, align 8, !tbaa !40, !alias.scope !216
  %i.bdl = load i64, ptr %i.bdf, align 8, !tbaa !36
  store i64 %i.bdl, ptr %i.ajj, align 8, !tbaa !36, !alias.scope !216
  %.phi.trans.insert.i589 = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  %.pre.i590 = load i64, ptr %.phi.trans.insert.i589, align 8, !tbaa !35
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  %i.bdm = phi i64 [ %i.bdi, %bb.ej ], [ %.pre.i590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588 ]
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  store i64 %i.bdm, ptr %i.ajk, align 8, !tbaa !35, !alias.scope !216
  store ptr %i.bdf, ptr %i.bdd, align 8, !tbaa !40
  store i64 0, ptr %i.bdn, align 8, !tbaa !35
  store i8 0, ptr %i.bdf, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  %i.bdo = load <2 x double>, ptr %7, align 16, !tbaa !55, !noalias !217
  %i.bdp = shufflevector <4 x double> %i.bcf, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.bdq = fadd <2 x double> %i.bdp, %i.bdo       ; 2 uses
  %i.bdr = load <2 x double>, ptr %i.z, align 16, !tbaa !55, !noalias !217
  %i.bds = shufflevector <4 x double> %i.bcf, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bdt = insertelement <2 x double> %i.bds, double %i.bch, i64 1
  %i.bdu = fadd <2 x double> %i.bdt, %i.bdr       ; 2 uses
  %i.bdv = extractelement <4 x double> %i.bar, i64 0
  %i.bdw = extractelement <2 x double> %i.bdq, i64 0
  %i.bdx = fsub double %i.bdw, %i.bdv             ; 2 uses
  %i.bdy = extractelement <4 x double> %i.bar, i64 1
  %i.bdz = extractelement <2 x double> %i.bdq, i64 1
  %i.bea = fsub double %i.bdz, %i.bdy             ; 2 uses
  %i.beb = extractelement <4 x double> %i.bar, i64 2
  %i.bec = extractelement <2 x double> %i.bdu, i64 0
  %i.bed = fsub double %i.bec, %i.beb             ; 2 uses
  %i.bee = extractelement <4 x double> %i.bar, i64 3
  %i.bef = extractelement <2 x double> %i.bdu, i64 1
  %i.beg = fsub double %i.bef, %i.bee             ; 2 uses
  %i.beh = fmul double %i.bea, %i.bea
end_hunk_0
