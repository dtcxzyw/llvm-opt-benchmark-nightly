Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@round_corners:bb.a
  %i.axh = getelementptr inbounds nuw i8, ptr %i.avu, i64 88
  store double %i.axe, ptr %i.axh, align 8, !tbaa !17
  %i.axi = getelementptr inbounds nuw i8, ptr %i.avu, i64 96
  store double %i.avx, ptr %i.axi, align 8, !tbaa !18
  %i.axj = getelementptr inbounds nuw i8, ptr %i.avu, i64 104
  store double %i.axb, ptr %i.axj, align 8, !tbaa !17
  %i.axk = fsub double %i.avx, %i.awv             ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.avu, i64 112
  store double %i.axk, ptr %i.axl, align 8, !tbaa !18
  %i.axm = getelementptr inbounds nuw i8, ptr %i.avu, i64 120
  store double %i.axe, ptr %i.axm, align 8, !tbaa !17
  %i.axn = fsub double %i.axk, %i.awv             ; 5 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.avu, i64 128
  store double %i.axn, ptr %i.axo, align 8, !tbaa !18
  %i.axp = getelementptr inbounds nuw i8, ptr %i.avu, i64 136
  store double %i.axe, ptr %i.axp, align 8, !tbaa !17
  %i.axq = getelementptr inbounds nuw i8, ptr %i.avu, i64 144
  store double %i.axn, ptr %i.axq, align 8, !tbaa !18
  %i.axr = getelementptr inbounds nuw i8, ptr %i.avu, i64 152
  store double %i.axb, ptr %i.axr, align 8, !tbaa !17
  %i.axs = fadd double %i.axn, %i.awv             ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.avu, i64 160
  store double %i.axs, ptr %i.axt, align 8, !tbaa !18
  %i.axu = getelementptr inbounds nuw i8, ptr %i.avu, i64 168
  store double %i.awy, ptr %i.axu, align 8, !tbaa !17
  %i.axv = getelementptr inbounds nuw i8, ptr %i.avu, i64 176
  store double %i.axn, ptr %i.axv, align 8, !tbaa !18
  %i.axw = getelementptr inbounds nuw i8, ptr %i.avu, i64 184
  store double %i.awt, ptr %i.axw, align 8, !tbaa !17
  %i.axx = getelementptr inbounds nuw i8, ptr %i.avu, i64 192
  store double %i.axn, ptr %i.axx, align 8, !tbaa !18
  %i.axy = getelementptr inbounds nuw i8, ptr %i.avu, i64 200
  store double %i.awp, ptr %i.axy, align 8, !tbaa !17
  %i.axz = getelementptr inbounds nuw i8, ptr %i.avu, i64 208
  store double %i.axs, ptr %i.axz, align 8, !tbaa !18
  %i.aya = getelementptr inbounds nuw i8, ptr %i.avu, i64 216
  store double %i.awp, ptr %i.aya, align 8, !tbaa !17
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.avu, i64 224 ; 2 uses
  store double %i.avx, ptr %i.ayb, align 8, !tbaa !18
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.avu, i64 232
  store double %i.awt, ptr %i.ayc, align 8, !tbaa !17
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.avu, i64 240
  store double %i.aww, ptr %i.ayd, align 8, !tbaa !18
  %i.aye = getelementptr inbounds nuw i8, ptr %i.avu, i64 248
  store double %i.awp, ptr %i.aye, align 8, !tbaa !17
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef %i.avu, i64 noundef %i.avt, i32 noundef %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ayb, i64 16, i1 false), !tbaa.struct !11
  %i.ayf = load double, ptr %7, align 16, !tbaa !18
  %i.ayg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store double %i.ayf, ptr %i.ayg, align 16, !tbaa !18
  %.val1717 = load double, ptr %i.awf, align 8, !tbaa !17
  %.val1718 = load double, ptr %i.awg, align 8, !tbaa !17
  %i.ayh = fadd double %.val1717, %.val1718
  %i.ayi = fmul double %i.ayh, 5.000000e-01
  %i.ayj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store double %i.ayi, ptr %i.ayj, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  %i.ayk = load double, ptr %i.avv, align 8, !tbaa !18
  store double %i.ayk, ptr %7, align 16, !tbaa !18
  %.val1715 = load double, ptr %i.awf, align 8, !tbaa !17
  %.val1716 = load double, ptr %i.awg, align 8, !tbaa !17 ; 2 uses
  %i.ayl = fadd double %.val1715, %.val1716
  %i.aym = fmul double %i.ayl, 5.000000e-01
  %i.ayn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.aym, ptr %i.ayn, align 8, !tbaa !17
  %i.ayo = load double, ptr %1, align 8, !tbaa !18
  store double %i.ayo, ptr %i.ayg, align 16, !tbaa !18
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ayq = load double, ptr %i.ayp, align 8, !tbaa !17
  %i.ayr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !17
  %i.ayt = fsub double %i.ayq, %i.ays
  %i.ayu = fmul double %i.ayt, 5.000000e-01
  %i.ayv = fadd double %.val1716, %i.ayu
  store double %i.ayv, ptr %i.ayj, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  call void @free(ptr noundef %i.avu) #26
  br label %bb.am

bb.ah:                                            ; preds = %bb.m
  %i.ayw = add i64 %2, 4                          ; 2 uses
  %i.ayx = tail call fastcc ptr @gv_calloc(i64 noundef %i.ayw, i64 noundef 16) ; 18 uses
  %.val1641 = load double, ptr %1, align 8, !tbaa !18
  %i.ayy = getelementptr i8, ptr %1, i64 16       ; 3 uses
  %.val1642 = load double, ptr %i.ayy, align 8, !tbaa !18
  %i.ayz = fadd double %.val1641, %.val1642
  %i.aza = fmul double %i.ayz, 5.000000e-01
  %i.azb = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.azc = load double, ptr %i.azb, align 8, !tbaa !18
  %i.azd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.aze = load double, ptr %i.azd, align 8, !tbaa !18
  %i.azf = fsub double %i.azc, %i.aze             ; 2 uses
  %i.azg = fmul double %i.azf, 1.250000e-01       ; 3 uses
  %i.azh = fadd double %i.aza, %i.azg             ; 4 uses
  store double %i.azh, ptr %i.ayx, align 8, !tbaa !18
  %i.azi = getelementptr i8, ptr %1, i64 24       ; 2 uses
  %.val1713 = load double, ptr %i.azi, align 8, !tbaa !17
  %i.azj = getelementptr i8, ptr %1, i64 40       ; 3 uses
  %.val1714 = load double, ptr %i.azj, align 8, !tbaa !17
  %i.azk = fadd double %.val1713, %.val1714
  %i.azl = fmul double %i.azk, 5.000000e-01
  %i.azm = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !17
  %i.azo = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !17
  %i.azq = fsub double %i.azn, %i.azp             ; 3 uses
  %i.azr = fmul double %i.azq, 5.000000e-01
  %i.azs = fadd double %i.azl, %i.azr             ; 3 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8 ; 2 uses
  store double %i.azs, ptr %i.azt, align 8, !tbaa !17
  %i.azu = fadd double %i.azh, %i.azg             ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  store double %i.azu, ptr %i.azv, align 8, !tbaa !18
  %i.azw = fmul double %i.azq, 1.250000e-01       ; 2 uses
  %i.azx = fadd double %i.azs, %i.azw             ; 3 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 24
  store double %i.azx, ptr %i.azy, align 8, !tbaa !17
  %i.azz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 32
  store double %i.azu, ptr %i.azz, align 8, !tbaa !18
  %i.baa = fmul double %i.azq, 2.500000e-01
  %i.bab = fadd double %i.azx, %i.baa             ; 3 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ayx, i64 40
  store double %i.bab, ptr %i.bac, align 8, !tbaa !17
  %i.bad = getelementptr inbounds nuw i8, ptr %i.ayx, i64 48
  store double %i.azh, ptr %i.bad, align 8, !tbaa !18
  %i.bae = fadd double %i.bab, %i.azw             ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.ayx, i64 56
  store double %i.bae, ptr %i.baf, align 8, !tbaa !17
  %i.bag = fmul double %i.azf, 2.500000e-01
  %i.bah = fsub double %i.azh, %i.bag             ; 3 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.ayx, i64 64
  store double %i.bah, ptr %i.bai, align 8, !tbaa !18
  %i.baj = getelementptr inbounds nuw i8, ptr %i.ayx, i64 72
  store double %i.bae, ptr %i.baj, align 8, !tbaa !17
  %i.bak = fsub double %i.bah, %i.azg             ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.ayx, i64 80
  store double %i.bak, ptr %i.bal, align 8, !tbaa !18
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ayx, i64 88
  store double %i.bab, ptr %i.bam, align 8, !tbaa !17
  %i.ban = getelementptr inbounds nuw i8, ptr %i.ayx, i64 96
  store double %i.bak, ptr %i.ban, align 8, !tbaa !18
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ayx, i64 104
  store double %i.azx, ptr %i.bao, align 8, !tbaa !17
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ayx, i64 112
  store double %i.bah, ptr %i.bap, align 8, !tbaa !18
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ayx, i64 120
  store double %i.azs, ptr %i.baq, align 8, !tbaa !17
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.ayx, i64 noundef %i.ayw, i32 noundef %4) #26
  %.val = load double, ptr %1, align 8, !tbaa !18
  %i.bar = load double, ptr %i.azt, align 8, !tbaa !17
  %i.bas = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %i.bar, ptr %i.bas, align 8, !tbaa !17
  %i.bat = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val1712 = load double, ptr %i.azj, align 8, !tbaa !17
  %i.bau = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bav = load <2 x double>, ptr %i.ayy, align 8, !tbaa !10
  %i.baw = insertelement <2 x double> poison, double %.val, i64 0
  %i.bax = insertelement <2 x double> %i.baw, double %.val1712, i64 1
  %i.bay = fadd <2 x double> %i.bav, %i.bax
  %i.baz = fmul <2 x double> %i.bay, splat (double 5.000000e-01) ; 2 uses
  %i.bba = extractelement <2 x double> %i.baz, i64 0
  store double %i.bba, ptr %7, align 16, !tbaa !18
  store <2 x double> %i.baz, ptr %i.bat, align 16, !tbaa !10
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  %i.bbb = load double, ptr %i.ayy, align 8, !tbaa !18
  store double %i.bbb, ptr %7, align 16, !tbaa !18
  %.val1709 = load double, ptr %i.azi, align 8, !tbaa !17
  %.val1710 = load double, ptr %i.azj, align 8, !tbaa !17 ; 2 uses
  %i.bbc = fadd double %.val1709, %.val1710
  %i.bbd = fmul double %i.bbc, 5.000000e-01
  store double %i.bbd, ptr %i.bas, align 8, !tbaa !17
  %i.bbe = load double, ptr %1, align 8, !tbaa !18
  store double %i.bbe, ptr %i.bat, align 16, !tbaa !18
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bbg = load double, ptr %i.bbf, align 8, !tbaa !17
  %i.bbh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bbi = load double, ptr %i.bbh, align 8, !tbaa !17
  %i.bbj = fsub double %i.bbg, %i.bbi
  %i.bbk = fmul double %i.bbj, 5.000000e-01
  %i.bbl = fadd double %.val1710, %i.bbk
  store double %i.bbl, ptr %i.bau, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  call void @free(ptr noundef %i.ayx) #26
  br label %bb.am

bb.ai:                                            ; preds = %bb.m
  %i.bbm = add i64 %2, 5                          ; 2 uses
  %i.bbn = tail call fastcc ptr @gv_calloc(i64 noundef %i.bbm, i64 noundef 16) ; 16 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.bbq = load double, ptr %i.bbp, align 8, !tbaa !18 ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.bbt = load double, ptr %i.bbs, align 8, !tbaa !17
  %i.bbu = load <2 x double>, ptr %i.bbr, align 8, !tbaa !10 ; 3 uses
  %i.bbv = load <2 x double>, ptr %i.bbo, align 8, !tbaa !10
  %i.bbw = insertelement <2 x double> %i.bbu, double %i.bbq, i64 0
  %i.bbx = insertelement <2 x double> %i.bbu, double %i.bbt, i64 1
  %i.bby = fsub <2 x double> %i.bbw, %i.bbx
  %i.bbz = fmul <2 x double> %i.bby, splat (double 5.000000e-01) ; 3 uses
  %i.bca = shufflevector <2 x double> %i.bbv, <2 x double> %i.bbu, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %8 = shufflevector <2 x double> %i.bbz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1>
  %9 = fsub <4 x double> %i.bca, %8               ; 2 uses
  %10 = shufflevector <4 x double> %9, <4 x double> %i.bca, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x double> %10, ptr %i.bbn, align 8, !tbaa !10
  %i.bcb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbn, i64 32
  %i.bcd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bce = load double, ptr %i.bcd, align 8, !tbaa !17 ; 2 uses
  %i.bcf = load <2 x double>, ptr %i.bcb, align 8, !tbaa !10
  store <2 x double> %i.bcf, ptr %i.bcc, align 8, !tbaa !10
  %i.bcg = extractelement <2 x double> %i.bbz, i64 0
  %i.bch = fadd double %i.bbq, %i.bcg             ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbn, i64 48
  store double %i.bch, ptr %i.bci, align 8, !tbaa !18
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbn, i64 56
  store double %i.bce, ptr %i.bcj, align 8, !tbaa !17
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bbn, i64 64
  store double %i.bch, ptr %i.bck, align 8, !tbaa !18
  %i.bcl = extractelement <2 x double> %i.bbz, i64 1
  %i.bcm = fadd double %i.bce, %i.bcl             ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbn, i64 72
  store double %i.bcm, ptr %i.bcn, align 8, !tbaa !17
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbn, i64 80
  %i.bcp = extractelement <4 x double> %9, i64 0  ; 3 uses
  store double %i.bcp, ptr %i.bco, align 8, !tbaa !18
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 88
  store double %i.bcm, ptr %i.bcq, align 8, !tbaa !17
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bbn, i64 96
  store double %i.bcp, ptr %i.bcr, align 8, !tbaa !18
  %i.bcs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bct = load double, ptr %i.bcs, align 8, !tbaa !17 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bbn, i64 104
  store double %i.bct, ptr %i.bcu, align 8, !tbaa !17
  %i.bcv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bcw = load double, ptr %i.bcv, align 8, !tbaa !17 ; 3 uses
  %i.bcx = fsub double %i.bcw, %i.bct
  %i.bcy = fmul double %i.bcx, 5.000000e-01
  %i.bcz = fsub double %i.bcw, %i.bcy
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bbn, i64 112
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bbn, i64 120
  store double %i.bcz, ptr %i.bdb, align 8, !tbaa !17
  %i.bdc = load double, ptr %1, align 8, !tbaa !18
  store double %i.bdc, ptr %i.bda, align 8, !tbaa !18
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbn, i64 128
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bbn, i64 136
  store double %i.bcw, ptr %i.bde, align 8, !tbaa !17
  store double %i.bcp, ptr %i.bdd, align 8, !tbaa !18
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.bbn, i64 noundef %i.bbm, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.bbn) #26
  br label %bb.am

bb.aj:                                            ; preds = %bb.m
  %i.bdf = add i64 %2, 3                          ; 2 uses
  %i.bdg = tail call fastcc ptr @gv_calloc(i64 noundef %i.bdf, i64 noundef 16) ; 13 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.bdj = load double, ptr %i.bdi, align 8, !tbaa !18
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.bdm = load double, ptr %i.bdl, align 8, !tbaa !17
  %i.bdn = load <2 x double>, ptr %i.bdk, align 8, !tbaa !10 ; 3 uses
  %i.bdo = load <2 x double>, ptr %i.bdh, align 8, !tbaa !10
  %i.bdp = insertelement <2 x double> %i.bdn, double %i.bdj, i64 0
  %i.bdq = insertelement <2 x double> %i.bdn, double %i.bdm, i64 1
  %i.bdr = fsub <2 x double> %i.bdp, %i.bdq
  %i.bds = fmul <2 x double> %i.bdr, splat (double 5.000000e-01) ; 2 uses
  %i.bdt = shufflevector <2 x double> %i.bdo, <2 x double> %i.bdn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %11 = shufflevector <2 x double> %i.bds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1>
  %12 = fsub <4 x double> %i.bdt, %11             ; 2 uses
  %13 = shufflevector <4 x double> %12, <4 x double> %i.bdt, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x double> %13, ptr %i.bdg, align 8, !tbaa !10
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bdv = load double, ptr %i.bdu, align 8, !tbaa !18
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32
  store double %i.bdv, ptr %i.bdw, align 8, !tbaa !18
  %i.bdx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bdy = load double, ptr %i.bdx, align 8, !tbaa !17
  %i.bdz = extractelement <2 x double> %i.bds, i64 1
  %i.bea = fadd double %i.bdy, %i.bdz             ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdg, i64 40
  store double %i.bea, ptr %i.beb, align 8, !tbaa !17
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdg, i64 48
  %i.bed = extractelement <4 x double> %12, i64 0 ; 3 uses
  store double %i.bed, ptr %i.bec, align 8, !tbaa !18
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdg, i64 56
  store double %i.bea, ptr %i.bee, align 8, !tbaa !17
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bdg, i64 64
  store double %i.bed, ptr %i.bef, align 8, !tbaa !18
  %i.beg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.beh = load double, ptr %i.beg, align 8, !tbaa !17 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdg, i64 72
  store double %i.beh, ptr %i.bei, align 8, !tbaa !17
  %i.bej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bek = load double, ptr %i.bej, align 8, !tbaa !17 ; 3 uses
  %i.bel = fsub double %i.bek, %i.beh
  %i.bem = fmul double %i.bel, 5.000000e-01
  %i.ben = fsub double %i.bek, %i.bem
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdg, i64 80
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bdg, i64 88
  store double %i.ben, ptr %i.bep, align 8, !tbaa !17
  %i.beq = load double, ptr %1, align 8, !tbaa !18
  store double %i.beq, ptr %i.beo, align 8, !tbaa !18
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdg, i64 96
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bdg, i64 104
  store double %i.bek, ptr %i.bes, align 8, !tbaa !17
  store double %i.bed, ptr %i.ber, align 8, !tbaa !18
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.bdg, i64 noundef %i.bdf, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.bdg) #26
  br label %bb.am

bb.ak:                                            ; preds = %bb.m
  %i.bet = add i64 %2, 3                          ; 2 uses
  %i.beu = tail call fastcc ptr @gv_calloc(i64 noundef %i.bet, i64 noundef 16) ; 16 uses
  %i.bev = load double, ptr %1, align 8, !tbaa !18 ; 2 uses
  store double %i.bev, ptr %i.beu, align 8, !tbaa !18
  %i.bew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bex = load double, ptr %i.bew, align 8, !tbaa !17
  %i.bey = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.bez = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.bfa = load double, ptr %i.bez, align 8, !tbaa !17
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.bfc = load double, ptr %i.bfb, align 8, !tbaa !17
  %i.bfd = fsub double %i.bfa, %i.bfc
  %i.bfe = fmul double %i.bfd, 5.000000e-01       ; 3 uses
  %i.bff = fsub double %i.bex, %i.bfe             ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.beu, i64 8
  store double %i.bff, ptr %i.bfg, align 8, !tbaa !17
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.bfi = load double, ptr %i.bfh, align 8, !tbaa !18 ; 2 uses
  %i.bfj = load double, ptr %i.bey, align 8, !tbaa !18
  %i.bfk = fsub double %i.bfi, %i.bfj
  %i.bfl = fmul double %i.bfk, 5.000000e-01
  %i.bfm = fadd double %i.bfi, %i.bfl             ; 4 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  store double %i.bfm, ptr %i.bfn, align 8, !tbaa !18
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.beu, i64 24
  store double %i.bff, ptr %i.bfo, align 8, !tbaa !17
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.beu, i64 32
  store double %i.bfm, ptr %i.bfp, align 8, !tbaa !18
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.bfr = load double, ptr %i.bfq, align 8, !tbaa !17
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.beu, i64 40
  store double %i.bfr, ptr %i.bfs, align 8, !tbaa !17
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bfu = load double, ptr %i.bft, align 8, !tbaa !18
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.beu, i64 48
  store double %i.bfu, ptr %i.bfv, align 8, !tbaa !18
  %i.bfw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bfx = load double, ptr %i.bfw, align 8, !tbaa !17 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bfz = load double, ptr %i.bfy, align 8, !tbaa !17 ; 3 uses
  %i.bga = fsub double %i.bfx, %i.bfz
  %i.bgb = fmul double %i.bga, 5.000000e-01
  %i.bgc = fsub double %i.bfx, %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.beu, i64 56
  store double %i.bgc, ptr %i.bgd, align 8, !tbaa !17
  %i.bge = getelementptr inbounds nuw i8, ptr %i.beu, i64 64
  store double %i.bfm, ptr %i.bge, align 8, !tbaa !18
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.beu, i64 72
  store double %i.bfz, ptr %i.bgf, align 8, !tbaa !17
  %i.bgg = fadd double %i.bfz, %i.bfe
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.beu, i64 80
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.beu, i64 88
  store double %i.bgg, ptr %i.bgi, align 8, !tbaa !17
  store double %i.bfm, ptr %i.bgh, align 8, !tbaa !18
  %i.bgj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bgk = load double, ptr %i.bgj, align 8, !tbaa !17
  %i.bgl = fadd double %i.bgk, %i.bfe
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.beu, i64 96
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.beu, i64 104
  store double %i.bgl, ptr %i.bgn, align 8, !tbaa !17
  store double %i.bev, ptr %i.bgm, align 8, !tbaa !18
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.beu, i64 noundef %i.bet, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.beu) #26
  br label %bb.am

bb.al:                                            ; preds = %bb.m
  %i.bgo = add i64 %2, 5                          ; 2 uses
  %i.bgp = tail call fastcc ptr @gv_calloc(i64 noundef %i.bgo, i64 noundef 16) ; 16 uses
  %i.bgq = load double, ptr %1, align 8, !tbaa !18
  store double %i.bgq, ptr %i.bgp, align 8, !tbaa !18
  %i.bgr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgs = load double, ptr %i.bgr, align 8, !tbaa !17
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.bgv = load double, ptr %i.bgu, align 8, !tbaa !17
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.bgy = load double, ptr %i.bgx, align 8, !tbaa !18 ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgp, i64 24
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgp, i64 32
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.bhd = load double, ptr %i.bhc, align 8, !tbaa !17
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgp, i64 40
  store double %i.bhd, ptr %i.bhe, align 8, !tbaa !17
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bhg = load double, ptr %i.bhf, align 8, !tbaa !18
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgp, i64 48
  store double %i.bhg, ptr %i.bhh, align 8, !tbaa !18
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bhj = load double, ptr %i.bhi, align 8, !tbaa !17 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bhl = load double, ptr %i.bhk, align 8, !tbaa !17 ; 3 uses
  %i.bhm = fsub double %i.bhj, %i.bhl
  %i.bhn = fmul double %i.bhm, 5.000000e-01
  %i.bho = fsub double %i.bhj, %i.bhn
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgp, i64 56
  store double %i.bho, ptr %i.bhp, align 8, !tbaa !17
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 64
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgp, i64 72
  store double %i.bhl, ptr %i.bhr, align 8, !tbaa !17
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bgp, i64 80
  %i.bht = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bhu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.bhw = load double, ptr %i.bhv, align 8, !tbaa !18
  %i.bhx = load <2 x double>, ptr %i.bgt, align 8, !tbaa !10 ; 2 uses
  %i.bhy = insertelement <2 x double> %i.bhx, double %i.bgy, i64 0
  %i.bhz = insertelement <2 x double> %i.bhx, double %i.bgv, i64 1
  %i.bia = shufflevector <2 x double> %i.bhy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bib = shufflevector <2 x double> %i.bhz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bic = fsub <4 x double> %i.bia, %i.bib
  %i.bid = fmul <4 x double> %i.bic, splat (double 5.000000e-01) ; 3 uses
  %i.bie = extractelement <4 x double> %i.bid, i64 1
  %i.bif = fsub double %i.bgs, %i.bie             ; 2 uses
  store double %i.bif, ptr %i.bgw, align 8, !tbaa !17
  %i.big = insertelement <4 x double> poison, double %i.bgy, i64 0
  %i.bih = insertelement <4 x double> %i.big, double %i.bhl, i64 1
  %i.bii = insertelement <4 x double> %i.bih, double %i.bhw, i64 2
  store double %i.bif, ptr %i.bha, align 8, !tbaa !17
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bgp, i64 112
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bgp, i64 120
  %i.bil = load <2 x double>, ptr %i.bht, align 8, !tbaa !10 ; 2 uses
  %i.bim = load double, ptr %i.bhu, align 8, !tbaa !17
  %i.bin = shufflevector <2 x double> %i.bil, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bio = shufflevector <4 x double> %i.bii, <4 x double> %i.bin, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.bip = fadd <4 x double> %i.bio, %i.bid       ; 2 uses
  %i.biq = fsub <4 x double> %i.bio, %i.bid       ; 2 uses
  %i.bir = shufflevector <4 x double> %i.bip, <4 x double> %i.biq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bis = extractelement <4 x double> %i.bip, i64 0 ; 3 uses
  store double %i.bis, ptr %i.bgz, align 8, !tbaa !18
  store double %i.bis, ptr %i.bhb, align 8, !tbaa !18
  store double %i.bis, ptr %i.bhq, align 8, !tbaa !18
  store <4 x double> %i.bir, ptr %i.bhs, align 8, !tbaa !10
  %i.bit = extractelement <4 x double> %i.biq, i64 2
  store double %i.bit, ptr %i.bij, align 8, !tbaa !18
  %i.biu = shufflevector <2 x double> %i.bil, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.biu, ptr %i.bik, align 8, !tbaa !10
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bgp, i64 136
  store double %i.bim, ptr %i.biv, align 8, !tbaa !17
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.bgp, i64 noundef %i.bgo, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.bgp) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %._crit_edge, %._crit_edge1823, %._crit_edge1827, %bb.m
  call void @free(ptr noundef %i.cc) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.l, %rounded_draw.exit, %diagonals_draw.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc noalias noundef ptr @alloc_interpolation_points(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = shl i64 %1, 2
  %i.b = add i64 %i.a, 4                          ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.thread.i, label %bb.b
end_hunk_0
