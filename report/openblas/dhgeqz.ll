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
  br i1 %i.adf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store double %i.acr, ptr %i.y, align 8, !tbaa !9
  store double %i.aci, ptr %i.af, align 8, !tbaa !9
  store double %i.acs, ptr %i.k, align 8, !tbaa !9
  store double %i.acj, ptr %i.l, align 8, !tbaa !9
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.adg = phi double [ %i.acs, %bb.bm ], [ %i.acj, %bb.bl ] ; 4 uses
  %i.adh = phi double [ %i.acr, %bb.bm ], [ %i.aci, %bb.bl ] ; 4 uses
  %i.adi = fcmp oge double %i.adh, 0.000000e+00
  %i.adj = fneg double %i.adh
  %i.adk = select i1 %i.adi, double %i.adh, double %i.adj ; 2 uses
  %i.adl = fcmp ole double %i.adk, 1.000000e+00
  %i.adm = select i1 %i.adl, double 1.000000e+00, double %i.adk ; 2 uses
  %i.adn = load double, ptr %i.w, align 8, !tbaa !9 ; 4 uses
  %i.ado = fcmp oge double %i.adn, 0.000000e+00
  %i.adp = fneg double %i.adn
  %i.adq = select i1 %i.ado, double %i.adn, double %i.adp ; 2 uses
  store double %i.adg, ptr %i.d, align 8, !tbaa !9
  %i.adr = fcmp oge double %i.adm, %i.adq
  %i.ads = select i1 %i.adr, double %i.adm, double %i.adq
  %i.adt = fmul double %i.cs, %i.ads              ; 2 uses
  %i.adu = fcmp oge double %i.adg, %i.adt
  %i.adv = select i1 %i.adu, double %i.adg, double %i.adt
  store double %i.adv, ptr %i.e, align 8, !tbaa !9
  %i.adw = fcmp une double %i.adn, 0.000000e+00
  br i1 %i.adw, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %i.adx = phi double [ %.11907, %bb.bk ], [ %i.adh, %bb.bn ] ; 5 uses
  %i.ady = phi double [ 1.000000e+00, %bb.bk ], [ %i.adg, %bb.bn ] ; 3 uses
  %.21908 = phi double [ %.11907, %bb.bk ], [ %.019062254, %bb.bn ] ; 2 uses
  %i.adz = fdiv double %i.mf, %i.ady
  %i.aea = call double @llvm.fabs.f64(double %i.adx)
  %i.aeb = insertelement <2 x double> poison, double %i.ady, i64 0
  %i.aec = insertelement <2 x double> %i.aeb, double %i.aea, i64 1
  %i.aed = fcmp ogt <2 x double> %i.aec, %i.kb    ; 2 uses
  %i.aee = extractelement <2 x i1> %i.aed, i64 0
  %.01938 = select i1 %i.aee, double %i.adz, double 1.000000e+00 ; 4 uses
  %i.aef = extractelement <2 x i1> %i.aed, i64 1
  br i1 %i.aef, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store double %.01938, ptr %i.d, align 8, !tbaa !9
  %i.aeg = fcmp oge double %i.adx, 0.000000e+00
  %i.aeh = fneg double %i.adx
  %i.aei = select i1 %i.aeg, double %i.adx, double %i.aeh
  %i.aej = fdiv double %i.mg, %i.aei              ; 2 uses
  %i.aek = fcmp ole double %.01938, %i.aej
  %i.ael = select i1 %i.aek, double %.01938, double %i.aej
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.11939 = phi double [ %i.ael, %bb.bp ], [ %.01938, %bb.bo ] ; 2 uses
  %i.aem = fmul double %i.ady, %.11939            ; 5 uses
  store double %i.aem, ptr %i.k, align 8, !tbaa !9
  %i.aen = fmul double %i.adx, %.11939            ; 3 uses
  store double %i.aen, ptr %i.y, align 8, !tbaa !9
  %i.aeo = add nsw i32 %.01897, 1
  store i32 %i.aeo, ptr %i.b, align 4, !tbaa !8
  %i.aep = sext i32 %.01897 to i64
  %.not2030.not2768 = icmp sgt i32 %i.ok, %.01897
  br i1 %.not2030.not2768, label %.lr.ph2771, label %._crit_edge2505

.lr.ph2771:                                       ; preds = %bb.bq
  %i.aeq = sext i32 %i.ok to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.bs
  %.not2030.not = icmp sgt i64 %indvars.iv.next2426, %i.aep
  br i1 %.not2030.not, label %bb.bs, label %._crit_edge2505.loopexit, !llvm.loop !46

._crit_edge2505.loopexit:                         ; preds = %bb.br
  store double %i.afq, ptr %i.j, align 8, !tbaa !9
  store double %i.agf, ptr %i.d, align 8, !tbaa !9
  br label %._crit_edge2505

._crit_edge2505:                                  ; preds = %._crit_edge2505.loopexit, %bb.bq
  %.pre2506 = mul i32 %.01897, %i.de
  %.pre2507 = sext i32 %.pre2506 to i64
  br label %split

bb.bs:                                            ; preds = %.lr.ph2771, %bb.br
  %indvars.iv24252769 = phi i64 [ %i.aeq, %.lr.ph2771 ], [ %indvars.iv.next2426, %bb.br ] ; 6 uses
  %indvars.iv.next2426 = add nsw i64 %indvars.iv24252769, -1 ; 3 uses
  %i.aer = mul nsw i64 %indvars.iv.next2426, %i.ke
  %i.aes = getelementptr [8 x i8], ptr %i.ap, i64 %i.aer
  %i.aet = getelementptr [8 x i8], ptr %i.aes, i64 %indvars.iv24252769
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !9
  %i.aev = fmul double %i.aem, %i.aeu
  %i.aew = mul nsw i64 %indvars.iv24252769, %i.ke ; 2 uses
  %i.aex = getelementptr [8 x i8], ptr %i.ap, i64 %i.aew
  %i.aey = getelementptr [8 x i8], ptr %i.aex, i64 %indvars.iv24252769
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !9
  %i.afa = trunc nsw i64 %indvars.iv24252769 to i32 ; 2 uses
  %i.afb = mul i32 %i.de, %i.afa
  %i.afc = sext i32 %i.afb to i64                 ; 2 uses
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !9
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
  %i.aga = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv24252769
  %i.agb = getelementptr i8, ptr %i.aga, i64 8
  %i.agc = getelementptr [8 x i8], ptr %i.agb, i64 %i.aew
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !9
  %i.age = fmul double %i.jo, %i.agd
  %i.agf = fmul double %i.age, %i.afz             ; 3 uses
  %i.agg = call double @llvm.fabs.f64(double %i.agf)
  %i.agh = fmul double %i.jp, %i.afx
  %i.agi = fcmp ugt double %i.agg, %i.agh
  br i1 %i.agi, label %bb.br, label %split.loopexit, !llvm.loop !46

split.loopexit:                                   ; preds = %bb.bs
  store double %i.afq, ptr %i.j, align 8, !tbaa !9
  store double %i.agf, ptr %i.d, align 8, !tbaa !9
  br label %split

split:                                            ; preds = %split.loopexit, %._crit_edge2505
  %.pre-phi2508 = phi i64 [ %.pre2507, %._crit_edge2505 ], [ %i.afc, %split.loopexit ]
  %.01894 = phi i32 [ %.01897, %._crit_edge2505 ], [ %i.afa, %split.loopexit ] ; 10 uses
  %i.agj = mul i32 %.01894, %.018942556           ; 2 uses
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.agk
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !9
  %i.agn = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.pre-phi2508
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !9
  %i.agp = fneg double %i.ago
  %i.agq = fmul double %i.aen, %i.agp
  %i.agr = call double @llvm.fmuladd.f64(double %i.aem, double %i.agm, double %i.agq)
  store double %i.agr, ptr %i.e, align 8, !tbaa !9
  %i.ags = add i32 %i.agj, 1
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !9
  %i.agw = fmul double %i.aem, %i.agv
  store double %i.agw, ptr %i.f, align 8, !tbaa !9
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j) #4
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !8
  %.not20312234.not = icmp slt i32 %.01894, %.019342248
  br i1 %.not20312234.not, label %.lr.ph2237.preheader, label %.loopexit2093

.lr.ph2237.preheader:                             ; preds = %split
  %i.agx = sext i32 %.01894 to i64                ; 11 uses
  %i.agy = add i32 %.119022255, 1                 ; 2 uses
  %i.agz = sext i32 %spec.select2067 to i64       ; 12 uses
  %i.aha = sext i32 %.119022255 to i64
  %i.ahb = mul i64 %i.kl, %i.agx
  %i.ahc = add nsw i64 %i.agx, 1
  %i.ahd = mul i64 %i.kn, %i.ahc
  %i.ahe = mul i64 %i.kp, %i.agx                  ; 2 uses
  %i.ahf = shl nsw i64 %i.agz, 3                  ; 4 uses
  %i.ahg = sub i32 %.01894, %spec.select2067
  %i.ahh = add nsw i64 %i.agx, 1
  %i.ahi = mul i64 %i.kr, %i.ahh                  ; 2 uses
  %i.ahj = sub i32 %.01894, %spec.select2067
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
  %i.ahu = shl nsw i64 %i.agx, 4                  ; 2 uses
  %i.ahv = add nsw i64 %i.ahu, -16                ; 2 uses
  %i.ahw = add i32 %.119022255, 1
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
  %invariant.op3665 = sub i64 1, %i.agz
  br label %.lr.ph2237

.lr.ph2237:                                       ; preds = %.lr.ph2237.preheader, %.loopexit2086
  %indvar2884 = phi i64 [ 0, %.lr.ph2237.preheader ], [ %indvar.next2885, %.loopexit2086 ] ; 13 uses
  %indvars.iv2451.in = phi i32 [ %.01894, %.lr.ph2237.preheader ], [ %indvars.iv2451, %.loopexit2086 ] ; 2 uses
  %indvars.iv2429 = phi i64 [ %i.agx, %.lr.ph2237.preheader ], [ %indvars.iv.next2430, %.loopexit2086 ] ; 26 uses
  %i.aiq = trunc i64 %indvar2884 to i32
  %i.air = add i32 %.01894, %i.aiq
  %i.ais = sub i32 %i.ahw, %i.air                 ; 2 uses
  %i.ait = trunc i64 %indvar2884 to i32
  %i.aiu = add i32 %.01894, %i.ait                ; 2 uses
  %i.aiv = shl nuw nsw i64 %indvar2884, 4
  %i.aiw = add i64 %i.ahv, %i.aiv                 ; 2 uses
  %scevgep3494 = getelementptr i8, ptr %8, i64 %i.aiw
  %scevgep3497 = getelementptr i8, ptr %6, i64 %i.aiw
  %i.aix = shl nuw nsw i64 %indvar2884, 4         ; 2 uses
  %i.aiy = add i64 %i.ahv, %i.aix                 ; 2 uses
  %scevgep3478 = getelementptr i8, ptr %6, i64 %i.aiy
  %20 = add i64 %i.ahu, %i.aix                    ; 2 uses
  %scevgep3479 = getelementptr i8, ptr %6, i64 %20
  %i.aiz = trunc i64 %indvar2884 to i32
  %i.aja = add i32 %.01894, %i.aiz
  %i.ajb = sub i32 %.119022255, %i.aja
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = shl nuw nsw i64 %i.ajc, 3              ; 2 uses
  %scevgep3480 = getelementptr i8, ptr %scevgep3479, i64 %i.ajd
  %scevgep3481 = getelementptr i8, ptr %8, i64 %i.aiy
  %scevgep3482 = getelementptr i8, ptr %8, i64 %20
  %scevgep3483 = getelementptr i8, ptr %scevgep3482, i64 %i.ajd
  %i.aje = mul i64 %i.ky, %indvar2884             ; 2 uses
  %scevgep2972 = getelementptr i8, ptr %i.ahx, i64 %i.aje
  %scevgep2974 = getelementptr i8, ptr %i.ahy, i64 %i.aje
  %i.ajf = mul i64 %i.ku, %indvar2884             ; 4 uses
  %scevgep2942 = getelementptr i8, ptr %i.aia, i64 %i.ajf
  %scevgep2943 = getelementptr i8, ptr %i.aic, i64 %i.ajf
  %i.ajg = trunc i64 %indvar2884 to i32
  %i.ajh = add i32 %i.ahp, %i.ajg
  %i.aji = call i32 @llvm.smin.i32(i32 %.019342248, i32 %i.ajh)
  %i.ajj = call i32 @llvm.smax.i32(i32 %i.aji, i32 %spec.select2067)
  %smax = sext i32 %i.ajj to i64
  %i.ajk = shl nsw i64 %smax, 3                   ; 2 uses
  %scevgep2944 = getelementptr i8, ptr %scevgep2943, i64 %i.ajk
  %scevgep2945 = getelementptr i8, ptr %i.aie, i64 %i.ajf
  %scevgep2946 = getelementptr i8, ptr %i.aif, i64 %i.ajf
  %scevgep2947 = getelementptr i8, ptr %scevgep2946, i64 %i.ajk
  %i.ajl = trunc i64 %indvar2884 to i32
  %i.ajm = add i32 %i.ahj, %i.ajl                 ; 2 uses
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = add nuw nsw i64 %i.ajn, 1              ; 2 uses
  %i.ajp = mul i64 %i.kq, %indvar2884             ; 4 uses
  %scevgep2912 = getelementptr i8, ptr %i.aih, i64 %i.ajp
  %scevgep2913 = getelementptr i8, ptr %i.aij, i64 %i.ajp
  %i.ajq = trunc i64 %indvar2884 to i32
  %i.ajr = add i32 %i.ahg, %i.ajq
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = shl nuw nsw i64 %i.ajs, 3              ; 2 uses
  %scevgep2914 = getelementptr i8, ptr %scevgep2913, i64 %i.ajt
  %scevgep2915 = getelementptr i8, ptr %i.ail, i64 %i.ajp
  %scevgep2916 = getelementptr i8, ptr %i.ain, i64 %i.ajp
  %scevgep2917 = getelementptr i8, ptr %scevgep2916, i64 %i.ajt
  %i.aju = mul i64 %i.km, %indvar2884             ; 2 uses
  %scevgep2886 = getelementptr i8, ptr %i.aio, i64 %i.aju
  %scevgep2888 = getelementptr i8, ptr %i.aip, i64 %i.aju
  %indvars.iv2451 = add i32 %indvars.iv2451.in, 1 ; 3 uses
  %i.ajv = icmp sgt i64 %indvars.iv2429, %i.agx
  br i1 %i.ajv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph2237
  %indvars2462 = trunc i64 %indvars.iv2429 to i32
  %i.ajw = add nsw i64 %indvars.iv2429, -1
  %i.ajx = add nsw i32 %indvars2462, -1
  %i.ajy = mul nsw i64 %i.ajw, %i.ke
  %i.ajz = mul nsw i32 %i.ajx, %i.an
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2429
  %i.akc = getelementptr [8 x i8], ptr %i.akb, i64 %i.aka ; 2 uses
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !9
  store double %i.akd, ptr %i.e, align 8, !tbaa !9
  %i.ake = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2429
  %i.akf = getelementptr i8, ptr %i.ake, i64 8
  %i.akg = getelementptr [8 x i8], ptr %i.akf, i64 %i.ajy ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef %i.akg, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.akc) #4
  store double 0.000000e+00, ptr %i.akg, align 8, !tbaa !9
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph2237
  %.not20322207 = icmp sgt i64 %indvars.iv2429, %i.aha
  br i1 %.not20322207, label %bb.bv, label %.lver.check3490

.lver.check3490:                                  ; preds = %bb.bu
  %i.akh = load double, ptr %i.g, align 8, !tbaa !9 ; 24 uses
  %i.aki = load double, ptr %i.h, align 8, !tbaa !9 ; 13 uses
  %i.akj = add nsw i64 %indvars.iv2429, 1         ; 2 uses
  %i.akk = fneg double %i.aki                     ; 12 uses
  %invariant.gep2682 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2429 ; 6 uses
  %invariant.gep2684 = getelementptr [8 x i8], ptr %i.ap, i64 %i.akj ; 6 uses
  %invariant.gep2686 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2429 ; 6 uses
  %invariant.gep2688 = getelementptr [8 x i8], ptr %i.as, i64 %i.akj ; 6 uses
  %bound03484 = icmp ult ptr %scevgep3478, %scevgep3483
  %bound13485 = icmp ult ptr %scevgep3481, %scevgep3480
  %found.conflict3486 = and i1 %bound03484, %bound13485
  %lver.safe3489 = or i1 %found.conflict3486, %i.og
  br i1 %lver.safe3489, label %.ph3491.lver.orig.preheader, label %.ph3491

.ph3491.lver.orig.preheader:                      ; preds = %.lver.check3490
  %xtraiter3589 = and i32 %i.ais, 1
  %lcmp.mod3590.not = icmp eq i32 %xtraiter3589, 0
  br i1 %lcmp.mod3590.not, label %.ph3491.lver.orig.prol.loopexit, label %.ph3491.lver.orig.prol

.ph3491.lver.orig.prol:                           ; preds = %.ph3491.lver.orig.preheader
  %i.akl = mul nsw i64 %indvars.iv2429, %i.ke     ; 2 uses
  %gep2683.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2682, i64 %i.akl ; 2 uses
  %i.akm = load double, ptr %gep2683.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %gep2685.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2684, i64 %i.akl ; 2 uses
  %i.akn = load double, ptr %gep2685.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %i.ako = fmul double %i.aki, %i.akn
  %i.akp = call double @llvm.fmuladd.f64(double %i.akh, double %i.akm, double %i.ako)
  %i.akq = fmul double %i.akh, %i.akn
  %i.akr = call double @llvm.fmuladd.f64(double %i.akk, double %i.akm, double %i.akq)
  store double %i.akr, ptr %gep2685.lver.orig.prol, align 8, !tbaa !9
  store double %i.akp, ptr %gep2683.lver.orig.prol, align 8, !tbaa !9
  %i.aks = mul nsw i64 %indvars.iv2429, %i.kd     ; 2 uses
  %gep2687.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2686, i64 %i.aks ; 2 uses
  %i.akt = load double, ptr %gep2687.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %gep2689.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep2688, i64 %i.aks ; 2 uses
  %i.aku = load double, ptr %gep2689.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %i.akv = fmul double %i.aki, %i.aku
  %i.akw = call double @llvm.fmuladd.f64(double %i.akh, double %i.akt, double %i.akv) ; 2 uses
  %i.akx = fmul double %i.akh, %i.aku
  %i.aky = call double @llvm.fmuladd.f64(double %i.akk, double %i.akt, double %i.akx)
  store double %i.aky, ptr %gep2689.lver.orig.prol, align 8, !tbaa !9
  store double %i.akw, ptr %gep2687.lver.orig.prol, align 8, !tbaa !9
  %indvars.iv.next2432.lver.orig.prol = add nsw i64 %indvars.iv2429, 1
  br label %.ph3491.lver.orig.prol.loopexit

.ph3491.lver.orig.prol.loopexit:                  ; preds = %.ph3491.lver.orig.prol, %.ph3491.lver.orig.preheader
  %.lcssa3551.unr = phi double [ poison, %.ph3491.lver.orig.preheader ], [ %i.akw, %.ph3491.lver.orig.prol ]
  %indvars.iv2431.lver.orig.unr = phi i64 [ %indvars.iv2429, %.ph3491.lver.orig.preheader ], [ %indvars.iv.next2432.lver.orig.prol, %.ph3491.lver.orig.prol ]
  %i.akz = icmp eq i32 %.119022255, %i.aiu
  br i1 %i.akz, label %._crit_edge2211, label %.ph3491.lver.orig

.ph3491.lver.orig:                                ; preds = %.ph3491.lver.orig.prol.loopexit, %.ph3491.lver.orig
  %indvars.iv2431.lver.orig = phi i64 [ %indvars.iv.next2432.lver.orig.1, %.ph3491.lver.orig ], [ %indvars.iv2431.lver.orig.unr, %.ph3491.lver.orig.prol.loopexit ] ; 4 uses
  %i.ala = mul nsw i64 %indvars.iv2431.lver.orig, %i.ke ; 2 uses
  %gep2683.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2682, i64 %i.ala ; 2 uses
  %i.alb = load double, ptr %gep2683.lver.orig, align 8, !tbaa !9 ; 2 uses
  %gep2685.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2684, i64 %i.ala ; 2 uses
  %i.alc = load double, ptr %gep2685.lver.orig, align 8, !tbaa !9 ; 2 uses
  %i.ald = fmul double %i.aki, %i.alc
  %i.ale = call double @llvm.fmuladd.f64(double %i.akh, double %i.alb, double %i.ald)
  %i.alf = fmul double %i.akh, %i.alc
  %i.alg = call double @llvm.fmuladd.f64(double %i.akk, double %i.alb, double %i.alf)
  store double %i.alg, ptr %gep2685.lver.orig, align 8, !tbaa !9
  store double %i.ale, ptr %gep2683.lver.orig, align 8, !tbaa !9
  %i.alh = mul nsw i64 %indvars.iv2431.lver.orig, %i.kd ; 2 uses
  %gep2687.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2686, i64 %i.alh ; 2 uses
  %i.ali = load double, ptr %gep2687.lver.orig, align 8, !tbaa !9 ; 2 uses
  %gep2689.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2688, i64 %i.alh ; 2 uses
  %i.alj = load double, ptr %gep2689.lver.orig, align 8, !tbaa !9 ; 2 uses
  %i.alk = fmul double %i.aki, %i.alj
  %i.all = call double @llvm.fmuladd.f64(double %i.akh, double %i.ali, double %i.alk)
  %i.alm = fmul double %i.akh, %i.alj
  %i.aln = call double @llvm.fmuladd.f64(double %i.akk, double %i.ali, double %i.alm)
  store double %i.aln, ptr %gep2689.lver.orig, align 8, !tbaa !9
  store double %i.all, ptr %gep2687.lver.orig, align 8, !tbaa !9
  %indvars.iv.next2432.lver.orig = add nsw i64 %indvars.iv2431.lver.orig, 1 ; 2 uses
  %i.alo = mul nsw i64 %indvars.iv.next2432.lver.orig, %i.ke ; 2 uses
  %gep2683.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2682, i64 %i.alo ; 2 uses
  %i.alp = load double, ptr %gep2683.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %gep2685.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2684, i64 %i.alo ; 2 uses
  %i.alq = load double, ptr %gep2685.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %i.alr = fmul double %i.aki, %i.alq
  %i.als = call double @llvm.fmuladd.f64(double %i.akh, double %i.alp, double %i.alr)
  %i.alt = fmul double %i.akh, %i.alq
  %i.alu = call double @llvm.fmuladd.f64(double %i.akk, double %i.alp, double %i.alt)
  store double %i.alu, ptr %gep2685.lver.orig.1, align 8, !tbaa !9
  store double %i.als, ptr %gep2683.lver.orig.1, align 8, !tbaa !9
  %i.alv = mul nsw i64 %indvars.iv.next2432.lver.orig, %i.kd ; 2 uses
  %gep2687.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2686, i64 %i.alv ; 2 uses
  %i.alw = load double, ptr %gep2687.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %gep2689.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep2688, i64 %i.alv ; 2 uses
  %i.alx = load double, ptr %gep2689.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %i.aly = fmul double %i.aki, %i.alx
  %i.alz = call double @llvm.fmuladd.f64(double %i.akh, double %i.alw, double %i.aly) ; 2 uses
  %i.ama = fmul double %i.akh, %i.alx
  %i.amb = call double @llvm.fmuladd.f64(double %i.akk, double %i.alw, double %i.ama)
  store double %i.amb, ptr %gep2689.lver.orig.1, align 8, !tbaa !9
  store double %i.alz, ptr %gep2687.lver.orig.1, align 8, !tbaa !9
  %indvars.iv.next2432.lver.orig.1 = add nsw i64 %indvars.iv2431.lver.orig, 2 ; 2 uses
  %lftr.wideiv2435.lver.orig.1 = trunc i64 %indvars.iv.next2432.lver.orig.1 to i32
  %exitcond2436.not.lver.orig.1 = icmp eq i32 %i.agy, %lftr.wideiv2435.lver.orig.1
  br i1 %exitcond2436.not.lver.orig.1, label %._crit_edge2211, label %.ph3491.lver.orig, !llvm.loop !47

.ph3491:                                          ; preds = %.lver.check3490
  %load_initial3495 = load double, ptr %scevgep3494, align 8 ; 3 uses
  %load_initial3498 = load double, ptr %scevgep3497, align 8 ; 3 uses
  %xtraiter3586 = and i32 %i.ais, 1
  %lcmp.mod3587.not = icmp eq i32 %xtraiter3586, 0
  br i1 %lcmp.mod3587.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.ph3491
  %i.amc = mul nuw nsw i64 %indvars.iv2429, %i.ke ; 2 uses
  %gep2683.prol = getelementptr [8 x i8], ptr %invariant.gep2682, i64 %i.amc
  %gep2685.prol = getelementptr [8 x i8], ptr %invariant.gep2684, i64 %i.amc ; 2 uses
  %i.amd = load double, ptr %gep2685.prol, align 8, !tbaa !9 ; 2 uses
  %i.ame = fmul double %i.aki, %i.amd
  %i.amf = call double @llvm.fmuladd.f64(double %i.akh, double %load_initial3498, double %i.ame)
  %i.amg = fmul double %i.akh, %i.amd
  %i.amh = call double @llvm.fmuladd.f64(double %i.akk, double %load_initial3498, double %i.amg) ; 2 uses
  store double %i.amh, ptr %gep2685.prol, align 8, !tbaa !9
  store double %i.amf, ptr %gep2683.prol, align 8, !tbaa !9
  %i.ami = mul nuw nsw i64 %indvars.iv2429, %i.kd ; 2 uses
  %gep2687.prol = getelementptr [8 x i8], ptr %invariant.gep2686, i64 %i.ami
  %gep2689.prol = getelementptr [8 x i8], ptr %invariant.gep2688, i64 %i.ami ; 2 uses
  %i.amj = load double, ptr %gep2689.prol, align 8, !tbaa !9 ; 2 uses
  %i.amk = fmul double %i.aki, %i.amj
  %i.aml = call double @llvm.fmuladd.f64(double %i.akh, double %load_initial3495, double %i.amk) ; 2 uses
  %i.amm = fmul double %i.akh, %i.amj
  %i.amn = call double @llvm.fmuladd.f64(double %i.akk, double %load_initial3495, double %i.amm) ; 2 uses
end_hunk_0
begin_hunk_1_@dhgeqz_:bb.a
  %i.bhf = fmul double %i.bgy, %i.bhe
  %i.bhg = call double @llvm.fmuladd.f64(double %i.bhc, double %i.bhd, double %i.bhf)
  store double %i.bhg, ptr %i.ad, align 8, !tbaa !9
  %i.bhh = fmul double %i.bha, %i.bhe
  store double %i.bhh, ptr %i.aa, align 8, !tbaa !9
  %i.bhi = call double @dlapy2_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.aa) #4 ; 3 uses
  %i.bhj = load double, ptr %i.r, align 8, !tbaa !9
  %i.bhk = load double, ptr %i.u, align 8, !tbaa !9
  %i.bhl = fmul double %i.bhj, %i.bhk
  %i.bhm = load double, ptr %i.n, align 8, !tbaa !9
  %i.bhn = load double, ptr %i.j, align 8, !tbaa !9
  %i.bho = load double, ptr %i.m, align 8, !tbaa !9 ; 2 uses
  %i.bhp = fmul double %i.bhn, %i.bho
  %i.bhq = call double @llvm.fmuladd.f64(double %i.bhl, double %i.bhm, double %i.bhp)
  store double %i.bhq, ptr %i.ae, align 8, !tbaa !9
  %i.bhr = fneg double %i.bha
  %i.bhs = fmul double %i.bho, %i.bhr
  store double %i.bhs, ptr %i.ab, align 8, !tbaa !9
  %i.bht = call double @dlapy2_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ab) #4 ; 3 uses
  %i.bhu = sext i32 %i.ok to i64                  ; 3 uses
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bhu
  store double %i.bhi, ptr %i.bhv, align 8, !tbaa !9
  %i.bhw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.oz
  store double %i.bht, ptr %i.bhw, align 8, !tbaa !9
  %i.bhx = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.bhy = fmul double %i.bhi, %i.bhx
  %i.bhz = fmul double %i.bbc, %i.bhy
  %i.bia = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bhu
  store double %i.bhz, ptr %i.bia, align 8, !tbaa !9
  %i.bib = load double, ptr %i.w, align 8, !tbaa !9 ; 2 uses
  %i.bic = fmul double %i.bhi, %i.bib
  %i.bid = fmul double %i.bbc, %i.bic
  %i.bie = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bhu
  store double %i.bid, ptr %i.bie, align 8, !tbaa !9
  %i.bif = fmul double %i.bht, %i.bhx
  %i.big = fmul double %i.bbc, %i.bif
  %i.bih = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.oz
  store double %i.big, ptr %i.bih, align 8, !tbaa !9
  %i.bii = fneg double %i.bht
  %i.bij = fmul double %i.bib, %i.bii
  %i.bik = fmul double %i.bbc, %i.bij
  %i.bil = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.oz
  store double %i.bik, ptr %i.bil, align 8, !tbaa !9
  %i.bim = load i32, ptr %4, align 4, !tbaa !8    ; 3 uses
  %.not2028 = icmp sgt i32 %.01897, %i.bim
  br i1 %.not2028, label %bb.cz, label %.loopexit2101

bb.cz:                                            ; preds = %bb.cy
  %i.bin = add nsw i32 %.01897, -1                ; 2 uses
  %spec.select2083 = select i1 %.not.not, i32 %.119022255, i32 %i.bin
  %spec.select2084 = select i1 %.not.not, i32 %.118962258, i32 %i.bim
  br label %.loopexit2093

bb.da:                                            ; preds = %bb.bz
  %i.bio = load double, ptr %i.acd, align 8, !tbaa !9
  %i.bip = load double, ptr %i.ach, align 8, !tbaa !9
  %i.biq = load double, ptr %i.oo, align 8, !tbaa !9
  %i.bir = add nsw i32 %i.ok, %i.acl
  %i.bis = sext i32 %i.bir to i64
  %i.bit = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bis
  %i.biu = load double, ptr %i.bit, align 8, !tbaa !9
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
  %i.bji = load double, ptr %i.bjh, align 8, !tbaa !9
  %i.bjj = fdiv double %i.bji, %i.ack             ; 2 uses
  %i.bjk = mul nsw i32 %.01897, %i.an             ; 2 uses
  %i.bjl = add nsw i32 %i.bjk, %.01897
  %i.bjm = sext i32 %i.bjl to i64
  %i.bjn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjm
  %i.bjo = load double, ptr %i.bjn, align 8, !tbaa !9
  %i.bjp = fmul double %i.jo, %i.bjo
  %i.bjq = mul i32 %.01897, %i.de
  %i.bjr = sext i32 %i.bjq to i64
  %i.bjs = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bjr
  %i.bjt = load double, ptr %i.bjs, align 8, !tbaa !9
  %i.bju = add nsw i32 %i.avq, %i.bjk
  %i.bjv = sext i32 %i.bju to i64
  %i.bjw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bjv
  %i.bjx = load double, ptr %i.bjw, align 8, !tbaa !9
  %i.bjy = mul nsw i32 %i.avq, %i.an              ; 3 uses
  %i.bjz = add nsw i32 %i.bjy, %.01897
  %i.bka = sext i32 %i.bjz to i64
  %i.bkb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bka
  %i.bkc = load double, ptr %i.bkb, align 8, !tbaa !9
  %i.bkd = mul nsw i32 %i.avq, %i.aq              ; 2 uses
  %i.bke = add nsw i32 %i.bkd, %i.avq
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bkf
  %i.bkh = load double, ptr %i.bkg, align 8, !tbaa !9 ; 2 uses
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
  %i.bku = load double, ptr %i.bkt, align 8, !tbaa !9
  %i.bkv = add nsw i32 %.01897, 2
  %i.bkw = add nsw i32 %i.bkv, %i.bjy
  %i.bkx = sext i32 %i.bkw to i64
  %i.bky = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bkx
  %i.bkz = load double, ptr %i.bky, align 8, !tbaa !9
  %i.bla = insertelement <2 x double> poison, double %i.bku, i64 0
  %i.blb = insertelement <2 x double> %i.bla, double %i.bkz, i64 1
  %i.blc = fmul <2 x double> %i.mj, %i.blb
  %i.bld = shufflevector <2 x double> %i.bkk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ble = fdiv <2 x double> %i.blc, %i.bld       ; 2 uses
  %i.blf = add nsw i32 %i.bkd, %.01897
  %i.blg = sext i32 %i.blf to i64
  %i.blh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.blg
  %i.bli = load double, ptr %i.blh, align 8, !tbaa !9
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
  store double %i.blz, ptr %i.i, align 16, !tbaa !9
  %i.bma = extractelement <2 x double> %i.ble, i64 0
  %i.bmb = fsub double %i.bma, %i.bkm
  %i.bmc = fneg double %i.bly
  %i.bmd = call double @llvm.fmuladd.f64(double %i.bmc, double %i.blj, double %i.bmb)
  %i.bme = fsub double %i.bmd, %i.bll
  %i.bmf = fsub double %i.bme, %i.bln
  %i.bmg = call double @llvm.fmuladd.f64(double %i.blo, double %i.bjj, double %i.bmf)
  %i.bmh = fmul double %i.bly, %i.bmg
  store double %i.bmh, ptr %i.jr, align 8, !tbaa !9
  %shift3500 = shufflevector <2 x double> %i.ble, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bkq, %shift3500
  %i.bmi = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.bmi, ptr %i.js, align 16, !tbaa !9
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.i, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !9
  %i.bmj = add nsw i32 %.019342248, -2            ; 3 uses
  store i32 %i.bmj, ptr %i.b, align 4, !tbaa !8
  %.not20062162 = icmp sgt i32 %.01897, %i.bmj
  br i1 %.not20062162, label %._crit_edge2168, label %.lr.ph2167.preheader

.lr.ph2167.preheader:                             ; preds = %bb.da
  %i.bmk = sext i32 %.01897 to i64                ; 16 uses
  %i.bml = add i32 %.119022255, 1                 ; 2 uses
  %i.bmm = sext i32 %spec.select2067 to i64       ; 12 uses
  %i.bmn = add i32 %.01897, 3
  %i.bmo = sext i32 %.119022255 to i64
  %i.bmp = mul i64 %i.lm, %i.bmk
  %i.bmq = add nsw i64 %i.bmk, 1
  %i.bmr = mul i64 %i.lo, %i.bmq
  %i.bms = add nsw i64 %i.bmk, 2
  %i.bmt = mul i64 %i.lp, %i.bms
  %i.bmu = mul i64 %i.lr, %i.bmk                  ; 2 uses
  %i.bmv = shl nsw i64 %i.bmm, 3                  ; 6 uses
  %i.bmw = add i32 %.01897, 2
  %i.bmx = sub i32 %i.bmw, %spec.select2067
  %i.bmy = add nsw i64 %i.bmk, 1
  %i.bmz = mul i64 %i.lt, %i.bmy                  ; 2 uses
  %i.bna = add nsw i64 %i.bmk, 2
  %i.bnb = mul i64 %i.lu, %i.bna                  ; 2 uses
  %i.bnc = add i32 %.01897, 2
  %i.bnd = sub i32 %i.bnc, %spec.select2067
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
  %21 = shl nsw i64 %i.bmk, 4                     ; 3 uses
  %22 = add nsw i64 %21, -16
  %23 = or disjoint i64 %21, 8
  %24 = add nsw i64 %21, -8
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
  br label %.lr.ph2167

.lr.ph2167:                                       ; preds = %.lr.ph2167.preheader, %.loopexit2088
  %indvar3242 = phi i64 [ 0, %.lr.ph2167.preheader ], [ %indvar.next3243, %.loopexit2088 ] ; 11 uses
  %indvars.iv2371 = phi i32 [ %i.bmn, %.lr.ph2167.preheader ], [ %indvars.iv.next2372, %.loopexit2088 ] ; 4 uses
  %indvars.iv2349 = phi i64 [ %i.bmk, %.lr.ph2167.preheader ], [ %indvars.iv.next2350, %.loopexit2088 ] ; 24 uses
  %i.bov = trunc i64 %indvar3242 to i32
  %i.bow = add i32 %i.bns, %i.bov
  %i.box = shl nuw nsw i64 %indvar3242, 4
  %i.boy = add i64 %24, %i.box                    ; 2 uses
  %scevgep3474 = getelementptr i8, ptr %8, i64 %i.boy
  %scevgep3475 = getelementptr i8, ptr %6, i64 %i.boy
  %i.boz = shl nuw nsw i64 %indvar3242, 4         ; 2 uses
  %i.bpa = add i64 %22, %i.boz                    ; 2 uses
  %scevgep3461 = getelementptr i8, ptr %6, i64 %i.bpa
  %25 = add i64 %23, %i.boz                       ; 2 uses
  %scevgep3462 = getelementptr i8, ptr %6, i64 %25
  %i.bpb = trunc i64 %indvar3242 to i32
  %i.bpc = add i32 %.01897, %i.bpb
  %i.bpd = sub i32 %.119022255, %i.bpc
  %i.bpe = zext i32 %i.bpd to i64
  %i.bpf = shl nuw nsw i64 %i.bpe, 3              ; 2 uses
  %scevgep3463 = getelementptr i8, ptr %scevgep3462, i64 %i.bpf
  %scevgep3464 = getelementptr i8, ptr %8, i64 %i.bpa
  %scevgep3465 = getelementptr i8, ptr %8, i64 %25
  %scevgep3466 = getelementptr i8, ptr %scevgep3465, i64 %i.bpf
  %i.bpg = mul i64 %i.mc, %indvar3242             ; 3 uses
  %scevgep3369 = getelementptr i8, ptr %i.bnt, i64 %i.bpg ; 2 uses
  %scevgep3371 = getelementptr i8, ptr %i.bnu, i64 %i.bpg ; 2 uses
  %scevgep3373 = getelementptr i8, ptr %i.bnv, i64 %i.bpg ; 2 uses
  %i.bph = mul i64 %i.lx, %indvar3242             ; 6 uses
  %scevgep3325 = getelementptr i8, ptr %i.bnx, i64 %i.bph ; 2 uses
  %scevgep3326 = getelementptr i8, ptr %i.bnz, i64 %i.bph
  %i.bpi = call i32 @llvm.smin.i32(i32 %.019342248, i32 %indvars.iv2371)
  %i.bpj = call i32 @llvm.smax.i32(i32 %i.bpi, i32 %spec.select2067)
  %smax3328 = sext i32 %i.bpj to i64
  %i.bpk = shl nsw i64 %smax3328, 3               ; 3 uses
  %scevgep3329 = getelementptr i8, ptr %scevgep3326, i64 %i.bpk ; 2 uses
  %scevgep3330 = getelementptr i8, ptr %i.bob, i64 %i.bph ; 2 uses
  %scevgep3331 = getelementptr i8, ptr %i.boc, i64 %i.bph
  %scevgep3332 = getelementptr i8, ptr %scevgep3331, i64 %i.bpk ; 2 uses
  %scevgep3333 = getelementptr i8, ptr %i.boe, i64 %i.bph ; 2 uses
  %scevgep3334 = getelementptr i8, ptr %i.bof, i64 %i.bph
  %scevgep3335 = getelementptr i8, ptr %scevgep3334, i64 %i.bpk ; 2 uses
  %i.bpl = trunc i64 %indvar3242 to i32
  %i.bpm = add i32 %i.bnd, %i.bpl                 ; 2 uses
  %i.bpn = zext i32 %i.bpm to i64
  %i.bpo = add nuw nsw i64 %i.bpn, 1              ; 2 uses
  %i.bpp = mul i64 %i.ls, %indvar3242             ; 6 uses
  %scevgep3283 = getelementptr i8, ptr %i.boh, i64 %i.bpp ; 2 uses
  %scevgep3284 = getelementptr i8, ptr %i.boj, i64 %i.bpp
  %i.bpq = trunc i64 %indvar3242 to i32
  %i.bpr = add i32 %i.bmx, %i.bpq
  %i.bps = zext i32 %i.bpr to i64
  %i.bpt = shl nuw nsw i64 %i.bps, 3              ; 3 uses
  %scevgep3285 = getelementptr i8, ptr %scevgep3284, i64 %i.bpt ; 2 uses
  %scevgep3286 = getelementptr i8, ptr %i.bol, i64 %i.bpp ; 2 uses
  %scevgep3287 = getelementptr i8, ptr %i.bon, i64 %i.bpp
  %scevgep3288 = getelementptr i8, ptr %scevgep3287, i64 %i.bpt ; 2 uses
  %scevgep3289 = getelementptr i8, ptr %i.bop, i64 %i.bpp ; 2 uses
  %scevgep3290 = getelementptr i8, ptr %i.bor, i64 %i.bpp
  %scevgep3291 = getelementptr i8, ptr %scevgep3290, i64 %i.bpt ; 2 uses
  %i.bpu = mul i64 %i.ln, %indvar3242             ; 3 uses
  %scevgep3244 = getelementptr i8, ptr %i.bos, i64 %i.bpu ; 2 uses
  %scevgep3246 = getelementptr i8, ptr %i.bot, i64 %i.bpu ; 2 uses
  %scevgep3248 = getelementptr i8, ptr %i.bou, i64 %i.bpu ; 2 uses
  %indvars2382 = trunc i64 %indvars.iv2349 to i32 ; 3 uses
  %i.bpv = icmp sgt i64 %indvars.iv2349, %i.bmk
  br i1 %i.bpv, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph2167
  %i.bpw = add nsw i64 %indvars.iv2349, -1
  %i.bpx = add nsw i32 %indvars2382, -1
  %i.bpy = mul nsw i64 %i.bpw, %i.ke
  %i.bpz = mul nsw i32 %i.bpx, %i.an
  %i.bqa = sext i32 %i.bpz to i64
  %i.bqb = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2349
  %i.bqc = getelementptr [8 x i8], ptr %i.bqb, i64 %i.bqa ; 2 uses
  %i.bqd = load double, ptr %i.bqc, align 8, !tbaa !9
  store double %i.bqd, ptr %i.i, align 16, !tbaa !9
  %i.bqe = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2349
  %i.bqf = getelementptr i8, ptr %i.bqe, i64 8
  %i.bqg = getelementptr [8 x i8], ptr %i.bqf, i64 %i.bpy ; 2 uses
  %i.bqh = load <2 x double>, ptr %i.bqg, align 8, !tbaa !9
  store <2 x double> %i.bqh, ptr %i.jr, align 8, !tbaa !9
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.bqc, ptr noundef nonnull %i.jr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ak) #4
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.bqg, align 8, !tbaa !9
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph2167
  %.not20142136 = icmp sgt i64 %indvars.iv2349, %i.bmo
  br i1 %.not20142136, label %._crit_edge2140, label %.lver.check

.lver.check:                                      ; preds = %bb.dc
  %i.bqi = load double, ptr %i.ak, align 8, !tbaa !9 ; 4 uses
  %i.bqj = add nsw i64 %indvars.iv2349, 1         ; 2 uses
  %i.bqk = load <2 x double>, ptr %i.jr, align 8, !tbaa !9 ; 6 uses
  %i.bql = add nsw i64 %indvars.iv2349, 2         ; 2 uses
  %invariant.gep2616 = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv2349 ; 2 uses
  %invariant.gep2618 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bqj ; 2 uses
  %invariant.gep2620 = getelementptr [8 x i8], ptr %i.ap, i64 %i.bql
  %invariant.gep2622 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv2349 ; 2 uses
  %invariant.gep2624 = getelementptr [8 x i8], ptr %i.as, i64 %i.bqj ; 2 uses
  %invariant.gep2626 = getelementptr [8 x i8], ptr %i.as, i64 %i.bql
  %bound03467 = icmp ult ptr %scevgep3461, %scevgep3466
  %bound13468 = icmp ult ptr %scevgep3464, %scevgep3463
  %found.conflict3469 = and i1 %bound03467, %bound13468
  %lver.safe = or i1 %found.conflict3469, %i.nm
  br i1 %lver.safe, label %.ph3472.lver.orig.preheader, label %.ph3472

.ph3472.lver.orig.preheader:                      ; preds = %.lver.check
  %i.bqm = extractelement <2 x double> %i.bqk, i64 0 ; 2 uses
  %i.bqn = extractelement <2 x double> %i.bqk, i64 1 ; 2 uses
  br label %.ph3472.lver.orig

.ph3472.lver.orig:                                ; preds = %.ph3472.lver.orig.preheader, %.ph3472.lver.orig
  %indvars.iv2351.lver.orig = phi i64 [ %indvars.iv.next2352.lver.orig, %.ph3472.lver.orig ], [ %indvars.iv2349, %.ph3472.lver.orig.preheader ] ; 3 uses
  %i.bqo = mul nsw i64 %indvars.iv2351.lver.orig, %i.ke ; 2 uses
  %gep2617.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2616, i64 %i.bqo ; 2 uses
  %i.bqp = load double, ptr %gep2617.lver.orig, align 8, !tbaa !9 ; 2 uses
  %gep2619.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2618, i64 %i.bqo ; 2 uses
  %i.bqq = load <2 x double>, ptr %gep2619.lver.orig, align 8, !tbaa !9 ; 3 uses
  %i.bqr = extractelement <2 x double> %i.bqq, i64 0
  %i.bqs = call double @llvm.fmuladd.f64(double %i.bqm, double %i.bqr, double %i.bqp)
  %i.bqt = extractelement <2 x double> %i.bqq, i64 1
  %i.bqu = call double @llvm.fmuladd.f64(double %i.bqn, double %i.bqt, double %i.bqs)
  %i.bqv = fmul double %i.bqi, %i.bqu             ; 2 uses
  %i.bqw = fsub double %i.bqp, %i.bqv
  store double %i.bqw, ptr %gep2617.lver.orig, align 8, !tbaa !9
  %i.bqx = fneg double %i.bqv
  %i.bqy = insertelement <2 x double> poison, double %i.bqx, i64 0
  %i.bqz = shufflevector <2 x double> %i.bqy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bra = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bqz, <2 x double> %i.bqk, <2 x double> %i.bqq)
  store <2 x double> %i.bra, ptr %gep2619.lver.orig, align 8, !tbaa !9
  %i.brb = mul nsw i64 %indvars.iv2351.lver.orig, %i.kd ; 2 uses
  %gep2623.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2622, i64 %i.brb ; 2 uses
  %i.brc = load double, ptr %gep2623.lver.orig, align 8, !tbaa !9 ; 2 uses
  %gep2625.lver.orig = getelementptr [8 x i8], ptr %invariant.gep2624, i64 %i.brb ; 2 uses
  %i.brd = load <2 x double>, ptr %gep2625.lver.orig, align 8, !tbaa !9 ; 3 uses
  %i.bre = extractelement <2 x double> %i.brd, i64 0
  %i.brf = call double @llvm.fmuladd.f64(double %i.bqm, double %i.bre, double %i.brc)
  %i.brg = extractelement <2 x double> %i.brd, i64 1
  %i.brh = call double @llvm.fmuladd.f64(double %i.bqn, double %i.brg, double %i.brf)
  %i.bri = fmul double %i.bqi, %i.brh             ; 2 uses
  %i.brj = fsub double %i.brc, %i.bri
  store double %i.brj, ptr %gep2623.lver.orig, align 8, !tbaa !9
  %i.brk = fneg double %i.bri
  %i.brl = insertelement <2 x double> poison, double %i.brk, i64 0
  %i.brm = shufflevector <2 x double> %i.brl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.brn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.brm, <2 x double> %i.bqk, <2 x double> %i.brd)
  store <2 x double> %i.brn, ptr %gep2625.lver.orig, align 8, !tbaa !9
  %indvars.iv.next2352.lver.orig = add nsw i64 %indvars.iv2351.lver.orig, 1 ; 2 uses
  %lftr.wideiv2355.lver.orig = trunc i64 %indvars.iv.next2352.lver.orig to i32
  %exitcond2356.not.lver.orig = icmp eq i32 %i.bml, %lftr.wideiv2355.lver.orig
  br i1 %exitcond2356.not.lver.orig, label %._crit_edge2140, label %.ph3472.lver.orig, !llvm.loop !91

.ph3472:                                          ; preds = %.lver.check
  %load_initial = load double, ptr %scevgep3474, align 8
  %load_initial3476 = load double, ptr %scevgep3475, align 8
  %i.bro = extractelement <2 x double> %i.bqk, i64 0 ; 4 uses
  %i.brp = extractelement <2 x double> %i.bqk, i64 1 ; 4 uses
  br label %bb.dd

bb.dd:                                            ; preds = %.ph3472, %bb.dd
  %store_forwarded3477 = phi double [ %load_initial3476, %.ph3472 ], [ %i.brz, %bb.dd ] ; 2 uses
  %store_forwarded = phi double [ %load_initial, %.ph3472 ], [ %i.bsj, %bb.dd ] ; 2 uses
  %indvars.iv2351 = phi i64 [ %indvars.iv2349, %.ph3472 ], [ %indvars.iv.next2352, %bb.dd ] ; 3 uses
  %i.brq = mul nuw nsw i64 %indvars.iv2351, %i.ke ; 3 uses
  %gep2617 = getelementptr [8 x i8], ptr %invariant.gep2616, i64 %i.brq ; 2 uses
  %i.brr = load double, ptr %gep2617, align 8, !tbaa !9 ; 2 uses
  %gep2619 = getelementptr [8 x i8], ptr %invariant.gep2618, i64 %i.brq
  %i.brs = call double @llvm.fmuladd.f64(double %i.bro, double %store_forwarded3477, double %i.brr)
  %gep2621 = getelementptr [8 x i8], ptr %invariant.gep2620, i64 %i.brq ; 2 uses
  %i.brt = load double, ptr %gep2621, align 8, !tbaa !9 ; 2 uses
  %i.bru = call double @llvm.fmuladd.f64(double %i.brp, double %i.brt, double %i.brs)
  %i.brv = fmul double %i.bqi, %i.bru             ; 2 uses
  %i.brw = fsub double %i.brr, %i.brv
  store double %i.brw, ptr %gep2617, align 8, !tbaa !9
  %i.brx = fneg double %i.brv                     ; 2 uses
  %i.bry = call double @llvm.fmuladd.f64(double %i.brx, double %i.bro, double %store_forwarded3477)
  store double %i.bry, ptr %gep2619, align 8, !tbaa !9
  %i.brz = call double @llvm.fmuladd.f64(double %i.brx, double %i.brp, double %i.brt) ; 2 uses
  store double %i.brz, ptr %gep2621, align 8, !tbaa !9
  %i.bsa = mul nuw nsw i64 %indvars.iv2351, %i.kd ; 3 uses
  %gep2623 = getelementptr [8 x i8], ptr %invariant.gep2622, i64 %i.bsa ; 2 uses
  %i.bsb = load double, ptr %gep2623, align 8, !tbaa !9 ; 2 uses
  %gep2625 = getelementptr [8 x i8], ptr %invariant.gep2624, i64 %i.bsa
  %i.bsc = call double @llvm.fmuladd.f64(double %i.bro, double %store_forwarded, double %i.bsb)
  %gep2627 = getelementptr [8 x i8], ptr %invariant.gep2626, i64 %i.bsa ; 2 uses
  %i.bsd = load double, ptr %gep2627, align 8, !tbaa !9 ; 2 uses
  %i.bse = call double @llvm.fmuladd.f64(double %i.brp, double %i.bsd, double %i.bsc)
  %i.bsf = fmul double %i.bqi, %i.bse             ; 2 uses
  %i.bsg = fsub double %i.bsb, %i.bsf
  store double %i.bsg, ptr %gep2623, align 8, !tbaa !9
  %i.bsh = fneg double %i.bsf                     ; 2 uses
  %i.bsi = call double @llvm.fmuladd.f64(double %i.bsh, double %i.bro, double %store_forwarded)
  store double %i.bsi, ptr %gep2625, align 8, !tbaa !9
  %i.bsj = call double @llvm.fmuladd.f64(double %i.bsh, double %i.brp, double %i.bsd) ; 2 uses
  store double %i.bsj, ptr %gep2627, align 8, !tbaa !9
  %indvars.iv.next2352 = add nsw i64 %indvars.iv2351, 1 ; 2 uses
  %lftr.wideiv2355 = trunc i64 %indvars.iv.next2352 to i32
  %exitcond2356.not = icmp eq i32 %i.bml, %lftr.wideiv2355
  br i1 %exitcond2356.not, label %._crit_edge2140, label %bb.dd, !llvm.loop !91

._crit_edge2140:                                  ; preds = %bb.dd, %.ph3472.lver.orig, %bb.dc
  br i1 %.not1983.not, label %bb.de, label %.loopexit2090

bb.de:                                            ; preds = %._crit_edge2140
  %i.bsk = load i32, ptr %3, align 4, !tbaa !8    ; 6 uses
  %.not20162143 = icmp slt i32 %i.bsk, 1
  br i1 %.not20162143, label %.loopexit2090, label %.lr.ph2146

.lr.ph2146:                                       ; preds = %bb.de
  %i.bsl = load double, ptr %i.ak, align 8, !tbaa !9 ; 4 uses
  %i.bsm = mul nsw i64 %indvars.iv2349, %i.kf
  %i.bsn = load double, ptr %i.jr, align 8, !tbaa !9 ; 7 uses
  %i.bso = add nsw i64 %indvars.iv2349, 1
  %i.bsp = mul nsw i64 %i.bso, %i.kf
  %i.bsq = load double, ptr %i.js, align 16, !tbaa !9 ; 7 uses
  %i.bsr = add nsw i64 %indvars.iv2349, 2
  %i.bss = mul nsw i64 %i.bsr, %i.kf
  %i.bst = add nuw i32 %i.bsk, 1
  %wide.trip.count2361 = zext i32 %i.bst to i64   ; 2 uses
  %invariant.gep2628 = getelementptr [8 x i8], ptr %i.ay, i64 %i.bsm ; 5 uses
end_hunk_1
