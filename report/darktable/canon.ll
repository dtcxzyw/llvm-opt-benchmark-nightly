Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.zu, ptr %i.zv, align 4, !tbaa !117
  %i.zw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.zx = zext i16 %i.zw to i32
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.zx, ptr %i.zy, align 8, !tbaa !117
  %i.zz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aab = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aac = zext i16 %i.aab to i32
  store i32 %i.aac, ptr %i.aaa, align 8, !tbaa !117
  %i.aad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.aae, ptr %i.aaf, align 4, !tbaa !117
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
  %i.afx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.afx, ptr %i.afy, align 4, !tbaa !76
  %spec.select.1.v = tail call i16 @llvm.umax.i16(i16 %i.afw, i16 %i.afx)
  %i.afz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.afz, ptr %i.aga, align 8, !tbaa !76
  %spec.select.2.v = tail call i16 @llvm.umax.i16(i16 %spec.select.1.v, i16 %i.afz)
  %5 = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %spec.select.3736 = tail call i16 @llvm.umax.i16(i16 %spec.select.2.v, i16 %5)
  %spec.select.3 = uitofp i16 %spec.select.3736 to float
  %6 = fmul reassoc nnan nsz arcp contract afn float %spec.select.3, f0x3A800000
  %i.agb = load i16, ptr %i.aga, align 8, !tbaa !76
  %i.agc = load <2 x i16>, ptr %i.afv, align 2, !tbaa !76
  %i.agd = shufflevector <2 x i16> %i.agc, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.age = insertelement <4 x i16> %i.agd, i16 %5, i64 2
  %i.agf = insertelement <4 x i16> %i.age, i16 %i.agb, i64 3
  %i.agg = uitofp <4 x i16> %i.agf to <4 x float>
  %i.agh = insertelement <4 x float> poison, float %6, i64 0
  %i.agi = shufflevector <4 x float> %i.agh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.agi, %i.agg
  %i.agk = fptoui <4 x float> %i.agj to <4 x i16>
  store <4 x i16> %i.agk, ptr %i.afv, align 2, !tbaa !76
  %i.agl = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.agm = add nsw i64 %i.rh, 166
  %i.agn = load ptr, ptr %i.agl, align 8, !tbaa !92
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  %i.agp = load ptr, ptr %i.ago, align 8
  %i.agq = tail call noundef i32 %i.agp(ptr noundef nonnull align 8 dereferenceable(8) %i.agl, i64 noundef %i.agm, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.agr = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ags = add nsw i64 %i.rh, 336
  %i.agt = load ptr, ptr %i.agr, align 8, !tbaa !92
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  %i.agv = load ptr, ptr %i.agu, align 8
  %i.agw = tail call noundef i32 %i.agv(ptr noundef nonnull align 8 dereferenceable(8) %i.agr, i64 noundef %i.ags, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.agx = load i32, ptr %i.adw, align 4, !tbaa !121
  switch i32 %i.agx, label %bb.de [
    i32 4, label %bb.db
    i32 5, label %bb.db
    i32 6, label %bb.dc
    i32 7, label %bb.dc
    i32 9, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.agy = add nsw i64 %i.rh, 1384
  %i.agz = add nsw i64 %i.rh, 1392
  br label %bb.du

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.aha = add nsw i64 %i.rh, 1430
  %i.ahb = add nsw i64 %i.rh, 1438
  br label %bb.du

bb.dd:                                            ; preds = %bb.da
  %i.ahc = add nsw i64 %i.rh, 1438
  %i.ahd = add nsw i64 %i.rh, 1446
  br label %bb.du

bb.de:                                            ; preds = %bb.da
  %i.ahe = add nsw i64 %i.rh, 462
  br label %bb.du

bb.df:                                            ; preds = %bb.cw
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 5, ptr %i.ahf, align 8, !tbaa !174
  %i.ahg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahh = zext i16 %i.ahg to i32
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.ahh, ptr %i.ahi, align 4, !tbaa !121
  %i.ahj = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ahk = add nsw i64 %i.rh, 142
  %i.ahl = load ptr, ptr %i.ahj, align 8, !tbaa !92
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = tail call noundef i32 %i.ahn(ptr noundef nonnull align 8 dereferenceable(8) %i.ahj, i64 noundef %i.ahk, i32 noundef 0), !call_target !94 ; 0 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ahq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahr = uitofp reassoc nsz arcp contract afn i16 %i.ahq to float
  store float %i.ahr, ptr %i.ahp, align 4, !tbaa !112
  %i.ahs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aht = uitofp reassoc nsz arcp contract afn i16 %i.ahs to float
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aht, ptr %i.ahu, align 8, !tbaa !112
  %i.ahv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahw = uitofp reassoc nsz arcp contract afn i16 %i.ahv to float
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.ahw, ptr %i.ahx, align 8, !tbaa !112
  %i.ahy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahz = uitofp reassoc nsz arcp contract afn i16 %i.ahy to float
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !112
  %i.aib = load i32, ptr %i.ahi, align 4, !tbaa !121
  switch i32 %i.aib, label %.thread587 [
    i32 65532, label %bb.dg
    i32 65533, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.aic = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aid = add nsw i64 %i.rh, 158
  %i.aie = load ptr, ptr %i.aic, align 8, !tbaa !92
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 32
  %i.aig = load ptr, ptr %i.aif, align 8
  %i.aih = tail call noundef i32 %i.aig(ptr noundef nonnull align 8 dereferenceable(8) %i.aic, i64 noundef %i.aid, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aij = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aik = zext i16 %i.aij to i32
  store i32 %i.aik, ptr %i.aii, align 8, !tbaa !117
  %i.ail = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aim = zext i16 %i.ail to i32
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aim, ptr %i.ain, align 4, !tbaa !117
  %i.aio = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aip = zext i16 %i.aio to i32
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aip, ptr %i.aiq, align 4, !tbaa !117
  %i.air = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ais = zext i16 %i.air to i32
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.ais, ptr %i.ait, align 8, !tbaa !117
  %i.aiu = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !92
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = tail call noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(8) %i.aiu, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aja = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajb = zext i16 %i.aja to i32
  store i32 %i.ajb, ptr %i.aiz, align 8, !tbaa !117
  %i.ajc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !117
  %i.ajf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajg = zext i16 %i.ajf to i32
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ajg, ptr %i.ajh, align 4, !tbaa !117
  %i.aji = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajj = zext i16 %i.aji to i32
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ajj, ptr %i.ajk, align 8, !tbaa !117
  %i.ajl = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !92
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  %i.ajo = load ptr, ptr %i.ajn, align 8
  %i.ajp = tail call noundef i32 %i.ajo(ptr noundef nonnull align 8 dereferenceable(8) %i.ajl, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.ajr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajs = zext i16 %i.ajr to i32
  store i32 %i.ajs, ptr %i.ajq, align 8, !tbaa !117
  %i.ajt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aju = zext i16 %i.ajt to i32
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !117
  %i.ajw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajx = zext i16 %i.ajw to i32
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.ajx, ptr %i.ajy, align 4, !tbaa !117
  %i.ajz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aka = zext i16 %i.ajz to i32
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.aka, ptr %i.akb, align 8, !tbaa !117
  %i.akc = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !92
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 32
  %i.akf = load ptr, ptr %i.ake, align 8
  %i.akg = tail call noundef i32 %i.akf(ptr noundef nonnull align 8 dereferenceable(8) %i.akc, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, i32 noundef 24)
  %i.akh = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !92
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 32
  %i.akk = load ptr, ptr %i.akj, align 8
  %i.akl = tail call noundef i32 %i.akk(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, i64 noundef 168, i32 noundef 1), !call_target !94 ; 0 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 187464
  %i.akn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ako = zext i16 %i.akn to i32
  store i32 %i.ako, ptr %i.akm, align 8, !tbaa !117
  %i.akp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akq = zext i16 %i.akp to i32
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 187468
  store i32 %i.akq, ptr %i.akr, align 4, !tbaa !117
  %i.aks = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akt = zext i16 %i.aks to i32
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 187476
  store i32 %i.akt, ptr %i.aku, align 4, !tbaa !117
  %i.akv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akw = zext i16 %i.akv to i32
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 187472
  store i32 %i.akw, ptr %i.akx, align 8, !tbaa !117
  %i.aky = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !92
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 32
  %i.alb = load ptr, ptr %i.ala, align 8
  %i.alc = tail call noundef i32 %i.alb(ptr noundef nonnull align 8 dereferenceable(8) %i.aky, i64 noundef 24, i32 noundef 1), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.ald = add nsw i64 %i.rh, 666
  %i.ale = add nsw i64 %i.rh, 2770
  br label %bb.du

bb.dh:                                            ; preds = %bb.df
  %i.alf = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.alg = add nsw i64 %i.rh, 152
  %i.alh = load ptr, ptr %i.alf, align 8, !tbaa !92
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8
  %i.alk = tail call noundef i32 %i.alj(ptr noundef nonnull align 8 dereferenceable(8) %i.alf, i64 noundef %i.alg, i32 noundef 0), !call_target !94 ; 0 uses
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.alm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aln = zext i16 %i.alm to i32
  store i32 %i.aln, ptr %i.all, align 8, !tbaa !117
  %i.alo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alp = zext i16 %i.alo to i32
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.alp, ptr %i.alq, align 4, !tbaa !117
  %i.alr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.als = zext i16 %i.alr to i32
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.als, ptr %i.alt, align 4, !tbaa !117
  %i.alu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alv = zext i16 %i.alu to i32
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.alv, ptr %i.alw, align 8, !tbaa !117
  %i.alx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.alz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ama = zext i16 %i.alz to i32
  store i32 %i.ama, ptr %i.aly, align 8, !tbaa !117
  %i.amb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amc = zext i16 %i.amb to i32
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.amc, ptr %i.amd, align 4, !tbaa !117
  %i.ame = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amf = zext i16 %i.ame to i32
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.amf, ptr %i.amg, align 4, !tbaa !117
  %i.amh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ami = zext i16 %i.amh to i32
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ami, ptr %i.amj, align 8, !tbaa !117
  %i.amk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.amm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amn = zext i16 %i.amm to i32
  store i32 %i.amn, ptr %i.aml, align 8, !tbaa !117
  %i.amo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amp = zext i16 %i.amo to i32
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.amp, ptr %i.amq, align 4, !tbaa !117
  %i.amr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ams = zext i16 %i.amr to i32
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !117
  %i.amu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amv = zext i16 %i.amu to i32
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.amv, ptr %i.amw, align 8, !tbaa !117
  %i.amx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.amy = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.amz = add nsw i64 %i.rh, 372
  %i.ana = load ptr, ptr %i.amy, align 8, !tbaa !92
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 32
  %i.anc = load ptr, ptr %i.anb, align 8
  %i.and = tail call noundef i32 %i.anc(ptr noundef nonnull align 8 dereferenceable(8) %i.amy, i64 noundef %i.amz, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.ane = add nsw i64 %i.rh, 528
  br label %bb.du

bb.di:                                            ; preds = %bb.cw, %bb.cw
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 6, ptr %i.anf, align 8, !tbaa !174
  %i.ang = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anh = zext i16 %i.ang to i32
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.anh, ptr %i.ani, align 4, !tbaa !121
  %i.anj = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ank = add nsw i64 %i.rh, 126
  %i.anl = load ptr, ptr %i.anj, align 8, !tbaa !92
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 32
  %i.ann = load ptr, ptr %i.anm, align 8
  %i.ano = tail call noundef i32 %i.ann(ptr noundef nonnull align 8 dereferenceable(8) %i.anj, i64 noundef %i.ank, i32 noundef 0), !call_target !94 ; 0 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.anq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anr = uitofp reassoc nsz arcp contract afn i16 %i.anq to float
  store float %i.anr, ptr %i.anp, align 4, !tbaa !112
  %i.ans = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ant = uitofp reassoc nsz arcp contract afn i16 %i.ans to float
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.ant, ptr %i.anu, align 8, !tbaa !112
  %i.anv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anw = uitofp reassoc nsz arcp contract afn i16 %i.anv to float
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.anw, ptr %i.anx, align 8, !tbaa !112
  %i.any = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anz = uitofp reassoc nsz arcp contract afn i16 %i.any to float
  %i.aoa = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.anz, ptr %i.aoa, align 4, !tbaa !112
  %i.aob = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aod = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoe = zext i16 %i.aod to i32
  store i32 %i.aoe, ptr %i.aoc, align 8, !tbaa !117
  %i.aof = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aog = zext i16 %i.aof to i32
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aog, ptr %i.aoh, align 4, !tbaa !117
  %i.aoi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoj = zext i16 %i.aoi to i32
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aoj, ptr %i.aok, align 4, !tbaa !117
  %i.aol = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aom = zext i16 %i.aol to i32
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aom, ptr %i.aon, align 8, !tbaa !117
  %i.aoo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aoq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aor = zext i16 %i.aoq to i32
  store i32 %i.aor, ptr %i.aop, align 8, !tbaa !117
  %i.aos = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aot = zext i16 %i.aos to i32
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.aot, ptr %i.aou, align 4, !tbaa !117
  %i.aov = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aow = zext i16 %i.aov to i32
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.aow, ptr %i.aox, align 4, !tbaa !117
  %i.aoy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoz = zext i16 %i.aoy to i32
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.aoz, ptr %i.apa, align 8, !tbaa !117
  %i.apb = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.apc = add nsw i64 %i.rh, 196
  %i.apd = load ptr, ptr %i.apb, align 8, !tbaa !92
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 32
  %i.apf = load ptr, ptr %i.ape, align 8
  %i.apg = tail call noundef i32 %i.apf(ptr noundef nonnull align 8 dereferenceable(8) %i.apb, i64 noundef %i.apc, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.api = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.api, ptr %i.aph, align 2, !tbaa !76
  %i.apj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.apj, ptr %i.apk, align 4, !tbaa !76
  %spec.select535.1.v = tail call i16 @llvm.umax.i16(i16 %i.api, i16 %i.apj)
  %i.apl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.apl, ptr %i.apm, align 8, !tbaa !76
  %spec.select535.2.v = tail call i16 @llvm.umax.i16(i16 %spec.select535.1.v, i16 %i.apl)
  %7 = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %spec.select535.3734 = tail call i16 @llvm.umax.i16(i16 %spec.select535.2.v, i16 %7)
  %spec.select535.3 = uitofp i16 %spec.select535.3734 to float
  %8 = fmul reassoc nnan nsz arcp contract afn float %spec.select535.3, f0x3A800000
  %i.apn = load i16, ptr %i.apm, align 8, !tbaa !76
  %i.apo = load <2 x i16>, ptr %i.aph, align 2, !tbaa !76
  %i.app = shufflevector <2 x i16> %i.apo, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.apq = insertelement <4 x i16> %i.app, i16 %7, i64 2
  %i.apr = insertelement <4 x i16> %i.apq, i16 %i.apn, i64 3
  %i.aps = uitofp <4 x i16> %i.apr to <4 x float>
  %i.apt = insertelement <4 x float> poison, float %8, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.apu, %i.aps
  %i.apw = fptoui <4 x float> %i.apv to <4 x i16>
  store <4 x i16> %i.apw, ptr %i.aph, align 2, !tbaa !76
  %i.apx = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.apy = add nsw i64 %i.rh, 206
  %i.apz = load ptr, ptr %i.apx, align 8, !tbaa !92
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 32
  %i.aqb = load ptr, ptr %i.aqa, align 8
  %i.aqc = tail call noundef i32 %i.aqb(ptr noundef nonnull align 8 dereferenceable(8) %i.apx, i64 noundef %i.apy, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aqd = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aqe = add nsw i64 %i.rh, 376
  %i.aqf = load ptr, ptr %i.aqd, align 8, !tbaa !92
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 32
  %i.aqh = load ptr, ptr %i.aqg, align 8
  %i.aqi = tail call noundef i32 %i.aqh(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, i64 noundef %i.aqe, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aqj = add nsw i64 %i.rh, 958
  %i.aqk = add nsw i64 %i.rh, 966
  br label %bb.du

bb.dj:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 7, ptr %i.aql, align 8, !tbaa !174
  %i.aqm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqn = zext i16 %i.aqm to i32
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.aqn, ptr %i.aqo, align 4, !tbaa !121
  %i.aqp = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.aqq = add nsw i64 %i.rh, 126
  %i.aqr = load ptr, ptr %i.aqp, align 8, !tbaa !92
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 32
  %i.aqt = load ptr, ptr %i.aqs, align 8
  %i.aqu = tail call noundef i32 %i.aqt(ptr noundef nonnull align 8 dereferenceable(8) %i.aqp, i64 noundef %i.aqq, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aqw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqx = uitofp reassoc nsz arcp contract afn i16 %i.aqw to float
  store float %i.aqx, ptr %i.aqv, align 4, !tbaa !112
  %i.aqy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqz = uitofp reassoc nsz arcp contract afn i16 %i.aqy to float
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aqz, ptr %i.ara, align 8, !tbaa !112
  %i.arb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arc = uitofp reassoc nsz arcp contract afn i16 %i.arb to float
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.arc, ptr %i.ard, align 8, !tbaa !112
  %i.are = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arf = uitofp reassoc nsz arcp contract afn i16 %i.are to float
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.arf, ptr %i.arg, align 4, !tbaa !112
  %i.arh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.arj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ark = zext i16 %i.arj to i32
  store i32 %i.ark, ptr %i.ari, align 8, !tbaa !117
  %i.arl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arm = zext i16 %i.arl to i32
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.arm, ptr %i.arn, align 4, !tbaa !117
  %i.aro = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arp = zext i16 %i.aro to i32
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !117
  %i.arr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ars = zext i16 %i.arr to i32
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.ars, ptr %i.art, align 8, !tbaa !117
  %i.aru = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.arw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arx = zext i16 %i.arw to i32
  store i32 %i.arx, ptr %i.arv, align 8, !tbaa !117
  %i.ary = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arz = zext i16 %i.ary to i32
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.arz, ptr %i.asa, align 4, !tbaa !117
  %i.asb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asc = zext i16 %i.asb to i32
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.asc, ptr %i.asd, align 4, !tbaa !117
  %i.ase = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asf = zext i16 %i.ase to i32
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.asf, ptr %i.asg, align 8, !tbaa !117
  %i.ash = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.asi = add nsw i64 %i.rh, 246
  %i.asj = load ptr, ptr %i.ash, align 8, !tbaa !92
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 32
  %i.asl = load ptr, ptr %i.ask, align 8
  %i.asm = tail call noundef i32 %i.asl(ptr noundef nonnull align 8 dereferenceable(8) %i.ash, i64 noundef %i.asi, i32 noundef 0), !call_target !94 ; 0 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.aso = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.aso, ptr %i.asn, align 2, !tbaa !76
  %i.asp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.asp, ptr %i.asq, align 4, !tbaa !76
  %spec.select536.1.v = tail call i16 @llvm.umax.i16(i16 %i.aso, i16 %i.asp)
  %i.asr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.asr, ptr %i.ass, align 8, !tbaa !76
  %spec.select536.2.v = tail call i16 @llvm.umax.i16(i16 %spec.select536.1.v, i16 %i.asr)
  %9 = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %spec.select536.3732 = tail call i16 @llvm.umax.i16(i16 %spec.select536.2.v, i16 %9)
  %spec.select536.3 = uitofp i16 %spec.select536.3732 to float
  %10 = fmul reassoc nnan nsz arcp contract afn float %spec.select536.3, f0x3A800000
  %i.ast = load i16, ptr %i.ass, align 8, !tbaa !76
  %i.asu = load <2 x i16>, ptr %i.asn, align 2, !tbaa !76
  %i.asv = shufflevector <2 x i16> %i.asu, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asw = insertelement <4 x i16> %i.asv, i16 %9, i64 2
  %i.asx = insertelement <4 x i16> %i.asw, i16 %i.ast, i64 3
  %i.asy = uitofp <4 x i16> %i.asx to <4 x float>
  %i.asz = insertelement <4 x float> poison, float %10, i64 0
  %i.ata = shufflevector <4 x float> %i.asz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ata, %i.asy
  %i.atc = fptoui <4 x float> %i.atb to <4 x i16>
  store <4 x i16> %i.atc, ptr %i.asn, align 2, !tbaa !76
  %i.atd = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.ate = add nsw i64 %i.rh, 256
  %i.atf = load ptr, ptr %i.atd, align 8, !tbaa !92
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 32
  %i.ath = load ptr, ptr %i.atg, align 8
  %i.ati = tail call noundef i32 %i.ath(ptr noundef nonnull align 8 dereferenceable(8) %i.atd, i64 noundef %i.ate, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.atj = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.atk = add nsw i64 %i.rh, 426
  %i.atl = load ptr, ptr %i.atj, align 8, !tbaa !92
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 32
  %i.atn = load ptr, ptr %i.atm, align 8
  %i.ato = tail call noundef i32 %i.atn(ptr noundef nonnull align 8 dereferenceable(8) %i.atj, i64 noundef %i.atk, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.atp = load i32, ptr %i.aqo, align 4, !tbaa !121
  switch i32 %i.atp, label %.thread587 [
    i32 10, label %bb.dk
    i32 11, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.atq = add nsw i64 %i.rh, 1008
  %i.atr = add nsw i64 %i.rh, 1016
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj
  %i.ats = add nsw i64 %i.rh, 1456
  %i.att = add nsw i64 %i.rh, 1464
  br label %bb.du

bb.dm:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 8, ptr %i.atu, align 8, !tbaa !174
  %i.atv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.atw = zext i16 %i.atv to i32
  %i.atx = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.atw, ptr %i.atx, align 4, !tbaa !121
  %i.aty = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.atz = add nsw i64 %i.rh, 126
  %i.aua = load ptr, ptr %i.aty, align 8, !tbaa !92
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 32
  %i.auc = load ptr, ptr %i.aub, align 8
  %i.aud = tail call noundef i32 %i.auc(ptr noundef nonnull align 8 dereferenceable(8) %i.aty, i64 noundef %i.atz, i32 noundef 0), !call_target !94 ; 0 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.auf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aug = uitofp reassoc nsz arcp contract afn i16 %i.auf to float
  store float %i.aug, ptr %i.aue, align 4, !tbaa !112
  %i.auh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aui = uitofp reassoc nsz arcp contract afn i16 %i.auh to float
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aui, ptr %i.auj, align 8, !tbaa !112
  %i.auk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aul = uitofp reassoc nsz arcp contract afn i16 %i.auk to float
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aul, ptr %i.aum, align 8, !tbaa !112
  %i.aun = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.auo = uitofp reassoc nsz arcp contract afn i16 %i.aun to float
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.auo, ptr %i.aup, align 4, !tbaa !112
  %i.auq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aus = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aut = zext i16 %i.aus to i32
  store i32 %i.aut, ptr %i.aur, align 8, !tbaa !117
  %i.auu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.auv = zext i16 %i.auu to i32
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.auv, ptr %i.auw, align 4, !tbaa !117
  %i.aux = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.auy = zext i16 %i.aux to i32
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.auy, ptr %i.auz, align 4, !tbaa !117
  %i.ava = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avb = zext i16 %i.ava to i32
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.avb, ptr %i.avc, align 8, !tbaa !117
  %i.avd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.avf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avg = zext i16 %i.avf to i32
  store i32 %i.avg, ptr %i.ave, align 8, !tbaa !117
  %i.avh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avi = zext i16 %i.avh to i32
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.avi, ptr %i.avj, align 4, !tbaa !117
  %i.avk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avl = zext i16 %i.avk to i32
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.avl, ptr %i.avm, align 4, !tbaa !117
  %i.avn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avo = zext i16 %i.avn to i32
  %i.avp = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.avo, ptr %i.avp, align 8, !tbaa !117
  %i.avq = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.avr = add nsw i64 %i.rh, 256
  %i.avs = load ptr, ptr %i.avq, align 8, !tbaa !92
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 32
  %i.avu = load ptr, ptr %i.avt, align 8
  %i.avv = tail call noundef i32 %i.avu(ptr noundef nonnull align 8 dereferenceable(8) %i.avq, i64 noundef %i.avr, i32 noundef 0), !call_target !94 ; 0 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.avx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.avx, ptr %i.avw, align 2, !tbaa !76
  %i.avy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.avy, ptr %i.avz, align 4, !tbaa !76
  %spec.select537.1.v = tail call i16 @llvm.umax.i16(i16 %i.avx, i16 %i.avy)
  %i.awa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.awa, ptr %i.awb, align 8, !tbaa !76
  %spec.select537.2.v = tail call i16 @llvm.umax.i16(i16 %spec.select537.1.v, i16 %i.awa)
  %11 = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %spec.select537.3730 = tail call i16 @llvm.umax.i16(i16 %spec.select537.2.v, i16 %11)
  %spec.select537.3 = uitofp i16 %spec.select537.3730 to float
  %12 = fmul reassoc nnan nsz arcp contract afn float %spec.select537.3, f0x3A800000
  %i.awc = load i16, ptr %i.awb, align 8, !tbaa !76
  %i.awd = load <2 x i16>, ptr %i.avw, align 2, !tbaa !76
  %i.awe = shufflevector <2 x i16> %i.awd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awf = insertelement <4 x i16> %i.awe, i16 %11, i64 2
  %i.awg = insertelement <4 x i16> %i.awf, i16 %i.awc, i64 3
  %i.awh = uitofp <4 x i16> %i.awg to <4 x float>
  %i.awi = insertelement <4 x float> poison, float %12, i64 0
  %i.awj = shufflevector <4 x float> %i.awi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.awj, %i.awh
  %i.awl = fptoui <4 x float> %i.awk to <4 x i16>
  store <4 x i16> %i.awl, ptr %i.avw, align 2, !tbaa !76
  %i.awm = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.awn = add nsw i64 %i.rh, 266
  %i.awo = load ptr, ptr %i.awm, align 8, !tbaa !92
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 32
  %i.awq = load ptr, ptr %i.awp, align 8
  %i.awr = tail call noundef i32 %i.awq(ptr noundef nonnull align 8 dereferenceable(8) %i.awm, i64 noundef %i.awn, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aws = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.awt = add nsw i64 %i.rh, 526
  %i.awu = load ptr, ptr %i.aws, align 8, !tbaa !92
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 32
  %i.aww = load ptr, ptr %i.awv, align 8
  %i.awx = tail call noundef i32 %i.aww(ptr noundef nonnull align 8 dereferenceable(8) %i.aws, i64 noundef %i.awt, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.awy = load i32, ptr %i.atx, align 4, !tbaa !121
  %i.awz = icmp eq i32 %i.awy, 14
  br i1 %i.awz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.axa = add nsw i64 %i.rh, 1112
  %i.axb = add nsw i64 %i.rh, 1120
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.axc = add nsw i64 %i.rh, 1556
  %i.axd = add nsw i64 %i.rh, 1564
  br label %bb.du

bb.dp:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 9, ptr %i.axe, align 8, !tbaa !174
  %i.axf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axg = zext i16 %i.axf to i32
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.axg, ptr %i.axh, align 4, !tbaa !121
  %i.axi = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.axj = add nsw i64 %i.rh, 142
  %i.axk = load ptr, ptr %i.axi, align 8, !tbaa !92
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 32
  %i.axm = load ptr, ptr %i.axl, align 8
  %i.axn = tail call noundef i32 %i.axm(ptr noundef nonnull align 8 dereferenceable(8) %i.axi, i64 noundef %i.axj, i32 noundef 0), !call_target !94 ; 0 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.axp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axq = uitofp reassoc nsz arcp contract afn i16 %i.axp to float
  store float %i.axq, ptr %i.axo, align 4, !tbaa !112
  %i.axr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axs = uitofp reassoc nsz arcp contract afn i16 %i.axr to float
  %i.axt = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.axs, ptr %i.axt, align 8, !tbaa !112
  %i.axu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axv = uitofp reassoc nsz arcp contract afn i16 %i.axu to float
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.axv, ptr %i.axw, align 8, !tbaa !112
  %i.axx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axy = uitofp reassoc nsz arcp contract afn i16 %i.axx to float
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.axy, ptr %i.axz, align 4, !tbaa !112
  %i.aya = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.ayc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayd = zext i16 %i.ayc to i32
  store i32 %i.ayd, ptr %i.ayb, align 8, !tbaa !117
  %i.aye = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayf = zext i16 %i.aye to i32
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.ayf, ptr %i.ayg, align 4, !tbaa !117
  %i.ayh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayi = zext i16 %i.ayh to i32
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.ayi, ptr %i.ayj, align 4, !tbaa !117
  %i.ayk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayl = zext i16 %i.ayk to i32
  %i.aym = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.ayl, ptr %i.aym, align 8, !tbaa !117
  %i.ayn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.ayp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayq = zext i16 %i.ayp to i32
  store i32 %i.ayq, ptr %i.ayo, align 8, !tbaa !117
  %i.ayr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ays = zext i16 %i.ayr to i32
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.ays, ptr %i.ayt, align 4, !tbaa !117
  %i.ayu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayv = zext i16 %i.ayu to i32
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ayv, ptr %i.ayw, align 4, !tbaa !117
  %i.ayx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayy = zext i16 %i.ayx to i32
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ayy, ptr %i.ayz, align 8, !tbaa !117
  %i.aza = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.azb = add nsw i64 %i.rh, 272
  %i.azc = load ptr, ptr %i.aza, align 8, !tbaa !92
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 32
  %i.aze = load ptr, ptr %i.azd, align 8
  %i.azf = tail call noundef i32 %i.aze(ptr noundef nonnull align 8 dereferenceable(8) %i.aza, i64 noundef %i.azb, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.azg = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.azh = add nsw i64 %i.rh, 532
  %i.azi = load ptr, ptr %i.azg, align 8, !tbaa !92
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 32
  %i.azk = load ptr, ptr %i.azj, align 8
  %i.azl = tail call noundef i32 %i.azk(ptr noundef nonnull align 8 dereferenceable(8) %i.azg, i64 noundef %i.azh, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.azm = add nsw i64 %i.rh, 658
  %i.azn = add nsw i64 %i.rh, 1584
  %i.azo = add nsw i64 %i.rh, 1592
  br label %bb.du

bb.dq:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 10, ptr %i.azp, align 8, !tbaa !174
  %i.azq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azr = zext i16 %i.azq to i32
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.azr, ptr %i.azs, align 4, !tbaa !121
  %i.azt = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.azu = add nsw i64 %i.rh, 170
  %i.azv = load ptr, ptr %i.azt, align 8, !tbaa !92
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 32
  %i.azx = load ptr, ptr %i.azw, align 8
  %i.azy = tail call noundef i32 %i.azx(ptr noundef nonnull align 8 dereferenceable(8) %i.azt, i64 noundef %i.azu, i32 noundef 0), !call_target !94 ; 0 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.baa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bab = uitofp reassoc nsz arcp contract afn i16 %i.baa to float
  store float %i.bab, ptr %i.azz, align 4, !tbaa !112
  %i.bac = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bad = uitofp reassoc nsz arcp contract afn i16 %i.bac to float
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.bad, ptr %i.bae, align 8, !tbaa !112
  %i.baf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bag = uitofp reassoc nsz arcp contract afn i16 %i.baf to float
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.bag, ptr %i.bah, align 8, !tbaa !112
  %i.bai = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.baj = uitofp reassoc nsz arcp contract afn i16 %i.bai to float
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.baj, ptr %i.bak, align 4, !tbaa !112
  %i.bal = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.ban = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bao = zext i16 %i.ban to i32
  store i32 %i.bao, ptr %i.bam, align 8, !tbaa !117
  %i.bap = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.baq = zext i16 %i.bap to i32
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.baq, ptr %i.bar, align 4, !tbaa !117
  %i.bas = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bat = zext i16 %i.bas to i32
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.bat, ptr %i.bau, align 4, !tbaa !117
  %i.bav = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.baw = zext i16 %i.bav to i32
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.baw, ptr %i.bax, align 8, !tbaa !117
  %i.bay = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.bba = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbb = zext i16 %i.bba to i32
  store i32 %i.bbb, ptr %i.baz, align 8, !tbaa !117
  %i.bbc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbd = zext i16 %i.bbc to i32
  %i.bbe = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.bbd, ptr %i.bbe, align 4, !tbaa !117
  %i.bbf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbg = zext i16 %i.bbf to i32
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bbg, ptr %i.bbh, align 4, !tbaa !117
  %i.bbi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bbj, ptr %i.bbk, align 8, !tbaa !117
  %i.bbl = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bbm = add nsw i64 %i.rh, 300
  %i.bbn = load ptr, ptr %i.bbl, align 8, !tbaa !92
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 32
  %i.bbp = load ptr, ptr %i.bbo, align 8
  %i.bbq = tail call noundef i32 %i.bbp(ptr noundef nonnull align 8 dereferenceable(8) %i.bbl, i64 noundef %i.bbm, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bbr = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bbs = add nsw i64 %i.rh, 560
  %i.bbt = load ptr, ptr %i.bbr, align 8, !tbaa !92
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 32
  %i.bbv = load ptr, ptr %i.bbu, align 8
  %i.bbw = tail call noundef i32 %i.bbv(ptr noundef nonnull align 8 dereferenceable(8) %i.bbr, i64 noundef %i.bbs, i32 noundef 0), !call_target !94 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bbx = add nsw i64 %i.rh, 686
  %i.bby = add nsw i64 %i.rh, 1612
  %i.bbz = add nsw i64 %i.rh, 1620
  br label %bb.du

bb.dr:                                            ; preds = %bb.cw, %bb.cw
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 11, ptr %i.bca, align 8, !tbaa !174
  %i.bcb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcc = zext i16 %i.bcb to i32
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 1940
end_hunk_0
begin_hunk_1_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  %i.bif = zext i16 %i.bie to i32
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store i32 %i.bif, ptr %i.big, align 8, !tbaa !177
  %i.bih = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.bii = insertelement <4 x i16> poison, i16 %i.bie, i64 0
  %i.bij = shufflevector <4 x i16> %i.bii, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bik = zext <4 x i16> %i.bij to <4 x i32>
  store <4 x i32> %i.bik, ptr %i.bih, align 4, !tbaa !117
  br label %.loopexit604

.loopexit604:                                     ; preds = %.loopexit604.loopexit, %bb.dw
  %i.bil = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.bim = load i32, ptr %i.bil, align 8, !tbaa !175
  %i.bin = icmp eq i32 %i.bim, 0
  %i.bio = icmp ne i64 %.0473, 0
  %or.cond21 = select i1 %i.bin, i1 %i.bio, i1 false
  br i1 %or.cond21, label %bb.dz, label %.thread587

bb.dz:                                            ; preds = %.loopexit604
  %i.bip = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !92
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 32
  %i.bis = load ptr, ptr %i.bir, align 8
  %i.bit = tail call noundef i32 %i.bis(ptr noundef nonnull align 8 dereferenceable(8) %i.bip, i64 noundef %.0473, i32 noundef 0), !call_target !94 ; 0 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.biv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.biw = zext i16 %i.biv to i32                 ; 2 uses
  store i32 %i.biw, ptr %i.biu, align 8, !tbaa !117
  %i.bix = add nuw nsw i32 %.1, %i.biw
  %i.biy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.biz = zext i16 %i.biy to i32                 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %0, i64 1956
  store i32 %i.biz, ptr %i.bja, align 4, !tbaa !117
  %i.bjb = add nuw nsw i32 %i.bix, %i.biz
  %i.bjc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bjd = zext i16 %i.bjc to i32                 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store i32 %i.bjd, ptr %i.bje, align 4, !tbaa !117
  %i.bjf = add nuw nsw i32 %i.bjb, %i.bjd
  %i.bjg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bjh = zext i16 %i.bjg to i32                 ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store i32 %i.bjh, ptr %i.bji, align 8, !tbaa !117
  %i.bjj = add nuw nsw i32 %i.bjf, %i.bjh
  %i.bjk = lshr i32 %i.bjj, 2
  store i32 %i.bjk, ptr %i.bil, align 8, !tbaa !175
  br label %.thread587

.thread587:                                       ; preds = %bb.dj, %bb.df, %bb.dt, %bb.dz, %.loopexit604
  %i.bjl = load ptr, ptr %i.rc, align 8, !tbaa !91 ; 2 uses
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !92
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 32
  %i.bjo = load ptr, ptr %i.bjn, align 8
  %i.bjp = tail call noundef i32 %i.bjo(ptr noundef nonnull align 8 dereferenceable(8) %i.bjl, i64 noundef %i.rh, i32 noundef 0), !call_target !94 ; 0 uses
  br label %.thread595

bb.ea:                                            ; preds = %bb.cv
  switch i32 %1, label %bb.ef [
    i32 16403, label %bb.eb
    i32 16408, label %bb.ed
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.bjq = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bjr = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 2020
  store i32 %i.bjr, ptr %i.bjs, align 4, !tbaa !178
  %i.bjt = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bju = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not519 = icmp eq i32 %i.bju, 0
  br i1 %.not519, label %.thread595, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bjv = uitofp reassoc nsz arcp contract afn i32 %i.bju to float
  %i.bjw = uitofp reassoc nsz arcp contract afn i32 %i.bjt to float
  %i.bjx = fdiv reassoc nsz arcp contract afn float %i.bjw, %i.bjv
  %i.bjy = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store float %i.bjx, ptr %i.bjy, align 8, !tbaa !179
  br label %.thread595

bb.ed:                                            ; preds = %bb.ea
  %i.bjz = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !91 ; 2 uses
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !92
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 32
  %i.bkd = load ptr, ptr %i.bkc, align 8
  %i.bke = tail call noundef i32 %i.bkd(ptr noundef nonnull align 8 dereferenceable(8) %i.bka, i64 noundef 8, i32 noundef 1), !call_target !94 ; 0 uses
  %i.bkf = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.bkf, i32 3)
  store i32 %spec.store.select, ptr %i.bkg, align 4
  %i.bkh = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %or.cond539 = icmp ugt i32 %i.bkh, 5
  %spec.store.select540 = select i1 %or.cond539, i32 0, i32 %i.bkh ; 3 uses
  store i32 %spec.store.select540, ptr %i.bki, align 8
  %.not518 = icmp eq i32 %spec.store.select540, 0
  br i1 %.not518, label %.thread595, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bkj = uitofp nneg i32 %spec.store.select540 to float
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 4988 ; 2 uses
  %i.bkl = load float, ptr %i.bkk, align 4, !tbaa !87
  %i.bkm = fsub reassoc nsz arcp contract afn float %i.bkl, %i.bkj
  store float %i.bkm, ptr %i.bkk, align 4, !tbaa !87
  br label %.thread595

bb.ef:                                            ; preds = %bb.ea
  %i.bkn = icmp eq i32 %1, 16417
  %or.cond23 = and i1 %i.bkn, %i.da
  br i1 %or.cond23, label %bb.eg, label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.bko = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store i32 %i.bko, ptr %i.bkp, align 4, !tbaa !117
  %.not516 = icmp eq i32 %i.bko, 0
  br i1 %.not516, label %.thread595, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.bkq = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store i32 %i.bkq, ptr %i.bkr, align 8, !tbaa !117
  %.not517 = icmp eq i32 %i.bkq, 0
  br i1 %.not517, label %.thread595, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bks = icmp ugt i32 %3, 3
  br i1 %i.bks, label %bb.ej, label %.thread595.loopexit692

bb.ej:                                            ; preds = %bb.ei
  %i.bkt = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bku = getelementptr inbounds nuw i8, ptr %0, i64 1980
  store i32 %i.bkt, ptr %i.bku, align 4, !tbaa !117
  %i.bkv = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bkw = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i32 %i.bkv, ptr %i.bkw, align 8, !tbaa !117
  br label %.thread595.loopexit692

.thread595.loopexit692:                           ; preds = %bb.ej, %bb.ei
  %i.bkx = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.024000e+03), ptr %i.bkx, align 4, !tbaa !112
  br label %.thread595

bb.ek:                                            ; preds = %bb.ef
  %i.bky = icmp eq i32 %1, 16422
  br i1 %i.bky, label %bb.el, label %.thread595

bb.el:                                            ; preds = %bb.ek
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !91 ; 2 uses
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !92
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 32
  %i.bld = load ptr, ptr %i.blc, align 8
  %i.ble = tail call noundef i32 %i.bld(ptr noundef nonnull align 8 dereferenceable(8) %i.bla, i64 noundef 44, i32 noundef 1), !call_target !94 ; 0 uses
  %i.blf = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 %i.blf, ptr %i.blg, align 8, !tbaa !180
  br label %.thread595

.thread595:                                       ; preds = %sub_0598, %.thread595.loopexit692, %.thread595.loopexit691, %.preheader, %bb.bs, %bb.eg, %bb.eh, %bb.eb, %bb.ec, %._crit_edge, %.thread, %bb.an, %bb.x, %bb.y, %bb.d, %bb.c, %bb.aa, %bb.ae, %bb.ah, %bb.bo, %bb.bw, %bb.by, %bb.cc, %.tail597, %bb.cf, %bb.ce, %bb.ca, %bb.bx, %bb.bu, %bb.ct, %bb.cs, %bb.cr, %.thread587, %bb.ee, %bb.ed, %bb.ek, %bb.el, %bb.cu, %bb.cp, %bb.cm, %bb.bq, %bb.br, %bb.ag, %bb.ac, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !26, i64 1344}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!12, !17, i64 1352}
!75 = !{!12, !17, i64 1354}
!76 = !{!17, !17, i64 0}
!77 = !{!9, !9, i64 0}
!78 = !{!12, !22, i64 4800}
!79 = !{!12, !22, i64 1488}
!80 = !{!12, !22, i64 1456}
!81 = !{!12, !22, i64 1460}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = !{!12, !17, i64 2028}
!86 = !{!12, !17, i64 2030}
!87 = !{!12, !22, i64 4988}
!88 = !{!12, !26, i64 1200}
!89 = !{!12, !17, i64 1338}
!90 = !{!12, !17, i64 1336}
!91 = !{!12, !63, i64 381592}
!92 = !{!93, !93, i64 0}
!93 = !{!"vtable pointer", !10, i64 0}
!94 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !96, file: !95, line: 102, type: !97, scopeLine: 102, containingType: !96, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!95 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!96 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !95, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100, !101, !99}
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !102, line: 109, baseType: !103)
!102 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!103 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!104 = !{!12, !17, i64 2052}
!105 = !{!12, !17, i64 5096}
!106 = !{!12, !17, i64 5098}
!107 = !{!12, !17, i64 2032}
!108 = !{!12, !17, i64 5100}
!109 = !{!12, !17, i64 5102}
!110 = !{!12, !17, i64 5104}
!111 = !{!12, !17, i64 1928}
!112 = !{!22, !22, i64 0}
!113 = !{!12, !22, i64 1480}
!114 = !{!12, !22, i64 1484}
!115 = !{!12, !17, i64 5108}
!116 = !{!12, !17, i64 2034}
!117 = !{!8, !8, i64 0}
!118 = distinct !{!118, !83}
!119 = distinct !{!119, !83}
!120 = !{!12, !26, i64 381696}
!121 = !{!12, !8, i64 1940}
!122 = distinct !{!122, !83}
!123 = distinct !{!123, !83}
!124 = !{!12, !17, i64 1420}
!125 = !{!12, !22, i64 4848}
!126 = !{!12, !22, i64 192688}
!127 = !{!12, !22, i64 192692}
!128 = !{!12, !8, i64 2036}
!129 = !{!12, !8, i64 192712}
!130 = !{!12, !22, i64 4796}
!131 = !{!12, !22, i64 4792}
!132 = !{!12, !22, i64 1492}
!133 = !{!12, !22, i64 192696}
!134 = !DISubprogram(name: "gets", linkageName: "_ZN26LibRaw_abstract_datastream4getsEPci", scope: !96, file: !95, line: 106, type: !135, scopeLine: 106, containingType: !96, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !100, !137, !99}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !96, file: !95, line: 101, type: !140, scopeLine: 101, containingType: !96, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!99, !100, !142, !143, !143}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 18, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !{!12, !8, i64 5088}
!147 = !{!148, !8, i64 0}
!148 = !{!"_ZTS20libraw_afinfo_item_t", !8, i64 0, !17, i64 4, !8, i64 8, !8, i64 12, !20, i64 16}
!149 = !{!12, !17, i64 381728}
!150 = !{!148, !17, i64 4}
!151 = !{!148, !8, i64 12}
!152 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !96, file: !95, line: 103, type: !153, scopeLine: 103, containingType: !96, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!101, !100}
!155 = !{!148, !20, i64 16}
!156 = !{!157, !8, i64 8}
!157 = !{!"_ZTS21libraw_static_table_t", !66, i64 0, !8, i64 8}
!158 = !{!157, !66, i64 0}
!159 = distinct !{!159, !83}
!160 = !{!12, !26, i64 381760}
!161 = !{!12, !17, i64 16}
!162 = !{!12, !17, i64 18}
!163 = !{!12, !8, i64 544}
!164 = !{!12, !17, i64 2040}
!165 = !{!12, !17, i64 180}
!166 = !{!167, !17, i64 4}
!167 = !{!"_ZTS23libraw_raw_inset_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!168 = !{!167, !17, i64 6}
!169 = !{!167, !17, i64 0}
!170 = !{!167, !17, i64 2}
!171 = !{!12, !17, i64 4856}
!172 = !{!12, !17, i64 2016}
!173 = !{!12, !17, i64 2018}
!174 = !{!12, !8, i64 1936}
!175 = !{!12, !8, i64 1968}
!176 = !{!12, !8, i64 1948}
!177 = !{!12, !8, i64 1944}
!178 = !{!12, !8, i64 2020}
!179 = !{!12, !22, i64 2024}
!180 = !{!12, !8, i64 2056}
end_hunk_1
