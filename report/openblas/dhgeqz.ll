Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dhgeqz?download=true
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dhgeqz_:bb.a
  %i.ack = load double, ptr %i.ov, align 8, !tbaa !138 ; 3 uses
  %i.acl = mul nsw i32 %.019342251, %i.an         ; 6 uses
  %i.acm = add nsw i32 %i.acl, %.019342251
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.acn ; 2 uses
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !138 ; 2 uses
  %i.acq = fneg double %i.acp
  %i.acr = load double, ptr %i.af, align 8, !tbaa !138 ; 3 uses
  %i.acs = load double, ptr %i.l, align 8, !tbaa !138 ; 3 uses
  %i.act = insertelement <2 x double> poison, double %i.aci, i64 0
  %i.acu = insertelement <2 x double> %i.act, double %i.acr, i64 1
  %i.acv = insertelement <2 x double> poison, double %i.acj, i64 0
  %i.acw = insertelement <2 x double> %i.acv, double %i.acs, i64 1
  %i.acx = fdiv <2 x double> %i.acu, %i.acw
  %i.acy = insertelement <2 x double> poison, double %i.ack, i64 0
  %i.acz = shufflevector <2 x double> %i.acy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ada = insertelement <2 x double> poison, double %i.acq, i64 0
  %i.adb = shufflevector <2 x double> %i.ada, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acx, <2 x double> %i.acz, <2 x double> %i.adb)
  %i.add = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.adc) ; 2 uses
  %shift = shufflevector <2 x double> %i.add, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ade = fcmp ogt <2 x double> %i.add, %shift
  %i.adf = extractelement <2 x i1> %i.ade, i64 0
  br i1 %i.adf, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store double %i.acr, ptr %i.y, align 8, !tbaa !138
  store double %i.aci, ptr %i.af, align 8, !tbaa !138
  store double %i.acs, ptr %i.k, align 8, !tbaa !138
  store double %i.acj, ptr %i.l, align 8, !tbaa !138
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.adg = phi double [ %i.acs, %bb.bn ], [ %i.acj, %bb.bm ] ; 4 uses
  %i.adh = phi double [ %i.acr, %bb.bn ], [ %i.aci, %bb.bm ] ; 4 uses
  %i.adi = fcmp oge double %i.adh, 0.000000e+00
  %i.adj = fneg double %i.adh
  %i.adk = select i1 %i.adi, double %i.adh, double %i.adj ; 2 uses
  %i.adl = fcmp ole double %i.adk, 1.000000e+00
  %i.adm = select i1 %i.adl, double 1.000000e+00, double %i.adk ; 2 uses
  %i.adn = load double, ptr %i.w, align 8, !tbaa !138 ; 4 uses
  %i.ado = fcmp oge double %i.adn, 0.000000e+00
  %i.adp = fneg double %i.adn
  %i.adq = select i1 %i.ado, double %i.adn, double %i.adp ; 2 uses
  store double %i.adg, ptr %i.d, align 8, !tbaa !138
  %i.adr = fcmp oge double %i.adm, %i.adq
  %i.ads = select i1 %i.adr, double %i.adm, double %i.adq
  %i.adt = fmul double %i.cs, %i.ads              ; 2 uses
  %i.adu = fcmp oge double %i.adg, %i.adt
  %i.adv = select i1 %i.adu, double %i.adg, double %i.adt
  store double %i.adv, ptr %i.e, align 8, !tbaa !138
  %i.adw = fcmp une double %i.adn, 0.000000e+00
  br i1 %i.adw, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %i.adx = phi double [ %.11907, %bb.bl ], [ %i.adh, %bb.bo ] ; 5 uses
  %i.ady = phi double [ 1.000000e+00, %bb.bl ], [ %i.adg, %bb.bo ] ; 3 uses
  %.21908 = phi double [ %.11907, %bb.bl ], [ %.019062257, %bb.bo ] ; 2 uses
  %i.adz = fdiv double %i.mf, %i.ady
  %i.aea = call double @llvm.fabs.f64(double %i.adx)
  %i.aeb = insertelement <2 x double> poison, double %i.ady, i64 0
  %i.aec = insertelement <2 x double> %i.aeb, double %i.aea, i64 1
  %i.aed = fcmp ogt <2 x double> %i.aec, %i.kb    ; 2 uses
  %i.aee = extractelement <2 x i1> %i.aed, i64 0
  %.01938 = select i1 %i.aee, double %i.adz, double 1.000000e+00 ; 4 uses
  %i.aef = extractelement <2 x i1> %i.aed, i64 1
  br i1 %i.aef, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store double %.01938, ptr %i.d, align 8, !tbaa !138
  %i.aeg = fcmp oge double %i.adx, 0.000000e+00
  %i.aeh = fneg double %i.adx
  %i.aei = select i1 %i.aeg, double %i.adx, double %i.aeh
  %i.aej = fdiv double %i.mg, %i.aei              ; 2 uses
  %i.aek = fcmp ole double %.01938, %i.aej
  %i.ael = select i1 %i.aek, double %.01938, double %i.aej
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.11939 = phi double [ %i.ael, %bb.bq ], [ %.01938, %bb.bp ] ; 2 uses
  %i.aem = fmul double %i.ady, %.11939            ; 5 uses
  store double %i.aem, ptr %i.k, align 8, !tbaa !138
  %i.aen = fmul double %i.adx, %.11939            ; 3 uses
  store double %i.aen, ptr %i.y, align 8, !tbaa !138
  %i.aeo = add nsw i32 %.01897, 1
  store i32 %i.aeo, ptr %i.b, align 4, !tbaa !136
  %i.aep = sext i32 %.01897 to i64
  %.not2030.not2771 = icmp sgt i32 %i.ok, %.01897
  br i1 %.not2030.not2771, label %.lr.ph2774, label %._crit_edge2508

.lr.ph2774:                                       ; preds = %bb.br
  %i.aeq = sext i32 %i.ok to i64
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bt
  %.not2030.not = icmp sgt i64 %indvars.iv.next2429, %i.aep
  br i1 %.not2030.not, label %bb.bt, label %._crit_edge2508.loopexit, !llvm.loop !33

._crit_edge2508.loopexit:                         ; preds = %bb.bs
  store double %i.afq, ptr %i.j, align 8, !tbaa !138
  store double %i.agf, ptr %i.d, align 8, !tbaa !138
  br label %._crit_edge2508

._crit_edge2508:                                  ; preds = %._crit_edge2508.loopexit, %bb.br
  %.pre2509 = mul i32 %.01897, %i.de
  %.pre2510 = sext i32 %.pre2509 to i64
  br label %split

bb.bt:                                            ; preds = %.lr.ph2774, %bb.bs
  %indvars.iv24282772 = phi i64 [ %i.aeq, %.lr.ph2774 ], [ %indvars.iv.next2429, %bb.bs ] ; 6 uses
  %indvars.iv.next2429 = add nsw i64 %indvars.iv24282772, -1 ; 3 uses
  %i.aer = mul nsw i64 %indvars.iv.next2429, %i.ke
  %i.aes = getelementptr [8 x i8], ptr %i.ap, i64 %i.aer
  %i.aet = getelementptr [8 x i8], ptr %i.aes, i64 %indvars.iv24282772
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !138
  %i.aev = fmul double %i.aem, %i.aeu
  %i.aew = mul nsw i64 %indvars.iv24282772, %i.ke ; 2 uses
  %i.aex = getelementptr [8 x i8], ptr %i.ap, i64 %i.aew
  %i.aey = getelementptr [8 x i8], ptr %i.aex, i64 %indvars.iv24282772
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !138
  %i.afa = trunc nsw i64 %indvars.iv24282772 to i32 ; 2 uses
  %i.afb = mul i32 %i.de, %i.afa
  %i.afc = sext i32 %i.afb to i64                 ; 2 uses
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !138
  %i.aff = fneg double %i.afe
  %i.afg = fmul double %i.aen, %i.aff
  %i.afh = call double @llvm.fmuladd.f64(double %i.aem, double %i.aez, double %i.afg)
  %i.afi = insertelement <2 x double> poison, double %i.aev, i64 0
  %i.afj = insertelement <2 x double> %i.afi, double %i.afh, i64 1 ; 3 uses
  %i.afk = fcmp oge <2 x double> %i.afj, zeroinitializer
  %i.afl = fneg <2 x double> %i.afj
  %i.afm = select <2 x i1> %i.afk, <2 x double> %i.afj, <2 x double> %i.afl ; 3 uses
  %i.afn = extractelement <2 x double> %i.afm, i64 0 ; 3 uses
  %i.afo = extractelement <2 x double> %i.afm, i64 1 ; 3 uses
  %i.afp = fcmp oge double %i.afn, %i.afo
  %i.afq = select i1 %i.afp, double %i.afn, double %i.afo ; 5 uses
  %i.afr = fcmp olt double %i.afq, 1.000000e+00
  %i.afs = fcmp une double %i.afq, 0.000000e+00
  %or.cond7 = and i1 %i.afr, %i.afs               ; 2 uses
  %i.aft = insertelement <2 x double> poison, double %i.afq, i64 0
  %i.afu = shufflevector <2 x double> %i.aft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afv = fdiv <2 x double> %i.afm, %i.afu       ; 2 uses
  %i.afw = extractelement <2 x double> %i.afv, i64 1
  %i.afx = select i1 %or.cond7, double %i.afw, double %i.afo
  %i.afy = extractelement <2 x double> %i.afv, i64 0
  %i.afz = select i1 %or.cond7, double %i.afy, double %i.afn
  %i.aga = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv24282772
  %i.agb = getelementptr i8, ptr %i.aga, i64 8
  %i.agc = getelementptr [8 x i8], ptr %i.agb, i64 %i.aew
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !138
  %i.age = fmul double %i.jo, %i.agd
  %i.agf = fmul double %i.age, %i.afz             ; 3 uses
  %i.agg = call double @llvm.fabs.f64(double %i.agf)
  %i.agh = fmul double %i.jp, %i.afx
  %i.agi = fcmp ugt double %i.agg, %i.agh
  br i1 %i.agi, label %bb.bs, label %split.loopexit, !llvm.loop !33

split.loopexit:                                   ; preds = %bb.bt
  store double %i.afq, ptr %i.j, align 8, !tbaa !138
  store double %i.agf, ptr %i.d, align 8, !tbaa !138
  br label %split

split:                                            ; preds = %split.loopexit, %._crit_edge2508
  %.pre-phi2511 = phi i64 [ %.pre2510, %._crit_edge2508 ], [ %i.afc, %split.loopexit ]
  %.01894 = phi i32 [ %.01897, %._crit_edge2508 ], [ %i.afa, %split.loopexit ] ; 10 uses
  %i.agj = mul i32 %.01894, %.018942559           ; 2 uses
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.agk
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !138
  %i.agn = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.pre-phi2511
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !138
  %i.agp = fneg double %i.ago
  %i.agq = fmul double %i.aen, %i.agp
  %i.agr = call double @llvm.fmuladd.f64(double %i.aem, double %i.agm, double %i.agq)
  store double %i.agr, ptr %i.e, align 8, !tbaa !138
  %i.ags = add i32 %i.agj, 1
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !138
  %i.agw = fmul double %i.aem, %i.agv
  store double %i.agw, ptr %i.f, align 8, !tbaa !138
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j) #4
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !136
  %.not20312237.not = icmp slt i32 %.01894, %.019342251
  br i1 %.not20312237.not, label %.lr.ph2240.preheader, label %.loopexit2095

.lr.ph2240.preheader:                             ; preds = %split
  %i.agx = sext i32 %.01894 to i64                ; 11 uses
  %i.agy = add i32 %.119022258, 1                 ; 2 uses
  %i.agz = sext i32 %spec.select2069 to i64       ; 12 uses
  %i.aha = sext i32 %.119022258 to i64
  %i.ahb = mul i64 %i.kl, %i.agx
  %i.ahc = add nsw i64 %i.agx, 1
  %i.ahd = mul i64 %i.kn, %i.ahc
  %i.ahe = mul i64 %i.kp, %i.agx                  ; 2 uses
  %i.ahf = shl nsw i64 %i.agz, 3                  ; 4 uses
  %i.ahg = sub i32 %.01894, %spec.select2069
  %i.ahh = add nsw i64 %i.agx, 1
  %i.ahi = mul i64 %i.kr, %i.ahh                  ; 2 uses
  %20 = sub i32 %.01894, %spec.select2069
  %i.ahj = mul i64 %i.kt, %i.agx
  %i.ahk = shl nsw i64 %i.agz, 3                  ; 2 uses
  %i.ahl = mul nsw i64 %i.ke, %i.agx
  %i.ahm = add i64 %i.ahl, %i.ao
  %i.ahn = shl i64 %i.ahm, 3
  %i.aho = add i32 %.01894, 2
  %i.ahp = add nsw i64 %i.agx, 1                  ; 2 uses
  %i.ahq = mul i64 %i.kv, %i.ahp                  ; 2 uses
  %i.ahr = mul i64 %i.kx, %i.ahp
  %i.ahs = mul i64 %i.kz, %i.agx
  %i.aht = shl nsw i64 %i.agx, 4                  ; 2 uses
  %i.ahu = add nsw i64 %i.aht, -16                ; 2 uses
  %i.ahv = add i32 %.119022258, 1
  %i.ahw = getelementptr i8, ptr %i.np, i64 %i.ahr
  %i.ahx = getelementptr i8, ptr %i.nr, i64 %i.ahs
  %i.ahy = getelementptr i8, ptr %i.ns, i64 %i.ahj
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 %i.ahk
  %i.aia = getelementptr i8, ptr %6, i64 %i.ahn
  %i.aib = getelementptr i8, ptr %i.aia, i64 8
  %i.aic = getelementptr i8, ptr %i.nt, i64 %i.ahq
  %i.aid = getelementptr i8, ptr %i.aic, i64 %i.ahk
  %i.aie = getelementptr i8, ptr %i.nv, i64 %i.ahq
  %i.aif = getelementptr i8, ptr %i.nw, i64 %i.ahe
  %i.aig = getelementptr i8, ptr %i.aif, i64 %i.ahf
  %i.aih = getelementptr i8, ptr %i.ny, i64 %i.ahe
  %i.aii = getelementptr i8, ptr %i.aih, i64 %i.ahf
  %i.aij = getelementptr i8, ptr %i.nz, i64 %i.ahi
  %i.aik = getelementptr i8, ptr %i.aij, i64 %i.ahf
  %i.ail = getelementptr i8, ptr %i.ob, i64 %i.ahi
  %i.aim = getelementptr i8, ptr %i.ail, i64 %i.ahf
  %i.ain = getelementptr i8, ptr %i.od, i64 %i.ahb
  %i.aio = getelementptr i8, ptr %i.of, i64 %i.ahd
  %invariant.op3668 = sub i64 1, %i.agz
  br label %.lr.ph2240

.lr.ph2240:                                       ; preds = %.lr.ph2240.preheader, %.loopexit2088
  %indvar2887 = phi i64 [ 0, %.lr.ph2240.preheader ], [ %indvar.next2888, %.loopexit2088 ] ; 13 uses
  %indvars.iv2454.in = phi i32 [ %.01894, %.lr.ph2240.preheader ], [ %indvars.iv2454, %.loopexit2088 ] ; 2 uses
  %indvars.iv2432 = phi i64 [ %i.agx, %.lr.ph2240.preheader ], [ %indvars.iv.next2433, %.loopexit2088 ] ; 26 uses
  %i.aip = trunc i64 %indvar2887 to i32
  %i.aiq = add i32 %.01894, %i.aip
  %i.air = sub i32 %i.ahv, %i.aiq                 ; 2 uses
  %i.ais = trunc i64 %indvar2887 to i32
  %i.ait = add i32 %.01894, %i.ais                ; 2 uses
  %i.aiu = shl nuw nsw i64 %indvar2887, 4
  %i.aiv = add i64 %i.ahu, %i.aiu                 ; 2 uses
  %scevgep3497 = getelementptr i8, ptr %8, i64 %i.aiv
  %scevgep3500 = getelementptr i8, ptr %6, i64 %i.aiv
  %i.aiw = shl nuw nsw i64 %indvar2887, 4         ; 2 uses
  %i.aix = add i64 %i.ahu, %i.aiw                 ; 2 uses
  %scevgep3481 = getelementptr i8, ptr %6, i64 %i.aix
  %i.aiy = add i64 %i.aht, %i.aiw                 ; 2 uses
  %scevgep3482 = getelementptr i8, ptr %6, i64 %i.aiy
  %i.aiz = trunc i64 %indvar2887 to i32
  %i.aja = add i32 %.01894, %i.aiz
  %i.ajb = sub i32 %.119022258, %i.aja
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = shl nuw nsw i64 %i.ajc, 3              ; 2 uses
  %scevgep3483 = getelementptr i8, ptr %scevgep3482, i64 %i.ajd
  %scevgep3484 = getelementptr i8, ptr %8, i64 %i.aix
  %scevgep3485 = getelementptr i8, ptr %8, i64 %i.aiy
  %scevgep3486 = getelementptr i8, ptr %scevgep3485, i64 %i.ajd
  %i.aje = mul i64 %i.ky, %indvar2887             ; 2 uses
  %scevgep2975 = getelementptr i8, ptr %i.ahw, i64 %i.aje
  %scevgep2977 = getelementptr i8, ptr %i.ahx, i64 %i.aje
  %i.ajf = mul i64 %i.ku, %indvar2887             ; 4 uses
  %scevgep2945 = getelementptr i8, ptr %i.ahz, i64 %i.ajf
  %scevgep2946 = getelementptr i8, ptr %i.aib, i64 %i.ajf
  %i.ajg = trunc i64 %indvar2887 to i32
  %i.ajh = add i32 %i.aho, %i.ajg
  %i.aji = call i32 @llvm.smin.i32(i32 %.019342251, i32 %i.ajh)
  %i.ajj = call i32 @llvm.smax.i32(i32 %i.aji, i32 %spec.select2069)
  %smax = sext i32 %i.ajj to i64
  %i.ajk = shl nsw i64 %smax, 3                   ; 2 uses
  %scevgep2947 = getelementptr i8, ptr %scevgep2946, i64 %i.ajk
  %scevgep2948 = getelementptr i8, ptr %i.aid, i64 %i.ajf
  %scevgep2949 = getelementptr i8, ptr %i.aie, i64 %i.ajf
  %scevgep2950 = getelementptr i8, ptr %scevgep2949, i64 %i.ajk
  %21 = trunc i64 %indvar2887 to i32
  %22 = add i32 %20, %21                          ; 2 uses
  %i.ajl = mul i64 %i.kq, %indvar2887             ; 4 uses
  %scevgep2915 = getelementptr i8, ptr %i.aig, i64 %i.ajl
  %scevgep2916 = getelementptr i8, ptr %i.aii, i64 %i.ajl
  %i.ajm = trunc i64 %indvar2887 to i32
  %i.ajn = add i32 %i.ahg, %i.ajm
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = shl nuw nsw i64 %i.ajo, 3              ; 2 uses
  %scevgep2917 = getelementptr i8, ptr %scevgep2916, i64 %i.ajp
  %scevgep2918 = getelementptr i8, ptr %i.aik, i64 %i.ajl
  %scevgep2919 = getelementptr i8, ptr %i.aim, i64 %i.ajl
  %scevgep2920 = getelementptr i8, ptr %scevgep2919, i64 %i.ajp
  %i.ajq = mul i64 %i.km, %indvar2887             ; 2 uses
  %scevgep2889 = getelementptr i8, ptr %i.ain, i64 %i.ajq
  %scevgep2891 = getelementptr i8, ptr %i.aio, i64 %i.ajq
  %indvars.iv2454 = add i32 %indvars.iv2454.in, 1 ; 3 uses
  %i.ajr = icmp sgt i64 %indvars.iv2432, %i.agx
  br i1 %i.ajr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph2240
  %indvars2465 = trunc i64 %indvars.iv2432 to i32
  %i.ajs = add nsw i64 %indvars.iv2432, -1
  %i.ajt = add nsw i32 %indvars2465, -1
  %i.aju = mul nsw i64 %i.ajs, %i.ke
  %i.ajv = mul nsw i32 %i.ajt, %i.an
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432
  %i.ajy = getelementptr [8 x i8], ptr %i.ajx, i64 %i.ajw ; 2 uses
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !138
  store double %i.ajz, ptr %i.e, align 8, !tbaa !138
  %i.aka = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432
  %i.akb = getelementptr i8, ptr %i.aka, i64 8
  %i.akc = getelementptr [8 x i8], ptr %i.akb, i64 %i.aju ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef %i.akc, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ajy) #4
  store double 0.000000e+00, ptr %i.akc, align 8, !tbaa !138
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph2240
  %.not20322210 = icmp sgt i64 %indvars.iv2432, %i.aha
  br i1 %.not20322210, label %bb.bw, label %.lver.check3493

.lver.check3493:                                  ; preds = %bb.bv
  %i.akd = load double, ptr %i.g, align 8, !tbaa !138 ; 24 uses
  %i.ake = load double, ptr %i.h, align 8, !tbaa !138 ; 13 uses
  %i.akf = add nsw i64 %indvars.iv2432, 1         ; 2 uses
  %i.akg = fneg double %i.ake                     ; 12 uses
  %invariant.gep2685 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432 ; 6 uses
  %invariant.gep2687 = getelementptr [8 x i8], ptr %i.ap, i64 %i.akf ; 6 uses
  %invariant.gep2689 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2432 ; 6 uses
  %invariant.gep2691 = getelementptr [8 x i8], ptr %i.as, i64 %i.akf ; 6 uses
  %bound03487 = icmp ult ptr %scevgep3481, %scevgep3486
  %bound13488 = icmp ult ptr %scevgep3484, %scevgep3483
  %found.conflict3489 = and i1 %bound03487, %bound13488
  %lver.safe3492 = or i1 %found.conflict3489, %i.og
  br i1 %lver.safe3492, label %.ph3494.lver.orig.preheader, label %.ph3494

.ph3494.lver.orig.preheader:                      ; preds = %.lver.check3493
  %xtraiter3592 = and i32 %i.air, 1
  %lcmp.mod3593.not = icmp eq i32 %xtraiter3592, 0
  br i1 %lcmp.mod3593.not, label %.ph3494.lver.orig.prol.loopexit, label %.ph3494.lver.orig.prol

.ph3494.lver.orig.prol:                           ; preds = %.ph3494.lver.orig.preheader
  %i.akh = mul nsw i64 %indvars.iv2432, %i.ke     ; 2 uses
  %gep2686.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.akh ; 2 uses
  %i.aki = load double, ptr %gep2686.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.akh ; 2 uses
  %i.akj = load double, ptr %gep2688.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %i.akk = fmul double %i.ake, %i.akj
  %i.akl = call double @llvm.fmuladd.f64(double %i.akd, double %i.aki, double %i.akk)
  %i.akm = fmul double %i.akd, %i.akj
  %i.akn = call double @llvm.fmuladd.f64(double %i.akg, double %i.aki, double %i.akm)
  store double %i.akn, ptr %gep2688.lver.orig.prol, align 8, !tbaa !138
  store double %i.akl, ptr %gep2686.lver.orig.prol, align 8, !tbaa !138
  %i.ako = mul nsw i64 %indvars.iv2432, %i.kd     ; 2 uses
  %gep2690.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.ako ; 2 uses
  %i.akp = load double, ptr %gep2690.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.ako ; 2 uses
  %i.akq = load double, ptr %gep2692.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %i.akr = fmul double %i.ake, %i.akq
  %i.aks = call double @llvm.fmuladd.f64(double %i.akd, double %i.akp, double %i.akr) ; 2 uses
  %i.akt = fmul double %i.akd, %i.akq
  %i.aku = call double @llvm.fmuladd.f64(double %i.akg, double %i.akp, double %i.akt)
  store double %i.aku, ptr %gep2692.lver.orig.prol, align 8, !tbaa !138
  store double %i.aks, ptr %gep2690.lver.orig.prol, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig.prol = add nsw i64 %indvars.iv2432, 1
  br label %.ph3494.lver.orig.prol.loopexit

.ph3494.lver.orig.prol.loopexit:                  ; preds = %.ph3494.lver.orig.prol, %.ph3494.lver.orig.preheader
  %.lcssa3554.unr = phi double [ poison, %.ph3494.lver.orig.preheader ], [ %i.aks, %.ph3494.lver.orig.prol ]
  %indvars.iv2434.lver.orig.unr = phi i64 [ %indvars.iv2432, %.ph3494.lver.orig.preheader ], [ %indvars.iv.next2435.lver.orig.prol, %.ph3494.lver.orig.prol ]
  %i.akv = icmp eq i32 %.119022258, %i.ait
  br i1 %i.akv, label %._crit_edge2214, label %.ph3494.lver.orig

.ph3494.lver.orig:                                ; preds = %.ph3494.lver.orig.prol.loopexit, %.ph3494.lver.orig
  %indvars.iv2434.lver.orig = phi i64 [ %indvars.iv.next2435.lver.orig.1, %.ph3494.lver.orig ], [ %indvars.iv2434.lver.orig.unr, %.ph3494.lver.orig.prol.loopexit ] ; 4 uses
  %i.akw = mul nsw i64 %indvars.iv2434.lver.orig, %i.ke ; 2 uses
  %gep2686.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.akw ; 2 uses
  %i.akx = load double, ptr %gep2686.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.akw ; 2 uses
  %i.aky = load double, ptr %gep2688.lver.orig, align 8, !tbaa !138 ; 2 uses
  %i.akz = fmul double %i.ake, %i.aky
  %i.ala = call double @llvm.fmuladd.f64(double %i.akd, double %i.akx, double %i.akz)
  %i.alb = fmul double %i.akd, %i.aky
  %i.alc = call double @llvm.fmuladd.f64(double %i.akg, double %i.akx, double %i.alb)
  store double %i.alc, ptr %gep2688.lver.orig, align 8, !tbaa !138
  store double %i.ala, ptr %gep2686.lver.orig, align 8, !tbaa !138
  %i.ald = mul nsw i64 %indvars.iv2434.lver.orig, %i.kd ; 2 uses
  %gep2690.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.ald ; 2 uses
  %i.ale = load double, ptr %gep2690.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.ald ; 2 uses
  %i.alf = load double, ptr %gep2692.lver.orig, align 8, !tbaa !138 ; 2 uses
  %i.alg = fmul double %i.ake, %i.alf
  %i.alh = call double @llvm.fmuladd.f64(double %i.akd, double %i.ale, double %i.alg)
  %i.ali = fmul double %i.akd, %i.alf
  %i.alj = call double @llvm.fmuladd.f64(double %i.akg, double %i.ale, double %i.ali)
  store double %i.alj, ptr %gep2692.lver.orig, align 8, !tbaa !138
  store double %i.alh, ptr %gep2690.lver.orig, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig = add nsw i64 %indvars.iv2434.lver.orig, 1 ; 2 uses
  %i.alk = mul nsw i64 %indvars.iv.next2435.lver.orig, %i.ke ; 2 uses
  %gep2686.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.alk ; 2 uses
  %i.all = load double, ptr %gep2686.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.alk ; 2 uses
  %i.alm = load double, ptr %gep2688.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %i.aln = fmul double %i.ake, %i.alm
  %i.alo = call double @llvm.fmuladd.f64(double %i.akd, double %i.all, double %i.aln)
  %i.alp = fmul double %i.akd, %i.alm
  %i.alq = call double @llvm.fmuladd.f64(double %i.akg, double %i.all, double %i.alp)
  store double %i.alq, ptr %gep2688.lver.orig.1, align 8, !tbaa !138
  store double %i.alo, ptr %gep2686.lver.orig.1, align 8, !tbaa !138
  %i.alr = mul nsw i64 %indvars.iv.next2435.lver.orig, %i.kd ; 2 uses
  %gep2690.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.alr ; 2 uses
  %i.als = load double, ptr %gep2690.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.alr ; 2 uses
  %i.alt = load double, ptr %gep2692.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %i.alu = fmul double %i.ake, %i.alt
  %i.alv = call double @llvm.fmuladd.f64(double %i.akd, double %i.als, double %i.alu) ; 2 uses
  %i.alw = fmul double %i.akd, %i.alt
  %i.alx = call double @llvm.fmuladd.f64(double %i.akg, double %i.als, double %i.alw)
  store double %i.alx, ptr %gep2692.lver.orig.1, align 8, !tbaa !138
  store double %i.alv, ptr %gep2690.lver.orig.1, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig.1 = add nsw i64 %indvars.iv2434.lver.orig, 2 ; 2 uses
  %lftr.wideiv2438.lver.orig.1 = trunc i64 %indvars.iv.next2435.lver.orig.1 to i32
  %exitcond2439.not.lver.orig.1 = icmp eq i32 %i.agy, %lftr.wideiv2438.lver.orig.1
  br i1 %exitcond2439.not.lver.orig.1, label %._crit_edge2214, label %.ph3494.lver.orig, !llvm.loop !34

.ph3494:                                          ; preds = %.lver.check3493
  %load_initial3498 = load double, ptr %scevgep3497, align 8 ; 3 uses
  %load_initial3501 = load double, ptr %scevgep3500, align 8 ; 3 uses
  %xtraiter3589 = and i32 %i.air, 1
  %lcmp.mod3590.not = icmp eq i32 %xtraiter3589, 0
  br i1 %lcmp.mod3590.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.ph3494
  %i.aly = mul nuw nsw i64 %indvars.iv2432, %i.ke ; 2 uses
  %gep2686.prol = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.aly
  %gep2688.prol = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.aly ; 2 uses
  %i.alz = load double, ptr %gep2688.prol, align 8, !tbaa !138 ; 2 uses
  %i.ama = fmul double %i.ake, %i.alz
  %i.amb = call double @llvm.fmuladd.f64(double %i.akd, double %load_initial3501, double %i.ama)
  %i.amc = fmul double %i.akd, %i.alz
  %i.amd = call double @llvm.fmuladd.f64(double %i.akg, double %load_initial3501, double %i.amc) ; 2 uses
  store double %i.amd, ptr %gep2688.prol, align 8, !tbaa !138
  store double %i.amb, ptr %gep2686.prol, align 8, !tbaa !138
  %i.ame = mul nuw nsw i64 %indvars.iv2432, %i.kd ; 2 uses
  %gep2690.prol = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.ame
  %gep2692.prol = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.ame ; 2 uses
  %i.amf = load double, ptr %gep2692.prol, align 8, !tbaa !138 ; 2 uses
  %i.amg = fmul double %i.ake, %i.amf
  %i.amh = call double @llvm.fmuladd.f64(double %i.akd, double %load_initial3498, double %i.amg) ; 2 uses
  %i.ami = fmul double %i.akd, %i.amf
  %i.amj = call double @llvm.fmuladd.f64(double %i.akg, double %load_initial3498, double %i.ami) ; 2 uses
  store double %i.amj, ptr %gep2692.prol, align 8, !tbaa !138
  store double %i.amh, ptr %gep2690.prol, align 8, !tbaa !138
  %indvars.iv.next2435.prol = add nsw i64 %indvars.iv2432, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.ph3494
  %.lcssa3553.unr = phi double [ poison, %.ph3494 ], [ %i.amh, %.prol.loopexit.unr-lcssa ]
  %store_forwarded3502.unr = phi double [ %load_initial3501, %.ph3494 ], [ %i.amd, %.prol.loopexit.unr-lcssa ]
  %store_forwarded3499.unr = phi double [ %load_initial3498, %.ph3494 ], [ %i.amj, %.prol.loopexit.unr-lcssa ]
  %indvars.iv2434.unr = phi i64 [ %indvars.iv2432, %.ph3494 ], [ %indvars.iv.next2435.prol, %.prol.loopexit.unr-lcssa ]
  %i.amk = icmp eq i32 %.119022258, %i.ait
  br i1 %i.amk, label %._crit_edge2214, label %.ph3494.new

.ph3494.new:                                      ; preds = %.prol.loopexit, %.ph3494.new
  %store_forwarded3502 = phi double [ %i.anc, %.ph3494.new ], [ %store_forwarded3502.unr, %.prol.loopexit ] ; 2 uses
  %store_forwarded3499 = phi double [ %i.ani, %.ph3494.new ], [ %store_forwarded3499.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv2434 = phi i64 [ %indvars.iv.next2435.1, %.ph3494.new ], [ %indvars.iv2434.unr, %.prol.loopexit ] ; 4 uses
  %i.aml = mul nuw nsw i64 %indvars.iv2434, %i.ke ; 2 uses
  %gep2686 = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.aml
  %gep2688 = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.aml ; 2 uses
  %i.amm = load double, ptr %gep2688, align 8, !tbaa !138 ; 2 uses
  %i.amn = fmul double %i.ake, %i.amm
  %i.amo = call double @llvm.fmuladd.f64(double %i.akd, double %store_forwarded3502, double %i.amn)
  %i.amp = fmul double %i.akd, %i.amm
  %i.amq = call double @llvm.fmuladd.f64(double %i.akg, double %store_forwarded3502, double %i.amp) ; 3 uses
  store double %i.amq, ptr %gep2688, align 8, !tbaa !138
  store double %i.amo, ptr %gep2686, align 8, !tbaa !138
  %i.amr = mul nuw nsw i64 %indvars.iv2434, %i.kd ; 2 uses
  %gep2690 = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.amr
  %gep2692 = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.amr ; 2 uses
end_hunk_0
begin_hunk_1_@dhgeqz_:bb.a
  %i.aoa = fmul <4 x double> %broadcast.splat2989, %wide.load2997
  %i.aob = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2987, <4 x double> %wide.load2994, <4 x double> %i.anz)
  %i.aoc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2987, <4 x double> %wide.load2995, <4 x double> %i.aoa)
  %i.aod = fmul <4 x double> %broadcast.splat2987, %wide.load2996
  %i.aoe = fmul <4 x double> %broadcast.splat2987, %wide.load2997
  %i.aof = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2991, <4 x double> %wide.load2994, <4 x double> %i.aod)
  %i.aog = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2991, <4 x double> %wide.load2995, <4 x double> %i.aoe)
  store <4 x double> %i.aof, ptr %i.anx, align 8, !tbaa !138, !alias.scope !150, !noalias !149
  store <4 x double> %i.aog, ptr %i.any, align 8, !tbaa !138, !alias.scope !150, !noalias !149
  store <4 x double> %i.aob, ptr %i.anv, align 8, !tbaa !138, !alias.scope !149
  store <4 x double> %i.aoc, ptr %i.anw, align 8, !tbaa !138, !alias.scope !149
  %index.next2998 = add nuw i64 %index2993, 8     ; 2 uses
  %i.aoh = icmp eq i64 %index.next2998, %n.vec2985
  br i1 %i.aoh, label %middle.block2999, label %vector.body2992, !llvm.loop !38

middle.block2999:                                 ; preds = %vector.body2992
  %cmp.n3000 = icmp eq i64 %n.vec2985, %i.anr
  br i1 %cmp.n3000, label %.loopexit2089, label %scalar.ph2982.preheader

scalar.ph2982.preheader:                          ; preds = %vector.memcheck2974, %.lr.ph2220, %middle.block2999
  %indvars.iv2440.ph = phi i64 [ 1, %vector.memcheck2974 ], [ 1, %.lr.ph2220 ], [ %i.ant, %middle.block2999 ] ; 4 uses
  %i.aoi = sub nsw i64 %wide.trip.count2444, %indvars.iv2440.ph
  %i.aoj = zext nneg i32 %i.anj to i64
  %i.aok = sub nsw i64 %i.aoj, %indvars.iv2440.ph
  %xtraiter3595 = and i64 %i.aoi, 3               ; 2 uses
  %lcmp.mod3596.not = icmp eq i64 %xtraiter3595, 0
  br i1 %lcmp.mod3596.not, label %scalar.ph2982.prol.loopexit, label %scalar.ph2982.prol

scalar.ph2982.prol:                               ; preds = %scalar.ph2982.preheader, %scalar.ph2982.prol
  %indvars.iv2440.prol = phi i64 [ %indvars.iv.next2441.prol, %scalar.ph2982.prol ], [ %indvars.iv2440.ph, %scalar.ph2982.preheader ] ; 3 uses
  %prol.iter3597 = phi i64 [ %prol.iter3597.next, %scalar.ph2982.prol ], [ 0, %scalar.ph2982.preheader ]
  %gep2694.prol = getelementptr [8 x i8], ptr %invariant.gep2693, i64 %indvars.iv2440.prol ; 2 uses
  %i.aol = load double, ptr %gep2694.prol, align 8, !tbaa !138 ; 2 uses
  %gep2696.prol = getelementptr [8 x i8], ptr %invariant.gep2695, i64 %indvars.iv2440.prol ; 2 uses
  %i.aom = load double, ptr %gep2696.prol, align 8, !tbaa !138 ; 2 uses
  %i.aon = fmul double %i.anm, %i.aom
  %i.aoo = call double @llvm.fmuladd.f64(double %i.ank, double %i.aol, double %i.aon)
  %i.aop = fmul double %i.ank, %i.aom
  %i.aoq = call double @llvm.fmuladd.f64(double %i.anp, double %i.aol, double %i.aop)
  store double %i.aoq, ptr %gep2696.prol, align 8, !tbaa !138
  store double %i.aoo, ptr %gep2694.prol, align 8, !tbaa !138
  %indvars.iv.next2441.prol = add nuw nsw i64 %indvars.iv2440.prol, 1 ; 2 uses
  %prol.iter3597.next = add i64 %prol.iter3597, 1 ; 2 uses
  %prol.iter3597.cmp.not = icmp eq i64 %prol.iter3597.next, %xtraiter3595
  br i1 %prol.iter3597.cmp.not, label %scalar.ph2982.prol.loopexit, label %scalar.ph2982.prol, !llvm.loop !39

scalar.ph2982.prol.loopexit:                      ; preds = %scalar.ph2982.prol, %scalar.ph2982.preheader
  %indvars.iv2440.unr = phi i64 [ %indvars.iv2440.ph, %scalar.ph2982.preheader ], [ %indvars.iv.next2441.prol, %scalar.ph2982.prol ]
  %i.aor = icmp ult i64 %i.aok, 3
  br i1 %i.aor, label %.loopexit2089, label %scalar.ph2982

scalar.ph2982:                                    ; preds = %scalar.ph2982.prol.loopexit, %scalar.ph2982
  %indvars.iv2440 = phi i64 [ %indvars.iv.next2441.3, %scalar.ph2982 ], [ %indvars.iv2440.unr, %scalar.ph2982.prol.loopexit ] ; 6 uses
  %gep2694 = getelementptr [8 x i8], ptr %invariant.gep2693, i64 %indvars.iv2440 ; 2 uses
  %i.aos = load double, ptr %gep2694, align 8, !tbaa !138 ; 2 uses
  %gep2696 = getelementptr [8 x i8], ptr %invariant.gep2695, i64 %indvars.iv2440 ; 2 uses
  %i.aot = load double, ptr %gep2696, align 8, !tbaa !138 ; 2 uses
  %i.aou = fmul double %i.anm, %i.aot
  %i.aov = call double @llvm.fmuladd.f64(double %i.ank, double %i.aos, double %i.aou)
  %i.aow = fmul double %i.ank, %i.aot
  %i.aox = call double @llvm.fmuladd.f64(double %i.anp, double %i.aos, double %i.aow)
  store double %i.aox, ptr %gep2696, align 8, !tbaa !138
  store double %i.aov, ptr %gep2694, align 8, !tbaa !138
  %indvars.iv.next2441 = add nuw nsw i64 %indvars.iv2440, 1 ; 2 uses
  %gep2694.1 = getelementptr [8 x i8], ptr %invariant.gep2693, i64 %indvars.iv.next2441 ; 2 uses
  %i.aoy = load double, ptr %gep2694.1, align 8, !tbaa !138 ; 2 uses
  %gep2696.1 = getelementptr [8 x i8], ptr %invariant.gep2695, i64 %indvars.iv.next2441 ; 2 uses
  %i.aoz = load double, ptr %gep2696.1, align 8, !tbaa !138 ; 2 uses
  %i.apa = fmul double %i.anm, %i.aoz
  %i.apb = call double @llvm.fmuladd.f64(double %i.ank, double %i.aoy, double %i.apa)
  %i.apc = fmul double %i.ank, %i.aoz
  %i.apd = call double @llvm.fmuladd.f64(double %i.anp, double %i.aoy, double %i.apc)
  store double %i.apd, ptr %gep2696.1, align 8, !tbaa !138
  store double %i.apb, ptr %gep2694.1, align 8, !tbaa !138
  %indvars.iv.next2441.1 = add nuw nsw i64 %indvars.iv2440, 2 ; 2 uses
  %gep2694.2 = getelementptr [8 x i8], ptr %invariant.gep2693, i64 %indvars.iv.next2441.1 ; 2 uses
  %i.ape = load double, ptr %gep2694.2, align 8, !tbaa !138 ; 2 uses
  %gep2696.2 = getelementptr [8 x i8], ptr %invariant.gep2695, i64 %indvars.iv.next2441.1 ; 2 uses
  %i.apf = load double, ptr %gep2696.2, align 8, !tbaa !138 ; 2 uses
  %i.apg = fmul double %i.anm, %i.apf
  %i.aph = call double @llvm.fmuladd.f64(double %i.ank, double %i.ape, double %i.apg)
  %i.api = fmul double %i.ank, %i.apf
  %i.apj = call double @llvm.fmuladd.f64(double %i.anp, double %i.ape, double %i.api)
  store double %i.apj, ptr %gep2696.2, align 8, !tbaa !138
  store double %i.aph, ptr %gep2694.2, align 8, !tbaa !138
  %indvars.iv.next2441.2 = add nuw nsw i64 %indvars.iv2440, 3 ; 2 uses
  %gep2694.3 = getelementptr [8 x i8], ptr %invariant.gep2693, i64 %indvars.iv.next2441.2 ; 2 uses
  %i.apk = load double, ptr %gep2694.3, align 8, !tbaa !138 ; 2 uses
  %gep2696.3 = getelementptr [8 x i8], ptr %invariant.gep2695, i64 %indvars.iv.next2441.2 ; 2 uses
  %i.apl = load double, ptr %gep2696.3, align 8, !tbaa !138 ; 2 uses
  %i.apm = fmul double %i.anm, %i.apl
  %i.apn = call double @llvm.fmuladd.f64(double %i.ank, double %i.apk, double %i.apm)
  %i.apo = fmul double %i.ank, %i.apl
  %i.app = call double @llvm.fmuladd.f64(double %i.anp, double %i.apk, double %i.apo)
  store double %i.app, ptr %gep2696.3, align 8, !tbaa !138
  store double %i.apn, ptr %gep2694.3, align 8, !tbaa !138
  %indvars.iv.next2441.3 = add nuw nsw i64 %indvars.iv2440, 4 ; 2 uses
  %exitcond2445.not.3 = icmp eq i64 %indvars.iv.next2441.3, %wide.trip.count2444
  br i1 %exitcond2445.not.3, label %.loopexit2089, label %scalar.ph2982, !llvm.loop !40

.loopexit2089:                                    ; preds = %scalar.ph2982.prol.loopexit, %scalar.ph2982, %middle.block2999, %bb.bx, %bb.bw
  %indvars.iv.next2433 = add nsw i64 %indvars.iv2432, 1 ; 6 uses
  %i.apq = mul nsw i64 %indvars.iv.next2433, %i.kd ; 2 uses
  %i.apr = getelementptr [8 x i8], ptr %i.as, i64 %i.apq
  %i.aps = getelementptr [8 x i8], ptr %i.apr, i64 %indvars.iv.next2433 ; 2 uses
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !138
  store double %i.apt, ptr %i.e, align 8, !tbaa !138
  %i.apu = mul nsw i64 %indvars.iv2432, %i.kd     ; 2 uses
  %i.apv = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv.next2433
  %i.apw = getelementptr [8 x i8], ptr %i.apv, i64 %i.apu ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef %i.apw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.aps) #4
  store double 0.000000e+00, ptr %i.apw, align 8, !tbaa !138
  %i.apx = trunc i64 %indvars.iv2432 to i32
  %i.apy = add i32 %i.apx, 2                      ; 2 uses
  store i32 %i.apy, ptr %i.c, align 4, !tbaa !136
  %i.apz = call i32 @llvm.smin.i32(i32 %i.apy, i32 %.019342251) ; 2 uses
  %.not20362222 = icmp sgt i32 %spec.select2069, %i.apz
  br i1 %.not20362222, label %.preheader, label %.lr.ph2225

.lr.ph2225:                                       ; preds = %.loopexit2089
  %i.aqa = load double, ptr %i.g, align 8, !tbaa !138 ; 3 uses
  %i.aqb = mul nsw i64 %indvars.iv.next2433, %i.ke
  %i.aqc = load double, ptr %i.h, align 8, !tbaa !138 ; 3 uses
  %i.aqd = mul nsw i64 %indvars.iv2432, %i.ke
  %i.aqe = fneg double %i.aqc                     ; 2 uses
  %i.aqf = sext i32 %i.apz to i64                 ; 2 uses
  %invariant.gep2697 = getelementptr [8 x i8], ptr %i.ap, i64 %i.aqb ; 2 uses
  %invariant.gep2699 = getelementptr [8 x i8], ptr %i.ap, i64 %i.aqd ; 2 uses
  %.reass3669 = add i64 %i.aqf, %invariant.op3668 ; 3 uses
  %min.iters.check2955 = icmp ult i64 %.reass3669, 8
  br i1 %min.iters.check2955, label %scalar.ph2954.preheader, label %vector.memcheck2944

vector.memcheck2944:                              ; preds = %.lr.ph2225
  %bound02951 = icmp ult ptr %scevgep2945, %scevgep2950
  %bound12952 = icmp ult ptr %scevgep2948, %scevgep2947
  %found.conflict2953 = and i1 %bound02951, %bound12952
  br i1 %found.conflict2953, label %scalar.ph2954.preheader, label %vector.ph2956

vector.ph2956:                                    ; preds = %vector.memcheck2944
  %n.vec2957 = and i64 %.reass3669, -8            ; 3 uses
  %i.aqg = add nsw i64 %n.vec2957, %i.agz
  %broadcast.splatinsert2958 = insertelement <4 x double> poison, double %i.aqa, i64 0
  %broadcast.splat2959 = shufflevector <4 x double> %broadcast.splatinsert2958, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2960 = insertelement <4 x double> poison, double %i.aqc, i64 0
  %broadcast.splat2961 = shufflevector <4 x double> %broadcast.splatinsert2960, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2962 = insertelement <4 x double> poison, double %i.aqe, i64 0
  %broadcast.splat2963 = shufflevector <4 x double> %broadcast.splatinsert2962, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2964

vector.body2964:                                  ; preds = %vector.body2964, %vector.ph2956
  %index2965 = phi i64 [ 0, %vector.ph2956 ], [ %index.next2970, %vector.body2964 ] ; 2 uses
  %i.aqh = add i64 %index2965, %i.agz             ; 2 uses
  %i.aqi = getelementptr [8 x i8], ptr %invariant.gep2697, i64 %i.aqh ; 3 uses
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 32   ; 2 uses
  %wide.load2966 = load <4 x double>, ptr %i.aqi, align 8, !tbaa !138, !alias.scope !151 ; 2 uses
  %wide.load2967 = load <4 x double>, ptr %i.aqj, align 8, !tbaa !138, !alias.scope !151 ; 2 uses
  %i.aqk = getelementptr [8 x i8], ptr %invariant.gep2699, i64 %i.aqh ; 3 uses
  %i.aql = getelementptr i8, ptr %i.aqk, i64 32   ; 2 uses
  %wide.load2968 = load <4 x double>, ptr %i.aqk, align 8, !tbaa !138, !alias.scope !152, !noalias !151 ; 2 uses
  %wide.load2969 = load <4 x double>, ptr %i.aql, align 8, !tbaa !138, !alias.scope !152, !noalias !151 ; 2 uses
  %i.aqm = fmul <4 x double> %broadcast.splat2961, %wide.load2968
  %i.aqn = fmul <4 x double> %broadcast.splat2961, %wide.load2969
  %i.aqo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2959, <4 x double> %wide.load2966, <4 x double> %i.aqm)
  %i.aqp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2959, <4 x double> %wide.load2967, <4 x double> %i.aqn) ; 2 uses
  %i.aqq = fmul <4 x double> %broadcast.splat2959, %wide.load2968
  %i.aqr = fmul <4 x double> %broadcast.splat2959, %wide.load2969
  %i.aqs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2963, <4 x double> %wide.load2966, <4 x double> %i.aqq)
  %i.aqt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2963, <4 x double> %wide.load2967, <4 x double> %i.aqr)
  store <4 x double> %i.aqs, ptr %i.aqk, align 8, !tbaa !138, !alias.scope !152, !noalias !151
  store <4 x double> %i.aqt, ptr %i.aql, align 8, !tbaa !138, !alias.scope !152, !noalias !151
  store <4 x double> %i.aqo, ptr %i.aqi, align 8, !tbaa !138, !alias.scope !151
  store <4 x double> %i.aqp, ptr %i.aqj, align 8, !tbaa !138, !alias.scope !151
  %index.next2970 = add nuw i64 %index2965, 8     ; 2 uses
  %i.aqu = icmp eq i64 %index.next2970, %n.vec2957
  br i1 %i.aqu, label %middle.block2971, label %vector.body2964, !llvm.loop !44

middle.block2971:                                 ; preds = %vector.body2964
  %i.aqv = extractelement <4 x double> %i.aqp, i64 3
  %cmp.n2972 = icmp eq i64 %.reass3669, %n.vec2957
  br i1 %cmp.n2972, label %..preheader_crit_edge, label %scalar.ph2954.preheader

scalar.ph2954.preheader:                          ; preds = %vector.memcheck2944, %.lr.ph2225, %middle.block2971
  %indvars.iv2446.ph = phi i64 [ %i.agz, %vector.memcheck2944 ], [ %i.agz, %.lr.ph2225 ], [ %i.aqg, %middle.block2971 ]
  br label %scalar.ph2954

..preheader_crit_edge:                            ; preds = %scalar.ph2954, %middle.block2971
  %.lcssa2768 = phi double [ %i.aqv, %middle.block2971 ], [ %i.ase, %scalar.ph2954 ]
  store double %.lcssa2768, ptr %i.e, align 8, !tbaa !138
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.loopexit2089
  %.not20372227 = icmp slt i64 %indvars.iv2432, %i.agz
  br i1 %.not20372227, label %bb.by, label %.lr.ph2229

.lr.ph2229:                                       ; preds = %.preheader
  %i.aqw = load double, ptr %i.g, align 8, !tbaa !138 ; 11 uses
  %i.aqx = load double, ptr %i.h, align 8, !tbaa !138 ; 7 uses
  %i.aqy = fneg double %i.aqx                     ; 6 uses
  %invariant.gep2701 = getelementptr [8 x i8], ptr %i.as, i64 %i.apq ; 6 uses
  %invariant.gep2703 = getelementptr [8 x i8], ptr %i.as, i64 %i.apu ; 6 uses
  %i.aqz = zext i32 %22 to i64
  %i.ara = add nuw nsw i64 %i.aqz, 1              ; 2 uses
  %min.iters.check2925 = icmp ult i32 %22, 7
  br i1 %min.iters.check2925, label %scalar.ph2924.preheader, label %vector.memcheck2914

vector.memcheck2914:                              ; preds = %.lr.ph2229
  %bound02921 = icmp ult ptr %scevgep2915, %scevgep2920
  %bound12922 = icmp ult ptr %scevgep2918, %scevgep2917
  %found.conflict2923 = and i1 %bound02921, %bound12922
  br i1 %found.conflict2923, label %scalar.ph2924.preheader, label %vector.ph2926

vector.ph2926:                                    ; preds = %vector.memcheck2914
  %n.vec2927 = and i64 %i.ara, 8589934584         ; 3 uses
  %i.arb = add nsw i64 %n.vec2927, %i.agz
  %broadcast.splatinsert2928 = insertelement <4 x double> poison, double %i.aqw, i64 0
  %broadcast.splat2929 = shufflevector <4 x double> %broadcast.splatinsert2928, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2930 = insertelement <4 x double> poison, double %i.aqx, i64 0
  %broadcast.splat2931 = shufflevector <4 x double> %broadcast.splatinsert2930, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2932 = insertelement <4 x double> poison, double %i.aqy, i64 0
  %broadcast.splat2933 = shufflevector <4 x double> %broadcast.splatinsert2932, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2934

vector.body2934:                                  ; preds = %vector.body2934, %vector.ph2926
  %index2935 = phi i64 [ 0, %vector.ph2926 ], [ %index.next2940, %vector.body2934 ] ; 2 uses
  %i.arc = add i64 %index2935, %i.agz             ; 2 uses
  %i.ard = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %i.arc ; 3 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 32   ; 2 uses
  %wide.load2936 = load <4 x double>, ptr %i.ard, align 8, !tbaa !138, !alias.scope !153 ; 2 uses
  %wide.load2937 = load <4 x double>, ptr %i.are, align 8, !tbaa !138, !alias.scope !153 ; 2 uses
  %i.arf = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %i.arc ; 3 uses
  %i.arg = getelementptr i8, ptr %i.arf, i64 32   ; 2 uses
  %wide.load2938 = load <4 x double>, ptr %i.arf, align 8, !tbaa !138, !alias.scope !154, !noalias !153 ; 2 uses
  %wide.load2939 = load <4 x double>, ptr %i.arg, align 8, !tbaa !138, !alias.scope !154, !noalias !153 ; 2 uses
  %i.arh = fmul <4 x double> %broadcast.splat2931, %wide.load2938
  %i.ari = fmul <4 x double> %broadcast.splat2931, %wide.load2939
  %i.arj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2929, <4 x double> %wide.load2936, <4 x double> %i.arh)
  %i.ark = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2929, <4 x double> %wide.load2937, <4 x double> %i.ari) ; 2 uses
  %i.arl = fmul <4 x double> %broadcast.splat2929, %wide.load2938
  %i.arm = fmul <4 x double> %broadcast.splat2929, %wide.load2939
  %i.arn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2933, <4 x double> %wide.load2936, <4 x double> %i.arl)
  %i.aro = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2933, <4 x double> %wide.load2937, <4 x double> %i.arm)
  store <4 x double> %i.arn, ptr %i.arf, align 8, !tbaa !138, !alias.scope !154, !noalias !153
  store <4 x double> %i.aro, ptr %i.arg, align 8, !tbaa !138, !alias.scope !154, !noalias !153
  store <4 x double> %i.arj, ptr %i.ard, align 8, !tbaa !138, !alias.scope !153
  store <4 x double> %i.ark, ptr %i.are, align 8, !tbaa !138, !alias.scope !153
  %index.next2940 = add nuw i64 %index2935, 8     ; 2 uses
  %i.arp = icmp eq i64 %index.next2940, %n.vec2927
  br i1 %i.arp, label %middle.block2941, label %vector.body2934, !llvm.loop !48

middle.block2941:                                 ; preds = %vector.body2934
  %i.arq = extractelement <4 x double> %i.ark, i64 3
  %cmp.n2942 = icmp eq i64 %i.ara, %n.vec2927
  br i1 %cmp.n2942, label %._crit_edge2230, label %scalar.ph2924.preheader

scalar.ph2924.preheader:                          ; preds = %vector.memcheck2914, %.lr.ph2229, %middle.block2941
  %indvars.iv2450.ph = phi i64 [ %i.agz, %vector.memcheck2914 ], [ %i.agz, %.lr.ph2229 ], [ %i.arb, %middle.block2941 ] ; 3 uses
  %i.arr = trunc i64 %indvars.iv2450.ph to i32    ; 2 uses
  %i.ars = sub i32 %indvars.iv2454, %i.arr
  %i.art = sub i32 %indvars.iv2454.in, %i.arr
  %xtraiter3598 = and i32 %i.ars, 3               ; 2 uses
  %lcmp.mod3599.not = icmp eq i32 %xtraiter3598, 0
  br i1 %lcmp.mod3599.not, label %scalar.ph2924.prol.loopexit, label %scalar.ph2924.prol

scalar.ph2924.prol:                               ; preds = %scalar.ph2924.preheader, %scalar.ph2924.prol
  %indvars.iv2450.prol = phi i64 [ %indvars.iv.next2451.prol, %scalar.ph2924.prol ], [ %indvars.iv2450.ph, %scalar.ph2924.preheader ] ; 3 uses
  %prol.iter3600 = phi i32 [ %prol.iter3600.next, %scalar.ph2924.prol ], [ 0, %scalar.ph2924.preheader ]
  %gep2702.prol = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %indvars.iv2450.prol ; 2 uses
  %i.aru = load double, ptr %gep2702.prol, align 8, !tbaa !138 ; 2 uses
  %gep2704.prol = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %indvars.iv2450.prol ; 2 uses
  %i.arv = load double, ptr %gep2704.prol, align 8, !tbaa !138 ; 2 uses
  %i.arw = fmul double %i.aqx, %i.arv
  %i.arx = call double @llvm.fmuladd.f64(double %i.aqw, double %i.aru, double %i.arw) ; 2 uses
  %i.ary = fmul double %i.aqw, %i.arv
  %i.arz = call double @llvm.fmuladd.f64(double %i.aqy, double %i.aru, double %i.ary)
  store double %i.arz, ptr %gep2704.prol, align 8, !tbaa !138
  store double %i.arx, ptr %gep2702.prol, align 8, !tbaa !138
  %indvars.iv.next2451.prol = add nsw i64 %indvars.iv2450.prol, 1 ; 2 uses
  %prol.iter3600.next = add i32 %prol.iter3600, 1 ; 2 uses
  %prol.iter3600.cmp.not = icmp eq i32 %prol.iter3600.next, %xtraiter3598
  br i1 %prol.iter3600.cmp.not, label %scalar.ph2924.prol.loopexit, label %scalar.ph2924.prol, !llvm.loop !49

scalar.ph2924.prol.loopexit:                      ; preds = %scalar.ph2924.prol, %scalar.ph2924.preheader
  %.lcssa3558.unr = phi double [ poison, %scalar.ph2924.preheader ], [ %i.arx, %scalar.ph2924.prol ]
  %indvars.iv2450.unr = phi i64 [ %indvars.iv2450.ph, %scalar.ph2924.preheader ], [ %indvars.iv.next2451.prol, %scalar.ph2924.prol ]
  %i.asa = icmp ult i32 %i.art, 3
  br i1 %i.asa, label %._crit_edge2230, label %scalar.ph2924

scalar.ph2954:                                    ; preds = %scalar.ph2954.preheader, %scalar.ph2954
  %indvars.iv2446 = phi i64 [ %indvars.iv.next2447, %scalar.ph2954 ], [ %indvars.iv2446.ph, %scalar.ph2954.preheader ] ; 4 uses
  %gep2698 = getelementptr [8 x i8], ptr %invariant.gep2697, i64 %indvars.iv2446 ; 2 uses
  %i.asb = load double, ptr %gep2698, align 8, !tbaa !138 ; 2 uses
  %gep2700 = getelementptr [8 x i8], ptr %invariant.gep2699, i64 %indvars.iv2446 ; 2 uses
  %i.asc = load double, ptr %gep2700, align 8, !tbaa !138 ; 2 uses
  %i.asd = fmul double %i.aqc, %i.asc
  %i.ase = call double @llvm.fmuladd.f64(double %i.aqa, double %i.asb, double %i.asd) ; 2 uses
  %i.asf = fmul double %i.aqa, %i.asc
  %i.asg = call double @llvm.fmuladd.f64(double %i.aqe, double %i.asb, double %i.asf)
  store double %i.asg, ptr %gep2700, align 8, !tbaa !138
  store double %i.ase, ptr %gep2698, align 8, !tbaa !138
  %indvars.iv.next2447 = add nsw i64 %indvars.iv2446, 1
  %.not2036.not = icmp slt i64 %indvars.iv2446, %i.aqf
  br i1 %.not2036.not, label %scalar.ph2954, label %..preheader_crit_edge, !llvm.loop !50

scalar.ph2924:                                    ; preds = %scalar.ph2924.prol.loopexit, %scalar.ph2924
  %indvars.iv2450 = phi i64 [ %indvars.iv.next2451.3, %scalar.ph2924 ], [ %indvars.iv2450.unr, %scalar.ph2924.prol.loopexit ] ; 6 uses
  %gep2702 = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %indvars.iv2450 ; 2 uses
  %i.ash = load double, ptr %gep2702, align 8, !tbaa !138 ; 2 uses
  %gep2704 = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %indvars.iv2450 ; 2 uses
  %i.asi = load double, ptr %gep2704, align 8, !tbaa !138 ; 2 uses
  %i.asj = fmul double %i.aqx, %i.asi
  %i.ask = call double @llvm.fmuladd.f64(double %i.aqw, double %i.ash, double %i.asj)
  %i.asl = fmul double %i.aqw, %i.asi
  %i.asm = call double @llvm.fmuladd.f64(double %i.aqy, double %i.ash, double %i.asl)
  store double %i.asm, ptr %gep2704, align 8, !tbaa !138
  store double %i.ask, ptr %gep2702, align 8, !tbaa !138
  %indvars.iv.next2451 = add nsw i64 %indvars.iv2450, 1 ; 2 uses
  %gep2702.1 = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %indvars.iv.next2451 ; 2 uses
  %i.asn = load double, ptr %gep2702.1, align 8, !tbaa !138 ; 2 uses
  %gep2704.1 = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %indvars.iv.next2451 ; 2 uses
  %i.aso = load double, ptr %gep2704.1, align 8, !tbaa !138 ; 2 uses
  %i.asp = fmul double %i.aqx, %i.aso
  %i.asq = call double @llvm.fmuladd.f64(double %i.aqw, double %i.asn, double %i.asp)
  %i.asr = fmul double %i.aqw, %i.aso
  %i.ass = call double @llvm.fmuladd.f64(double %i.aqy, double %i.asn, double %i.asr)
  store double %i.ass, ptr %gep2704.1, align 8, !tbaa !138
  store double %i.asq, ptr %gep2702.1, align 8, !tbaa !138
  %indvars.iv.next2451.1 = add nsw i64 %indvars.iv2450, 2 ; 2 uses
  %gep2702.2 = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %indvars.iv.next2451.1 ; 2 uses
  %i.ast = load double, ptr %gep2702.2, align 8, !tbaa !138 ; 2 uses
  %gep2704.2 = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %indvars.iv.next2451.1 ; 2 uses
  %i.asu = load double, ptr %gep2704.2, align 8, !tbaa !138 ; 2 uses
  %i.asv = fmul double %i.aqx, %i.asu
  %i.asw = call double @llvm.fmuladd.f64(double %i.aqw, double %i.ast, double %i.asv)
  %i.asx = fmul double %i.aqw, %i.asu
  %i.asy = call double @llvm.fmuladd.f64(double %i.aqy, double %i.ast, double %i.asx)
  store double %i.asy, ptr %gep2704.2, align 8, !tbaa !138
  store double %i.asw, ptr %gep2702.2, align 8, !tbaa !138
  %indvars.iv.next2451.2 = add nsw i64 %indvars.iv2450, 3 ; 2 uses
  %gep2702.3 = getelementptr [8 x i8], ptr %invariant.gep2701, i64 %indvars.iv.next2451.2 ; 2 uses
  %i.asz = load double, ptr %gep2702.3, align 8, !tbaa !138 ; 2 uses
  %gep2704.3 = getelementptr [8 x i8], ptr %invariant.gep2703, i64 %indvars.iv.next2451.2 ; 2 uses
  %i.ata = load double, ptr %gep2704.3, align 8, !tbaa !138 ; 2 uses
  %i.atb = fmul double %i.aqx, %i.ata
  %i.atc = call double @llvm.fmuladd.f64(double %i.aqw, double %i.asz, double %i.atb) ; 2 uses
  %i.atd = fmul double %i.aqw, %i.ata
  %i.ate = call double @llvm.fmuladd.f64(double %i.aqy, double %i.asz, double %i.atd)
  store double %i.ate, ptr %gep2704.3, align 8, !tbaa !138
  store double %i.atc, ptr %gep2702.3, align 8, !tbaa !138
  %indvars.iv.next2451.3 = add nsw i64 %indvars.iv2450, 4 ; 2 uses
  %lftr.wideiv2456.3 = trunc i64 %indvars.iv.next2451.3 to i32
  %exitcond2457.not.3 = icmp eq i32 %indvars.iv2454, %lftr.wideiv2456.3
  br i1 %exitcond2457.not.3, label %._crit_edge2230, label %scalar.ph2924, !llvm.loop !51

._crit_edge2230:                                  ; preds = %scalar.ph2924.prol.loopexit, %scalar.ph2924, %middle.block2941
  %.lcssa2769 = phi double [ %i.arq, %middle.block2941 ], [ %.lcssa3558.unr, %scalar.ph2924.prol.loopexit ], [ %i.atc, %scalar.ph2924 ]
  store double %.lcssa2769, ptr %i.e, align 8, !tbaa !138
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge2230, %.preheader
  br i1 %.not1986.not, label %bb.bz, label %.loopexit2088

bb.bz:                                            ; preds = %bb.by
  %i.atf = load i32, ptr %3, align 4, !tbaa !136  ; 5 uses
  %.not20392232 = icmp slt i32 %i.atf, 1
  br i1 %.not20392232, label %.loopexit2088, label %.lr.ph2235

.lr.ph2235:                                       ; preds = %bb.bz
  %i.atg = load double, ptr %i.g, align 8, !tbaa !138 ; 11 uses
  %i.ath = mul nsw i64 %indvars.iv.next2433, %i.kc
  %i.ati = load double, ptr %i.h, align 8, !tbaa !138 ; 7 uses
  %i.atj = mul nsw i64 %indvars.iv2432, %i.kc
  %i.atk = fneg double %i.ati                     ; 6 uses
  %i.atl = add nuw i32 %i.atf, 1
  %wide.trip.count2462 = zext i32 %i.atl to i64   ; 3 uses
  %invariant.gep2705 = getelementptr [8 x i8], ptr %i.bb, i64 %i.ath ; 7 uses
  %invariant.gep2707 = getelementptr [8 x i8], ptr %i.bb, i64 %i.atj ; 7 uses
  %i.atm = zext nneg i32 %i.atf to i64            ; 2 uses
  %min.iters.check2897 = icmp ult i32 %i.atf, 8
  br i1 %min.iters.check2897, label %scalar.ph2896.preheader, label %vector.memcheck2886

vector.memcheck2886:                              ; preds = %.lr.ph2235
  %i.atn = shl nuw nsw i64 %wide.trip.count2462, 3 ; 2 uses
  %scevgep2890 = getelementptr i8, ptr %invariant.gep2707, i64 %i.atn
  %scevgep2892 = getelementptr i8, ptr %invariant.gep2705, i64 %i.atn
  %bound02893 = icmp ult ptr %scevgep2889, %scevgep2892
  %bound12894 = icmp ult ptr %scevgep2891, %scevgep2890
  %found.conflict2895 = and i1 %bound02893, %bound12894
  br i1 %found.conflict2895, label %scalar.ph2896.preheader, label %vector.ph2898

vector.ph2898:                                    ; preds = %vector.memcheck2886
  %n.vec2899 = and i64 %i.atm, 2147483640         ; 3 uses
  %i.ato = or disjoint i64 %n.vec2899, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.atg, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2900 = insertelement <4 x double> poison, double %i.ati, i64 0
  %broadcast.splat2901 = shufflevector <4 x double> %broadcast.splatinsert2900, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2902 = insertelement <4 x double> poison, double %i.atk, i64 0
  %broadcast.splat2903 = shufflevector <4 x double> %broadcast.splatinsert2902, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2904

end_hunk_1
begin_hunk_2_@dhgeqz_:bb.a
  %i.bgq = fdiv double %i.bgp, %i.bgm             ; 3 uses
  store double %i.bgq, ptr %i.am, align 8, !tbaa !138
  %i.bgr = load double, ptr %i.al, align 8, !tbaa !138
  %i.bgs = fdiv double %i.bgr, %i.bgm             ; 3 uses
  store double %i.bgs, ptr %i.al, align 8, !tbaa !138
  %i.bgt = fneg double %.01888
  %i.bgu = fmul double %i.bgs, %i.bgt
  %i.bgv = extractelement <2 x double> %i.beb, i64 1 ; 2 uses
  %i.bgw = call double @llvm.fmuladd.f64(double %i.bgq, double %i.bgv, double %i.bgu) ; 2 uses
  store double %i.bgw, ptr %i.j, align 8, !tbaa !138
  %i.bgx = fmul double %i.bgv, %i.bgs
  %i.bgy = call double @llvm.fmuladd.f64(double %i.bgq, double %.01888, double %i.bgx) ; 2 uses
  %i.bgz = load double, ptr %i.u, align 8, !tbaa !138
  %i.bha = fmul double %i.bgo, %i.bgz
  %i.bhb = load double, ptr %i.m, align 8, !tbaa !138
  %i.bhc = load double, ptr %i.n, align 8, !tbaa !138 ; 2 uses
  %i.bhd = fmul double %i.bgw, %i.bhc
  %i.bhe = call double @llvm.fmuladd.f64(double %i.bha, double %i.bhb, double %i.bhd)
  store double %i.bhe, ptr %i.ad, align 8, !tbaa !138
  %i.bhf = fmul double %i.bgy, %i.bhc
  store double %i.bhf, ptr %i.aa, align 8, !tbaa !138
  %i.bhg = call double @dlapy2_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.aa) #4 ; 3 uses
  %i.bhh = load double, ptr %i.r, align 8, !tbaa !138
  %i.bhi = load double, ptr %i.u, align 8, !tbaa !138
  %i.bhj = fmul double %i.bhh, %i.bhi
  %i.bhk = load double, ptr %i.n, align 8, !tbaa !138
  %i.bhl = load double, ptr %i.j, align 8, !tbaa !138
  %i.bhm = load double, ptr %i.m, align 8, !tbaa !138 ; 2 uses
  %i.bhn = fmul double %i.bhl, %i.bhm
  %i.bho = call double @llvm.fmuladd.f64(double %i.bhj, double %i.bhk, double %i.bhn)
  store double %i.bho, ptr %i.ae, align 8, !tbaa !138
  %i.bhp = fneg double %i.bgy
  %i.bhq = fmul double %i.bhm, %i.bhp
  store double %i.bhq, ptr %i.ab, align 8, !tbaa !138
  %i.bhr = call double @dlapy2_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ab) #4 ; 3 uses
  %i.bhs = sext i32 %i.ok to i64                  ; 3 uses
  %i.bht = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bhs
  store double %i.bhg, ptr %i.bht, align 8, !tbaa !138
  %i.bhu = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.oz
  store double %i.bhr, ptr %i.bhu, align 8, !tbaa !138
  %i.bhv = load double, ptr %i.y, align 8, !tbaa !138 ; 2 uses
  %i.bhw = fmul double %i.bhg, %i.bhv
  %i.bhx = fmul double %i.bba, %i.bhw
  %i.bhy = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bhs
  store double %i.bhx, ptr %i.bhy, align 8, !tbaa !138
  %i.bhz = load double, ptr %i.w, align 8, !tbaa !138 ; 2 uses
  %i.bia = fmul double %i.bhg, %i.bhz
  %i.bib = fmul double %i.bba, %i.bia
  %i.bic = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bhs
  store double %i.bib, ptr %i.bic, align 8, !tbaa !138
  %i.bid = fmul double %i.bhr, %i.bhv
  %i.bie = fmul double %i.bba, %i.bid
  %i.bif = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.oz
  store double %i.bie, ptr %i.bif, align 8, !tbaa !138
  %i.big = fneg double %i.bhr
  %i.bih = fmul double %i.bhz, %i.big
  %i.bii = fmul double %i.bba, %i.bih
  %i.bij = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.oz
  store double %i.bii, ptr %i.bij, align 8, !tbaa !138
  %i.bik = load i32, ptr %4, align 4, !tbaa !136  ; 3 uses
  %.not2028 = icmp sgt i32 %.01897, %i.bik
  br i1 %.not2028, label %bb.da, label %.loopexit2104

bb.da:                                            ; preds = %bb.cz
  %i.bil = add nsw i32 %.01897, -1                ; 2 uses
  %spec.select2085 = select i1 %.not.not, i32 %.119022258, i32 %i.bil
  %spec.select2086 = select i1 %.not.not, i32 %.118962261, i32 %i.bik
  br label %.loopexit2095

bb.db:                                            ; preds = %bb.ca
  %i.bim = load double, ptr %i.acd, align 8, !tbaa !138
  %i.bin = load double, ptr %i.ach, align 8, !tbaa !138
  %i.bio = load double, ptr %i.oo, align 8, !tbaa !138
  %i.bip = add nsw i32 %i.ok, %i.acl
  %i.biq = sext i32 %i.bip to i64
  %i.bir = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.biq
  %i.bis = load double, ptr %i.bir, align 8, !tbaa !138
  %i.bit = insertelement <2 x double> poison, double %i.bin, i64 0
  %i.biu = insertelement <2 x double> %i.bit, double %i.ack, i64 1
  %i.biv = fmul <2 x double> %i.mi, %i.biu
  %i.biw = shufflevector <2 x double> %i.biv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bix = insertelement <4 x double> poison, double %i.bim, i64 0
  %i.biy = insertelement <4 x double> %i.bix, double %i.bis, i64 1
  %i.biz = insertelement <4 x double> %i.biy, double %i.bio, i64 2
  %i.bja = insertelement <4 x double> %i.biz, double %i.acp, i64 3
  %i.bjb = fmul <4 x double> %i.mh, %i.bja
  %i.bjc = fdiv <4 x double> %i.bjb, %i.biw       ; 4 uses
  %i.bjd = add nsw i32 %i.ok, %i.os
  %i.bje = sext i32 %i.bjd to i64
  %i.bjf = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bje
  %i.bjg = load double, ptr %i.bjf, align 8, !tbaa !138
  %i.bjh = fdiv double %i.bjg, %i.ack             ; 2 uses
  %i.bji = mul nsw i32 %.01897, %i.an             ; 2 uses
  %i.bjj = add nsw i32 %i.bji, %.01897
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjk
  %i.bjm = load double, ptr %i.bjl, align 8, !tbaa !138
  %i.bjn = fmul double %i.jo, %i.bjm
  %i.bjo = mul i32 %.01897, %i.de
  %i.bjp = sext i32 %i.bjo to i64
  %i.bjq = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bjp
  %i.bjr = load double, ptr %i.bjq, align 8, !tbaa !138
  %i.bjs = add nsw i32 %i.avo, %i.bji
  %i.bjt = sext i32 %i.bjs to i64
  %i.bju = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjt
  %i.bjv = load double, ptr %i.bju, align 8, !tbaa !138
  %i.bjw = mul nsw i32 %i.avo, %i.an              ; 3 uses
  %i.bjx = add nsw i32 %i.bjw, %.01897
  %i.bjy = sext i32 %i.bjx to i64
  %i.bjz = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjy
  %i.bka = load double, ptr %i.bjz, align 8, !tbaa !138
  %i.bkb = mul nsw i32 %i.avo, %i.aq              ; 2 uses
  %i.bkc = add nsw i32 %i.bkb, %i.avo
  %i.bkd = sext i32 %i.bkc to i64
  %i.bke = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bkd
  %i.bkf = load double, ptr %i.bke, align 8, !tbaa !138 ; 2 uses
  %i.bkg = insertelement <2 x double> poison, double %i.bjr, i64 0
  %i.bkh = insertelement <2 x double> %i.bkg, double %i.bkf, i64 1
  %i.bki = fmul <2 x double> %i.mi, %i.bkh        ; 3 uses
  %i.bkj = extractelement <2 x double> %i.bki, i64 0
  %i.bkk = fdiv double %i.bjn, %i.bkj             ; 5 uses
  %i.bkl = insertelement <2 x double> poison, double %i.bjv, i64 0
  %i.bkm = insertelement <2 x double> %i.bkl, double %i.bka, i64 1
  %i.bkn = fmul <2 x double> %i.mj, %i.bkm
  %i.bko = fdiv <2 x double> %i.bkn, %i.bki       ; 3 uses
  %i.bkp = add nsw i32 %i.bjw, %i.avo
  %i.bkq = sext i32 %i.bkp to i64
  %i.bkr = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bkq
  %i.bks = load double, ptr %i.bkr, align 8, !tbaa !138
  %i.bkt = add nsw i32 %.01897, 2
  %i.bku = add nsw i32 %i.bkt, %i.bjw
  %i.bkv = sext i32 %i.bku to i64
  %i.bkw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bkv
  %i.bkx = load double, ptr %i.bkw, align 8, !tbaa !138
  %i.bky = insertelement <2 x double> poison, double %i.bks, i64 0
  %i.bkz = insertelement <2 x double> %i.bky, double %i.bkx, i64 1
  %i.bla = fmul <2 x double> %i.mj, %i.bkz
  %i.blb = shufflevector <2 x double> %i.bki, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.blc = fdiv <2 x double> %i.bla, %i.blb       ; 2 uses
  %i.bld = add nsw i32 %i.bkb, %.01897
  %i.ble = sext i32 %i.bld to i64
  %i.blf = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ble
  %i.blg = load double, ptr %i.blf, align 8, !tbaa !138
  %i.blh = fdiv double %i.blg, %i.bkf             ; 2 uses
  %i.bli = extractelement <4 x double> %i.bjc, i64 0
  %i.blj = fsub double %i.bli, %i.bkk             ; 2 uses
  %i.blk = extractelement <4 x double> %i.bjc, i64 3
  %i.bll = fsub double %i.blk, %i.bkk             ; 2 uses
  %i.blm = extractelement <4 x double> %i.bjc, i64 2 ; 3 uses
  %i.bln = fneg double %i.blm
  %i.blo = extractelement <4 x double> %i.bjc, i64 1
  %i.blp = fmul double %i.blo, %i.bln
  %i.blq = call double @llvm.fmuladd.f64(double %i.blj, double %i.bll, double %i.blp)
  %i.blr = fmul double %i.blm, %i.bjh
  %i.bls = call double @llvm.fmuladd.f64(double %i.blr, double %i.bkk, double %i.blq)
  %i.blt = fneg double %i.bkk
  %i.blu = extractelement <2 x double> %i.bko, i64 1
  %i.blv = call double @llvm.fmuladd.f64(double %i.blt, double %i.blh, double %i.blu)
  %i.blw = extractelement <2 x double> %i.bko, i64 0 ; 3 uses
  %i.blx = call double @llvm.fmuladd.f64(double %i.blv, double %i.blw, double %i.bls)
  store double %i.blx, ptr %i.i, align 16, !tbaa !138
  %i.bly = extractelement <2 x double> %i.blc, i64 0
  %i.blz = fsub double %i.bly, %i.bkk
  %i.bma = fneg double %i.blw
  %i.bmb = call double @llvm.fmuladd.f64(double %i.bma, double %i.blh, double %i.blz)
  %i.bmc = fsub double %i.bmb, %i.blj
  %i.bmd = fsub double %i.bmc, %i.bll
  %i.bme = call double @llvm.fmuladd.f64(double %i.blm, double %i.bjh, double %i.bmd)
  %i.bmf = fmul double %i.blw, %i.bme
  store double %i.bmf, ptr %i.jr, align 8, !tbaa !138
  %shift3503 = shufflevector <2 x double> %i.blc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bko, %shift3503
  %i.bmg = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.bmg, ptr %i.js, align 16, !tbaa !138
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.i, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !138
  %i.bmh = add nsw i32 %.019342251, -2            ; 3 uses
  store i32 %i.bmh, ptr %i.b, align 4, !tbaa !136
  %.not20062165 = icmp sgt i32 %.01897, %i.bmh
  br i1 %.not20062165, label %._crit_edge2171, label %.lr.ph2170.preheader

.lr.ph2170.preheader:                             ; preds = %bb.db
  %i.bmi = sext i32 %.01897 to i64                ; 16 uses
  %i.bmj = add i32 %.119022258, 1                 ; 2 uses
  %i.bmk = sext i32 %spec.select2069 to i64       ; 12 uses
  %i.bml = add i32 %.01897, 3
  %i.bmm = sext i32 %.119022258 to i64
  %i.bmn = mul i64 %i.lm, %i.bmi
  %i.bmo = add nsw i64 %i.bmi, 1
  %i.bmp = mul i64 %i.lo, %i.bmo
  %i.bmq = add nsw i64 %i.bmi, 2
  %i.bmr = mul i64 %i.lp, %i.bmq
  %i.bms = mul i64 %i.lr, %i.bmi                  ; 2 uses
  %i.bmt = shl nsw i64 %i.bmk, 3                  ; 6 uses
  %i.bmu = add i32 %.01897, 2
  %i.bmv = sub i32 %i.bmu, %spec.select2069
  %i.bmw = add nsw i64 %i.bmi, 1
  %i.bmx = mul i64 %i.lt, %i.bmw                  ; 2 uses
  %i.bmy = add nsw i64 %i.bmi, 2
  %i.bmz = mul i64 %i.lu, %i.bmy                  ; 2 uses
  %23 = add i32 %.01897, 2
  %24 = sub i32 %23, %spec.select2069
  %i.bna = mul i64 %i.lw, %i.bmi
  %i.bnb = shl nsw i64 %i.bmk, 3                  ; 3 uses
  %i.bnc = mul nsw i64 %i.ke, %i.bmi
  %i.bnd = add i64 %i.bnc, %i.ao
  %i.bne = shl i64 %i.bnd, 3
  %i.bnf = add nsw i64 %i.bmi, 1
  %i.bng = mul i64 %i.ly, %i.bnf                  ; 2 uses
  %i.bnh = add nsw i64 %i.bmi, 2
  %i.bni = mul i64 %i.lz, %i.bnh                  ; 2 uses
  %i.bnj = mul i64 %i.mb, %i.bmi
  %i.bnk = add nsw i64 %i.bmi, 1
  %i.bnl = mul i64 %i.md, %i.bnk
  %i.bnm = add nsw i64 %i.bmi, 2
  %i.bnn = mul i64 %i.me, %i.bnm
  %i.bno = shl nsw i64 %i.bmi, 4                  ; 3 uses
  %i.bnp = add nsw i64 %i.bno, -16
  %i.bnq = or disjoint i64 %i.bno, 8
  %i.bnr = add nsw i64 %i.bno, -8
  %i.bns = add i32 %.01897, 2
  %i.bnt = getelementptr i8, ptr %i.ml, i64 %i.bnj
  %i.bnu = getelementptr i8, ptr %i.mn, i64 %i.bnl
  %i.bnv = getelementptr i8, ptr %i.mp, i64 %i.bnn
  %i.bnw = getelementptr i8, ptr %i.mq, i64 %i.bna
  %i.bnx = getelementptr i8, ptr %i.bnw, i64 %i.bnb
  %i.bny = getelementptr i8, ptr %6, i64 %i.bne
  %i.bnz = getelementptr i8, ptr %i.bny, i64 8
  %i.boa = getelementptr i8, ptr %i.mr, i64 %i.bng
  %i.bob = getelementptr i8, ptr %i.boa, i64 %i.bnb
  %i.boc = getelementptr i8, ptr %i.mt, i64 %i.bng
  %i.bod = getelementptr i8, ptr %i.mu, i64 %i.bni
  %i.boe = getelementptr i8, ptr %i.bod, i64 %i.bnb
  %i.bof = getelementptr i8, ptr %i.mw, i64 %i.bni
  %i.bog = getelementptr i8, ptr %i.mx, i64 %i.bms
  %i.boh = getelementptr i8, ptr %i.bog, i64 %i.bmt
  %i.boi = getelementptr i8, ptr %i.mz, i64 %i.bms
  %i.boj = getelementptr i8, ptr %i.boi, i64 %i.bmt
  %i.bok = getelementptr i8, ptr %i.na, i64 %i.bmx
  %i.bol = getelementptr i8, ptr %i.bok, i64 %i.bmt
  %i.bom = getelementptr i8, ptr %i.nc, i64 %i.bmx
  %i.bon = getelementptr i8, ptr %i.bom, i64 %i.bmt
  %i.boo = getelementptr i8, ptr %i.nd, i64 %i.bmz
  %i.bop = getelementptr i8, ptr %i.boo, i64 %i.bmt
  %i.boq = getelementptr i8, ptr %i.nf, i64 %i.bmz
  %i.bor = getelementptr i8, ptr %i.boq, i64 %i.bmt
  %i.bos = getelementptr i8, ptr %i.nh, i64 %i.bmn
  %i.bot = getelementptr i8, ptr %i.nj, i64 %i.bmp
  %i.bou = getelementptr i8, ptr %i.nl, i64 %i.bmr
  %invariant.op = sub i64 1, %i.bmk
  br label %.lr.ph2170

.lr.ph2170:                                       ; preds = %.lr.ph2170.preheader, %.loopexit2090
  %indvar3245 = phi i64 [ 0, %.lr.ph2170.preheader ], [ %indvar.next3246, %.loopexit2090 ] ; 11 uses
  %indvars.iv2374 = phi i32 [ %i.bml, %.lr.ph2170.preheader ], [ %indvars.iv.next2375, %.loopexit2090 ] ; 4 uses
  %indvars.iv2352 = phi i64 [ %i.bmi, %.lr.ph2170.preheader ], [ %indvars.iv.next2353, %.loopexit2090 ] ; 24 uses
  %i.bov = trunc i64 %indvar3245 to i32
  %i.bow = add i32 %i.bns, %i.bov
  %i.box = shl nuw nsw i64 %indvar3245, 4
  %i.boy = add i64 %i.bnr, %i.box                 ; 2 uses
  %scevgep3477 = getelementptr i8, ptr %8, i64 %i.boy
  %scevgep3478 = getelementptr i8, ptr %6, i64 %i.boy
  %i.boz = shl nuw nsw i64 %indvar3245, 4         ; 2 uses
  %i.bpa = add i64 %i.bnp, %i.boz                 ; 2 uses
  %scevgep3464 = getelementptr i8, ptr %6, i64 %i.bpa
  %i.bpb = add i64 %i.bnq, %i.boz                 ; 2 uses
  %scevgep3465 = getelementptr i8, ptr %6, i64 %i.bpb
  %i.bpc = trunc i64 %indvar3245 to i32
  %i.bpd = add i32 %.01897, %i.bpc
  %i.bpe = sub i32 %.119022258, %i.bpd
  %i.bpf = zext i32 %i.bpe to i64
  %i.bpg = shl nuw nsw i64 %i.bpf, 3              ; 2 uses
  %scevgep3466 = getelementptr i8, ptr %scevgep3465, i64 %i.bpg
  %scevgep3467 = getelementptr i8, ptr %8, i64 %i.bpa
  %scevgep3468 = getelementptr i8, ptr %8, i64 %i.bpb
  %scevgep3469 = getelementptr i8, ptr %scevgep3468, i64 %i.bpg
  %i.bph = mul i64 %i.mc, %indvar3245             ; 3 uses
  %scevgep3372 = getelementptr i8, ptr %i.bnt, i64 %i.bph ; 2 uses
  %scevgep3374 = getelementptr i8, ptr %i.bnu, i64 %i.bph ; 2 uses
  %scevgep3376 = getelementptr i8, ptr %i.bnv, i64 %i.bph ; 2 uses
  %i.bpi = mul i64 %i.lx, %indvar3245             ; 6 uses
  %scevgep3328 = getelementptr i8, ptr %i.bnx, i64 %i.bpi ; 2 uses
  %scevgep3329 = getelementptr i8, ptr %i.bnz, i64 %i.bpi
  %i.bpj = call i32 @llvm.smin.i32(i32 %.019342251, i32 %indvars.iv2374)
  %i.bpk = call i32 @llvm.smax.i32(i32 %i.bpj, i32 %spec.select2069)
  %smax3331 = sext i32 %i.bpk to i64
  %i.bpl = shl nsw i64 %smax3331, 3               ; 3 uses
  %scevgep3332 = getelementptr i8, ptr %scevgep3329, i64 %i.bpl ; 2 uses
  %scevgep3333 = getelementptr i8, ptr %i.bob, i64 %i.bpi ; 2 uses
  %scevgep3334 = getelementptr i8, ptr %i.boc, i64 %i.bpi
  %scevgep3335 = getelementptr i8, ptr %scevgep3334, i64 %i.bpl ; 2 uses
  %scevgep3336 = getelementptr i8, ptr %i.boe, i64 %i.bpi ; 2 uses
  %scevgep3337 = getelementptr i8, ptr %i.bof, i64 %i.bpi
  %scevgep3338 = getelementptr i8, ptr %scevgep3337, i64 %i.bpl ; 2 uses
  %25 = trunc i64 %indvar3245 to i32
  %26 = add i32 %24, %25                          ; 2 uses
  %i.bpm = mul i64 %i.ls, %indvar3245             ; 6 uses
  %scevgep3286 = getelementptr i8, ptr %i.boh, i64 %i.bpm ; 2 uses
  %scevgep3287 = getelementptr i8, ptr %i.boj, i64 %i.bpm
  %i.bpn = trunc i64 %indvar3245 to i32
  %i.bpo = add i32 %i.bmv, %i.bpn
  %i.bpp = zext i32 %i.bpo to i64
  %i.bpq = shl nuw nsw i64 %i.bpp, 3              ; 3 uses
  %scevgep3288 = getelementptr i8, ptr %scevgep3287, i64 %i.bpq ; 2 uses
  %scevgep3289 = getelementptr i8, ptr %i.bol, i64 %i.bpm ; 2 uses
  %scevgep3290 = getelementptr i8, ptr %i.bon, i64 %i.bpm
  %scevgep3291 = getelementptr i8, ptr %scevgep3290, i64 %i.bpq ; 2 uses
  %scevgep3292 = getelementptr i8, ptr %i.bop, i64 %i.bpm ; 2 uses
  %scevgep3293 = getelementptr i8, ptr %i.bor, i64 %i.bpm
  %scevgep3294 = getelementptr i8, ptr %scevgep3293, i64 %i.bpq ; 2 uses
  %i.bpr = mul i64 %i.ln, %indvar3245             ; 3 uses
  %scevgep3247 = getelementptr i8, ptr %i.bos, i64 %i.bpr ; 2 uses
  %scevgep3249 = getelementptr i8, ptr %i.bot, i64 %i.bpr ; 2 uses
  %scevgep3251 = getelementptr i8, ptr %i.bou, i64 %i.bpr ; 2 uses
  %indvars2385 = trunc i64 %indvars.iv2352 to i32 ; 3 uses
  %i.bps = icmp sgt i64 %indvars.iv2352, %i.bmi
  br i1 %i.bps, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.lr.ph2170
  %i.bpt = add nsw i64 %indvars.iv2352, -1
  %i.bpu = add nsw i32 %indvars2385, -1
  %i.bpv = mul nsw i64 %i.bpt, %i.ke
  %i.bpw = mul nsw i32 %i.bpu, %i.an
  %i.bpx = sext i32 %i.bpw to i64
  %i.bpy = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352
  %i.bpz = getelementptr [8 x i8], ptr %i.bpy, i64 %i.bpx ; 2 uses
  %i.bqa = load double, ptr %i.bpz, align 8, !tbaa !138
  store double %i.bqa, ptr %i.i, align 16, !tbaa !138
  %i.bqb = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352
  %i.bqc = getelementptr i8, ptr %i.bqb, i64 8
  %i.bqd = getelementptr [8 x i8], ptr %i.bqc, i64 %i.bpv ; 2 uses
  %i.bqe = load <2 x double>, ptr %i.bqd, align 8, !tbaa !138
  store <2 x double> %i.bqe, ptr %i.jr, align 8, !tbaa !138
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.bpz, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !138
  store <2 x double> zeroinitializer, ptr %i.bqd, align 8, !tbaa !138
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph2170
  %.not20142139 = icmp sgt i64 %indvars.iv2352, %i.bmm
  br i1 %.not20142139, label %._crit_edge2143, label %.lver.check

.lver.check:                                      ; preds = %bb.dd
  %i.bqf = load double, ptr %i.ak, align 8, !tbaa !138 ; 4 uses
  %i.bqg = add nsw i64 %indvars.iv2352, 1         ; 2 uses
  %i.bqh = load <2 x double>, ptr %i.jr, align 8, !tbaa !138 ; 6 uses
  %i.bqi = add nsw i64 %indvars.iv2352, 2         ; 2 uses
  %invariant.gep2619 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352 ; 2 uses
  %invariant.gep2621 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bqg ; 2 uses
  %invariant.gep2623 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bqi
  %invariant.gep2625 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2352 ; 2 uses
  %invariant.gep2627 = getelementptr [8 x i8], ptr %i.as, i64 %i.bqg ; 2 uses
  %invariant.gep2629 = getelementptr [8 x i8], ptr %i.as, i64 %i.bqi
  %bound03470 = icmp ult ptr %scevgep3464, %scevgep3469
  %bound13471 = icmp ult ptr %scevgep3467, %scevgep3466
  %found.conflict3472 = and i1 %bound03470, %bound13471
  %lver.safe = or i1 %found.conflict3472, %i.nm
  br i1 %lver.safe, label %.ph3475.lver.orig.preheader, label %.ph3475

.ph3475.lver.orig.preheader:                      ; preds = %.lver.check
  %i.bqj = extractelement <2 x double> %i.bqh, i64 0 ; 2 uses
  %i.bqk = extractelement <2 x double> %i.bqh, i64 1 ; 2 uses
  br label %.ph3475.lver.orig

.ph3475.lver.orig:                                ; preds = %.ph3475.lver.orig.preheader, %.ph3475.lver.orig
  %indvars.iv2354.lver.orig = phi i64 [ %indvars.iv.next2355.lver.orig, %.ph3475.lver.orig ], [ %indvars.iv2352, %.ph3475.lver.orig.preheader ] ; 3 uses
  %i.bql = mul nsw i64 %indvars.iv2354.lver.orig, %i.ke ; 2 uses
  %gep2620.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2619, i64 %i.bql ; 2 uses
  %i.bqm = load double, ptr %gep2620.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2622.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2621, i64 %i.bql ; 2 uses
  %i.bqn = load <2 x double>, ptr %gep2622.lver.orig, align 8, !tbaa !138 ; 3 uses
  %i.bqo = extractelement <2 x double> %i.bqn, i64 0
  %i.bqp = call double @llvm.fmuladd.f64(double %i.bqj, double %i.bqo, double %i.bqm)
  %i.bqq = extractelement <2 x double> %i.bqn, i64 1
  %i.bqr = call double @llvm.fmuladd.f64(double %i.bqk, double %i.bqq, double %i.bqp)
  %i.bqs = fmul double %i.bqf, %i.bqr             ; 2 uses
  %i.bqt = fsub double %i.bqm, %i.bqs
  store double %i.bqt, ptr %gep2620.lver.orig, align 8, !tbaa !138
  %i.bqu = fneg double %i.bqs
  %i.bqv = insertelement <2 x double> poison, double %i.bqu, i64 0
  %i.bqw = shufflevector <2 x double> %i.bqv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bqx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bqw, <2 x double> %i.bqh, <2 x double> %i.bqn)
  store <2 x double> %i.bqx, ptr %gep2622.lver.orig, align 8, !tbaa !138
  %i.bqy = mul nsw i64 %indvars.iv2354.lver.orig, %i.kd ; 2 uses
  %gep2626.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2625, i64 %i.bqy ; 2 uses
  %i.bqz = load double, ptr %gep2626.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2628.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2627, i64 %i.bqy ; 2 uses
  %i.bra = load <2 x double>, ptr %gep2628.lver.orig, align 8, !tbaa !138 ; 3 uses
  %i.brb = extractelement <2 x double> %i.bra, i64 0
  %i.brc = call double @llvm.fmuladd.f64(double %i.bqj, double %i.brb, double %i.bqz)
  %i.brd = extractelement <2 x double> %i.bra, i64 1
  %i.bre = call double @llvm.fmuladd.f64(double %i.bqk, double %i.brd, double %i.brc)
  %i.brf = fmul double %i.bqf, %i.bre             ; 2 uses
  %i.brg = fsub double %i.bqz, %i.brf
  store double %i.brg, ptr %gep2626.lver.orig, align 8, !tbaa !138
  %i.brh = fneg double %i.brf
  %i.bri = insertelement <2 x double> poison, double %i.brh, i64 0
  %i.brj = shufflevector <2 x double> %i.bri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.brk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.brj, <2 x double> %i.bqh, <2 x double> %i.bra)
  store <2 x double> %i.brk, ptr %gep2628.lver.orig, align 8, !tbaa !138
  %indvars.iv.next2355.lver.orig = add nsw i64 %indvars.iv2354.lver.orig, 1 ; 2 uses
  %lftr.wideiv2358.lver.orig = trunc i64 %indvars.iv.next2355.lver.orig to i32
  %exitcond2359.not.lver.orig = icmp eq i32 %i.bmj, %lftr.wideiv2358.lver.orig
  br i1 %exitcond2359.not.lver.orig, label %._crit_edge2143, label %.ph3475.lver.orig, !llvm.loop !68

.ph3475:                                          ; preds = %.lver.check
  %load_initial = load double, ptr %scevgep3477, align 8
  %load_initial3479 = load double, ptr %scevgep3478, align 8
  %i.brl = extractelement <2 x double> %i.bqh, i64 0 ; 4 uses
  %i.brm = extractelement <2 x double> %i.bqh, i64 1 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %.ph3475, %bb.de
  %store_forwarded3480 = phi double [ %load_initial3479, %.ph3475 ], [ %i.brw, %bb.de ] ; 2 uses
  %store_forwarded = phi double [ %load_initial, %.ph3475 ], [ %i.bsg, %bb.de ] ; 2 uses
  %indvars.iv2354 = phi i64 [ %indvars.iv2352, %.ph3475 ], [ %indvars.iv.next2355, %bb.de ] ; 3 uses
  %i.brn = mul nuw nsw i64 %indvars.iv2354, %i.ke ; 3 uses
  %gep2620 = getelementptr [8 x i8], ptr %invariant.gep2619, i64 %i.brn ; 2 uses
  %i.bro = load double, ptr %gep2620, align 8, !tbaa !138 ; 2 uses
  %gep2622 = getelementptr [8 x i8], ptr %invariant.gep2621, i64 %i.brn
  %i.brp = call double @llvm.fmuladd.f64(double %i.brl, double %store_forwarded3480, double %i.bro)
  %gep2624 = getelementptr [8 x i8], ptr %invariant.gep2623, i64 %i.brn ; 2 uses
  %i.brq = load double, ptr %gep2624, align 8, !tbaa !138 ; 2 uses
  %i.brr = call double @llvm.fmuladd.f64(double %i.brm, double %i.brq, double %i.brp)
  %i.brs = fmul double %i.bqf, %i.brr             ; 2 uses
  %i.brt = fsub double %i.bro, %i.brs
  store double %i.brt, ptr %gep2620, align 8, !tbaa !138
  %i.bru = fneg double %i.brs                     ; 2 uses
  %i.brv = call double @llvm.fmuladd.f64(double %i.bru, double %i.brl, double %store_forwarded3480)
  store double %i.brv, ptr %gep2622, align 8, !tbaa !138
  %i.brw = call double @llvm.fmuladd.f64(double %i.bru, double %i.brm, double %i.brq) ; 2 uses
  store double %i.brw, ptr %gep2624, align 8, !tbaa !138
  %i.brx = mul nuw nsw i64 %indvars.iv2354, %i.kd ; 3 uses
  %gep2626 = getelementptr [8 x i8], ptr %invariant.gep2625, i64 %i.brx ; 2 uses
  %i.bry = load double, ptr %gep2626, align 8, !tbaa !138 ; 2 uses
  %gep2628 = getelementptr [8 x i8], ptr %invariant.gep2627, i64 %i.brx
  %i.brz = call double @llvm.fmuladd.f64(double %i.brl, double %store_forwarded, double %i.bry)
  %gep2630 = getelementptr [8 x i8], ptr %invariant.gep2629, i64 %i.brx ; 2 uses
  %i.bsa = load double, ptr %gep2630, align 8, !tbaa !138 ; 2 uses
  %i.bsb = call double @llvm.fmuladd.f64(double %i.brm, double %i.bsa, double %i.brz)
  %i.bsc = fmul double %i.bqf, %i.bsb             ; 2 uses
  %i.bsd = fsub double %i.bry, %i.bsc
  store double %i.bsd, ptr %gep2626, align 8, !tbaa !138
  %i.bse = fneg double %i.bsc                     ; 2 uses
  %i.bsf = call double @llvm.fmuladd.f64(double %i.bse, double %i.brl, double %store_forwarded)
  store double %i.bsf, ptr %gep2628, align 8, !tbaa !138
  %i.bsg = call double @llvm.fmuladd.f64(double %i.bse, double %i.brm, double %i.bsa) ; 2 uses
  store double %i.bsg, ptr %gep2630, align 8, !tbaa !138
  %indvars.iv.next2355 = add nsw i64 %indvars.iv2354, 1 ; 2 uses
  %lftr.wideiv2358 = trunc i64 %indvars.iv.next2355 to i32
  %exitcond2359.not = icmp eq i32 %i.bmj, %lftr.wideiv2358
  br i1 %exitcond2359.not, label %._crit_edge2143, label %bb.de, !llvm.loop !68

._crit_edge2143:                                  ; preds = %bb.de, %.ph3475.lver.orig, %bb.dd
  br i1 %.not1983.not, label %bb.df, label %.loopexit2092

bb.df:                                            ; preds = %._crit_edge2143
  %i.bsh = load i32, ptr %3, align 4, !tbaa !136  ; 6 uses
  %.not20162146 = icmp slt i32 %i.bsh, 1
  br i1 %.not20162146, label %.loopexit2092, label %.lr.ph2149

.lr.ph2149:                                       ; preds = %bb.df
  %i.bsi = load double, ptr %i.ak, align 8, !tbaa !138 ; 4 uses
  %i.bsj = mul nsw i64 %indvars.iv2352, %i.kf
  %i.bsk = load double, ptr %i.jr, align 8, !tbaa !138 ; 7 uses
  %i.bsl = add nsw i64 %indvars.iv2352, 1
  %i.bsm = mul nsw i64 %i.bsl, %i.kf
  %i.bsn = load double, ptr %i.js, align 16, !tbaa !138 ; 7 uses
  %i.bso = add nsw i64 %indvars.iv2352, 2
  %i.bsp = mul nsw i64 %i.bso, %i.kf
  %i.bsq = add nuw i32 %i.bsh, 1
  %wide.trip.count2364 = zext i32 %i.bsq to i64   ; 2 uses
  %invariant.gep2631 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsj ; 5 uses
  %invariant.gep2633 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsm ; 5 uses
  %invariant.gep2635 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsp ; 5 uses
  %i.bsr = zext nneg i32 %i.bsh to i64            ; 2 uses
  %min.iters.check3390 = icmp ult i32 %i.bsh, 4
  br i1 %min.iters.check3390, label %scalar.ph3389.preheader, label %vector.memcheck3371

vector.memcheck3371:                              ; preds = %.lr.ph2149
  %i.bss = shl nuw nsw i64 %wide.trip.count2364, 3 ; 3 uses
  %scevgep3373 = getelementptr i8, ptr %invariant.gep2631, i64 %i.bss ; 2 uses
  %scevgep3375 = getelementptr i8, ptr %invariant.gep2633, i64 %i.bss ; 2 uses
  %scevgep3377 = getelementptr i8, ptr %invariant.gep2635, i64 %i.bss ; 2 uses
  %bound03378 = icmp ult ptr %scevgep3372, %scevgep3375
  %bound13379 = icmp ult ptr %scevgep3374, %scevgep3373
  %found.conflict3380 = and i1 %bound03378, %bound13379
  %bound03381 = icmp ult ptr %scevgep3372, %scevgep3377
  %bound13382 = icmp ult ptr %scevgep3376, %scevgep3373
  %found.conflict3383 = and i1 %bound03381, %bound13382
  %conflict.rdx3384 = or i1 %found.conflict3380, %found.conflict3383
  %bound03385 = icmp ult ptr %scevgep3374, %scevgep3377
  %bound13386 = icmp ult ptr %scevgep3376, %scevgep3375
  %found.conflict3387 = and i1 %bound03385, %bound13386
  %conflict.rdx3388 = or i1 %conflict.rdx3384, %found.conflict3387
  br i1 %conflict.rdx3388, label %scalar.ph3389.preheader, label %vector.ph3391
end_hunk_2
begin_hunk_3_@dhgeqz_:bb.a
  %i.bwa = add nsw i32 %i.bvz, %indvars2384       ; 2 uses
  %i.bwb = trunc nsw i64 %i.buw to i32
  %i.bwc = add nsw i32 %i.bvx, %i.bwb             ; 2 uses
  %i.bwd = extractelement <2 x double> %i.bvh, i64 0 ; 2 uses
  %i.bwe = extractelement <2 x double> %i.bvh, i64 1 ; 2 uses
  %. = select i1 %i.bvu, double %i.bwd, double %i.bwe ; 3 uses
  %.2722 = select i1 %i.bvu, double %i.bvc, double %i.bvg ; 3 uses
  %.2723 = select i1 %i.bvu, double %i.bwe, double %i.bwd ; 2 uses
  %.2724 = select i1 %i.bvu, double %i.bvg, double %i.bvc ; 3 uses
  %.2725 = select i1 %i.bvu, i32 %i.bwa, i32 %i.bwc
  %.2726 = select i1 %i.bvu, i32 %i.bwc, i32 %i.bwa
  %.pn2017 = sext i32 %.2726 to i64
  %.01927.in = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.pn2017
  %.01927 = load double, ptr %.01927.in, align 8, !tbaa !138
  %.pn = sext i32 %.2725 to i64
  %.01930.in = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.pn
  %.01930 = load double, ptr %.01930.in, align 8, !tbaa !138 ; 4 uses
  %i.bwf = call double @llvm.fabs.f64(double %.2722)
  %i.bwg = call double @llvm.fabs.f64(double %.)
  %i.bwh = fcmp ule double %i.bwf, %i.bwg         ; 2 uses
  br i1 %i.bwh, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store double %.2724, ptr %i.f, align 8, !tbaa !138
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.11921 = phi double [ %.2722, %bb.dh ], [ %., %bb.dg ] ; 4 uses
  %.11915 = phi double [ %., %bb.dh ], [ %.2722, %bb.dg ] ; 3 uses
  %.11913 = phi double [ %.2724, %bb.dh ], [ %.2723, %bb.dg ]
  %.11911 = phi double [ %.2723, %bb.dh ], [ %.2724, %bb.dg ]
  %i.bwi = fdiv double %.11913, %.11921           ; 2 uses
  store double %i.bwi, ptr %i.e, align 8, !tbaa !138
  %i.bwj = fneg double %i.bwi                     ; 2 uses
  %i.bwk = call double @llvm.fmuladd.f64(double %i.bwj, double %.01930, double %.01927) ; 3 uses
  %i.bwl = call double @llvm.fmuladd.f64(double %i.bwj, double %.11915, double %.11911) ; 5 uses
  %i.bwm = fcmp oge double %i.bwl, 0.000000e+00
  %i.bwn = fneg double %i.bwl
  %i.bwo = select i1 %i.bwm, double %i.bwl, double %i.bwn ; 2 uses
  %i.bwp = fcmp olt double %i.bwo, %i.cs
  br i1 %i.bwp, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.bwq = fneg double %.11915
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di
  %i.bwr = call double @llvm.fabs.f64(double %i.bwk)
  %i.bws = fcmp olt double %i.bwo, %i.bwr
  %i.bwt = fdiv double %i.bwl, %i.bwk             ; 3 uses
  %i.bwu = fcmp oge double %i.bwt, 0.000000e+00
  %i.bwv = fneg double %i.bwt
  %i.bww = select i1 %i.bwu, double %i.bwt, double %i.bwv
  %.21940 = select i1 %i.bws, double %i.bww, double 1.000000e+00 ; 3 uses
  %i.bwx = call double @llvm.fabs.f64(double %.11921)
  %i.bwy = call double @llvm.fabs.f64(double %.01930)
  %i.bwz = fcmp olt double %i.bwx, %i.bwy
  br i1 %i.bwz, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.bxa = fdiv double %.11921, %.01930           ; 4 uses
  store double %i.bxa, ptr %i.d, align 8, !tbaa !138
  %i.bxb = fcmp oge double %i.bxa, 0.000000e+00
  %i.bxc = fneg double %i.bxa
  %i.bxd = select i1 %i.bxb, double %i.bxa, double %i.bxc ; 2 uses
  %i.bxe = fcmp ole double %.21940, %i.bxd
  %i.bxf = select i1 %i.bxe, double %.21940, double %i.bxd
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.31941 = phi double [ %i.bxf, %bb.dl ], [ %.21940, %bb.dk ] ; 3 uses
  %i.bxg = fmul double %i.bwk, %.31941
  %i.bxh = fdiv double %i.bxg, %i.bwl             ; 2 uses
  %i.bxi = fneg double %i.bxh
  %i.bxj = fmul double %.11915, %i.bxi
  %i.bxk = call double @llvm.fmuladd.f64(double %.31941, double %.01930, double %i.bxj)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  %.41942 = phi double [ %.31941, %bb.dm ], [ 0.000000e+00, %bb.dj ] ; 2 uses
  %.pn2082 = phi double [ %i.bxk, %bb.dm ], [ %i.bwq, %bb.dj ]
  %.11928 = phi double [ %i.bxh, %bb.dm ], [ 1.000000e+00, %bb.dj ] ; 3 uses
  %.11931 = fdiv double %.pn2082, %.11921         ; 2 uses
  br i1 %i.bwh, label %.thread2072, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store double %.11928, ptr %i.e, align 8, !tbaa !138
  br label %.thread2072

.thread2072:                                      ; preds = %.loopexit2092, %bb.do, %bb.dn
  %.419422078 = phi double [ %.41942, %bb.do ], [ %.41942, %bb.dn ], [ 0.000000e+00, %.loopexit2092 ] ; 5 uses
  %.21932 = phi double [ %.11928, %bb.do ], [ %.11931, %bb.dn ], [ 1.000000e+00, %.loopexit2092 ] ; 3 uses
  %.21929 = phi double [ %.11931, %bb.do ], [ %.11928, %bb.dn ], [ 0.000000e+00, %.loopexit2092 ] ; 3 uses
  store double %.419422078, ptr %i.d, align 8, !tbaa !138
  %i.bxl = fmul double %.21932, %.21932
  %i.bxm = call double @llvm.fmuladd.f64(double %.419422078, double %.419422078, double %i.bxl)
  %i.bxn = call double @llvm.fmuladd.f64(double %.21929, double %.21929, double %i.bxm)
  %sqrt = call double @llvm.sqrt.f64(double %i.bxn) ; 2 uses
  %i.bxo = fdiv double %.419422078, %sqrt
  %i.bxp = fadd double %i.bxo, 1.000000e+00       ; 11 uses
  store double %i.bxp, ptr %i.ak, align 8, !tbaa !138
  %i.bxq = fadd double %.419422078, %sqrt
  %i.bxr = fdiv double -1.000000e+00, %i.bxq      ; 2 uses
  %i.bxs = fmul double %.21932, %i.bxr            ; 18 uses
  %i.bxt = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bxs, i64 1
  store <2 x double> %i.bxt, ptr %i.i, align 16, !tbaa !138
  %i.bxu = fmul double %.21929, %i.bxr            ; 18 uses
  store double %i.bxu, ptr %i.js, align 16, !tbaa !138
  %i.bxv = trunc i64 %indvars.iv2352 to i32
  %i.bxw = add i32 %i.bxv, 3                      ; 2 uses
  store i32 %i.bxw, ptr %i.c, align 4, !tbaa !136
  %i.bxx = call i32 @llvm.smin.i32(i32 %i.bxw, i32 %.019342251) ; 2 uses
  %.not20202151 = icmp sgt i32 %spec.select2069, %i.bxx
  br i1 %.not20202151, label %.preheader2091, label %.lr.ph2153

.lr.ph2153:                                       ; preds = %.thread2072
  %i.bxy = mul nsw i64 %indvars.iv2352, %i.ke
  %i.bxz = mul nsw i64 %indvars.iv.next2353, %i.ke
  %i.bya = mul nsw i64 %i.buw, %i.ke
  %i.byb = sext i32 %i.bxx to i64                 ; 2 uses
  %invariant.gep2637 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bxy ; 2 uses
  %invariant.gep2639 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bxz ; 2 uses
  %invariant.gep2641 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bya ; 2 uses
  %.reass = add i64 %i.byb, %invariant.op         ; 3 uses
  %min.iters.check3351 = icmp ult i64 %.reass, 4
  br i1 %min.iters.check3351, label %scalar.ph3350.preheader, label %vector.memcheck3327

vector.memcheck3327:                              ; preds = %.lr.ph2153
  %bound03339 = icmp ult ptr %scevgep3328, %scevgep3335
  %bound13340 = icmp ult ptr %scevgep3333, %scevgep3332
  %found.conflict3341 = and i1 %bound03339, %bound13340
  %bound03342 = icmp ult ptr %scevgep3328, %scevgep3338
  %bound13343 = icmp ult ptr %scevgep3336, %scevgep3332
  %found.conflict3344 = and i1 %bound03342, %bound13343
  %conflict.rdx3345 = or i1 %found.conflict3341, %found.conflict3344
  %bound03346 = icmp ult ptr %scevgep3333, %scevgep3338
  %bound13347 = icmp ult ptr %scevgep3336, %scevgep3335
  %found.conflict3348 = and i1 %bound03346, %bound13347
  %conflict.rdx3349 = or i1 %conflict.rdx3345, %found.conflict3348
  br i1 %conflict.rdx3349, label %scalar.ph3350.preheader, label %vector.ph3352

vector.ph3352:                                    ; preds = %vector.memcheck3327
  %n.vec3353 = and i64 %.reass, -4                ; 3 uses
  %i.byc = add nsw i64 %n.vec3353, %i.bmk
  %broadcast.splatinsert3354 = insertelement <4 x double> poison, double %i.bxs, i64 0
  %broadcast.splat3355 = shufflevector <4 x double> %broadcast.splatinsert3354, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3356 = insertelement <4 x double> poison, double %i.bxu, i64 0
  %broadcast.splat3357 = shufflevector <4 x double> %broadcast.splatinsert3356, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3358 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat3359 = shufflevector <4 x double> %broadcast.splatinsert3358, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3360

vector.body3360:                                  ; preds = %vector.body3360, %vector.ph3352
  %index3361 = phi i64 [ 0, %vector.ph3352 ], [ %index.next3367, %vector.body3360 ] ; 2 uses
  %i.byd = add i64 %index3361, %i.bmk             ; 3 uses
  %i.bye = getelementptr [8 x i8], ptr %invariant.gep2637, i64 %i.byd ; 2 uses
  %wide.load3362 = load <4 x double>, ptr %i.bye, align 8, !tbaa !138, !alias.scope !163, !noalias !164 ; 2 uses
  %i.byf = getelementptr [8 x i8], ptr %invariant.gep2639, i64 %i.byd ; 3 uses
  %wide.load3363 = load <4 x double>, ptr %i.byf, align 8, !tbaa !138, !alias.scope !165, !noalias !166
  %i.byg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3355, <4 x double> %wide.load3363, <4 x double> %wide.load3362)
  %i.byh = getelementptr [8 x i8], ptr %invariant.gep2641, i64 %i.byd ; 3 uses
  %wide.load3364 = load <4 x double>, ptr %i.byh, align 8, !tbaa !138, !alias.scope !166
  %i.byi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3357, <4 x double> %wide.load3364, <4 x double> %i.byg)
  %i.byj = fmul <4 x double> %broadcast.splat3359, %i.byi ; 3 uses
  %i.byk = fsub <4 x double> %wide.load3362, %i.byj
  store <4 x double> %i.byk, ptr %i.bye, align 8, !tbaa !138, !alias.scope !163, !noalias !164
  %wide.load3365 = load <4 x double>, ptr %i.byf, align 8, !tbaa !138, !alias.scope !165, !noalias !166
  %i.byl = fneg <4 x double> %i.byj               ; 2 uses
  %i.bym = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.byl, <4 x double> %broadcast.splat3355, <4 x double> %wide.load3365)
  store <4 x double> %i.bym, ptr %i.byf, align 8, !tbaa !138, !alias.scope !165, !noalias !166
  %wide.load3366 = load <4 x double>, ptr %i.byh, align 8, !tbaa !138, !alias.scope !166
  %i.byn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.byl, <4 x double> %broadcast.splat3357, <4 x double> %wide.load3366)
  store <4 x double> %i.byn, ptr %i.byh, align 8, !tbaa !138, !alias.scope !166
  %index.next3367 = add nuw i64 %index3361, 4     ; 2 uses
  %i.byo = icmp eq i64 %index.next3367, %n.vec3353
  br i1 %i.byo, label %middle.block3368, label %vector.body3360, !llvm.loop !79

middle.block3368:                                 ; preds = %vector.body3360
  %i.byp = extractelement <4 x double> %i.byj, i64 3
  %cmp.n3369 = icmp eq i64 %.reass, %n.vec3353
  br i1 %cmp.n3369, label %..preheader2091_crit_edge, label %scalar.ph3350.preheader

scalar.ph3350.preheader:                          ; preds = %vector.memcheck3327, %.lr.ph2153, %middle.block3368
  %indvars.iv2366.ph = phi i64 [ %i.bmk, %vector.memcheck3327 ], [ %i.bmk, %.lr.ph2153 ], [ %i.byc, %middle.block3368 ]
  br label %scalar.ph3350

..preheader2091_crit_edge:                        ; preds = %scalar.ph3350, %middle.block3368
  %.lcssa2758 = phi double [ %i.byp, %middle.block3368 ], [ %i.cab, %scalar.ph3350 ]
  store double %.lcssa2758, ptr %i.e, align 8, !tbaa !138
  br label %.preheader2091

.preheader2091:                                   ; preds = %..preheader2091_crit_edge, %.thread2072
  %.not20212155 = icmp slt i64 %i.buw, %i.bmk
  br i1 %.not20212155, label %bb.dp, label %.lr.ph2157

.lr.ph2157:                                       ; preds = %.preheader2091
  %i.byq = mul nsw i64 %indvars.iv2352, %i.kd
  %invariant.gep2643 = getelementptr [8 x i8], ptr %i.as, i64 %i.byq ; 4 uses
  %invariant.gep2645 = getelementptr [8 x i8], ptr %i.as, i64 %i.but ; 4 uses
  %invariant.gep2647 = getelementptr [8 x i8], ptr %i.as, i64 %i.buy ; 4 uses
  %i.byr = zext i32 %26 to i64
  %i.bys = add nuw nsw i64 %i.byr, 1              ; 2 uses
  %min.iters.check3307 = icmp ult i32 %26, 3
  br i1 %min.iters.check3307, label %scalar.ph3306.preheader, label %vector.memcheck3285

vector.memcheck3285:                              ; preds = %.lr.ph2157
  %bound03295 = icmp ult ptr %scevgep3286, %scevgep3291
  %bound13296 = icmp ult ptr %scevgep3289, %scevgep3288
  %found.conflict3297 = and i1 %bound03295, %bound13296
  %bound03298 = icmp ult ptr %scevgep3286, %scevgep3294
  %bound13299 = icmp ult ptr %scevgep3292, %scevgep3288
  %found.conflict3300 = and i1 %bound03298, %bound13299
  %conflict.rdx3301 = or i1 %found.conflict3297, %found.conflict3300
  %bound03302 = icmp ult ptr %scevgep3289, %scevgep3294
  %bound13303 = icmp ult ptr %scevgep3292, %scevgep3291
  %found.conflict3304 = and i1 %bound03302, %bound13303
  %conflict.rdx3305 = or i1 %conflict.rdx3301, %found.conflict3304
  br i1 %conflict.rdx3305, label %scalar.ph3306.preheader, label %vector.ph3308

vector.ph3308:                                    ; preds = %vector.memcheck3285
  %n.vec3309 = and i64 %i.bys, 8589934588         ; 3 uses
  %i.byt = add nsw i64 %n.vec3309, %i.bmk
  %broadcast.splatinsert3310 = insertelement <4 x double> poison, double %i.bxs, i64 0
  %broadcast.splat3311 = shufflevector <4 x double> %broadcast.splatinsert3310, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3312 = insertelement <4 x double> poison, double %i.bxu, i64 0
  %broadcast.splat3313 = shufflevector <4 x double> %broadcast.splatinsert3312, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3314 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat3315 = shufflevector <4 x double> %broadcast.splatinsert3314, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3316

vector.body3316:                                  ; preds = %vector.body3316, %vector.ph3308
  %index3317 = phi i64 [ 0, %vector.ph3308 ], [ %index.next3323, %vector.body3316 ] ; 2 uses
  %i.byu = add i64 %index3317, %i.bmk             ; 3 uses
  %i.byv = getelementptr [8 x i8], ptr %invariant.gep2643, i64 %i.byu ; 2 uses
  %wide.load3318 = load <4 x double>, ptr %i.byv, align 8, !tbaa !138, !alias.scope !167, !noalias !168 ; 2 uses
  %i.byw = getelementptr [8 x i8], ptr %invariant.gep2645, i64 %i.byu ; 3 uses
  %wide.load3319 = load <4 x double>, ptr %i.byw, align 8, !tbaa !138, !alias.scope !169, !noalias !170
  %i.byx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3311, <4 x double> %wide.load3319, <4 x double> %wide.load3318)
  %i.byy = getelementptr [8 x i8], ptr %invariant.gep2647, i64 %i.byu ; 3 uses
  %wide.load3320 = load <4 x double>, ptr %i.byy, align 8, !tbaa !138, !alias.scope !170
  %i.byz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3313, <4 x double> %wide.load3320, <4 x double> %i.byx)
  %i.bza = fmul <4 x double> %broadcast.splat3315, %i.byz ; 3 uses
  %i.bzb = fsub <4 x double> %wide.load3318, %i.bza
  store <4 x double> %i.bzb, ptr %i.byv, align 8, !tbaa !138, !alias.scope !167, !noalias !168
  %wide.load3321 = load <4 x double>, ptr %i.byw, align 8, !tbaa !138, !alias.scope !169, !noalias !170
  %i.bzc = fneg <4 x double> %i.bza               ; 2 uses
  %i.bzd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bzc, <4 x double> %broadcast.splat3311, <4 x double> %wide.load3321)
  store <4 x double> %i.bzd, ptr %i.byw, align 8, !tbaa !138, !alias.scope !169, !noalias !170
  %wide.load3322 = load <4 x double>, ptr %i.byy, align 8, !tbaa !138, !alias.scope !170
  %i.bze = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bzc, <4 x double> %broadcast.splat3313, <4 x double> %wide.load3322)
  store <4 x double> %i.bze, ptr %i.byy, align 8, !tbaa !138, !alias.scope !170
  %index.next3323 = add nuw i64 %index3317, 4     ; 2 uses
  %i.bzf = icmp eq i64 %index.next3323, %n.vec3309
  br i1 %i.bzf, label %middle.block3324, label %vector.body3316, !llvm.loop !84

middle.block3324:                                 ; preds = %vector.body3316
  %i.bzg = extractelement <4 x double> %i.bza, i64 3
  %cmp.n3325 = icmp eq i64 %i.bys, %n.vec3309
  br i1 %cmp.n3325, label %._crit_edge2158, label %scalar.ph3306.preheader

scalar.ph3306.preheader:                          ; preds = %vector.memcheck3285, %.lr.ph2157, %middle.block3324
  %indvars.iv2370.ph = phi i64 [ %i.bmk, %vector.memcheck3285 ], [ %i.bmk, %.lr.ph2157 ], [ %i.byt, %middle.block3324 ] ; 6 uses
  %i.bzh = trunc i64 %indvars.iv2370.ph to i32    ; 2 uses
  %i.bzi = sub i32 %indvars.iv2374, %i.bzh
  %xtraiter3565 = and i32 %i.bzi, 1
  %lcmp.mod3566.not = icmp eq i32 %xtraiter3565, 0
  br i1 %lcmp.mod3566.not, label %scalar.ph3306.prol.loopexit, label %scalar.ph3306.prol

scalar.ph3306.prol:                               ; preds = %scalar.ph3306.preheader
  %gep2644.prol = getelementptr [8 x i8], ptr %invariant.gep2643, i64 %indvars.iv2370.ph ; 2 uses
  %i.bzj = load double, ptr %gep2644.prol, align 8, !tbaa !138 ; 2 uses
  %gep2646.prol = getelementptr [8 x i8], ptr %invariant.gep2645, i64 %indvars.iv2370.ph ; 3 uses
  %i.bzk = load double, ptr %gep2646.prol, align 8, !tbaa !138
  %i.bzl = call double @llvm.fmuladd.f64(double %i.bxs, double %i.bzk, double %i.bzj)
  %gep2648.prol = getelementptr [8 x i8], ptr %invariant.gep2647, i64 %indvars.iv2370.ph ; 3 uses
  %i.bzm = load double, ptr %gep2648.prol, align 8, !tbaa !138
  %i.bzn = call double @llvm.fmuladd.f64(double %i.bxu, double %i.bzm, double %i.bzl)
  %i.bzo = fmul double %i.bxp, %i.bzn             ; 3 uses
  %i.bzp = fsub double %i.bzj, %i.bzo
  store double %i.bzp, ptr %gep2644.prol, align 8, !tbaa !138
  %i.bzq = load double, ptr %gep2646.prol, align 8, !tbaa !138
  %i.bzr = fneg double %i.bzo                     ; 2 uses
  %i.bzs = call double @llvm.fmuladd.f64(double %i.bzr, double %i.bxs, double %i.bzq)
  store double %i.bzs, ptr %gep2646.prol, align 8, !tbaa !138
  %i.bzt = load double, ptr %gep2648.prol, align 8, !tbaa !138
  %i.bzu = call double @llvm.fmuladd.f64(double %i.bzr, double %i.bxu, double %i.bzt)
  store double %i.bzu, ptr %gep2648.prol, align 8, !tbaa !138
  %indvars.iv.next2371.prol = add nsw i64 %indvars.iv2370.ph, 1
  br label %scalar.ph3306.prol.loopexit

scalar.ph3306.prol.loopexit:                      ; preds = %scalar.ph3306.prol, %scalar.ph3306.preheader
  %.lcssa3538.unr = phi double [ poison, %scalar.ph3306.preheader ], [ %i.bzo, %scalar.ph3306.prol ]
  %indvars.iv2370.unr = phi i64 [ %indvars.iv2370.ph, %scalar.ph3306.preheader ], [ %indvars.iv.next2371.prol, %scalar.ph3306.prol ]
  %i.bzv = icmp eq i32 %i.bow, %i.bzh
  br i1 %i.bzv, label %._crit_edge2158, label %scalar.ph3306

scalar.ph3350:                                    ; preds = %scalar.ph3350.preheader, %scalar.ph3350
  %indvars.iv2366 = phi i64 [ %indvars.iv.next2367, %scalar.ph3350 ], [ %indvars.iv2366.ph, %scalar.ph3350.preheader ] ; 5 uses
  %gep2638 = getelementptr [8 x i8], ptr %invariant.gep2637, i64 %indvars.iv2366 ; 2 uses
  %i.bzw = load double, ptr %gep2638, align 8, !tbaa !138 ; 2 uses
  %gep2640 = getelementptr [8 x i8], ptr %invariant.gep2639, i64 %indvars.iv2366 ; 3 uses
  %i.bzx = load double, ptr %gep2640, align 8, !tbaa !138
  %i.bzy = call double @llvm.fmuladd.f64(double %i.bxs, double %i.bzx, double %i.bzw)
  %gep2642 = getelementptr [8 x i8], ptr %invariant.gep2641, i64 %indvars.iv2366 ; 3 uses
  %i.bzz = load double, ptr %gep2642, align 8, !tbaa !138
  %i.caa = call double @llvm.fmuladd.f64(double %i.bxu, double %i.bzz, double %i.bzy)
  %i.cab = fmul double %i.bxp, %i.caa             ; 3 uses
  %i.cac = fsub double %i.bzw, %i.cab
  store double %i.cac, ptr %gep2638, align 8, !tbaa !138
  %i.cad = load double, ptr %gep2640, align 8, !tbaa !138
  %i.cae = fneg double %i.cab                     ; 2 uses
  %i.caf = call double @llvm.fmuladd.f64(double %i.cae, double %i.bxs, double %i.cad)
  store double %i.caf, ptr %gep2640, align 8, !tbaa !138
  %i.cag = load double, ptr %gep2642, align 8, !tbaa !138
  %i.cah = call double @llvm.fmuladd.f64(double %i.cae, double %i.bxu, double %i.cag)
  store double %i.cah, ptr %gep2642, align 8, !tbaa !138
  %indvars.iv.next2367 = add nsw i64 %indvars.iv2366, 1
  %.not2020.not = icmp slt i64 %indvars.iv2366, %i.byb
  br i1 %.not2020.not, label %scalar.ph3350, label %..preheader2091_crit_edge, !llvm.loop !85

scalar.ph3306:                                    ; preds = %scalar.ph3306.prol.loopexit, %scalar.ph3306
  %indvars.iv2370 = phi i64 [ %indvars.iv.next2371.1, %scalar.ph3306 ], [ %indvars.iv2370.unr, %scalar.ph3306.prol.loopexit ] ; 5 uses
  %gep2644 = getelementptr [8 x i8], ptr %invariant.gep2643, i64 %indvars.iv2370 ; 2 uses
  %i.cai = load double, ptr %gep2644, align 8, !tbaa !138 ; 2 uses
  %gep2646 = getelementptr [8 x i8], ptr %invariant.gep2645, i64 %indvars.iv2370 ; 3 uses
  %i.caj = load double, ptr %gep2646, align 8, !tbaa !138
  %i.cak = call double @llvm.fmuladd.f64(double %i.bxs, double %i.caj, double %i.cai)
  %gep2648 = getelementptr [8 x i8], ptr %invariant.gep2647, i64 %indvars.iv2370 ; 3 uses
  %i.cal = load double, ptr %gep2648, align 8, !tbaa !138
  %i.cam = call double @llvm.fmuladd.f64(double %i.bxu, double %i.cal, double %i.cak)
  %i.can = fmul double %i.bxp, %i.cam             ; 2 uses
  %i.cao = fsub double %i.cai, %i.can
  store double %i.cao, ptr %gep2644, align 8, !tbaa !138
  %i.cap = load double, ptr %gep2646, align 8, !tbaa !138
  %i.caq = fneg double %i.can                     ; 2 uses
  %i.car = call double @llvm.fmuladd.f64(double %i.caq, double %i.bxs, double %i.cap)
  store double %i.car, ptr %gep2646, align 8, !tbaa !138
  %i.cas = load double, ptr %gep2648, align 8, !tbaa !138
  %i.cat = call double @llvm.fmuladd.f64(double %i.caq, double %i.bxu, double %i.cas)
  store double %i.cat, ptr %gep2648, align 8, !tbaa !138
  %indvars.iv.next2371 = add nsw i64 %indvars.iv2370, 1 ; 3 uses
  %gep2644.1 = getelementptr [8 x i8], ptr %invariant.gep2643, i64 %indvars.iv.next2371 ; 2 uses
  %i.cau = load double, ptr %gep2644.1, align 8, !tbaa !138 ; 2 uses
  %gep2646.1 = getelementptr [8 x i8], ptr %invariant.gep2645, i64 %indvars.iv.next2371 ; 3 uses
  %i.cav = load double, ptr %gep2646.1, align 8, !tbaa !138
  %i.caw = call double @llvm.fmuladd.f64(double %i.bxs, double %i.cav, double %i.cau)
  %gep2648.1 = getelementptr [8 x i8], ptr %invariant.gep2647, i64 %indvars.iv.next2371 ; 3 uses
  %i.cax = load double, ptr %gep2648.1, align 8, !tbaa !138
  %i.cay = call double @llvm.fmuladd.f64(double %i.bxu, double %i.cax, double %i.caw)
  %i.caz = fmul double %i.bxp, %i.cay             ; 3 uses
  %i.cba = fsub double %i.cau, %i.caz
  store double %i.cba, ptr %gep2644.1, align 8, !tbaa !138
  %i.cbb = load double, ptr %gep2646.1, align 8, !tbaa !138
  %i.cbc = fneg double %i.caz                     ; 2 uses
  %i.cbd = call double @llvm.fmuladd.f64(double %i.cbc, double %i.bxs, double %i.cbb)
  store double %i.cbd, ptr %gep2646.1, align 8, !tbaa !138
  %i.cbe = load double, ptr %gep2648.1, align 8, !tbaa !138
  %i.cbf = call double @llvm.fmuladd.f64(double %i.cbc, double %i.bxu, double %i.cbe)
  store double %i.cbf, ptr %gep2648.1, align 8, !tbaa !138
  %indvars.iv.next2371.1 = add nsw i64 %indvars.iv2370, 2 ; 2 uses
  %lftr.wideiv2376.1 = trunc i64 %indvars.iv.next2371.1 to i32
  %exitcond2377.not.1 = icmp eq i32 %indvars.iv2374, %lftr.wideiv2376.1
  br i1 %exitcond2377.not.1, label %._crit_edge2158, label %scalar.ph3306, !llvm.loop !86

._crit_edge2158:                                  ; preds = %scalar.ph3306.prol.loopexit, %scalar.ph3306, %middle.block3324
  %.lcssa2759 = phi double [ %i.bzg, %middle.block3324 ], [ %.lcssa3538.unr, %scalar.ph3306.prol.loopexit ], [ %i.caz, %scalar.ph3306 ]
  store double %.lcssa2759, ptr %i.e, align 8, !tbaa !138
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge2158, %.preheader2091
  br i1 %.not1986.not, label %bb.dq, label %.loopexit2090

bb.dq:                                            ; preds = %bb.dp
  %i.cbg = load i32, ptr %3, align 4, !tbaa !136  ; 6 uses
  %.not20232160 = icmp slt i32 %i.cbg, 1
  br i1 %.not20232160, label %.loopexit2090, label %.lr.ph2163

.lr.ph2163:                                       ; preds = %bb.dq
  %i.cbh = mul nsw i64 %indvars.iv2352, %i.kc
  %i.cbi = mul nsw i64 %indvars.iv.next2353, %i.kc
  %i.cbj = mul nsw i64 %i.buw, %i.kc
  %i.cbk = add nuw i32 %i.cbg, 1
  %wide.trip.count2382 = zext i32 %i.cbk to i64   ; 2 uses
  %invariant.gep2649 = getelementptr [8 x i8], ptr %i.bb, i64 %i.cbh ; 5 uses
  %invariant.gep2651 = getelementptr [8 x i8], ptr %i.bb, i64 %i.cbi ; 5 uses
  %invariant.gep2653 = getelementptr [8 x i8], ptr %i.bb, i64 %i.cbj ; 5 uses
  %i.cbl = zext nneg i32 %i.cbg to i64            ; 2 uses
  %min.iters.check3265 = icmp ult i32 %i.cbg, 4
  br i1 %min.iters.check3265, label %scalar.ph3264.preheader, label %vector.memcheck3244

vector.memcheck3244:                              ; preds = %.lr.ph2163
  %i.cbm = shl nuw nsw i64 %wide.trip.count2382, 3 ; 3 uses
  %scevgep3248 = getelementptr i8, ptr %invariant.gep2649, i64 %i.cbm ; 2 uses
  %scevgep3250 = getelementptr i8, ptr %invariant.gep2651, i64 %i.cbm ; 2 uses
  %scevgep3252 = getelementptr i8, ptr %invariant.gep2653, i64 %i.cbm ; 2 uses
  %bound03253 = icmp ult ptr %scevgep3247, %scevgep3250
  %bound13254 = icmp ult ptr %scevgep3249, %scevgep3248
  %found.conflict3255 = and i1 %bound03253, %bound13254
  %bound03256 = icmp ult ptr %scevgep3247, %scevgep3252
  %bound13257 = icmp ult ptr %scevgep3251, %scevgep3248
end_hunk_3
