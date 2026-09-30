Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 125
begin_hunk_0_@ff_mpv_encode_picture:bb.a
bb.fn:                                            ; preds = %bb.fm
  %i.bdt = load ptr, ptr %i.asu, align 8, !tbaa !179
  %i.bdu = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bdt, i32 noundef 256) #14
  %i.bdv = load ptr, ptr %i.asv, align 16, !tbaa !179
  %i.bdw = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bdv, i32 noundef 256) #14
  %i.bdx = load i32, ptr %i.asd, align 8, !tbaa !421
  %..i = call i32 @llvm.smax.i32(i32 %i.bdx, i32 %i.bdu)
  %spec.select386.i = call i32 @llvm.smax.i32(i32 %..i, i32 %i.bdw)
  store i32 %spec.select386.i, ptr %i.asd, align 8, !tbaa !421
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.bdy = load i32, ptr %i.asw, align 16, !tbaa !422
  %.not364.i = icmp eq i32 %i.bdy, 0
  %i.bdz = select i1 %.not364.i, i32 1, i32 2
  call void @ff_fix_long_p_mvs(ptr noundef nonnull %i.f, i32 noundef %i.bdz) #14
  %i.bea = load ptr, ptr %i.ast, align 16, !tbaa !173
  %i.beb = load i32, ptr %i.asd, align 8, !tbaa !421
  %i.bec = load i32, ptr %i.asw, align 16, !tbaa !422
  %i.bed = icmp ne i32 %i.bec, 0
  %i.bee = zext i1 %i.bed to i32
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.bea, i32 noundef %i.beb, i32 noundef 2, i32 noundef %i.bee) #14
  %i.bef = load ptr, ptr %i.arc, align 8, !tbaa !56
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 64
  %i.beh = load i32, ptr %i.beg, align 8, !tbaa !108
  %i.bei = and i32 %i.beh, 536870912
  %.not365.i = icmp eq i32 %i.bei, 0
  br i1 %.not365.i, label %.loopexit.i292, label %.preheader393.i

.preheader393.i:                                  ; preds = %bb.fo
  %i.bej = load ptr, ptr %i.asx, align 16, !tbaa !90
  %i.bek = load ptr, ptr %i.asu, align 8, !tbaa !179
  %i.bel = load i32, ptr %i.asd, align 8, !tbaa !421
  %i.bem = load i32, ptr %i.asw, align 16, !tbaa !422
  %i.ben = icmp ne i32 %i.bem, 0
  %i.beo = zext i1 %i.ben to i32
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bej, i32 noundef 0, ptr noundef %i.bek, i32 noundef %i.bel, i32 noundef 256, i32 noundef %i.beo) #14
  %i.bep = load ptr, ptr %i.asx, align 16, !tbaa !90
  %i.beq = load ptr, ptr %i.asy, align 16, !tbaa !179
  %i.ber = load i32, ptr %i.asd, align 8, !tbaa !421
  %i.bes = load i32, ptr %i.asw, align 16, !tbaa !422
  %i.bet = icmp ne i32 %i.bes, 0
  %i.beu = zext i1 %i.bet to i32
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bep, i32 noundef 1, ptr noundef %i.beq, i32 noundef %i.ber, i32 noundef 256, i32 noundef %i.beu) #14
  %i.bev = load ptr, ptr %i.asz, align 8, !tbaa !90
  %i.bew = load ptr, ptr %i.ata, align 8, !tbaa !179
  %i.bex = load i32, ptr %i.asd, align 8, !tbaa !421
  %i.bey = load i32, ptr %i.asw, align 16, !tbaa !422
  %i.bez = icmp ne i32 %i.bey, 0
  %i.bfa = zext i1 %i.bez to i32
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bev, i32 noundef 0, ptr noundef %i.bew, i32 noundef %i.bex, i32 noundef 256, i32 noundef %i.bfa) #14
  %i.bfb = load ptr, ptr %i.asz, align 8, !tbaa !90
  %i.bfc = load ptr, ptr %i.asv, align 16, !tbaa !179
  %i.bfd = load i32, ptr %i.asd, align 8, !tbaa !421
  %i.bfe = load i32, ptr %i.asw, align 16, !tbaa !422
  %i.bff = icmp ne i32 %i.bfe, 0
  %i.bfg = zext i1 %i.bff to i32
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bfb, i32 noundef 1, ptr noundef %i.bfc, i32 noundef %i.bfd, i32 noundef 256, i32 noundef %i.bfg) #14
  br label %.loopexit.i292

bb.fp:                                            ; preds = %bb.fl
  %i.bfh = load ptr, ptr %i.asb, align 8, !tbaa !174
  %i.bfi = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bfh, i32 noundef 32) #14
  %i.bfj = load ptr, ptr %i.asc, align 8, !tbaa !176
  %i.bfk = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bfj, i32 noundef 128) #14
  %i.bfl = call i32 @llvm.smax.i32(i32 %i.bfi, i32 %i.bfk)
  store i32 %i.bfl, ptr %i.asd, align 8, !tbaa !421
  %i.bfm = load ptr, ptr %i.ase, align 16, !tbaa !175
  %i.bfn = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bfm, i32 noundef 64) #14
  %i.bfo = load ptr, ptr %i.asf, align 16, !tbaa !177
  %i.bfp = call i32 @ff_get_best_fcode(ptr noundef nonnull %i.f, ptr noundef %i.bfo, i32 noundef 128) #14
  %i.bfq = call i32 @llvm.smax.i32(i32 %i.bfn, i32 %i.bfp)
  store i32 %i.bfq, ptr %i.asg, align 4, !tbaa !423
  %i.bfr = load ptr, ptr %i.asb, align 8, !tbaa !174
  %i.bfs = load i32, ptr %i.asd, align 8, !tbaa !421
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.bfr, i32 noundef %i.bfs, i32 noundef 32, i32 noundef 1) #14
  %i.bft = load ptr, ptr %i.ase, align 16, !tbaa !175
  %i.bfu = load i32, ptr %i.asg, align 4, !tbaa !423
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.bft, i32 noundef %i.bfu, i32 noundef 64, i32 noundef 1) #14
  %i.bfv = load ptr, ptr %i.asc, align 8, !tbaa !176
  %i.bfw = load i32, ptr %i.asd, align 8, !tbaa !421
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.bfv, i32 noundef %i.bfw, i32 noundef 128, i32 noundef 1) #14
  %i.bfx = load ptr, ptr %i.asf, align 16, !tbaa !177
  %i.bfy = load i32, ptr %i.asg, align 4, !tbaa !423
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.bfx, i32 noundef %i.bfy, i32 noundef 128, i32 noundef 1) #14
  %i.bfz = load ptr, ptr %i.arc, align 8, !tbaa !56
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 64
  %i.bgb = load i32, ptr %i.bga, align 8, !tbaa !108
  %i.bgc = and i32 %i.bgb, 536870912
  %.not361.i = icmp eq i32 %i.bgc, 0
  br i1 %.not361.i, label %.loopexit.i292, label %.preheader396.i

.preheader396.i:                                  ; preds = %bb.fp
  %i.bgd = load ptr, ptr %i.ash, align 16, !tbaa !90
  %i.bge = load ptr, ptr %i.asi, align 16, !tbaa !179
  %i.bgf = load i32, ptr %i.asd, align 8, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgd, i32 noundef 0, ptr noundef %i.bge, i32 noundef %i.bgf, i32 noundef 2560, i32 noundef 1) #14
  %i.bgg = load ptr, ptr %i.ash, align 16, !tbaa !90
  %i.bgh = load ptr, ptr %i.asj, align 8, !tbaa !179
  %i.bgi = load i32, ptr %i.asd, align 8, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgg, i32 noundef 1, ptr noundef %i.bgh, i32 noundef %i.bgi, i32 noundef 2560, i32 noundef 1) #14
  %i.bgj = load ptr, ptr %i.ask, align 8, !tbaa !90
  %i.bgk = load ptr, ptr %i.asl, align 16, !tbaa !179
  %i.bgl = load i32, ptr %i.asd, align 8, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgj, i32 noundef 0, ptr noundef %i.bgk, i32 noundef %i.bgl, i32 noundef 2560, i32 noundef 1) #14
  %i.bgm = load ptr, ptr %i.ask, align 8, !tbaa !90
  %i.bgn = load ptr, ptr %i.asm, align 8, !tbaa !179
  %i.bgo = load i32, ptr %i.asd, align 8, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgm, i32 noundef 1, ptr noundef %i.bgn, i32 noundef %i.bgo, i32 noundef 2560, i32 noundef 1) #14
  %i.bgp = load ptr, ptr %i.asn, align 16, !tbaa !90
  %i.bgq = load ptr, ptr %i.aso, align 16, !tbaa !179
  %i.bgr = load i32, ptr %i.asg, align 4, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgp, i32 noundef 0, ptr noundef %i.bgq, i32 noundef %i.bgr, i32 noundef 3072, i32 noundef 1) #14
  %i.bgs = load ptr, ptr %i.asn, align 16, !tbaa !90
  %i.bgt = load ptr, ptr %i.asp, align 8, !tbaa !179
  %i.bgu = load i32, ptr %i.asg, align 4, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgs, i32 noundef 1, ptr noundef %i.bgt, i32 noundef %i.bgu, i32 noundef 3072, i32 noundef 1) #14
  %i.bgv = load ptr, ptr %i.asq, align 8, !tbaa !90
  %i.bgw = load ptr, ptr %i.asr, align 16, !tbaa !179
  %i.bgx = load i32, ptr %i.asg, align 4, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgv, i32 noundef 0, ptr noundef %i.bgw, i32 noundef %i.bgx, i32 noundef 3072, i32 noundef 1) #14
  %i.bgy = load ptr, ptr %i.asq, align 8, !tbaa !90
  %i.bgz = load ptr, ptr %i.ass, align 8, !tbaa !179
  %i.bha = load i32, ptr %i.asg, align 4, !tbaa !54
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef %i.bgy, i32 noundef 1, ptr noundef %i.bgz, i32 noundef %i.bha, i32 noundef 3072, i32 noundef 1) #14
  br label %.loopexit.i292

.loopexit.i292:                                   ; preds = %.preheader396.i, %bb.fp, %.preheader393.i, %bb.fo, %bb.fl, %bb.fk
  %i.bhb = call fastcc i32 @estimate_qp(ptr noundef nonnull %i.f, i32 noundef 0)
  %i.bhc = icmp slt i32 %i.bhb, 0
  br i1 %i.bhc, label %encode_picture.exit, label %bb.fq

bb.fq:                                            ; preds = %.loopexit.i292
  %i.bhd = load i32, ptr %i.arn, align 8, !tbaa !220 ; 5 uses
  %i.bhe = icmp slt i32 %i.bhd, 3
  br i1 %i.bhe, label %bb.fr, label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  %i.bhf = load i32, ptr %i.atb, align 4, !tbaa !84
  %i.bhg = icmp slt i32 %i.bhf, 129
  br i1 %i.bhg, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.bhh = load i32, ptr %i.aex, align 16, !tbaa !217
  %i.bhi = icmp eq i32 %i.bhh, 1
  br i1 %i.bhi, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.bhj = load ptr, ptr %i.arc, align 8, !tbaa !56
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 64
  %i.bhl = load i32, ptr %i.bhk, align 8, !tbaa !108
  %i.bhm = and i32 %i.bhl, 2
  %.not366.i = icmp eq i32 %i.bhm, 0
  br i1 %.not366.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 3, ptr %i.arn, align 8, !tbaa !220
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %i.bhn = phi i32 [ 3, %bb.fu ], [ %i.bhd, %bb.ft ], [ %i.bhd, %bb.fs ], [ %i.bhd, %bb.fr ], [ %i.bhd, %bb.fq ] ; 2 uses
  %i.bho = load i32, ptr %i.aqy, align 8, !tbaa !88
  %i.bhp = icmp eq i32 %i.bho, 3
  br i1 %i.bhp, label %bb.fw, label %bb.gb

bb.fw:                                            ; preds = %bb.fv
  %i.bhq = load ptr, ptr %i.arc, align 8, !tbaa !56
  %i.bhr = add nsw i32 %i.bhn, 7
  %i.bhs = sdiv i32 %i.bhr, %i.bhn
  %i.bht = trunc i32 %i.bhs to i16
  %i.bhu = call i32 @ff_check_codec_matrices(ptr noundef %i.bhq, i32 noundef 5, i16 noundef zeroext %i.bht, i16 noundef zeroext -1) #14
  %i.bhv = icmp slt i32 %i.bhu, 0
  br i1 %i.bhv, label %encode_picture.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bhw = load i32, ptr %i.aqz, align 16, !tbaa !106
  %.not367.i = icmp eq i32 %i.bhw, 107
  br i1 %.not367.i, label %.preheader.i298, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bhx = load ptr, ptr %i.arc, align 8, !tbaa !56 ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 288
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !164 ; 2 uses
  %.not368.i = icmp eq ptr %i.bhz, null
  %spec.select.i = select i1 %.not368.i, ptr @ff_mpeg1_default_intra_matrix, ptr %i.bhz ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhx, i64 304
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !424 ; 2 uses
  %.not369.i = icmp eq ptr %i.bib, null
  %.1321.i = select i1 %.not369.i, ptr %spec.select.i, ptr %i.bib
  %i.bic = load i32, ptr %i.arn, align 8, !tbaa !220 ; 2 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %bb.fy
  %indvars.iv466.i = phi i64 [ 1, %bb.fy ], [ %indvars.iv.next467.i, %bb.fz ] ; 4 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %i.atc, i64 %indvars.iv466.i
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !52
  %i.bif = getelementptr inbounds nuw [2 x i8], ptr %.1321.i, i64 %indvars.iv466.i
  %i.big = load i16, ptr %i.bif, align 2, !tbaa !53
  %i.bih = zext i16 %i.big to i32
  %i.bii = mul nsw i32 %i.bic, %i.bih
  %i.bij = ashr i32 %i.bii, 3
  %4 = call i32 @llvm.smax.i32(i32 %i.bij, i32 0)
  %.0.i375387.i = call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.bik = trunc nuw nsw i32 %.0.i375387.i to i16
  %i.bil = zext i8 %i.bie to i64                  ; 2 uses
  %i.bim = getelementptr inbounds nuw [2 x i8], ptr %i.atd, i64 %i.bil
  store i16 %i.bik, ptr %i.bim, align 2, !tbaa !53
  %i.bin = getelementptr inbounds nuw [2 x i8], ptr %spec.select.i, i64 %indvars.iv466.i
  %i.bio = load i16, ptr %i.bin, align 2, !tbaa !53
  %i.bip = zext i16 %i.bio to i32
  %i.biq = mul nsw i32 %i.bic, %i.bip
  %i.bir = ashr i32 %i.biq, 3
  %5 = call i32 @llvm.smax.i32(i32 %i.bir, i32 0)
  %.0.i388.i = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.bis = trunc nuw nsw i32 %.0.i388.i to i16
  %i.bit = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %i.bil
  store i16 %i.bis, ptr %i.bit, align 2, !tbaa !53
  %indvars.iv.next467.i = add nuw nsw i64 %indvars.iv466.i, 1 ; 2 uses
  %exitcond469.not.i = icmp eq i64 %indvars.iv.next467.i, 64
  br i1 %exitcond469.not.i, label %bb.ga, label %bb.fz, !llvm.loop !377

.preheader.i298:                                  ; preds = %bb.fx, %.preheader.i298.1
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i.1, %.preheader.i298.1 ], [ 1, %bb.fx ] ; 5 uses
  %i.biu = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv470.i
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !52
  %i.biw = zext i8 %i.biv to i64
  %i.bix = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.biw
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !52
  %i.biz = getelementptr inbounds nuw i8, ptr @sp5x_qscale_five_quant_table, i64 %indvars.iv470.i
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !52
  %i.bjb = zext i8 %i.bja to i16
  %i.bjc = zext i8 %i.biy to i64                  ; 2 uses
  %i.bjd = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %i.bjc
  store i16 %i.bjb, ptr %i.bjd, align 2, !tbaa !53
  %i.bje = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sp5x_qscale_five_quant_table, i64 64), i64 %indvars.iv470.i
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !52
  %i.bjg = zext i8 %i.bjf to i16
  %i.bjh = getelementptr inbounds nuw [2 x i8], ptr %i.atd, i64 %i.bjc
  store i16 %i.bjg, ptr %i.bjh, align 2, !tbaa !53
  %indvars.iv.next471.i = add nuw nsw i64 %indvars.iv470.i, 1 ; 4 uses
  %exitcond473.not.i = icmp eq i64 %indvars.iv.next471.i, 64
  br i1 %exitcond473.not.i, label %bb.ga, label %.preheader.i298.1

.preheader.i298.1:                                ; preds = %.preheader.i298
  %i.bji = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.next471.i
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !52
  %i.bjk = zext i8 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.bjk
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !52
  %i.bjn = getelementptr inbounds nuw i8, ptr @sp5x_qscale_five_quant_table, i64 %indvars.iv.next471.i
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !52
  %i.bjp = zext i8 %i.bjo to i16
  %i.bjq = zext i8 %i.bjm to i64                  ; 2 uses
  %i.bjr = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %i.bjq
  store i16 %i.bjp, ptr %i.bjr, align 2, !tbaa !53
  %i.bjs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sp5x_qscale_five_quant_table, i64 64), i64 %indvars.iv.next471.i
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !52
  %i.bju = zext i8 %i.bjt to i16
  %i.bjv = getelementptr inbounds nuw [2 x i8], ptr %i.atd, i64 %i.bjq
  store i16 %i.bju, ptr %i.bjv, align 2, !tbaa !53
  %indvars.iv.next471.i.1 = add nuw nsw i64 %indvars.iv470.i, 2
  br label %.preheader.i298

bb.ga:                                            ; preds = %.preheader.i298, %bb.fz
  %storemerge635 = phi <2 x ptr> [ <ptr @ff_mpeg12_dc_scale_table, ptr @ff_mpeg12_dc_scale_table>, %bb.fz ], [ <ptr @encode_picture.y, ptr @encode_picture.c>, %.preheader.i298 ]
  %storemerge505 = phi i16 [ 8, %bb.fz ], [ 13, %.preheader.i298 ]
  %storemerge = phi i16 [ 8, %bb.fz ], [ 14, %.preheader.i298 ]
  store <2 x ptr> %storemerge635, ptr %i.atf, align 16, !tbaa !90
  store i16 %storemerge505, ptr %i.ate, align 16, !tbaa !53
  store i16 %storemerge, ptr %i.atd, align 16, !tbaa !53
  %i.bjw = load ptr, ptr %i.atg, align 16, !tbaa !160
  %i.bjx = load ptr, ptr %i.ath, align 8, !tbaa !161
  %i.bjy = load i32, ptr %i.ati, align 8, !tbaa !165
  call void @ff_convert_matrix(ptr noundef nonnull %i.f, ptr noundef %i.bjw, ptr noundef %i.bjx, ptr noundef nonnull %i.ate, i32 noundef %i.bjy, i32 noundef 8, i32 noundef 8, i32 noundef 1)
  %i.bjz = load ptr, ptr %i.atj, align 8, !tbaa !162
  %i.bka = load ptr, ptr %i.atk, align 16, !tbaa !163
  %i.bkb = load i32, ptr %i.ati, align 8, !tbaa !165
  call void @ff_convert_matrix(ptr noundef nonnull %i.f, ptr noundef %i.bjz, ptr noundef %i.bka, ptr noundef nonnull %i.atd, i32 noundef %i.bkb, i32 noundef 8, i32 noundef 8, i32 noundef 1)
  store i32 8, ptr %i.arn, align 8, !tbaa !220
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fv
  %i.bkc = load i32, ptr %i.aex, align 16, !tbaa !217 ; 2 uses
  %.not514.i = icmp eq i32 %i.bkc, 1
  %i.bkd = load ptr, ptr %i.aey, align 16, !tbaa !201
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !190 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 276 ; 2 uses
  %i.bkg = load i32, ptr %i.bkf, align 4, !tbaa !425 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bke, i64 120
  br i1 %.not514.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bki = and i32 %i.bkg, -3
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.bkj = or i32 %i.bkg, 2
  store i32 0, ptr %i.k, align 4, !tbaa !388
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.sink = phi i32 [ %i.bkj, %bb.gd ], [ %i.bki, %bb.gc ]
  store i32 %.sink, ptr %i.bkf, align 4, !tbaa !425
  store i32 %i.bkc, ptr %i.bkh, align 8, !tbaa !198
  store i32 0, ptr %i.atl, align 8, !tbaa !226
  store i32 0, ptr %i.atm, align 4, !tbaa !227
  %i.bkk = load ptr, ptr %i.ato, align 16, !tbaa !60
  %i.bkl = load ptr, ptr %i.atp, align 8, !tbaa !223
  %i.bkm = ptrtoint ptr %i.bkk to i64
  %i.bkn = ptrtoint ptr %i.bkl to i64
  %i.bko = sub i64 %i.bkm, %i.bkn
  %i.bkp = load i32, ptr %i.atq, align 4, !tbaa !58
  %.tr.i.i = trunc i64 %i.bko to i32
  %i.bkq = shl i32 %.tr.i.i, 3
  %reass.sub = sub i32 %i.bkq, %i.bkp
  %i.bkr = add i32 %reass.sub, 32
  store i32 %i.bkr, ptr %i.atr, align 16, !tbaa !228
  %i.bks = load ptr, ptr %i.ats, align 8, !tbaa !135
  %i.bkt = call i32 %i.bks(ptr noundef nonnull %i.f) #14, !inline_history !371
  %i.bku = icmp slt i32 %i.bkt, 0
  br i1 %i.bku, label %encode_picture.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bkv = load ptr, ptr %i.ato, align 16, !tbaa !60
  %i.bkw = load ptr, ptr %i.atp, align 8, !tbaa !223
  %i.bkx = ptrtoint ptr %i.bkv to i64
  %i.bky = ptrtoint ptr %i.bkw to i64
  %i.bkz = sub i64 %i.bkx, %i.bky
  %i.bla = load i32, ptr %i.atq, align 4, !tbaa !58
  %.tr.i376.i = trunc i64 %i.bkz to i32
  %i.blb = shl i32 %.tr.i376.i, 3
  %i.blc = load i32, ptr %i.atr, align 16, !tbaa !228
  %i.bld = add i32 %i.bla, %i.blc
  %reass.sub387 = sub i32 %i.blb, %i.bld
  %i.ble = add i32 %reass.sub387, 32
  store i32 %i.ble, ptr %i.att, align 4, !tbaa !426
  br i1 %i.bbh, label %.lr.ph424.i, label %._crit_edge425.i

.lr.ph424.i:                                      ; preds = %bb.gf
  %wide.trip.count477.i = zext nneg i32 %i.avf to i64 ; 2 uses
  %.pre491.i = load i32, ptr %i.aex, align 16, !tbaa !217 ; 3 uses
  %i.blf = load <2 x i32>, ptr %i.asd, align 8, !tbaa !54 ; 3 uses
  %.pre494.i = load i32, ptr %i.arn, align 8, !tbaa !220 ; 3 uses
  %i.blg = load <2 x i32>, ptr %i.arm, align 16, !tbaa !54 ; 3 uses
  %.pre497.i = load i32, ptr %i.atu, align 16, !tbaa !427 ; 3 uses
  %.pre498.i = load i32, ptr %i.atv, align 4, !tbaa !139 ; 3 uses
  %.pre499.i = load i32, ptr %i.atw, align 4, !tbaa !229 ; 3 uses
  %i.blh = add nsw i64 %wide.trip.count477.i, -1  ; 3 uses
  %xtraiter695 = and i64 %i.blh, 1
  %i.bli = icmp eq i32 %i.avf, 2
  br i1 %i.bli, label %.epil.preheader694, label %.lr.ph424.i.new

.lr.ph424.i.new:                                  ; preds = %.lr.ph424.i
  %unroll_iter699 = and i64 %i.blh, -2
  br label %bb.gg

._crit_edge425.i:                                 ; preds = %bb.gf
  %i.blj = load ptr, ptr %i.arc, align 8, !tbaa !56 ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 672
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !416
  %i.blm = call i32 %i.bll(ptr noundef %i.blj, ptr noundef nonnull @encode_thread, ptr noundef nonnull %i.arq, ptr noundef null, i32 noundef %i.avf, i32 noundef 8) #14, !inline_history !371 ; 0 uses
  br label %encode_picture.exit

.lr.ph428.i.unr-lcssa:                            ; preds = %bb.gg
  %lcmp.mod697.not = icmp eq i64 %xtraiter695, 0
  br i1 %lcmp.mod697.not, label %.lr.ph428.i, label %.epil.preheader694

.epil.preheader694:                               ; preds = %.lr.ph428.i.unr-lcssa, %.lr.ph424.i
  %indvars.iv474.i.epil.init = phi i64 [ 1, %.lr.ph424.i ], [ %indvars.iv.next475.i.1, %.lr.ph428.i.unr-lcssa ]
  %lcmp.mod698 = trunc i64 %i.blh to i1
  call void @llvm.assume(i1 %lcmp.mod698)
  %i.bln = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %indvars.iv474.i.epil.init
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !52 ; 7 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 1280
  store i32 %.pre491.i, ptr %i.blp, align 16, !tbaa !217
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blo, i64 5896
  store <2 x i32> %i.blf, ptr %i.blq, align 8, !tbaa !54
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blo, i64 1272
  store i32 %.pre494.i, ptr %i.blr, align 8, !tbaa !220
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blo, i64 4416
  store <2 x i32> %i.blg, ptr %i.bls, align 16, !tbaa !54
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blo, i64 3824
  store i32 %.pre497.i, ptr %i.blt, align 16, !tbaa !427
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blo, i64 3868
  store i32 %.pre498.i, ptr %i.blu, align 4, !tbaa !139
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blo, i64 6444
  store i32 %.pre499.i, ptr %i.blv, align 4, !tbaa !229
  br label %.lr.ph428.i

.lr.ph428.i:                                      ; preds = %.lr.ph428.i.unr-lcssa, %.epil.preheader694
  %i.blw = load ptr, ptr %i.arc, align 8, !tbaa !56 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 672
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !416
  %i.blz = call i32 %i.bly(ptr noundef %i.blw, ptr noundef nonnull @encode_thread, ptr noundef nonnull %i.arq, ptr noundef null, i32 noundef %i.avf, i32 noundef 8) #14, !inline_history !371 ; 0 uses
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gg, %.lr.ph424.i.new
  %indvars.iv474.i = phi i64 [ 1, %.lr.ph424.i.new ], [ %indvars.iv.next475.i.1, %bb.gg ] ; 3 uses
  %niter700 = phi i64 [ 0, %.lr.ph424.i.new ], [ %niter700.next.1, %bb.gg ]
  %i.bma = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %indvars.iv474.i
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !52 ; 7 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 1280
  store i32 %.pre491.i, ptr %i.bmc, align 16, !tbaa !217
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmb, i64 5896
  store <2 x i32> %i.blf, ptr %i.bmd, align 8, !tbaa !54
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmb, i64 1272
  store i32 %.pre494.i, ptr %i.bme, align 8, !tbaa !220
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bmb, i64 4416
  store <2 x i32> %i.blg, ptr %i.bmf, align 16, !tbaa !54
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmb, i64 3824
  store i32 %.pre497.i, ptr %i.bmg, align 16, !tbaa !427
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmb, i64 3868
  store i32 %.pre498.i, ptr %i.bmh, align 4, !tbaa !139
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmb, i64 6444
  store i32 %.pre499.i, ptr %i.bmi, align 4, !tbaa !229
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %indvars.iv474.i
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
end_hunk_0
