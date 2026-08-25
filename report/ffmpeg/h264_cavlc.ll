Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cavlc?download=true
inline.NumInlined: 84
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_h264_decode_mb_cavlc:bb.a
  br i1 %.not682.2, label %bb.dv, label %.split.3

bb.dv:                                            ; preds = %.split.2
  %i.aqa = and i32 %i.akk, %i.apy
  %.not683.2 = icmp eq i32 %i.aqa, 0
  br i1 %.not683.2, label %.split.3.sink.split, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aqb = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.aqc = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.aqd = lshr i32 %i.aqb, 3
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 1, !tbaa !15
  %i.aqh = call i32 @llvm.bswap.i32(i32 %i.aqg)
  %i.aqi = and i32 %i.aqb, 7
  %i.aqj = shl i32 %i.aqh, %i.aqi
  %i.aqk = lshr i32 %i.aqj, 23
  %i.aql = zext nneg i32 %i.aqk to i64            ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !15
  %i.aqo = zext i8 %i.aqn to i32
  %i.aqp = add i32 %i.aqb, %i.aqo
  store i32 %i.aqp, ptr %i.st, align 16, !tbaa !95
  %i.aqq = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.aql
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !15
  %i.aqs = zext i8 %i.aqr to i32                  ; 3 uses
  %.not684.2 = icmp ugt i32 %i.aki, %i.aqs
  br i1 %.not684.2, label %.split.3.sink.split, label %bb.ea

.split.3.sink.split:                              ; preds = %bb.dv, %bb.dw
  %.sink1639 = phi i32 [ %i.aqs, %bb.dw ], [ -1, %bb.dv ]
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 %.sink1639, ptr %i.aqt, align 8, !tbaa !94
  br label %.split.3

.split.3:                                         ; preds = %.split.3.sink.split, %.split.2
  %i.aqu = load i16, ptr %i.aka, align 2, !tbaa !108
  %i.aqv = zext i16 %i.aqu to i32                 ; 2 uses
  %i.aqw = and i32 %i.aqv, 256
  %.not682.3 = icmp eq i32 %i.aqw, 0
  br i1 %.not682.3, label %bb.dx, label %.split1239.us

bb.dx:                                            ; preds = %.split.3
  %i.aqx = and i32 %i.akk, %i.aqv
  %.not683.3 = icmp eq i32 %i.aqx, 0
  br i1 %.not683.3, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aqy = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.aqz = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.ara = lshr i32 %i.aqy, 3
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arb
  %i.ard = load i32, ptr %i.arc, align 1, !tbaa !15
  %i.are = call i32 @llvm.bswap.i32(i32 %i.ard)
  %i.arf = and i32 %i.aqy, 7
  %i.arg = shl i32 %i.are, %i.arf
  %i.arh = lshr i32 %i.arg, 23
  %i.ari = zext nneg i32 %i.arh to i64            ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ari
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !15
  %i.arl = zext i8 %i.ark to i32
  %i.arm = add i32 %i.aqy, %i.arl
  store i32 %i.arm, ptr %i.st, align 16, !tbaa !95
  %i.arn = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ari
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !15
  %i.arp = zext i8 %i.aro to i32                  ; 3 uses
  %.not684.3 = icmp ugt i32 %i.aki, %i.arp
  br i1 %.not684.3, label %.thread1040.3, label %bb.ea

.thread1040.3:                                    ; preds = %bb.dy
  %i.arq = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !94
  br label %.split1239.us

bb.dz:                                            ; preds = %bb.dx
  %i.arr = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 -1, ptr %i.arr, align 4, !tbaa !94
  br label %.split1239.us

bb.ea:                                            ; preds = %bb.dy, %bb.dw, %bb.du, %bb.ds
  %.lcssa1331 = phi i32 [ %i.aoz, %bb.ds ], [ %i.apv, %bb.du ], [ %i.aqs, %bb.dw ], [ %i.arp, %bb.dy ]
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !97
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.art, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.lcssa1331) #9
  br label %.thread1054

.split1239.us:                                    ; preds = %.split.3, %.thread1040.3, %bb.dz, %.split.us1240.3, %.thread1040.us1244.3, %bb.dq, %.split.us.3, %.thread1040.us.3, %bb.dl
  %indvars.iv.next1401 = add nuw nsw i64 %indvars.iv1400, 1 ; 2 uses
  %exitcond1404.not.a = icmp eq i64 %indvars.iv.next1401, %wide.trip.count1403
  br i1 %exitcond1404.not.a, label %._crit_edge, label %bb.di, !llvm.loop !140

._crit_edge:                                      ; preds = %.split1239.us, %.loopexit1181
  %.not674 = icmp eq i32 %i.i, 0
  br i1 %.not674, label %bb.eb, label %get_dct8x8_allowed.exit

get_dct8x8_allowed.exit:                          ; preds = %._crit_edge
  %i.aru = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 72
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !141
  %.not.i = icmp eq i32 %i.arw, 0
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !15
  %.1648 = select i1 %.not.i, i64 103584372001603952, i64 31525678435270768
  %i.arz = and i64 %i.ary, %.1648
  %.0.in.i = icmp eq i64 %i.arz, 0
  %.0.i714 = zext i1 %.0.in.i to i32
  br label %bb.eb

bb.eb:                                            ; preds = %get_dct8x8_allowed.exit, %._crit_edge
  %.0613 = phi i32 [ %.0.i714, %get_dct8x8_allowed.exit ], [ 0, %._crit_edge ]
  br i1 %.not1307, label %._crit_edge1256, label %.preheader1178.lr.ph

.preheader1178.lr.ph:                             ; preds = %bb.eb
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 28496 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %1, i64 20952
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 20932 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 31032 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 31048 ; 2 uses
  %wide.trip.count1413 = zext i32 %i.ajm to i64
  br label %.preheader1178

.preheader1178:                                   ; preds = %.preheader1178.lr.ph, %bb.fm
  %indvars.iv1410 = phi i64 [ 0, %.preheader1178.lr.ph ], [ %indvars.iv.next1411, %bb.fm ] ; 10 uses
  %i.asi = getelementptr inbounds nuw [40 x i8], ptr %i.asb, i64 %indvars.iv1410 ; 8 uses
  %i.asj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1410
  %indvars.iv1410.tr = trunc i64 %indvars.iv1410 to i32
  %i.ask = shl i32 %indvars.iv1410.tr, 1          ; 2 uses
  %i.asl = shl i32 4096, %i.ask
  %i.asm = getelementptr inbounds nuw [160 x i8], ptr %i.asc, i64 %indvars.iv1410 ; 6 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asi, i64 11
  %i.aso = getelementptr [160 x i8], ptr %1, i64 %indvars.iv1410 ; 2 uses
  %i.asp = getelementptr i8, ptr %i.aso, i64 28776 ; 7 uses
  %i.asq = shl i32 12288, %i.ask                  ; 2 uses
  %i.asr = getelementptr i8, ptr %i.aso, i64 28778 ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.preheader1178, %.loopexit1177
  %indvars.iv1406 = phi i64 [ 0, %.preheader1178 ], [ %indvars.iv.next1407, %.loopexit1177 ] ; 6 uses
  %i.ass = getelementptr inbounds nuw [2 x i8], ptr %i.asa, i64 %indvars.iv1406 ; 2 uses
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !108
  %i.asu = and i16 %i.ast, 256
  %.not675 = icmp eq i16 %i.asu, 0
  br i1 %.not675, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.asv = shl nuw nsw i64 %indvars.iv1406, 2
  %i.asw = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 4, !tbaa !15
  %i.asy = zext i8 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.asy ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 1
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !15
  store i8 %i.atb, ptr %i.asz, align 1, !tbaa !15
  br label %.loopexit1177

bb.ee:                                            ; preds = %bb.ec
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv1406
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !94
  %i.ate = trunc i32 %i.atd to i8                 ; 4 uses
  %i.atf = shl nuw nsw i64 %indvars.iv1406, 2     ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 4, !tbaa !15
  %i.ati = zext i8 %i.ath to i64                  ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.ati ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 9
  store i8 %i.ate, ptr %i.atk, align 1, !tbaa !15
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  store i8 %i.ate, ptr %i.atl, align 1, !tbaa !15
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 1
  store i8 %i.ate, ptr %i.atm, align 1, !tbaa !15
  store i8 %i.ate, ptr %i.atj, align 1, !tbaa !15
  %i.atn = load i16, ptr %i.ass, align 2, !tbaa !108
  %i.ato = zext i16 %i.atn to i32                 ; 5 uses
  %i.atp = and i32 %i.asl, %i.ato
  %.not676 = icmp eq i32 %i.atp, 0
  br i1 %.not676, label %bb.fl, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.atq = and i32 %i.ato, 24
  %.not677 = icmp ne i32 %i.atq, 0                ; 2 uses
  %i.atr = select i1 %.not677, i32 2, i32 1
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1406
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !94 ; 2 uses
  %i.atu = icmp sgt i32 %i.att, 0
  br i1 %i.atu, label %.lr.ph1252, label %.loopexit1177

.lr.ph1252:                                       ; preds = %bb.ef
  %i.atv = zext i1 %.not677 to i32
  %i.atw = load ptr, ptr %i.ss, align 8, !tbaa !99 ; 4 uses
  %i.atx = and i32 %i.ato, 8
  %.not678 = icmp eq i32 %i.atx, 0
  %i.aty = and i32 %i.ato, 16
  %.not679 = icmp eq i32 %i.aty, 0
  %i.atz = and i32 %i.ato, 32
  %.not680 = icmp eq i32 %i.atz, 0
  %i.aua = trunc nuw nsw i64 %i.atf to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1252, %bb.fk
  %.05881250 = phi i32 [ 0, %.lr.ph1252 ], [ %i.bfn, %bb.fk ] ; 2 uses
  %i.aub = shl nuw i32 %.05881250, %i.atv
  %i.auc = add nsw i32 %i.aub, %i.aua
  %i.aud = sext i32 %i.auc to i64                 ; 3 uses
  %i.aue = getelementptr inbounds i8, ptr @scan8, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !15 ; 2 uses
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.aug ; 12 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.aug
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !15 ; 3 uses
  %i.auk = sext i8 %i.auj to i32
  %i.aul = zext i8 %i.auf to i32                  ; 6 uses
  %i.aum = add nsw i32 %i.aul, -8                 ; 2 uses
  %i.aun = sext i32 %i.aum to i64                 ; 2 uses
  %i.auo = getelementptr inbounds i8, ptr %i.asi, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !15 ; 2 uses
  %i.auq = add nsw i32 %i.aul, -1
  %i.aur = sext i32 %i.auq to i64                 ; 2 uses
  %i.aus = getelementptr inbounds i8, ptr %i.asi, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !15 ; 2 uses
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.aur ; 7 uses
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.aun ; 6 uses
  %i.auw = add nsw i32 %i.aum, %i.atr
  %i.aux = sext i32 %i.auw to i64                 ; 2 uses
  %i.auy = getelementptr inbounds i8, ptr %i.asi, i64 %i.aux
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !15 ; 2 uses
  %i.ava = sext i8 %i.auz to i32
  %i.avb = load i32, ptr %i.rx, align 8, !tbaa !98
  %i.avc = icmp ne i32 %i.avb, 0
  %i.avd = icmp eq i8 %i.auz, -2                  ; 2 uses
  %or.cond.i790 = select i1 %i.avc, i1 %i.avd, i1 false
  %i.ave = lshr i64 1970324836974540, %i.aud
  %i.avf = trunc i64 %i.ave to i1
  %or.cond98.i791 = select i1 %or.cond.i790, i1 %i.avf, i1 false
  %i.avg = and i32 %i.aul, 7
  %i.avh = icmp eq i32 %i.avg, 4
  %or.cond100.i792 = and i1 %i.avh, %or.cond98.i791
  br i1 %or.cond100.i792, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.avi = load i8, ptr %i.asn, align 1, !tbaa !15
  %.not.i795 = icmp eq i8 %i.avi, -2
  br i1 %.not.i795, label %.thread1052, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.avj = load ptr, ptr %i.asd, align 8, !tbaa !142
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 104
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !143 ; 2 uses
  store i32 0, ptr %i.asp, align 4, !tbaa !15
  %i.avm = load i32, ptr %i.vj, align 8, !tbaa !100
  %.not91.i796 = icmp eq i32 %i.avm, 0
  %i.avn = load i32, ptr %i.ase, align 8, !tbaa !94
  %i.avo = and i32 %i.avn, 128
  %.not92.i802 = icmp eq i32 %i.avo, 0            ; 2 uses
  br i1 %.not91.i796, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not92.i802, label %.thread1052, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.avp = load i32, ptr %i.asf, align 4, !tbaa !94
  %i.avq = load i32, ptr %i.t, align 4, !tbaa !89 ; 2 uses
  %i.avr = add nsw i32 %i.avq, %i.avp             ; 3 uses
  %i.avs = load i32, ptr %i.r, align 4, !tbaa !88
  %i.avt = shl i32 %i.avs, 1
  %i.avu = and i32 %i.avt, 2
  %i.avv = lshr i32 %i.aul, 5
  %i.avw = add nuw nsw i32 %i.avu, %i.avv         ; 3 uses
  %i.avx = lshr i32 %i.avw, 2
  %i.avy = mul nsw i32 %i.avx, %i.avq
  %i.avz = add nsw i32 %i.avy, %i.avr
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.avl, i64 %i.awa
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !94
  %i.awd = and i32 %i.awc, %i.asq
  %.not93.i803 = icmp eq i32 %i.awd, 0
  br i1 %.not93.i803, label %fetch_diagonal_mv.exit804, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.awe = load ptr, ptr %i.asd, align 8, !tbaa !142 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 80
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %indvars.iv1410
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !104
  %i.awi = load ptr, ptr %i.asg, align 8, !tbaa !107
  %i.awj = sext i32 %i.avr to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr %i.awi, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !94
  %i.awm = add i32 %i.awl, 3
  %i.awn = load i32, ptr %i.ash, align 8, !tbaa !105
  %i.awo = mul nsw i32 %i.awn, %i.avw
  %i.awp = add i32 %i.awm, %i.awo
  %i.awq = zext i32 %i.awp to i64
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.awq ; 2 uses
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !108
  store i16 %i.aws, ptr %i.asp, align 4, !tbaa !108
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 2
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !108
  %i.awv = shl i16 %i.awu, 1
  store i16 %i.awv, ptr %i.asr, align 2, !tbaa !108
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awe, i64 120
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.aww, i64 %indvars.iv1410
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !93
  %i.awz = shl nsw i32 %i.avr, 2
  %i.axa = or disjoint i32 %i.awz, 1
  %i.axb = and i32 %i.avw, 14
  %i.axc = add nsw i32 %i.axa, %i.axb
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds i8, ptr %i.awy, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !15
  %i.axg = ashr i8 %i.axf, 1
  %i.axh = sext i8 %i.axg to i32
  br label %fetch_diagonal_mv.exit804

bb.em:                                            ; preds = %bb.ei
  br i1 %.not92.i802, label %bb.en, label %.thread1052

bb.en:                                            ; preds = %bb.em
  %i.axi = lshr i64 1970324836961280, %i.aud
  %i.axj = and i64 %i.axi, 1
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %i.axj
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !94 ; 2 uses
  %i.axm = sext i32 %i.axl to i64                 ; 2 uses
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.avl, i64 %i.axm
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !94
  %i.axp = and i32 %i.axo, %i.asq
  %.not96.i801 = icmp eq i32 %i.axp, 0
  br i1 %.not96.i801, label %fetch_diagonal_mv.exit804, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.axq = lshr exact i32 %i.aul, 2               ; 2 uses
  %i.axr = and i32 %i.axq, 3
  %i.axs = load ptr, ptr %i.asd, align 8, !tbaa !142 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 80
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.axt, i64 %indvars.iv1410
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !104
  %i.axw = load ptr, ptr %i.asg, align 8, !tbaa !107
  %i.axx = getelementptr inbounds [4 x i8], ptr %i.axw, i64 %i.axm
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !94
  %i.axz = add i32 %i.axy, 3
  %i.aya = load i32, ptr %i.ash, align 8, !tbaa !105
  %i.ayb = mul nsw i32 %i.aya, %i.axr
  %i.ayc = add i32 %i.axz, %i.ayb
  %i.ayd = zext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.ayd ; 2 uses
  %i.ayf = load i16, ptr %i.aye, align 2, !tbaa !108
  store i16 %i.ayf, ptr %i.asp, align 4, !tbaa !108
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aye, i64 2
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !108
  %i.ayi = sdiv i16 %i.ayh, 2
  store i16 %i.ayi, ptr %i.asr, align 2, !tbaa !108
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axs, i64 120
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %indvars.iv1410
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !93
  %i.aym = shl nsw i32 %i.axl, 2
  %i.ayn = and i32 %i.axq, 2
  %i.ayo = or disjoint i32 %i.aym, %i.ayn
  %i.ayp = sext i32 %i.ayo to i64
  %i.ayq = getelementptr i8, ptr %i.ayl, i64 %i.ayp
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 1
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !15
  %i.ayt = sext i8 %i.ays to i32
  %i.ayu = shl nsw i32 %i.ayt, 1
  br label %fetch_diagonal_mv.exit804

bb.ep:                                            ; preds = %bb.eg
  br i1 %i.avd, label %.thread1052, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ayv = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.aux
  br label %fetch_diagonal_mv.exit804

.thread1052:                                      ; preds = %bb.ej, %bb.eh, %bb.em, %bb.ep
  %i.ayw = add nsw i32 %i.aul, -9
  %i.ayx = sext i32 %i.ayw to i64                 ; 2 uses
  %i.ayy = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.ayx
  %i.ayz = getelementptr inbounds i8, ptr %i.asi, i64 %i.ayx
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !15
  %i.azb = sext i8 %i.aza to i32
  br label %fetch_diagonal_mv.exit804

fetch_diagonal_mv.exit804:                        ; preds = %bb.en, %bb.ek, %bb.el, %bb.eo, %bb.eq, %.thread1052
  %.01033 = phi ptr [ %i.ayy, %.thread1052 ], [ %i.ayv, %bb.eq ], [ %i.asp, %bb.eo ], [ %i.asp, %bb.el ], [ %i.asp, %bb.ek ], [ %i.asp, %bb.en ] ; 6 uses
  %.3.i794 = phi i32 [ %i.azb, %.thread1052 ], [ %i.ava, %bb.eq ], [ %i.ayu, %bb.eo ], [ %i.axh, %bb.el ], [ -1, %bb.ek ], [ -1, %bb.en ] ; 2 uses
  %i.azc = icmp eq i32 %.3.i794, %i.auk
  %i.azd = zext i1 %i.azc to i32
  %i.aze = icmp eq i8 %i.auj, %i.aup              ; 2 uses
  %i.azf = zext i1 %i.aze to i32
  %i.azg = icmp eq i8 %i.auj, %i.aut              ; 2 uses
  %i.azh = zext i1 %i.azg to i32
  %i.azi = add nuw nsw i32 %i.azh, %i.azf
  %i.azj = add nuw nsw i32 %i.azi, %i.azd         ; 2 uses
  %i.azk = icmp samesign ugt i32 %i.azj, 1
  br i1 %i.azk, label %bb.er, label %bb.es

bb.er:                                            ; preds = %fetch_diagonal_mv.exit804
  %i.azl = load i16, ptr %i.auu, align 2, !tbaa !108
  %i.azm = sext i16 %i.azl to i32                 ; 2 uses
  %i.azn = load i16, ptr %i.auv, align 2, !tbaa !108
  %i.azo = sext i16 %i.azn to i32                 ; 2 uses
  %i.azp = load i16, ptr %.01033, align 2, !tbaa !108
  %i.azq = sext i16 %i.azp to i32
  %..i = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.azm, i32 range(i32 -32768, 32768) %i.azo)
  %.20.i = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.azm, i32 range(i32 -32768, 32768) %i.azo)
  %i.azr = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.azq, i32 %..i)
  %i.azs = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.azr, i32 %.20.i)
  %i.azt = getelementptr inbounds nuw i8, ptr %i.auu, i64 2
  %i.azu = load i16, ptr %i.azt, align 2, !tbaa !108
  %i.azv = sext i16 %i.azu to i32                 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.auv, i64 2
  %i.azx = load i16, ptr %i.azw, align 2, !tbaa !108
  %i.azy = sext i16 %i.azx to i32                 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.01033, i64 2
  %i.baa = load i16, ptr %i.azz, align 2, !tbaa !108
  %i.bab = sext i16 %i.baa to i32
  %..i834 = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.azv, i32 range(i32 -32768, 32768) %i.azy)
  %.20.i835 = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.azv, i32 range(i32 -32768, 32768) %i.azy)
  %i.bac = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bab, i32 %..i834)
  %i.bad = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bac, i32 %.20.i835)
  br label %pred_motion.exit717

bb.es:                                            ; preds = %fetch_diagonal_mv.exit804
  %i.bae = icmp eq i32 %i.azj, 1
  br i1 %i.bae, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  br i1 %i.azg, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.baf = load i16, ptr %i.auu, align 2, !tbaa !108
  %i.bag = zext i16 %i.baf to i32
  %i.bah = getelementptr inbounds nuw i8, ptr %i.auu, i64 2
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !108
  %i.baj = zext i16 %i.bai to i32
  br label %pred_motion.exit717

bb.ev:                                            ; preds = %bb.et
  br i1 %i.aze, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.bak = load i16, ptr %i.auv, align 2, !tbaa !108
  %i.bal = zext i16 %i.bak to i32
  %i.bam = getelementptr inbounds nuw i8, ptr %i.auv, i64 2
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !108
  %i.bao = zext i16 %i.ban to i32
  br label %pred_motion.exit717

bb.ex:                                            ; preds = %bb.ev
  %i.bap = load i16, ptr %.01033, align 2, !tbaa !108
  %i.baq = zext i16 %i.bap to i32
  %i.bar = getelementptr inbounds nuw i8, ptr %.01033, i64 2
  %i.bas = load i16, ptr %i.bar, align 2, !tbaa !108
  %i.bat = zext i16 %i.bas to i32
  br label %pred_motion.exit717

bb.ey:                                            ; preds = %bb.es
  %i.bau = icmp eq i8 %i.aup, -2
  %i.bav = icmp eq i32 %.3.i794, -2
  %or.cond.i715 = and i1 %i.bau, %i.bav
  %i.baw = icmp ne i8 %i.aut, -2
  %or.cond3.i716 = select i1 %or.cond.i715, i1 %i.baw, i1 false
  %i.bax = load i16, ptr %i.auu, align 2, !tbaa !108 ; 2 uses
  br i1 %or.cond3.i716, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.bay = zext i16 %i.bax to i32
  %i.baz = getelementptr inbounds nuw i8, ptr %i.auu, i64 2
  %i.bba = load i16, ptr %i.baz, align 2, !tbaa !108
  %i.bbb = zext i16 %i.bba to i32
  br label %pred_motion.exit717

bb.fa:                                            ; preds = %bb.ey
  %i.bbc = sext i16 %i.bax to i32                 ; 2 uses
  %i.bbd = load i16, ptr %i.auv, align 2, !tbaa !108
  %i.bbe = sext i16 %i.bbd to i32                 ; 2 uses
  %i.bbf = load i16, ptr %.01033, align 2, !tbaa !108
  %i.bbg = sext i16 %i.bbf to i32
  %..i836 = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bbc, i32 range(i32 -32768, 32768) %i.bbe)
  %.20.i837 = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bbc, i32 range(i32 -32768, 32768) %i.bbe)
  %i.bbh = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bbg, i32 %..i836)
  %i.bbi = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bbh, i32 %.20.i837)
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.auu, i64 2
  %i.bbk = load i16, ptr %i.bbj, align 2, !tbaa !108
  %i.bbl = sext i16 %i.bbk to i32                 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.auv, i64 2
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !108
  %i.bbo = sext i16 %i.bbn to i32                 ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.01033, i64 2
  %i.bbq = load i16, ptr %i.bbp, align 2, !tbaa !108
  %i.bbr = sext i16 %i.bbq to i32
  %..i838 = call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bbl, i32 range(i32 -32768, 32768) %i.bbo)
  %.20.i839 = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bbl, i32 range(i32 -32768, 32768) %i.bbo)
  %i.bbs = call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bbr, i32 %..i838)
  %i.bbt = call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bbs, i32 %.20.i839)
  br label %pred_motion.exit717

pred_motion.exit717:                              ; preds = %bb.er, %bb.eu, %bb.ew, %bb.ex, %bb.ez, %bb.fa
  %.01031 = phi i32 [ %i.azs, %bb.er ], [ %i.bag, %bb.eu ], [ %i.bal, %bb.ew ], [ %i.baq, %bb.ex ], [ %i.bay, %bb.ez ], [ %i.bbi, %bb.fa ]
  %.01030 = phi i32 [ %i.bad, %bb.er ], [ %i.baj, %bb.eu ], [ %i.bao, %bb.ew ], [ %i.bat, %bb.ex ], [ %i.bbb, %bb.ez ], [ %i.bbt, %bb.fa ]
  %2 = load i32, ptr %i.st, align 16, !tbaa !95   ; 4 uses
  %i.bbu = lshr i32 %2, 3
  %i.bbv = zext nneg i32 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 1, !tbaa !15
  %i.bby = call i32 @llvm.bswap.i32(i32 %i.bbx)
  %i.bbz = and i32 %2, 7
  %i.bca = shl i32 %i.bby, %i.bbz                 ; 5 uses
  %i.bcb = icmp ugt i32 %i.bca, 134217727
  br i1 %i.bcb, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %pred_motion.exit717
  %i.bcc = lshr i32 %i.bca, 23
  %i.bcd = zext nneg i32 %i.bcc to i64            ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !15
  %i.bcg = zext i8 %i.bcf to i32
  %i.bch = add i32 %2, %i.bcg                     ; 2 uses
  store i32 %i.bch, ptr %i.st, align 16, !tbaa !95
  %i.bci = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.bcd
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !15
  %i.bck = sext i8 %i.bcj to i32
  br label %get_se_golomb.exit

bb.fc:                                            ; preds = %pred_motion.exit717
  %.not.i.i840 = icmp samesign ult i32 %i.bca, 65536 ; 2 uses
  %i.bcl = lshr i32 %i.bca, 16
  %spec.select.i.i841 = select i1 %.not.i.i840, i32 %i.bca, i32 %i.bcl ; 3 uses
  %spec.select12.i.i842 = select i1 %.not.i.i840, i32 0, i32 16 ; 2 uses
  %.not11.i.i843 = icmp samesign ult i32 %spec.select.i.i841, 256 ; 2 uses
  %i.bcm = lshr i32 %spec.select.i.i841, 8
  %i.bcn = or disjoint i32 %spec.select12.i.i842, 8
  %.110.i.i844 = select i1 %.not11.i.i843, i32 %spec.select.i.i841, i32 %i.bcm
  %.1.i.i845 = select i1 %.not11.i.i843, i32 %spec.select12.i.i842, i32 %i.bcn
  %i.bco = zext nneg i32 %.110.i.i844 to i64
  %i.bcp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !15
  %i.bcr = zext i8 %i.bcq to i32
  %i.bcs = add nuw nsw i32 %.1.i.i845, %i.bcr     ; 3 uses
  %reass.sub.i846 = sub i32 %2, %i.bcs            ; 2 uses
  %i.bct = add i32 %reass.sub.i846, 31            ; 2 uses
  %i.bcu = lshr i32 %i.bct, 3
  %i.bcv = zext nneg i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 1, !tbaa !15
  %i.bcy = call i32 @llvm.bswap.i32(i32 %i.bcx)
  %i.bcz = and i32 %i.bct, 7
  %i.bda = shl i32 %i.bcy, %i.bcz
  %i.bdb = lshr i32 %i.bda, %i.bcs                ; 2 uses
  %reass.sub1309.a = sub i32 %reass.sub.i846, %i.bcs
  %i.bdc = add i32 %reass.sub1309.a, 63           ; 2 uses
  store i32 %i.bdc, ptr %i.st, align 16, !tbaa !95
  %i.bdd = and i32 %i.bdb, 1                      ; 2 uses
  %i.bde = sub nsw i32 0, %i.bdd
  %i.bdf = lshr i32 %i.bdb, 1
  %i.bdg = xor i32 %i.bdf, %i.bde
  %i.bdh = add i32 %i.bdg, %i.bdd
  br label %get_se_golomb.exit

get_se_golomb.exit:                               ; preds = %bb.fb, %bb.fc
  %i.bdi = phi i32 [ %i.bch, %bb.fb ], [ %i.bdc, %bb.fc ] ; 4 uses
  %.0.i847 = phi i32 [ %i.bck, %bb.fb ], [ %i.bdh, %bb.fc ]
  %i.bdj = add i32 %.0.i847, %.01031
  %i.bdk = lshr i32 %i.bdi, 3
  %i.bdl = zext nneg i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bdl
  %i.bdn = load i32, ptr %i.bdm, align 1, !tbaa !15
  %i.bdo = call i32 @llvm.bswap.i32(i32 %i.bdn)
  %i.bdp = and i32 %i.bdi, 7
  %i.bdq = shl i32 %i.bdo, %i.bdp                 ; 5 uses
  %i.bdr = icmp ugt i32 %i.bdq, 134217727
  br i1 %i.bdr, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %get_se_golomb.exit
  %i.bds = lshr i32 %i.bdq, 23
  %i.bdt = zext nneg i32 %i.bds to i64            ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !15
  %i.bdw = zext i8 %i.bdv to i32
  %i.bdx = add i32 %i.bdi, %i.bdw
  store i32 %i.bdx, ptr %i.st, align 16, !tbaa !95
  %i.bdy = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.bdt
  %i.bdz = load i8, ptr %i.bdy, align 1, !tbaa !15
  %i.bea = sext i8 %i.bdz to i32
  br label %get_se_golomb.exit857

bb.fe:                                            ; preds = %get_se_golomb.exit
  %.not.i.i848 = icmp samesign ult i32 %i.bdq, 65536 ; 2 uses
  %i.beb = lshr i32 %i.bdq, 16
  %spec.select.i.i849 = select i1 %.not.i.i848, i32 %i.bdq, i32 %i.beb ; 3 uses
  %spec.select12.i.i850 = select i1 %.not.i.i848, i32 0, i32 16 ; 2 uses
  %.not11.i.i851 = icmp samesign ult i32 %spec.select.i.i849, 256 ; 2 uses
  %i.bec = lshr i32 %spec.select.i.i849, 8
  %i.bed = or disjoint i32 %spec.select12.i.i850, 8
  %.110.i.i852 = select i1 %.not11.i.i851, i32 %spec.select.i.i849, i32 %i.bec
  %.1.i.i853 = select i1 %.not11.i.i851, i32 %spec.select12.i.i850, i32 %i.bed
  %i.bee = zext nneg i32 %.110.i.i852 to i64
  %i.bef = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bee
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !15
  %i.beh = zext i8 %i.beg to i32
  %i.bei = add nuw nsw i32 %.1.i.i853, %i.beh     ; 3 uses
  %reass.sub.i854 = sub i32 %i.bdi, %i.bei        ; 2 uses
  %i.bej = add i32 %reass.sub.i854, 31            ; 2 uses
  %i.bek = lshr i32 %i.bej, 3
  %i.bel = zext nneg i32 %i.bek to i64
  %i.bem = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bel
  %i.ben = load i32, ptr %i.bem, align 1, !tbaa !15
  %i.beo = call i32 @llvm.bswap.i32(i32 %i.ben)
  %i.bep = and i32 %i.bej, 7
  %i.beq = shl i32 %i.beo, %i.bep
  %i.ber = lshr i32 %i.beq, %i.bei                ; 2 uses
  %reass.sub1310.a = sub i32 %reass.sub.i854, %i.bei
  %i.bes = add i32 %reass.sub1310.a, 63
  store i32 %i.bes, ptr %i.st, align 16, !tbaa !95
  %i.bet = and i32 %i.ber, 1                      ; 2 uses
  %i.beu = sub nsw i32 0, %i.bet
  %i.bev = lshr i32 %i.ber, 1
  %i.bew = xor i32 %i.bev, %i.beu
  %i.bex = add i32 %i.bew, %i.bet
  br label %get_se_golomb.exit857

get_se_golomb.exit857:                            ; preds = %bb.fd, %bb.fe
  %.0.i856 = phi i32 [ %i.bea, %bb.fd ], [ %i.bex, %bb.fe ]
  %i.bey = add i32 %.0.i856, %.01030              ; 4 uses
  %.pre1483.a = trunc i32 %i.bdj to i16           ; 6 uses
  br i1 %.not678, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %get_se_golomb.exit857
  %i.bez = getelementptr inbounds nuw i8, ptr %i.auh, i64 36
  store i16 %.pre1483.a, ptr %i.bez, align 2, !tbaa !108
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.auh, i64 32
  store i16 %.pre1483.a, ptr %i.bfa, align 2, !tbaa !108
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  store i16 %.pre1483.a, ptr %i.bfb, align 2, !tbaa !108
  %i.bfc = trunc i32 %i.bey to i16                ; 4 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.auh, i64 38
  store i16 %i.bfc, ptr %i.bfd, align 2, !tbaa !108
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.auh, i64 34
  store i16 %i.bfc, ptr %i.bfe, align 2, !tbaa !108
  %i.bff = getelementptr inbounds nuw i8, ptr %i.auh, i64 6
  store i16 %i.bfc, ptr %i.bff, align 2, !tbaa !108
  br label %bb.fk

bb.fg:                                            ; preds = %get_se_golomb.exit857
  br i1 %.not679, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  store i16 %.pre1483.a, ptr %i.bfg, align 2, !tbaa !108
  %i.bfh = trunc i32 %i.bey to i16                ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.auh, i64 6
  store i16 %i.bfh, ptr %i.bfi, align 2, !tbaa !108
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fg
  br i1 %.not680, label %._crit_edge1482, label %bb.fj

._crit_edge1482:                                  ; preds = %bb.fi
  %.pre1484 = trunc i32 %i.bey to i16
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.auh, i64 32
  store i16 %.pre1483.a, ptr %i.bfj, align 2, !tbaa !108
  %i.bfk = trunc i32 %i.bey to i16                ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.auh, i64 34
  store i16 %i.bfk, ptr %i.bfl, align 2, !tbaa !108
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge1482, %bb.fh, %bb.fj, %bb.ff
  %.pre-phi1485 = phi i16 [ %.pre1484, %._crit_edge1482 ], [ %i.bfh, %bb.fh ], [ %i.bfk, %bb.fj ], [ %i.bfc, %bb.ff ]
  store i16 %.pre1483.a, ptr %i.auh, align 2, !tbaa !108
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.auh, i64 2
  store i16 %.pre-phi1485, ptr %i.bfm, align 2, !tbaa !108
  %i.bfn = add nuw nsw i32 %.05881250, 1          ; 2 uses
  %exitcond1405.not = icmp eq i32 %i.bfn, %i.att
  br i1 %exitcond1405.not, label %.loopexit1177, label %bb.eg, !llvm.loop !144

bb.fl:                                            ; preds = %bb.ee
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.ati ; 4 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 36
  store i32 0, ptr %i.bfp, align 4, !tbaa !94
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 32
  store i32 0, ptr %i.bfq, align 4, !tbaa !94
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfo, i64 4
  store i32 0, ptr %i.bfr, align 4, !tbaa !94
  store i32 0, ptr %i.bfo, align 4, !tbaa !94
  br label %.loopexit1177

.loopexit1177:                                    ; preds = %bb.fk, %bb.ef, %bb.fl, %bb.ed
  %indvars.iv.next1407 = add nuw nsw i64 %indvars.iv1406, 1 ; 2 uses
  %exitcond1409.not = icmp eq i64 %indvars.iv.next1407, 4
  br i1 %exitcond1409.not, label %bb.fm, label %bb.ec, !llvm.loop !145

bb.fm:                                            ; preds = %.loopexit1177
  %indvars.iv.next1411 = add nuw nsw i64 %indvars.iv1410, 1 ; 2 uses
  %exitcond1414.not = icmp eq i64 %indvars.iv.next1411, %wide.trip.count1413
  br i1 %exitcond1414.not, label %._crit_edge1256, label %.preheader1178, !llvm.loop !146

.thread1054:                                      ; preds = %bb.cy, %bb.ea, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %write_back_non_zero_count.exit

._crit_edge1256:                                  ; preds = %bb.fm, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread1108

bb.fn:                                            ; preds = %bb.cw
  %i.bfs = and i32 %i.vm, 256
  %.not661 = icmp eq i32 %i.bfs, 0
  br i1 %.not661, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @ff_h264_pred_direct_motion(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #9
  %i.bft = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 72
  %i.bfv = load i32, ptr %i.bfu, align 8, !tbaa !141
  %i.bfw = and i32 %i.bfv, %i.i
  br label %.thread1108

bb.fp:                                            ; preds = %bb.fn
  %i.bfx = and i32 %i.vm, 8
  %.not662 = icmp eq i32 %i.bfx, 0
  br i1 %.not662, label %bb.gq, label %.preheader1193

.preheader1193:                                   ; preds = %bb.fp
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.bfz = load i32, ptr %i.bfy, align 8, !tbaa !139 ; 3 uses
  %.not1296 = icmp eq i32 %i.bfz, 0
  br i1 %.not1296, label %.thread1108, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1193
  %i.bga = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bgb = getelementptr inbounds nuw i8, ptr %1, i64 21068
  %wide.trip.count = zext i32 %i.bfz to i64
  br label %bb.fq

.lr.ph1222:                                       ; preds = %bb.fw
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %wide.trip.count1346 = zext i32 %i.bfz to i64
  br label %bb.fx

bb.fq:                                            ; preds = %.lr.ph, %bb.fw
  %indvars.iv1340 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1341, %bb.fw ] ; 4 uses
  %indvars.iv1340.tr = trunc i64 %indvars.iv1340 to i32
  %i.bge = shl i32 %indvars.iv1340.tr, 1
  %i.bgf = shl i32 4096, %i.bge
  %i.bgg = and i32 %i.vm, %i.bgf
  %.not671 = icmp eq i32 %i.bgg, 0
  br i1 %.not671, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %indvars.iv1340
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !94
  %i.bgj = load i32, ptr %i.bgb, align 4, !tbaa !101
  %i.bgk = shl i32 %i.bgi, %i.bgj                 ; 2 uses
  switch i32 %i.bgk, label %bb.ft [
    i32 1, label %bb.fu
    i32 2, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.bgl = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.bgm = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.bgn = lshr i32 %i.bgl, 3
  %i.bgo = zext nneg i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.bgo
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !15
  %i.bgr = and i32 %i.bgl, 7
  %i.bgs = zext i8 %i.bgq to i32
  %i.bgt = shl nuw nsw i32 %i.bgs, %i.bgr
  %i.bgu = lshr i32 %i.bgt, 7
  %i.bgv = add i32 %i.bgl, 1
  store i32 %i.bgv, ptr %i.st, align 16, !tbaa !95
  %i.bgw = and i32 %i.bgu, 1
  %i.bgx = xor i32 %i.bgw, 1
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.bgy = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.bgz = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.bha = lshr i32 %i.bgy, 3
  %i.bhb = zext nneg i32 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgz, i64 %i.bhb
  %i.bhd = load i32, ptr %i.bhc, align 1, !tbaa !15
  %i.bhe = tail call i32 @llvm.bswap.i32(i32 %i.bhd)
  %i.bhf = and i32 %i.bgy, 7
  %i.bhg = shl i32 %i.bhe, %i.bhf
  %i.bhh = lshr i32 %i.bhg, 23
  %i.bhi = zext nneg i32 %i.bhh to i64            ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bhi
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !15
  %i.bhl = zext i8 %i.bhk to i32
  %i.bhm = add i32 %i.bgy, %i.bhl
  store i32 %i.bhm, ptr %i.st, align 16, !tbaa !95
  %i.bhn = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.bhi
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !15
  %i.bhp = zext i8 %i.bho to i32                  ; 3 uses
  %.not672 = icmp ugt i32 %i.bgk, %i.bhp
  br i1 %.not672, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.fr, %bb.fs, %bb.ft
  %.0571 = phi i32 [ %i.bhp, %bb.ft ], [ %i.bgx, %bb.fs ], [ 0, %bb.fr ]
  %i.bhq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv1340 ; 4 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 29068
  %i.bhs = mul nuw i32 %.0571, 16843009           ; 4 uses
  store i32 %i.bhs, ptr %i.bhr, align 4, !tbaa !94
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhq, i64 29076
  store i32 %i.bhs, ptr %i.bht, align 4, !tbaa !94
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 29084
  store i32 %i.bhs, ptr %i.bhu, align 4, !tbaa !94
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhq, i64 29092
  store i32 %i.bhs, ptr %i.bhv, align 4, !tbaa !94
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhx, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.bhp) #9
end_hunk_0
