Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgejsv?download=true
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dgejsv_:bb.a
  %i.avu = fcmp oge double %i.avt, 0.000000e+00
  %i.avv = fneg double %i.avt
  %invariant.gep3450.a = getelementptr [8 x i8], ptr %i.aa, i64 %i.avk
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph2672, %bb.he
  %indvars.iv3036 = phi i64 [ 1, %.lr.ph2672 ], [ %indvars.iv.next3037, %bb.he ] ; 7 uses
  %i.avw = phi double [ %i.avp, %.lr.ph2672 ], [ %i.awi, %bb.he ] ; 2 uses
  %i.avx = icmp samesign ugt i64 %indvars.iv3036, %indvars.iv3041
  br i1 %i.avx, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.avy = add nsw i64 %indvars.iv3036, %i.avk    ; 2 uses
  %i.avz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.avy
  %i.awa = load double, ptr %i.avz, align 8, !tbaa !116 ; 3 uses
  %i.awb = call double @llvm.fabs.f64(double %i.awa)
  %i.awc = fcmp ugt double %i.awb, %i.avt
  br i1 %i.awc, label %bb.hc, label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  %.old2300 = icmp samesign ult i64 %indvars.iv3036, %indvars.iv3041
  br i1 %.old2300, label %._crit_edge3199, label %bb.hc

._crit_edge3199:                                  ; preds = %bb.ha
  %.pre3202 = add nsw i64 %indvars.iv3036, %i.avk
  br label %bb.hb

bb.hb:                                            ; preds = %._crit_edge3199, %bb.gz
  %.pre-phi3203 = phi i64 [ %.pre3202, %._crit_edge3199 ], [ %i.avy, %bb.gz ]
  %i.awd = phi double [ %i.avw, %._crit_edge3199 ], [ %i.awa, %bb.gz ]
  %i.awe = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.pre-phi3203 ; 2 uses
  %i.awf = load double, ptr %i.awe, align 8, !tbaa !116
  %i.awg = fcmp ult double %i.awf, 0.000000e+00
  %i.awh = xor i1 %i.avu, %i.awg
  %.2823 = select i1 %i.awh, double %i.avt, double %i.avv
  store double %.2823, ptr %i.awe, align 8, !tbaa !116
  br label %bb.hc

bb.hc:                                            ; preds = %bb.gz, %bb.hb, %bb.ha
  %i.awi = phi double [ %i.awa, %bb.gz ], [ %i.awd, %bb.hb ], [ %i.avw, %bb.ha ] ; 2 uses
  %i.awj = icmp samesign ult i64 %indvars.iv3036, %indvars.iv3041
  br i1 %i.awj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %gep3451.a = getelementptr [8 x i8], ptr %invariant.gep3450.a, i64 %indvars.iv3036 ; 2 uses
  %i.awk = load double, ptr %gep3451.a, align 8, !tbaa !116
  %i.awl = fneg double %i.awk
  store double %i.awl, ptr %gep3451.a, align 8, !tbaa !116
  br label %bb.he

bb.he:                                            ; preds = %bb.hc, %bb.hd
  %indvars.iv.next3037 = add nuw nsw i64 %indvars.iv3036, 1 ; 2 uses
  %exitcond3040.not = icmp eq i64 %indvars.iv.next3037, %wide.trip.count3039
  br i1 %exitcond3040.not, label %._crit_edge2673, label %bb.gy, !llvm.loop !49

._crit_edge2673:                                  ; preds = %bb.he, %bb.gx
  %i.awm = phi double [ %i.avp, %bb.gx ], [ %i.awi, %bb.he ]
  %storemerge2240.lcssa = phi i32 [ 1, %bb.gx ], [ %i.avh, %bb.he ]
  %indvars.iv.next3042 = add nuw nsw i64 %indvars.iv3041, 1 ; 2 uses
  %exitcond3045.not = icmp eq i64 %indvars.iv.next3042, %wide.trip.count3044
  br i1 %exitcond3045.not, label %..loopexit2354_crit_edge, label %bb.gx, !llvm.loop !50

bb.hf:                                            ; preds = %._crit_edge2667
  %i.awn = load i32, ptr %i.o, align 4, !tbaa !114
  %i.awo = add nsw i32 %i.awn, -1                 ; 2 uses
  store i32 %i.awo, ptr %i.d, align 4, !tbaa !114
  store i32 %i.awo, ptr %i.e, align 4, !tbaa !114
  %i.awp = shl i32 %i.y, 1
  %i.awq = sext i32 %i.awp to i64
  %i.awr = getelementptr [8 x i8], ptr %i.aa, i64 %i.awq
  %i.aws = getelementptr i8, ptr %i.awr, i64 8
  call void @dlaset_(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b34, ptr noundef nonnull @c_b34, ptr noundef %i.aws, ptr noundef nonnull %14) #7
  %.pre3162 = load i32, ptr %7, align 4, !tbaa !114
  br label %.loopexit2354

..loopexit2354_crit_edge:                         ; preds = %._crit_edge2673
  store double %i.awm, ptr %i.f, align 8, !tbaa !116
  store double %i.avt, ptr %i.j, align 8, !tbaa !116
  store i32 %storemerge2240.lcssa, ptr %i.k, align 4, !tbaa !114
  br label %.loopexit2354

.loopexit2354:                                    ; preds = %bb.gw, %..loopexit2354_crit_edge, %bb.hf
  %i.awt = phi i32 [ %.pre3163, %bb.gw ], [ %.pre3163, %..loopexit2354_crit_edge ], [ %.pre3162, %bb.hf ]
  %i.awu = shl i32 %i.awt, 1
  %i.awv = sext i32 %i.awu to i64
  %i.aww = getelementptr [8 x i8], ptr %i.ab, i64 %i.awv
  %i.awx = getelementptr i8, ptr %i.aww, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %i.awx, ptr noundef nonnull %i.o) #7
  %i.awy = load i32, ptr %i.o, align 4, !tbaa !114 ; 3 uses
  store i32 %i.awy, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not21952682 = icmp slt i32 %i.awy, 1
  br i1 %.not21952682, label %._crit_edge2686, label %.lr.ph2685

.lr.ph2685:                                       ; preds = %.loopexit2354, %.lr.ph2685
  %storemerge21942683 = phi i32 [ %i.axy, %.lr.ph2685 ], [ 1, %.loopexit2354 ] ; 3 uses
  %i.awz = load i32, ptr %i.o, align 4, !tbaa !114 ; 2 uses
  %reass.sub2835 = sub i32 %i.awz, %storemerge21942683
  %i.axa = add i32 %reass.sub2835, 1
  store i32 %i.axa, ptr %i.e, align 4, !tbaa !114
  %i.axb = load i32, ptr %7, align 4, !tbaa !114
  %i.axc = shl i32 %i.axb, 1
  %i.axd = add nsw i32 %storemerge21942683, -1
  %i.axe = mul nsw i32 %i.awz, %i.axd
  %i.axf = add i32 %i.axe, %storemerge21942683
  %i.axg = add i32 %i.axf, %i.axc
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.axh
  %i.axj = call double @dnrm2_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.axi, ptr noundef nonnull @c__1) #7 ; 2 uses
  store double %i.axj, ptr %i.j, align 8, !tbaa !116
  %i.axk = load i32, ptr %i.o, align 4, !tbaa !114 ; 2 uses
  %i.axl = load i32, ptr %i.k, align 4, !tbaa !114 ; 3 uses
  %i.axm = add i32 %i.axk, 1
  %i.axn = sub i32 %i.axm, %i.axl
  store i32 %i.axn, ptr %i.e, align 4, !tbaa !114
  %i.axo = fdiv double 1.000000e+00, %i.axj
  store double %i.axo, ptr %i.f, align 8, !tbaa !116
  %i.axp = load i32, ptr %7, align 4, !tbaa !114
  %i.axq = shl i32 %i.axp, 1
  %i.axr = add nsw i32 %i.axl, -1
  %i.axs = mul nsw i32 %i.axr, %i.axk
  %i.axt = add i32 %i.axs, %i.axl
  %i.axu = add i32 %i.axt, %i.axq
  %i.axv = sext i32 %i.axu to i64
  %i.axw = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.axv
  call void @dscal_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.axw, ptr noundef nonnull @c__1) #7
  %i.axx = load i32, ptr %i.k, align 4, !tbaa !114 ; 2 uses
  %i.axy = add nsw i32 %i.axx, 1                  ; 2 uses
  store i32 %i.axy, ptr %i.k, align 4, !tbaa !114
  %i.axz = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2195.not = icmp slt i32 %i.axx, %i.axz
  br i1 %.not2195.not, label %.lr.ph2685, label %._crit_edge2686.loopexit, !llvm.loop !51

._crit_edge2686.loopexit:                         ; preds = %.lr.ph2685
  %.pre3164 = load i32, ptr %i.o, align 4, !tbaa !114
  br label %._crit_edge2686

._crit_edge2686:                                  ; preds = %._crit_edge2686.loopexit, %.loopexit2354
  %i.aya = phi i32 [ %.pre3164, %._crit_edge2686.loopexit ], [ %i.awy, %.loopexit2354 ] ; 2 uses
  %i.ayb = load i32, ptr %7, align 4, !tbaa !114
  %i.ayc = shl i32 %i.ayb, 1                      ; 3 uses
  %i.ayd = sext i32 %i.ayc to i64
  %i.aye = getelementptr [8 x i8], ptr %i.ab, i64 %i.ayd
  %i.ayf = getelementptr i8, ptr %i.aye, i64 8
  %i.ayg = mul nsw i32 %i.aya, %i.aya
  %i.ayh = add nsw i32 %i.ayg, %i.ayc
  %i.ayi = sext i32 %i.ayh to i64
  %i.ayj = getelementptr [8 x i8], ptr %i.ab, i64 %i.ayi
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 8
  %i.ayl = load i32, ptr %6, align 4, !tbaa !114
  %i.aym = add nsw i32 %i.ayl, %i.ayc
  %i.ayn = sext i32 %i.aym to i64
  %i.ayo = getelementptr [4 x i8], ptr %i.ac, i64 %i.ayn
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 4
  call void @dpocon_(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.o, ptr noundef %i.ayf, ptr noundef nonnull %i.o, ptr noundef nonnull @c_b35, ptr noundef nonnull %i.j, ptr noundef %i.ayk, ptr noundef %i.ayp, ptr noundef nonnull %i.i) #7
  %i.ayq = load double, ptr %i.j, align 8, !tbaa !116
  %i.ayr = call double @sqrt(double noundef %i.ayq) #7
  %i.ays = fdiv double 1.000000e+00, %i.ayr       ; 5 uses
  %i.ayt = load i32, ptr %i.o, align 4, !tbaa !114 ; 6 uses
  %i.ayu = sitofp i32 %i.ayt to double
  %i.ayv = call double @sqrt(double noundef %i.ayu) #7 ; 3 uses
  %i.ayw = fcmp olt double %i.ays, %i.ayv         ; 2 uses
  br i1 %i.ayw, label %bb.hg, label %bb.hq

bb.hg:                                            ; preds = %._crit_edge2686
  %i.ayx = load i32, ptr %16, align 4, !tbaa !114
  %i.ayy = load i32, ptr %7, align 4, !tbaa !114  ; 2 uses
  %i.ayz = shl i32 %i.ayy, 1                      ; 2 uses
  %i.aza = sub nsw i32 %i.ayx, %i.ayz
  store i32 %i.aza, ptr %i.d, align 4, !tbaa !114
  %i.azb = sext i32 %i.ayy to i64
  %i.azc = getelementptr [8 x i8], ptr %i.ab, i64 %i.azb
  %i.azd = getelementptr i8, ptr %i.azc, i64 8
  %i.aze = sext i32 %i.ayz to i64
  %i.azf = getelementptr [8 x i8], ptr %i.ab, i64 %i.aze
  %i.azg = getelementptr i8, ptr %i.azf, i64 8
  call void @dgeqrf_(ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %i.azd, ptr noundef %i.azg, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) #7
  %.pre3167.a = load i32, ptr %i.o, align 4, !tbaa !114 ; 6 uses
  br i1 %i.aef, label %bb.hh, label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  %i.azh = call double @sqrt(double noundef %i.do) #7
  %i.azi = fdiv double %i.azh, %i.dm              ; 2 uses
  store double %i.azi, ptr %i.q, align 8, !tbaa !116
  store i32 %.pre3167.a, ptr %i.d, align 4, !tbaa !114
  %.not22092720 = icmp slt i32 %.pre3167.a, 2
  br i1 %.not22092720, label %.loopexit2352, label %.lr.ph2723

.lr.ph2723:                                       ; preds = %bb.hh
  %i.azj = add i32 %i.y, 1                        ; 2 uses
  %i.azk = sext i32 %i.y to i64
  %i.azl = add nuw i32 %.pre3167.a, 1             ; 2 uses
  %wide.trip.count3075 = zext i32 %i.azl to i64
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph2723, %bb.hm
  %indvars.iv3072 = phi i64 [ 2, %.lr.ph2723 ], [ %indvars.iv.next3073, %bb.hm ] ; 4 uses
  %i.azm = trunc nuw nsw i64 %indvars.iv3072 to i32
  %i.azn = mul i32 %i.azj, %i.azm
  %i.azo = sext i32 %i.azn to i64
  %i.azp = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.azo
  %i.azq = mul nsw i64 %indvars.iv3072, %i.azk
  %invariant.gep3458.a = getelementptr [8 x i8], ptr %i.aa, i64 %i.azq
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hl
  %indvars.iv3067 = phi i64 [ 1, %bb.hi ], [ %indvars.iv.next3068, %bb.hl ] ; 3 uses
  %19 = load double, ptr %i.azp, align 8, !tbaa !116 ; 3 uses
  %i.azr = fcmp oge double %19, 0.000000e+00
  %i.azs = fneg double %19
  %i.azt = select i1 %i.azr, double %19, double %i.azs ; 2 uses
  %i.azu = trunc nuw nsw i64 %indvars.iv3067 to i32
  %i.azv = mul i32 %i.azj, %i.azu
  %i.azw = sext i32 %i.azv to i64
  %i.azx = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.azw
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !116 ; 3 uses
  %i.azz = fcmp oge double %i.azy, 0.000000e+00
  %i.baa = fneg double %i.azy
  %i.bab = select i1 %i.azz, double %i.azy, double %i.baa ; 2 uses
  %i.bac = fcmp ole double %i.azt, %i.bab
  %i.bad = select i1 %i.bac, double %i.azt, double %i.bab
  %i.bae = fmul double %i.azi, %i.bad             ; 5 uses
  %gep3459.a = getelementptr [8 x i8], ptr %invariant.gep3458.a, i64 %indvars.iv3067 ; 2 uses
  %i.baf = load double, ptr %gep3459.a, align 8, !tbaa !116 ; 3 uses
  %i.bag = call double @llvm.fabs.f64(double %i.baf)
  %i.bah = fcmp ugt double %i.bag, %i.bae
  br i1 %i.bah, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bai = fcmp ult double %i.baf, 0.000000e+00
  %i.baj = fcmp oge double %i.bae, 0.000000e+00
  %.neg2239 = fneg double %i.bae
  %i.bak = xor i1 %i.baj, %i.bai
  %i.bal = select i1 %i.bak, double %i.bae, double %.neg2239
  store double %i.bal, ptr %gep3459.a, align 8, !tbaa !116
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hj, %bb.hk
  %indvars.iv.next3068 = add nuw nsw i64 %indvars.iv3067, 1 ; 2 uses
  %exitcond3071.not = icmp eq i64 %indvars.iv.next3068, %indvars.iv3072
  br i1 %exitcond3071.not, label %bb.hm, label %bb.hj, !llvm.loop !52

bb.hm:                                            ; preds = %bb.hl
  %indvars.iv.next3073 = add nuw nsw i64 %indvars.iv3072, 1 ; 2 uses
  %exitcond3076.not = icmp eq i64 %indvars.iv.next3073, %wide.trip.count3075
  br i1 %exitcond3076.not, label %..loopexit2352_crit_edge, label %bb.hi, !llvm.loop !53

..loopexit2352_crit_edge:                         ; preds = %bb.hm
  %i.bam = add nsw i32 %.pre3167.a, -1
  store i32 %i.bam, ptr %i.e, align 4, !tbaa !114
  store double %i.baf, ptr %i.f, align 8, !tbaa !116
  store double %i.bae, ptr %i.j, align 8, !tbaa !116
  br label %.loopexit2352

.loopexit2352:                                    ; preds = %..loopexit2352_crit_edge, %bb.hh
  %storemerge2208.lcssa = phi i32 [ %i.azl, %..loopexit2352_crit_edge ], [ 2, %bb.hh ]
  store i32 %storemerge2208.lcssa, ptr %i.k, align 4, !tbaa !114
  br label %bb.hn

bb.hn:                                            ; preds = %.loopexit2352, %bb.hg
  %i.ban = load i32, ptr %7, align 4, !tbaa !114  ; 2 uses
  %.not2210 = icmp eq i32 %.pre3167.a, %i.ban
  br i1 %.not2210, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bao = shl i32 %i.ban, 1
  %i.bap = sext i32 %i.bao to i64
  %i.baq = getelementptr [8 x i8], ptr %i.ab, i64 %i.bap
  %i.bar = getelementptr i8, ptr %i.baq, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %i.bar, ptr noundef nonnull %7) #7
  %.pre3168.a = load i32, ptr %i.o, align 4, !tbaa !114
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.bas = phi i32 [ %.pre3168.a, %bb.ho ], [ %.pre3167.a, %bb.hn ] ; 2 uses
  %i.bat = add nsw i32 %i.bas, -1
  store i32 %i.bat, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not22122726 = icmp slt i32 %i.bas, 2
  br i1 %.not22122726, label %.loopexit2351, label %.lr.ph2729

.lr.ph2729:                                       ; preds = %bb.hp, %.lr.ph2729
  %storemerge22112727 = phi i32 [ %i.bbg, %.lr.ph2729 ], [ 1, %bb.hp ] ; 4 uses
  %i.bau = load i32, ptr %i.o, align 4, !tbaa !114
  %i.bav = sub nsw i32 %i.bau, %storemerge22112727
  store i32 %i.bav, ptr %i.e, align 4, !tbaa !114
  %i.baw = add nsw i32 %storemerge22112727, 1     ; 2 uses
  %i.bax = mul nsw i32 %i.baw, %i.y
  %i.bay = add nsw i32 %i.bax, %storemerge22112727
  %i.baz = sext i32 %i.bay to i64
  %i.bba = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.baz
  %i.bbb = mul nsw i32 %storemerge22112727, %i.y
  %i.bbc = add nsw i32 %i.baw, %i.bbb
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bbd
  call void @dcopy_(ptr noundef nonnull %i.e, ptr noundef %i.bba, ptr noundef nonnull %14, ptr noundef %i.bbe, ptr noundef nonnull @c__1) #7
  %i.bbf = load i32, ptr %i.k, align 4, !tbaa !114 ; 2 uses
  %i.bbg = add nsw i32 %i.bbf, 1                  ; 2 uses
  store i32 %i.bbg, ptr %i.k, align 4, !tbaa !114
  %i.bbh = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2212.not = icmp slt i32 %i.bbf, %i.bbh
  br i1 %.not2212.not, label %.lr.ph2729, label %.loopexit2351, !llvm.loop !54

bb.hq:                                            ; preds = %._crit_edge2686
  %.not21972687 = icmp slt i32 %i.ayt, 1
  br i1 %.not21972687, label %._crit_edge2691, label %.lr.ph2690.preheader

.lr.ph2690.preheader:                             ; preds = %bb.hq
  %i.bbi = add nuw i32 %i.ayt, 1                  ; 2 uses
  %xtraiter3944 = and i32 %i.ayt, 7               ; 3 uses
  %i.bbj = icmp ult i32 %i.ayt, 8
  br i1 %i.bbj, label %.lr.ph2690.epil.preheader, label %.lr.ph2690.preheader.new

.lr.ph2690.preheader.new:                         ; preds = %.lr.ph2690.preheader
  %unroll_iter3948 = and i32 %i.ayt, 2147483640
  br label %.lr.ph2690

.lr.ph2690:                                       ; preds = %.lr.ph2690, %.lr.ph2690.preheader.new
  %storemerge21962688 = phi i32 [ 1, %.lr.ph2690.preheader.new ], [ %i.bcx, %.lr.ph2690 ] ; 9 uses
  %niter3949 = phi i32 [ 0, %.lr.ph2690.preheader.new ], [ %niter3949.next.7, %.lr.ph2690 ]
  %i.bbk = load i32, ptr %7, align 4, !tbaa !114
  %i.bbl = add nsw i32 %i.bbk, %storemerge21962688
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bbm
  store i32 0, ptr %i.bbn, align 4, !tbaa !114
  %i.bbo = add nuw nsw i32 %storemerge21962688, 1
  %i.bbp = load i32, ptr %7, align 4, !tbaa !114
  %i.bbq = add nsw i32 %i.bbp, %i.bbo
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bbr
  store i32 0, ptr %i.bbs, align 4, !tbaa !114
  %i.bbt = add nuw nsw i32 %storemerge21962688, 2
  %i.bbu = load i32, ptr %7, align 4, !tbaa !114
  %i.bbv = add nsw i32 %i.bbu, %i.bbt
  %i.bbw = sext i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bbw
  store i32 0, ptr %i.bbx, align 4, !tbaa !114
  %i.bby = add nuw nsw i32 %storemerge21962688, 3
  %i.bbz = load i32, ptr %7, align 4, !tbaa !114
  %i.bca = add nsw i32 %i.bbz, %i.bby
  %i.bcb = sext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bcb
  store i32 0, ptr %i.bcc, align 4, !tbaa !114
  %i.bcd = add nuw nsw i32 %storemerge21962688, 4
  %i.bce = load i32, ptr %7, align 4, !tbaa !114
  %i.bcf = add nsw i32 %i.bce, %i.bcd
  %i.bcg = sext i32 %i.bcf to i64
  %i.bch = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bcg
  store i32 0, ptr %i.bch, align 4, !tbaa !114
  %i.bci = add nuw nsw i32 %storemerge21962688, 5
  %i.bcj = load i32, ptr %7, align 4, !tbaa !114
  %i.bck = add nsw i32 %i.bcj, %i.bci
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bcl
  store i32 0, ptr %i.bcm, align 4, !tbaa !114
  %i.bcn = add nuw nsw i32 %storemerge21962688, 6
  %i.bco = load i32, ptr %7, align 4, !tbaa !114
  %i.bcp = add nsw i32 %i.bco, %i.bcn
  %i.bcq = sext i32 %i.bcp to i64
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bcq
  store i32 0, ptr %i.bcr, align 4, !tbaa !114
  %i.bcs = add nuw nsw i32 %storemerge21962688, 7
  %i.bct = load i32, ptr %7, align 4, !tbaa !114
  %i.bcu = add nsw i32 %i.bct, %i.bcs
  %i.bcv = sext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bcv
  store i32 0, ptr %i.bcw, align 4, !tbaa !114
  %i.bcx = add nuw nsw i32 %storemerge21962688, 8 ; 2 uses
  %niter3949.next.7 = add nuw nsw i32 %niter3949, 8 ; 2 uses
  %niter3949.ncmp.7 = icmp eq i32 %niter3949.next.7, %unroll_iter3948
  br i1 %niter3949.ncmp.7, label %._crit_edge2691.loopexit.unr-lcssa, label %.lr.ph2690, !llvm.loop !55

._crit_edge2691.loopexit.unr-lcssa:               ; preds = %.lr.ph2690
  %lcmp.mod3946.not = icmp eq i32 %xtraiter3944, 0
  br i1 %lcmp.mod3946.not, label %._crit_edge2691, label %.lr.ph2690.epil.preheader

.lr.ph2690.epil.preheader:                        ; preds = %._crit_edge2691.loopexit.unr-lcssa, %.lr.ph2690.preheader
  %storemerge21962688.epil.init = phi i32 [ 1, %.lr.ph2690.preheader ], [ %i.bcx, %._crit_edge2691.loopexit.unr-lcssa ]
  %lcmp.mod3947 = icmp ne i32 %xtraiter3944, 0
  call void @llvm.assume(i1 %lcmp.mod3947)
  br label %.lr.ph2690.epil

.lr.ph2690.epil:                                  ; preds = %.lr.ph2690.epil, %.lr.ph2690.epil.preheader
  %storemerge21962688.epil = phi i32 [ %i.bdc, %.lr.ph2690.epil ], [ %storemerge21962688.epil.init, %.lr.ph2690.epil.preheader ] ; 2 uses
  %epil.iter3945 = phi i32 [ %epil.iter3945.next, %.lr.ph2690.epil ], [ 0, %.lr.ph2690.epil.preheader ]
  %i.bcy = load i32, ptr %7, align 4, !tbaa !114
  %i.bcz = add nsw i32 %i.bcy, %storemerge21962688.epil
  %i.bda = sext i32 %i.bcz to i64
  %i.bdb = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bda
  store i32 0, ptr %i.bdb, align 4, !tbaa !114
  %i.bdc = add nuw i32 %storemerge21962688.epil, 1
  %epil.iter3945.next = add i32 %epil.iter3945, 1 ; 2 uses
  %epil.iter3945.cmp.not = icmp eq i32 %epil.iter3945.next, %xtraiter3944
  br i1 %epil.iter3945.cmp.not, label %._crit_edge2691, label %.lr.ph2690.epil, !llvm.loop !56

._crit_edge2691:                                  ; preds = %._crit_edge2691.loopexit.unr-lcssa, %.lr.ph2690.epil, %bb.hq
  %storemerge2196.lcssa = phi i32 [ 1, %bb.hq ], [ %i.bbi, %.lr.ph2690.epil ], [ %i.bbi, %._crit_edge2691.loopexit.unr-lcssa ]
  store i32 %storemerge2196.lcssa, ptr %i.k, align 4, !tbaa !114
  %i.bdd = load i32, ptr %16, align 4, !tbaa !114
  %i.bde = load i32, ptr %7, align 4, !tbaa !114  ; 2 uses
  %i.bdf = shl i32 %i.bde, 1                      ; 2 uses
  %i.bdg = sub nsw i32 %i.bdd, %i.bdf
  store i32 %i.bdg, ptr %i.d, align 4, !tbaa !114
  %i.bdh = add nsw i32 %i.bde, 1
  %i.bdi = sext i32 %i.bdh to i64                 ; 2 uses
  %i.bdj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bdi
  %i.bdk = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bdi
  %i.bdl = sext i32 %i.bdf to i64
  %i.bdm = getelementptr [8 x i8], ptr %i.ab, i64 %i.bdl
  %i.bdn = getelementptr i8, ptr %i.bdm, i64 8
  call void @dgeqp3_(ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %i.bdj, ptr noundef nonnull %i.bdk, ptr noundef %i.bdn, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) #7
  br i1 %i.aef, label %bb.hr, label %.critedge

bb.hr:                                            ; preds = %._crit_edge2691
  %i.bdo = call double @sqrt(double noundef %i.do) #7 ; 2 uses
  store double %i.bdo, ptr %i.q, align 8, !tbaa !116
  %i.bdp = load i32, ptr %i.o, align 4, !tbaa !114 ; 4 uses
  store i32 %i.bdp, ptr %i.d, align 4, !tbaa !114
  %.not21992696 = icmp slt i32 %i.bdp, 2
  br i1 %.not21992696, label %bb.hx, label %.lr.ph2699

.lr.ph2699:                                       ; preds = %bb.hr
  %i.bdq = add i32 %i.y, 1                        ; 2 uses
  %i.bdr = sext i32 %i.y to i64
  %i.bds = add nuw i32 %i.bdp, 1                  ; 2 uses
  %wide.trip.count3055 = zext i32 %i.bds to i64
  br label %bb.hs

bb.hs:                                            ; preds = %.lr.ph2699, %bb.hw
  %indvars.iv3052 = phi i64 [ 2, %.lr.ph2699 ], [ %indvars.iv.next3053, %bb.hw ] ; 4 uses
  %i.bdt = trunc nuw nsw i64 %indvars.iv3052 to i32
  %i.bdu = mul i32 %i.bdq, %i.bdt
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bdv
  %i.bdx = mul nsw i64 %indvars.iv3052, %i.bdr
  %invariant.gep3452.a = getelementptr [8 x i8], ptr %i.aa, i64 %i.bdx
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hv
  %indvars.iv3047 = phi i64 [ 1, %bb.hs ], [ %indvars.iv.next3048, %bb.hv ] ; 3 uses
  %20 = load double, ptr %i.bdw, align 8, !tbaa !116 ; 3 uses
  %i.bdy = fcmp oge double %20, 0.000000e+00
  %i.bdz = fneg double %20
  %i.bea = select i1 %i.bdy, double %20, double %i.bdz ; 2 uses
  %i.beb = trunc nuw nsw i64 %indvars.iv3047 to i32
  %i.bec = mul i32 %i.bdq, %i.beb
  %i.bed = sext i32 %i.bec to i64
  %i.bee = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bed
  %i.bef = load double, ptr %i.bee, align 8, !tbaa !116 ; 3 uses
  %i.beg = fcmp oge double %i.bef, 0.000000e+00
  %i.beh = fneg double %i.bef
  %i.bei = select i1 %i.beg, double %i.bef, double %i.beh ; 2 uses
  %i.bej = fcmp ole double %i.bea, %i.bei
  %i.bek = select i1 %i.bej, double %i.bea, double %i.bei
  %i.bel = fmul double %i.bdo, %i.bek             ; 5 uses
  %gep3453.a = getelementptr [8 x i8], ptr %invariant.gep3452.a, i64 %indvars.iv3047 ; 2 uses
  %i.bem = load double, ptr %gep3453.a, align 8, !tbaa !116 ; 3 uses
  %i.ben = call double @llvm.fabs.f64(double %i.bem)
  %i.beo = fcmp ugt double %i.ben, %i.bel
  br i1 %i.beo, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bep = fcmp ult double %i.bem, 0.000000e+00
  %i.beq = fcmp oge double %i.bel, 0.000000e+00
  %.neg2207 = fneg double %i.bel
  %i.ber = xor i1 %i.beq, %i.bep
  %i.bes = select i1 %i.ber, double %i.bel, double %.neg2207
  store double %i.bes, ptr %gep3453.a, align 8, !tbaa !116
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %indvars.iv.next3048 = add nuw nsw i64 %indvars.iv3047, 1 ; 2 uses
  %exitcond3051.not = icmp eq i64 %indvars.iv.next3048, %indvars.iv3052
  br i1 %exitcond3051.not, label %bb.hw, label %bb.ht, !llvm.loop !57

bb.hw:                                            ; preds = %bb.hv
  %indvars.iv.next3053 = add nuw nsw i64 %indvars.iv3052, 1 ; 2 uses
  %exitcond3056.not = icmp eq i64 %indvars.iv.next3053, %wide.trip.count3055
  br i1 %exitcond3056.not, label %._crit_edge2700, label %bb.hs, !llvm.loop !58

._crit_edge2700:                                  ; preds = %bb.hw
  %i.bet = add nsw i32 %i.bdp, -1
  store i32 %i.bet, ptr %i.e, align 4, !tbaa !114
  store double %i.bem, ptr %i.f, align 8, !tbaa !116
  store double %i.bel, ptr %i.j, align 8, !tbaa !116
  br label %bb.hx

bb.hx:                                            ; preds = %._crit_edge2700, %bb.hr
  %storemerge2198.lcssa = phi i32 [ %i.bds, %._crit_edge2700 ], [ 2, %bb.hr ]
  store i32 %storemerge2198.lcssa, ptr %i.k, align 4, !tbaa !114
  %i.beu = load i32, ptr %7, align 4, !tbaa !114
  %i.bev = shl i32 %i.beu, 1
  %i.bew = sext i32 %i.bev to i64
  %i.bex = getelementptr [8 x i8], ptr %i.ab, i64 %i.bew
  %i.bey = getelementptr i8, ptr %i.bex, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %i.bey, ptr noundef nonnull %7) #7
  %i.bez = call double @sqrt(double noundef %i.do) #7 ; 4 uses
  store double %i.bez, ptr %i.q, align 8, !tbaa !116
  %i.bfa = load i32, ptr %i.o, align 4, !tbaa !114 ; 4 uses
  %.not22012706 = icmp slt i32 %i.bfa, 2
  br i1 %.not22012706, label %.loopexit2353, label %.lr.ph2709

.lr.ph2709:                                       ; preds = %bb.hx
  %i.bfb = add i32 %i.y, 1
  %i.bfc = sext i32 %i.y to i64                   ; 4 uses
  %i.bfd = add nuw i32 %i.bfa, 1                  ; 2 uses
  %wide.trip.count3065 = zext i32 %i.bfd to i64
  br label %bb.hy

bb.hy:                                            ; preds = %.lr.ph2709, %bb.ia
  %indvar3953 = phi i64 [ 0, %.lr.ph2709 ], [ %indvar.next3954, %bb.ia ] ; 4 uses
  %indvars.iv3062 = phi i64 [ 2, %.lr.ph2709 ], [ %indvars.iv.next3063, %bb.ia ] ; 4 uses
  %i.bfe = add i64 %indvar3953, 1                 ; 2 uses
  %i.bff = trunc nuw nsw i64 %indvars.iv3062 to i32
  %i.bfg = mul i32 %i.bfb, %i.bff
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bfh ; 3 uses
  %i.bfj = mul nsw i64 %indvars.iv3062, %i.bfc
  %invariant.gep3454 = getelementptr [8 x i8], ptr %i.aa, i64 %i.bfj ; 3 uses
  %invariant.gep3456 = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv3062 ; 3 uses
  %i.bfk = icmp eq i64 %indvar3953, 0
  br i1 %i.bfk, label %.epil.preheader3952, label %.new3950

.new3950:                                         ; preds = %bb.hy
  %unroll_iter3962 = and i64 %i.bfe, -2
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hz, %.new3950
  %indvars.iv3057 = phi i64 [ 1, %.new3950 ], [ %indvars.iv.next3058.1, %bb.hz ] ; 6 uses
  %niter3963 = phi i64 [ 0, %.new3950 ], [ %niter3963.next.1, %bb.hz ]
  %indvars3059 = trunc i64 %indvars.iv3057 to i32
  %i.bfl = load double, ptr %i.bfi, align 8, !tbaa !116 ; 3 uses
  %i.bfm = fcmp oge double %i.bfl, 0.000000e+00
  %i.bfn = fneg double %i.bfl
  %i.bfo = select i1 %i.bfm, double %i.bfl, double %i.bfn ; 2 uses
  %i.bfp = mul nsw i64 %indvars.iv3057, %i.bfc
  %i.bfq = mul nsw i32 %i.y, %indvars3059
  %i.bfr = sext i32 %i.bfq to i64
  %i.bfs = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv3057
  %i.bft = getelementptr [8 x i8], ptr %i.bfs, i64 %i.bfr
  %i.bfu = load double, ptr %i.bft, align 8, !tbaa !116 ; 3 uses
  %i.bfv = fcmp oge double %i.bfu, 0.000000e+00
  %i.bfw = fneg double %i.bfu
  %i.bfx = select i1 %i.bfv, double %i.bfu, double %i.bfw ; 2 uses
  %i.bfy = fcmp ole double %i.bfo, %i.bfx
  %i.bfz = select i1 %i.bfy, double %i.bfo, double %i.bfx
  %i.bga = fmul double %i.bez, %i.bfz             ; 3 uses
  %gep3455 = getelementptr [8 x i8], ptr %invariant.gep3454, i64 %indvars.iv3057
  %i.bgb = load double, ptr %gep3455, align 8, !tbaa !116
  %i.bgc = fcmp ult double %i.bgb, 0.000000e+00
  %i.bgd = fcmp oge double %i.bga, 0.000000e+00
  %i.bge = xor i1 %i.bgd, %i.bgc
  %.neg3492 = fneg double %i.bga
  %i.bgf = select i1 %i.bge, double %.neg3492, double %i.bga
  %gep3457 = getelementptr [8 x i8], ptr %invariant.gep3456, i64 %i.bfp
  store double %i.bgf, ptr %gep3457, align 8, !tbaa !116
  %indvars.iv.next3058 = add nuw nsw i64 %indvars.iv3057, 1 ; 4 uses
  %indvars3059.1 = trunc i64 %indvars.iv.next3058 to i32
  %i.bgg = load double, ptr %i.bfi, align 8, !tbaa !116 ; 4 uses
  %i.bgh = fcmp oge double %i.bgg, 0.000000e+00
  %i.bgi = fneg double %i.bgg
  %i.bgj = select i1 %i.bgh, double %i.bgg, double %i.bgi ; 2 uses
  %i.bgk = mul nsw i64 %indvars.iv.next3058, %i.bfc
  %i.bgl = mul nsw i32 %i.y, %indvars3059.1
  %i.bgm = sext i32 %i.bgl to i64
  %i.bgn = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv.next3058
  %i.bgo = getelementptr [8 x i8], ptr %i.bgn, i64 %i.bgm
  %i.bgp = load double, ptr %i.bgo, align 8, !tbaa !116 ; 3 uses
  %i.bgq = fcmp oge double %i.bgp, 0.000000e+00
  %i.bgr = fneg double %i.bgp
  %i.bgs = select i1 %i.bgq, double %i.bgp, double %i.bgr ; 2 uses
  %i.bgt = fcmp ole double %i.bgj, %i.bgs
  %i.bgu = select i1 %i.bgt, double %i.bgj, double %i.bgs
  %i.bgv = fmul double %i.bez, %i.bgu             ; 4 uses
  %gep3455.1 = getelementptr [8 x i8], ptr %invariant.gep3454, i64 %indvars.iv.next3058
  %i.bgw = load double, ptr %gep3455.1, align 8, !tbaa !116
  %i.bgx = fcmp ult double %i.bgw, 0.000000e+00
  %i.bgy = fcmp oge double %i.bgv, 0.000000e+00
  %i.bgz = xor i1 %i.bgy, %i.bgx
  %.neg3492.1 = fneg double %i.bgv
  %i.bha = select i1 %i.bgz, double %.neg3492.1, double %i.bgv
  %gep3457.1 = getelementptr [8 x i8], ptr %invariant.gep3456, i64 %i.bgk
  store double %i.bha, ptr %gep3457.1, align 8, !tbaa !116
  %indvars.iv.next3058.1 = add nuw nsw i64 %indvars.iv3057, 2 ; 2 uses
  %niter3963.next.1 = add nuw i64 %niter3963, 2   ; 2 uses
  %niter3963.ncmp.1 = icmp eq i64 %niter3963.next.1, %unroll_iter3962
  br i1 %niter3963.ncmp.1, label %.unr-lcssa3951, label %bb.hz, !llvm.loop !59

.unr-lcssa3951:                                   ; preds = %bb.hz
  %i.bhb = and i64 %indvar3953, 1
  %lcmp.mod3957.not.not = icmp eq i64 %i.bhb, 0
  br i1 %lcmp.mod3957.not.not, label %.epil.preheader3952, label %bb.ia

.epil.preheader3952:                              ; preds = %.unr-lcssa3951, %bb.hy
  %indvars.iv3057.epil.init = phi i64 [ 1, %bb.hy ], [ %indvars.iv.next3058.1, %.unr-lcssa3951 ] ; 4 uses
  %lcmp.mod3961 = trunc i64 %i.bfe to i1
  call void @llvm.assume(i1 %lcmp.mod3961)
  %indvars3059.epil = trunc i64 %indvars.iv3057.epil.init to i32
  %i.bhc = load double, ptr %i.bfi, align 8, !tbaa !116 ; 4 uses
  %i.bhd = fcmp oge double %i.bhc, 0.000000e+00
  %i.bhe = fneg double %i.bhc
  %i.bhf = select i1 %i.bhd, double %i.bhc, double %i.bhe ; 2 uses
  %i.bhg = mul nsw i64 %indvars.iv3057.epil.init, %i.bfc
  %i.bhh = mul nsw i32 %i.y, %indvars3059.epil
  %i.bhi = sext i32 %i.bhh to i64
  %i.bhj = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv3057.epil.init
  %i.bhk = getelementptr [8 x i8], ptr %i.bhj, i64 %i.bhi
  %i.bhl = load double, ptr %i.bhk, align 8, !tbaa !116 ; 3 uses
  %i.bhm = fcmp oge double %i.bhl, 0.000000e+00
  %i.bhn = fneg double %i.bhl
  %i.bho = select i1 %i.bhm, double %i.bhl, double %i.bhn ; 2 uses
  %i.bhp = fcmp ole double %i.bhf, %i.bho
  %i.bhq = select i1 %i.bhp, double %i.bhf, double %i.bho
  %i.bhr = fmul double %i.bez, %i.bhq             ; 4 uses
  %gep3455.epil = getelementptr [8 x i8], ptr %invariant.gep3454, i64 %indvars.iv3057.epil.init
  %i.bhs = load double, ptr %gep3455.epil, align 8, !tbaa !116
  %i.bht = fcmp ult double %i.bhs, 0.000000e+00
  %i.bhu = fcmp oge double %i.bhr, 0.000000e+00
  %i.bhv = xor i1 %i.bhu, %i.bht
  %.neg3492.epil = fneg double %i.bhr
  %i.bhw = select i1 %i.bhv, double %.neg3492.epil, double %i.bhr
  %gep3457.epil = getelementptr [8 x i8], ptr %invariant.gep3456, i64 %i.bhg
  store double %i.bhw, ptr %gep3457.epil, align 8, !tbaa !116
  br label %bb.ia

bb.ia:                                            ; preds = %.unr-lcssa3951, %.epil.preheader3952
  %.lcssa3829 = phi double [ %i.bgg, %.unr-lcssa3951 ], [ %i.bhc, %.epil.preheader3952 ]
  %.lcssa3828 = phi double [ %i.bgv, %.unr-lcssa3951 ], [ %i.bhr, %.epil.preheader3952 ]
  %indvars.iv.next3063 = add nuw nsw i64 %indvars.iv3062, 1 ; 2 uses
  %exitcond3066.not = icmp eq i64 %indvars.iv.next3063, %wide.trip.count3065
  %indvar.next3954 = add i64 %indvar3953, 1
  br i1 %exitcond3066.not, label %..loopexit2353_crit_edge, label %bb.hy, !llvm.loop !60

.critedge:                                        ; preds = %._crit_edge2691
  %i.bhx = load i32, ptr %7, align 4, !tbaa !114
  %i.bhy = shl i32 %i.bhx, 1
  %i.bhz = sext i32 %i.bhy to i64
  %i.bia = getelementptr [8 x i8], ptr %i.ab, i64 %i.bhz
  %i.bib = getelementptr i8, ptr %i.bia, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %i.bib, ptr noundef nonnull %7) #7
  %i.bic = load i32, ptr %i.o, align 4, !tbaa !114
  %i.bid = add nsw i32 %i.bic, -1                 ; 2 uses
  store i32 %i.bid, ptr %i.d, align 4, !tbaa !114
  store i32 %i.bid, ptr %i.e, align 4, !tbaa !114
  %i.bie = sext i32 %i.y to i64
  %i.bif = getelementptr [8 x i8], ptr %i.aa, i64 %i.bie
  %i.big = getelementptr i8, ptr %i.bif, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b34, ptr noundef nonnull @c_b34, ptr noundef %i.big, ptr noundef nonnull %14) #7
  %.pre3165.a = load i32, ptr %i.o, align 4, !tbaa !114
  br label %bb.ib

..loopexit2353_crit_edge:                         ; preds = %bb.ia
  %i.bih = add nsw i32 %i.bfa, -1
  store i32 %i.bih, ptr %i.e, align 4, !tbaa !114
  store double %.lcssa3829, ptr %i.f, align 8, !tbaa !116
  store double %.lcssa3828, ptr %i.j, align 8, !tbaa !116
  br label %.loopexit2353

.loopexit2353:                                    ; preds = %..loopexit2353_crit_edge, %bb.hx
  %storemerge2200.lcssa = phi i32 [ %i.bfd, %..loopexit2353_crit_edge ], [ 2, %bb.hx ]
  store i32 %storemerge2200.lcssa, ptr %i.k, align 4, !tbaa !114
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit2353, %.critedge
  %i.bii = phi i32 [ %i.bfa, %.loopexit2353 ], [ %.pre3165.a, %.critedge ] ; 2 uses
  %i.bij = load i32, ptr %16, align 4, !tbaa !114
  %i.bik = load i32, ptr %7, align 4, !tbaa !114
  %i.bil = add i32 %i.bii, 2
  %i.bim = mul i32 %i.bil, %i.bik                 ; 2 uses
  %i.bin = add i32 %i.bim, %i.bii                 ; 2 uses
  %i.bio = sub i32 %i.bij, %i.bin
end_hunk_0
