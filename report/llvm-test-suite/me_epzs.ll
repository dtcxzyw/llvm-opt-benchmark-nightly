inline.NumInlined: 242
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@EPZSPelBlockMotionSearch:bb.a
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.bp, %EPZSTemporalPredictors.exit, %bb.bk, %bb.bm, %bb.bn
  %.2607 = phi i32 [ %.1606, %EPZSTemporalPredictors.exit ], [ %.1606, %bb.bm ], [ %.1606, %bb.bn ], [ %.1606, %bb.bk ], [ %.1606, %bb.bp ], [ %i.yf, %.critedge.loopexit ] ; 4 uses
  %i.yg = icmp eq i16 %1, 0                       ; 2 uses
  %i.yh = and i1 %i.fv, %i.wj
  %spec.select = or i1 %i.yg, %i.yh
  br i1 %spec.select, label %bb.br, label %EPZSBlockTypePredictors.exit

bb.br:                                            ; preds = %.critedge
  %i.yi = load ptr, ptr @img, align 8, !tbaa !29  ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !158
  %.not546 = icmp eq i32 %i.yk, 0
  br i1 %.not546, label %EPZSBlockTypePredictors.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yl = load ptr, ptr @predictor, align 8, !tbaa !59
  %i.ym = getelementptr i8, ptr %i.yl, i64 8
  %.val577 = load ptr, ptr %i.ym, align 8, !tbaa !23 ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 14384
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !164
  %i.yp = sext i32 %i.ae to i64
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !155
  %i.ys = sext i32 %i.ac to i64
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.ys
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !152
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %i.kb
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !116 ; 3 uses
  %i.yx = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 9 uses
  %i.yy = add i32 %i.yx, 8
  %i.yz = sext i32 %.2607 to i64
  %i.za = getelementptr inbounds [16 x i8], ptr %.val577, i64 %i.yz ; 2 uses
  %i.zb = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zb
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !74 ; 3 uses
  %i.ze = getelementptr inbounds [2 x i8], ptr @blk_parent, i64 %i.j
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !119
  %i.zg = sext i16 %i.zf to i64
  %i.zh = getelementptr inbounds [8 x i8], ptr %i.zd, i64 %i.zg
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !117 ; 2 uses
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !119
  %i.zk = sext i16 %i.zj to i32                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.yx, 0                ; 6 uses
  %i.zl = add nsw i32 %i.yx, -1
  %i.zm = shl nuw nsw i32 1, %i.zl                ; 6 uses
  %i.zn = add nsw i32 %i.zm, %i.zk
  %i.zo = ashr i32 %i.zn, %i.yx
  %i.zp = select i1 %.not.i.i, i32 %i.zk, i32 %i.zo ; 2 uses
  store i32 %i.zp, ptr %i.za, align 4, !tbaa !4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zi, i64 2
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !119
  %i.zs = sext i16 %i.zr to i32                   ; 2 uses
  %i.zt = add nsw i32 %i.zm, %i.zs
  %i.zu = ashr i32 %i.zt, %i.yx
  %i.zv = select i1 %.not.i.i, i32 %i.zs, i32 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  store i32 %i.zv, ptr %i.zw, align 4, !tbaa !4
  %i.zx = or i32 %i.zv, %i.zp
  %i.zy = icmp ne i32 %i.zx, 0
  %i.zz = zext i1 %i.zy to i32
  %i.aaa = add nsw i32 %.2607, %i.zz              ; 4 uses
  br i1 %i.yg, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aab = icmp slt i32 %8, 5
  br i1 %i.aab, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !95
  %.not.i582 = icmp eq i32 %i.aad, 0
  br i1 %.not.i582, label %.thread.i581, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.aae = sext i32 %i.aaa to i64
  %i.aaf = getelementptr inbounds [16 x i8], ptr %.val577, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds [4096 x i8], ptr @mv_scale, i64 %i.kb
  %i.aah = getelementptr inbounds nuw [128 x i8], ptr %i.aag, i64 %i.zb ; 2 uses
  %i.aai = add nsw i32 %i.fu, -1
  %i.aaj = zext nneg i32 %i.aai to i64            ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !4 ; 2 uses
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.aaj
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !74
  %i.aao = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %i.j
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !117 ; 2 uses
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !119
  %i.aar = sext i16 %i.aaq to i32
  %i.aas = mul nsw i32 %i.aal, %i.aar
  %i.aat = and i32 %i.yy, 65535                   ; 5 uses
  %i.aau = add nsw i32 %i.aat, -1
  %i.aav = shl nuw nsw i32 1, %i.aau              ; 4 uses
  %i.aaw = add nsw i32 %i.aas, %i.aav
  %i.aax = ashr i32 %i.aaw, %i.aat                ; 2 uses
  store i32 %i.aax, ptr %i.aaf, align 4, !tbaa !4
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !119
  %i.aba = sext i16 %i.aaz to i32
  %i.abb = mul nsw i32 %i.aal, %i.aba
  %i.abc = add nsw i32 %i.abb, %i.aav
  %i.abd = ashr i32 %i.abc, %i.aat                ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !4
  %i.abf = or i32 %i.abd, %i.aax
  %i.abg = icmp ne i32 %i.abf, 0
  %i.abh = zext i1 %i.abg to i32
  %i.abi = add nsw i32 %i.aaa, %i.abh             ; 2 uses
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds [16 x i8], ptr %.val577, i64 %i.abj ; 2 uses
  %i.abl = load i32, ptr %i.aah, align 16, !tbaa !4 ; 2 uses
  %i.abm = load ptr, ptr %i.yw, align 8, !tbaa !74
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.abm, i64 %i.j
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !117 ; 2 uses
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !119
  %i.abq = sext i16 %i.abp to i32
  %i.abr = mul nsw i32 %i.abl, %i.abq
  %i.abs = add nsw i32 %i.abr, %i.aav
  %i.abt = ashr i32 %i.abs, %i.aat                ; 2 uses
  store i32 %i.abt, ptr %i.abk, align 4, !tbaa !4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !119
  %i.abw = sext i16 %i.abv to i32
  %i.abx = mul nsw i32 %i.abl, %i.abw
  %i.aby = add nsw i32 %i.abx, %i.aav
  %i.abz = ashr i32 %i.aby, %i.aat                ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store i32 %i.abz, ptr %i.aca, align 4, !tbaa !4
  %i.acb = or i32 %i.abz, %i.abt
  %i.acc = icmp ne i32 %i.acb, 0
  %i.acd = zext i1 %i.acc to i32
  %i.ace = add nsw i32 %i.abi, %i.acd
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.12 = phi i32 [ %i.ace, %bb.bv ], [ %i.aaa, %bb.bs ] ; 2 uses
  %cond.i580 = icmp eq i32 %8, 1
  br i1 %cond.i580, label %bb.bx, label %.thread.i581

.thread.i581:                                     ; preds = %bb.bw, %bb.bu
  %.13 = phi i32 [ %.12, %bb.bw ], [ %i.aaa, %bb.bu ] ; 2 uses
  %i.acf = sext i32 %.13 to i64
  %i.acg = getelementptr inbounds [16 x i8], ptr %.val577, i64 %i.acf ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !117 ; 2 uses
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !119
  %i.ack = sext i16 %i.acj to i32                 ; 2 uses
  %i.acl = add nsw i32 %i.zm, %i.ack
  %i.acm = ashr i32 %i.acl, %i.yx
  %i.acn = select i1 %.not.i.i, i32 %i.ack, i32 %i.acm ; 2 uses
  store i32 %i.acn, ptr %i.acg, align 4, !tbaa !4
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aci, i64 2
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !119
  %i.acq = sext i16 %i.acp to i32                 ; 2 uses
  %i.acr = add nsw i32 %i.zm, %i.acq
  %i.acs = ashr i32 %i.acr, %i.yx
  %i.act = select i1 %.not.i.i, i32 %i.acq, i32 %i.acs ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !4
  %i.acv = or i32 %i.act, %i.acn
  %i.acw = icmp ne i32 %i.acv, 0
  %i.acx = zext i1 %i.acw to i32
  %i.acy = add nsw i32 %.13, %i.acx               ; 2 uses
  %.not80.i = icmp eq i32 %8, 4
  br i1 %.not80.i, label %EPZSBlockTypePredictors.exit, label %bb.bx

bb.bx:                                            ; preds = %.thread.i581, %bb.bw
  %.14 = phi i32 [ %.12, %bb.bw ], [ %i.acy, %.thread.i581 ] ; 2 uses
  %i.acz = sext i32 %.14 to i64
  %i.ada = getelementptr inbounds [16 x i8], ptr %.val577, i64 %i.acz ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.zd, i64 32
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !117 ; 2 uses
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !119
  %i.ade = sext i16 %i.add to i32                 ; 2 uses
  %i.adf = add nsw i32 %i.zm, %i.ade
  %i.adg = ashr i32 %i.adf, %i.yx
  %i.adh = select i1 %.not.i.i, i32 %i.ade, i32 %i.adg ; 2 uses
  store i32 %i.adh, ptr %i.ada, align 4, !tbaa !4
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 2
  %i.adj = load i16, ptr %i.adi, align 2, !tbaa !119
  %i.adk = sext i16 %i.adj to i32                 ; 2 uses
  %i.adl = add nsw i32 %i.zm, %i.adk
  %i.adm = ashr i32 %i.adl, %i.yx
  %i.adn = select i1 %.not.i.i, i32 %i.adk, i32 %i.adm ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !4
  %i.adp = or i32 %i.adn, %i.adh
  %i.adq = icmp ne i32 %i.adp, 0
  %i.adr = zext i1 %i.adq to i32
  %i.ads = add nsw i32 %.14, %i.adr
  br label %EPZSBlockTypePredictors.exit

EPZSBlockTypePredictors.exit:                     ; preds = %bb.bx, %.thread.i581, %bb.br, %.critedge
  %.3608 = phi i32 [ %.2607, %bb.br ], [ %.2607, %.critedge ], [ %i.ads, %bb.bx ], [ %i.acy, %.thread.i581 ] ; 2 uses
  %i.adt = icmp sgt i32 %.3608, 0
  br i1 %i.adt, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %EPZSBlockTypePredictors.exit
  %wide.trip.count = zext nneg i32 %.3608 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ch
  %indvars.iv652 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next653, %bb.ch ] ; 2 uses
  %.0470641 = phi i32 [ %i.ft, %.lr.ph.preheader ], [ %.1471, %bb.ch ] ; 8 uses
  %.0489640 = phi i8 [ 0, %.lr.ph.preheader ], [ %.1490, %bb.ch ] ; 5 uses
  %.sroa.19.0639 = phi i32 [ %i.ax, %.lr.ph.preheader ], [ %.sroa.19.1, %bb.ch ] ; 7 uses
  %.0493638 = phi i32 [ 2147483647, %.lr.ph.preheader ], [ %.1494, %bb.ch ] ; 8 uses
  %.sroa.0154.0637 = phi i32 [ %i.as, %.lr.ph.preheader ], [ %.sroa.0154.1, %bb.ch ] ; 7 uses
  %.sroa.0153.0636 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.0153.1, %bb.ch ] ; 5 uses
  %.sroa.6.0635 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.6.1, %bb.ch ] ; 5 uses
  %18 = load ptr, ptr @predictor, align 8, !tbaa !59
  %i.adu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !23
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.adv, i64 %indvars.iv652 ; 2 uses
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !4 ; 5 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !4 ; 5 uses
  %i.aea = load i16, ptr %10, align 2, !tbaa !119
  %i.aeb = sext i16 %i.aea to i32
  %i.aec = sub nsw i32 %i.adx, %i.aeb
  %i.aed = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aec, i1 true)
  %i.aee = icmp sgt i32 %i.aed, %11
  br i1 %i.aee, label %bb.ch, label %bb.by

bb.by:                                            ; preds = %.lr.ph
  %i.aef = load i16, ptr %i.av, align 2, !tbaa !119
  %i.aeg = sext i16 %i.aef to i32
  %i.aeh = sub nsw i32 %i.adz, %i.aeg
  %i.aei = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aeh, i1 true)
  %i.aej = icmp samesign ugt i32 %i.aei, %11
  br i1 %i.aej, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aek = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  %i.ael = add nsw i32 %i.adz, %i.be
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr inbounds [8 x i8], ptr %i.aek, i64 %i.aem
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !117
  %i.aep = add nsw i32 %i.adx, %i.bd
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [2 x i8], ptr %i.aeo, i64 %i.aeq ; 2 uses
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !119
  %i.aet = load i16, ptr @EPZSBlkCount, align 2, !tbaa !119 ; 2 uses
  %i.aeu = icmp eq i16 %i.aes, %i.aet
  br i1 %i.aeu, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i16 %i.aet, ptr %i.aer, align 2, !tbaa !119
  %i.aev = add nsw i32 %i.adx, %i.aq
  %i.aew = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  %i.aex = shl i32 %i.aev, %i.aew                 ; 4 uses
  %i.aey = add nsw i32 %i.adz, %i.au
  %i.aez = shl i32 %i.aey, %i.aew                 ; 4 uses
  %i.afa = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 2 uses
  %i.afb = sub nsw i32 %i.aex, %i.ai
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.afc
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !4
  %i.aff = sub nsw i32 %i.aez, %i.an
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.afg
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !4
  %i.afj = add nsw i32 %i.afi, %i.afe
  %i.afk = mul nsw i32 %i.afj, %13
  %i.afl = ashr i32 %i.afk, 16                    ; 3 uses
  %.not561 = icmp slt i32 %i.afl, %.0493638
  br i1 %.not561, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.afm = icmp sgt i32 %i.aex, -1
  br i1 %i.afm, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.afn = load i16, ptr @img_width, align 2, !tbaa !119
  %i.afo = sext i16 %i.afn to i32
  %i.afp = sub nsw i32 %i.afo, %i.o
  %i.afq = icmp slt i32 %i.aex, %i.afp
  %i.afr = icmp sgt i32 %i.aez, -1
  %or.cond13 = and i1 %i.afr, %i.afq
  br i1 %or.cond13, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.afs = load i16, ptr @img_height, align 2, !tbaa !119
  %i.aft = sext i16 %i.afs to i32
  %i.afu = sub nsw i32 %i.aft, %i.q
  %i.afv = icmp sge i32 %i.aez, %i.afu
  %i.afw = zext i1 %i.afv to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %not.562 = phi i32 [ %i.afw, %bb.cd ], [ 1, %bb.cc ], [ 1, %bb.cb ]
  store i32 %not.562, ptr @ref_access_method, align 4, !tbaa !4
  %i.afx = load ptr, ptr %i.fo, align 8, !tbaa !29
  %i.afy = sub nsw i32 %.0493638, %i.afl
  %i.afz = add nsw i32 %i.aex, 80
  %i.aga = add nsw i32 %i.aez, 80
  %i.agb = call i32 %i.afx(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.o, i32 noundef %i.afy, i32 noundef %i.afz, i32 noundef %i.aga) #13
  %i.agc = add nsw i32 %i.agb, %i.afl             ; 4 uses
  %i.agd = icmp slt i32 %i.agc, %.0470641
  br i1 %i.agd, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.age = icmp slt i32 %i.agc, %.0493638
  br i1 %i.age, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %bb.cg, %bb.cf, %bb.ca, %bb.bz, %.lr.ph, %bb.by
  %.sroa.6.1 = phi i32 [ %.sroa.6.0635, %.lr.ph ], [ %.sroa.6.0635, %bb.by ], [ %.sroa.6.0635, %bb.bz ], [ %.sroa.6.0635, %bb.ca ], [ %.sroa.6.0635, %bb.cf ], [ %i.adz, %bb.cg ], [ %.sroa.19.0639, %bb.ce ] ; 2 uses
  %.sroa.0153.1 = phi i32 [ %.sroa.0153.0636, %.lr.ph ], [ %.sroa.0153.0636, %bb.by ], [ %.sroa.0153.0636, %bb.bz ], [ %.sroa.0153.0636, %bb.ca ], [ %.sroa.0153.0636, %bb.cf ], [ %i.adx, %bb.cg ], [ %.sroa.0154.0637, %bb.ce ] ; 2 uses
  %.sroa.0154.1 = phi i32 [ %.sroa.0154.0637, %.lr.ph ], [ %.sroa.0154.0637, %bb.by ], [ %.sroa.0154.0637, %bb.bz ], [ %.sroa.0154.0637, %bb.ca ], [ %.sroa.0154.0637, %bb.cf ], [ %.sroa.0154.0637, %bb.cg ], [ %i.adx, %bb.ce ] ; 2 uses
  %.1494 = phi i32 [ %.0493638, %.lr.ph ], [ %.0493638, %bb.by ], [ %.0493638, %bb.bz ], [ %.0493638, %bb.ca ], [ %.0493638, %bb.cf ], [ %i.agc, %bb.cg ], [ %.0470641, %bb.ce ]
  %.sroa.19.1 = phi i32 [ %.sroa.19.0639, %.lr.ph ], [ %.sroa.19.0639, %bb.by ], [ %.sroa.19.0639, %bb.bz ], [ %.sroa.19.0639, %bb.ca ], [ %.sroa.19.0639, %bb.cf ], [ %.sroa.19.0639, %bb.cg ], [ %i.adz, %bb.ce ] ; 2 uses
  %.1490 = phi i8 [ %.0489640, %.lr.ph ], [ %.0489640, %bb.by ], [ %.0489640, %bb.bz ], [ %.0489640, %bb.ca ], [ %.0489640, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ce ] ; 2 uses
  %.1471 = phi i32 [ %.0470641, %.lr.ph ], [ %.0470641, %bb.by ], [ %.0470641, %bb.bz ], [ %.0470641, %bb.ca ], [ %.0470641, %bb.cf ], [ %.0470641, %bb.cg ], [ %i.agc, %bb.ce ] ; 2 uses
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next653, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !165

._crit_edge.loopexit:                             ; preds = %bb.ch
  %i.agf = icmp ne i8 %.1490, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %EPZSBlockTypePredictors.exit
  %.sroa.6.0.lcssa = phi i32 [ 0, %EPZSBlockTypePredictors.exit ], [ %.sroa.6.1, %._crit_edge.loopexit ]
  %.sroa.0153.0.lcssa = phi i32 [ 0, %EPZSBlockTypePredictors.exit ], [ %.sroa.0153.1, %._crit_edge.loopexit ]
  %.sroa.0154.0.lcssa = phi i32 [ %i.as, %EPZSBlockTypePredictors.exit ], [ %.sroa.0154.1, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.19.0.lcssa = phi i32 [ %i.ax, %EPZSBlockTypePredictors.exit ], [ %.sroa.19.1, %._crit_edge.loopexit ] ; 5 uses
  %.0489.lcssa = phi i1 [ false, %EPZSBlockTypePredictors.exit ], [ %i.agf, %._crit_edge.loopexit ]
  %.0470.lcssa = phi i32 [ %i.ft, %EPZSBlockTypePredictors.exit ], [ %.1471, %._crit_edge.loopexit ] ; 4 uses
  %i.agg = icmp sgt i32 %.0470.lcssa, %i.ka
  br i1 %i.agg, label %bb.ci, label %.critedge575.thread

bb.ci:                                            ; preds = %._crit_edge
  %i.agh = load ptr, ptr @input, align 8, !tbaa !29
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 4088
  %i.agj = load i32, ptr %i.agi, align 8, !tbaa !72
  %.not547 = icmp eq i32 %i.agj, 0
  br i1 %.not547, label %bb.cs, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.agk = load i32, ptr %i.bb, align 4, !tbaa !4 ; 2 uses
  %i.agl = ashr i32 %i.agk, 1
  %i.agm = add i32 %i.agk, %i.ka
  %i.agn = add i32 %i.agm, %i.agl
  %i.ago = icmp slt i32 %.0470.lcssa, %i.agn
  br i1 %i.ago, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.agp = icmp eq i32 %.sroa.0154.0.lcssa, 0
  %i.agq = icmp eq i32 %.sroa.19.0.lcssa, 0
  %or.cond16 = select i1 %i.agp, i1 %i.agq, i1 false
  br i1 %or.cond16, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.agr = load i16, ptr %10, align 2, !tbaa !119
  %i.ags = sext i16 %i.agr to i32
  %i.agt = sub nsw i32 %.sroa.0154.0.lcssa, %i.ags
  %i.agu = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.agt, i1 true)
  %i.agv = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.agw = lshr exact i32 8, %i.agv               ; 2 uses
  %i.agx = icmp samesign ult i32 %i.agu, %i.agw
  br i1 %i.agx, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.agy = load i16, ptr %i.av, align 2, !tbaa !119
  %i.agz = sext i16 %i.agy to i32
  %i.aha = sub nsw i32 %.sroa.19.0.lcssa, %i.agz
  %i.ahb = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aha, i1 true)
  %i.ahc = icmp samesign ult i32 %i.ahb, %i.agw
  br i1 %i.ahc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.ck, %bb.cm
  %i.ahd = load ptr, ptr @sdiamond, align 8, !tbaa !59
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %i.ahe = load ptr, ptr @square, align 8, !tbaa !59
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cj
  %i.ahf = icmp sgt i32 %8, 5
  %i.ahg = icmp ne i32 %8, 1
  %or.cond18 = and i1 %i.fv, %i.ahg
  %or.cond568 = or i1 %i.ahf, %or.cond18
  br i1 %or.cond568, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ahh = load ptr, ptr @square, align 8, !tbaa !59
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ahi = load ptr, ptr @searchPattern, align 8, !tbaa !59
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cn, %bb.cr, %bb.cq, %bb.ci
  %.0484 = phi ptr [ %i.ahd, %bb.cn ], [ %i.ahe, %bb.co ], [ %i.ahh, %bb.cq ], [ %i.ahi, %bb.cr ], [ %i.bz, %bb.ci ]
  %i.ahj = sext i16 %i.aa to i64
  %i.ahk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ahj
  %i.ahl = icmp slt i32 %8, 5
  br label %bb.ct

bb.ct:                                            ; preds = %bb.dy, %bb.cs
  %.sroa.0154.2 = phi i32 [ %.sroa.0154.0.lcssa, %bb.cs ], [ %.sroa.0154.6, %bb.dy ]
  %.sroa.19.2 = phi i32 [ %.sroa.19.0.lcssa, %bb.cs ], [ %.sroa.19.6, %bb.dy ]
  %.2491 = phi i1 [ %.0489.lcssa, %bb.cs ], [ false, %bb.dy ]
  %.1485 = phi ptr [ %.0484, %bb.cs ], [ %.4488, %bb.dy ] ; 2 uses
  %.0480 = phi i32 [ %.sroa.19.0.lcssa, %bb.cs ], [ %.sroa.6.0.lcssa, %bb.dy ]
  %.0477 = phi i32 [ %.sroa.0154.0.lcssa, %bb.cs ], [ %.sroa.0153.0.lcssa, %bb.dy ]
  %.2472 = phi i32 [ %.0470.lcssa, %bb.cs ], [ %.6476, %bb.dy ]
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dj, %bb.ct
  %.sroa.0154.3 = phi i32 [ %.sroa.0154.2, %bb.ct ], [ %.sroa.0154.6, %bb.dj ]
  %.sroa.19.3 = phi i32 [ %.sroa.19.2, %bb.ct ], [ %.sroa.19.6, %bb.dj ]
  %.2486 = phi ptr [ %.1485, %bb.ct ], [ %.3487, %bb.dj ] ; 5 uses
  %.1481 = phi i32 [ %.0480, %bb.ct ], [ %.2482, %bb.dj ] ; 3 uses
  %.1478 = phi i32 [ %.0477, %bb.ct ], [ %.2479, %bb.dj ] ; 3 uses
  %.3473 = phi i32 [ %.2472, %bb.ct ], [ %.6476, %bb.dj ]
  %.1465 = phi i32 [ 0, %bb.ct ], [ %.2466, %bb.dj ]
  %.1459 = phi i32 [ 0, %bb.ct ], [ %.6, %bb.dj ]
  %.1454 = phi i32 [ 0, %bb.ct ], [ %.2455, %bb.dj ]
  %.1451.in = phi ptr [ %.1485, %bb.ct ], [ %.2452.in, %bb.dj ]
  %.1 = phi i32 [ 0, %bb.ct ], [ %.5, %bb.dj ]
  %.1451 = load i32, ptr %.1451.in, align 4, !tbaa !4
  %i.ahm = getelementptr inbounds nuw i8, ptr %.2486, i64 8 ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.de, %bb.cu
  %.sroa.0154.4 = phi i32 [ %.sroa.0154.3, %bb.cu ], [ %.sroa.0154.6, %bb.de ] ; 5 uses
  %.sroa.19.4 = phi i32 [ %.sroa.19.3, %bb.cu ], [ %.sroa.19.6, %bb.de ] ; 5 uses
  %.4474 = phi i32 [ %.3473, %bb.cu ], [ %.6476, %bb.de ] ; 8 uses
  %.2460 = phi i32 [ %.1459, %bb.cu ], [ %spec.select570, %bb.de ] ; 3 uses
  %.0456 = phi i32 [ %.1451, %bb.cu ], [ %.1457, %bb.de ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.cu ], [ %.4, %bb.de ]  ; 5 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !23
  %i.aho = sext i32 %.2460 to i64
  %i.ahp = getelementptr inbounds [16 x i8], ptr %i.ahn, i64 %i.aho ; 2 uses
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !4
  %i.ahr = add nsw i32 %i.ahq, %.1478             ; 4 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !4
  %i.ahu = add nsw i32 %i.aht, %.1481             ; 4 uses
  %i.ahv = add nsw i32 %i.ahr, %i.aq
  %19 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  %i.ahw = shl i32 %i.ahv, %19                    ; 4 uses
  %i.ahx = add nsw i32 %i.ahu, %i.au
  %i.ahy = shl i32 %i.ahx, %19                    ; 4 uses
  %i.ahz = load i16, ptr %10, align 2, !tbaa !119
  %i.aia = sext i16 %i.ahz to i32
  %i.aib = sub nsw i32 %i.ahr, %i.aia
  %i.aic = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aib, i1 true)
  %.not548 = icmp sgt i32 %i.aic, %11
  br i1 %.not548, label %bb.de, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aid = load i16, ptr %i.av, align 2, !tbaa !119
  %i.aie = sext i16 %i.aid to i32
  %i.aif = sub nsw i32 %i.ahu, %i.aie
  %i.aig = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aif, i1 true)
  %.not549 = icmp samesign ugt i32 %i.aig, %11
  br i1 %.not549, label %bb.de, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aih = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  %i.aii = add nsw i32 %i.ahu, %i.be
  %i.aij = sext i32 %i.aii to i64
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.aih, i64 %i.aij
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !117
  %i.aim = add nsw i32 %i.ahr, %i.bd
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [2 x i8], ptr %i.ail, i64 %i.ain ; 2 uses
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !119
  %i.aiq = load i16, ptr @EPZSBlkCount, align 2, !tbaa !119 ; 2 uses
  %.not550 = icmp eq i16 %i.aip, %i.aiq
  br i1 %.not550, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i16 %i.aiq, ptr %i.aio, align 2, !tbaa !119
  %i.air = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 2 uses
  %i.ais = sub nsw i32 %i.ahw, %i.ai
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !4
  %i.aiw = sub nsw i32 %i.ahy, %i.an
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.aix
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !4
  %i.aja = add nsw i32 %i.aiz, %i.aiv
  %i.ajb = mul nsw i32 %i.aja, %13
  %i.ajc = ashr i32 %i.ajb, 16                    ; 3 uses
  %i.ajd = icmp slt i32 %i.ajc, %.4474
  br i1 %i.ajd, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  %i.aje = icmp sgt i32 %i.ahw, -1
  br i1 %i.aje, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.ajf = load i16, ptr @img_width, align 2, !tbaa !119
  %i.ajg = sext i16 %i.ajf to i32
  %i.ajh = sub nsw i32 %i.ajg, %i.o
  %i.aji = icmp slt i32 %i.ahw, %i.ajh
  %i.ajj = icmp sgt i32 %i.ahy, -1
  %or.cond20 = select i1 %i.aji, i1 %i.ajj, i1 false
  br i1 %or.cond20, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ajk = load i16, ptr @img_height, align 2, !tbaa !119
  %i.ajl = sext i16 %i.ajk to i32
  %i.ajm = sub nsw i32 %i.ajl, %i.q
  %i.ajn = icmp sge i32 %i.ahy, %i.ajm
  %i.ajo = zext i1 %i.ajn to i32
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %not.552 = phi i32 [ %i.ajo, %bb.db ], [ 1, %bb.da ], [ 1, %bb.cz ]
  store i32 %not.552, ptr @ref_access_method, align 4, !tbaa !4
  %i.ajp = load ptr, ptr %i.fo, align 8, !tbaa !29
  %i.ajq = sub nsw i32 %.4474, %i.ajc
  %i.ajr = add nsw i32 %i.ahw, 80
  %i.ajs = add nsw i32 %i.ahy, 80
  %i.ajt = call i32 %i.ajp(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.o, i32 noundef %i.ajq, i32 noundef %i.ajr, i32 noundef %i.ajs) #13
  %i.aju = add nsw i32 %i.ajt, %i.ajc             ; 2 uses
  %i.ajv = icmp slt i32 %i.aju, %.4474
  br i1 %i.ajv, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  br label %bb.de

bb.de:                                            ; preds = %bb.cv, %bb.cw, %bb.dc, %bb.dd, %bb.cy, %bb.cx
  %.sroa.0154.6 = phi i32 [ %.sroa.0154.4, %bb.cx ], [ %i.ahr, %bb.dd ], [ %.sroa.0154.4, %bb.dc ], [ %.sroa.0154.4, %bb.cy ], [ %.sroa.0154.4, %bb.cw ], [ %.sroa.0154.4, %bb.cv ] ; 12 uses
  %.sroa.19.6 = phi i32 [ %.sroa.19.4, %bb.cx ], [ %i.ahu, %bb.dd ], [ %.sroa.19.4, %bb.dc ], [ %.sroa.19.4, %bb.cy ], [ %.sroa.19.4, %bb.cw ], [ %.sroa.19.4, %bb.cv ] ; 12 uses
  %.6476 = phi i32 [ %.4474, %bb.cx ], [ %i.aju, %bb.dd ], [ %.4474, %bb.dc ], [ %.4474, %bb.cy ], [ %.4474, %bb.cw ], [ %.4474, %bb.cv ] ; 10 uses
  %.4 = phi i32 [ %.2, %bb.cx ], [ %.2460, %bb.dd ], [ %.2, %bb.dc ], [ %.2, %bb.cy ], [ %.2, %bb.cw ], [ %.2, %bb.cv ] ; 3 uses
  %i.ajw = add nsw i32 %.2460, 1                  ; 2 uses
  %i.ajx = load i32, ptr %.2486, align 8, !tbaa !20 ; 2 uses
  %.not553 = icmp slt i32 %i.ajw, %i.ajx
  %i.ajy = select i1 %.not553, i32 0, i32 %i.ajx
  %spec.select570 = sub nsw i32 %i.ajw, %i.ajy
  %.1457 = add nsw i32 %.0456, -1
  %i.ajz = icmp sgt i32 %.0456, 1
  br i1 %i.ajz, label %bb.cv, label %bb.df, !llvm.loop !166

bb.df:                                            ; preds = %bb.de
  %.not554 = icmp eq i32 %.1454, 0
  br i1 %.not554, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aka = icmp eq i32 %.sroa.0154.6, %.1478
  %i.akb = icmp eq i32 %.sroa.19.6, %.1481
  %or.cond571 = select i1 %i.aka, i1 %i.akb, i1 false
  br i1 %or.cond571, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.akc = getelementptr inbounds nuw i8, ptr %.2486, i64 16
  %i.akd = load i32, ptr %i.akc, align 8, !tbaa !26
  %i.ake = getelementptr inbounds nuw i8, ptr %.2486, i64 24
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !28 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 20
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !27
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.aki = load ptr, ptr %i.ahm, align 8, !tbaa !23
  %i.akj = sext i32 %.4 to i64
  %i.akk = getelementptr inbounds [16 x i8], ptr %i.aki, i64 %i.akj ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 12
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !60
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %.3487 = phi ptr [ %i.akf, %bb.dh ], [ %.2486, %bb.di ]
  %.2482 = phi i32 [ %.1481, %bb.dh ], [ %.sroa.19.6, %bb.di ]
  %.2479 = phi i32 [ %.1478, %bb.dh ], [ %.sroa.0154.6, %bb.di ]
  %.2466 = phi i32 [ %i.akd, %bb.dh ], [ %.1465, %bb.di ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.dh ], [ %i.akn, %bb.di ]
  %.2455 = phi i32 [ %i.akh, %bb.dh ], [ 0, %bb.di ]
  %.2452.in = phi ptr [ %i.akf, %bb.dh ], [ %i.akl, %bb.di ]
  %.5 = phi i32 [ 0, %bb.dh ], [ %.4, %bb.di ]
  %.not555 = icmp eq i32 %.2466, 1
  br i1 %.not555, label %bb.dk, label %bb.cu, !llvm.loop !167

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.fv, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.ako = load ptr, ptr @img, align 8, !tbaa !29
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 24
  %i.akq = load i32, ptr %i.akp, align 8, !tbaa !95
  %i.akr = icmp eq i32 %i.akq, 0
  br i1 %i.akr, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.aks = load i32, ptr %i.ahk, align 4, !tbaa !4 ; 3 uses
  %i.akt = shl nsw i32 %i.aks, 2
  %i.aku = icmp slt i32 %i.akt, %.6476
  br i1 %i.aku, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.akv = mul nsw i32 %i.aks, 3
  %i.akw = icmp sge i32 %i.akv, %.6476
  %.not556 = icmp sgt i32 %i.aks, %i.ka
  %or.cond572 = select i1 %i.akw, i1 true, i1 %.not556
  br i1 %or.cond572, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.akx = trunc i32 %.sroa.0154.6 to i16         ; 2 uses
  store i16 %i.akx, ptr %10, align 2, !tbaa !119
  %i.aky = trunc i32 %.sroa.19.6 to i16           ; 2 uses
  store i16 %i.aky, ptr %i.av, align 2, !tbaa !119
  %i.akz = load ptr, ptr @input, align 8, !tbaa !29
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 4104
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !64
  %.not557 = icmp eq i32 %i.alb, 0
  br i1 %.not557, label %.critedge575, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i16 %i.akx, ptr %.0492, align 2, !tbaa !119
  %i.alc = getelementptr inbounds nuw i8, ptr %.0492, i64 2
  store i16 %i.aky, ptr %i.alc, align 2, !tbaa !119
  br label %.critedge575

bb.dq:                                            ; preds = %bb.dn, %bb.dl, %bb.dk
  br i1 %.2491, label %bb.dr, label %.critedge575.thread

bb.dr:                                            ; preds = %bb.dq
  %i.ald = load ptr, ptr @img, align 8, !tbaa !29
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 20
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !78
  %i.alg = icmp eq i32 %i.alf, 0
  %or.cond22 = or i1 %i.ahl, %i.alg
  %i.alh = icmp sgt i32 %.6476, %i.ka
  %or.cond573 = select i1 %or.cond22, i1 %i.alh, i1 false
  br i1 %or.cond573, label %bb.ds, label %.critedge575.thread

bb.ds:                                            ; preds = %bb.dr
  %i.ali = load ptr, ptr @input, align 8, !tbaa !29
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 4092
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !73
  %i.all = icmp sgt i32 %i.alk, 0
  br i1 %i.all, label %bb.dt, label %.critedge575.thread

bb.dt:                                            ; preds = %bb.ds
  %i.alm = icmp eq i32 %.sroa.0154.6, 0
  %i.aln = icmp eq i32 %.sroa.19.6, 0
  %or.cond25 = select i1 %i.alm, i1 %i.aln, i1 false
  %.pre658.a = load i16, ptr %10, align 2, !tbaa !119
  %.pre670 = sext i16 %.pre658.a to i32           ; 2 uses
  br i1 %or.cond25, label %._crit_edge669, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.alo = icmp eq i32 %.sroa.0154.6, %.pre670
  br i1 %i.alo, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.alp = load i16, ptr %i.av, align 2, !tbaa !119
  %i.alq = sext i16 %i.alp to i32
  %i.alr = icmp eq i32 %.sroa.19.6, %i.alq
  br i1 %i.alr, label %._crit_edge669, label %bb.dy

._crit_edge669:                                   ; preds = %bb.dt, %bb.dv
  %i.als = sub nsw i32 %.sroa.0154.6, %.pre670
  %i.alt = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.als, i1 true)
  %20 = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.alu = lshr exact i32 8, %20                  ; 2 uses
  %i.alv = icmp samesign ult i32 %i.alt, %i.alu
  br i1 %i.alv, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %._crit_edge669
  %i.alw = load i16, ptr %i.av, align 2, !tbaa !119
  %i.alx = sext i16 %i.alw to i32
  %i.aly = sub nsw i32 %.sroa.19.6, %i.alx
  %i.alz = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aly, i1 true)
  %i.ama = icmp samesign ult i32 %i.alz, %i.alu
  br i1 %i.ama, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %._crit_edge669
  br label %bb.dy

bb.dy:                                            ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx
  %.4488.in = phi ptr [ @sdiamond, %bb.dw ], [ @square, %bb.dx ], [ @searchPatternD, %bb.dv ], [ @searchPatternD, %bb.du ]
  %.4488 = load ptr, ptr %.4488.in, align 8, !tbaa !59
  br label %bb.ct

.critedge575.thread:                              ; preds = %bb.dr, %bb.dq, %bb.ds, %._crit_edge
  %.sroa.0154.8.ph = phi i32 [ %.sroa.0154.0.lcssa, %._crit_edge ], [ %.sroa.0154.6, %bb.ds ], [ %.sroa.0154.6, %bb.dq ], [ %.sroa.0154.6, %bb.dr ]
  %.sroa.19.8.ph = phi i32 [ %.sroa.19.0.lcssa, %._crit_edge ], [ %.sroa.19.6, %bb.ds ], [ %.sroa.19.6, %bb.dq ], [ %.sroa.19.6, %bb.dr ]
  %.8.ph = phi i32 [ %.0470.lcssa, %._crit_edge ], [ %.6476, %bb.ds ], [ %.6476, %bb.dq ], [ %.6476, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.amb = trunc i32 %.sroa.0154.8.ph to i16
  %i.amc = trunc i32 %.sroa.19.8.ph to i16
  br label %bb.dz

.critedge575:                                     ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ee

bb.dz:                                            ; preds = %.critedge575.thread, %bb.x
  %.sroa.0154.9 = phi i16 [ %i.amb, %.critedge575.thread ], [ %i.ar, %bb.x ] ; 2 uses
  %.sroa.19.9 = phi i16 [ %i.amc, %.critedge575.thread ], [ %i.aw, %bb.x ] ; 2 uses
  %.9 = phi i32 [ %.8.ph, %.critedge575.thread ], [ %i.ft, %bb.x ] ; 3 uses
  %i.amd = icmp eq i16 %1, 0
  %.pre671 = sext i16 %i.aa to i64                ; 2 uses
  br i1 %i.amd, label %._crit_edge668, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.by, i64 %.pre671
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !4
  %i.amg = icmp sgt i32 %i.amf, %.9
  br i1 %i.amg, label %._crit_edge668, label %bb.eb

._crit_edge668:                                   ; preds = %bb.dz, %bb.ea
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.by, i64 %.pre671
  store i32 %.9, ptr %i.amh, align 4, !tbaa !4
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge668, %bb.ea
  %i.ami = load ptr, ptr @input, align 8, !tbaa !29
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 4104
  %i.amk = load i32, ptr %i.amj, align 8, !tbaa !64
  %.not558 = icmp eq i32 %i.amk, 0
  br i1 %.not558, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i16 %.sroa.0154.9, ptr %.0492, align 2, !tbaa !119
  %i.aml = getelementptr inbounds nuw i8, ptr %.0492, i64 2
  store i16 %.sroa.19.9, ptr %i.aml, align 2, !tbaa !119
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  store i16 %.sroa.0154.9, ptr %10, align 2, !tbaa !119
  store i16 %.sroa.19.9, ptr %i.av, align 2, !tbaa !119
  br label %bb.ee

bb.ee:                                            ; preds = %.critedge575, %bb.r, %bb.s, %bb.ed
  %.1468 = phi i32 [ %.6476, %.critedge575 ], [ %.9, %bb.ed ], [ %i.ft, %bb.s ], [ %i.ft, %bb.r ]
  ret i32 %.1468
}

declare void @getLuma4x4Neighbour(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i16 0, 4) i16 @EPZSSpatialPredictors(ptr nofree noundef readonly byval(%struct.pix_pos) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.pix_pos) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.pix_pos) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.pix_pos) align 8 captures(none) %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree writeonly captures(none) initializes((0, 8), (16, 24), (32, 40), (48, 56), (64, 72)) %.8.val) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %5, %4
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4096 x i8], ptr @mv_scale, i64 %i.b
  %i.d = sext i16 %6 to i64
  %i.e = getelementptr inbounds [128 x i8], ptr %i.c, i64 %i.d ; 12 uses
  %i.f = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 13 uses
  %i.g = trunc i32 %i.f to i16
  %i.h = add i16 %i.g, 8                          ; 12 uses
  store i32 0, ptr %.8.val, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %i.j = load ptr, ptr @img, align 8, !tbaa !29   ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 15268
  %i.l = load i32, ptr %i.k, align 4, !tbaa !79
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %0, align 8, !tbaa !159
  %.not192 = icmp eq i32 %i.m, 0                  ; 2 uses
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !168
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %7, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !169
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !105
  %i.x = sext i8 %i.w to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.y = phi i32 [ %i.x, %bb.c ], [ -1, %bb.b ]   ; 3 uses
  %i.z = load i32, ptr %1, align 8, !tbaa !159
  %.not193 = icmp eq i32 %i.z, 0                  ; 2 uses
  br i1 %.not193, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !168
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !169
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !105
  %i.ak = sext i8 %i.aj to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.al = phi i32 [ %i.ak, %bb.e ], [ -1, %bb.d ] ; 3 uses
  %i.am = load i32, ptr %2, align 8, !tbaa !159
  %.not194 = icmp eq i32 %i.am, 0                 ; 2 uses
  br i1 %.not194, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !168
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !104
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !169
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !105
  %i.ax = sext i8 %i.aw to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ -1, %bb.f ] ; 3 uses
  %i.az = load i32, ptr %3, align 8, !tbaa !159
  %.not195 = icmp eq i32 %i.az, 0                 ; 2 uses
  br i1 %.not195, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !168
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !169
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !105
  %i.bk = sext i8 %i.bj to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bl = phi i32 [ %i.bk, %bb.i ], [ -1, %bb.h ] ; 3 uses
  br i1 %.not192, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = sext i32 %i.y to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !168
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %8, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !169
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !119
end_hunk_0
begin_hunk_1_@EPZSBiPredBlockMotionSearch:bb.a
  store i16 %i.gp, ptr @weight1_cr, align 2, !tbaa !119
  store i16 %i.gp, ptr getelementptr inbounds nuw (i8, ptr @weight1_cr, i64 2), align 2, !tbaa !119
  store i16 %i.gp, ptr @weight2_cr, align 2, !tbaa !119
  store i16 %i.gp, ptr getelementptr inbounds nuw (i8, ptr @weight2_cr, i64 2), align 2, !tbaa !119
  store i16 0, ptr @offsetBi_cr, align 2, !tbaa !119
  br label %.sink.split583

.sink.split583:                                   ; preds = %bb.q, %bb.p
  %.sink584 = phi i16 [ %i.gm, %bb.p ], [ 0, %bb.q ]
  store i16 %.sink584, ptr getelementptr inbounds nuw (i8, ptr @offsetBi_cr, i64 2), align 2, !tbaa !119
  br label %bb.r

bb.r:                                             ; preds = %.sink.split583, %bb.k
  %i.gq = icmp sgt i32 %i.ak, %13
  br i1 %i.gq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %sext503 = shl i32 %i.cv, 16
  %i.gr = ashr exact i32 %sext503, 16
  %sext448 = shl i32 %i.g, 16
  %i.gs = ashr exact i32 %sext448, 16
  %i.gt = sub nsw i32 %i.gr, %i.gs
  %i.gu = shl i32 %i.gt, %i.ag
  %i.gv = sub nsw i32 %i.gu, %13
  %i.gw = icmp slt i32 %i.ak, %i.gv
  %i.gx = icmp sgt i32 %i.ap, %13
  %or.cond469 = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond469, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %sext504 = shl i32 %i.cy, 16
  %i.gy = ashr exact i32 %sext504, 16
  %sext449 = shl i32 %i.f, 16
  %i.gz = ashr exact i32 %sext449, 16
  %i.ha = sub nsw i32 %i.gy, %i.gz
  %i.hb = shl i32 %i.ha, %i.ag
  %i.hc = sub nsw i32 %i.hb, %13
  %i.hd = icmp slt i32 %i.ap, %i.hc
  br i1 %i.hd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %storemerge450 = phi i32 [ 1, %bb.u ], [ 0, %bb.t ]
  store i32 %storemerge450, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.he = icmp sgt i32 %i.as, %13
  br i1 %i.he, label %bb.w, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v
  %.pre546 = shl i32 %i.g, 16                     ; 2 uses
  %.pre547 = ashr exact i32 %.pre546, 16
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %sext505 = shl i32 %i.cv, 16
  %i.hf = ashr exact i32 %sext505, 16
  %sext451 = shl i32 %i.g, 16                     ; 4 uses
  %i.hg = ashr exact i32 %sext451, 16             ; 4 uses
  %i.hh = sub nsw i32 %i.hf, %i.hg
  %i.hi = shl i32 %i.hh, %i.ag
  %i.hj = sub nsw i32 %i.hi, %13
  %i.hk = icmp slt i32 %i.as, %i.hj
  %i.hl = icmp sgt i32 %i.aw, %13
  %or.cond470 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond470, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %sext506 = shl i32 %i.cy, 16
  %i.hm = ashr exact i32 %sext506, 16
  %sext452 = shl i32 %i.f, 16
  %i.hn = ashr exact i32 %sext452, 16             ; 2 uses
  %i.ho = sub nsw i32 %i.hm, %i.hn
  %i.hp = shl i32 %i.ho, %i.ag
  %i.hq = sub nsw i32 %i.hp, %13
  %i.hr = icmp slt i32 %i.aw, %i.hq
  br i1 %i.hr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x, %bb.w
  %.pre541.pre-phi = phi i32 [ %.pre547, %._crit_edge ], [ %i.hg, %bb.x ], [ %i.hg, %bb.w ]
  %.pre540.pre-phi = phi i32 [ %.pre546, %._crit_edge ], [ %sext451, %bb.x ], [ %sext451, %bb.w ]
  %.pre538 = shl i32 %i.f, 16
  %.pre539 = ashr exact i32 %.pre538, 16
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pre-phi542 = phi i32 [ %i.hg, %bb.x ], [ %.pre541.pre-phi, %bb.y ] ; 4 uses
  %sext455.pre-phi = phi i32 [ %sext451, %bb.x ], [ %.pre540.pre-phi, %bb.y ]
  %.pre-phi = phi i32 [ %i.hn, %bb.x ], [ %.pre539, %bb.y ] ; 3 uses
  %storemerge453 = phi i32 [ 0, %bb.x ], [ 1, %bb.y ]
  store i32 %storemerge453, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.hs = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  %i.ht = sext i32 %13 to i64                     ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !117
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.ht
  store i16 %i.cl, ptr %i.hw, align 2, !tbaa !119
  %i.hx = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 4 uses
  %i.hy = shl i32 %i.as, %i.cm                    ; 2 uses
  %i.hz = sub nsw i32 %i.hy, %i.r
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %i.id = shl i32 %i.aw, %i.cm                    ; 2 uses
  %i.ie = sub nsw i32 %i.id, %i.w
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.ii = add nsw i32 %i.ih, %i.ic
  %i.ij = mul nsw i32 %i.ii, %15
  %i.ik = ashr i32 %i.ij, 16
  %i.il = shl i32 %i.ak, %i.cm                    ; 2 uses
  %i.im = sub nsw i32 %i.il, %i.z
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !4
  %i.iq = shl i32 %i.ap, %i.cm                    ; 2 uses
  %i.ir = sub nsw i32 %i.iq, %i.ad
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = add nsw i32 %i.iu, %i.ip
  %i.iw = mul nsw i32 %i.iv, %15
  %i.ix = ashr i32 %i.iw, 16
  %i.iy = add nsw i32 %i.hy, 80
  %i.iz = add nsw i32 %i.id, 80
  %i.ja = add nsw i32 %i.il, 80
  %i.jb = add nsw i32 %i.iq, 80
  %i.jc = tail call i32 %storemerge(ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi542, i32 noundef 2147483647, i32 noundef %i.iy, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.jb) #13
  %i.jd = add i32 %i.jc, %i.ik
  %i.je = add i32 %i.jd, %i.ix                    ; 3 uses
  %i.jf = icmp sgt i32 %i.je, %i.ay
  br i1 %i.jf, label %bb.aa, label %bb.by

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.jg = load ptr, ptr @img, align 8, !tbaa !29
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !158
  %sext456 = shl i32 %i.k, 16
  %i.jj = ashr exact i32 %sext456, 16             ; 4 uses
  %i.jk = add nsw i32 %i.jj, -1                   ; 2 uses
  %sext457 = shl i32 %i.n, 16                     ; 2 uses
  %i.jl = ashr exact i32 %sext457, 16             ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.ji, i32 noundef %i.jk, i32 noundef %i.jl, ptr noundef nonnull %16) #13
  %i.jm = load ptr, ptr @img, align 8, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !158
  %i.jp = add nsw i32 %i.jl, -1                   ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.jo, i32 noundef %i.jj, i32 noundef %i.jp, ptr noundef nonnull %17) #13
  %i.jq = load ptr, ptr @img, align 8, !tbaa !29
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !158
  %i.jt = add nsw i32 %i.jj, %.pre-phi542         ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.js, i32 noundef %i.jt, i32 noundef %i.jp, ptr noundef nonnull %18) #13
  %i.ju = load ptr, ptr @img, align 8, !tbaa !29
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !158
  call void @getLuma4x4Neighbour(i32 noundef %i.jw, i32 noundef %i.jk, i32 noundef %i.jp, ptr noundef nonnull %19) #13
  %i.jx = icmp sgt i32 %i.jl, 0
  br i1 %i.jx, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.jy = icmp slt i32 %i.jj, 8
  br i1 %i.jy, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.jz = icmp eq i32 %sext457, 524288
  br i1 %i.jz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ka = icmp eq i32 %sext455.pre-phi, 1048576
  br i1 %i.ka, label %.sink.split585, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.kb = icmp eq i32 %i.jt, 8
  br i1 %i.kb, label %.sink.split585, label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.kc = icmp eq i32 %i.jt, 16
  br i1 %i.kc, label %.sink.split585, label %bb.ag

.sink.split585:                                   ; preds = %bb.af, %bb.ae, %bb.ad
  store i32 0, ptr %18, align 8, !tbaa !159
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split585, %bb.ae, %bb.ad, %bb.af, %bb.aa
  %i.kd = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.ke = sext i32 %2 to i64                      ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !161
  %i.kh = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ke
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !116
  %i.kj = load ptr, ptr @predictor, align 8, !tbaa !59
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  %.val = load ptr, ptr %i.kk, align 8, !tbaa !23
  %i.kl = call fastcc signext i16 @EPZSSpatialPredictors(ptr noundef nonnull byval(%struct.pix_pos) align 8 %16, ptr noundef nonnull byval(%struct.pix_pos) align 8 %17, ptr noundef nonnull byval(%struct.pix_pos) align 8 %18, ptr noundef nonnull byval(%struct.pix_pos) align 8 %19, i32 noundef %2, i32 noundef %3, i16 noundef signext %1, ptr noundef %i.kg, ptr noundef %i.ki, ptr %.val) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ao
  %indvars.iv = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.0392519 = phi i8 [ 0, %bb.ag ], [ %.1393, %bb.ao ] ; 5 uses
  %.0395517 = phi i32 [ %i.je, %bb.ag ], [ %.1396, %bb.ao ] ; 8 uses
  %.sroa.15.0515 = phi i32 [ %i.ao, %bb.ag ], [ %.sroa.15.1, %bb.ao ] ; 7 uses
  %.sroa.0129.0513 = phi i32 [ %i.aj, %bb.ag ], [ %.sroa.0129.1, %bb.ao ] ; 7 uses
  %.0408511 = phi i32 [ 2147483647, %bb.ag ], [ %.1409, %bb.ao ] ; 8 uses
  %.sroa.0128.0509 = phi i32 [ 0, %bb.ag ], [ %.sroa.0128.1, %bb.ao ] ; 5 uses
  %.sroa.6.0507 = phi i32 [ 0, %bb.ag ], [ %.sroa.6.1, %bb.ao ] ; 5 uses
  %20 = load ptr, ptr @predictor, align 8, !tbaa !59
  %i.km = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !23
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.kn, i64 %indvars.iv ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !4  ; 7 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !4  ; 7 uses
  %i.ks = load i16, ptr %11, align 2, !tbaa !119
  %i.kt = sext i16 %i.ks to i32
  %i.ku = sub nsw i32 %i.kp, %i.kt
  %i.kv = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ku, i1 true)
  %i.kw = icmp sgt i32 %i.kv, %13
  br i1 %i.kw, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kx = load i16, ptr %i.am, align 2, !tbaa !119
  %i.ky = sext i16 %i.kx to i32
  %i.kz = sub nsw i32 %i.kr, %i.ky
  %i.la = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = icmp samesign ugt i32 %i.la, %13
  br i1 %i.lb, label %.thread500, label %.thread499

bb.aj:                                            ; preds = %bb.ah
  %i.lc = icmp ne i32 %i.kp, 0
  %i.ld = icmp ne i32 %i.kr, 0
  %or.cond = select i1 %i.lc, i1 true, i1 %i.ld
  br i1 %or.cond, label %bb.ao, label %.thread499.thread

.thread500:                                       ; preds = %bb.ai
  %i.le = icmp ne i32 %i.kp, 0
  %i.lf = icmp ne i32 %i.kr, 0
  %or.cond501 = select i1 %i.le, i1 true, i1 %i.lf
  br i1 %or.cond501, label %bb.ao, label %.thread499.thread

.thread499:                                       ; preds = %bb.ai
  %i.lg = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  %i.lh = add nsw i32 %i.kr, %i.ba
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !117
  %i.ll = add nsw i32 %i.kp, %i.az
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.lm ; 2 uses
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !119
  %i.lp = load i16, ptr @EPZSBlkCount, align 2, !tbaa !119 ; 2 uses
  %i.lq = icmp eq i16 %i.lo, %i.lp
  br i1 %i.lq, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.thread499
  store i16 %i.lp, ptr %i.ln, align 2, !tbaa !119
  br label %.thread499.thread

.thread499.thread:                                ; preds = %.thread500, %bb.aj, %bb.ak
  %i.lr = add nsw i32 %i.kp, %i.co
  %i.ls = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  %i.lt = shl i32 %i.lr, %i.ls                    ; 2 uses
  %i.lu = add nsw i32 %i.kr, %i.cp
  %i.lv = shl i32 %i.lu, %i.ls                    ; 2 uses
  %i.lw = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 4 uses
  %i.lx = shl i32 %i.as, %i.ls                    ; 2 uses
  %i.ly = sub nsw i32 %i.lx, %i.r
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !4
  %i.mc = shl i32 %i.aw, %i.ls                    ; 2 uses
  %i.md = sub nsw i32 %i.mc, %i.w
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !4
  %i.mh = add nsw i32 %i.mg, %i.mb
  %i.mi = mul nsw i32 %i.mh, %15
  %i.mj = ashr i32 %i.mi, 16
  %i.mk = sub nsw i32 %i.lt, %i.z
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4
  %i.mo = sub nsw i32 %i.lv, %i.ad
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !4
  %i.ms = add nsw i32 %i.mr, %i.mn
  %i.mt = mul nsw i32 %i.ms, %15
  %i.mu = ashr i32 %i.mt, 16
  %i.mv = add nsw i32 %i.mu, %i.mj                ; 3 uses
  %.not468 = icmp slt i32 %i.mv, %.0408511
  br i1 %.not468, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread499.thread
  %i.mw = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.mx = sub nsw i32 %.0408511, %i.mv
  %i.my = add nsw i32 %i.lx, 80
  %i.mz = add nsw i32 %i.mc, 80
  %i.na = add nsw i32 %i.lt, 80
  %i.nb = add nsw i32 %i.lv, 80
  %i.nc = call i32 %i.mw(ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi542, i32 noundef %i.mx, i32 noundef %i.my, i32 noundef %i.mz, i32 noundef %i.na, i32 noundef %i.nb) #13
  %i.nd = add nsw i32 %i.nc, %i.mv                ; 4 uses
  %i.ne = icmp slt i32 %i.nd, %.0395517
  br i1 %i.ne, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nf = icmp slt i32 %i.nd, %.0408511
  br i1 %i.nf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %.thread500, %bb.al, %bb.an, %bb.am, %.thread499.thread, %.thread499, %bb.aj
  %.sroa.6.1 = phi i32 [ %.sroa.6.0507, %bb.aj ], [ %.sroa.6.0507, %.thread499 ], [ %.sroa.6.0507, %.thread499.thread ], [ %.sroa.6.0507, %bb.am ], [ %i.kr, %bb.an ], [ %.sroa.15.0515, %bb.al ], [ %.sroa.6.0507, %.thread500 ] ; 2 uses
  %.sroa.0128.1 = phi i32 [ %.sroa.0128.0509, %bb.aj ], [ %.sroa.0128.0509, %.thread499 ], [ %.sroa.0128.0509, %.thread499.thread ], [ %.sroa.0128.0509, %bb.am ], [ %i.kp, %bb.an ], [ %.sroa.0129.0513, %bb.al ], [ %.sroa.0128.0509, %.thread500 ] ; 2 uses
  %.1409 = phi i32 [ %.0408511, %bb.aj ], [ %.0408511, %.thread499 ], [ %.0408511, %.thread499.thread ], [ %.0408511, %bb.am ], [ %i.nd, %bb.an ], [ %.0395517, %bb.al ], [ %.0408511, %.thread500 ]
  %.sroa.0129.1 = phi i32 [ %.sroa.0129.0513, %bb.aj ], [ %.sroa.0129.0513, %.thread499 ], [ %.sroa.0129.0513, %.thread499.thread ], [ %.sroa.0129.0513, %bb.am ], [ %.sroa.0129.0513, %bb.an ], [ %i.kp, %bb.al ], [ %.sroa.0129.0513, %.thread500 ] ; 6 uses
  %.sroa.15.1 = phi i32 [ %.sroa.15.0515, %bb.aj ], [ %.sroa.15.0515, %.thread499 ], [ %.sroa.15.0515, %.thread499.thread ], [ %.sroa.15.0515, %bb.am ], [ %.sroa.15.0515, %bb.an ], [ %i.kr, %bb.al ], [ %.sroa.15.0515, %.thread500 ] ; 6 uses
  %.1396 = phi i32 [ %.0395517, %bb.aj ], [ %.0395517, %.thread499 ], [ %.0395517, %.thread499.thread ], [ %.0395517, %bb.am ], [ %.0395517, %bb.an ], [ %i.nd, %bb.al ], [ %.0395517, %.thread500 ] ; 5 uses
  %.1393 = phi i8 [ %.0392519, %bb.aj ], [ %.0392519, %.thread499 ], [ %.0392519, %.thread499.thread ], [ %.0392519, %bb.am ], [ 1, %bb.an ], [ 1, %bb.al ], [ %.0392519, %.thread500 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.ap, label %bb.ah, !llvm.loop !175

bb.ap:                                            ; preds = %bb.ao
  %i.ng = mul nsw i32 %i.kd, 11
  %i.nh = ashr i32 %i.ng, 3                       ; 3 uses
  %i.ni = icmp sgt i32 %.1396, %i.nh
  br i1 %i.ni, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.nj = load ptr, ptr @input, align 8, !tbaa !29
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4088
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !72
  %.not458 = icmp eq i32 %i.nl, 0
  br i1 %.not458, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nm = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.nn = ashr i32 %i.nm, 1
  %i.no = add i32 %i.nm, %i.nh
  %i.np = add i32 %i.no, %i.nn
  %i.nq = icmp slt i32 %.1396, %i.np
  br i1 %i.nq, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.nr = icmp eq i32 %.sroa.0129.1, 0
  %i.ns = icmp eq i32 %.sroa.15.1, 0
  %or.cond5 = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %or.cond5, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nt = load i16, ptr %11, align 2, !tbaa !119
  %i.nu = sext i16 %i.nt to i32
  %i.nv = sub nsw i32 %.sroa.0129.1, %i.nu
  %i.nw = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.nv, i1 true)
  %i.nx = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.ny = lshr exact i32 8, %i.nx                 ; 2 uses
  %i.nz = icmp samesign ult i32 %i.nw, %i.ny
  br i1 %i.nz, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.oa = load i16, ptr %i.am, align 2, !tbaa !119
  %i.ob = sext i16 %i.oa to i32
  %i.oc = sub nsw i32 %.sroa.15.1, %i.ob
  %i.od = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.oc, i1 true)
  %i.oe = icmp samesign ult i32 %i.od, %i.ny
  br i1 %i.oe, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.as, %bb.au
  %i.of = load ptr, ptr @sdiamond, align 8, !tbaa !59
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.og = load ptr, ptr @square, align 8, !tbaa !59
  br label %bb.bb

bb.ax:                                            ; preds = %bb.ar
  %i.oh = icmp sgt i32 %8, 5
  br i1 %i.oh, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oi = icmp sgt i16 %1, 0
  %i.oj = icmp ne i32 %8, 1
  %or.cond7 = and i1 %i.oi, %i.oj
  br i1 %or.cond7, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ok = load ptr, ptr @square, align 8, !tbaa !59
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ol = load ptr, ptr @searchPattern, align 8, !tbaa !59
  br label %bb.bb

bb.bb:                                            ; preds = %bb.aw, %bb.av, %bb.ba, %bb.az, %bb.aq
  %.0387 = phi ptr [ %i.of, %bb.av ], [ %i.og, %bb.aw ], [ %i.ok, %bb.az ], [ %i.ol, %bb.ba ], [ %i.cj, %bb.aq ]
  %i.om = icmp ne i8 %.1393, 0
  %i.on = icmp slt i32 %8, 5
  %i.oo = and i1 %i.on, %i.om
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bx, %bb.bb
  %.sroa.0129.2 = phi i32 [ %.sroa.0129.1, %bb.bb ], [ %.sroa.0129.6, %bb.bx ]
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %bb.bb ], [ %.sroa.15.6, %bb.bx ]
  %.0405 = phi i32 [ %.sroa.15.1, %bb.bb ], [ %.sroa.6.1, %bb.bx ]
  %.0402 = phi i32 [ %.sroa.0129.1, %bb.bb ], [ %.sroa.0128.1, %bb.bx ]
  %.2397 = phi i32 [ %.1396, %bb.bb ], [ %.6401, %bb.bx ]
  %.2394 = phi i1 [ %i.oo, %bb.bb ], [ false, %bb.bx ]
  %.1388 = phi ptr [ %.0387, %bb.bb ], [ %.4391, %bb.bx ] ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bp, %bb.bc
  %.sroa.0129.3 = phi i32 [ %.sroa.0129.2, %bb.bc ], [ %.sroa.0129.6, %bb.bp ]
  %.sroa.15.3 = phi i32 [ %.sroa.15.2, %bb.bc ], [ %.sroa.15.6, %bb.bp ]
  %.1406 = phi i32 [ %.0405, %bb.bc ], [ %.2407, %bb.bp ] ; 3 uses
  %.1403 = phi i32 [ %.0402, %bb.bc ], [ %.2404, %bb.bp ] ; 3 uses
  %.3398 = phi i32 [ %.2397, %bb.bc ], [ %.6401, %bb.bp ]
  %.2389 = phi ptr [ %.1388, %bb.bc ], [ %.3390, %bb.bp ] ; 5 uses
  %.1385 = phi i32 [ 0, %bb.bc ], [ %.2386, %bb.bp ]
  %.1379 = phi i32 [ 0, %bb.bc ], [ %.6, %bb.bp ]
  %.1374 = phi i32 [ 0, %bb.bc ], [ %.2375, %bb.bp ]
  %.1371.in = phi ptr [ %.1388, %bb.bc ], [ %.2372.in, %bb.bp ]
  %.1 = phi i32 [ 0, %bb.bc ], [ %.5, %bb.bp ]
  %.1371 = load i32, ptr %.1371.in, align 4, !tbaa !4
  %i.op = getelementptr inbounds nuw i8, ptr %.2389, i64 8 ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bk, %bb.bd
  %.sroa.0129.4 = phi i32 [ %.sroa.0129.3, %bb.bd ], [ %.sroa.0129.6, %bb.bk ] ; 5 uses
  %.sroa.15.4 = phi i32 [ %.sroa.15.3, %bb.bd ], [ %.sroa.15.6, %bb.bk ] ; 5 uses
  %.4399 = phi i32 [ %.3398, %bb.bd ], [ %.6401, %bb.bk ] ; 8 uses
  %.2380 = phi i32 [ %.1379, %bb.bd ], [ %spec.select471, %bb.bk ] ; 3 uses
  %.0376 = phi i32 [ %.1371, %bb.bd ], [ %.1377, %bb.bk ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.bd ], [ %.4, %bb.bk ]  ; 5 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !23
  %i.or = sext i32 %.2380 to i64
  %i.os = getelementptr inbounds [16 x i8], ptr %i.oq, i64 %i.or ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !4
  %i.ou = add nsw i32 %i.ot, %.1403               ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !4
  %i.ox = add nsw i32 %i.ow, %.1406               ; 4 uses
  %i.oy = add nsw i32 %i.ou, %i.co
  %21 = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  %i.oz = shl i32 %i.oy, %21                      ; 2 uses
  %i.pa = add nsw i32 %i.ox, %i.cp
  %i.pb = shl i32 %i.pa, %21                      ; 2 uses
  %i.pc = load i16, ptr %11, align 2, !tbaa !119
  %i.pd = sext i16 %i.pc to i32
  %i.pe = sub nsw i32 %i.ou, %i.pd
  %i.pf = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pe, i1 true)
  %.not459 = icmp sgt i32 %i.pf, %13
  br i1 %.not459, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pg = load i16, ptr %i.am, align 2, !tbaa !119
  %i.ph = sext i16 %i.pg to i32
  %i.pi = sub nsw i32 %i.ox, %i.ph
  %i.pj = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pi, i1 true)
  %.not460 = icmp samesign ugt i32 %i.pj, %13
  br i1 %.not460, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pk = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  %i.pl = add nsw i32 %i.ox, %i.ba
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %i.pm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !117
  %i.pp = add nsw i32 %i.ou, %i.az
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pq ; 2 uses
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !119
  %i.pt = load i16, ptr @EPZSBlkCount, align 2, !tbaa !119 ; 2 uses
  %.not461 = icmp eq i16 %i.ps, %i.pt
  br i1 %.not461, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i16 %i.pt, ptr %i.pr, align 2, !tbaa !119
  %i.pu = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 4 uses
  %i.pv = shl i32 %i.as, %21                      ; 2 uses
  %i.pw = sub nsw i32 %i.pv, %i.r
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  %i.qa = shl i32 %i.aw, %21                      ; 2 uses
  %i.qb = sub nsw i32 %i.qa, %i.w
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !4
  %i.qf = add nsw i32 %i.qe, %i.pz
  %i.qg = mul nsw i32 %i.qf, %15
  %i.qh = ashr i32 %i.qg, 16
  %i.qi = sub nsw i32 %i.oz, %i.z
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = sub nsw i32 %i.pb, %i.ad
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !4
  %i.qq = add nsw i32 %i.qp, %i.ql
  %i.qr = mul nsw i32 %i.qq, %15
  %i.qs = ashr i32 %i.qr, 16
  %i.qt = add nsw i32 %i.qs, %i.qh                ; 3 uses
  %i.qu = icmp slt i32 %i.qt, %.4399
  br i1 %i.qu, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.qv = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.qw = sub nsw i32 %.4399, %i.qt
  %i.qx = add nsw i32 %i.pv, 80
  %i.qy = add nsw i32 %i.qa, 80
  %i.qz = add nsw i32 %i.oz, 80
  %i.ra = add nsw i32 %i.pb, 80
  %i.rb = call i32 %i.qv(ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi542, i32 noundef %i.qw, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef %i.qz, i32 noundef %i.ra) #13
  %i.rc = add nsw i32 %i.rb, %i.qt                ; 2 uses
  %i.rd = icmp slt i32 %i.rc, %.4399
  br i1 %i.rd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.be, %bb.bf, %bb.bi, %bb.bj, %bb.bh, %bb.bg
  %.sroa.0129.6 = phi i32 [ %.sroa.0129.4, %bb.bg ], [ %i.ou, %bb.bj ], [ %.sroa.0129.4, %bb.bi ], [ %.sroa.0129.4, %bb.bh ], [ %.sroa.0129.4, %bb.bf ], [ %.sroa.0129.4, %bb.be ] ; 10 uses
  %.sroa.15.6 = phi i32 [ %.sroa.15.4, %bb.bg ], [ %i.ox, %bb.bj ], [ %.sroa.15.4, %bb.bi ], [ %.sroa.15.4, %bb.bh ], [ %.sroa.15.4, %bb.bf ], [ %.sroa.15.4, %bb.be ] ; 10 uses
  %.6401 = phi i32 [ %.4399, %bb.bg ], [ %i.rc, %bb.bj ], [ %.4399, %bb.bi ], [ %.4399, %bb.bh ], [ %.4399, %bb.bf ], [ %.4399, %bb.be ] ; 6 uses
  %.4 = phi i32 [ %.2, %bb.bg ], [ %.2380, %bb.bj ], [ %.2, %bb.bi ], [ %.2, %bb.bh ], [ %.2, %bb.bf ], [ %.2, %bb.be ] ; 3 uses
  %i.re = add nsw i32 %.2380, 1                   ; 2 uses
  %i.rf = load i32, ptr %.2389, align 8, !tbaa !20 ; 2 uses
  %.not463 = icmp slt i32 %i.re, %i.rf
  %i.rg = select i1 %.not463, i32 0, i32 %i.rf
  %spec.select471 = sub nsw i32 %i.re, %i.rg
  %.1377 = add nsw i32 %.0376, -1
  %i.rh = icmp sgt i32 %.0376, 1
  br i1 %i.rh, label %bb.be, label %bb.bl, !llvm.loop !176

bb.bl:                                            ; preds = %bb.bk
  %.not464 = icmp eq i32 %.1374, 0
  br i1 %.not464, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ri = icmp eq i32 %.sroa.0129.6, %.1403
  %i.rj = icmp eq i32 %.sroa.15.6, %.1406
  %or.cond472 = select i1 %i.ri, i1 %i.rj, i1 false
  br i1 %or.cond472, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.rk = getelementptr inbounds nuw i8, ptr %.2389, i64 16
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !26
  %i.rm = getelementptr inbounds nuw i8, ptr %.2389, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !28 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 20
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !27
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.rq = load ptr, ptr %i.op, align 8, !tbaa !23
  %i.rr = sext i32 %.4 to i64
  %i.rs = getelementptr inbounds [16 x i8], ptr %i.rq, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !60
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.2407 = phi i32 [ %.1406, %bb.bn ], [ %.sroa.15.6, %bb.bo ]
  %.2404 = phi i32 [ %.1403, %bb.bn ], [ %.sroa.0129.6, %bb.bo ]
  %.3390 = phi ptr [ %i.rn, %bb.bn ], [ %.2389, %bb.bo ]
  %.2386 = phi i32 [ %i.rl, %bb.bn ], [ %.1385, %bb.bo ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.bn ], [ %i.rv, %bb.bo ]
  %.2375 = phi i32 [ %i.rp, %bb.bn ], [ 0, %bb.bo ]
  %.2372.in = phi ptr [ %i.rn, %bb.bn ], [ %i.rt, %bb.bo ]
  %.5 = phi i32 [ 0, %bb.bn ], [ %.4, %bb.bo ]
  %.not465 = icmp eq i32 %.2386, 1
  br i1 %.not465, label %bb.bq, label %bb.bd, !llvm.loop !177

bb.bq:                                            ; preds = %bb.bp
  %i.rw = icmp sgt i32 %.6401, %i.nh
  %or.cond473 = select i1 %.2394, i1 %i.rw, i1 false
  br i1 %or.cond473, label %bb.br, label %.critedge

bb.br:                                            ; preds = %bb.bq
  %i.rx = load ptr, ptr @input, align 8, !tbaa !29
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4092
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !73
  %i.sa = icmp sgt i32 %i.rz, 0
  br i1 %i.sa, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %i.sb = icmp eq i32 %.sroa.0129.6, 0
  %i.sc = icmp eq i32 %.sroa.15.6, 0
  %or.cond12 = select i1 %i.sb, i1 %i.sc, i1 false
  %.pre528 = load i16, ptr %11, align 2, !tbaa !119
  %.pre544 = sext i16 %.pre528 to i32             ; 2 uses
  br i1 %or.cond12, label %._crit_edge543, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sd = icmp eq i32 %.sroa.0129.6, %.pre544
  br i1 %i.sd, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.se = load i16, ptr %i.am, align 2, !tbaa !119
  %i.sf = sext i16 %i.se to i32
  %i.sg = icmp eq i32 %.sroa.15.6, %i.sf
  br i1 %i.sg, label %._crit_edge543, label %bb.bx

._crit_edge543:                                   ; preds = %bb.bs, %bb.bu
  %i.sh = sub nsw i32 %.sroa.0129.6, %.pre544
  %i.si = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sh, i1 true)
  %22 = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.sj = lshr exact i32 8, %22                   ; 2 uses
  %i.sk = icmp samesign ult i32 %i.si, %i.sj
  br i1 %i.sk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %._crit_edge543
  %i.sl = load i16, ptr %i.am, align 2, !tbaa !119
  %i.sm = sext i16 %i.sl to i32
  %i.sn = sub nsw i32 %.sroa.15.6, %i.sm
  %i.so = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sn, i1 true)
  %i.sp = icmp samesign ult i32 %i.so, %i.sj
  br i1 %i.sp, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge543
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %.4391.in = phi ptr [ @sdiamond, %bb.bv ], [ @square, %bb.bw ], [ @searchPatternD, %bb.bu ], [ @searchPatternD, %bb.bt ]
  %.4391 = load ptr, ptr %.4391.in, align 8, !tbaa !59
  br label %bb.bc

.critedge:                                        ; preds = %bb.bq, %bb.br, %bb.ap
  %.sroa.0129.7 = phi i32 [ %.sroa.0129.1, %bb.ap ], [ %.sroa.0129.6, %bb.br ], [ %.sroa.0129.6, %bb.bq ]
  %.sroa.15.7 = phi i32 [ %.sroa.15.1, %bb.ap ], [ %.sroa.15.6, %bb.br ], [ %.sroa.15.6, %bb.bq ]
  %.7 = phi i32 [ %.1396, %bb.ap ], [ %.6401, %bb.br ], [ %.6401, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.sq = trunc i32 %.sroa.0129.7 to i16
  %i.sr = trunc i32 %.sroa.15.7 to i16
  br label %bb.by

bb.by:                                            ; preds = %.critedge, %bb.z
  %.sroa.0129.8 = phi i16 [ %i.sq, %.critedge ], [ %i.ai, %bb.z ]
  %.sroa.15.8 = phi i16 [ %i.sr, %.critedge ], [ %i.an, %bb.z ]
  %.8 = phi i32 [ %.7, %.critedge ], [ %i.je, %bb.z ]
  store i16 %.sroa.0129.8, ptr %11, align 2, !tbaa !119
  store i16 %.sroa.15.8, ptr %i.am, align 2, !tbaa !119
  ret i32 %.8
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @EPZSOutputStats(ptr nofree noundef captures(none) %0, i16 noundef signext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i16 %1, 1                        ; 8 uses
  %i.b = load ptr, ptr @input, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4088
  %i.d = load i32, ptr %i.c, align 8, !tbaa !72
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [20 x i8], ptr @c_EPZSPattern, i64 %i.e
  %.str.2..str.10 = select i1 %i.a, ptr @.str.2, ptr @.str.10
  %.str.3..str.11 = select i1 %i.a, ptr @.str.3, ptr @.str.11
  %.str.4..str.12 = select i1 %i.a, ptr @.str.4, ptr @.str.12
  %.str.5..str.13 = select i1 %i.a, ptr @.str.5, ptr @.str.13
  %.str.6..str.14 = select i1 %i.a, ptr @.str.6, ptr @.str.14
  %.str.7..str.15 = select i1 %i.a, ptr @.str.7, ptr @.str.15
  %.str.8..str.16 = select i1 %i.a, ptr @.str.8, ptr @.str.16
  %.str.9..str.17 = select i1 %i.a, ptr @.str.9, ptr @.str.17
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.2..str.10, ptr noundef nonnull %i.f) #13 ; 0 uses
  %i.h = load ptr, ptr @input, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4092
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [20 x i8], ptr @c_EPZSDualPattern, i64 %i.k
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.3..str.11, ptr noundef nonnull %i.l) #13 ; 0 uses
  %i.n = load ptr, ptr @input, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4096
  %i.p = load i32, ptr %i.o, align 8, !tbaa !162
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [20 x i8], ptr @c_EPZSFixed, i64 %i.q
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.4..str.12, ptr noundef nonnull %i.r) #13 ; 0 uses
  %i.t = load ptr, ptr @input, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [20 x i8], ptr @c_EPZSOther, i64 %i.w
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.5..str.13, ptr noundef nonnull %i.x) #13 ; 0 uses
  %i.z = load ptr, ptr @input, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [20 x i8], ptr @c_EPZSOther, i64 %i.ac
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.6..str.14, ptr noundef nonnull %i.ad) #13 ; 0 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 4), align 4, !tbaa !4
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 4), align 4, !tbaa !4
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 4), align 4, !tbaa !4
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.7..str.15, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah) #13 ; 0 uses
  %i.aj = load ptr, ptr @input, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !178
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [20 x i8], ptr @c_EPZSOther, i64 %i.am
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.8..str.16, ptr noundef nonnull %i.an) #13 ; 0 uses
  %i.ap = load ptr, ptr @input, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !179
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [20 x i8], ptr @c_EPZSOther, i64 %i.as
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.9..str.17, ptr noundef nonnull %i.at) #13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @EPZSSubPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nofree noundef readonly captures(none) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = sext i32 %5 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !4    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = shl i32 %3, 2
  %i.i = add i32 %i.h, 80                         ; 6 uses
  %i.j = shl i32 %4, 2
  %i.k = add i32 %i.j, 80                         ; 6 uses
  %i.l = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !4 ; 3 uses
  %i.m = icmp ne i32 %i.l, 0
  %i.n = load i32, ptr @start_me_refinement_qp, align 4
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  %i.p = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %i.q = select i1 %or.cond, i32 %8, i32 %i.p     ; 3 uses
  %i.r = load ptr, ptr @img, align 8, !tbaa !29   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !158
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [536 x i8], ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 432
  %i.z = load i32, ptr %i.y, align 8, !tbaa !180
  %i.aa = load ptr, ptr @active_pps, align 8, !tbaa !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !139
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !78
  switch i32 %i.ae, label %bb.c [
    i32 0, label %bb.e
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 196
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !141
  %.not280 = icmp eq i32 %i.ag, 0
  br i1 %.not280, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !78
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 2936
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !142
  %i.am = icmp ne i32 %i.al, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.an = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.am, %bb.e ] ; 3 uses
  %i.ao = add nsw i32 %i.z, %2
  %i.ap = sext i32 %i.ao to i64                   ; 5 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.as = sext i16 %1 to i64                      ; 5 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6392
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !102
  %i.ax = sub nsw i32 %i.aw, %i.e
  %i.ay = shl i32 %i.ax, 2                        ; 2 uses
  %i.az = add i32 %i.ay, 160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 6396
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !101
  %i.bc = sub nsw i32 %i.bb, %i.g
  %i.bd = shl i32 %i.bc, 2                        ; 2 uses
  %i.be = add i32 %i.bd, 160
  %spec.select444 = select i1 %i.an, i32 3, i32 0 ; 2 uses
  %i.bf = add nuw nsw i32 %spec.select444, 1      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 6448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !146
  store ptr %i.bj, ptr @ref_pic_sub, align 8, !tbaa !147
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 6408
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !149
  store i32 %i.bl, ptr @width_pad, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 6412
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !150
  store i32 %i.bn, ptr @height_pad, align 4, !tbaa !4
  br i1 %i.an, label %bb.g, label %bb.h

end_hunk_1
