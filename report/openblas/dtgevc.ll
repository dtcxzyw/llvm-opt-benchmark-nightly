Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgevc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dtgevc_:bb.a
  %i.aqy = mul nsw i64 %i.aqh, %i.aqg
  %i.aqz = add i64 %i.aqy, %i.ac
  %i.ara = shl i64 %i.aqz, 3
  %i.arb = add i64 %i.ara, %i.b
  %i.arc = sub i64 %i.aqx, %i.arb
  %i.ard = shl nsw i64 %i.aqh, 3
  %i.are = add i64 %i.c, -8
  %i.arf = mul nsw i64 %i.aqi, %i.aqg
  %i.arg = add i64 %i.arf, %i.z
  %i.arh = shl i64 %i.arg, 3
  %i.ari = add i64 %i.arh, %i.a
  %i.arj = sub i64 %i.are, %i.ari
  %i.ark = shl nsw i64 %i.aqi, 3
  %i.arl = shl nuw nsw i64 %i.aqf, 3              ; 5 uses
  %i.arm = add nsw i64 %i.arl, -8
  %i.arn = mul nsw i64 %i.aqi, %i.aqg
  %i.aro = add i64 %i.arn, %i.z
  %i.arp = shl i64 %i.aro, 3                      ; 2 uses
  %i.arq = mul nsw i64 %i.aqi, -8
  %i.arr = shl nsw i64 %i.aqi, 3
  %i.ars = sub nuw nsw i64 -8, %i.arr
  %i.art = add nsw i64 %i.aqg, -1                 ; 2 uses
  %i.aru = mul nsw i64 %i.art, %i.aqi
  %i.arv = add i64 %i.aru, %i.z
  %i.arw = shl i64 %i.arv, 3                      ; 2 uses
  %i.arx = mul nsw i64 %i.aqh, %i.aqg
  %i.ary = add i64 %i.arx, %i.ac
  %i.arz = shl i64 %i.ary, 3                      ; 2 uses
  %i.asa = mul nsw i64 %i.aqh, -8
  %i.asb = shl nsw i64 %i.aqh, 3
  %i.asc = sub nuw nsw i64 -8, %i.asb
  %i.asd = mul nsw i64 %i.art, %i.aqh
  %i.ase = add i64 %i.asd, %i.ac
  %i.asf = shl i64 %i.ase, 3                      ; 2 uses
  %i.asg = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ash = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asi = extractelement <2 x double> %i.lm, i64 0 ; 3 uses
  %i.asj = extractelement <2 x double> %i.lm, i64 1 ; 3 uses
  %i.ask = insertelement <2 x double> poison, double %.11415.lcssa, i64 0
  %i.asl = insertelement <2 x double> %i.ask, double %.01413.lcssa, i64 1
  %i.asm = insertelement <2 x double> poison, double %i.et, i64 0
  %i.asn = shufflevector <2 x double> %i.asm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aso = getelementptr i8, ptr %4, i64 %i.arp
  %i.asp = getelementptr i8, ptr %i.aso, i64 8
  %i.asq = getelementptr i8, ptr %4, i64 %i.arp
  %i.asr = getelementptr i8, ptr %i.asq, i64 %i.arl
  %i.ass = getelementptr i8, ptr %4, i64 %i.arw
  %i.ast = getelementptr i8, ptr %i.ass, i64 8
  %i.asu = getelementptr i8, ptr %4, i64 %i.arw
  %i.asv = getelementptr i8, ptr %i.asu, i64 %i.arl
  %i.asw = getelementptr i8, ptr %6, i64 %i.arz
  %i.asx = getelementptr i8, ptr %i.asw, i64 8
  %i.asy = getelementptr i8, ptr %6, i64 %i.arz
  %i.asz = getelementptr i8, ptr %i.asy, i64 %i.arl
  %i.ata = getelementptr i8, ptr %6, i64 %i.asf
  %i.atb = getelementptr i8, ptr %i.ata, i64 8
  %i.atc = getelementptr i8, ptr %6, i64 %i.asf
  %i.atd = getelementptr i8, ptr %i.atc, i64 %i.arl
  %i.ate = extractelement <2 x double> %i.fb, i64 1
  %i.atf = getelementptr i8, ptr %4, i64 %i.aqs
  %i.atg = getelementptr i8, ptr %6, i64 %i.aqu
  %i.ath = getelementptr i8, ptr %4, i64 %i.aqo
  %i.ati = getelementptr i8, ptr %6, i64 %i.aqq
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1963, %.loopexit1676
  %indvar2890 = phi i64 [ 0, %.lr.ph1963 ], [ %indvar.next2891, %.loopexit1676 ] ; 11 uses
  %i.atj = phi double [ %i.aps, %.lr.ph1963 ], [ %i.cll, %.loopexit1676 ] ; 16 uses
  %indvars.iv2292 = phi i64 [ %i.aqg, %.lr.ph1963 ], [ %indvars.iv.next2293, %.loopexit1676 ] ; 28 uses
  %indvars.iv2290 = phi i64 [ %i.aqf, %.lr.ph1963 ], [ %indvars.iv.next2291, %.loopexit1676 ] ; 3 uses
  %indvars.iv2288 = phi i64 [ %i.aqe, %.lr.ph1963 ], [ %indvars.iv.next2289, %.loopexit1676 ] ; 5 uses
  %.61961 = phi i32 [ 0, %.lr.ph1963 ], [ %.8, %.loopexit1676 ]
  %.214551957 = phi i32 [ %i.apv, %.lr.ph1963 ], [ %.31456, %.loopexit1676 ] ; 5 uses
  %i.atk = xor i64 %indvar2890, -1
  %i.atl = add i64 %i.atk, %i.aqf                 ; 4 uses
  %i.atm = shl i64 %indvar2890, 3
  %i.atn = sub i64 %i.arm, %i.atm
  %scevgep3041 = getelementptr i8, ptr %14, i64 %i.atn ; 2 uses
  %i.ato = mul i64 %i.arq, %indvar2890            ; 2 uses
  %scevgep3045 = getelementptr i8, ptr %i.asp, i64 %i.ato ; 2 uses
  %i.atp = mul i64 %i.ars, %indvar2890            ; 2 uses
  %scevgep3046 = getelementptr i8, ptr %i.asr, i64 %i.atp ; 2 uses
  %scevgep3047 = getelementptr i8, ptr %i.ast, i64 %i.ato ; 2 uses
  %scevgep3048 = getelementptr i8, ptr %i.asv, i64 %i.atp ; 2 uses
  %i.atq = mul i64 %i.asa, %indvar2890            ; 2 uses
  %scevgep3049 = getelementptr i8, ptr %i.asx, i64 %i.atq ; 2 uses
  %i.atr = mul i64 %i.asc, %indvar2890            ; 2 uses
  %scevgep3050 = getelementptr i8, ptr %i.asz, i64 %i.atr ; 2 uses
  %scevgep3051 = getelementptr i8, ptr %i.atb, i64 %i.atq ; 2 uses
  %scevgep3052 = getelementptr i8, ptr %i.atd, i64 %i.atr ; 2 uses
  %i.ats = xor i64 %indvar2890, -1
  %i.att = add i64 %i.ats, %i.aqg                 ; 8 uses
  %i.atu = mul i64 %i.ard, %indvar2890
  %i.atv = add i64 %i.arc, %i.atu
  %i.atw = mul i64 %i.ark, %indvar2890
  %i.atx = add i64 %i.arj, %i.atw
  %i.aty = trunc i64 %indvars.iv2288 to i32
  %i.atz = sub i64 %i.aqw, %indvar2890            ; 14 uses
  %indvars2299 = trunc i64 %indvars.iv2292 to i32 ; 12 uses
  %.not1510 = icmp eq i32 %.61961, 0
  br i1 %.not1510, label %bb.co, label %.loopexit1676

bb.co:                                            ; preds = %bb.cn
  store i32 1, ptr %i.t, align 4, !tbaa !104
  %.not1511 = icmp eq i64 %indvars.iv2292, 1
  br i1 %.not1511, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aua = add nsw i32 %indvars2299, -1
  %i.aub = mul nsw i32 %i.aua, %i.y
  %i.auc = sext i32 %i.aub to i64
  %i.aud = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2292
  %i.aue = getelementptr [8 x i8], ptr %i.aud, i64 %i.auc
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !106
  %i.aug = fcmp une double %i.auf, 0.000000e+00
  br i1 %i.aug, label %.thread1635, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not1491, label %bb.cs, label %.thread1648

.thread1635:                                      ; preds = %bb.cp
  store i32 2, ptr %i.t, align 4, !tbaa !104
  br i1 %.not1491, label %bb.cr, label %.lr.ph1844

bb.cr:                                            ; preds = %.thread1635
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292 ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !104
  %.not1513 = icmp eq i32 %i.aui, 0
  br i1 %.not1513, label %.thread2416, label %.lr.ph1844

bb.cs:                                            ; preds = %bb.cq
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292
  %.11365.in = load i32, ptr %i.auj, align 4, !tbaa !104
  %.11365 = icmp eq i32 %.11365.in, 0
  br i1 %.11365, label %.loopexit1676, label %.thread1648

.thread2416:                                      ; preds = %bb.cr
  %i.auk = getelementptr i8, ptr %i.auh, i64 -4
  %.11365.in2420 = load i32, ptr %i.auk, align 4, !tbaa !104
  %.113652421 = icmp eq i32 %.11365.in2420, 0
  br i1 %.113652421, label %.loopexit1676, label %.lr.ph1844

.thread1648:                                      ; preds = %bb.cs, %bb.cq
  %i.aul = mul i32 %i.apw, %indvars2299
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aum
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !106
  %i.aup = call double @llvm.fabs.f64(double %i.auo)
  %i.auq = fcmp ugt double %i.aup, %i.atj
  br i1 %i.auq, label %.lr.ph1844, label %bb.ct

bb.ct:                                            ; preds = %.thread1648
  %i.aur = mul i32 %i.apx, %indvars2299
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aus
  %i.auu = load double, ptr %i.aut, align 8, !tbaa !106
  %i.auv = call double @llvm.fabs.f64(double %i.auu)
  %i.auw = fcmp ugt double %i.auv, %i.atj
  br i1 %i.auw, label %.lr.ph1844, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aux = add nsw i32 %.214551957, -1            ; 3 uses
  %i.auy = load i32, ptr %3, align 4, !tbaa !104  ; 3 uses
  store i32 %i.auy, ptr %i.e, align 4, !tbaa !104
  %.not15161832 = icmp slt i32 %i.auy, 1
  br i1 %.not15161832, label %._crit_edge1836, label %.lr.ph1835

.lr.ph1835:                                       ; preds = %bb.cu
  %i.auz = mul nsw i32 %i.aux, %i.ah
  %i.ava = add i32 %i.auz, 1
  %i.avb = sext i32 %i.ava to i64
  %i.avc = shl nsw i64 %i.avb, 3
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.avc
  %i.avd = zext nneg i32 %i.auy to i64
  %i.ave = shl nuw nsw i64 %i.avd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2121, i8 0, i64 %i.ave, i1 false), !tbaa !106
  br label %._crit_edge1836

._crit_edge1836:                                  ; preds = %.lr.ph1835, %bb.cu
  %i.avf = mul i32 %i.aux, %i.apy
  %i.avg = sext i32 %i.avf to i64
  %i.avh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.avg
  store double 1.000000e+00, ptr %i.avh, align 8, !tbaa !106
  br label %.loopexit1676

.lr.ph1844:                                       ; preds = %.thread2416, %bb.ct, %.thread1648, %.thread1635, %bb.cr
  %i.avi = phi i32 [ 2, %bb.cr ], [ 1, %.thread1648 ], [ 1, %bb.ct ], [ 2, %.thread1635 ], [ 2, %.thread2416 ] ; 2 uses
  %.7164016531657 = phi i32 [ 1, %bb.cr ], [ 0, %.thread1648 ], [ 0, %bb.ct ], [ 1, %.thread1635 ], [ 1, %.thread2416 ] ; 3 uses
  %.not1512163916541655 = phi i1 [ false, %bb.cr ], [ true, %.thread1648 ], [ true, %bb.ct ], [ false, %.thread1635 ], [ false, %.thread2416 ] ; 3 uses
  %i.avj = add nsw i32 %i.avi, -1
  store i32 %i.avj, ptr %i.e, align 4, !tbaa !104
  %i.avk = load i32, ptr %3, align 4, !tbaa !104  ; 3 uses
  %.not15431837 = icmp slt i32 %i.avk, 1
  br i1 %.not15431837, label %._crit_edge1845.split, label %.lr.ph1840.preheader

.lr.ph1840.preheader:                             ; preds = %.lr.ph1844
  %i.avl = shl nuw i32 %i.avk, 1
  %i.avm = zext i32 %i.avl to i64
  %i.avn = shl nuw nsw i64 %i.avm, 3
  %i.avo = zext nneg i32 %i.avk to i64
  %16 = shl nuw nsw i64 %i.avo, 3
  %scevgep2131 = getelementptr i8, ptr %14, i64 %i.avn
  %i.avp = zext nneg i32 %i.avi to i64
  %i.avq = mul nuw nsw i64 %16, %i.avp
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2131, i8 0, i64 %i.avq, i1 false), !tbaa !106
  br label %._crit_edge1845.split

._crit_edge1845.split:                            ; preds = %.lr.ph1840.preheader, %.lr.ph1844
  br i1 %.not1512163916541655, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %._crit_edge1845.split
  %i.avr = mul nsw i64 %indvars.iv2292, %i.aqi
  %i.avs = mul nsw i32 %i.y, %indvars2299
  %i.avt = sext i32 %i.avs to i64
  %i.avu = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2292
  %i.avv = getelementptr [8 x i8], ptr %i.avu, i64 %i.avt
  %i.avw = load double, ptr %i.avv, align 8, !tbaa !106 ; 4 uses
  %i.avx = fcmp oge double %i.avw, 0.000000e+00
  %i.avy = fneg double %i.avw
  %i.avz = select i1 %i.avx, double %i.avw, double %i.avy
  %i.awa = fmul double %i.asi, %i.avz             ; 2 uses
  %i.awb = mul nsw i64 %indvars.iv2292, %i.aqh
  %i.awc = mul nsw i32 %i.ab, %indvars2299
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv2292
  %i.awf = getelementptr [8 x i8], ptr %i.awe, i64 %i.awd
  %i.awg = load double, ptr %i.awf, align 8, !tbaa !106 ; 4 uses
  %i.awh = fcmp oge double %i.awg, 0.000000e+00
  %i.awi = fneg double %i.awg
  %i.awj = select i1 %i.awh, double %i.awg, double %i.awi
  %i.awk = fmul double %i.asj, %i.awj             ; 2 uses
  %i.awl = fcmp oge double %i.awa, %i.awk
  %i.awm = select i1 %i.awl, double %i.awa, double %i.awk ; 2 uses
  %i.awn = fcmp oge double %i.awm, %i.atj
  %i.awo = select i1 %i.awn, double %i.awm, double %i.atj
  %i.awp = fdiv double 1.000000e+00, %i.awo       ; 2 uses
  store double %i.awp, ptr %i.i, align 8, !tbaa !106
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !106
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !106
  %i.awq = insertelement <2 x double> poison, double %i.awg, i64 0
  %i.awr = insertelement <2 x double> %i.awq, double %i.avw, i64 1
  %i.aws = insertelement <2 x double> poison, double %i.awp, i64 0
  %i.awt = shufflevector <2 x double> %i.aws, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awu = fmul <2 x double> %i.awr, %i.awt
  %i.awv = fmul <2 x double> %i.asg, %i.awu       ; 5 uses
  %i.aww = fmul <2 x double> %i.lm, %i.awv        ; 5 uses
  %i.awx = extractelement <2 x double> %i.aww, i64 1 ; 5 uses
  %i.awy = extractelement <2 x double> %i.aww, i64 0 ; 5 uses
  store double %i.awy, ptr %i.n, align 8, !tbaa !106
  store double %i.awx, ptr %i.s, align 8, !tbaa !106
  %i.awz = fcmp oge <2 x double> %i.awv, zeroinitializer
  %i.axa = fneg <2 x double> %i.awv
  %i.axb = select <2 x i1> %i.awz, <2 x double> %i.awv, <2 x double> %i.axa ; 3 uses
  %i.axc = insertelement <2 x double> poison, double %i.atj, i64 0
  %i.axd = shufflevector <2 x double> %i.axc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axe = fcmp oge <2 x double> %i.axb, %i.axd
  %i.axf = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aww)
  %i.axg = fcmp olt <2 x double> %i.axf, %i.ash
  %i.axh = select <2 x i1> %i.axe, <2 x i1> %i.axg, <2 x i1> zeroinitializer ; 5 uses
  %i.axi = extractelement <2 x i1> %i.axh, i64 0
  br i1 %i.axi, label %bb.cw, label %.thread2427

bb.cw:                                            ; preds = %bb.cv
  %i.axj = extractelement <2 x double> %i.axb, i64 0
  %i.axk = fdiv double %i.ey, %i.axj
  %i.axl = load double, ptr %i.v, align 8, !tbaa !106 ; 2 uses
  %i.axm = fcmp ole double %.11415.lcssa, %i.axl
  %i.axn = select i1 %i.axm, double %.11415.lcssa, double %i.axl
  %i.axo = fmul double %i.axk, %i.axn             ; 2 uses
  %i.axp = extractelement <2 x i1> %i.axh, i64 1
  br i1 %i.axp, label %.thread1659, label %.thread2428.sink.split

.thread2427:                                      ; preds = %bb.cv
  %i.axq = extractelement <2 x i1> %i.axh, i64 1
  br i1 %i.axq, label %.thread1659, label %.thread2428

.thread1659:                                      ; preds = %.thread2427, %bb.cw
  %i.axr = phi double [ 1.000000e+00, %.thread2427 ], [ %i.axo, %bb.cw ] ; 3 uses
  store double %i.axr, ptr %i.g, align 8, !tbaa !106
  %i.axs = extractelement <2 x double> %i.axb, i64 1
  %i.axt = fdiv double %i.ey, %i.axs
  %i.axu = load double, ptr %i.v, align 8, !tbaa !106 ; 2 uses
  %i.axv = fcmp ole double %.01413.lcssa, %i.axu
  %i.axw = select i1 %i.axv, double %.01413.lcssa, double %i.axu
  %i.axx = fmul double %i.axt, %i.axw             ; 2 uses
  %i.axy = fcmp oge double %i.axr, %i.axx
  %i.axz = select i1 %i.axy, double %i.axr, double %i.axx
  br label %.thread2428.sink.split

.thread2428.sink.split:                           ; preds = %bb.cw, %.thread1659
  %i.aya = phi double [ %i.axz, %.thread1659 ], [ %i.axo, %bb.cw ] ; 2 uses
  %i.ayb = fcmp oge double %i.awy, 0.000000e+00
  %i.ayc = fneg double %i.awy
  %i.ayd = select i1 %i.ayb, double %i.awy, double %i.ayc ; 2 uses
  %i.aye = fcmp ole double %i.ayd, 1.000000e+00
  %i.ayf = select i1 %i.aye, double 1.000000e+00, double %i.ayd ; 2 uses
  %i.ayg = fcmp oge double %i.awx, 0.000000e+00
  %i.ayh = fneg double %i.awx
  %i.ayi = select i1 %i.ayg, double %i.awx, double %i.ayh ; 2 uses
  %i.ayj = fcmp oge double %i.ayf, %i.ayi
  %i.ayk = select i1 %i.ayj, double %i.ayf, double %i.ayi
  %i.ayl = fmul double %i.atj, %i.ayk
  %i.aym = fdiv double 1.000000e+00, %i.ayl       ; 2 uses
  %i.ayn = fcmp ole double %i.aya, %i.aym
  %i.ayo = select i1 %i.ayn, double %i.aya, double %i.aym ; 3 uses
  store double %i.ayo, ptr %i.o, align 8, !tbaa !106
  %i.ayp = insertelement <2 x double> poison, double %i.ayo, i64 0
  %i.ayq = shufflevector <2 x double> %i.ayp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ayr = fmul <2 x double> %i.awv, %i.ayq
  %i.ays = fmul <2 x double> %i.lm, %i.ayr        ; 2 uses
  %i.ayt = fmul <2 x double> %i.aww, %i.ayq
  %i.ayu = fmul double %i.awx, %i.ayo
  %i.ayv = select <2 x i1> %i.axh, <2 x double> %i.ays, <2 x double> %i.ayt ; 2 uses
  %i.ayw = extractelement <2 x double> %i.ayv, i64 0 ; 2 uses
  store double %i.ayw, ptr %i.n, align 8, !tbaa !106
  %i.ayx = extractelement <2 x i1> %i.axh, i64 1
  %i.ayy = extractelement <2 x double> %i.ays, i64 1
  %.sink2555 = select i1 %i.ayx, double %i.ayy, double %i.ayu
  store double %.sink2555, ptr %i.s, align 8, !tbaa !106
  br label %.thread2428

.thread2428:                                      ; preds = %.thread2428.sink.split, %.thread2427
  %i.ayz = phi double [ %i.awy, %.thread2427 ], [ %i.ayw, %.thread2428.sink.split ] ; 5 uses
  %i.aza = phi <2 x double> [ %i.aww, %.thread2427 ], [ %i.ayv, %.thread2428.sink.split ] ; 12 uses
  %i.azb = fcmp oge <2 x double> %i.aza, zeroinitializer
  %i.azc = fneg <2 x double> %i.aza
  %i.azd = select <2 x i1> %i.azb, <2 x double> %i.aza, <2 x double> %i.azc ; 5 uses
  %i.aze = load i32, ptr %3, align 4, !tbaa !104
  %i.azf = shl i32 %i.aze, 1
  %i.azg = sext i32 %i.azf to i64                 ; 3 uses
  %i.azh = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2292
  %i.azi = getelementptr [8 x i8], ptr %i.azh, i64 %i.azg
  store double 1.000000e+00, ptr %i.azi, align 8, !tbaa !106
  %i.azj = trunc i64 %indvars.iv2292 to i32
  %i.azk = add i32 %i.azj, -1
  store i32 %i.azk, ptr %i.e, align 4, !tbaa !104
  %.not1518.not1850 = icmp sgt i64 %indvars.iv2292, 1
  br i1 %.not1518.not1850, label %iter.check3021, label %.loopexit1680

iter.check3021:                                   ; preds = %.thread2428
  %invariant.gep2495 = getelementptr [8 x i8], ptr %i.ad, i64 %i.awb ; 7 uses
  %invariant.gep2497 = getelementptr [8 x i8], ptr %i.aa, i64 %i.avr ; 7 uses
  %invariant.gep2499 = getelementptr [8 x i8], ptr %i.ak, i64 %i.azg ; 7 uses
  %min.iters.check2997 = icmp ult i64 %i.att, 4
  br i1 %min.iters.check2997, label %.lr.ph1853.preheader, label %vector.memcheck2992

vector.memcheck2992:                              ; preds = %iter.check3021
  %i.azl = shl nsw i64 %i.azg, 3                  ; 2 uses
  %i.azm = add i64 %i.atv, %i.azl
  %i.azn = add i64 %i.azm, -1
  %diff.check2993 = icmp ult i64 %i.azn, 127
  %i.azo = add i64 %i.atx, %i.azl
  %i.azp = add i64 %i.azo, -1
  %diff.check2994 = icmp ult i64 %i.azp, 127
  %conflict.rdx2995 = or i1 %diff.check2993, %diff.check2994
  br i1 %conflict.rdx2995, label %.lr.ph1853.preheader, label %vector.main.loop.iter.check2998

vector.main.loop.iter.check2998:                  ; preds = %vector.memcheck2992
  %min.iters.check2999 = icmp ult i64 %i.att, 16
  br i1 %min.iters.check2999, label %vec.epilog.ph3025, label %vector.ph3000

vector.ph3000:                                    ; preds = %vector.main.loop.iter.check2998
  %i.azq = and i64 %i.att, 12
  %n.vec3001 = and i64 %i.att, -16                ; 4 uses
  %i.azr = or disjoint i64 %n.vec3001, 1
  %broadcast.splat3003 = shufflevector <2 x double> %i.aza, <2 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat3005 = shufflevector <2 x double> %i.aza, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %vector.body3006

vector.body3006:                                  ; preds = %vector.ph3000, %vector.body3006
  %index3007 = phi i64 [ 0, %vector.ph3000 ], [ %index.next3016, %vector.body3006 ] ; 2 uses
  %i.azs = or disjoint i64 %index3007, 1          ; 3 uses
  %i.azt = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %i.azs ; 4 uses
  %i.azu = getelementptr i8, ptr %i.azt, i64 32
  %i.azv = getelementptr i8, ptr %i.azt, i64 64
  %i.azw = getelementptr i8, ptr %i.azt, i64 96
  %wide.load3008 = load <4 x double>, ptr %i.azt, align 8, !tbaa !106
  %wide.load3009 = load <4 x double>, ptr %i.azu, align 8, !tbaa !106
  %wide.load3010 = load <4 x double>, ptr %i.azv, align 8, !tbaa !106
  %wide.load3011 = load <4 x double>, ptr %i.azw, align 8, !tbaa !106
  %i.azx = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %i.azs ; 4 uses
  %i.azy = getelementptr i8, ptr %i.azx, i64 32
  %i.azz = getelementptr i8, ptr %i.azx, i64 64
  %i.baa = getelementptr i8, ptr %i.azx, i64 96
  %wide.load3012 = load <4 x double>, ptr %i.azx, align 8, !tbaa !106
  %wide.load3013 = load <4 x double>, ptr %i.azy, align 8, !tbaa !106
  %wide.load3014 = load <4 x double>, ptr %i.azz, align 8, !tbaa !106
  %wide.load3015 = load <4 x double>, ptr %i.baa, align 8, !tbaa !106
  %i.bab = fneg <4 x double> %wide.load3012
  %i.bac = fneg <4 x double> %wide.load3013
  %i.bad = fneg <4 x double> %wide.load3014
  %i.bae = fneg <4 x double> %wide.load3015
  %i.baf = fmul <4 x double> %broadcast.splat3003, %i.bab
  %i.bag = fmul <4 x double> %broadcast.splat3003, %i.bac
  %i.bah = fmul <4 x double> %broadcast.splat3003, %i.bad
  %i.bai = fmul <4 x double> %broadcast.splat3003, %i.bae
  %i.baj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3005, <4 x double> %wide.load3008, <4 x double> %i.baf)
  %i.bak = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3005, <4 x double> %wide.load3009, <4 x double> %i.bag)
  %i.bal = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3005, <4 x double> %wide.load3010, <4 x double> %i.bah)
  %i.bam = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3005, <4 x double> %wide.load3011, <4 x double> %i.bai)
  %i.ban = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %i.azs ; 4 uses
  %i.bao = getelementptr i8, ptr %i.ban, i64 32
  %i.bap = getelementptr i8, ptr %i.ban, i64 64
  %i.baq = getelementptr i8, ptr %i.ban, i64 96
end_hunk_0
