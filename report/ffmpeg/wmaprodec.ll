inline.NumInlined: 107
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@decode_frame:bb.a
  %i.bek = load i16, ptr %i.bej, align 4, !tbaa !53
  %i.bel = sext i16 %i.bek to i32                 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 2
  %i.ben = load i16, ptr %i.bem, align 2, !tbaa !53 ; 2 uses
  %i.beo = sext i16 %i.ben to i32                 ; 2 uses
  %i.bep = icmp slt i16 %i.ben, 0
  br i1 %i.bep, label %bb.dp, label %get_vlc2.exit.i.i

bb.dp:                                            ; preds = %bb.do
  %i.beq = sub i32 %i.bdx, %i.bdu
  %i.ber = call i32 @llvm.umin.i32(i32 %i.bdf, i32 %i.beq) ; 3 uses
  %i.bes = lshr i32 %i.ber, 3
  %i.bet = zext nneg i32 %i.bes to i64
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bet
  %i.bev = load i32, ptr %i.beu, align 1, !tbaa !53
  %i.bew = call i32 @llvm.bswap.i32(i32 %i.bev)
  %i.bex = and i32 %i.ber, 7
  %i.bey = shl i32 %i.bew, %i.bex
  %i.bez = add nsw i32 %i.beo, 32
  %i.bfa = lshr i32 %i.bey, %i.bez
  %i.bfb = add i32 %i.bfa, %i.bel
  %i.bfc = zext i32 %i.bfb to i64
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr @sf_rl_vlc, i64 %i.bfc ; 2 uses
  %i.bfe = load i16, ptr %i.bfd, align 4, !tbaa !53
  %i.bff = sext i16 %i.bfe to i32
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfd, i64 2
  %i.bfh = load i16, ptr %i.bfg, align 2, !tbaa !53
  %i.bfi = sext i16 %i.bfh to i32
  br label %get_vlc2.exit.i.i

get_vlc2.exit.i.i:                                ; preds = %bb.dp, %bb.do, %bb.dn
  %.167.i.i.i = phi i32 [ %i.bde, %bb.dn ], [ %i.ber, %bb.dp ], [ %i.bdx, %bb.do ]
  %.163.i.i.i = phi i32 [ %i.bdr, %bb.dn ], [ %i.bff, %bb.dp ], [ %i.bel, %bb.do ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.bdu, %bb.dn ], [ %i.bfi, %bb.dp ], [ %i.beo, %bb.do ]
  %i.bfj = add i32 %.1.i.i.i, %.167.i.i.i
  %i.bfk = call i32 @llvm.umin.i32(i32 %i.bdf, i32 %i.bfj) ; 8 uses
  store i32 %i.bfk, ptr %i.bx, align 16, !tbaa !141
  switch i32 %.163.i.i.i, label %bb.dr [
    i32 0, label %bb.dq
    i32 1, label %.thread141.i.i
  ]

bb.dq:                                            ; preds = %get_vlc2.exit.i.i
  %i.bfl = lshr i32 %i.bfk, 3
  %i.bfm = zext nneg i32 %i.bfl to i64
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bfm
  %i.bfo = load i32, ptr %i.bfn, align 1, !tbaa !53
  %i.bfp = call i32 @llvm.bswap.i32(i32 %i.bfo)
  %i.bfq = and i32 %i.bfk, 7
  %i.bfr = shl i32 %i.bfp, %i.bfq                 ; 3 uses
  %i.bfs = lshr i32 %i.bfr, 18
  %i.bft = add i32 %i.bfk, 14
  %i.bfu = call i32 @llvm.umin.i32(i32 %i.bdf, i32 %i.bft)
  store i32 %i.bfu, ptr %i.bx, align 16, !tbaa !141
  %i.bfv = lshr i32 %i.bfr, 24
  %i.bfw = lshr i32 %i.bfr, 19
  %i.bfx = and i32 %i.bfw, 31
  br label %bb.ds

bb.dr:                                            ; preds = %get_vlc2.exit.i.i
  %i.bfy = sext i32 %.163.i.i.i to i64            ; 2 uses
  %i.bfz = getelementptr inbounds i8, ptr @scale_rl_run, i64 %i.bfy
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !53
  %i.bgb = zext i8 %i.bga to i32
  %i.bgc = getelementptr inbounds i8, ptr @scale_rl_level, i64 %i.bfy
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !53
  %i.bge = zext i8 %i.bgd to i32
  %i.bgf = lshr i32 %i.bfk, 3
  %i.bgg = zext nneg i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bgg
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !53
  %i.bgj = icmp slt i32 %i.bfk, %i.bdf
  %i.bgk = zext i1 %i.bgj to i32
  %spec.select.i134.i.i = add i32 %i.bfk, %i.bgk
  %i.bgl = zext i8 %i.bgi to i32
  %i.bgm = and i32 %i.bfk, 7
  %i.bgn = shl nuw nsw i32 %i.bgl, %i.bgm
  %i.bgo = lshr i32 %i.bgn, 7
  store i32 %spec.select.i134.i.i, ptr %i.bx, align 16, !tbaa !141
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.0109.i.i = phi i32 [ %i.bgb, %bb.dr ], [ %i.bfx, %bb.dq ]
  %.0108.i.i = phi i32 [ %i.bge, %bb.dr ], [ %i.bfv, %bb.dq ]
  %.0107.in.in.i.i = phi i32 [ %i.bgo, %bb.dr ], [ %i.bfs, %bb.dq ]
  %i.bgp = add nuw nsw i32 %.0109.i.i, %.0111147.i.i ; 3 uses
  %.not128.i.i = icmp slt i32 %i.bgp, %i.axf
  br i1 %.not128.i.i, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %.0107.in.i.i = and i32 %.0107.in.in.i.i, 1     ; 2 uses
  %.0107.i.i = add nsw i32 %.0107.in.i.i, -1
  %i.bgq = xor i32 %.0107.i.i, %.0108.i.i
  %.0107.neg.i.i = xor i32 %.0107.in.i.i, 1
  %i.bgr = add nsw i32 %i.bgq, %.0107.neg.i.i
  %i.bgs = zext nneg i32 %i.bgp to i64
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.bgs ; 2 uses
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !59
  %i.bgv = add nsw i32 %i.bgr, %i.bgu
  store i32 %i.bgv, ptr %i.bgt, align 4, !tbaa !59
  %i.bgw = add nuw nsw i32 %i.bgp, 1              ; 2 uses
  %i.bgx = icmp slt i32 %i.bgw, %i.axf
  br i1 %i.bgx, label %bb.dn, label %.thread141.i.i, !llvm.loop !232

.thread141.i.i:                                   ; preds = %bb.dt, %get_vlc2.exit.i.i, %get_vlc2.exit133.i.i, %bb.dk, %.preheader.i354.i
  %i.bgy = zext i1 %.not.i347.i to i8
  store i8 %i.bgy, ptr %i.axp, align 16, !tbaa !225
  %i.bgz = load i8, ptr %i.sl, align 16, !tbaa !181
  %i.bha = getelementptr inbounds nuw i8, ptr %i.axn, i64 400
  store i8 %i.bgz, ptr %i.bha, align 16, !tbaa !227
  store i8 1, ptr %i.axv, align 16, !tbaa !173
  br label %bb.du

bb.du:                                            ; preds = %.thread141.i.i, %bb.di
  %i.bhb = load i32, ptr %i.axs, align 4, !tbaa !59 ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.axn, i64 148 ; 2 uses
  store i32 %i.bhb, ptr %i.bhc, align 4, !tbaa !233
  br i1 %i.axh, label %.lr.ph155.preheader.i.i, label %._crit_edge.i.i

.lr.ph155.preheader.i.i:                          ; preds = %bb.du
  %.1117152.i.i = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  br label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %.lr.ph155.i.i, %.lr.ph155.preheader.i.i
  %.1117154.i.i = phi ptr [ %.1117.i.i, %.lr.ph155.i.i ], [ %.1117152.i.i, %.lr.ph155.preheader.i.i ] ; 2 uses
  %storemerge153.i.i = phi i32 [ %..i.i, %.lr.ph155.i.i ], [ %i.bhb, %.lr.ph155.preheader.i.i ]
  %i.bhd = load i32, ptr %.1117154.i.i, align 4, !tbaa !59
  %..i.i = call i32 @llvm.smax.i32(i32 %storemerge153.i.i, i32 %i.bhd) ; 2 uses
  store i32 %..i.i, ptr %i.bhc, align 4, !tbaa !233
  %.1117.i.i = getelementptr inbounds nuw i8, ptr %.1117154.i.i, i64 4 ; 2 uses
  %i.bhe = icmp ult ptr %.1117.i.i, %i.axu
  br i1 %i.bhe, label %.lr.ph155.i.i, label %._crit_edge.i.i, !llvm.loop !234

._crit_edge.i.i:                                  ; preds = %.lr.ph155.i.i, %bb.du
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1 ; 2 uses
  %exitcond165.not.i.i = icmp eq i64 %indvars.iv.next162.i.i, %wide.trip.count164.i.i.pre-phi
  br i1 %exitcond165.not.i.i, label %.thread387.i, label %bb.dg, !llvm.loop !235

bb.dv:                                            ; preds = %bb.ds
  %i.bhf = load ptr, ptr %0, align 16, !tbaa !92
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhf, i32 noundef 16, ptr noundef nonnull @.str.54) #9
  br label %bb.gb

.thread387.i:                                     ; preds = %._crit_edge.i.i, %bb.cm
  %i.bhg = phi i8 [ %i.aqq, %bb.cm ], [ %i.avh, %._crit_edge.i.i ] ; 2 uses
  %i.bhh = icmp sgt i8 %i.bhg, 0
  br i1 %i.bhh, label %.lr.ph455.i, label %._crit_edge456.i

.lr.ph455.i:                                      ; preds = %.thread387.i
  %i.bhi = shl nuw nsw i32 %.0261.lcssa571.i, 2
  %i.bhj = zext nneg i32 %i.bhi to i64
  br label %bb.dw

bb.dw:                                            ; preds = %decode_coeffs.exit.i, %.lr.ph455.i
  %indvars.iv512.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next513.i, %decode_coeffs.exit.i ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.sk, i64 %indvars.iv512.i
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !53
  %i.bhm = sext i8 %i.bhl to i64
  %i.bhn = getelementptr inbounds [49584 x i8], ptr %i.cc, i64 %i.bhm ; 4 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 2
  %i.bhp = load i8, ptr %i.bho, align 2, !tbaa !215
  %.not309.i = icmp eq i8 %i.bhp, 0
  br i1 %.not309.i, label %bb.fi, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.val.i = load i32, ptr %i.bx, align 16, !tbaa !141 ; 5 uses
  %i.bhq = load i32, ptr %i.st, align 16, !tbaa !143
  %i.bhr = icmp slt i32 %.val.i, %i.bhq
  br i1 %i.bhr, label %bb.dy, label %bb.fi

bb.dy:                                            ; preds = %bb.dx
  %i.bhs = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.bht = lshr i32 %.val.i, 3
  %i.bhu = zext nneg i32 %i.bht to i64
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhs, i64 %i.bhu
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !53
  %i.bhx = load i32, ptr %i.by, align 8, !tbaa !140
  %i.bhy = icmp slt i32 %.val.i, %i.bhx
  %i.bhz = zext i1 %i.bhy to i32
  %spec.select.i.i355.i = add nsw i32 %.val.i, %i.bhz
  %i.bia = zext i8 %i.bhw to i32
  %i.bib = and i32 %.val.i, 7
  %i.bic = shl nuw nsw i32 %i.bia, %i.bib
  %i.bid = lshr i32 %i.bic, 7
  store i32 %spec.select.i.i355.i, ptr %i.bx, align 16, !tbaa !141
  %i.bie = and i32 %i.bid, 1                      ; 2 uses
  %i.bif = zext nneg i32 %i.bie to i64
  %i.big = getelementptr inbounds nuw [8 x i8], ptr @coef_vlc, i64 %i.bif
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !130
  %.not.i356.i = icmp eq i32 %i.bie, 0            ; 2 uses
  %coef0_run.coef1_run.i.i = select i1 %.not.i356.i, ptr @coef0_run, ptr @coef1_run
  %coef0_level.coef1_level.i.i = select i1 %.not.i356.i, ptr @coef0_level, ptr @coef1_level
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhn, i64 416
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bhn, i64 408 ; 10 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.fg, %bb.dy
  %indvars.iv.i357.i = phi i64 [ 0, %bb.dy ], [ %indvars.iv.next.i360.i, %bb.fg ] ; 7 uses
  %.070111.i.i = phi i32 [ 0, %bb.dy ], [ %.2.3.i.i, %bb.fg ] ; 2 uses
  %.078110.i.i = phi i32 [ 0, %bb.dy ], [ %.280.3.i.i, %bb.fg ] ; 2 uses
  %indvars120.i.i = trunc i64 %indvars.iv.i357.i to i32 ; 2 uses
  %3 = or disjoint i32 %indvars120.i.i, 3
  %i.bik = load i16, ptr %i.bii, align 16, !tbaa !218
  %4 = zext i16 %i.bik to i32
  %i.bil = icmp samesign ult i32 %3, %4
  br i1 %i.bil, label %bb.ea, label %.critedge.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.bim = load i32, ptr %i.bx, align 16, !tbaa !141 ; 4 uses
  %i.bin = load i32, ptr %i.by, align 8, !tbaa !140 ; 8 uses
  %i.bio = load ptr, ptr %i.e, align 8, !tbaa !138 ; 8 uses
  %i.bip = lshr i32 %i.bim, 3
  %i.biq = zext nneg i32 %i.bip to i64
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.biq
  %i.bis = load i32, ptr %i.bir, align 1, !tbaa !53
  %i.bit = call i32 @llvm.bswap.i32(i32 %i.bis)
  %i.biu = and i32 %i.bim, 7
  %i.biv = shl i32 %i.bit, %i.biu
  %i.biw = lshr i32 %i.biv, 23
  %i.bix = zext nneg i32 %i.biw to i64
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr @vec4_vlc, i64 %i.bix ; 2 uses
  %i.biz = load i16, ptr %i.biy, align 4, !tbaa !53
  %i.bja = sext i16 %i.biz to i32                 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biy, i64 2
  %i.bjc = load i16, ptr %i.bjb, align 2, !tbaa !53 ; 2 uses
  %i.bjd = sext i16 %i.bjc to i32                 ; 2 uses
  %i.bje = icmp slt i16 %i.bjc, 0
  br i1 %i.bje, label %bb.eb, label %get_vlc2.exit102.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.bjf = add i32 %i.bim, 9
  %i.bjg = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.bjf) ; 3 uses
  %i.bjh = lshr i32 %i.bjg, 3
  %i.bji = zext nneg i32 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bji
  %i.bjk = load i32, ptr %i.bjj, align 1, !tbaa !53
  %i.bjl = call i32 @llvm.bswap.i32(i32 %i.bjk)
  %i.bjm = and i32 %i.bjg, 7
  %i.bjn = shl i32 %i.bjl, %i.bjm
  %i.bjo = add nsw i32 %i.bjd, 32
  %i.bjp = lshr i32 %i.bjn, %i.bjo
  %i.bjq = add i32 %i.bjp, %i.bja
  %i.bjr = zext i32 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr @vec4_vlc, i64 %i.bjr ; 2 uses
  %i.bjt = load i16, ptr %i.bjs, align 4, !tbaa !53
  %i.bju = sext i16 %i.bjt to i32
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 2
  %i.bjw = load i16, ptr %i.bjv, align 2, !tbaa !53
  %i.bjx = sext i16 %i.bjw to i32
  br label %get_vlc2.exit102.i.i

get_vlc2.exit102.i.i:                             ; preds = %bb.eb, %bb.ea
  %.167.i99.i.i = phi i32 [ %i.bim, %bb.ea ], [ %i.bjg, %bb.eb ]
  %.163.i100.i.i = phi i32 [ %i.bja, %bb.ea ], [ %i.bju, %bb.eb ] ; 5 uses
  %.1.i101.i.i = phi i32 [ %i.bjd, %bb.ea ], [ %i.bjx, %bb.eb ]
  %i.bjy = add i32 %.1.i101.i.i, %.167.i99.i.i
  %i.bjz = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.bjy) ; 5 uses
  store i32 %i.bjz, ptr %i.bx, align 16, !tbaa !141
  %i.bka = icmp slt i32 %.163.i100.i.i, 0
  br i1 %i.bka, label %.preheader.preheader.i.i, label %bb.eu

.preheader.preheader.i.i:                         ; preds = %get_vlc2.exit102.i.i
  %i.bkb = lshr i32 %i.bjz, 3
  %i.bkc = zext nneg i32 %i.bkb to i64
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bkc
  %i.bke = load i32, ptr %i.bkd, align 1, !tbaa !53
  %i.bkf = call i32 @llvm.bswap.i32(i32 %i.bke)
  %i.bkg = and i32 %i.bjz, 7
  %i.bkh = shl i32 %i.bkf, %i.bkg
  %i.bki = lshr i32 %i.bkh, 23
  %i.bkj = zext nneg i32 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr @vec2_vlc, i64 %i.bkj ; 2 uses
  %i.bkl = load i16, ptr %i.bkk, align 4, !tbaa !53
  %i.bkm = sext i16 %i.bkl to i32                 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkk, i64 2
  %i.bko = load i16, ptr %i.bkn, align 2, !tbaa !53 ; 2 uses
  %i.bkp = sext i16 %i.bko to i32                 ; 2 uses
  %i.bkq = icmp slt i16 %i.bko, 0
  br i1 %i.bkq, label %bb.ec, label %get_vlc2.exit98.i.i

bb.ec:                                            ; preds = %.preheader.preheader.i.i
  %i.bkr = add i32 %i.bjz, 9
  %i.bks = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.bkr) ; 3 uses
  %i.bkt = lshr i32 %i.bks, 3
  %i.bku = zext nneg i32 %i.bkt to i64
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bku
  %i.bkw = load i32, ptr %i.bkv, align 1, !tbaa !53
  %i.bkx = call i32 @llvm.bswap.i32(i32 %i.bkw)
  %i.bky = and i32 %i.bks, 7
  %i.bkz = shl i32 %i.bkx, %i.bky
  %i.bla = add nsw i32 %i.bkp, 32
  %i.blb = lshr i32 %i.bkz, %i.bla
  %i.blc = add i32 %i.blb, %i.bkm
  %i.bld = zext i32 %i.blc to i64
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr @vec2_vlc, i64 %i.bld ; 2 uses
  %i.blf = load i16, ptr %i.ble, align 4, !tbaa !53
  %i.blg = sext i16 %i.blf to i32
  %i.blh = getelementptr inbounds nuw i8, ptr %i.ble, i64 2
  %i.bli = load i16, ptr %i.blh, align 2, !tbaa !53
  %i.blj = sext i16 %i.bli to i32
  br label %get_vlc2.exit98.i.i

get_vlc2.exit98.i.i:                              ; preds = %bb.ec, %.preheader.preheader.i.i
  %.167.i95.i.i = phi i32 [ %i.bjz, %.preheader.preheader.i.i ], [ %i.bks, %bb.ec ]
  %.163.i96.i.i = phi i32 [ %i.bkm, %.preheader.preheader.i.i ], [ %i.blg, %bb.ec ] ; 3 uses
  %.1.i97.i.i = phi i32 [ %i.bkp, %.preheader.preheader.i.i ], [ %i.blj, %bb.ec ]
  %i.blk = add i32 %.1.i97.i.i, %.167.i95.i.i
  %i.bll = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.blk) ; 6 uses
  store i32 %i.bll, ptr %i.bx, align 16, !tbaa !141
  %i.blm = icmp slt i32 %.163.i96.i.i, 0
  br i1 %i.blm, label %bb.ed, label %bb.ek

bb.ed:                                            ; preds = %get_vlc2.exit98.i.i
  %i.bln = lshr i32 %i.bll, 3
  %i.blo = zext nneg i32 %i.bln to i64
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.blo
  %i.blq = load i32, ptr %i.blp, align 1, !tbaa !53
  %i.blr = call i32 @llvm.bswap.i32(i32 %i.blq)
  %i.bls = and i32 %i.bll, 7
  %i.blt = shl i32 %i.blr, %i.bls
  %i.blu = lshr i32 %i.blt, 23
  %i.blv = zext nneg i32 %i.blu to i64
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr @vec1_vlc, i64 %i.blv ; 2 uses
  %i.blx = load i16, ptr %i.blw, align 4, !tbaa !53
  %i.bly = sext i16 %i.blx to i32                 ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blw, i64 2
  %i.bma = load i16, ptr %i.blz, align 2, !tbaa !53 ; 2 uses
  %i.bmb = sext i16 %i.bma to i32                 ; 2 uses
  %i.bmc = icmp slt i16 %i.bma, 0
  br i1 %i.bmc, label %bb.ee, label %get_vlc2.exit94.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.bmd = add i32 %i.bll, 9
  %i.bme = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.bmd) ; 3 uses
  %i.bmf = lshr i32 %i.bme, 3
  %i.bmg = zext nneg i32 %i.bmf to i64
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bmg
  %i.bmi = load i32, ptr %i.bmh, align 1, !tbaa !53
  %i.bmj = call i32 @llvm.bswap.i32(i32 %i.bmi)
  %i.bmk = and i32 %i.bme, 7
  %i.bml = shl i32 %i.bmj, %i.bmk
  %i.bmm = add nsw i32 %i.bmb, 32
  %i.bmn = lshr i32 %i.bml, %i.bmm
  %i.bmo = add i32 %i.bmn, %i.bly
  %i.bmp = zext i32 %i.bmo to i64
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr @vec1_vlc, i64 %i.bmp ; 2 uses
  %i.bmr = load i16, ptr %i.bmq, align 4, !tbaa !53
  %i.bms = sext i16 %i.bmr to i32
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmq, i64 2
  %i.bmu = load i16, ptr %i.bmt, align 2, !tbaa !53
  %i.bmv = sext i16 %i.bmu to i32
  br label %get_vlc2.exit94.i.i

get_vlc2.exit94.i.i:                              ; preds = %bb.ee, %bb.ed
  %.167.i91.i.i = phi i32 [ %i.bll, %bb.ed ], [ %i.bme, %bb.ee ]
  %.163.i92.i.i = phi i32 [ %i.bly, %bb.ed ], [ %i.bms, %bb.ee ] ; 2 uses
  %.1.i93.i.i = phi i32 [ %i.bmb, %bb.ed ], [ %i.bmv, %bb.ee ]
  %i.bmw = add i32 %.1.i93.i.i, %.167.i91.i.i
  %i.bmx = call i32 @llvm.umin.i32(i32 %i.bin, i32 %i.bmw) ; 2 uses
  store i32 %i.bmx, ptr %i.bx, align 16, !tbaa !141
  %i.bmy = icmp eq i32 %.163.i92.i.i, 100
  br i1 %i.bmy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %get_vlc2.exit94.i.i
  %i.bmz = call i32 @ff_wma_get_large_val(ptr noundef nonnull %i.e) #9
  %i.bna = add i32 %i.bmz, 100
  %.pre.i365.i = load i32, ptr %i.bx, align 16, !tbaa !141
  %.pre119.i.i = load i32, ptr %i.by, align 8, !tbaa !140
  %.pre120.i.i = load ptr, ptr %i.e, align 8, !tbaa !138
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %get_vlc2.exit94.i.i
  %i.bnb = phi ptr [ %.pre120.i.i, %bb.ef ], [ %i.bio, %get_vlc2.exit94.i.i ] ; 3 uses
  %i.bnc = phi i32 [ %.pre119.i.i, %bb.ef ], [ %i.bin, %get_vlc2.exit94.i.i ] ; 3 uses
  %i.bnd = phi i32 [ %.pre.i365.i, %bb.ef ], [ %i.bmx, %get_vlc2.exit94.i.i ] ; 4 uses
  %.073.i.i = phi i32 [ %i.bna, %bb.ef ], [ %.163.i92.i.i, %get_vlc2.exit94.i.i ]
  %i.bne = lshr i32 %i.bnd, 3
  %i.bnf = zext nneg i32 %i.bne to i64
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnb, i64 %i.bnf
  %i.bnh = load i32, ptr %i.bng, align 1, !tbaa !53
  %i.bni = call i32 @llvm.bswap.i32(i32 %i.bnh)
  %i.bnj = and i32 %i.bnd, 7
  %i.bnk = shl i32 %i.bni, %i.bnj
  %i.bnl = lshr i32 %i.bnk, 23
  %i.bnm = zext nneg i32 %i.bnl to i64
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr @vec1_vlc, i64 %i.bnm ; 2 uses
  %i.bno = load i16, ptr %i.bnn, align 4, !tbaa !53
  %i.bnp = sext i16 %i.bno to i32                 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnn, i64 2
  %i.bnr = load i16, ptr %i.bnq, align 2, !tbaa !53 ; 2 uses
  %i.bns = sext i16 %i.bnr to i32                 ; 2 uses
  %i.bnt = icmp slt i16 %i.bnr, 0
  br i1 %i.bnt, label %bb.eh, label %get_vlc2.exit.i361.i

bb.eh:                                            ; preds = %bb.eg
  %i.bnu = add i32 %i.bnd, 9
  %i.bnv = call i32 @llvm.umin.i32(i32 %i.bnc, i32 %i.bnu) ; 3 uses
  %i.bnw = lshr i32 %i.bnv, 3
  %i.bnx = zext nneg i32 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnb, i64 %i.bnx
  %i.bnz = load i32, ptr %i.bny, align 1, !tbaa !53
  %i.boa = call i32 @llvm.bswap.i32(i32 %i.bnz)
  %i.bob = and i32 %i.bnv, 7
  %i.boc = shl i32 %i.boa, %i.bob
  %i.bod = add nsw i32 %i.bns, 32
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.btj = call i32 @llvm.umin.i32(i32 %i.bsq, i32 %i.bti) ; 3 uses
  %i.btk = lshr i32 %i.btj, 3
  %i.btl = zext nneg i32 %i.btk to i64
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bsp, i64 %i.btl
  %i.btn = load i32, ptr %i.btm, align 1, !tbaa !53
  %i.bto = call i32 @llvm.bswap.i32(i32 %i.btn)
  %i.btp = and i32 %i.btj, 7
  %i.btq = shl i32 %i.bto, %i.btp
  %i.btr = add nsw i32 %i.btg, 32
  %i.bts = lshr i32 %i.btq, %i.btr
  %i.btt = add i32 %i.bts, %i.btd
  %i.btu = zext i32 %i.btt to i64
  %i.btv = getelementptr inbounds nuw [4 x i8], ptr @vec1_vlc, i64 %i.btu ; 2 uses
  %i.btw = load i16, ptr %i.btv, align 4, !tbaa !53
  %i.btx = sext i16 %i.btw to i32
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btv, i64 2
  %i.btz = load i16, ptr %i.bty, align 2, !tbaa !53
  %i.bua = sext i16 %i.btz to i32
  br label %get_vlc2.exit.1.i.i

get_vlc2.exit.1.i.i:                              ; preds = %bb.er, %bb.eq
  %.167.i.1.i.i = phi i32 [ %i.bsr, %bb.eq ], [ %i.btj, %bb.er ]
  %.163.i.1.i.i = phi i32 [ %i.btd, %bb.eq ], [ %i.btx, %bb.er ] ; 2 uses
  %.1.i.1.i.i = phi i32 [ %i.btg, %bb.eq ], [ %i.bua, %bb.er ]
  %i.bub = add i32 %.1.i.1.i.i, %.167.i.1.i.i
  %i.buc = call i32 @llvm.umin.i32(i32 %i.bsq, i32 %i.bub)
  store i32 %i.buc, ptr %i.bx, align 16, !tbaa !141
  %i.bud = icmp eq i32 %.163.i.1.i.i, 100
  br i1 %i.bud, label %bb.es, label %bb.et

bb.es:                                            ; preds = %get_vlc2.exit.1.i.i
  %i.bue = call i32 @ff_wma_get_large_val(ptr noundef nonnull %i.e) #9
  %i.buf = add i32 %i.bue, 100
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %get_vlc2.exit.1.i.i
  %.072.1.i.i = phi i32 [ %i.buf, %bb.es ], [ %.163.i.1.i.i, %get_vlc2.exit.1.i.i ]
  %i.bug = uitofp nsz i32 %.073.1.i.i to float
  %i.buh = bitcast float %i.bug to i32
  %i.bui = uitofp nsz i32 %.072.1.i.i to float
  %i.buj = bitcast float %i.bui to i32
  br label %.loopexit.i359.i

bb.eu:                                            ; preds = %get_vlc2.exit102.i.i
  %i.buk = lshr i32 %.163.i100.i.i, 12
  %i.bul = zext nneg i32 %i.buk to i64
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr @decode_coeffs.fval_tab, i64 %i.bul
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !59
  %i.buo = lshr i32 %.163.i100.i.i, 8
  %i.bup = and i32 %i.buo, 15
  %i.buq = zext nneg i32 %i.bup to i64
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr @decode_coeffs.fval_tab, i64 %i.buq
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !59
  %i.but = lshr i32 %.163.i100.i.i, 4
  %i.buu = and i32 %i.but, 15
  %i.buv = zext nneg i32 %i.buu to i64
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr @decode_coeffs.fval_tab, i64 %i.buv
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !59
  %i.buy = and i32 %.163.i100.i.i, 15
  %i.buz = zext nneg i32 %i.buy to i64
  %i.bva = getelementptr inbounds nuw [4 x i8], ptr @decode_coeffs.fval_tab, i64 %i.buz
  %i.bvb = load i32, ptr %i.bva, align 4, !tbaa !59
  br label %.loopexit.i359.i

.loopexit.i359.i:                                 ; preds = %bb.eu, %bb.et, %bb.em
  %.sroa.14.0.i.i = phi i32 [ %i.bvb, %bb.eu ], [ %i.buj, %bb.et ], [ %i.bra, %bb.em ] ; 2 uses
  %.sroa.10.0.i.i = phi i32 [ %i.bux, %bb.eu ], [ %i.buh, %bb.et ], [ %i.bqw, %bb.em ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %i.bus, %bb.eu ], [ %.sroa.6.0.i.i, %bb.et ], [ %.sroa.6.0.i.i, %bb.em ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %i.bun, %bb.eu ], [ %.sroa.0.0.i.i, %bb.et ], [ %.sroa.0.0.i.i, %bb.em ] ; 2 uses
  %.not90.i.i = icmp eq i32 %.sroa.0.1.i.i, 0
  br i1 %.not90.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.loopexit.i359.i
  %i.bvc = load i32, ptr %i.bx, align 16, !tbaa !141 ; 4 uses
  %i.bvd = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.bve = lshr i32 %i.bvc, 3
  %i.bvf = zext nneg i32 %i.bve to i64
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvd, i64 %i.bvf
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !53
  %i.bvi = load i32, ptr %i.by, align 8, !tbaa !140
  %i.bvj = icmp slt i32 %i.bvc, %i.bvi
  %i.bvk = zext i1 %i.bvj to i32
  %spec.select.i103.i.i = add i32 %i.bvc, %i.bvk
  %i.bvl = zext i8 %i.bvh to i32
  %i.bvm = and i32 %i.bvc, 7
  %i.bvn = shl nuw nsw i32 %i.bvl, %i.bvm
  %i.bvo = lshr i32 %i.bvn, 7
  store i32 %spec.select.i103.i.i, ptr %i.bx, align 16, !tbaa !141
  %i.bvp = xor i32 %i.bvo, -1
  %i.bvq = shl i32 %i.bvp, 31
  %i.bvr = xor i32 %i.bvq, %.sroa.0.1.i.i
  %i.bvs = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.bvs, i64 %indvars.iv.i357.i
  store i32 %i.bvr, ptr %i.bvt, align 4, !tbaa !53
  br label %bb.ex

bb.ew:                                            ; preds = %.loopexit.i359.i
  %i.bvu = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bvv = getelementptr inbounds nuw [4 x i8], ptr %i.bvu, i64 %indvars.iv.i357.i
  store float 0.000000e+00, ptr %i.bvv, align 4, !tbaa !125
  %i.bvw = add nsw i32 %.078110.i.i, 1
  %i.bvx = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bvy = ashr i16 %i.bvx, 8
  %i.bvz = sext i16 %i.bvy to i32
  %i.bwa = icmp sge i32 %.078110.i.i, %i.bvz
  %i.bwb = zext i1 %i.bwa to i32
  %i.bwc = or i32 %.070111.i.i, %i.bwb
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.280.i.i = phi i32 [ 0, %bb.ev ], [ %i.bvw, %bb.ew ] ; 2 uses
  %.2.i.i = phi i32 [ %.070111.i.i, %bb.ev ], [ %i.bwc, %bb.ew ] ; 2 uses
  %indvars.iv.next114.i.i.a = or disjoint i64 %indvars.iv.i357.i, 1 ; 2 uses
  %.not90.1.i.i = icmp eq i32 %.sroa.6.1.i.i, 0
  br i1 %.not90.1.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bwd = load i32, ptr %i.bx, align 16, !tbaa !141 ; 4 uses
  %i.bwe = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.bwf = lshr i32 %i.bwd, 3
  %i.bwg = zext nneg i32 %i.bwf to i64
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwe, i64 %i.bwg
  %i.bwi = load i8, ptr %i.bwh, align 1, !tbaa !53
  %i.bwj = load i32, ptr %i.by, align 8, !tbaa !140
  %i.bwk = icmp slt i32 %i.bwd, %i.bwj
  %i.bwl = zext i1 %i.bwk to i32
  %spec.select.i103.1.i.i = add i32 %i.bwd, %i.bwl
  %i.bwm = zext i8 %i.bwi to i32
  %i.bwn = and i32 %i.bwd, 7
  %i.bwo = shl nuw nsw i32 %i.bwm, %i.bwn
  %i.bwp = lshr i32 %i.bwo, 7
  store i32 %spec.select.i103.1.i.i, ptr %i.bx, align 16, !tbaa !141
  %i.bwq = xor i32 %i.bwp, -1
  %i.bwr = shl i32 %i.bwq, 31
  %i.bws = xor i32 %i.bwr, %.sroa.6.1.i.i
  %i.bwt = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bwu = getelementptr inbounds nuw [4 x i8], ptr %i.bwt, i64 %indvars.iv.next114.i.i.a
  store i32 %i.bws, ptr %i.bwu, align 4, !tbaa !53
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.bwv = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bww = getelementptr inbounds nuw [4 x i8], ptr %i.bwv, i64 %indvars.iv.next114.i.i.a
  store float 0.000000e+00, ptr %i.bww, align 4, !tbaa !125
  %i.bwx = add nsw i32 %.280.i.i, 1
  %i.bwy = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bwz = ashr i16 %i.bwy, 8
  %i.bxa = sext i16 %i.bwz to i32
  %i.bxb = icmp sge i32 %.280.i.i, %i.bxa
  %i.bxc = zext i1 %i.bxb to i32
  %i.bxd = or i32 %.2.i.i, %i.bxc
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.280.1.i.i = phi i32 [ 0, %bb.ey ], [ %i.bwx, %bb.ez ] ; 2 uses
  %.2.1.i.i = phi i32 [ %.2.i.i, %bb.ey ], [ %i.bxd, %bb.ez ] ; 2 uses
  %indvars.iv.next114.1.i.i = or disjoint i64 %indvars.iv.i357.i, 2 ; 2 uses
  %.not90.2.i.i = icmp eq i32 %.sroa.10.0.i.i, 0
  br i1 %.not90.2.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bxe = load i32, ptr %i.bx, align 16, !tbaa !141 ; 4 uses
  %i.bxf = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.bxg = lshr i32 %i.bxe, 3
  %i.bxh = zext nneg i32 %i.bxg to i64
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxf, i64 %i.bxh
  %i.bxj = load i8, ptr %i.bxi, align 1, !tbaa !53
  %i.bxk = load i32, ptr %i.by, align 8, !tbaa !140
  %i.bxl = icmp slt i32 %i.bxe, %i.bxk
  %i.bxm = zext i1 %i.bxl to i32
  %spec.select.i103.2.i.i = add i32 %i.bxe, %i.bxm
  %i.bxn = zext i8 %i.bxj to i32
  %i.bxo = and i32 %i.bxe, 7
  %i.bxp = shl nuw nsw i32 %i.bxn, %i.bxo
  %i.bxq = lshr i32 %i.bxp, 7
  store i32 %spec.select.i103.2.i.i, ptr %i.bx, align 16, !tbaa !141
  %i.bxr = xor i32 %i.bxq, -1
  %i.bxs = shl i32 %i.bxr, 31
  %i.bxt = xor i32 %i.bxs, %.sroa.10.0.i.i
  %i.bxu = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %indvars.iv.next114.1.i.i
  store i32 %i.bxt, ptr %i.bxv, align 4, !tbaa !53
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa
  %i.bxw = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %indvars.iv.next114.1.i.i
  store float 0.000000e+00, ptr %i.bxx, align 4, !tbaa !125
  %i.bxy = add nsw i32 %.280.1.i.i, 1
  %i.bxz = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bya = ashr i16 %i.bxz, 8
  %i.byb = sext i16 %i.bya to i32
  %i.byc = icmp sge i32 %.280.1.i.i, %i.byb
  %i.byd = zext i1 %i.byc to i32
  %i.bye = or i32 %.2.1.i.i, %i.byd
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.280.2.i.i = phi i32 [ 0, %bb.fb ], [ %i.bxy, %bb.fc ] ; 2 uses
  %.2.2.i.i = phi i32 [ %.2.1.i.i, %bb.fb ], [ %i.bye, %bb.fc ] ; 2 uses
  %indvars.iv.next116.2.i.i = or disjoint i64 %indvars.iv.i357.i, 3 ; 2 uses
  %.not90.3.i.i = icmp eq i32 %.sroa.14.0.i.i, 0
  br i1 %.not90.3.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.byf = load i32, ptr %i.bx, align 16, !tbaa !141 ; 4 uses
  %i.byg = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.byh = lshr i32 %i.byf, 3
  %i.byi = zext nneg i32 %i.byh to i64
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byg, i64 %i.byi
  %i.byk = load i8, ptr %i.byj, align 1, !tbaa !53
  %i.byl = load i32, ptr %i.by, align 8, !tbaa !140
  %i.bym = icmp slt i32 %i.byf, %i.byl
  %i.byn = zext i1 %i.bym to i32
  %spec.select.i103.3.i.i = add i32 %i.byf, %i.byn
  %i.byo = zext i8 %i.byk to i32
  %i.byp = and i32 %i.byf, 7
  %i.byq = shl nuw nsw i32 %i.byo, %i.byp
  %i.byr = lshr i32 %i.byq, 7
  store i32 %spec.select.i103.3.i.i, ptr %i.bx, align 16, !tbaa !141
  %i.bys = xor i32 %i.byr, -1
  %i.byt = shl i32 %i.bys, 31
  %i.byu = xor i32 %i.byt, %.sroa.14.0.i.i
  %i.byv = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.byw = getelementptr inbounds nuw [4 x i8], ptr %i.byv, i64 %indvars.iv.next116.2.i.i
  store i32 %i.byu, ptr %i.byw, align 4, !tbaa !53
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.byx = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %i.byx, i64 %indvars.iv.next116.2.i.i
  store float 0.000000e+00, ptr %i.byy, align 4, !tbaa !125
  %i.byz = add nsw i32 %.280.2.i.i, 1
  %i.bza = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bzb = ashr i16 %i.bza, 8
  %i.bzc = sext i16 %i.bzb to i32
  %i.bzd = icmp sge i32 %.280.2.i.i, %i.bzc
  %i.bze = zext i1 %i.bzd to i32
  %i.bzf = or i32 %.2.2.i.i, %i.bze
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.280.3.i.i = phi i32 [ 0, %bb.fe ], [ %i.byz, %bb.ff ]
  %.2.3.i.i = phi i32 [ %.2.2.i.i, %bb.fe ], [ %i.bzf, %bb.ff ] ; 2 uses
  %indvars.iv.next.i360.i = add nuw nsw i64 %indvars.iv.i357.i, 4 ; 2 uses
  %i.bzg = load i8, ptr %i.sx, align 1, !tbaa !217
  %i.bzh = icmp eq i8 %i.bzg, 0
  %i.bzi = icmp ne i32 %.2.3.i.i, 0
  %or.cond.i.i = select i1 %i.bzh, i1 %i.bzi, i1 false
  br i1 %or.cond.i.i, label %.critedge.split.loop.exit.i.i, label %bb.dz, !llvm.loop !236

.critedge.split.loop.exit.i.i:                    ; preds = %bb.fg
  %indvars.le.i.i = trunc i64 %indvars.iv.next.i360.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.dz, %.critedge.split.loop.exit.i.i
  %.081.lcssa.i.i = phi i32 [ %indvars.le.i.i, %.critedge.split.loop.exit.i.i ], [ %indvars120.i.i, %bb.dz ] ; 4 uses
  %i.bzj = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bzk = sext i16 %i.bzj to i32                 ; 2 uses
  %i.bzl = icmp slt i32 %.081.lcssa.i.i, %i.bzk
  br i1 %i.bzl, label %bb.fh, label %decode_coeffs.exit.i

bb.fh:                                            ; preds = %.critedge.i.i
  %i.bzm = load ptr, ptr %i.bij, align 8, !tbaa !184
  %5 = sext i32 %.081.lcssa.i.i to i64
  %6 = getelementptr inbounds [4 x i8], ptr %i.bzm, i64 %5
  %i.bzn = sub nsw i32 %i.bzk, %.081.lcssa.i.i
  %i.bzo = zext nneg i32 %i.bzn to i64
  %i.bzp = shl nuw nsw i64 %i.bzo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %i.bzp, i1 false)
  %i.bzq = load ptr, ptr %0, align 16, !tbaa !92
  %i.bzr = load ptr, ptr %i.bij, align 8, !tbaa !184
  %i.bzs = load i16, ptr %i.sr, align 8, !tbaa !187
  %i.bzt = sext i16 %i.bzs to i32                 ; 2 uses
  %i.bzu = load i8, ptr %i.ss, align 1, !tbaa !188
  %i.bzv = sext i8 %i.bzu to i32
  %i.bzw = call i32 @ff_wma_run_level_decode(ptr noundef %i.bzq, ptr noundef nonnull %i.e, ptr noundef %i.bih, ptr noundef nonnull %coef0_level.coef1_level.i.i, ptr noundef nonnull %coef0_run.coef1_run.i.i, i32 noundef 1, ptr noundef %i.bzr, i32 noundef %.081.lcssa.i.i, i32 noundef %i.bzt, i32 noundef %i.bzt, i32 noundef %i.bzv, i32 noundef 0) #9 ; 0 uses
  br label %decode_coeffs.exit.i

bb.fi:                                            ; preds = %bb.dx, %bb.dw
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bhn, i64 408
  %i.bzy = load ptr, ptr %i.bzx, align 8, !tbaa !184
  call void @llvm.memset.p0.i64(ptr align 4 %i.bzy, i8 0, i64 %i.bhj, i1 false)
  br label %decode_coeffs.exit.i

decode_coeffs.exit.i:                             ; preds = %bb.fi, %bb.fh, %.critedge.i.i
  %indvars.iv.next513.i = add nuw nsw i64 %indvars.iv512.i, 1 ; 2 uses
  %i.bzz = load i8, ptr %i.sj, align 1, !tbaa !177 ; 2 uses
  %i.caa = sext i8 %i.bzz to i64
  %i.cab = icmp slt i64 %indvars.iv.next513.i, %i.caa
  br i1 %i.cab, label %bb.dw, label %._crit_edge456.i, !llvm.loop !237

._crit_edge456.i:                                 ; preds = %decode_coeffs.exit.i, %.thread387.i, %bb.db
  %.lcssa396.i = phi i8 [ %i.bhg, %.thread387.i ], [ %i.avh, %bb.db ], [ %i.bzz, %decode_coeffs.exit.i ] ; 2 uses
  br i1 %.0277.lcssa.i, label %.loopexit.i, label %bb.fj

bb.fj:                                            ; preds = %._crit_edge456.i
  %.not11.i.i = icmp samesign ult i32 %.0261.lcssa571.i, 256 ; 2 uses
  %i.cac = lshr i32 %.0261.lcssa571.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %.0261.lcssa571.i, i32 %i.cac
  %i.cad = zext nneg i32 %.110.i.i to i64
  %i.cae = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cad
  %i.caf = load i8, ptr %i.cae, align 1, !tbaa !53
  %i.cag = zext i8 %i.caf to i64
  %i.cah = select i1 %.not11.i.i, i64 -6, i64 2
  %i.cai = add nsw i64 %i.cah, %i.cag             ; 2 uses
  %i.caj = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.cai
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !238
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %i.cai
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !82
  %i.can = load i8, ptr %i.su, align 2, !tbaa !189 ; 3 uses
  %.not113.i.i = icmp eq i8 %i.can, 0
  br i1 %.not113.i.i, label %inverse_channel_transform.exit.i, label %.lr.ph109.i.i

.lr.ph109.i.i:                                    ; preds = %bb.fj, %bb.fs
  %.pre136137.i.i = phi i8 [ %.pre136138.i.i, %bb.fs ], [ %i.can, %bb.fj ] ; 2 uses
  %i.cao = phi i8 [ %i.cem, %bb.fs ], [ %i.can, %bb.fj ]
  %indvars.iv132.i.i = phi i64 [ %indvars.iv.next133.i.i, %bb.fs ], [ 0, %bb.fj ] ; 2 uses
  %i.cap = getelementptr inbounds nuw [352 x i8], ptr %i.sv, i64 %indvars.iv132.i.i ; 6 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 1
  %i.car = load i8, ptr %i.caq, align 1, !tbaa !192
  %.not.i366.i = icmp eq i8 %i.car, 0
  br i1 %.not.i366.i, label %bb.fs, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph109.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cas = load i8, ptr %i.cap, align 8, !tbaa !190
  %.fr.i = freeze i8 %i.cas                       ; 2 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cap, i64 288 ; 5 uses
  %i.cau = zext i8 %.fr.i to i64                  ; 2 uses
  %.idx.i367.i = shl nuw nsw i64 %i.cau, 3
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cat, i64 %.idx.i367.i ; 2 uses
  %i.caw = load i8, ptr %i.sn, align 4, !tbaa !182 ; 3 uses
  %i.cax = icmp sgt i8 %i.caw, 0
  br i1 %i.cax, label %.lr.ph106.i.i, label %._crit_edge.i368.i

.lr.ph106.i.i:                                    ; preds = %bb.fk
  %i.cay = load ptr, ptr %i.sp, align 8, !tbaa !183 ; 4 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cap, i64 2 ; 2 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cap, i64 296 ; 2 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cap, i64 32
  %.idx116.i.i = shl nuw nsw i64 %i.cau, 2
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.i
  %.not114.i.i = icmp eq i8 %.fr.i, 0
  br i1 %.not114.i.i, label %.lr.ph106.i.split.us.i, label %.lr.ph106.i.split.i

.lr.ph106.i.split.us.i:                           ; preds = %.lr.ph106.i.i, %.loopexit.i369.us.i
  %i.cbd = phi i8 [ %i.cce, %.loopexit.i369.us.i ], [ %i.caw, %.lr.ph106.i.i ] ; 2 uses
  %i.cbe = phi ptr [ %i.ccf, %.loopexit.i369.us.i ], [ %i.cay, %.lr.ph106.i.i ] ; 2 uses
  %.069105.i.us.i = phi ptr [ %i.cbf, %.loopexit.i369.us.i ], [ %i.caz, %.lr.ph106.i.i ] ; 2 uses
  %.073104.i.us.i = phi ptr [ %i.ccg, %.loopexit.i369.us.i ], [ %i.cay, %.lr.ph106.i.i ] ; 4 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.069105.i.us.i, i64 1
  %i.cbg = load i8, ptr %.069105.i.us.i, align 1, !tbaa !53
  %i.cbh = icmp eq i8 %i.cbg, 1
  br i1 %i.cbh, label %.loopexit.i369.us.i, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph106.i.split.us.i
  %i.cbi = load i8, ptr %i.aa, align 2, !tbaa !43
  %i.cbj = icmp eq i8 %i.cbi, 2
  br i1 %i.cbj, label %bb.fm, label %.loopexit.i369.us.i

bb.fm:                                            ; preds = %bb.fl
  %i.cbk = getelementptr inbounds nuw i8, ptr %.073104.i.us.i, i64 2
  %i.cbl = load i16, ptr %i.cbk, align 2, !tbaa !116
  %i.cbm = load i16, ptr %i.sr, align 8, !tbaa !187
  %.80.i.us.i = call i16 @llvm.smin.i16(i16 %i.cbl, i16 %i.cbm)
  %i.cbn = sext i16 %.80.i.us.i to i32
  %i.cbo = load i16, ptr %.073104.i.us.i, align 2, !tbaa !116 ; 2 uses
  %i.cbp = sext i16 %i.cbo to i32
  %i.cbq = sub nsw i32 %i.cbn, %i.cbp             ; 2 uses
  %i.cbr = load ptr, ptr %i.tb, align 8, !tbaa !123
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbr, i64 24
  %i.cbt = load ptr, ptr %i.cbs, align 8, !tbaa !240
  %i.cbu = load ptr, ptr %i.cat, align 8, !tbaa !126
  %i.cbv = sext i16 %i.cbo to i64
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.cbv ; 2 uses
  call void %i.cbt(ptr noundef %i.cbw, ptr noundef %i.cbw, float noundef f0x3FB50000, i32 noundef %i.cbq) #9, !inline_history !242
  %i.cbx = load ptr, ptr %i.tb, align 8, !tbaa !123
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbx, i64 24
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !240
  %i.cca = load ptr, ptr %i.cba, align 8, !tbaa !126
  %i.ccb = load i16, ptr %.073104.i.us.i, align 2, !tbaa !116
  %i.ccc = sext i16 %i.ccb to i64
  %i.ccd = getelementptr inbounds [4 x i8], ptr %i.cca, i64 %i.ccc ; 2 uses
  call void %i.cbz(ptr noundef %i.ccd, ptr noundef %i.ccd, float noundef f0x3FB50000, i32 noundef %i.cbq) #9, !inline_history !242
  %.pre.i370.us.i = load ptr, ptr %i.sp, align 8, !tbaa !183
  %.pre135.i.us.i = load i8, ptr %i.sn, align 4, !tbaa !182
  br label %.loopexit.i369.us.i

.loopexit.i369.us.i:                              ; preds = %bb.fm, %bb.fl, %.lr.ph106.i.split.us.i
  %i.cce = phi i8 [ %.pre135.i.us.i, %bb.fm ], [ %i.cbd, %bb.fl ], [ %i.cbd, %.lr.ph106.i.split.us.i ] ; 2 uses
  %i.ccf = phi ptr [ %.pre.i370.us.i, %bb.fm ], [ %i.cbe, %bb.fl ], [ %i.cbe, %.lr.ph106.i.split.us.i ] ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %.073104.i.us.i, i64 2 ; 2 uses
  %i.cch = sext i8 %i.cce to i64
  %i.cci = getelementptr inbounds [2 x i8], ptr %i.ccf, i64 %i.cch
  %i.ccj = icmp ult ptr %i.ccg, %i.cci
  br i1 %i.ccj, label %.lr.ph106.i.split.us.i, label %._crit_edge.loopexit.i.i, !llvm.loop !243

.lr.ph106.i.split.i:                              ; preds = %.lr.ph106.i.i, %.loopexit.i369.i
  %i.cck = phi i8 [ %i.ceg, %.loopexit.i369.i ], [ %i.caw, %.lr.ph106.i.i ] ; 3 uses
  %i.ccl = phi ptr [ %i.ceh, %.loopexit.i369.i ], [ %i.cay, %.lr.ph106.i.i ] ; 3 uses
  %.069105.i.i = phi ptr [ %i.ccm, %.loopexit.i369.i ], [ %i.caz, %.lr.ph106.i.i ] ; 2 uses
  %.073104.i.i = phi ptr [ %i.cei, %.loopexit.i369.i ], [ %i.cay, %.lr.ph106.i.i ] ; 6 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %.069105.i.i, i64 1
  %i.ccn = load i8, ptr %.069105.i.i, align 1, !tbaa !53
  %i.cco = icmp eq i8 %i.ccn, 1
  br i1 %i.cco, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %.lr.ph106.i.split.i
  %i.ccp = load i16, ptr %.073104.i.i, align 2, !tbaa !116 ; 2 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %.073104.i.i, i64 2
  %i.ccr = load i16, ptr %i.ccq, align 2, !tbaa !116
  %i.ccs = load i16, ptr %i.sr, align 8, !tbaa !187
  %..i371.i = call i16 @llvm.smin.i16(i16 %i.ccr, i16 %i.ccs) ; 2 uses
  %.not468.i = icmp slt i16 %i.ccp, %..i371.i
  br i1 %.not468.i, label %.lr.ph93.split.us.split.us.preheader.i.i, label %.loopexit.i369.i

.lr.ph93.split.us.split.us.preheader.i.i:         ; preds = %bb.fn
  %i.cct = sext i16 %i.ccp to i64
  %wide.trip.count.i373.i = sext i16 %..i371.i to i64
  br label %.lr.ph.us.us.i.i

bb.fo:                                            ; preds = %.lr.ph.us.us.i.i, %bb.fo
  %.06683.us.us.i.i = phi ptr [ %i.cat, %.lr.ph.us.us.i.i ], [ %i.ccy, %bb.fo ] ; 2 uses
  %.06782.us.us.i.i = phi ptr [ %i.a, %.lr.ph.us.us.i.i ], [ %i.ccx, %bb.fo ] ; 2 uses
  %i.ccu = load ptr, ptr %.06683.us.us.i.i, align 8, !tbaa !126
  %i.ccv = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %indvars.iv.i374.i
  %i.ccw = load float, ptr %i.ccv, align 4, !tbaa !125
  %i.ccx = getelementptr inbounds nuw i8, ptr %.06782.us.us.i.i, i64 4
  store float %i.ccw, ptr %.06782.us.us.i.i, align 4, !tbaa !125
  %i.ccy = getelementptr inbounds nuw i8, ptr %.06683.us.us.i.i, i64 8 ; 2 uses
  %i.ccz = icmp ult ptr %i.ccy, %i.cav
  br i1 %i.ccz, label %bb.fo, label %.preheader.us.us.us.i.i, !llvm.loop !244

.lr.ph.us.us.i.i:                                 ; preds = %._crit_edge91.split.us.us.us.i.i, %.lr.ph93.split.us.split.us.preheader.i.i
  %indvars.iv.i374.i = phi i64 [ %i.cct, %.lr.ph93.split.us.split.us.preheader.i.i ], [ %indvars.iv.next.i375.i, %._crit_edge91.split.us.us.us.i.i ] ; 3 uses
  br label %bb.fo

.preheader.us.us.us.i.i:                          ; preds = %bb.fo, %._crit_edge.us.us.us.i.i
  %.190.us.us.us.i.i = phi ptr [ %i.cdi, %._crit_edge.us.us.us.i.i ], [ %i.cat, %bb.fo ] ; 2 uses
  %.07089.us.us.us.i.i = phi ptr [ %i.cdc, %._crit_edge.us.us.us.i.i ], [ %i.cbb, %bb.fo ]
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %.preheader.us.us.us.i.i
  %.06586.us.us.us.i.i = phi float [ 0.000000e+00, %.preheader.us.us.us.i.i ], [ %i.cde, %bb.fp ]
  %.16885.us.us.us.i.i = phi ptr [ %i.a, %.preheader.us.us.us.i.i ], [ %i.cda, %bb.fp ] ; 2 uses
  %.17184.us.us.us.i.i = phi ptr [ %.07089.us.us.us.i.i, %.preheader.us.us.us.i.i ], [ %i.cdc, %bb.fp ] ; 2 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %.16885.us.us.us.i.i, i64 4 ; 2 uses
  %i.cdb = load float, ptr %.16885.us.us.us.i.i, align 4, !tbaa !125
  %i.cdc = getelementptr inbounds nuw i8, ptr %.17184.us.us.us.i.i, i64 4 ; 2 uses
  %i.cdd = load float, ptr %.17184.us.us.us.i.i, align 4, !tbaa !125
  %i.cde = call nsz float @llvm.fmuladd.f32(float %i.cdb, float %i.cdd, float %.06586.us.us.us.i.i) ; 2 uses
  %i.cdf = icmp ult ptr %i.cda, %i.cbc
  br i1 %i.cdf, label %bb.fp, label %._crit_edge.us.us.us.i.i, !llvm.loop !245

._crit_edge.us.us.us.i.i:                         ; preds = %bb.fp
  %i.cdg = load ptr, ptr %.190.us.us.us.i.i, align 8, !tbaa !126
  %i.cdh = getelementptr inbounds [4 x i8], ptr %i.cdg, i64 %indvars.iv.i374.i
  store float %i.cde, ptr %i.cdh, align 4, !tbaa !125
  %i.cdi = getelementptr inbounds nuw i8, ptr %.190.us.us.us.i.i, i64 8 ; 2 uses
  %i.cdj = icmp ult ptr %i.cdi, %i.cav
  br i1 %i.cdj, label %.preheader.us.us.us.i.i, label %._crit_edge91.split.us.us.us.i.i, !llvm.loop !246

._crit_edge91.split.us.us.us.i.i:                 ; preds = %._crit_edge.us.us.us.i.i
  %indvars.iv.next.i375.i = add nsw i64 %indvars.iv.i374.i, 1 ; 2 uses
  %exitcond.not.i376.i = icmp eq i64 %indvars.iv.next.i375.i, %wide.trip.count.i373.i
end_hunk_1
