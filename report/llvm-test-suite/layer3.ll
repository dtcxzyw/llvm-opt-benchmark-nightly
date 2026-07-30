inline.NumInlined: 29
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 67
begin_hunk_0_@init_layer3:bb.a
  %i.abj = getelementptr inbounds nuw i8, ptr %i.rx, i64 596
  store i32 %i.abe, ptr %i.abi, align 16, !tbaa !4
  %i.abk = or disjoint i32 %i.abb, 1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.rx, i64 600
  store i32 %i.abk, ptr %i.abj, align 4, !tbaa !4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.rx, i64 604
  store i32 1, ptr %i.abl, align 8, !tbaa !4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.rx, i64 608
  store i32 12, ptr %i.abm, align 4, !tbaa !4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.rx, i64 612
  store i32 %i.abe, ptr %i.abn, align 16, !tbaa !4
  %i.abp = add nsw i32 %i.abb, 2
  %i.abq = getelementptr inbounds nuw i8, ptr %i.rx, i64 616
  store i32 %i.abp, ptr %i.abo, align 4, !tbaa !4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.rx, i64 620
  store i32 2, ptr %i.abq, align 8, !tbaa !4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.rx, i64 624
  store i32 12, ptr %i.abr, align 4, !tbaa !4
  %i.abt = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !15
  %i.abu = getelementptr inbounds nuw [176 x i8], ptr @mapbuf2, i64 %indvars.iv496 ; 46 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %i.abu, ptr %i.abv, align 8, !tbaa !15
  %i.abw = load i16, ptr %i.he, align 2, !tbaa !18
  %i.abx = ashr i16 %i.abw, 1
  %i.aby = sext i16 %i.abx to i32
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 4
  store i32 %i.aby, ptr %i.abu, align 16, !tbaa !4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  store i32 0, ptr %i.abz, align 4, !tbaa !4
  %i.acb = load i16, ptr %i.hm, align 16, !tbaa !18
  %i.acc = ashr i16 %i.acb, 1
  %i.acd = sext i16 %i.acc to i32
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abu, i64 12
  store i32 %i.acd, ptr %i.aca, align 8, !tbaa !4
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  store i32 1, ptr %i.ace, align 4, !tbaa !4
  %i.acg = load i16, ptr %i.hv, align 2, !tbaa !18
  %i.ach = ashr i16 %i.acg, 1
  %i.aci = sext i16 %i.ach to i32
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abu, i64 20
  store i32 %i.aci, ptr %i.acf, align 16, !tbaa !4
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abu, i64 24
  store i32 2, ptr %i.acj, align 4, !tbaa !4
  %i.acl = load i16, ptr %i.if, align 4, !tbaa !18
  %i.acm = ashr i16 %i.acl, 1
  %i.acn = sext i16 %i.acm to i32
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abu, i64 28
  store i32 %i.acn, ptr %i.ack, align 8, !tbaa !4
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  store i32 3, ptr %i.aco, align 4, !tbaa !4
  %i.acq = load i16, ptr %i.ip, align 2, !tbaa !18
  %i.acr = ashr i16 %i.acq, 1
  %i.acs = sext i16 %i.acr to i32
  %i.act = getelementptr inbounds nuw i8, ptr %i.abu, i64 36
  store i32 %i.acs, ptr %i.acp, align 16, !tbaa !4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abu, i64 40
  store i32 4, ptr %i.act, align 4, !tbaa !4
  %i.acv = load i16, ptr %i.iz, align 8, !tbaa !18
  %i.acw = ashr i16 %i.acv, 1
  %i.acx = sext i16 %i.acw to i32
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abu, i64 44
  store i32 %i.acx, ptr %i.acu, align 8, !tbaa !4
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  store i32 5, ptr %i.acy, align 4, !tbaa !4
  %i.ada = load i16, ptr %i.jj, align 2, !tbaa !18
  %i.adb = ashr i16 %i.ada, 1
  %i.adc = sext i16 %i.adb to i32
  %i.add = getelementptr inbounds nuw i8, ptr %i.abu, i64 52
  store i32 %i.adc, ptr %i.acz, align 16, !tbaa !4
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abu, i64 56
  store i32 6, ptr %i.add, align 4, !tbaa !4
  %i.adf = getelementptr inbounds nuw i8, ptr %i.hb, i64 62
  %i.adg = load i16, ptr %i.jt, align 4, !tbaa !18
  %i.adh = ashr i16 %i.adg, 1
  %i.adi = sext i16 %i.adh to i32
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abu, i64 60
  store i32 %i.adi, ptr %i.ade, align 8, !tbaa !4
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abu, i64 64
  store i32 7, ptr %i.adj, align 4, !tbaa !4
  %i.adl = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.adm = load i16, ptr %i.adf, align 2, !tbaa !18
  %i.adn = ashr i16 %i.adm, 1
  %i.ado = sext i16 %i.adn to i32
  %i.adp = getelementptr inbounds nuw i8, ptr %i.abu, i64 68
  store i32 %i.ado, ptr %i.adk, align 16, !tbaa !4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abu, i64 72
  store i32 8, ptr %i.adp, align 4, !tbaa !4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.hb, i64 66
  %i.ads = load i16, ptr %i.adl, align 16, !tbaa !18
  %i.adt = ashr i16 %i.ads, 1
  %i.adu = sext i16 %i.adt to i32
  %i.adv = getelementptr inbounds nuw i8, ptr %i.abu, i64 76
  store i32 %i.adu, ptr %i.adq, align 8, !tbaa !4
  %i.adw = getelementptr inbounds nuw i8, ptr %i.abu, i64 80
  store i32 9, ptr %i.adv, align 4, !tbaa !4
  %i.adx = getelementptr inbounds nuw i8, ptr %i.hb, i64 68
  %i.ady = load i16, ptr %i.adr, align 2, !tbaa !18
  %i.adz = ashr i16 %i.ady, 1
  %i.aea = sext i16 %i.adz to i32
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abu, i64 84
  store i32 %i.aea, ptr %i.adw, align 16, !tbaa !4
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abu, i64 88
  store i32 10, ptr %i.aeb, align 4, !tbaa !4
  %i.aed = getelementptr inbounds nuw i8, ptr %i.hb, i64 70
  %i.aee = load i16, ptr %i.adx, align 4, !tbaa !18
  %i.aef = ashr i16 %i.aee, 1
  %i.aeg = sext i16 %i.aef to i32
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.abu, i64 92
  store i32 %i.aeg, ptr %i.aec, align 8, !tbaa !4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.abu, i64 96
  store i32 11, ptr %i.aeh, align 4, !tbaa !4
  %i.aej = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.aek = load i16, ptr %i.aed, align 2, !tbaa !18
  %i.ael = ashr i16 %i.aek, 1
  %i.aem = sext i16 %i.ael to i32
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abu, i64 100
  store i32 %i.aem, ptr %i.aei, align 16, !tbaa !4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.abu, i64 104
  store i32 12, ptr %i.aen, align 4, !tbaa !4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.hb, i64 74
  %i.aeq = load i16, ptr %i.aej, align 8, !tbaa !18
  %i.aer = ashr i16 %i.aeq, 1
  %i.aes = sext i16 %i.aer to i32
  %i.aet = getelementptr inbounds nuw i8, ptr %i.abu, i64 108
  store i32 %i.aes, ptr %i.aeo, align 8, !tbaa !4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.abu, i64 112
  store i32 13, ptr %i.aet, align 4, !tbaa !4
  %i.aev = getelementptr inbounds nuw i8, ptr %i.hb, i64 76
  %i.aew = load i16, ptr %i.aep, align 2, !tbaa !18
  %i.aex = ashr i16 %i.aew, 1
  %i.aey = sext i16 %i.aex to i32
  %i.aez = getelementptr inbounds nuw i8, ptr %i.abu, i64 116
  store i32 %i.aey, ptr %i.aeu, align 16, !tbaa !4
  %i.afa = getelementptr inbounds nuw i8, ptr %i.abu, i64 120
  store i32 14, ptr %i.aez, align 4, !tbaa !4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.hb, i64 78
  %i.afc = load i16, ptr %i.aev, align 4, !tbaa !18
  %i.afd = ashr i16 %i.afc, 1
  %i.afe = sext i16 %i.afd to i32
  %i.aff = getelementptr inbounds nuw i8, ptr %i.abu, i64 124
  store i32 %i.afe, ptr %i.afa, align 8, !tbaa !4
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abu, i64 128
  store i32 15, ptr %i.aff, align 4, !tbaa !4
  %i.afh = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  %i.afi = load i16, ptr %i.afb, align 2, !tbaa !18
  %i.afj = ashr i16 %i.afi, 1
  %i.afk = sext i16 %i.afj to i32
  %i.afl = getelementptr inbounds nuw i8, ptr %i.abu, i64 132
  store i32 %i.afk, ptr %i.afg, align 16, !tbaa !4
  %i.afm = getelementptr inbounds nuw i8, ptr %i.abu, i64 136
  store i32 16, ptr %i.afl, align 4, !tbaa !4
  %i.afn = getelementptr inbounds nuw i8, ptr %i.hb, i64 82
  %i.afo = load i16, ptr %i.afh, align 16, !tbaa !18
  %i.afp = ashr i16 %i.afo, 1
  %i.afq = sext i16 %i.afp to i32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.abu, i64 140
  store i32 %i.afq, ptr %i.afm, align 8, !tbaa !4
  %i.afs = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  store i32 17, ptr %i.afr, align 4, !tbaa !4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.hb, i64 84
  %i.afu = load i16, ptr %i.afn, align 2, !tbaa !18
  %i.afv = ashr i16 %i.afu, 1
  %i.afw = sext i16 %i.afv to i32
  %i.afx = getelementptr inbounds nuw i8, ptr %i.abu, i64 148
  store i32 %i.afw, ptr %i.afs, align 16, !tbaa !4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.abu, i64 152
  store i32 18, ptr %i.afx, align 4, !tbaa !4
  %i.afz = getelementptr inbounds nuw i8, ptr %i.hb, i64 86
  %i.aga = load i16, ptr %i.aft, align 4, !tbaa !18
  %i.agb = ashr i16 %i.aga, 1
  %i.agc = sext i16 %i.agb to i32
  %i.agd = getelementptr inbounds nuw i8, ptr %i.abu, i64 156
  store i32 %i.agc, ptr %i.afy, align 8, !tbaa !4
  %i.age = getelementptr inbounds nuw i8, ptr %i.abu, i64 160
  store i32 19, ptr %i.agd, align 4, !tbaa !4
  %i.agf = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.agg = load i16, ptr %i.afz, align 2, !tbaa !18
  %i.agh = ashr i16 %i.agg, 1
  %i.agi = sext i16 %i.agh to i32
  %i.agj = getelementptr inbounds nuw i8, ptr %i.abu, i64 164
  store i32 %i.agi, ptr %i.age, align 16, !tbaa !4
  %i.agk = getelementptr inbounds nuw i8, ptr %i.abu, i64 168
  store i32 20, ptr %i.agj, align 4, !tbaa !4
  %i.agl = load i16, ptr %i.agf, align 8, !tbaa !18
  %i.agm = ashr i16 %i.agl, 1
  %i.agn = sext i16 %i.agm to i32
  %i.ago = getelementptr inbounds nuw i8, ptr %i.abu, i64 172
  store i32 %i.agn, ptr %i.agk, align 8, !tbaa !4
  %i.agp = getelementptr inbounds nuw i8, ptr %i.abu, i64 176
  store i32 21, ptr %i.ago, align 4, !tbaa !4
  %i.agq = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store ptr %i.agp, ptr %i.agq, align 8, !tbaa !15
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond499.not = icmp eq i64 %indvars.iv.next497, 9
  br i1 %exitcond499.not, label %.preheader331.preheader, label %.preheader333, !llvm.loop !20

.preheader331.preheader:                          ; preds = %.preheader333
  %i.agr = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.ags = shufflevector <4 x i32> %i.agr, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  br label %.preheader331

.preheader331:                                    ; preds = %.preheader331.preheader, %.preheader331
  %indvars.iv508 = phi i64 [ %indvars.iv.next509, %.preheader331 ], [ 0, %.preheader331.preheader ] ; 4 uses
  %i.agt = getelementptr inbounds nuw [144 x i8], ptr @bandInfo, i64 %indvars.iv508 ; 13 uses
  %i.agu = getelementptr inbounds nuw [92 x i8], ptr @longLimit, i64 %indvars.iv508 ; 8 uses
  %i.agv = load <4 x i16>, ptr %i.agt, align 16, !tbaa !18
  %i.agw = sext <4 x i16> %i.agv to <4 x i32>
  %i.agx = add nsw <4 x i32> %i.agw, splat (i32 7)
  %i.agy = sdiv <4 x i32> %i.agx, splat (i32 18)  ; 2 uses
  %i.agz = add nsw <4 x i32> %i.agy, splat (i32 1)
  %i.aha = icmp slt <4 x i32> %i.agy, %i.ags
  %i.ahb = select <4 x i1> %i.aha, <4 x i32> %i.agz, <4 x i32> %i.ags
  store <4 x i32> %i.ahb, ptr %i.agu, align 4, !tbaa !4
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.ahe = load <4 x i16>, ptr %i.ahc, align 8, !tbaa !18
  %i.ahf = sext <4 x i16> %i.ahe to <4 x i32>
  %i.ahg = add nsw <4 x i32> %i.ahf, splat (i32 7)
  %i.ahh = sdiv <4 x i32> %i.ahg, splat (i32 18)  ; 2 uses
  %i.ahi = add nsw <4 x i32> %i.ahh, splat (i32 1)
  %i.ahj = icmp slt <4 x i32> %i.ahh, %i.ags
  %i.ahk = select <4 x i1> %i.ahj, <4 x i32> %i.ahi, <4 x i32> %i.ags
  store <4 x i32> %i.ahk, ptr %i.ahd, align 4, !tbaa !4
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.ahn = load <4 x i16>, ptr %i.ahl, align 16, !tbaa !18
  %i.aho = sext <4 x i16> %i.ahn to <4 x i32>
  %i.ahp = add nsw <4 x i32> %i.aho, splat (i32 7)
  %i.ahq = sdiv <4 x i32> %i.ahp, splat (i32 18)  ; 2 uses
  %i.ahr = add nsw <4 x i32> %i.ahq, splat (i32 1)
  %i.ahs = icmp slt <4 x i32> %i.ahq, %i.ags
  %i.aht = select <4 x i1> %i.ahs, <4 x i32> %i.ahr, <4 x i32> %i.ags
  store <4 x i32> %i.aht, ptr %i.ahm, align 4, !tbaa !4
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agt, i64 24
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agu, i64 48
  %i.ahw = load <4 x i16>, ptr %i.ahu, align 8, !tbaa !18
  %i.ahx = sext <4 x i16> %i.ahw to <4 x i32>
  %i.ahy = add nsw <4 x i32> %i.ahx, splat (i32 7)
  %i.ahz = sdiv <4 x i32> %i.ahy, splat (i32 18)  ; 2 uses
  %i.aia = add nsw <4 x i32> %i.ahz, splat (i32 1)
  %i.aib = icmp slt <4 x i32> %i.ahz, %i.ags
  %i.aic = select <4 x i1> %i.aib, <4 x i32> %i.aia, <4 x i32> %i.ags
  store <4 x i32> %i.aic, ptr %i.ahv, align 4, !tbaa !4
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agu, i64 64
  %i.aif = load <4 x i16>, ptr %i.aid, align 16, !tbaa !18
  %i.aig = sext <4 x i16> %i.aif to <4 x i32>
  %i.aih = add nsw <4 x i32> %i.aig, splat (i32 7)
  %i.aii = sdiv <4 x i32> %i.aih, splat (i32 18)  ; 2 uses
  %i.aij = add nsw <4 x i32> %i.aii, splat (i32 1)
  %i.aik = icmp slt <4 x i32> %i.aii, %i.ags
  %i.ail = select <4 x i1> %i.aik, <4 x i32> %i.aij, <4 x i32> %i.ags
  store <4 x i32> %i.ail, ptr %i.aie, align 4, !tbaa !4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  %1 = load i16, ptr %i.aim, align 8, !tbaa !18
  %2 = sext i16 %1 to i32
  %3 = add nsw i32 %2, 7
  %4 = sdiv i32 %3, 18                            ; 2 uses
  %5 = add nsw i32 %4, 1
  %6 = getelementptr inbounds nuw i8, ptr %i.agu, i64 80
  %.not310.20 = icmp slt i32 %4, %0
  %spec.select.20 = select i1 %.not310.20, i32 %5, i32 %0
  store i32 %spec.select.20, ptr %6, align 4, !tbaa !4
  %7 = getelementptr inbounds nuw i8, ptr %i.agt, i64 42
  %8 = load i16, ptr %7, align 2, !tbaa !18
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, 18                          ; 2 uses
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds nuw i8, ptr %i.agu, i64 84
  %.not310.21 = icmp slt i32 %11, %0
  %spec.select.21 = select i1 %.not310.21, i32 %12, i32 %0
  store i32 %spec.select.21, ptr %13, align 4, !tbaa !4
  %i.ain = getelementptr inbounds nuw i8, ptr %i.agt, i64 44
  %i.aio = load i16, ptr %i.ain, align 4, !tbaa !18
  %i.aip = sext i16 %i.aio to i32
  %i.aiq = add nsw i32 %i.aip, 7
  %i.air = sdiv i32 %i.aiq, 18                    ; 2 uses
  %i.ais = add nsw i32 %i.air, 1
  %i.ait = getelementptr inbounds nuw i8, ptr %i.agu, i64 88
  %.not310.22 = icmp slt i32 %i.air, %0
  %spec.select.22 = select i1 %.not310.22, i32 %i.ais, i32 %0
  store i32 %spec.select.22, ptr %i.ait, align 4, !tbaa !4
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.agt, i64 90
  %i.aiv = getelementptr inbounds nuw [56 x i8], ptr @shortLimit, i64 %indvars.iv508 ; 5 uses
  %i.aiw = load <4 x i16>, ptr %i.aiu, align 2, !tbaa !18
  %i.aix = sext <4 x i16> %i.aiw to <4 x i32>
  %i.aiy = add nsw <4 x i32> %i.aix, splat (i32 -1)
  %i.aiz = sdiv <4 x i32> %i.aiy, splat (i32 18)  ; 2 uses
  %i.aja = add nsw <4 x i32> %i.aiz, splat (i32 1)
  %i.ajb = icmp slt <4 x i32> %i.aiz, %i.ags
  %i.ajc = select <4 x i1> %i.ajb, <4 x i32> %i.aja, <4 x i32> %i.ags
  store <4 x i32> %i.ajc, ptr %i.aiv, align 8, !tbaa !4
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.agt, i64 98
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %i.ajf = load <4 x i16>, ptr %i.ajd, align 2, !tbaa !18
  %i.ajg = sext <4 x i16> %i.ajf to <4 x i32>
  %i.ajh = add nsw <4 x i32> %i.ajg, splat (i32 -1)
  %i.aji = sdiv <4 x i32> %i.ajh, splat (i32 18)  ; 2 uses
  %i.ajj = add nsw <4 x i32> %i.aji, splat (i32 1)
  %i.ajk = icmp slt <4 x i32> %i.aji, %i.ags
  %i.ajl = select <4 x i1> %i.ajk, <4 x i32> %i.ajj, <4 x i32> %i.ags
  store <4 x i32> %i.ajl, ptr %i.aje, align 8, !tbaa !4
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.agt, i64 106
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %i.ajo = load <4 x i16>, ptr %i.ajm, align 2, !tbaa !18
  %i.ajp = sext <4 x i16> %i.ajo to <4 x i32>
  %i.ajq = add nsw <4 x i32> %i.ajp, splat (i32 -1)
  %i.ajr = sdiv <4 x i32> %i.ajq, splat (i32 18)  ; 2 uses
  %i.ajs = add nsw <4 x i32> %i.ajr, splat (i32 1)
  %i.ajt = icmp slt <4 x i32> %i.ajr, %i.ags
  %i.aju = select <4 x i1> %i.ajt, <4 x i32> %i.ajs, <4 x i32> %i.ags
  store <4 x i32> %i.aju, ptr %i.ajn, align 8, !tbaa !4
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agt, i64 114
  %14 = load i16, ptr %i.ajv, align 2, !tbaa !18
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = sdiv i32 %16, 18                          ; 2 uses
  %18 = add nsw i32 %17, 1
  %19 = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %.not.12 = icmp slt i32 %17, %0
  %spec.select315.12 = select i1 %.not.12, i32 %18, i32 %0
  store i32 %spec.select315.12, ptr %19, align 8, !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %i.agt, i64 116
  %21 = load i16, ptr %20, align 4, !tbaa !18
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = sdiv i32 %23, 18                          ; 2 uses
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds nuw i8, ptr %i.aiv, i64 52
  %.not.13 = icmp slt i32 %24, %0
  %spec.select315.13 = select i1 %.not.13, i32 %25, i32 %0
  store i32 %spec.select315.13, ptr %26, align 4, !tbaa !4
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next509, 9
  br i1 %exitcond511.not, label %.preheader328.preheader, label %.preheader331, !llvm.loop !21

.preheader328.preheader:                          ; preds = %.preheader331
  store <4 x i32> <i32 12288, i32 12352, i32 12416, i32 12480>, ptr @i_slen2, align 16, !tbaa !4
  store <4 x i32> <i32 12544, i32 12608, i32 12296, i32 12360>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 16), align 16, !tbaa !4
  store <4 x i32> <i32 12424, i32 12488, i32 12552, i32 12616>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 32), align 16, !tbaa !4
  store <4 x i32> <i32 12304, i32 12368, i32 12432, i32 12496>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 48), align 16, !tbaa !4
  store <4 x i32> <i32 12560, i32 12624, i32 12312, i32 12376>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 64), align 16, !tbaa !4
  store <4 x i32> <i32 12440, i32 12504, i32 12568, i32 12632>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 80), align 16, !tbaa !4
  store <4 x i32> <i32 12320, i32 12384, i32 12448, i32 12512>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 96), align 16, !tbaa !4
  store <4 x i32> <i32 12576, i32 12640, i32 12328, i32 12392>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 112), align 16, !tbaa !4
  store <4 x i32> <i32 12456, i32 12520, i32 12584, i32 12648>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 128), align 16, !tbaa !4
  store <4 x i32> <i32 12289, i32 12353, i32 12417, i32 12481>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 144), align 16, !tbaa !4
  store <4 x i32> <i32 12545, i32 12609, i32 12297, i32 12361>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 160), align 16, !tbaa !4
  store <4 x i32> <i32 12425, i32 12489, i32 12553, i32 12617>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 176), align 16, !tbaa !4
  store <4 x i32> <i32 12305, i32 12369, i32 12433, i32 12497>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 192), align 16, !tbaa !4
  store <4 x i32> <i32 12561, i32 12625, i32 12313, i32 12377>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 208), align 16, !tbaa !4
  store <4 x i32> <i32 12441, i32 12505, i32 12569, i32 12633>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 224), align 16, !tbaa !4
  store <4 x i32> <i32 12321, i32 12385, i32 12449, i32 12513>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 240), align 16, !tbaa !4
  store <4 x i32> <i32 12577, i32 12641, i32 12329, i32 12393>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 256), align 16, !tbaa !4
  store <4 x i32> <i32 12457, i32 12521, i32 12585, i32 12649>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 272), align 16, !tbaa !4
  store <4 x i32> <i32 12290, i32 12354, i32 12418, i32 12482>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 288), align 16, !tbaa !4
  store <4 x i32> <i32 12546, i32 12610, i32 12298, i32 12362>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 304), align 16, !tbaa !4
  store <4 x i32> <i32 12426, i32 12490, i32 12554, i32 12618>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 320), align 16, !tbaa !4
  store <4 x i32> <i32 12306, i32 12370, i32 12434, i32 12498>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 336), align 16, !tbaa !4
  store <4 x i32> <i32 12562, i32 12626, i32 12314, i32 12378>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 352), align 16, !tbaa !4
  store <4 x i32> <i32 12442, i32 12506, i32 12570, i32 12634>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 368), align 16, !tbaa !4
  store <4 x i32> <i32 12322, i32 12386, i32 12450, i32 12514>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 384), align 16, !tbaa !4
  store <4 x i32> <i32 12578, i32 12642, i32 12330, i32 12394>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 400), align 16, !tbaa !4
  store <4 x i32> <i32 12458, i32 12522, i32 12586, i32 12650>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 416), align 16, !tbaa !4
  store <4 x i32> <i32 12291, i32 12355, i32 12419, i32 12483>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 432), align 16, !tbaa !4
  store <4 x i32> <i32 12547, i32 12611, i32 12299, i32 12363>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 448), align 16, !tbaa !4
  store <4 x i32> <i32 12427, i32 12491, i32 12555, i32 12619>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 464), align 16, !tbaa !4
  store <4 x i32> <i32 12307, i32 12371, i32 12435, i32 12499>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 480), align 16, !tbaa !4
  store <4 x i32> <i32 12563, i32 12627, i32 12315, i32 12379>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 496), align 16, !tbaa !4
  store <4 x i32> <i32 12443, i32 12507, i32 12571, i32 12635>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 512), align 16, !tbaa !4
  store <4 x i32> <i32 12323, i32 12387, i32 12451, i32 12515>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 528), align 16, !tbaa !4
  store <4 x i32> <i32 12579, i32 12643, i32 12331, i32 12395>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 544), align 16, !tbaa !4
  store <4 x i32> <i32 12459, i32 12523, i32 12587, i32 12651>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 560), align 16, !tbaa !4
  store <4 x i32> <i32 12292, i32 12356, i32 12420, i32 12484>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 576), align 16, !tbaa !4
  store <4 x i32> <i32 12548, i32 12612, i32 12300, i32 12364>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 592), align 16, !tbaa !4
  store <4 x i32> <i32 12428, i32 12492, i32 12556, i32 12620>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 608), align 16, !tbaa !4
  store <4 x i32> <i32 12308, i32 12372, i32 12436, i32 12500>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 624), align 16, !tbaa !4
  store <4 x i32> <i32 12564, i32 12628, i32 12316, i32 12380>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 640), align 16, !tbaa !4
  store <4 x i32> <i32 12444, i32 12508, i32 12572, i32 12636>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 656), align 16, !tbaa !4
  store <4 x i32> <i32 12324, i32 12388, i32 12452, i32 12516>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 672), align 16, !tbaa !4
  store <4 x i32> <i32 12580, i32 12644, i32 12332, i32 12396>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 688), align 16, !tbaa !4
  store <4 x i32> <i32 12460, i32 12524, i32 12588, i32 12652>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 704), align 16, !tbaa !4
  store <4 x i32> <i32 16384, i32 16448, i32 16512, i32 16576>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 720), align 16, !tbaa !4
  store <4 x i32> <i32 16392, i32 16456, i32 16520, i32 16584>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 736), align 16, !tbaa !4
  store <4 x i32> <i32 16400, i32 16464, i32 16528, i32 16592>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 752), align 16, !tbaa !4
  store <4 x i32> <i32 16408, i32 16472, i32 16536, i32 16600>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 768), align 16, !tbaa !4
  store <4 x i32> <i32 16385, i32 16449, i32 16513, i32 16577>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 784), align 16, !tbaa !4
  store <4 x i32> <i32 16393, i32 16457, i32 16521, i32 16585>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 800), align 16, !tbaa !4
  store <4 x i32> <i32 16401, i32 16465, i32 16529, i32 16593>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 816), align 16, !tbaa !4
  store <4 x i32> <i32 16409, i32 16473, i32 16537, i32 16601>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 832), align 16, !tbaa !4
  store <4 x i32> <i32 16386, i32 16450, i32 16514, i32 16578>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 848), align 16, !tbaa !4
  store <4 x i32> <i32 16394, i32 16458, i32 16522, i32 16586>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 864), align 16, !tbaa !4
  store <4 x i32> <i32 16402, i32 16466, i32 16530, i32 16594>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 880), align 16, !tbaa !4
  store <4 x i32> <i32 16410, i32 16474, i32 16538, i32 16602>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 896), align 16, !tbaa !4
  store <4 x i32> <i32 16387, i32 16451, i32 16515, i32 16579>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 912), align 16, !tbaa !4
  store <4 x i32> <i32 16395, i32 16459, i32 16523, i32 16587>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 928), align 16, !tbaa !4
  store <4 x i32> <i32 16403, i32 16467, i32 16531, i32 16595>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 944), align 16, !tbaa !4
  store <4 x i32> <i32 16411, i32 16475, i32 16539, i32 16603>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 960), align 16, !tbaa !4
  store <4 x i32> <i32 20480, i32 20488, i32 20496, i32 20481>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 976), align 16, !tbaa !4
  store <4 x i32> <i32 40960, i32 40968, i32 40976, i32 40961>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 2000), align 16, !tbaa !4
  store <4 x i32> <i32 20489, i32 20497, i32 20482, i32 20490>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 992), align 16, !tbaa !4
  store <4 x i32> <i32 40969, i32 40977, i32 40962, i32 40970>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 2016), align 16, !tbaa !4
  store <4 x i32> <i32 20498, i32 20483, i32 20491, i32 20499>, ptr getelementptr inbounds nuw (i8, ptr @i_slen2, i64 1008), align 16, !tbaa !4
  store <4 x i32> <i32 40978, i32 40963, i32 40971, i32 40979>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 2032), align 16, !tbaa !4
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader328.preheader, %.preheader320
  %indvars.iv572 = phi i64 [ 0, %.preheader328.preheader ], [ %indvars.iv.next573, %.preheader320 ] ; 10 uses
  %i.ajw = mul nuw nsw i64 %indvars.iv572, 80     ; 8 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ajw
  %i.ajy = trunc i64 %indvars.iv572 to i32
  %i.ajz = insertelement <4 x i32> poison, i32 %i.ajy, i64 0
  %i.aka = shufflevector <4 x i32> %i.ajz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akb = add <4 x i32> %i.aka, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.akb, ptr %i.ajx, align 16, !tbaa !4
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ajw
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  %i.ake = trunc i64 %indvars.iv572 to i32
  %i.akf = insertelement <4 x i32> poison, i32 %i.ake, i64 0
  %i.akg = shufflevector <4 x i32> %i.akf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akh = add <4 x i32> %i.akg, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.akh, ptr %i.akd, align 16, !tbaa !4
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ajw
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 32
  %i.akk = trunc i64 %indvars.iv572 to i32
  %i.akl = insertelement <4 x i32> poison, i32 %i.akk, i64 0
  %i.akm = shufflevector <4 x i32> %i.akl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akn = add <4 x i32> %i.akm, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.akn, ptr %i.akj, align 16, !tbaa !4
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ajw
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 48
  %i.akq = trunc i64 %indvars.iv572 to i32
  %i.akr = insertelement <4 x i32> poison, i32 %i.akq, i64 0
  %i.aks = shufflevector <4 x i32> %i.akr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akt = add <4 x i32> %i.aks, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.akt, ptr %i.akp, align 16, !tbaa !4
  %i.aku = add nuw nsw i64 %i.ajw, 16             ; 4 uses
  %i.akv = add nuw nsw i64 %indvars.iv572, 8      ; 4 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aku
  %i.akx = trunc i64 %i.akv to i32
  %i.aky = insertelement <4 x i32> poison, i32 %i.akx, i64 0
  %i.akz = shufflevector <4 x i32> %i.aky, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ala = add <4 x i32> %i.akz, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.ala, ptr %i.akw, align 16, !tbaa !4
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aku
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.ald = trunc i64 %i.akv to i32
  %i.ale = insertelement <4 x i32> poison, i32 %i.ald, i64 0
  %i.alf = shufflevector <4 x i32> %i.ale, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alg = add <4 x i32> %i.alf, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.alg, ptr %i.alc, align 16, !tbaa !4
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aku
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  %i.alj = trunc i64 %i.akv to i32
  %i.alk = insertelement <4 x i32> poison, i32 %i.alj, i64 0
  %i.all = shufflevector <4 x i32> %i.alk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alm = add <4 x i32> %i.all, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.alm, ptr %i.ali, align 16, !tbaa !4
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aku
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 48
  %i.alp = trunc i64 %i.akv to i32
  %i.alq = insertelement <4 x i32> poison, i32 %i.alp, i64 0
  %i.alr = shufflevector <4 x i32> %i.alq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.als = add <4 x i32> %i.alr, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.als, ptr %i.alo, align 16, !tbaa !4
  %i.alt = add nuw nsw i64 %i.ajw, 32             ; 4 uses
  %i.alu = add nuw nsw i64 %indvars.iv572, 16     ; 4 uses
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.alw = trunc i64 %i.alu to i32
  %i.alx = insertelement <4 x i32> poison, i32 %i.alw, i64 0
  %i.aly = shufflevector <4 x i32> %i.alx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alz = add <4 x i32> %i.aly, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.alz, ptr %i.alv, align 16, !tbaa !4
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  %i.amc = trunc i64 %i.alu to i32
  %i.amd = insertelement <4 x i32> poison, i32 %i.amc, i64 0
  %i.ame = shufflevector <4 x i32> %i.amd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amf = add <4 x i32> %i.ame, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.amf, ptr %i.amb, align 16, !tbaa !4
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 32
  %i.ami = trunc i64 %i.alu to i32
  %i.amj = insertelement <4 x i32> poison, i32 %i.ami, i64 0
  %i.amk = shufflevector <4 x i32> %i.amj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aml = add <4 x i32> %i.amk, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.aml, ptr %i.amh, align 16, !tbaa !4
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  %i.amo = trunc i64 %i.alu to i32
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = shufflevector <4 x i32> %i.amp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amr = add <4 x i32> %i.amq, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.amr, ptr %i.amn, align 16, !tbaa !4
  %i.ams = add nuw nsw i64 %i.ajw, 48             ; 4 uses
  %i.amt = add nuw nsw i64 %indvars.iv572, 24     ; 4 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.amv = trunc i64 %i.amt to i32
  %i.amw = insertelement <4 x i32> poison, i32 %i.amv, i64 0
  %i.amx = shufflevector <4 x i32> %i.amw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amy = add <4 x i32> %i.amx, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.amy, ptr %i.amu, align 16, !tbaa !4
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.anb = trunc i64 %i.amt to i32
  %i.anc = insertelement <4 x i32> poison, i32 %i.anb, i64 0
  %i.and = shufflevector <4 x i32> %i.anc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ane = add <4 x i32> %i.and, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.ane, ptr %i.ana, align 16, !tbaa !4
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 32
  %i.anh = trunc i64 %i.amt to i32
  %i.ani = insertelement <4 x i32> poison, i32 %i.anh, i64 0
  %i.anj = shufflevector <4 x i32> %i.ani, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ank = add <4 x i32> %i.anj, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.ank, ptr %i.ang, align 16, !tbaa !4
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 48
  %i.ann = trunc i64 %i.amt to i32
  %i.ano = insertelement <4 x i32> poison, i32 %i.ann, i64 0
  %i.anp = shufflevector <4 x i32> %i.ano, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anq = add <4 x i32> %i.anp, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.anq, ptr %i.anm, align 16, !tbaa !4
  %i.anr = add nuw nsw i64 %i.ajw, 64             ; 4 uses
  %i.ans = add nuw nsw i64 %indvars.iv572, 32     ; 4 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
  %i.anu = trunc i64 %i.ans to i32
  %i.anv = insertelement <4 x i32> poison, i32 %i.anu, i64 0
  %i.anw = shufflevector <4 x i32> %i.anv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anx = add <4 x i32> %i.anw, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.anx, ptr %i.ant, align 16, !tbaa !4
  %i.any = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
end_hunk_0
