Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_fullfast?download=true
inline.NumInlined: 28
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@SetupFastFullPelSearch:bb.a
  %i.aat = getelementptr inbounds nuw i8, ptr %.9570, i64 6
  %i.aau = load i16, ptr %i.aaj, align 2, !tbaa !40
  %i.aav = zext i16 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.13504569, i64 6
  %i.aax = load i16, ptr %i.aam, align 2, !tbaa !40
  %i.aay = zext i16 %i.aax to i64
  %i.aaz = sub nsw i64 %i.aav, %i.aay
  %i.aba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !7
  %i.abc = add nsw i32 %i.aas, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %.9570, i64 8
  %i.abe = load i16, ptr %i.aat, align 2, !tbaa !40
  %i.abf = zext i16 %i.abe to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %.13504569, i64 8
  %i.abh = load i16, ptr %i.aaw, align 2, !tbaa !40
  %i.abi = zext i16 %i.abh to i64
  %i.abj = sub nsw i64 %i.abf, %i.abi
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abj
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !7
  %i.abm = add nsw i32 %i.abc, %i.abl             ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.9570, i64 10
  %i.abo = load i16, ptr %i.abd, align 2, !tbaa !40
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %.13504569, i64 10
  %i.abr = load i16, ptr %i.abg, align 2, !tbaa !40
  %i.abs = zext i16 %i.abr to i64
  %i.abt = sub nsw i64 %i.abp, %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abw = add nsw i32 %i.abv, %.3448573
  %i.abx = getelementptr inbounds nuw i8, ptr %.9570, i64 12
  %i.aby = load i16, ptr %i.abn, align 2, !tbaa !40
  %i.abz = zext i16 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %.13504569, i64 12
  %i.acb = load i16, ptr %i.abq, align 2, !tbaa !40
  %i.acc = zext i16 %i.acb to i64
  %i.acd = sub nsw i64 %i.abz, %i.acc
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !7
  %i.acg = add nsw i32 %i.abw, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %.9570, i64 14
  %i.aci = load i16, ptr %i.abx, align 2, !tbaa !40
  %i.acj = zext i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.13504569, i64 14
  %i.acl = load i16, ptr %i.aca, align 2, !tbaa !40
  %i.acm = zext i16 %i.acl to i64
  %i.acn = sub nsw i64 %i.acj, %i.acm
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !7
  %i.acq = add nsw i32 %i.acg, %i.acp
  %i.acr = getelementptr inbounds nuw i8, ptr %.9570, i64 16
  %i.acs = load i16, ptr %i.ach, align 2, !tbaa !40
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %.13504569, i64 16
  %i.acv = load i16, ptr %i.ack, align 2, !tbaa !40
  %i.acw = zext i16 %i.acv to i64
  %i.acx = sub nsw i64 %i.act, %i.acw
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !7
  %i.ada = add nsw i32 %i.acq, %i.acz             ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.9570, i64 18
  %i.adc = load i16, ptr %i.acr, align 2, !tbaa !40
  %i.add = zext i16 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %.13504569, i64 18
  %i.adf = load i16, ptr %i.acu, align 2, !tbaa !40
  %i.adg = zext i16 %i.adf to i64
  %i.adh = sub nsw i64 %i.add, %i.adg
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !7
  %i.adk = add nsw i32 %i.adj, %.3442574
  %i.adl = getelementptr inbounds nuw i8, ptr %.9570, i64 20
  %i.adm = load i16, ptr %i.adb, align 2, !tbaa !40
  %i.adn = zext i16 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %.13504569, i64 20
  %i.adp = load i16, ptr %i.ade, align 2, !tbaa !40
  %i.adq = zext i16 %i.adp to i64
  %i.adr = sub nsw i64 %i.adn, %i.adq
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !7
  %i.adu = add nsw i32 %i.adk, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %.9570, i64 22
  %i.adw = load i16, ptr %i.adl, align 2, !tbaa !40
  %i.adx = zext i16 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %.13504569, i64 22
  %i.adz = load i16, ptr %i.ado, align 2, !tbaa !40
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = sub nsw i64 %i.adx, %i.aea
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !7
  %i.aee = add nsw i32 %i.adu, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %.9570, i64 24
  %i.aeg = load i16, ptr %i.adv, align 2, !tbaa !40
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %.13504569, i64 24
  %i.aej = load i16, ptr %i.ady, align 2, !tbaa !40
  %i.aek = zext i16 %i.aej to i64
  %i.ael = sub nsw i64 %i.aeh, %i.aek
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !7
  %i.aeo = add nsw i32 %i.aee, %i.aen             ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.9570, i64 26
  %i.aeq = load i16, ptr %i.aef, align 2, !tbaa !40
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr %.13504569, i64 26
  %i.aet = load i16, ptr %i.aei, align 2, !tbaa !40
  %i.aeu = zext i16 %i.aet to i64
  %i.aev = sub nsw i64 %i.aer, %i.aeu
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !7
  %i.aey = add nsw i32 %i.aex, %.3575
  %i.aez = getelementptr inbounds nuw i8, ptr %.9570, i64 28
  %i.afa = load i16, ptr %i.aep, align 2, !tbaa !40
  %i.afb = zext i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %.13504569, i64 28
  %i.afd = load i16, ptr %i.aes, align 2, !tbaa !40
  %i.afe = zext i16 %i.afd to i64
  %i.aff = sub nsw i64 %i.afb, %i.afe
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !7
  %i.afi = add nsw i32 %i.aey, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %.9570, i64 30
  %i.afk = load i16, ptr %i.aez, align 2, !tbaa !40
  %i.afl = zext i16 %i.afk to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %.13504569, i64 30
  %i.afn = load i16, ptr %i.afc, align 2, !tbaa !40
  %i.afo = zext i16 %i.afn to i64
  %i.afp = sub nsw i64 %i.afl, %i.afo
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afp
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !7
  %i.afs = add nsw i32 %i.afi, %i.afr
  %i.aft = load i16, ptr %i.afj, align 2, !tbaa !40
  %i.afu = zext i16 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %.13504569, i64 32
  %i.afw = load i16, ptr %i.afm, align 2, !tbaa !40
  %i.afx = zext i16 %i.afw to i64
  %i.afy = sub nsw i64 %i.afu, %i.afx
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !7
  %i.agb = add nsw i32 %i.afs, %i.aga             ; 2 uses
  %i.agc = getelementptr [2 x i8], ptr %.9570, i64 %i.zy
  %i.agd = add nuw nsw i32 %.4472571, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.agd, 4
  br i1 %exitcond.not, label %bb.am, label %bb.al, !llvm.loop !142

bb.am:                                            ; preds = %bb.al
  %scevgep = getelementptr i8, ptr %.12503576, i64 128 ; 2 uses
  %i.age = shl nsw i64 %i.zy, 3
  %scevgep767 = getelementptr i8, ptr %.8577, i64 %i.age
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv768 ; 4 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !37
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv793
  store i32 %i.abm, ptr %i.agh, align 4, !tbaa !7
  %i.agi = getelementptr i8, ptr %i.agf, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !37
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv793
  store i32 %i.ada, ptr %i.agk, align 4, !tbaa !7
  %i.agl = getelementptr i8, ptr %i.agf, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !37
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv793
  store i32 %i.aeo, ptr %i.agn, align 4, !tbaa !7
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 4
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !37
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv793
  store i32 %i.agb, ptr %i.agq, align 4, !tbaa !7
  %i.agr = add nuw nsw i32 %.2459579, 1           ; 2 uses
  %exitcond771.not = icmp eq i32 %i.agr, 4
  br i1 %exitcond771.not, label %bb.an, label %.preheader549, !llvm.loop !143

bb.an:                                            ; preds = %bb.am
  %i.ags = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not528 = icmp eq i32 %i.ags, 0
  br i1 %.not528, label %.loopexit, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %bb.an
  %i.agt = load i32, ptr @ref_access_method, align 4, !tbaa !7
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.agu
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !9
  %i.agx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !190
  %i.agy = call ptr %i.agw(ptr noundef %i.agx, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.agz = load ptr, ptr @img, align 8, !tbaa !9  ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 15548
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 15544
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader551.preheader, %._crit_edge621
  %indvars.iv772 = phi i64 [ 0, %.preheader551.preheader ], [ %indvars.iv.next773, %._crit_edge621 ] ; 2 uses
  %.3460636 = phi i32 [ 0, %.preheader551.preheader ], [ %i.aqk, %._crit_edge621 ]
  %.10634 = phi ptr [ %i.agy, %.preheader551.preheader ], [ %.11.lcssa, %._crit_edge621 ] ; 4 uses
  %.15506633 = phi ptr [ %scevgep, %.preheader551.preheader ], [ %.16.lcssa, %._crit_edge621 ] ; 4 uses
  %i.ahc = load i32, ptr %i.aha, align 4, !tbaa !201 ; 4 uses
  %i.ahd = icmp sgt i32 %i.ahc, 0
  br i1 %i.ahd, label %.preheader545.lr.ph, label %._crit_edge621

.preheader545.lr.ph:                              ; preds = %.preheader547
  %i.ahe = load i32, ptr %i.ahb, align 8, !tbaa !203 ; 7 uses
  %i.ahf = icmp sgt i32 %i.ahe, 0
  %i.ahg = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !7
  %i.ahh = sub nsw i32 %i.ahg, %i.ahe
  %i.ahi = sext i32 %i.ahh to i64                 ; 3 uses
  br i1 %i.ahf, label %.preheader545.us.preheader, label %._crit_edge610.preheader

._crit_edge610.preheader:                         ; preds = %.preheader545.lr.ph
  %i.ahj = add nsw i32 %i.ahc, -1
  %i.ahk = lshr i32 %i.ahj, 2
  %i.ahl = add nuw nsw i32 %i.ahk, 1              ; 2 uses
  %xtraiter = and i32 %i.ahl, 7                   ; 3 uses
  %i.ahm = icmp ult i32 %i.ahc, 29
  br i1 %i.ahm, label %._crit_edge610.epil.preheader, label %._crit_edge610.preheader.new

._crit_edge610.preheader.new:                     ; preds = %._crit_edge610.preheader
  %unroll_iter = and i32 %i.ahl, 2147483640
  %2 = shl nsw i64 %i.ahi, 4
  br label %._crit_edge610

.preheader545.us.preheader:                       ; preds = %.preheader545.lr.ph
  %i.ahn = add nsw i32 %i.ahe, -1
  %i.aho = lshr i32 %i.ahn, 2
  %i.ahp = add nuw nsw i32 %i.aho, 1              ; 8 uses
  %xtraiter1023 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahq = icmp ult i32 %i.ahe, 13
  %unroll_iter1030 = and i32 %i.ahp, 2147483644
  %lcmp.mod1025.not = icmp eq i32 %xtraiter1023, 0
  %lcmp.mod1029 = icmp ne i32 %xtraiter1023, 0
  %xtraiter1036 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahr = icmp ult i32 %i.ahe, 13
  %unroll_iter1043 = and i32 %i.ahp, 2147483644
  %lcmp.mod1038.not = icmp eq i32 %xtraiter1036, 0
  %lcmp.mod1042 = icmp ne i32 %xtraiter1036, 0
  %xtraiter1050 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahs = icmp ult i32 %i.ahe, 13
  %unroll_iter1057 = and i32 %i.ahp, 2147483644
  %lcmp.mod1052.not = icmp eq i32 %xtraiter1050, 0
  %lcmp.mod1056 = icmp ne i32 %xtraiter1050, 0
  %xtraiter1064 = and i32 %i.ahp, 3               ; 3 uses
  %i.aht = icmp ult i32 %i.ahe, 13
  %unroll_iter1071 = and i32 %i.ahp, 2147483644
  %lcmp.mod1066.not = icmp eq i32 %xtraiter1064, 0
  %lcmp.mod1070 = icmp ne i32 %xtraiter1064, 0
  br label %.preheader545.us

.preheader545.us:                                 ; preds = %.preheader545.us.preheader, %._crit_edge610.us
  %.4620.us = phi i32 [ %.lcssa978, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4443619.us = phi i32 [ %.lcssa975, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4449618.us = phi i32 [ %.lcssa972, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4455617.us = phi i32 [ %.lcssa969, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.5473616.us = phi i32 [ %i.apn, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ]
  %.11615.us = phi ptr [ %i.apm, %._crit_edge610.us ], [ %.10634, %.preheader545.us.preheader ] ; 2 uses
  %.16614.us = phi ptr [ %.lcssa979, %._crit_edge610.us ], [ %.15506633, %.preheader545.us.preheader ] ; 2 uses
  br i1 %i.ahq, label %.epil.preheader, label %.preheader545.us.new

.preheader545.us.new:                             ; preds = %.preheader545.us, %.preheader545.us.new
  %.5456583.us = phi i32 [ %i.ajh, %.preheader545.us.new ], [ %.4455617.us, %.preheader545.us ]
  %.12581.us = phi ptr [ %i.aiy, %.preheader545.us.new ], [ %.11615.us, %.preheader545.us ] ; 5 uses
  %.17580.us = phi ptr [ %i.ajb, %.preheader545.us.new ], [ %.16614.us, %.preheader545.us ] ; 5 uses
  %niter1031 = phi i32 [ %niter1031.next.3, %.preheader545.us.new ], [ 0, %.preheader545.us ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %.12581.us, i64 2
  %i.ahv = load i16, ptr %.12581.us, align 2, !tbaa !40
  %i.ahw = zext i16 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %.17580.us, i64 2
  %i.ahy = load i16, ptr %.17580.us, align 2, !tbaa !40
  %i.ahz = zext i16 %i.ahy to i64
  %i.aia = sub nsw i64 %i.ahw, %i.ahz
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !7
  %i.aid = add nsw i32 %i.aic, %.5456583.us
  %i.aie = getelementptr inbounds nuw i8, ptr %.12581.us, i64 4
  %i.aif = load i16, ptr %i.ahu, align 2, !tbaa !40
  %i.aig = zext i16 %i.aif to i64
  %i.aih = getelementptr inbounds nuw i8, ptr %.17580.us, i64 4
  %i.aii = load i16, ptr %i.ahx, align 2, !tbaa !40
  %i.aij = zext i16 %i.aii to i64
  %i.aik = sub nsw i64 %i.aig, %i.aij
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !7
  %i.ain = add nsw i32 %i.aim, %i.aid
  %i.aio = getelementptr inbounds nuw i8, ptr %.12581.us, i64 6
  %i.aip = load i16, ptr %i.aie, align 2, !tbaa !40
  %i.aiq = zext i16 %i.aip to i64
  %i.air = getelementptr inbounds nuw i8, ptr %.17580.us, i64 6
  %i.ais = load i16, ptr %i.aih, align 2, !tbaa !40
  %i.ait = zext i16 %i.ais to i64
  %i.aiu = sub nsw i64 %i.aiq, %i.ait
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !7
  %i.aix = add nsw i32 %i.aiw, %i.ain
  %i.aiy = getelementptr inbounds nuw i8, ptr %.12581.us, i64 8 ; 3 uses
  %i.aiz = load i16, ptr %i.aio, align 2, !tbaa !40
  %i.aja = zext i16 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %.17580.us, i64 8 ; 3 uses
  %i.ajc = load i16, ptr %i.air, align 2, !tbaa !40
  %i.ajd = zext i16 %i.ajc to i64
  %i.aje = sub nsw i64 %i.aja, %i.ajd
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !7
  %i.ajh = add nsw i32 %i.ajg, %i.aix             ; 3 uses
  %niter1031.next.3 = add nuw nsw i32 %niter1031, 4 ; 2 uses
  %niter1031.ncmp.3.not = icmp eq i32 %niter1031.next.3, %unroll_iter1030
  br i1 %niter1031.ncmp.3.not, label %.lr.ph593.us.preheader.unr-lcssa, label %.preheader545.us.new, !llvm.loop !144

.lr.ph593.us.preheader.unr-lcssa:                 ; preds = %.preheader545.us.new
  br i1 %lcmp.mod1025.not, label %.lr.ph593.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph593.us.preheader.unr-lcssa, %.preheader545.us
  %.5456583.us.epil.init = phi i32 [ %.4455617.us, %.preheader545.us ], [ %i.ajh, %.lr.ph593.us.preheader.unr-lcssa ]
  %.12581.us.epil.init = phi ptr [ %.11615.us, %.preheader545.us ], [ %i.aiy, %.lr.ph593.us.preheader.unr-lcssa ]
  %.17580.us.epil.init = phi ptr [ %.16614.us, %.preheader545.us ], [ %i.ajb, %.lr.ph593.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1029)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.5456583.us.epil = phi i32 [ %.5456583.us.epil.init, %.epil.preheader ], [ %i.ajr, %bb.ao ]
  %.12581.us.epil = phi ptr [ %.12581.us.epil.init, %.epil.preheader ], [ %i.aji, %bb.ao ] ; 2 uses
  %.17580.us.epil = phi ptr [ %.17580.us.epil.init, %.epil.preheader ], [ %i.ajl, %bb.ao ] ; 2 uses
  %epil.iter1024 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1024.next, %bb.ao ]
  %i.aji = getelementptr inbounds nuw i8, ptr %.12581.us.epil, i64 2 ; 2 uses
  %i.ajj = load i16, ptr %.12581.us.epil, align 2, !tbaa !40
  %i.ajk = zext i16 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %.17580.us.epil, i64 2 ; 2 uses
  %i.ajm = load i16, ptr %.17580.us.epil, align 2, !tbaa !40
  %i.ajn = zext i16 %i.ajm to i64
  %i.ajo = sub nsw i64 %i.ajk, %i.ajn
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !7
  %i.ajr = add nsw i32 %i.ajq, %.5456583.us.epil  ; 2 uses
  %epil.iter1024.next = add i32 %epil.iter1024, 1 ; 2 uses
  %epil.iter1024.cmp.not = icmp eq i32 %epil.iter1024.next, %xtraiter1023
  br i1 %epil.iter1024.cmp.not, label %.lr.ph593.us.preheader, label %bb.ao, !llvm.loop !145

.lr.ph593.us.preheader:                           ; preds = %bb.ao, %.lr.ph593.us.preheader.unr-lcssa
  %.lcssa971 = phi ptr [ %i.aiy, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.aji, %bb.ao ] ; 2 uses
  %.lcssa970 = phi ptr [ %i.ajb, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.ajl, %bb.ao ] ; 2 uses
  %.lcssa969 = phi i32 [ %i.ajh, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.ajr, %bb.ao ] ; 2 uses
  br i1 %i.ahr, label %.lr.ph593.us.epil.preheader, label %.lr.ph593.us

.lr.ph593.us:                                     ; preds = %.lr.ph593.us.preheader, %.lr.ph593.us
  %.5450592.us = phi i32 [ %i.alf, %.lr.ph593.us ], [ %.4449618.us, %.lr.ph593.us.preheader ]
  %.13590.us = phi ptr [ %i.akw, %.lr.ph593.us ], [ %.lcssa971, %.lr.ph593.us.preheader ] ; 5 uses
  %.18589.us = phi ptr [ %i.akz, %.lr.ph593.us ], [ %.lcssa970, %.lr.ph593.us.preheader ] ; 5 uses
  %niter1044 = phi i32 [ %niter1044.next.3, %.lr.ph593.us ], [ 0, %.lr.ph593.us.preheader ]
  %i.ajs = getelementptr inbounds nuw i8, ptr %.13590.us, i64 2
  %i.ajt = load i16, ptr %.13590.us, align 2, !tbaa !40
  %i.aju = zext i16 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw i8, ptr %.18589.us, i64 2
  %i.ajw = load i16, ptr %.18589.us, align 2, !tbaa !40
  %i.ajx = zext i16 %i.ajw to i64
  %i.ajy = sub nsw i64 %i.aju, %i.ajx
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajy
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !7
  %i.akb = add nsw i32 %i.aka, %.5450592.us
  %i.akc = getelementptr inbounds nuw i8, ptr %.13590.us, i64 4
  %i.akd = load i16, ptr %i.ajs, align 2, !tbaa !40
  %i.ake = zext i16 %i.akd to i64
  %i.akf = getelementptr inbounds nuw i8, ptr %.18589.us, i64 4
  %i.akg = load i16, ptr %i.ajv, align 2, !tbaa !40
  %i.akh = zext i16 %i.akg to i64
  %i.aki = sub nsw i64 %i.ake, %i.akh
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aki
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !7
  %i.akl = add nsw i32 %i.akk, %i.akb
  %i.akm = getelementptr inbounds nuw i8, ptr %.13590.us, i64 6
  %i.akn = load i16, ptr %i.akc, align 2, !tbaa !40
  %i.ako = zext i16 %i.akn to i64
  %i.akp = getelementptr inbounds nuw i8, ptr %.18589.us, i64 6
  %i.akq = load i16, ptr %i.akf, align 2, !tbaa !40
  %i.akr = zext i16 %i.akq to i64
  %i.aks = sub nsw i64 %i.ako, %i.akr
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aks
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !7
  %i.akv = add nsw i32 %i.aku, %i.akl
  %i.akw = getelementptr inbounds nuw i8, ptr %.13590.us, i64 8 ; 3 uses
  %i.akx = load i16, ptr %i.akm, align 2, !tbaa !40
  %i.aky = zext i16 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr %.18589.us, i64 8 ; 3 uses
  %i.ala = load i16, ptr %i.akp, align 2, !tbaa !40
  %i.alb = zext i16 %i.ala to i64
  %i.alc = sub nsw i64 %i.aky, %i.alb
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.alc
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !7
  %i.alf = add nsw i32 %i.ale, %i.akv             ; 3 uses
  %niter1044.next.3 = add nuw nsw i32 %niter1044, 4 ; 2 uses
  %niter1044.ncmp.3.not = icmp eq i32 %niter1044.next.3, %unroll_iter1043
  br i1 %niter1044.ncmp.3.not, label %.lr.ph601.us.preheader.unr-lcssa, label %.lr.ph593.us, !llvm.loop !146

.lr.ph601.us.preheader.unr-lcssa:                 ; preds = %.lr.ph593.us
  br i1 %lcmp.mod1038.not, label %.lr.ph601.us.preheader, label %.lr.ph593.us.epil.preheader

.lr.ph593.us.epil.preheader:                      ; preds = %.lr.ph601.us.preheader.unr-lcssa, %.lr.ph593.us.preheader
  %.5450592.us.epil.init = phi i32 [ %.4449618.us, %.lr.ph593.us.preheader ], [ %i.alf, %.lr.ph601.us.preheader.unr-lcssa ]
  %.13590.us.epil.init = phi ptr [ %.lcssa971, %.lr.ph593.us.preheader ], [ %i.akw, %.lr.ph601.us.preheader.unr-lcssa ]
  %.18589.us.epil.init = phi ptr [ %.lcssa970, %.lr.ph593.us.preheader ], [ %i.akz, %.lr.ph601.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1042)
  br label %.lr.ph593.us.epil

.lr.ph593.us.epil:                                ; preds = %.lr.ph593.us.epil, %.lr.ph593.us.epil.preheader
  %.5450592.us.epil = phi i32 [ %i.alp, %.lr.ph593.us.epil ], [ %.5450592.us.epil.init, %.lr.ph593.us.epil.preheader ]
  %.13590.us.epil = phi ptr [ %i.alg, %.lr.ph593.us.epil ], [ %.13590.us.epil.init, %.lr.ph593.us.epil.preheader ] ; 2 uses
  %.18589.us.epil = phi ptr [ %i.alj, %.lr.ph593.us.epil ], [ %.18589.us.epil.init, %.lr.ph593.us.epil.preheader ] ; 2 uses
  %epil.iter1037 = phi i32 [ %epil.iter1037.next, %.lr.ph593.us.epil ], [ 0, %.lr.ph593.us.epil.preheader ]
  %i.alg = getelementptr inbounds nuw i8, ptr %.13590.us.epil, i64 2 ; 2 uses
  %i.alh = load i16, ptr %.13590.us.epil, align 2, !tbaa !40
  %i.ali = zext i16 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr %.18589.us.epil, i64 2 ; 2 uses
  %i.alk = load i16, ptr %.18589.us.epil, align 2, !tbaa !40
  %i.all = zext i16 %i.alk to i64
  %i.alm = sub nsw i64 %i.ali, %i.all
  %i.aln = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.alm
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !7
  %i.alp = add nsw i32 %i.alo, %.5450592.us.epil  ; 2 uses
  %epil.iter1037.next = add i32 %epil.iter1037, 1 ; 2 uses
  %epil.iter1037.cmp.not = icmp eq i32 %epil.iter1037.next, %xtraiter1036
  br i1 %epil.iter1037.cmp.not, label %.lr.ph601.us.preheader, label %.lr.ph593.us.epil, !llvm.loop !147

.lr.ph601.us.preheader:                           ; preds = %.lr.ph593.us.epil, %.lr.ph601.us.preheader.unr-lcssa
  %.lcssa974 = phi ptr [ %i.akw, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.alg, %.lr.ph593.us.epil ] ; 2 uses
  %.lcssa973 = phi ptr [ %i.akz, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.alj, %.lr.ph593.us.epil ] ; 2 uses
  %.lcssa972 = phi i32 [ %i.alf, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.alp, %.lr.ph593.us.epil ] ; 2 uses
  br i1 %i.ahs, label %.lr.ph601.us.epil.preheader, label %.lr.ph601.us

.lr.ph601.us:                                     ; preds = %.lr.ph601.us.preheader, %.lr.ph601.us
  %.5444600.us = phi i32 [ %i.and, %.lr.ph601.us ], [ %.4443619.us, %.lr.ph601.us.preheader ]
  %.14598.us = phi ptr [ %i.amu, %.lr.ph601.us ], [ %.lcssa974, %.lr.ph601.us.preheader ] ; 5 uses
  %.19597.us = phi ptr [ %i.amx, %.lr.ph601.us ], [ %.lcssa973, %.lr.ph601.us.preheader ] ; 5 uses
  %niter1058 = phi i32 [ %niter1058.next.3, %.lr.ph601.us ], [ 0, %.lr.ph601.us.preheader ]
  %i.alq = getelementptr inbounds nuw i8, ptr %.14598.us, i64 2
  %i.alr = load i16, ptr %.14598.us, align 2, !tbaa !40
  %i.als = zext i16 %i.alr to i64
  %i.alt = getelementptr inbounds nuw i8, ptr %.19597.us, i64 2
  %i.alu = load i16, ptr %.19597.us, align 2, !tbaa !40
  %i.alv = zext i16 %i.alu to i64
  %i.alw = sub nsw i64 %i.als, %i.alv
  %i.alx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.alw
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !7
  %i.alz = add nsw i32 %i.aly, %.5444600.us
  %i.ama = getelementptr inbounds nuw i8, ptr %.14598.us, i64 4
  %i.amb = load i16, ptr %i.alq, align 2, !tbaa !40
  %i.amc = zext i16 %i.amb to i64
  %i.amd = getelementptr inbounds nuw i8, ptr %.19597.us, i64 4
  %i.ame = load i16, ptr %i.alt, align 2, !tbaa !40
  %i.amf = zext i16 %i.ame to i64
  %i.amg = sub nsw i64 %i.amc, %i.amf
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.amg
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !7
  %i.amj = add nsw i32 %i.ami, %i.alz
  %i.amk = getelementptr inbounds nuw i8, ptr %.14598.us, i64 6
  %i.aml = load i16, ptr %i.ama, align 2, !tbaa !40
  %i.amm = zext i16 %i.aml to i64
  %i.amn = getelementptr inbounds nuw i8, ptr %.19597.us, i64 6
  %i.amo = load i16, ptr %i.amd, align 2, !tbaa !40
  %i.amp = zext i16 %i.amo to i64
  %i.amq = sub nsw i64 %i.amm, %i.amp
  %i.amr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.amq
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !7
  %i.amt = add nsw i32 %i.ams, %i.amj
  %i.amu = getelementptr inbounds nuw i8, ptr %.14598.us, i64 8 ; 3 uses
  %i.amv = load i16, ptr %i.amk, align 2, !tbaa !40
  %i.amw = zext i16 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %.19597.us, i64 8 ; 3 uses
  %i.amy = load i16, ptr %i.amn, align 2, !tbaa !40
  %i.amz = zext i16 %i.amy to i64
  %i.ana = sub nsw i64 %i.amw, %i.amz
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !7
  %i.and = add nsw i32 %i.anc, %i.amt             ; 3 uses
  %niter1058.next.3 = add nuw nsw i32 %niter1058, 4 ; 2 uses
  %niter1058.ncmp.3.not = icmp eq i32 %niter1058.next.3, %unroll_iter1057
  br i1 %niter1058.ncmp.3.not, label %.lr.ph609.us.preheader.unr-lcssa, label %.lr.ph601.us, !llvm.loop !148

.lr.ph609.us.preheader.unr-lcssa:                 ; preds = %.lr.ph601.us
  br i1 %lcmp.mod1052.not, label %.lr.ph609.us.preheader, label %.lr.ph601.us.epil.preheader

.lr.ph601.us.epil.preheader:                      ; preds = %.lr.ph609.us.preheader.unr-lcssa, %.lr.ph601.us.preheader
  %.5444600.us.epil.init = phi i32 [ %.4443619.us, %.lr.ph601.us.preheader ], [ %i.and, %.lr.ph609.us.preheader.unr-lcssa ]
  %.14598.us.epil.init = phi ptr [ %.lcssa974, %.lr.ph601.us.preheader ], [ %i.amu, %.lr.ph609.us.preheader.unr-lcssa ]
  %.19597.us.epil.init = phi ptr [ %.lcssa973, %.lr.ph601.us.preheader ], [ %i.amx, %.lr.ph609.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1056)
  br label %.lr.ph601.us.epil

.lr.ph601.us.epil:                                ; preds = %.lr.ph601.us.epil, %.lr.ph601.us.epil.preheader
  %.5444600.us.epil = phi i32 [ %i.ann, %.lr.ph601.us.epil ], [ %.5444600.us.epil.init, %.lr.ph601.us.epil.preheader ]
  %.14598.us.epil = phi ptr [ %i.ane, %.lr.ph601.us.epil ], [ %.14598.us.epil.init, %.lr.ph601.us.epil.preheader ] ; 2 uses
  %.19597.us.epil = phi ptr [ %i.anh, %.lr.ph601.us.epil ], [ %.19597.us.epil.init, %.lr.ph601.us.epil.preheader ] ; 2 uses
  %epil.iter1051 = phi i32 [ %epil.iter1051.next, %.lr.ph601.us.epil ], [ 0, %.lr.ph601.us.epil.preheader ]
  %i.ane = getelementptr inbounds nuw i8, ptr %.14598.us.epil, i64 2 ; 2 uses
  %i.anf = load i16, ptr %.14598.us.epil, align 2, !tbaa !40
  %i.ang = zext i16 %i.anf to i64
  %i.anh = getelementptr inbounds nuw i8, ptr %.19597.us.epil, i64 2 ; 2 uses
  %i.ani = load i16, ptr %.19597.us.epil, align 2, !tbaa !40
  %i.anj = zext i16 %i.ani to i64
  %i.ank = sub nsw i64 %i.ang, %i.anj
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ank
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !7
  %i.ann = add nsw i32 %i.anm, %.5444600.us.epil  ; 2 uses
  %epil.iter1051.next = add i32 %epil.iter1051, 1 ; 2 uses
  %epil.iter1051.cmp.not = icmp eq i32 %epil.iter1051.next, %xtraiter1050
  br i1 %epil.iter1051.cmp.not, label %.lr.ph609.us.preheader, label %.lr.ph601.us.epil, !llvm.loop !149

.lr.ph609.us.preheader:                           ; preds = %.lr.ph601.us.epil, %.lr.ph609.us.preheader.unr-lcssa
  %.lcssa977 = phi ptr [ %i.amu, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.ane, %.lr.ph601.us.epil ] ; 2 uses
  %.lcssa976 = phi ptr [ %i.amx, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.anh, %.lr.ph601.us.epil ] ; 2 uses
  %.lcssa975 = phi i32 [ %i.and, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.ann, %.lr.ph601.us.epil ] ; 2 uses
  br i1 %i.aht, label %.lr.ph609.us.epil.preheader, label %.lr.ph609.us

.lr.ph609.us:                                     ; preds = %.lr.ph609.us.preheader, %.lr.ph609.us
  %.5608.us = phi i32 [ %i.apb, %.lr.ph609.us ], [ %.4620.us, %.lr.ph609.us.preheader ]
  %.15606.us = phi ptr [ %i.aos, %.lr.ph609.us ], [ %.lcssa977, %.lr.ph609.us.preheader ] ; 5 uses
  %.20605.us = phi ptr [ %i.aov, %.lr.ph609.us ], [ %.lcssa976, %.lr.ph609.us.preheader ] ; 5 uses
  %niter1072 = phi i32 [ %niter1072.next.3, %.lr.ph609.us ], [ 0, %.lr.ph609.us.preheader ]
  %i.ano = getelementptr inbounds nuw i8, ptr %.15606.us, i64 2
  %i.anp = load i16, ptr %.15606.us, align 2, !tbaa !40
  %i.anq = zext i16 %i.anp to i64
  %i.anr = getelementptr inbounds nuw i8, ptr %.20605.us, i64 2
  %i.ans = load i16, ptr %.20605.us, align 2, !tbaa !40
  %i.ant = zext i16 %i.ans to i64
  %i.anu = sub nsw i64 %i.anq, %i.ant
  %i.anv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.anu
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !7
  %i.anx = add nsw i32 %i.anw, %.5608.us
  %i.any = getelementptr inbounds nuw i8, ptr %.15606.us, i64 4
  %i.anz = load i16, ptr %i.ano, align 2, !tbaa !40
  %i.aoa = zext i16 %i.anz to i64
  %i.aob = getelementptr inbounds nuw i8, ptr %.20605.us, i64 4
  %i.aoc = load i16, ptr %i.anr, align 2, !tbaa !40
  %i.aod = zext i16 %i.aoc to i64
  %i.aoe = sub nsw i64 %i.aoa, %i.aod
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aoe
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !7
  %i.aoh = add nsw i32 %i.aog, %i.anx
  %i.aoi = getelementptr inbounds nuw i8, ptr %.15606.us, i64 6
  %i.aoj = load i16, ptr %i.any, align 2, !tbaa !40
  %i.aok = zext i16 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %.20605.us, i64 6
  %i.aom = load i16, ptr %i.aob, align 2, !tbaa !40
  %i.aon = zext i16 %i.aom to i64
  %i.aoo = sub nsw i64 %i.aok, %i.aon
  %i.aop = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aoo
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !7
  %i.aor = add nsw i32 %i.aoq, %i.aoh
  %i.aos = getelementptr inbounds nuw i8, ptr %.15606.us, i64 8 ; 3 uses
  %i.aot = load i16, ptr %i.aoi, align 2, !tbaa !40
  %i.aou = zext i16 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %.20605.us, i64 8 ; 3 uses
  %i.aow = load i16, ptr %i.aol, align 2, !tbaa !40
  %i.aox = zext i16 %i.aow to i64
  %i.aoy = sub nsw i64 %i.aou, %i.aox
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aoy
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !7
  %i.apb = add nsw i32 %i.apa, %i.aor             ; 3 uses
  %niter1072.next.3 = add nuw nsw i32 %niter1072, 4 ; 2 uses
  %niter1072.ncmp.3.not = icmp eq i32 %niter1072.next.3, %unroll_iter1071
  br i1 %niter1072.ncmp.3.not, label %._crit_edge610.us.unr-lcssa, label %.lr.ph609.us, !llvm.loop !150

._crit_edge610.us.unr-lcssa:                      ; preds = %.lr.ph609.us
  br i1 %lcmp.mod1066.not, label %._crit_edge610.us, label %.lr.ph609.us.epil.preheader

.lr.ph609.us.epil.preheader:                      ; preds = %._crit_edge610.us.unr-lcssa, %.lr.ph609.us.preheader
  %.5608.us.epil.init = phi i32 [ %.4620.us, %.lr.ph609.us.preheader ], [ %i.apb, %._crit_edge610.us.unr-lcssa ]
  %.15606.us.epil.init = phi ptr [ %.lcssa977, %.lr.ph609.us.preheader ], [ %i.aos, %._crit_edge610.us.unr-lcssa ]
  %.20605.us.epil.init = phi ptr [ %.lcssa976, %.lr.ph609.us.preheader ], [ %i.aov, %._crit_edge610.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1070)
  br label %.lr.ph609.us.epil

.lr.ph609.us.epil:                                ; preds = %.lr.ph609.us.epil, %.lr.ph609.us.epil.preheader
  %.5608.us.epil = phi i32 [ %i.apl, %.lr.ph609.us.epil ], [ %.5608.us.epil.init, %.lr.ph609.us.epil.preheader ]
  %.15606.us.epil = phi ptr [ %i.apc, %.lr.ph609.us.epil ], [ %.15606.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %.20605.us.epil = phi ptr [ %i.apf, %.lr.ph609.us.epil ], [ %.20605.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %epil.iter1065 = phi i32 [ %epil.iter1065.next, %.lr.ph609.us.epil ], [ 0, %.lr.ph609.us.epil.preheader ]
  %i.apc = getelementptr inbounds nuw i8, ptr %.15606.us.epil, i64 2 ; 2 uses
  %i.apd = load i16, ptr %.15606.us.epil, align 2, !tbaa !40
  %i.ape = zext i16 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %.20605.us.epil, i64 2 ; 2 uses
  %i.apg = load i16, ptr %.20605.us.epil, align 2, !tbaa !40
  %i.aph = zext i16 %i.apg to i64
  %i.api = sub nsw i64 %i.ape, %i.aph
  %i.apj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.api
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !7
  %i.apl = add nsw i32 %i.apk, %.5608.us.epil     ; 2 uses
  %epil.iter1065.next = add i32 %epil.iter1065, 1 ; 2 uses
  %epil.iter1065.cmp.not = icmp eq i32 %epil.iter1065.next, %xtraiter1064
  br i1 %epil.iter1065.cmp.not, label %._crit_edge610.us, label %.lr.ph609.us.epil, !llvm.loop !151

._crit_edge610.us:                                ; preds = %.lr.ph609.us.epil, %._crit_edge610.us.unr-lcssa
  %.lcssa980 = phi ptr [ %i.aos, %._crit_edge610.us.unr-lcssa ], [ %i.apc, %.lr.ph609.us.epil ]
  %.lcssa979 = phi ptr [ %i.aov, %._crit_edge610.us.unr-lcssa ], [ %i.apf, %.lr.ph609.us.epil ] ; 2 uses
  %.lcssa978 = phi i32 [ %i.apb, %._crit_edge610.us.unr-lcssa ], [ %i.apl, %.lr.ph609.us.epil ] ; 2 uses
  %i.apm = getelementptr inbounds [2 x i8], ptr %.lcssa980, i64 %i.ahi ; 2 uses
  %i.apn = add nuw nsw i32 %.5473616.us, 4        ; 2 uses
  %i.apo = icmp slt i32 %i.apn, %i.ahc
  br i1 %i.apo, label %.preheader545.us, label %._crit_edge621, !llvm.loop !152

._crit_edge610:                                   ; preds = %._crit_edge610, %._crit_edge610.preheader.new
  %.11615 = phi ptr [ %.10634, %._crit_edge610.preheader.new ], [ %3, %._crit_edge610 ]
  %niter = phi i32 [ 0, %._crit_edge610.preheader.new ], [ %niter.next.7, %._crit_edge610 ]
  %3 = getelementptr inbounds i8, ptr %.11615, i64 %2 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge621.loopexit963.unr-lcssa, label %._crit_edge610, !llvm.loop !152

._crit_edge621.loopexit963.unr-lcssa:             ; preds = %._crit_edge610
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge621, label %._crit_edge610.epil.preheader

._crit_edge610.epil.preheader:                    ; preds = %._crit_edge621.loopexit963.unr-lcssa, %._crit_edge610.preheader
  %.11615.epil.init = phi ptr [ %.10634, %._crit_edge610.preheader ], [ %3, %._crit_edge621.loopexit963.unr-lcssa ]
  %lcmp.mod1019 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1019)
  br label %._crit_edge610.epil

._crit_edge610.epil:                              ; preds = %._crit_edge610.epil, %._crit_edge610.epil.preheader
  %.11615.epil = phi ptr [ %i.app, %._crit_edge610.epil ], [ %.11615.epil.init, %._crit_edge610.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %._crit_edge610.epil ], [ 0, %._crit_edge610.epil.preheader ]
  %i.app = getelementptr inbounds [2 x i8], ptr %.11615.epil, i64 %i.ahi ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge621, label %._crit_edge610.epil, !llvm.loop !153

._crit_edge621:                                   ; preds = %._crit_edge621.loopexit963.unr-lcssa, %._crit_edge610.epil, %._crit_edge610.us, %.preheader547
  %.16.lcssa = phi ptr [ %.15506633, %.preheader547 ], [ %.lcssa979, %._crit_edge610.us ], [ %.15506633, %._crit_edge610.epil ], [ %.15506633, %._crit_edge621.loopexit963.unr-lcssa ] ; 2 uses
  %.11.lcssa = phi ptr [ %.10634, %.preheader547 ], [ %i.apm, %._crit_edge610.us ], [ %3, %._crit_edge621.loopexit963.unr-lcssa ], [ %i.app, %._crit_edge610.epil ]
  %.4455.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa969, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit963.unr-lcssa ]
  %.4449.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa972, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit963.unr-lcssa ]
  %.4443.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa975, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit963.unr-lcssa ]
  %.4.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa978, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit963.unr-lcssa ]
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv772 ; 4 uses
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !37
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %indvars.iv793 ; 2 uses
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !7
  %i.apu = add nsw i32 %i.apt, %.4455.lcssa
  store i32 %i.apu, ptr %i.aps, align 4, !tbaa !7
  %i.apv = getelementptr i8, ptr %i.apq, i64 8
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !37
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %indvars.iv793 ; 2 uses
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !7
  %i.apz = add nsw i32 %i.apy, %.4449.lcssa
  store i32 %i.apz, ptr %i.apx, align 4, !tbaa !7
  %i.aqa = getelementptr i8, ptr %i.apq, i64 16
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !37
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.aqb, i64 %indvars.iv793 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !7
  %i.aqe = add nsw i32 %i.aqd, %.4443.lcssa
  store i32 %i.aqe, ptr %i.aqc, align 4, !tbaa !7
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 4
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !37
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.aqg, i64 %indvars.iv793 ; 2 uses
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !7
  %i.aqj = add nsw i32 %i.aqi, %.4.lcssa
  store i32 %i.aqj, ptr %i.aqh, align 4, !tbaa !7
  %i.aqk = add nuw nsw i32 %.3460636, 1           ; 2 uses
  %exitcond775.not = icmp eq i32 %i.aqk, 4
  br i1 %exitcond775.not, label %.preheader551.1, label %.preheader547, !llvm.loop !154

.preheader551.1:                                  ; preds = %._crit_edge621
  %i.aql = load i32, ptr @ref_access_method, align 4, !tbaa !7
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.aqm
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !9
  %i.aqp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !190
  %i.aqq = call ptr %i.aqo(ptr noundef %i.aqp, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.aqr = load ptr, ptr @img, align 8, !tbaa !9  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 15548
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 15544
  br label %.preheader547.1

.preheader547.1:                                  ; preds = %._crit_edge621.1, %.preheader551.1
  %indvars.iv772.1 = phi i64 [ 0, %.preheader551.1 ], [ %indvars.iv.next773.1, %._crit_edge621.1 ] ; 2 uses
  %.3460636.1 = phi i32 [ 0, %.preheader551.1 ], [ %i.bac, %._crit_edge621.1 ]
  %.10634.1 = phi ptr [ %i.aqq, %.preheader551.1 ], [ %.11.lcssa.1, %._crit_edge621.1 ] ; 4 uses
  %.15506633.1 = phi ptr [ %.16.lcssa, %.preheader551.1 ], [ %.16.lcssa.1, %._crit_edge621.1 ] ; 4 uses
  %i.aqu = load i32, ptr %i.aqs, align 4, !tbaa !201 ; 4 uses
  %i.aqv = icmp sgt i32 %i.aqu, 0
  br i1 %i.aqv, label %.preheader545.lr.ph.1, label %._crit_edge621.1

.preheader545.lr.ph.1:                            ; preds = %.preheader547.1
  %i.aqw = load i32, ptr %i.aqt, align 8, !tbaa !203 ; 7 uses
  %i.aqx = icmp sgt i32 %i.aqw, 0
  %i.aqy = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !7
  %i.aqz = sub nsw i32 %i.aqy, %i.aqw
  %i.ara = sext i32 %i.aqz to i64                 ; 3 uses
  br i1 %i.aqx, label %.preheader545.us.1.preheader, label %._crit_edge610.1.preheader

._crit_edge610.1.preheader:                       ; preds = %.preheader545.lr.ph.1
  %i.arb = add nsw i32 %i.aqu, -1
  %i.arc = lshr i32 %i.arb, 2
  %i.ard = add nuw nsw i32 %i.arc, 1              ; 2 uses
  %xtraiter1078 = and i32 %i.ard, 7               ; 3 uses
  %i.are = icmp ult i32 %i.aqu, 29
  br i1 %i.are, label %._crit_edge610.1.epil.preheader, label %._crit_edge610.1.preheader.new

._crit_edge610.1.preheader.new:                   ; preds = %._crit_edge610.1.preheader
  %unroll_iter1083 = and i32 %i.ard, 2147483640
  %4 = shl nsw i64 %i.ara, 4
  br label %._crit_edge610.1

.preheader545.us.1.preheader:                     ; preds = %.preheader545.lr.ph.1
  %i.arf = add nsw i32 %i.aqw, -1
  %i.arg = lshr i32 %i.arf, 2
  %i.arh = add nuw nsw i32 %i.arg, 1              ; 8 uses
  %xtraiter1086 = and i32 %i.arh, 3               ; 3 uses
  %i.ari = icmp ult i32 %i.aqw, 13
  %unroll_iter1093 = and i32 %i.arh, 2147483644
  %lcmp.mod1088.not = icmp eq i32 %xtraiter1086, 0
  %lcmp.mod1092 = icmp ne i32 %xtraiter1086, 0
  %xtraiter1095 = and i32 %i.arh, 3               ; 3 uses
  %i.arj = icmp ult i32 %i.aqw, 13
  %unroll_iter1102 = and i32 %i.arh, 2147483644
  %lcmp.mod1097.not = icmp eq i32 %xtraiter1095, 0
  %lcmp.mod1101 = icmp ne i32 %xtraiter1095, 0
  %xtraiter1104 = and i32 %i.arh, 3               ; 3 uses
  %i.ark = icmp ult i32 %i.aqw, 13
  %unroll_iter1111 = and i32 %i.arh, 2147483644
  %lcmp.mod1106.not = icmp eq i32 %xtraiter1104, 0
  %lcmp.mod1110 = icmp ne i32 %xtraiter1104, 0
  %xtraiter1113 = and i32 %i.arh, 3               ; 3 uses
  %i.arl = icmp ult i32 %i.aqw, 13
  %unroll_iter1120 = and i32 %i.arh, 2147483644
  %lcmp.mod1115.not = icmp eq i32 %xtraiter1113, 0
  %lcmp.mod1119 = icmp ne i32 %xtraiter1113, 0
  br label %.preheader545.us.1

._crit_edge610.1:                                 ; preds = %._crit_edge610.1, %._crit_edge610.1.preheader.new
  %.11615.1 = phi ptr [ %.10634.1, %._crit_edge610.1.preheader.new ], [ %5, %._crit_edge610.1 ]
  %niter1084 = phi i32 [ 0, %._crit_edge610.1.preheader.new ], [ %niter1084.next.7, %._crit_edge610.1 ]
  %5 = getelementptr inbounds i8, ptr %.11615.1, i64 %4 ; 3 uses
  %niter1084.next.7 = add i32 %niter1084, 8       ; 2 uses
  %niter1084.ncmp.7.not = icmp eq i32 %niter1084.next.7, %unroll_iter1083
  br i1 %niter1084.ncmp.7.not, label %._crit_edge621.1.loopexit962.unr-lcssa, label %._crit_edge610.1, !llvm.loop !152

.preheader545.us.1:                               ; preds = %.preheader545.us.1.preheader, %._crit_edge610.us.1
  %.4620.us.1 = phi i32 [ %.lcssa992, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4443619.us.1 = phi i32 [ %.lcssa989, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4449618.us.1 = phi i32 [ %.lcssa986, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4455617.us.1 = phi i32 [ %.lcssa983, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.5473616.us.1 = phi i32 [ %i.azf, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ]
  %.11615.us.1 = phi ptr [ %i.aze, %._crit_edge610.us.1 ], [ %.10634.1, %.preheader545.us.1.preheader ] ; 2 uses
  %.16614.us.1 = phi ptr [ %.lcssa993, %._crit_edge610.us.1 ], [ %.15506633.1, %.preheader545.us.1.preheader ] ; 2 uses
  br i1 %i.ari, label %.epil.preheader1085, label %.preheader545.us.1.new

.preheader545.us.1.new:                           ; preds = %.preheader545.us.1, %.preheader545.us.1.new
  %.5456583.us.1 = phi i32 [ %i.asz, %.preheader545.us.1.new ], [ %.4455617.us.1, %.preheader545.us.1 ]
  %.12581.us.1 = phi ptr [ %i.asq, %.preheader545.us.1.new ], [ %.11615.us.1, %.preheader545.us.1 ] ; 5 uses
  %.17580.us.1 = phi ptr [ %i.ast, %.preheader545.us.1.new ], [ %.16614.us.1, %.preheader545.us.1 ] ; 5 uses
  %niter1094 = phi i32 [ %niter1094.next.3, %.preheader545.us.1.new ], [ 0, %.preheader545.us.1 ]
  %i.arm = getelementptr inbounds nuw i8, ptr %.12581.us.1, i64 2
  %i.arn = load i16, ptr %.12581.us.1, align 2, !tbaa !40
  %i.aro = zext i16 %i.arn to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %.17580.us.1, i64 2
  %i.arq = load i16, ptr %.17580.us.1, align 2, !tbaa !40
  %i.arr = zext i16 %i.arq to i64
  %i.ars = sub nsw i64 %i.aro, %i.arr
  %i.art = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ars
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !7
  %i.arv = add nsw i32 %i.aru, %.5456583.us.1
  %i.arw = getelementptr inbounds nuw i8, ptr %.12581.us.1, i64 4
  %i.arx = load i16, ptr %i.arm, align 2, !tbaa !40
  %i.ary = zext i16 %i.arx to i64
  %i.arz = getelementptr inbounds nuw i8, ptr %.17580.us.1, i64 4
  %i.asa = load i16, ptr %i.arp, align 2, !tbaa !40
  %i.asb = zext i16 %i.asa to i64
  %i.asc = sub nsw i64 %i.ary, %i.asb
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asc
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !7
  %i.asf = add nsw i32 %i.ase, %i.arv
  %i.asg = getelementptr inbounds nuw i8, ptr %.12581.us.1, i64 6
  %i.ash = load i16, ptr %i.arw, align 2, !tbaa !40
  %i.asi = zext i16 %i.ash to i64
  %i.asj = getelementptr inbounds nuw i8, ptr %.17580.us.1, i64 6
  %i.ask = load i16, ptr %i.arz, align 2, !tbaa !40
  %i.asl = zext i16 %i.ask to i64
  %i.asm = sub nsw i64 %i.asi, %i.asl
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asm
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !7
  %i.asp = add nsw i32 %i.aso, %i.asf
  %i.asq = getelementptr inbounds nuw i8, ptr %.12581.us.1, i64 8 ; 3 uses
  %i.asr = load i16, ptr %i.asg, align 2, !tbaa !40
  %i.ass = zext i16 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr %.17580.us.1, i64 8 ; 3 uses
  %i.asu = load i16, ptr %i.asj, align 2, !tbaa !40
  %i.asv = zext i16 %i.asu to i64
  %i.asw = sub nsw i64 %i.ass, %i.asv
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !7
  %i.asz = add nsw i32 %i.asy, %i.asp             ; 3 uses
  %niter1094.next.3 = add nuw nsw i32 %niter1094, 4 ; 2 uses
  %niter1094.ncmp.3.not = icmp eq i32 %niter1094.next.3, %unroll_iter1093
  br i1 %niter1094.ncmp.3.not, label %.lr.ph593.us.1.preheader.unr-lcssa, label %.preheader545.us.1.new, !llvm.loop !144

.lr.ph593.us.1.preheader.unr-lcssa:               ; preds = %.preheader545.us.1.new
  br i1 %lcmp.mod1088.not, label %.lr.ph593.us.1.preheader, label %.epil.preheader1085

.epil.preheader1085:                              ; preds = %.lr.ph593.us.1.preheader.unr-lcssa, %.preheader545.us.1
  %.5456583.us.1.epil.init = phi i32 [ %.4455617.us.1, %.preheader545.us.1 ], [ %i.asz, %.lr.ph593.us.1.preheader.unr-lcssa ]
  %.12581.us.1.epil.init = phi ptr [ %.11615.us.1, %.preheader545.us.1 ], [ %i.asq, %.lr.ph593.us.1.preheader.unr-lcssa ]
  %.17580.us.1.epil.init = phi ptr [ %.16614.us.1, %.preheader545.us.1 ], [ %i.ast, %.lr.ph593.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1092)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader1085
  %.5456583.us.1.epil = phi i32 [ %.5456583.us.1.epil.init, %.epil.preheader1085 ], [ %i.atj, %bb.ap ]
  %.12581.us.1.epil = phi ptr [ %.12581.us.1.epil.init, %.epil.preheader1085 ], [ %i.ata, %bb.ap ] ; 2 uses
  %.17580.us.1.epil = phi ptr [ %.17580.us.1.epil.init, %.epil.preheader1085 ], [ %i.atd, %bb.ap ] ; 2 uses
  %epil.iter1087 = phi i32 [ 0, %.epil.preheader1085 ], [ %epil.iter1087.next, %bb.ap ]
  %i.ata = getelementptr inbounds nuw i8, ptr %.12581.us.1.epil, i64 2 ; 2 uses
  %i.atb = load i16, ptr %.12581.us.1.epil, align 2, !tbaa !40
  %i.atc = zext i16 %i.atb to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %.17580.us.1.epil, i64 2 ; 2 uses
  %i.ate = load i16, ptr %.17580.us.1.epil, align 2, !tbaa !40
  %i.atf = zext i16 %i.ate to i64
  %i.atg = sub nsw i64 %i.atc, %i.atf
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atg
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !7
  %i.atj = add nsw i32 %i.ati, %.5456583.us.1.epil ; 2 uses
  %epil.iter1087.next = add i32 %epil.iter1087, 1 ; 2 uses
  %epil.iter1087.cmp.not = icmp eq i32 %epil.iter1087.next, %xtraiter1086
  br i1 %epil.iter1087.cmp.not, label %.lr.ph593.us.1.preheader, label %bb.ap, !llvm.loop !155

.lr.ph593.us.1.preheader:                         ; preds = %bb.ap, %.lr.ph593.us.1.preheader.unr-lcssa
  %.lcssa985 = phi ptr [ %i.asq, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.ata, %bb.ap ] ; 2 uses
  %.lcssa984 = phi ptr [ %i.ast, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.atd, %bb.ap ] ; 2 uses
  %.lcssa983 = phi i32 [ %i.asz, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.atj, %bb.ap ] ; 2 uses
  br i1 %i.arj, label %.lr.ph593.us.1.epil.preheader, label %.lr.ph593.us.1

.lr.ph593.us.1:                                   ; preds = %.lr.ph593.us.1.preheader, %.lr.ph593.us.1
  %.5450592.us.1 = phi i32 [ %i.aux, %.lr.ph593.us.1 ], [ %.4449618.us.1, %.lr.ph593.us.1.preheader ]
  %.13590.us.1 = phi ptr [ %i.auo, %.lr.ph593.us.1 ], [ %.lcssa985, %.lr.ph593.us.1.preheader ] ; 5 uses
  %.18589.us.1 = phi ptr [ %i.aur, %.lr.ph593.us.1 ], [ %.lcssa984, %.lr.ph593.us.1.preheader ] ; 5 uses
  %niter1103 = phi i32 [ %niter1103.next.3, %.lr.ph593.us.1 ], [ 0, %.lr.ph593.us.1.preheader ]
  %i.atk = getelementptr inbounds nuw i8, ptr %.13590.us.1, i64 2
  %i.atl = load i16, ptr %.13590.us.1, align 2, !tbaa !40
  %i.atm = zext i16 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr %.18589.us.1, i64 2
  %i.ato = load i16, ptr %.18589.us.1, align 2, !tbaa !40
  %i.atp = zext i16 %i.ato to i64
  %i.atq = sub nsw i64 %i.atm, %i.atp
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !7
  %i.att = add nsw i32 %i.ats, %.5450592.us.1
  %i.atu = getelementptr inbounds nuw i8, ptr %.13590.us.1, i64 4
  %i.atv = load i16, ptr %i.atk, align 2, !tbaa !40
  %i.atw = zext i16 %i.atv to i64
  %i.atx = getelementptr inbounds nuw i8, ptr %.18589.us.1, i64 4
  %i.aty = load i16, ptr %i.atn, align 2, !tbaa !40
  %i.atz = zext i16 %i.aty to i64
  %i.aua = sub nsw i64 %i.atw, %i.atz
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !7
  %i.aud = add nsw i32 %i.auc, %i.att
  %i.aue = getelementptr inbounds nuw i8, ptr %.13590.us.1, i64 6
  %i.auf = load i16, ptr %i.atu, align 2, !tbaa !40
  %i.aug = zext i16 %i.auf to i64
  %i.auh = getelementptr inbounds nuw i8, ptr %.18589.us.1, i64 6
  %i.aui = load i16, ptr %i.atx, align 2, !tbaa !40
  %i.auj = zext i16 %i.aui to i64
  %i.auk = sub nsw i64 %i.aug, %i.auj
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !7
  %i.aun = add nsw i32 %i.aum, %i.aud
  %i.auo = getelementptr inbounds nuw i8, ptr %.13590.us.1, i64 8 ; 3 uses
  %i.aup = load i16, ptr %i.aue, align 2, !tbaa !40
  %i.auq = zext i16 %i.aup to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %.18589.us.1, i64 8 ; 3 uses
  %i.aus = load i16, ptr %i.auh, align 2, !tbaa !40
  %i.aut = zext i16 %i.aus to i64
  %i.auu = sub nsw i64 %i.auq, %i.aut
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.auu
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !7
  %i.aux = add nsw i32 %i.auw, %i.aun             ; 3 uses
  %niter1103.next.3 = add nuw nsw i32 %niter1103, 4 ; 2 uses
  %niter1103.ncmp.3.not = icmp eq i32 %niter1103.next.3, %unroll_iter1102
  br i1 %niter1103.ncmp.3.not, label %.lr.ph601.us.1.preheader.unr-lcssa, label %.lr.ph593.us.1, !llvm.loop !146

.lr.ph601.us.1.preheader.unr-lcssa:               ; preds = %.lr.ph593.us.1
  br i1 %lcmp.mod1097.not, label %.lr.ph601.us.1.preheader, label %.lr.ph593.us.1.epil.preheader

.lr.ph593.us.1.epil.preheader:                    ; preds = %.lr.ph601.us.1.preheader.unr-lcssa, %.lr.ph593.us.1.preheader
  %.5450592.us.1.epil.init = phi i32 [ %.4449618.us.1, %.lr.ph593.us.1.preheader ], [ %i.aux, %.lr.ph601.us.1.preheader.unr-lcssa ]
  %.13590.us.1.epil.init = phi ptr [ %.lcssa985, %.lr.ph593.us.1.preheader ], [ %i.auo, %.lr.ph601.us.1.preheader.unr-lcssa ]
  %.18589.us.1.epil.init = phi ptr [ %.lcssa984, %.lr.ph593.us.1.preheader ], [ %i.aur, %.lr.ph601.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1101)
  br label %.lr.ph593.us.1.epil

.lr.ph593.us.1.epil:                              ; preds = %.lr.ph593.us.1.epil, %.lr.ph593.us.1.epil.preheader
  %.5450592.us.1.epil = phi i32 [ %i.avh, %.lr.ph593.us.1.epil ], [ %.5450592.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ]
  %.13590.us.1.epil = phi ptr [ %i.auy, %.lr.ph593.us.1.epil ], [ %.13590.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ] ; 2 uses
  %.18589.us.1.epil = phi ptr [ %i.avb, %.lr.ph593.us.1.epil ], [ %.18589.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ] ; 2 uses
  %epil.iter1096 = phi i32 [ %epil.iter1096.next, %.lr.ph593.us.1.epil ], [ 0, %.lr.ph593.us.1.epil.preheader ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.13590.us.1.epil, i64 2 ; 2 uses
  %i.auz = load i16, ptr %.13590.us.1.epil, align 2, !tbaa !40
  %i.ava = zext i16 %i.auz to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %.18589.us.1.epil, i64 2 ; 2 uses
  %i.avc = load i16, ptr %.18589.us.1.epil, align 2, !tbaa !40
  %i.avd = zext i16 %i.avc to i64
  %i.ave = sub nsw i64 %i.ava, %i.avd
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !7
  %i.avh = add nsw i32 %i.avg, %.5450592.us.1.epil ; 2 uses
  %epil.iter1096.next = add i32 %epil.iter1096, 1 ; 2 uses
  %epil.iter1096.cmp.not = icmp eq i32 %epil.iter1096.next, %xtraiter1095
  br i1 %epil.iter1096.cmp.not, label %.lr.ph601.us.1.preheader, label %.lr.ph593.us.1.epil, !llvm.loop !156

.lr.ph601.us.1.preheader:                         ; preds = %.lr.ph593.us.1.epil, %.lr.ph601.us.1.preheader.unr-lcssa
  %.lcssa988 = phi ptr [ %i.auo, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.auy, %.lr.ph593.us.1.epil ] ; 2 uses
  %.lcssa987 = phi ptr [ %i.aur, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.avb, %.lr.ph593.us.1.epil ] ; 2 uses
  %.lcssa986 = phi i32 [ %i.aux, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.avh, %.lr.ph593.us.1.epil ] ; 2 uses
  br i1 %i.ark, label %.lr.ph601.us.1.epil.preheader, label %.lr.ph601.us.1

.lr.ph601.us.1:                                   ; preds = %.lr.ph601.us.1.preheader, %.lr.ph601.us.1
  %.5444600.us.1 = phi i32 [ %i.awv, %.lr.ph601.us.1 ], [ %.4443619.us.1, %.lr.ph601.us.1.preheader ]
  %.14598.us.1 = phi ptr [ %i.awm, %.lr.ph601.us.1 ], [ %.lcssa988, %.lr.ph601.us.1.preheader ] ; 5 uses
  %.19597.us.1 = phi ptr [ %i.awp, %.lr.ph601.us.1 ], [ %.lcssa987, %.lr.ph601.us.1.preheader ] ; 5 uses
  %niter1112 = phi i32 [ %niter1112.next.3, %.lr.ph601.us.1 ], [ 0, %.lr.ph601.us.1.preheader ]
  %i.avi = getelementptr inbounds nuw i8, ptr %.14598.us.1, i64 2
  %i.avj = load i16, ptr %.14598.us.1, align 2, !tbaa !40
  %i.avk = zext i16 %i.avj to i64
  %i.avl = getelementptr inbounds nuw i8, ptr %.19597.us.1, i64 2
  %i.avm = load i16, ptr %.19597.us.1, align 2, !tbaa !40
  %i.avn = zext i16 %i.avm to i64
  %i.avo = sub nsw i64 %i.avk, %i.avn
  %i.avp = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.avo
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !7
  %i.avr = add nsw i32 %i.avq, %.5444600.us.1
  %i.avs = getelementptr inbounds nuw i8, ptr %.14598.us.1, i64 4
  %i.avt = load i16, ptr %i.avi, align 2, !tbaa !40
  %i.avu = zext i16 %i.avt to i64
  %i.avv = getelementptr inbounds nuw i8, ptr %.19597.us.1, i64 4
  %i.avw = load i16, ptr %i.avl, align 2, !tbaa !40
  %i.avx = zext i16 %i.avw to i64
  %i.avy = sub nsw i64 %i.avu, %i.avx
  %i.avz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.avy
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !7
  %i.awb = add nsw i32 %i.awa, %i.avr
  %i.awc = getelementptr inbounds nuw i8, ptr %.14598.us.1, i64 6
  %i.awd = load i16, ptr %i.avs, align 2, !tbaa !40
  %i.awe = zext i16 %i.awd to i64
  %i.awf = getelementptr inbounds nuw i8, ptr %.19597.us.1, i64 6
  %i.awg = load i16, ptr %i.avv, align 2, !tbaa !40
  %i.awh = zext i16 %i.awg to i64
  %i.awi = sub nsw i64 %i.awe, %i.awh
  %i.awj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.awi
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !7
  %i.awl = add nsw i32 %i.awk, %i.awb
  %i.awm = getelementptr inbounds nuw i8, ptr %.14598.us.1, i64 8 ; 3 uses
  %i.awn = load i16, ptr %i.awc, align 2, !tbaa !40
  %i.awo = zext i16 %i.awn to i64
  %i.awp = getelementptr inbounds nuw i8, ptr %.19597.us.1, i64 8 ; 3 uses
  %i.awq = load i16, ptr %i.awf, align 2, !tbaa !40
  %i.awr = zext i16 %i.awq to i64
  %i.aws = sub nsw i64 %i.awo, %i.awr
  %i.awt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aws
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !7
  %i.awv = add nsw i32 %i.awu, %i.awl             ; 3 uses
  %niter1112.next.3 = add nuw nsw i32 %niter1112, 4 ; 2 uses
  %niter1112.ncmp.3.not = icmp eq i32 %niter1112.next.3, %unroll_iter1111
  br i1 %niter1112.ncmp.3.not, label %.lr.ph609.us.1.preheader.unr-lcssa, label %.lr.ph601.us.1, !llvm.loop !148

.lr.ph609.us.1.preheader.unr-lcssa:               ; preds = %.lr.ph601.us.1
  br i1 %lcmp.mod1106.not, label %.lr.ph609.us.1.preheader, label %.lr.ph601.us.1.epil.preheader

.lr.ph601.us.1.epil.preheader:                    ; preds = %.lr.ph609.us.1.preheader.unr-lcssa, %.lr.ph601.us.1.preheader
  %.5444600.us.1.epil.init = phi i32 [ %.4443619.us.1, %.lr.ph601.us.1.preheader ], [ %i.awv, %.lr.ph609.us.1.preheader.unr-lcssa ]
  %.14598.us.1.epil.init = phi ptr [ %.lcssa988, %.lr.ph601.us.1.preheader ], [ %i.awm, %.lr.ph609.us.1.preheader.unr-lcssa ]
  %.19597.us.1.epil.init = phi ptr [ %.lcssa987, %.lr.ph601.us.1.preheader ], [ %i.awp, %.lr.ph609.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1110)
  br label %.lr.ph601.us.1.epil

.lr.ph601.us.1.epil:                              ; preds = %.lr.ph601.us.1.epil, %.lr.ph601.us.1.epil.preheader
  %.5444600.us.1.epil = phi i32 [ %i.axf, %.lr.ph601.us.1.epil ], [ %.5444600.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ]
  %.14598.us.1.epil = phi ptr [ %i.aww, %.lr.ph601.us.1.epil ], [ %.14598.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ] ; 2 uses
  %.19597.us.1.epil = phi ptr [ %i.awz, %.lr.ph601.us.1.epil ], [ %.19597.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ] ; 2 uses
  %epil.iter1105 = phi i32 [ %epil.iter1105.next, %.lr.ph601.us.1.epil ], [ 0, %.lr.ph601.us.1.epil.preheader ]
  %i.aww = getelementptr inbounds nuw i8, ptr %.14598.us.1.epil, i64 2 ; 2 uses
  %i.awx = load i16, ptr %.14598.us.1.epil, align 2, !tbaa !40
  %i.awy = zext i16 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %.19597.us.1.epil, i64 2 ; 2 uses
  %i.axa = load i16, ptr %.19597.us.1.epil, align 2, !tbaa !40
  %i.axb = zext i16 %i.axa to i64
  %i.axc = sub nsw i64 %i.awy, %i.axb
  %i.axd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axc
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !7
  %i.axf = add nsw i32 %i.axe, %.5444600.us.1.epil ; 2 uses
  %epil.iter1105.next = add i32 %epil.iter1105, 1 ; 2 uses
  %epil.iter1105.cmp.not = icmp eq i32 %epil.iter1105.next, %xtraiter1104
  br i1 %epil.iter1105.cmp.not, label %.lr.ph609.us.1.preheader, label %.lr.ph601.us.1.epil, !llvm.loop !157

.lr.ph609.us.1.preheader:                         ; preds = %.lr.ph601.us.1.epil, %.lr.ph609.us.1.preheader.unr-lcssa
  %.lcssa991 = phi ptr [ %i.awm, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.aww, %.lr.ph601.us.1.epil ] ; 2 uses
  %.lcssa990 = phi ptr [ %i.awp, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.awz, %.lr.ph601.us.1.epil ] ; 2 uses
  %.lcssa989 = phi i32 [ %i.awv, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.axf, %.lr.ph601.us.1.epil ] ; 2 uses
  br i1 %i.arl, label %.lr.ph609.us.1.epil.preheader, label %.lr.ph609.us.1

.lr.ph609.us.1:                                   ; preds = %.lr.ph609.us.1.preheader, %.lr.ph609.us.1
  %.5608.us.1 = phi i32 [ %i.ayt, %.lr.ph609.us.1 ], [ %.4620.us.1, %.lr.ph609.us.1.preheader ]
  %.15606.us.1 = phi ptr [ %i.ayk, %.lr.ph609.us.1 ], [ %.lcssa991, %.lr.ph609.us.1.preheader ] ; 5 uses
  %.20605.us.1 = phi ptr [ %i.ayn, %.lr.ph609.us.1 ], [ %.lcssa990, %.lr.ph609.us.1.preheader ] ; 5 uses
  %niter1121 = phi i32 [ %niter1121.next.3, %.lr.ph609.us.1 ], [ 0, %.lr.ph609.us.1.preheader ]
  %i.axg = getelementptr inbounds nuw i8, ptr %.15606.us.1, i64 2
  %i.axh = load i16, ptr %.15606.us.1, align 2, !tbaa !40
  %i.axi = zext i16 %i.axh to i64
  %i.axj = getelementptr inbounds nuw i8, ptr %.20605.us.1, i64 2
  %i.axk = load i16, ptr %.20605.us.1, align 2, !tbaa !40
  %i.axl = zext i16 %i.axk to i64
  %i.axm = sub nsw i64 %i.axi, %i.axl
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axm
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !7
  %i.axp = add nsw i32 %i.axo, %.5608.us.1
  %i.axq = getelementptr inbounds nuw i8, ptr %.15606.us.1, i64 4
  %i.axr = load i16, ptr %i.axg, align 2, !tbaa !40
  %i.axs = zext i16 %i.axr to i64
  %i.axt = getelementptr inbounds nuw i8, ptr %.20605.us.1, i64 4
  %i.axu = load i16, ptr %i.axj, align 2, !tbaa !40
  %i.axv = zext i16 %i.axu to i64
  %i.axw = sub nsw i64 %i.axs, %i.axv
  %i.axx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axw
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !7
  %i.axz = add nsw i32 %i.axy, %i.axp
  %i.aya = getelementptr inbounds nuw i8, ptr %.15606.us.1, i64 6
  %i.ayb = load i16, ptr %i.axq, align 2, !tbaa !40
  %i.ayc = zext i16 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr %.20605.us.1, i64 6
  %i.aye = load i16, ptr %i.axt, align 2, !tbaa !40
  %i.ayf = zext i16 %i.aye to i64
  %i.ayg = sub nsw i64 %i.ayc, %i.ayf
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ayg
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !7
  %i.ayj = add nsw i32 %i.ayi, %i.axz
  %i.ayk = getelementptr inbounds nuw i8, ptr %.15606.us.1, i64 8 ; 3 uses
  %i.ayl = load i16, ptr %i.aya, align 2, !tbaa !40
  %i.aym = zext i16 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw i8, ptr %.20605.us.1, i64 8 ; 3 uses
  %i.ayo = load i16, ptr %i.ayd, align 2, !tbaa !40
  %i.ayp = zext i16 %i.ayo to i64
  %i.ayq = sub nsw i64 %i.aym, %i.ayp
  %i.ayr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ayq
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !7
  %i.ayt = add nsw i32 %i.ays, %i.ayj             ; 3 uses
  %niter1121.next.3 = add nuw nsw i32 %niter1121, 4 ; 2 uses
  %niter1121.ncmp.3.not = icmp eq i32 %niter1121.next.3, %unroll_iter1120
  br i1 %niter1121.ncmp.3.not, label %._crit_edge610.us.1.unr-lcssa, label %.lr.ph609.us.1, !llvm.loop !150

._crit_edge610.us.1.unr-lcssa:                    ; preds = %.lr.ph609.us.1
  br i1 %lcmp.mod1115.not, label %._crit_edge610.us.1, label %.lr.ph609.us.1.epil.preheader

.lr.ph609.us.1.epil.preheader:                    ; preds = %._crit_edge610.us.1.unr-lcssa, %.lr.ph609.us.1.preheader
  %.5608.us.1.epil.init = phi i32 [ %.4620.us.1, %.lr.ph609.us.1.preheader ], [ %i.ayt, %._crit_edge610.us.1.unr-lcssa ]
  %.15606.us.1.epil.init = phi ptr [ %.lcssa991, %.lr.ph609.us.1.preheader ], [ %i.ayk, %._crit_edge610.us.1.unr-lcssa ]
  %.20605.us.1.epil.init = phi ptr [ %.lcssa990, %.lr.ph609.us.1.preheader ], [ %i.ayn, %._crit_edge610.us.1.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1119)
  br label %.lr.ph609.us.1.epil

.lr.ph609.us.1.epil:                              ; preds = %.lr.ph609.us.1.epil, %.lr.ph609.us.1.epil.preheader
  %.5608.us.1.epil = phi i32 [ %i.azd, %.lr.ph609.us.1.epil ], [ %.5608.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ]
  %.15606.us.1.epil = phi ptr [ %i.ayu, %.lr.ph609.us.1.epil ], [ %.15606.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ] ; 2 uses
  %.20605.us.1.epil = phi ptr [ %i.ayx, %.lr.ph609.us.1.epil ], [ %.20605.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ] ; 2 uses
  %epil.iter1114 = phi i32 [ %epil.iter1114.next, %.lr.ph609.us.1.epil ], [ 0, %.lr.ph609.us.1.epil.preheader ]
  %i.ayu = getelementptr inbounds nuw i8, ptr %.15606.us.1.epil, i64 2 ; 2 uses
  %i.ayv = load i16, ptr %.15606.us.1.epil, align 2, !tbaa !40
  %i.ayw = zext i16 %i.ayv to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr %.20605.us.1.epil, i64 2 ; 2 uses
  %i.ayy = load i16, ptr %.20605.us.1.epil, align 2, !tbaa !40
  %i.ayz = zext i16 %i.ayy to i64
  %i.aza = sub nsw i64 %i.ayw, %i.ayz
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aza
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !7
  %i.azd = add nsw i32 %i.azc, %.5608.us.1.epil   ; 2 uses
  %epil.iter1114.next = add i32 %epil.iter1114, 1 ; 2 uses
  %epil.iter1114.cmp.not = icmp eq i32 %epil.iter1114.next, %xtraiter1113
  br i1 %epil.iter1114.cmp.not, label %._crit_edge610.us.1, label %.lr.ph609.us.1.epil, !llvm.loop !158

._crit_edge610.us.1:                              ; preds = %.lr.ph609.us.1.epil, %._crit_edge610.us.1.unr-lcssa
  %.lcssa994 = phi ptr [ %i.ayk, %._crit_edge610.us.1.unr-lcssa ], [ %i.ayu, %.lr.ph609.us.1.epil ]
  %.lcssa993 = phi ptr [ %i.ayn, %._crit_edge610.us.1.unr-lcssa ], [ %i.ayx, %.lr.ph609.us.1.epil ] ; 2 uses
  %.lcssa992 = phi i32 [ %i.ayt, %._crit_edge610.us.1.unr-lcssa ], [ %i.azd, %.lr.ph609.us.1.epil ] ; 2 uses
  %i.aze = getelementptr inbounds [2 x i8], ptr %.lcssa994, i64 %i.ara ; 2 uses
  %i.azf = add nuw nsw i32 %.5473616.us.1, 4      ; 2 uses
  %i.azg = icmp slt i32 %i.azf, %i.aqu
  br i1 %i.azg, label %.preheader545.us.1, label %._crit_edge621.1, !llvm.loop !152

._crit_edge621.1.loopexit962.unr-lcssa:           ; preds = %._crit_edge610.1
  %lcmp.mod1080.not = icmp eq i32 %xtraiter1078, 0
  br i1 %lcmp.mod1080.not, label %._crit_edge621.1, label %._crit_edge610.1.epil.preheader

._crit_edge610.1.epil.preheader:                  ; preds = %._crit_edge621.1.loopexit962.unr-lcssa, %._crit_edge610.1.preheader
  %.11615.1.epil.init = phi ptr [ %.10634.1, %._crit_edge610.1.preheader ], [ %5, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %lcmp.mod1082 = icmp ne i32 %xtraiter1078, 0
  call void @llvm.assume(i1 %lcmp.mod1082)
  br label %._crit_edge610.1.epil

._crit_edge610.1.epil:                            ; preds = %._crit_edge610.1.epil, %._crit_edge610.1.epil.preheader
  %.11615.1.epil = phi ptr [ %i.azh, %._crit_edge610.1.epil ], [ %.11615.1.epil.init, %._crit_edge610.1.epil.preheader ]
  %epil.iter1079 = phi i32 [ %epil.iter1079.next, %._crit_edge610.1.epil ], [ 0, %._crit_edge610.1.epil.preheader ]
  %i.azh = getelementptr inbounds [2 x i8], ptr %.11615.1.epil, i64 %i.ara ; 2 uses
  %epil.iter1079.next = add i32 %epil.iter1079, 1 ; 2 uses
  %epil.iter1079.cmp.not = icmp eq i32 %epil.iter1079.next, %xtraiter1078
  br i1 %epil.iter1079.cmp.not, label %._crit_edge621.1, label %._crit_edge610.1.epil, !llvm.loop !159

._crit_edge621.1:                                 ; preds = %._crit_edge621.1.loopexit962.unr-lcssa, %._crit_edge610.1.epil, %._crit_edge610.us.1, %.preheader547.1
  %.16.lcssa.1 = phi ptr [ %.15506633.1, %.preheader547.1 ], [ %.lcssa993, %._crit_edge610.us.1 ], [ %.15506633.1, %._crit_edge610.1.epil ], [ %.15506633.1, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %.11.lcssa.1 = phi ptr [ %.10634.1, %.preheader547.1 ], [ %i.aze, %._crit_edge610.us.1 ], [ %5, %._crit_edge621.1.loopexit962.unr-lcssa ], [ %i.azh, %._crit_edge610.1.epil ]
  %.4455.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa983, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %.4449.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa986, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %.4443.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa989, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %.4.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa992, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit962.unr-lcssa ]
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv772.1 ; 4 uses
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !37
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %indvars.iv793 ; 2 uses
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !7
  %i.azm = add nsw i32 %i.azl, %.4455.lcssa.1
  store i32 %i.azm, ptr %i.azk, align 4, !tbaa !7
  %i.azn = getelementptr i8, ptr %i.azi, i64 8
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !37
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azo, i64 %indvars.iv793 ; 2 uses
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !7
  %i.azr = add nsw i32 %i.azq, %.4449.lcssa.1
  store i32 %i.azr, ptr %i.azp, align 4, !tbaa !7
  %i.azs = getelementptr i8, ptr %i.azi, i64 16
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !37
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %indvars.iv793 ; 2 uses
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !7
  %i.azw = add nsw i32 %i.azv, %.4443.lcssa.1
  store i32 %i.azw, ptr %i.azu, align 4, !tbaa !7
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772.1, 4
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azi, i64 24
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !37
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv793 ; 2 uses
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !7
  %i.bab = add nsw i32 %i.baa, %.4.lcssa.1
  store i32 %i.bab, ptr %i.azz, align 4, !tbaa !7
  %i.bac = add nuw nsw i32 %.3460636.1, 1         ; 2 uses
  %exitcond775.1.not = icmp eq i32 %i.bac, 4
  br i1 %exitcond775.1.not, label %.loopexit, label %.preheader547.1, !llvm.loop !154

.loopexit:                                        ; preds = %._crit_edge621.1, %._crit_edge691.1, %bb.ac, %bb.an
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1 ; 2 uses
  %i.bad = icmp samesign ult i64 %indvars.iv.next794, %.pre-phi
  br i1 %i.bad, label %bb.u, label %bb.aq, !llvm.loop !160

bb.aq:                                            ; preds = %.loopexit
  %i.bae = sext i16 %0 to i32
  call void @SetupLargerBlocks(i32 noundef %1, i32 noundef %i.bae, i32 noundef %i.r)
  %i.baf = load ptr, ptr @search_setup_done, align 8, !tbaa !36
  %i.bag = getelementptr inbounds [8 x i8], ptr %i.baf, i64 %i.c
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !37
  %i.bai = getelementptr inbounds [4 x i8], ptr %i.bah, i64 %i.f
  store i32 1, ptr %i.bai, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @SetMotionVectorPredictor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @FastFullPelBlockMotionSearch(ptr nofree noundef readnone captures(none) %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %10, 1
  %i.b = or disjoint i32 %i.a, 1                  ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.b
  %i.d = load ptr, ptr @img, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 2 uses
  %i.g = sub i32 %4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = sub nsw i32 %3, %i.i
  %i.k = ashr i32 %i.j, 2
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = load ptr, ptr @BlockSAD, align 8, !tbaa !19
  %i.n = sext i32 %2 to i64                       ; 5 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = sext i16 %1 to i64                       ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = sext i32 %5 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = load ptr, ptr @search_setup_done, align 8, !tbaa !36
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.n
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.q
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @SetupFastFullPelSearch(i16 noundef signext %1, i32 noundef %2)
  %.pre = load ptr, ptr @img, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre72 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !42
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %.pre, i64 196
  %.pre74 = load i32, ptr %.phi.trans.insert73, align 4, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i32 [ %.pre74, %bb.b ], [ %i.f, %bb.a ]
  %i.af = phi i32 [ %.pre72, %bb.b ], [ %i.i, %bb.a ]
  %i.ag = load ptr, ptr @search_center_x, align 8, !tbaa !36
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.n
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.q
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = sub nsw i32 %i.ak, %i.af                ; 2 uses
  %i.am = load ptr, ptr @search_center_y, align 8, !tbaa !36
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.n
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.q
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = sub nsw i32 %i.aq, %i.ae                ; 2 uses
  %i.as = load ptr, ptr @input, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !41
  %.not63 = icmp eq i32 %i.au, 0
  %.pre75 = load ptr, ptr @mvbits, align 8        ; 4 uses
  br i1 %.not63, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr @pos_00, align 8, !tbaa !36
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.n
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.q
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = sext i16 %6 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = sext i16 %7 to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = add nsw i32 %i.bk, %i.bg
  %i.bm = mul nsw i32 %i.bl, %12
  %i.bn = ashr i32 %i.bm, 16
  %i.bo = add nsw i32 %i.bn, %i.bc                ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %11
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %11)
  %spec.select64 = select i1 %i.bp, i32 %i.az, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.056 = phi i32 [ %11, %bb.c ], [ %spec.select, %bb.d ]
  %.054 = phi i32 [ 0, %bb.c ], [ %spec.select64, %bb.d ]
  %i.bq = load ptr, ptr @spiral_search_x, align 8 ; 2 uses
  %i.br = load ptr, ptr @spiral_search_y, align 8 ; 2 uses
  %i.bs = sext i16 %6 to i32
  %i.bt = sext i16 %7 to i32
  %i.bu = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.070 = phi ptr [ %i.y, %bb.e ], [ %i.cv, %bb.h ] ; 2 uses
  %.169 = phi i32 [ %.054, %bb.e ], [ %.2, %bb.h ] ; 2 uses
  %.15767 = phi i32 [ %.056, %bb.e ], [ %.258, %bb.h ] ; 4 uses
  %i.bv = load i32, ptr %.070, align 4, !tbaa !7  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %.15767
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !40
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.al, %i.bz
  %i.cb = shl i32 %i.ca, 2
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !40
  %i.ce = sext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.ar, %i.ce
  %i.cg = shl i32 %i.cf, 2
  %i.ch = sub nsw i32 %i.cb, %i.bs
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.cl = sub nsw i32 %i.cg, %i.bt
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = add nsw i32 %i.co, %i.ck
  %i.cq = mul nsw i32 %i.cp, %12
  %i.cr = ashr i32 %i.cq, 16
  %i.cs = add nsw i32 %i.cr, %i.bv                ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %.15767
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 %.15767)
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select66 = select i1 %i.ct, i32 %i.cu, i32 %.169
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.258 = phi i32 [ %.15767, %bb.f ], [ %spec.select65, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.169, %bb.f ], [ %spec.select66, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
