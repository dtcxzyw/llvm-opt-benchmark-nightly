Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_motion?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_mpv_motion:bb.a
  %i.bem = getelementptr inbounds i8, ptr %i.ou, i64 %i.beh
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !59
  %i.beo = zext i8 %i.ben to i16
  %i.bep = shl nuw nsw i16 %i.beo, 1
  %i.beq = getelementptr inbounds i8, ptr %i.ov, i64 %i.beh
  %i.ber = load i8, ptr %i.beq, align 1, !tbaa !59
  %i.bes = zext i8 %i.ber to i16
  %i.bet = add nuw nsw i16 %i.bel, 4
  %i.beu = add nuw nsw i16 %i.bet, %i.bep
  %i.bev = add nuw nsw i16 %i.beu, %i.bes
  %i.bew = lshr i16 %i.bev, 3
  %i.bex = trunc nuw i16 %i.bew to i8
  %i.bey = getelementptr inbounds i8, ptr %i.ky, i64 %i.beh
  store i8 %i.bex, ptr %i.bey, align 1, !tbaa !59
  %i.bez = mul nsw i32 %i.or, 7                   ; 4 uses
  %i.bfa = sext i32 %i.bez to i64                 ; 4 uses
  %i.bfb = getelementptr inbounds i8, ptr %i.ot, i64 %i.bfa
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !59
  %i.bfd = zext i8 %i.bfc to i16
  %i.bfe = getelementptr inbounds i8, ptr %i.lc, i64 %i.bfa
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !59
  %i.bfg = zext i8 %i.bff to i16
  %i.bfh = shl nuw nsw i16 %i.bfg, 2
  %i.bfi = getelementptr inbounds i8, ptr %i.ov, i64 %i.bfa
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !59
  %i.bfk = zext i8 %i.bfj to i16
  %i.bfl = add nuw nsw i16 %i.bfk, %i.bfd
  %i.bfm = shl nuw nsw i16 %i.bfl, 1
  %i.bfn = add nuw nsw i16 %i.bfh, 4
  %i.bfo = add nuw nsw i16 %i.bfn, %i.bfm
  %i.bfp = lshr i16 %i.bfo, 3
  %i.bfq = trunc nuw i16 %i.bfp to i8
  %i.bfr = getelementptr inbounds i8, ptr %i.ky, i64 %i.bfa
  store i8 %i.bfq, ptr %i.bfr, align 1, !tbaa !59
  %i.bfs = add nsw i32 %i.bez, 1
  %i.bft = sext i32 %i.bfs to i64                 ; 4 uses
  %i.bfu = getelementptr inbounds i8, ptr %i.ot, i64 %i.bft
  %i.bfv = load i8, ptr %i.bfu, align 1, !tbaa !59
  %i.bfw = zext i8 %i.bfv to i16
  %i.bfx = getelementptr inbounds i8, ptr %i.lc, i64 %i.bft
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !59
  %i.bfz = zext i8 %i.bfy to i16
  %i.bga = mul nuw nsw i16 %i.bfz, 5
  %i.bgb = getelementptr inbounds i8, ptr %i.ov, i64 %i.bft
  %i.bgc = load i8, ptr %i.bgb, align 1, !tbaa !59
  %i.bgd = zext i8 %i.bgc to i16
  %i.bge = shl nuw nsw i16 %i.bgd, 1
  %i.bgf = add nuw nsw i16 %i.bfw, 4
  %i.bgg = add nuw nsw i16 %i.bgf, %i.bga
  %i.bgh = add nuw nsw i16 %i.bgg, %i.bge
  %i.bgi = lshr i16 %i.bgh, 3
  %i.bgj = trunc nuw i16 %i.bgi to i8
  %i.bgk = getelementptr inbounds i8, ptr %i.ky, i64 %i.bft
  store i8 %i.bgj, ptr %i.bgk, align 1, !tbaa !59
  %i.bgl = add nsw i32 %i.bez, 6
  %i.bgm = sext i32 %i.bgl to i64                 ; 4 uses
  %i.bgn = getelementptr inbounds i8, ptr %i.lc, i64 %i.bgm
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !59
  %i.bgp = zext i8 %i.bgo to i16
  %i.bgq = mul nuw nsw i16 %i.bgp, 5
  %i.bgr = getelementptr inbounds i8, ptr %i.ou, i64 %i.bgm
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !59
  %i.bgt = zext i8 %i.bgs to i16
  %i.bgu = getelementptr inbounds i8, ptr %i.ov, i64 %i.bgm
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !59
  %i.bgw = zext i8 %i.bgv to i16
  %i.bgx = shl nuw nsw i16 %i.bgw, 1
  %i.bgy = add nuw nsw i16 %i.bgt, 4
  %i.bgz = add nuw nsw i16 %i.bgy, %i.bgq
  %i.bha = add nuw nsw i16 %i.bgz, %i.bgx
  %i.bhb = lshr i16 %i.bha, 3
  %i.bhc = trunc nuw i16 %i.bhb to i8
  %i.bhd = getelementptr inbounds i8, ptr %i.ky, i64 %i.bgm
  store i8 %i.bhc, ptr %i.bhd, align 1, !tbaa !59
  %i.bhe = add nsw i32 %i.bez, 7
  %i.bhf = sext i32 %i.bhe to i64                 ; 4 uses
  %i.bhg = getelementptr inbounds i8, ptr %i.lc, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !59
  %i.bhi = zext i8 %i.bhh to i16
  %i.bhj = shl nuw nsw i16 %i.bhi, 2
  %i.bhk = getelementptr inbounds i8, ptr %i.ou, i64 %i.bhf
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !59
  %i.bhm = zext i8 %i.bhl to i16
  %i.bhn = getelementptr inbounds i8, ptr %i.ov, i64 %i.bhf
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !59
  %i.bhp = zext i8 %i.bho to i16
  %i.bhq = add nuw nsw i16 %i.bhp, %i.bhm
  %i.bhr = shl nuw nsw i16 %i.bhq, 1
  %i.bhs = add nuw nsw i16 %i.bhj, 4
  %i.bht = add nuw nsw i16 %i.bhs, %i.bhr
  %i.bhu = lshr i16 %i.bht, 3
  %i.bhv = trunc nuw i16 %i.bhu to i8
  %i.bhw = getelementptr inbounds i8, ptr %i.ky, i64 %i.bhf
  store i8 %i.bhv, ptr %i.bhw, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.bhx = add nsw i32 %.0131135.i, %i.ld         ; 2 uses
  %i.bhy = add nsw i32 %.0130136.i, %i.le         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.bhz = add nuw nsw i32 %.0137.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bhz, 4
  br i1 %exitcond.not.i, label %apply_obmc.exit, label %bb.ak, !llvm.loop !75

apply_obmc.exit:                                  ; preds = %obmc_motion.exit.i
  tail call fastcc void @chroma_4mv_motion(ptr noundef nonnull readonly %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %i.je, i32 noundef %i.bhx, i32 noundef %i.bhy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %mpv_motion_internal.exit34

bb.aq:                                            ; preds = %bb.w, %bb.v
  %i.bia = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !46
  switch i32 %i.bib, label %bb.bg [
    i32 0, label %bb.ar
    i32 1, label %bb.ax
    i32 3, label %bb.be
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.bic = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.bid = load i32, ptr %i.bic, align 8, !tbaa !76
  %.not230.i = icmp eq i32 %i.bid, 0
  br i1 %.not230.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @ff_mpeg4_mcsel_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #5
  br label %mpv_motion_internal.exit34

bb.at:                                            ; preds = %bb.ar
  %i.bie = load i32, ptr %i.d, align 4, !tbaa !9
  %.not231.i = icmp eq i32 %i.bie, 0
  br i1 %.not231.i, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bif = load i32, ptr %i.i, align 16, !tbaa !37
  %i.big = load i32, ptr %i.q, align 4, !tbaa !37
  tail call fastcc void @qpel_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, i32 noundef %i.bif, i32 noundef %i.big, i32 noundef 16)
  br label %mpv_motion_internal.exit34

.critedge.i:                                      ; preds = %bb.at
  %i.bih = getelementptr inbounds nuw i8, ptr %0, i64 3792
  %i.bii = load i32, ptr %i.bih, align 16, !tbaa !77
  %.not232.i = icmp eq i32 %i.bii, 0
  br i1 %.not232.i, label %.critedge233.i, label %bb.av

bb.av:                                            ; preds = %.critedge.i
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bik = load i32, ptr %i.bij, align 16, !tbaa !78
  %i.bil = icmp eq i32 %i.bik, 18
  br i1 %i.bil, label %bb.aw, label %.critedge233.i

bb.aw:                                            ; preds = %bb.av
  %i.bim = load i32, ptr %i.i, align 16, !tbaa !37
  %i.bin = load i32, ptr %i.q, align 4, !tbaa !37
  tail call void @ff_mspel_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.bim, i32 noundef %i.bin, i32 noundef 16) #5
  br label %mpv_motion_internal.exit34

.critedge233.i:                                   ; preds = %bb.av, %.critedge.i
  %i.bio = load i32, ptr %i.i, align 16, !tbaa !37
  %i.bip = load i32, ptr %i.q, align 4, !tbaa !37
  tail call fastcc void @mpeg_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.bio, i32 noundef %i.bip, i32 noundef 16, i32 noundef 0, i32 noundef %i.bj)
  br label %mpv_motion_internal.exit34

bb.ax:                                            ; preds = %bb.aq
  %i.biq = load i32, ptr %i.l, align 4, !tbaa !38
  %i.bir = load i32, ptr %i.d, align 4, !tbaa !9
  %.not.i37 = icmp eq i32 %i.bir, 0
  %i.bis = shl nsw i32 %i.biq, 4                  ; 2 uses
  %i.bit = shl nsw i32 %i.bj, 4                   ; 2 uses
  br i1 %.not.i37, label %.preheader.i, label %.preheader118.i

.preheader118.i:                                  ; preds = %bb.ax
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.biv = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.biw = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bix = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.biy = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.biz = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %7, i64 128
  br label %bb.ay

.preheader.i:                                     ; preds = %bb.ax
  %i.bjb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bjc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bjd = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.bje = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  br label %bb.bc

bb.ay:                                            ; preds = %bb.bb, %.preheader118.i
  %indvars.iv.i = phi i64 [ 0, %.preheader118.i ], [ %indvars.iv.next.i, %bb.bb ] ; 3 uses
  %i.bji = phi <2 x i32> [ zeroinitializer, %.preheader118.i ], [ %i.bll, %bb.bb ]
  %i.bjj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i ; 3 uses
  %i.bjk = load i32, ptr %i.bjj, align 8, !tbaa !37 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjj, i64 4
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !37 ; 2 uses
  %i.bjn = and i32 %i.bjm, 3                      ; 2 uses
  %i.bjo = shl nuw nsw i32 %i.bjn, 2
  %i.bjp = and i32 %i.bjk, 3                      ; 2 uses
  %i.bjq = ashr i32 %i.bjk, 2
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32 ; 2 uses
  %i.bjr = shl nuw nsw i32 %indvars.iv.tr.i, 3
  %i.bjs = and i32 %i.bjr, 8                      ; 2 uses
  %i.bjt = or disjoint i32 %i.bjs, %i.bis
  %i.bju = add i32 %i.bjt, %i.bjq                 ; 2 uses
  %i.bjv = ashr i32 %i.bjm, 2
  %i.bjw = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.bjx = and i32 %i.bjw, 8                      ; 2 uses
  %i.bjy = or disjoint i32 %i.bjx, %i.bit
  %i.bjz = add i32 %i.bjy, %i.bjv                 ; 2 uses
  %i.bka = load i32, ptr %i.biu, align 16, !tbaa !64 ; 2 uses
  %i.bkb = icmp slt i32 %i.bju, -16
  %..i115.i = tail call i32 @llvm.smin.i32(i32 %i.bju, i32 %i.bka)
  %.0.i116.i = select i1 %i.bkb, i32 -16, i32 %..i115.i ; 4 uses
  %i.bkc = icmp eq i32 %.0.i116.i, %i.bka
  %i.bkd = select i1 %i.bkc, i32 0, i32 %i.bjp
  %i.bke = load i32, ptr %i.biv, align 4, !tbaa !65 ; 2 uses
  %i.bkf = icmp slt i32 %i.bjz, -16
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bjz, i32 %i.bke)
  %.0.i.i = select i1 %i.bkf, i32 -16, i32 %..i.i ; 4 uses
  %i.bkg = icmp eq i32 %.0.i.i, %i.bke
  %spec.select.i = select i1 %i.bkg, i32 0, i32 %i.bjo
  %.1110.i = or disjoint i32 %spec.select.i, %i.bkd
  %i.bkh = load ptr, ptr %5, align 8, !tbaa !42
  %i.bki = sext i32 %.0.i.i to i64
  %i.bkj = load i64, ptr %i.aa, align 16, !tbaa !40 ; 4 uses
  %i.bkk = mul nsw i64 %i.bkj, %i.bki
  %i.bkl = getelementptr inbounds i8, ptr %i.bkh, i64 %i.bkk
  %i.bkm = sext i32 %.0.i116.i to i64
  %i.bkn = getelementptr inbounds i8, ptr %i.bkl, i64 %i.bkm ; 2 uses
  %i.bko = load i32, ptr %i.biw, align 4, !tbaa !66 ; 2 uses
  %i.bkp = sub nsw i32 %i.bko, %i.bjp             ; 2 uses
  %i.bkq = icmp sgt i32 %i.bkp, 7
  %i.bkr = add nsw i32 %i.bkp, -7
  %i.bks = icmp ult i32 %.0.i116.i, %i.bkr
  %.not113.i = select i1 %i.bkq, i1 %i.bks, i1 false
  %.pre.i = load i32, ptr %i.bix, align 8, !tbaa !67 ; 2 uses
  br i1 %.not113.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.bkt = sub nsw i32 %.pre.i, %i.bjn            ; 2 uses
  %i.bku = icmp sgt i32 %i.bkt, 7
  %i.bkv = add nsw i32 %i.bkt, -7
  %i.bkw = icmp ult i32 %.0.i.i, %i.bkv
  %.not114.i = select i1 %i.bku, i1 %i.bkw, i1 false
  br i1 %.not114.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.bkx = load ptr, ptr %i.biy, align 16, !tbaa !68
  %i.bky = load ptr, ptr %i.biz, align 8, !tbaa !69
  tail call void %i.bkx(ptr noundef %i.bky, ptr noundef %i.bkn, i64 noundef %i.bkj, i64 noundef %i.bkj, i32 noundef 9, i32 noundef 9, i32 noundef %.0.i116.i, i32 noundef %.0.i.i, i32 noundef %i.bko, i32 noundef %.pre.i) #5, !inline_history !79
  %i.bkz = load ptr, ptr %i.biz, align 8, !tbaa !69
  %.pre135.i = load i64, ptr %i.aa, align 16, !tbaa !40
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.bla = phi i64 [ %.pre135.i, %bb.ba ], [ %i.bkj, %bb.az ] ; 2 uses
  %.0.i38 = phi ptr [ %i.bkz, %bb.ba ], [ %i.bkn, %bb.az ]
  %i.blb = zext nneg i32 %i.bjs to i64
  %i.blc = getelementptr inbounds nuw i8, ptr %1, i64 %i.blb
  %i.bld = zext nneg i32 %i.bjx to i64
  %i.ble = mul nsw i64 %i.bla, %i.bld
  %i.blf = getelementptr inbounds i8, ptr %i.blc, i64 %i.ble
  %i.blg = zext nneg i32 %.1110.i to i64
  %i.blh = getelementptr inbounds nuw [8 x i8], ptr %i.bja, i64 %i.blg
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !71
  tail call void %i.bli(ptr noundef %i.blf, ptr noundef %.0.i38, i64 noundef %i.bla) #5, !inline_history !79
  %i.blj = load <2 x i32>, ptr %i.bjj, align 8, !tbaa !37
  %i.blk = sdiv <2 x i32> %i.blj, splat (i32 2)
  %i.bll = add nsw <2 x i32> %i.blk, %i.bji       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i39, label %apply_8x8.exit, label %bb.ay, !llvm.loop !80

bb.bc:                                            ; preds = %hpel_motion.exit.i, %.preheader.i
  %indvars.iv131.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next132.i, %hpel_motion.exit.i ] ; 3 uses
  %i.blm = phi <2 x i32> [ zeroinitializer, %.preheader.i ], [ %i.bno, %hpel_motion.exit.i ]
  %indvars.iv131.tr.i = trunc nuw i64 %indvars.iv131.i to i32 ; 2 uses
  %i.bln = shl nuw nsw i32 %indvars.iv131.tr.i, 3
  %i.blo = and i32 %i.bln, 8                      ; 2 uses
  %i.blp = zext nneg i32 %i.blo to i64
  %i.blq = getelementptr inbounds nuw i8, ptr %1, i64 %i.blp
  %i.blr = shl nuw nsw i32 %indvars.iv131.tr.i, 2
  %i.bls = and i32 %i.blr, 8                      ; 2 uses
  %i.blt = zext nneg i32 %i.bls to i64
  %i.blu = load i64, ptr %i.aa, align 16, !tbaa !40 ; 5 uses
  %i.blv = mul nsw i64 %i.blu, %i.blt
  %i.blw = getelementptr inbounds i8, ptr %i.blq, i64 %i.blv
  %i.blx = load ptr, ptr %5, align 8, !tbaa !42
  %i.bly = or disjoint i32 %i.blo, %i.bis
  %i.blz = or disjoint i32 %i.bls, %i.bit
  %i.bma = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv131.i ; 3 uses
  %i.bmb = load i32, ptr %i.bma, align 8, !tbaa !37 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bma, i64 4
  %i.bmd = load i32, ptr %i.bmc, align 4, !tbaa !37 ; 3 uses
  %i.bme = ashr i32 %i.bmb, 1
  %i.bmf = add nsw i32 %i.bly, %i.bme             ; 2 uses
  %i.bmg = ashr i32 %i.bmd, 1
  %i.bmh = add nsw i32 %i.blz, %i.bmg             ; 2 uses
  %i.bmi = load i32, ptr %i.bjc, align 16, !tbaa !64 ; 2 uses
  %i.bmj = icmp slt i32 %i.bmf, -16
  %..i52.i.i = tail call i32 @llvm.smin.i32(i32 %i.bmf, i32 %i.bmi)
  %.0.i53.i.i = select i1 %i.bmj, i32 -16, i32 %..i52.i.i ; 4 uses
  %i.bmk = and i32 %i.bmb, 1                      ; 2 uses
  %i.bml = load i32, ptr %i.bjd, align 4, !tbaa !65 ; 2 uses
  %i.bmm = icmp slt i32 %i.bmh, -16
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.bmh, i32 %i.bml)
  %.0.i.i.i = select i1 %i.bmm, i32 -16, i32 %..i.i.i ; 4 uses
  %i.bmn = sext i32 %.0.i.i.i to i64
  %i.bmo = mul nsw i64 %i.blu, %i.bmn
  %i.bmp = sext i32 %.0.i53.i.i to i64
  %i.bmq = getelementptr i8, ptr %i.blx, i64 %i.bmo
  %i.bmr = getelementptr i8, ptr %i.bmq, i64 %i.bmp ; 2 uses
  %i.bms = load i32, ptr %i.bje, align 4, !tbaa !66 ; 2 uses
  %i.bmt = sub nsw i32 %i.bms, %i.bmk             ; 2 uses
  %i.bmu = icmp sgt i32 %i.bmt, 7
  %i.bmv = add nsw i32 %i.bmt, -7
  %i.bmw = icmp ult i32 %.0.i53.i.i, %i.bmv
  %.not50.i.i = select i1 %i.bmu, i1 %i.bmw, i1 false
  %i.bmx = load i32, ptr %i.bjf, align 8, !tbaa !67 ; 2 uses
  br i1 %.not50.i.i, label %bb.bd, label %._crit_edge.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.bmy = and i32 %i.bmd, 1
  %i.bmz = sub nsw i32 %i.bmx, %i.bmy             ; 2 uses
  %i.bna = icmp sgt i32 %i.bmz, 7
  %i.bnb = add nsw i32 %i.bmz, -7
  %i.bnc = icmp ult i32 %.0.i.i.i, %i.bnb
  %.not51.i.i = select i1 %i.bna, i1 %i.bnc, i1 false
  br i1 %.not51.i.i, label %hpel_motion.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bd, %bb.bc
  %i.bnd = load ptr, ptr %i.bjg, align 16, !tbaa !68
  %i.bne = load ptr, ptr %i.bjh, align 8, !tbaa !69
  tail call void %i.bnd(ptr noundef %i.bne, ptr noundef %i.bmr, i64 noundef %i.blu, i64 noundef %i.blu, i32 noundef 9, i32 noundef 9, i32 noundef %.0.i53.i.i, i32 noundef %.0.i.i.i, i32 noundef %i.bms, i32 noundef %i.bmx) #5, !inline_history !81
  %i.bnf = load ptr, ptr %i.bjh, align 8, !tbaa !69
  %.pre54.i.i = load i64, ptr %i.aa, align 16, !tbaa !40
  br label %hpel_motion.exit.i

hpel_motion.exit.i:                               ; preds = %._crit_edge.i.i, %bb.bd
  %i.bng = phi i64 [ %.pre54.i.i, %._crit_edge.i.i ], [ %i.blu, %bb.bd ]
  %.046.i.i = phi ptr [ %i.bnf, %._crit_edge.i.i ], [ %i.bmr, %bb.bd ]
  %.not49.i.i = icmp eq i32 %.0.i.i.i, %i.bml
  %.not.i.i = icmp eq i32 %.0.i53.i.i, %i.bmi
  %spec.select.i.i = select i1 %.not.i.i, i32 0, i32 %i.bmk
  %i.bnh = shl i32 %i.bmd, 1
  %i.bni = and i32 %i.bnh, 2
  %i.bnj = select i1 %.not49.i.i, i32 0, i32 %i.bni
  %.1.i.i = or disjoint i32 %i.bnj, %spec.select.i.i
  %i.bnk = zext nneg i32 %.1.i.i to i64
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %i.bjb, i64 %i.bnk
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !71
  tail call void %i.bnm(ptr noundef %i.blw, ptr noundef %.046.i.i, i64 noundef %i.bng, i32 noundef 8) #5, !inline_history !81
  %i.bnn = load <2 x i32>, ptr %i.bma, align 8, !tbaa !37
  %i.bno = add nsw <2 x i32> %i.bnn, %i.blm       ; 2 uses
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next132.i, 4
  br i1 %exitcond134.not.i, label %apply_8x8.exit, label %bb.bc, !llvm.loop !82

apply_8x8.exit:                                   ; preds = %bb.bb, %hpel_motion.exit.i
  %i.bnp = phi <2 x i32> [ %i.bno, %hpel_motion.exit.i ], [ %i.bll, %bb.bb ] ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bnr = extractelement <2 x i32> %i.bnp, i64 0
  %i.bns = extractelement <2 x i32> %i.bnp, i64 1
  tail call fastcc void @chroma_4mv_motion(ptr noundef nonnull readonly %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %i.bnq, i32 noundef %i.bnr, i32 noundef %i.bns)
  br label %mpv_motion_internal.exit34

bb.be:                                            ; preds = %bb.aq
  %i.bnt = load i32, ptr %i.d, align 4, !tbaa !9
  %.not229.i = icmp eq i32 %i.bnt, 0
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.bnv = getelementptr inbounds [8 x i8], ptr %i.bnu, i64 %i.h ; 3 uses
  %i.bnw = load i32, ptr %i.q, align 4, !tbaa !37 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnv, i64 4 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.boa = load i32, ptr %i.i, align 16, !tbaa !37 ; 2 uses
  br i1 %.not229.i, label %bb.bf, label %.preheader47

.preheader47:                                     ; preds = %bb.be
  %i.bob = load i32, ptr %i.bnv, align 4, !tbaa !37
  tail call fastcc void @qpel_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %i.bob, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, i32 noundef %i.boa, i32 noundef %i.bnw, i32 noundef 8)
  %i.boc = load i32, ptr %i.bnx, align 4, !tbaa !37
  %i.bod = load i32, ptr %i.bny, align 8, !tbaa !37
  %i.boe = load i32, ptr %i.bnz, align 4, !tbaa !37
  tail call fastcc void @qpel_motion(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef %i.boc, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, i32 noundef %i.bod, i32 noundef %i.boe, i32 noundef 8)
  br label %mpv_motion_internal.exit34

bb.bf:                                            ; preds = %bb.be
  %i.bof = load i32, ptr %i.bnv, align 8, !tbaa !37
  tail call fastcc void @mpeg_motion_field(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %i.bof, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.boa, i32 noundef %i.bnw, i32 noundef %i.bj)
  %i.bog = load i32, ptr %i.bnx, align 4, !tbaa !37
  %i.boh = load i32, ptr %i.bny, align 8, !tbaa !37
  %i.boi = load i32, ptr %i.bnz, align 4, !tbaa !37
  tail call fastcc void @mpeg_motion_field(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %i.bog, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.boh, i32 noundef %i.boi, i32 noundef %i.bj)
  br label %mpv_motion_internal.exit34

bb.bg:                                            ; preds = %bb.aq
  unreachable

mpv_motion_internal.exit34:                       ; preds = %bb.t, %.preheader47, %.preheader42, %mpv_motion_internal.exit34.loopexit, %bb.bf, %apply_8x8.exit, %.critedge233.i, %bb.aw, %bb.au, %bb.as, %apply_obmc.exit, %bb.j, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ff_mpeg4_mcsel_motion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @qpel_motion(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef range(i32 8, 17) %12) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %11, 3                           ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 2
  %i.c = and i32 %10, 3                           ; 2 uses
  %i.d = or disjoint i32 %i.b, %i.c               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = shl nsw i32 %i.f, 4
  %i.h = ashr i32 %10, 2
  %i.i = add nsw i32 %i.g, %i.h                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = sub nuw nsw i32 4, %4
  %i.m = shl i32 %i.k, %i.l
  %i.n = ashr i32 %11, 2
  %i.o = add nsw i32 %i.m, %i.n                   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %i.r = ashr i32 %i.q, %4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.t = load i64, ptr %i.s, align 16, !tbaa !40  ; 3 uses
  %i.u = zext nneg i32 %4 to i64                  ; 2 uses
  %i.v = shl i64 %i.t, %i.u                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44
  %i.y = shl i64 %i.x, %i.u                       ; 3 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = sdiv i32 %10, 2
  %i.aa = ashr i32 %11, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %i.ad = and i32 %i.ac, 256
  %.not164 = icmp eq i32 %i.ad, 0
  br i1 %.not164, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ashr i32 %10, 1
  %i.af = and i32 %10, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @qpel_motion.rtab, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = add nsw i32 %i.ai, %i.ae
  %i.ak = ashr i32 %11, 1
  %i.al = and i32 %11, 7
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @qpel_motion.rtab, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37
  %i.ap = add nsw i32 %i.ao, %i.ak
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aq = and i32 %i.ac, 64
  %.not165 = icmp eq i32 %i.aq, 0
  br i1 %.not165, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = ashr i32 %10, 1
  %i.as = and i32 %10, 1
  %i.at = or i32 %i.ar, %i.as
  %i.au = ashr i32 %11, 1
  %i.av = and i32 %11, 1
  %i.aw = or i32 %i.au, %i.av
  br label %bb.h
end_hunk_0
