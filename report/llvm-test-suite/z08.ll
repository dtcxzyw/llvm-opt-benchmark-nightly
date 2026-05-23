inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Manifest:bb.a
  %i.yd = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.ye = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store ptr %i.yd, ptr %i.yg, align 8, !tbaa !8
  %i.yh = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.yh, ptr %i.ye, align 8, !tbaa !8
  %i.yi = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  store ptr %i.yi, ptr %i.yj, align 8, !tbaa !8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cd
  %i.yk = load ptr, ptr %6, align 8, !tbaa !11
  %i.yl = call i32 @DisposeObject(ptr noundef %i.yk) #9 ; 0 uses
  store ptr null, ptr %6, align 8, !tbaa !11
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cc, %bb.cb
  %i.ym = phi i1 [ true, %bb.ci ], [ true, %bb.cc ], [ false, %bb.cb ] ; 2 uses
  %.42436 = phi ptr [ %.42437, %bb.ci ], [ %.42437, %bb.cc ], [ %.4, %bb.cb ]
  %.01913.in2587 = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %.019132588 = load ptr, ptr %.01913.in2587, align 8, !tbaa !8 ; 2 uses
  %.not23012589 = icmp eq ptr %.019132588, %.1
  br i1 %.not23012589, label %._crit_edge2592, label %.preheader2480

.preheader2480:                                   ; preds = %bb.cj, %bb.ez
  %.019132591 = phi ptr [ %.01913, %bb.ez ], [ %.019132588, %bb.cj ] ; 12 uses
  %.019252590 = phi ptr [ %.7, %bb.ez ], [ %.42436, %bb.cj ] ; 9 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader2480, %bb.ck
  %.01913.pn = phi ptr [ %.01914, %bb.ck ], [ %.019132591, %.preheader2480 ]
  %.01914.in = getelementptr inbounds nuw i8, ptr %.01913.pn, i64 16
  %.01914 = load ptr, ptr %.01914.in, align 8, !tbaa !8 ; 22 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.01914, i64 32
  %i.yo = load i8, ptr %i.yn, align 8, !tbaa !8
  switch i8 %i.yo, label %bb.cl [
    i8 0, label %bb.ck
    i8 1, label %.loopexit2481
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.yp = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.yq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.yp, ptr noundef nonnull @.str.11) #9 ; 0 uses
  br label %.loopexit2481

.loopexit2481:                                    ; preds = %bb.ck, %bb.cl
  %i.yr = getelementptr inbounds nuw i8, ptr %.01914, i64 40 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8
  %i.yt = and i32 %i.ys, -1610612737
  %i.yu = or disjoint i32 %i.yt, 536870912
  store i32 %i.yu, ptr %i.yr, align 8
  %i.yv = getelementptr inbounds nuw i8, ptr %.019132591, i64 8 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !8  ; 17 uses
  %.not2306 = icmp eq ptr %i.yw, %.1
  br i1 %.not2306, label %bb.cm, label %.preheader3118

bb.cm:                                            ; preds = %.loopexit2481
  %i.yx = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.yy = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.yx, ptr noundef nonnull @.str.12) #9 ; 0 uses
  br label %.preheader3118

.preheader3118:                                   ; preds = %bb.cm, %.loopexit2481
  br label %bb.cn

bb.cn:                                            ; preds = %.preheader3118, %bb.cn
  %.pn2333 = phi ptr [ %.5, %bb.cn ], [ %i.yw, %.preheader3118 ]
  %.5.in = getelementptr inbounds nuw i8, ptr %.pn2333, i64 16
  %.5 = load ptr, ptr %.5.in, align 8, !tbaa !8   ; 7 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.za = load i8, ptr %i.yz, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.za, label %.loopexit2479 [
    i8 0, label %bb.cn
    i8 1, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn
  %i.zb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.zc = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.zd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.zc, ptr noundef nonnull @.str.13) #9 ; 0 uses
  %.pre2670 = load i8, ptr %i.zb, align 8, !tbaa !8
  br label %.loopexit2479

.loopexit2479:                                    ; preds = %bb.cn, %bb.co
  %i.ze = phi i8 [ %.pre2670, %bb.co ], [ %i.za, %bb.cn ]
  %.off2360 = add i8 %i.ze, -11
  %switch2361 = icmp ult i8 %.off2360, 2
  br i1 %switch2361, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %.loopexit2479
  %i.zf = load i32, ptr %i.sd, align 4
  %i.zg = and i32 %i.zf, 4095
  %i.zh = getelementptr inbounds nuw i8, ptr %.5, i64 40 ; 6 uses
  %i.zi = load i32, ptr %i.zh, align 8
  %i.zj = and i32 %i.zi, -4096
  %i.zk = or disjoint i32 %i.zj, %i.zg            ; 2 uses
  store i32 %i.zk, ptr %i.zh, align 8
  %i.zl = load i32, ptr %i.sd, align 4
  %i.zm = and i32 %i.zl, 4190208
  %i.zn = and i32 %i.zk, -4190209
  %i.zo = or disjoint i32 %i.zn, %i.zm            ; 2 uses
  store i32 %i.zo, ptr %i.zh, align 8
  %i.zp = load i32, ptr %i.sd, align 4
  %i.zq = and i32 %i.zp, 4194304
  %i.zr = and i32 %i.zo, -4194305
  %i.zs = or disjoint i32 %i.zr, %i.zq            ; 2 uses
  store i32 %i.zs, ptr %i.zh, align 8
  %i.zt = load i32, ptr %i.sd, align 4
  %i.zu = lshr i32 %i.zt, 1
  %i.zv = and i32 %i.zu, 528482304
  %i.zw = and i32 %i.zs, -528482305
  %i.zx = or disjoint i32 %i.zv, %i.zw            ; 2 uses
  store i32 %i.zx, ptr %i.zh, align 8
  %i.zy = load i8, ptr %i.ql, align 4
  %i.zz = and i8 %i.zy, 3
  %i.aaa = icmp eq i8 %i.zz, 2
  %i.aab = select i1 %i.aaa, i32 -2147483648, i32 0
  %i.aac = and i32 %i.zx, 2147483647
  %i.aad = or disjoint i32 %i.aab, %i.aac
  store i32 %i.aad, ptr %i.zh, align 8
  %i.aae = load i8, ptr %2, align 4
  %i.aaf = and i8 %i.aae, 8
  %i.aag = icmp ne i8 %i.aaf, 0
  %or.cond5 = and i1 %i.ym, %i.aag
  br i1 %or.cond5, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.aah = call ptr @MapSmallCaps(ptr noundef nonnull %.5, ptr noundef nonnull %2) #9
  br label %bb.cs

bb.cr:                                            ; preds = %.loopexit2479
  %i.aai = call ptr @Manifest(ptr noundef nonnull %.5, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cq, %bb.cr
  %.6 = phi ptr [ %i.aah, %bb.cq ], [ %.5, %bb.cp ], [ %i.aai, %bb.cr ] ; 11 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.6, i64 40 ; 4 uses
  %i.aak = load i32, ptr %i.aaj, align 8
  %i.aal = and i32 %i.aak, -1610612737
  %i.aam = or disjoint i32 %i.aal, 536870912
  store i32 %i.aam, ptr %i.aaj, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %.01914, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !8 ; 2 uses
  %.not2308 = icmp eq ptr %i.aao, %.01914
  br i1 %.not2308, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %bb.cs, %.preheader
  %.pn2332 = phi ptr [ %storemerge2323, %.preheader ], [ %i.aao, %bb.cs ]
  %storemerge2323.in = getelementptr inbounds nuw i8, ptr %.pn2332, i64 16
  %storemerge2323 = load ptr, ptr %storemerge2323.in, align 8, !tbaa !8 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %storemerge2323, i64 32
  %i.aaq = load i8, ptr %i.aap, align 8, !tbaa !8
  %i.aar = icmp eq i8 %i.aaq, 0
  br i1 %i.aar, label %.preheader, label %bb.ct, !llvm.loop !25

bb.ct:                                            ; preds = %.preheader
  %i.aas = call ptr @Manifest(ptr noundef nonnull %storemerge2323, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.aat = call ptr @ReplaceWithTidy(ptr noundef %i.aas, i32 noundef 0) ; 2 uses
  store ptr %i.aat, ptr %i.h, align 8, !tbaa !11
  %i.aau = getelementptr inbounds nuw i8, ptr %.01914, i64 44
  call void @GetGap(ptr noundef %i.aat, ptr noundef %2, ptr noundef nonnull %i.aau, ptr noundef nonnull %i.k) #9
  %i.aav = getelementptr inbounds nuw i8, ptr %.01914, i64 41
  store i8 0, ptr %i.aav, align 1, !tbaa !8
  %i.aaw = getelementptr inbounds nuw i8, ptr %.01914, i64 42
  store i8 0, ptr %i.aaw, align 2, !tbaa !8
  br label %bb.dp

bb.cu:                                            ; preds = %bb.cs
  %i.aax = load i16, ptr %i.ql, align 4
  %i.aay = and i16 %i.aax, 128
  %i.aaz = getelementptr inbounds nuw i8, ptr %.01914, i64 44 ; 8 uses
  %i.aba = load i16, ptr %i.aaz, align 4
  %i.abb = and i16 %i.aba, -129
  %i.abc = or disjoint i16 %i.abb, %i.aay         ; 2 uses
  store i16 %i.abc, ptr %i.aaz, align 4
  %i.abd = load i16, ptr %i.ql, align 4
  %i.abe = and i16 %i.abd, 256
  %i.abf = and i16 %i.abc, -257
  %i.abg = or disjoint i16 %i.abf, %i.abe         ; 2 uses
  store i16 %i.abg, ptr %i.aaz, align 4
  %i.abh = load i16, ptr %i.ql, align 4
  %i.abi = and i16 %i.abh, 512
  %i.abj = and i16 %i.abg, -513
  %i.abk = or disjoint i16 %i.abj, %i.abi         ; 2 uses
  store i16 %i.abk, ptr %i.aaz, align 4
  %i.abl = load i16, ptr %i.ql, align 4
  %i.abm = and i16 %i.abl, 7168
  %i.abn = and i16 %i.abk, -7169
  %i.abo = or disjoint i16 %i.abn, %i.abm         ; 2 uses
  store i16 %i.abo, ptr %i.aaz, align 4
  %i.abp = load i16, ptr %i.ql, align 4
  %i.abq = and i16 %i.abp, -8192
  %i.abr = and i16 %i.abo, 8191
  %i.abs = or disjoint i16 %i.abr, %i.abq
  store i16 %i.abs, ptr %i.aaz, align 4
  %i.abt = load i16, ptr %i.sa, align 2, !tbaa !8 ; 8 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.01914, i64 46 ; 9 uses
  store i16 %i.abt, ptr %i.abu, align 2, !tbaa !8
  %i.abv = load i8, ptr %2, align 4
  %14 = lshr i8 %i.abv, 4
  %15 = and i8 %14, 7
  switch i8 %15, label %bb.dn [
    i8 0, label %bb.cv
    i8 1, label %bb.cw
    i8 2, label %.loopexit2477
    i8 3, label %bb.cx
    i8 4, label %bb.df
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.abw = getelementptr inbounds nuw i8, ptr %.01914, i64 42
  %i.abx = load i8, ptr %i.abw, align 2, !tbaa !8
  %i.aby = zext i8 %i.abx to i16
  %i.abz = getelementptr inbounds nuw i8, ptr %.01914, i64 41
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !8
  %i.acb = zext i8 %i.aca to i16
  %i.acc = add nuw nsw i16 %i.acb, %i.aby
  %i.acd = mul i16 %i.acc, %i.abt                 ; 2 uses
  store i16 %i.acd, ptr %i.abu, align 2, !tbaa !8
  br label %.loopexit2477

bb.cw:                                            ; preds = %bb.cu
  %i.ace = getelementptr inbounds nuw i8, ptr %.01914, i64 42
  %i.acf = load i8, ptr %i.ace, align 2, !tbaa !8
  %i.acg = getelementptr inbounds nuw i8, ptr %.01914, i64 41
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !8
  %i.aci = or i8 %i.ach, %i.acf
  %i.acj = icmp eq i8 %i.aci, 0
  br i1 %i.acj, label %.loopexit2477.thread, label %.loopexit2477

bb.cx:                                            ; preds = %bb.cu
  %i.ack = getelementptr inbounds nuw i8, ptr %.01914, i64 42
  %i.acl = load i8, ptr %i.ack, align 2, !tbaa !8 ; 2 uses
  %i.acm = zext i8 %i.acl to i16
  %i.acn = getelementptr inbounds nuw i8, ptr %.01914, i64 41
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !8
  %i.acp = zext i8 %i.aco to i16
  %i.acq = add nuw nsw i16 %i.acp, %i.acm
  %i.acr = mul i16 %i.acq, %i.abt                 ; 5 uses
  store i16 %i.acr, ptr %i.abu, align 2, !tbaa !8
  %.not2315 = icmp eq i8 %i.acl, 0
  br i1 %.not2315, label %.loopexit2477, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.phi.trans.insert2684 = getelementptr inbounds nuw i8, ptr %.019252590, i64 32
  %.pre2685 = load i8, ptr %.phi.trans.insert2684, align 8, !tbaa !8
  br label %bb.cz

.loopexit2475:                                    ; preds = %bb.da
  br label %bb.cz, !llvm.loop !26

bb.cz:                                            ; preds = %.loopexit2475, %bb.cy
  %i.acs = phi i8 [ %.pre2685, %bb.cy ], [ %i.acv, %.loopexit2475 ]
  %storemerge2595 = phi ptr [ %.019252590, %bb.cy ], [ %storemerge2320, %.loopexit2475 ] ; 5 uses
  store ptr %storemerge2595, ptr %i.h, align 8, !tbaa !11
  switch i8 %i.acs, label %.loopexit2477 [
    i8 17, label %.critedge
    i8 24, label %.critedge
    i8 25, label %.critedge
    i8 36, label %.critedge
    i8 37, label %.critedge
    i8 11, label %bb.db
    i8 12, label %bb.db
  ]

.critedge:                                        ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.act = load ptr, ptr %storemerge2595, align 8, !tbaa !8
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.critedge
  %.pn2321 = phi ptr [ %i.act, %.critedge ], [ %storemerge2320, %bb.da ]
  %storemerge2320.in = getelementptr inbounds nuw i8, ptr %.pn2321, i64 16
  %storemerge2320 = load ptr, ptr %storemerge2320.in, align 8, !tbaa !8 ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %storemerge2320, i64 32
  %i.acv = load i8, ptr %i.acu, align 8, !tbaa !8 ; 2 uses
  %i.acw = icmp eq i8 %i.acv, 0
  br i1 %i.acw, label %bb.da, label %.loopexit2475, !llvm.loop !27

bb.db:                                            ; preds = %bb.cz, %bb.cz
  %scevgep2619 = getelementptr i8, ptr %storemerge2595, i64 64
  %strlen2620 = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep2619) ; 2 uses
  %.not2317 = icmp eq i64 %strlen2620, 0
  br i1 %.not2317, label %.loopexit2477, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acx = getelementptr i8, ptr %storemerge2595, i64 %strlen2620
  %i.acy = getelementptr i8, ptr %i.acx, i64 63
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !8
  %i.ada = zext i8 %i.acz to i64
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr @LanguageSentenceEnds, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !4
  %.not2318 = icmp eq i32 %i.adc, 0
  br i1 %.not2318, label %.loopexit2477, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.add = call i32 @LanguageWordEndsSentence(ptr noundef nonnull %storemerge2595, i32 noundef 0) #9
  %.not2319 = icmp eq i32 %i.add, 0
  %.pre2673 = load i16, ptr %i.abu, align 2, !tbaa !8 ; 2 uses
  br i1 %.not2319, label %.loopexit2477, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ade = load i16, ptr %i.sa, align 2, !tbaa !8
  %i.adf = add i16 %.pre2673, %i.ade              ; 2 uses
  store i16 %i.adf, ptr %i.abu, align 2, !tbaa !8
  br label %.loopexit2477

bb.df:                                            ; preds = %bb.cu
  %i.adg = getelementptr inbounds nuw i8, ptr %.01914, i64 42
  %i.adh = load i8, ptr %i.adg, align 2, !tbaa !8
  %i.adi = getelementptr inbounds nuw i8, ptr %.01914, i64 41
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !8
  %i.adk = or i8 %i.adj, %i.adh
  %i.adl = icmp eq i8 %i.adk, 0
  br i1 %i.adl, label %.loopexit2477.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.phi.trans.insert2682 = getelementptr inbounds nuw i8, ptr %.019252590, i64 32
  %.pre2683 = load i8, ptr %.phi.trans.insert2682, align 8, !tbaa !8
  br label %bb.dh

.loopexit2476:                                    ; preds = %bb.di
  br label %bb.dh, !llvm.loop !28

bb.dh:                                            ; preds = %.loopexit2476, %bb.dg
  %i.adm = phi i8 [ %.pre2683, %bb.dg ], [ %i.adp, %.loopexit2476 ]
  %storemerge2594 = phi ptr [ %.019252590, %bb.dg ], [ %storemerge2313, %.loopexit2476 ] ; 5 uses
  store ptr %storemerge2594, ptr %i.h, align 8, !tbaa !11
  switch i8 %i.adm, label %.loopexit2477 [
    i8 17, label %.critedge7
    i8 24, label %.critedge7
    i8 25, label %.critedge7
    i8 36, label %.critedge7
    i8 37, label %.critedge7
    i8 11, label %bb.dj
    i8 12, label %bb.dj
  ]

.critedge7:                                       ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh
  %i.adn = load ptr, ptr %storemerge2594, align 8, !tbaa !8
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.critedge7
  %.pn2314 = phi ptr [ %i.adn, %.critedge7 ], [ %storemerge2313, %bb.di ]
  %storemerge2313.in = getelementptr inbounds nuw i8, ptr %.pn2314, i64 16
  %storemerge2313 = load ptr, ptr %storemerge2313.in, align 8, !tbaa !8 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %storemerge2313, i64 32
  %i.adp = load i8, ptr %i.ado, align 8, !tbaa !8 ; 2 uses
  %i.adq = icmp eq i8 %i.adp, 0
  br i1 %i.adq, label %bb.di, label %.loopexit2476, !llvm.loop !29

bb.dj:                                            ; preds = %bb.dh, %bb.dh
  %scevgep = getelementptr i8, ptr %storemerge2594, i64 64
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep) ; 2 uses
  %.not2310 = icmp eq i64 %strlen, 0
  br i1 %.not2310, label %.loopexit2477, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.adr = getelementptr i8, ptr %storemerge2594, i64 %strlen
  %i.ads = getelementptr i8, ptr %i.adr, i64 63
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !8
  %i.adu = zext i8 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr @LanguageSentenceEnds, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !4
  %.not2311 = icmp eq i32 %i.adw, 0
  br i1 %.not2311, label %.loopexit2477, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.adx = call i32 @LanguageWordEndsSentence(ptr noundef nonnull %storemerge2594, i32 noundef 1) #9
  %.not2312 = icmp eq i32 %i.adx, 0
  %.pre2672 = load i16, ptr %i.abu, align 2, !tbaa !8 ; 2 uses
  br i1 %.not2312, label %.loopexit2477, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ady = load i16, ptr %i.sa, align 2, !tbaa !8
  %i.adz = add i16 %.pre2672, %i.ady              ; 2 uses
  store i16 %i.adz, ptr %i.abu, align 2, !tbaa !8
  br label %.loopexit2477

bb.dn:                                            ; preds = %bb.cu
  %i.aea = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.aeb = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.aea, ptr noundef nonnull @.str.14) #9 ; 0 uses
  %.pre2671 = load i16, ptr %i.abu, align 2, !tbaa !8
  br label %.loopexit2477

.loopexit2477.thread:                             ; preds = %bb.df, %bb.cw
  store i16 0, ptr %i.abu, align 2, !tbaa !8
  br label %bb.do

.loopexit2477:                                    ; preds = %bb.dh, %bb.cz, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.cx, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.cw, %bb.dn, %bb.cv, %bb.cu
  %i.aec = phi i16 [ %.pre2671, %bb.dn ], [ %i.abt, %bb.cu ], [ %i.acd, %bb.cv ], [ %i.abt, %bb.dj ], [ %i.abt, %bb.dk ], [ %.pre2672, %bb.dl ], [ %i.adz, %bb.dm ], [ %i.acr, %bb.cx ], [ %i.acr, %bb.db ], [ %i.acr, %bb.dc ], [ %.pre2673, %bb.dd ], [ %i.adf, %bb.de ], [ %i.acr, %bb.cz ], [ %i.abt, %bb.cw ], [ %i.abt, %bb.dh ]
  %.fr = freeze i16 %i.aec
  %i.aed = icmp eq i16 %.fr, 0
  %spec.select = select i1 %i.aed, i16 128, i16 0
  br label %bb.do

bb.do:                                            ; preds = %.loopexit2477, %.loopexit2477.thread
  %i.aee = phi i16 [ %spec.select, %.loopexit2477 ], [ 128, %.loopexit2477.thread ]
  %i.aef = load i16, ptr %i.aaz, align 4
  %i.aeg = and i16 %i.aef, -129
  %i.aeh = or disjoint i16 %i.aeg, %i.aee
  store i16 %i.aeh, ptr %i.aaz, align 4
  br label %bb.dp
end_hunk_0
begin_hunk_1_@Manifest:bb.a
  %i.bex = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !8
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8
  store ptr %i.bew, ptr %i.bez, align 8, !tbaa !8
  %i.bfa = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.bfa, ptr %i.bex, align 8, !tbaa !8
  %i.bfb = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfa, i64 8
  store ptr %i.bfb, ptr %i.bfc, align 8, !tbaa !8
  br label %bb.jm

bb.jm:                                            ; preds = %.thread3001, %bb.jl, %bb.jk
  %i.bfd = load ptr, ptr @xx_hold, align 8, !tbaa !11 ; 4 uses
  store ptr %i.bfd, ptr @zz_hold, align 8, !tbaa !11
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 32
  %i.bff = load i8, ptr %i.bfe, align 8, !tbaa !8 ; 2 uses
  %.off362.i = add i8 %i.bff, -11
  %switch363.i = icmp ult i8 %.off362.i, 2
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfd, i64 33
  %i.bfh = zext i8 %i.bff to i64
  %i.bfi = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.bfh
  %.in331.in.i = select i1 %switch363.i, ptr %i.bfg, ptr %i.bfi
  %.in331.i = load i8, ptr %.in331.in.i, align 1, !tbaa !8 ; 2 uses
  %i.bfj = zext i8 %.in331.i to i32
  store i32 %i.bfj, ptr @zz_size, align 4, !tbaa !4
  %i.bfk = zext i8 %.in331.i to i64
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bfk
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !11
  store ptr %i.bfm, ptr %i.bfd, align 8, !tbaa !8
  %i.bfn = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bfo = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bfp = sext i32 %i.bfo to i64
  %i.bfq = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bfp
  store ptr %i.bfn, ptr %i.bfq, align 8, !tbaa !11
  br label %ManifestCat.exit

ManifestCat.exit:                                 ; preds = %bb.jg, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aax

bb.jn:                                            ; preds = %bb.c, %bb.c
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !8
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jo, %bb.jn
  %.pn2296 = phi ptr [ %i.bfs, %bb.jn ], [ %.8, %bb.jo ]
  %.8.in = getelementptr inbounds nuw i8, ptr %.pn2296, i64 16
  %.8 = load ptr, ptr %.8.in, align 8, !tbaa !8   ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.8, i64 32
  %i.bfu = load i8, ptr %i.bft, align 8, !tbaa !8
  %i.bfv = icmp eq i8 %i.bfu, 0
  br i1 %i.bfv, label %bb.jo, label %bb.jp, !llvm.loop !44

bb.jp:                                            ; preds = %bb.jo
  %i.bfw = tail call ptr @Manifest(ptr noundef nonnull %.8, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.bfx = tail call ptr @ReplaceWithTidy(ptr noundef %i.bfw, i32 noundef 0) ; 2 uses
  call void @GetGap(ptr noundef %i.bfx, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %i.k) #9
  %i.bfy = load i32, ptr %i.k, align 4, !tbaa !4
  %.not2290 = icmp eq i32 %i.bfy, 158
  br i1 %.not2290, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.bfz = load i16, ptr %12, align 4
  %i.bga = and i16 %i.bfz, -1024
  %or.cond2358 = icmp eq i16 %i.bga, 9216
  br i1 %or.cond2358, label %._crit_edge2656, label %bb.jr

._crit_edge2656:                                  ; preds = %bb.jq
  %.phi.trans.insert2657 = getelementptr inbounds nuw i8, ptr %12, i64 2
  %.pre2658 = load i16, ptr %.phi.trans.insert2657, align 2, !tbaa !45
  %i.bgb = sext i16 %.pre2658 to i32
  br label %bb.js

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 32
  %i.bgd = load i8, ptr %i.t, align 8, !tbaa !8
  %i.bge = zext i8 %i.bgd to i32
  %i.bgf = call ptr @Image(i32 noundef %i.bge) #9
  %i.bgg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 26, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %i.bgc, ptr noundef %i.bgf) #9 ; 0 uses
  %i.bgh = load i16, ptr %12, align 4
  %i.bgi = and i16 %i.bgh, -7169
  %i.bgj = or disjoint i16 %i.bgi, 1024
  store i16 %i.bgj, ptr %12, align 4
  %i.bgk = getelementptr inbounds nuw i8, ptr %12, i64 2
  store i16 2880, ptr %i.bgk, align 2, !tbaa !45
  br label %bb.js

bb.js:                                            ; preds = %._crit_edge2656, %bb.jr
  %i.bgl = phi i32 [ %i.bgb, %._crit_edge2656 ], [ 2880, %bb.jr ]
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8388607, ptr %i.bgm, align 8, !tbaa !8
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bgl, ptr %i.bgn, align 4, !tbaa !8
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 8388607, ptr %i.bgo, align 8, !tbaa !8
  %i.bgp = load ptr, ptr %i.bfr, align 8, !tbaa !8 ; 11 uses
  store ptr %i.bgp, ptr @xx_link, align 8, !tbaa !11
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 24 ; 2 uses
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !8 ; 5 uses
  %i.bgs = icmp eq ptr %i.bgr, %i.bgp
  br i1 %i.bgs, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  store ptr %i.bgr, ptr @zz_res, align 8, !tbaa !11
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16 ; 2 uses
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !8 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgr, i64 16
  store ptr %i.bgu, ptr %i.bgv, align 8, !tbaa !8
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgu, i64 24
  store ptr %i.bgr, ptr %i.bgw, align 8, !tbaa !8
  store ptr %i.bgp, ptr %i.bgq, align 8, !tbaa !8
  store ptr %i.bgp, ptr %i.bgt, align 8, !tbaa !8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %i.bgx = phi ptr [ %i.bgr, %bb.jt ], [ null, %bb.js ]
  store ptr %i.bgx, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.bgp, ptr @zz_hold, align 8, !tbaa !11
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !8 ; 3 uses
  %i.bha = icmp eq ptr %i.bgz, %i.bgp
  br i1 %i.bha, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  store ptr %i.bgz, ptr @zz_res, align 8, !tbaa !11
  %i.bhb = load ptr, ptr %i.bgp, align 8, !tbaa !8
  store ptr %i.bhb, ptr %i.bgz, align 8, !tbaa !8
  %i.bhc = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bhd = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !8
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  store ptr %i.bhc, ptr %i.bhf, align 8, !tbaa !8
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  store ptr %i.bhd, ptr %i.bhg, align 8, !tbaa !8
  store ptr %i.bhd, ptr %i.bhd, align 8, !tbaa !8
  %.pre2659 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.jw

bb.jw:                                            ; preds = %bb.ju, %bb.jv
  %i.bhh = phi ptr [ %i.bgp, %bb.ju ], [ %.pre2659, %bb.jv ] ; 4 uses
  store ptr %i.bhh, ptr @zz_hold, align 8, !tbaa !11
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 32
  %i.bhj = load i8, ptr %i.bhi, align 8, !tbaa !8 ; 2 uses
  %.off2370 = add i8 %i.bhj, -11
  %switch2371 = icmp ult i8 %.off2370, 2
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhh, i64 33
  %i.bhl = zext i8 %i.bhj to i64
  %i.bhm = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.bhl
  %.in2294.in = select i1 %switch2371, ptr %i.bhk, ptr %i.bhm
  %.in2294 = load i8, ptr %.in2294.in, align 1, !tbaa !8 ; 2 uses
  %i.bhn = zext i8 %.in2294 to i32
  store i32 %i.bhn, ptr @zz_size, align 4, !tbaa !4
  %i.bho = zext i8 %.in2294 to i64
  %i.bhp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bho
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !11
  store ptr %i.bhq, ptr %i.bhh, align 8, !tbaa !8
  %i.bhr = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bhs = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bht = sext i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bht
  store ptr %i.bhr, ptr %i.bhu, align 8, !tbaa !11
  %i.bhv = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 24
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !8
  %i.bhy = icmp eq ptr %i.bhx, %i.bhv
  br i1 %i.bhy, label %.sink.split, label %bb.kh

bb.jx:                                            ; preds = %bb.c, %bb.c
  %i.bhz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !8
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jy, %bb.jx
  %.pn2289 = phi ptr [ %i.bia, %bb.jx ], [ %.9, %bb.jy ]
  %.9.in = getelementptr inbounds nuw i8, ptr %.pn2289, i64 16
  %.9 = load ptr, ptr %.9.in, align 8, !tbaa !8   ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %.9, i64 32
  %i.bic = load i8, ptr %i.bib, align 8, !tbaa !8
  %i.bid = icmp eq i8 %i.bic, 0
  br i1 %i.bid, label %bb.jy, label %bb.jz, !llvm.loop !47

bb.jz:                                            ; preds = %bb.jy
  %i.bie = tail call ptr @Manifest(ptr noundef nonnull %.9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.bif = tail call ptr @ReplaceWithTidy(ptr noundef %i.bie, i32 noundef 0) ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @GetGap(ptr noundef %i.bif, ptr noundef %2, ptr noundef nonnull %i.big, ptr noundef nonnull %i.k) #9
  %i.bih = load i32, ptr %i.k, align 4, !tbaa !4
  %i.bii = trunc i32 %i.bih to i16
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  store i16 %i.bii, ptr %i.bij, align 2, !tbaa !8
  %i.bik = load i16, ptr %i.big, align 8          ; 2 uses
  %.mask2285 = and i16 %i.bik, -8192
  %.not2284 = icmp eq i16 %.mask2285, 8192
  br i1 %.not2284, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %16 = lshr i16 %i.bik, 10
  %i.bil = and i16 %16, 7
  switch i16 %i.bil, label %bb.kb [
    i16 1, label %bb.kc
    i16 5, label %bb.kc
  ]

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bif, i64 32
  %i.bin = load i8, ptr %i.t, align 8, !tbaa !8
  %i.bio = zext i8 %i.bin to i32
  %i.bip = call ptr @Image(i32 noundef %i.bio) #9
  %i.biq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 27, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %i.bim, ptr noundef %i.bip) #9 ; 0 uses
  store i16 159, ptr %i.bij, align 2, !tbaa !8
  %i.bir = load i16, ptr %i.big, align 8
  %i.bis = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 0, ptr %i.bis, align 2, !tbaa !8
  %i.bit = and i16 %i.bir, 1023
  %i.biu = or disjoint i16 %i.bit, 9216
  store i16 %i.biu, ptr %i.big, align 8
  br label %bb.kc

bb.kc:                                            ; preds = %bb.ka, %bb.ka, %bb.kb
  %i.biv = load ptr, ptr %i.bhz, align 8, !tbaa !8 ; 11 uses
  store ptr %i.biv, ptr @xx_link, align 8, !tbaa !11
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 24 ; 2 uses
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !8 ; 5 uses
  %i.biy = icmp eq ptr %i.bix, %i.biv
  br i1 %i.biy, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  store ptr %i.bix, ptr @zz_res, align 8, !tbaa !11
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biv, i64 16 ; 2 uses
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !8 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bix, i64 16
  store ptr %i.bja, ptr %i.bjb, align 8, !tbaa !8
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bja, i64 24
  store ptr %i.bix, ptr %i.bjc, align 8, !tbaa !8
  store ptr %i.biv, ptr %i.biw, align 8, !tbaa !8
  store ptr %i.biv, ptr %i.biz, align 8, !tbaa !8
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kc, %bb.kd
  %i.bjd = phi ptr [ %i.bix, %bb.kd ], [ null, %bb.kc ]
  store ptr %i.bjd, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.biv, ptr @zz_hold, align 8, !tbaa !11
  %i.bje = getelementptr inbounds nuw i8, ptr %i.biv, i64 8
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !8 ; 3 uses
  %i.bjg = icmp eq ptr %i.bjf, %i.biv
  br i1 %i.bjg, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  store ptr %i.bjf, ptr @zz_res, align 8, !tbaa !11
  %i.bjh = load ptr, ptr %i.biv, align 8, !tbaa !8
  store ptr %i.bjh, ptr %i.bjf, align 8, !tbaa !8
  %i.bji = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bjj = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !8
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 8
  store ptr %i.bji, ptr %i.bjl, align 8, !tbaa !8
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8
  store ptr %i.bjj, ptr %i.bjm, align 8, !tbaa !8
  store ptr %i.bjj, ptr %i.bjj, align 8, !tbaa !8
  %.pre2655 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf
  %i.bjn = phi ptr [ %i.biv, %bb.ke ], [ %.pre2655, %bb.kf ] ; 4 uses
  store ptr %i.bjn, ptr @zz_hold, align 8, !tbaa !11
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 32
  %i.bjp = load i8, ptr %i.bjo, align 8, !tbaa !8 ; 2 uses
  %.off2372 = add i8 %i.bjp, -11
  %switch2373 = icmp ult i8 %.off2372, 2
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjn, i64 33
  %i.bjr = zext i8 %i.bjp to i64
  %i.bjs = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.bjr
  %.in2288.in = select i1 %switch2373, ptr %i.bjq, ptr %i.bjs
  %.in2288 = load i8, ptr %.in2288.in, align 1, !tbaa !8 ; 2 uses
  %i.bjt = zext i8 %.in2288 to i32
  store i32 %i.bjt, ptr @zz_size, align 4, !tbaa !4
  %i.bju = zext i8 %.in2288 to i64
  %i.bjv = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bju
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !11
  store ptr %i.bjw, ptr %i.bjn, align 8, !tbaa !8
  %i.bjx = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bjy = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bjz = sext i32 %i.bjy to i64
  %i.bka = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bjz
  store ptr %i.bjx, ptr %i.bka, align 8, !tbaa !11
  %i.bkb = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 24
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !8
  %i.bke = icmp eq ptr %i.bkd, %i.bkb
  br i1 %i.bke, label %.sink.split, label %bb.kh

.sink.split:                                      ; preds = %bb.kg, %bb.jw
  %.sink3075 = phi ptr [ %i.bhv, %bb.jw ], [ %i.bkb, %bb.kg ]
  %i.bkf = call i32 @DisposeObject(ptr noundef nonnull %.sink3075) #9 ; 0 uses
  br label %bb.kh

bb.kh:                                            ; preds = %.sink.split, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.kg, %bb.jw
  %i.bkg = load i8, ptr %i.t, align 8, !tbaa !8   ; 2 uses
  %i.bkh = add i8 %i.bkg, -24                     ; 2 uses
  %i.bki = call i8 @llvm.fshl.i8(i8 %i.bkh, i8 %i.bkh, i8 7) ; 2 uses
  %i.bkj = icmp ult i8 %i.bki, 9
  br i1 %i.bkj, label %switch.hole_check, label %bb.ki

bb.ki:                                            ; preds = %switch.hole_check, %bb.kh
  %i.bkk = icmp ne i8 %i.bkg, 28
  %i.bkl = zext i1 %i.bkk to i32
  br label %switch.lookup

switch.hole_check:                                ; preds = %bb.kh
  %switch.maskindex = zext nneg i8 %i.bki to i16
  %switch.shifted = lshr i16 451, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ki

switch.lookup:                                    ; preds = %switch.hole_check, %bb.ki
  %not. = phi i32 [ %i.bkl, %bb.ki ], [ 0, %switch.hole_check ] ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !8
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kj, %switch.lookup
  %.pn2295 = phi ptr [ %i.bkn, %switch.lookup ], [ %.10, %bb.kj ]
  %.10.in = getelementptr inbounds nuw i8, ptr %.pn2295, i64 16
  %.10 = load ptr, ptr %.10.in, align 8, !tbaa !8 ; 3 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.10, i64 32
  %i.bkp = load i8, ptr %i.bko, align 8, !tbaa !8
  %i.bkq = icmp eq i8 %i.bkp, 0
  br i1 %i.bkq, label %bb.kj, label %bb.kk, !llvm.loop !48

bb.kk:                                            ; preds = %bb.kj
  %i.bkr = zext nneg i32 %not. to i64             ; 4 uses
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bkr ; 2 uses
  store ptr null, ptr %i.bks, align 8, !tbaa !11
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bkr ; 2 uses
  store ptr null, ptr %i.bkt, align 8, !tbaa !11
  %i.bku = xor i32 %not., 1
  %i.bkv = zext nneg i32 %i.bku to i64            ; 4 uses
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bkv
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !11
  %i.bky = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bkv ; 2 uses
  store ptr %i.bkx, ptr %i.bky, align 8, !tbaa !11
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bkv
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !11
  %i.blb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bkv ; 2 uses
  store ptr %i.bla, ptr %i.blb, align 8, !tbaa !11
  %i.blc = call ptr @Manifest(ptr noundef nonnull %.10, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10) ; 0 uses
  %i.bld = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bkr
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !11
  store ptr %i.ble, ptr %i.bkt, align 8, !tbaa !11
  %i.blf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bkr
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !11
  store ptr %i.blg, ptr %i.bks, align 8, !tbaa !11
  store ptr null, ptr %i.blb, align 8, !tbaa !11
  store ptr null, ptr %i.bky, align 8, !tbaa !11
  %i.blh = load <2 x ptr>, ptr %i.d, align 16
  %i.bli = shufflevector <2 x ptr> %i.blh, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.blj = load <2 x ptr>, ptr %i.e, align 16
  %i.blk = shufflevector <2 x ptr> %i.blj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bll = shufflevector <2 x ptr> %i.bli, <2 x ptr> %i.blk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr3113 = freeze <4 x ptr> %i.bll
  %i.blm = icmp ne <4 x ptr> %.fr3113, splat (ptr null)
  %i.bln = bitcast <4 x i1> %i.blm to i4
  %.not3114 = icmp eq i4 %i.bln, 0
  br i1 %.not3114, label %bb.aax, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.blo = call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  br label %bb.aax

bb.km:                                            ; preds = %bb.c, %bb.c
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !8
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %bb.km
  %.pn2283 = phi ptr [ %i.blq, %bb.km ], [ %.11, %bb.kn ]
  %.11.in = getelementptr inbounds nuw i8, ptr %.pn2283, i64 16
  %.11 = load ptr, ptr %.11.in, align 8, !tbaa !8 ; 3 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %.11, i64 32
  %i.bls = load i8, ptr %i.blr, align 8, !tbaa !8
  %i.blt = icmp eq i8 %i.bls, 0
  br i1 %i.blt, label %bb.kn, label %bb.ko, !llvm.loop !49

bb.ko:                                            ; preds = %bb.kn
  %i.blu = tail call ptr @Manifest(ptr noundef nonnull %.11, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.blv = tail call ptr @ReplaceWithTidy(ptr noundef %i.blu, i32 noundef 0)
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @GetGap(ptr noundef %i.blv, ptr noundef %2, ptr noundef nonnull %i.blw, ptr noundef nonnull %i.k) #9
  %i.blx = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.kp

bb.kp:                                            ; preds = %bb.kp, %bb.ko
  %.pn2282 = phi ptr [ %i.blx, %bb.ko ], [ %.12, %bb.kp ]
  %.12.in = getelementptr inbounds nuw i8, ptr %.pn2282, i64 16
  %.12 = load ptr, ptr %.12.in, align 8, !tbaa !8 ; 3 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %.12, i64 32
  %i.blz = load i8, ptr %i.bly, align 8, !tbaa !8
  %i.bma = icmp eq i8 %i.blz, 0
  br i1 %i.bma, label %bb.kp, label %bb.kq, !llvm.loop !50

bb.kq:                                            ; preds = %bb.kp
end_hunk_1
