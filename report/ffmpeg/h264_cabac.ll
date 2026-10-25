Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cabac?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_decode_mb_cabac:bb.a
  %i.bda = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bcz
  %i.bdb = load i8, ptr %i.bda, align 1, !tbaa !82
  %i.bdc = zext i8 %i.bdb to i32                  ; 2 uses
  %i.bdd = sub nsw i32 %i.bbu, %i.bdc             ; 2 uses
  %i.bde = shl i32 %i.bdd, 17                     ; 2 uses
  %i.bdf = icmp slt i32 %i.bde, %i.bcs            ; 3 uses
  %i.bdg = sext i1 %i.bdf to i32
  %i.bdh = select i1 %i.bdf, i32 %i.bde, i32 0
  %i.bdi = sub nsw i32 %i.bcs, %i.bdh
  %i.bdj = select i1 %i.bdf, i32 %i.bdc, i32 %i.bdd ; 2 uses
  %i.bdk = xor i32 %i.bdg, %i.bcv                 ; 2 uses
  %i.bdl = sext i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.bdl
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !82
  store i8 %i.bdn, ptr %i.ajv, align 2, !tbaa !82
  %i.bdo = sext i32 %i.bdj to i64
  %i.bdp = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bdo
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !82
  %i.bdr = zext i8 %i.bdq to i32                  ; 2 uses
  %i.bds = shl i32 %i.bdj, %i.bdr                 ; 4 uses
  store i32 %i.bds, ptr %i.ajr, align 4, !tbaa !122
  %i.bdt = shl i32 %i.bdi, %i.bdr                 ; 6 uses
  store i32 %i.bdt, ptr %i.ajq, align 16, !tbaa !123
  %i.bdu = and i32 %i.bdt, 65535
  %.not.i.i8.i = icmp eq i32 %i.bdu, 0
  br i1 %.not.i.i8.i, label %bb.ds, label %get_cabac.exit9.i

bb.ds:                                            ; preds = %bb.dr
  %i.bdv = add nsw i32 %i.bdt, -32768
  %i.bdw = xor i32 %i.bdv, %i.bdt
  %i.bdx = lshr exact i32 %i.bdw, 15
  %i.bdy = zext nneg i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !82
  %i.beb = zext i8 %i.bea to i32
  %i.bec = sub nsw i32 7, %i.beb
  %i.bed = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !82
  %i.bef = zext i8 %i.bee to i32
  %i.beg = shl nuw nsw i32 %i.bef, 9
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bed, i64 1
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !82
  %i.bej = zext i8 %i.bei to i32
  %i.bek = shl nuw nsw i32 %i.bej, 1
  %i.bel = or disjoint i32 %i.bek, %i.beg
  %i.bem = add nsw i32 %i.bel, -65535
  %i.ben = shl nsw i32 %i.bem, %i.bec
  %i.beo = add i32 %i.ben, %i.bdt                 ; 2 uses
  store i32 %i.beo, ptr %i.ajq, align 16, !tbaa !123
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bed, i64 2
  store ptr %i.bep, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit9.i

get_cabac.exit9.i:                                ; preds = %bb.ds, %bb.dr
  %i.beq = phi i32 [ %i.bdt, %bb.dr ], [ %i.beo, %bb.ds ] ; 3 uses
  %i.ber = and i32 %i.bdk, 1
  %.not6.i = icmp eq i32 %i.ber, 0
  br i1 %.not6.i, label %decode_cabac_p_mb_sub_type.exit, label %bb.dt

bb.dt:                                            ; preds = %get_cabac.exit9.i
  %i.bes = load i8, ptr %i.ajw, align 1, !tbaa !82
  %i.bet = zext i8 %i.bes to i32                  ; 2 uses
  %i.beu = shl i32 %i.bds, 1
  %i.bev = and i32 %i.beu, 384
  %i.bew = add nuw nsw i32 %i.bev, %i.bet
  %i.bex = zext nneg i32 %i.bew to i64
  %i.bey = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !82
  %i.bfa = zext i8 %i.bez to i32                  ; 2 uses
  %i.bfb = sub nsw i32 %i.bds, %i.bfa             ; 2 uses
  %i.bfc = shl i32 %i.bfb, 17                     ; 2 uses
  %i.bfd = icmp slt i32 %i.bfc, %i.beq            ; 3 uses
  %i.bfe = sext i1 %i.bfd to i32
  %i.bff = select i1 %i.bfd, i32 %i.bfc, i32 0
  %i.bfg = sub nsw i32 %i.beq, %i.bff
  %i.bfh = select i1 %i.bfd, i32 %i.bfa, i32 %i.bfb ; 2 uses
  %i.bfi = xor i32 %i.bfe, %i.bet                 ; 2 uses
  %i.bfj = sext i32 %i.bfi to i64
  %i.bfk = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.bfj
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !82
  store i8 %i.bfl, ptr %i.ajw, align 1, !tbaa !82
  %i.bfm = sext i32 %i.bfh to i64
  %i.bfn = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bfm
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !82
  %i.bfp = zext i8 %i.bfo to i32                  ; 2 uses
  %i.bfq = shl i32 %i.bfh, %i.bfp                 ; 2 uses
  store i32 %i.bfq, ptr %i.ajr, align 4, !tbaa !122
  %i.bfr = shl i32 %i.bfg, %i.bfp                 ; 6 uses
  store i32 %i.bfr, ptr %i.ajq, align 16, !tbaa !123
  %i.bfs = and i32 %i.bfr, 65535
  %.not.i.i10.i = icmp eq i32 %i.bfs, 0
  br i1 %.not.i.i10.i, label %bb.du, label %get_cabac.exit11.i

bb.du:                                            ; preds = %bb.dt
  %i.bft = add nsw i32 %i.bfr, -32768
  %i.bfu = xor i32 %i.bft, %i.bfr
  %i.bfv = lshr exact i32 %i.bfu, 15
  %i.bfw = zext nneg i32 %i.bfv to i64
  %i.bfx = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bfw
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !82
  %i.bfz = zext i8 %i.bfy to i32
  %i.bga = sub nsw i32 7, %i.bfz
  %i.bgb = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.bgc = load i8, ptr %i.bgb, align 1, !tbaa !82
  %i.bgd = zext i8 %i.bgc to i32
  %i.bge = shl nuw nsw i32 %i.bgd, 9
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bgb, i64 1
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !82
  %i.bgh = zext i8 %i.bgg to i32
  %i.bgi = shl nuw nsw i32 %i.bgh, 1
  %i.bgj = or disjoint i32 %i.bgi, %i.bge
  %i.bgk = add nsw i32 %i.bgj, -65535
  %i.bgl = shl nsw i32 %i.bgk, %i.bga
  %i.bgm = add i32 %i.bgl, %i.bfr                 ; 2 uses
  store i32 %i.bgm, ptr %i.ajq, align 16, !tbaa !123
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgb, i64 2
  store ptr %i.bgn, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit11.i

get_cabac.exit11.i:                               ; preds = %bb.du, %bb.dt
  %i.bgo = phi i32 [ %i.bgm, %bb.du ], [ %i.bfr, %bb.dt ]
  %i.bgp = and i32 %i.bfi, 1
  %..i1218 = xor i32 %i.bgp, 3
  %i.bgq = zext nneg i32 %..i1218 to i64
  br label %decode_cabac_p_mb_sub_type.exit

decode_cabac_p_mb_sub_type.exit:                  ; preds = %get_cabac.exit.i1215, %get_cabac.exit9.i, %get_cabac.exit11.i
  %i.bgr = phi i32 [ %i.bcs, %get_cabac.exit.i1215 ], [ %i.bgo, %get_cabac.exit11.i ], [ %i.beq, %get_cabac.exit9.i ]
  %i.bgs = phi i32 [ %i.bbu, %get_cabac.exit.i1215 ], [ %i.bfq, %get_cabac.exit11.i ], [ %i.bds, %get_cabac.exit9.i ]
  %.0.i1217 = phi i64 [ 0, %get_cabac.exit.i1215 ], [ %i.bgq, %get_cabac.exit11.i ], [ 1, %get_cabac.exit9.i ] ; 2 uses
  %i.bgt = getelementptr inbounds nuw [2 x i8], ptr %i.ajs, i64 %indvars.iv1660
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 2
  %i.bgw = load i8, ptr %i.bgv, align 2, !tbaa !170
  %i.bgx = zext i8 %i.bgw to i32
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1660
  store i32 %i.bgx, ptr %i.bgy, align 4, !tbaa !93
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bha = load i16, ptr %i.bgz, align 4, !tbaa !179
  store i16 %i.bha, ptr %i.bgt, align 2, !tbaa !96
  %indvars.iv.next1661 = add nuw nsw i64 %indvars.iv1660, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1661, 4
  br i1 %exitcond.not, label %.loopexit1518, label %bb.dp, !llvm.loop !141

.loopexit1518:                                    ; preds = %decode_cabac_p_mb_sub_type.exit, %.loopexit1518.loopexit, %bb.do
  %i.bhb = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 3 uses
  %i.bhc = load i32, ptr %i.bhb, align 8, !tbaa !125
  %.not1610 = icmp eq i32 %i.bhc, 0
  br i1 %.not1610, label %._crit_edge, label %.preheader1517.lr.ph

.preheader1517.lr.ph:                             ; preds = %.loopexit1518
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 21068 ; 4 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 29338
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 29342
  br label %.preheader1517

.preheader1517:                                   ; preds = %.preheader1517.lr.ph, %bb.el
  %indvars.iv1675 = phi i64 [ 0, %.preheader1517.lr.ph ], [ %indvars.iv.next1676, %bb.el ] ; 8 uses
  %indvars.iv1675.tr = trunc nuw i64 %indvars.iv1675 to i32
  %i.bhk = shl nuw i32 %indvars.iv1675.tr, 1
  %i.bhl = shl i32 4096, %i.bhk                   ; 4 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bhe, i64 %indvars.iv1675 ; 4 uses
  %i.bhn = getelementptr inbounds nuw [40 x i8], ptr %i.bhg, i64 %indvars.iv1675 ; 12 uses
  %i.bho = load i16, ptr %i.bhd, align 8, !tbaa !96
  %i.bhp = zext i16 %i.bho to i32                 ; 2 uses
  %i.bhq = and i32 %i.bhp, 256
  %.not984 = icmp eq i32 %i.bhq, 0
  br i1 %.not984, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %.preheader1517
  %i.bhr = and i32 %i.bhl, %i.bhp
  %.not985 = icmp eq i32 %i.bhr, 0
  br i1 %.not985, label %.thread1362, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bhs = load i32, ptr %i.bhm, align 4, !tbaa !93
  %i.bht = load i32, ptr %i.bhf, align 4, !tbaa !165
  %i.bhu = shl i32 %i.bhs, %i.bht                 ; 3 uses
  %i.bhv = icmp ugt i32 %i.bhu, 1
  br i1 %i.bhv, label %bb.dx, label %.thread1362

bb.dx:                                            ; preds = %bb.dw
  %i.bhw = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bhx = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bhw, i32 noundef 0) ; 3 uses
  %.not986 = icmp ult i32 %i.bhx, %i.bhu
  br i1 %.not986, label %.thread1362, label %bb.dy

bb.dy:                                            ; preds = %bb.ek, %bb.eg, %bb.ec, %bb.dx
  %.lcssa1623 = phi i32 [ %i.bhx, %bb.dx ], [ %i.bio, %bb.ec ], [ %i.bjd, %bb.eg ], [ %i.bjs, %bb.ek ]
  %.lcssa1622 = phi i32 [ %i.bhu, %bb.dx ], [ %i.bil, %bb.ec ], [ %i.bja, %bb.eg ], [ %i.bjp, %bb.ek ]
  %i.bhy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !119
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhz, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.lcssa1623, i32 noundef %.lcssa1622) #10
  br label %.thread1382

.thread1362:                                      ; preds = %bb.dv, %bb.dw, %bb.dx
  %i.bia = phi i32 [ 0, %bb.dw ], [ %i.bhx, %bb.dx ], [ -1, %bb.dv ]
  %i.bib = trunc nsw i32 %i.bia to i8             ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhn, i64 21
  store i8 %i.bib, ptr %i.bic, align 1, !tbaa !82
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20
  store i8 %i.bib, ptr %i.bid, align 1, !tbaa !82
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhn, i64 13
  store i8 %i.bib, ptr %i.bie, align 1, !tbaa !82
  br label %bb.dz

bb.dz:                                            ; preds = %.preheader1517, %.thread1362
  %i.bif = load i16, ptr %i.bhh, align 2, !tbaa !96
  %i.big = zext i16 %i.bif to i32                 ; 2 uses
  %i.bih = and i32 %i.big, 256
  %.not984.1 = icmp eq i32 %i.bih, 0
  br i1 %.not984.1, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.bii = and i32 %i.bhl, %i.big
  %.not985.1 = icmp eq i32 %i.bii, 0
  br i1 %.not985.1, label %.thread1362.1, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bij = load i32, ptr %i.bhm, align 4, !tbaa !93
  %i.bik = load i32, ptr %i.bhf, align 4, !tbaa !165
  %i.bil = shl i32 %i.bij, %i.bik                 ; 3 uses
  %i.bim = icmp ugt i32 %i.bil, 1
  br i1 %i.bim, label %bb.ec, label %.thread1362.1

bb.ec:                                            ; preds = %bb.eb
  %i.bin = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bio = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bin, i32 noundef 4) ; 3 uses
  %.not986.1 = icmp ult i32 %i.bio, %i.bil
  br i1 %.not986.1, label %.thread1362.1, label %bb.dy

.thread1362.1:                                    ; preds = %bb.ea, %bb.eb, %bb.ec
  %i.bip = phi i32 [ 0, %bb.eb ], [ %i.bio, %bb.ec ], [ -1, %bb.ea ]
  %i.biq = trunc nsw i32 %i.bip to i8             ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bhn, i64 23
  store i8 %i.biq, ptr %i.bir, align 1, !tbaa !82
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bhn, i64 22
  store i8 %i.biq, ptr %i.bis, align 1, !tbaa !82
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhn, i64 15
  store i8 %i.biq, ptr %i.bit, align 1, !tbaa !82
  br label %bb.ed

bb.ed:                                            ; preds = %.thread1362.1, %bb.dz
  %i.biu = load i16, ptr %i.bhi, align 4, !tbaa !96
  %i.biv = zext i16 %i.biu to i32                 ; 2 uses
  %i.biw = and i32 %i.biv, 256
  %.not984.2 = icmp eq i32 %i.biw, 0
  br i1 %.not984.2, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.bix = and i32 %i.bhl, %i.biv
  %.not985.2 = icmp eq i32 %i.bix, 0
  br i1 %.not985.2, label %.thread1362.2, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.biy = load i32, ptr %i.bhm, align 4, !tbaa !93
  %i.biz = load i32, ptr %i.bhf, align 4, !tbaa !165
  %i.bja = shl i32 %i.biy, %i.biz                 ; 3 uses
  %i.bjb = icmp ugt i32 %i.bja, 1
  br i1 %i.bjb, label %bb.eg, label %.thread1362.2

bb.eg:                                            ; preds = %bb.ef
  %i.bjc = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bjd = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bjc, i32 noundef 8) ; 3 uses
  %.not986.2 = icmp ult i32 %i.bjd, %i.bja
  br i1 %.not986.2, label %.thread1362.2, label %bb.dy

.thread1362.2:                                    ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.bje = phi i32 [ 0, %bb.ef ], [ %i.bjd, %bb.eg ], [ -1, %bb.ee ]
  %i.bjf = trunc nsw i32 %i.bje to i8             ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bhn, i64 37
  store i8 %i.bjf, ptr %i.bjg, align 1, !tbaa !82
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bhn, i64 36
  store i8 %i.bjf, ptr %i.bjh, align 1, !tbaa !82
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bhn, i64 29
  store i8 %i.bjf, ptr %i.bji, align 1, !tbaa !82
  br label %bb.eh

bb.eh:                                            ; preds = %.thread1362.2, %bb.ed
  %i.bjj = load i16, ptr %i.bhj, align 2, !tbaa !96
  %i.bjk = zext i16 %i.bjj to i32                 ; 2 uses
  %i.bjl = and i32 %i.bjk, 256
  %.not984.3 = icmp eq i32 %i.bjl, 0
  br i1 %.not984.3, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.bjm = and i32 %i.bhl, %i.bjk
  %.not985.3 = icmp eq i32 %i.bjm, 0
  br i1 %.not985.3, label %.thread1362.3, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bjn = load i32, ptr %i.bhm, align 4, !tbaa !93
  %i.bjo = load i32, ptr %i.bhf, align 4, !tbaa !165
  %i.bjp = shl i32 %i.bjn, %i.bjo                 ; 3 uses
  %i.bjq = icmp ugt i32 %i.bjp, 1
  br i1 %i.bjq, label %bb.ek, label %.thread1362.3

bb.ek:                                            ; preds = %bb.ej
  %i.bjr = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bjs = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bjr, i32 noundef 12) ; 3 uses
  %.not986.3 = icmp ult i32 %i.bjs, %i.bjp
  br i1 %.not986.3, label %.thread1362.3, label %bb.dy

.thread1362.3:                                    ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.bjt = phi i32 [ 0, %bb.ej ], [ %i.bjs, %bb.ek ], [ -1, %bb.ei ]
  %i.bju = trunc nsw i32 %i.bjt to i8             ; 3 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bhn, i64 39
  store i8 %i.bju, ptr %i.bjv, align 1, !tbaa !82
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bhn, i64 38
  store i8 %i.bju, ptr %i.bjw, align 1, !tbaa !82
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bhn, i64 31
  store i8 %i.bju, ptr %i.bjx, align 1, !tbaa !82
  br label %bb.el

bb.el:                                            ; preds = %.thread1362.3, %bb.eh
  %indvars.iv.next1676 = add nuw nsw i64 %indvars.iv1675, 1 ; 2 uses
  %i.bjy = load i32, ptr %i.bhb, align 8, !tbaa !125 ; 2 uses
  %i.bjz = zext i32 %i.bjy to i64
  %i.bka = icmp samesign ult i64 %indvars.iv.next1676, %i.bjz
  br i1 %i.bka, label %.preheader1517, label %._crit_edge.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %bb.el
  %i.bkb = icmp eq i32 %i.bjy, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit1518
  %.not1611 = phi i1 [ %i.bkb, %._crit_edge.loopexit ], [ true, %.loopexit1518 ]
  %.not974 = icmp eq i32 %i.r, 0
  br i1 %.not974, label %bb.em, label %get_dct8x8_allowed.exit

get_dct8x8_allowed.exit:                          ; preds = %._crit_edge
  %i.bkc = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 72
  %i.bke = load i32, ptr %i.bkd, align 8, !tbaa !180
  %.not.i = icmp eq i32 %i.bke, 0
  %i.bkf = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !82
  %. = select i1 %.not.i, i64 103584372001603952, i64 31525678435270768
  %i.bkh = and i64 %i.bkg, %.
  %.0.in.i = icmp eq i64 %i.bkh, 0
  %.0.i1048 = zext i1 %.0.in.i to i32
  br label %bb.em

bb.em:                                            ; preds = %get_dct8x8_allowed.exit, %._crit_edge
  %.0875 = phi i32 [ %.0.i1048, %get_dct8x8_allowed.exit ], [ 0, %._crit_edge ]
  br i1 %.not1611, label %._crit_edge1581, label %.preheader1516.lr.ph

.preheader1516.lr.ph:                             ; preds = %bb.em
  %i.bki = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bkj = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bkk = getelementptr inbounds nuw i8, ptr %1, i64 29136
  %i.bkl = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 28496 ; 3 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %1, i64 20952
  %i.bko = getelementptr inbounds nuw i8, ptr %1, i64 20932 ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %0, i64 31032 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %0, i64 31048 ; 2 uses
  br label %.preheader1516

.preheader1516:                                   ; preds = %.preheader1516.lr.ph, %bb.ft
  %indvars.iv1683 = phi i64 [ 0, %.preheader1516.lr.ph ], [ %indvars.iv.next1684, %bb.ft ] ; 10 uses
  %i.bkr = getelementptr inbounds nuw [40 x i8], ptr %i.bki, i64 %indvars.iv1683 ; 7 uses
  %i.bks = getelementptr inbounds nuw [80 x i8], ptr %i.bkk, i64 %indvars.iv1683 ; 2 uses
  %indvars.iv1683.tr = trunc nuw i64 %indvars.iv1683 to i32
  %i.bkt = shl nuw i32 %indvars.iv1683.tr, 1      ; 2 uses
  %i.bku = shl i32 4096, %i.bkt
  %i.bkv = getelementptr inbounds nuw [160 x i8], ptr %i.bkl, i64 %indvars.iv1683 ; 6 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkr, i64 11
  %i.bkx = getelementptr [160 x i8], ptr %1, i64 %indvars.iv1683 ; 2 uses
  %i.bky = getelementptr i8, ptr %i.bkx, i64 28776 ; 7 uses
  %i.bkz = shl i32 12288, %i.bkt                  ; 2 uses
  %i.bla = getelementptr i8, ptr %i.bkx, i64 28778 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %.preheader1516, %.loopexit1515
  %indvars.iv1679 = phi i64 [ 0, %.preheader1516 ], [ %indvars.iv.next1680, %.loopexit1515 ] ; 4 uses
  %i.blb = shl nuw nsw i64 %indvars.iv1679, 2     ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.blb
  %i.bld = load i8, ptr %i.blc, align 4, !tbaa !82
  %i.ble = zext i8 %i.bld to i64                  ; 3 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %i.ble ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 1
  %i.blh = load i8, ptr %i.blg, align 1, !tbaa !82
  store i8 %i.blh, ptr %i.blf, align 1, !tbaa !82
  %i.bli = getelementptr inbounds nuw [2 x i8], ptr %i.bkj, i64 %indvars.iv1679
  %i.blj = load i16, ptr %i.bli, align 2, !tbaa !96
  %i.blk = zext i16 %i.blj to i32                 ; 6 uses
  %i.bll = and i32 %i.blk, 256
  %.not975 = icmp eq i32 %i.bll, 0
  br i1 %.not975, label %bb.eo, label %.loopexit1515.sink.split

bb.eo:                                            ; preds = %bb.en
  %i.blm = and i32 %i.bku, %i.blk
  %.not976 = icmp eq i32 %i.blm, 0
  br i1 %.not976, label %bb.fs, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bln = and i32 %i.blk, 24
  %.not977 = icmp ne i32 %i.bln, 0                ; 2 uses
  %i.blo = select i1 %.not977, i32 2, i32 1
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1679
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !93 ; 2 uses
  %.not9831575 = icmp sgt i32 %i.blq, 0
  br i1 %.not9831575, label %.lr.ph1578, label %.loopexit1515

.lr.ph1578:                                       ; preds = %bb.ep
  %i.blr = zext i1 %.not977 to i32
  %i.bls = and i32 %i.blk, 8
  %.not980 = icmp eq i32 %i.bls, 0
  %i.blt = and i32 %i.blk, 16
  %.not981 = icmp eq i32 %i.blt, 0
  %i.blu = and i32 %i.blk, 32
  %.not982 = icmp eq i32 %i.blu, 0
  %i.blv = trunc nuw nsw i64 %i.blb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1578, %bb.fr
  %.08671576 = phi i32 [ 0, %.lr.ph1578 ], [ %i.bvv, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.blw = shl nuw i32 %.08671576, %i.blr
  %i.blx = add nsw i32 %i.blw, %i.blv
  %i.bly = sext i32 %i.blx to i64                 ; 3 uses
  %i.blz = getelementptr inbounds i8, ptr @scan8, i64 %i.bly
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !82 ; 2 uses
  %i.bmb = zext i8 %i.bma to i64                  ; 3 uses
  %i.bmc = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.bmb ; 12 uses
  %i.bmd = getelementptr [2 x i8], ptr %i.bks, i64 %i.bmb ; 16 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %i.bmb
  %i.bmf = load i8, ptr %i.bme, align 1, !tbaa !82 ; 3 uses
  %i.bmg = sext i8 %i.bmf to i32
  %i.bmh = zext i8 %i.bma to i32                  ; 6 uses
  %i.bmi = add nsw i32 %i.bmh, -8                 ; 2 uses
  %i.bmj = sext i32 %i.bmi to i64                 ; 2 uses
  %i.bmk = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmj
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !82 ; 2 uses
  %i.bmm = add nsw i32 %i.bmh, -1
  %i.bmn = sext i32 %i.bmm to i64                 ; 2 uses
  %i.bmo = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmn
  %i.bmp = load i8, ptr %i.bmo, align 1, !tbaa !82 ; 2 uses
  %i.bmq = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bmn ; 7 uses
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bmj ; 6 uses
  %i.bms = add nsw i32 %i.bmi, %i.blo
  %i.bmt = sext i32 %i.bms to i64                 ; 2 uses
  %i.bmu = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmt
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !82 ; 2 uses
  %i.bmw = sext i8 %i.bmv to i32
  %i.bmx = load i32, ptr %i.sr, align 8, !tbaa !91
  %i.bmy = icmp ne i32 %i.bmx, 0
  %i.bmz = icmp eq i8 %i.bmv, -2                  ; 2 uses
  %or.cond.i1136 = select i1 %i.bmy, i1 %i.bmz, i1 false
  %i.bna = lshr i64 1970324836974540, %i.bly
  %i.bnb = trunc i64 %i.bna to i1
  %or.cond98.i1137 = select i1 %or.cond.i1136, i1 %i.bnb, i1 false
  %i.bnc = and i32 %i.bmh, 7
  %i.bnd = icmp eq i32 %i.bnc, 4
  %or.cond100.i1138 = and i1 %i.bnd, %or.cond98.i1137
  br i1 %or.cond100.i1138, label %bb.er, label %bb.ez

bb.er:                                            ; preds = %bb.eq
  %i.bne = load i8, ptr %i.bkw, align 1, !tbaa !82
  %.not.i1141 = icmp eq i8 %i.bne, -2
  br i1 %.not.i1141, label %.thread1371, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bnf = load ptr, ptr %i.bkm, align 8, !tbaa !181
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 104
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !182 ; 2 uses
  store i32 0, ptr %i.bky, align 4, !tbaa !82
  %i.bni = load i32, ptr %i.uc, align 8, !tbaa !94
  %.not91.i1142 = icmp eq i32 %i.bni, 0
  %i.bnj = load i32, ptr %i.bkn, align 8, !tbaa !93
  %i.bnk = and i32 %i.bnj, 128
  %.not92.i1148 = icmp eq i32 %i.bnk, 0           ; 2 uses
  br i1 %.not91.i1142, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  br i1 %.not92.i1148, label %.thread1371, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bnl = load i32, ptr %i.bko, align 4, !tbaa !93
  %i.bnm = load i32, ptr %i.aa, align 4, !tbaa !89 ; 2 uses
  %i.bnn = add nsw i32 %i.bnm, %i.bnl             ; 3 uses
  %i.bno = load i32, ptr %i.y, align 4, !tbaa !88
  %i.bnp = shl i32 %i.bno, 1
  %i.bnq = and i32 %i.bnp, 2
  %i.bnr = lshr i32 %i.bmh, 5
  %i.bns = add nuw nsw i32 %i.bnq, %i.bnr         ; 3 uses
  %i.bnt = lshr i32 %i.bns, 2
  %i.bnu = mul nsw i32 %i.bnt, %i.bnm
  %i.bnv = add nsw i32 %i.bnu, %i.bnn
  %i.bnw = sext i32 %i.bnv to i64
  %i.bnx = getelementptr inbounds [4 x i8], ptr %i.bnh, i64 %i.bnw
  %i.bny = load i32, ptr %i.bnx, align 4, !tbaa !93
  %i.bnz = and i32 %i.bny, %i.bkz
  %.not93.i1149 = icmp eq i32 %i.bnz, 0
  br i1 %.not93.i1149, label %fetch_diagonal_mv.exit1150, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.boa = load ptr, ptr %i.bkm, align 8, !tbaa !181 ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 80
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %i.bob, i64 %indvars.iv1683
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !101
  %i.boe = load ptr, ptr %i.bkp, align 8, !tbaa !104
  %i.bof = sext i32 %i.bnn to i64
  %i.bog = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bof
end_hunk_0
begin_hunk_1_@decode_cabac_residual_dc_internal_422:bb.a
  %i.nz = and i32 %.sroa.0.21, 32767
  %.not.i232.i = icmp eq i32 %i.nz, 0
  br i1 %.not.i232.i, label %get_cabac_bypass_sign.exit233.i.sink.split, label %get_cabac_bypass_sign.exit233.i

bb.q:                                             ; preds = %get_cabac.exit17
  %i.oa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @decode_cabac_residual_internal.coeff_abs_levelgt1_ctx, i64 8), i64 %.2185.i
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !82
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.oc ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @decode_cabac_residual_internal.coeff_abs_level_transition, i64 8), i64 %.2185.i
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !82  ; 2 uses
  %.promoted121 = load i8, ptr %i.od, align 1, !tbaa !82
  br label %bb.r

.critedge7.i.preheader:                           ; preds = %bb.t
  %i.og = shl i32 %i.pf, 17                       ; 4 uses
  br label %.critedge7.i

bb.r:                                             ; preds = %bb.q, %bb.t
  %.0173.i125 = phi i32 [ 2, %bb.q ], [ %i.qd, %bb.t ] ; 2 uses
  %.sroa.0.23124 = phi i32 [ %.sroa.0.21, %bb.q ], [ %.sroa.0.24, %bb.t ] ; 2 uses
  %.sroa.74.8123 = phi i32 [ %i.mx, %bb.q ], [ %i.pf, %bb.t ] ; 2 uses
  %.sroa.10849.21122 = phi ptr [ %.sroa.10849.19, %bb.q ], [ %.sroa.10849.22, %bb.t ] ; 4 uses
  %i.oh = phi i8 [ %.promoted121, %bb.q ], [ %i.pa, %bb.t ]
  %i.oi = zext i8 %i.oh to i32                    ; 2 uses
  %i.oj = shl i32 %.sroa.74.8123, 1
  %i.ok = and i32 %i.oj, 384
  %i.ol = add nuw nsw i32 %i.ok, %i.oi
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !82
  %i.op = zext i8 %i.oo to i32                    ; 2 uses
  %i.oq = sub nsw i32 %.sroa.74.8123, %i.op       ; 2 uses
  %i.or = shl i32 %i.oq, 17                       ; 2 uses
  %i.os = icmp slt i32 %i.or, %.sroa.0.23124      ; 3 uses
  %i.ot = sext i1 %i.os to i32
  %i.ou = select i1 %i.os, i32 %i.or, i32 0
  %i.ov = sub nsw i32 %.sroa.0.23124, %i.ou
  %i.ow = select i1 %i.os, i32 %i.op, i32 %i.oq   ; 2 uses
  %i.ox = xor i32 %i.ot, %i.oi                    ; 2 uses
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !82  ; 2 uses
  store i8 %i.pa, ptr %i.od, align 1, !tbaa !82
  %i.pb = sext i32 %i.ow to i64
  %i.pc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !82
  %i.pe = zext i8 %i.pd to i32                    ; 2 uses
  %i.pf = shl i32 %i.ow, %i.pe                    ; 4 uses
  %i.pg = shl i32 %i.ov, %i.pe                    ; 5 uses
  %i.ph = and i32 %i.pg, 65535
  %.not.i.i18 = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i18, label %bb.s, label %get_cabac.exit19

bb.s:                                             ; preds = %bb.r
  %i.pi = add nsw i32 %i.pg, -32768
  %i.pj = xor i32 %i.pi, %i.pg
  %i.pk = lshr exact i32 %i.pj, 15
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !82
  %i.po = zext i8 %i.pn to i32
  %i.pp = sub nsw i32 7, %i.po
  %i.pq = load i8, ptr %.sroa.10849.21122, align 1, !tbaa !82
  %i.pr = zext i8 %i.pq to i32
  %i.ps = shl nuw nsw i32 %i.pr, 9
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.10849.21122, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !82
  %i.pv = zext i8 %i.pu to i32
  %i.pw = shl nuw nsw i32 %i.pv, 1
  %i.px = or disjoint i32 %i.pw, %i.ps
  %i.py = add nsw i32 %i.px, -65535
  %i.pz = shl nsw i32 %i.py, %i.pp
  %i.qa = add i32 %i.pz, %i.pg
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.10849.21122, i64 2
  br label %get_cabac.exit19

get_cabac.exit19:                                 ; preds = %bb.r, %bb.s
  %.sroa.10849.22 = phi ptr [ %i.qb, %bb.s ], [ %.sroa.10849.21122, %bb.r ] ; 3 uses
  %.sroa.0.24 = phi i32 [ %i.qa, %bb.s ], [ %i.pg, %bb.r ] ; 3 uses
  %i.qc = and i32 %i.ox, 1
  %.not217.i = icmp eq i32 %i.qc, 0
  br i1 %.not217.i, label %.critedge7.i.thread, label %bb.t

bb.t:                                             ; preds = %get_cabac.exit19
  %i.qd = add nuw nsw i32 %.0173.i125, 1          ; 2 uses
  %exitcond153.not = icmp eq i32 %i.qd, 15
  br i1 %exitcond153.not, label %.critedge7.i.preheader, label %bb.r, !llvm.loop !4

.critedge7.i:                                     ; preds = %get_cabac_bypass.exit22, %.critedge7.i.preheader
  %.sroa.10849.24 = phi ptr [ %.sroa.10849.25, %get_cabac_bypass.exit22 ], [ %.sroa.10849.22, %.critedge7.i.preheader ] ; 4 uses
  %.sroa.0.26 = phi i32 [ %spec.select86, %get_cabac_bypass.exit22 ], [ %.sroa.0.24, %.critedge7.i.preheader ] ; 2 uses
  %.0.i = phi i32 [ %i.qv, %get_cabac_bypass.exit22 ], [ 0, %.critedge7.i.preheader ] ; 4 uses
  %i.qe = shl nsw i32 %.sroa.0.26, 1              ; 2 uses
  %i.qf = and i32 %.sroa.0.26, 32767
  %.not.i20 = icmp eq i32 %i.qf, 0
  br i1 %.not.i20, label %bb.u, label %get_cabac_bypass.exit22

bb.u:                                             ; preds = %.critedge7.i
  %i.qg = load i8, ptr %.sroa.10849.24, align 1, !tbaa !82
  %i.qh = zext i8 %i.qg to i32
  %i.qi = shl nuw nsw i32 %i.qh, 9
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.10849.24, i64 1
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !82
  %i.ql = zext i8 %i.qk to i32
  %i.qm = shl nuw nsw i32 %i.ql, 1
  %i.qn = or disjoint i32 %i.qm, %i.qi
  %i.qo = add i32 %i.qe, -65535
  %i.qp = add i32 %i.qo, %i.qn
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.10849.24, i64 2
  br label %get_cabac_bypass.exit22

get_cabac_bypass.exit22:                          ; preds = %bb.u, %.critedge7.i
  %.sroa.10849.25 = phi ptr [ %i.qq, %bb.u ], [ %.sroa.10849.24, %.critedge7.i ] ; 3 uses
  %.sroa.0.27 = phi i32 [ %i.qp, %bb.u ], [ %i.qe, %.critedge7.i ] ; 2 uses
  %i.qr = icmp sge i32 %.sroa.0.27, %i.og         ; 2 uses
  %i.qs = select i1 %i.qr, i32 %i.og, i32 0
  %spec.select86 = sub nsw i32 %.sroa.0.27, %i.qs ; 3 uses
  %i.qt = icmp samesign ult i32 %.0.i, 23
  %i.qu = select i1 %i.qr, i1 %i.qt, i1 false
  %i.qv = add nuw nsw i32 %.0.i, 1
  br i1 %i.qu, label %.critedge7.i, label %.preheader, !llvm.loop !5

.preheader:                                       ; preds = %get_cabac_bypass.exit22
  %.not218.i126 = icmp eq i32 %.0.i, 0
  br i1 %.not218.i126, label %.critedge7.i.thread, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader, %get_cabac_bypass.exit25
  %.1.i130 = phi i32 [ %i.qw, %get_cabac_bypass.exit25 ], [ %.0.i, %.preheader ]
  %.1174.i129 = phi i32 [ %i.rm, %get_cabac_bypass.exit25 ], [ 1, %.preheader ]
  %.sroa.0.29128 = phi i32 [ %spec.select88, %get_cabac_bypass.exit25 ], [ %spec.select86, %.preheader ] ; 2 uses
  %.sroa.10849.26127 = phi ptr [ %.sroa.10849.27, %get_cabac_bypass.exit25 ], [ %.sroa.10849.25, %.preheader ] ; 4 uses
  %i.qw = add nsw i32 %.1.i130, -1                ; 2 uses
  %i.qx = shl nsw i32 %.sroa.0.29128, 1           ; 2 uses
  %i.qy = and i32 %.sroa.0.29128, 32767
  %.not.i23 = icmp eq i32 %i.qy, 0
  br i1 %.not.i23, label %bb.v, label %get_cabac_bypass.exit25

bb.v:                                             ; preds = %.lr.ph131
  %i.qz = load i8, ptr %.sroa.10849.26127, align 1, !tbaa !82
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 9
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.10849.26127, i64 1
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !82
  %i.re = zext i8 %i.rd to i32
  %i.rf = shl nuw nsw i32 %i.re, 1
  %i.rg = or disjoint i32 %i.rf, %i.rb
  %i.rh = add i32 %i.qx, -65535
  %i.ri = add i32 %i.rh, %i.rg
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.10849.26127, i64 2
  br label %get_cabac_bypass.exit25

get_cabac_bypass.exit25:                          ; preds = %bb.v, %.lr.ph131
  %.sroa.10849.27 = phi ptr [ %i.rj, %bb.v ], [ %.sroa.10849.26127, %.lr.ph131 ] ; 2 uses
  %.sroa.0.30 = phi i32 [ %i.ri, %bb.v ], [ %i.qx, %.lr.ph131 ] ; 2 uses
  %i.rk = icmp sge i32 %.sroa.0.30, %i.og         ; 2 uses
  %i.rl = select i1 %i.rk, i32 %i.og, i32 0
  %spec.select88 = sub nsw i32 %.sroa.0.30, %i.rl ; 2 uses
  %spec.select89 = zext i1 %i.rk to i32
  %reass.add.i = shl i32 %.1174.i129, 1
  %i.rm = or disjoint i32 %reass.add.i, %spec.select89 ; 2 uses
  %.not218.i = icmp eq i32 %i.qw, 0
  br i1 %.not218.i, label %._crit_edge132.loopexit, label %.lr.ph131, !llvm.loop !6

._crit_edge132.loopexit:                          ; preds = %get_cabac_bypass.exit25
  %i.rn = add i32 %i.rm, 14
  br label %.critedge7.i.thread

.critedge7.i.thread:                              ; preds = %get_cabac.exit19, %.preheader, %._crit_edge132.loopexit
  %.sroa.10849.28 = phi ptr [ %.sroa.10849.27, %._crit_edge132.loopexit ], [ %.sroa.10849.25, %.preheader ], [ %.sroa.10849.22, %get_cabac.exit19 ] ; 2 uses
  %.sroa.0.32 = phi i32 [ %spec.select88, %._crit_edge132.loopexit ], [ %spec.select86, %.preheader ], [ %.sroa.0.24, %get_cabac.exit19 ] ; 2 uses
  %.2.i = phi i32 [ %i.rn, %._crit_edge132.loopexit ], [ 15, %.preheader ], [ %.0173.i125, %get_cabac.exit19 ]
  %i.ro = sub i32 0, %.2.i                        ; 2 uses
  %i.rp = shl nsw i32 %.sroa.0.32, 1              ; 2 uses
  %i.rq = and i32 %.sroa.0.32, 32767
  %.not.i228.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i228.i, label %get_cabac_bypass_sign.exit233.i.sink.split, label %get_cabac_bypass_sign.exit233.i

get_cabac_bypass_sign.exit233.i.sink.split:       ; preds = %.critedge7.i.thread, %bb.p
  %.sroa.10849.28.sink229 = phi ptr [ %.sroa.10849.19, %bb.p ], [ %.sroa.10849.28, %.critedge7.i.thread ] ; 3 uses
  %.sink220 = phi i32 [ %i.ny, %bb.p ], [ %i.rp, %.critedge7.i.thread ]
  %.sink.ph = phi i32 [ %i.mx, %bb.p ], [ %i.pf, %.critedge7.i.thread ]
  %.sink201.ph = phi i32 [ -1, %bb.p ], [ %i.ro, %.critedge7.i.thread ]
  %.3186.in.i.ph = phi i8 [ %i.nx, %bb.p ], [ %i.of, %.critedge7.i.thread ]
  %i.rr = load i8, ptr %.sroa.10849.28.sink229, align 1, !tbaa !82
  %i.rs = zext i8 %i.rr to i32
  %i.rt = shl nuw nsw i32 %i.rs, 9
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.10849.28.sink229, i64 1
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !82
  %i.rw = zext i8 %i.rv to i32
  %i.rx = shl nuw nsw i32 %i.rw, 1
  %i.ry = or disjoint i32 %i.rx, %i.rt
  %i.rz = add i32 %.sink220, -65535
  %i.sa = add i32 %i.rz, %i.ry
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.10849.28.sink229, i64 2
  br label %get_cabac_bypass_sign.exit233.i

get_cabac_bypass_sign.exit233.i:                  ; preds = %get_cabac_bypass_sign.exit233.i.sink.split, %.critedge7.i.thread, %bb.p
  %.sink = phi i32 [ %i.mx, %bb.p ], [ %i.pf, %.critedge7.i.thread ], [ %.sink.ph, %get_cabac_bypass_sign.exit233.i.sink.split ] ; 3 uses
  %.sroa.0.33.sink = phi i32 [ %i.ny, %bb.p ], [ %i.rp, %.critedge7.i.thread ], [ %i.sa, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %.sink201 = phi i32 [ -1, %bb.p ], [ %i.ro, %.critedge7.i.thread ], [ %.sink201.ph, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %.sroa.10849.30 = phi ptr [ %.sroa.10849.19, %bb.p ], [ %.sroa.10849.28, %.critedge7.i.thread ], [ %i.sb, %get_cabac_bypass_sign.exit233.i.sink.split ] ; 2 uses
  %.3186.in.i = phi i8 [ %i.nx, %bb.p ], [ %i.of, %.critedge7.i.thread ], [ %.3186.in.i.ph, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %i.sc = shl i32 %.sink, 17                      ; 2 uses
  %i.sd = sub nsw i32 %.sroa.0.33.sink, %i.sc     ; 2 uses
  %i.se = ashr i32 %i.sd, 31                      ; 3 uses
  %i.sf = and i32 %i.se, %i.sc
  %i.sg = add nsw i32 %i.sf, %i.sd                ; 2 uses
  %i.sh = xor i32 %i.se, %.sink201
  %i.si = sub nsw i32 %i.sh, %i.se
  %i.sj = trunc i32 %i.si to i16
  %i.sk = zext i8 %i.ly to i64
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.sk
  store i16 %i.sj, ptr %i.sl, align 2, !tbaa !96
  %.3186.i = zext i8 %.3186.in.i to i64
  %.not219.i = icmp eq i64 %indvars.iv.next155, 0
  br i1 %.not219.i, label %decode_cabac_residual_internal.exit, label %.preheader90, !llvm.loop !7

decode_cabac_residual_internal.exit:              ; preds = %get_cabac_bypass_sign.exit241.i, %get_cabac_bypass_sign.exit233.i
  %.sroa.10849.31 = phi ptr [ %.sroa.10849.30, %get_cabac_bypass_sign.exit233.i ], [ %.sroa.10849.17, %get_cabac_bypass_sign.exit241.i ]
  %.sroa.74.11 = phi i32 [ %.sink, %get_cabac_bypass_sign.exit233.i ], [ %.sink195, %get_cabac_bypass_sign.exit241.i ]
  %.sroa.0.35 = phi i32 [ %i.sg, %get_cabac_bypass_sign.exit233.i ], [ %i.ll, %get_cabac_bypass_sign.exit241.i ]
  store i32 %.sroa.74.11, ptr %i.c, align 4, !tbaa !129
  store i32 %.sroa.0.35, ptr %i.b, align 16, !tbaa !116
  store ptr %.sroa.10849.31, ptr %i.f, align 16, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_cabac_residual_nondc_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 -2147483648, 48) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 15, 65) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 33648 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129  ; 2 uses
  %i.e = load i32, ptr %i.b, align 16, !tbaa !116 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !115 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 33680 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 21064
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [56 x i8], ptr @decode_cabac_residual_internal.significant_coeff_flag_offset, i64 %i.k
  %i.m = zext nneg i32 %3 to i64                  ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds [56 x i8], ptr @decode_cabac_residual_internal.last_coeff_flag_offset, i64 %i.k
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4, !tbaa !93
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @decode_cabac_residual_internal.coeff_abs_level_m1_offset, i64 %i.m
  %i.x = load i32, ptr %i.w, align 4, !tbaa !93
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y ; 4 uses
  %i.aa = icmp eq i32 %7, 64                      ; 2 uses
  br i1 %i.aa, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ab = add nsw i32 %7, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds [63 x i8], ptr @decode_cabac_residual_internal.significant_coeff_flag_offset_8x8, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %indvars.iv229 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next230, %select.unfold ] ; 4 uses
  %.0187.i184 = phi i32 [ 0, %bb.b ], [ %.2189.i.ph, %select.unfold ] ; 3 uses
  %.sroa.0.22182 = phi i32 [ %i.e, %bb.b ], [ %.sroa.0.24.ph, %select.unfold ] ; 2 uses
  %.sroa.84.12181 = phi i32 [ %i.d, %bb.b ], [ %.sroa.84.14.ph, %select.unfold ] ; 2 uses
  %.sroa.12689.22180 = phi ptr [ %i.g, %bb.b ], [ %.sroa.12689.24.ph, %select.unfold ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv229
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !82
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !82
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl i32 %.sroa.84.12181, 1
  %i.ak = and i32 %i.aj, 384
  %i.al = add nuw nsw i32 %i.ak, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !82
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = sub nsw i32 %.sroa.84.12181, %i.ap      ; 2 uses
  %i.ar = shl i32 %i.aq, 17                       ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.0.22182      ; 3 uses
  %i.at = sext i1 %i.as to i32
  %i.au = select i1 %i.as, i32 %i.ar, i32 0
  %i.av = sub nsw i32 %.sroa.0.22182, %i.au
  %i.aw = select i1 %i.as, i32 %i.ap, i32 %i.aq   ; 2 uses
  %i.ax = xor i32 %i.at, %i.ai                    ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !82
  store i8 %i.ba, ptr %i.ag, align 1, !tbaa !82
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !82
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = shl i32 %i.aw, %i.be                    ; 3 uses
  %i.bg = shl i32 %i.av, %i.be                    ; 5 uses
  %i.bh = and i32 %i.bg, 65535
  %.not.i.i7 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i7, label %bb.d, label %get_cabac.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = add nsw i32 %i.bg, -32768
  %i.bj = xor i32 %i.bi, %i.bg
  %i.bk = lshr exact i32 %i.bj, 15
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82
  %i.bo = zext i8 %i.bn to i32
  %i.bp = sub nsw i32 7, %i.bo
  %i.bq = load i8, ptr %.sroa.12689.22180, align 1, !tbaa !82
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 9
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.12689.22180, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !82
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = or disjoint i32 %i.bw, %i.bs
  %i.by = add nsw i32 %i.bx, -65535
  %i.bz = shl nsw i32 %i.by, %i.bp
  %i.ca = add i32 %i.bz, %i.bg
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.12689.22180, i64 2
  br label %get_cabac.exit

get_cabac.exit:                                   ; preds = %bb.c, %bb.d
  %.sroa.12689.26 = phi ptr [ %i.cb, %bb.d ], [ %.sroa.12689.22180, %bb.c ] ; 5 uses
  %.sroa.0.26 = phi i32 [ %i.ca, %bb.d ], [ %i.bg, %bb.c ] ; 3 uses
  %i.cc = and i32 %i.ax, 1
  %.not214.i = icmp eq i32 %i.cc, 0
  br i1 %.not214.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %get_cabac.exit
  %i.cd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1280), i64 %indvars.iv229
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !82
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cf ; 2 uses
  %i.ch = add nsw i32 %.0187.i184, 1              ; 2 uses
  %i.ci = sext i32 %.0187.i184 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv229 to i32
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !93
  %i.cl = load i8, ptr %i.cg, align 1, !tbaa !82
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = shl i32 %i.bf, 1
  %i.co = and i32 %i.cn, 384
  %i.cp = add nuw nsw i32 %i.co, %i.cm
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !82
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = sub nsw i32 %i.bf, %i.ct                ; 2 uses
  %i.cv = shl i32 %i.cu, 17                       ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %.sroa.0.26         ; 3 uses
  %i.cx = sext i1 %i.cw to i32
  %i.cy = select i1 %i.cw, i32 %i.cv, i32 0
  %i.cz = sub nsw i32 %.sroa.0.26, %i.cy
  %i.da = select i1 %i.cw, i32 %i.ct, i32 %i.cu   ; 2 uses
  %i.db = xor i32 %i.cx, %i.cm                    ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !82
  store i8 %i.de, ptr %i.cg, align 1, !tbaa !82
  %i.df = sext i32 %i.da to i64
  %i.dg = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !82
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = shl i32 %i.da, %i.di                    ; 2 uses
  %i.dk = shl i32 %i.cz, %i.di                    ; 5 uses
  %i.dl = and i32 %i.dk, 65535
  %.not.i.i8 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i8, label %bb.f, label %get_cabac.exit9

bb.f:                                             ; preds = %bb.e
  %i.dm = add nsw i32 %i.dk, -32768
  %i.dn = xor i32 %i.dm, %i.dk
  %i.do = lshr exact i32 %i.dn, 15
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !82
  %i.ds = zext i8 %i.dr to i32
  %i.dt = sub nsw i32 7, %i.ds
  %i.du = load i8, ptr %.sroa.12689.26, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 9
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.12689.26, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !82
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = add nsw i32 %i.eb, -65535
  %i.ed = shl nsw i32 %i.ec, %i.dt
  %i.ee = add i32 %i.ed, %i.dk
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.12689.26, i64 2
  br label %get_cabac.exit9

get_cabac.exit9:                                  ; preds = %bb.e, %bb.f
  %.sroa.12689.27 = phi ptr [ %i.ef, %bb.f ], [ %.sroa.12689.26, %bb.e ] ; 2 uses
  %.sroa.0.27 = phi i32 [ %i.ee, %bb.f ], [ %i.dk, %bb.e ] ; 2 uses
  %i.eg = and i32 %i.db, 1
end_hunk_1
begin_hunk_2_@decode_cabac_residual_dc_internal:.lr.ph.preheader
  %i.oc = and i32 %.sroa.0.30, 32767
  %.not.i232.i = icmp eq i32 %i.oc, 0
  br i1 %.not.i232.i, label %get_cabac_bypass_sign.exit233.i.sink.split, label %get_cabac_bypass_sign.exit233.i

bb.o:                                             ; preds = %get_cabac.exit18
  %i.od = getelementptr inbounds nuw i8, ptr @decode_cabac_residual_internal.coeff_abs_levelgt1_ctx, i64 %.2185.i
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !82
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @decode_cabac_residual_internal.coeff_abs_level_transition, i64 8), i64 %.2185.i
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !82  ; 2 uses
  %.promoted162 = load i8, ptr %i.og, align 1, !tbaa !82
  br label %bb.p

.critedge7.i.preheader:                           ; preds = %bb.r
  %i.oj = shl i32 %i.pi, 17                       ; 4 uses
  br label %.critedge7.i

bb.p:                                             ; preds = %bb.o, %bb.r
  %.0173.i166 = phi i32 [ 2, %bb.o ], [ %i.qg, %bb.r ] ; 2 uses
  %.sroa.0.12165 = phi i32 [ %.sroa.0.30, %bb.o ], [ %.sroa.0.31, %bb.r ] ; 2 uses
  %.sroa.74.7164 = phi i32 [ %i.na, %bb.o ], [ %i.pi, %bb.r ] ; 2 uses
  %.sroa.10875.12163 = phi ptr [ %.sroa.10875.28, %bb.o ], [ %.sroa.10875.29, %bb.r ] ; 4 uses
  %i.ok = phi i8 [ %.promoted162, %bb.o ], [ %i.pd, %bb.r ]
  %i.ol = zext i8 %i.ok to i32                    ; 2 uses
  %i.om = shl i32 %.sroa.74.7164, 1
  %i.on = and i32 %i.om, 384
  %i.oo = add nuw nsw i32 %i.on, %i.ol
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !82
  %i.os = zext i8 %i.or to i32                    ; 2 uses
  %i.ot = sub nsw i32 %.sroa.74.7164, %i.os       ; 2 uses
  %i.ou = shl i32 %i.ot, 17                       ; 2 uses
  %i.ov = icmp slt i32 %i.ou, %.sroa.0.12165      ; 3 uses
  %i.ow = sext i1 %i.ov to i32
  %i.ox = select i1 %i.ov, i32 %i.ou, i32 0
  %i.oy = sub nsw i32 %.sroa.0.12165, %i.ox
  %i.oz = select i1 %i.ov, i32 %i.os, i32 %i.ot   ; 2 uses
  %i.pa = xor i32 %i.ow, %i.ol                    ; 2 uses
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !82  ; 2 uses
  store i8 %i.pd, ptr %i.og, align 1, !tbaa !82
  %i.pe = sext i32 %i.oz to i64
  %i.pf = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !82
  %i.ph = zext i8 %i.pg to i32                    ; 2 uses
  %i.pi = shl i32 %i.oz, %i.ph                    ; 4 uses
  %i.pj = shl i32 %i.oy, %i.ph                    ; 5 uses
  %i.pk = and i32 %i.pj, 65535
  %.not.i.i19 = icmp eq i32 %i.pk, 0
  br i1 %.not.i.i19, label %bb.q, label %get_cabac.exit20

bb.q:                                             ; preds = %bb.p
  %i.pl = add nsw i32 %i.pj, -32768
  %i.pm = xor i32 %i.pl, %i.pj
  %i.pn = lshr exact i32 %i.pm, 15
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !82
  %i.pr = zext i8 %i.pq to i32
  %i.ps = sub nsw i32 7, %i.pr
  %i.pt = load i8, ptr %.sroa.10875.12163, align 1, !tbaa !82
  %i.pu = zext i8 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 9
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.10875.12163, i64 1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !82
  %i.py = zext i8 %i.px to i32
  %i.pz = shl nuw nsw i32 %i.py, 1
  %i.qa = or disjoint i32 %i.pz, %i.pv
  %i.qb = add nsw i32 %i.qa, -65535
  %i.qc = shl nsw i32 %i.qb, %i.ps
  %i.qd = add i32 %i.qc, %i.pj
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.10875.12163, i64 2
  br label %get_cabac.exit20

get_cabac.exit20:                                 ; preds = %bb.p, %bb.q
  %.sroa.10875.29 = phi ptr [ %i.qe, %bb.q ], [ %.sroa.10875.12163, %bb.p ] ; 3 uses
  %.sroa.0.31 = phi i32 [ %i.qd, %bb.q ], [ %i.pj, %bb.p ] ; 3 uses
  %i.qf = and i32 %i.pa, 1
  %.not217.i = icmp eq i32 %i.qf, 0
  br i1 %.not217.i, label %.critedge7.i.thread, label %bb.r

bb.r:                                             ; preds = %get_cabac.exit20
  %i.qg = add nuw nsw i32 %.0173.i166, 1          ; 2 uses
  %exitcond194.not = icmp eq i32 %i.qg, 15
  br i1 %exitcond194.not, label %.critedge7.i.preheader, label %bb.p, !llvm.loop !4

.critedge7.i:                                     ; preds = %get_cabac_bypass.exit23, %.critedge7.i.preheader
  %.sroa.10875.17 = phi ptr [ %.sroa.10875.30, %get_cabac_bypass.exit23 ], [ %.sroa.10875.29, %.critedge7.i.preheader ] ; 4 uses
  %.sroa.0.17 = phi i32 [ %spec.select112, %get_cabac_bypass.exit23 ], [ %.sroa.0.31, %.critedge7.i.preheader ] ; 2 uses
  %.0.i = phi i32 [ %i.qy, %get_cabac_bypass.exit23 ], [ 0, %.critedge7.i.preheader ] ; 4 uses
  %i.qh = shl nsw i32 %.sroa.0.17, 1              ; 2 uses
  %i.qi = and i32 %.sroa.0.17, 32767
  %.not.i21 = icmp eq i32 %i.qi, 0
  br i1 %.not.i21, label %bb.s, label %get_cabac_bypass.exit23

bb.s:                                             ; preds = %.critedge7.i
  %i.qj = load i8, ptr %.sroa.10875.17, align 1, !tbaa !82
  %i.qk = zext i8 %i.qj to i32
  %i.ql = shl nuw nsw i32 %i.qk, 9
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.10875.17, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !82
  %i.qo = zext i8 %i.qn to i32
  %i.qp = shl nuw nsw i32 %i.qo, 1
  %i.qq = or disjoint i32 %i.qp, %i.ql
  %i.qr = add i32 %i.qh, -65535
  %i.qs = add i32 %i.qr, %i.qq
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.10875.17, i64 2
  br label %get_cabac_bypass.exit23

get_cabac_bypass.exit23:                          ; preds = %bb.s, %.critedge7.i
  %.sroa.10875.30 = phi ptr [ %i.qt, %bb.s ], [ %.sroa.10875.17, %.critedge7.i ] ; 3 uses
  %.sroa.0.32 = phi i32 [ %i.qs, %bb.s ], [ %i.qh, %.critedge7.i ] ; 2 uses
  %i.qu = icmp sge i32 %.sroa.0.32, %i.oj         ; 2 uses
  %i.qv = select i1 %i.qu, i32 %i.oj, i32 0
  %spec.select112 = sub nsw i32 %.sroa.0.32, %i.qv ; 3 uses
  %i.qw = icmp samesign ult i32 %.0.i, 23
  %i.qx = select i1 %i.qu, i1 %i.qw, i1 false
  %i.qy = add nuw nsw i32 %.0.i, 1
  br i1 %i.qx, label %.critedge7.i, label %.preheader, !llvm.loop !5

.preheader:                                       ; preds = %get_cabac_bypass.exit23
  %.not218.i167 = icmp eq i32 %.0.i, 0
  br i1 %.not218.i167, label %.critedge7.i.thread, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader, %get_cabac_bypass.exit26
  %.1.i171 = phi i32 [ %i.qz, %get_cabac_bypass.exit26 ], [ %.0.i, %.preheader ]
  %.1174.i170 = phi i32 [ %i.rp, %get_cabac_bypass.exit26 ], [ 1, %.preheader ]
  %.sroa.0.18169 = phi i32 [ %spec.select114, %get_cabac_bypass.exit26 ], [ %spec.select112, %.preheader ] ; 2 uses
  %.sroa.10875.18168 = phi ptr [ %.sroa.10875.31, %get_cabac_bypass.exit26 ], [ %.sroa.10875.30, %.preheader ] ; 4 uses
  %i.qz = add nsw i32 %.1.i171, -1                ; 2 uses
  %i.ra = shl nsw i32 %.sroa.0.18169, 1           ; 2 uses
  %i.rb = and i32 %.sroa.0.18169, 32767
  %.not.i24 = icmp eq i32 %i.rb, 0
  br i1 %.not.i24, label %bb.t, label %get_cabac_bypass.exit26

bb.t:                                             ; preds = %.lr.ph172
  %i.rc = load i8, ptr %.sroa.10875.18168, align 1, !tbaa !82
  %i.rd = zext i8 %i.rc to i32
  %i.re = shl nuw nsw i32 %i.rd, 9
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.10875.18168, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !82
  %i.rh = zext i8 %i.rg to i32
  %i.ri = shl nuw nsw i32 %i.rh, 1
  %i.rj = or disjoint i32 %i.ri, %i.re
  %i.rk = add i32 %i.ra, -65535
  %i.rl = add i32 %i.rk, %i.rj
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.10875.18168, i64 2
  br label %get_cabac_bypass.exit26

get_cabac_bypass.exit26:                          ; preds = %bb.t, %.lr.ph172
  %.sroa.10875.31 = phi ptr [ %i.rm, %bb.t ], [ %.sroa.10875.18168, %.lr.ph172 ] ; 2 uses
  %.sroa.0.34 = phi i32 [ %i.rl, %bb.t ], [ %i.ra, %.lr.ph172 ] ; 2 uses
  %i.rn = icmp sge i32 %.sroa.0.34, %i.oj         ; 2 uses
  %i.ro = select i1 %i.rn, i32 %i.oj, i32 0
  %spec.select114 = sub nsw i32 %.sroa.0.34, %i.ro ; 2 uses
  %spec.select115 = zext i1 %i.rn to i32
  %reass.add.i = shl i32 %.1174.i170, 1
  %i.rp = or disjoint i32 %reass.add.i, %spec.select115 ; 2 uses
  %.not218.i = icmp eq i32 %i.qz, 0
  br i1 %.not218.i, label %._crit_edge173.loopexit, label %.lr.ph172, !llvm.loop !6

._crit_edge173.loopexit:                          ; preds = %get_cabac_bypass.exit26
  %i.rq = add i32 %i.rp, 14
  br label %.critedge7.i.thread

.critedge7.i.thread:                              ; preds = %get_cabac.exit20, %.preheader, %._crit_edge173.loopexit
  %.sroa.10875.14 = phi ptr [ %.sroa.10875.31, %._crit_edge173.loopexit ], [ %.sroa.10875.30, %.preheader ], [ %.sroa.10875.29, %get_cabac.exit20 ] ; 2 uses
  %.sroa.0.14 = phi i32 [ %spec.select114, %._crit_edge173.loopexit ], [ %spec.select112, %.preheader ], [ %.sroa.0.31, %get_cabac.exit20 ] ; 2 uses
  %.2.i = phi i32 [ %i.rq, %._crit_edge173.loopexit ], [ 15, %.preheader ], [ %.0173.i166, %get_cabac.exit20 ]
  %i.rr = sub i32 0, %.2.i                        ; 2 uses
  %i.rs = shl nsw i32 %.sroa.0.14, 1              ; 2 uses
  %i.rt = and i32 %.sroa.0.14, 32767
  %.not.i228.i = icmp eq i32 %i.rt, 0
  br i1 %.not.i228.i, label %get_cabac_bypass_sign.exit233.i.sink.split, label %get_cabac_bypass_sign.exit233.i

get_cabac_bypass_sign.exit233.i.sink.split:       ; preds = %.critedge7.i.thread, %bb.n
  %.sroa.10875.14.sink276 = phi ptr [ %.sroa.10875.28, %bb.n ], [ %.sroa.10875.14, %.critedge7.i.thread ] ; 3 uses
  %.sink270 = phi i32 [ %i.ob, %bb.n ], [ %i.rs, %.critedge7.i.thread ]
  %.sink259.ph = phi i32 [ %i.na, %bb.n ], [ %i.pi, %.critedge7.i.thread ]
  %.sink252.ph = phi i32 [ -1, %bb.n ], [ %i.rr, %.critedge7.i.thread ]
  %.3186.in.i.ph = phi i8 [ %i.oa, %bb.n ], [ %i.oi, %.critedge7.i.thread ]
  %i.ru = load i8, ptr %.sroa.10875.14.sink276, align 1, !tbaa !82
  %i.rv = zext i8 %i.ru to i32
  %i.rw = shl nuw nsw i32 %i.rv, 9
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.10875.14.sink276, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !82
  %i.rz = zext i8 %i.ry to i32
  %i.sa = shl nuw nsw i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %i.rw
  %i.sc = add i32 %.sink270, -65535
  %i.sd = add i32 %i.sc, %i.sb
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.10875.14.sink276, i64 2
  br label %get_cabac_bypass_sign.exit233.i

get_cabac_bypass_sign.exit233.i:                  ; preds = %get_cabac_bypass_sign.exit233.i.sink.split, %.critedge7.i.thread, %bb.n
  %.sink259 = phi i32 [ %i.na, %bb.n ], [ %i.pi, %.critedge7.i.thread ], [ %.sink259.ph, %get_cabac_bypass_sign.exit233.i.sink.split ] ; 3 uses
  %.sroa.0.15.sink = phi i32 [ %i.ob, %bb.n ], [ %i.rs, %.critedge7.i.thread ], [ %i.sd, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %.sink252 = phi i32 [ -1, %bb.n ], [ %i.rr, %.critedge7.i.thread ], [ %.sink252.ph, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %.sroa.10875.16 = phi ptr [ %.sroa.10875.28, %bb.n ], [ %.sroa.10875.14, %.critedge7.i.thread ], [ %i.se, %get_cabac_bypass_sign.exit233.i.sink.split ] ; 2 uses
  %.3186.in.i = phi i8 [ %i.oa, %bb.n ], [ %i.oi, %.critedge7.i.thread ], [ %.3186.in.i.ph, %get_cabac_bypass_sign.exit233.i.sink.split ]
  %i.sf = shl i32 %.sink259, 17                   ; 2 uses
  %i.sg = sub nsw i32 %.sroa.0.15.sink, %i.sf     ; 2 uses
  %i.sh = ashr i32 %i.sg, 31                      ; 3 uses
  %i.si = and i32 %i.sh, %i.sf
  %i.sj = add nsw i32 %i.si, %i.sg                ; 2 uses
  %i.sk = xor i32 %i.sh, %.sink252
  %i.sl = sub nsw i32 %i.sk, %i.sh
  %i.sm = trunc i32 %i.sl to i16
  %i.sn = zext i8 %i.mb to i64
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.sn
  store i16 %i.sm, ptr %i.so, align 2, !tbaa !96
  %.3186.i = zext i8 %.3186.in.i to i64
  %.not219.i = icmp eq i64 %indvars.iv.next196, 0
  br i1 %.not219.i, label %decode_cabac_residual_internal.exit, label %.preheader116, !llvm.loop !7

decode_cabac_residual_internal.exit:              ; preds = %get_cabac_bypass_sign.exit241.i, %get_cabac_bypass_sign.exit233.i
  %.sroa.10875.21 = phi ptr [ %.sroa.10875.16, %get_cabac_bypass_sign.exit233.i ], [ %.sroa.10875.7, %get_cabac_bypass_sign.exit241.i ]
  %.sroa.74.11 = phi i32 [ %.sink259, %get_cabac_bypass_sign.exit233.i ], [ %.sink244, %get_cabac_bypass_sign.exit241.i ]
  %.sroa.0.21 = phi i32 [ %i.sj, %get_cabac_bypass_sign.exit233.i ], [ %i.lo, %get_cabac_bypass_sign.exit241.i ]
  store i32 %.sroa.74.11, ptr %i.c, align 4, !tbaa !129
  store i32 %.sroa.0.21, ptr %i.b, align 16, !tbaa !116
  store ptr %.sroa.10875.21, ptr %i.d, align 16, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !83}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = distinct !{!3, !83}
!4 = distinct !{!4, !83}
!5 = distinct !{!5, !83}
!6 = distinct !{!6, !83}
!7 = distinct !{!7, !83}
!8 = distinct !{!8, !83}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 1, !"override-stack-alignment", i32 16}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS11H264Context", !18, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!"GetBitContext", !20, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!22 = !{!"p1 _ZTS9ERContext", !18, i64 0}
!23 = !{!"H264PredWeightTable", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 800, !14, i64 2336}
!24 = !{!"long", !14, i64 0}
!25 = !{!"CABACContext", !15, i64 0, !15, i64 4, !20, i64 8, !20, i64 16, !20, i64 24}
!26 = !{!"H264SliceContext", !19, i64 0, !21, i64 8, !22, i64 32, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !14, i64 60, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !23, i64 88, !15, i64 20856, !15, i64 20860, !15, i64 20864, !15, i64 20868, !14, i64 20872, !20, i64 20912, !15, i64 20920, !15, i64 20924, !15, i64 20928, !14, i64 20932, !15, i64 20940, !15, i64 20944, !15, i64 20948, !14, i64 20952, !20, i64 20960, !15, i64 20968, !15, i64 20972, !15, i64 20976, !15, i64 20980, !15, i64 20984, !24, i64 20992, !24, i64 21000, !24, i64 21008, !24, i64 21016, !15, i64 21024, !15, i64 21028, !15, i64 21032, !15, i64 21036, !15, i64 21040, !15, i64 21044, !15, i64 21048, !15, i64 21052, !15, i64 21056, !15, i64 21060, !15, i64 21064, !15, i64 21068, !15, i64 21072, !15, i64 21076, !15, i64 21080, !15, i64 21084, !15, i64 21088, !15, i64 21092, !15, i64 21096, !15, i64 21100, !14, i64 21104, !14, i64 21232, !14, i64 21488, !14, i64 21872, !14, i64 22640, !15, i64 22648, !14, i64 22656, !14, i64 28032, !14, i64 28544, !15, i64 28552, !20, i64 28560, !20, i64 28568, !20, i64 28576, !14, i64 28584, !15, i64 28600, !15, i64 28604, !14, i64 28608, !14, i64 28616, !14, i64 28736, !14, i64 29056, !14, i64 29136, !14, i64 29296, !14, i64 29336, !14, i64 29344, !14, i64 32416, !14, i64 32608, !14, i64 33632, !25, i64 33648, !14, i64 33680, !15, i64 34704, !14, i64 34708, !15, i64 35512, !15, i64 35516, !15, i64 35520, !15, i64 35524, !15, i64 35528, !15, i64 35532, !14, i64 35536, !15, i64 35544, !15, i64 35548}
!27 = !{!26, !15, i64 56}
!28 = !{!"p1 _ZTS7AVClass", !18, i64 0}
!29 = !{!"p1 _ZTS14AVCodecContext", !18, i64 0}
!30 = !{!"VideoDSPContext", !18, i64 0, !18, i64 8}
!31 = !{!"H264DSPContext", !14, i64 0, !14, i64 32, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264}
!32 = !{!"H264ChromaContext", !14, i64 0, !14, i64 32}
!33 = !{!"H264QpelContext", !14, i64 0, !14, i64 384}
!34 = !{!"p1 _ZTS11H264Picture", !18, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !18, i64 0}
!36 = !{!"p1 _ZTS19ThreadFrameProgress", !18, i64 0}
!37 = !{!"ThreadFrame", !35, i64 0, !14, i64 8, !36, i64 24}
!38 = !{!"p1 int", !18, i64 0}
!39 = !{!"p1 _ZTS3PPS", !18, i64 0}
!40 = !{!"H264Picture", !35, i64 0, !37, i64 8, !35, i64 40, !20, i64 48, !20, i64 56, !14, i64 64, !14, i64 80, !38, i64 96, !38, i64 104, !18, i64 112, !14, i64 120, !14, i64 136, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !14, i64 164, !14, i64 676, !15, i64 692, !15, i64 696, !15, i64 700, !15, i64 704, !15, i64 708, !15, i64 712, !15, i64 716, !39, i64 720, !15, i64 728, !15, i64 732, !15, i64 736, !18, i64 744, !15, i64 752}
!41 = !{!"p1 _ZTS16H264SliceContext", !18, i64 0}
!42 = !{!"p1 _ZTS8H2645NAL", !18, i64 0}
!43 = !{!"p1 _ZTS11AVBufferRef", !18, i64 0}
!44 = !{!"H2645RBSP", !20, i64 0, !43, i64 8, !15, i64 16, !15, i64 20}
!45 = !{!"H2645Packet", !42, i64 0, !44, i64 8, !15, i64 32, !15, i64 36, !15, i64 40}
!46 = !{!"H264PredContext", !14, i64 0, !14, i64 120, !14, i64 216, !14, i64 304, !14, i64 376, !14, i64 392, !14, i64 408, !14, i64 424, !14, i64 448}
!47 = !{!"p1 short", !18, i64 0}
!48 = !{!"p1 _ZTS3SPS", !18, i64 0}
!49 = !{!"H264ParamSets", !14, i64 0, !14, i64 256, !39, i64 2304, !48, i64 2312, !14, i64 2320}
!50 = !{!"H264POCContext", !15, i64 0, !15, i64 4, !15, i64 8, !14, i64 12, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40}
!51 = !{!"p1 _ZTS11ThreadFrame", !18, i64 0}
!52 = !{!"p1 _ZTS14ThreadProgress", !18, i64 0}
!53 = !{!"ERPicture", !35, i64 0, !51, i64 8, !52, i64 16, !14, i64 24, !14, i64 40, !38, i64 56, !15, i64 64}
!54 = !{!"short", !14, i64 0}
!55 = !{!"ERContext", !29, i64 0, !18, i64 8, !38, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !24, i64 40, !24, i64 48, !14, i64 56, !15, i64 60, !20, i64 64, !20, i64 72, !14, i64 80, !20, i64 104, !20, i64 112, !14, i64 120, !53, i64 184, !53, i64 256, !53, i64 328, !14, i64 400, !14, i64 416, !54, i64 432, !54, i64 434, !15, i64 436, !15, i64 440, !18, i64 448, !18, i64 456}
!56 = !{!"AVFilmGrainAFGS1Params", !15, i64 0, !14, i64 8}
!57 = !{!"FFITUTT35Meta", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !56, i64 56}
!58 = !{!"any p2 pointer", !18, i64 0}
!59 = !{!"p2 _ZTS11AVBufferRef", !58, i64 0}
!60 = !{!"H2645SEIUnregistered", !59, i64 0, !15, i64 8, !15, i64 12}
!61 = !{!"H2645SEIFramePacking", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!62 = !{!"H2645SEIDisplayOrientation", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!63 = !{!"H2645SEIAlternativeTransfer", !15, i64 0, !15, i64 4}
!64 = !{!"H2645SEIAmbientViewingEnvironment", !15, i64 0, !15, i64 4, !54, i64 8, !54, i64 10}
!65 = !{!"H2645SEIMasteringDisplay", !15, i64 0, !14, i64 4, !14, i64 16, !15, i64 20, !15, i64 24}
!66 = !{!"H2645SEIContentLight", !15, i64 0, !54, i64 4, !54, i64 6}
!67 = !{!"p1 _ZTS32H2645SEIFilmGrainCharacteristics", !18, i64 0}
!68 = !{!"H2645SEI", !57, i64 0, !60, i64 128, !61, i64 144, !62, i64 176, !63, i64 192, !64, i64 200, !65, i64 212, !66, i64 240, !67, i64 248}
!69 = !{!"H264SEIPictureTiming", !14, i64 0, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !14, i64 64, !15, i64 136}
!70 = !{!"H264SEIRecoveryPoint", !15, i64 0}
!71 = !{!"H264SEIBufferingPeriod", !15, i64 0, !14, i64 4}
!72 = !{!"H264SEIGreenMetaData", !14, i64 0, !14, i64 1, !54, i64 2, !54, i64 4, !14, i64 6, !14, i64 7, !14, i64 8, !14, i64 9, !14, i64 10, !54, i64 12}
!73 = !{!"H264SEIContext", !68, i64 0, !69, i64 256, !70, i64 396, !71, i64 400, !72, i64 532}
!74 = !{!"p1 _ZTS15AVRefStructPool", !18, i64 0}
!75 = !{!"H264Context", !28, i64 0, !29, i64 8, !30, i64 16, !31, i64 32, !32, i64 304, !33, i64 368, !14, i64 1136, !34, i64 28496, !40, i64 28504, !40, i64 29264, !41, i64 30024, !15, i64 30032, !15, i64 30036, !45, i64 30040, !15, i64 30088, !15, i64 30092, !15, i64 30096, !15, i64 30100, !15, i64 30104, !15, i64 30108, !15, i64 30112, !15, i64 30116, !15, i64 30120, !15, i64 30124, !15, i64 30128, !15, i64 30132, !15, i64 30136, !15, i64 30140, !15, i64 30144, !15, i64 30148, !15, i64 30152, !20, i64 30160, !46, i64 30168, !20, i64 30640, !14, i64 30648, !38, i64 31032, !38, i64 31040, !15, i64 31048, !47, i64 31056, !15, i64 31064, !15, i64 31068, !15, i64 31072, !20, i64 31080, !47, i64 31088, !20, i64 31096, !14, i64 31104, !20, i64 31120, !14, i64 31128, !14, i64 31144, !14, i64 31160, !14, i64 31224, !14, i64 31288, !14, i64 31304, !14, i64 31368, !14, i64 31432, !14, i64 31448, !14, i64 31512, !14, i64 31576, !14, i64 31592, !14, i64 31656, !15, i64 31720, !15, i64 31724, !15, i64 31728, !15, i64 31732, !15, i64 31736, !15, i64 31740, !15, i64 31744, !15, i64 31748, !15, i64 31752, !15, i64 31756, !15, i64 31760, !15, i64 31764, !49, i64 31768, !47, i64 34096, !50, i64 34104, !14, i64 34152, !14, i64 34264, !14, i64 34520, !14, i64 34776, !14, i64 34920, !34, i64 34984, !15, i64 34992, !15, i64 34996, !14, i64 35000, !15, i64 35804, !15, i64 35808, !15, i64 35812, !15, i64 35816, !15, i64 35820, !15, i64 35824, !15, i64 35828, !15, i64 35832, !15, i64 35836, !15, i64 35840, !15, i64 35844, !15, i64 35848, !15, i64 35852, !15, i64 35856, !15, i64 35860, !14, i64 35864, !15, i64 35928, !15, i64 35932, !15, i64 35936, !55, i64 35944, !47, i64 36408, !73, i64 36416, !74, i64 36968, !74, i64 36976, !74, i64 36984, !74, i64 36992, !74, i64 37000, !14, i64 37008, !15, i64 53392, !15, i64 53396, !15, i64 53400}
!76 = !{!75, !48, i64 34080}
!77 = !{!"AVRational", !15, i64 0, !15, i64 4}
!78 = !{!"H2645VUI", !77, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64}
!79 = !{!"SPS", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !78, i64 100, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !14, i64 184, !15, i64 1208, !15, i64 1212, !15, i64 1216, !15, i64 1220, !54, i64 1224, !14, i64 1226, !14, i64 1322, !15, i64 1708, !15, i64 1712, !15, i64 1716, !15, i64 1720, !15, i64 1724, !15, i64 1728, !14, i64 1732, !14, i64 1860, !15, i64 1988, !15, i64 1992, !15, i64 1996, !15, i64 2000, !15, i64 2004, !15, i64 2008, !15, i64 2012, !15, i64 2016, !14, i64 2020, !24, i64 6120}
!80 = !{!79, !15, i64 2004}
!81 = !{!26, !15, i64 48}
!82 = !{!14, !14, i64 0}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!75, !39, i64 34072}
!85 = !{!"PPS", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !14, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !14, i64 48, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !54, i64 76, !14, i64 78, !14, i64 174, !14, i64 558, !15, i64 736, !14, i64 740, !24, i64 4840, !14, i64 4848, !14, i64 38640, !14, i64 173808, !14, i64 173856, !48, i64 173904}
!86 = !{!79, !15, i64 12}
!87 = !{!75, !15, i64 30088}
!88 = !{!26, !15, i64 21028}
!89 = !{!75, !15, i64 31732}
!90 = !{!26, !15, i64 21032}
!91 = !{!75, !15, i64 31064}
!92 = !{!75, !38, i64 28608}
!93 = !{!15, !15, i64 0}
!94 = !{!26, !15, i64 21064}
!95 = !{!75, !47, i64 31056}
!96 = !{!54, !54, i64 0}
!97 = !{!26, !15, i64 40}
!98 = !{!75, !20, i64 30640}
!99 = !{!26, !15, i64 21080}
!100 = !{!20, !20, i64 0}
!101 = !{!47, !47, i64 0}
!102 = !{!75, !15, i64 31048}
!103 = !{!26, !20, i64 20960}
!104 = !{!75, !38, i64 31032}
!105 = !{!26, !15, i64 20944}
!106 = !{!26, !15, i64 20924}
!107 = !{!26, !15, i64 20948}
!108 = !{!26, !15, i64 20928}
!109 = !{!26, !15, i64 20940}
!110 = !{!26, !15, i64 20920}
!111 = !{!26, !15, i64 20968}
!112 = !{!75, !38, i64 31040}
!113 = !{!75, !20, i64 31120}
!114 = !{!75, !47, i64 31088}
!115 = !{!26, !20, i64 33664}
!116 = !{!26, !15, i64 33648}
!117 = !{!26, !15, i64 21076}
!118 = !{!26, !20, i64 20912}
!119 = !{!75, !29, i64 8}
!120 = !{!26, !15, i64 20976}
!121 = !{!26, !15, i64 20984}
!122 = !{!25, !15, i64 4}
!123 = !{!25, !15, i64 0}
!124 = !{!25, !20, i64 16}
!125 = !{!26, !15, i64 22648}
!126 = !{!26, !15, i64 21100}
!127 = !{!26, !15, i64 21096}
!128 = !{!75, !15, i64 30104}
!129 = !{!26, !15, i64 33652}
!130 = distinct !{!130, i1 false, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !83, !138, !139}
!134 = distinct !{!134, !83, !138}
!135 = !{!26, !15, i64 34704}
!136 = !{!131}
!137 = !{!132}
!138 = !{!"llvm.loop.isvectorized", i32 1}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = distinct !{!140, !83}
!141 = distinct !{!141, !83}
!142 = distinct !{!142, !83}
!143 = distinct !{!143, !83}
!144 = distinct !{!144, !83}
!145 = distinct !{!145, !83}
!146 = distinct !{!146, !83}
!147 = distinct !{!147, !83}
!148 = distinct !{!148, !83}
!149 = distinct !{!149, !83}
end_hunk_2
