inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@rv30_loop_filter:bb.a
  %i.yt = shl nuw nsw i32 1, %i.ys
  %i.yu = and i32 %i.yt, %i.yh
  %.not215 = icmp eq i32 %i.yu, 0
  br i1 %.not215, label %.thread305, label %select.unfold302

select.unfold302:                                 ; preds = %bb.ae, %.critedge236, %bb.ac
  %.2 = phi i32 [ %i.xj, %bb.ac ], [ %i.xj, %.critedge236 ], [ %.1, %bb.ae ] ; 6 uses
  %.not216 = icmp eq i32 %.2, 0
  br i1 %.not216, label %.thread305, label %bb.af

bb.af:                                            ; preds = %select.unfold302
  %i.yv = load i64, ptr %i.wv, align 16, !tbaa !95 ; 3 uses
  %sext316 = mul i64 %i.yv, -8589934592
  %i.yw = ashr exact i64 %sext316, 32             ; 4 uses
  %sext317 = shl i64 %i.yv, 32
  %i.yx = ashr exact i64 %sext317, 32             ; 4 uses
  %.neg319 = mul i64 %i.yv, -4294967296
  %i.yy = ashr exact i64 %.neg319, 32             ; 4 uses
  %i.yz = sub nsw i32 0, %.2                      ; 8 uses
  %i.za = getelementptr inbounds i8, ptr %.1190355, i64 %i.yw
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !60
  %i.zc = zext i8 %i.zb to i32
  %i.zd = getelementptr inbounds i8, ptr %.1190355, i64 %i.yx
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !60
  %i.zf = zext i8 %i.ze to i32
  %i.zg = sub nsw i32 %i.zc, %i.zf
  %i.zh = getelementptr inbounds i8, ptr %.1190355, i64 %i.yy ; 2 uses
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !60
  %i.zj = zext i8 %i.zi to i32                    ; 2 uses
  %i.zk = load i8, ptr %.1190355, align 1, !tbaa !60
  %i.zl = zext i8 %i.zk to i32
  %.neg.i260 = sub nsw i32 %i.zl, %i.zj
  %.neg27.i261 = shl nsw i32 %.neg.i260, 2
  %i.zm = add nsw i32 %i.zg, %.neg27.i261
  %i.zn = ashr i32 %i.zm, 3                       ; 2 uses
  %i.zo = icmp slt i32 %i.zn, %i.yz
  %..i.i262 = tail call i32 @llvm.smin.i32(i32 %i.zn, i32 range(i32 1, 256) %.2)
  %.0.i.i263 = select i1 %i.zo, i32 %i.yz, i32 %..i.i262 ; 2 uses
  %i.zp = add nsw i32 %.0.i.i263, %i.zj
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !60
  store i8 %i.zs, ptr %i.zh, align 1, !tbaa !60
  %i.zt = load i8, ptr %.1190355, align 1, !tbaa !60
  %i.zu = zext i8 %i.zt to i32
  %i.zv = sub nsw i32 %i.zu, %.0.i.i263
  %i.zw = sext i32 %i.zv to i64
  %i.zx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !60
  store i8 %i.zy, ptr %.1190355, align 1, !tbaa !60
  %i.zz = getelementptr inbounds nuw i8, ptr %.1190355, i64 1 ; 6 uses
  %i.aaa = getelementptr inbounds i8, ptr %i.zz, i64 %i.yw
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !60
  %i.aac = zext i8 %i.aab to i32
  %i.aad = getelementptr inbounds i8, ptr %i.zz, i64 %i.yx
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !60
  %i.aaf = zext i8 %i.aae to i32
  %i.aag = sub nsw i32 %i.aac, %i.aaf
  %i.aah = getelementptr inbounds i8, ptr %i.zz, i64 %i.yy ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !60
  %i.aaj = zext i8 %i.aai to i32                  ; 2 uses
  %i.aak = load i8, ptr %i.zz, align 1, !tbaa !60
  %i.aal = zext i8 %i.aak to i32
  %.neg.1.i264 = sub nsw i32 %i.aal, %i.aaj
  %.neg27.1.i265 = shl nsw i32 %.neg.1.i264, 2
  %i.aam = add nsw i32 %i.aag, %.neg27.1.i265
  %i.aan = ashr i32 %i.aam, 3                     ; 2 uses
  %i.aao = icmp slt i32 %i.aan, %i.yz
  %..i.1.i266 = tail call i32 @llvm.smin.i32(i32 %i.aan, i32 range(i32 1, 256) %.2)
  %.0.i.1.i267 = select i1 %i.aao, i32 %i.yz, i32 %..i.1.i266 ; 2 uses
  %i.aap = add nsw i32 %.0.i.1.i267, %i.aaj
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.aaq
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !60
  store i8 %i.aas, ptr %i.aah, align 1, !tbaa !60
  %i.aat = load i8, ptr %i.zz, align 1, !tbaa !60
  %i.aau = zext i8 %i.aat to i32
  %i.aav = sub nsw i32 %i.aau, %.0.i.1.i267
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !60
  store i8 %i.aay, ptr %i.zz, align 1, !tbaa !60
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1190355, i64 2 ; 6 uses
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 %i.yw
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !60
  %i.abc = zext i8 %i.abb to i32
  %i.abd = getelementptr inbounds i8, ptr %i.aaz, i64 %i.yx
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !60
  %i.abf = zext i8 %i.abe to i32
  %i.abg = sub nsw i32 %i.abc, %i.abf
  %i.abh = getelementptr inbounds i8, ptr %i.aaz, i64 %i.yy ; 2 uses
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !60
  %i.abj = zext i8 %i.abi to i32                  ; 2 uses
  %i.abk = load i8, ptr %i.aaz, align 1, !tbaa !60
  %i.abl = zext i8 %i.abk to i32
  %.neg.2.i268 = sub nsw i32 %i.abl, %i.abj
  %.neg27.2.i269 = shl nsw i32 %.neg.2.i268, 2
  %i.abm = add nsw i32 %i.abg, %.neg27.2.i269
  %i.abn = ashr i32 %i.abm, 3                     ; 2 uses
  %i.abo = icmp slt i32 %i.abn, %i.yz
  %..i.2.i270 = tail call i32 @llvm.smin.i32(i32 %i.abn, i32 range(i32 1, 256) %.2)
  %.0.i.2.i271 = select i1 %i.abo, i32 %i.yz, i32 %..i.2.i270 ; 2 uses
  %i.abp = add nsw i32 %.0.i.2.i271, %i.abj
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !60
  store i8 %i.abs, ptr %i.abh, align 1, !tbaa !60
  %i.abt = load i8, ptr %i.aaz, align 1, !tbaa !60
  %i.abu = zext i8 %i.abt to i32
  %i.abv = sub nsw i32 %i.abu, %.0.i.2.i271
  %i.abw = sext i32 %i.abv to i64
  %i.abx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !60
  store i8 %i.aby, ptr %i.aaz, align 1, !tbaa !60
  %i.abz = getelementptr inbounds nuw i8, ptr %.1190355, i64 3 ; 6 uses
  %i.aca = getelementptr inbounds i8, ptr %i.abz, i64 %i.yw
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !60
  %i.acc = zext i8 %i.acb to i32
  %i.acd = getelementptr inbounds i8, ptr %i.abz, i64 %i.yx
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !60
  %i.acf = zext i8 %i.ace to i32
  %i.acg = sub nsw i32 %i.acc, %i.acf
  %i.ach = getelementptr inbounds i8, ptr %i.abz, i64 %i.yy ; 2 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !60
  %i.acj = zext i8 %i.aci to i32                  ; 2 uses
  %i.ack = load i8, ptr %i.abz, align 1, !tbaa !60
  %i.acl = zext i8 %i.ack to i32
  %.neg.3.i272 = sub nsw i32 %i.acl, %i.acj
  %.neg27.3.i273 = shl nsw i32 %.neg.3.i272, 2
  %i.acm = add nsw i32 %i.acg, %.neg27.3.i273
  %i.acn = ashr i32 %i.acm, 3                     ; 2 uses
  %i.aco = icmp slt i32 %i.acn, %i.yz
  %..i.3.i274 = tail call i32 @llvm.smin.i32(i32 %i.acn, i32 range(i32 1, 256) %.2)
  %.0.i.3.i275 = select i1 %i.aco, i32 %i.yz, i32 %..i.3.i274 ; 2 uses
  %i.acp = add nsw i32 %.0.i.3.i275, %i.acj
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.acq
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !60
  store i8 %i.acs, ptr %i.ach, align 1, !tbaa !60
  %i.act = load i8, ptr %i.abz, align 1, !tbaa !60
  %i.acu = zext i8 %i.act to i32
  %i.acv = sub nsw i32 %i.acu, %.0.i.3.i275
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !60
  store i8 %i.acy, ptr %i.abz, align 1, !tbaa !60
  br label %.thread305

.thread305:                                       ; preds = %.critedge236, %bb.ae, %bb.af, %select.unfold302
  %i.acz = add nuw nsw i32 %.2199354, 1           ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.1190355, i64 4
  %exitcond384.not = icmp eq i32 %i.acz, 4
  br i1 %exitcond384.not, label %bb.ag, label %bb.ac, !llvm.loop !104

bb.ag:                                            ; preds = %.thread305
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 4
  %i.adb = icmp samesign ult i64 %indvars.iv385, 12
  br i1 %i.adb, label %bb.ab, label %.preheader, !llvm.loop !105

bb.ah:                                            ; preds = %.preheader, %.thread311.1.thread
  %i.adc = phi i1 [ true, %.preheader ], [ false, %.thread311.1.thread ]
  %indvars.iv391 = phi i64 [ 0, %.preheader ], [ 1, %.thread311.1.thread ] ; 2 uses
  %i.add = load ptr, ptr %i.wx, align 8, !tbaa !91 ; 2 uses
  %i.ade = getelementptr inbounds i8, ptr %i.add, i64 %indvars.iv396
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !60
  %i.adg = zext i8 %i.adf to i32
  %indvars.iv391.tr = trunc nuw nsw i64 %indvars.iv391 to i32
  %i.adh = shl nuw nsw i32 %indvars.iv391.tr, 2   ; 2 uses
  %i.adi = lshr i32 %i.adg, %i.adh
  %i.adj = and i32 %i.adi, 15                     ; 2 uses
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.adk = load i32, ptr %i.a, align 4, !tbaa !87
  %i.adl = sext i32 %i.adk to i64
  %i.adm = sub nsw i64 %indvars.iv396, %i.adl
  %i.adn = getelementptr inbounds i8, ptr %i.add, i64 %i.adm
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !60
  %i.adp = zext i8 %i.ado to i32
  %i.adq = lshr i32 %i.adp, %i.adh
  %i.adr = and i32 %i.adq, 15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i32 [ %i.adr, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv391
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adu = and i32 %.0, 4
  %.not209.not = icmp eq i32 %i.adu, 0
  %.not209.not.1 = icmp samesign ult i32 %.0, 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread311.1
  %indvars.iv388 = phi i64 [ %i.xt, %bb.aj ], [ 4, %.thread311.1 ] ; 3 uses
  %i.adv = load ptr, ptr %i.adt, align 8, !tbaa !94
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.xv
  %i.adx = add nuw nsw i64 %indvars.iv388, %i.xb
  %i.ady = load i64, ptr %i.wz, align 8, !tbaa !98 ; 4 uses
  %i.adz = mul nsw i64 %i.ady, %i.adx
  %i.aea = getelementptr inbounds i8, ptr %i.adw, i64 %i.adz ; 15 uses
  %2 = trunc nuw nsw i64 %indvars.iv388 to i32
  %3 = lshr exact i32 %2, 1                       ; 5 uses
  %.not208 = icmp eq i64 %indvars.iv388, 0        ; 3 uses
  %i.aeb = load ptr, ptr %i.wx, align 8, !tbaa !91
  %i.aec = getelementptr inbounds i8, ptr %i.aeb, i64 %indvars.iv396
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !60
  %i.aee = zext i8 %i.aed to i32                  ; 4 uses
  %i.aef = shl nuw nsw i32 1, %3
  %i.aeg = and i32 %i.aef, %i.aee
  %.not207 = icmp eq i32 %i.aeg, 0
  br i1 %.not207, label %bb.al, label %select.unfold308

bb.al:                                            ; preds = %bb.ak
  br i1 %.not208, label %bb.am, label %.critedge240

bb.am:                                            ; preds = %bb.al
  br i1 %.not209.not, label %.thread311.thread415, label %select.unfold308

.critedge240:                                     ; preds = %bb.al
  %i.aeh = add nsw i32 %3, -2
  %i.aei = shl nuw nsw i32 1, %i.aeh
  %i.aej = and i32 %i.adj, %i.aei
  %.not210 = icmp eq i32 %i.aej, 0
  br i1 %.not210, label %.thread311.thread, label %select.unfold308

select.unfold308:                                 ; preds = %bb.am, %.critedge240, %bb.ak
  %.3 = phi i32 [ %i.xj, %bb.ak ], [ %i.xj, %.critedge240 ], [ %.1, %bb.am ] ; 6 uses
  %.not211 = icmp eq i32 %.3, 0
  br i1 %.not211, label %.thread311, label %bb.an

bb.an:                                            ; preds = %select.unfold308
  %sext = mul i64 %i.ady, -8589934592
  %i.aek = ashr exact i64 %sext, 32               ; 4 uses
  %sext314 = shl i64 %i.ady, 32
  %i.ael = ashr exact i64 %sext314, 32            ; 4 uses
  %.neg = mul i64 %i.ady, -4294967296
  %i.aem = ashr exact i64 %.neg, 32               ; 4 uses
  %i.aen = sub nsw i32 0, %.3                     ; 8 uses
  %i.aeo = getelementptr inbounds i8, ptr %i.aea, i64 %i.aek
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !60
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = getelementptr inbounds i8, ptr %i.aea, i64 %i.ael
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !60
  %i.aet = zext i8 %i.aes to i32
  %i.aeu = sub nsw i32 %i.aeq, %i.aet
  %i.aev = getelementptr inbounds i8, ptr %i.aea, i64 %i.aem ; 2 uses
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !60
  %i.aex = zext i8 %i.aew to i32                  ; 2 uses
  %i.aey = load i8, ptr %i.aea, align 1, !tbaa !60
  %i.aez = zext i8 %i.aey to i32
  %.neg.i276 = sub nsw i32 %i.aez, %i.aex
  %.neg27.i277 = shl nsw i32 %.neg.i276, 2
  %i.afa = add nsw i32 %i.aeu, %.neg27.i277
  %i.afb = ashr i32 %i.afa, 3                     ; 2 uses
  %i.afc = icmp slt i32 %i.afb, %i.aen
  %..i.i278 = tail call i32 @llvm.smin.i32(i32 %i.afb, i32 range(i32 1, 256) %.3)
  %.0.i.i279 = select i1 %i.afc, i32 %i.aen, i32 %..i.i278 ; 2 uses
  %i.afd = add nsw i32 %.0.i.i279, %i.aex
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !60
  store i8 %i.afg, ptr %i.aev, align 1, !tbaa !60
  %i.afh = load i8, ptr %i.aea, align 1, !tbaa !60
  %i.afi = zext i8 %i.afh to i32
  %i.afj = sub nsw i32 %i.afi, %.0.i.i279
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !60
  store i8 %i.afm, ptr %i.aea, align 1, !tbaa !60
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aea, i64 1 ; 6 uses
  %i.afo = getelementptr inbounds i8, ptr %i.afn, i64 %i.aek
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !60
  %i.afq = zext i8 %i.afp to i32
  %i.afr = getelementptr inbounds i8, ptr %i.afn, i64 %i.ael
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !60
  %i.aft = zext i8 %i.afs to i32
  %i.afu = sub nsw i32 %i.afq, %i.aft
  %i.afv = getelementptr inbounds i8, ptr %i.afn, i64 %i.aem ; 2 uses
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !60
  %i.afx = zext i8 %i.afw to i32                  ; 2 uses
  %i.afy = load i8, ptr %i.afn, align 1, !tbaa !60
  %i.afz = zext i8 %i.afy to i32
  %.neg.1.i280 = sub nsw i32 %i.afz, %i.afx
  %.neg27.1.i281 = shl nsw i32 %.neg.1.i280, 2
  %i.aga = add nsw i32 %i.afu, %.neg27.1.i281
  %i.agb = ashr i32 %i.aga, 3                     ; 2 uses
  %i.agc = icmp slt i32 %i.agb, %i.aen
  %..i.1.i282 = tail call i32 @llvm.smin.i32(i32 %i.agb, i32 range(i32 1, 256) %.3)
  %.0.i.1.i283 = select i1 %i.agc, i32 %i.aen, i32 %..i.1.i282 ; 2 uses
  %i.agd = add nsw i32 %.0.i.1.i283, %i.afx
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !60
  store i8 %i.agg, ptr %i.afv, align 1, !tbaa !60
  %i.agh = load i8, ptr %i.afn, align 1, !tbaa !60
  %i.agi = zext i8 %i.agh to i32
  %i.agj = sub nsw i32 %i.agi, %.0.i.1.i283
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !60
  store i8 %i.agm, ptr %i.afn, align 1, !tbaa !60
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aea, i64 2 ; 6 uses
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 %i.aek
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !60
  %i.agq = zext i8 %i.agp to i32
  %i.agr = getelementptr inbounds i8, ptr %i.agn, i64 %i.ael
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !60
  %i.agt = zext i8 %i.ags to i32
  %i.agu = sub nsw i32 %i.agq, %i.agt
  %i.agv = getelementptr inbounds i8, ptr %i.agn, i64 %i.aem ; 2 uses
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !60
  %i.agx = zext i8 %i.agw to i32                  ; 2 uses
  %i.agy = load i8, ptr %i.agn, align 1, !tbaa !60
  %i.agz = zext i8 %i.agy to i32
  %.neg.2.i284 = sub nsw i32 %i.agz, %i.agx
  %.neg27.2.i285 = shl nsw i32 %.neg.2.i284, 2
  %i.aha = add nsw i32 %i.agu, %.neg27.2.i285
  %i.ahb = ashr i32 %i.aha, 3                     ; 2 uses
  %i.ahc = icmp slt i32 %i.ahb, %i.aen
  %..i.2.i286 = tail call i32 @llvm.smin.i32(i32 %i.ahb, i32 range(i32 1, 256) %.3)
  %.0.i.2.i287 = select i1 %i.ahc, i32 %i.aen, i32 %..i.2.i286 ; 2 uses
  %i.ahd = add nsw i32 %.0.i.2.i287, %i.agx
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ahe
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !60
  store i8 %i.ahg, ptr %i.agv, align 1, !tbaa !60
  %i.ahh = load i8, ptr %i.agn, align 1, !tbaa !60
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = sub nsw i32 %i.ahi, %.0.i.2.i287
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !60
  store i8 %i.ahm, ptr %i.agn, align 1, !tbaa !60
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aea, i64 3 ; 6 uses
  %i.aho = getelementptr inbounds i8, ptr %i.ahn, i64 %i.aek
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !60
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = getelementptr inbounds i8, ptr %i.ahn, i64 %i.ael
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !60
  %i.aht = zext i8 %i.ahs to i32
  %i.ahu = sub nsw i32 %i.ahq, %i.aht
  %i.ahv = getelementptr inbounds i8, ptr %i.ahn, i64 %i.aem ; 2 uses
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !60
  %i.ahx = zext i8 %i.ahw to i32                  ; 2 uses
  %i.ahy = load i8, ptr %i.ahn, align 1, !tbaa !60
  %i.ahz = zext i8 %i.ahy to i32
  %.neg.3.i288 = sub nsw i32 %i.ahz, %i.ahx
  %.neg27.3.i289 = shl nsw i32 %.neg.3.i288, 2
  %i.aia = add nsw i32 %i.ahu, %.neg27.3.i289
  %i.aib = ashr i32 %i.aia, 3                     ; 2 uses
  %i.aic = icmp slt i32 %i.aib, %i.aen
  %..i.3.i290 = tail call i32 @llvm.smin.i32(i32 %i.aib, i32 range(i32 1, 256) %.3)
  %.0.i.3.i291 = select i1 %i.aic, i32 %i.aen, i32 %..i.3.i290 ; 2 uses
  %i.aid = add nsw i32 %.0.i.3.i291, %i.ahx
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !60
  store i8 %i.aig, ptr %i.ahv, align 1, !tbaa !60
  %i.aih = load i8, ptr %i.ahn, align 1, !tbaa !60
  %i.aii = zext i8 %i.aih to i32
  %i.aij = sub nsw i32 %i.aii, %.0.i.3.i291
  %i.aik = sext i32 %i.aij to i64
  %i.ail = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.aik
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !60
  store i8 %i.aim, ptr %i.ahn, align 1, !tbaa !60
  %.pre401 = load ptr, ptr %i.wx, align 8, !tbaa !91
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre401, i64 %indvars.iv396
  %.pre402 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !60
  %.pre403 = zext i8 %.pre402 to i32
  br label %.thread311

.thread311:                                       ; preds = %bb.an, %select.unfold308
  %.pre-phi = phi i32 [ %i.aee, %select.unfold308 ], [ %.pre403, %bb.an ]
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aea, i64 4 ; 3 uses
  %i.aio = shl nuw nsw i32 2, %3
  %i.aip = and i32 %i.aio, %.pre-phi
  %.not207.1 = icmp eq i32 %i.aip, 0
  br i1 %.not207.1, label %bb.ao, label %select.unfold308.1

.thread311.thread415:                             ; preds = %bb.am
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aea, i64 4 ; 2 uses
  %i.air = and i32 %i.aee, 2
  %.not207.1417 = icmp eq i32 %i.air, 0
  br i1 %.not207.1417, label %.thread418, label %select.unfold308.1

.thread311.thread:                                ; preds = %.critedge240
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aea, i64 4 ; 2 uses
  %i.ait = shl nuw nsw i32 2, %3
  %i.aiu = and i32 %i.ait, %i.aee
  %.not207.1413 = icmp eq i32 %i.aiu, 0
  br i1 %.not207.1413, label %.critedge240.1, label %select.unfold308.1

bb.ao:                                            ; preds = %.thread311
  br i1 %.not208, label %.thread418, label %.critedge240.1

.critedge240.1:                                   ; preds = %.thread311.thread, %bb.ao
  %i.aiv = phi ptr [ %i.ain, %bb.ao ], [ %i.ais, %.thread311.thread ]
  %i.aiw = add nsw i32 %3, -1
  %i.aix = shl nuw nsw i32 1, %i.aiw
  %i.aiy = and i32 %i.adj, %i.aix
  %.not210.1 = icmp eq i32 %i.aiy, 0
  br i1 %.not210.1, label %.thread311.1.thread, label %select.unfold308.1

.thread418:                                       ; preds = %.thread311.thread415, %bb.ao
  %i.aiz = phi ptr [ %i.ain, %bb.ao ], [ %i.aiq, %.thread311.thread415 ]
  br i1 %.not209.not.1, label %.thread311.1, label %select.unfold308.1

select.unfold308.1:                               ; preds = %.thread311.thread415, %.thread311.thread, %.thread418, %.critedge240.1, %.thread311
  %i.aja = phi ptr [ %i.ain, %.thread311 ], [ %i.aiv, %.critedge240.1 ], [ %i.aiz, %.thread418 ], [ %i.ais, %.thread311.thread ], [ %i.aiq, %.thread311.thread415 ] ; 6 uses
  %.3.1 = phi i32 [ %i.xj, %.thread311 ], [ %i.xj, %.critedge240.1 ], [ %.1, %.thread418 ], [ %i.xj, %.thread311.thread ], [ %i.xj, %.thread311.thread415 ] ; 6 uses
  %.not211.1 = icmp eq i32 %.3.1, 0
  br i1 %.not211.1, label %.thread311.1, label %bb.ap

bb.ap:                                            ; preds = %select.unfold308.1
  %i.ajb = load i64, ptr %i.wz, align 8, !tbaa !98 ; 3 uses
  %sext.1 = mul i64 %i.ajb, -8589934592
  %i.ajc = ashr exact i64 %sext.1, 32             ; 4 uses
  %sext314.1 = shl i64 %i.ajb, 32
  %i.ajd = ashr exact i64 %sext314.1, 32          ; 4 uses
  %.neg.1 = mul i64 %i.ajb, -4294967296
  %i.aje = ashr exact i64 %.neg.1, 32             ; 4 uses
  %i.ajf = sub nsw i32 0, %.3.1                   ; 8 uses
  %i.ajg = getelementptr inbounds i8, ptr %i.aja, i64 %i.ajc
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.aji = zext i8 %i.ajh to i32
  %i.ajj = getelementptr inbounds i8, ptr %i.aja, i64 %i.ajd
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !60
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = sub nsw i32 %i.aji, %i.ajl
  %i.ajn = getelementptr inbounds i8, ptr %i.aja, i64 %i.aje ; 2 uses
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !60
  %i.ajp = zext i8 %i.ajo to i32                  ; 2 uses
  %i.ajq = load i8, ptr %i.aja, align 1, !tbaa !60
  %i.ajr = zext i8 %i.ajq to i32
  %.neg.i276.1 = sub nsw i32 %i.ajr, %i.ajp
  %.neg27.i277.1 = shl nsw i32 %.neg.i276.1, 2
  %i.ajs = add nsw i32 %i.ajm, %.neg27.i277.1
  %i.ajt = ashr i32 %i.ajs, 3                     ; 2 uses
  %i.aju = icmp slt i32 %i.ajt, %i.ajf
  %..i.i278.1 = tail call i32 @llvm.smin.i32(i32 %i.ajt, i32 range(i32 1, 256) %.3.1)
  %.0.i.i279.1 = select i1 %i.aju, i32 %i.ajf, i32 %..i.i278.1 ; 2 uses
  %i.ajv = add nsw i32 %.0.i.i279.1, %i.ajp
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ajw
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !60
  store i8 %i.ajy, ptr %i.ajn, align 1, !tbaa !60
  %i.ajz = load i8, ptr %i.aja, align 1, !tbaa !60
  %i.aka = zext i8 %i.ajz to i32
  %i.akb = sub nsw i32 %i.aka, %.0.i.i279.1
  %i.akc = sext i32 %i.akb to i64
  %i.akd = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.akc
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !60
  store i8 %i.ake, ptr %i.aja, align 1, !tbaa !60
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aea, i64 5 ; 6 uses
  %i.akg = getelementptr inbounds i8, ptr %i.akf, i64 %i.ajc
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !60
  %i.aki = zext i8 %i.akh to i32
  %i.akj = getelementptr inbounds i8, ptr %i.akf, i64 %i.ajd
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !60
  %i.akl = zext i8 %i.akk to i32
  %i.akm = sub nsw i32 %i.aki, %i.akl
  %i.akn = getelementptr inbounds i8, ptr %i.akf, i64 %i.aje ; 2 uses
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !60
  %i.akp = zext i8 %i.ako to i32                  ; 2 uses
  %i.akq = load i8, ptr %i.akf, align 1, !tbaa !60
  %i.akr = zext i8 %i.akq to i32
  %.neg.1.i280.1 = sub nsw i32 %i.akr, %i.akp
  %.neg27.1.i281.1 = shl nsw i32 %.neg.1.i280.1, 2
  %i.aks = add nsw i32 %i.akm, %.neg27.1.i281.1
  %i.akt = ashr i32 %i.aks, 3                     ; 2 uses
  %i.aku = icmp slt i32 %i.akt, %i.ajf
  %..i.1.i282.1 = tail call i32 @llvm.smin.i32(i32 %i.akt, i32 range(i32 1, 256) %.3.1)
  %.0.i.1.i283.1 = select i1 %i.aku, i32 %i.ajf, i32 %..i.1.i282.1 ; 2 uses
  %i.akv = add nsw i32 %.0.i.1.i283.1, %i.akp
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.akw
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !60
  store i8 %i.aky, ptr %i.akn, align 1, !tbaa !60
  %i.akz = load i8, ptr %i.akf, align 1, !tbaa !60
  %i.ala = zext i8 %i.akz to i32
  %i.alb = sub nsw i32 %i.ala, %.0.i.1.i283.1
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !60
  store i8 %i.ale, ptr %i.akf, align 1, !tbaa !60
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aea, i64 6 ; 6 uses
  %i.alg = getelementptr inbounds i8, ptr %i.alf, i64 %i.ajc
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !60
  %i.ali = zext i8 %i.alh to i32
  %i.alj = getelementptr inbounds i8, ptr %i.alf, i64 %i.ajd
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !60
  %i.all = zext i8 %i.alk to i32
  %i.alm = sub nsw i32 %i.ali, %i.all
  %i.aln = getelementptr inbounds i8, ptr %i.alf, i64 %i.aje ; 2 uses
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !60
  %i.alp = zext i8 %i.alo to i32                  ; 2 uses
  %i.alq = load i8, ptr %i.alf, align 1, !tbaa !60
  %i.alr = zext i8 %i.alq to i32
  %.neg.2.i284.1 = sub nsw i32 %i.alr, %i.alp
  %.neg27.2.i285.1 = shl nsw i32 %.neg.2.i284.1, 2
  %i.als = add nsw i32 %i.alm, %.neg27.2.i285.1
  %i.alt = ashr i32 %i.als, 3                     ; 2 uses
  %i.alu = icmp slt i32 %i.alt, %i.ajf
  %..i.2.i286.1 = tail call i32 @llvm.smin.i32(i32 %i.alt, i32 range(i32 1, 256) %.3.1)
  %.0.i.2.i287.1 = select i1 %i.alu, i32 %i.ajf, i32 %..i.2.i286.1 ; 2 uses
  %i.alv = add nsw i32 %.0.i.2.i287.1, %i.alp
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.alw
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !60
  store i8 %i.aly, ptr %i.aln, align 1, !tbaa !60
  %i.alz = load i8, ptr %i.alf, align 1, !tbaa !60
  %i.ama = zext i8 %i.alz to i32
  %i.amb = sub nsw i32 %i.ama, %.0.i.2.i287.1
  %i.amc = sext i32 %i.amb to i64
  %i.amd = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !60
  store i8 %i.ame, ptr %i.alf, align 1, !tbaa !60
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aea, i64 7 ; 6 uses
  %i.amg = getelementptr inbounds i8, ptr %i.amf, i64 %i.ajc
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !60
  %i.ami = zext i8 %i.amh to i32
  %i.amj = getelementptr inbounds i8, ptr %i.amf, i64 %i.ajd
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !60
  %i.aml = zext i8 %i.amk to i32
  %i.amm = sub nsw i32 %i.ami, %i.aml
  %i.amn = getelementptr inbounds i8, ptr %i.amf, i64 %i.aje ; 2 uses
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !60
  %i.amp = zext i8 %i.amo to i32                  ; 2 uses
  %i.amq = load i8, ptr %i.amf, align 1, !tbaa !60
  %i.amr = zext i8 %i.amq to i32
  %.neg.3.i288.1 = sub nsw i32 %i.amr, %i.amp
  %.neg27.3.i289.1 = shl nsw i32 %.neg.3.i288.1, 2
  %i.ams = add nsw i32 %i.amm, %.neg27.3.i289.1
  %i.amt = ashr i32 %i.ams, 3                     ; 2 uses
  %i.amu = icmp slt i32 %i.amt, %i.ajf
  %..i.3.i290.1 = tail call i32 @llvm.smin.i32(i32 %i.amt, i32 range(i32 1, 256) %.3.1)
  %.0.i.3.i291.1 = select i1 %i.amu, i32 %i.ajf, i32 %..i.3.i290.1 ; 2 uses
  %i.amv = add nsw i32 %.0.i.3.i291.1, %i.amp
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !60
  store i8 %i.amy, ptr %i.amn, align 1, !tbaa !60
  %i.amz = load i8, ptr %i.amf, align 1, !tbaa !60
  %i.ana = zext i8 %i.amz to i32
  %i.anb = sub nsw i32 %i.ana, %.0.i.3.i291.1
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.anc
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !60
  store i8 %i.ane, ptr %i.amf, align 1, !tbaa !60
  br label %.thread311.1

.thread311.1:                                     ; preds = %bb.ap, %select.unfold308.1, %.thread418
  br i1 %.not208, label %bb.ak, label %.thread311.1.thread, !llvm.loop !106

.thread311.1.thread:                              ; preds = %.critedge240.1, %.thread311.1
  br i1 %i.adc, label %bb.ah, label %bb.aq, !llvm.loop !107

bb.aq:                                            ; preds = %.thread311.1.thread
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %indvars.iv.next397 = add nsw i64 %indvars.iv396, 1
  %i.anf = load i32, ptr %i.b, align 4, !tbaa !86
  %i.ang = sext i32 %i.anf to i64
  %i.anh = icmp slt i64 %indvars.iv.next395, %i.ang
  br i1 %i.anh, label %bb.y, label %._crit_edge366, !llvm.loop !108

._crit_edge366:                                   ; preds = %bb.aq, %bb.a, %._crit_edge, %._crit_edge353
  ret void
}

declare void @ff_rv30dsp_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_rv34_get_start_offset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_0
