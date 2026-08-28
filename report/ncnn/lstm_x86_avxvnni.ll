Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avxvnni?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !42
  %i.aam = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.zl
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !42
  %i.aao = getelementptr inbounds nuw i8, ptr %.89641434, i64 9
  store i8 %i.aan, ptr %i.aao, align 1, !tbaa !42
  %i.aap = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv1618
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !42
  %i.aar = getelementptr inbounds nuw i8, ptr %.89641434, i64 10
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !42
  %i.aas = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.zl
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !42
  %i.aau = getelementptr inbounds nuw i8, ptr %.89641434, i64 11
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !42
  %i.aav = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv1618
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !42
  %i.aax = getelementptr inbounds nuw i8, ptr %.89641434, i64 12
  store i8 %i.aaw, ptr %i.aax, align 1, !tbaa !42
  %i.aay = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.zl
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !42
  %i.aba = getelementptr inbounds nuw i8, ptr %.89641434, i64 13
  store i8 %i.aaz, ptr %i.aba, align 1, !tbaa !42
  %i.abb = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv1618
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !42
  %i.abd = getelementptr inbounds nuw i8, ptr %.89641434, i64 14
  store i8 %i.abc, ptr %i.abd, align 1, !tbaa !42
  %i.abe = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.zl
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !42
  %i.abg = getelementptr inbounds nuw i8, ptr %.89641434, i64 15
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !42
  %i.abh = getelementptr inbounds nuw i8, ptr %.89641434, i64 16 ; 2 uses
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 2 ; 3 uses
  %i.abi = or disjoint i64 %indvars.iv.next1619, 1 ; 2 uses
  %i.abj = load i32, ptr %13, align 4, !tbaa !9   ; 2 uses
  %i.abk = trunc nuw i64 %i.abi to i32
  %i.abl = icmp sgt i32 %i.abj, %i.abk
  br i1 %i.abl, label %.lr.ph1437, label %.preheader1344.loopexit, !llvm.loop !52

.lr.ph1442:                                       ; preds = %.lr.ph1442.preheader, %.lr.ph1442
  %indvars.iv1621 = phi i64 [ %i.zk, %.lr.ph1442.preheader ], [ %indvars.iv.next1622, %.lr.ph1442 ] ; 9 uses
  %.99651440 = phi ptr [ %.8964.lcssa, %.lr.ph1442.preheader ], [ %i.acj, %.lr.ph1442 ] ; 9 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv1621
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !42
  store i8 %i.abn, ptr %.99651440, align 1, !tbaa !42
  %i.abo = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv1621
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !42
  %i.abq = getelementptr inbounds nuw i8, ptr %.99651440, i64 1
  store i8 %i.abp, ptr %i.abq, align 1, !tbaa !42
  %i.abr = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv1621
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !42
  %i.abt = getelementptr inbounds nuw i8, ptr %.99651440, i64 2
  store i8 %i.abs, ptr %i.abt, align 1, !tbaa !42
  %i.abu = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv1621
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !42
  %i.abw = getelementptr inbounds nuw i8, ptr %.99651440, i64 3
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !42
  %i.abx = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv1621
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !42
  %i.abz = getelementptr inbounds nuw i8, ptr %.99651440, i64 4
  store i8 %i.aby, ptr %i.abz, align 1, !tbaa !42
  %i.aca = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv1621
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !42
  %i.acc = getelementptr inbounds nuw i8, ptr %.99651440, i64 5
  store i8 %i.acb, ptr %i.acc, align 1, !tbaa !42
  %i.acd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv1621
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !42
  %i.acf = getelementptr inbounds nuw i8, ptr %.99651440, i64 6
  store i8 %i.ace, ptr %i.acf, align 1, !tbaa !42
  %i.acg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv1621
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !42
  %i.aci = getelementptr inbounds nuw i8, ptr %.99651440, i64 7
  store i8 %i.ach, ptr %i.aci, align 1, !tbaa !42
  %i.acj = getelementptr inbounds nuw i8, ptr %.99651440, i64 8
  %indvars.iv.next1622 = add nuw nsw i64 %indvars.iv1621, 1 ; 2 uses
  %i.ack = load i32, ptr %13, align 4, !tbaa !9
  %i.acl = trunc nuw i64 %indvars.iv.next1622 to i32
  %i.acm = icmp sgt i32 %i.ack, %i.acl
  br i1 %i.acm, label %.lr.ph1442, label %._crit_edge1443, !llvm.loop !53

._crit_edge1443:                                  ; preds = %.lr.ph1442, %.preheader1344
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv1624
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !40
  %i.acp = fdiv fast float 1.000000e+00, %i.aco
  store float %i.acp, ptr %i.gi, align 4, !tbaa !40
  %i.acq = load i32, ptr %11, align 4, !tbaa !9   ; 6 uses
  %i.acr = add nsw i32 %i.acq, %i.el
  %i.acs = sext i32 %i.acr to i64                 ; 2 uses
  %i.act = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.acs ; 2 uses
  %i.acu = load float, ptr %i.act, align 4, !tbaa !40
  %i.acv = fdiv fast float 1.000000e+00, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store float %i.acv, ptr %i.acw, align 4, !tbaa !40
  %i.acx = shl nsw i32 %i.acq, 1
  %i.acy = add nsw i32 %i.acx, %i.el
  %i.acz = sext i32 %i.acy to i64                 ; 2 uses
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.acz ; 2 uses
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !40
  %i.adc = fdiv fast float 1.000000e+00, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.adc, ptr %i.add, align 4, !tbaa !40
  %i.ade = mul nsw i32 %i.acq, 3
  %i.adf = add nsw i32 %i.ade, %i.el
  %i.adg = sext i32 %i.adf to i64                 ; 2 uses
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.adg ; 2 uses
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !40
  %i.adj = fdiv fast float 1.000000e+00, %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store float %i.adj, ptr %i.adk, align 4, !tbaa !40
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dk
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !40
  %i.adn = fdiv fast float 1.000000e+00, %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float %i.adn, ptr %i.ado, align 4, !tbaa !40
  %i.adp = getelementptr i8, ptr %i.act, i64 4
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !40
  %i.adr = fdiv fast float 1.000000e+00, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store float %i.adr, ptr %i.ads, align 4, !tbaa !40
  %i.adt = getelementptr i8, ptr %i.ada, i64 4
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !40
  %i.adv = fdiv fast float 1.000000e+00, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store float %i.adv, ptr %i.adw, align 4, !tbaa !40
  %i.adx = getelementptr i8, ptr %i.adh, i64 4
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !40
  %i.adz = fdiv fast float 1.000000e+00, %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  store float %i.adz, ptr %i.aea, align 4, !tbaa !40
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1624
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !40
  %i.aed = fdiv fast float 1.000000e+00, %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store float %i.aed, ptr %i.aee, align 4, !tbaa !40
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.acs ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !40
  %i.aeh = fdiv fast float 1.000000e+00, %i.aeg
  %i.aei = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store float %i.aeh, ptr %i.aei, align 4, !tbaa !40
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.acz ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !40
  %i.ael = fdiv fast float 1.000000e+00, %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store float %i.ael, ptr %i.aem, align 4, !tbaa !40
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.adg ; 2 uses
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !40
  %i.aep = fdiv fast float 1.000000e+00, %i.aeo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  store float %i.aep, ptr %i.aeq, align 4, !tbaa !40
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dk
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !40
  %i.aet = fdiv fast float 1.000000e+00, %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !40
  %i.aev = getelementptr i8, ptr %i.aef, i64 4
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !40
  %i.aex = fdiv fast float 1.000000e+00, %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %i.gi, i64 52
  store float %i.aex, ptr %i.aey, align 4, !tbaa !40
  %i.aez = getelementptr i8, ptr %i.aej, i64 4
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !40
  %i.afb = fdiv fast float 1.000000e+00, %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  store float %i.afb, ptr %i.afc, align 4, !tbaa !40
  %i.afd = getelementptr i8, ptr %i.aen, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !40
  %i.aff = fdiv fast float 1.000000e+00, %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %i.gi, i64 60
  store float %i.aff, ptr %i.afg, align 4, !tbaa !40
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 2 ; 3 uses
  %i.afh = or disjoint i64 %indvars.iv.next1625, 1
  %i.afi = sext i32 %i.acq to i64
  %i.afj = icmp slt i64 %i.afh, %i.afi
  br i1 %i.afj, label %bb.c, label %.preheader1347.loopexit, !llvm.loop !54

bb.d:                                             ; preds = %.lr.ph1528, %._crit_edge1525
  %indvars.iv1657 = phi i64 [ %i.di, %.lr.ph1528 ], [ %indvars.iv.next1658, %._crit_edge1525 ] ; 10 uses
  %i.afk = phi i32 [ %i.dc, %.lr.ph1528 ], [ %i.awi, %._crit_edge1525 ] ; 3 uses
  %.19691526 = phi ptr [ %.0968.lcssa, %.lr.ph1528 ], [ %i.afw, %._crit_edge1525 ] ; 5 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv1657
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !40
  store float %i.afm, ptr %.19691526, align 4, !tbaa !40
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv1657
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !40
  %i.afp = getelementptr inbounds nuw i8, ptr %.19691526, i64 4
  store float %i.afo, ptr %i.afp, align 4, !tbaa !40
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1657
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !40
  %i.afs = getelementptr inbounds nuw i8, ptr %.19691526, i64 8
  store float %i.afr, ptr %i.afs, align 4, !tbaa !40
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv1657
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !40
  %i.afv = getelementptr inbounds nuw i8, ptr %.19691526, i64 12
  store float %i.afu, ptr %i.afv, align 4, !tbaa !40
  %i.afw = getelementptr inbounds nuw i8, ptr %.19691526, i64 16
  %i.afx = mul i64 %i.de, %indvars.iv1657
  %i.afy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.afx ; 9 uses
  %i.afz = trunc nuw nsw i64 %indvars.iv1657 to i32 ; 8 uses
  %i.aga = add nsw i32 %i.afk, %i.afz
  %i.agb = sext i32 %i.aga to i64                 ; 2 uses
  %i.agc = mul i64 %i.de, %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.agc ; 9 uses
  %i.age = shl nuw nsw i32 %i.afk, 1
  %i.agf = add nsw i32 %i.age, %i.afz
  %i.agg = sext i32 %i.agf to i64                 ; 2 uses
  %i.agh = mul i64 %i.de, %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.agh ; 9 uses
  %i.agj = mul nuw nsw i32 %i.afk, 3
  %i.agk = add nuw nsw i32 %i.agj, %i.afz
  %14 = zext nneg i32 %i.agk to i64               ; 2 uses
  %i.agl = mul i64 %i.de, %14
  %i.agm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.agl ; 9 uses
  %i.agn = mul i64 %i.df, %indvars.iv1657
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.agn ; 9 uses
  %i.agp = mul i64 %i.df, %i.agb
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.agp ; 9 uses
  %i.agr = mul i64 %i.df, %i.agg
  %i.ags = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.agr ; 9 uses
  %i.agt = mul i64 %i.df, %14
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.agt ; 9 uses
  %i.agv = lshr i32 %i.afz, 1
  %i.agw = and i32 %i.afz, 1
  %i.agx = add nuw nsw i32 %i.agv, %i.agw
  %i.agy = zext nneg i32 %i.agx to i64            ; 2 uses
  %i.agz = mul i64 %i.dg, %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.agz ; 2 uses
  %i.ahb = mul i64 %i.dh, %i.agy
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ahb ; 8 uses
  %i.ahd = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.ahe = icmp sgt i32 %i.ahd, 15
  br i1 %i.ahe, label %.lr.ph1452, label %._crit_edge1453

.lr.ph1452:                                       ; preds = %bb.d, %.lr.ph1452
  %indvars.iv1627 = phi i64 [ %indvars.iv.next1628, %.lr.ph1452 ], [ 0, %bb.d ] ; 5 uses
  %.09361449 = phi ptr [ %i.aic, %.lr.ph1452 ], [ %i.aha, %bb.d ] ; 5 uses
  %i.ahf = phi <4 x i32> [ %i.aib, %.lr.ph1452 ], [ zeroinitializer, %bb.d ]
  %i.ahg = phi <4 x i32> [ %i.ahz, %.lr.ph1452 ], [ zeroinitializer, %bb.d ]
  %i.ahh = phi <4 x i32> [ %i.ahx, %.lr.ph1452 ], [ zeroinitializer, %bb.d ]
  %i.ahi = phi <4 x i32> [ %i.ahv, %.lr.ph1452 ], [ zeroinitializer, %bb.d ]
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.afy, i64 %indvars.iv1627
  %i.ahk = load <2 x i64>, ptr %i.ahj, align 1, !tbaa !42 ; 2 uses
  store <2 x i64> %i.ahk, ptr %.09361449, align 1, !tbaa !42
  %i.ahl = getelementptr inbounds nuw i8, ptr %.09361449, i64 16
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agd, i64 %indvars.iv1627
  %i.ahn = load <2 x i64>, ptr %i.ahm, align 1, !tbaa !42 ; 2 uses
  store <2 x i64> %i.ahn, ptr %i.ahl, align 1, !tbaa !42
  %i.aho = getelementptr inbounds nuw i8, ptr %.09361449, i64 32
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agi, i64 %indvars.iv1627
  %i.ahq = load <2 x i64>, ptr %i.ahp, align 1, !tbaa !42 ; 2 uses
  store <2 x i64> %i.ahq, ptr %i.aho, align 1, !tbaa !42
  %i.ahr = getelementptr inbounds nuw i8, ptr %.09361449, i64 48
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agm, i64 %indvars.iv1627
  %i.aht = load <2 x i64>, ptr %i.ahs, align 1, !tbaa !42 ; 2 uses
  store <2 x i64> %i.aht, ptr %i.ahr, align 1, !tbaa !42
  %i.ahu = bitcast <2 x i64> %i.ahk to <16 x i8>
  %i.ahv = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ahi, <16 x i8> splat (i8 127), <16 x i8> %i.ahu) ; 2 uses
  %i.ahw = bitcast <2 x i64> %i.ahn to <16 x i8>
  %i.ahx = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ahh, <16 x i8> splat (i8 127), <16 x i8> %i.ahw) ; 2 uses
  %i.ahy = bitcast <2 x i64> %i.ahq to <16 x i8>
  %i.ahz = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ahg, <16 x i8> splat (i8 127), <16 x i8> %i.ahy) ; 2 uses
  %i.aia = bitcast <2 x i64> %i.aht to <16 x i8>
  %i.aib = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ahf, <16 x i8> splat (i8 127), <16 x i8> %i.aia) ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.09361449, i64 64 ; 2 uses
  %indvars.iv.next1628 = add nuw nsw i64 %indvars.iv1627, 16 ; 3 uses
  %i.aid = or disjoint i64 %indvars.iv.next1628, 15
  %i.aie = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.aif = sext i32 %i.aie to i64
  %i.aig = icmp slt i64 %i.aid, %i.aif
  br i1 %i.aig, label %.lr.ph1452, label %._crit_edge1453.loopexit, !llvm.loop !55

._crit_edge1453.loopexit:                         ; preds = %.lr.ph1452
  %i.aih = trunc nuw nsw i64 %indvars.iv.next1628 to i32
  br label %._crit_edge1453

._crit_edge1453:                                  ; preds = %._crit_edge1453.loopexit, %bb.d
  %i.aii = phi i32 [ %i.ahd, %bb.d ], [ %i.aie, %._crit_edge1453.loopexit ] ; 2 uses
  %.lcssa1362 = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.ahv, %._crit_edge1453.loopexit ] ; 2 uses
  %.lcssa1361 = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.ahx, %._crit_edge1453.loopexit ] ; 2 uses
  %.lcssa1360 = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.ahz, %._crit_edge1453.loopexit ] ; 2 uses
  %.lcssa1359 = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %i.aib, %._crit_edge1453.loopexit ] ; 2 uses
  %.0936.lcssa = phi ptr [ %i.aha, %bb.d ], [ %i.aic, %._crit_edge1453.loopexit ] ; 2 uses
  %.0935.lcssa = phi i32 [ 0, %bb.d ], [ %i.aih, %._crit_edge1453.loopexit ] ; 3 uses
  %i.aij = shufflevector <4 x i32> %.lcssa1362, <4 x i32> %.lcssa1361, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aik = bitcast <4 x i32> %i.aij to <2 x i64>  ; 2 uses
  %i.ail = shufflevector <4 x i32> %.lcssa1362, <4 x i32> %.lcssa1361, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aim = bitcast <4 x i32> %i.ail to <2 x i64>  ; 2 uses
  %i.ain = shufflevector <4 x i32> %.lcssa1360, <4 x i32> %.lcssa1359, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aio = bitcast <4 x i32> %i.ain to <2 x i64>  ; 2 uses
  %i.aip = shufflevector <4 x i32> %.lcssa1360, <4 x i32> %.lcssa1359, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aiq = bitcast <4 x i32> %i.aip to <2 x i64>  ; 2 uses
  %i.air = shufflevector <2 x i64> %i.aik, <2 x i64> %i.aio, <2 x i32> <i32 0, i32 2>
  %i.ais = shufflevector <2 x i64> %i.aik, <2 x i64> %i.aio, <2 x i32> <i32 1, i32 3>
  %i.ait = shufflevector <2 x i64> %i.aim, <2 x i64> %i.aiq, <2 x i32> <i32 0, i32 2>
  %i.aiu = shufflevector <2 x i64> %i.aim, <2 x i64> %i.aiq, <2 x i32> <i32 1, i32 3>
  %i.aiv = bitcast <2 x i64> %i.air to <4 x i32>
  %i.aiw = bitcast <2 x i64> %i.ais to <4 x i32>
  %i.aix = add <4 x i32> %i.aiv, %i.aiw
  %i.aiy = bitcast <2 x i64> %i.ait to <4 x i32>
  %i.aiz = add <4 x i32> %i.aix, %i.aiy
  %i.aja = bitcast <2 x i64> %i.aiu to <4 x i32>
  %i.ajb = add <4 x i32> %i.aiz, %i.aja
  %i.ajc = or disjoint i32 %.0935.lcssa, 7
  %i.ajd = icmp slt i32 %i.ajc, %i.aii
  br i1 %i.ajd, label %.lr.ph1463.preheader, label %._crit_edge1464

.lr.ph1463.preheader:                             ; preds = %._crit_edge1453
  %i.aje = zext nneg i32 %.0935.lcssa to i64
  br label %.lr.ph1463

.lr.ph1463:                                       ; preds = %.lr.ph1463.preheader, %.lr.ph1463
  %indvars.iv1630 = phi i64 [ %i.aje, %.lr.ph1463.preheader ], [ %indvars.iv.next1631, %.lr.ph1463 ] ; 5 uses
  %.19371460 = phi ptr [ %.0936.lcssa, %.lr.ph1463.preheader ], [ %i.ajw, %.lr.ph1463 ] ; 6 uses
  %i.ajf = phi <4 x i32> [ zeroinitializer, %.lr.ph1463.preheader ], [ %i.ajv, %.lr.ph1463 ]
  %i.ajg = phi <4 x i32> [ zeroinitializer, %.lr.ph1463.preheader ], [ %i.aju, %.lr.ph1463 ]
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.afy, i64 %indvars.iv1630
  %i.aji = load i64, ptr %i.ajh, align 1, !tbaa !42
  store i64 %i.aji, ptr %.19371460, align 1, !tbaa !42
  %i.ajj = getelementptr inbounds nuw i8, ptr %.19371460, i64 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.agd, i64 %indvars.iv1630
  %i.ajl = load i64, ptr %i.ajk, align 1, !tbaa !42
  store i64 %i.ajl, ptr %i.ajj, align 1, !tbaa !42
  %i.ajm = getelementptr inbounds nuw i8, ptr %.19371460, i64 16 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.agi, i64 %indvars.iv1630
  %i.ajo = load i64, ptr %i.ajn, align 1, !tbaa !42
  store i64 %i.ajo, ptr %i.ajm, align 1, !tbaa !42
  %i.ajp = getelementptr inbounds nuw i8, ptr %.19371460, i64 24
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.agm, i64 %indvars.iv1630
  %i.ajr = load i64, ptr %i.ajq, align 1, !tbaa !42
  store i64 %i.ajr, ptr %i.ajp, align 1, !tbaa !42
  %i.ajs = load <16 x i8>, ptr %.19371460, align 1, !tbaa !42
  %i.ajt = load <16 x i8>, ptr %i.ajm, align 1, !tbaa !42
  %i.aju = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ajg, <16 x i8> splat (i8 127), <16 x i8> %i.ajs) ; 2 uses
  %i.ajv = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ajf, <16 x i8> splat (i8 127), <16 x i8> %i.ajt) ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.19371460, i64 32 ; 2 uses
  %indvars.iv.next1631 = add nuw nsw i64 %indvars.iv1630, 8 ; 3 uses
  %i.ajx = or disjoint i64 %indvars.iv.next1631, 7
  %i.ajy = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = icmp slt i64 %i.ajx, %i.ajz
  br i1 %i.aka, label %.lr.ph1463, label %._crit_edge1464.loopexit, !llvm.loop !56

._crit_edge1464.loopexit:                         ; preds = %.lr.ph1463
  %i.akb = trunc nuw nsw i64 %indvars.iv.next1631 to i32
  br label %._crit_edge1464

._crit_edge1464:                                  ; preds = %._crit_edge1464.loopexit, %._crit_edge1453
  %i.akc = phi i32 [ %i.aii, %._crit_edge1453 ], [ %i.ajy, %._crit_edge1464.loopexit ]
  %.lcssa1364 = phi <4 x i32> [ zeroinitializer, %._crit_edge1453 ], [ %i.aju, %._crit_edge1464.loopexit ]
  %.lcssa1363 = phi <4 x i32> [ zeroinitializer, %._crit_edge1453 ], [ %i.ajv, %._crit_edge1464.loopexit ]
  %.1937.lcssa = phi ptr [ %.0936.lcssa, %._crit_edge1453 ], [ %i.ajw, %._crit_edge1464.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0935.lcssa, %._crit_edge1453 ], [ %i.akb, %._crit_edge1464.loopexit ] ; 3 uses
  %i.akd = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa1364, <4 x i32> %.lcssa1363)
  %i.ake = add <4 x i32> %i.ajb, %i.akd           ; 2 uses
  %i.akf = or disjoint i32 %.1.lcssa, 3           ; 2 uses
  %i.akg = icmp slt i32 %i.akf, %i.akc
  br i1 %i.akg, label %.lr.ph1473.preheader, label %._crit_edge1474

.lr.ph1473.preheader:                             ; preds = %._crit_edge1464
  %i.akh = zext nneg i32 %.1.lcssa to i64
  %i.aki = zext nneg i32 %i.akf to i64
  br label %.lr.ph1473

.lr.ph1473:                                       ; preds = %.lr.ph1473.preheader, %.lr.ph1473
  %indvars.iv1633 = phi i64 [ %i.akh, %.lr.ph1473.preheader ], [ %indvars.iv.next1634, %.lr.ph1473 ] ; 7 uses
  %i.akj = phi i64 [ %i.aki, %.lr.ph1473.preheader ], [ %i.amk, %.lr.ph1473 ] ; 4 uses
  %.29381470 = phi ptr [ %.1937.lcssa, %.lr.ph1473.preheader ], [ %i.amj, %.lr.ph1473 ] ; 18 uses
  %.01326.in1469 = phi <4 x i32> [ %i.ake, %.lr.ph1473.preheader ], [ %i.ami, %.lr.ph1473 ]
  %i.akk = getelementptr inbounds nuw i8, ptr %i.afy, i64 %indvars.iv1633
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !42
  store i8 %i.akl, ptr %.29381470, align 1, !tbaa !42
  %i.akm = or disjoint i64 %indvars.iv1633, 1     ; 4 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.akm
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !42
  %i.akp = getelementptr inbounds nuw i8, ptr %.29381470, i64 1
  store i8 %i.ako, ptr %i.akp, align 1, !tbaa !42
  %i.akq = or disjoint i64 %indvars.iv1633, 2     ; 4 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.akq
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !42
  %i.akt = getelementptr inbounds nuw i8, ptr %.29381470, i64 2
  store i8 %i.aks, ptr %i.akt, align 1, !tbaa !42
  %i.aku = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.akj
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !42
  %i.akw = getelementptr inbounds nuw i8, ptr %.29381470, i64 3
  store i8 %i.akv, ptr %i.akw, align 1, !tbaa !42
  %i.akx = getelementptr inbounds nuw i8, ptr %i.agd, i64 %indvars.iv1633
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !42
  %i.akz = getelementptr inbounds nuw i8, ptr %.29381470, i64 4
  store i8 %i.aky, ptr %i.akz, align 1, !tbaa !42
  %i.ala = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.akm
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !42
  %i.alc = getelementptr inbounds nuw i8, ptr %.29381470, i64 5
  store i8 %i.alb, ptr %i.alc, align 1, !tbaa !42
  %i.ald = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.akq
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !42
  %i.alf = getelementptr inbounds nuw i8, ptr %.29381470, i64 6
  store i8 %i.ale, ptr %i.alf, align 1, !tbaa !42
  %i.alg = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.akj
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !42
  %i.ali = getelementptr inbounds nuw i8, ptr %.29381470, i64 7
  store i8 %i.alh, ptr %i.ali, align 1, !tbaa !42
  %i.alj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %indvars.iv1633
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !42
  %i.all = getelementptr inbounds nuw i8, ptr %.29381470, i64 8
  store i8 %i.alk, ptr %i.all, align 1, !tbaa !42
  %i.alm = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.akm
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !42
  %i.alo = getelementptr inbounds nuw i8, ptr %.29381470, i64 9
  store i8 %i.aln, ptr %i.alo, align 1, !tbaa !42
  %i.alp = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.akq
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !42
end_hunk_0
