Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  %i.aag = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aah = zext i16 %i.aag to i32
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.aah, ptr %i.aai, align 4, !tbaa !117
  %i.aaj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.aak, ptr %i.aal, align 8, !tbaa !117
  %i.aam = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aan = add nsw i64 %i.rh, 226
  %i.aao = load ptr, ptr %i.aam, align 8, !tbaa !92
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.aaq = load ptr, ptr %i.aap, align 8
  %i.aar = tail call noundef i32 %i.aaq(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, i64 noundef %i.aan, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 188664
  %i.aat = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aau = zext i16 %i.aat to i32
  store i32 %i.aau, ptr %i.aas, align 8, !tbaa !117
  %i.aav = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 188668
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !117
  %i.aay = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaz = zext i16 %i.aay to i32
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 188676
  store i32 %i.aaz, ptr %i.aba, align 4, !tbaa !117
  %i.abb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abc = zext i16 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 188672
  store i32 %i.abc, ptr %i.abd, align 8, !tbaa !117
  %i.abe = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.abf = add nsw i64 %i.rh, 236
  %i.abg = load ptr, ptr %i.abe, align 8, !tbaa !92
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8
  %i.abj = tail call noundef i32 %i.abi(ptr noundef nonnull align 8 dereferenceable(8) %i.abe, i64 noundef %i.abf, i32 noundef 0), !call_target !94 ; 0 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 188680
  %i.abl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abm = zext i16 %i.abl to i32
  store i32 %i.abm, ptr %i.abk, align 8, !tbaa !117
  %i.abn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abo = zext i16 %i.abn to i32
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 188684
  store i32 %i.abo, ptr %i.abp, align 4, !tbaa !117
  %i.abq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abr = zext i16 %i.abq to i32
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 188692
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !117
  %i.abt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 188688
  store i32 %i.abu, ptr %i.abv, align 8, !tbaa !117
  %i.abw = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.abx = add nsw i64 %i.rh, 246
  %i.aby = load ptr, ptr %i.abw, align 8, !tbaa !92
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8
  %i.acb = tail call noundef i32 %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, i64 noundef %i.abx, i32 noundef 0), !call_target !94 ; 0 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 188696
  %i.acd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ace = zext i16 %i.acd to i32
  store i32 %i.ace, ptr %i.acc, align 8, !tbaa !117
  %i.acf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acg = zext i16 %i.acf to i32
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 188700
  store i32 %i.acg, ptr %i.ach, align 4, !tbaa !117
  %i.aci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acj = zext i16 %i.aci to i32
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 188708
  store i32 %i.acj, ptr %i.ack, align 4, !tbaa !117
  %i.acl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acm = zext i16 %i.acl to i32
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 188704
  store i32 %i.acm, ptr %i.acn, align 8, !tbaa !117
  %i.aco = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.acp = add nsw i64 %i.rh, 256
  %i.acq = load ptr, ptr %i.aco, align 8, !tbaa !92
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = tail call noundef i32 %i.acs(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, i64 noundef %i.acp, i32 noundef 0), !call_target !94 ; 0 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 188552
  %i.acv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acw = zext i16 %i.acv to i32
  store i32 %i.acw, ptr %i.acu, align 8, !tbaa !117
  %i.acx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acy = zext i16 %i.acx to i32
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 188556
  store i32 %i.acy, ptr %i.acz, align 4, !tbaa !117
  %i.ada = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adb = zext i16 %i.ada to i32
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 188564
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !117
  %i.add = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ade = zext i16 %i.add to i32
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 188560
  store i32 %i.ade, ptr %i.adf, align 8, !tbaa !117
  %i.adg = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.adh = add nsw i64 %i.rh, 156
  %i.adi = load ptr, ptr %i.adg, align 8, !tbaa !92
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 32
  %i.adk = load ptr, ptr %i.adj, align 8
  %i.adl = tail call noundef i32 %i.adk(ptr noundef nonnull align 8 dereferenceable(8) %i.adg, i64 noundef %i.adh, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.adm = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.adn = add nsw i64 %i.rh, 266
  %i.ado = load ptr, ptr %i.adm, align 8, !tbaa !92
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  %i.adq = load ptr, ptr %i.adp, align 8
  %i.adr = tail call noundef i32 %i.adq(ptr noundef nonnull align 8 dereferenceable(8) %i.adm, i64 noundef %i.adn, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ads = add nsw i64 %i.rh, 392
  br label %bb.du

bb.da:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 4, ptr %i.adt, align 8, !tbaa !174
  %i.adu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adv = zext i16 %i.adu to i32
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !121
  %i.adx = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ady = add nsw i64 %i.rh, 126
  %i.adz = load ptr, ptr %i.adx, align 8, !tbaa !92
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = tail call noundef i32 %i.aeb(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, i64 noundef %i.ady, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aee = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aef = uitofp reassoc nsz arcp contract afn i16 %i.aee to float
  store float %i.aef, ptr %i.aed, align 4, !tbaa !112
  %i.aeg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeh = uitofp reassoc nsz arcp contract afn i16 %i.aeg to float
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aeh, ptr %i.aei, align 8, !tbaa !112
  %i.aej = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aek = uitofp reassoc nsz arcp contract afn i16 %i.aej to float
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aek, ptr %i.ael, align 8, !tbaa !112
  %i.aem = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aen = uitofp reassoc nsz arcp contract afn i16 %i.aem to float
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !112
  %i.aep = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aer = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aes = zext i16 %i.aer to i32
  store i32 %i.aes, ptr %i.aeq, align 8, !tbaa !117
  %i.aet = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !117
  %i.aew = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aex = zext i16 %i.aew to i32
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aex, ptr %i.aey, align 4, !tbaa !117
  %i.aez = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afa = zext i16 %i.aez to i32
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.afa, ptr %i.afb, align 8, !tbaa !117
  %i.afc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.afe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aff = zext i16 %i.afe to i32
  store i32 %i.aff, ptr %i.afd, align 8, !tbaa !117
  %i.afg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afh = zext i16 %i.afg to i32
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !117
  %i.afj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afk = zext i16 %i.afj to i32
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !117
  %i.afm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afn = zext i16 %i.afm to i32
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.afn, ptr %i.afo, align 8, !tbaa !117
  %i.afp = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.afq = add nsw i64 %i.rh, 156
  %i.afr = load ptr, ptr %i.afp, align 8, !tbaa !92
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = tail call noundef i32 %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, i64 noundef %i.afq, i32 noundef 0), !call_target !94 ; 0 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.afw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.afw, ptr %i.afv, align 2, !tbaa !76
  %i.afx = uitofp reassoc nsz arcp contract afn i16 %i.afw to float ; 2 uses
  %i.afy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.afy, ptr %i.afz, align 4, !tbaa !76
  %i.aga = uitofp reassoc nsz arcp contract afn i16 %i.afy to float ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn olt float %i.afx, %i.aga
  %.1477.1 = select nsz i1 %i.agb, float %i.aga, float %i.afx ; 2 uses
  %i.agc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.agc, ptr %i.agd, align 8, !tbaa !76
  %i.age = uitofp reassoc nsz arcp contract afn i16 %i.agc to float ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn olt float %.1477.1, %i.age
  %.1477.2 = select nsz i1 %i.agf, float %i.age, float %.1477.1 ; 2 uses
  %i.agg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.agh = load i16, ptr %i.agd, align 8, !tbaa !76
  %5 = load <4 x i16>, ptr %i.afv, align 2
  %i.agi = insertelement <4 x i16> %5, i16 %i.agg, i64 2
  %i.agj = insertelement <4 x i16> %i.agi, i16 %i.agh, i64 3
  %i.agk = uitofp <4 x i16> %i.agj to <4 x float> ; 2 uses
  %i.agl = extractelement <4 x float> %i.agk, i64 2 ; 2 uses
  %i.agm = fcmp reassoc nsz arcp contract afn olt float %.1477.2, %i.agl
  %.1477.3 = select nsz i1 %i.agm, float %i.agl, float %.1477.2
  %i.agn = fmul reassoc nnan nsz arcp contract afn float %.1477.3, f0x3A800000
  %i.ago = insertelement <4 x float> poison, float %i.agn, i64 0
  %i.agp = shufflevector <4 x float> %i.ago, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agq = fmul reassoc nsz arcp contract afn <4 x float> %i.agp, %i.agk
  %i.agr = fptoui <4 x float> %i.agq to <4 x i16>
  store <4 x i16> %i.agr, ptr %i.afv, align 2, !tbaa !76
  %i.ags = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.agt = add nsw i64 %i.rh, 166
  %i.agu = load ptr, ptr %i.ags, align 8, !tbaa !92
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.agw = load ptr, ptr %i.agv, align 8
  %i.agx = tail call noundef i32 %i.agw(ptr noundef nonnull align 8 dereferenceable(8) %i.ags, i64 noundef %i.agt, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.agy = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.agz = add nsw i64 %i.rh, 336
  %i.aha = load ptr, ptr %i.agy, align 8, !tbaa !92
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  %i.ahc = load ptr, ptr %i.ahb, align 8
  %i.ahd = tail call noundef i32 %i.ahc(ptr noundef nonnull align 8 dereferenceable(8) %i.agy, i64 noundef %i.agz, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ahe = load i32, ptr %i.adw, align 4, !tbaa !121
  switch i32 %i.ahe, label %bb.de [
    i32 4, label %bb.db
    i32 5, label %bb.db
    i32 6, label %bb.dc
    i32 7, label %bb.dc
    i32 9, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.ahf = add nsw i64 %i.rh, 1384
  %i.ahg = add nsw i64 %i.rh, 1392
  br label %bb.du

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.ahh = add nsw i64 %i.rh, 1430
  %i.ahi = add nsw i64 %i.rh, 1438
  br label %bb.du

bb.dd:                                            ; preds = %bb.da
  %i.ahj = add nsw i64 %i.rh, 1438
  %i.ahk = add nsw i64 %i.rh, 1446
  br label %bb.du

bb.de:                                            ; preds = %bb.da
  %i.ahl = add nsw i64 %i.rh, 462
  br label %bb.du

bb.df:                                            ; preds = %bb.cw
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 5, ptr %i.ahm, align 8, !tbaa !174
  %i.ahn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aho = zext i16 %i.ahn to i32
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.aho, ptr %i.ahp, align 4, !tbaa !121
  %i.ahq = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ahr = add nsw i64 %i.rh, 142
  %i.ahs = load ptr, ptr %i.ahq, align 8, !tbaa !92
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 32
  %i.ahu = load ptr, ptr %i.aht, align 8
  %i.ahv = tail call noundef i32 %i.ahu(ptr noundef nonnull align 8 dereferenceable(8) %i.ahq, i64 noundef %i.ahr, i32 noundef 0), !call_target !94 ; 0 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ahx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahy = uitofp reassoc nsz arcp contract afn i16 %i.ahx to float
  store float %i.ahy, ptr %i.ahw, align 4, !tbaa !112
  %i.ahz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aia = uitofp reassoc nsz arcp contract afn i16 %i.ahz to float
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aia, ptr %i.aib, align 8, !tbaa !112
  %i.aic = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aid = uitofp reassoc nsz arcp contract afn i16 %i.aic to float
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aid, ptr %i.aie, align 8, !tbaa !112
  %i.aif = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aig = uitofp reassoc nsz arcp contract afn i16 %i.aif to float
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aig, ptr %i.aih, align 4, !tbaa !112
  %i.aii = load i32, ptr %i.ahp, align 4, !tbaa !121
  switch i32 %i.aii, label %.thread584 [
    i32 65532, label %bb.dg
    i32 65533, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.aij = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aik = add nsw i64 %i.rh, 158
  %i.ail = load ptr, ptr %i.aij, align 8, !tbaa !92
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 32
  %i.ain = load ptr, ptr %i.aim, align 8
  %i.aio = tail call noundef i32 %i.ain(ptr noundef nonnull align 8 dereferenceable(8) %i.aij, i64 noundef %i.aik, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aiq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.air = zext i16 %i.aiq to i32
  store i32 %i.air, ptr %i.aip, align 8, !tbaa !117
  %i.ais = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ait = zext i16 %i.ais to i32
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.ait, ptr %i.aiu, align 4, !tbaa !117
  %i.aiv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiw = zext i16 %i.aiv to i32
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aiw, ptr %i.aix, align 4, !tbaa !117
  %i.aiy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiz = zext i16 %i.aiy to i32
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aiz, ptr %i.aja, align 8, !tbaa !117
  %i.ajb = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !92
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 32
  %i.aje = load ptr, ptr %i.ajd, align 8
  %i.ajf = tail call noundef i32 %i.aje(ptr noundef nonnull align 8 dereferenceable(8) %i.ajb, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.ajh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aji = zext i16 %i.ajh to i32
  store i32 %i.aji, ptr %i.ajg, align 8, !tbaa !117
  %i.ajj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajk = zext i16 %i.ajj to i32
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.ajk, ptr %i.ajl, align 4, !tbaa !117
  %i.ajm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajn = zext i16 %i.ajm to i32
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ajn, ptr %i.ajo, align 4, !tbaa !117
  %i.ajp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajq = zext i16 %i.ajp to i32
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ajq, ptr %i.ajr, align 8, !tbaa !117
  %i.ajs = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !92
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 32
  %i.ajv = load ptr, ptr %i.aju, align 8
  %i.ajw = tail call noundef i32 %i.ajv(ptr noundef nonnull align 8 dereferenceable(8) %i.ajs, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.ajy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajz = zext i16 %i.ajy to i32
  store i32 %i.ajz, ptr %i.ajx, align 8, !tbaa !117
  %i.aka = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akb = zext i16 %i.aka to i32
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.akb, ptr %i.akc, align 4, !tbaa !117
  %i.akd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ake = zext i16 %i.akd to i32
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.ake, ptr %i.akf, align 4, !tbaa !117
  %i.akg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akh = zext i16 %i.akg to i32
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.akh, ptr %i.aki, align 8, !tbaa !117
  %i.akj = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !92
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 32
  %i.akm = load ptr, ptr %i.akl, align 8
  %i.akn = tail call noundef i32 %i.akm(ptr noundef nonnull align 8 dereferenceable(8) %i.akj, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, i32 noundef 24)
  %i.ako = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !92
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 32
  %i.akr = load ptr, ptr %i.akq, align 8
  %i.aks = tail call noundef i32 %i.akr(ptr noundef nonnull align 8 dereferenceable(8) %i.ako, i64 noundef 168, i32 noundef 1), !call_target !94 ; 0 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 187464
  %i.aku = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akv = zext i16 %i.aku to i32
  store i32 %i.akv, ptr %i.akt, align 8, !tbaa !117
  %i.akw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akx = zext i16 %i.akw to i32
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 187468
  store i32 %i.akx, ptr %i.aky, align 4, !tbaa !117
  %i.akz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ala = zext i16 %i.akz to i32
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 187476
  store i32 %i.ala, ptr %i.alb, align 4, !tbaa !117
  %i.alc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ald = zext i16 %i.alc to i32
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 187472
  store i32 %i.ald, ptr %i.ale, align 8, !tbaa !117
  %i.alf = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !92
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  %i.ali = load ptr, ptr %i.alh, align 8
  %i.alj = tail call noundef i32 %i.ali(ptr noundef nonnull align 8 dereferenceable(8) %i.alf, i64 noundef 24, i32 noundef 1), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.alk = add nsw i64 %i.rh, 666
  %i.all = add nsw i64 %i.rh, 2770
  br label %bb.du

bb.dh:                                            ; preds = %bb.df
  %i.alm = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aln = add nsw i64 %i.rh, 152
  %i.alo = load ptr, ptr %i.alm, align 8, !tbaa !92
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.alq = load ptr, ptr %i.alp, align 8
  %i.alr = tail call noundef i32 %i.alq(ptr noundef nonnull align 8 dereferenceable(8) %i.alm, i64 noundef %i.aln, i32 noundef 0), !call_target !94 ; 0 uses
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.alt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alu = zext i16 %i.alt to i32
  store i32 %i.alu, ptr %i.als, align 8, !tbaa !117
  %i.alv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alw = zext i16 %i.alv to i32
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.alw, ptr %i.alx, align 4, !tbaa !117
  %i.aly = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alz = zext i16 %i.aly to i32
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.alz, ptr %i.ama, align 4, !tbaa !117
  %i.amb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amc = zext i16 %i.amb to i32
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.amc, ptr %i.amd, align 8, !tbaa !117
  %i.ame = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.amg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amh = zext i16 %i.amg to i32
  store i32 %i.amh, ptr %i.amf, align 8, !tbaa !117
  %i.ami = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amj = zext i16 %i.ami to i32
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.amj, ptr %i.amk, align 4, !tbaa !117
  %i.aml = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amm = zext i16 %i.aml to i32
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.amm, ptr %i.amn, align 4, !tbaa !117
  %i.amo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amp = zext i16 %i.amo to i32
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.amp, ptr %i.amq, align 8, !tbaa !117
  %i.amr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.amt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amu = zext i16 %i.amt to i32
  store i32 %i.amu, ptr %i.ams, align 8, !tbaa !117
  %i.amv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amw = zext i16 %i.amv to i32
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.amw, ptr %i.amx, align 4, !tbaa !117
  %i.amy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amz = zext i16 %i.amy to i32
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.amz, ptr %i.ana, align 4, !tbaa !117
  %i.anb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anc = zext i16 %i.anb to i32
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.anc, ptr %i.and, align 8, !tbaa !117
  %i.ane = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.anf = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ang = add nsw i64 %i.rh, 372
  %i.anh = load ptr, ptr %i.anf, align 8, !tbaa !92
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 32
  %i.anj = load ptr, ptr %i.ani, align 8
  %i.ank = tail call noundef i32 %i.anj(ptr noundef nonnull align 8 dereferenceable(8) %i.anf, i64 noundef %i.ang, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.anl = add nsw i64 %i.rh, 528
  br label %bb.du

bb.di:                                            ; preds = %bb.cw, %bb.cw
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 6, ptr %i.anm, align 8, !tbaa !174
  %i.ann = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ano = zext i16 %i.ann to i32
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.ano, ptr %i.anp, align 4, !tbaa !121
  %i.anq = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.anr = add nsw i64 %i.rh, 126
  %i.ans = load ptr, ptr %i.anq, align 8, !tbaa !92
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 32
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = tail call noundef i32 %i.anu(ptr noundef nonnull align 8 dereferenceable(8) %i.anq, i64 noundef %i.anr, i32 noundef 0), !call_target !94 ; 0 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.anx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.any = uitofp reassoc nsz arcp contract afn i16 %i.anx to float
  store float %i.any, ptr %i.anw, align 4, !tbaa !112
  %i.anz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoa = uitofp reassoc nsz arcp contract afn i16 %i.anz to float
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aoa, ptr %i.aob, align 8, !tbaa !112
  %i.aoc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aod = uitofp reassoc nsz arcp contract afn i16 %i.aoc to float
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aod, ptr %i.aoe, align 8, !tbaa !112
  %i.aof = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aog = uitofp reassoc nsz arcp contract afn i16 %i.aof to float
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !112
  %i.aoi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aok = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aol = zext i16 %i.aok to i32
  store i32 %i.aol, ptr %i.aoj, align 8, !tbaa !117
  %i.aom = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aon = zext i16 %i.aom to i32
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aon, ptr %i.aoo, align 4, !tbaa !117
  %i.aop = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoq = zext i16 %i.aop to i32
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aoq, ptr %i.aor, align 4, !tbaa !117
  %i.aos = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aot = zext i16 %i.aos to i32
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aot, ptr %i.aou, align 8, !tbaa !117
  %i.aov = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aox = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoy = zext i16 %i.aox to i32
  store i32 %i.aoy, ptr %i.aow, align 8, !tbaa !117
  %i.aoz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.apa = zext i16 %i.aoz to i32
  %i.apb = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.apa, ptr %i.apb, align 4, !tbaa !117
  %i.apc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.apd = zext i16 %i.apc to i32
  %i.ape = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.apd, ptr %i.ape, align 4, !tbaa !117
  %i.apf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.apg = zext i16 %i.apf to i32
  %i.aph = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.apg, ptr %i.aph, align 8, !tbaa !117
  %i.api = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.apj = add nsw i64 %i.rh, 196
  %i.apk = load ptr, ptr %i.api, align 8, !tbaa !92
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 32
  %i.apm = load ptr, ptr %i.apl, align 8
  %i.apn = tail call noundef i32 %i.apm(ptr noundef nonnull align 8 dereferenceable(8) %i.api, i64 noundef %i.apj, i32 noundef 0), !call_target !94 ; 0 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.app = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.app, ptr %i.apo, align 2, !tbaa !76
  %i.apq = uitofp reassoc nsz arcp contract afn i16 %i.app to float ; 2 uses
  %i.apr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.apr, ptr %i.aps, align 4, !tbaa !76
  %i.apt = uitofp reassoc nsz arcp contract afn i16 %i.apr to float ; 2 uses
  %i.apu = fcmp reassoc nsz arcp contract afn olt float %i.apq, %i.apt
  %.3.1 = select nsz i1 %i.apu, float %i.apt, float %i.apq ; 2 uses
  %i.apv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.apv, ptr %i.apw, align 8, !tbaa !76
  %i.apx = uitofp reassoc nsz arcp contract afn i16 %i.apv to float ; 2 uses
  %i.apy = fcmp reassoc nsz arcp contract afn olt float %.3.1, %i.apx
  %.3.2 = select nsz i1 %i.apy, float %i.apx, float %.3.1 ; 2 uses
  %i.apz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqa = load i16, ptr %i.apw, align 8, !tbaa !76
  %6 = load <4 x i16>, ptr %i.apo, align 2
  %i.aqb = insertelement <4 x i16> %6, i16 %i.apz, i64 2
  %i.aqc = insertelement <4 x i16> %i.aqb, i16 %i.aqa, i64 3
  %i.aqd = uitofp <4 x i16> %i.aqc to <4 x float> ; 2 uses
  %i.aqe = extractelement <4 x float> %i.aqd, i64 2 ; 2 uses
  %i.aqf = fcmp reassoc nsz arcp contract afn olt float %.3.2, %i.aqe
  %.3.3 = select nsz i1 %i.aqf, float %i.aqe, float %.3.2
  %i.aqg = fmul reassoc nnan nsz arcp contract afn float %.3.3, f0x3A800000
  %i.aqh = insertelement <4 x float> poison, float %i.aqg, i64 0
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqj = fmul reassoc nsz arcp contract afn <4 x float> %i.aqi, %i.aqd
  %i.aqk = fptoui <4 x float> %i.aqj to <4 x i16>
  store <4 x i16> %i.aqk, ptr %i.apo, align 2, !tbaa !76
  %i.aql = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aqm = add nsw i64 %i.rh, 206
  %i.aqn = load ptr, ptr %i.aql, align 8, !tbaa !92
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 32
  %i.aqp = load ptr, ptr %i.aqo, align 8
  %i.aqq = tail call noundef i32 %i.aqp(ptr noundef nonnull align 8 dereferenceable(8) %i.aql, i64 noundef %i.aqm, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aqr = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aqs = add nsw i64 %i.rh, 376
  %i.aqt = load ptr, ptr %i.aqr, align 8, !tbaa !92
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 32
  %i.aqv = load ptr, ptr %i.aqu, align 8
  %i.aqw = tail call noundef i32 %i.aqv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqr, i64 noundef %i.aqs, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aqx = add nsw i64 %i.rh, 958
  %i.aqy = add nsw i64 %i.rh, 966
  br label %bb.du

bb.dj:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 7, ptr %i.aqz, align 8, !tbaa !174
  %i.ara = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arb = zext i16 %i.ara to i32
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !121
  %i.ard = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.are = add nsw i64 %i.rh, 126
  %i.arf = load ptr, ptr %i.ard, align 8, !tbaa !92
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 32
  %i.arh = load ptr, ptr %i.arg, align 8
  %i.ari = tail call noundef i32 %i.arh(ptr noundef nonnull align 8 dereferenceable(8) %i.ard, i64 noundef %i.are, i32 noundef 0), !call_target !94 ; 0 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ark = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arl = uitofp reassoc nsz arcp contract afn i16 %i.ark to float
  store float %i.arl, ptr %i.arj, align 4, !tbaa !112
  %i.arm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arn = uitofp reassoc nsz arcp contract afn i16 %i.arm to float
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.arn, ptr %i.aro, align 8, !tbaa !112
  %i.arp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arq = uitofp reassoc nsz arcp contract afn i16 %i.arp to float
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.arq, ptr %i.arr, align 8, !tbaa !112
  %i.ars = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.art = uitofp reassoc nsz arcp contract afn i16 %i.ars to float
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.art, ptr %i.aru, align 4, !tbaa !112
  %i.arv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.arx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ary = zext i16 %i.arx to i32
  store i32 %i.ary, ptr %i.arw, align 8, !tbaa !117
  %i.arz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asa = zext i16 %i.arz to i32
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.asa, ptr %i.asb, align 4, !tbaa !117
  %i.asc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asd = zext i16 %i.asc to i32
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.asd, ptr %i.ase, align 4, !tbaa !117
  %i.asf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asg = zext i16 %i.asf to i32
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.asg, ptr %i.ash, align 8, !tbaa !117
  %i.asi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.ask = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asl = zext i16 %i.ask to i32
  store i32 %i.asl, ptr %i.asj, align 8, !tbaa !117
  %i.asm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asn = zext i16 %i.asm to i32
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.asn, ptr %i.aso, align 4, !tbaa !117
  %i.asp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asq = zext i16 %i.asp to i32
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.asq, ptr %i.asr, align 4, !tbaa !117
  %i.ass = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ast = zext i16 %i.ass to i32
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ast, ptr %i.asu, align 8, !tbaa !117
  %i.asv = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.asw = add nsw i64 %i.rh, 246
  %i.asx = load ptr, ptr %i.asv, align 8, !tbaa !92
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 32
  %i.asz = load ptr, ptr %i.asy, align 8
  %i.ata = tail call noundef i32 %i.asz(ptr noundef nonnull align 8 dereferenceable(8) %i.asv, i64 noundef %i.asw, i32 noundef 0), !call_target !94 ; 0 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.atc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.atc, ptr %i.atb, align 2, !tbaa !76
  %i.atd = uitofp reassoc nsz arcp contract afn i16 %i.atc to float ; 2 uses
  %i.ate = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.ate, ptr %i.atf, align 4, !tbaa !76
  %i.atg = uitofp reassoc nsz arcp contract afn i16 %i.ate to float ; 2 uses
  %i.ath = fcmp reassoc nsz arcp contract afn olt float %i.atd, %i.atg
  %.5.1 = select nsz i1 %i.ath, float %i.atg, float %i.atd ; 2 uses
  %i.ati = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.ati, ptr %i.atj, align 8, !tbaa !76
  %i.atk = uitofp reassoc nsz arcp contract afn i16 %i.ati to float ; 2 uses
  %i.atl = fcmp reassoc nsz arcp contract afn olt float %.5.1, %i.atk
  %.5.2 = select nsz i1 %i.atl, float %i.atk, float %.5.1 ; 2 uses
  %i.atm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.atn = load i16, ptr %i.atj, align 8, !tbaa !76
  %7 = load <4 x i16>, ptr %i.atb, align 2
  %i.ato = insertelement <4 x i16> %7, i16 %i.atm, i64 2
  %i.atp = insertelement <4 x i16> %i.ato, i16 %i.atn, i64 3
  %i.atq = uitofp <4 x i16> %i.atp to <4 x float> ; 2 uses
  %i.atr = extractelement <4 x float> %i.atq, i64 2 ; 2 uses
  %i.ats = fcmp reassoc nsz arcp contract afn olt float %.5.2, %i.atr
  %.5.3 = select nsz i1 %i.ats, float %i.atr, float %.5.2
  %i.att = fmul reassoc nnan nsz arcp contract afn float %.5.3, f0x3A800000
  %i.atu = insertelement <4 x float> poison, float %i.att, i64 0
  %i.atv = shufflevector <4 x float> %i.atu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atw = fmul reassoc nsz arcp contract afn <4 x float> %i.atv, %i.atq
  %i.atx = fptoui <4 x float> %i.atw to <4 x i16>
  store <4 x i16> %i.atx, ptr %i.atb, align 2, !tbaa !76
  %i.aty = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.atz = add nsw i64 %i.rh, 256
  %i.aua = load ptr, ptr %i.aty, align 8, !tbaa !92
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 32
  %i.auc = load ptr, ptr %i.aub, align 8
  %i.aud = tail call noundef i32 %i.auc(ptr noundef nonnull align 8 dereferenceable(8) %i.aty, i64 noundef %i.atz, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aue = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.auf = add nsw i64 %i.rh, 426
  %i.aug = load ptr, ptr %i.aue, align 8, !tbaa !92
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 32
  %i.aui = load ptr, ptr %i.auh, align 8
  %i.auj = tail call noundef i32 %i.aui(ptr noundef nonnull align 8 dereferenceable(8) %i.aue, i64 noundef %i.auf, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.auk = load i32, ptr %i.arc, align 4, !tbaa !121
  switch i32 %i.auk, label %.thread584 [
    i32 10, label %bb.dk
    i32 11, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.aul = add nsw i64 %i.rh, 1008
  %i.aum = add nsw i64 %i.rh, 1016
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj
  %i.aun = add nsw i64 %i.rh, 1456
  %i.auo = add nsw i64 %i.rh, 1464
  br label %bb.du

bb.dm:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 8, ptr %i.aup, align 8, !tbaa !174
  %i.auq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aur = zext i16 %i.auq to i32
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.aur, ptr %i.aus, align 4, !tbaa !121
  %i.aut = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.auu = add nsw i64 %i.rh, 126
  %i.auv = load ptr, ptr %i.aut, align 8, !tbaa !92
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 32
  %i.aux = load ptr, ptr %i.auw, align 8
  %i.auy = tail call noundef i32 %i.aux(ptr noundef nonnull align 8 dereferenceable(8) %i.aut, i64 noundef %i.auu, i32 noundef 0), !call_target !94 ; 0 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ava = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avb = uitofp reassoc nsz arcp contract afn i16 %i.ava to float
  store float %i.avb, ptr %i.auz, align 4, !tbaa !112
  %i.avc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avd = uitofp reassoc nsz arcp contract afn i16 %i.avc to float
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.avd, ptr %i.ave, align 8, !tbaa !112
  %i.avf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avg = uitofp reassoc nsz arcp contract afn i16 %i.avf to float
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.avg, ptr %i.avh, align 8, !tbaa !112
  %i.avi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avj = uitofp reassoc nsz arcp contract afn i16 %i.avi to float
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.avj, ptr %i.avk, align 4, !tbaa !112
  %i.avl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.avn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avo = zext i16 %i.avn to i32
  store i32 %i.avo, ptr %i.avm, align 8, !tbaa !117
  %i.avp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avq = zext i16 %i.avp to i32
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.avq, ptr %i.avr, align 4, !tbaa !117
  %i.avs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avt = zext i16 %i.avs to i32
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.avt, ptr %i.avu, align 4, !tbaa !117
  %i.avv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avw = zext i16 %i.avv to i32
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.avw, ptr %i.avx, align 8, !tbaa !117
  %i.avy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.awa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awb = zext i16 %i.awa to i32
  store i32 %i.awb, ptr %i.avz, align 8, !tbaa !117
  %i.awc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awd = zext i16 %i.awc to i32
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.awd, ptr %i.awe, align 4, !tbaa !117
  %i.awf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awg = zext i16 %i.awf to i32
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.awg, ptr %i.awh, align 4, !tbaa !117
  %i.awi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awj = zext i16 %i.awi to i32
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.awj, ptr %i.awk, align 8, !tbaa !117
  %i.awl = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.awm = add nsw i64 %i.rh, 256
  %i.awn = load ptr, ptr %i.awl, align 8, !tbaa !92
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 32
  %i.awp = load ptr, ptr %i.awo, align 8
  %i.awq = tail call noundef i32 %i.awp(ptr noundef nonnull align 8 dereferenceable(8) %i.awl, i64 noundef %i.awm, i32 noundef 0), !call_target !94 ; 0 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.aws = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.aws, ptr %i.awr, align 2, !tbaa !76
  %i.awt = uitofp reassoc nsz arcp contract afn i16 %i.aws to float ; 2 uses
  %i.awu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.awu, ptr %i.awv, align 4, !tbaa !76
  %i.aww = uitofp reassoc nsz arcp contract afn i16 %i.awu to float ; 2 uses
  %i.awx = fcmp reassoc nsz arcp contract afn olt float %i.awt, %i.aww
  %.7.1 = select nsz i1 %i.awx, float %i.aww, float %i.awt ; 2 uses
  %i.awy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.awy, ptr %i.awz, align 8, !tbaa !76
  %i.axa = uitofp reassoc nsz arcp contract afn i16 %i.awy to float ; 2 uses
  %i.axb = fcmp reassoc nsz arcp contract afn olt float %.7.1, %i.axa
  %.7.2 = select nsz i1 %i.axb, float %i.axa, float %.7.1 ; 2 uses
  %i.axc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axd = load i16, ptr %i.awz, align 8, !tbaa !76
  %8 = load <4 x i16>, ptr %i.awr, align 2
  %i.axe = insertelement <4 x i16> %8, i16 %i.axc, i64 2
  %i.axf = insertelement <4 x i16> %i.axe, i16 %i.axd, i64 3
  %i.axg = uitofp <4 x i16> %i.axf to <4 x float> ; 2 uses
  %i.axh = extractelement <4 x float> %i.axg, i64 2 ; 2 uses
  %i.axi = fcmp reassoc nsz arcp contract afn olt float %.7.2, %i.axh
  %.7.3 = select nsz i1 %i.axi, float %i.axh, float %.7.2
  %i.axj = fmul reassoc nnan nsz arcp contract afn float %.7.3, f0x3A800000
  %i.axk = insertelement <4 x float> poison, float %i.axj, i64 0
  %i.axl = shufflevector <4 x float> %i.axk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axm = fmul reassoc nsz arcp contract afn <4 x float> %i.axl, %i.axg
  %i.axn = fptoui <4 x float> %i.axm to <4 x i16>
  store <4 x i16> %i.axn, ptr %i.awr, align 2, !tbaa !76
  %i.axo = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.axp = add nsw i64 %i.rh, 266
  %i.axq = load ptr, ptr %i.axo, align 8, !tbaa !92
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 32
  %i.axs = load ptr, ptr %i.axr, align 8
  %i.axt = tail call noundef i32 %i.axs(ptr noundef nonnull align 8 dereferenceable(8) %i.axo, i64 noundef %i.axp, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.axu = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.axv = add nsw i64 %i.rh, 526
  %i.axw = load ptr, ptr %i.axu, align 8, !tbaa !92
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 32
  %i.axy = load ptr, ptr %i.axx, align 8
  %i.axz = tail call noundef i32 %i.axy(ptr noundef nonnull align 8 dereferenceable(8) %i.axu, i64 noundef %i.axv, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aya = load i32, ptr %i.aus, align 4, !tbaa !121
  %i.ayb = icmp eq i32 %i.aya, 14
  br i1 %i.ayb, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ayc = add nsw i64 %i.rh, 1112
  %i.ayd = add nsw i64 %i.rh, 1120
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.aye = add nsw i64 %i.rh, 1556
  %i.ayf = add nsw i64 %i.rh, 1564
  br label %bb.du

bb.dp:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 9, ptr %i.ayg, align 8, !tbaa !174
  %i.ayh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayi = zext i16 %i.ayh to i32
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.ayi, ptr %i.ayj, align 4, !tbaa !121
  %i.ayk = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ayl = add nsw i64 %i.rh, 142
  %i.aym = load ptr, ptr %i.ayk, align 8, !tbaa !92
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 32
  %i.ayo = load ptr, ptr %i.ayn, align 8
  %i.ayp = tail call noundef i32 %i.ayo(ptr noundef nonnull align 8 dereferenceable(8) %i.ayk, i64 noundef %i.ayl, i32 noundef 0), !call_target !94 ; 0 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ayr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ays = uitofp reassoc nsz arcp contract afn i16 %i.ayr to float
  store float %i.ays, ptr %i.ayq, align 4, !tbaa !112
  %i.ayt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayu = uitofp reassoc nsz arcp contract afn i16 %i.ayt to float
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.ayu, ptr %i.ayv, align 8, !tbaa !112
  %i.ayw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayx = uitofp reassoc nsz arcp contract afn i16 %i.ayw to float
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.ayx, ptr %i.ayy, align 8, !tbaa !112
  %i.ayz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aza = uitofp reassoc nsz arcp contract afn i16 %i.ayz to float
  %i.azb = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aza, ptr %i.azb, align 4, !tbaa !112
  %i.azc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aze = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azf = zext i16 %i.aze to i32
  store i32 %i.azf, ptr %i.azd, align 8, !tbaa !117
  %i.azg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azh = zext i16 %i.azg to i32
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.azh, ptr %i.azi, align 4, !tbaa !117
  %i.azj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azk = zext i16 %i.azj to i32
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.azk, ptr %i.azl, align 4, !tbaa !117
  %i.azm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azn = zext i16 %i.azm to i32
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.azn, ptr %i.azo, align 8, !tbaa !117
  %i.azp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.azr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azs = zext i16 %i.azr to i32
  store i32 %i.azs, ptr %i.azq, align 8, !tbaa !117
  %i.azt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azu = zext i16 %i.azt to i32
  %i.azv = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.azu, ptr %i.azv, align 4, !tbaa !117
  %i.azw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azx = zext i16 %i.azw to i32
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.azx, ptr %i.azy, align 4, !tbaa !117
  %i.azz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.baa = zext i16 %i.azz to i32
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.baa, ptr %i.bab, align 8, !tbaa !117
  %i.bac = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bad = add nsw i64 %i.rh, 272
  %i.bae = load ptr, ptr %i.bac, align 8, !tbaa !92
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 32
  %i.bag = load ptr, ptr %i.baf, align 8
  %i.bah = tail call noundef i32 %i.bag(ptr noundef nonnull align 8 dereferenceable(8) %i.bac, i64 noundef %i.bad, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bai = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.baj = add nsw i64 %i.rh, 532
  %i.bak = load ptr, ptr %i.bai, align 8, !tbaa !92
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 32
  %i.bam = load ptr, ptr %i.bal, align 8
  %i.ban = tail call noundef i32 %i.bam(ptr noundef nonnull align 8 dereferenceable(8) %i.bai, i64 noundef %i.baj, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bao = add nsw i64 %i.rh, 658
  %i.bap = add nsw i64 %i.rh, 1584
  %i.baq = add nsw i64 %i.rh, 1592
  br label %bb.du

bb.dq:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 10, ptr %i.bar, align 8, !tbaa !174
  %i.bas = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bat = zext i16 %i.bas to i32
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.bat, ptr %i.bau, align 4, !tbaa !121
  %i.bav = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.baw = add nsw i64 %i.rh, 170
  %i.bax = load ptr, ptr %i.bav, align 8, !tbaa !92
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 32
  %i.baz = load ptr, ptr %i.bay, align 8
  %i.bba = tail call noundef i32 %i.baz(ptr noundef nonnull align 8 dereferenceable(8) %i.bav, i64 noundef %i.baw, i32 noundef 0), !call_target !94 ; 0 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.bbc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbd = uitofp reassoc nsz arcp contract afn i16 %i.bbc to float
  store float %i.bbd, ptr %i.bbb, align 4, !tbaa !112
  %i.bbe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbf = uitofp reassoc nsz arcp contract afn i16 %i.bbe to float
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.bbf, ptr %i.bbg, align 8, !tbaa !112
  %i.bbh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbi = uitofp reassoc nsz arcp contract afn i16 %i.bbh to float
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.bbi, ptr %i.bbj, align 8, !tbaa !112
  %i.bbk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbl = uitofp reassoc nsz arcp contract afn i16 %i.bbk to float
  %i.bbm = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.bbl, ptr %i.bbm, align 4, !tbaa !112
  %i.bbn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.bbp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbq = zext i16 %i.bbp to i32
  store i32 %i.bbq, ptr %i.bbo, align 8, !tbaa !117
  %i.bbr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbs = zext i16 %i.bbr to i32
  %i.bbt = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.bbs, ptr %i.bbt, align 4, !tbaa !117
  %i.bbu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbv = zext i16 %i.bbu to i32
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.bbv, ptr %i.bbw, align 4, !tbaa !117
  %i.bbx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bby = zext i16 %i.bbx to i32
  %i.bbz = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.bby, ptr %i.bbz, align 8, !tbaa !117
  %i.bca = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.bcc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcd = zext i16 %i.bcc to i32
  store i32 %i.bcd, ptr %i.bcb, align 8, !tbaa !117
  %i.bce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcf = zext i16 %i.bce to i32
  %i.bcg = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.bcf, ptr %i.bcg, align 4, !tbaa !117
  %i.bch = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bci = zext i16 %i.bch to i32
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bci, ptr %i.bcj, align 4, !tbaa !117
  %i.bck = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcl = zext i16 %i.bck to i32
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bcl, ptr %i.bcm, align 8, !tbaa !117
  %i.bcn = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bco = add nsw i64 %i.rh, 300
  %i.bcp = load ptr, ptr %i.bcn, align 8, !tbaa !92
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 32
  %i.bcr = load ptr, ptr %i.bcq, align 8
  %i.bcs = tail call noundef i32 %i.bcr(ptr noundef nonnull align 8 dereferenceable(8) %i.bcn, i64 noundef %i.bco, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bct = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bcu = add nsw i64 %i.rh, 560
  %i.bcv = load ptr, ptr %i.bct, align 8, !tbaa !92
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 32
  %i.bcx = load ptr, ptr %i.bcw, align 8
  %i.bcy = tail call noundef i32 %i.bcx(ptr noundef nonnull align 8 dereferenceable(8) %i.bct, i64 noundef %i.bcu, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bcz = add nsw i64 %i.rh, 686
  %i.bda = add nsw i64 %i.rh, 1612
end_hunk_0
