Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgevc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@dtgevc_:bb.a
  %i.apn = or i1 %i.apl, %i.apm
  br i1 %i.apn, label %middle.block2618, label %vector.body2608, !llvm.loop !31

middle.block2618:                                 ; preds = %vector.body2608
  %i.apo = select i1 %i.apl, <4 x double> %vec.phi, <4 x double> %i.aoz
  %i.app = select i1 %i.apl, <4 x double> %vec.phi2610, <4 x double> %i.apa
  %i.apq = select i1 %i.apl, <4 x double> %vec.phi2611, <4 x double> %i.apb
  %i.apr = select i1 %i.apl, <4 x double> %vec.phi2612, <4 x double> %i.apc
  %i.aps = select i1 %i.apl, i64 %index2609, i64 %n.vec2607
  %rdx.minmax = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.apo, <4 x double> %i.app)
  %rdx.minmax2619 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax, <4 x double> %i.apq)
  %rdx.minmax2620 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax2619, <4 x double> %i.apr)
  %i.apt = call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax2620) ; 2 uses
  %i.apu = add i64 %i.aps, %i.any
  %i.apv = extractelement <4 x double> %wide.load2616, i64 3
  %cmp.n2621 = icmp ne i64 %i.aob, %n.vec2607
  %.not3334 = or i1 %cmp.n2621, %i.apl
  br i1 %.not3334, label %scalar.ph.preheader, label %.loopexit1686.sink.split

scalar.ph.preheader:                              ; preds = %.lr.ph1810, %middle.block2618
  %indvars.iv2100.ph = phi i64 [ %i.any, %.lr.ph1810 ], [ %i.apu, %middle.block2618 ]
  %.614411807.ph = phi double [ 0.000000e+00, %.lr.ph1810 ], [ %i.apt, %middle.block2618 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2100 = phi i64 [ %indvars.iv.next2101, %scalar.ph ], [ %indvars.iv2100.ph, %scalar.ph.preheader ] ; 2 uses
  %.614411807 = phi double [ %i.aqb, %scalar.ph ], [ %.614411807.ph, %scalar.ph.preheader ] ; 2 uses
  %gep2480 = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100
  %i.apw = load double, ptr %gep2480, align 8, !tbaa !107 ; 4 uses
  %i.apx = fcmp oge double %i.apw, 0.000000e+00
  %i.apy = fneg double %i.apw
  %i.apz = select i1 %i.apx, double %i.apw, double %i.apy ; 2 uses
  %i.aqa = fcmp oge double %.614411807, %i.apz
  %i.aqb = select i1 %i.aqa, double %.614411807, double %i.apz ; 2 uses
  %indvars.iv.next2101 = add nuw nsw i64 %indvars.iv2100, 1 ; 2 uses
  %exitcond2105.not = icmp eq i64 %indvars.iv.next2101, %wide.trip.count2104
  br i1 %exitcond2105.not, label %.loopexit1686.sink.split, label %scalar.ph, !llvm.loop !32

.loopexit1686.sink.split:                         ; preds = %scalar.ph2623, %scalar.ph, %middle.block2642, %middle.block2618
  %.lcssa2444.sink = phi double [ %i.apw, %scalar.ph ], [ %i.apv, %middle.block2618 ], [ %i.anl, %middle.block2642 ], [ %i.anm, %scalar.ph2623 ]
  %.71442.ph = phi double [ %i.aqb, %scalar.ph ], [ %i.apt, %middle.block2618 ], [ %i.anj, %middle.block2642 ], [ %i.anw, %scalar.ph2623 ]
  store double %.lcssa2444.sink, ptr %i.g, align 8, !tbaa !107
  br label %.loopexit1686

.loopexit1686:                                    ; preds = %.loopexit1686.sink.split, %bb.cj, %bb.ck
  %.71442 = phi double [ 0.000000e+00, %bb.ck ], [ 0.000000e+00, %bb.cj ], [ %.71442.ph, %.loopexit1686.sink.split ] ; 2 uses
  %i.aqc = load double, ptr %i.u, align 8, !tbaa !107 ; 2 uses
  %i.aqd = fcmp ogt double %.71442, %i.aqc
  %.pre2305 = load i32, ptr %i.t, align 4, !tbaa !105 ; 3 uses
  br i1 %i.aqd, label %bb.cl, label %.loopexit1685

bb.cl:                                            ; preds = %.loopexit1686
  %i.aqe = fdiv double 1.000000e+00, %.71442      ; 3 uses
  %.not1557.not1818 = icmp sgt i32 %.pre2305, 0
  br i1 %.not1557.not1818, label %.lr.ph1821, label %.loopexit1685

.lr.ph1821:                                       ; preds = %bb.cl
  store i32 %i.akn, ptr %i.f, align 4, !tbaa !105
  %.not15581813 = icmp sgt i32 %.01457, %i.akn
  br i1 %.not15581813, label %.loopexit1685, label %.lr.ph1816.preheader

.lr.ph1816.preheader:                             ; preds = %.lr.ph1821
  %i.aqf = zext i32 %.01457 to i64                ; 6 uses
  %i.aqg = add i32 %i.akn, 1
  %i.aqh = sext i32 %i.ajo to i64
  %wide.trip.count2116 = zext nneg i32 %.pre2305 to i64
  %wide.trip.count2110 = zext i32 %i.aqg to i64   ; 2 uses
  %i.aqi = sub nsw i64 %wide.trip.count2110, %i.aqf ; 7 uses
  %min.iters.check = icmp ult i64 %i.aqi, 4
  %min.iters.check2594 = icmp ult i64 %i.aqi, 16
  %i.aqj = and i64 %i.aqi, 12
  %n.vec = and i64 %i.aqi, -16                    ; 4 uses
  %i.aqk = add nsw i64 %n.vec, %i.aqf
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aqe, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.aqi, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.aqj, 0
  %n.vec2598 = and i64 %i.aqi, -4                 ; 3 uses
  %i.aql = add nsw i64 %n.vec2598, %i.aqf
  %broadcast.splatinsert2599 = insertelement <4 x double> poison, double %i.aqe, i64 0
  %broadcast.splat2600 = shufflevector <4 x double> %broadcast.splatinsert2599, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2604 = icmp eq i64 %i.aqi, %n.vec2598
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph1816.preheader, %._crit_edge1817
  %indvars.iv2112 = phi i64 [ 0, %.lr.ph1816.preheader ], [ %indvars.iv.next2113, %._crit_edge1817 ] ; 2 uses
  %i.aqm = add nsw i64 %indvars.iv2112, %i.aqh
  %i.aqn = mul nsw i64 %i.aqm, %i.lt
  %invariant.gep2481 = getelementptr [8 x i8], ptr %i.ag, i64 %i.aqn ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check2594, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.gep3502 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %i.aqf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep3503 = getelementptr [8 x i8], ptr %invariant.gep3502, i64 %index ; 5 uses
  %i.aqo = getelementptr i8, ptr %gep3503, i64 32 ; 2 uses
  %i.aqp = getelementptr i8, ptr %gep3503, i64 64 ; 2 uses
  %i.aqq = getelementptr i8, ptr %gep3503, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %gep3503, align 8, !tbaa !107
  %wide.load2595 = load <4 x double>, ptr %i.aqo, align 8, !tbaa !107
  %wide.load2596 = load <4 x double>, ptr %i.aqp, align 8, !tbaa !107
  %wide.load2597 = load <4 x double>, ptr %i.aqq, align 8, !tbaa !107
  %i.aqr = fmul <4 x double> %broadcast.splat, %wide.load
  %i.aqs = fmul <4 x double> %broadcast.splat, %wide.load2595
  %i.aqt = fmul <4 x double> %broadcast.splat, %wide.load2596
  %i.aqu = fmul <4 x double> %broadcast.splat, %wide.load2597
  store <4 x double> %i.aqr, ptr %gep3503, align 8, !tbaa !107
  store <4 x double> %i.aqs, ptr %i.aqo, align 8, !tbaa !107
  store <4 x double> %i.aqt, ptr %i.aqp, align 8, !tbaa !107
  store <4 x double> %i.aqu, ptr %i.aqq, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aqv = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqv, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1817, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep3504 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %i.aqf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2601 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2603, %vec.epilog.vector.body ] ; 2 uses
  %gep3505 = getelementptr [8 x i8], ptr %invariant.gep3504, i64 %index2601 ; 2 uses
  %wide.load2602 = load <4 x double>, ptr %gep3505, align 8, !tbaa !107
  %i.aqw = fmul <4 x double> %broadcast.splat2600, %wide.load2602
  store <4 x double> %i.aqw, ptr %gep3505, align 8, !tbaa !107
  %index.next2603 = add nuw i64 %index2601, 4     ; 2 uses
  %i.aqx = icmp eq i64 %index.next2603, %n.vec2598
  br i1 %i.aqx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n2604, label %._crit_edge1817, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2106.ph = phi i64 [ %i.aqf, %iter.check ], [ %i.aqk, %vec.epilog.iter.check ], [ %i.aql, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2106 = phi i64 [ %indvars.iv.next2107, %vec.epilog.scalar.ph ], [ %indvars.iv2106.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep2482 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %indvars.iv2106 ; 2 uses
  %i.aqy = load double, ptr %gep2482, align 8, !tbaa !107
  %i.aqz = fmul double %i.aqe, %i.aqy
  store double %i.aqz, ptr %gep2482, align 8, !tbaa !107
  %indvars.iv.next2107 = add nuw nsw i64 %indvars.iv2106, 1 ; 2 uses
  %exitcond2111.not = icmp eq i64 %indvars.iv.next2107, %wide.trip.count2110
  br i1 %exitcond2111.not, label %._crit_edge1817, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge1817:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next2113 = add nuw nsw i64 %indvars.iv2112, 1 ; 2 uses
  %exitcond2117.not = icmp eq i64 %indvars.iv.next2113, %wide.trip.count2116
  br i1 %exitcond2117.not, label %.loopexit1685, label %iter.check, !llvm.loop !36

.loopexit1685:                                    ; preds = %._crit_edge1817, %bb.cl, %.lr.ph1821, %.loopexit1686
  %i.ara = add i32 %.pre2305, %.014531823
  %.pre2306 = load i32, ptr %i.e, align 4, !tbaa !105
  br label %bb.cm

bb.cm:                                            ; preds = %.thread2403, %bb.av, %._crit_edge1740, %.loopexit1685, %bb.ba
  %i.arb = phi i32 [ %i.mg, %bb.ba ], [ %.pre2306, %.loopexit1685 ], [ %i.mg, %._crit_edge1740 ], [ %i.mg, %bb.av ], [ %i.mg, %.thread2403 ] ; 2 uses
  %i.arc = phi double [ %i.mh, %bb.ba ], [ %i.aqc, %.loopexit1685 ], [ %i.mh, %._crit_edge1740 ], [ %i.mh, %bb.av ], [ %i.mh, %.thread2403 ] ; 2 uses
  %i.ard = phi i32 [ %i.mi, %bb.ba ], [ %i.akn, %.loopexit1685 ], [ %i.mi, %._crit_edge1740 ], [ %i.mi, %bb.av ], [ %i.mi, %.thread2403 ] ; 2 uses
  %.11454 = phi i32 [ %.014531823, %bb.ba ], [ %i.ara, %.loopexit1685 ], [ %i.nj, %._crit_edge1740 ], [ %.014531823, %bb.av ], [ %.014531823, %.thread2403 ]
  %.5 = phi i32 [ 0, %bb.ba ], [ %.4161216251629, %.loopexit1685 ], [ 0, %._crit_edge1740 ], [ 0, %bb.av ], [ 1, %.thread2403 ]
  %indvars.iv.next2026 = add nuw nsw i64 %indvars.iv2025, 1
  %i.are = sext i32 %i.arb to i64
  %.not1508.not = icmp slt i64 %indvars.iv2025, %i.are
  %indvar.next = add i64 %indvar, 1
  br i1 %.not1508.not, label %bb.av, label %.loopexit1688, !llvm.loop !37

.loopexit1688:                                    ; preds = %bb.cm, %bb.au, %bb.at
  %i.arf = phi double [ %i.eu, %bb.at ], [ %i.eu, %bb.au ], [ %i.arc, %bb.cm ]
  %i.arg = phi i32 [ %i.ev, %bb.at ], [ %i.ev, %bb.au ], [ %i.ard, %bb.cm ] ; 5 uses
  %i.arh = icmp sgt i32 %i.arg, 0
  %or.cond2553 = select i1 %.not15021589, i1 %i.arh, i1 false
  br i1 %or.cond2553, label %.lr.ph1963, label %.loopexit1682

.lr.ph1963:                                       ; preds = %.loopexit1688
  %i.ari = add nsw i32 %.21390239323972402, 1
  %i.arj = add i32 %i.y, 1                        ; 2 uses
  %i.ark = add i32 %i.ab, 1                       ; 4 uses
  %i.arl = add i32 %i.ah, 1
  %i.arm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.arn = shl nsw i64 %i.ai, 3
  %scevgep2120 = getelementptr i8, ptr %10, i64 %i.arn
  %i.aro = add nsw i32 %i.arg, -1
  %i.arp = add nuw i32 %i.arg, 1
  %i.arq = sext i32 %i.ah to i64                  ; 2 uses
  %i.arr = zext i32 %i.arp to i64
  %i.ars = zext i32 %i.aro to i64                 ; 3 uses
  %i.art = zext nneg i32 %i.arg to i64            ; 6 uses
  %i.aru = sext i32 %i.ab to i64                  ; 9 uses
  %i.arv = sext i32 %i.y to i64                   ; 9 uses
  %invariant.gep2519 = getelementptr [8 x i8], ptr %i.aj, i64 %i.arq ; 9 uses
  %i.arw = shl nsw i64 %i.ai, 3                   ; 2 uses
  %i.arx = add i64 %i.arw, %i.d
  %i.ary = add i64 %i.arx, 8
  %i.arz = add i64 %i.arw, %i.d
  %i.asa = add i64 %i.arz, 8
  %i.asb = shl nsw i64 %i.ac, 3                   ; 2 uses
  %i.asc = getelementptr i8, ptr %6, i64 %i.asb
  %scevgep2918 = getelementptr i8, ptr %i.asc, i64 8 ; 2 uses
  %i.asd = shl nsw i64 %i.z, 3                    ; 2 uses
  %i.ase = getelementptr i8, ptr %4, i64 %i.asd
  %scevgep2919 = getelementptr i8, ptr %i.ase, i64 8 ; 2 uses
  %i.asf = zext nneg i32 %i.arg to i64
  %i.asg = shl nsw i64 %i.arv, 3
  %i.ash = add i64 %i.c, -8
  %i.asi = mul nsw i64 %i.arv, %i.art
  %i.asj = add i64 %i.asi, %i.z
  %i.ask = shl i64 %i.asj, 3
  %i.asl = add i64 %i.ask, %i.b
  %i.asm = sub i64 %i.ash, %i.asl
  %i.asn = shl nsw i64 %i.aru, 3
  %i.aso = add i64 %i.c, -8
  %i.asp = mul nsw i64 %i.aru, %i.art
  %i.asq = add i64 %i.asp, %i.ac
  %i.asr = shl i64 %i.asq, 3
  %i.ass = add i64 %i.asr, %i.a
  %i.ast = sub i64 %i.aso, %i.ass
  %16 = add nsw i64 %i.art, -1                    ; 3 uses
  %i.asu = mul nsw i64 %16, %i.aru
  %i.asv = add i64 %i.asu, %i.ac
  %i.asw = shl i64 %i.asv, 3                      ; 2 uses
  %i.asx = shl nuw nsw i64 %i.ars, 3              ; 5 uses
  %i.asy = shl nsw i64 %i.aru, 3
  %i.asz = sub nuw nsw i64 -8, %i.asy
  %i.ata = mul nsw i64 %i.aru, %i.art
  %i.atb = add i64 %i.ata, %i.ac
  %i.atc = shl i64 %i.atb, 3                      ; 2 uses
  %i.atd = mul nsw i64 %i.aru, -8
  %i.ate = mul nsw i64 %16, %i.arv
  %i.atf = add i64 %i.ate, %i.z
  %i.atg = shl i64 %i.atf, 3                      ; 2 uses
  %i.ath = shl nsw i64 %i.arv, 3
  %i.ati = sub nuw nsw i64 -8, %i.ath
  %i.atj = mul nsw i64 %i.arv, %i.art
  %i.atk = add i64 %i.atj, %i.z
  %i.atl = shl i64 %i.atk, 3                      ; 2 uses
  %i.atm = mul nsw i64 %i.arv, -8
  %i.atn = add nsw i64 %i.asx, -8
  %i.ato = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.atp = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.atq = extractelement <2 x double> %i.lm, i64 0 ; 3 uses
  %i.atr = extractelement <2 x double> %i.lm, i64 1 ; 3 uses
  %i.ats = insertelement <2 x double> poison, double %.11415.lcssa, i64 0
  %i.att = insertelement <2 x double> %i.ats, double %.01413.lcssa, i64 1
  %i.atu = insertelement <2 x double> poison, double %i.et, i64 0
  %i.atv = shufflevector <2 x double> %i.atu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.atw = getelementptr i8, ptr %4, i64 %i.atl
  %i.atx = getelementptr i8, ptr %i.atw, i64 8
  %i.aty = getelementptr i8, ptr %4, i64 %i.atl
  %i.atz = getelementptr i8, ptr %i.aty, i64 %i.asx
  %i.aua = getelementptr i8, ptr %4, i64 %i.atg
  %i.aub = getelementptr i8, ptr %i.aua, i64 8
  %i.auc = getelementptr i8, ptr %4, i64 %i.atg
  %i.aud = getelementptr i8, ptr %i.auc, i64 %i.asx
  %i.aue = getelementptr i8, ptr %6, i64 %i.atc
  %i.auf = getelementptr i8, ptr %i.aue, i64 8
  %i.aug = getelementptr i8, ptr %6, i64 %i.atc
  %i.auh = getelementptr i8, ptr %i.aug, i64 %i.asx
  %i.aui = getelementptr i8, ptr %6, i64 %i.asw
  %i.auj = getelementptr i8, ptr %i.aui, i64 8
  %i.auk = getelementptr i8, ptr %6, i64 %i.asw
  %i.aul = getelementptr i8, ptr %i.auk, i64 %i.asx
  %i.aum = extractelement <2 x double> %i.fb, i64 1
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1963, %.loopexit1676
  %indvar3060 = phi i64 [ 0, %.lr.ph1963 ], [ %indvar.next3061, %.loopexit1676 ] ; 11 uses
  %i.aun = phi double [ %i.arf, %.lr.ph1963 ], [ %i.cph, %.loopexit1676 ] ; 16 uses
  %indvars.iv2292 = phi i64 [ %i.art, %.lr.ph1963 ], [ %indvars.iv.next2293, %.loopexit1676 ] ; 28 uses
  %indvars.iv2290 = phi i64 [ %i.ars, %.lr.ph1963 ], [ %indvars.iv.next2291, %.loopexit1676 ] ; 3 uses
  %indvars.iv2288 = phi i64 [ %i.arr, %.lr.ph1963 ], [ %indvars.iv.next2289, %.loopexit1676 ] ; 5 uses
  %.61961 = phi i32 [ 0, %.lr.ph1963 ], [ %.8, %.loopexit1676 ]
  %.214551957 = phi i32 [ %i.ari, %.lr.ph1963 ], [ %.31456, %.loopexit1676 ] ; 5 uses
  %17 = sub i64 %16, %indvar3060                  ; 8 uses
  %i.auo = trunc i64 %indvars.iv2288 to i32
  %i.aup = sub i64 %i.asf, %indvar3060            ; 14 uses
  %indvars2299 = trunc i64 %indvars.iv2292 to i32 ; 12 uses
  %.not1510 = icmp eq i32 %.61961, 0
  br i1 %.not1510, label %bb.co, label %.loopexit1676

bb.co:                                            ; preds = %bb.cn
  store i32 1, ptr %i.t, align 4, !tbaa !105
  %.not1511 = icmp eq i64 %indvars.iv2292, 1
  br i1 %.not1511, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.auq = add nsw i32 %indvars2299, -1
  %i.aur = mul nsw i32 %i.auq, %i.y
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2292
  %i.auu = getelementptr [8 x i8], ptr %i.aut, i64 %i.aus
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !107
  %i.auw = fcmp une double %i.auv, 0.000000e+00
  br i1 %i.auw, label %.thread1635, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not1491, label %bb.cs, label %.thread1648

.thread1635:                                      ; preds = %bb.cp
  store i32 2, ptr %i.t, align 4, !tbaa !105
  br i1 %.not1491, label %bb.cr, label %.lr.ph1844

bb.cr:                                            ; preds = %.thread1635
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !105
  %.not1513 = icmp eq i32 %i.auy, 0
  br i1 %.not1513, label %.thread2416, label %.lr.ph1844

bb.cs:                                            ; preds = %bb.cq
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292
  %.11365.in = load i32, ptr %i.auz, align 4, !tbaa !105
  %.11365 = icmp eq i32 %.11365.in, 0
  br i1 %.11365, label %.loopexit1676, label %.thread1648

.thread2416:                                      ; preds = %bb.cr
  %i.ava = getelementptr i8, ptr %i.aux, i64 -4
  %.11365.in2420 = load i32, ptr %i.ava, align 4, !tbaa !105
  %.113652421 = icmp eq i32 %.11365.in2420, 0
  br i1 %.113652421, label %.loopexit1676, label %.lr.ph1844

.thread1648:                                      ; preds = %bb.cs, %bb.cq
  %i.avb = mul i32 %i.arj, %indvars2299
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.avc
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !107
  %i.avf = call double @llvm.fabs.f64(double %i.ave)
  %i.avg = fcmp ugt double %i.avf, %i.aun
  br i1 %i.avg, label %.lr.ph1844, label %bb.ct

bb.ct:                                            ; preds = %.thread1648
  %i.avh = mul i32 %i.ark, %indvars2299
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.avi
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !107
  %i.avl = call double @llvm.fabs.f64(double %i.avk)
  %i.avm = fcmp ugt double %i.avl, %i.aun
  br i1 %i.avm, label %.lr.ph1844, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.avn = add nsw i32 %.214551957, -1            ; 3 uses
  %i.avo = load i32, ptr %3, align 4, !tbaa !105  ; 3 uses
  store i32 %i.avo, ptr %i.e, align 4, !tbaa !105
  %.not15161832 = icmp slt i32 %i.avo, 1
  br i1 %.not15161832, label %._crit_edge1836, label %.lr.ph1835

.lr.ph1835:                                       ; preds = %bb.cu
  %i.avp = mul nsw i32 %i.avn, %i.ah
  %i.avq = add i32 %i.avp, 1
  %i.avr = sext i32 %i.avq to i64
  %i.avs = shl nsw i64 %i.avr, 3
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.avs
  %i.avt = zext nneg i32 %i.avo to i64
  %i.avu = shl nuw nsw i64 %i.avt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2121, i8 0, i64 %i.avu, i1 false), !tbaa !107
  br label %._crit_edge1836

._crit_edge1836:                                  ; preds = %.lr.ph1835, %bb.cu
  %i.avv = mul i32 %i.avn, %i.arl
  %i.avw = sext i32 %i.avv to i64
  %i.avx = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.avw
  store double 1.000000e+00, ptr %i.avx, align 8, !tbaa !107
  br label %.loopexit1676

.lr.ph1844:                                       ; preds = %.thread2416, %bb.ct, %.thread1648, %.thread1635, %bb.cr
  %i.avy = phi i32 [ 2, %bb.cr ], [ 1, %.thread1648 ], [ 1, %bb.ct ], [ 2, %.thread1635 ], [ 2, %.thread2416 ] ; 2 uses
  %.7164016531657 = phi i32 [ 1, %bb.cr ], [ 0, %.thread1648 ], [ 0, %bb.ct ], [ 1, %.thread1635 ], [ 1, %.thread2416 ] ; 3 uses
  %.not1512163916541655 = phi i1 [ false, %bb.cr ], [ true, %.thread1648 ], [ true, %bb.ct ], [ false, %.thread1635 ], [ false, %.thread2416 ] ; 3 uses
  %i.avz = add nsw i32 %i.avy, -1
  store i32 %i.avz, ptr %i.e, align 4, !tbaa !105
  %i.awa = load i32, ptr %3, align 4, !tbaa !105  ; 3 uses
  %.not15431837 = icmp slt i32 %i.awa, 1
  br i1 %.not15431837, label %._crit_edge1845.split, label %.lr.ph1840.preheader

.lr.ph1840.preheader:                             ; preds = %.lr.ph1844
  %i.awb = shl nuw i32 %i.awa, 1
  %i.awc = zext i32 %i.awb to i64
  %i.awd = shl nuw nsw i64 %i.awc, 3
  %i.awe = zext nneg i32 %i.awa to i64
  %scevgep2131 = getelementptr i8, ptr %14, i64 %i.awd
  %i.awf = shl nuw nsw i32 %i.avy, 3
  %i.awg = zext nneg i32 %i.awf to i64
  %i.awh = mul nuw nsw i64 %i.awg, %i.awe
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2131, i8 0, i64 %i.awh, i1 false), !tbaa !107
  br label %._crit_edge1845.split

._crit_edge1845.split:                            ; preds = %.lr.ph1840.preheader, %.lr.ph1844
  br i1 %.not1512163916541655, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %._crit_edge1845.split
  %i.awi = mul nsw i64 %indvars.iv2292, %i.arv
  %i.awj = mul nsw i32 %i.y, %indvars2299
  %i.awk = sext i32 %i.awj to i64
  %i.awl = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2292
  %i.awm = getelementptr [8 x i8], ptr %i.awl, i64 %i.awk
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !107 ; 4 uses
  %i.awo = fcmp oge double %i.awn, 0.000000e+00
  %i.awp = fneg double %i.awn
  %i.awq = select i1 %i.awo, double %i.awn, double %i.awp
  %i.awr = fmul double %i.atq, %i.awq             ; 2 uses
  %i.aws = mul nsw i64 %indvars.iv2292, %i.aru
  %i.awt = mul nsw i32 %i.ab, %indvars2299
  %i.awu = sext i32 %i.awt to i64
  %i.awv = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv2292
  %i.aww = getelementptr [8 x i8], ptr %i.awv, i64 %i.awu
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !107 ; 4 uses
  %i.awy = fcmp oge double %i.awx, 0.000000e+00
  %i.awz = fneg double %i.awx
  %i.axa = select i1 %i.awy, double %i.awx, double %i.awz
  %i.axb = fmul double %i.atr, %i.axa             ; 2 uses
  %i.axc = fcmp oge double %i.awr, %i.axb
  %i.axd = select i1 %i.axc, double %i.awr, double %i.axb ; 2 uses
  %i.axe = fcmp oge double %i.axd, %i.aun
  %i.axf = select i1 %i.axe, double %i.axd, double %i.aun
  %i.axg = fdiv double 1.000000e+00, %i.axf       ; 2 uses
  store double %i.axg, ptr %i.i, align 8, !tbaa !107
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !107
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !107
  %i.axh = insertelement <2 x double> poison, double %i.awx, i64 0
  %i.axi = insertelement <2 x double> %i.axh, double %i.awn, i64 1
  %i.axj = insertelement <2 x double> poison, double %i.axg, i64 0
  %i.axk = shufflevector <2 x double> %i.axj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axl = fmul <2 x double> %i.axi, %i.axk
  %i.axm = fmul <2 x double> %i.ato, %i.axl       ; 5 uses
  %i.axn = fmul <2 x double> %i.lm, %i.axm        ; 5 uses
  %i.axo = extractelement <2 x double> %i.axn, i64 1 ; 5 uses
  %i.axp = extractelement <2 x double> %i.axn, i64 0 ; 5 uses
  store double %i.axp, ptr %i.n, align 8, !tbaa !107
  store double %i.axo, ptr %i.s, align 8, !tbaa !107
  %i.axq = fcmp oge <2 x double> %i.axm, zeroinitializer
  %i.axr = fneg <2 x double> %i.axm
  %i.axs = select <2 x i1> %i.axq, <2 x double> %i.axm, <2 x double> %i.axr ; 3 uses
  %i.axt = insertelement <2 x double> poison, double %i.aun, i64 0
  %i.axu = shufflevector <2 x double> %i.axt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axv = fcmp oge <2 x double> %i.axs, %i.axu
  %i.axw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.axn)
  %i.axx = fcmp olt <2 x double> %i.axw, %i.atp
  %i.axy = select <2 x i1> %i.axv, <2 x i1> %i.axx, <2 x i1> zeroinitializer ; 5 uses
  %i.axz = extractelement <2 x i1> %i.axy, i64 0
  br i1 %i.axz, label %bb.cw, label %.thread2427

bb.cw:                                            ; preds = %bb.cv
  %i.aya = extractelement <2 x double> %i.axs, i64 0
  %i.ayb = fdiv double %i.ey, %i.aya
  %i.ayc = load double, ptr %i.v, align 8, !tbaa !107 ; 2 uses
  %i.ayd = fcmp ole double %.11415.lcssa, %i.ayc
  %i.aye = select i1 %i.ayd, double %.11415.lcssa, double %i.ayc
  %i.ayf = fmul double %i.ayb, %i.aye             ; 2 uses
  %i.ayg = extractelement <2 x i1> %i.axy, i64 1
  br i1 %i.ayg, label %.thread1659, label %.thread2428.sink.split

.thread2427:                                      ; preds = %bb.cv
  %i.ayh = extractelement <2 x i1> %i.axy, i64 1
  br i1 %i.ayh, label %.thread1659, label %.thread2428

.thread1659:                                      ; preds = %.thread2427, %bb.cw
  %i.ayi = phi double [ 1.000000e+00, %.thread2427 ], [ %i.ayf, %bb.cw ] ; 3 uses
  store double %i.ayi, ptr %i.g, align 8, !tbaa !107
  %i.ayj = extractelement <2 x double> %i.axs, i64 1
  %i.ayk = fdiv double %i.ey, %i.ayj
  %i.ayl = load double, ptr %i.v, align 8, !tbaa !107 ; 2 uses
  %i.aym = fcmp ole double %.01413.lcssa, %i.ayl
  %i.ayn = select i1 %i.aym, double %.01413.lcssa, double %i.ayl
  %i.ayo = fmul double %i.ayk, %i.ayn             ; 2 uses
  %i.ayp = fcmp oge double %i.ayi, %i.ayo
  %i.ayq = select i1 %i.ayp, double %i.ayi, double %i.ayo
  br label %.thread2428.sink.split

.thread2428.sink.split:                           ; preds = %bb.cw, %.thread1659
  %i.ayr = phi double [ %i.ayq, %.thread1659 ], [ %i.ayf, %bb.cw ] ; 2 uses
  %i.ays = fcmp oge double %i.axp, 0.000000e+00
  %i.ayt = fneg double %i.axp
  %i.ayu = select i1 %i.ays, double %i.axp, double %i.ayt ; 2 uses
  %i.ayv = fcmp ole double %i.ayu, 1.000000e+00
  %i.ayw = select i1 %i.ayv, double 1.000000e+00, double %i.ayu ; 2 uses
  %i.ayx = fcmp oge double %i.axo, 0.000000e+00
  %i.ayy = fneg double %i.axo
  %i.ayz = select i1 %i.ayx, double %i.axo, double %i.ayy ; 2 uses
  %i.aza = fcmp oge double %i.ayw, %i.ayz
  %i.azb = select i1 %i.aza, double %i.ayw, double %i.ayz
  %i.azc = fmul double %i.aun, %i.azb
  %i.azd = fdiv double 1.000000e+00, %i.azc       ; 2 uses
  %i.aze = fcmp ole double %i.ayr, %i.azd
  %i.azf = select i1 %i.aze, double %i.ayr, double %i.azd ; 3 uses
  store double %i.azf, ptr %i.o, align 8, !tbaa !107
  %i.azg = insertelement <2 x double> poison, double %i.azf, i64 0
  %i.azh = shufflevector <2 x double> %i.azg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.azi = fmul <2 x double> %i.axm, %i.azh
  %i.azj = fmul <2 x double> %i.lm, %i.azi        ; 2 uses
  %i.azk = fmul <2 x double> %i.axn, %i.azh
  %i.azl = fmul double %i.axo, %i.azf
  %i.azm = select <2 x i1> %i.axy, <2 x double> %i.azj, <2 x double> %i.azk ; 2 uses
  %i.azn = extractelement <2 x double> %i.azm, i64 0 ; 2 uses
  store double %i.azn, ptr %i.n, align 8, !tbaa !107
  %i.azo = extractelement <2 x i1> %i.axy, i64 1
  %i.azp = extractelement <2 x double> %i.azj, i64 1
  %.sink2555 = select i1 %i.azo, double %i.azp, double %i.azl
  store double %.sink2555, ptr %i.s, align 8, !tbaa !107
  br label %.thread2428

.thread2428:                                      ; preds = %.thread2428.sink.split, %.thread2427
  %i.azq = phi double [ %i.axp, %.thread2427 ], [ %i.azn, %.thread2428.sink.split ] ; 5 uses
  %i.azr = phi <2 x double> [ %i.axn, %.thread2427 ], [ %i.azm, %.thread2428.sink.split ] ; 12 uses
  %i.azs = fcmp oge <2 x double> %i.azr, zeroinitializer
  %i.azt = fneg <2 x double> %i.azr
  %i.azu = select <2 x i1> %i.azs, <2 x double> %i.azr, <2 x double> %i.azt ; 5 uses
  %i.azv = load i32, ptr %3, align 4, !tbaa !105
  %i.azw = shl i32 %i.azv, 1
  %i.azx = sext i32 %i.azw to i64                 ; 3 uses
  %i.azy = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2292
  %i.azz = getelementptr [8 x i8], ptr %i.azy, i64 %i.azx
  store double 1.000000e+00, ptr %i.azz, align 8, !tbaa !107
  %i.baa = trunc i64 %indvars.iv2292 to i32
  %i.bab = add i32 %i.baa, -1
  store i32 %i.bab, ptr %i.e, align 4, !tbaa !105
  %.not1518.not1850 = icmp sgt i64 %indvars.iv2292, 1
  br i1 %.not1518.not1850, label %iter.check3190, label %.loopexit1680

iter.check3190:                                   ; preds = %.thread2428
  %invariant.gep2495 = getelementptr [8 x i8], ptr %i.ad, i64 %i.aws ; 7 uses
  %invariant.gep2497 = getelementptr [8 x i8], ptr %i.aa, i64 %i.awi ; 7 uses
  %invariant.gep2499 = getelementptr [8 x i8], ptr %i.ak, i64 %i.azx ; 7 uses
  %min.iters.check3164 = icmp ult i64 %17, 4
  br i1 %min.iters.check3164, label %.lr.ph1853.preheader, label %vector.memcheck3165

vector.memcheck3165:                              ; preds = %iter.check3190
  %i.bac = mul i64 %indvar3060, %i.asn
  %i.bad = add i64 %i.ast, %i.bac
  %i.bae = shl nsw i64 %i.azx, 3                  ; 2 uses
  %i.baf = add i64 %i.bad, %i.bae
  %i.bag = add i64 %i.baf, -1
  %diff.check3166 = icmp ult i64 %i.bag, 127
  %i.bah = mul i64 %indvar3060, %i.asg
  %i.bai = add i64 %i.asm, %i.bah
  %i.baj = add i64 %i.bai, %i.bae
  %i.bak = add i64 %i.baj, -1
  %diff.check3167 = icmp ult i64 %i.bak, 127
  %conflict.rdx3168 = or i1 %diff.check3166, %diff.check3167
  br i1 %conflict.rdx3168, label %.lr.ph1853.preheader, label %vector.main.loop.iter.check3169

vector.main.loop.iter.check3169:                  ; preds = %vector.memcheck3165
  %min.iters.check3170 = icmp ult i64 %17, 16
  br i1 %min.iters.check3170, label %vec.epilog.ph3194, label %vector.ph3171

vector.ph3171:                                    ; preds = %vector.main.loop.iter.check3169
  %i.bal = and i64 %17, 12
  %n.vec3172 = and i64 %17, -16                   ; 4 uses
  %i.bam = or disjoint i64 %n.vec3172, 1
  %broadcast.splat3174 = shufflevector <2 x double> %i.azr, <2 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat3176 = shufflevector <2 x double> %i.azr, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %vector.body3177

vector.body3177:                                  ; preds = %vector.ph3171, %vector.body3177
  %index3178 = phi i64 [ 0, %vector.ph3171 ], [ %index.next3187, %vector.body3177 ] ; 2 uses
  %i.ban = or disjoint i64 %index3178, 1          ; 3 uses
  %i.bao = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %i.ban ; 4 uses
  %i.bap = getelementptr i8, ptr %i.bao, i64 32
  %i.baq = getelementptr i8, ptr %i.bao, i64 64
  %i.bar = getelementptr i8, ptr %i.bao, i64 96
  %wide.load3179 = load <4 x double>, ptr %i.bao, align 8, !tbaa !107
  %wide.load3180 = load <4 x double>, ptr %i.bap, align 8, !tbaa !107
  %wide.load3181 = load <4 x double>, ptr %i.baq, align 8, !tbaa !107
  %wide.load3182 = load <4 x double>, ptr %i.bar, align 8, !tbaa !107
  %i.bas = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %i.ban ; 4 uses
  %i.bat = getelementptr i8, ptr %i.bas, i64 32
  %i.bau = getelementptr i8, ptr %i.bas, i64 64
  %i.bav = getelementptr i8, ptr %i.bas, i64 96
  %wide.load3183 = load <4 x double>, ptr %i.bas, align 8, !tbaa !107
  %wide.load3184 = load <4 x double>, ptr %i.bat, align 8, !tbaa !107
  %wide.load3185 = load <4 x double>, ptr %i.bau, align 8, !tbaa !107
  %wide.load3186 = load <4 x double>, ptr %i.bav, align 8, !tbaa !107
  %i.baw = fneg <4 x double> %wide.load3183
  %i.bax = fneg <4 x double> %wide.load3184
  %i.bay = fneg <4 x double> %wide.load3185
  %i.baz = fneg <4 x double> %wide.load3186
  %i.bba = fmul <4 x double> %broadcast.splat3174, %i.baw
  %i.bbb = fmul <4 x double> %broadcast.splat3174, %i.bax
  %i.bbc = fmul <4 x double> %broadcast.splat3174, %i.bay
  %i.bbd = fmul <4 x double> %broadcast.splat3174, %i.baz
  %i.bbe = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3176, <4 x double> %wide.load3179, <4 x double> %i.bba)
  %i.bbf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3176, <4 x double> %wide.load3180, <4 x double> %i.bbb)
  %i.bbg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3176, <4 x double> %wide.load3181, <4 x double> %i.bbc)
  %i.bbh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3176, <4 x double> %wide.load3182, <4 x double> %i.bbd)
  %i.bbi = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %i.ban ; 4 uses
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 32
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 64
  %i.bbl = getelementptr i8, ptr %i.bbi, i64 96
  store <4 x double> %i.bbe, ptr %i.bbi, align 8, !tbaa !107
  store <4 x double> %i.bbf, ptr %i.bbj, align 8, !tbaa !107
  store <4 x double> %i.bbg, ptr %i.bbk, align 8, !tbaa !107
  store <4 x double> %i.bbh, ptr %i.bbl, align 8, !tbaa !107
  %index.next3187 = add nuw i64 %index3178, 16    ; 2 uses
  %i.bbm = icmp eq i64 %index.next3187, %n.vec3172
  br i1 %i.bbm, label %middle.block3188, label %vector.body3177, !llvm.loop !38

middle.block3188:                                 ; preds = %vector.body3177
  %cmp.n3189 = icmp eq i64 %17, %n.vec3172
  br i1 %cmp.n3189, label %.loopexit1680, label %vec.epilog.iter.check3191

vec.epilog.iter.check3191:                        ; preds = %middle.block3188
  %min.epilog.iters.check3193 = icmp eq i64 %i.bal, 0
  br i1 %min.epilog.iters.check3193, label %.lr.ph1853.preheader, label %vec.epilog.ph3194, !prof !112

vec.epilog.ph3194:                                ; preds = %vector.main.loop.iter.check3169, %vec.epilog.iter.check3191
  %vec.epilog.resume.val3195 = phi i64 [ %n.vec3172, %vec.epilog.iter.check3191 ], [ 0, %vector.main.loop.iter.check3169 ]
  %n.vec3196 = and i64 %17, -4                    ; 3 uses
  %i.bbn = or disjoint i64 %n.vec3196, 1
  %broadcast.splat3198 = shufflevector <2 x double> %i.azr, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat3200 = shufflevector <2 x double> %i.azr, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body3201

vec.epilog.vector.body3201:                       ; preds = %vec.epilog.vector.body3201, %vec.epilog.ph3194
  %index3202 = phi i64 [ %vec.epilog.resume.val3195, %vec.epilog.ph3194 ], [ %index.next3205, %vec.epilog.vector.body3201 ] ; 2 uses
  %i.bbo = or disjoint i64 %index3202, 1          ; 3 uses
  %i.bbp = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %i.bbo
  %wide.load3203 = load <4 x double>, ptr %i.bbp, align 8, !tbaa !107
  %i.bbq = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %i.bbo
  %wide.load3204 = load <4 x double>, ptr %i.bbq, align 8, !tbaa !107
  %i.bbr = fneg <4 x double> %wide.load3204
  %i.bbs = fmul <4 x double> %broadcast.splat3198, %i.bbr
  %i.bbt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3200, <4 x double> %wide.load3203, <4 x double> %i.bbs)
  %i.bbu = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %i.bbo
  store <4 x double> %i.bbt, ptr %i.bbu, align 8, !tbaa !107
  %index.next3205 = add nuw i64 %index3202, 4     ; 2 uses
  %i.bbv = icmp eq i64 %index.next3205, %n.vec3196
  br i1 %i.bbv, label %vec.epilog.middle.block3206, label %vec.epilog.vector.body3201, !llvm.loop !39

vec.epilog.middle.block3206:                      ; preds = %vec.epilog.vector.body3201
  %cmp.n3207 = icmp eq i64 %17, %n.vec3196
  br i1 %cmp.n3207, label %.loopexit1680, label %.lr.ph1853.preheader

.lr.ph1853.preheader:                             ; preds = %iter.check3190, %vector.memcheck3165, %vec.epilog.iter.check3191, %vec.epilog.middle.block3206
  %indvars.iv2142.ph = phi i64 [ 1, %iter.check3190 ], [ 1, %vector.memcheck3165 ], [ %i.bam, %vec.epilog.iter.check3191 ], [ %i.bbn, %vec.epilog.middle.block3206 ] ; 4 uses
  %i.bbw = sub i64 %indvars.iv2292, %indvars.iv2142.ph
  %i.bbx = sub i64 %17, %indvars.iv2142.ph
  %xtraiter3418 = and i64 %i.bbw, 3               ; 2 uses
  %lcmp.mod3419.not = icmp eq i64 %xtraiter3418, 0
  br i1 %lcmp.mod3419.not, label %.lr.ph1853.prol.loopexit, label %.lr.ph1853.prol.preheader

.lr.ph1853.prol.preheader:                        ; preds = %.lr.ph1853.preheader
  %i.bby = extractelement <2 x double> %i.azr, i64 1
  br label %.lr.ph1853.prol

.lr.ph1853.prol:                                  ; preds = %.lr.ph1853.prol, %.lr.ph1853.prol.preheader
  %indvars.iv2142.prol = phi i64 [ %indvars.iv.next2143.prol, %.lr.ph1853.prol ], [ %indvars.iv2142.ph, %.lr.ph1853.prol.preheader ] ; 4 uses
  %prol.iter3420 = phi i64 [ %prol.iter3420.next, %.lr.ph1853.prol ], [ 0, %.lr.ph1853.prol.preheader ]
  %gep2496.prol = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %indvars.iv2142.prol
  %i.bbz = load double, ptr %gep2496.prol, align 8, !tbaa !107
  %gep2498.prol = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %indvars.iv2142.prol
  %i.bca = load double, ptr %gep2498.prol, align 8, !tbaa !107
  %i.bcb = fneg double %i.bca
  %i.bcc = fmul double %i.azq, %i.bcb
  %i.bcd = call double @llvm.fmuladd.f64(double %i.bby, double %i.bbz, double %i.bcc)
  %gep2500.prol = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %indvars.iv2142.prol
  store double %i.bcd, ptr %gep2500.prol, align 8, !tbaa !107
  %indvars.iv.next2143.prol = add nuw nsw i64 %indvars.iv2142.prol, 1 ; 2 uses
  %prol.iter3420.next = add i64 %prol.iter3420, 1 ; 2 uses
  %prol.iter3420.cmp.not = icmp eq i64 %prol.iter3420.next, %xtraiter3418
  br i1 %prol.iter3420.cmp.not, label %.lr.ph1853.prol.loopexit, label %.lr.ph1853.prol, !llvm.loop !40

.lr.ph1853.prol.loopexit:                         ; preds = %.lr.ph1853.prol, %.lr.ph1853.preheader
  %indvars.iv2142.unr = phi i64 [ %indvars.iv2142.ph, %.lr.ph1853.preheader ], [ %indvars.iv.next2143.prol, %.lr.ph1853.prol ]
  %i.bce = icmp ult i64 %i.bbx, 3
  br i1 %i.bce, label %.loopexit1680, label %.lr.ph1853.preheader.new

.lr.ph1853.preheader.new:                         ; preds = %.lr.ph1853.prol.loopexit
  %i.bcf = extractelement <2 x double> %i.azr, i64 1
  %i.bcg = extractelement <2 x double> %i.azr, i64 1
  %i.bch = extractelement <2 x double> %i.azr, i64 1
  %i.bci = extractelement <2 x double> %i.azr, i64 1
  br label %.lr.ph1853

.lr.ph1853:                                       ; preds = %.lr.ph1853, %.lr.ph1853.preheader.new
  %indvars.iv2142 = phi i64 [ %indvars.iv2142.unr, %.lr.ph1853.preheader.new ], [ %indvars.iv.next2143.3, %.lr.ph1853 ] ; 7 uses
  %gep2496 = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %indvars.iv2142
  %i.bcj = load double, ptr %gep2496, align 8, !tbaa !107
  %gep2498 = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %indvars.iv2142
  %i.bck = load double, ptr %gep2498, align 8, !tbaa !107
  %i.bcl = fneg double %i.bck
  %i.bcm = fmul double %i.azq, %i.bcl
  %i.bcn = call double @llvm.fmuladd.f64(double %i.bcf, double %i.bcj, double %i.bcm)
  %gep2500 = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %indvars.iv2142
  store double %i.bcn, ptr %gep2500, align 8, !tbaa !107
  %indvars.iv.next2143 = add nuw nsw i64 %indvars.iv2142, 1 ; 3 uses
  %gep2496.1 = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %indvars.iv.next2143
  %i.bco = load double, ptr %gep2496.1, align 8, !tbaa !107
  %gep2498.1 = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %indvars.iv.next2143
  %i.bcp = load double, ptr %gep2498.1, align 8, !tbaa !107
  %i.bcq = fneg double %i.bcp
  %i.bcr = fmul double %i.azq, %i.bcq
  %i.bcs = call double @llvm.fmuladd.f64(double %i.bcg, double %i.bco, double %i.bcr)
  %gep2500.1 = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %indvars.iv.next2143
  store double %i.bcs, ptr %gep2500.1, align 8, !tbaa !107
  %indvars.iv.next2143.1 = add nuw nsw i64 %indvars.iv2142, 2 ; 3 uses
  %gep2496.2 = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %indvars.iv.next2143.1
  %i.bct = load double, ptr %gep2496.2, align 8, !tbaa !107
  %gep2498.2 = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %indvars.iv.next2143.1
  %i.bcu = load double, ptr %gep2498.2, align 8, !tbaa !107
  %i.bcv = fneg double %i.bcu
  %i.bcw = fmul double %i.azq, %i.bcv
  %i.bcx = call double @llvm.fmuladd.f64(double %i.bch, double %i.bct, double %i.bcw)
  %gep2500.2 = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %indvars.iv.next2143.1
  store double %i.bcx, ptr %gep2500.2, align 8, !tbaa !107
  %indvars.iv.next2143.2 = add nuw nsw i64 %indvars.iv2142, 3 ; 3 uses
  %gep2496.3 = getelementptr [8 x i8], ptr %invariant.gep2495, i64 %indvars.iv.next2143.2
  %i.bcy = load double, ptr %gep2496.3, align 8, !tbaa !107
  %gep2498.3 = getelementptr [8 x i8], ptr %invariant.gep2497, i64 %indvars.iv.next2143.2
  %i.bcz = load double, ptr %gep2498.3, align 8, !tbaa !107
  %i.bda = fneg double %i.bcz
  %i.bdb = fmul double %i.azq, %i.bda
  %i.bdc = call double @llvm.fmuladd.f64(double %i.bci, double %i.bcy, double %i.bdb)
  %gep2500.3 = getelementptr [8 x i8], ptr %invariant.gep2499, i64 %indvars.iv.next2143.2
  store double %i.bdc, ptr %gep2500.3, align 8, !tbaa !107
  %indvars.iv.next2143.3 = add nuw nsw i64 %indvars.iv2142, 4 ; 2 uses
  %exitcond2147.not.3 = icmp eq i64 %indvars.iv.next2143.3, %indvars.iv2292
  br i1 %exitcond2147.not.3, label %.loopexit1680, label %.lr.ph1853, !llvm.loop !41

bb.cx:                                            ; preds = %._crit_edge1845.split
  %i.bdd = fmul double %i.aun, 1.000000e+02
  store double %i.bdd, ptr %i.g, align 8, !tbaa !107
  %i.bde = add nsw i64 %indvars.iv2292, -1        ; 6 uses
  %i.bdf = add nsw i32 %indvars2299, -1           ; 2 uses
  %i.bdg = mul nsw i64 %i.bde, %i.arv
  %i.bdh = mul nsw i32 %i.bdf, %i.y
  %i.bdi = sext i32 %i.bdh to i64                 ; 2 uses
  %i.bdj = getelementptr [8 x i8], ptr %i.aa, i64 %i.bde
  %i.bdk = getelementptr [8 x i8], ptr %i.bdj, i64 %i.bdi ; 2 uses
  %i.bdl = mul nsw i64 %i.bde, %i.aru
  %i.bdm = mul nsw i32 %i.bdf, %i.ab
  %i.bdn = sext i32 %i.bdm to i64
  %i.bdo = getelementptr [8 x i8], ptr %i.ad, i64 %i.bde
  %i.bdp = getelementptr [8 x i8], ptr %i.bdo, i64 %i.bdn ; 3 uses
  call void @dlag2_(ptr noundef nonnull %i.bdk, ptr noundef nonnull %5, ptr noundef nonnull %i.bdp, ptr noundef nonnull %7, ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.i, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #6
  %i.bdq = load double, ptr %i.r, align 8, !tbaa !107 ; 6 uses
  %i.bdr = fcmp oeq double %i.bdq, 0.000000e+00
  br i1 %i.bdr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.bds = trunc nuw nsw i64 %i.bde to i32
  store i32 %i.bds, ptr %15, align 4, !tbaa !105
  br label %.loopexit1682

bb.cz:                                            ; preds = %bb.cx
  %i.bdt = load double, ptr %i.n, align 8, !tbaa !107 ; 5 uses
  %i.bdu = fcmp oge double %i.bdt, 0.000000e+00
  %i.bdv = fneg double %i.bdt
  %i.bdw = select i1 %i.bdu, double %i.bdt, double %i.bdv ; 5 uses
  %i.bdx = load double, ptr %i.s, align 8, !tbaa !107 ; 5 uses
  %i.bdy = fcmp oge double %i.bdx, 0.000000e+00
  %i.bdz = fneg double %i.bdx
  %i.bea = select i1 %i.bdy, double %i.bdx, double %i.bdz
  %i.beb = fcmp oge double %i.bdq, 0.000000e+00
  %i.bec = fneg double %i.bdq                     ; 2 uses
  %i.bed = select i1 %i.beb, double %i.bdq, double %i.bec
  %i.bee = fadd double %i.bed, %i.bea             ; 5 uses
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !107
  %i.bef = fmul double %i.et, %i.bdw
  %i.beg = load double, ptr %i.u, align 8, !tbaa !107 ; 12 uses
  %i.beh = fcmp uge double %i.bef, %i.beg
  %i.bei = fcmp ult double %i.bdw, %i.beg
  %or.cond1582 = or i1 %i.beh, %i.bei
  br i1 %or.cond1582, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bej = fdiv double %i.beg, %i.et
  %i.bek = fdiv double %i.bej, %i.bdw             ; 2 uses
  store double %i.bek, ptr %i.o, align 8, !tbaa !107
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.bel = phi double [ %i.bek, %bb.da ], [ 1.000000e+00, %bb.cz ] ; 3 uses
  %i.bem = fmul double %i.et, %i.bee
  %i.ben = fcmp uge double %i.bem, %i.beg
  %i.beo = fcmp ult double %i.bee, %i.beg
  %or.cond1583 = or i1 %i.beo, %i.ben
  br i1 %or.cond1583, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bep = fdiv double %i.beg, %i.et
  %i.beq = fdiv double %i.bep, %i.bee             ; 2 uses
  %i.ber = fcmp oge double %i.bel, %i.beq
  %i.bes = select i1 %i.ber, double %i.bel, double %i.beq ; 2 uses
  store double %i.bes, ptr %i.o, align 8, !tbaa !107
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pr16622308 = phi double [ %i.bes, %bb.dc ], [ %i.bel, %bb.db ]
  %i.bet = fmul double %i.bdw, %i.beg             ; 2 uses
  %i.beu = fcmp ogt double %i.bet, %i.atq
  br i1 %i.beu, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.bev = fdiv double %i.atq, %i.bet             ; 2 uses
  store double %i.bev, ptr %i.o, align 8, !tbaa !107
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.bew = phi double [ %i.bev, %bb.de ], [ %.pr16622308, %bb.dd ] ; 4 uses
  %i.bex = fmul double %i.beg, %i.bee             ; 2 uses
  %i.bey = fcmp ogt double %i.bex, %i.atr
  br i1 %i.bey, label %bb.dg, label %thread-pre-split1661

bb.dg:                                            ; preds = %bb.df
  store double %i.bew, ptr %i.g, align 8, !tbaa !107
  %i.bez = fdiv double %i.atr, %i.bex             ; 2 uses
  %i.bfa = fcmp ole double %i.bew, %i.bez
  %i.bfb = select i1 %i.bfa, double %i.bew, double %i.bez ; 2 uses
  store double %i.bfb, ptr %i.o, align 8, !tbaa !107
  br label %thread-pre-split1661

thread-pre-split1661:                             ; preds = %bb.df, %bb.dg
  %i.bfc = phi double [ %i.bfb, %bb.dg ], [ %i.bew, %bb.df ] ; 4 uses
  %i.bfd = fcmp une double %i.bfc, 1.000000e+00
  %i.bfe = insertelement <2 x double> poison, double %i.bdw, i64 0
  %i.bff = insertelement <2 x double> %i.bfe, double %i.bee, i64 1
  br i1 %i.bfd, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %thread-pre-split1661
  %i.bfg = fmul double %i.bdt, %i.bfc             ; 5 uses
  store double %i.bfg, ptr %i.n, align 8, !tbaa !107
  %i.bfh = fcmp oge double %i.bfg, 0.000000e+00
  %i.bfi = fneg double %i.bfg
  %i.bfj = select i1 %i.bfh, double %i.bfg, double %i.bfi
  %i.bfk = fmul double %i.bdx, %i.bfc             ; 5 uses
  store double %i.bfk, ptr %i.s, align 8, !tbaa !107
  %i.bfl = fmul double %i.bdq, %i.bfc             ; 5 uses
  store double %i.bfl, ptr %i.r, align 8, !tbaa !107
  %i.bfm = fcmp oge double %i.bfk, 0.000000e+00
  %i.bfn = fneg double %i.bfk
  %i.bfo = select i1 %i.bfm, double %i.bfk, double %i.bfn
  %i.bfp = fcmp oge double %i.bfl, 0.000000e+00
  %i.bfq = fneg double %i.bfl                     ; 2 uses
  %i.bfr = select i1 %i.bfp, double %i.bfl, double %i.bfq
  %i.bfs = fadd double %i.bfo, %i.bfr
  %i.bft = insertelement <2 x double> poison, double %i.bfj, i64 0
end_hunk_0
begin_hunk_1_@dtgevc_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlag2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dlaln2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v2f64.p0(<2 x double>, ptr captures(none), <2 x i1>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f64(<4 x double>, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !108}
!9 = distinct !{!9, !108}
!10 = distinct !{!10, !108}
!11 = distinct !{!11, !109}
!12 = distinct !{!12, !109}
!13 = distinct !{!13, !108}
!14 = distinct !{!14, !108}
!15 = distinct !{!15, !108, !110, !111}
!16 = distinct !{!16, !108, !110, !111}
!17 = distinct !{!17, !108, !111, !110}
!18 = distinct !{!18, !108}
!19 = distinct !{!19, !109}
!20 = distinct !{!20, !108}
!21 = distinct !{!21, !108}
!22 = distinct !{!22, !109}
!23 = distinct !{!23, !108, !110, !111}
!24 = distinct !{!24, !108, !110, !111}
!25 = distinct !{!25, !108, !111, !110}
!26 = distinct !{!26, !108}
!27 = distinct !{!27, !108}
!28 = distinct !{!28, !108}
!29 = distinct !{!29, !108, !110, !111}
!30 = distinct !{!30, !108, !111, !110}
!31 = distinct !{!31, !108, !110, !111}
!32 = distinct !{!32, !108, !111, !110}
!33 = distinct !{!33, !108, !110, !111}
!34 = distinct !{!34, !108, !110, !111}
!35 = distinct !{!35, !108, !111, !110}
!36 = distinct !{!36, !108}
!37 = distinct !{!37, !108}
!38 = distinct !{!38, !108, !110, !111}
!39 = distinct !{!39, !108, !110, !111}
!40 = distinct !{!40, !109}
!41 = distinct !{!41, !108, !110}
!42 = distinct !{!42, i1 false, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !108, !110, !111}
!50 = distinct !{!50, !108, !110}
!51 = distinct !{!51, !108, !110, !111}
!52 = distinct !{!52, !108, !110, !111}
!53 = distinct !{!53, !108, !111, !110}
!54 = distinct !{!54, !108}
!55 = distinct !{!55, !108, !110, !111}
!56 = distinct !{!56, !108, !110, !111}
!57 = distinct !{!57, !109}
!58 = distinct !{!58, !108, !110}
!59 = distinct !{!59, !108}
!60 = distinct !{!60, !108, !110, !111}
!61 = distinct !{!61, !108, !110, !111}
!62 = distinct !{!62, !108, !111, !110}
!63 = distinct !{!63, !108}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !108, !110, !111}
!69 = distinct !{!69, !108, !110, !111}
!70 = distinct !{!70, !108, !110}
!71 = distinct !{!71, !108}
!72 = distinct !{!72, i1 false, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !108, !110, !111}
!78 = distinct !{!78, !108, !110}
!79 = distinct !{!79, !108}
!80 = distinct !{!80, !109}
!81 = distinct !{!81, !108}
!82 = distinct !{!82, !108}
!83 = distinct !{!83, !109}
!84 = distinct !{!84, !108}
!85 = distinct !{!85, !108}
!86 = distinct !{!86, !108, !110, !111}
!87 = distinct !{!87, !108, !110, !111}
!88 = distinct !{!88, !109}
!89 = distinct !{!89, !108, !110}
!90 = distinct !{!90, !108}
!91 = distinct !{!91, !108, !110, !111}
!92 = distinct !{!92, !108, !110, !111}
!93 = distinct !{!93, !109}
!94 = distinct !{!94, !108, !110}
!95 = distinct !{!95, !108}
!96 = distinct !{!96, !108, !110, !111}
!97 = distinct !{!97, !108, !111, !110}
!98 = distinct !{!98, !108, !110, !111}
!99 = distinct !{!99, !108, !111, !110}
!100 = distinct !{!100, !108, !110, !111}
!101 = distinct !{!101, !108, !110, !111}
!102 = distinct !{!102, !108, !111, !110}
!103 = distinct !{!103, !108}
!104 = distinct !{!104, !108}
!105 = !{!5, !5, i64 0}
!106 = !{!"double", !4, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = !{!43}
!114 = !{!44}
!115 = !{!45}
!116 = !{!46}
!117 = !{!47}
!118 = !{!48, !45, !43, !46, !44}
!119 = !{!48}
!120 = !{!45, !43, !46, !44}
!121 = !{!65}
!122 = !{!67, !66}
!123 = !{!67}
!124 = !{!66}
!125 = !{!73}
!126 = !{!76, !75, !74}
!127 = !{!75}
!128 = !{!74}
!129 = !{!76}
!130 = !{!75, !74}
end_hunk_1
