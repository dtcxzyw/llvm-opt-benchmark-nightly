Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_rotations?download=true
inline.NumInlined: 604
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq:bb.a
  %i.aty = fmul <2 x double> %i.atv, %i.atx
  %i.atz = fdiv <2 x double> %i.aty, %i.dn        ; 2 uses
  %i.aua = extractelement <2 x double> %i.atz, i64 0
  %i.aub = fmul double %i.ats, %i.aua
  %i.auc = tail call double @llvm.fmuladd.f64(double %i.atr, double %i.ato, double %i.aub)
  %i.aud = extractelement <2 x double> %i.atz, i64 1
  %i.aue = tail call double @llvm.fmuladd.f64(double %i.aud, double %i.att, double %i.auc)
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.aue, ptr %i.auf, align 8, !tbaa !108
  %i.aug = load double, ptr %i.ez, align 8, !tbaa !108
  %i.auh = load double, ptr %i.iy, align 8, !tbaa !108 ; 3 uses
  %i.aui = load double, ptr %i.br, align 8, !tbaa !108
  %i.auj = load double, ptr %i.fc, align 8, !tbaa !108
  %i.auk = insertelement <2 x double> poison, double %i.aug, i64 0
  %i.aul = insertelement <2 x double> %i.auk, double %i.auh, i64 1
  %i.aum = insertelement <2 x double> poison, double %i.auh, i64 0
  %i.aun = insertelement <2 x double> %i.aum, double %i.auj, i64 1
  %i.auo = fmul <2 x double> %i.aul, %i.aun
  %i.aup = fdiv <2 x double> %i.auo, %i.ck        ; 2 uses
  %i.auq = load double, ptr %i.bs, align 8, !tbaa !108
  %i.aur = extractelement <2 x double> %i.aup, i64 1
  %i.aus = fmul double %i.auq, %i.aur
  %i.aut = extractelement <2 x double> %i.aup, i64 0
  %i.auu = tail call double @llvm.fmuladd.f64(double %i.aut, double %i.aui, double %i.aus)
  %i.auv = load double, ptr %i.fo, align 8, !tbaa !108
  %i.auw = fmul double %i.auh, %i.auv
  %i.aux = fdiv double %i.auw, %i.ct
  %i.auy = load double, ptr %i.bt, align 8, !tbaa !108
  %i.auz = tail call double @llvm.fmuladd.f64(double %i.aux, double %i.auy, double %i.auu)
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 312
  store double %i.auz, ptr %i.ava, align 8, !tbaa !108
  %i.avb = load double, ptr %i.ez, align 8, !tbaa !108
  %i.avc = load double, ptr %i.iy, align 8, !tbaa !108 ; 3 uses
  %i.avd = fmul double %i.avb, %i.avc
  %i.ave = fdiv double %i.avd, %i.cl
  %i.avf = load double, ptr %i.db, align 8, !tbaa !108
  %i.avg = load double, ptr %i.fc, align 8, !tbaa !108
  %i.avh = load double, ptr %i.de, align 8, !tbaa !108
  %i.avi = load double, ptr %i.fo, align 8, !tbaa !108
  %i.avj = insertelement <2 x double> poison, double %i.avg, i64 0
  %i.avk = insertelement <2 x double> %i.avj, double %i.avc, i64 1
  %i.avl = insertelement <2 x double> poison, double %i.avc, i64 0
  %i.avm = insertelement <2 x double> %i.avl, double %i.avi, i64 1
  %i.avn = fmul <2 x double> %i.avk, %i.avm
  %i.avo = fdiv <2 x double> %i.avn, %i.dn        ; 2 uses
  %i.avp = extractelement <2 x double> %i.avo, i64 0
  %i.avq = fmul double %i.avh, %i.avp
  %i.avr = tail call double @llvm.fmuladd.f64(double %i.ave, double %i.avf, double %i.avq)
  %i.avs = load double, ptr %i.ds, align 8, !tbaa !108
  %i.avt = extractelement <2 x double> %i.avo, i64 1
  %i.avu = tail call double @llvm.fmuladd.f64(double %i.avt, double %i.avs, double %i.avr)
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.avu, ptr %i.avv, align 8, !tbaa !108
  %i.avw = load double, ptr %i.ez, align 8, !tbaa !108
  %i.avx = load double, ptr %i.iy, align 8, !tbaa !108 ; 3 uses
  %i.avy = load double, ptr %i.dz, align 8, !tbaa !108
  %i.avz = load double, ptr %i.fc, align 8, !tbaa !108
  %i.awa = insertelement <2 x double> poison, double %i.avw, i64 0
  %i.awb = insertelement <2 x double> %i.awa, double %i.avx, i64 1
  %i.awc = insertelement <2 x double> poison, double %i.avx, i64 0
  %i.awd = insertelement <2 x double> %i.awc, double %i.avz, i64 1
  %i.awe = fmul <2 x double> %i.awb, %i.awd
  %i.awf = fdiv <2 x double> %i.awe, %i.ck        ; 2 uses
  %i.awg = load double, ptr %i.ei, align 8, !tbaa !108
  %i.awh = extractelement <2 x double> %i.awf, i64 1
  %i.awi = fmul double %i.awg, %i.awh
  %i.awj = extractelement <2 x double> %i.awf, i64 0
  %i.awk = tail call double @llvm.fmuladd.f64(double %i.awj, double %i.avy, double %i.awi)
  %i.awl = load double, ptr %i.fo, align 8, !tbaa !108
  %i.awm = fmul double %i.avx, %i.awl
  %i.awn = fdiv double %i.awm, %i.ct
  %i.awo = load double, ptr %i.er, align 8, !tbaa !108
  %i.awp = tail call double @llvm.fmuladd.f64(double %i.awn, double %i.awo, double %i.awk)
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 568
  store double %i.awp, ptr %i.awq, align 8, !tbaa !108
  %i.awr = load double, ptr %i.ez, align 8, !tbaa !108 ; 2 uses
  %i.aws = load double, ptr %i.iy, align 8, !tbaa !108 ; 2 uses
  %i.awt = fmul double %i.awr, %i.aws
  %i.awu = fdiv double %i.awt, %i.cl
  %i.awv = load double, ptr %i.fc, align 8, !tbaa !108 ; 2 uses
  %i.aww = load double, ptr %i.fo, align 8, !tbaa !108 ; 2 uses
  %i.awx = insertelement <2 x double> poison, double %i.aws, i64 0
  %i.awy = shufflevector <2 x double> %i.awx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awz = insertelement <2 x double> poison, double %i.awv, i64 0
  %i.axa = insertelement <2 x double> %i.awz, double %i.aww, i64 1
  %i.axb = fmul <2 x double> %i.awy, %i.axa
  %i.axc = fdiv <2 x double> %i.axb, %i.dn        ; 2 uses
  %i.axd = extractelement <2 x double> %i.axc, i64 0
  %i.axe = fmul double %i.awv, %i.axd
  %i.axf = tail call double @llvm.fmuladd.f64(double %i.awu, double %i.awr, double %i.axe)
  %i.axg = extractelement <2 x double> %i.axc, i64 1
  %i.axh = tail call double @llvm.fmuladd.f64(double %i.axg, double %i.aww, double %i.axf)
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double %i.axh, ptr %i.axi, align 8, !tbaa !108
  %i.axj = load double, ptr %i.ez, align 8, !tbaa !108
  %i.axk = load double, ptr %i.mb, align 8, !tbaa !108 ; 3 uses
  %i.axl = load double, ptr %i.br, align 8, !tbaa !108
  %i.axm = load double, ptr %i.fc, align 8, !tbaa !108
  %i.axn = insertelement <2 x double> poison, double %i.axj, i64 0
  %i.axo = insertelement <2 x double> %i.axn, double %i.axk, i64 1
  %i.axp = insertelement <2 x double> poison, double %i.axk, i64 0
  %i.axq = insertelement <2 x double> %i.axp, double %i.axm, i64 1
  %i.axr = fmul <2 x double> %i.axo, %i.axq
  %i.axs = fdiv <2 x double> %i.axr, %i.ck        ; 2 uses
  %i.axt = load double, ptr %i.bs, align 8, !tbaa !108
  %i.axu = extractelement <2 x double> %i.axs, i64 1
  %i.axv = fmul double %i.axt, %i.axu
  %i.axw = extractelement <2 x double> %i.axs, i64 0
  %i.axx = tail call double @llvm.fmuladd.f64(double %i.axw, double %i.axl, double %i.axv)
  %i.axy = load double, ptr %i.fo, align 8, !tbaa !108
  %i.axz = fmul double %i.axk, %i.axy
  %i.aya = fdiv double %i.axz, %i.ct
  %i.ayb = load double, ptr %i.bt, align 8, !tbaa !108
  %i.ayc = tail call double @llvm.fmuladd.f64(double %i.aya, double %i.ayb, double %i.axx)
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ayc, ptr %i.ayd, align 8, !tbaa !108
  %i.aye = load double, ptr %i.ez, align 8, !tbaa !108
  %i.ayf = load double, ptr %i.mb, align 8, !tbaa !108 ; 3 uses
  %i.ayg = fmul double %i.aye, %i.ayf
  %i.ayh = fdiv double %i.ayg, %i.cl
  %i.ayi = load double, ptr %i.db, align 8, !tbaa !108
  %i.ayj = load double, ptr %i.fc, align 8, !tbaa !108
  %i.ayk = load double, ptr %i.de, align 8, !tbaa !108
  %i.ayl = load double, ptr %i.fo, align 8, !tbaa !108
  %i.aym = insertelement <2 x double> poison, double %i.ayj, i64 0
  %i.ayn = insertelement <2 x double> %i.aym, double %i.ayf, i64 1
  %i.ayo = insertelement <2 x double> poison, double %i.ayf, i64 0
  %i.ayp = insertelement <2 x double> %i.ayo, double %i.ayl, i64 1
  %i.ayq = fmul <2 x double> %i.ayn, %i.ayp
  %i.ayr = fdiv <2 x double> %i.ayq, %i.dn        ; 2 uses
  %i.ays = extractelement <2 x double> %i.ayr, i64 0
  %i.ayt = fmul double %i.ayk, %i.ays
  %i.ayu = tail call double @llvm.fmuladd.f64(double %i.ayh, double %i.ayi, double %i.ayt)
  %i.ayv = load double, ptr %i.ds, align 8, !tbaa !108
  %i.ayw = extractelement <2 x double> %i.ayr, i64 1
  %i.ayx = tail call double @llvm.fmuladd.f64(double %i.ayw, double %i.ayv, double %i.ayu)
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.ayx, ptr %i.ayy, align 8, !tbaa !108
  %i.ayz = load double, ptr %i.ez, align 8, !tbaa !108
  %i.aza = load double, ptr %i.mb, align 8, !tbaa !108 ; 3 uses
  %i.azb = load double, ptr %i.dz, align 8, !tbaa !108
  %i.azc = load double, ptr %i.fc, align 8, !tbaa !108
  %i.azd = insertelement <2 x double> poison, double %i.ayz, i64 0
  %i.aze = insertelement <2 x double> %i.azd, double %i.aza, i64 1
  %i.azf = insertelement <2 x double> poison, double %i.aza, i64 0
  %i.azg = insertelement <2 x double> %i.azf, double %i.azc, i64 1
  %i.azh = fmul <2 x double> %i.aze, %i.azg
  %i.azi = fdiv <2 x double> %i.azh, %i.ck        ; 2 uses
  %i.azj = load double, ptr %i.ei, align 8, !tbaa !108
  %i.azk = extractelement <2 x double> %i.azi, i64 1
  %i.azl = fmul double %i.azj, %i.azk
  %i.azm = extractelement <2 x double> %i.azi, i64 0
  %i.azn = tail call double @llvm.fmuladd.f64(double %i.azm, double %i.azb, double %i.azl)
  %i.azo = load double, ptr %i.fo, align 8, !tbaa !108
  %i.azp = fmul double %i.aza, %i.azo
  %i.azq = fdiv double %i.azp, %i.ct
  %i.azr = load double, ptr %i.er, align 8, !tbaa !108
  %i.azs = tail call double @llvm.fmuladd.f64(double %i.azq, double %i.azr, double %i.azn)
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 576
  store double %i.azs, ptr %i.azt, align 8, !tbaa !108
  %i.azu = load double, ptr %i.ez, align 8, !tbaa !108 ; 2 uses
  %i.azv = load double, ptr %i.mb, align 8, !tbaa !108 ; 2 uses
  %i.azw = fmul double %i.azu, %i.azv
  %i.azx = fdiv double %i.azw, %i.cl
  %i.azy = load double, ptr %i.fc, align 8, !tbaa !108 ; 2 uses
  %i.azz = load double, ptr %i.fo, align 8, !tbaa !108 ; 2 uses
  %i.baa = insertelement <2 x double> poison, double %i.azv, i64 0
  %i.bab = shufflevector <2 x double> %i.baa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bac = insertelement <2 x double> poison, double %i.azy, i64 0
  %i.bad = insertelement <2 x double> %i.bac, double %i.azz, i64 1
  %i.bae = fmul <2 x double> %i.bab, %i.bad
  %i.baf = fdiv <2 x double> %i.bae, %i.dn        ; 2 uses
  %i.bag = extractelement <2 x double> %i.baf, i64 0
  %i.bah = fmul double %i.azy, %i.bag
  %i.bai = tail call double @llvm.fmuladd.f64(double %i.azx, double %i.azu, double %i.bah)
  %i.baj = extractelement <2 x double> %i.baf, i64 1
  %i.bak = tail call double @llvm.fmuladd.f64(double %i.baj, double %i.azz, double %i.bai)
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 704
  store double %i.bak, ptr %i.bal, align 8, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative28project_force_to_C_from_dxdqIN12colvarmodule10quaternionEEENS1_7rmatrixERKT_(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::rmatrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(712) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.aq = load double, ptr %i.g, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %i.ar = load double, ptr %i.f, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %3 = load <4 x double>, ptr %2, align 8, !tbaa !108 ; 8 uses
  %4 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = extractelement <4 x double> %3, i64 0
  %i.as = load double, ptr %i.s, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %i.at = load double, ptr %i.r, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %6 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %7 = extractelement <4 x double> %3, i64 1
  %i.au = load double, ptr %i.ac, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %i.av = load double, ptr %i.ab, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %8 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %9 = extractelement <4 x double> %3, i64 2
  %i.aw = load double, ptr %i.am, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %i.ax = load double, ptr %i.al, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %10 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %11 = extractelement <4 x double> %3, i64 3
  %i.ay = load double, ptr %i.a, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %i.az = load double, ptr %i.m, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %i.ba = load double, ptr %i.w, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %i.bb = load double, ptr %i.ag, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %i.bc = load double, ptr %i.c, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %i.bd = load double, ptr %i.b, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %i.be = load <2 x double>, ptr %i.e, align 8, !tbaa !108, !noalias !393 ; 2 uses
  %i.bf = fadd double %i.ay, %i.bc
  %i.bg = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = load <3 x double>, ptr %i.i, align 8, !tbaa !108, !noalias !393 ; 3 uses
  %i.bj = shufflevector <3 x double> %i.bi, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.bk = extractelement <3 x double> %i.bi, i64 2 ; 2 uses
  %i.bl = fsub double %i.bh, %i.bk
  %i.bm = insertelement <4 x double> poison, double %i.bl, i64 0
  %i.bn = load <2 x double>, ptr %i.j, align 8, !tbaa !108, !noalias !393 ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fneg double %i.bo
  %i.bq = load <2 x double>, ptr %i.h, align 8, !tbaa !108, !noalias !393 ; 3 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = fadd double %i.aq, %i.br
  %i.bt = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !393 ; 4 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = fadd double %i.bv, %i.ar
  %i.bx = insertelement <4 x double> %i.bm, double %i.bw, i64 1
  %i.by = insertelement <2 x double> %i.bn, double %i.aq, i64 0
  %i.bz = fsub <2 x double> %i.bq, %i.by
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = fsub <2 x double> %i.ca, %i.bt
  %i.cc = fadd <2 x double> %i.ca, %i.bt
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ce = shufflevector <3 x double> %i.bi, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.cf = insertelement <2 x double> %i.ce, double %i.ar, i64 1 ; 2 uses
  %i.cg = fadd <2 x double> %i.cd, %i.cf
  %i.ch = fsub <2 x double> %i.cd, %i.cf
  %i.ci = shufflevector <2 x double> %i.cg, <2 x double> %i.ch, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.bx, <4 x double> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ck = fmul <4 x double> %4, %i.cj
  %i.cl = fsub double %i.bp, %i.bd
  %i.cm = insertelement <2 x double> %i.bq, double %i.bd, i64 0
  %i.cn = fadd <2 x double> %i.bn, %i.cm
  %i.co = fsub double %i.ay, %i.bc                ; 2 uses
  %i.cp = insertelement <4 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x double> %i.cp, <4 x double> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x double> %i.cr, double %i.cl, i64 3
  %i.ct = shufflevector <2 x double> %i.be, <2 x double> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cu = fadd <4 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = fsub <4 x double> %i.cu, %i.bj
  %i.cw = fadd <4 x double> %i.cu, %i.bj
  %i.cx = shufflevector <4 x double> %i.cv, <4 x double> %i.cw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cy = fmul <4 x double> %4, %i.cx
  %i.cz = fsub double %i.co, %i.bg
  %i.da = fadd double %i.cz, %i.bk
  %i.db = fmul double %5, %i.da
  %i.dc = fadd <4 x double> %i.ck, zeroinitializer
  %i.dd = fadd <4 x double> %i.cy, zeroinitializer
  %i.de = fadd double %i.db, 0.000000e+00
  %i.df = load double, ptr %i.o, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %i.dg = load double, ptr %i.n, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %i.dh = load <2 x double>, ptr %i.q, align 8, !tbaa !108, !noalias !394 ; 2 uses
  %i.di = fadd double %i.az, %i.df
  %i.dj = extractelement <2 x double> %i.dh, i64 0 ; 2 uses
  %i.dk = fsub double %i.di, %i.dj
  %i.dl = load <3 x double>, ptr %i.u, align 8, !tbaa !108, !noalias !394 ; 3 uses
  %i.dm = shufflevector <3 x double> %i.dl, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.dn = extractelement <3 x double> %i.dl, i64 2 ; 2 uses
  %i.do = fsub double %i.dk, %i.dn
  %i.dp = insertelement <4 x double> poison, double %i.do, i64 0
  %i.dq = load <2 x double>, ptr %i.v, align 8, !tbaa !108, !noalias !394 ; 3 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fneg double %i.dr
  %i.dt = load <2 x double>, ptr %i.t, align 8, !tbaa !108, !noalias !394 ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = fadd double %i.as, %i.du
  %i.dw = load <2 x double>, ptr %i.p, align 8, !tbaa !108, !noalias !394 ; 4 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 1
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = fadd double %i.dy, %i.at
  %i.ea = insertelement <4 x double> %i.dp, double %i.dz, i64 1
  %i.eb = insertelement <2 x double> %i.dq, double %i.as, i64 0
  %i.ec = fsub <2 x double> %i.dt, %i.eb
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ee = fsub <2 x double> %i.ed, %i.dw
  %i.ef = fadd <2 x double> %i.ed, %i.dw
  %i.eg = shufflevector <2 x double> %i.ee, <2 x double> %i.ef, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eh = shufflevector <3 x double> %i.dl, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ei = insertelement <2 x double> %i.eh, double %i.at, i64 1 ; 2 uses
  %i.ej = fadd <2 x double> %i.eg, %i.ei
  %i.ek = fsub <2 x double> %i.eg, %i.ei
  %i.el = shufflevector <2 x double> %i.ej, <2 x double> %i.ek, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.em = shufflevector <4 x double> %i.ea, <4 x double> %i.el, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.en = fmul <4 x double> %6, %i.em
  %i.eo = fsub double %i.ds, %i.dg
  %i.ep = insertelement <2 x double> %i.dt, double %i.dg, i64 0
  %i.eq = fadd <2 x double> %i.dq, %i.ep
  %i.er = fsub double %i.az, %i.df                ; 2 uses
  %i.es = insertelement <4 x double> poison, double %i.er, i64 0
  %i.et = shufflevector <2 x double> %i.eq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ev = insertelement <4 x double> %i.eu, double %i.eo, i64 3
  %i.ew = shufflevector <2 x double> %i.dh, <2 x double> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ex = fadd <4 x double> %i.ev, %i.ew          ; 2 uses
  %i.ey = fsub <4 x double> %i.ex, %i.dm
  %i.ez = fadd <4 x double> %i.ex, %i.dm
  %i.fa = shufflevector <4 x double> %i.ey, <4 x double> %i.ez, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fb = fmul <4 x double> %6, %i.fa
  %i.fc = fsub double %i.er, %i.dj
  %i.fd = fadd double %i.fc, %i.dn
  %i.fe = fmul double %7, %i.fd
  %i.ff = fadd <4 x double> %i.dc, %i.en
  %i.fg = fadd <4 x double> %i.dd, %i.fb
  %i.fh = fadd double %i.de, %i.fe
  %i.fi = load double, ptr %i.y, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %i.fj = load double, ptr %i.x, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %i.fk = load <2 x double>, ptr %i.aa, align 8, !tbaa !108, !noalias !395 ; 2 uses
  %i.fl = fadd double %i.ba, %i.fi
  %i.fm = extractelement <2 x double> %i.fk, i64 0 ; 2 uses
  %i.fn = fsub double %i.fl, %i.fm
  %i.fo = load <3 x double>, ptr %i.ae, align 8, !tbaa !108, !noalias !395 ; 3 uses
  %i.fp = shufflevector <3 x double> %i.fo, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.fq = extractelement <3 x double> %i.fo, i64 2 ; 2 uses
  %i.fr = fsub double %i.fn, %i.fq
  %i.fs = insertelement <4 x double> poison, double %i.fr, i64 0
  %i.ft = load <2 x double>, ptr %i.af, align 8, !tbaa !108, !noalias !395 ; 3 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 0
  %i.fv = fneg double %i.fu
  %i.fw = load <2 x double>, ptr %i.ad, align 8, !tbaa !108, !noalias !395 ; 3 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 0
  %i.fy = fadd double %i.au, %i.fx
  %i.fz = load <2 x double>, ptr %i.z, align 8, !tbaa !108, !noalias !395 ; 4 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1
  %i.gb = fadd double %i.fy, %i.ga
  %i.gc = fadd double %i.gb, %i.av
  %i.gd = insertelement <4 x double> %i.fs, double %i.gc, i64 1
  %i.ge = insertelement <2 x double> %i.ft, double %i.au, i64 0
  %i.gf = fsub <2 x double> %i.fw, %i.ge
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gh = fsub <2 x double> %i.gg, %i.fz
  %i.gi = fadd <2 x double> %i.gg, %i.fz
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gk = shufflevector <3 x double> %i.fo, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = insertelement <2 x double> %i.gk, double %i.av, i64 1 ; 2 uses
  %i.gm = fadd <2 x double> %i.gj, %i.gl
  %i.gn = fsub <2 x double> %i.gj, %i.gl
  %i.go = shufflevector <2 x double> %i.gm, <2 x double> %i.gn, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.gp = shufflevector <4 x double> %i.gd, <4 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gq = fmul <4 x double> %8, %i.gp
  %i.gr = fsub double %i.fv, %i.fj
  %i.gs = insertelement <2 x double> %i.fw, double %i.fj, i64 0
  %i.gt = fadd <2 x double> %i.ft, %i.gs
  %i.gu = fsub double %i.ba, %i.fi                ; 2 uses
  %i.gv = insertelement <4 x double> poison, double %i.gu, i64 0
  %i.gw = shufflevector <2 x double> %i.gt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x double> %i.gv, <4 x double> %i.gw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gy = insertelement <4 x double> %i.gx, double %i.gr, i64 3
  %i.gz = shufflevector <2 x double> %i.fk, <2 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ha = fadd <4 x double> %i.gy, %i.gz          ; 2 uses
  %i.hb = fsub <4 x double> %i.ha, %i.fp
  %i.hc = fadd <4 x double> %i.ha, %i.fp
  %i.hd = shufflevector <4 x double> %i.hb, <4 x double> %i.hc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.he = fmul <4 x double> %8, %i.hd
  %i.hf = fsub double %i.gu, %i.fm
  %i.hg = fadd double %i.hf, %i.fq
  %i.hh = fmul double %9, %i.hg
  %i.hi = fadd <4 x double> %i.ff, %i.gq
  %i.hj = fadd <4 x double> %i.fg, %i.he
  %i.hk = fadd double %i.fh, %i.hh
  %i.hl = load double, ptr %i.ai, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %i.hm = load double, ptr %i.ah, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %i.hn = load <2 x double>, ptr %i.ak, align 8, !tbaa !108, !noalias !396 ; 2 uses
  %i.ho = load <3 x double>, ptr %i.ao, align 8, !tbaa !108, !noalias !396 ; 3 uses
  %i.hp = shufflevector <3 x double> %i.ho, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.hq = fadd double %i.bb, %i.hl
  %i.hr = extractelement <2 x double> %i.hn, i64 0 ; 2 uses
  %i.hs = fsub double %i.hq, %i.hr
  %i.ht = extractelement <3 x double> %i.ho, i64 2 ; 2 uses
  %i.hu = fsub double %i.hs, %i.ht
  %i.hv = insertelement <4 x double> poison, double %i.hu, i64 0
  %i.hw = load <2 x double>, ptr %i.ap, align 8, !tbaa !108, !noalias !396 ; 3 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = fneg double %i.hx
  %i.hz = load <2 x double>, ptr %i.an, align 8, !tbaa !108, !noalias !396 ; 3 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %i.ib = fadd double %i.aw, %i.ia
  %i.ic = load <2 x double>, ptr %i.aj, align 8, !tbaa !108, !noalias !396 ; 4 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  %i.ie = fadd double %i.ib, %i.id
  %i.if = fadd double %i.ie, %i.ax
  %i.ig = insertelement <4 x double> %i.hv, double %i.if, i64 1
  %i.ih = insertelement <2 x double> %i.hw, double %i.aw, i64 0
  %i.ii = fsub <2 x double> %i.hz, %i.ih
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ik = fsub <2 x double> %i.ij, %i.ic
  %i.il = fadd <2 x double> %i.ij, %i.ic
  %i.im = shufflevector <2 x double> %i.ik, <2 x double> %i.il, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.in = shufflevector <3 x double> %i.ho, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.io = insertelement <2 x double> %i.in, double %i.ax, i64 1 ; 2 uses
  %i.ip = fadd <2 x double> %i.im, %i.io
  %i.iq = fsub <2 x double> %i.im, %i.io
  %i.ir = shufflevector <2 x double> %i.ip, <2 x double> %i.iq, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.is = shufflevector <4 x double> %i.ig, <4 x double> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.it = fmul <4 x double> %10, %i.is
  %i.iu = fsub double %i.hy, %i.hm
  %i.iv = insertelement <2 x double> %i.hz, double %i.hm, i64 0
  %i.iw = fadd <2 x double> %i.hw, %i.iv
  %i.ix = fsub double %i.bb, %i.hl                ; 2 uses
  %i.iy = insertelement <4 x double> poison, double %i.ix, i64 0
  %i.iz = shufflevector <2 x double> %i.iw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x double> %i.iy, <4 x double> %i.iz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.jb = insertelement <4 x double> %i.ja, double %i.iu, i64 3
  %i.jc = shufflevector <2 x double> %i.hn, <2 x double> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jd = fadd <4 x double> %i.jb, %i.jc          ; 2 uses
  %i.je = fsub <4 x double> %i.jd, %i.hp
  %i.jf = fadd <4 x double> %i.jd, %i.hp
  %i.jg = shufflevector <4 x double> %i.je, <4 x double> %i.jf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.jh = fmul <4 x double> %10, %i.jg
  %i.ji = fsub double %i.ix, %i.hr
  %i.jj = fadd double %i.ji, %i.ht
  %i.jk = fmul double %11, %i.jj
  %i.jl = fadd <4 x double> %i.hi, %i.it
  store <4 x double> %i.jl, ptr %0, align 8, !tbaa !108
  %i.jm = fadd <4 x double> %i.hj, %i.jh
  store <4 x double> %i.jm, ptr %i.k, align 8, !tbaa !108
  %i.jn = fadd double %i.hk, %i.jk
  store double %i.jn, ptr %i.l, align 8, !tbaa !133
  ret void
}

declare void @_ZN12colvarmodule10atom_group22get_group_force_objectEv(ptr dead_on_unwind writable sret(%"class.colvarmodule::atom_group::group_force_object") align 8, ptr noundef nonnull align 8 dereferenceable(1712)) local_unnamed_addr #0

declare void @_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(17), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN12colvarmodule10atom_group18group_force_objectD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK11colvarvaluecvN12colvarmodule10quaternionEEv(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::quaternion") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !407    ; 2 uses
  %.off = add i32 %i.a, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.b = load ptr, ptr %6, align 8, !tbaa !112, !noalias !408
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !114, !noalias !408 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !110, !alias.scope !409
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !114, !alias.scope !409
  store i8 0, ptr %i.e, align 8, !tbaa !113, !alias.scope !409
  %i.g = add i64 %i.d, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !114, !alias.scope !409
  %i.i = add i64 %i.h, -4611686018427387863
  %i.j = icmp ult i64 %i.i, 41
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.21, i64 noundef 41)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !114, !alias.scope !409
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !112, !alias.scope !409 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.s = load i64, ptr %i.f, align 8, !tbaa !114, !noalias !410
  %i.t = add i64 %i.s, -4611686018427387886
  %i.u = icmp ult i64 %i.t, 18
  br i1 %i.u, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, i64 noundef 18)
          to label %.noexc14 unwind label %bb.p   ; 6 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !110, !alias.scope !410
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !114 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc14
  store ptr %i.x, ptr %4, align 8, !tbaa !112, !alias.scope !410
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !113
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !113, !alias.scope !410
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !114, !alias.scope !410
  store ptr %i.y, ptr %i.v, align 8, !tbaa !112
  store i64 0, ptr %i.ag, align 8, !tbaa !114
  store i8 0, ptr %i.y, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef 5)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !114, !noalias !411 ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !114, !noalias !411
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.an = load ptr, ptr %7, align 8, !tbaa !112, !noalias !411
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.an, i64 noundef %i.aj)
          to label %.noexc19 unwind label %bb.r   ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !110, !alias.scope !411
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.j:                                             ; preds = %.noexc19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.noexc19
  store ptr %i.aq, ptr %3, align 8, !tbaa !112, !alias.scope !411
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !113
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !113, !alias.scope !411
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i17 = load i64, ptr %.phi.trans.insert.i16, align 8, !tbaa !114
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.j
  %i.ay = phi i64 [ %i.au, %bb.j ], [ %.pre.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !114, !alias.scope !411
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !112
  store i64 0, ptr %i.az, align 8, !tbaa !114
  store i8 0, ptr %i.ar, align 8, !tbaa !113
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !114, !noalias !412
  %i.bc = add i64 %i.bb, -4611686018427387901
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZN6colvar4tiltC2Ev:._crit_edge.i.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.r = load i64, ptr %i.d, align 8, !tbaa !113
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %.pn5 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.t, %bb.g ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar11orientationD2Ev(ptr noundef nonnull align 8 dead_on_return(2312) dereferenceable(2312) %0) #18
  resume { ptr, i32 } %.pn5
}

declare noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRN12colvarmodule7rvectorERKSB_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar10spin_angleC2Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar4tiltC2Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar10spin_angleE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar10spin_angleE, i64 248), ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.30, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !113
  %i.e = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !113
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar11orientationD2Ev(ptr noundef nonnull align 8 dead_on_return(2336) dereferenceable(2336) %0) #18
  resume { ptr, i32 } %.pn5
}

declare void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar9euler_phiC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar17orientation_angleC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar9euler_phiE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar9euler_phiE, i64 248), ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !110
  store i64 7595409223818442085, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !113
  %i.e = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !113
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar11orientationD2Ev(ptr noundef nonnull align 8 dead_on_return(2312) dereferenceable(2312) %0) #18
  resume { ptr, i32 } %.pn5
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative28project_force_to_C_from_dxdqISt5arrayIdLm4EEEEN12colvarmodule7rmatrixERKT_(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::rmatrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(712) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.aq = load double, ptr %i.g, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %i.ar = load double, ptr %i.f, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %3 = load <4 x double>, ptr %2, align 8, !tbaa !108 ; 8 uses
  %4 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = extractelement <4 x double> %3, i64 0
  %i.as = load double, ptr %i.s, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %i.at = load double, ptr %i.r, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %6 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %7 = extractelement <4 x double> %3, i64 1
  %i.au = load double, ptr %i.ac, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %i.av = load double, ptr %i.ab, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %8 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %9 = extractelement <4 x double> %3, i64 2
  %i.aw = load double, ptr %i.am, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %i.ax = load double, ptr %i.al, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %10 = shufflevector <4 x double> %3, <4 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %11 = extractelement <4 x double> %3, i64 3
  %i.ay = load double, ptr %i.a, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %i.az = load double, ptr %i.m, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %i.ba = load double, ptr %i.w, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %i.bb = load double, ptr %i.ag, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %i.bc = load double, ptr %i.c, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %i.bd = load double, ptr %i.b, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %i.be = load <2 x double>, ptr %i.e, align 8, !tbaa !108, !noalias !421 ; 2 uses
  %i.bf = fadd double %i.ay, %i.bc
  %i.bg = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = load <3 x double>, ptr %i.i, align 8, !tbaa !108, !noalias !421 ; 3 uses
  %i.bj = shufflevector <3 x double> %i.bi, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.bk = extractelement <3 x double> %i.bi, i64 2 ; 2 uses
  %i.bl = fsub double %i.bh, %i.bk
  %i.bm = insertelement <4 x double> poison, double %i.bl, i64 0
  %i.bn = load <2 x double>, ptr %i.j, align 8, !tbaa !108, !noalias !421 ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fneg double %i.bo
  %i.bq = load <2 x double>, ptr %i.h, align 8, !tbaa !108, !noalias !421 ; 3 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = fadd double %i.aq, %i.br
  %i.bt = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !421 ; 4 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = fadd double %i.bv, %i.ar
  %i.bx = insertelement <4 x double> %i.bm, double %i.bw, i64 1
  %i.by = insertelement <2 x double> %i.bn, double %i.aq, i64 0
  %i.bz = fsub <2 x double> %i.bq, %i.by
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = fsub <2 x double> %i.ca, %i.bt
  %i.cc = fadd <2 x double> %i.ca, %i.bt
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ce = shufflevector <3 x double> %i.bi, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.cf = insertelement <2 x double> %i.ce, double %i.ar, i64 1 ; 2 uses
  %i.cg = fadd <2 x double> %i.cd, %i.cf
  %i.ch = fsub <2 x double> %i.cd, %i.cf
  %i.ci = shufflevector <2 x double> %i.cg, <2 x double> %i.ch, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.bx, <4 x double> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ck = fmul <4 x double> %4, %i.cj
  %i.cl = fsub double %i.bp, %i.bd
  %i.cm = insertelement <2 x double> %i.bq, double %i.bd, i64 0
  %i.cn = fadd <2 x double> %i.bn, %i.cm
  %i.co = fsub double %i.ay, %i.bc                ; 2 uses
  %i.cp = insertelement <4 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x double> %i.cp, <4 x double> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x double> %i.cr, double %i.cl, i64 3
  %i.ct = shufflevector <2 x double> %i.be, <2 x double> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cu = fadd <4 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = fsub <4 x double> %i.cu, %i.bj
  %i.cw = fadd <4 x double> %i.cu, %i.bj
  %i.cx = shufflevector <4 x double> %i.cv, <4 x double> %i.cw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cy = fmul <4 x double> %4, %i.cx
  %i.cz = fsub double %i.co, %i.bg
  %i.da = fadd double %i.cz, %i.bk
  %i.db = fmul double %5, %i.da
  %i.dc = fadd <4 x double> %i.ck, zeroinitializer
  %i.dd = fadd <4 x double> %i.cy, zeroinitializer
  %i.de = fadd double %i.db, 0.000000e+00
  %i.df = load double, ptr %i.o, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %i.dg = load double, ptr %i.n, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %i.dh = load <2 x double>, ptr %i.q, align 8, !tbaa !108, !noalias !422 ; 2 uses
  %i.di = fadd double %i.az, %i.df
  %i.dj = extractelement <2 x double> %i.dh, i64 0 ; 2 uses
  %i.dk = fsub double %i.di, %i.dj
  %i.dl = load <3 x double>, ptr %i.u, align 8, !tbaa !108, !noalias !422 ; 3 uses
  %i.dm = shufflevector <3 x double> %i.dl, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.dn = extractelement <3 x double> %i.dl, i64 2 ; 2 uses
  %i.do = fsub double %i.dk, %i.dn
  %i.dp = insertelement <4 x double> poison, double %i.do, i64 0
  %i.dq = load <2 x double>, ptr %i.v, align 8, !tbaa !108, !noalias !422 ; 3 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fneg double %i.dr
  %i.dt = load <2 x double>, ptr %i.t, align 8, !tbaa !108, !noalias !422 ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = fadd double %i.as, %i.du
  %i.dw = load <2 x double>, ptr %i.p, align 8, !tbaa !108, !noalias !422 ; 4 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 1
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = fadd double %i.dy, %i.at
  %i.ea = insertelement <4 x double> %i.dp, double %i.dz, i64 1
  %i.eb = insertelement <2 x double> %i.dq, double %i.as, i64 0
  %i.ec = fsub <2 x double> %i.dt, %i.eb
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ee = fsub <2 x double> %i.ed, %i.dw
  %i.ef = fadd <2 x double> %i.ed, %i.dw
  %i.eg = shufflevector <2 x double> %i.ee, <2 x double> %i.ef, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eh = shufflevector <3 x double> %i.dl, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ei = insertelement <2 x double> %i.eh, double %i.at, i64 1 ; 2 uses
  %i.ej = fadd <2 x double> %i.eg, %i.ei
  %i.ek = fsub <2 x double> %i.eg, %i.ei
  %i.el = shufflevector <2 x double> %i.ej, <2 x double> %i.ek, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.em = shufflevector <4 x double> %i.ea, <4 x double> %i.el, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.en = fmul <4 x double> %6, %i.em
  %i.eo = fsub double %i.ds, %i.dg
  %i.ep = insertelement <2 x double> %i.dt, double %i.dg, i64 0
  %i.eq = fadd <2 x double> %i.dq, %i.ep
  %i.er = fsub double %i.az, %i.df                ; 2 uses
  %i.es = insertelement <4 x double> poison, double %i.er, i64 0
  %i.et = shufflevector <2 x double> %i.eq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ev = insertelement <4 x double> %i.eu, double %i.eo, i64 3
  %i.ew = shufflevector <2 x double> %i.dh, <2 x double> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ex = fadd <4 x double> %i.ev, %i.ew          ; 2 uses
  %i.ey = fsub <4 x double> %i.ex, %i.dm
  %i.ez = fadd <4 x double> %i.ex, %i.dm
  %i.fa = shufflevector <4 x double> %i.ey, <4 x double> %i.ez, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fb = fmul <4 x double> %6, %i.fa
  %i.fc = fsub double %i.er, %i.dj
  %i.fd = fadd double %i.fc, %i.dn
  %i.fe = fmul double %7, %i.fd
  %i.ff = fadd <4 x double> %i.dc, %i.en
  %i.fg = fadd <4 x double> %i.dd, %i.fb
  %i.fh = fadd double %i.de, %i.fe
  %i.fi = load double, ptr %i.y, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %i.fj = load double, ptr %i.x, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %i.fk = load <2 x double>, ptr %i.aa, align 8, !tbaa !108, !noalias !423 ; 2 uses
  %i.fl = fadd double %i.ba, %i.fi
  %i.fm = extractelement <2 x double> %i.fk, i64 0 ; 2 uses
  %i.fn = fsub double %i.fl, %i.fm
  %i.fo = load <3 x double>, ptr %i.ae, align 8, !tbaa !108, !noalias !423 ; 3 uses
  %i.fp = shufflevector <3 x double> %i.fo, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.fq = extractelement <3 x double> %i.fo, i64 2 ; 2 uses
  %i.fr = fsub double %i.fn, %i.fq
  %i.fs = insertelement <4 x double> poison, double %i.fr, i64 0
  %i.ft = load <2 x double>, ptr %i.af, align 8, !tbaa !108, !noalias !423 ; 3 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 0
  %i.fv = fneg double %i.fu
  %i.fw = load <2 x double>, ptr %i.ad, align 8, !tbaa !108, !noalias !423 ; 3 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 0
  %i.fy = fadd double %i.au, %i.fx
  %i.fz = load <2 x double>, ptr %i.z, align 8, !tbaa !108, !noalias !423 ; 4 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1
  %i.gb = fadd double %i.fy, %i.ga
  %i.gc = fadd double %i.gb, %i.av
  %i.gd = insertelement <4 x double> %i.fs, double %i.gc, i64 1
  %i.ge = insertelement <2 x double> %i.ft, double %i.au, i64 0
  %i.gf = fsub <2 x double> %i.fw, %i.ge
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gh = fsub <2 x double> %i.gg, %i.fz
  %i.gi = fadd <2 x double> %i.gg, %i.fz
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gk = shufflevector <3 x double> %i.fo, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = insertelement <2 x double> %i.gk, double %i.av, i64 1 ; 2 uses
  %i.gm = fadd <2 x double> %i.gj, %i.gl
  %i.gn = fsub <2 x double> %i.gj, %i.gl
  %i.go = shufflevector <2 x double> %i.gm, <2 x double> %i.gn, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.gp = shufflevector <4 x double> %i.gd, <4 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gq = fmul <4 x double> %8, %i.gp
  %i.gr = fsub double %i.fv, %i.fj
  %i.gs = insertelement <2 x double> %i.fw, double %i.fj, i64 0
  %i.gt = fadd <2 x double> %i.ft, %i.gs
  %i.gu = fsub double %i.ba, %i.fi                ; 2 uses
  %i.gv = insertelement <4 x double> poison, double %i.gu, i64 0
  %i.gw = shufflevector <2 x double> %i.gt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x double> %i.gv, <4 x double> %i.gw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gy = insertelement <4 x double> %i.gx, double %i.gr, i64 3
  %i.gz = shufflevector <2 x double> %i.fk, <2 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ha = fadd <4 x double> %i.gy, %i.gz          ; 2 uses
  %i.hb = fsub <4 x double> %i.ha, %i.fp
  %i.hc = fadd <4 x double> %i.ha, %i.fp
  %i.hd = shufflevector <4 x double> %i.hb, <4 x double> %i.hc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.he = fmul <4 x double> %8, %i.hd
  %i.hf = fsub double %i.gu, %i.fm
  %i.hg = fadd double %i.hf, %i.fq
  %i.hh = fmul double %9, %i.hg
  %i.hi = fadd <4 x double> %i.ff, %i.gq
  %i.hj = fadd <4 x double> %i.fg, %i.he
  %i.hk = fadd double %i.fh, %i.hh
  %i.hl = load double, ptr %i.ai, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %i.hm = load double, ptr %i.ah, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %i.hn = load <2 x double>, ptr %i.ak, align 8, !tbaa !108, !noalias !424 ; 2 uses
  %i.ho = load <3 x double>, ptr %i.ao, align 8, !tbaa !108, !noalias !424 ; 3 uses
  %i.hp = shufflevector <3 x double> %i.ho, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.hq = fadd double %i.bb, %i.hl
  %i.hr = extractelement <2 x double> %i.hn, i64 0 ; 2 uses
  %i.hs = fsub double %i.hq, %i.hr
  %i.ht = extractelement <3 x double> %i.ho, i64 2 ; 2 uses
  %i.hu = fsub double %i.hs, %i.ht
  %i.hv = insertelement <4 x double> poison, double %i.hu, i64 0
  %i.hw = load <2 x double>, ptr %i.ap, align 8, !tbaa !108, !noalias !424 ; 3 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = fneg double %i.hx
  %i.hz = load <2 x double>, ptr %i.an, align 8, !tbaa !108, !noalias !424 ; 3 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %i.ib = fadd double %i.aw, %i.ia
  %i.ic = load <2 x double>, ptr %i.aj, align 8, !tbaa !108, !noalias !424 ; 4 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  %i.ie = fadd double %i.ib, %i.id
  %i.if = fadd double %i.ie, %i.ax
  %i.ig = insertelement <4 x double> %i.hv, double %i.if, i64 1
  %i.ih = insertelement <2 x double> %i.hw, double %i.aw, i64 0
  %i.ii = fsub <2 x double> %i.hz, %i.ih
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ik = fsub <2 x double> %i.ij, %i.ic
  %i.il = fadd <2 x double> %i.ij, %i.ic
  %i.im = shufflevector <2 x double> %i.ik, <2 x double> %i.il, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.in = shufflevector <3 x double> %i.ho, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.io = insertelement <2 x double> %i.in, double %i.ax, i64 1 ; 2 uses
  %i.ip = fadd <2 x double> %i.im, %i.io
  %i.iq = fsub <2 x double> %i.im, %i.io
  %i.ir = shufflevector <2 x double> %i.ip, <2 x double> %i.iq, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.is = shufflevector <4 x double> %i.ig, <4 x double> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.it = fmul <4 x double> %10, %i.is
  %i.iu = fsub double %i.hy, %i.hm
  %i.iv = insertelement <2 x double> %i.hz, double %i.hm, i64 0
  %i.iw = fadd <2 x double> %i.hw, %i.iv
  %i.ix = fsub double %i.bb, %i.hl                ; 2 uses
  %i.iy = insertelement <4 x double> poison, double %i.ix, i64 0
  %i.iz = shufflevector <2 x double> %i.iw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x double> %i.iy, <4 x double> %i.iz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.jb = insertelement <4 x double> %i.ja, double %i.iu, i64 3
  %i.jc = shufflevector <2 x double> %i.hn, <2 x double> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jd = fadd <4 x double> %i.jb, %i.jc          ; 2 uses
  %i.je = fsub <4 x double> %i.jd, %i.hp
  %i.jf = fadd <4 x double> %i.jd, %i.hp
  %i.jg = shufflevector <4 x double> %i.je, <4 x double> %i.jf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.jh = fmul <4 x double> %10, %i.jg
  %i.ji = fsub double %i.ix, %i.hr
  %i.jj = fadd double %i.ji, %i.ht
  %i.jk = fmul double %11, %i.jj
  %i.jl = fadd <4 x double> %i.hi, %i.it
  store <4 x double> %i.jl, ptr %0, align 8, !tbaa !108
  %i.jm = fadd <4 x double> %i.hj, %i.jh
  store <4 x double> %i.jm, ptr %i.k, align 8, !tbaa !108
  %i.jn = fadd double %i.hk, %i.jk
  store double %i.jn, ptr %i.l, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar9euler_psiC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar17orientation_angleC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar9euler_psiE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar9euler_psiE, i64 248), ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !110
  store i64 7598505448562259301, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !113
  %i.e = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !113
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar11orientationD2Ev(ptr noundef nonnull align 8 dead_on_return(2312) dereferenceable(2312) %0) #18
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11euler_thetaC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar17orientation_angleC2Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11euler_thetaE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11euler_thetaE, i64 248), ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.33, i64 10, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.d, align 2, !tbaa !113
  %i.e = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN6colvar3cvc13init_as_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !113
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar11orientationD2Ev(ptr noundef nonnull align 8 dead_on_return(2312) dereferenceable(2312) %0) #18
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
end_hunk_1
