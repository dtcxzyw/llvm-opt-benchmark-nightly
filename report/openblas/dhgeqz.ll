Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dhgeqz?download=true
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dhgeqz_:bb.a
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
  %i.ahj = sub i32 %.01894, %spec.select2069
  %i.ahk = mul i64 %i.kt, %i.agx
  %i.ahl = shl nsw i64 %i.agz, 3                  ; 2 uses
  %i.ahm = mul nsw i64 %i.ke, %i.agx
  %i.ahn = add i64 %i.ahm, %i.ao
  %i.aho = shl i64 %i.ahn, 3
  %i.ahp = add i32 %.01894, 2
  %i.ahq = add nsw i64 %i.agx, 1                  ; 2 uses
  %i.ahr = mul i64 %i.kv, %i.ahq                  ; 2 uses
  %i.ahs = mul i64 %i.kx, %i.ahq
  %i.aht = mul i64 %i.kz, %i.agx
  %i.ahu = shl nsw i64 %i.agx, 4
  %i.ahv = add nsw i64 %i.ahu, -16                ; 2 uses
  %i.ahw = add i32 %.119022258, 1
  %i.ahx = getelementptr i8, ptr %i.np, i64 %i.ahs
  %i.ahy = getelementptr i8, ptr %i.nr, i64 %i.aht
  %i.ahz = getelementptr i8, ptr %i.ns, i64 %i.ahk
  %i.aia = getelementptr i8, ptr %i.ahz, i64 %i.ahl
  %i.aib = getelementptr i8, ptr %6, i64 %i.aho
  %i.aic = getelementptr i8, ptr %i.aib, i64 8
  %i.aid = getelementptr i8, ptr %i.nt, i64 %i.ahr
  %i.aie = getelementptr i8, ptr %i.aid, i64 %i.ahl
  %i.aif = getelementptr i8, ptr %i.nv, i64 %i.ahr
  %i.aig = getelementptr i8, ptr %i.nw, i64 %i.ahe
  %i.aih = getelementptr i8, ptr %i.aig, i64 %i.ahf
  %i.aii = getelementptr i8, ptr %i.ny, i64 %i.ahe
  %i.aij = getelementptr i8, ptr %i.aii, i64 %i.ahf
  %i.aik = getelementptr i8, ptr %i.nz, i64 %i.ahi
  %i.ail = getelementptr i8, ptr %i.aik, i64 %i.ahf
  %i.aim = getelementptr i8, ptr %i.ob, i64 %i.ahi
  %i.ain = getelementptr i8, ptr %i.aim, i64 %i.ahf
  %i.aio = getelementptr i8, ptr %i.od, i64 %i.ahb
  %i.aip = getelementptr i8, ptr %i.of, i64 %i.ahd
  %invariant.op3668 = sub i64 1, %i.agz
  br label %.lr.ph2240

.lr.ph2240:                                       ; preds = %.lr.ph2240.preheader, %.loopexit2088
  %indvar2887 = phi i64 [ 0, %.lr.ph2240.preheader ], [ %indvar.next2888, %.loopexit2088 ] ; 13 uses
  %indvars.iv2454.in = phi i32 [ %.01894, %.lr.ph2240.preheader ], [ %indvars.iv2454, %.loopexit2088 ] ; 2 uses
  %indvars.iv2432 = phi i64 [ %i.agx, %.lr.ph2240.preheader ], [ %indvars.iv.next2433, %.loopexit2088 ] ; 27 uses
  %i.aiq = trunc i64 %indvar2887 to i32
  %i.air = add i32 %.01894, %i.aiq
  %i.ais = sub i32 %i.ahw, %i.air                 ; 2 uses
  %i.ait = trunc i64 %indvar2887 to i32
  %i.aiu = add i32 %.01894, %i.ait                ; 2 uses
  %i.aiv = shl nuw nsw i64 %indvar2887, 4
  %i.aiw = add i64 %i.ahv, %i.aiv                 ; 2 uses
  %scevgep3497 = getelementptr i8, ptr %8, i64 %i.aiw
  %scevgep3500 = getelementptr i8, ptr %6, i64 %i.aiw
  %i.aix = shl nuw nsw i64 %indvar2887, 4
  %i.aiy = add i64 %i.ahv, %i.aix                 ; 2 uses
  %scevgep3481 = getelementptr i8, ptr %6, i64 %i.aiy
  %20 = shl nsw i64 %indvars.iv2432, 4            ; 2 uses
  %scevgep3482 = getelementptr i8, ptr %6, i64 %20
  %i.aiz = trunc i64 %indvar2887 to i32
  %i.aja = add i32 %.01894, %i.aiz
  %i.ajb = sub i32 %.119022258, %i.aja
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = shl nuw nsw i64 %i.ajc, 3              ; 2 uses
  %scevgep3483 = getelementptr i8, ptr %scevgep3482, i64 %i.ajd
  %scevgep3484 = getelementptr i8, ptr %8, i64 %i.aiy
  %scevgep3485 = getelementptr i8, ptr %8, i64 %20
  %scevgep3486 = getelementptr i8, ptr %scevgep3485, i64 %i.ajd
  %i.aje = mul i64 %i.ky, %indvar2887             ; 2 uses
  %scevgep2975 = getelementptr i8, ptr %i.ahx, i64 %i.aje
  %scevgep2977 = getelementptr i8, ptr %i.ahy, i64 %i.aje
  %i.ajf = mul i64 %i.ku, %indvar2887             ; 4 uses
  %scevgep2945 = getelementptr i8, ptr %i.aia, i64 %i.ajf
  %scevgep2946 = getelementptr i8, ptr %i.aic, i64 %i.ajf
  %i.ajg = trunc i64 %indvar2887 to i32
  %i.ajh = add i32 %i.ahp, %i.ajg
  %i.aji = call i32 @llvm.smin.i32(i32 %.019342251, i32 %i.ajh)
  %i.ajj = call i32 @llvm.smax.i32(i32 %i.aji, i32 %spec.select2069)
  %smax = sext i32 %i.ajj to i64
  %i.ajk = shl nsw i64 %smax, 3                   ; 2 uses
  %scevgep2947 = getelementptr i8, ptr %scevgep2946, i64 %i.ajk
  %scevgep2948 = getelementptr i8, ptr %i.aie, i64 %i.ajf
  %scevgep2949 = getelementptr i8, ptr %i.aif, i64 %i.ajf
  %scevgep2950 = getelementptr i8, ptr %scevgep2949, i64 %i.ajk
  %i.ajl = trunc i64 %indvar2887 to i32
  %i.ajm = add i32 %i.ahj, %i.ajl                 ; 2 uses
  %i.ajn = mul i64 %i.kq, %indvar2887             ; 4 uses
  %scevgep2915 = getelementptr i8, ptr %i.aih, i64 %i.ajn
  %scevgep2916 = getelementptr i8, ptr %i.aij, i64 %i.ajn
  %i.ajo = trunc i64 %indvar2887 to i32
  %i.ajp = add i32 %i.ahg, %i.ajo
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = shl nuw nsw i64 %i.ajq, 3              ; 2 uses
  %scevgep2917 = getelementptr i8, ptr %scevgep2916, i64 %i.ajr
  %scevgep2918 = getelementptr i8, ptr %i.ail, i64 %i.ajn
  %scevgep2919 = getelementptr i8, ptr %i.ain, i64 %i.ajn
  %scevgep2920 = getelementptr i8, ptr %scevgep2919, i64 %i.ajr
  %i.ajs = mul i64 %i.km, %indvar2887             ; 2 uses
  %scevgep2889 = getelementptr i8, ptr %i.aio, i64 %i.ajs
  %scevgep2891 = getelementptr i8, ptr %i.aip, i64 %i.ajs
  %indvars.iv2454 = add i32 %indvars.iv2454.in, 1 ; 3 uses
  %i.ajt = icmp sgt i64 %indvars.iv2432, %i.agx
  br i1 %i.ajt, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph2240
  %indvars2465 = trunc i64 %indvars.iv2432 to i32
  %i.aju = add nsw i64 %indvars.iv2432, -1
  %i.ajv = add nsw i32 %indvars2465, -1
  %i.ajw = mul nsw i64 %i.aju, %i.ke
  %i.ajx = mul nsw i32 %i.ajv, %i.an
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432
  %i.aka = getelementptr [8 x i8], ptr %i.ajz, i64 %i.ajy ; 2 uses
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !138
  store double %i.akb, ptr %i.e, align 8, !tbaa !138
  %i.akc = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432
  %i.akd = getelementptr i8, ptr %i.akc, i64 8
  %i.ake = getelementptr [8 x i8], ptr %i.akd, i64 %i.ajw ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef %i.ake, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.aka) #4
  store double 0.000000e+00, ptr %i.ake, align 8, !tbaa !138
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph2240
  %.not20322210 = icmp sgt i64 %indvars.iv2432, %i.aha
  br i1 %.not20322210, label %bb.bw, label %.lver.check3493

.lver.check3493:                                  ; preds = %bb.bv
  %i.akf = load double, ptr %i.g, align 8, !tbaa !138 ; 24 uses
  %i.akg = load double, ptr %i.h, align 8, !tbaa !138 ; 13 uses
  %i.akh = add nsw i64 %indvars.iv2432, 1         ; 2 uses
  %i.aki = fneg double %i.akg                     ; 12 uses
  %invariant.gep2685 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2432 ; 6 uses
  %invariant.gep2687 = getelementptr [8 x i8], ptr %i.ap, i64 %i.akh ; 6 uses
  %invariant.gep2689 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2432 ; 6 uses
  %invariant.gep2691 = getelementptr [8 x i8], ptr %i.as, i64 %i.akh ; 6 uses
  %bound03487 = icmp ult ptr %scevgep3481, %scevgep3486
  %bound13488 = icmp ult ptr %scevgep3484, %scevgep3483
  %found.conflict3489 = and i1 %bound03487, %bound13488
  %lver.safe3492 = or i1 %found.conflict3489, %i.og
  br i1 %lver.safe3492, label %.ph3494.lver.orig.preheader, label %.ph3494

.ph3494.lver.orig.preheader:                      ; preds = %.lver.check3493
  %xtraiter3592 = and i32 %i.ais, 1
  %lcmp.mod3593.not = icmp eq i32 %xtraiter3592, 0
  br i1 %lcmp.mod3593.not, label %.ph3494.lver.orig.prol.loopexit, label %.ph3494.lver.orig.prol

.ph3494.lver.orig.prol:                           ; preds = %.ph3494.lver.orig.preheader
  %i.akj = mul nsw i64 %indvars.iv2432, %i.ke     ; 2 uses
  %gep2686.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.akj ; 2 uses
  %i.akk = load double, ptr %gep2686.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.akj ; 2 uses
  %i.akl = load double, ptr %gep2688.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %i.akm = fmul double %i.akg, %i.akl
  %i.akn = call double @llvm.fmuladd.f64(double %i.akf, double %i.akk, double %i.akm)
  %i.ako = fmul double %i.akf, %i.akl
  %i.akp = call double @llvm.fmuladd.f64(double %i.aki, double %i.akk, double %i.ako)
  store double %i.akp, ptr %gep2688.lver.orig.prol, align 8, !tbaa !138
  store double %i.akn, ptr %gep2686.lver.orig.prol, align 8, !tbaa !138
  %i.akq = mul nsw i64 %indvars.iv2432, %i.kd     ; 2 uses
  %gep2690.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.akq ; 2 uses
  %i.akr = load double, ptr %gep2690.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.akq ; 2 uses
  %i.aks = load double, ptr %gep2692.lver.orig.prol, align 8, !tbaa !138 ; 2 uses
  %i.akt = fmul double %i.akg, %i.aks
  %i.aku = call double @llvm.fmuladd.f64(double %i.akf, double %i.akr, double %i.akt) ; 2 uses
  %i.akv = fmul double %i.akf, %i.aks
  %i.akw = call double @llvm.fmuladd.f64(double %i.aki, double %i.akr, double %i.akv)
  store double %i.akw, ptr %gep2692.lver.orig.prol, align 8, !tbaa !138
  store double %i.aku, ptr %gep2690.lver.orig.prol, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig.prol = add nsw i64 %indvars.iv2432, 1
  br label %.ph3494.lver.orig.prol.loopexit

.ph3494.lver.orig.prol.loopexit:                  ; preds = %.ph3494.lver.orig.prol, %.ph3494.lver.orig.preheader
  %.lcssa3554.unr = phi double [ poison, %.ph3494.lver.orig.preheader ], [ %i.aku, %.ph3494.lver.orig.prol ]
  %indvars.iv2434.lver.orig.unr = phi i64 [ %indvars.iv2432, %.ph3494.lver.orig.preheader ], [ %indvars.iv.next2435.lver.orig.prol, %.ph3494.lver.orig.prol ]
  %i.akx = icmp eq i32 %.119022258, %i.aiu
  br i1 %i.akx, label %._crit_edge2214, label %.ph3494.lver.orig

.ph3494.lver.orig:                                ; preds = %.ph3494.lver.orig.prol.loopexit, %.ph3494.lver.orig
  %indvars.iv2434.lver.orig = phi i64 [ %indvars.iv.next2435.lver.orig.1, %.ph3494.lver.orig ], [ %indvars.iv2434.lver.orig.unr, %.ph3494.lver.orig.prol.loopexit ] ; 4 uses
  %i.aky = mul nsw i64 %indvars.iv2434.lver.orig, %i.ke ; 2 uses
  %gep2686.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.aky ; 2 uses
  %i.akz = load double, ptr %gep2686.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.aky ; 2 uses
  %i.ala = load double, ptr %gep2688.lver.orig, align 8, !tbaa !138 ; 2 uses
  %i.alb = fmul double %i.akg, %i.ala
  %i.alc = call double @llvm.fmuladd.f64(double %i.akf, double %i.akz, double %i.alb)
  %i.ald = fmul double %i.akf, %i.ala
  %i.ale = call double @llvm.fmuladd.f64(double %i.aki, double %i.akz, double %i.ald)
  store double %i.ale, ptr %gep2688.lver.orig, align 8, !tbaa !138
  store double %i.alc, ptr %gep2686.lver.orig, align 8, !tbaa !138
  %i.alf = mul nsw i64 %indvars.iv2434.lver.orig, %i.kd ; 2 uses
  %gep2690.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.alf ; 2 uses
  %i.alg = load double, ptr %gep2690.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.alf ; 2 uses
  %i.alh = load double, ptr %gep2692.lver.orig, align 8, !tbaa !138 ; 2 uses
  %i.ali = fmul double %i.akg, %i.alh
  %i.alj = call double @llvm.fmuladd.f64(double %i.akf, double %i.alg, double %i.ali)
  %i.alk = fmul double %i.akf, %i.alh
  %i.all = call double @llvm.fmuladd.f64(double %i.aki, double %i.alg, double %i.alk)
  store double %i.all, ptr %gep2692.lver.orig, align 8, !tbaa !138
  store double %i.alj, ptr %gep2690.lver.orig, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig = add nsw i64 %indvars.iv2434.lver.orig, 1 ; 2 uses
  %i.alm = mul nsw i64 %indvars.iv.next2435.lver.orig, %i.ke ; 2 uses
  %gep2686.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.alm ; 2 uses
  %i.aln = load double, ptr %gep2686.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %gep2688.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.alm ; 2 uses
  %i.alo = load double, ptr %gep2688.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %i.alp = fmul double %i.akg, %i.alo
  %i.alq = call double @llvm.fmuladd.f64(double %i.akf, double %i.aln, double %i.alp)
  %i.alr = fmul double %i.akf, %i.alo
  %i.als = call double @llvm.fmuladd.f64(double %i.aki, double %i.aln, double %i.alr)
  store double %i.als, ptr %gep2688.lver.orig.1, align 8, !tbaa !138
  store double %i.alq, ptr %gep2686.lver.orig.1, align 8, !tbaa !138
  %i.alt = mul nsw i64 %indvars.iv.next2435.lver.orig, %i.kd ; 2 uses
  %gep2690.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.alt ; 2 uses
  %i.alu = load double, ptr %gep2690.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %gep2692.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.alt ; 2 uses
  %i.alv = load double, ptr %gep2692.lver.orig.1, align 8, !tbaa !138 ; 2 uses
  %i.alw = fmul double %i.akg, %i.alv
  %i.alx = call double @llvm.fmuladd.f64(double %i.akf, double %i.alu, double %i.alw) ; 2 uses
  %i.aly = fmul double %i.akf, %i.alv
  %i.alz = call double @llvm.fmuladd.f64(double %i.aki, double %i.alu, double %i.aly)
  store double %i.alz, ptr %gep2692.lver.orig.1, align 8, !tbaa !138
  store double %i.alx, ptr %gep2690.lver.orig.1, align 8, !tbaa !138
  %indvars.iv.next2435.lver.orig.1 = add nsw i64 %indvars.iv2434.lver.orig, 2 ; 2 uses
  %lftr.wideiv2438.lver.orig.1 = trunc i64 %indvars.iv.next2435.lver.orig.1 to i32
  %exitcond2439.not.lver.orig.1 = icmp eq i32 %i.agy, %lftr.wideiv2438.lver.orig.1
  br i1 %exitcond2439.not.lver.orig.1, label %._crit_edge2214, label %.ph3494.lver.orig, !llvm.loop !34

.ph3494:                                          ; preds = %.lver.check3493
  %load_initial3498 = load double, ptr %scevgep3497, align 8 ; 3 uses
  %load_initial3501 = load double, ptr %scevgep3500, align 8 ; 3 uses
  %xtraiter3589 = and i32 %i.ais, 1
  %lcmp.mod3590.not = icmp eq i32 %xtraiter3589, 0
  br i1 %lcmp.mod3590.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.ph3494
  %i.ama = mul nuw nsw i64 %indvars.iv2432, %i.ke ; 2 uses
  %gep2686.prol = getelementptr [8 x i8], ptr %invariant.gep2685, i64 %i.ama
  %gep2688.prol = getelementptr [8 x i8], ptr %invariant.gep2687, i64 %i.ama ; 2 uses
  %i.amb = load double, ptr %gep2688.prol, align 8, !tbaa !138 ; 2 uses
  %i.amc = fmul double %i.akg, %i.amb
  %i.amd = call double @llvm.fmuladd.f64(double %i.akf, double %load_initial3501, double %i.amc)
  %i.ame = fmul double %i.akf, %i.amb
  %i.amf = call double @llvm.fmuladd.f64(double %i.aki, double %load_initial3501, double %i.ame) ; 2 uses
  store double %i.amf, ptr %gep2688.prol, align 8, !tbaa !138
  store double %i.amd, ptr %gep2686.prol, align 8, !tbaa !138
  %i.amg = mul nuw nsw i64 %indvars.iv2432, %i.kd ; 2 uses
  %gep2690.prol = getelementptr [8 x i8], ptr %invariant.gep2689, i64 %i.amg
  %gep2692.prol = getelementptr [8 x i8], ptr %invariant.gep2691, i64 %i.amg ; 2 uses
  %i.amh = load double, ptr %gep2692.prol, align 8, !tbaa !138 ; 2 uses
  %i.ami = fmul double %i.akg, %i.amh
  %i.amj = call double @llvm.fmuladd.f64(double %i.akf, double %load_initial3498, double %i.ami) ; 2 uses
  %i.amk = fmul double %i.akf, %i.amh
  %i.aml = call double @llvm.fmuladd.f64(double %i.aki, double %load_initial3498, double %i.amk) ; 2 uses
  store double %i.aml, ptr %gep2692.prol, align 8, !tbaa !138
  store double %i.amj, ptr %gep2690.prol, align 8, !tbaa !138
end_hunk_0
begin_hunk_1_@dhgeqz_:bb.a
  %i.bhf = fmul double %i.bgy, %i.bhe
  %i.bhg = call double @llvm.fmuladd.f64(double %i.bhc, double %i.bhd, double %i.bhf)
  store double %i.bhg, ptr %i.ad, align 8, !tbaa !138
  %i.bhh = fmul double %i.bha, %i.bhe
  store double %i.bhh, ptr %i.aa, align 8, !tbaa !138
  %i.bhi = call double @dlapy2_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.aa) #4 ; 3 uses
  %i.bhj = load double, ptr %i.r, align 8, !tbaa !138
  %i.bhk = load double, ptr %i.u, align 8, !tbaa !138
  %i.bhl = fmul double %i.bhj, %i.bhk
  %i.bhm = load double, ptr %i.n, align 8, !tbaa !138
  %i.bhn = load double, ptr %i.j, align 8, !tbaa !138
  %i.bho = load double, ptr %i.m, align 8, !tbaa !138 ; 2 uses
  %i.bhp = fmul double %i.bhn, %i.bho
  %i.bhq = call double @llvm.fmuladd.f64(double %i.bhl, double %i.bhm, double %i.bhp)
  store double %i.bhq, ptr %i.ae, align 8, !tbaa !138
  %i.bhr = fneg double %i.bha
  %i.bhs = fmul double %i.bho, %i.bhr
  store double %i.bhs, ptr %i.ab, align 8, !tbaa !138
  %i.bht = call double @dlapy2_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ab) #4 ; 3 uses
  %i.bhu = sext i32 %i.ok to i64                  ; 3 uses
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bhu
  store double %i.bhi, ptr %i.bhv, align 8, !tbaa !138
  %i.bhw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.oz
  store double %i.bht, ptr %i.bhw, align 8, !tbaa !138
  %i.bhx = load double, ptr %i.y, align 8, !tbaa !138 ; 2 uses
  %i.bhy = fmul double %i.bhi, %i.bhx
  %i.bhz = fmul double %i.bbc, %i.bhy
  %i.bia = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bhu
  store double %i.bhz, ptr %i.bia, align 8, !tbaa !138
  %i.bib = load double, ptr %i.w, align 8, !tbaa !138 ; 2 uses
  %i.bic = fmul double %i.bhi, %i.bib
  %i.bid = fmul double %i.bbc, %i.bic
  %i.bie = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bhu
  store double %i.bid, ptr %i.bie, align 8, !tbaa !138
  %i.bif = fmul double %i.bht, %i.bhx
  %i.big = fmul double %i.bbc, %i.bif
  %i.bih = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.oz
  store double %i.big, ptr %i.bih, align 8, !tbaa !138
  %i.bii = fneg double %i.bht
  %i.bij = fmul double %i.bib, %i.bii
  %i.bik = fmul double %i.bbc, %i.bij
  %i.bil = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.oz
  store double %i.bik, ptr %i.bil, align 8, !tbaa !138
  %i.bim = load i32, ptr %4, align 4, !tbaa !136  ; 3 uses
  %.not2028 = icmp sgt i32 %.01897, %i.bim
  br i1 %.not2028, label %bb.da, label %.loopexit2104

bb.da:                                            ; preds = %bb.cz
  %i.bin = add nsw i32 %.01897, -1                ; 2 uses
  %spec.select2085 = select i1 %.not.not, i32 %.119022258, i32 %i.bin
  %spec.select2086 = select i1 %.not.not, i32 %.118962261, i32 %i.bim
  br label %.loopexit2095

bb.db:                                            ; preds = %bb.ca
  %i.bio = load double, ptr %i.acd, align 8, !tbaa !138
  %i.bip = load double, ptr %i.ach, align 8, !tbaa !138
  %i.biq = load double, ptr %i.oo, align 8, !tbaa !138
  %i.bir = add nsw i32 %i.ok, %i.acl
  %i.bis = sext i32 %i.bir to i64
  %i.bit = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bis
  %i.biu = load double, ptr %i.bit, align 8, !tbaa !138
  %i.biv = insertelement <2 x double> poison, double %i.bip, i64 0
  %i.biw = insertelement <2 x double> %i.biv, double %i.ack, i64 1
  %i.bix = fmul <2 x double> %i.mi, %i.biw
  %i.biy = shufflevector <2 x double> %i.bix, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.biz = insertelement <4 x double> poison, double %i.bio, i64 0
  %i.bja = insertelement <4 x double> %i.biz, double %i.biu, i64 1
  %i.bjb = insertelement <4 x double> %i.bja, double %i.biq, i64 2
  %i.bjc = insertelement <4 x double> %i.bjb, double %i.acp, i64 3
  %i.bjd = fmul <4 x double> %i.mh, %i.bjc
  %i.bje = fdiv <4 x double> %i.bjd, %i.biy       ; 4 uses
  %i.bjf = add nsw i32 %i.ok, %i.os
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bjg
  %i.bji = load double, ptr %i.bjh, align 8, !tbaa !138
  %i.bjj = fdiv double %i.bji, %i.ack             ; 2 uses
  %i.bjk = mul nsw i32 %.01897, %i.an             ; 2 uses
  %i.bjl = add nsw i32 %i.bjk, %.01897
  %i.bjm = sext i32 %i.bjl to i64
  %i.bjn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjm
  %i.bjo = load double, ptr %i.bjn, align 8, !tbaa !138
  %i.bjp = fmul double %i.jo, %i.bjo
  %i.bjq = mul i32 %.01897, %i.de
  %i.bjr = sext i32 %i.bjq to i64
  %i.bjs = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bjr
  %i.bjt = load double, ptr %i.bjs, align 8, !tbaa !138
  %i.bju = add nsw i32 %i.avq, %i.bjk
  %i.bjv = sext i32 %i.bju to i64
  %i.bjw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjv
  %i.bjx = load double, ptr %i.bjw, align 8, !tbaa !138
  %i.bjy = mul nsw i32 %i.avq, %i.an              ; 3 uses
  %i.bjz = add nsw i32 %i.bjy, %.01897
  %i.bka = sext i32 %i.bjz to i64
  %i.bkb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bka
  %i.bkc = load double, ptr %i.bkb, align 8, !tbaa !138
  %i.bkd = mul nsw i32 %i.avq, %i.aq              ; 2 uses
  %i.bke = add nsw i32 %i.bkd, %i.avq
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bkf
  %i.bkh = load double, ptr %i.bkg, align 8, !tbaa !138 ; 2 uses
  %i.bki = insertelement <2 x double> poison, double %i.bjt, i64 0
  %i.bkj = insertelement <2 x double> %i.bki, double %i.bkh, i64 1
  %i.bkk = fmul <2 x double> %i.mi, %i.bkj        ; 3 uses
  %i.bkl = extractelement <2 x double> %i.bkk, i64 0
  %i.bkm = fdiv double %i.bjp, %i.bkl             ; 5 uses
  %i.bkn = insertelement <2 x double> poison, double %i.bjx, i64 0
  %i.bko = insertelement <2 x double> %i.bkn, double %i.bkc, i64 1
  %i.bkp = fmul <2 x double> %i.mj, %i.bko
  %i.bkq = fdiv <2 x double> %i.bkp, %i.bkk       ; 3 uses
  %i.bkr = add nsw i32 %i.bjy, %i.avq
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bks
  %i.bku = load double, ptr %i.bkt, align 8, !tbaa !138
  %i.bkv = add nsw i32 %.01897, 2
  %i.bkw = add nsw i32 %i.bkv, %i.bjy
  %i.bkx = sext i32 %i.bkw to i64
  %i.bky = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bkx
  %i.bkz = load double, ptr %i.bky, align 8, !tbaa !138
  %i.bla = insertelement <2 x double> poison, double %i.bku, i64 0
  %i.blb = insertelement <2 x double> %i.bla, double %i.bkz, i64 1
  %i.blc = fmul <2 x double> %i.mj, %i.blb
  %i.bld = shufflevector <2 x double> %i.bkk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ble = fdiv <2 x double> %i.blc, %i.bld       ; 2 uses
  %i.blf = add nsw i32 %i.bkd, %.01897
  %i.blg = sext i32 %i.blf to i64
  %i.blh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.blg
  %i.bli = load double, ptr %i.blh, align 8, !tbaa !138
  %i.blj = fdiv double %i.bli, %i.bkh             ; 2 uses
  %i.blk = extractelement <4 x double> %i.bje, i64 0
  %i.bll = fsub double %i.blk, %i.bkm             ; 2 uses
  %i.blm = extractelement <4 x double> %i.bje, i64 3
  %i.bln = fsub double %i.blm, %i.bkm             ; 2 uses
  %i.blo = extractelement <4 x double> %i.bje, i64 2 ; 3 uses
  %i.blp = fneg double %i.blo
  %i.blq = extractelement <4 x double> %i.bje, i64 1
  %i.blr = fmul double %i.blq, %i.blp
  %i.bls = call double @llvm.fmuladd.f64(double %i.bll, double %i.bln, double %i.blr)
  %i.blt = fmul double %i.blo, %i.bjj
  %i.blu = call double @llvm.fmuladd.f64(double %i.blt, double %i.bkm, double %i.bls)
  %i.blv = fneg double %i.bkm
  %i.blw = extractelement <2 x double> %i.bkq, i64 1
  %i.blx = call double @llvm.fmuladd.f64(double %i.blv, double %i.blj, double %i.blw)
  %i.bly = extractelement <2 x double> %i.bkq, i64 0 ; 3 uses
  %i.blz = call double @llvm.fmuladd.f64(double %i.blx, double %i.bly, double %i.blu)
  store double %i.blz, ptr %i.i, align 16, !tbaa !138
  %i.bma = extractelement <2 x double> %i.ble, i64 0
  %i.bmb = fsub double %i.bma, %i.bkm
  %i.bmc = fneg double %i.bly
  %i.bmd = call double @llvm.fmuladd.f64(double %i.bmc, double %i.blj, double %i.bmb)
  %i.bme = fsub double %i.bmd, %i.bll
  %i.bmf = fsub double %i.bme, %i.bln
  %i.bmg = call double @llvm.fmuladd.f64(double %i.blo, double %i.bjj, double %i.bmf)
  %i.bmh = fmul double %i.bly, %i.bmg
  store double %i.bmh, ptr %i.jr, align 8, !tbaa !138
  %shift3503 = shufflevector <2 x double> %i.ble, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bkq, %shift3503
  %i.bmi = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.bmi, ptr %i.js, align 16, !tbaa !138
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.i, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !138
  %i.bmj = add nsw i32 %.019342251, -2            ; 3 uses
  store i32 %i.bmj, ptr %i.b, align 4, !tbaa !136
  %.not20062165 = icmp sgt i32 %.01897, %i.bmj
  br i1 %.not20062165, label %._crit_edge2171, label %.lr.ph2170.preheader

.lr.ph2170.preheader:                             ; preds = %bb.db
  %i.bmk = sext i32 %.01897 to i64                ; 16 uses
  %i.bml = add i32 %.119022258, 1                 ; 2 uses
  %i.bmm = sext i32 %spec.select2069 to i64       ; 12 uses
  %i.bmn = add i32 %.01897, 3
  %i.bmo = sext i32 %.119022258 to i64
  %i.bmp = mul i64 %i.lm, %i.bmk
  %i.bmq = add nsw i64 %i.bmk, 1
  %i.bmr = mul i64 %i.lo, %i.bmq
  %i.bms = add nsw i64 %i.bmk, 2
  %i.bmt = mul i64 %i.lp, %i.bms
  %i.bmu = mul i64 %i.lr, %i.bmk                  ; 2 uses
  %i.bmv = shl nsw i64 %i.bmm, 3                  ; 6 uses
  %i.bmw = add i32 %.01897, 2
  %i.bmx = sub i32 %i.bmw, %spec.select2069
  %i.bmy = add nsw i64 %i.bmk, 1
  %i.bmz = mul i64 %i.lt, %i.bmy                  ; 2 uses
  %i.bna = add nsw i64 %i.bmk, 2
  %i.bnb = mul i64 %i.lu, %i.bna                  ; 2 uses
  %i.bnc = add i32 %.01897, 2
  %i.bnd = sub i32 %i.bnc, %spec.select2069
  %i.bne = mul i64 %i.lw, %i.bmk
  %i.bnf = shl nsw i64 %i.bmm, 3                  ; 3 uses
  %i.bng = mul nsw i64 %i.ke, %i.bmk
  %i.bnh = add i64 %i.bng, %i.ao
  %i.bni = shl i64 %i.bnh, 3
  %i.bnj = add nsw i64 %i.bmk, 1
  %i.bnk = mul i64 %i.ly, %i.bnj                  ; 2 uses
  %i.bnl = add nsw i64 %i.bmk, 2
  %i.bnm = mul i64 %i.lz, %i.bnl                  ; 2 uses
  %i.bnn = mul i64 %i.mb, %i.bmk
  %i.bno = add nsw i64 %i.bmk, 1
  %i.bnp = mul i64 %i.md, %i.bno
  %i.bnq = add nsw i64 %i.bmk, 2
  %i.bnr = mul i64 %i.me, %i.bnq
  %i.bns = add i32 %.01897, 2
  %i.bnt = getelementptr i8, ptr %i.ml, i64 %i.bnn
  %i.bnu = getelementptr i8, ptr %i.mn, i64 %i.bnp
  %i.bnv = getelementptr i8, ptr %i.mp, i64 %i.bnr
  %i.bnw = getelementptr i8, ptr %i.mq, i64 %i.bne
  %i.bnx = getelementptr i8, ptr %i.bnw, i64 %i.bnf
  %i.bny = getelementptr i8, ptr %6, i64 %i.bni
  %i.bnz = getelementptr i8, ptr %i.bny, i64 8
  %i.boa = getelementptr i8, ptr %i.mr, i64 %i.bnk
  %i.bob = getelementptr i8, ptr %i.boa, i64 %i.bnf
  %i.boc = getelementptr i8, ptr %i.mt, i64 %i.bnk
  %i.bod = getelementptr i8, ptr %i.mu, i64 %i.bnm
  %i.boe = getelementptr i8, ptr %i.bod, i64 %i.bnf
  %i.bof = getelementptr i8, ptr %i.mw, i64 %i.bnm
  %i.bog = getelementptr i8, ptr %i.mx, i64 %i.bmu
  %i.boh = getelementptr i8, ptr %i.bog, i64 %i.bmv
  %i.boi = getelementptr i8, ptr %i.mz, i64 %i.bmu
  %i.boj = getelementptr i8, ptr %i.boi, i64 %i.bmv
  %i.bok = getelementptr i8, ptr %i.na, i64 %i.bmz
  %i.bol = getelementptr i8, ptr %i.bok, i64 %i.bmv
  %i.bom = getelementptr i8, ptr %i.nc, i64 %i.bmz
  %i.bon = getelementptr i8, ptr %i.bom, i64 %i.bmv
  %i.boo = getelementptr i8, ptr %i.nd, i64 %i.bnb
  %i.bop = getelementptr i8, ptr %i.boo, i64 %i.bmv
  %i.boq = getelementptr i8, ptr %i.nf, i64 %i.bnb
  %i.bor = getelementptr i8, ptr %i.boq, i64 %i.bmv
  %i.bos = getelementptr i8, ptr %i.nh, i64 %i.bmp
  %i.bot = getelementptr i8, ptr %i.nj, i64 %i.bmr
  %i.bou = getelementptr i8, ptr %i.nl, i64 %i.bmt
  %invariant.op = sub i64 1, %i.bmm
  br label %.lr.ph2170

.lr.ph2170:                                       ; preds = %.lr.ph2170.preheader, %.loopexit2090
  %indvar3245 = phi i64 [ 0, %.lr.ph2170.preheader ], [ %indvar.next3246, %.loopexit2090 ] ; 10 uses
  %indvars.iv2374 = phi i32 [ %i.bmn, %.lr.ph2170.preheader ], [ %indvars.iv.next2375, %.loopexit2090 ] ; 4 uses
  %indvars.iv2352 = phi i64 [ %i.bmk, %.lr.ph2170.preheader ], [ %indvars.iv.next2353, %.loopexit2090 ] ; 26 uses
  %i.bov = trunc i64 %indvar3245 to i32
  %i.bow = add i32 %i.bns, %i.bov
  %i.box = shl nsw i64 %indvars.iv2352, 4
  %i.boy = add nsw i64 %i.box, -8                 ; 2 uses
  %scevgep3477 = getelementptr i8, ptr %8, i64 %i.boy
  %scevgep3478 = getelementptr i8, ptr %6, i64 %i.boy
  %21 = add i64 %indvar3245, %i.bmk
  %i.boz = shl i64 %21, 4
  %i.bpa = add i64 %i.boz, -16                    ; 2 uses
  %scevgep3464 = getelementptr i8, ptr %6, i64 %i.bpa
  %22 = shl nsw i64 %indvars.iv2352, 4
  %23 = or disjoint i64 %22, 8                    ; 2 uses
  %scevgep3465 = getelementptr i8, ptr %6, i64 %23
  %i.bpb = trunc i64 %indvar3245 to i32
  %i.bpc = add i32 %.01897, %i.bpb
  %i.bpd = sub i32 %.119022258, %i.bpc
  %i.bpe = zext i32 %i.bpd to i64
  %i.bpf = shl nuw nsw i64 %i.bpe, 3              ; 2 uses
  %scevgep3466 = getelementptr i8, ptr %scevgep3465, i64 %i.bpf
  %scevgep3467 = getelementptr i8, ptr %8, i64 %i.bpa
  %scevgep3468 = getelementptr i8, ptr %8, i64 %23
  %scevgep3469 = getelementptr i8, ptr %scevgep3468, i64 %i.bpf
  %i.bpg = mul i64 %i.mc, %indvar3245             ; 3 uses
  %scevgep3372 = getelementptr i8, ptr %i.bnt, i64 %i.bpg ; 2 uses
  %scevgep3374 = getelementptr i8, ptr %i.bnu, i64 %i.bpg ; 2 uses
  %scevgep3376 = getelementptr i8, ptr %i.bnv, i64 %i.bpg ; 2 uses
  %i.bph = mul i64 %i.lx, %indvar3245             ; 6 uses
  %scevgep3328 = getelementptr i8, ptr %i.bnx, i64 %i.bph ; 2 uses
  %scevgep3329 = getelementptr i8, ptr %i.bnz, i64 %i.bph
  %i.bpi = call i32 @llvm.smin.i32(i32 %.019342251, i32 %indvars.iv2374)
  %i.bpj = call i32 @llvm.smax.i32(i32 %i.bpi, i32 %spec.select2069)
  %smax3331 = sext i32 %i.bpj to i64
  %i.bpk = shl nsw i64 %smax3331, 3               ; 3 uses
  %scevgep3332 = getelementptr i8, ptr %scevgep3329, i64 %i.bpk ; 2 uses
  %scevgep3333 = getelementptr i8, ptr %i.bob, i64 %i.bph ; 2 uses
  %scevgep3334 = getelementptr i8, ptr %i.boc, i64 %i.bph
  %scevgep3335 = getelementptr i8, ptr %scevgep3334, i64 %i.bpk ; 2 uses
  %scevgep3336 = getelementptr i8, ptr %i.boe, i64 %i.bph ; 2 uses
  %scevgep3337 = getelementptr i8, ptr %i.bof, i64 %i.bph
  %scevgep3338 = getelementptr i8, ptr %scevgep3337, i64 %i.bpk ; 2 uses
  %i.bpl = trunc i64 %indvar3245 to i32
  %i.bpm = add i32 %i.bnd, %i.bpl                 ; 2 uses
  %i.bpn = mul i64 %i.ls, %indvar3245             ; 6 uses
  %scevgep3286 = getelementptr i8, ptr %i.boh, i64 %i.bpn ; 2 uses
  %scevgep3287 = getelementptr i8, ptr %i.boj, i64 %i.bpn
  %i.bpo = trunc i64 %indvar3245 to i32
  %i.bpp = add i32 %i.bmx, %i.bpo
  %i.bpq = zext i32 %i.bpp to i64
  %i.bpr = shl nuw nsw i64 %i.bpq, 3              ; 3 uses
  %scevgep3288 = getelementptr i8, ptr %scevgep3287, i64 %i.bpr ; 2 uses
  %scevgep3289 = getelementptr i8, ptr %i.bol, i64 %i.bpn ; 2 uses
  %scevgep3290 = getelementptr i8, ptr %i.bon, i64 %i.bpn
  %scevgep3291 = getelementptr i8, ptr %scevgep3290, i64 %i.bpr ; 2 uses
  %scevgep3292 = getelementptr i8, ptr %i.bop, i64 %i.bpn ; 2 uses
  %scevgep3293 = getelementptr i8, ptr %i.bor, i64 %i.bpn
  %scevgep3294 = getelementptr i8, ptr %scevgep3293, i64 %i.bpr ; 2 uses
  %i.bps = mul i64 %i.ln, %indvar3245             ; 3 uses
  %scevgep3247 = getelementptr i8, ptr %i.bos, i64 %i.bps ; 2 uses
  %scevgep3249 = getelementptr i8, ptr %i.bot, i64 %i.bps ; 2 uses
  %scevgep3251 = getelementptr i8, ptr %i.bou, i64 %i.bps ; 2 uses
  %indvars2385 = trunc i64 %indvars.iv2352 to i32 ; 3 uses
  %i.bpt = icmp sgt i64 %indvars.iv2352, %i.bmk
  br i1 %i.bpt, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.lr.ph2170
  %i.bpu = add nsw i64 %indvars.iv2352, -1
  %i.bpv = add nsw i32 %indvars2385, -1
  %i.bpw = mul nsw i64 %i.bpu, %i.ke
  %i.bpx = mul nsw i32 %i.bpv, %i.an
  %i.bpy = sext i32 %i.bpx to i64
  %i.bpz = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352
  %i.bqa = getelementptr [8 x i8], ptr %i.bpz, i64 %i.bpy ; 2 uses
  %i.bqb = load double, ptr %i.bqa, align 8, !tbaa !138
  store double %i.bqb, ptr %i.i, align 16, !tbaa !138
  %i.bqc = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352
  %i.bqd = getelementptr i8, ptr %i.bqc, i64 8
  %i.bqe = getelementptr [8 x i8], ptr %i.bqd, i64 %i.bpw ; 2 uses
  %i.bqf = load <2 x double>, ptr %i.bqe, align 8, !tbaa !138
  store <2 x double> %i.bqf, ptr %i.jr, align 8, !tbaa !138
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.bqa, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !138
  store <2 x double> zeroinitializer, ptr %i.bqe, align 8, !tbaa !138
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph2170
  %.not20142139 = icmp sgt i64 %indvars.iv2352, %i.bmo
  br i1 %.not20142139, label %._crit_edge2143, label %.lver.check

.lver.check:                                      ; preds = %bb.dd
  %i.bqg = load double, ptr %i.ak, align 8, !tbaa !138 ; 4 uses
  %i.bqh = add nsw i64 %indvars.iv2352, 1         ; 2 uses
  %i.bqi = load <2 x double>, ptr %i.jr, align 8, !tbaa !138 ; 6 uses
  %i.bqj = add nsw i64 %indvars.iv2352, 2         ; 2 uses
  %invariant.gep2619 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2352 ; 2 uses
  %invariant.gep2621 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bqh ; 2 uses
  %invariant.gep2623 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bqj
  %invariant.gep2625 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2352 ; 2 uses
  %invariant.gep2627 = getelementptr [8 x i8], ptr %i.as, i64 %i.bqh ; 2 uses
  %invariant.gep2629 = getelementptr [8 x i8], ptr %i.as, i64 %i.bqj
  %bound03470 = icmp ult ptr %scevgep3464, %scevgep3469
  %bound13471 = icmp ult ptr %scevgep3467, %scevgep3466
  %found.conflict3472 = and i1 %bound03470, %bound13471
  %lver.safe = or i1 %found.conflict3472, %i.nm
  br i1 %lver.safe, label %.ph3475.lver.orig.preheader, label %.ph3475

.ph3475.lver.orig.preheader:                      ; preds = %.lver.check
  %i.bqk = extractelement <2 x double> %i.bqi, i64 0 ; 2 uses
  %i.bql = extractelement <2 x double> %i.bqi, i64 1 ; 2 uses
  br label %.ph3475.lver.orig

.ph3475.lver.orig:                                ; preds = %.ph3475.lver.orig.preheader, %.ph3475.lver.orig
  %indvars.iv2354.lver.orig = phi i64 [ %indvars.iv.next2355.lver.orig, %.ph3475.lver.orig ], [ %indvars.iv2352, %.ph3475.lver.orig.preheader ] ; 3 uses
  %i.bqm = mul nsw i64 %indvars.iv2354.lver.orig, %i.ke ; 2 uses
  %gep2620.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2619, i64 %i.bqm ; 2 uses
  %i.bqn = load double, ptr %gep2620.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2622.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2621, i64 %i.bqm ; 2 uses
  %i.bqo = load <2 x double>, ptr %gep2622.lver.orig, align 8, !tbaa !138 ; 3 uses
  %i.bqp = extractelement <2 x double> %i.bqo, i64 0
  %i.bqq = call double @llvm.fmuladd.f64(double %i.bqk, double %i.bqp, double %i.bqn)
  %i.bqr = extractelement <2 x double> %i.bqo, i64 1
  %i.bqs = call double @llvm.fmuladd.f64(double %i.bql, double %i.bqr, double %i.bqq)
  %i.bqt = fmul double %i.bqg, %i.bqs             ; 2 uses
  %i.bqu = fsub double %i.bqn, %i.bqt
  store double %i.bqu, ptr %gep2620.lver.orig, align 8, !tbaa !138
  %i.bqv = fneg double %i.bqt
  %i.bqw = insertelement <2 x double> poison, double %i.bqv, i64 0
  %i.bqx = shufflevector <2 x double> %i.bqw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bqy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bqx, <2 x double> %i.bqi, <2 x double> %i.bqo)
  store <2 x double> %i.bqy, ptr %gep2622.lver.orig, align 8, !tbaa !138
  %i.bqz = mul nsw i64 %indvars.iv2354.lver.orig, %i.kd ; 2 uses
  %gep2626.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2625, i64 %i.bqz ; 2 uses
  %i.bra = load double, ptr %gep2626.lver.orig, align 8, !tbaa !138 ; 2 uses
  %gep2628.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2627, i64 %i.bqz ; 2 uses
  %i.brb = load <2 x double>, ptr %gep2628.lver.orig, align 8, !tbaa !138 ; 3 uses
  %i.brc = extractelement <2 x double> %i.brb, i64 0
  %i.brd = call double @llvm.fmuladd.f64(double %i.bqk, double %i.brc, double %i.bra)
  %i.bre = extractelement <2 x double> %i.brb, i64 1
  %i.brf = call double @llvm.fmuladd.f64(double %i.bql, double %i.bre, double %i.brd)
  %i.brg = fmul double %i.bqg, %i.brf             ; 2 uses
  %i.brh = fsub double %i.bra, %i.brg
  store double %i.brh, ptr %gep2626.lver.orig, align 8, !tbaa !138
  %i.bri = fneg double %i.brg
  %i.brj = insertelement <2 x double> poison, double %i.bri, i64 0
  %i.brk = shufflevector <2 x double> %i.brj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.brl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.brk, <2 x double> %i.bqi, <2 x double> %i.brb)
  store <2 x double> %i.brl, ptr %gep2628.lver.orig, align 8, !tbaa !138
  %indvars.iv.next2355.lver.orig = add nsw i64 %indvars.iv2354.lver.orig, 1 ; 2 uses
  %lftr.wideiv2358.lver.orig = trunc i64 %indvars.iv.next2355.lver.orig to i32
  %exitcond2359.not.lver.orig = icmp eq i32 %i.bml, %lftr.wideiv2358.lver.orig
  br i1 %exitcond2359.not.lver.orig, label %._crit_edge2143, label %.ph3475.lver.orig, !llvm.loop !68

.ph3475:                                          ; preds = %.lver.check
  %load_initial = load double, ptr %scevgep3477, align 8
  %load_initial3479 = load double, ptr %scevgep3478, align 8
  %i.brm = extractelement <2 x double> %i.bqi, i64 0 ; 4 uses
  %i.brn = extractelement <2 x double> %i.bqi, i64 1 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %.ph3475, %bb.de
  %store_forwarded3480 = phi double [ %load_initial3479, %.ph3475 ], [ %i.brx, %bb.de ] ; 2 uses
  %store_forwarded = phi double [ %load_initial, %.ph3475 ], [ %i.bsh, %bb.de ] ; 2 uses
  %indvars.iv2354 = phi i64 [ %indvars.iv2352, %.ph3475 ], [ %indvars.iv.next2355, %bb.de ] ; 3 uses
  %i.bro = mul nuw nsw i64 %indvars.iv2354, %i.ke ; 3 uses
  %gep2620 = getelementptr [8 x i8], ptr %invariant.gep2619, i64 %i.bro ; 2 uses
  %i.brp = load double, ptr %gep2620, align 8, !tbaa !138 ; 2 uses
  %gep2622 = getelementptr [8 x i8], ptr %invariant.gep2621, i64 %i.bro
  %i.brq = call double @llvm.fmuladd.f64(double %i.brm, double %store_forwarded3480, double %i.brp)
  %gep2624 = getelementptr [8 x i8], ptr %invariant.gep2623, i64 %i.bro ; 2 uses
  %i.brr = load double, ptr %gep2624, align 8, !tbaa !138 ; 2 uses
  %i.brs = call double @llvm.fmuladd.f64(double %i.brn, double %i.brr, double %i.brq)
  %i.brt = fmul double %i.bqg, %i.brs             ; 2 uses
  %i.bru = fsub double %i.brp, %i.brt
  store double %i.bru, ptr %gep2620, align 8, !tbaa !138
  %i.brv = fneg double %i.brt                     ; 2 uses
  %i.brw = call double @llvm.fmuladd.f64(double %i.brv, double %i.brm, double %store_forwarded3480)
  store double %i.brw, ptr %gep2622, align 8, !tbaa !138
  %i.brx = call double @llvm.fmuladd.f64(double %i.brv, double %i.brn, double %i.brr) ; 2 uses
  store double %i.brx, ptr %gep2624, align 8, !tbaa !138
  %i.bry = mul nuw nsw i64 %indvars.iv2354, %i.kd ; 3 uses
  %gep2626 = getelementptr [8 x i8], ptr %invariant.gep2625, i64 %i.bry ; 2 uses
  %i.brz = load double, ptr %gep2626, align 8, !tbaa !138 ; 2 uses
  %gep2628 = getelementptr [8 x i8], ptr %invariant.gep2627, i64 %i.bry
  %i.bsa = call double @llvm.fmuladd.f64(double %i.brm, double %store_forwarded, double %i.brz)
  %gep2630 = getelementptr [8 x i8], ptr %invariant.gep2629, i64 %i.bry ; 2 uses
  %i.bsb = load double, ptr %gep2630, align 8, !tbaa !138 ; 2 uses
  %i.bsc = call double @llvm.fmuladd.f64(double %i.brn, double %i.bsb, double %i.bsa)
  %i.bsd = fmul double %i.bqg, %i.bsc             ; 2 uses
  %i.bse = fsub double %i.brz, %i.bsd
  store double %i.bse, ptr %gep2626, align 8, !tbaa !138
  %i.bsf = fneg double %i.bsd                     ; 2 uses
  %i.bsg = call double @llvm.fmuladd.f64(double %i.bsf, double %i.brm, double %store_forwarded)
  store double %i.bsg, ptr %gep2628, align 8, !tbaa !138
  %i.bsh = call double @llvm.fmuladd.f64(double %i.bsf, double %i.brn, double %i.bsb) ; 2 uses
  store double %i.bsh, ptr %gep2630, align 8, !tbaa !138
  %indvars.iv.next2355 = add nsw i64 %indvars.iv2354, 1 ; 2 uses
  %lftr.wideiv2358 = trunc i64 %indvars.iv.next2355 to i32
  %exitcond2359.not = icmp eq i32 %i.bml, %lftr.wideiv2358
  br i1 %exitcond2359.not, label %._crit_edge2143, label %bb.de, !llvm.loop !68

._crit_edge2143:                                  ; preds = %bb.de, %.ph3475.lver.orig, %bb.dd
  br i1 %.not1983.not, label %bb.df, label %.loopexit2092

bb.df:                                            ; preds = %._crit_edge2143
  %i.bsi = load i32, ptr %3, align 4, !tbaa !136  ; 6 uses
  %.not20162146 = icmp slt i32 %i.bsi, 1
  br i1 %.not20162146, label %.loopexit2092, label %.lr.ph2149

.lr.ph2149:                                       ; preds = %bb.df
  %i.bsj = load double, ptr %i.ak, align 8, !tbaa !138 ; 4 uses
  %i.bsk = mul nsw i64 %indvars.iv2352, %i.kf
  %i.bsl = load double, ptr %i.jr, align 8, !tbaa !138 ; 7 uses
  %i.bsm = add nsw i64 %indvars.iv2352, 1
  %i.bsn = mul nsw i64 %i.bsm, %i.kf
  %i.bso = load double, ptr %i.js, align 16, !tbaa !138 ; 7 uses
  %i.bsp = add nsw i64 %indvars.iv2352, 2
  %i.bsq = mul nsw i64 %i.bsp, %i.kf
  %i.bsr = add nuw i32 %i.bsi, 1
  %wide.trip.count2364 = zext i32 %i.bsr to i64   ; 2 uses
  %invariant.gep2631 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsk ; 5 uses
  %invariant.gep2633 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsn ; 5 uses
  %invariant.gep2635 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsq ; 5 uses
end_hunk_1
