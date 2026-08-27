Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cabac?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_decode_mb_cabac:bb.a
  %i.bby = xor i32 %i.bbx, %i.bbv
  %i.bbz = lshr exact i32 %i.bby, 15
  %i.bca = zext nneg i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bca
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !74
  %i.bcd = zext i8 %i.bcc to i32
  %i.bce = sub nsw i32 7, %i.bcd
  %i.bcf = load ptr, ptr %i.ajt, align 16, !tbaa !143 ; 3 uses
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !74
  %i.bch = zext i8 %i.bcg to i32
  %i.bci = shl nuw nsw i32 %i.bch, 9
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcf, i64 1
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !74
  %i.bcl = zext i8 %i.bck to i32
  %i.bcm = shl nuw nsw i32 %i.bcl, 1
  %i.bcn = or disjoint i32 %i.bcm, %i.bci
  %i.bco = add nsw i32 %i.bcn, -65535
  %i.bcp = shl nsw i32 %i.bco, %i.bce
  %i.bcq = add i32 %i.bcp, %i.bbv                 ; 2 uses
  store i32 %i.bcq, ptr %i.ajq, align 16, !tbaa !142
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcf, i64 2
  store ptr %i.bcr, ptr %i.ajt, align 16, !tbaa !143
  br label %get_cabac.exit.i1215

get_cabac.exit.i1215:                             ; preds = %bb.dq, %bb.dp
  %i.bcs = phi i32 [ %i.bbv, %bb.dp ], [ %i.bcq, %bb.dq ] ; 3 uses
  %i.bct = and i32 %i.bbm, 1
  %.not.i1216 = icmp eq i32 %i.bct, 0
  br i1 %.not.i1216, label %bb.dr, label %decode_cabac_p_mb_sub_type.exit

bb.dr:                                            ; preds = %get_cabac.exit.i1215
  %i.bcu = load i8, ptr %i.ajv, align 2, !tbaa !74
  %i.bcv = zext i8 %i.bcu to i32                  ; 2 uses
  %i.bcw = shl i32 %i.bbu, 1
  %i.bcx = and i32 %i.bcw, 384
  %i.bcy = add nuw nsw i32 %i.bcx, %i.bcv
  %i.bcz = zext nneg i32 %i.bcy to i64
  %i.bda = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bcz
  %i.bdb = load i8, ptr %i.bda, align 1, !tbaa !74
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
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !74
  store i8 %i.bdn, ptr %i.ajv, align 2, !tbaa !74
  %i.bdo = sext i32 %i.bdj to i64
  %i.bdp = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bdo
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !74
  %i.bdr = zext i8 %i.bdq to i32                  ; 2 uses
  %i.bds = shl i32 %i.bdj, %i.bdr                 ; 4 uses
  store i32 %i.bds, ptr %i.ajr, align 4, !tbaa !141
  %i.bdt = shl i32 %i.bdi, %i.bdr                 ; 6 uses
  store i32 %i.bdt, ptr %i.ajq, align 16, !tbaa !142
  %i.bdu = and i32 %i.bdt, 65535
  %.not.i.i8.i = icmp eq i32 %i.bdu, 0
  br i1 %.not.i.i8.i, label %bb.ds, label %get_cabac.exit9.i

bb.ds:                                            ; preds = %bb.dr
  %i.bdv = add nsw i32 %i.bdt, -32768
  %i.bdw = xor i32 %i.bdv, %i.bdt
  %i.bdx = lshr exact i32 %i.bdw, 15
  %i.bdy = zext nneg i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !74
  %i.beb = zext i8 %i.bea to i32
  %i.bec = sub nsw i32 7, %i.beb
  %i.bed = load ptr, ptr %i.ajt, align 16, !tbaa !143 ; 3 uses
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !74
  %i.bef = zext i8 %i.bee to i32
  %i.beg = shl nuw nsw i32 %i.bef, 9
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bed, i64 1
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !74
  %i.bej = zext i8 %i.bei to i32
  %i.bek = shl nuw nsw i32 %i.bej, 1
  %i.bel = or disjoint i32 %i.bek, %i.beg
  %i.bem = add nsw i32 %i.bel, -65535
  %i.ben = shl nsw i32 %i.bem, %i.bec
  %i.beo = add i32 %i.ben, %i.bdt                 ; 2 uses
  store i32 %i.beo, ptr %i.ajq, align 16, !tbaa !142
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bed, i64 2
  store ptr %i.bep, ptr %i.ajt, align 16, !tbaa !143
  br label %get_cabac.exit9.i

get_cabac.exit9.i:                                ; preds = %bb.ds, %bb.dr
  %i.beq = phi i32 [ %i.bdt, %bb.dr ], [ %i.beo, %bb.ds ] ; 3 uses
  %i.ber = and i32 %i.bdk, 1
  %.not6.i = icmp eq i32 %i.ber, 0
  br i1 %.not6.i, label %decode_cabac_p_mb_sub_type.exit, label %bb.dt

bb.dt:                                            ; preds = %get_cabac.exit9.i
  %i.bes = load i8, ptr %i.ajw, align 1, !tbaa !74
  %i.bet = zext i8 %i.bes to i32                  ; 2 uses
  %i.beu = shl i32 %i.bds, 1
  %i.bev = and i32 %i.beu, 384
  %i.bew = add nuw nsw i32 %i.bev, %i.bet
  %i.bex = zext nneg i32 %i.bew to i64
  %i.bey = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !74
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
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !74
  store i8 %i.bfl, ptr %i.ajw, align 1, !tbaa !74
  %i.bfm = sext i32 %i.bfh to i64
  %i.bfn = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bfm
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !74
  %i.bfp = zext i8 %i.bfo to i32                  ; 2 uses
  %i.bfq = shl i32 %i.bfh, %i.bfp                 ; 2 uses
  store i32 %i.bfq, ptr %i.ajr, align 4, !tbaa !141
  %i.bfr = shl i32 %i.bfg, %i.bfp                 ; 6 uses
  store i32 %i.bfr, ptr %i.ajq, align 16, !tbaa !142
  %i.bfs = and i32 %i.bfr, 65535
  %.not.i.i10.i = icmp eq i32 %i.bfs, 0
  br i1 %.not.i.i10.i, label %bb.du, label %get_cabac.exit11.i

bb.du:                                            ; preds = %bb.dt
  %i.bft = add nsw i32 %i.bfr, -32768
  %i.bfu = xor i32 %i.bft, %i.bfr
  %i.bfv = lshr exact i32 %i.bfu, 15
  %i.bfw = zext nneg i32 %i.bfv to i64
  %i.bfx = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bfw
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !74
  %i.bfz = zext i8 %i.bfy to i32
  %i.bga = sub nsw i32 7, %i.bfz
  %i.bgb = load ptr, ptr %i.ajt, align 16, !tbaa !143 ; 3 uses
  %i.bgc = load i8, ptr %i.bgb, align 1, !tbaa !74
  %i.bgd = zext i8 %i.bgc to i32
  %i.bge = shl nuw nsw i32 %i.bgd, 9
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bgb, i64 1
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !74
  %i.bgh = zext i8 %i.bgg to i32
  %i.bgi = shl nuw nsw i32 %i.bgh, 1
  %i.bgj = or disjoint i32 %i.bgi, %i.bge
  %i.bgk = add nsw i32 %i.bgj, -65535
  %i.bgl = shl nsw i32 %i.bgk, %i.bga
  %i.bgm = add i32 %i.bgl, %i.bfr                 ; 2 uses
  store i32 %i.bgm, ptr %i.ajq, align 16, !tbaa !142
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgb, i64 2
  store ptr %i.bgn, ptr %i.ajt, align 16, !tbaa !143
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
  %i.bgt = getelementptr inbounds nuw [2 x i8], ptr %i.ajs, i64 %indvars.iv1657
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 2
  %i.bgw = load i8, ptr %i.bgv, align 2, !tbaa !124
  %i.bgx = zext i8 %i.bgw to i32
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1657
  store i32 %i.bgx, ptr %i.bgy, align 4, !tbaa !98
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bha = load i16, ptr %i.bgz, align 4, !tbaa !144
  store i16 %i.bha, ptr %i.bgt, align 2, !tbaa !101
  %indvars.iv.next1658 = add nuw nsw i64 %indvars.iv1657, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1658, 4
  br i1 %exitcond.not, label %.loopexit1518, label %bb.dp, !llvm.loop !146

.loopexit1518:                                    ; preds = %decode_cabac_p_mb_sub_type.exit, %.loopexit1518.loopexit, %bb.do
  %i.bhb = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 3 uses
  %i.bhc = load i32, ptr %i.bhb, align 8, !tbaa !147
  %.not1607 = icmp eq i32 %i.bhc, 0
  br i1 %.not1607, label %._crit_edge, label %.preheader1517.lr.ph

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
  %indvars.iv1672 = phi i64 [ 0, %.preheader1517.lr.ph ], [ %indvars.iv.next1673, %bb.el ] ; 8 uses
  %indvars.iv1672.tr = trunc nuw i64 %indvars.iv1672 to i32
  %i.bhk = shl i32 %indvars.iv1672.tr, 1
  %i.bhl = shl i32 4096, %i.bhk                   ; 4 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bhe, i64 %indvars.iv1672 ; 4 uses
  %i.bhn = getelementptr inbounds nuw [40 x i8], ptr %i.bhg, i64 %indvars.iv1672 ; 12 uses
  %i.bho = load i16, ptr %i.bhd, align 8, !tbaa !101
  %i.bhp = zext i16 %i.bho to i32                 ; 2 uses
  %i.bhq = and i32 %i.bhp, 256
  %.not984 = icmp eq i32 %i.bhq, 0
  br i1 %.not984, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %.preheader1517
  %i.bhr = and i32 %i.bhl, %i.bhp
  %.not985 = icmp eq i32 %i.bhr, 0
  br i1 %.not985, label %.thread1362, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bhs = load i32, ptr %i.bhm, align 4, !tbaa !98
  %i.bht = load i32, ptr %i.bhf, align 4, !tbaa !103
  %i.bhu = shl i32 %i.bhs, %i.bht                 ; 3 uses
  %i.bhv = icmp ugt i32 %i.bhu, 1
  br i1 %i.bhv, label %bb.dx, label %.thread1362

bb.dx:                                            ; preds = %bb.dw
  %i.bhw = trunc nuw nsw i64 %indvars.iv1672 to i32
  %i.bhx = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bhw, i32 noundef 0) ; 3 uses
  %.not986 = icmp ult i32 %i.bhx, %i.bhu
  br i1 %.not986, label %.thread1362, label %bb.dy

bb.dy:                                            ; preds = %bb.ek, %bb.eg, %bb.ec, %bb.dx
  %.lcssa1620 = phi i32 [ %i.bhx, %bb.dx ], [ %i.bio, %bb.ec ], [ %i.bjd, %bb.eg ], [ %i.bjs, %bb.ek ]
  %.lcssa1619 = phi i32 [ %i.bhu, %bb.dx ], [ %i.bil, %bb.ec ], [ %i.bja, %bb.eg ], [ %i.bjp, %bb.ek ]
  %i.bhy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !137
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhz, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.lcssa1620, i32 noundef %.lcssa1619) #10
  br label %.thread1382

.thread1362:                                      ; preds = %bb.dv, %bb.dw, %bb.dx
  %i.bia = phi i32 [ 0, %bb.dw ], [ %i.bhx, %bb.dx ], [ -1, %bb.dv ]
  %i.bib = trunc nsw i32 %i.bia to i8             ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhn, i64 21
  store i8 %i.bib, ptr %i.bic, align 1, !tbaa !74
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20
  store i8 %i.bib, ptr %i.bid, align 1, !tbaa !74
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhn, i64 13
  store i8 %i.bib, ptr %i.bie, align 1, !tbaa !74
  br label %bb.dz

bb.dz:                                            ; preds = %.preheader1517, %.thread1362
  %i.bif = load i16, ptr %i.bhh, align 2, !tbaa !101
  %i.big = zext i16 %i.bif to i32                 ; 2 uses
  %i.bih = and i32 %i.big, 256
  %.not984.1 = icmp eq i32 %i.bih, 0
  br i1 %.not984.1, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.bii = and i32 %i.bhl, %i.big
  %.not985.1 = icmp eq i32 %i.bii, 0
  br i1 %.not985.1, label %.thread1362.1, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bij = load i32, ptr %i.bhm, align 4, !tbaa !98
  %i.bik = load i32, ptr %i.bhf, align 4, !tbaa !103
  %i.bil = shl i32 %i.bij, %i.bik                 ; 3 uses
  %i.bim = icmp ugt i32 %i.bil, 1
  br i1 %i.bim, label %bb.ec, label %.thread1362.1

bb.ec:                                            ; preds = %bb.eb
  %i.bin = trunc nuw nsw i64 %indvars.iv1672 to i32
  %i.bio = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bin, i32 noundef 4) ; 3 uses
  %.not986.1 = icmp ult i32 %i.bio, %i.bil
  br i1 %.not986.1, label %.thread1362.1, label %bb.dy

.thread1362.1:                                    ; preds = %bb.ea, %bb.eb, %bb.ec
  %i.bip = phi i32 [ 0, %bb.eb ], [ %i.bio, %bb.ec ], [ -1, %bb.ea ]
  %i.biq = trunc nsw i32 %i.bip to i8             ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bhn, i64 23
  store i8 %i.biq, ptr %i.bir, align 1, !tbaa !74
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bhn, i64 22
  store i8 %i.biq, ptr %i.bis, align 1, !tbaa !74
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhn, i64 15
  store i8 %i.biq, ptr %i.bit, align 1, !tbaa !74
  br label %bb.ed

bb.ed:                                            ; preds = %.thread1362.1, %bb.dz
  %i.biu = load i16, ptr %i.bhi, align 4, !tbaa !101
  %i.biv = zext i16 %i.biu to i32                 ; 2 uses
  %i.biw = and i32 %i.biv, 256
  %.not984.2 = icmp eq i32 %i.biw, 0
  br i1 %.not984.2, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.bix = and i32 %i.bhl, %i.biv
  %.not985.2 = icmp eq i32 %i.bix, 0
  br i1 %.not985.2, label %.thread1362.2, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.biy = load i32, ptr %i.bhm, align 4, !tbaa !98
  %i.biz = load i32, ptr %i.bhf, align 4, !tbaa !103
  %i.bja = shl i32 %i.biy, %i.biz                 ; 3 uses
  %i.bjb = icmp ugt i32 %i.bja, 1
  br i1 %i.bjb, label %bb.eg, label %.thread1362.2

bb.eg:                                            ; preds = %bb.ef
  %i.bjc = trunc nuw nsw i64 %indvars.iv1672 to i32
  %i.bjd = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bjc, i32 noundef 8) ; 3 uses
  %.not986.2 = icmp ult i32 %i.bjd, %i.bja
  br i1 %.not986.2, label %.thread1362.2, label %bb.dy

.thread1362.2:                                    ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.bje = phi i32 [ 0, %bb.ef ], [ %i.bjd, %bb.eg ], [ -1, %bb.ee ]
  %i.bjf = trunc nsw i32 %i.bje to i8             ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bhn, i64 37
  store i8 %i.bjf, ptr %i.bjg, align 1, !tbaa !74
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bhn, i64 36
  store i8 %i.bjf, ptr %i.bjh, align 1, !tbaa !74
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bhn, i64 29
  store i8 %i.bjf, ptr %i.bji, align 1, !tbaa !74
  br label %bb.eh

bb.eh:                                            ; preds = %.thread1362.2, %bb.ed
  %i.bjj = load i16, ptr %i.bhj, align 2, !tbaa !101
  %i.bjk = zext i16 %i.bjj to i32                 ; 2 uses
  %i.bjl = and i32 %i.bjk, 256
  %.not984.3 = icmp eq i32 %i.bjl, 0
  br i1 %.not984.3, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.bjm = and i32 %i.bhl, %i.bjk
  %.not985.3 = icmp eq i32 %i.bjm, 0
  br i1 %.not985.3, label %.thread1362.3, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bjn = load i32, ptr %i.bhm, align 4, !tbaa !98
  %i.bjo = load i32, ptr %i.bhf, align 4, !tbaa !103
  %i.bjp = shl i32 %i.bjn, %i.bjo                 ; 3 uses
  %i.bjq = icmp ugt i32 %i.bjp, 1
  br i1 %i.bjq, label %bb.ek, label %.thread1362.3

bb.ek:                                            ; preds = %bb.ej
  %i.bjr = trunc nuw nsw i64 %indvars.iv1672 to i32
  %i.bjs = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bjr, i32 noundef 12) ; 3 uses
  %.not986.3 = icmp ult i32 %i.bjs, %i.bjp
  br i1 %.not986.3, label %.thread1362.3, label %bb.dy

.thread1362.3:                                    ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.bjt = phi i32 [ 0, %bb.ej ], [ %i.bjs, %bb.ek ], [ -1, %bb.ei ]
  %i.bju = trunc nsw i32 %i.bjt to i8             ; 3 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bhn, i64 39
  store i8 %i.bju, ptr %i.bjv, align 1, !tbaa !74
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bhn, i64 38
  store i8 %i.bju, ptr %i.bjw, align 1, !tbaa !74
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bhn, i64 31
  store i8 %i.bju, ptr %i.bjx, align 1, !tbaa !74
  br label %bb.el

bb.el:                                            ; preds = %.thread1362.3, %bb.eh
  %indvars.iv.next1673 = add nuw nsw i64 %indvars.iv1672, 1 ; 2 uses
  %i.bjy = load i32, ptr %i.bhb, align 8, !tbaa !147 ; 2 uses
  %i.bjz = zext i32 %i.bjy to i64
  %i.bka = icmp samesign ult i64 %indvars.iv.next1673, %i.bjz
  br i1 %i.bka, label %.preheader1517, label %._crit_edge.loopexit, !llvm.loop !148

._crit_edge.loopexit:                             ; preds = %bb.el
  %i.bkb = icmp eq i32 %i.bjy, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit1518
  %.not1608 = phi i1 [ %i.bkb, %._crit_edge.loopexit ], [ true, %.loopexit1518 ]
  %.not974 = icmp eq i32 %i.r, 0
  br i1 %.not974, label %bb.em, label %get_dct8x8_allowed.exit

get_dct8x8_allowed.exit:                          ; preds = %._crit_edge
  %i.bkc = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 72
  %i.bke = load i32, ptr %i.bkd, align 8, !tbaa !149
  %.not.i = icmp eq i32 %i.bke, 0
  %i.bkf = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !74
  %. = select i1 %.not.i, i64 103584372001603952, i64 31525678435270768
  %i.bkh = and i64 %i.bkg, %.
  %.0.in.i = icmp eq i64 %i.bkh, 0
  %.0.i1048 = zext i1 %.0.in.i to i32
  br label %bb.em

bb.em:                                            ; preds = %get_dct8x8_allowed.exit, %._crit_edge
  %.0875 = phi i32 [ %.0.i1048, %get_dct8x8_allowed.exit ], [ 0, %._crit_edge ]
  br i1 %.not1608, label %._crit_edge1578, label %.preheader1516.lr.ph

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
  %indvars.iv1680 = phi i64 [ 0, %.preheader1516.lr.ph ], [ %indvars.iv.next1681, %bb.ft ] ; 10 uses
  %i.bkr = getelementptr inbounds nuw [40 x i8], ptr %i.bki, i64 %indvars.iv1680 ; 7 uses
  %i.bks = getelementptr inbounds nuw [80 x i8], ptr %i.bkk, i64 %indvars.iv1680 ; 2 uses
  %indvars.iv1680.tr = trunc nuw i64 %indvars.iv1680 to i32
  %i.bkt = shl i32 %indvars.iv1680.tr, 1          ; 2 uses
  %i.bku = shl i32 4096, %i.bkt
  %i.bkv = getelementptr inbounds nuw [160 x i8], ptr %i.bkl, i64 %indvars.iv1680 ; 6 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkr, i64 11
  %i.bkx = getelementptr [160 x i8], ptr %1, i64 %indvars.iv1680 ; 2 uses
  %i.bky = getelementptr i8, ptr %i.bkx, i64 28776 ; 7 uses
  %i.bkz = shl i32 12288, %i.bkt                  ; 2 uses
  %i.bla = getelementptr i8, ptr %i.bkx, i64 28778 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %.preheader1516, %.loopexit1515
  %indvars.iv1676 = phi i64 [ 0, %.preheader1516 ], [ %indvars.iv.next1677, %.loopexit1515 ] ; 4 uses
  %i.blb = shl nuw nsw i64 %indvars.iv1676, 2     ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.blb
  %i.bld = load i8, ptr %i.blc, align 4, !tbaa !74
  %i.ble = zext i8 %i.bld to i64                  ; 3 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %i.ble ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 1
  %i.blh = load i8, ptr %i.blg, align 1, !tbaa !74
  store i8 %i.blh, ptr %i.blf, align 1, !tbaa !74
  %i.bli = getelementptr inbounds nuw [2 x i8], ptr %i.bkj, i64 %indvars.iv1676
  %i.blj = load i16, ptr %i.bli, align 2, !tbaa !101
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
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1676
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !98 ; 2 uses
  %.not9831572 = icmp sgt i32 %i.blq, 0
  br i1 %.not9831572, label %.lr.ph1575, label %.loopexit1515

.lr.ph1575:                                       ; preds = %bb.ep
  %i.blr = zext i1 %.not977 to i32
  %i.bls = and i32 %i.blk, 8
  %.not980 = icmp eq i32 %i.bls, 0
  %i.blt = and i32 %i.blk, 16
  %.not981 = icmp eq i32 %i.blt, 0
  %i.blu = and i32 %i.blk, 32
  %.not982 = icmp eq i32 %i.blu, 0
  %i.blv = trunc nuw nsw i64 %i.blb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1575, %bb.fr
  %.08671573 = phi i32 [ 0, %.lr.ph1575 ], [ %i.bvv, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.blw = shl nuw i32 %.08671573, %i.blr
  %i.blx = add nsw i32 %i.blw, %i.blv
  %i.bly = sext i32 %i.blx to i64                 ; 3 uses
  %i.blz = getelementptr inbounds i8, ptr @scan8, i64 %i.bly
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !74 ; 2 uses
  %i.bmb = zext i8 %i.bma to i64                  ; 3 uses
  %i.bmc = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.bmb ; 12 uses
  %i.bmd = getelementptr [2 x i8], ptr %i.bks, i64 %i.bmb ; 16 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %i.bmb
  %i.bmf = load i8, ptr %i.bme, align 1, !tbaa !74 ; 3 uses
  %i.bmg = sext i8 %i.bmf to i32
  %i.bmh = zext i8 %i.bma to i32                  ; 6 uses
  %i.bmi = add nsw i32 %i.bmh, -8                 ; 2 uses
  %i.bmj = sext i32 %i.bmi to i64                 ; 2 uses
  %i.bmk = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmj
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !74 ; 2 uses
  %i.bmm = add nsw i32 %i.bmh, -1
  %i.bmn = sext i32 %i.bmm to i64                 ; 2 uses
  %i.bmo = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmn
  %i.bmp = load i8, ptr %i.bmo, align 1, !tbaa !74 ; 2 uses
  %i.bmq = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bmn ; 7 uses
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bmj ; 6 uses
  %i.bms = add nsw i32 %i.bmi, %i.blo
  %i.bmt = sext i32 %i.bms to i64                 ; 2 uses
  %i.bmu = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bmt
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !74 ; 2 uses
  %i.bmw = sext i8 %i.bmv to i32
  %i.bmx = load i32, ptr %i.sr, align 8, !tbaa !94
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
  %i.bne = load i8, ptr %i.bkw, align 1, !tbaa !74
  %.not.i1141 = icmp eq i8 %i.bne, -2
  br i1 %.not.i1141, label %.thread1371, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bnf = load ptr, ptr %i.bkm, align 8, !tbaa !150
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 104
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !151 ; 2 uses
  store i32 0, ptr %i.bky, align 4, !tbaa !74
  %i.bni = load i32, ptr %i.uc, align 8, !tbaa !99
  %.not91.i1142 = icmp eq i32 %i.bni, 0
  %i.bnj = load i32, ptr %i.bkn, align 8, !tbaa !98
  %i.bnk = and i32 %i.bnj, 128
  %.not92.i1148 = icmp eq i32 %i.bnk, 0           ; 2 uses
  br i1 %.not91.i1142, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  br i1 %.not92.i1148, label %.thread1371, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bnl = load i32, ptr %i.bko, align 4, !tbaa !98
  %i.bnm = load i32, ptr %i.aa, align 4, !tbaa !92 ; 2 uses
  %i.bnn = add nsw i32 %i.bnm, %i.bnl             ; 3 uses
  %i.bno = load i32, ptr %i.y, align 4, !tbaa !91
  %i.bnp = shl i32 %i.bno, 1
  %i.bnq = and i32 %i.bnp, 2
  %i.bnr = lshr i32 %i.bmh, 5
  %i.bns = add nuw nsw i32 %i.bnq, %i.bnr         ; 3 uses
  %i.bnt = lshr i32 %i.bns, 2
  %i.bnu = mul nsw i32 %i.bnt, %i.bnm
  %i.bnv = add nsw i32 %i.bnu, %i.bnn
  %i.bnw = sext i32 %i.bnv to i64
  %i.bnx = getelementptr inbounds [4 x i8], ptr %i.bnh, i64 %i.bnw
  %i.bny = load i32, ptr %i.bnx, align 4, !tbaa !98
  %i.bnz = and i32 %i.bny, %i.bkz
  %.not93.i1149 = icmp eq i32 %i.bnz, 0
  br i1 %.not93.i1149, label %fetch_diagonal_mv.exit1150, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.boa = load ptr, ptr %i.bkm, align 8, !tbaa !150 ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 80
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %i.bob, i64 %indvars.iv1680
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !107
  %i.boe = load ptr, ptr %i.bkp, align 8, !tbaa !110
  %i.bof = sext i32 %i.bnn to i64
  %i.bog = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bof
  %i.boh = load i32, ptr %i.bog, align 4, !tbaa !98
  %i.boi = add i32 %i.boh, 3
  %i.boj = load i32, ptr %i.bkq, align 8, !tbaa !108
  %i.bok = mul nsw i32 %i.boj, %i.bns
  %i.bol = add i32 %i.boi, %i.bok
  %i.bom = zext i32 %i.bol to i64
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.bom ; 2 uses
  %i.boo = load i16, ptr %i.bon, align 2, !tbaa !101
  store i16 %i.boo, ptr %i.bky, align 4, !tbaa !101
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bon, i64 2
  %i.boq = load i16, ptr %i.bop, align 2, !tbaa !101
  %i.bor = shl i16 %i.boq, 1
  store i16 %i.bor, ptr %i.bla, align 2, !tbaa !101
  %i.bos = getelementptr inbounds nuw i8, ptr %i.boa, i64 120
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %i.bos, i64 %indvars.iv1680
  %i.bou = load ptr, ptr %i.bot, align 8, !tbaa !106
  %i.bov = shl nsw i32 %i.bnn, 2
  %i.bow = or disjoint i32 %i.bov, 1
  %i.box = and i32 %i.bns, 14
  %i.boy = add nsw i32 %i.bow, %i.box
  %i.boz = sext i32 %i.boy to i64
  %i.bpa = getelementptr inbounds i8, ptr %i.bou, i64 %i.boz
  %i.bpb = load i8, ptr %i.bpa, align 1, !tbaa !74
  %i.bpc = ashr i8 %i.bpb, 1
  %i.bpd = sext i8 %i.bpc to i32
  br label %fetch_diagonal_mv.exit1150

bb.ew:                                            ; preds = %bb.es
  br i1 %.not92.i1148, label %bb.ex, label %.thread1371

bb.ex:                                            ; preds = %bb.ew
  %i.bpe = lshr i64 1970324836961280, %i.bly
  %i.bpf = and i64 %i.bpe, 1
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %i.bpf
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !98 ; 2 uses
  %i.bpi = sext i32 %i.bph to i64                 ; 2 uses
  %i.bpj = getelementptr inbounds [4 x i8], ptr %i.bnh, i64 %i.bpi
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !98
  %i.bpl = and i32 %i.bpk, %i.bkz
  %.not96.i1147 = icmp eq i32 %i.bpl, 0
  br i1 %.not96.i1147, label %fetch_diagonal_mv.exit1150, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bpm = lshr exact i32 %i.bmh, 2               ; 2 uses
  %i.bpn = and i32 %i.bpm, 3
  %i.bpo = load ptr, ptr %i.bkm, align 8, !tbaa !150 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 80
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.bpp, i64 %indvars.iv1680
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !107
  %i.bps = load ptr, ptr %i.bkp, align 8, !tbaa !110
  %i.bpt = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bpi
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !98
  %i.bpv = add i32 %i.bpu, 3
  %i.bpw = load i32, ptr %i.bkq, align 8, !tbaa !108
  %i.bpx = mul nsw i32 %i.bpw, %i.bpn
  %i.bpy = add i32 %i.bpv, %i.bpx
  %i.bpz = zext i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds nuw [4 x i8], ptr %i.bpr, i64 %i.bpz ; 2 uses
  %i.bqb = load i16, ptr %i.bqa, align 2, !tbaa !101
end_hunk_0
begin_hunk_1_@ff_h264_decode_mb_cabac:bb.a
  %i.bus = load i32, ptr %i.e, align 4, !tbaa !98
  %i.but = trunc i32 %i.bus to i8                 ; 4 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bmd, i64 18
  store i8 %i.but, ptr %i.buu, align 2, !tbaa !74
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bmd, i64 16
  store i8 %i.but, ptr %i.buv, align 2, !tbaa !74
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bmd, i64 2
  store i8 %i.but, ptr %i.buw, align 2, !tbaa !74
  %i.bux = load i32, ptr %i.f, align 4, !tbaa !98
  %i.buy = trunc i32 %i.bux to i8                 ; 4 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %i.bmd, i64 19
  store i8 %i.buy, ptr %i.buz, align 1, !tbaa !74
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bmd, i64 17
  store i8 %i.buy, ptr %i.bva, align 1, !tbaa !74
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bmd, i64 3
  store i8 %i.buy, ptr %i.bvb, align 1, !tbaa !74
  br label %bb.fr

bb.fn:                                            ; preds = %bb.fl
  br i1 %.not981, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bvc = trunc i32 %i.bui to i16                ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 4
  store i16 %i.bvc, ptr %i.bvd, align 2, !tbaa !101
  %i.bve = trunc i32 %i.buj to i16                ; 2 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bmc, i64 6
  store i16 %i.bve, ptr %i.bvf, align 2, !tbaa !101
  %i.bvg = load i32, ptr %i.e, align 4, !tbaa !98
  %i.bvh = trunc i32 %i.bvg to i8                 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bmd, i64 2
  store i8 %i.bvh, ptr %i.bvi, align 2, !tbaa !74
  %i.bvj = load i32, ptr %i.f, align 4, !tbaa !98
  %i.bvk = trunc i32 %i.bvj to i8                 ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bmd, i64 3
  store i8 %i.bvk, ptr %i.bvl, align 1, !tbaa !74
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %.pre1766 = load i32, ptr %i.e, align 4, !tbaa !98 ; 2 uses
  %.pre1767 = load i32, ptr %i.f, align 4, !tbaa !98 ; 2 uses
  %.pre1793 = trunc i32 %i.bui to i16             ; 3 uses
  br i1 %.not982, label %._crit_edge1792, label %bb.fq

._crit_edge1792:                                  ; preds = %bb.fp
  %.pre1794 = trunc i32 %i.buj to i16
  %.pre1796 = trunc i32 %.pre1766 to i8
  %.pre1798 = trunc i32 %.pre1767 to i8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bmc, i64 32
  store i16 %.pre1793, ptr %i.bvm, align 2, !tbaa !101
  %i.bvn = trunc i32 %i.buj to i16                ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bmc, i64 34
  store i16 %i.bvn, ptr %i.bvo, align 2, !tbaa !101
  %i.bvp = trunc i32 %.pre1766 to i8              ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bmd, i64 16
  store i8 %i.bvp, ptr %i.bvq, align 2, !tbaa !74
  %i.bvr = trunc i32 %.pre1767 to i8              ; 2 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bmd, i64 17
  store i8 %i.bvr, ptr %i.bvs, align 1, !tbaa !74
  br label %bb.fr

bb.fr:                                            ; preds = %._crit_edge1792, %bb.fm, %bb.fq, %bb.fo
  %.pre-phi1799 = phi i8 [ %.pre1798, %._crit_edge1792 ], [ %i.buy, %bb.fm ], [ %i.bvr, %bb.fq ], [ %i.bvk, %bb.fo ]
  %.pre-phi1797 = phi i8 [ %.pre1796, %._crit_edge1792 ], [ %i.but, %bb.fm ], [ %i.bvp, %bb.fq ], [ %i.bvh, %bb.fo ]
  %.pre-phi1795 = phi i16 [ %.pre1794, %._crit_edge1792 ], [ %i.buo, %bb.fm ], [ %i.bvn, %bb.fq ], [ %i.bve, %bb.fo ]
  %.pre-phi = phi i16 [ %.pre1793, %._crit_edge1792 ], [ %i.buk, %bb.fm ], [ %.pre1793, %bb.fq ], [ %i.bvc, %bb.fo ]
  store i16 %.pre-phi, ptr %i.bmc, align 2, !tbaa !101
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bmc, i64 2
  store i16 %.pre-phi1795, ptr %i.bvt, align 2, !tbaa !101
  store i8 %.pre-phi1797, ptr %i.bmd, align 2, !tbaa !74
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bmd, i64 1
  store i8 %.pre-phi1799, ptr %i.bvu, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.bvv = add nuw nsw i32 %.08671573, 1          ; 2 uses
  %exitcond1675.not = icmp eq i32 %i.bvv, %i.blq
  br i1 %exitcond1675.not, label %.loopexit1515, label %bb.eq, !llvm.loop !152

.thread1379:                                      ; preds = %pred_motion.exit1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread1382

bb.fs:                                            ; preds = %bb.eo
  %i.bvw = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.ble ; 4 uses
  store i32 0, ptr %i.bvw, align 4, !tbaa !98
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 4
  store i32 0, ptr %i.bvx, align 4, !tbaa !98
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvw, i64 32
  store i32 0, ptr %i.bvy, align 4, !tbaa !98
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvw, i64 36
  store i32 0, ptr %i.bvz, align 4, !tbaa !98
  br label %.loopexit1515.sink.split

.loopexit1515.sink.split:                         ; preds = %bb.en, %bb.fs
  %i.bwa = getelementptr inbounds nuw [2 x i8], ptr %i.bks, i64 %i.ble ; 2 uses
  store i32 0, ptr %i.bwa, align 4, !tbaa !98
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 16
  store i32 0, ptr %i.bwb, align 4, !tbaa !98
  br label %.loopexit1515

.loopexit1515:                                    ; preds = %bb.fr, %.loopexit1515.sink.split, %bb.ep
  %indvars.iv.next1677 = add nuw nsw i64 %indvars.iv1676, 1 ; 2 uses
  %exitcond1679.not = icmp eq i64 %indvars.iv.next1677, 4
  br i1 %exitcond1679.not, label %bb.ft, label %bb.en, !llvm.loop !153

bb.ft:                                            ; preds = %.loopexit1515
  %indvars.iv.next1681 = add nuw nsw i64 %indvars.iv1680, 1 ; 2 uses
  %i.bwc = load i32, ptr %i.bhb, align 8, !tbaa !147
  %i.bwd = zext i32 %i.bwc to i64
  %i.bwe = icmp samesign ult i64 %indvars.iv.next1681, %i.bwd
  br i1 %i.bwe, label %.preheader1516, label %._crit_edge1578, !llvm.loop !154

.thread1382:                                      ; preds = %bb.dy, %.thread1379
  %.15.ph = phi i32 [ -1094995529, %.thread1379 ], [ -1, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %write_back_non_zero_count.exit

._crit_edge1578:                                  ; preds = %bb.ft, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.loopexit1524

bb.fu:                                            ; preds = %bb.cy
  %i.bwf = and i32 %.pre1756, 256
  %.not955 = icmp eq i32 %i.bwf, 0
  br i1 %.not955, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @ff_h264_pred_direct_motion(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #10
  %i.bwg = getelementptr inbounds nuw i8, ptr %1, i64 29160
  store i32 0, ptr %i.bwg, align 8, !tbaa !98
  %i.bwh = getelementptr inbounds nuw i8, ptr %1, i64 29164
  store i32 0, ptr %i.bwh, align 4, !tbaa !98
  %i.bwi = getelementptr inbounds nuw i8, ptr %1, i64 29176
  store i32 0, ptr %i.bwi, align 8, !tbaa !98
  %i.bwj = getelementptr inbounds nuw i8, ptr %1, i64 29180
  store i32 0, ptr %i.bwj, align 4, !tbaa !98
  %i.bwk = getelementptr inbounds nuw i8, ptr %1, i64 29192
  store i32 0, ptr %i.bwk, align 8, !tbaa !98
  %i.bwl = getelementptr inbounds nuw i8, ptr %1, i64 29196
  store i32 0, ptr %i.bwl, align 4, !tbaa !98
  %i.bwm = getelementptr inbounds nuw i8, ptr %1, i64 29208
  store i32 0, ptr %i.bwm, align 8, !tbaa !98
  %i.bwn = getelementptr inbounds nuw i8, ptr %1, i64 29212
  store i32 0, ptr %i.bwn, align 4, !tbaa !98
  %i.bwo = getelementptr inbounds nuw i8, ptr %1, i64 29240
  store i32 0, ptr %i.bwo, align 8, !tbaa !98
  %i.bwp = getelementptr inbounds nuw i8, ptr %1, i64 29244
  store i32 0, ptr %i.bwp, align 4, !tbaa !98
  %i.bwq = getelementptr inbounds nuw i8, ptr %1, i64 29256
  store i32 0, ptr %i.bwq, align 8, !tbaa !98
  %i.bwr = getelementptr inbounds nuw i8, ptr %1, i64 29260
  store i32 0, ptr %i.bwr, align 4, !tbaa !98
  %i.bws = getelementptr inbounds nuw i8, ptr %1, i64 29272
  store i32 0, ptr %i.bws, align 8, !tbaa !98
  %i.bwt = getelementptr inbounds nuw i8, ptr %1, i64 29276
  store i32 0, ptr %i.bwt, align 4, !tbaa !98
  %i.bwu = getelementptr inbounds nuw i8, ptr %1, i64 29288
  store i32 0, ptr %i.bwu, align 8, !tbaa !98
  %i.bwv = getelementptr inbounds nuw i8, ptr %1, i64 29292
  store i32 0, ptr %i.bwv, align 4, !tbaa !98
  %i.bww = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.bwx = load i32, ptr %i.bww, align 8, !tbaa !149
  %i.bwy = and i32 %i.bwx, %i.r
  br label %.loopexit1524

bb.fw:                                            ; preds = %bb.fu
  %i.bwz = and i32 %.pre1756, 8
  %.not956 = icmp eq i32 %i.bwz, 0
  br i1 %.not956, label %bb.gs, label %.preheader1534

.preheader1534:                                   ; preds = %bb.fw
  %i.bxa = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 3 uses
  %i.bxb = load i32, ptr %i.bxa, align 8, !tbaa !147 ; 3 uses
  %.not1601 = icmp eq i32 %i.bxb, 0
  br i1 %.not1601, label %.loopexit1524, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1534
  %i.bxc = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bxd = getelementptr inbounds nuw i8, ptr %1, i64 21068
  br label %bb.fx

.preheader1532:                                   ; preds = %bb.gb
  %.not1602 = icmp eq i32 %i.bya, 0
  br i1 %.not1602, label %.loopexit1524, label %.lr.ph1558

.lr.ph1558:                                       ; preds = %.preheader1532
  %i.bxe = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bxf = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.bxg = getelementptr inbounds nuw i8, ptr %1, i64 29136
  br label %bb.gc

bb.fx:                                            ; preds = %.lr.ph, %bb.gb
  %.pre1783 = phi i32 [ %i.bxb, %.lr.ph ], [ %.pre1784, %bb.gb ] ; 2 uses
  %i.bxh = phi i32 [ %i.bxb, %.lr.ph ], [ %i.bya, %bb.gb ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.gb ] ; 5 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bxi = shl i32 %indvars.iv.tr, 1
  %i.bxj = shl i32 4096, %i.bxi
  %i.bxk = and i32 %.pre1756, %i.bxj
  %.not971 = icmp eq i32 %i.bxk, 0
  br i1 %.not971, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bxl = getelementptr inbounds nuw [4 x i8], ptr %i.bxc, i64 %indvars.iv
  %i.bxm = load i32, ptr %i.bxl, align 4, !tbaa !98
  %i.bxn = load i32, ptr %i.bxd, align 4, !tbaa !103
  %i.bxo = shl i32 %i.bxm, %i.bxn                 ; 3 uses
  %i.bxp = icmp ugt i32 %i.bxo, 1
  br i1 %i.bxp, label %bb.fz, label %.thread1386

bb.fz:                                            ; preds = %bb.fy
  %i.bxq = trunc nuw nsw i64 %indvars.iv to i32
  %i.bxr = tail call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bxq, i32 noundef 0) ; 3 uses
  %.not972 = icmp ult i32 %i.bxr, %i.bxo
  br i1 %.not972, label %..thread1386_crit_edge, label %bb.ga

..thread1386_crit_edge:                           ; preds = %bb.fz
  %.pre.pre = load i32, ptr %i.bxa, align 8, !tbaa !147
  %i.bxs = mul nuw nsw i32 %i.bxr, 16843009
  br label %.thread1386

.thread1386:                                      ; preds = %..thread1386_crit_edge, %bb.fy
  %.pre = phi i32 [ %.pre.pre, %..thread1386_crit_edge ], [ %.pre1783, %bb.fy ] ; 2 uses
  %.0854 = phi i32 [ %i.bxs, %..thread1386_crit_edge ], [ 0, %bb.fy ] ; 4 uses
  %i.bxt = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 29068
  store i32 %.0854, ptr %i.bxu, align 4, !tbaa !98
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxt, i64 29076
  store i32 %.0854, ptr %i.bxv, align 4, !tbaa !98
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxt, i64 29084
  store i32 %.0854, ptr %i.bxw, align 4, !tbaa !98
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxt, i64 29092
  store i32 %.0854, ptr %i.bxx, align 4, !tbaa !98
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bxy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !137
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bxz, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.bxr, i32 noundef %i.bxo) #10
  br label %write_back_non_zero_count.exit

bb.gb:                                            ; preds = %.thread1386, %bb.fx
  %.pre1784 = phi i32 [ %.pre, %.thread1386 ], [ %.pre1783, %bb.fx ]
  %i.bya = phi i32 [ %.pre, %.thread1386 ], [ %i.bxh, %bb.fx ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.byb = zext i32 %i.bya to i64
  %i.byc = icmp samesign ult i64 %indvars.iv.next, %i.byb
  br i1 %i.byc, label %bb.fx, label %.preheader1532, !llvm.loop !155

bb.gc:                                            ; preds = %.lr.ph1558, %bb.gr
  %i.byd = phi i32 [ %i.bya, %.lr.ph1558 ], [ %i.cdl, %bb.gr ]
  %i.bye = phi i32 [ %.pre1756, %.lr.ph1558 ], [ %i.cdm, %bb.gr ] ; 2 uses
  %indvars.iv1630 = phi i64 [ 0, %.lr.ph1558 ], [ %indvars.iv.next1631, %bb.gr ] ; 7 uses
  %indvars.iv1630.tr = trunc nuw i64 %indvars.iv1630 to i32
  %i.byf = shl i32 %indvars.iv1630.tr, 1
  %i.byg = shl i32 4096, %i.byf
  %i.byh = and i32 %i.bye, %i.byg
  %.not968 = icmp eq i32 %i.byh, 0
  br i1 %.not968, label %bb.gr, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.byi = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv1630
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byi, i64 29068
  %i.byk = load i8, ptr %i.byj, align 1, !tbaa !74 ; 3 uses
  %i.byl = getelementptr inbounds nuw [40 x i8], ptr %i.bxe, i64 %indvars.iv1630 ; 4 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 4
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !74 ; 2 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byl, i64 11
  %i.byp = load i8, ptr %i.byo, align 1, !tbaa !74 ; 2 uses
  %i.byq = getelementptr inbounds nuw [160 x i8], ptr %i.bxf, i64 %indvars.iv1630 ; 11 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 44 ; 3 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byq, i64 16 ; 3 uses
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byl, i64 8
  %i.byu = load i8, ptr %i.byt, align 1, !tbaa !74 ; 2 uses
  %i.byv = icmp eq i8 %i.byu, -2
  br i1 %i.byv, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byq, i64 32
  br label %fetch_diagonal_mv.exit1165

bb.gf:                                            ; preds = %bb.gd
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byq, i64 12
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byl, i64 3
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !74
  br label %fetch_diagonal_mv.exit1165

fetch_diagonal_mv.exit1165:                       ; preds = %bb.ge, %bb.gf
  %.01347 = phi ptr [ %i.byx, %bb.gf ], [ %i.byw, %bb.ge ] ; 6 uses
  %.3.i1155.in = phi i8 [ %i.byz, %bb.gf ], [ %i.byu, %bb.ge ] ; 2 uses
  %i.bza = icmp eq i8 %.3.i1155.in, %i.byk
  %i.bzb = zext i1 %i.bza to i32
  %i.bzc = icmp eq i8 %i.byk, %i.byn              ; 2 uses
  %i.bzd = zext i1 %i.bzc to i32
  %i.bze = icmp eq i8 %i.byk, %i.byp              ; 2 uses
  %i.bzf = zext i1 %i.bze to i32
  %i.bzg = add nuw nsw i32 %i.bzf, %i.bzd
  %i.bzh = add nuw nsw i32 %i.bzg, %i.bzb         ; 2 uses
  %i.bzi = icmp samesign ugt i32 %i.bzh, 1
  br i1 %i.bzi, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %fetch_diagonal_mv.exit1165
  %i.bzj = load i16, ptr %i.byr, align 2, !tbaa !101
  %i.bzk = sext i16 %i.bzj to i32                 ; 2 uses
  %i.bzl = load i16, ptr %i.bys, align 2, !tbaa !101
  %i.bzm = sext i16 %i.bzl to i32                 ; 2 uses
  %i.bzn = load i16, ptr %.01347, align 2, !tbaa !101
  %i.bzo = sext i16 %i.bzn to i32
  %..i1226 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bzk, i32 range(i32 -32768, 32768) %i.bzm)
  %.20.i1227 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bzk, i32 range(i32 -32768, 32768) %i.bzm)
  %i.bzp = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bzo, i32 %..i1226)
  %i.bzq = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bzp, i32 %.20.i1227)
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.byq, i64 46
  %i.bzs = load i16, ptr %i.bzr, align 2, !tbaa !101
  %i.bzt = sext i16 %i.bzs to i32                 ; 2 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.byq, i64 18
  %i.bzv = load i16, ptr %i.bzu, align 2, !tbaa !101
  %i.bzw = sext i16 %i.bzv to i32                 ; 2 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %.01347, i64 2
  %i.bzy = load i16, ptr %i.bzx, align 2, !tbaa !101
  %i.bzz = sext i16 %i.bzy to i32
  %..i1228 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bzt, i32 range(i32 -32768, 32768) %i.bzw)
  %.20.i1229 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bzt, i32 range(i32 -32768, 32768) %i.bzw)
  %i.caa = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bzz, i32 %..i1228)
  %i.cab = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.caa, i32 %.20.i1229)
  br label %pred_motion.exit

bb.gh:                                            ; preds = %fetch_diagonal_mv.exit1165
  %i.cac = icmp eq i32 %i.bzh, 1
  br i1 %i.cac, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.bze, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.cad = load i16, ptr %i.byr, align 2, !tbaa !101
  %i.cae = zext i16 %i.cad to i32
  %i.caf = getelementptr inbounds nuw i8, ptr %i.byq, i64 46
  %i.cag = load i16, ptr %i.caf, align 2, !tbaa !101
  %i.cah = zext i16 %i.cag to i32
  br label %pred_motion.exit

bb.gk:                                            ; preds = %bb.gi
  br i1 %i.bzc, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.cai = load i16, ptr %i.bys, align 2, !tbaa !101
  %i.caj = zext i16 %i.cai to i32
  %i.cak = getelementptr inbounds nuw i8, ptr %i.byq, i64 18
  %i.cal = load i16, ptr %i.cak, align 2, !tbaa !101
  %i.cam = zext i16 %i.cal to i32
  br label %pred_motion.exit

bb.gm:                                            ; preds = %bb.gk
  %i.can = load i16, ptr %.01347, align 2, !tbaa !101
  %i.cao = zext i16 %i.can to i32
  %i.cap = getelementptr inbounds nuw i8, ptr %.01347, i64 2
  %i.caq = load i16, ptr %i.cap, align 2, !tbaa !101
  %i.car = zext i16 %i.caq to i32
  br label %pred_motion.exit

bb.gn:                                            ; preds = %bb.gh
  %i.cas = icmp eq i8 %i.byn, -2
  %i.cat = icmp eq i8 %.3.i1155.in, -2
  %or.cond.i = and i1 %i.cas, %i.cat
  %i.cau = icmp ne i8 %i.byp, -2
  %or.cond3.i = select i1 %or.cond.i, i1 %i.cau, i1 false
  %i.cav = load i16, ptr %i.byr, align 2, !tbaa !101 ; 2 uses
  br i1 %or.cond3.i, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.caw = zext i16 %i.cav to i32
  %i.cax = getelementptr inbounds nuw i8, ptr %i.byq, i64 46
  %i.cay = load i16, ptr %i.cax, align 2, !tbaa !101
  %i.caz = zext i16 %i.cay to i32
  br label %pred_motion.exit

bb.gp:                                            ; preds = %bb.gn
  %i.cba = sext i16 %i.cav to i32                 ; 2 uses
  %i.cbb = load i16, ptr %i.bys, align 2, !tbaa !101
  %i.cbc = sext i16 %i.cbb to i32                 ; 2 uses
  %i.cbd = load i16, ptr %.01347, align 2, !tbaa !101
  %i.cbe = sext i16 %i.cbd to i32
  %..i1230 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.cba, i32 range(i32 -32768, 32768) %i.cbc)
  %.20.i1231 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cba, i32 range(i32 -32768, 32768) %i.cbc)
  %i.cbf = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cbe, i32 %..i1230)
  %i.cbg = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.cbf, i32 %.20.i1231)
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.byq, i64 46
  %i.cbi = load i16, ptr %i.cbh, align 2, !tbaa !101
  %i.cbj = sext i16 %i.cbi to i32                 ; 2 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.byq, i64 18
  %i.cbl = load i16, ptr %i.cbk, align 2, !tbaa !101
  %i.cbm = sext i16 %i.cbl to i32                 ; 2 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %.01347, i64 2
  %i.cbo = load i16, ptr %i.cbn, align 2, !tbaa !101
  %i.cbp = sext i16 %i.cbo to i32
  %..i1232 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.cbj, i32 range(i32 -32768, 32768) %i.cbm)
  %.20.i1233 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cbj, i32 range(i32 -32768, 32768) %i.cbm)
  %i.cbq = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cbp, i32 %..i1232)
  %i.cbr = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.cbq, i32 %.20.i1233)
  br label %pred_motion.exit

pred_motion.exit:                                 ; preds = %bb.gg, %bb.gj, %bb.gl, %bb.gm, %bb.go, %bb.gp
  %.11342 = phi i32 [ %i.bzq, %bb.gg ], [ %i.cae, %bb.gj ], [ %i.caj, %bb.gl ], [ %i.cao, %bb.gm ], [ %i.caw, %bb.go ], [ %i.cbg, %bb.gp ]
  %.11340 = phi i32 [ %i.cab, %bb.gg ], [ %i.cah, %bb.gj ], [ %i.cam, %bb.gl ], [ %i.car, %bb.gm ], [ %i.caz, %bb.go ], [ %i.cbr, %bb.gp ]
  %i.cbs = getelementptr inbounds nuw [80 x i8], ptr %i.bxg, i64 %indvars.iv1630 ; 12 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 22
  %i.cbu = load i8, ptr %i.cbt, align 2, !tbaa !74
  %i.cbv = zext i8 %i.cbu to i32
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbs, i64 8
  %i.cbx = load i8, ptr %i.cbw, align 2, !tbaa !74
  %i.cby = zext i8 %i.cbx to i32
  %i.cbz = add nuw nsw i32 %i.cby, %i.cbv
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbs, i64 23
  %i.ccb = load i8, ptr %i.cca, align 1, !tbaa !74
  %i.ccc = zext i8 %i.ccb to i32
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cbs, i64 9
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !74
  %i.ccf = zext i8 %i.cce to i32
  %i.ccg = add nuw nsw i32 %i.ccf, %i.ccc
  %i.cch = call fastcc i32 @decode_cabac_mb_mvd(ptr noundef nonnull %1, i32 noundef 40, i32 noundef %i.cbz, ptr noundef %i.g) ; 2 uses
  %i.cci = call fastcc i32 @decode_cabac_mb_mvd(ptr noundef nonnull %1, i32 noundef 47, i32 noundef %i.ccg, ptr noundef %i.h) ; 2 uses
  %i.ccj = icmp ne i32 %i.cch, -2147483648
  %i.cck = icmp ne i32 %i.cci, -2147483648
  %or.cond24.not = select i1 %i.ccj, i1 %i.cck, i1 false
  br i1 %or.cond24.not, label %bb.gq, label %.critedge1035

bb.gq:                                            ; preds = %pred_motion.exit
  %.pre1755 = load i32, ptr %i.c, align 4, !tbaa !98
  %i.ccl = add i32 %i.cch, %.11342
  %i.ccm = add i32 %i.cci, %.11340
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cbs, i64 24
  %i.cco = load i32, ptr %i.g, align 4, !tbaa !98
  %i.ccp = load i32, ptr %i.h, align 4, !tbaa !98
  %i.ccq = and i32 %i.cco, 255
  %i.ccr = shl i32 %i.ccp, 8
  %.masked = and i32 %i.ccr, 65280
  %i.ccs = or disjoint i32 %.masked, %i.ccq
  %i.cct = mul nuw i32 %i.ccs, 65537              ; 8 uses
  store i32 %i.cct, ptr %i.ccn, align 4, !tbaa !98
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cbs, i64 28
  store i32 %i.cct, ptr %i.ccu, align 4, !tbaa !98
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.cbs, i64 40
  store i32 %i.cct, ptr %i.ccv, align 4, !tbaa !98
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.cbs, i64 44
  store i32 %i.cct, ptr %i.ccw, align 4, !tbaa !98
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cbs, i64 56
  store i32 %i.cct, ptr %i.ccx, align 4, !tbaa !98
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.cbs, i64 60
  store i32 %i.cct, ptr %i.ccy, align 4, !tbaa !98
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cbs, i64 72
  store i32 %i.cct, ptr %i.ccz, align 4, !tbaa !98
  %i.cda = getelementptr inbounds nuw i8, ptr %i.cbs, i64 76
end_hunk_1
begin_hunk_2_@ff_h264_decode_mb_cabac:bb.a
bb.kp:                                            ; preds = %.peel.begin
  %smax = call i32 @llvm.smax.i32(i32 %i.dmx, i32 1)
  %exitcond1689.peel.not = icmp eq i32 %smax, 1
  br i1 %exitcond1689.peel.not, label %decode_cabac_luma_residual.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.kp
  %i.dna = getelementptr inbounds nuw i8, ptr %1, i64 33743
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kr, %.peel.next
  %.0844 = phi i32 [ 2, %.peel.next ], [ %i.dnc, %bb.kr ] ; 3 uses
  %i.dnb = call fastcc i32 @get_cabac_noinline(ptr noundef nonnull %i.dmm, ptr noundef nonnull %i.dna)
  %.not1010 = icmp eq i32 %i.dnb, 0
  br i1 %.not1010, label %.loopexit1691, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.dnc = add nuw nsw i32 %.0844, 1
  %exitcond1689.not = icmp eq i32 %i.dmx, %.0844
  br i1 %exitcond1689.not, label %decode_cabac_luma_residual.exit, label %bb.kq, !llvm.loop !167

.loopexit1691:                                    ; preds = %bb.kq, %.peel.begin
  %.0844.lcssa = phi i32 [ 1, %.peel.begin ], [ %.0844, %bb.kq ] ; 3 uses
  %i.dnd = and i32 %.0844.lcssa, 1
  %.not1011 = icmp eq i32 %i.dnd, 0
  %i.dne = add nuw nsw i32 %.0844.lcssa, 1
  %i.dnf = lshr exact i32 %i.dne, 1
  %i.dng = lshr exact i32 %.0844.lcssa, 1
  %i.dnh = sub nsw i32 0, %i.dng
  %.1845 = select i1 %.not1011, i32 %i.dnh, i32 %i.dnf ; 2 uses
  store i32 %.1845, ptr %i.dmo, align 8, !tbaa !123
  %i.dni = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dnj = load i32, ptr %i.dni, align 8, !tbaa !9
  %i.dnk = add nsw i32 %i.dnj, %.1845             ; 6 uses
  %i.dnl = icmp ugt i32 %i.dnk, %i.dmw
  br i1 %i.dnl, label %.thread1446.sink.split, label %.thread1446

.thread1446.sink.split:                           ; preds = %.loopexit1691
  %i.dnm = icmp slt i32 %i.dnk, 0                 ; 2 uses
  %reass.sub = sub i32 %i.dnk, %i.dmv
  %i.dnn = add i32 %reass.sub, -4                 ; 2 uses
  %i.dno = add i32 %i.dmv, 4
  %i.dnp = add nsw i32 %i.dno, %i.dnk             ; 2 uses
  %.sink1918 = select i1 %i.dnm, i32 %i.dnp, i32 %i.dnn
  %.ph = select i1 %i.dnm, i32 %i.dnp, i32 %i.dnn
  br label %.thread1446

.thread1446:                                      ; preds = %.thread1446.sink.split, %.loopexit1691
  %storemerge1919 = phi i32 [ %.sink1918, %.thread1446.sink.split ], [ %i.dnk, %.loopexit1691 ]
  %i.dnq = phi i32 [ %.ph, %.thread1446.sink.split ], [ %i.dnk, %.loopexit1691 ]
  store i32 %storemerge1919, ptr %i.dni, align 8, !tbaa !9
  %i.dnr = load ptr, ptr %i.o, align 8, !tbaa !85 ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 558
  %i.dnt = sext i32 %i.dnq to i64                 ; 2 uses
  %i.dnu = getelementptr inbounds i8, ptr %i.dns, i64 %i.dnt
  %i.dnv = load i8, ptr %i.dnu, align 1, !tbaa !74
  %i.dnw = zext i8 %i.dnv to i32
  %i.dnx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.dnw, ptr %i.dnx, align 4, !tbaa !98
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dnr, i64 646
  %i.dnz = getelementptr inbounds i8, ptr %i.dny, i64 %i.dnt
  %i.doa = load i8, ptr %i.dnz, align 1, !tbaa !74
  %i.dob = zext i8 %i.doa to i32
  %i.doc = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.dob, ptr %i.doc, align 16, !tbaa !98
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ko
  store i32 0, ptr %i.dmo, align 8, !tbaa !123
  br label %bb.kt

bb.kt:                                            ; preds = %.thread1446, %bb.ks
  %i.dod = load i32, ptr %i.c, align 4, !tbaa !98 ; 4 uses
  %i.doe = and i32 %i.dod, 128
  %.not1013 = icmp eq i32 %i.doe, 0               ; 2 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dog = load i32, ptr %i.dof, align 8, !tbaa !9 ; 3 uses
  %.not1014 = icmp eq i32 %i.dog, 0               ; 4 uses
  %.v1017 = select i1 %.not1014, i64 31592, i64 31304
  %.v1018 = select i1 %.not1014, i64 31576, i64 31288
  %.v = select i1 %.not1014, i64 31448, i64 31160
  %.v1015 = select i1 %.not1014, i64 31432, i64 31144
  %.v1018.pn = select i1 %.not1013, i64 %.v1015, i64 %.v1018
  %.v1017.pn = select i1 %.not1013, i64 %.v, i64 %.v1017
  %.0846 = getelementptr inbounds nuw i8, ptr %0, i64 %.v1017.pn ; 4 uses
  %.0847 = getelementptr inbounds nuw i8, ptr %0, i64 %.v1018.pn ; 11 uses
  %i.doh = and i32 %i.dod, 2
  %.not.i1070 = icmp eq i32 %i.doh, 0
  br i1 %.not.i1070, label %bb.ld, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.doi = getelementptr inbounds nuw i8, ptr %1, i64 32416 ; 2 uses
  %i.doj = getelementptr inbounds nuw i8, ptr %1, i64 21100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.doi, i8 0, i64 64, i1 false)
  %i.dok = load i32, ptr %i.doj, align 4, !tbaa !163
  %i.dol = getelementptr inbounds nuw i8, ptr %1, i64 21096
  %i.dom = load i32, ptr %i.dol, align 8, !tbaa !164
  %i.don = lshr i32 %i.dok, 8
  %.lobit = and i32 %i.don, 1
  %i.doo = lshr i32 %i.dom, 7
  %i.dop = and i32 %i.doo, 2
  %.1.i1175 = or disjoint i32 %i.dop, %.lobit
  %i.doq = zext nneg i32 %.1.i1175 to i64
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.doq
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dor, i64 85 ; 2 uses
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !74
  %i.dou = zext i8 %i.dot to i32                  ; 2 uses
  %i.dov = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 6 uses
  %i.dow = load i32, ptr %i.dov, align 4, !tbaa !141 ; 2 uses
  %i.dox = shl i32 %i.dow, 1
  %i.doy = and i32 %i.dox, 384
  %i.doz = add nuw nsw i32 %i.doy, %i.dou
  %i.dpa = zext nneg i32 %i.doz to i64
  %i.dpb = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.dpa
  %i.dpc = load i8, ptr %i.dpb, align 1, !tbaa !74
  %i.dpd = zext i8 %i.dpc to i32                  ; 2 uses
  %i.dpe = sub nsw i32 %i.dow, %i.dpd             ; 2 uses
  %i.dpf = shl i32 %i.dpe, 17                     ; 2 uses
  %i.dpg = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.dph = icmp slt i32 %i.dpf, %i.dpg            ; 3 uses
  %i.dpi = sext i1 %i.dph to i32
  %i.dpj = select i1 %i.dph, i32 %i.dpf, i32 0
  %i.dpk = sub nsw i32 %i.dpg, %i.dpj             ; 2 uses
  store i32 %i.dpk, ptr %i.dmm, align 16, !tbaa !142
  %i.dpl = select i1 %i.dph, i32 %i.dpd, i32 %i.dpe ; 3 uses
  store i32 %i.dpl, ptr %i.dov, align 4, !tbaa !141
  %i.dpm = xor i32 %i.dpi, %i.dou                 ; 2 uses
  %i.dpn = sext i32 %i.dpm to i64
  %i.dpo = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.dpn
  %i.dpp = load i8, ptr %i.dpo, align 1, !tbaa !74
  store i8 %i.dpp, ptr %i.dos, align 1, !tbaa !74
  %i.dpq = sext i32 %i.dpl to i64
  %i.dpr = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.dpq
  %i.dps = load i8, ptr %i.dpr, align 1, !tbaa !74
  %i.dpt = zext i8 %i.dps to i32                  ; 2 uses
  %i.dpu = shl i32 %i.dpl, %i.dpt
  store i32 %i.dpu, ptr %i.dov, align 4, !tbaa !141
  %i.dpv = shl i32 %i.dpk, %i.dpt                 ; 5 uses
  store i32 %i.dpv, ptr %i.dmm, align 16, !tbaa !142
  %i.dpw = and i32 %i.dpv, 65535
  %.not.i.i1254 = icmp eq i32 %i.dpw, 0
  br i1 %.not.i.i1254, label %bb.kv, label %get_cabac.exit

bb.kv:                                            ; preds = %bb.ku
  %i.dpx = add nsw i32 %i.dpv, -32768
  %i.dpy = xor i32 %i.dpx, %i.dpv
  %i.dpz = lshr exact i32 %i.dpy, 15
  %i.dqa = zext nneg i32 %i.dpz to i64
  %i.dqb = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.dqa
  %i.dqc = load i8, ptr %i.dqb, align 1, !tbaa !74
  %i.dqd = zext i8 %i.dqc to i32
  %i.dqe = sub nsw i32 7, %i.dqd
  %i.dqf = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 2 uses
  %i.dqg = load ptr, ptr %i.dqf, align 16, !tbaa !143 ; 3 uses
  %i.dqh = load i8, ptr %i.dqg, align 1, !tbaa !74
  %i.dqi = zext i8 %i.dqh to i32
  %i.dqj = shl nuw nsw i32 %i.dqi, 9
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqg, i64 1
  %i.dql = load i8, ptr %i.dqk, align 1, !tbaa !74
  %i.dqm = zext i8 %i.dql to i32
  %i.dqn = shl nuw nsw i32 %i.dqm, 1
  %i.dqo = or disjoint i32 %i.dqn, %i.dqj
  %i.dqp = add nsw i32 %i.dqo, -65535
  %i.dqq = shl nsw i32 %i.dqp, %i.dqe
  %i.dqr = add i32 %i.dqq, %i.dpv
  store i32 %i.dqr, ptr %i.dmm, align 16, !tbaa !142
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqg, i64 2
  store ptr %i.dqs, ptr %i.dqf, align 16, !tbaa !143
  br label %get_cabac.exit

get_cabac.exit:                                   ; preds = %bb.ku, %bb.kv
  %i.dqt = and i32 %i.dpm, 1
  %i.dqu = icmp eq i32 %i.dqt, 0
  br i1 %i.dqu, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %get_cabac.exit
  %i.dqv = getelementptr inbounds nuw i8, ptr %1, i64 28616
  store i8 0, ptr %i.dqv, align 8, !tbaa !74
  br label %decode_cabac_residual_dc.exit

bb.kx:                                            ; preds = %get_cabac.exit
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.doi, i32 noundef 0, i32 noundef 48, ptr noundef nonnull %.0847, i32 noundef 16)
  br label %decode_cabac_residual_dc.exit

decode_cabac_residual_dc.exit:                    ; preds = %bb.kw, %bb.kx
  br i1 %.not994, label %bb.ky, label %bb.lc

bb.ky:                                            ; preds = %decode_cabac_residual_dc.exit
  %i.dqw = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.dqx = getelementptr inbounds nuw i8, ptr %i.dqw, i64 173808
  %i.dqy = load ptr, ptr %i.dqx, align 8, !tbaa !169
  %i.dqz = sext i32 %i.dog to i64
  %i.dra = getelementptr inbounds [64 x i8], ptr %i.dqy, i64 %i.dqz
  %i.drb = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.drc = getelementptr inbounds nuw i8, ptr %.0847, i64 1
  %i.drd = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.dre = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 2 uses
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %decode_cabac_residual_nondc.exit1082
  %indvars.iv1692 = phi i64 [ 0, %bb.ky ], [ %indvars.iv.next1693, %decode_cabac_residual_nondc.exit1082 ] ; 4 uses
  %indvars.iv1692.tr = trunc i64 %indvars.iv1692 to i32
  %i.drf = shl i32 %indvars.iv1692.tr, 4
  %i.drg = shl i32 %i.drf, %i.v
  %i.drh = sext i32 %i.drg to i64
  %i.dri = getelementptr inbounds [2 x i8], ptr %i.drb, i64 %i.drh
  %i.drj = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv1692
  %i.drk = load i8, ptr %i.drj, align 1, !tbaa !74
  %i.drl = zext i8 %i.drk to i64
  %i.drm = getelementptr i8, ptr %i.drd, i64 %i.drl ; 3 uses
  %i.drn = getelementptr i8, ptr %i.drm, i64 -1
  %i.dro = load i8, ptr %i.drn, align 1, !tbaa !74
  %i.drp = getelementptr i8, ptr %i.drm, i64 -8
  %i.drq = load i8, ptr %i.drp, align 1, !tbaa !74
  %.not1459 = icmp ne i8 %i.dro, 0
  %spec.select.i1192 = zext i1 %.not1459 to i32   ; 2 uses
  %.not1460 = icmp eq i8 %i.drq, 0
  %i.drr = or disjoint i32 %spec.select.i1192, 2
  %.1.i1193 = select i1 %.not1460, i32 %spec.select.i1192, i32 %i.drr
  %i.drs = zext nneg i32 %.1.i1193 to i64
  %i.drt = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.drs
  %i.dru = getelementptr inbounds nuw i8, ptr %i.drt, i64 89 ; 2 uses
  %i.drv = load i8, ptr %i.dru, align 1, !tbaa !74
  %i.drw = zext i8 %i.drv to i32                  ; 2 uses
  %i.drx = load i32, ptr %i.dov, align 4, !tbaa !141 ; 2 uses
  %i.dry = shl i32 %i.drx, 1
  %i.drz = and i32 %i.dry, 384
  %i.dsa = add nuw nsw i32 %i.drz, %i.drw
  %i.dsb = zext nneg i32 %i.dsa to i64
  %i.dsc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.dsb
  %i.dsd = load i8, ptr %i.dsc, align 1, !tbaa !74
  %i.dse = zext i8 %i.dsd to i32                  ; 2 uses
  %i.dsf = sub nsw i32 %i.drx, %i.dse             ; 2 uses
  %i.dsg = shl i32 %i.dsf, 17                     ; 2 uses
  %i.dsh = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.dsi = icmp slt i32 %i.dsg, %i.dsh            ; 3 uses
  %i.dsj = sext i1 %i.dsi to i32
  %i.dsk = select i1 %i.dsi, i32 %i.dsg, i32 0
  %i.dsl = sub nsw i32 %i.dsh, %i.dsk             ; 2 uses
  store i32 %i.dsl, ptr %i.dmm, align 16, !tbaa !142
  %i.dsm = select i1 %i.dsi, i32 %i.dse, i32 %i.dsf ; 3 uses
  store i32 %i.dsm, ptr %i.dov, align 4, !tbaa !141
  %i.dsn = xor i32 %i.dsj, %i.drw                 ; 2 uses
  %i.dso = sext i32 %i.dsn to i64
  %i.dsp = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.dso
  %i.dsq = load i8, ptr %i.dsp, align 1, !tbaa !74
  store i8 %i.dsq, ptr %i.dru, align 1, !tbaa !74
  %i.dsr = sext i32 %i.dsm to i64
  %i.dss = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.dsr
  %i.dst = load i8, ptr %i.dss, align 1, !tbaa !74
  %i.dsu = zext i8 %i.dst to i32                  ; 2 uses
  %i.dsv = shl i32 %i.dsm, %i.dsu
  store i32 %i.dsv, ptr %i.dov, align 4, !tbaa !141
  %i.dsw = shl i32 %i.dsl, %i.dsu                 ; 5 uses
  store i32 %i.dsw, ptr %i.dmm, align 16, !tbaa !142
  %i.dsx = and i32 %i.dsw, 65535
  %.not.i.i1255 = icmp eq i32 %i.dsx, 0
  br i1 %.not.i.i1255, label %bb.la, label %get_cabac.exit1256

bb.la:                                            ; preds = %bb.kz
  %i.dsy = add nsw i32 %i.dsw, -32768
  %i.dsz = xor i32 %i.dsy, %i.dsw
  %i.dta = lshr exact i32 %i.dsz, 15
  %i.dtb = zext nneg i32 %i.dta to i64
  %i.dtc = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.dtb
  %i.dtd = load i8, ptr %i.dtc, align 1, !tbaa !74
  %i.dte = zext i8 %i.dtd to i32
  %i.dtf = sub nsw i32 7, %i.dte
  %i.dtg = load ptr, ptr %i.dre, align 16, !tbaa !143 ; 3 uses
  %i.dth = load i8, ptr %i.dtg, align 1, !tbaa !74
  %i.dti = zext i8 %i.dth to i32
  %i.dtj = shl nuw nsw i32 %i.dti, 9
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.dtg, i64 1
  %i.dtl = load i8, ptr %i.dtk, align 1, !tbaa !74
  %i.dtm = zext i8 %i.dtl to i32
  %i.dtn = shl nuw nsw i32 %i.dtm, 1
  %i.dto = or disjoint i32 %i.dtn, %i.dtj
  %i.dtp = add nsw i32 %i.dto, -65535
  %i.dtq = shl nsw i32 %i.dtp, %i.dtf
  %i.dtr = add i32 %i.dtq, %i.dsw
  store i32 %i.dtr, ptr %i.dmm, align 16, !tbaa !142
  %i.dts = getelementptr inbounds nuw i8, ptr %i.dtg, i64 2
  store ptr %i.dts, ptr %i.dre, align 16, !tbaa !143
  br label %get_cabac.exit1256

get_cabac.exit1256:                               ; preds = %bb.kz, %bb.la
  %i.dtt = and i32 %i.dsn, 1
  %i.dtu = icmp eq i32 %i.dtt, 0
  br i1 %i.dtu, label %bb.lb, label %.split22.i1081

.split22.i1081:                                   ; preds = %get_cabac.exit1256
  %i.dtv = trunc nuw nsw i64 %indvars.iv1692 to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dri, i32 noundef 1, i32 noundef range(i32 -2147483648, 48) %i.dtv, ptr noundef nonnull %i.drc, ptr noundef %i.dra, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1082

bb.lb:                                            ; preds = %get_cabac.exit1256
  store i8 0, ptr %i.drm, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1082

decode_cabac_residual_nondc.exit1082:             ; preds = %.split22.i1081, %bb.lb
  %indvars.iv.next1693 = add nuw nsw i64 %indvars.iv1692, 1 ; 2 uses
  %exitcond1695.not = icmp eq i64 %indvars.iv.next1693, 16
  br i1 %exitcond1695.not, label %decode_cabac_luma_residual.exit1078, label %bb.kz, !llvm.loop !170

bb.lc:                                            ; preds = %decode_cabac_residual_dc.exit
  %i.dtw = getelementptr inbounds nuw i8, ptr %1, i64 28628
  store i32 0, ptr %i.dtw, align 4, !tbaa !98
  %i.dtx = getelementptr inbounds nuw i8, ptr %1, i64 28636
  store i32 0, ptr %i.dtx, align 4, !tbaa !98
  %i.dty = getelementptr inbounds nuw i8, ptr %1, i64 28644
  store i32 0, ptr %i.dty, align 4, !tbaa !98
  %i.dtz = getelementptr inbounds nuw i8, ptr %1, i64 28652
  store i32 0, ptr %i.dtz, align 4, !tbaa !98
  br label %decode_cabac_luma_residual.exit1078

bb.ld:                                            ; preds = %bb.kt
  %i.dua = and i32 %i.dod, 5
  %.not88.i1073 = icmp eq i32 %i.dua, 0
  %i.dub = select i1 %.not88.i1073, i64 3, i64 0  ; 2 uses
  %i.duc = and i32 %i.dod, 16777216
  %.not90.i1076 = icmp eq i32 %i.duc, 0
  %i.dud = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.due = sext i32 %i.dog to i64                 ; 2 uses
  %i.duf = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 3 uses
  %i.dug = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.duh = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %decode_cabac_residual_nondc.exit1080
  %indvars.iv1700 = phi i64 [ 0, %bb.ld ], [ %indvars.iv.next1701, %decode_cabac_residual_nondc.exit1080 ] ; 6 uses
  %i.dui = trunc nuw nsw i64 %indvars.iv1700 to i32
  %i.duj = shl nuw nsw i32 1, %i.dui
  %i.duk = and i32 %i.duj, %.1874
  %.not89.i1075 = icmp eq i32 %i.duk, 0
  br i1 %.not89.i1075, label %bb.ln, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  br i1 %.not90.i1076, label %bb.lj, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.dul = shl nuw nsw i64 %indvars.iv1700, 2     ; 3 uses
  %indvars.iv1700.tr = trunc i64 %indvars.iv1700 to i32
  %i.dum = shl i32 %indvars.iv1700.tr, 6
  %i.dun = shl i32 %i.dum, %i.v
  %i.duo = sext i32 %i.dun to i64
  %i.dup = getelementptr inbounds [2 x i8], ptr %i.dud, i64 %i.duo ; 2 uses
  %i.duq = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duq, i64 173856
  %i.dus = getelementptr inbounds nuw [8 x i8], ptr %i.dur, i64 %i.dub
  %i.dut = load ptr, ptr %i.dus, align 8, !tbaa !169
  %i.duu = getelementptr inbounds [256 x i8], ptr %i.dut, i64 %i.due ; 2 uses
  %i.duv = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.duw = getelementptr inbounds nuw i8, ptr %i.duv, i64 12
  %i.dux = load i32, ptr %i.duw, align 4, !tbaa !88
  %i.duy = icmp eq i32 %i.dux, 3
  br i1 %i.duy, label %.split20.i, label %.split21.i

.split21.i:                                       ; preds = %bb.lg
  %i.duz = trunc nuw nsw i64 %i.dul to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dup, i32 noundef 5, i32 noundef range(i32 -2147483648, 48) %i.duz, ptr noundef nonnull %.0846, ptr noundef %i.duu, i32 noundef 64)
  br label %decode_cabac_residual_nondc.exit1080

.split20.i:                                       ; preds = %bb.lg
  %i.dva = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dul
  %i.dvb = load i8, ptr %i.dva, align 4, !tbaa !74
  %i.dvc = zext i8 %i.dvb to i64
  %i.dvd = getelementptr i8, ptr %i.duf, i64 %i.dvc ; 4 uses
  %i.dve = getelementptr i8, ptr %i.dvd, i64 -1
  %i.dvf = load i8, ptr %i.dve, align 1, !tbaa !74
  %i.dvg = getelementptr i8, ptr %i.dvd, i64 -8
  %i.dvh = load i8, ptr %i.dvg, align 1, !tbaa !74
  %.not1487 = icmp ne i8 %i.dvf, 0
  %spec.select.i1194 = zext i1 %.not1487 to i64
  %.not1488 = icmp eq i8 %i.dvh, 0
  %i.dvi = select i1 %.not1488, i64 1012, i64 1014
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.dvi
  %i.dvk = getelementptr inbounds nuw i8, ptr %i.dvj, i64 %spec.select.i1194 ; 2 uses
  %i.dvl = load i8, ptr %i.dvk, align 1, !tbaa !74
  %i.dvm = zext i8 %i.dvl to i32                  ; 2 uses
  %i.dvn = load i32, ptr %i.dug, align 4, !tbaa !141 ; 2 uses
  %i.dvo = shl i32 %i.dvn, 1
  %i.dvp = and i32 %i.dvo, 384
  %i.dvq = add nuw nsw i32 %i.dvp, %i.dvm
  %i.dvr = zext nneg i32 %i.dvq to i64
  %i.dvs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.dvr
  %i.dvt = load i8, ptr %i.dvs, align 1, !tbaa !74
  %i.dvu = zext i8 %i.dvt to i32                  ; 2 uses
  %i.dvv = sub nsw i32 %i.dvn, %i.dvu             ; 2 uses
  %i.dvw = shl i32 %i.dvv, 17                     ; 2 uses
  %i.dvx = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.dvy = icmp slt i32 %i.dvw, %i.dvx            ; 3 uses
  %i.dvz = sext i1 %i.dvy to i32
  %i.dwa = select i1 %i.dvy, i32 %i.dvw, i32 0
  %i.dwb = sub nsw i32 %i.dvx, %i.dwa
  %i.dwc = select i1 %i.dvy, i32 %i.dvu, i32 %i.dvv ; 2 uses
  %i.dwd = xor i32 %i.dvz, %i.dvm                 ; 2 uses
  %i.dwe = sext i32 %i.dwd to i64
  %i.dwf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.dwe
  %i.dwg = load i8, ptr %i.dwf, align 1, !tbaa !74
  store i8 %i.dwg, ptr %i.dvk, align 1, !tbaa !74
  %i.dwh = sext i32 %i.dwc to i64
  %i.dwi = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.dwh
  %i.dwj = load i8, ptr %i.dwi, align 1, !tbaa !74
  %i.dwk = zext i8 %i.dwj to i32                  ; 2 uses
  %i.dwl = shl i32 %i.dwc, %i.dwk
  store i32 %i.dwl, ptr %i.dug, align 4, !tbaa !141
  %i.dwm = shl i32 %i.dwb, %i.dwk                 ; 5 uses
  store i32 %i.dwm, ptr %i.dmm, align 16, !tbaa !142
  %i.dwn = and i32 %i.dwm, 65535
  %.not.i.i1257 = icmp eq i32 %i.dwn, 0
  br i1 %.not.i.i1257, label %bb.lh, label %get_cabac.exit1258

bb.lh:                                            ; preds = %.split20.i
  %i.dwo = add nsw i32 %i.dwm, -32768
  %i.dwp = xor i32 %i.dwo, %i.dwm
  %i.dwq = lshr exact i32 %i.dwp, 15
  %i.dwr = zext nneg i32 %i.dwq to i64
  %i.dws = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.dwr
  %i.dwt = load i8, ptr %i.dws, align 1, !tbaa !74
  %i.dwu = zext i8 %i.dwt to i32
  %i.dwv = sub nsw i32 7, %i.dwu
  %i.dww = load ptr, ptr %i.duh, align 16, !tbaa !143 ; 3 uses
  %i.dwx = load i8, ptr %i.dww, align 1, !tbaa !74
  %i.dwy = zext i8 %i.dwx to i32
  %i.dwz = shl nuw nsw i32 %i.dwy, 9
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dww, i64 1
  %i.dxb = load i8, ptr %i.dxa, align 1, !tbaa !74
  %i.dxc = zext i8 %i.dxb to i32
  %i.dxd = shl nuw nsw i32 %i.dxc, 1
  %i.dxe = or disjoint i32 %i.dxd, %i.dwz
  %i.dxf = add nsw i32 %i.dxe, -65535
  %i.dxg = shl nsw i32 %i.dxf, %i.dwv
  %i.dxh = add i32 %i.dxg, %i.dwm
  store i32 %i.dxh, ptr %i.dmm, align 16, !tbaa !142
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dww, i64 2
  store ptr %i.dxi, ptr %i.duh, align 16, !tbaa !143
  br label %get_cabac.exit1258

get_cabac.exit1258:                               ; preds = %.split20.i, %bb.lh
  %i.dxj = and i32 %i.dwd, 1
  %i.dxk = icmp eq i32 %i.dxj, 0
  br i1 %i.dxk, label %bb.li, label %.split22.i1079

.split22.i1079:                                   ; preds = %get_cabac.exit1258
  %i.dxl = trunc nuw nsw i64 %i.dul to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dup, i32 noundef 5, i32 noundef range(i32 -2147483648, 48) %i.dxl, ptr noundef nonnull %.0846, ptr noundef %i.duu, i32 noundef 64)
  br label %decode_cabac_residual_nondc.exit1080

bb.li:                                            ; preds = %get_cabac.exit1258
  store i16 0, ptr %i.dvd, align 2, !tbaa !101
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dvd, i64 8
  store i16 0, ptr %i.dxm, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1080

bb.lj:                                            ; preds = %bb.lf
  %i.dxn = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.dxn, i64 173808
  %i.dxp = getelementptr inbounds nuw [8 x i8], ptr %i.dxo, i64 %i.dub
  %i.dxq = load ptr, ptr %i.dxp, align 8, !tbaa !169
  %i.dxr = getelementptr inbounds [64 x i8], ptr %i.dxq, i64 %i.due
  %i.dxs = shl nuw nsw i64 %indvars.iv1700, 2
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %decode_cabac_residual_nondc.exit
  %indvars.iv1696 = phi i64 [ 0, %bb.lj ], [ %indvars.iv.next1697, %decode_cabac_residual_nondc.exit ] ; 2 uses
  %i.dxt = add nuw nsw i64 %indvars.iv1696, %i.dxs ; 3 uses
  %.tr1856 = trunc i64 %i.dxt to i32
  %i.dxu = shl i32 %.tr1856, 4
  %i.dxv = shl i32 %i.dxu, %i.v
  %i.dxw = sext i32 %i.dxv to i64
  %i.dxx = getelementptr inbounds [2 x i8], ptr %i.dud, i64 %i.dxw
  %i.dxy = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dxt
  %i.dxz = load i8, ptr %i.dxy, align 1, !tbaa !74
  %i.dya = zext i8 %i.dxz to i64
  %i.dyb = getelementptr i8, ptr %i.duf, i64 %i.dya ; 3 uses
  %i.dyc = getelementptr i8, ptr %i.dyb, i64 -1
  %i.dyd = load i8, ptr %i.dyc, align 1, !tbaa !74
  %i.dye = getelementptr i8, ptr %i.dyb, i64 -8
  %i.dyf = load i8, ptr %i.dye, align 1, !tbaa !74
  %.not1489 = icmp ne i8 %i.dyd, 0
  %spec.select.i1196 = zext i1 %.not1489 to i32   ; 2 uses
  %.not1490 = icmp eq i8 %i.dyf, 0
  %i.dyg = or disjoint i32 %spec.select.i1196, 2
  %.1.i1197 = select i1 %.not1490, i32 %spec.select.i1196, i32 %i.dyg
  %i.dyh = zext nneg i32 %.1.i1197 to i64
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.dyh
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyi, i64 93 ; 2 uses
  %i.dyk = load i8, ptr %i.dyj, align 1, !tbaa !74
  %i.dyl = zext i8 %i.dyk to i32                  ; 2 uses
  %i.dym = load i32, ptr %i.dug, align 4, !tbaa !141 ; 2 uses
  %i.dyn = shl i32 %i.dym, 1
  %i.dyo = and i32 %i.dyn, 384
  %i.dyp = add nuw nsw i32 %i.dyo, %i.dyl
  %i.dyq = zext nneg i32 %i.dyp to i64
  %i.dyr = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.dyq
  %i.dys = load i8, ptr %i.dyr, align 1, !tbaa !74
  %i.dyt = zext i8 %i.dys to i32                  ; 2 uses
  %i.dyu = sub nsw i32 %i.dym, %i.dyt             ; 2 uses
  %i.dyv = shl i32 %i.dyu, 17                     ; 2 uses
  %i.dyw = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.dyx = icmp slt i32 %i.dyv, %i.dyw            ; 3 uses
  %i.dyy = sext i1 %i.dyx to i32
  %i.dyz = select i1 %i.dyx, i32 %i.dyv, i32 0
  %i.dza = sub nsw i32 %i.dyw, %i.dyz
  %i.dzb = select i1 %i.dyx, i32 %i.dyt, i32 %i.dyu ; 2 uses
  %i.dzc = xor i32 %i.dyy, %i.dyl                 ; 2 uses
  %i.dzd = sext i32 %i.dzc to i64
  %i.dze = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.dzd
  %i.dzf = load i8, ptr %i.dze, align 1, !tbaa !74
  store i8 %i.dzf, ptr %i.dyj, align 1, !tbaa !74
  %i.dzg = sext i32 %i.dzb to i64
  %i.dzh = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.dzg
  %i.dzi = load i8, ptr %i.dzh, align 1, !tbaa !74
  %i.dzj = zext i8 %i.dzi to i32                  ; 2 uses
  %i.dzk = shl i32 %i.dzb, %i.dzj
  store i32 %i.dzk, ptr %i.dug, align 4, !tbaa !141
  %i.dzl = shl i32 %i.dza, %i.dzj                 ; 5 uses
  store i32 %i.dzl, ptr %i.dmm, align 16, !tbaa !142
  %i.dzm = and i32 %i.dzl, 65535
  %.not.i.i1259 = icmp eq i32 %i.dzm, 0
  br i1 %.not.i.i1259, label %bb.ll, label %get_cabac.exit1260

bb.ll:                                            ; preds = %bb.lk
  %i.dzn = add nsw i32 %i.dzl, -32768
  %i.dzo = xor i32 %i.dzn, %i.dzl
  %i.dzp = lshr exact i32 %i.dzo, 15
  %i.dzq = zext nneg i32 %i.dzp to i64
  %i.dzr = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.dzq
  %i.dzs = load i8, ptr %i.dzr, align 1, !tbaa !74
  %i.dzt = zext i8 %i.dzs to i32
  %i.dzu = sub nsw i32 7, %i.dzt
  %i.dzv = load ptr, ptr %i.duh, align 16, !tbaa !143 ; 3 uses
  %i.dzw = load i8, ptr %i.dzv, align 1, !tbaa !74
  %i.dzx = zext i8 %i.dzw to i32
  %i.dzy = shl nuw nsw i32 %i.dzx, 9
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzv, i64 1
  %i.eaa = load i8, ptr %i.dzz, align 1, !tbaa !74
  %i.eab = zext i8 %i.eaa to i32
  %i.eac = shl nuw nsw i32 %i.eab, 1
  %i.ead = or disjoint i32 %i.eac, %i.dzy
  %i.eae = add nsw i32 %i.ead, -65535
  %i.eaf = shl nsw i32 %i.eae, %i.dzu
  %i.eag = add i32 %i.eaf, %i.dzl
  store i32 %i.eag, ptr %i.dmm, align 16, !tbaa !142
  %i.eah = getelementptr inbounds nuw i8, ptr %i.dzv, i64 2
  store ptr %i.eah, ptr %i.duh, align 16, !tbaa !143
  br label %get_cabac.exit1260

get_cabac.exit1260:                               ; preds = %bb.lk, %bb.ll
  %i.eai = and i32 %i.dzc, 1
  %i.eaj = icmp eq i32 %i.eai, 0
  br i1 %i.eaj, label %bb.lm, label %.split22.i

.split22.i:                                       ; preds = %get_cabac.exit1260
  %i.eak = trunc nuw nsw i64 %i.dxt to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dxx, i32 noundef 2, i32 noundef range(i32 -2147483648, 48) %i.eak, ptr noundef nonnull %.0847, ptr noundef %i.dxr, i32 noundef 16)
  br label %decode_cabac_residual_nondc.exit

bb.lm:                                            ; preds = %get_cabac.exit1260
  store i8 0, ptr %i.dyb, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit

decode_cabac_residual_nondc.exit:                 ; preds = %.split22.i, %bb.lm
  %indvars.iv.next1697 = add nuw nsw i64 %indvars.iv1696, 1 ; 2 uses
  %exitcond1699.not = icmp eq i64 %indvars.iv.next1697, 4
  br i1 %exitcond1699.not, label %decode_cabac_residual_nondc.exit1080, label %bb.lk, !llvm.loop !171

bb.ln:                                            ; preds = %bb.le
  %i.eal = shl nuw nsw i64 %indvars.iv1700, 2
  %i.eam = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.eal
  %i.ean = load i8, ptr %i.eam, align 4, !tbaa !74
  %i.eao = zext i8 %i.ean to i64
  %i.eap = getelementptr inbounds nuw i8, ptr %i.duf, i64 %i.eao ; 2 uses
  store i16 0, ptr %i.eap, align 2, !tbaa !101
  %i.eaq = getelementptr inbounds nuw i8, ptr %i.eap, i64 8
  store i16 0, ptr %i.eaq, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1080

decode_cabac_residual_nondc.exit1080:             ; preds = %decode_cabac_residual_nondc.exit, %bb.li, %.split22.i1079, %.split21.i, %bb.ln
  %indvars.iv.next1701 = add nuw nsw i64 %indvars.iv1700, 1 ; 2 uses
  %exitcond1703.not = icmp eq i64 %indvars.iv.next1701, 4
  br i1 %exitcond1703.not, label %decode_cabac_luma_residual.exit1078, label %bb.le, !llvm.loop !172

decode_cabac_luma_residual.exit1078:              ; preds = %decode_cabac_residual_nondc.exit1082, %decode_cabac_residual_nondc.exit1080, %bb.lc
  %i.ear = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.eas = getelementptr inbounds nuw i8, ptr %i.ear, i64 12
  %i.eat = load i32, ptr %i.eas, align 4, !tbaa !88
  switch i32 %i.eat, label %bb.ns [
    i32 3, label %bb.lo
    i32 2, label %bb.nb
  ]

bb.lo:                                            ; preds = %decode_cabac_luma_residual.exit1078
  %i.eau = load i32, ptr %i.c, align 4, !tbaa !98 ; 3 uses
  %.in.i1059 = getelementptr i8, ptr %1, i64 60
  %i.eav = load i32, ptr %.in.i1059, align 4, !tbaa !98 ; 2 uses
  %i.eaw = and i32 %i.eau, 2
  %.not.i1060 = icmp eq i32 %i.eaw, 0
  br i1 %.not.i1060, label %bb.lx, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.eax = getelementptr inbounds nuw i8, ptr %1, i64 32480 ; 2 uses
  %i.eay = getelementptr inbounds nuw i8, ptr %1, i64 21100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.eax, i8 0, i64 64, i1 false)
  %i.eaz = load i32, ptr %i.eay, align 4, !tbaa !163
  %i.eba = getelementptr inbounds nuw i8, ptr %1, i64 21096
  %i.ebb = load i32, ptr %i.eba, align 8, !tbaa !164
  %i.ebc = lshr i32 %i.eaz, 9
  %.lobit1466 = and i32 %i.ebc, 1
  %i.ebd = lshr i32 %i.ebb, 8
  %i.ebe = and i32 %i.ebd, 2
  %.1.i1173 = or disjoint i32 %i.ebe, %.lobit1466
  %i.ebf = zext nneg i32 %.1.i1173 to i64
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.ebf
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.ebg, i64 460
  %i.ebi = call fastcc i32 @get_cabac(ptr noundef nonnull %i.dmm, ptr noundef nonnull %i.ebh)
  %i.ebj = icmp eq i32 %i.ebi, 0
  br i1 %i.ebj, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.ebk = getelementptr inbounds nuw i8, ptr %1, i64 28656
  store i8 0, ptr %i.ebk, align 16, !tbaa !74
  br label %decode_cabac_residual_dc.exit1099

bb.lr:                                            ; preds = %bb.lp
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eax, i32 noundef 6, i32 noundef 49, ptr noundef nonnull %.0847, i32 noundef 16)
  br label %decode_cabac_residual_dc.exit1099

decode_cabac_residual_dc.exit1099:                ; preds = %bb.lq, %bb.lr
  br i1 %.not994, label %bb.ls, label %bb.lw

bb.ls:                                            ; preds = %decode_cabac_residual_dc.exit1099
  %i.ebl = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.ebl, i64 173816
  %i.ebn = load ptr, ptr %i.ebm, align 8, !tbaa !169
  %i.ebo = sext i32 %i.eav to i64
  %i.ebp = getelementptr inbounds [64 x i8], ptr %i.ebn, i64 %i.ebo
  %i.ebq = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.ebr = getelementptr inbounds nuw i8, ptr %.0847, i64 1
  %i.ebs = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.ebt = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 3 uses
  %i.ebu = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 2 uses
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %decode_cabac_residual_nondc.exit1088
  %indvars.iv1717 = phi i64 [ 0, %bb.ls ], [ %indvars.iv.next1718, %decode_cabac_residual_nondc.exit1088 ] ; 2 uses
  %i.ebv = or disjoint i64 %indvars.iv1717, 16    ; 3 uses
  %.tr1860 = trunc i64 %i.ebv to i32
  %i.ebw = shl i32 %.tr1860, 4
  %i.ebx = shl i32 %i.ebw, %i.v
  %i.eby = sext i32 %i.ebx to i64
  %i.ebz = getelementptr inbounds [2 x i8], ptr %i.ebq, i64 %i.eby
  %i.eca = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ebv
  %i.ecb = load i8, ptr %i.eca, align 1, !tbaa !74
  %i.ecc = zext i8 %i.ecb to i64
  %i.ecd = getelementptr i8, ptr %i.ebs, i64 %i.ecc ; 3 uses
  %i.ece = getelementptr i8, ptr %i.ecd, i64 -1
  %i.ecf = load i8, ptr %i.ece, align 1, !tbaa !74
  %i.ecg = getelementptr i8, ptr %i.ecd, i64 -8
  %i.ech = load i8, ptr %i.ecg, align 1, !tbaa !74
  %.not1468 = icmp ne i8 %i.ecf, 0
  %spec.select.i1186 = zext i1 %.not1468 to i64
  %.not1469 = icmp eq i8 %i.ech, 0
  %i.eci = select i1 %.not1469, i64 464, i64 466
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.eci
  %i.eck = getelementptr inbounds nuw i8, ptr %i.ecj, i64 %spec.select.i1186 ; 2 uses
  %i.ecl = load i8, ptr %i.eck, align 1, !tbaa !74
  %i.ecm = zext i8 %i.ecl to i32                  ; 2 uses
  %i.ecn = load i32, ptr %i.ebt, align 4, !tbaa !141 ; 2 uses
  %i.eco = shl i32 %i.ecn, 1
  %i.ecp = and i32 %i.eco, 384
  %i.ecq = add nuw nsw i32 %i.ecp, %i.ecm
  %i.ecr = zext nneg i32 %i.ecq to i64
  %i.ecs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ecr
  %i.ect = load i8, ptr %i.ecs, align 1, !tbaa !74
  %i.ecu = zext i8 %i.ect to i32                  ; 2 uses
  %i.ecv = sub nsw i32 %i.ecn, %i.ecu             ; 2 uses
  %i.ecw = shl i32 %i.ecv, 17                     ; 2 uses
  %i.ecx = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.ecy = icmp slt i32 %i.ecw, %i.ecx            ; 3 uses
  %i.ecz = sext i1 %i.ecy to i32
  %i.eda = select i1 %i.ecy, i32 %i.ecw, i32 0
  %i.edb = sub nsw i32 %i.ecx, %i.eda             ; 2 uses
  store i32 %i.edb, ptr %i.dmm, align 16, !tbaa !142
  %i.edc = select i1 %i.ecy, i32 %i.ecu, i32 %i.ecv ; 3 uses
  store i32 %i.edc, ptr %i.ebt, align 4, !tbaa !141
  %i.edd = xor i32 %i.ecz, %i.ecm                 ; 2 uses
  %i.ede = sext i32 %i.edd to i64
  %i.edf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ede
  %i.edg = load i8, ptr %i.edf, align 1, !tbaa !74
  store i8 %i.edg, ptr %i.eck, align 1, !tbaa !74
  %i.edh = sext i32 %i.edc to i64
  %i.edi = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.edh
  %i.edj = load i8, ptr %i.edi, align 1, !tbaa !74
  %i.edk = zext i8 %i.edj to i32                  ; 2 uses
  %i.edl = shl i32 %i.edc, %i.edk
  store i32 %i.edl, ptr %i.ebt, align 4, !tbaa !141
  %i.edm = shl i32 %i.edb, %i.edk                 ; 5 uses
  store i32 %i.edm, ptr %i.dmm, align 16, !tbaa !142
  %i.edn = and i32 %i.edm, 65535
  %.not.i.i1261 = icmp eq i32 %i.edn, 0
  br i1 %.not.i.i1261, label %bb.lu, label %get_cabac.exit1262

bb.lu:                                            ; preds = %bb.lt
  %i.edo = add nsw i32 %i.edm, -32768
  %i.edp = xor i32 %i.edo, %i.edm
  %i.edq = lshr exact i32 %i.edp, 15
  %i.edr = zext nneg i32 %i.edq to i64
  %i.eds = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.edr
  %i.edt = load i8, ptr %i.eds, align 1, !tbaa !74
  %i.edu = zext i8 %i.edt to i32
  %i.edv = sub nsw i32 7, %i.edu
  %i.edw = load ptr, ptr %i.ebu, align 16, !tbaa !143 ; 3 uses
  %i.edx = load i8, ptr %i.edw, align 1, !tbaa !74
  %i.edy = zext i8 %i.edx to i32
  %i.edz = shl nuw nsw i32 %i.edy, 9
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edw, i64 1
  %i.eeb = load i8, ptr %i.eea, align 1, !tbaa !74
  %i.eec = zext i8 %i.eeb to i32
  %i.eed = shl nuw nsw i32 %i.eec, 1
  %i.eee = or disjoint i32 %i.eed, %i.edz
  %i.eef = add nsw i32 %i.eee, -65535
  %i.eeg = shl nsw i32 %i.eef, %i.edv
  %i.eeh = add i32 %i.eeg, %i.edm
  store i32 %i.eeh, ptr %i.dmm, align 16, !tbaa !142
  %i.eei = getelementptr inbounds nuw i8, ptr %i.edw, i64 2
  store ptr %i.eei, ptr %i.ebu, align 16, !tbaa !143
  br label %get_cabac.exit1262

get_cabac.exit1262:                               ; preds = %bb.lt, %bb.lu
  %i.eej = and i32 %i.edd, 1
  %i.eek = icmp eq i32 %i.eej, 0
  br i1 %i.eek, label %bb.lv, label %.split22.i1087

.split22.i1087:                                   ; preds = %get_cabac.exit1262
  %i.eel = trunc nuw nsw i64 %i.ebv to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ebz, i32 noundef 7, i32 noundef range(i32 -2147483648, 48) %i.eel, ptr noundef nonnull %i.ebr, ptr noundef %i.ebp, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1088

bb.lv:                                            ; preds = %get_cabac.exit1262
  store i8 0, ptr %i.ecd, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1088

decode_cabac_residual_nondc.exit1088:             ; preds = %.split22.i1087, %bb.lv
  %indvars.iv.next1718 = add nuw nsw i64 %indvars.iv1717, 1 ; 2 uses
  %exitcond1720.not = icmp eq i64 %indvars.iv.next1718, 16
  br i1 %exitcond1720.not, label %decode_cabac_luma_residual.exit1068, label %bb.lt, !llvm.loop !170

bb.lw:                                            ; preds = %decode_cabac_residual_dc.exit1099
  %i.eem = getelementptr inbounds nuw i8, ptr %1, i64 28668
  store i32 0, ptr %i.eem, align 4, !tbaa !98
  %i.een = getelementptr inbounds nuw i8, ptr %1, i64 28676
  store i32 0, ptr %i.een, align 4, !tbaa !98
  %i.eeo = getelementptr inbounds nuw i8, ptr %1, i64 28684
  store i32 0, ptr %i.eeo, align 4, !tbaa !98
  %i.eep = getelementptr inbounds nuw i8, ptr %1, i64 28692
  store i32 0, ptr %i.eep, align 4, !tbaa !98
  br label %decode_cabac_luma_residual.exit1068

bb.lx:                                            ; preds = %bb.lo
  %i.eeq = and i32 %i.eau, 5
  %.not88.i1063 = icmp eq i32 %i.eeq, 0
  %i.eer = select i1 %.not88.i1063, i64 4, i64 1  ; 2 uses
  %i.ees = and i32 %i.eau, 16777216
  %.not90.i1066 = icmp eq i32 %i.ees, 0
  %i.eet = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.eeu = sext i32 %i.eav to i64                 ; 2 uses
  %i.eev = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 3 uses
  %i.eew = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.eex = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %decode_cabac_residual_nondc.exit1086
  %indvars.iv1726 = phi i64 [ 0, %bb.lx ], [ %indvars.iv.next1727, %decode_cabac_residual_nondc.exit1086 ] ; 5 uses
  %i.eey = trunc nuw nsw i64 %indvars.iv1726 to i32
  %i.eez = shl nuw nsw i32 1, %i.eey
  %i.efa = and i32 %i.eez, %.1874
  %.not89.i1065 = icmp eq i32 %i.efa, 0
  br i1 %.not89.i1065, label %bb.mh, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  br i1 %.not90.i1066, label %bb.md, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.efb = shl nuw nsw i64 %indvars.iv1726, 2
  %i.efc = add nuw nsw i64 %i.efb, 16             ; 3 uses
  %.tr1861 = trunc i64 %i.efc to i32
  %i.efd = shl i32 %.tr1861, 4
  %i.efe = shl i32 %i.efd, %i.v
  %i.eff = sext i32 %i.efe to i64
  %i.efg = getelementptr inbounds [2 x i8], ptr %i.eet, i64 %i.eff
  %i.efh = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.efi = getelementptr inbounds nuw i8, ptr %i.efh, i64 173856
  %i.efj = getelementptr inbounds nuw [8 x i8], ptr %i.efi, i64 %i.eer
  %i.efk = load ptr, ptr %i.efj, align 8, !tbaa !169
  %i.efl = getelementptr inbounds [256 x i8], ptr %i.efk, i64 %i.eeu
  %i.efm = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.efc
  %i.efn = load i8, ptr %i.efm, align 4, !tbaa !74
  %i.efo = zext i8 %i.efn to i64
  %i.efp = getelementptr i8, ptr %i.eev, i64 %i.efo ; 4 uses
  %i.efq = getelementptr i8, ptr %i.efp, i64 -1
  %i.efr = load i8, ptr %i.efq, align 1, !tbaa !74
  %i.efs = getelementptr i8, ptr %i.efp, i64 -8
  %i.eft = load i8, ptr %i.efs, align 1, !tbaa !74
  %.not1479 = icmp ne i8 %i.efr, 0
  %spec.select.i1188 = zext i1 %.not1479 to i64
  %.not1480 = icmp eq i8 %i.eft, 0
  %i.efu = select i1 %.not1480, i64 1016, i64 1018
  %i.efv = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.efu
  %i.efw = getelementptr inbounds nuw i8, ptr %i.efv, i64 %spec.select.i1188 ; 2 uses
  %i.efx = load i8, ptr %i.efw, align 1, !tbaa !74
  %i.efy = zext i8 %i.efx to i32                  ; 2 uses
  %i.efz = load i32, ptr %i.eew, align 4, !tbaa !141 ; 2 uses
  %i.ega = shl i32 %i.efz, 1
  %i.egb = and i32 %i.ega, 384
  %i.egc = add nuw nsw i32 %i.egb, %i.efy
  %i.egd = zext nneg i32 %i.egc to i64
  %i.ege = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.egd
  %i.egf = load i8, ptr %i.ege, align 1, !tbaa !74
  %i.egg = zext i8 %i.egf to i32                  ; 2 uses
  %i.egh = sub nsw i32 %i.efz, %i.egg             ; 2 uses
  %i.egi = shl i32 %i.egh, 17                     ; 2 uses
  %i.egj = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.egk = icmp slt i32 %i.egi, %i.egj            ; 3 uses
  %i.egl = sext i1 %i.egk to i32
  %i.egm = select i1 %i.egk, i32 %i.egi, i32 0
  %i.egn = sub nsw i32 %i.egj, %i.egm
  %i.ego = select i1 %i.egk, i32 %i.egg, i32 %i.egh ; 2 uses
  %i.egp = xor i32 %i.egl, %i.efy                 ; 2 uses
  %i.egq = sext i32 %i.egp to i64
  %i.egr = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.egq
  %i.egs = load i8, ptr %i.egr, align 1, !tbaa !74
  store i8 %i.egs, ptr %i.efw, align 1, !tbaa !74
  %i.egt = sext i32 %i.ego to i64
  %i.egu = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.egt
  %i.egv = load i8, ptr %i.egu, align 1, !tbaa !74
  %i.egw = zext i8 %i.egv to i32                  ; 2 uses
  %i.egx = shl i32 %i.ego, %i.egw
  store i32 %i.egx, ptr %i.eew, align 4, !tbaa !141
  %i.egy = shl i32 %i.egn, %i.egw                 ; 5 uses
  store i32 %i.egy, ptr %i.dmm, align 16, !tbaa !142
  %i.egz = and i32 %i.egy, 65535
  %.not.i.i1263 = icmp eq i32 %i.egz, 0
  br i1 %.not.i.i1263, label %bb.mb, label %get_cabac.exit1264

bb.mb:                                            ; preds = %bb.ma
  %i.eha = add nsw i32 %i.egy, -32768
  %i.ehb = xor i32 %i.eha, %i.egy
  %i.ehc = lshr exact i32 %i.ehb, 15
  %i.ehd = zext nneg i32 %i.ehc to i64
  %i.ehe = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ehd
  %i.ehf = load i8, ptr %i.ehe, align 1, !tbaa !74
  %i.ehg = zext i8 %i.ehf to i32
  %i.ehh = sub nsw i32 7, %i.ehg
  %i.ehi = load ptr, ptr %i.eex, align 16, !tbaa !143 ; 3 uses
  %i.ehj = load i8, ptr %i.ehi, align 1, !tbaa !74
  %i.ehk = zext i8 %i.ehj to i32
  %i.ehl = shl nuw nsw i32 %i.ehk, 9
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehi, i64 1
  %i.ehn = load i8, ptr %i.ehm, align 1, !tbaa !74
  %i.eho = zext i8 %i.ehn to i32
  %i.ehp = shl nuw nsw i32 %i.eho, 1
  %i.ehq = or disjoint i32 %i.ehp, %i.ehl
  %i.ehr = add nsw i32 %i.ehq, -65535
  %i.ehs = shl nsw i32 %i.ehr, %i.ehh
  %i.eht = add i32 %i.ehs, %i.egy
  store i32 %i.eht, ptr %i.dmm, align 16, !tbaa !142
  %i.ehu = getelementptr inbounds nuw i8, ptr %i.ehi, i64 2
  store ptr %i.ehu, ptr %i.eex, align 16, !tbaa !143
  br label %get_cabac.exit1264

get_cabac.exit1264:                               ; preds = %bb.ma, %bb.mb
  %i.ehv = and i32 %i.egp, 1
  %i.ehw = icmp eq i32 %i.ehv, 0
  br i1 %i.ehw, label %bb.mc, label %.split22.i1085

.split22.i1085:                                   ; preds = %get_cabac.exit1264
  %i.ehx = trunc nuw nsw i64 %i.efc to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.efg, i32 noundef 9, i32 noundef range(i32 -2147483648, 48) %i.ehx, ptr noundef nonnull %.0846, ptr noundef %i.efl, i32 noundef 64)
  br label %decode_cabac_residual_nondc.exit1086

bb.mc:                                            ; preds = %get_cabac.exit1264
  store i16 0, ptr %i.efp, align 2, !tbaa !101
  %i.ehy = getelementptr inbounds nuw i8, ptr %i.efp, i64 8
  store i16 0, ptr %i.ehy, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1086

bb.md:                                            ; preds = %bb.lz
  %i.ehz = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.eia = getelementptr inbounds nuw i8, ptr %i.ehz, i64 173808
  %i.eib = getelementptr inbounds nuw [8 x i8], ptr %i.eia, i64 %i.eer
  %i.eic = load ptr, ptr %i.eib, align 8, !tbaa !169
  %i.eid = getelementptr inbounds [64 x i8], ptr %i.eic, i64 %i.eeu
  %i.eie = shl nuw nsw i64 %indvars.iv1726, 2
  %i.eif = add nuw nsw i64 %i.eie, 16
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %decode_cabac_residual_nondc.exit1084
  %indvars.iv1721 = phi i64 [ 0, %bb.md ], [ %indvars.iv.next1722, %decode_cabac_residual_nondc.exit1084 ] ; 2 uses
  %i.eig = add nuw nsw i64 %indvars.iv1721, %i.eif ; 3 uses
  %.tr1862 = trunc i64 %i.eig to i32
  %i.eih = shl i32 %.tr1862, 4
  %i.eii = shl i32 %i.eih, %i.v
  %i.eij = sext i32 %i.eii to i64
  %i.eik = getelementptr inbounds [2 x i8], ptr %i.eet, i64 %i.eij
  %i.eil = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.eig
  %i.eim = load i8, ptr %i.eil, align 1, !tbaa !74
  %i.ein = zext i8 %i.eim to i64
  %i.eio = getelementptr i8, ptr %i.eev, i64 %i.ein ; 3 uses
  %i.eip = getelementptr i8, ptr %i.eio, i64 -1
  %i.eiq = load i8, ptr %i.eip, align 1, !tbaa !74
  %i.eir = getelementptr i8, ptr %i.eio, i64 -8
  %i.eis = load i8, ptr %i.eir, align 1, !tbaa !74
  %.not1481 = icmp ne i8 %i.eiq, 0
  %spec.select.i1190 = zext i1 %.not1481 to i64
  %.not1482 = icmp eq i8 %i.eis, 0
  %i.eit = select i1 %.not1482, i64 468, i64 470
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.eit
  %i.eiv = getelementptr inbounds nuw i8, ptr %i.eiu, i64 %spec.select.i1190 ; 2 uses
  %i.eiw = load i8, ptr %i.eiv, align 1, !tbaa !74
  %i.eix = zext i8 %i.eiw to i32                  ; 2 uses
  %i.eiy = load i32, ptr %i.eew, align 4, !tbaa !141 ; 2 uses
  %i.eiz = shl i32 %i.eiy, 1
  %i.eja = and i32 %i.eiz, 384
  %i.ejb = add nuw nsw i32 %i.eja, %i.eix
  %i.ejc = zext nneg i32 %i.ejb to i64
  %i.ejd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ejc
  %i.eje = load i8, ptr %i.ejd, align 1, !tbaa !74
  %i.ejf = zext i8 %i.eje to i32                  ; 2 uses
  %i.ejg = sub nsw i32 %i.eiy, %i.ejf             ; 2 uses
  %i.ejh = shl i32 %i.ejg, 17                     ; 2 uses
  %i.eji = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.ejj = icmp slt i32 %i.ejh, %i.eji            ; 3 uses
  %i.ejk = sext i1 %i.ejj to i32
  %i.ejl = select i1 %i.ejj, i32 %i.ejh, i32 0
  %i.ejm = sub nsw i32 %i.eji, %i.ejl
  %i.ejn = select i1 %i.ejj, i32 %i.ejf, i32 %i.ejg ; 2 uses
  %i.ejo = xor i32 %i.ejk, %i.eix                 ; 2 uses
  %i.ejp = sext i32 %i.ejo to i64
  %i.ejq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ejp
  %i.ejr = load i8, ptr %i.ejq, align 1, !tbaa !74
  store i8 %i.ejr, ptr %i.eiv, align 1, !tbaa !74
  %i.ejs = sext i32 %i.ejn to i64
  %i.ejt = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ejs
  %i.eju = load i8, ptr %i.ejt, align 1, !tbaa !74
  %i.ejv = zext i8 %i.eju to i32                  ; 2 uses
  %i.ejw = shl i32 %i.ejn, %i.ejv
  store i32 %i.ejw, ptr %i.eew, align 4, !tbaa !141
  %i.ejx = shl i32 %i.ejm, %i.ejv                 ; 5 uses
  store i32 %i.ejx, ptr %i.dmm, align 16, !tbaa !142
  %i.ejy = and i32 %i.ejx, 65535
  %.not.i.i1265 = icmp eq i32 %i.ejy, 0
  br i1 %.not.i.i1265, label %bb.mf, label %get_cabac.exit1266

bb.mf:                                            ; preds = %bb.me
  %i.ejz = add nsw i32 %i.ejx, -32768
  %i.eka = xor i32 %i.ejz, %i.ejx
  %i.ekb = lshr exact i32 %i.eka, 15
  %i.ekc = zext nneg i32 %i.ekb to i64
  %i.ekd = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ekc
  %i.eke = load i8, ptr %i.ekd, align 1, !tbaa !74
  %i.ekf = zext i8 %i.eke to i32
  %i.ekg = sub nsw i32 7, %i.ekf
  %i.ekh = load ptr, ptr %i.eex, align 16, !tbaa !143 ; 3 uses
  %i.eki = load i8, ptr %i.ekh, align 1, !tbaa !74
  %i.ekj = zext i8 %i.eki to i32
  %i.ekk = shl nuw nsw i32 %i.ekj, 9
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekh, i64 1
  %i.ekm = load i8, ptr %i.ekl, align 1, !tbaa !74
  %i.ekn = zext i8 %i.ekm to i32
  %i.eko = shl nuw nsw i32 %i.ekn, 1
  %i.ekp = or disjoint i32 %i.eko, %i.ekk
  %i.ekq = add nsw i32 %i.ekp, -65535
  %i.ekr = shl nsw i32 %i.ekq, %i.ekg
  %i.eks = add i32 %i.ekr, %i.ejx
  store i32 %i.eks, ptr %i.dmm, align 16, !tbaa !142
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.ekh, i64 2
  store ptr %i.ekt, ptr %i.eex, align 16, !tbaa !143
  br label %get_cabac.exit1266

get_cabac.exit1266:                               ; preds = %bb.me, %bb.mf
  %i.eku = and i32 %i.ejo, 1
  %i.ekv = icmp eq i32 %i.eku, 0
  br i1 %i.ekv, label %bb.mg, label %.split22.i1083

.split22.i1083:                                   ; preds = %get_cabac.exit1266
  %i.ekw = trunc nuw nsw i64 %i.eig to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eik, i32 noundef 8, i32 noundef range(i32 -2147483648, 48) %i.ekw, ptr noundef nonnull %.0847, ptr noundef %i.eid, i32 noundef 16)
  br label %decode_cabac_residual_nondc.exit1084

bb.mg:                                            ; preds = %get_cabac.exit1266
  store i8 0, ptr %i.eio, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1084

decode_cabac_residual_nondc.exit1084:             ; preds = %.split22.i1083, %bb.mg
  %indvars.iv.next1722 = add nuw nsw i64 %indvars.iv1721, 1 ; 2 uses
  %exitcond1725.not = icmp eq i64 %indvars.iv.next1722, 4
  br i1 %exitcond1725.not, label %decode_cabac_residual_nondc.exit1086, label %bb.me, !llvm.loop !171

bb.mh:                                            ; preds = %bb.ly
  %i.ekx = shl nuw nsw i64 %indvars.iv1726, 2
  %i.eky = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ekx
  %i.ekz = getelementptr inbounds nuw i8, ptr %i.eky, i64 16
  %i.ela = load i8, ptr %i.ekz, align 4, !tbaa !74
  %i.elb = zext i8 %i.ela to i64
  %i.elc = getelementptr inbounds nuw i8, ptr %i.eev, i64 %i.elb ; 2 uses
  store i16 0, ptr %i.elc, align 2, !tbaa !101
  %i.eld = getelementptr inbounds nuw i8, ptr %i.elc, i64 8
  store i16 0, ptr %i.eld, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1086

decode_cabac_residual_nondc.exit1086:             ; preds = %decode_cabac_residual_nondc.exit1084, %bb.mc, %.split22.i1085, %bb.mh
  %indvars.iv.next1727 = add nuw nsw i64 %indvars.iv1726, 1 ; 2 uses
  %exitcond1730.not = icmp eq i64 %indvars.iv.next1727, 4
  br i1 %exitcond1730.not, label %decode_cabac_luma_residual.exit1068, label %bb.ly, !llvm.loop !172

decode_cabac_luma_residual.exit1068:              ; preds = %decode_cabac_residual_nondc.exit1088, %decode_cabac_residual_nondc.exit1086, %bb.lw
  %i.ele = load i32, ptr %i.c, align 4, !tbaa !98 ; 3 uses
  %.in.i = getelementptr i8, ptr %1, i64 64
  %i.elf = load i32, ptr %.in.i, align 16, !tbaa !98 ; 2 uses
  %i.elg = and i32 %i.ele, 2
  %.not.i1057 = icmp eq i32 %i.elg, 0
  br i1 %.not.i1057, label %bb.mq, label %bb.mi

bb.mi:                                            ; preds = %decode_cabac_luma_residual.exit1068
  %i.elh = getelementptr inbounds nuw i8, ptr %1, i64 32544 ; 2 uses
  %i.eli = getelementptr inbounds nuw i8, ptr %1, i64 21100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.elh, i8 0, i64 64, i1 false)
  %i.elj = load i32, ptr %i.eli, align 4, !tbaa !163
  %i.elk = getelementptr inbounds nuw i8, ptr %1, i64 21096
  %i.ell = load i32, ptr %i.elk, align 8, !tbaa !164
  %i.elm = lshr i32 %i.elj, 10
  %.lobit1471 = and i32 %i.elm, 1
  %i.eln = lshr i32 %i.ell, 9
  %i.elo = and i32 %i.eln, 2
  %.1.i1171 = or disjoint i32 %i.elo, %.lobit1471
  %i.elp = zext nneg i32 %.1.i1171 to i64
  %i.elq = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.elp
  %i.elr = getelementptr inbounds nuw i8, ptr %i.elq, i64 472
  %i.els = call fastcc i32 @get_cabac(ptr noundef nonnull %i.dmm, ptr noundef nonnull %i.elr)
  %i.elt = icmp eq i32 %i.els, 0
  br i1 %i.elt, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.elu = getelementptr inbounds nuw i8, ptr %1, i64 28696
  store i8 0, ptr %i.elu, align 8, !tbaa !74
  br label %decode_cabac_residual_dc.exit1100

bb.mk:                                            ; preds = %bb.mi
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.elh, i32 noundef 10, i32 noundef 50, ptr noundef nonnull %.0847, i32 noundef 16)
  br label %decode_cabac_residual_dc.exit1100

decode_cabac_residual_dc.exit1100:                ; preds = %bb.mj, %bb.mk
  br i1 %.not994, label %bb.ml, label %bb.mp

bb.ml:                                            ; preds = %decode_cabac_residual_dc.exit1100
  %i.elv = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elv, i64 173824
  %i.elx = load ptr, ptr %i.elw, align 8, !tbaa !169
  %i.ely = sext i32 %i.elf to i64
  %i.elz = getelementptr inbounds [64 x i8], ptr %i.elx, i64 %i.ely
  %i.ema = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.emb = getelementptr inbounds nuw i8, ptr %.0847, i64 1
  %i.emc = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.emd = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 3 uses
  %i.eme = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 2 uses
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %decode_cabac_residual_nondc.exit1094
  %indvars.iv1731 = phi i64 [ 0, %bb.ml ], [ %indvars.iv.next1732, %decode_cabac_residual_nondc.exit1094 ] ; 2 uses
  %i.emf = or disjoint i64 %indvars.iv1731, 32    ; 3 uses
  %.tr1863 = trunc i64 %i.emf to i32
  %i.emg = shl i32 %.tr1863, 4
  %i.emh = shl i32 %i.emg, %i.v
  %i.emi = sext i32 %i.emh to i64
  %i.emj = getelementptr inbounds [2 x i8], ptr %i.ema, i64 %i.emi
  %i.emk = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.emf
  %i.eml = load i8, ptr %i.emk, align 1, !tbaa !74
  %i.emm = zext i8 %i.eml to i64
  %i.emn = getelementptr i8, ptr %i.emc, i64 %i.emm ; 3 uses
  %i.emo = getelementptr i8, ptr %i.emn, i64 -1
  %i.emp = load i8, ptr %i.emo, align 1, !tbaa !74
  %i.emq = getelementptr i8, ptr %i.emn, i64 -8
  %i.emr = load i8, ptr %i.emq, align 1, !tbaa !74
  %.not1473 = icmp ne i8 %i.emp, 0
  %spec.select.i1180 = zext i1 %.not1473 to i64
  %.not1474 = icmp eq i8 %i.emr, 0
  %i.ems = select i1 %.not1474, i64 476, i64 478
  %i.emt = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.ems
  %i.emu = getelementptr inbounds nuw i8, ptr %i.emt, i64 %spec.select.i1180 ; 2 uses
  %i.emv = load i8, ptr %i.emu, align 1, !tbaa !74
  %i.emw = zext i8 %i.emv to i32                  ; 2 uses
  %i.emx = load i32, ptr %i.emd, align 4, !tbaa !141 ; 2 uses
  %i.emy = shl i32 %i.emx, 1
  %i.emz = and i32 %i.emy, 384
  %i.ena = add nuw nsw i32 %i.emz, %i.emw
  %i.enb = zext nneg i32 %i.ena to i64
  %i.enc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.enb
  %i.end = load i8, ptr %i.enc, align 1, !tbaa !74
  %i.ene = zext i8 %i.end to i32                  ; 2 uses
  %i.enf = sub nsw i32 %i.emx, %i.ene             ; 2 uses
  %i.eng = shl i32 %i.enf, 17                     ; 2 uses
  %i.enh = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.eni = icmp slt i32 %i.eng, %i.enh            ; 3 uses
  %i.enj = sext i1 %i.eni to i32
  %i.enk = select i1 %i.eni, i32 %i.eng, i32 0
  %i.enl = sub nsw i32 %i.enh, %i.enk             ; 2 uses
  store i32 %i.enl, ptr %i.dmm, align 16, !tbaa !142
  %i.enm = select i1 %i.eni, i32 %i.ene, i32 %i.enf ; 3 uses
  store i32 %i.enm, ptr %i.emd, align 4, !tbaa !141
  %i.enn = xor i32 %i.enj, %i.emw                 ; 2 uses
  %i.eno = sext i32 %i.enn to i64
  %i.enp = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.eno
  %i.enq = load i8, ptr %i.enp, align 1, !tbaa !74
  store i8 %i.enq, ptr %i.emu, align 1, !tbaa !74
  %i.enr = sext i32 %i.enm to i64
  %i.ens = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.enr
  %i.ent = load i8, ptr %i.ens, align 1, !tbaa !74
  %i.enu = zext i8 %i.ent to i32                  ; 2 uses
  %i.env = shl i32 %i.enm, %i.enu
  store i32 %i.env, ptr %i.emd, align 4, !tbaa !141
  %i.enw = shl i32 %i.enl, %i.enu                 ; 5 uses
  store i32 %i.enw, ptr %i.dmm, align 16, !tbaa !142
  %i.enx = and i32 %i.enw, 65535
  %.not.i.i1267 = icmp eq i32 %i.enx, 0
  br i1 %.not.i.i1267, label %bb.mn, label %get_cabac.exit1268

bb.mn:                                            ; preds = %bb.mm
  %i.eny = add nsw i32 %i.enw, -32768
  %i.enz = xor i32 %i.eny, %i.enw
  %i.eoa = lshr exact i32 %i.enz, 15
  %i.eob = zext nneg i32 %i.eoa to i64
  %i.eoc = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.eob
  %i.eod = load i8, ptr %i.eoc, align 1, !tbaa !74
  %i.eoe = zext i8 %i.eod to i32
  %i.eof = sub nsw i32 7, %i.eoe
  %i.eog = load ptr, ptr %i.eme, align 16, !tbaa !143 ; 3 uses
  %i.eoh = load i8, ptr %i.eog, align 1, !tbaa !74
  %i.eoi = zext i8 %i.eoh to i32
  %i.eoj = shl nuw nsw i32 %i.eoi, 9
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eog, i64 1
  %i.eol = load i8, ptr %i.eok, align 1, !tbaa !74
  %i.eom = zext i8 %i.eol to i32
  %i.eon = shl nuw nsw i32 %i.eom, 1
  %i.eoo = or disjoint i32 %i.eon, %i.eoj
  %i.eop = add nsw i32 %i.eoo, -65535
  %i.eoq = shl nsw i32 %i.eop, %i.eof
  %i.eor = add i32 %i.eoq, %i.enw
  store i32 %i.eor, ptr %i.dmm, align 16, !tbaa !142
  %i.eos = getelementptr inbounds nuw i8, ptr %i.eog, i64 2
  store ptr %i.eos, ptr %i.eme, align 16, !tbaa !143
  br label %get_cabac.exit1268

get_cabac.exit1268:                               ; preds = %bb.mm, %bb.mn
  %i.eot = and i32 %i.enn, 1
  %i.eou = icmp eq i32 %i.eot, 0
  br i1 %i.eou, label %bb.mo, label %.split22.i1093

.split22.i1093:                                   ; preds = %get_cabac.exit1268
  %i.eov = trunc nuw nsw i64 %i.emf to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.emj, i32 noundef 11, i32 noundef range(i32 -2147483648, 48) %i.eov, ptr noundef nonnull %i.emb, ptr noundef %i.elz, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1094

bb.mo:                                            ; preds = %get_cabac.exit1268
  store i8 0, ptr %i.emn, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1094

decode_cabac_residual_nondc.exit1094:             ; preds = %.split22.i1093, %bb.mo
  %indvars.iv.next1732 = add nuw nsw i64 %indvars.iv1731, 1 ; 2 uses
  %exitcond1734.not = icmp eq i64 %indvars.iv.next1732, 16
  br i1 %exitcond1734.not, label %decode_cabac_luma_residual.exit.thread, label %bb.mm, !llvm.loop !170

bb.mp:                                            ; preds = %decode_cabac_residual_dc.exit1100
  %i.eow = getelementptr inbounds nuw i8, ptr %1, i64 28708
  store i32 0, ptr %i.eow, align 4, !tbaa !98
  %i.eox = getelementptr inbounds nuw i8, ptr %1, i64 28716
  store i32 0, ptr %i.eox, align 4, !tbaa !98
  %i.eoy = getelementptr inbounds nuw i8, ptr %1, i64 28724
  store i32 0, ptr %i.eoy, align 4, !tbaa !98
  %i.eoz = getelementptr inbounds nuw i8, ptr %1, i64 28732
  store i32 0, ptr %i.eoz, align 4, !tbaa !98
  br label %decode_cabac_luma_residual.exit.thread

bb.mq:                                            ; preds = %decode_cabac_luma_residual.exit1068
  %i.epa = and i32 %i.ele, 5
  %.not88.i = icmp eq i32 %i.epa, 0
  %i.epb = select i1 %.not88.i, i64 5, i64 2      ; 2 uses
  %i.epc = and i32 %i.ele, 16777216
  %.not90.i = icmp eq i32 %i.epc, 0
  %i.epd = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.epe = sext i32 %i.elf to i64                 ; 2 uses
  %i.epf = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 3 uses
  %i.epg = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.eph = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %decode_cabac_residual_nondc.exit1092
  %indvars.iv1740 = phi i64 [ 0, %bb.mq ], [ %indvars.iv.next1741, %decode_cabac_residual_nondc.exit1092 ] ; 5 uses
  %i.epi = trunc nuw nsw i64 %indvars.iv1740 to i32
  %i.epj = shl nuw nsw i32 1, %i.epi
  %i.epk = and i32 %i.epj, %.1874
  %.not89.i = icmp eq i32 %i.epk, 0
  br i1 %.not89.i, label %bb.na, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  br i1 %.not90.i, label %bb.mw, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.epl = shl nuw nsw i64 %indvars.iv1740, 2
  %i.epm = add nuw nsw i64 %i.epl, 32             ; 3 uses
  %.tr1864 = trunc i64 %i.epm to i32
  %i.epn = shl i32 %.tr1864, 4
  %i.epo = shl i32 %i.epn, %i.v
  %i.epp = sext i32 %i.epo to i64
  %i.epq = getelementptr inbounds [2 x i8], ptr %i.epd, i64 %i.epp
  %i.epr = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epr, i64 173856
  %i.ept = getelementptr inbounds nuw [8 x i8], ptr %i.eps, i64 %i.epb
  %i.epu = load ptr, ptr %i.ept, align 8, !tbaa !169
  %i.epv = getelementptr inbounds [256 x i8], ptr %i.epu, i64 %i.epe
  %i.epw = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.epm
  %i.epx = load i8, ptr %i.epw, align 4, !tbaa !74
  %i.epy = zext i8 %i.epx to i64
  %i.epz = getelementptr i8, ptr %i.epf, i64 %i.epy ; 4 uses
  %i.eqa = getelementptr i8, ptr %i.epz, i64 -1
  %i.eqb = load i8, ptr %i.eqa, align 1, !tbaa !74
  %i.eqc = getelementptr i8, ptr %i.epz, i64 -8
  %i.eqd = load i8, ptr %i.eqc, align 1, !tbaa !74
  %.not1475 = icmp ne i8 %i.eqb, 0
  %spec.select.i1182 = zext i1 %.not1475 to i64
  %.not1476 = icmp eq i8 %i.eqd, 0
  %i.eqe = select i1 %.not1476, i64 1020, i64 1022
  %i.eqf = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.eqe
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.eqf, i64 %spec.select.i1182 ; 2 uses
  %i.eqh = load i8, ptr %i.eqg, align 1, !tbaa !74
  %i.eqi = zext i8 %i.eqh to i32                  ; 2 uses
  %i.eqj = load i32, ptr %i.epg, align 4, !tbaa !141 ; 2 uses
  %i.eqk = shl i32 %i.eqj, 1
  %i.eql = and i32 %i.eqk, 384
  %i.eqm = add nuw nsw i32 %i.eql, %i.eqi
  %i.eqn = zext nneg i32 %i.eqm to i64
  %i.eqo = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.eqn
  %i.eqp = load i8, ptr %i.eqo, align 1, !tbaa !74
  %i.eqq = zext i8 %i.eqp to i32                  ; 2 uses
  %i.eqr = sub nsw i32 %i.eqj, %i.eqq             ; 2 uses
  %i.eqs = shl i32 %i.eqr, 17                     ; 2 uses
  %i.eqt = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.equ = icmp slt i32 %i.eqs, %i.eqt            ; 3 uses
  %i.eqv = sext i1 %i.equ to i32
  %i.eqw = select i1 %i.equ, i32 %i.eqs, i32 0
  %i.eqx = sub nsw i32 %i.eqt, %i.eqw
  %i.eqy = select i1 %i.equ, i32 %i.eqq, i32 %i.eqr ; 2 uses
  %i.eqz = xor i32 %i.eqv, %i.eqi                 ; 2 uses
  %i.era = sext i32 %i.eqz to i64
  %i.erb = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.era
  %i.erc = load i8, ptr %i.erb, align 1, !tbaa !74
  store i8 %i.erc, ptr %i.eqg, align 1, !tbaa !74
  %i.erd = sext i32 %i.eqy to i64
  %i.ere = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.erd
  %i.erf = load i8, ptr %i.ere, align 1, !tbaa !74
  %i.erg = zext i8 %i.erf to i32                  ; 2 uses
  %i.erh = shl i32 %i.eqy, %i.erg
  store i32 %i.erh, ptr %i.epg, align 4, !tbaa !141
  %i.eri = shl i32 %i.eqx, %i.erg                 ; 5 uses
  store i32 %i.eri, ptr %i.dmm, align 16, !tbaa !142
  %i.erj = and i32 %i.eri, 65535
  %.not.i.i1269 = icmp eq i32 %i.erj, 0
  br i1 %.not.i.i1269, label %bb.mu, label %get_cabac.exit1270

bb.mu:                                            ; preds = %bb.mt
  %i.erk = add nsw i32 %i.eri, -32768
  %i.erl = xor i32 %i.erk, %i.eri
  %i.erm = lshr exact i32 %i.erl, 15
  %i.ern = zext nneg i32 %i.erm to i64
  %i.ero = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ern
  %i.erp = load i8, ptr %i.ero, align 1, !tbaa !74
  %i.erq = zext i8 %i.erp to i32
  %i.err = sub nsw i32 7, %i.erq
  %i.ers = load ptr, ptr %i.eph, align 16, !tbaa !143 ; 3 uses
  %i.ert = load i8, ptr %i.ers, align 1, !tbaa !74
  %i.eru = zext i8 %i.ert to i32
  %i.erv = shl nuw nsw i32 %i.eru, 9
  %i.erw = getelementptr inbounds nuw i8, ptr %i.ers, i64 1
  %i.erx = load i8, ptr %i.erw, align 1, !tbaa !74
  %i.ery = zext i8 %i.erx to i32
  %i.erz = shl nuw nsw i32 %i.ery, 1
  %i.esa = or disjoint i32 %i.erz, %i.erv
  %i.esb = add nsw i32 %i.esa, -65535
  %i.esc = shl nsw i32 %i.esb, %i.err
  %i.esd = add i32 %i.esc, %i.eri
  store i32 %i.esd, ptr %i.dmm, align 16, !tbaa !142
  %i.ese = getelementptr inbounds nuw i8, ptr %i.ers, i64 2
  store ptr %i.ese, ptr %i.eph, align 16, !tbaa !143
  br label %get_cabac.exit1270

get_cabac.exit1270:                               ; preds = %bb.mt, %bb.mu
  %i.esf = and i32 %i.eqz, 1
  %i.esg = icmp eq i32 %i.esf, 0
  br i1 %i.esg, label %bb.mv, label %.split22.i1091

.split22.i1091:                                   ; preds = %get_cabac.exit1270
  %i.esh = trunc nuw nsw i64 %i.epm to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.epq, i32 noundef 13, i32 noundef range(i32 -2147483648, 48) %i.esh, ptr noundef nonnull %.0846, ptr noundef %i.epv, i32 noundef 64)
  br label %decode_cabac_residual_nondc.exit1092

bb.mv:                                            ; preds = %get_cabac.exit1270
  store i16 0, ptr %i.epz, align 2, !tbaa !101
  %i.esi = getelementptr inbounds nuw i8, ptr %i.epz, i64 8
  store i16 0, ptr %i.esi, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1092

bb.mw:                                            ; preds = %bb.ms
  %i.esj = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.esk = getelementptr inbounds nuw i8, ptr %i.esj, i64 173808
  %i.esl = getelementptr inbounds nuw [8 x i8], ptr %i.esk, i64 %i.epb
  %i.esm = load ptr, ptr %i.esl, align 8, !tbaa !169
  %i.esn = getelementptr inbounds [64 x i8], ptr %i.esm, i64 %i.epe
  %i.eso = shl nuw nsw i64 %indvars.iv1740, 2
  %i.esp = add nuw nsw i64 %i.eso, 32
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %decode_cabac_residual_nondc.exit1090
  %indvars.iv1735 = phi i64 [ 0, %bb.mw ], [ %indvars.iv.next1736, %decode_cabac_residual_nondc.exit1090 ] ; 2 uses
  %i.esq = add nuw nsw i64 %indvars.iv1735, %i.esp ; 3 uses
  %.tr1865 = trunc i64 %i.esq to i32
  %i.esr = shl i32 %.tr1865, 4
  %i.ess = shl i32 %i.esr, %i.v
  %i.est = sext i32 %i.ess to i64
  %i.esu = getelementptr inbounds [2 x i8], ptr %i.epd, i64 %i.est
  %i.esv = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.esq
  %i.esw = load i8, ptr %i.esv, align 1, !tbaa !74
  %i.esx = zext i8 %i.esw to i64
  %i.esy = getelementptr i8, ptr %i.epf, i64 %i.esx ; 3 uses
  %i.esz = getelementptr i8, ptr %i.esy, i64 -1
  %i.eta = load i8, ptr %i.esz, align 1, !tbaa !74
  %i.etb = getelementptr i8, ptr %i.esy, i64 -8
  %i.etc = load i8, ptr %i.etb, align 1, !tbaa !74
  %.not1477 = icmp ne i8 %i.eta, 0
  %spec.select.i1184 = zext i1 %.not1477 to i64
  %.not1478 = icmp eq i8 %i.etc, 0
  %i.etd = select i1 %.not1478, i64 480, i64 482
  %i.ete = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.etd
  %i.etf = getelementptr inbounds nuw i8, ptr %i.ete, i64 %spec.select.i1184 ; 2 uses
  %i.etg = load i8, ptr %i.etf, align 1, !tbaa !74
  %i.eth = zext i8 %i.etg to i32                  ; 2 uses
  %i.eti = load i32, ptr %i.epg, align 4, !tbaa !141 ; 2 uses
  %i.etj = shl i32 %i.eti, 1
  %i.etk = and i32 %i.etj, 384
  %i.etl = add nuw nsw i32 %i.etk, %i.eth
  %i.etm = zext nneg i32 %i.etl to i64
  %i.etn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.etm
  %i.eto = load i8, ptr %i.etn, align 1, !tbaa !74
  %i.etp = zext i8 %i.eto to i32                  ; 2 uses
  %i.etq = sub nsw i32 %i.eti, %i.etp             ; 2 uses
  %i.etr = shl i32 %i.etq, 17                     ; 2 uses
  %i.ets = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.ett = icmp slt i32 %i.etr, %i.ets            ; 3 uses
  %i.etu = sext i1 %i.ett to i32
  %i.etv = select i1 %i.ett, i32 %i.etr, i32 0
  %i.etw = sub nsw i32 %i.ets, %i.etv
  %i.etx = select i1 %i.ett, i32 %i.etp, i32 %i.etq ; 2 uses
  %i.ety = xor i32 %i.etu, %i.eth                 ; 2 uses
  %i.etz = sext i32 %i.ety to i64
  %i.eua = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.etz
  %i.eub = load i8, ptr %i.eua, align 1, !tbaa !74
  store i8 %i.eub, ptr %i.etf, align 1, !tbaa !74
  %i.euc = sext i32 %i.etx to i64
  %i.eud = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.euc
  %i.eue = load i8, ptr %i.eud, align 1, !tbaa !74
  %i.euf = zext i8 %i.eue to i32                  ; 2 uses
  %i.eug = shl i32 %i.etx, %i.euf
  store i32 %i.eug, ptr %i.epg, align 4, !tbaa !141
  %i.euh = shl i32 %i.etw, %i.euf                 ; 5 uses
  store i32 %i.euh, ptr %i.dmm, align 16, !tbaa !142
  %i.eui = and i32 %i.euh, 65535
  %.not.i.i1271 = icmp eq i32 %i.eui, 0
  br i1 %.not.i.i1271, label %bb.my, label %get_cabac.exit1272

bb.my:                                            ; preds = %bb.mx
  %i.euj = add nsw i32 %i.euh, -32768
  %i.euk = xor i32 %i.euj, %i.euh
  %i.eul = lshr exact i32 %i.euk, 15
  %i.eum = zext nneg i32 %i.eul to i64
  %i.eun = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.eum
  %i.euo = load i8, ptr %i.eun, align 1, !tbaa !74
  %i.eup = zext i8 %i.euo to i32
  %i.euq = sub nsw i32 7, %i.eup
  %i.eur = load ptr, ptr %i.eph, align 16, !tbaa !143 ; 3 uses
  %i.eus = load i8, ptr %i.eur, align 1, !tbaa !74
  %i.eut = zext i8 %i.eus to i32
  %i.euu = shl nuw nsw i32 %i.eut, 9
  %i.euv = getelementptr inbounds nuw i8, ptr %i.eur, i64 1
  %i.euw = load i8, ptr %i.euv, align 1, !tbaa !74
  %i.eux = zext i8 %i.euw to i32
  %i.euy = shl nuw nsw i32 %i.eux, 1
  %i.euz = or disjoint i32 %i.euy, %i.euu
  %i.eva = add nsw i32 %i.euz, -65535
  %i.evb = shl nsw i32 %i.eva, %i.euq
  %i.evc = add i32 %i.evb, %i.euh
  store i32 %i.evc, ptr %i.dmm, align 16, !tbaa !142
  %i.evd = getelementptr inbounds nuw i8, ptr %i.eur, i64 2
  store ptr %i.evd, ptr %i.eph, align 16, !tbaa !143
  br label %get_cabac.exit1272

get_cabac.exit1272:                               ; preds = %bb.mx, %bb.my
  %i.eve = and i32 %i.ety, 1
  %i.evf = icmp eq i32 %i.eve, 0
  br i1 %i.evf, label %bb.mz, label %.split22.i1089

.split22.i1089:                                   ; preds = %get_cabac.exit1272
  %i.evg = trunc nuw nsw i64 %i.esq to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.esu, i32 noundef 12, i32 noundef range(i32 -2147483648, 48) %i.evg, ptr noundef nonnull %.0847, ptr noundef %i.esn, i32 noundef 16)
  br label %decode_cabac_residual_nondc.exit1090

bb.mz:                                            ; preds = %get_cabac.exit1272
  store i8 0, ptr %i.esy, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1090

decode_cabac_residual_nondc.exit1090:             ; preds = %.split22.i1089, %bb.mz
  %indvars.iv.next1736 = add nuw nsw i64 %indvars.iv1735, 1 ; 2 uses
  %exitcond1739.not = icmp eq i64 %indvars.iv.next1736, 4
  br i1 %exitcond1739.not, label %decode_cabac_residual_nondc.exit1092, label %bb.mx, !llvm.loop !171

bb.na:                                            ; preds = %bb.mr
  %i.evh = shl nuw nsw i64 %indvars.iv1740, 2
  %i.evi = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.evh
  %i.evj = getelementptr inbounds nuw i8, ptr %i.evi, i64 32
  %i.evk = load i8, ptr %i.evj, align 4, !tbaa !74
  %i.evl = zext i8 %i.evk to i64
  %i.evm = getelementptr inbounds nuw i8, ptr %i.epf, i64 %i.evl ; 2 uses
  store i16 0, ptr %i.evm, align 2, !tbaa !101
  %i.evn = getelementptr inbounds nuw i8, ptr %i.evm, i64 8
  store i16 0, ptr %i.evn, align 2, !tbaa !101
  br label %decode_cabac_residual_nondc.exit1092

decode_cabac_residual_nondc.exit1092:             ; preds = %decode_cabac_residual_nondc.exit1090, %bb.mv, %.split22.i1091, %bb.na
  %indvars.iv.next1741 = add nuw nsw i64 %indvars.iv1740, 1 ; 2 uses
  %exitcond1744.not = icmp eq i64 %indvars.iv.next1741, 4
  br i1 %exitcond1744.not, label %decode_cabac_luma_residual.exit.thread, label %bb.mr, !llvm.loop !172

bb.nb:                                            ; preds = %decode_cabac_luma_residual.exit1078
  %i.evo = and i32 %.1874, 48
  %.not1022 = icmp eq i32 %i.evo, 0
  br i1 %.not1022, label %.loopexit1511, label %.preheader1510

.preheader1510:                                   ; preds = %bb.nb
  %i.evp = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.evq = getelementptr inbounds nuw i8, ptr %1, i64 21100 ; 2 uses
  %i.evr = getelementptr inbounds nuw i8, ptr %1, i64 21096 ; 2 uses
  %i.evs = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.evt = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.evu = shl i32 256, %i.v
  %i.evv = sext i32 %i.evu to i64
  %i.evw = getelementptr inbounds [2 x i8], ptr %i.evp, i64 %i.evv
  %i.evx = load i32, ptr %i.evq, align 4, !tbaa !163 ; 2 uses
  %i.evy = load i32, ptr %i.evr, align 8, !tbaa !164 ; 2 uses
  %i.evz = lshr i32 %i.evx, 6
  %.lobit1857 = and i32 %i.evz, 1
  %i.ewa = lshr i32 %i.evy, 5
  %i.ewb = and i32 %i.ewa, 2
  %.1.i1199 = or disjoint i32 %.lobit1857, %i.ewb
  %i.ewc = zext nneg i32 %.1.i1199 to i64
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.ewc
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.ewd, i64 97 ; 2 uses
  %i.ewf = load i8, ptr %i.ewe, align 1, !tbaa !74
  %i.ewg = zext i8 %i.ewf to i32                  ; 2 uses
  %i.ewh = load i32, ptr %i.evs, align 4, !tbaa !141 ; 2 uses
  %i.ewi = shl i32 %i.ewh, 1
  %i.ewj = and i32 %i.ewi, 384
  %i.ewk = add nuw nsw i32 %i.ewj, %i.ewg
  %i.ewl = zext nneg i32 %i.ewk to i64
  %i.ewm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ewl
  %i.ewn = load i8, ptr %i.ewm, align 1, !tbaa !74
  %i.ewo = zext i8 %i.ewn to i32                  ; 2 uses
  %i.ewp = sub nsw i32 %i.ewh, %i.ewo             ; 2 uses
  %i.ewq = shl i32 %i.ewp, 17                     ; 2 uses
  %i.ewr = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.ews = icmp slt i32 %i.ewq, %i.ewr            ; 3 uses
  %i.ewt = sext i1 %i.ews to i32
  %i.ewu = select i1 %i.ews, i32 %i.ewq, i32 0
  %i.ewv = sub nsw i32 %i.ewr, %i.ewu
  %i.eww = select i1 %i.ews, i32 %i.ewo, i32 %i.ewp ; 2 uses
  %i.ewx = xor i32 %i.ewt, %i.ewg                 ; 2 uses
  %i.ewy = sext i32 %i.ewx to i64
  %i.ewz = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ewy
  %i.exa = load i8, ptr %i.ewz, align 1, !tbaa !74
  store i8 %i.exa, ptr %i.ewe, align 1, !tbaa !74
  %i.exb = sext i32 %i.eww to i64
  %i.exc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.exb
  %i.exd = load i8, ptr %i.exc, align 1, !tbaa !74
  %i.exe = zext i8 %i.exd to i32                  ; 2 uses
  %i.exf = shl i32 %i.eww, %i.exe                 ; 2 uses
  store i32 %i.exf, ptr %i.evs, align 4, !tbaa !141
  %i.exg = shl i32 %i.ewv, %i.exe                 ; 6 uses
  store i32 %i.exg, ptr %i.dmm, align 16, !tbaa !142
  %i.exh = and i32 %i.exg, 65535
  %.not.i.i1273 = icmp eq i32 %i.exh, 0
  br i1 %.not.i.i1273, label %bb.nc, label %get_cabac.exit1274

bb.nc:                                            ; preds = %.preheader1510
  %i.exi = add nsw i32 %i.exg, -32768
  %i.exj = xor i32 %i.exi, %i.exg
  %i.exk = lshr exact i32 %i.exj, 15
  %i.exl = zext nneg i32 %i.exk to i64
  %i.exm = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.exl
  %i.exn = load i8, ptr %i.exm, align 1, !tbaa !74
  %i.exo = zext i8 %i.exn to i32
  %i.exp = sub nsw i32 7, %i.exo
  %i.exq = load ptr, ptr %i.evt, align 16, !tbaa !143 ; 3 uses
  %i.exr = load i8, ptr %i.exq, align 1, !tbaa !74
  %i.exs = zext i8 %i.exr to i32
  %i.ext = shl nuw nsw i32 %i.exs, 9
  %i.exu = getelementptr inbounds nuw i8, ptr %i.exq, i64 1
  %i.exv = load i8, ptr %i.exu, align 1, !tbaa !74
  %i.exw = zext i8 %i.exv to i32
  %i.exx = shl nuw nsw i32 %i.exw, 1
  %i.exy = or disjoint i32 %i.exx, %i.ext
  %i.exz = add nsw i32 %i.exy, -65535
  %i.eya = shl nsw i32 %i.exz, %i.exp
  %i.eyb = add i32 %i.eya, %i.exg                 ; 2 uses
  store i32 %i.eyb, ptr %i.dmm, align 16, !tbaa !142
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.exq, i64 2
  store ptr %i.eyc, ptr %i.evt, align 16, !tbaa !143
  br label %get_cabac.exit1274

get_cabac.exit1274:                               ; preds = %.preheader1510, %bb.nc
end_hunk_2
begin_hunk_3_@ff_h264_decode_mb_cabac:bb.a
  %i.fnn = load i8, ptr %i.fnm, align 1, !tbaa !74
  %i.fno = zext i8 %i.fnn to i32                  ; 2 uses
  %i.fnp = sub nsw i32 %i.fnh, %i.fno             ; 2 uses
  %i.fnq = shl i32 %i.fnp, 17                     ; 2 uses
  %i.fnr = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.fns = icmp slt i32 %i.fnq, %i.fnr            ; 3 uses
  %i.fnt = sext i1 %i.fns to i32
  %i.fnu = select i1 %i.fns, i32 %i.fnq, i32 0
  %i.fnv = sub nsw i32 %i.fnr, %i.fnu
  %i.fnw = select i1 %i.fns, i32 %i.fno, i32 %i.fnp ; 2 uses
  %i.fnx = xor i32 %i.fnt, %i.fng                 ; 2 uses
  %i.fny = sext i32 %i.fnx to i64
  %i.fnz = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fny
  %i.foa = load i8, ptr %i.fnz, align 1, !tbaa !74
  store i8 %i.foa, ptr %i.fne, align 1, !tbaa !74
  %i.fob = sext i32 %i.fnw to i64
  %i.foc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fob
  %i.fod = load i8, ptr %i.foc, align 1, !tbaa !74
  %i.foe = zext i8 %i.fod to i32                  ; 2 uses
  %i.fof = shl i32 %i.fnw, %i.foe                 ; 2 uses
  store i32 %i.fof, ptr %i.fms, align 4, !tbaa !141
  %i.fog = shl i32 %i.fnv, %i.foe                 ; 6 uses
  store i32 %i.fog, ptr %i.dmm, align 16, !tbaa !142
  %i.foh = and i32 %i.fog, 65535
  %.not.i.i1277 = icmp eq i32 %i.foh, 0
  br i1 %.not.i.i1277, label %bb.nt, label %get_cabac.exit1278

bb.nt:                                            ; preds = %.preheader1501
  %i.foi = add nsw i32 %i.fog, -32768
  %i.foj = xor i32 %i.foi, %i.fog
  %i.fok = lshr exact i32 %i.foj, 15
  %i.fol = zext nneg i32 %i.fok to i64
  %i.fom = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fol
  %i.fon = load i8, ptr %i.fom, align 1, !tbaa !74
  %i.foo = zext i8 %i.fon to i32
  %i.fop = sub nsw i32 7, %i.foo
  %i.foq = load ptr, ptr %i.fmt, align 16, !tbaa !143 ; 3 uses
  %i.for = load i8, ptr %i.foq, align 1, !tbaa !74
  %i.fos = zext i8 %i.for to i32
  %i.fot = shl nuw nsw i32 %i.fos, 9
  %i.fou = getelementptr inbounds nuw i8, ptr %i.foq, i64 1
  %i.fov = load i8, ptr %i.fou, align 1, !tbaa !74
  %i.fow = zext i8 %i.fov to i32
  %i.fox = shl nuw nsw i32 %i.fow, 1
  %i.foy = or disjoint i32 %i.fox, %i.fot
  %i.foz = add nsw i32 %i.foy, -65535
  %i.fpa = shl nsw i32 %i.foz, %i.fop
  %i.fpb = add i32 %i.fpa, %i.fog                 ; 2 uses
  store i32 %i.fpb, ptr %i.dmm, align 16, !tbaa !142
  %i.fpc = getelementptr inbounds nuw i8, ptr %i.foq, i64 2
  store ptr %i.fpc, ptr %i.fmt, align 16, !tbaa !143
  br label %get_cabac.exit1278

get_cabac.exit1278:                               ; preds = %.preheader1501, %bb.nt
  %i.fpd = phi i32 [ %i.fog, %.preheader1501 ], [ %i.fpb, %bb.nt ]
  %i.fpe = and i32 %i.fnx, 1
  %i.fpf = icmp eq i32 %i.fpe, 0
  br i1 %i.fpf, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %get_cabac.exit1278
  %i.fpg = getelementptr inbounds nuw i8, ptr %1, i64 28656
  store i8 0, ptr %i.fpg, align 16, !tbaa !74
  br label %decode_cabac_residual_dc.exit1101

bb.nv:                                            ; preds = %get_cabac.exit1278
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fmw, i32 noundef 3, i32 noundef range(i32 48, 51) 49, ptr noundef nonnull @ff_h264_chroma_dc_scan, i32 noundef 4)
  %.pre1779 = load i32, ptr %i.fmq, align 4, !tbaa !163
  %.pre1780 = load i32, ptr %i.fmr, align 8, !tbaa !164
  %.pre1781 = load i32, ptr %i.fms, align 4, !tbaa !141
  %.pre1782 = load i32, ptr %i.dmm, align 16, !tbaa !142
  br label %decode_cabac_residual_dc.exit1101

decode_cabac_residual_dc.exit1101:                ; preds = %bb.nu, %bb.nv
  %i.fph = phi i32 [ %i.fpd, %bb.nu ], [ %.pre1782, %bb.nv ] ; 2 uses
  %i.fpi = phi i32 [ %i.fof, %bb.nu ], [ %.pre1781, %bb.nv ] ; 2 uses
  %i.fpj = phi i32 [ %i.fmy, %bb.nu ], [ %.pre1780, %bb.nv ]
  %i.fpk = phi i32 [ %i.fmx, %bb.nu ], [ %.pre1779, %bb.nv ]
  %i.fpl = shl i32 512, %i.v
  %i.fpm = sext i32 %i.fpl to i64
  %i.fpn = getelementptr inbounds [2 x i8], ptr %i.fmp, i64 %i.fpm
  %i.fpo = lshr i32 %i.fpk, 7
  %.lobit1867 = and i32 %i.fpo, 1
  %i.fpp = lshr i32 %i.fpj, 6
  %i.fpq = and i32 %i.fpp, 2
  %.1.i1169.1 = or disjoint i32 %.lobit1867, %i.fpq
  %i.fpr = zext nneg i32 %.1.i1169.1 to i64
  %i.fps = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.fpr
  %i.fpt = getelementptr inbounds nuw i8, ptr %i.fps, i64 97 ; 2 uses
  %i.fpu = load i8, ptr %i.fpt, align 1, !tbaa !74
  %i.fpv = zext i8 %i.fpu to i32                  ; 2 uses
  %i.fpw = shl i32 %i.fpi, 1
  %i.fpx = and i32 %i.fpw, 384
  %i.fpy = add nuw nsw i32 %i.fpx, %i.fpv
  %i.fpz = zext nneg i32 %i.fpy to i64
  %i.fqa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fpz
  %i.fqb = load i8, ptr %i.fqa, align 1, !tbaa !74
  %i.fqc = zext i8 %i.fqb to i32                  ; 2 uses
  %i.fqd = sub nsw i32 %i.fpi, %i.fqc             ; 2 uses
  %i.fqe = shl i32 %i.fqd, 17                     ; 2 uses
  %i.fqf = icmp slt i32 %i.fqe, %i.fph            ; 3 uses
  %i.fqg = sext i1 %i.fqf to i32
  %i.fqh = select i1 %i.fqf, i32 %i.fqe, i32 0
  %i.fqi = sub nsw i32 %i.fph, %i.fqh
  %i.fqj = select i1 %i.fqf, i32 %i.fqc, i32 %i.fqd ; 2 uses
  %i.fqk = xor i32 %i.fqg, %i.fpv                 ; 2 uses
  %i.fql = sext i32 %i.fqk to i64
  %i.fqm = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fql
  %i.fqn = load i8, ptr %i.fqm, align 1, !tbaa !74
  store i8 %i.fqn, ptr %i.fpt, align 1, !tbaa !74
  %i.fqo = sext i32 %i.fqj to i64
  %i.fqp = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fqo
  %i.fqq = load i8, ptr %i.fqp, align 1, !tbaa !74
  %i.fqr = zext i8 %i.fqq to i32                  ; 2 uses
  %i.fqs = shl i32 %i.fqj, %i.fqr
  store i32 %i.fqs, ptr %i.fms, align 4, !tbaa !141
  %i.fqt = shl i32 %i.fqi, %i.fqr                 ; 5 uses
  store i32 %i.fqt, ptr %i.dmm, align 16, !tbaa !142
  %i.fqu = and i32 %i.fqt, 65535
  %.not.i.i1277.1 = icmp eq i32 %i.fqu, 0
  br i1 %.not.i.i1277.1, label %bb.nw, label %get_cabac.exit1278.1

bb.nw:                                            ; preds = %decode_cabac_residual_dc.exit1101
  %i.fqv = add nsw i32 %i.fqt, -32768
  %i.fqw = xor i32 %i.fqv, %i.fqt
  %i.fqx = lshr exact i32 %i.fqw, 15
  %i.fqy = zext nneg i32 %i.fqx to i64
  %i.fqz = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fqy
  %i.fra = load i8, ptr %i.fqz, align 1, !tbaa !74
  %i.frb = zext i8 %i.fra to i32
  %i.frc = sub nsw i32 7, %i.frb
  %i.frd = load ptr, ptr %i.fmt, align 16, !tbaa !143 ; 3 uses
  %i.fre = load i8, ptr %i.frd, align 1, !tbaa !74
  %i.frf = zext i8 %i.fre to i32
  %i.frg = shl nuw nsw i32 %i.frf, 9
  %i.frh = getelementptr inbounds nuw i8, ptr %i.frd, i64 1
  %i.fri = load i8, ptr %i.frh, align 1, !tbaa !74
  %i.frj = zext i8 %i.fri to i32
  %i.frk = shl nuw nsw i32 %i.frj, 1
  %i.frl = or disjoint i32 %i.frk, %i.frg
  %i.frm = add nsw i32 %i.frl, -65535
  %i.frn = shl nsw i32 %i.frm, %i.frc
  %i.fro = add i32 %i.frn, %i.fqt
  store i32 %i.fro, ptr %i.dmm, align 16, !tbaa !142
  %i.frp = getelementptr inbounds nuw i8, ptr %i.frd, i64 2
  store ptr %i.frp, ptr %i.fmt, align 16, !tbaa !143
  br label %get_cabac.exit1278.1

get_cabac.exit1278.1:                             ; preds = %bb.nw, %decode_cabac_residual_dc.exit1101
  %i.frq = and i32 %i.fqk, 1
  %i.frr = icmp eq i32 %i.frq, 0
  br i1 %i.frr, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %get_cabac.exit1278.1
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fpn, i32 noundef 3, i32 noundef range(i32 48, 51) 50, ptr noundef nonnull @ff_h264_chroma_dc_scan, i32 noundef 4)
  br label %.loopexit1502

bb.ny:                                            ; preds = %get_cabac.exit1278.1
  %i.frs = getelementptr inbounds nuw i8, ptr %1, i64 28696
  store i8 0, ptr %i.frs, align 8, !tbaa !74
  br label %.loopexit1502

.loopexit1502:                                    ; preds = %bb.nx, %bb.ny, %bb.ns
  %i.frt = and i32 %.1874, 32
  %.not1020 = icmp eq i32 %i.frt, 0
  br i1 %.not1020, label %bb.of, label %.preheader

.preheader:                                       ; preds = %.loopexit1502
  %i.fru = load i32, ptr %i.c, align 4, !tbaa !98
  %i.frv = and i32 %i.fru, 7
  %.not1021 = icmp eq i32 %i.frv, 0
  %i.frw = select i1 %.not1021, i64 3, i64 0      ; 2 uses
  %i.frx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fry = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.frz = getelementptr inbounds nuw i8, ptr %.0847, i64 1 ; 2 uses
  %i.fsa = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 2 uses
  %i.fsb = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.fsc = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.fsd = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.fse = getelementptr inbounds nuw i8, ptr %i.fsd, i64 173816
  %i.fsf = getelementptr inbounds nuw [8 x i8], ptr %i.fse, i64 %i.frw
  %i.fsg = load ptr, ptr %i.fsf, align 8, !tbaa !169
  %i.fsh = load i32, ptr %i.frx, align 4, !tbaa !98
  %i.fsi = sext i32 %i.fsh to i64
  %i.fsj = getelementptr inbounds [64 x i8], ptr %i.fsg, i64 %i.fsi
  br label %bb.oc

.loopexit:                                        ; preds = %decode_cabac_residual_nondc.exit1096
  %i.fsk = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fsk, i64 173824
  %i.fsm = getelementptr inbounds nuw [8 x i8], ptr %i.fsl, i64 %i.frw
  %i.fsn = load ptr, ptr %i.fsm, align 8, !tbaa !169
  %i.fso = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fsp = load i32, ptr %i.fso, align 16, !tbaa !98
  %i.fsq = sext i32 %i.fsp to i64
  %i.fsr = getelementptr inbounds [64 x i8], ptr %i.fsn, i64 %i.fsq
  br label %bb.nz

bb.nz:                                            ; preds = %decode_cabac_residual_nondc.exit1096.1, %.loopexit
  %indvars.iv1748.1 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next1749.1, %decode_cabac_residual_nondc.exit1096.1 ] ; 2 uses
  %i.fss = add nuw nsw i64 %indvars.iv1748.1, 32  ; 3 uses
  %.tr1869 = trunc i64 %i.fss to i32
  %i.fst = shl i32 %.tr1869, 4
  %i.fsu = shl i32 %i.fst, %i.v
  %i.fsv = sext i32 %i.fsu to i64
  %i.fsw = getelementptr inbounds [2 x i8], ptr %i.fry, i64 %i.fsv
  %i.fsx = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.fss
  %i.fsy = load i8, ptr %i.fsx, align 1, !tbaa !74
  %i.fsz = zext i8 %i.fsy to i64
  %i.fta = getelementptr i8, ptr %i.fsa, i64 %i.fsz ; 3 uses
  %i.ftb = getelementptr i8, ptr %i.fta, i64 -1
  %i.ftc = load i8, ptr %i.ftb, align 1, !tbaa !74
  %i.ftd = getelementptr i8, ptr %i.fta, i64 -8
  %i.fte = load i8, ptr %i.ftd, align 1, !tbaa !74
  %.not1485.1 = icmp ne i8 %i.ftc, 0
  %spec.select.i1178.1 = zext i1 %.not1485.1 to i32 ; 2 uses
  %.not1486.1 = icmp eq i8 %i.fte, 0
  %i.ftf = or disjoint i32 %spec.select.i1178.1, 2
  %.1.i1179.1 = select i1 %.not1486.1, i32 %spec.select.i1178.1, i32 %i.ftf
  %i.ftg = zext nneg i32 %.1.i1179.1 to i64
  %i.fth = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.ftg
  %i.fti = getelementptr inbounds nuw i8, ptr %i.fth, i64 101 ; 2 uses
  %i.ftj = load i8, ptr %i.fti, align 1, !tbaa !74
  %i.ftk = zext i8 %i.ftj to i32                  ; 2 uses
  %i.ftl = load i32, ptr %i.fsb, align 4, !tbaa !141 ; 2 uses
  %i.ftm = shl i32 %i.ftl, 1
  %i.ftn = and i32 %i.ftm, 384
  %i.fto = add nuw nsw i32 %i.ftn, %i.ftk
  %i.ftp = zext nneg i32 %i.fto to i64
  %i.ftq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ftp
  %i.ftr = load i8, ptr %i.ftq, align 1, !tbaa !74
  %i.fts = zext i8 %i.ftr to i32                  ; 2 uses
  %i.ftt = sub nsw i32 %i.ftl, %i.fts             ; 2 uses
  %i.ftu = shl i32 %i.ftt, 17                     ; 2 uses
  %i.ftv = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.ftw = icmp slt i32 %i.ftu, %i.ftv            ; 3 uses
  %i.ftx = sext i1 %i.ftw to i32
  %i.fty = select i1 %i.ftw, i32 %i.ftu, i32 0
  %i.ftz = sub nsw i32 %i.ftv, %i.fty
  %i.fua = select i1 %i.ftw, i32 %i.fts, i32 %i.ftt ; 2 uses
  %i.fub = xor i32 %i.ftx, %i.ftk                 ; 2 uses
  %i.fuc = sext i32 %i.fub to i64
  %i.fud = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fuc
  %i.fue = load i8, ptr %i.fud, align 1, !tbaa !74
  store i8 %i.fue, ptr %i.fti, align 1, !tbaa !74
  %i.fuf = sext i32 %i.fua to i64
  %i.fug = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fuf
  %i.fuh = load i8, ptr %i.fug, align 1, !tbaa !74
  %i.fui = zext i8 %i.fuh to i32                  ; 2 uses
  %i.fuj = shl i32 %i.fua, %i.fui
  store i32 %i.fuj, ptr %i.fsb, align 4, !tbaa !141
  %i.fuk = shl i32 %i.ftz, %i.fui                 ; 5 uses
  store i32 %i.fuk, ptr %i.dmm, align 16, !tbaa !142
  %i.ful = and i32 %i.fuk, 65535
  %.not.i.i1279.1 = icmp eq i32 %i.ful, 0
  br i1 %.not.i.i1279.1, label %bb.oa, label %get_cabac.exit1280.1

bb.oa:                                            ; preds = %bb.nz
  %i.fum = add nsw i32 %i.fuk, -32768
  %i.fun = xor i32 %i.fum, %i.fuk
  %i.fuo = lshr exact i32 %i.fun, 15
  %i.fup = zext nneg i32 %i.fuo to i64
  %i.fuq = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fup
  %i.fur = load i8, ptr %i.fuq, align 1, !tbaa !74
  %i.fus = zext i8 %i.fur to i32
  %i.fut = sub nsw i32 7, %i.fus
  %i.fuu = load ptr, ptr %i.fsc, align 16, !tbaa !143 ; 3 uses
  %i.fuv = load i8, ptr %i.fuu, align 1, !tbaa !74
  %i.fuw = zext i8 %i.fuv to i32
  %i.fux = shl nuw nsw i32 %i.fuw, 9
  %i.fuy = getelementptr inbounds nuw i8, ptr %i.fuu, i64 1
  %i.fuz = load i8, ptr %i.fuy, align 1, !tbaa !74
  %i.fva = zext i8 %i.fuz to i32
  %i.fvb = shl nuw nsw i32 %i.fva, 1
  %i.fvc = or disjoint i32 %i.fvb, %i.fux
  %i.fvd = add nsw i32 %i.fvc, -65535
  %i.fve = shl nsw i32 %i.fvd, %i.fut
  %i.fvf = add i32 %i.fve, %i.fuk
  store i32 %i.fvf, ptr %i.dmm, align 16, !tbaa !142
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fuu, i64 2
  store ptr %i.fvg, ptr %i.fsc, align 16, !tbaa !143
  br label %get_cabac.exit1280.1

get_cabac.exit1280.1:                             ; preds = %bb.oa, %bb.nz
  %i.fvh = and i32 %i.fub, 1
  %i.fvi = icmp eq i32 %i.fvh, 0
  br i1 %i.fvi, label %bb.ob, label %.split22.i1095.1

.split22.i1095.1:                                 ; preds = %get_cabac.exit1280.1
  %i.fvj = trunc nuw nsw i64 %i.fss to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fsw, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.fvj, ptr noundef nonnull %i.frz, ptr noundef %i.fsr, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1096.1

bb.ob:                                            ; preds = %get_cabac.exit1280.1
  store i8 0, ptr %i.fta, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1096.1

decode_cabac_residual_nondc.exit1096.1:           ; preds = %bb.ob, %.split22.i1095.1
  %indvars.iv.next1749.1 = add nuw nsw i64 %indvars.iv1748.1, 1 ; 2 uses
  %exitcond1751.1.not = icmp eq i64 %indvars.iv.next1749.1, 4
  br i1 %exitcond1751.1.not, label %decode_cabac_luma_residual.exit.thread, label %bb.nz, !llvm.loop !175

bb.oc:                                            ; preds = %.preheader, %decode_cabac_residual_nondc.exit1096
  %indvars.iv1748 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1749, %decode_cabac_residual_nondc.exit1096 ] ; 2 uses
  %i.fvk = add nuw nsw i64 %indvars.iv1748, 16    ; 3 uses
  %.tr1868 = trunc i64 %i.fvk to i32
  %i.fvl = shl i32 %.tr1868, 4
  %i.fvm = shl i32 %i.fvl, %i.v
  %i.fvn = sext i32 %i.fvm to i64
  %i.fvo = getelementptr inbounds [2 x i8], ptr %i.fry, i64 %i.fvn
  %i.fvp = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.fvk
  %i.fvq = load i8, ptr %i.fvp, align 1, !tbaa !74
  %i.fvr = zext i8 %i.fvq to i64
  %i.fvs = getelementptr i8, ptr %i.fsa, i64 %i.fvr ; 3 uses
  %i.fvt = getelementptr i8, ptr %i.fvs, i64 -1
  %i.fvu = load i8, ptr %i.fvt, align 1, !tbaa !74
  %i.fvv = getelementptr i8, ptr %i.fvs, i64 -8
  %i.fvw = load i8, ptr %i.fvv, align 1, !tbaa !74
  %.not1485 = icmp ne i8 %i.fvu, 0
  %spec.select.i1178 = zext i1 %.not1485 to i32   ; 2 uses
  %.not1486 = icmp eq i8 %i.fvw, 0
  %i.fvx = or disjoint i32 %spec.select.i1178, 2
  %.1.i1179 = select i1 %.not1486, i32 %spec.select.i1178, i32 %i.fvx
  %i.fvy = zext nneg i32 %.1.i1179 to i64
  %i.fvz = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.fvy
  %i.fwa = getelementptr inbounds nuw i8, ptr %i.fvz, i64 101 ; 2 uses
  %i.fwb = load i8, ptr %i.fwa, align 1, !tbaa !74
  %i.fwc = zext i8 %i.fwb to i32                  ; 2 uses
  %i.fwd = load i32, ptr %i.fsb, align 4, !tbaa !141 ; 2 uses
  %i.fwe = shl i32 %i.fwd, 1
  %i.fwf = and i32 %i.fwe, 384
  %i.fwg = add nuw nsw i32 %i.fwf, %i.fwc
  %i.fwh = zext nneg i32 %i.fwg to i64
  %i.fwi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fwh
  %i.fwj = load i8, ptr %i.fwi, align 1, !tbaa !74
  %i.fwk = zext i8 %i.fwj to i32                  ; 2 uses
  %i.fwl = sub nsw i32 %i.fwd, %i.fwk             ; 2 uses
  %i.fwm = shl i32 %i.fwl, 17                     ; 2 uses
  %i.fwn = load i32, ptr %i.dmm, align 16, !tbaa !142 ; 2 uses
  %i.fwo = icmp slt i32 %i.fwm, %i.fwn            ; 3 uses
  %i.fwp = sext i1 %i.fwo to i32
  %i.fwq = select i1 %i.fwo, i32 %i.fwm, i32 0
  %i.fwr = sub nsw i32 %i.fwn, %i.fwq
  %i.fws = select i1 %i.fwo, i32 %i.fwk, i32 %i.fwl ; 2 uses
  %i.fwt = xor i32 %i.fwp, %i.fwc                 ; 2 uses
  %i.fwu = sext i32 %i.fwt to i64
  %i.fwv = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fwu
  %i.fww = load i8, ptr %i.fwv, align 1, !tbaa !74
  store i8 %i.fww, ptr %i.fwa, align 1, !tbaa !74
  %i.fwx = sext i32 %i.fws to i64
  %i.fwy = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fwx
  %i.fwz = load i8, ptr %i.fwy, align 1, !tbaa !74
  %i.fxa = zext i8 %i.fwz to i32                  ; 2 uses
  %i.fxb = shl i32 %i.fws, %i.fxa
  store i32 %i.fxb, ptr %i.fsb, align 4, !tbaa !141
  %i.fxc = shl i32 %i.fwr, %i.fxa                 ; 5 uses
  store i32 %i.fxc, ptr %i.dmm, align 16, !tbaa !142
  %i.fxd = and i32 %i.fxc, 65535
  %.not.i.i1279 = icmp eq i32 %i.fxd, 0
  br i1 %.not.i.i1279, label %bb.od, label %get_cabac.exit1280

bb.od:                                            ; preds = %bb.oc
  %i.fxe = add nsw i32 %i.fxc, -32768
  %i.fxf = xor i32 %i.fxe, %i.fxc
  %i.fxg = lshr exact i32 %i.fxf, 15
  %i.fxh = zext nneg i32 %i.fxg to i64
  %i.fxi = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fxh
  %i.fxj = load i8, ptr %i.fxi, align 1, !tbaa !74
  %i.fxk = zext i8 %i.fxj to i32
  %i.fxl = sub nsw i32 7, %i.fxk
  %i.fxm = load ptr, ptr %i.fsc, align 16, !tbaa !143 ; 3 uses
  %i.fxn = load i8, ptr %i.fxm, align 1, !tbaa !74
  %i.fxo = zext i8 %i.fxn to i32
  %i.fxp = shl nuw nsw i32 %i.fxo, 9
  %i.fxq = getelementptr inbounds nuw i8, ptr %i.fxm, i64 1
  %i.fxr = load i8, ptr %i.fxq, align 1, !tbaa !74
  %i.fxs = zext i8 %i.fxr to i32
  %i.fxt = shl nuw nsw i32 %i.fxs, 1
  %i.fxu = or disjoint i32 %i.fxt, %i.fxp
  %i.fxv = add nsw i32 %i.fxu, -65535
  %i.fxw = shl nsw i32 %i.fxv, %i.fxl
  %i.fxx = add i32 %i.fxw, %i.fxc
  store i32 %i.fxx, ptr %i.dmm, align 16, !tbaa !142
  %i.fxy = getelementptr inbounds nuw i8, ptr %i.fxm, i64 2
  store ptr %i.fxy, ptr %i.fsc, align 16, !tbaa !143
  br label %get_cabac.exit1280

get_cabac.exit1280:                               ; preds = %bb.oc, %bb.od
  %i.fxz = and i32 %i.fwt, 1
  %i.fya = icmp eq i32 %i.fxz, 0
  br i1 %i.fya, label %bb.oe, label %.split22.i1095

.split22.i1095:                                   ; preds = %get_cabac.exit1280
  %i.fyb = trunc nuw nsw i64 %i.fvk to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fvo, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.fyb, ptr noundef nonnull %i.frz, ptr noundef %i.fsj, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1096

bb.oe:                                            ; preds = %get_cabac.exit1280
  store i8 0, ptr %i.fvs, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1096

decode_cabac_residual_nondc.exit1096:             ; preds = %.split22.i1095, %bb.oe
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 2 uses
  %exitcond1751.not = icmp eq i64 %indvars.iv.next1749, 4
  br i1 %exitcond1751.not, label %.loopexit, label %bb.oc, !llvm.loop !175

bb.of:                                            ; preds = %.loopexit1502
  %i.fyc = getelementptr inbounds nuw i8, ptr %1, i64 28668
  store i32 0, ptr %i.fyc, align 4, !tbaa !98
  %i.fyd = getelementptr inbounds nuw i8, ptr %1, i64 28676
  store i32 0, ptr %i.fyd, align 4, !tbaa !98
  %i.fye = getelementptr inbounds nuw i8, ptr %1, i64 28684
  store i32 0, ptr %i.fye, align 4, !tbaa !98
  %i.fyf = getelementptr inbounds nuw i8, ptr %1, i64 28692
  store i32 0, ptr %i.fyf, align 4, !tbaa !98
  %i.fyg = getelementptr inbounds nuw i8, ptr %1, i64 28708
  store i32 0, ptr %i.fyg, align 4, !tbaa !98
  %i.fyh = getelementptr inbounds nuw i8, ptr %1, i64 28716
  store i32 0, ptr %i.fyh, align 4, !tbaa !98
  %i.fyi = getelementptr inbounds nuw i8, ptr %1, i64 28724
  store i32 0, ptr %i.fyi, align 4, !tbaa !98
  %i.fyj = getelementptr inbounds nuw i8, ptr %1, i64 28732
  store i32 0, ptr %i.fyj, align 4, !tbaa !98
  br label %decode_cabac_luma_residual.exit.thread

decode_cabac_luma_residual.exit:                  ; preds = %bb.kr, %bb.kp
  %i.fyk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fyl = load ptr, ptr %i.fyk, align 8, !tbaa !137
  %i.fym = load i32, ptr %i.w, align 16, !tbaa !90
  %i.fyn = load i32, ptr %i.y, align 4, !tbaa !91
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fyl, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.fym, i32 noundef %i.fyn) #10
  br label %write_back_non_zero_count.exit

bb.og:                                            ; preds = %bb.kn
  %i.fyo = getelementptr inbounds nuw i8, ptr %1, i64 28628
  store i32 0, ptr %i.fyo, align 4, !tbaa !98
  %i.fyp = getelementptr inbounds nuw i8, ptr %1, i64 28636
  store i32 0, ptr %i.fyp, align 4, !tbaa !98
  %i.fyq = getelementptr inbounds nuw i8, ptr %1, i64 28644
  store i32 0, ptr %i.fyq, align 4, !tbaa !98
  %i.fyr = getelementptr inbounds nuw i8, ptr %1, i64 28652
  store i32 0, ptr %i.fyr, align 4, !tbaa !98
  %i.fys = getelementptr inbounds nuw i8, ptr %1, i64 28668
  store i32 0, ptr %i.fys, align 4, !tbaa !98
  %i.fyt = getelementptr inbounds nuw i8, ptr %1, i64 28676
  store i32 0, ptr %i.fyt, align 4, !tbaa !98
  %i.fyu = getelementptr inbounds nuw i8, ptr %1, i64 28684
  store i32 0, ptr %i.fyu, align 4, !tbaa !98
  %i.fyv = getelementptr inbounds nuw i8, ptr %1, i64 28692
  store i32 0, ptr %i.fyv, align 4, !tbaa !98
  %i.fyw = getelementptr inbounds nuw i8, ptr %1, i64 28708
  store i32 0, ptr %i.fyw, align 4, !tbaa !98
  %i.fyx = getelementptr inbounds nuw i8, ptr %1, i64 28716
  store i32 0, ptr %i.fyx, align 4, !tbaa !98
  %i.fyy = getelementptr inbounds nuw i8, ptr %1, i64 28724
  store i32 0, ptr %i.fyy, align 4, !tbaa !98
  %i.fyz = getelementptr inbounds nuw i8, ptr %1, i64 28732
  store i32 0, ptr %i.fyz, align 4, !tbaa !98
  %i.fza = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.fza, align 8, !tbaa !123
  br label %decode_cabac_luma_residual.exit.thread

decode_cabac_luma_residual.exit.thread:           ; preds = %.loopexit1507, %decode_cabac_residual_nondc.exit1094, %decode_cabac_residual_nondc.exit1092, %decode_cabac_residual_nondc.exit1096.1, %bb.mp, %bb.of, %bb.nr, %bb.og
  %i.fzb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fzc = load i32, ptr %i.fzb, align 8, !tbaa !9
  %i.fzd = trunc i32 %i.fzc to i8
  %i.fze = getelementptr inbounds nuw i8, ptr %0, i64 28560
  %i.fzf = load ptr, ptr %i.fze, align 8, !tbaa !120
  %i.fzg = getelementptr inbounds i8, ptr %i.fzf, i64 %i.xk
  store i8 %i.fzd, ptr %i.fzg, align 1, !tbaa !74
  %i.fzh = load i32, ptr %i.ae, align 8, !tbaa !93
  %i.fzi = getelementptr inbounds nuw i8, ptr %0, i64 30640
  %i.fzj = load ptr, ptr %i.fzi, align 8, !tbaa !104
  %i.fzk = sext i32 %i.fzh to i64
  %i.fzl = getelementptr inbounds [48 x i8], ptr %i.fzj, i64 %i.fzk ; 12 uses
  %i.fzm = getelementptr inbounds nuw i8, ptr %1, i64 28628
  %i.fzn = load i32, ptr %i.fzm, align 4, !tbaa !74
  store i32 %i.fzn, ptr %i.fzl, align 4, !tbaa !74
  %i.fzo = getelementptr inbounds nuw i8, ptr %1, i64 28636
  %i.fzp = load i32, ptr %i.fzo, align 4, !tbaa !74
  %i.fzq = getelementptr inbounds nuw i8, ptr %i.fzl, i64 4
  store i32 %i.fzp, ptr %i.fzq, align 4, !tbaa !74
  %i.fzr = getelementptr inbounds nuw i8, ptr %1, i64 28644
  %i.fzs = load i32, ptr %i.fzr, align 4, !tbaa !74
  %i.fzt = getelementptr inbounds nuw i8, ptr %i.fzl, i64 8
  store i32 %i.fzs, ptr %i.fzt, align 4, !tbaa !74
  %i.fzu = getelementptr inbounds nuw i8, ptr %1, i64 28652
  %i.fzv = load i32, ptr %i.fzu, align 4, !tbaa !74
  %i.fzw = getelementptr inbounds nuw i8, ptr %i.fzl, i64 12
  store i32 %i.fzv, ptr %i.fzw, align 4, !tbaa !74
  %i.fzx = getelementptr inbounds nuw i8, ptr %1, i64 28668
  %i.fzy = load i32, ptr %i.fzx, align 4, !tbaa !74
  %i.fzz = getelementptr inbounds nuw i8, ptr %i.fzl, i64 16
  store i32 %i.fzy, ptr %i.fzz, align 4, !tbaa !74
  %i.gaa = getelementptr inbounds nuw i8, ptr %1, i64 28676
  %i.gab = load i32, ptr %i.gaa, align 4, !tbaa !74
  %i.gac = getelementptr inbounds nuw i8, ptr %i.fzl, i64 20
  store i32 %i.gab, ptr %i.gac, align 4, !tbaa !74
  %i.gad = getelementptr inbounds nuw i8, ptr %1, i64 28708
  %i.gae = load i32, ptr %i.gad, align 4, !tbaa !74
  %i.gaf = getelementptr inbounds nuw i8, ptr %i.fzl, i64 32
  store i32 %i.gae, ptr %i.gaf, align 4, !tbaa !74
  %i.gag = getelementptr inbounds nuw i8, ptr %1, i64 28716
  %i.gah = load i32, ptr %i.gag, align 4, !tbaa !74
  %i.gai = getelementptr inbounds nuw i8, ptr %i.fzl, i64 36
  store i32 %i.gah, ptr %i.gai, align 4, !tbaa !74
  %i.gaj = getelementptr inbounds nuw i8, ptr %0, i64 30104
end_hunk_3
begin_hunk_4_@fill_decode_caches:bb.a
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !74
  br label %bb.as

bb.ar:                                            ; preds = %bb.am
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 28731
  store i8 %i.ew, ptr %i.kv, align 1, !tbaa !74
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 28723
  store i8 %i.ew, ptr %i.kw, align 1, !tbaa !74
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 28691
  store i8 %i.ew, ptr %i.kx, align 1, !tbaa !74
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 28683
  store i8 %i.ew, ptr %i.ky, align 1, !tbaa !74
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 28651
  store i8 %i.ew, ptr %i.kz, align 1, !tbaa !74
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.sink735 = phi i64 [ 28643, %bb.ar ], [ 28715, %bb.aq ], [ 28731, %bb.ap ], [ 28731, %bb.ao ]
  %.sink733 = phi i8 [ %i.ew, %bb.ar ], [ %i.ku, %bb.aq ], [ %i.kj, %bb.ap ], [ %i.jm, %bb.ao ]
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 %.sink735
  store i8 %.sink733, ptr %i.la, align 1, !tbaa !74
  br i1 %.not612, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 31088
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !121
  %i.ld = sext i32 %i.f to i64
  %i.le = getelementptr inbounds [2 x i8], ptr %i.lc, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !101
  %i.lg = zext i16 %i.lf to i32
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.lh = select i1 %.not598, i32 15, i32 1999
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink = phi i32 [ %i.lh, %bb.au ], [ %i.lg, %bb.at ]
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 21096
  store i32 %.sink, ptr %i.li, align 8, !tbaa !164
  br i1 %.not615, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 31088
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !121 ; 2 uses
  %i.ll = sext i32 %i.j to i64
  %i.lm = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !101
  %i.lo = zext i16 %i.ln to i32                   ; 2 uses
  %i.lp = and i32 %i.lo, 2032
  %i.lq = load i8, ptr %i.b, align 1, !tbaa !74
  %i.lr = and i8 %i.lq, -2
  %i.ls = zext nneg i8 %i.lr to i32
  %i.lt = lshr i32 %i.lo, %i.ls
  %i.lu = and i32 %i.lt, 2
  %i.lv = or disjoint i32 %i.lu, %i.lp
  %i.lw = sext i32 %i.l to i64
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !101
  %i.lz = zext i16 %i.ly to i32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !74
  %i.mc = and i8 %i.mb, -2
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = lshr i32 %i.lz, %i.md
  %i.mf = shl nuw nsw i32 %i.me, 2
  %i.mg = and i32 %i.mf, 8
  %i.mh = or disjoint i32 %i.lv, %i.mg
  br label %.sink.split736

bb.ax:                                            ; preds = %bb.av
  %i.mi = select i1 %.not598, i32 15, i32 1999
  br label %.sink.split736

.sink.split736:                                   ; preds = %bb.ax, %bb.aw
  %.sink738 = phi i32 [ %i.mh, %bb.aw ], [ %i.mi, %bb.ax ]
  %.ph737 = phi i32 [ %i.t, %bb.aw ], [ 0, %bb.ax ]
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 21100
  store i32 %.sink738, ptr %i.mj, align 4, !tbaa !163
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split736, %bb.a
  %i.mk = phi i32 [ %i.t, %bb.a ], [ %.ph737, %.sink.split736 ] ; 7 uses
  %i.ml = and i32 %2, 120
  %.not618 = icmp eq i32 %i.ml, 0
  br i1 %.not618, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.mm = and i32 %2, 256
  %.not619 = icmp eq i32 %i.mm, 0
  br i1 %.not619, label %.loopexit672, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 21080
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !105
  %.not620 = icmp eq i32 %i.mo, 0
  br i1 %.not620, label %.loopexit672, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 31048
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !108 ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !147 ; 2 uses
  %.not678 = icmp eq i32 %i.ms, 0
  br i1 %.not678, label %.loopexit672, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 28624
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 28584
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 31032 ; 6 uses
  %i.my = sext i32 %i.f to i64                    ; 2 uses
  %i.mz = mul nsw i32 %i.mq, 3                    ; 2 uses
  %i.na = shl nsw i32 %i.f, 2
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %.not624 = icmp eq i32 %i.p, 0
  %i.nc = select i1 %.not624, i32 -16843010, i32 -1
  %i.nd = and i32 %2, 80
  %.not625 = icmp eq i32 %i.nd, 0
  %i.ne = sext i32 %i.j to i64                    ; 3 uses
  %i.nf = shl nsw i32 %i.j, 2
  %i.ng = or disjoint i32 %i.nf, 1                ; 4 uses
  %.not627 = icmp eq i32 %i.mk, 0
  %i.nh = select i1 %.not627, i8 -2, i8 -1
  %i.ni = sext i32 %i.h to i64
  %i.nj = shl nsw i32 %i.h, 2
  %i.nk = sext i32 %i.nj to i64
  %.not629 = icmp eq i32 %i.r, 0
  %i.nl = select i1 %.not629, i8 -2, i8 -1
  %i.nm = sext i32 %i.d to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 20968
  %i.no = shl nsw i32 %i.mq, 1
  %i.np = add i32 %i.mq, 3
  %i.nq = shl nsw i32 %i.d, 2
  %.not631 = icmp eq i32 %i.n, 0
  %i.nr = select i1 %.not631, i8 -2, i8 -1
  %i.ns = and i32 %2, 131328
  %.not632 = icmp eq i32 %i.ns, 0
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 31064 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 33632
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 31040 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.nx = sext i32 %i.l to i64                    ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 29308
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 31120
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 29316
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 29324
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 29332
  %i.og = and i32 %i.p, 256
  %.not636 = icmp eq i32 %i.og, 0
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 29300 ; 3 uses
  %i.oi = and i32 %i.p, 64
  %.not637 = icmp eq i32 %i.oi, 0
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 29302
  %i.ok = and i32 %i.mk, 256
  %.not638.not = icmp eq i32 %i.ok, 0
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 29307
  %i.om = and i32 %i.v, 256
  %.not640.not = icmp eq i32 %i.om, 0
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 29323
  %i.oo = shl nsw i32 %i.l, 2
  %i.op = or disjoint i32 %i.oo, 1                ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 21064
  %i.or = and i32 %i.n, 128
  %.not649 = icmp eq i32 %i.or, 0                 ; 2 uses
  %i.os = and i32 %i.p, 128
  %.not650 = icmp eq i32 %i.os, 0                 ; 2 uses
  %i.ot = and i32 %i.r, 128
  %.not651 = icmp eq i32 %i.ot, 0                 ; 2 uses
  %i.ou = and i32 %i.mk, 128
  %.not652 = icmp eq i32 %i.ou, 0                 ; 2 uses
  %i.ov = and i32 %i.v, 128
  %.not653 = icmp eq i32 %i.ov, 0                 ; 2 uses
  %.not655 = icmp eq i32 %i.t, 0
  %i.ow = select i1 %.not655, i8 -2, i8 -1        ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %.not655.1 = icmp eq i32 %i.v, 0
  %i.oy = select i1 %.not655.1, i8 -2, i8 -1      ; 2 uses
  %i.oz = zext i32 %i.ms to i64
  %i.pa = and i32 %i.mk, 320
  %brmerge.not = icmp eq i32 %i.pa, 64
  %.mux = select i1 %.not638.not, i8 4, i8 -128
  %i.pb = and i32 %i.v, 320
  %brmerge749.not = icmp eq i32 %i.pb, 64
  %.mux750 = select i1 %.not640.not, i8 4, i8 -128
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %.critedge663
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge663 ] ; 28 uses
  %i.pc = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %indvars.iv ; 32 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !106 ; 8 uses
  %i.pf = getelementptr inbounds nuw [160 x i8], ptr %i.mv, i64 %indvars.iv ; 39 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !107 ; 8 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.pi = shl i32 %indvars.iv.tr, 1
  %i.pj = shl i32 12288, %i.pi                    ; 9 uses
  %i.pk = and i32 %i.pj, %2
  %.not622 = icmp eq i32 %i.pk, 0
  br i1 %.not622, label %.critedge663, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pl = and i32 %i.pj, %i.p
  %.not623 = icmp eq i32 %i.pl, 0                 ; 2 uses
  br i1 %.not623, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pm = load ptr, ptr %i.mx, align 8, !tbaa !110
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.my
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !98
  %i.pp = add i32 %i.po, %i.mz
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.pq ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !74
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !74
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !74
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store i64 %i.pv, ptr %i.pw, align 8, !tbaa !74
  %i.px = getelementptr i8, ptr %i.pe, i64 %i.nb  ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !74  ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pc, i64 5
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !74
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i8 %i.pz, ptr %i.qb, align 1, !tbaa !74
  %i.qc = getelementptr i8, ptr %i.px, i64 3
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !74  ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pc, i64 7
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !74
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pc, i64 6
  store i8 %i.qd, ptr %i.qf, align 1, !tbaa !74
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  store i32 %i.nc, ptr %i.qh, align 4, !tbaa !74
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br i1 %.not625, label %bb.bl, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bg
  %i.qi = and i32 %i.t, %i.pj
  %.not654 = icmp eq i32 %i.qi, 0
  br i1 %.not654, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader.preheader
  %i.qj = load ptr, ptr %i.mx, align 8, !tbaa !110
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qj, i64 %i.ne
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !98
  %i.qm = add i32 %i.ql, 3                        ; 2 uses
  %i.qn = load i8, ptr %i.b, align 1, !tbaa !74
  %i.qo = zext i8 %i.qn to i32
  %i.qp = mul nsw i32 %i.mq, %i.qo
  %i.qq = add nsw i32 %i.qp, %i.qm
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !74
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pf, i64 44
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !74
  %i.qv = load i8, ptr %i.nw, align 1, !tbaa !74
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nsw i32 %i.mq, %i.qw
  %i.qy = add nsw i32 %i.qx, %i.qm
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !74
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pf, i64 76
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !74
  %i.rd = load i8, ptr %i.b, align 1, !tbaa !74
  %i.re = and i8 %i.rd, -2
  %i.rf = zext i8 %i.re to i32
  %i.rg = add nsw i32 %i.ng, %i.rf
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.pe, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !74
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pc, i64 11
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !74
  %i.rl = load i8, ptr %i.nw, align 1, !tbaa !74
  %i.rm = and i8 %i.rl, -2
  %i.rn = zext i8 %i.rm to i32
  %i.ro = add nsw i32 %i.ng, %i.rn
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %i.pe, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !74
  br label %.preheader.1

bb.bi:                                            ; preds = %.preheader.preheader
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pf, i64 44
  store i32 0, ptr %i.rs, align 4, !tbaa !74
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pf, i64 76
  store i32 0, ptr %i.rt, align 4, !tbaa !74
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pc, i64 11
  store i8 %i.ow, ptr %i.ru, align 1, !tbaa !74
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.bi, %bb.bh
  %.sink693 = phi i8 [ %i.ow, %bb.bi ], [ %i.rr, %bb.bh ]
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pc, i64 19
  store i8 %.sink693, ptr %i.rv, align 1, !tbaa !74
  %i.rw = and i32 %i.v, %i.pj
  %.not654.1 = icmp eq i32 %i.rw, 0
  br i1 %.not654.1, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.preheader.1
  %i.rx = load ptr, ptr %i.mx, align 8, !tbaa !110
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.nx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !98
  %i.sa = add i32 %i.rz, 3                        ; 2 uses
  %i.sb = load i8, ptr %i.ny, align 1, !tbaa !74
  %i.sc = zext i8 %i.sb to i32
  %i.sd = mul nsw i32 %i.mq, %i.sc
  %i.se = add nsw i32 %i.sd, %i.sa
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !74
  %i.si = getelementptr inbounds nuw i8, ptr %i.pf, i64 108
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !74
  %i.sj = load i8, ptr %i.ox, align 1, !tbaa !74
  %i.sk = zext i8 %i.sj to i32
  %i.sl = mul nsw i32 %i.mq, %i.sk
  %i.sm = add nsw i32 %i.sl, %i.sa
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !74
  %i.sq = getelementptr inbounds nuw i8, ptr %i.pf, i64 140
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !74
  %i.sr = load i8, ptr %i.ny, align 1, !tbaa !74
  %i.ss = and i8 %i.sr, -2
  %i.st = zext i8 %i.ss to i32
  %i.su = add nsw i32 %i.op, %i.st
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds i8, ptr %i.pe, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !74
  %i.sy = getelementptr inbounds nuw i8, ptr %i.pc, i64 27
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !74
  %i.sz = load i8, ptr %i.ox, align 1, !tbaa !74
  %i.ta = and i8 %i.sz, -2
  %i.tb = zext i8 %i.ta to i32
  %i.tc = add nsw i32 %i.op, %i.tb
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %i.pe, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !74
  br label %.loopexit

bb.bk:                                            ; preds = %.preheader.1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pf, i64 108
  store i32 0, ptr %i.tg, align 4, !tbaa !74
  %i.th = getelementptr inbounds nuw i8, ptr %i.pf, i64 140
  store i32 0, ptr %i.th, align 4, !tbaa !74
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pc, i64 27
  store i8 %i.oy, ptr %i.ti, align 1, !tbaa !74
  br label %.loopexit

bb.bl:                                            ; preds = %bb.bg
  %i.tj = and i32 %i.pj, %i.mk
  %.not626 = icmp eq i32 %i.tj, 0
  br i1 %.not626, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tk = load ptr, ptr %i.mx, align 8, !tbaa !110
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.ne
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !98
  %i.tn = add i32 %i.tm, 3
  %i.to = load i8, ptr %i.b, align 1, !tbaa !74
  %i.tp = zext i8 %i.to to i32
  %i.tq = mul nsw i32 %i.mq, %i.tp
  %i.tr = add nsw i32 %i.tn, %i.tq
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !74
  %i.tv = getelementptr inbounds nuw i8, ptr %i.pf, i64 44
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !74
  %i.tw = load i8, ptr %i.b, align 1, !tbaa !74
  %i.tx = and i8 %i.tw, -2
  %i.ty = zext i8 %i.tx to i32
  %i.tz = add nsw i32 %i.ng, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds i8, ptr %i.pe, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !74
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bl
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pf, i64 44
  store i32 0, ptr %i.ud, align 4, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bj, %bb.bk, %bb.bm, %bb.bn
  %.sink741 = phi i64 [ 11, %bb.bn ], [ 11, %bb.bm ], [ 35, %bb.bk ], [ 35, %bb.bj ]
  %.sink694.sink = phi i8 [ %i.nh, %bb.bn ], [ %i.uc, %bb.bm ], [ %i.oy, %bb.bk ], [ %i.tf, %bb.bj ]
  %i.ue = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.sink741
  store i8 %.sink694.sink, ptr %i.ue, align 1, !tbaa !74
end_hunk_4
