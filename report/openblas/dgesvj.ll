Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgesvj?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dgesvj_:bb.a
bb.eb:                                            ; preds = %bb.ea
  %i.anu = fcmp olt double %i.anr, %i.bw
  %i.anv = fcmp ogt double %i.anr, %i.bt
  %or.cond1686 = and i1 %i.anu, %i.anv
  br i1 %or.cond1686, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.anw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.anx = mul nsw i32 %i.anw, %i.u
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr [8 x i8], ptr %i.w, i64 %i.any
  %i.aoa = getelementptr i8, ptr %i.anz, i64 8
  %i.aob = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.aoa, ptr noundef nonnull @c__1) #7
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !45
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !45
  %i.aoc = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aod = mul nsw i32 %i.aoc, %i.u
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = getelementptr [8 x i8], ptr %i.w, i64 %i.aoe
  %i.aog = getelementptr i8, ptr %i.aof, i64 8
  call void @dlassq_(ptr noundef nonnull %3, ptr noundef %i.aog, ptr noundef nonnull @c__1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #7
  %i.aoh = load double, ptr %i.k, align 8, !tbaa !45
  %i.aoi = load double, ptr %i.f, align 8, !tbaa !45
  %i.aoj = call double @sqrt(double noundef %i.aoi) #7
  %i.aok = fmul double %i.aoh, %i.aoj
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink2086 = phi double [ %i.aok, %bb.ed ], [ %i.aob, %bb.ec ]
  %i.aol = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aom = sext i32 %i.aol to i64                 ; 2 uses
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aom
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !45
  %i.aop = fmul double %.sink2086, %i.aoo         ; 2 uses
  store double %i.aop, ptr %i.f, align 8, !tbaa !45
  %i.aoq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aom
  store double %i.aop, ptr %i.aoq, align 8, !tbaa !45
  br label %bb.eh

bb.ef:                                            ; preds = %bb.db
  %spec.select1687 = add nsw i32 %.31476, %i.tw
  %i.aor = add nsw i32 %.01544, 1
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ct
  %spec.select1688 = add nsw i32 %.31476, %i.tw
  %i.aos = add nsw i32 %.01544, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.ee, %bb.ea, %bb.eg
  %.21546 = phi i32 [ %.11545, %bb.ee ], [ %.11545, %bb.ea ], [ %i.aor, %bb.ef ], [ %i.aos, %bb.eg ] ; 2 uses
  %.51513 = phi double [ %i.aan, %bb.ee ], [ %i.aan, %bb.ea ], [ %i.aan, %bb.ef ], [ %.41512, %bb.eg ] ; 3 uses
  %.61495 = phi double [ %.51494, %bb.ee ], [ %.51494, %bb.ea ], [ %.41493, %bb.ef ], [ %.41493, %bb.eg ] ; 3 uses
  %.71480 = phi i32 [ %.41477, %bb.ee ], [ %.41477, %bb.ea ], [ %spec.select1687, %bb.ef ], [ %spec.select1688, %bb.eg ]
  %.51471 = phi i32 [ %.41470, %bb.ee ], [ %.41470, %bb.ea ], [ %.31469, %bb.ef ], [ %.31469, %bb.eg ] ; 3 uses
  %i.aot = icmp sgt i32 %.21546, %i.mv
  %or.cond1689 = select i1 %.not1675, i1 %i.aot, i1 false
  br i1 %or.cond1689, label %bb.ei, label %bb.cs, !llvm.loop !26

bb.ei:                                            ; preds = %bb.eh
  %.pre1980 = load double, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  br i1 %i.tv, label %bb.ej, label %.loopexit1719

bb.ej:                                            ; preds = %bb.ei
  %i.aou = fneg double %.pre1980                  ; 2 uses
  store double %i.aou, ptr %i.f, align 8, !tbaa !45
  br label %.loopexit1719

.loopexit1719.loopexit:                           ; preds = %bb.cs
  %.pre1979 = load double, ptr %i.f, align 8, !tbaa !45
  br label %.loopexit1719

.loopexit1719:                                    ; preds = %.loopexit1719.loopexit, %bb.ei, %bb.ej
  %i.aov = phi double [ %.pre1980, %bb.ei ], [ %i.aou, %bb.ej ], [ %.pre1979, %.loopexit1719.loopexit ]
  %.61514 = phi double [ %.51513, %bb.ei ], [ %.51513, %bb.ej ], [ %.41512, %.loopexit1719.loopexit ]
  %.71496 = phi double [ %.61495, %bb.ei ], [ %.61495, %bb.ej ], [ %.41493, %.loopexit1719.loopexit ]
  %.81481 = phi i32 [ 0, %bb.ei ], [ 0, %bb.ej ], [ %.31476, %.loopexit1719.loopexit ]
  %.61472 = phi i32 [ %.51471, %bb.ei ], [ %.51471, %bb.ej ], [ %.31469, %.loopexit1719.loopexit ]
  %i.aow = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aox
  store double %i.aov, ptr %i.aoy, align 8, !tbaa !45
  br label %bb.em

bb.ek:                                            ; preds = %._crit_edge1977
  %storemerge1669.in = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pn.pre-phi
  store double %storemerge1669, ptr %storemerge1669.in, align 8, !tbaa !45
  %i.aoz = fcmp oeq double %storemerge1669, 0.000000e+00
  %or.cond19 = and i1 %i.tv, %i.aoz
  br i1 %or.cond19, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 %i.tr, ptr %i.d, align 4, !tbaa !43
  %i.apa = load i32, ptr %4, align 4, !tbaa !43
  %.1690 = call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.apa)
  %i.apb = sub i32 %.214751797, %i.wg
  %i.apc = add i32 %i.apb, %.1690
  br label %bb.em

bb.em:                                            ; preds = %.loopexit1719, %bb.el, %bb.ek
  %i.apd = phi i32 [ %i.aow, %.loopexit1719 ], [ %i.wg, %bb.el ], [ %i.wg, %bb.ek ] ; 2 uses
  %.71515 = phi double [ %.61514, %.loopexit1719 ], [ %.315111795, %bb.el ], [ %.315111795, %bb.ek ] ; 2 uses
  %.81497 = phi double [ %.71496, %.loopexit1719 ], [ %.314921796, %bb.el ], [ %.314921796, %bb.ek ] ; 2 uses
  %.91482 = phi i32 [ %.81481, %.loopexit1719 ], [ %i.apc, %bb.el ], [ %.214751797, %bb.ek ] ; 2 uses
  %.7 = phi i32 [ %.61472, %.loopexit1719 ], [ %.214681798, %bb.el ], [ %.214681798, %bb.ek ] ; 2 uses
  %i.ape = add nsw i32 %i.apd, 1                  ; 2 uses
  store i32 %i.ape, ptr %i.j, align 4, !tbaa !43
  %i.apf = load i32, ptr %i.c, align 4, !tbaa !43
  %.not1667.not = icmp slt i32 %i.apd, %i.apf
  br i1 %.not1667.not, label %bb.cj, label %._crit_edge1801.loopexit, !llvm.loop !27

._crit_edge1801.loopexit:                         ; preds = %bb.em
  %.pre1981 = load i32, ptr %i.b, align 4, !tbaa !43
  br label %._crit_edge1801

._crit_edge1801:                                  ; preds = %._crit_edge1801.loopexit, %.lr.ph1814
  %i.apg = phi i32 [ %i.to, %.lr.ph1814 ], [ %.pre1981, %._crit_edge1801.loopexit ] ; 2 uses
  %.31511.lcssa = phi double [ %.215101807, %.lr.ph1814 ], [ %.71515, %._crit_edge1801.loopexit ] ; 2 uses
  %.31492.lcssa = phi double [ %.214911808, %.lr.ph1814 ], [ %.81497, %._crit_edge1801.loopexit ] ; 2 uses
  %.21475.lcssa = phi i32 [ %.114741810, %.lr.ph1814 ], [ %.91482, %._crit_edge1801.loopexit ] ; 2 uses
  %.21468.lcssa = phi i32 [ %.114671811, %.lr.ph1814 ], [ %.7, %._crit_edge1801.loopexit ] ; 2 uses
  %i.aph = add nuw nsw i32 %.014881809, 1
  %.not1651.not = icmp slt i32 %.014881809, %i.apg
  br i1 %.not1651.not, label %.lr.ph1814, label %._crit_edge1815, !llvm.loop !28

._crit_edge1815:                                  ; preds = %._crit_edge1801, %bb.ci
  %.21510.lcssa = phi double [ %.115091870, %bb.ci ], [ %.31511.lcssa, %._crit_edge1801 ] ; 2 uses
  %.21491.lcssa = phi double [ %.114901871, %bb.ci ], [ %.31492.lcssa, %._crit_edge1801 ] ; 2 uses
  %.11474.lcssa = phi i32 [ %.014731872, %bb.ci ], [ %.21475.lcssa, %._crit_edge1801 ] ; 2 uses
  %.11467.lcssa = phi i32 [ %.014661873, %bb.ci ], [ %.21468.lcssa, %._crit_edge1801 ] ; 2 uses
  store i32 %.01462, ptr %i.b, align 4, !tbaa !43
  %i.api = add nuw nsw i32 %.014631874, 1         ; 2 uses
  %.not16521851.not = icmp slt i32 %.014631874, %.01462
  %i.apj = mul i32 %.014631874, %spec.select      ; 4 uses
  br i1 %.not16521851.not, label %.lr.ph1858, label %.loopexit1721

.lr.ph1858:                                       ; preds = %._crit_edge1815, %._crit_edge1846
  %i.apk = phi i32 [ %i.bls, %._crit_edge1846 ], [ %.01462, %._crit_edge1815 ]
  %indvars.iv1957 = phi i32 [ %indvars.iv.next1958, %._crit_edge1846 ], [ %indvars.iv1955, %._crit_edge1815 ] ; 2 uses
  %.014651856 = phi i32 [ %i.blt, %._crit_edge1846 ], [ %i.api, %._crit_edge1815 ] ; 4 uses
  %.81855 = phi i32 [ %.9.lcssa, %._crit_edge1846 ], [ %.11467.lcssa, %._crit_edge1815 ] ; 2 uses
  %.1014831854 = phi i32 [ %.111484.lcssa, %._crit_edge1846 ], [ %.11474.lcssa, %._crit_edge1815 ] ; 2 uses
  %.914981853 = phi double [ %.101499.lcssa, %._crit_edge1846 ], [ %.21491.lcssa, %._crit_edge1815 ] ; 2 uses
  %.815161852 = phi double [ %.91517.lcssa, %._crit_edge1846 ], [ %.21510.lcssa, %._crit_edge1815 ] ; 2 uses
  %i.apl = sext i32 %indvars.iv1957 to i64
  %i.apm = add nsw i32 %.014651856, -1
  %i.apn = mul nsw i32 %i.apm, %spec.select       ; 2 uses
  store i32 %i.apj, ptr %i.d, align 4, !tbaa !43
  %i.apo = load i32, ptr %4, align 4, !tbaa !43
  %.1691 = call i32 @llvm.smin.i32(i32 %i.apj, i32 %i.apo) ; 3 uses
  store i32 %.1691, ptr %i.c, align 4, !tbaa !43
  store i32 %i.tl, ptr %i.j, align 4, !tbaa !43
  %.not16551837.not = icmp slt i32 %i.tk, %.1691
  br i1 %.not16551837.not, label %.lr.ph1845, label %._crit_edge1846

.lr.ph1845:                                       ; preds = %.lr.ph1858
  %i.app = mul i32 %.014651856, %spec.select      ; 3 uses
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph1845, %bb.go
  %i.apq = phi i32 [ %.1691, %.lr.ph1845 ], [ %i.blp, %bb.go ]
  %.91843 = phi i32 [ %.81855, %.lr.ph1845 ], [ %.13, %bb.go ] ; 3 uses
  %.1114841842 = phi i32 [ %.1014831854, %.lr.ph1845 ], [ %.16, %bb.go ] ; 4 uses
  %.1014991841 = phi double [ %.914981853, %.lr.ph1845 ], [ %.151504, %bb.go ] ; 3 uses
  %.915171840 = phi double [ %.815161852, %.lr.ph1845 ], [ %.131521, %bb.go ] ; 3 uses
  %.015261839 = phi i32 [ 0, %.lr.ph1845 ], [ %.41530, %bb.go ] ; 3 uses
  %storemerge16541838 = phi i32 [ %i.tl, %.lr.ph1845 ], [ %i.blr, %bb.go ] ; 2 uses
  %i.apr = sext i32 %storemerge16541838 to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.apr
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !45 ; 5 uses
  store double %i.apt, ptr %i.f, align 8, !tbaa !45
  %i.apu = fcmp ogt double %i.apt, 0.000000e+00
  br i1 %i.apu, label %bb.eo, label %bb.gl

bb.eo:                                            ; preds = %bb.en
  %i.apv = load i32, ptr %4, align 4, !tbaa !43
  %.1692 = call i32 @llvm.smin.i32(i32 %i.app, i32 %i.apv) ; 2 uses
  store i32 %.1692, ptr %i.d, align 4, !tbaa !43
  %.not16581820.not = icmp slt i32 %i.apn, %.1692
  br i1 %.not16581820.not, label %.lr.ph1831, label %.loopexit1718

bb.ep:                                            ; preds = %bb.gj
  %i.apw = load i32, ptr %i.d, align 4, !tbaa !43
  %i.apx = sext i32 %i.apw to i64
  %.not1658.not = icmp slt i64 %indvars.iv.next1960, %i.apx
  br i1 %.not1658.not, label %.lr.ph1831, label %.loopexit1718.loopexit, !llvm.loop !29

.lr.ph1831:                                       ; preds = %bb.eo, %bb.ep
  %indvars.iv1959 = phi i64 [ %indvars.iv.next1960, %bb.ep ], [ %i.apl, %bb.eo ] ; 11 uses
  %.101829 = phi i32 [ %.11, %bb.ep ], [ %.91843, %bb.eo ] ; 3 uses
  %.1214851828 = phi i32 [ %.131486, %bb.ep ], [ %.1114841842, %bb.eo ] ; 2 uses
  %.1115001827 = phi double [ %.131502, %bb.ep ], [ %.1014991841, %bb.eo ] ; 10 uses
  %.1015181826 = phi double [ %.111519, %bb.ep ], [ %.915171840, %bb.eo ] ; 4 uses
  %.115271825 = phi i32 [ %.21528, %bb.ep ], [ %.015261839, %bb.eo ] ; 4 uses
  %.315471821 = phi i32 [ %.41548, %bb.ep ], [ 0, %bb.eo ] ; 2 uses
  %indvars.iv.next1960 = add nsw i64 %indvars.iv1959, 1 ; 22 uses
  %i.apy = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1959 ; 6 uses
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !45 ; 10 uses
  store double %i.apz, ptr %i.g, align 8, !tbaa !45
  %i.aqa = fcmp ogt double %i.apz, 0.000000e+00
  br i1 %i.aqa, label %bb.eq, label %bb.gg

bb.eq:                                            ; preds = %.lr.ph1831
  %i.aqb = load double, ptr %i.f, align 8, !tbaa !45 ; 9 uses
  %i.aqc = fcmp ult double %i.apz, 1.000000e+00
  %i.aqd = fcmp ult double %i.aqb, %i.apz         ; 2 uses
  br i1 %i.aqc, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aqe = fmul double %i.bu, %i.aqb
  %i.aqf = fcmp ole double %i.aqe, %i.apz
  %i.aqg = fmul double %i.bu, %i.apz
  %i.aqh = fcmp ole double %i.aqg, %i.aqb
  %.11532.in = select i1 %i.aqd, i1 %i.aqh, i1 %i.aqf ; 2 uses
  %i.aqi = fdiv double %i.bv, %i.apz
  %i.aqj = fcmp olt double %i.aqb, %i.aqi
  %i.aqk = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aql = mul nsw i32 %i.aqk, %i.u
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr [8 x i8], ptr %i.w, i64 %i.aqm
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 8    ; 2 uses
  br i1 %i.aqj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aqp = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.aqq = getelementptr [8 x i8], ptr %i.w, i64 %i.aqp
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 8
  %i.aqs = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.aqo, ptr noundef nonnull @c__1, ptr noundef %i.aqr, ptr noundef nonnull @c__1) #7
  %i.aqt = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aqu
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !45
  %i.aqx = fmul double %i.aqs, %i.aqw
  %i.aqy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !45
  %i.ara = fmul double %i.aqx, %i.aqz
  %i.arb = load double, ptr %i.g, align 8, !tbaa !45
  %i.arc = fdiv double %i.ara, %i.arb
  br label %bb.ex

bb.et:                                            ; preds = %bb.er
  %i.ard = load i32, ptr %4, align 4, !tbaa !43
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr [8 x i8], ptr %i.aa, i64 %i.are
  %i.arg = getelementptr i8, ptr %i.arf, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.aqo, ptr noundef nonnull @c__1, ptr noundef %i.arg, ptr noundef nonnull @c__1) #7
  %i.arh = load i32, ptr %i.j, align 4, !tbaa !43
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ari
  %i.ark = load i32, ptr %4, align 4, !tbaa !43
  %i.arl = sext i32 %i.ark to i64
  %i.arm = getelementptr [8 x i8], ptr %i.aa, i64 %i.arl
  %i.arn = getelementptr i8, ptr %i.arm, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.arj, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.arn, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.aro = load i32, ptr %4, align 4, !tbaa !43
  %i.arp = sext i32 %i.aro to i64
  %i.arq = getelementptr [8 x i8], ptr %i.aa, i64 %i.arp
  %i.arr = getelementptr i8, ptr %i.arq, i64 8
  %i.ars = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.art = getelementptr [8 x i8], ptr %i.w, i64 %i.ars
  %i.aru = getelementptr i8, ptr %i.art, i64 8
  %i.arv = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.arr, ptr noundef nonnull @c__1, ptr noundef %i.aru, ptr noundef nonnull @c__1) #7
  %i.arw = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !45
  %i.ary = fmul double %i.arv, %i.arx
  br label %bb.ex

bb.eu:                                            ; preds = %bb.eq
  %i.arz = insertelement <2 x double> poison, double %i.apz, i64 0
  %i.asa = insertelement <2 x double> %i.arz, double %i.aqb, i64 1
  %i.asb = fdiv <2 x double> %i.asa, %i.tf
  %14 = insertelement <2 x double> poison, double %i.aqb, i64 0
  %15 = insertelement <2 x double> %14, double %i.apz, i64 1
  %i.asc = fcmp ole <2 x double> %15, %i.asb      ; 2 uses
  %i.asd = extractelement <2 x i1> %i.asc, i64 0
  %i.ase = extractelement <2 x i1> %i.asc, i64 1
  %.21533.in = select i1 %i.aqd, i1 %i.ase, i1 %i.asd ; 2 uses
  %i.asf = fdiv double %i.bu, %i.apz
  %i.asg = fcmp ogt double %i.aqb, %i.asf
  br i1 %i.asg, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ash = load i32, ptr %i.j, align 4, !tbaa !43
  %i.asi = mul nsw i32 %i.ash, %i.u
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr [8 x i8], ptr %i.w, i64 %i.asj
  %i.asl = getelementptr i8, ptr %i.ask, i64 8
  %i.asm = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.asn = getelementptr [8 x i8], ptr %i.w, i64 %i.asm
  %i.aso = getelementptr i8, ptr %i.asn, i64 8
  %i.asp = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.asl, ptr noundef nonnull @c__1, ptr noundef %i.aso, ptr noundef nonnull @c__1) #7
  %i.asq = load i32, ptr %i.j, align 4, !tbaa !43
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.asr
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !45
  %i.asu = fmul double %i.asp, %i.ast
  %i.asv = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.asw = load double, ptr %i.asv, align 8, !tbaa !45
  %i.asx = fmul double %i.asu, %i.asw
  %i.asy = load double, ptr %i.g, align 8, !tbaa !45
  %i.asz = fdiv double %i.asx, %i.asy
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.ata = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.atb = getelementptr [8 x i8], ptr %i.w, i64 %i.ata
  %i.atc = getelementptr i8, ptr %i.atb, i64 8
  %i.atd = load i32, ptr %4, align 4, !tbaa !43
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr [8 x i8], ptr %i.aa, i64 %i.ate
  %i.atg = getelementptr i8, ptr %i.atf, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.atc, ptr noundef nonnull @c__1, ptr noundef %i.atg, ptr noundef nonnull @c__1) #7
  %i.ath = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.ati = load i32, ptr %4, align 4, !tbaa !43
  %i.atj = sext i32 %i.ati to i64
  %i.atk = getelementptr [8 x i8], ptr %i.aa, i64 %i.atj
  %i.atl = getelementptr i8, ptr %i.atk, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ath, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.atl, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.atm = load i32, ptr %4, align 4, !tbaa !43
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr [8 x i8], ptr %i.aa, i64 %i.atn
  %i.atp = getelementptr i8, ptr %i.ato, i64 8
  %i.atq = load i32, ptr %i.j, align 4, !tbaa !43
  %i.atr = mul nsw i32 %i.atq, %i.u
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr [8 x i8], ptr %i.w, i64 %i.ats
  %i.atu = getelementptr i8, ptr %i.att, i64 8
  %i.atv = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.atp, ptr noundef nonnull @c__1, ptr noundef %i.atu, ptr noundef nonnull @c__1) #7
  %i.atw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.atx = sext i32 %i.atw to i64
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.atx
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !45
  %i.aua = fmul double %i.atv, %i.atz
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew, %bb.es, %bb.et
  %.sink2093 = phi ptr [ %i.f, %bb.ev ], [ %i.f, %bb.ew ], [ %i.f, %bb.es ], [ %i.g, %bb.et ]
  %.sink2091 = phi double [ %i.asz, %bb.ev ], [ %i.aua, %bb.ew ], [ %i.arc, %bb.es ], [ %i.ary, %bb.et ]
  %.31534.in = phi i1 [ %.21533.in, %bb.ev ], [ %.21533.in, %bb.ew ], [ %.11532.in, %bb.es ], [ %.11532.in, %bb.et ]
  %i.aub = load double, ptr %.sink2093, align 8, !tbaa !45
  %i.auc = fdiv double %.sink2091, %i.aub         ; 10 uses
  store double %.1015181826, ptr %i.e, align 8, !tbaa !45
  %i.aud = fcmp oge double %i.auc, 0.000000e+00   ; 2 uses
  %i.aue = fneg double %i.auc                     ; 5 uses
  %i.auf = select i1 %i.aud, double %i.auc, double %i.aue ; 3 uses
  %i.aug = fcmp oge double %.1015181826, %i.auf
  %i.auh = select i1 %i.aug, double %.1015181826, double %i.auf ; 3 uses
  %i.aui = load double, ptr %i.r, align 8, !tbaa !45
  %i.auj = fcmp ogt double %i.auf, %i.aui
  br i1 %i.auj, label %bb.ey, label %bb.gf

bb.ey:                                            ; preds = %bb.ex
  %i.auk = add nsw i32 %.101829, 1                ; 2 uses
  br i1 %.31534.in, label %bb.ez, label %bb.ft

bb.ez:                                            ; preds = %bb.ey
  %i.aul = load double, ptr %i.g, align 8, !tbaa !45 ; 4 uses
  %i.aum = load double, ptr %i.f, align 8, !tbaa !45 ; 3 uses
  %i.aun = fdiv double %i.aul, %i.aum             ; 3 uses
  %i.auo = fdiv double %i.aum, %i.aul             ; 3 uses
  %i.aup = fsub double %i.aun, %i.auo             ; 4 uses
  store double %i.aup, ptr %i.e, align 8, !tbaa !45
  %i.auq = fcmp oge double %i.aup, 0.000000e+00
  %i.aur = fneg double %i.aup
  %i.aus = select i1 %i.auq, double %i.aup, double %i.aur
  %i.aut = fmul double %i.aus, -5.000000e-01
  %i.auu = fdiv double %i.aut, %i.auc             ; 3 uses
  %i.auv = fcmp ogt double %i.aul, %i.aqb         ; 2 uses
  %i.auw = fneg double %i.auu
  %spec.select1693 = select i1 %i.auv, double %i.auw, double %i.auu ; 4 uses
  %i.aux = call double @llvm.fabs.f64(double %i.auu)
  %i.auy = fcmp ogt double %i.aux, %i.cd
  br i1 %i.auy, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.auz = fdiv double 5.000000e-01, %spec.select1693 ; 3 uses
  store double %i.auz, ptr %i.k, align 8, !tbaa !45
  %i.ava = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.avb = sext i32 %i.ava to i64
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.avb
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !45 ; 2 uses
  %i.ave = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.avf = load double, ptr %i.ave, align 8, !tbaa !45 ; 2 uses
  %i.avg = fneg double %i.auz
  %i.avh = insertelement <2 x double> poison, double %i.auz, i64 0
  %i.avi = insertelement <2 x double> %i.avh, double %i.avg, i64 1
  %i.avj = insertelement <2 x double> poison, double %i.avd, i64 0
  %i.avk = insertelement <2 x double> %i.avj, double %i.avf, i64 1
  %i.avl = fmul <2 x double> %i.avi, %i.avk
  %i.avm = insertelement <2 x double> poison, double %i.avf, i64 0
  %i.avn = insertelement <2 x double> %i.avm, double %i.avd, i64 1
  %i.avo = fdiv <2 x double> %i.avl, %i.avn
  store <2 x double> %i.avo, ptr %i.tb, align 16, !tbaa !45
  %i.avp = mul nsw i32 %i.ava, %i.u
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr [8 x i8], ptr %i.w, i64 %i.avq
  %i.avs = getelementptr i8, ptr %i.avr, i64 8
  %i.avt = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.avu = getelementptr [8 x i8], ptr %i.w, i64 %i.avt
  %i.avv = getelementptr i8, ptr %i.avu, i64 8
  call void @drotm_(ptr noundef nonnull %3, ptr noundef %i.avs, ptr noundef nonnull @c__1, ptr noundef %i.avv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.m) #7
  br i1 %or.cond5, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.avw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.avx = mul nsw i32 %i.avw, %i.x
  %i.avy = sext i32 %i.avx to i64
  %i.avz = getelementptr [8 x i8], ptr %i.z, i64 %i.avy
  %i.awa = getelementptr i8, ptr %i.avz, i64 8
  %i.awb = mul nsw i64 %indvars.iv.next1960, %i.td
  %i.awc = getelementptr [8 x i8], ptr %i.z, i64 %i.awb
  %i.awd = getelementptr i8, ptr %i.awc, i64 8
  call void @drotm_(ptr noundef nonnull %i.s, ptr noundef %i.awa, ptr noundef nonnull @c__1, ptr noundef %i.awd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.m) #7
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.awe = load double, ptr %i.k, align 8, !tbaa !45 ; 5 uses
  %i.awf = fmul double %i.auo, %i.awe
  %i.awg = call double @llvm.fmuladd.f64(double %i.awf, double %i.auc, double 1.000000e+00) ; 2 uses
  %i.awh = load double, ptr %i.g, align 8, !tbaa !45
  %i.awi = fcmp ole double %i.awg, 0.000000e+00
  %i.awj = select i1 %i.awi, double 0.000000e+00, double %i.awg
  %i.awk = call double @sqrt(double noundef %i.awj) #7
  %i.awl = fmul double %i.awh, %i.awk
  store double %i.awl, ptr %i.apy, align 8, !tbaa !45
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !45
  %i.awm = fneg double %i.aun
  %i.awn = fmul double %i.awe, %i.awm
  %i.awo = call double @llvm.fmuladd.f64(double %i.awn, double %i.auc, double 1.000000e+00) ; 2 uses
  %i.awp = fcmp ole double %i.awo, 0.000000e+00
  %i.awq = select i1 %i.awp, double 0.000000e+00, double %i.awo
  %i.awr = call double @sqrt(double noundef %i.awq) #7
  %i.aws = load double, ptr %i.f, align 8, !tbaa !45
  %i.awt = fmul double %i.awr, %i.aws
  store double %i.awt, ptr %i.f, align 8, !tbaa !45
  %i.awu = fcmp oge double %i.awe, 0.000000e+00
  %i.awv = fneg double %i.awe
  %i.aww = select i1 %i.awu, double %i.awe, double %i.awv ; 2 uses
  %i.awx = fcmp oge double %.1115001827, %i.aww
  %i.awy = select i1 %i.awx, double %.1115001827, double %i.aww
  br label %bb.fw

bb.fd:                                            ; preds = %bb.ez
  %i.awz = load double, ptr @c_b18, align 8, !tbaa !45 ; 3 uses
  %i.axa = fcmp oge double %i.awz, 0.000000e+00
  %i.axb = fneg double %i.awz
  %i.axc = xor i1 %i.axa, %i.aud
  %i.axd = select i1 %i.axc, double %i.axb, double %i.awz ; 2 uses
  %i.axe = fneg double %i.axd
  %spec.select1694 = select i1 %i.auv, double %i.axd, double %i.axe
  %i.axf = call double @llvm.fmuladd.f64(double %spec.select1693, double %spec.select1693, double 1.000000e+00)
  %sqrt1713 = call double @llvm.sqrt.f64(double %i.axf)
  %i.axg = call double @llvm.fmuladd.f64(double %spec.select1694, double %sqrt1713, double %spec.select1693)
  %i.axh = fdiv double 1.000000e+00, %i.axg       ; 12 uses
  store double %i.axh, ptr %i.k, align 8, !tbaa !45
  %i.axi = call double @llvm.fmuladd.f64(double %i.axh, double %i.axh, double 1.000000e+00)
  %i.axj = fdiv double 1.000000e+00, %i.axi
  %sqrt1712 = call double @llvm.sqrt.f64(double %i.axj) ; 15 uses
  %i.axk = fmul double %i.axh, %sqrt1712          ; 7 uses
  %i.axl = fcmp oge double %i.axk, 0.000000e+00
  %i.axm = fneg double %i.axk
  %i.axn = select i1 %i.axl, double %i.axk, double %i.axm ; 2 uses
  %i.axo = fcmp oge double %.1115001827, %i.axn
  %i.axp = select i1 %i.axo, double %.1115001827, double %i.axn ; 8 uses
  %i.axq = fmul double %i.auo, %i.axh
  %i.axr = call double @llvm.fmuladd.f64(double %i.axq, double %i.auc, double 1.000000e+00) ; 2 uses
  %i.axs = fcmp ole double %i.axr, 0.000000e+00
  %i.axt = select i1 %i.axs, double 0.000000e+00, double %i.axr
  %i.axu = call double @sqrt(double noundef %i.axt) #7
  %i.axv = fmul double %i.aul, %i.axu
  store double %i.axv, ptr %i.apy, align 8, !tbaa !45
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !45
  %i.axw = fneg double %i.aun
  %i.axx = fmul double %i.axh, %i.axw
end_hunk_0
