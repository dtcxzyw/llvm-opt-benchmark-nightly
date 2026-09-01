Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cabac?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_decode_mb_cabac:bb.a
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
  %i.bkt = shl nuw i32 %indvars.iv1680.tr, 1      ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.blq to i64
  %i.blv = trunc nuw nsw i64 %i.blb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1575, %bb.fr
  %indvars.iv1675 = phi i64 [ 0, %.lr.ph1575 ], [ %indvars.iv.next1676, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %2 = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.blw = shl nuw i32 %2, %i.blr
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
  store i16 %i.bqb, ptr %i.bky, align 4, !tbaa !101
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqa, i64 2
  %i.bqd = load i16, ptr %i.bqc, align 2, !tbaa !101
  %i.bqe = sdiv i16 %i.bqd, 2
  store i16 %i.bqe, ptr %i.bla, align 2, !tbaa !101
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpo, i64 120
  %i.bqg = getelementptr inbounds nuw [8 x i8], ptr %i.bqf, i64 %indvars.iv1680
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !106
  %i.bqi = shl nsw i32 %i.bph, 2
  %i.bqj = and i32 %i.bpm, 2
  %i.bqk = or disjoint i32 %i.bqi, %i.bqj
  %i.bql = sext i32 %i.bqk to i64
  %i.bqm = getelementptr i8, ptr %i.bqh, i64 %i.bql
  %i.bqn = getelementptr i8, ptr %i.bqm, i64 1
  %i.bqo = load i8, ptr %i.bqn, align 1, !tbaa !74
  %i.bqp = sext i8 %i.bqo to i32
  %i.bqq = shl nsw i32 %i.bqp, 1
  br label %fetch_diagonal_mv.exit1150

bb.ez:                                            ; preds = %bb.eq
  br i1 %i.bmz, label %.thread1371, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bqr = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bmt
  br label %fetch_diagonal_mv.exit1150

.thread1371:                                      ; preds = %bb.et, %bb.er, %bb.ew, %bb.ez
  %i.bqs = add nsw i32 %i.bmh, -9
  %i.bqt = sext i32 %i.bqs to i64                 ; 2 uses
  %i.bqu = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %i.bqt
  %i.bqv = getelementptr inbounds i8, ptr %i.bkr, i64 %i.bqt
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !74
  %i.bqx = sext i8 %i.bqw to i32
  br label %fetch_diagonal_mv.exit1150

fetch_diagonal_mv.exit1150:                       ; preds = %bb.ex, %bb.eu, %bb.ev, %bb.ey, %bb.fa, %.thread1371
  %.01348 = phi ptr [ %i.bqu, %.thread1371 ], [ %i.bqr, %bb.fa ], [ %i.bky, %bb.ey ], [ %i.bky, %bb.ev ], [ %i.bky, %bb.eu ], [ %i.bky, %bb.ex ] ; 6 uses
  %.3.i1140 = phi i32 [ %i.bqx, %.thread1371 ], [ %i.bmw, %bb.fa ], [ %i.bqq, %bb.ey ], [ %i.bpd, %bb.ev ], [ -1, %bb.eu ], [ -1, %bb.ex ] ; 2 uses
  %i.bqy = icmp eq i32 %.3.i1140, %i.bmg
  %i.bqz = zext i1 %i.bqy to i32
  %i.bra = icmp eq i8 %i.bmf, %i.bml              ; 2 uses
  %i.brb = zext i1 %i.bra to i32
  %i.brc = icmp eq i8 %i.bmf, %i.bmp              ; 2 uses
  %i.brd = zext i1 %i.brc to i32
  %i.bre = add nuw nsw i32 %i.brd, %i.brb
  %i.brf = add nuw nsw i32 %i.bre, %i.bqz         ; 2 uses
  %i.brg = icmp samesign ugt i32 %i.brf, 1
  br i1 %i.brg, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %fetch_diagonal_mv.exit1150
  %i.brh = load i16, ptr %i.bmq, align 2, !tbaa !101
  %i.bri = sext i16 %i.brh to i32                 ; 2 uses
  %i.brj = load i16, ptr %i.bmr, align 2, !tbaa !101
  %i.brk = sext i16 %i.brj to i32                 ; 2 uses
  %i.brl = load i16, ptr %.01348, align 2, !tbaa !101
  %i.brm = sext i16 %i.brl to i32
end_hunk_0
begin_hunk_1_@ff_h264_decode_mb_cabac:bb.a
  %i.bry = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.brx, i32 %..i1220)
  %i.brz = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bry, i32 %.20.i1221)
  br label %pred_motion.exit1051

bb.fc:                                            ; preds = %fetch_diagonal_mv.exit1150
  %i.bsa = icmp eq i32 %i.brf, 1
  br i1 %i.bsa, label %bb.fd, label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.brc, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bsb = load i16, ptr %i.bmq, align 2, !tbaa !101
  %i.bsc = zext i16 %i.bsb to i32
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bmq, i64 2
  %i.bse = load i16, ptr %i.bsd, align 2, !tbaa !101
  %i.bsf = zext i16 %i.bse to i32
  br label %pred_motion.exit1051

bb.ff:                                            ; preds = %bb.fd
  br i1 %i.bra, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bsg = load i16, ptr %i.bmr, align 2, !tbaa !101
  %i.bsh = zext i16 %i.bsg to i32
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bmr, i64 2
  %i.bsj = load i16, ptr %i.bsi, align 2, !tbaa !101
  %i.bsk = zext i16 %i.bsj to i32
  br label %pred_motion.exit1051

bb.fh:                                            ; preds = %bb.ff
  %i.bsl = load i16, ptr %.01348, align 2, !tbaa !101
  %i.bsm = zext i16 %i.bsl to i32
  %i.bsn = getelementptr inbounds nuw i8, ptr %.01348, i64 2
  %i.bso = load i16, ptr %i.bsn, align 2, !tbaa !101
  %i.bsp = zext i16 %i.bso to i32
  br label %pred_motion.exit1051

bb.fi:                                            ; preds = %bb.fc
  %i.bsq = icmp eq i8 %i.bml, -2
  %i.bsr = icmp eq i32 %.3.i1140, -2
  %or.cond.i1049 = and i1 %i.bsq, %i.bsr
  %i.bss = icmp ne i8 %i.bmp, -2
  %or.cond3.i1050 = select i1 %or.cond.i1049, i1 %i.bss, i1 false
  %i.bst = load i16, ptr %i.bmq, align 2, !tbaa !101 ; 2 uses
  br i1 %or.cond3.i1050, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bsu = zext i16 %i.bst to i32
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bmq, i64 2
  %i.bsw = load i16, ptr %i.bsv, align 2, !tbaa !101
  %i.bsx = zext i16 %i.bsw to i32
  br label %pred_motion.exit1051

bb.fk:                                            ; preds = %bb.fi
  %i.bsy = sext i16 %i.bst to i32                 ; 2 uses
  %i.bsz = load i16, ptr %i.bmr, align 2, !tbaa !101
  %i.bta = sext i16 %i.bsz to i32                 ; 2 uses
  %i.btb = load i16, ptr %.01348, align 2, !tbaa !101
  %i.btc = sext i16 %i.btb to i32
  %..i1222 = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bsy, i32 range(i32 -32768, 32768) %i.bta)
  %.20.i1223 = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bsy, i32 range(i32 -32768, 32768) %i.bta)
  %i.btd = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.btc, i32 %..i1222)
  %i.bte = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.btd, i32 %.20.i1223)
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bmq, i64 2
  %i.btg = load i16, ptr %i.btf, align 2, !tbaa !101
  %i.bth = sext i16 %i.btg to i32                 ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bmr, i64 2
  %i.btj = load i16, ptr %i.bti, align 2, !tbaa !101
  %i.btk = sext i16 %i.btj to i32                 ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %.01348, i64 2
  %i.btm = load i16, ptr %i.btl, align 2, !tbaa !101
  %i.btn = sext i16 %i.btm to i32
  %..i1224 = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bth, i32 range(i32 -32768, 32768) %i.btk)
  %.20.i1225 = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bth, i32 range(i32 -32768, 32768) %i.btk)
  %i.bto = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.btn, i32 %..i1224)
  %i.btp = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bto, i32 %.20.i1225)
  br label %pred_motion.exit1051

pred_motion.exit1051:                             ; preds = %bb.fb, %bb.fe, %bb.fg, %bb.fh, %bb.fj, %bb.fk
  %.11346 = phi i32 [ %i.bro, %bb.fb ], [ %i.bsc, %bb.fe ], [ %i.bsh, %bb.fg ], [ %i.bsm, %bb.fh ], [ %i.bsu, %bb.fj ], [ %i.bte, %bb.fk ]
  %.11344 = phi i32 [ %i.brz, %bb.fb ], [ %i.bsf, %bb.fe ], [ %i.bsk, %bb.fg ], [ %i.bsp, %bb.fh ], [ %i.bsx, %bb.fj ], [ %i.btp, %bb.fk ]
  %i.btq = getelementptr i8, ptr %i.bmd, i64 -2
  %i.btr = load i8, ptr %i.btq, align 2, !tbaa !74
  %i.bts = zext i8 %i.btr to i32
  %i.btt = getelementptr i8, ptr %i.bmd, i64 -16
  %i.btu = load i8, ptr %i.btt, align 2, !tbaa !74
  %i.btv = zext i8 %i.btu to i32
  %i.btw = add nuw nsw i32 %i.btv, %i.bts
  %i.btx = getelementptr i8, ptr %i.bmd, i64 -1
  %i.bty = load i8, ptr %i.btx, align 1, !tbaa !74
  %i.btz = zext i8 %i.bty to i32
  %i.bua = getelementptr i8, ptr %i.bmd, i64 -15
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !74
  %i.buc = zext i8 %i.bub to i32
  %i.bud = add nuw nsw i32 %i.buc, %i.btz
  %i.bue = call fastcc i32 @decode_cabac_mb_mvd(ptr noundef nonnull %1, i32 noundef 40, i32 noundef %i.btw, ptr noundef %i.e) ; 2 uses
  %i.buf = call fastcc i32 @decode_cabac_mb_mvd(ptr noundef nonnull %1, i32 noundef 47, i32 noundef %i.bud, ptr noundef %i.f) ; 2 uses
  %i.bug = icmp ne i32 %i.bue, -2147483648
  %i.buh = icmp ne i32 %i.buf, -2147483648
  %or.cond22.not = select i1 %i.bug, i1 %i.buh, i1 false
  br i1 %or.cond22.not, label %bb.fl, label %.thread1379

bb.fl:                                            ; preds = %pred_motion.exit1051
  %i.bui = add i32 %i.bue, %.11346                ; 3 uses
  %i.buj = add i32 %i.buf, %.11344                ; 4 uses
  br i1 %.not980, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.buk = trunc i32 %i.bui to i16                ; 4 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bmc, i64 36
  store i16 %i.buk, ptr %i.bul, align 2, !tbaa !101
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bmc, i64 32
  store i16 %i.buk, ptr %i.bum, align 2, !tbaa !101
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bmc, i64 4
  store i16 %i.buk, ptr %i.bun, align 2, !tbaa !101
  %i.buo = trunc i32 %i.buj to i16                ; 4 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bmc, i64 38
  store i16 %i.buo, ptr %i.bup, align 2, !tbaa !101
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bmc, i64 34
  store i16 %i.buo, ptr %i.buq, align 2, !tbaa !101
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bmc, i64 6
  store i16 %i.buo, ptr %i.bur, align 2, !tbaa !101
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
  %indvars.iv.next1676 = add nuw nsw i64 %indvars.iv1675, 1 ; 2 uses
  %exitcond1675.not = icmp eq i64 %indvars.iv.next1676, %wide.trip.count
  br i1 %exitcond1675.not, label %.loopexit1515, label %bb.eq, !llvm.loop !152

.thread1379:                                      ; preds = %pred_motion.exit1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread1382

bb.fs:                                            ; preds = %bb.eo
  %i.bvv = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.ble ; 4 uses
  store i32 0, ptr %i.bvv, align 4, !tbaa !98
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 4
  store i32 0, ptr %i.bvw, align 4, !tbaa !98
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvv, i64 32
  store i32 0, ptr %i.bvx, align 4, !tbaa !98
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvv, i64 36
  store i32 0, ptr %i.bvy, align 4, !tbaa !98
  br label %.loopexit1515.sink.split

.loopexit1515.sink.split:                         ; preds = %bb.en, %bb.fs
  %i.bvz = getelementptr inbounds nuw [2 x i8], ptr %i.bks, i64 %i.ble ; 2 uses
  store i32 0, ptr %i.bvz, align 4, !tbaa !98
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 16
  store i32 0, ptr %i.bwa, align 4, !tbaa !98
  br label %.loopexit1515

.loopexit1515:                                    ; preds = %bb.fr, %.loopexit1515.sink.split, %bb.ep
  %indvars.iv.next1677 = add nuw nsw i64 %indvars.iv1676, 1 ; 2 uses
  %exitcond1679.not = icmp eq i64 %indvars.iv.next1677, 4
  br i1 %exitcond1679.not, label %bb.ft, label %bb.en, !llvm.loop !153

bb.ft:                                            ; preds = %.loopexit1515
  %indvars.iv.next1681 = add nuw nsw i64 %indvars.iv1680, 1 ; 2 uses
  %i.bwb = load i32, ptr %i.bhb, align 8, !tbaa !147
  %i.bwc = zext i32 %i.bwb to i64
  %i.bwd = icmp samesign ult i64 %indvars.iv.next1681, %i.bwc
  br i1 %i.bwd, label %.preheader1516, label %._crit_edge1578, !llvm.loop !154

.thread1382:                                      ; preds = %bb.dy, %.thread1379
  %.15.ph = phi i32 [ -1094995529, %.thread1379 ], [ -1, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %write_back_non_zero_count.exit

._crit_edge1578:                                  ; preds = %bb.ft, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.loopexit1524

bb.fu:                                            ; preds = %bb.cy
  %i.bwe = and i32 %.pre1756, 256
  %.not955 = icmp eq i32 %i.bwe, 0
  br i1 %.not955, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @ff_h264_pred_direct_motion(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #10
  %i.bwf = getelementptr inbounds nuw i8, ptr %1, i64 29160
  store i32 0, ptr %i.bwf, align 8, !tbaa !98
  %i.bwg = getelementptr inbounds nuw i8, ptr %1, i64 29164
  store i32 0, ptr %i.bwg, align 4, !tbaa !98
  %i.bwh = getelementptr inbounds nuw i8, ptr %1, i64 29176
  store i32 0, ptr %i.bwh, align 8, !tbaa !98
  %i.bwi = getelementptr inbounds nuw i8, ptr %1, i64 29180
  store i32 0, ptr %i.bwi, align 4, !tbaa !98
  %i.bwj = getelementptr inbounds nuw i8, ptr %1, i64 29192
  store i32 0, ptr %i.bwj, align 8, !tbaa !98
  %i.bwk = getelementptr inbounds nuw i8, ptr %1, i64 29196
  store i32 0, ptr %i.bwk, align 4, !tbaa !98
  %i.bwl = getelementptr inbounds nuw i8, ptr %1, i64 29208
  store i32 0, ptr %i.bwl, align 8, !tbaa !98
  %i.bwm = getelementptr inbounds nuw i8, ptr %1, i64 29212
  store i32 0, ptr %i.bwm, align 4, !tbaa !98
  %i.bwn = getelementptr inbounds nuw i8, ptr %1, i64 29240
  store i32 0, ptr %i.bwn, align 8, !tbaa !98
  %i.bwo = getelementptr inbounds nuw i8, ptr %1, i64 29244
  store i32 0, ptr %i.bwo, align 4, !tbaa !98
  %i.bwp = getelementptr inbounds nuw i8, ptr %1, i64 29256
  store i32 0, ptr %i.bwp, align 8, !tbaa !98
  %i.bwq = getelementptr inbounds nuw i8, ptr %1, i64 29260
  store i32 0, ptr %i.bwq, align 4, !tbaa !98
  %i.bwr = getelementptr inbounds nuw i8, ptr %1, i64 29272
  store i32 0, ptr %i.bwr, align 8, !tbaa !98
  %i.bws = getelementptr inbounds nuw i8, ptr %1, i64 29276
  store i32 0, ptr %i.bws, align 4, !tbaa !98
  %i.bwt = getelementptr inbounds nuw i8, ptr %1, i64 29288
  store i32 0, ptr %i.bwt, align 8, !tbaa !98
  %i.bwu = getelementptr inbounds nuw i8, ptr %1, i64 29292
  store i32 0, ptr %i.bwu, align 4, !tbaa !98
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.bww = load i32, ptr %i.bwv, align 8, !tbaa !149
  %i.bwx = and i32 %i.bww, %i.r
  br label %.loopexit1524

bb.fw:                                            ; preds = %bb.fu
  %i.bwy = and i32 %.pre1756, 8
  %.not956 = icmp eq i32 %i.bwy, 0
  br i1 %.not956, label %bb.gs, label %.preheader1534

.preheader1534:                                   ; preds = %bb.fw
  %i.bwz = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 3 uses
  %i.bxa = load i32, ptr %i.bwz, align 8, !tbaa !147 ; 3 uses
  %.not1601 = icmp eq i32 %i.bxa, 0
  br i1 %.not1601, label %.loopexit1524, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1534
  %i.bxb = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bxc = getelementptr inbounds nuw i8, ptr %1, i64 21068
  br label %bb.fx

.preheader1532:                                   ; preds = %bb.gb
  %.not1602 = icmp eq i32 %i.bxz, 0
  br i1 %.not1602, label %.loopexit1524, label %.lr.ph1558

.lr.ph1558:                                       ; preds = %.preheader1532
  %i.bxd = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bxe = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.bxf = getelementptr inbounds nuw i8, ptr %1, i64 29136
  br label %bb.gc

bb.fx:                                            ; preds = %.lr.ph, %bb.gb
  %.pre1783.a = phi i32 [ %i.bxa, %.lr.ph ], [ %.pre1784.a, %bb.gb ] ; 2 uses
  %i.bxg = phi i32 [ %i.bxa, %.lr.ph ], [ %i.bxz, %bb.gb ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.gb ] ; 5 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bxh = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.bxi = shl i32 4096, %i.bxh
  %i.bxj = and i32 %.pre1756, %i.bxi
  %.not971 = icmp eq i32 %i.bxj, 0
  br i1 %.not971, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bxk = getelementptr inbounds nuw [4 x i8], ptr %i.bxb, i64 %indvars.iv
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !98
  %i.bxm = load i32, ptr %i.bxc, align 4, !tbaa !103
  %i.bxn = shl i32 %i.bxl, %i.bxm                 ; 3 uses
  %i.bxo = icmp ugt i32 %i.bxn, 1
  br i1 %i.bxo, label %bb.fz, label %.thread1386

bb.fz:                                            ; preds = %bb.fy
  %i.bxp = trunc nuw nsw i64 %indvars.iv to i32
  %i.bxq = tail call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bxp, i32 noundef 0) ; 3 uses
  %.not972 = icmp ult i32 %i.bxq, %i.bxn
  br i1 %.not972, label %..thread1386_crit_edge, label %bb.ga

..thread1386_crit_edge:                           ; preds = %bb.fz
  %.pre.pre = load i32, ptr %i.bwz, align 8, !tbaa !147
  %i.bxr = mul nuw nsw i32 %i.bxq, 16843009
  br label %.thread1386

.thread1386:                                      ; preds = %..thread1386_crit_edge, %bb.fy
  %.pre = phi i32 [ %.pre.pre, %..thread1386_crit_edge ], [ %.pre1783.a, %bb.fy ] ; 2 uses
  %.0854 = phi i32 [ %i.bxr, %..thread1386_crit_edge ], [ 0, %bb.fy ] ; 4 uses
  %i.bxs = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 29068
  store i32 %.0854, ptr %i.bxt, align 4, !tbaa !98
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxs, i64 29076
  store i32 %.0854, ptr %i.bxu, align 4, !tbaa !98
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxs, i64 29084
  store i32 %.0854, ptr %i.bxv, align 4, !tbaa !98
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxs, i64 29092
  store i32 %.0854, ptr %i.bxw, align 4, !tbaa !98
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bxx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bxy = load ptr, ptr %i.bxx, align 8, !tbaa !137
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bxy, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.bxq, i32 noundef %i.bxn) #10
  br label %write_back_non_zero_count.exit

bb.gb:                                            ; preds = %.thread1386, %bb.fx
  %.pre1784.a = phi i32 [ %.pre, %.thread1386 ], [ %.pre1783.a, %bb.fx ]
  %i.bxz = phi i32 [ %.pre, %.thread1386 ], [ %i.bxg, %bb.fx ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bya = zext i32 %i.bxz to i64
  %i.byb = icmp samesign ult i64 %indvars.iv.next, %i.bya
  br i1 %i.byb, label %bb.fx, label %.preheader1532, !llvm.loop !155

bb.gc:                                            ; preds = %.lr.ph1558, %bb.gr
  %i.byc = phi i32 [ %i.bxz, %.lr.ph1558 ], [ %i.cdk, %bb.gr ]
  %i.byd = phi i32 [ %.pre1756, %.lr.ph1558 ], [ %i.cdl, %bb.gr ] ; 2 uses
  %indvars.iv1630 = phi i64 [ 0, %.lr.ph1558 ], [ %indvars.iv.next1631, %bb.gr ] ; 7 uses
  %indvars.iv1630.tr = trunc nuw nsw i64 %indvars.iv1630 to i32
  %i.bye = shl nuw nsw i32 %indvars.iv1630.tr, 1
  %i.byf = shl i32 4096, %i.bye
  %i.byg = and i32 %i.byd, %i.byf
  %.not968 = icmp eq i32 %i.byg, 0
  br i1 %.not968, label %bb.gr, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.byh = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv1630
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 29068
  %i.byj = load i8, ptr %i.byi, align 1, !tbaa !74 ; 3 uses
  %i.byk = getelementptr inbounds nuw [40 x i8], ptr %i.bxd, i64 %indvars.iv1630 ; 4 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 4
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !74 ; 2 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byk, i64 11
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !74 ; 2 uses
  %i.byp = getelementptr inbounds nuw [160 x i8], ptr %i.bxe, i64 %indvars.iv1630 ; 11 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 44 ; 3 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byp, i64 16 ; 3 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byk, i64 8
end_hunk_1
begin_hunk_2_@ff_h264_decode_mb_cabac:bb.a
  %i.evs = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.evt = shl i32 256, %i.v
  %i.evu = sext i32 %i.evt to i64
  %i.evv = getelementptr inbounds [2 x i8], ptr %i.evo, i64 %i.evu
  %i.evw = load i32, ptr %i.evp, align 4, !tbaa !163 ; 2 uses
  %i.evx = load i32, ptr %i.evq, align 8, !tbaa !164 ; 2 uses
  %i.evy = lshr i32 %i.evw, 6
  %.lobit1857 = and i32 %i.evy, 1
  %i.evz = lshr i32 %i.evx, 5
  %i.ewa = and i32 %i.evz, 2
  %.1.i1199 = or disjoint i32 %.lobit1857, %i.ewa
  %i.ewb = zext nneg i32 %.1.i1199 to i64
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.ewb
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.ewc, i64 97 ; 2 uses
  %i.ewe = load i8, ptr %i.ewd, align 1, !tbaa !74
  %i.ewf = zext i8 %i.ewe to i32                  ; 2 uses
  %i.ewg = load i32, ptr %i.evr, align 4, !tbaa !141 ; 2 uses
  %i.ewh = shl i32 %i.ewg, 1
  %i.ewi = and i32 %i.ewh, 384
  %i.ewj = add nuw nsw i32 %i.ewi, %i.ewf
  %i.ewk = zext nneg i32 %i.ewj to i64
  %i.ewl = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ewk
  %i.ewm = load i8, ptr %i.ewl, align 1, !tbaa !74
  %i.ewn = zext i8 %i.ewm to i32                  ; 2 uses
  %i.ewo = sub nsw i32 %i.ewg, %i.ewn             ; 2 uses
  %i.ewp = shl i32 %i.ewo, 17                     ; 2 uses
  %i.ewq = load i32, ptr %i.dml, align 16, !tbaa !142 ; 2 uses
  %i.ewr = icmp slt i32 %i.ewp, %i.ewq            ; 3 uses
  %i.ews = sext i1 %i.ewr to i32
  %i.ewt = select i1 %i.ewr, i32 %i.ewp, i32 0
  %i.ewu = sub nsw i32 %i.ewq, %i.ewt
  %i.ewv = select i1 %i.ewr, i32 %i.ewn, i32 %i.ewo ; 2 uses
  %i.eww = xor i32 %i.ews, %i.ewf                 ; 2 uses
  %i.ewx = sext i32 %i.eww to i64
  %i.ewy = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ewx
  %i.ewz = load i8, ptr %i.ewy, align 1, !tbaa !74
  store i8 %i.ewz, ptr %i.ewd, align 1, !tbaa !74
  %i.exa = sext i32 %i.ewv to i64
  %i.exb = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.exa
  %i.exc = load i8, ptr %i.exb, align 1, !tbaa !74
  %i.exd = zext i8 %i.exc to i32                  ; 2 uses
  %i.exe = shl i32 %i.ewv, %i.exd                 ; 2 uses
  store i32 %i.exe, ptr %i.evr, align 4, !tbaa !141
  %i.exf = shl i32 %i.ewu, %i.exd                 ; 6 uses
  store i32 %i.exf, ptr %i.dml, align 16, !tbaa !142
  %i.exg = and i32 %i.exf, 65535
  %.not.i.i1273 = icmp eq i32 %i.exg, 0
  br i1 %.not.i.i1273, label %bb.nc, label %get_cabac.exit1274

bb.nc:                                            ; preds = %.preheader1510
  %i.exh = add nsw i32 %i.exf, -32768
  %i.exi = xor i32 %i.exh, %i.exf
  %i.exj = lshr exact i32 %i.exi, 15
  %i.exk = zext nneg i32 %i.exj to i64
  %i.exl = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.exk
  %i.exm = load i8, ptr %i.exl, align 1, !tbaa !74
  %i.exn = zext i8 %i.exm to i32
  %i.exo = sub nsw i32 7, %i.exn
  %i.exp = load ptr, ptr %i.evs, align 16, !tbaa !143 ; 3 uses
  %i.exq = load i8, ptr %i.exp, align 1, !tbaa !74
  %i.exr = zext i8 %i.exq to i32
  %i.exs = shl nuw nsw i32 %i.exr, 9
  %i.ext = getelementptr inbounds nuw i8, ptr %i.exp, i64 1
  %i.exu = load i8, ptr %i.ext, align 1, !tbaa !74
  %i.exv = zext i8 %i.exu to i32
  %i.exw = shl nuw nsw i32 %i.exv, 1
  %i.exx = or disjoint i32 %i.exw, %i.exs
  %i.exy = add nsw i32 %i.exx, -65535
  %i.exz = shl nsw i32 %i.exy, %i.exo
  %i.eya = add i32 %i.exz, %i.exf                 ; 2 uses
  store i32 %i.eya, ptr %i.dml, align 16, !tbaa !142
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.exp, i64 2
  store ptr %i.eyb, ptr %i.evs, align 16, !tbaa !143
  br label %get_cabac.exit1274

get_cabac.exit1274:                               ; preds = %.preheader1510, %bb.nc
  %i.eyc = phi i32 [ %i.exf, %.preheader1510 ], [ %i.eya, %bb.nc ]
  %i.eyd = and i32 %i.eww, 1
  %i.eye = icmp eq i32 %i.eyd, 0
  br i1 %i.eye, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %get_cabac.exit1274
  %i.eyf = getelementptr inbounds nuw i8, ptr %1, i64 28656
  store i8 0, ptr %i.eyf, align 16, !tbaa !74
  br label %decode_cabac_residual_dc_422.exit

bb.ne:                                            ; preds = %get_cabac.exit1274
  call fastcc void @decode_cabac_residual_dc_internal_422(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.evv, i32 noundef range(i32 49, 51) 49)
  %.pre1768 = load i32, ptr %i.evp, align 4, !tbaa !163
  %.pre1769 = load i32, ptr %i.evq, align 8, !tbaa !164
  %.pre1770 = load i32, ptr %i.evr, align 4, !tbaa !141
  %.pre1771 = load i32, ptr %i.dml, align 16, !tbaa !142
  br label %decode_cabac_residual_dc_422.exit

decode_cabac_residual_dc_422.exit:                ; preds = %bb.nd, %bb.ne
  %i.eyg = phi i32 [ %i.eyc, %bb.nd ], [ %.pre1771, %bb.ne ] ; 2 uses
  %i.eyh = phi i32 [ %i.exe, %bb.nd ], [ %.pre1770, %bb.ne ] ; 2 uses
  %i.eyi = phi i32 [ %i.evx, %bb.nd ], [ %.pre1769, %bb.ne ]
  %i.eyj = phi i32 [ %i.evw, %bb.nd ], [ %.pre1768, %bb.ne ]
  %i.eyk = shl i32 512, %i.v
  %i.eyl = sext i32 %i.eyk to i64
  %i.eym = getelementptr inbounds [2 x i8], ptr %i.evo, i64 %i.eyl
  %i.eyn = lshr i32 %i.eyj, 7
  %.lobit1858 = and i32 %i.eyn, 1
  %i.eyo = lshr i32 %i.eyi, 6
  %i.eyp = and i32 %i.eyo, 2
  %.1.i1199.1 = or disjoint i32 %.lobit1858, %i.eyp
  %i.eyq = zext nneg i32 %.1.i1199.1 to i64
  %i.eyr = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.eyq
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyr, i64 97 ; 2 uses
  %i.eyt = load i8, ptr %i.eys, align 1, !tbaa !74
  %i.eyu = zext i8 %i.eyt to i32                  ; 2 uses
  %i.eyv = shl i32 %i.eyh, 1
  %i.eyw = and i32 %i.eyv, 384
  %i.eyx = add nuw nsw i32 %i.eyw, %i.eyu
  %i.eyy = zext nneg i32 %i.eyx to i64
  %i.eyz = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.eyy
  %i.eza = load i8, ptr %i.eyz, align 1, !tbaa !74
  %i.ezb = zext i8 %i.eza to i32                  ; 2 uses
  %i.ezc = sub nsw i32 %i.eyh, %i.ezb             ; 2 uses
  %i.ezd = shl i32 %i.ezc, 17                     ; 2 uses
  %i.eze = icmp slt i32 %i.ezd, %i.eyg            ; 3 uses
  %i.ezf = sext i1 %i.eze to i32
  %i.ezg = select i1 %i.eze, i32 %i.ezd, i32 0
  %i.ezh = sub nsw i32 %i.eyg, %i.ezg
  %i.ezi = select i1 %i.eze, i32 %i.ezb, i32 %i.ezc ; 2 uses
  %i.ezj = xor i32 %i.ezf, %i.eyu                 ; 2 uses
  %i.ezk = sext i32 %i.ezj to i64
  %i.ezl = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ezk
  %i.ezm = load i8, ptr %i.ezl, align 1, !tbaa !74
  store i8 %i.ezm, ptr %i.eys, align 1, !tbaa !74
  %i.ezn = sext i32 %i.ezi to i64
  %i.ezo = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ezn
  %i.ezp = load i8, ptr %i.ezo, align 1, !tbaa !74
  %i.ezq = zext i8 %i.ezp to i32                  ; 2 uses
  %i.ezr = shl i32 %i.ezi, %i.ezq
  store i32 %i.ezr, ptr %i.evr, align 4, !tbaa !141
  %i.ezs = shl i32 %i.ezh, %i.ezq                 ; 5 uses
  store i32 %i.ezs, ptr %i.dml, align 16, !tbaa !142
  %i.ezt = and i32 %i.ezs, 65535
  %.not.i.i1273.1 = icmp eq i32 %i.ezt, 0
  br i1 %.not.i.i1273.1, label %bb.nf, label %get_cabac.exit1274.1

bb.nf:                                            ; preds = %decode_cabac_residual_dc_422.exit
  %i.ezu = add nsw i32 %i.ezs, -32768
  %i.ezv = xor i32 %i.ezu, %i.ezs
  %i.ezw = lshr exact i32 %i.ezv, 15
  %i.ezx = zext nneg i32 %i.ezw to i64
  %i.ezy = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ezx
  %i.ezz = load i8, ptr %i.ezy, align 1, !tbaa !74
  %i.faa = zext i8 %i.ezz to i32
  %i.fab = sub nsw i32 7, %i.faa
  %i.fac = load ptr, ptr %i.evs, align 16, !tbaa !143 ; 3 uses
  %i.fad = load i8, ptr %i.fac, align 1, !tbaa !74
  %i.fae = zext i8 %i.fad to i32
  %i.faf = shl nuw nsw i32 %i.fae, 9
  %i.fag = getelementptr inbounds nuw i8, ptr %i.fac, i64 1
  %i.fah = load i8, ptr %i.fag, align 1, !tbaa !74
  %i.fai = zext i8 %i.fah to i32
  %i.faj = shl nuw nsw i32 %i.fai, 1
  %i.fak = or disjoint i32 %i.faj, %i.faf
  %i.fal = add nsw i32 %i.fak, -65535
  %i.fam = shl nsw i32 %i.fal, %i.fab
  %i.fan = add i32 %i.fam, %i.ezs
  store i32 %i.fan, ptr %i.dml, align 16, !tbaa !142
  %i.fao = getelementptr inbounds nuw i8, ptr %i.fac, i64 2
  store ptr %i.fao, ptr %i.evs, align 16, !tbaa !143
  br label %get_cabac.exit1274.1

get_cabac.exit1274.1:                             ; preds = %bb.nf, %decode_cabac_residual_dc_422.exit
  %i.fap = and i32 %i.ezj, 1
  %i.faq = icmp eq i32 %i.fap, 0
  br i1 %i.faq, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %get_cabac.exit1274.1
  call fastcc void @decode_cabac_residual_dc_internal_422(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eym, i32 noundef range(i32 49, 51) 50)
  br label %.loopexit1511

bb.nh:                                            ; preds = %get_cabac.exit1274.1
  %i.far = getelementptr inbounds nuw i8, ptr %1, i64 28696
  store i8 0, ptr %i.far, align 8, !tbaa !74
  br label %.loopexit1511

.loopexit1511:                                    ; preds = %bb.ng, %bb.nh, %bb.nb
  %i.fas = and i32 %.1874, 32
  %.not1023 = icmp eq i32 %i.fas, 0
  br i1 %.not1023, label %bb.nr, label %.preheader1508

.preheader1508:                                   ; preds = %.loopexit1511
  %i.fat = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.fau = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fav = getelementptr inbounds nuw i8, ptr %.0847, i64 1 ; 4 uses
  %i.faw = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 4 uses
  %i.fax = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 8 uses
  %i.fay = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 8 uses
  %i.faz = shl i32 16, %i.v
  %i.fba = sext i32 %i.faz to i64                 ; 4 uses
  %.pre1772 = load i32, ptr %i.c, align 4, !tbaa !98
  %i.fbb = and i32 %.pre1772, 7
  %.not1024 = icmp eq i32 %i.fbb, 0
  %i.fbc = select i1 %.not1024, i64 4, i64 1
  br label %bb.ni

.loopexit1507:                                    ; preds = %decode_cabac_residual_nondc.exit1098.3
  br i1 %i.fbd, label %bb.ni, label %decode_cabac_luma_residual.exit.thread, !llvm.loop !173

bb.ni:                                            ; preds = %.preheader1508, %.loopexit1507
  %i.fbd = phi i1 [ true, %.preheader1508 ], [ false, %.loopexit1507 ]
  %indvars.iv1714.a = phi i64 [ 0, %.preheader1508 ], [ 1, %.loopexit1507 ] ; 3 uses
  %i.fbe = shl nuw nsw i64 %indvars.iv1714.a, 4
  %i.fbf = add nuw nsw i64 %i.fbe, 16             ; 2 uses
  %.tr1859 = trunc nuw nsw i64 %i.fbf to i32
  %i.fbg = shl nuw nsw i32 %.tr1859, 4
  %i.fbh = shl i32 %i.fbg, %i.v
  %i.fbi = sext i32 %i.fbh to i64
  %i.fbj = getelementptr inbounds [2 x i8], ptr %i.fat, i64 %i.fbi
  %i.fbk = load ptr, ptr %i.o, align 8, !tbaa !85
  %3 = getelementptr inbounds nuw i8, ptr %i.fbk, i64 173808
  %i.fbl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv1714.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.fbl, i64 %i.fbc
  %i.fbm = load ptr, ptr %4, align 8, !tbaa !169
  %i.fbn = getelementptr inbounds nuw [4 x i8], ptr %i.fau, i64 %indvars.iv1714.a
  %i.fbo = load i32, ptr %i.fbn, align 4, !tbaa !98
  %i.fbp = sext i32 %i.fbo to i64
  %i.fbq = getelementptr inbounds [64 x i8], ptr %i.fbm, i64 %i.fbp ; 4 uses
  br label %.preheader1506

.preheader1506:                                   ; preds = %bb.ni, %decode_cabac_residual_nondc.exit1098.3
  %i.fbr = phi i1 [ true, %bb.ni ], [ false, %decode_cabac_residual_nondc.exit1098.3 ]
  %indvars.iv1711 = phi i64 [ 0, %bb.ni ], [ 8, %decode_cabac_residual_nondc.exit1098.3 ]
  %.08371588 = phi ptr [ %i.fbj, %bb.ni ], [ %i.fmc, %decode_cabac_residual_nondc.exit1098.3 ] ; 2 uses
  %i.fbs = or disjoint i64 %indvars.iv1711, %i.fbf ; 5 uses
  %i.fbt = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.fbs
  %i.fbu = load i8, ptr %i.fbt, align 8, !tbaa !74
  %i.fbv = zext i8 %i.fbu to i64
  %i.fbw = getelementptr i8, ptr %i.faw, i64 %i.fbv ; 3 uses
  %i.fbx = getelementptr i8, ptr %i.fbw, i64 -1
  %i.fby = load i8, ptr %i.fbx, align 1, !tbaa !74
  %i.fbz = getelementptr i8, ptr %i.fbw, i64 -8
  %i.fca = load i8, ptr %i.fbz, align 1, !tbaa !74
  %.not1463 = icmp ne i8 %i.fby, 0
  %spec.select.i1176 = zext i1 %.not1463 to i32   ; 2 uses
  %.not1464 = icmp eq i8 %i.fca, 0
  %i.fcb = or disjoint i32 %spec.select.i1176, 2
  %.1.i1177 = select i1 %.not1464, i32 %spec.select.i1176, i32 %i.fcb
  %i.fcc = zext nneg i32 %.1.i1177 to i64
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.fcc
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fcd, i64 101 ; 2 uses
  %i.fcf = load i8, ptr %i.fce, align 1, !tbaa !74
  %i.fcg = zext i8 %i.fcf to i32                  ; 2 uses
  %i.fch = load i32, ptr %i.fax, align 4, !tbaa !141 ; 2 uses
  %i.fci = shl i32 %i.fch, 1
  %i.fcj = and i32 %i.fci, 384
  %i.fck = add nuw nsw i32 %i.fcj, %i.fcg
  %i.fcl = zext nneg i32 %i.fck to i64
  %i.fcm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fcl
  %i.fcn = load i8, ptr %i.fcm, align 1, !tbaa !74
  %i.fco = zext i8 %i.fcn to i32                  ; 2 uses
  %i.fcp = sub nsw i32 %i.fch, %i.fco             ; 2 uses
  %i.fcq = shl i32 %i.fcp, 17                     ; 2 uses
  %i.fcr = load i32, ptr %i.dml, align 16, !tbaa !142 ; 2 uses
  %i.fcs = icmp slt i32 %i.fcq, %i.fcr            ; 3 uses
  %i.fct = sext i1 %i.fcs to i32
  %i.fcu = select i1 %i.fcs, i32 %i.fcq, i32 0
  %i.fcv = sub nsw i32 %i.fcr, %i.fcu
  %i.fcw = select i1 %i.fcs, i32 %i.fco, i32 %i.fcp ; 2 uses
  %i.fcx = xor i32 %i.fct, %i.fcg                 ; 2 uses
  %i.fcy = sext i32 %i.fcx to i64
  %i.fcz = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fcy
  %i.fda = load i8, ptr %i.fcz, align 1, !tbaa !74
  store i8 %i.fda, ptr %i.fce, align 1, !tbaa !74
  %i.fdb = sext i32 %i.fcw to i64
  %i.fdc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fdb
  %i.fdd = load i8, ptr %i.fdc, align 1, !tbaa !74
  %i.fde = zext i8 %i.fdd to i32                  ; 2 uses
  %i.fdf = shl i32 %i.fcw, %i.fde                 ; 2 uses
  store i32 %i.fdf, ptr %i.fax, align 4, !tbaa !141
  %i.fdg = shl i32 %i.fcv, %i.fde                 ; 6 uses
  store i32 %i.fdg, ptr %i.dml, align 16, !tbaa !142
  %i.fdh = and i32 %i.fdg, 65535
  %.not.i.i1275 = icmp eq i32 %i.fdh, 0
  br i1 %.not.i.i1275, label %bb.nj, label %get_cabac.exit1276

bb.nj:                                            ; preds = %.preheader1506
  %i.fdi = add nsw i32 %i.fdg, -32768
  %i.fdj = xor i32 %i.fdi, %i.fdg
  %i.fdk = lshr exact i32 %i.fdj, 15
  %i.fdl = zext nneg i32 %i.fdk to i64
  %i.fdm = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fdl
  %i.fdn = load i8, ptr %i.fdm, align 1, !tbaa !74
  %i.fdo = zext i8 %i.fdn to i32
  %i.fdp = sub nsw i32 7, %i.fdo
  %i.fdq = load ptr, ptr %i.fay, align 16, !tbaa !143 ; 3 uses
  %i.fdr = load i8, ptr %i.fdq, align 1, !tbaa !74
  %i.fds = zext i8 %i.fdr to i32
  %i.fdt = shl nuw nsw i32 %i.fds, 9
  %i.fdu = getelementptr inbounds nuw i8, ptr %i.fdq, i64 1
  %i.fdv = load i8, ptr %i.fdu, align 1, !tbaa !74
  %i.fdw = zext i8 %i.fdv to i32
  %i.fdx = shl nuw nsw i32 %i.fdw, 1
  %i.fdy = or disjoint i32 %i.fdx, %i.fdt
  %i.fdz = add nsw i32 %i.fdy, -65535
  %i.fea = shl nsw i32 %i.fdz, %i.fdp
  %i.feb = add i32 %i.fea, %i.fdg                 ; 2 uses
  store i32 %i.feb, ptr %i.dml, align 16, !tbaa !142
  %i.fec = getelementptr inbounds nuw i8, ptr %i.fdq, i64 2
  store ptr %i.fec, ptr %i.fay, align 16, !tbaa !143
  br label %get_cabac.exit1276

get_cabac.exit1276:                               ; preds = %.preheader1506, %bb.nj
  %i.fed = phi i32 [ %i.fdg, %.preheader1506 ], [ %i.feb, %bb.nj ]
  %i.fee = and i32 %i.fcx, 1
  %i.fef = icmp eq i32 %i.fee, 0
  br i1 %i.fef, label %bb.nk, label %.split22.i1097

.split22.i1097:                                   ; preds = %get_cabac.exit1276
  %i.feg = trunc nuw nsw i64 %i.fbs to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.08371588, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.feg, ptr noundef nonnull %i.fav, ptr noundef %i.fbq, i32 noundef 15)
  %.pre1773 = load i32, ptr %i.fax, align 4, !tbaa !141
  %.pre1774 = load i32, ptr %i.dml, align 16, !tbaa !142
  br label %decode_cabac_residual_nondc.exit1098

bb.nk:                                            ; preds = %get_cabac.exit1276
  store i8 0, ptr %i.fbw, align 1, !tbaa !74
  br label %decode_cabac_residual_nondc.exit1098

decode_cabac_residual_nondc.exit1098:             ; preds = %.split22.i1097, %bb.nk
  %i.feh = phi i32 [ %.pre1774, %.split22.i1097 ], [ %i.fed, %bb.nk ] ; 2 uses
  %i.fei = phi i32 [ %.pre1773, %.split22.i1097 ], [ %i.fdf, %bb.nk ] ; 2 uses
  %i.fej = getelementptr inbounds [2 x i8], ptr %.08371588, i64 %i.fba ; 2 uses
  %i.fek = or disjoint i64 %i.fbs, 1              ; 2 uses
  %i.fel = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.fek
  %i.fem = load i8, ptr %i.fel, align 1, !tbaa !74
  %i.fen = zext i8 %i.fem to i64
  %i.feo = getelementptr i8, ptr %i.faw, i64 %i.fen ; 3 uses
  %i.fep = getelementptr i8, ptr %i.feo, i64 -1
  %i.feq = load i8, ptr %i.fep, align 1, !tbaa !74
  %i.fer = getelementptr i8, ptr %i.feo, i64 -8
  %i.fes = load i8, ptr %i.fer, align 1, !tbaa !74
  %.not1463.1 = icmp ne i8 %i.feq, 0
  %spec.select.i1176.1 = zext i1 %.not1463.1 to i32 ; 2 uses
  %.not1464.1 = icmp eq i8 %i.fes, 0
  %i.fet = or disjoint i32 %spec.select.i1176.1, 2
  %.1.i1177.1 = select i1 %.not1464.1, i32 %spec.select.i1176.1, i32 %i.fet
  %i.feu = zext nneg i32 %.1.i1177.1 to i64
  %i.fev = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.feu
  %i.few = getelementptr inbounds nuw i8, ptr %i.fev, i64 101 ; 2 uses
  %i.fex = load i8, ptr %i.few, align 1, !tbaa !74
  %i.fey = zext i8 %i.fex to i32                  ; 2 uses
  %i.fez = shl i32 %i.fei, 1
  %i.ffa = and i32 %i.fez, 384
  %i.ffb = add nuw nsw i32 %i.ffa, %i.fey
  %i.ffc = zext nneg i32 %i.ffb to i64
  %i.ffd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ffc
  %i.ffe = load i8, ptr %i.ffd, align 1, !tbaa !74
  %i.fff = zext i8 %i.ffe to i32                  ; 2 uses
  %i.ffg = sub nsw i32 %i.fei, %i.fff             ; 2 uses
  %i.ffh = shl i32 %i.ffg, 17                     ; 2 uses
  %i.ffi = icmp slt i32 %i.ffh, %i.feh            ; 3 uses
  %i.ffj = sext i1 %i.ffi to i32
  %i.ffk = select i1 %i.ffi, i32 %i.ffh, i32 0
  %i.ffl = sub nsw i32 %i.feh, %i.ffk
  %i.ffm = select i1 %i.ffi, i32 %i.fff, i32 %i.ffg ; 2 uses
  %i.ffn = xor i32 %i.ffj, %i.fey                 ; 2 uses
  %i.ffo = sext i32 %i.ffn to i64
  %i.ffp = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ffo
  %i.ffq = load i8, ptr %i.ffp, align 1, !tbaa !74
  store i8 %i.ffq, ptr %i.few, align 1, !tbaa !74
  %i.ffr = sext i32 %i.ffm to i64
  %i.ffs = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ffr
  %i.fft = load i8, ptr %i.ffs, align 1, !tbaa !74
  %i.ffu = zext i8 %i.fft to i32                  ; 2 uses
  %i.ffv = shl i32 %i.ffm, %i.ffu                 ; 2 uses
  store i32 %i.ffv, ptr %i.fax, align 4, !tbaa !141
  %i.ffw = shl i32 %i.ffl, %i.ffu                 ; 6 uses
  store i32 %i.ffw, ptr %i.dml, align 16, !tbaa !142
  %i.ffx = and i32 %i.ffw, 65535
  %.not.i.i1275.1 = icmp eq i32 %i.ffx, 0
  br i1 %.not.i.i1275.1, label %bb.nl, label %get_cabac.exit1276.1

bb.nl:                                            ; preds = %decode_cabac_residual_nondc.exit1098
  %i.ffy = add nsw i32 %i.ffw, -32768
  %i.ffz = xor i32 %i.ffy, %i.ffw
  %i.fga = lshr exact i32 %i.ffz, 15
  %i.fgb = zext nneg i32 %i.fga to i64
  %i.fgc = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fgb
  %i.fgd = load i8, ptr %i.fgc, align 1, !tbaa !74
  %i.fge = zext i8 %i.fgd to i32
  %i.fgf = sub nsw i32 7, %i.fge
  %i.fgg = load ptr, ptr %i.fay, align 16, !tbaa !143 ; 3 uses
  %i.fgh = load i8, ptr %i.fgg, align 1, !tbaa !74
  %i.fgi = zext i8 %i.fgh to i32
  %i.fgj = shl nuw nsw i32 %i.fgi, 9
  %i.fgk = getelementptr inbounds nuw i8, ptr %i.fgg, i64 1
  %i.fgl = load i8, ptr %i.fgk, align 1, !tbaa !74
  %i.fgm = zext i8 %i.fgl to i32
  %i.fgn = shl nuw nsw i32 %i.fgm, 1
  %i.fgo = or disjoint i32 %i.fgn, %i.fgj
  %i.fgp = add nsw i32 %i.fgo, -65535
  %i.fgq = shl nsw i32 %i.fgp, %i.fgf
  %i.fgr = add i32 %i.fgq, %i.ffw                 ; 2 uses
  store i32 %i.fgr, ptr %i.dml, align 16, !tbaa !142
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.fgg, i64 2
  store ptr %i.fgs, ptr %i.fay, align 16, !tbaa !143
  br label %get_cabac.exit1276.1

get_cabac.exit1276.1:                             ; preds = %bb.nl, %decode_cabac_residual_nondc.exit1098
  %i.fgt = phi i32 [ %i.fgr, %bb.nl ], [ %i.ffw, %decode_cabac_residual_nondc.exit1098 ]
  %i.fgu = and i32 %i.ffn, 1
  %i.fgv = icmp eq i32 %i.fgu, 0
  br i1 %i.fgv, label %bb.nm, label %.split22.i1097.1

.split22.i1097.1:                                 ; preds = %get_cabac.exit1276.1
  %i.fgw = trunc nuw nsw i64 %i.fek to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.fej, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.fgw, ptr noundef nonnull %i.fav, ptr noundef %i.fbq, i32 noundef 15)
  %.pre1775 = load i32, ptr %i.fax, align 4, !tbaa !141
  %.pre1776 = load i32, ptr %i.dml, align 16, !tbaa !142
  br label %decode_cabac_residual_nondc.exit1098.1

bb.nm:                                            ; preds = %get_cabac.exit1276.1
end_hunk_2
