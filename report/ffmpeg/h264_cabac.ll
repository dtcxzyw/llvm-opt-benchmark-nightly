Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cabac?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_decode_mb_cabac:bb.a

bb.dk:                                            ; preds = %get_cabac.exit31.i
  %i.atq = zext i8 %i.asl to i32                  ; 2 uses
  %i.atr = shl i32 %i.asq, 1
  %i.ats = and i32 %i.atr, 384
  %i.att = add nuw nsw i32 %i.ats, %i.atq
  %i.atu = zext nneg i32 %i.att to i64
  %i.atv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.atu
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !82
  %i.atx = zext i8 %i.atw to i32                  ; 2 uses
  %i.aty = sub nsw i32 %i.asq, %i.atx             ; 2 uses
  %i.atz = shl i32 %i.aty, 17                     ; 2 uses
  %i.aua = icmp slt i32 %i.atz, %i.ato            ; 3 uses
  %i.aub = sext i1 %i.aua to i32
  %i.auc = select i1 %i.aua, i32 %i.atz, i32 0
  %i.aud = sub nsw i32 %i.ato, %i.auc
  %i.aue = select i1 %i.aua, i32 %i.atx, i32 %i.aty ; 2 uses
  %i.auf = xor i32 %i.aub, %i.atq                 ; 2 uses
  %i.aug = sext i32 %i.auf to i64
  %i.auh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !82
  store i8 %i.aui, ptr %.phi.trans.insert.i1211, align 1, !tbaa !82
  %i.auj = sext i32 %i.aue to i64
  %i.auk = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !82
  %i.aum = zext i8 %i.aul to i32                  ; 2 uses
  %i.aun = shl i32 %i.aue, %i.aum                 ; 2 uses
  store i32 %i.aun, ptr %i.ajr, align 4, !tbaa !122
  %i.auo = shl i32 %i.aud, %i.aum                 ; 6 uses
  store i32 %i.auo, ptr %i.ajq, align 16, !tbaa !123
  %i.aup = and i32 %i.auo, 65535
  %.not.i.i32.i = icmp eq i32 %i.aup, 0
  br i1 %.not.i.i32.i, label %bb.dl, label %get_cabac.exit33.i

bb.dl:                                            ; preds = %bb.dk
  %i.auq = add nsw i32 %i.auo, -32768
  %i.aur = xor i32 %i.auq, %i.auo
  %i.aus = lshr exact i32 %i.aur, 15
  %i.aut = zext nneg i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !82
  %i.auw = zext i8 %i.auv to i32
  %i.aux = sub nsw i32 7, %i.auw
  %i.auy = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !82
  %i.ava = zext i8 %i.auz to i32
  %i.avb = shl nuw nsw i32 %i.ava, 9
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !82
  %i.ave = zext i8 %i.avd to i32
  %i.avf = shl nuw nsw i32 %i.ave, 1
  %i.avg = or disjoint i32 %i.avf, %i.avb
  %i.avh = add nsw i32 %i.avg, -65535
  %i.avi = shl nsw i32 %i.avh, %i.aux
  %i.avj = add i32 %i.avi, %i.auo                 ; 2 uses
  store i32 %i.avj, ptr %i.ajq, align 16, !tbaa !123
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auy, i64 2
  store ptr %i.avk, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit33.i

get_cabac.exit33.i:                               ; preds = %bb.dl, %bb.dk
  %i.avl = phi i32 [ %i.avj, %bb.dl ], [ %i.auo, %bb.dk ]
  %i.avm = and i32 %i.auf, 1
  %i.avn = add nuw nsw i32 %i.avm, 11
  br label %decode_cabac_b_mb_sub_type.exit

get_cabac.exit29._crit_edge.i:                    ; preds = %get_cabac.exit31.i, %get_cabac.exit29.i
  %i.avo = phi i32 [ %i.ato, %get_cabac.exit31.i ], [ %i.arr, %get_cabac.exit29.i ] ; 2 uses
  %i.avp = phi i32 [ %i.asq, %get_cabac.exit31.i ], [ %i.aqt, %get_cabac.exit29.i ] ; 2 uses
  %i.avq = phi i8 [ %i.asl, %get_cabac.exit31.i ], [ %.pre.i1212, %get_cabac.exit29.i ]
  %.0.i1213 = phi i32 [ 7, %get_cabac.exit31.i ], [ 3, %get_cabac.exit29.i ]
  %i.avr = zext i8 %i.avq to i32                  ; 2 uses
  %i.avs = shl i32 %i.avp, 1
  %i.avt = and i32 %i.avs, 384
  %i.avu = add nuw nsw i32 %i.avt, %i.avr
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.avv
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !82
  %i.avy = zext i8 %i.avx to i32                  ; 2 uses
  %i.avz = sub nsw i32 %i.avp, %i.avy             ; 2 uses
  %i.awa = shl i32 %i.avz, 17                     ; 2 uses
  %i.awb = icmp slt i32 %i.awa, %i.avo            ; 3 uses
  %i.awc = sext i1 %i.awb to i32
  %i.awd = select i1 %i.awb, i32 %i.awa, i32 0
  %i.awe = sub nsw i32 %i.avo, %i.awd
  %i.awf = select i1 %i.awb, i32 %i.avy, i32 %i.avz ; 2 uses
  %i.awg = xor i32 %i.awc, %i.avr                 ; 2 uses
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.awh
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !82 ; 2 uses
  store i8 %i.awj, ptr %.phi.trans.insert.i1211, align 1, !tbaa !82
  %i.awk = sext i32 %i.awf to i64
  %i.awl = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !82
  %i.awn = zext i8 %i.awm to i32                  ; 2 uses
  %i.awo = shl i32 %i.awf, %i.awn                 ; 3 uses
  store i32 %i.awo, ptr %i.ajr, align 4, !tbaa !122
  %i.awp = shl i32 %i.awe, %i.awn                 ; 6 uses
  store i32 %i.awp, ptr %i.ajq, align 16, !tbaa !123
  %i.awq = and i32 %i.awp, 65535
  %.not.i.i34.i = icmp eq i32 %i.awq, 0
  br i1 %.not.i.i34.i, label %bb.dm, label %get_cabac.exit35.i

bb.dm:                                            ; preds = %get_cabac.exit29._crit_edge.i
  %i.awr = add nsw i32 %i.awp, -32768
  %i.aws = xor i32 %i.awr, %i.awp
  %i.awt = lshr exact i32 %i.aws, 15
  %i.awu = zext nneg i32 %i.awt to i64
  %i.awv = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !82
  %i.awx = zext i8 %i.aww to i32
  %i.awy = sub nsw i32 7, %i.awx
  %i.awz = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !82
  %i.axb = zext i8 %i.axa to i32
  %i.axc = shl nuw nsw i32 %i.axb, 9
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awz, i64 1
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !82
  %i.axf = zext i8 %i.axe to i32
  %i.axg = shl nuw nsw i32 %i.axf, 1
  %i.axh = or disjoint i32 %i.axg, %i.axc
  %i.axi = add nsw i32 %i.axh, -65535
  %i.axj = shl nsw i32 %i.axi, %i.awy
  %i.axk = add i32 %i.axj, %i.awp
  %i.axl = getelementptr inbounds nuw i8, ptr %i.awz, i64 2
  store ptr %i.axl, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit35.i

get_cabac.exit35.i:                               ; preds = %bb.dm, %get_cabac.exit29._crit_edge.i
  %i.axm = phi i32 [ %i.awp, %get_cabac.exit29._crit_edge.i ], [ %i.axk, %bb.dm ] ; 2 uses
  %i.axn = shl nsw i32 %i.awg, 1
  %i.axo = and i32 %i.axn, 2
  %i.axp = add nuw nsw i32 %i.axo, %.0.i1213
  %i.axq = zext i8 %i.awj to i32                  ; 2 uses
  %i.axr = shl i32 %i.awo, 1
  %i.axs = and i32 %i.axr, 384
  %i.axt = add nuw nsw i32 %i.axs, %i.axq
  %i.axu = zext nneg i32 %i.axt to i64
  %i.axv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.axu
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !82
  %i.axx = zext i8 %i.axw to i32                  ; 2 uses
  %i.axy = sub nsw i32 %i.awo, %i.axx             ; 2 uses
  %i.axz = shl i32 %i.axy, 17                     ; 2 uses
  %i.aya = icmp slt i32 %i.axz, %i.axm            ; 3 uses
  %i.ayb = sext i1 %i.aya to i32
  %i.ayc = select i1 %i.aya, i32 %i.axz, i32 0
  %i.ayd = sub nsw i32 %i.axm, %i.ayc
  %i.aye = select i1 %i.aya, i32 %i.axx, i32 %i.axy ; 2 uses
  %i.ayf = xor i32 %i.ayb, %i.axq                 ; 2 uses
  %i.ayg = sext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ayg
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !82
  store i8 %i.ayi, ptr %.phi.trans.insert.i1211, align 1, !tbaa !82
  %i.ayj = sext i32 %i.aye to i64
  %i.ayk = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ayj
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !82
  %i.aym = zext i8 %i.ayl to i32                  ; 2 uses
  %i.ayn = shl i32 %i.aye, %i.aym                 ; 2 uses
  store i32 %i.ayn, ptr %i.ajr, align 4, !tbaa !122
  %i.ayo = shl i32 %i.ayd, %i.aym                 ; 6 uses
  store i32 %i.ayo, ptr %i.ajq, align 16, !tbaa !123
  %i.ayp = and i32 %i.ayo, 65535
  %.not.i.i36.i = icmp eq i32 %i.ayp, 0
  br i1 %.not.i.i36.i, label %bb.dn, label %get_cabac.exit37.i

bb.dn:                                            ; preds = %get_cabac.exit35.i
  %i.ayq = add nsw i32 %i.ayo, -32768
  %i.ayr = xor i32 %i.ayq, %i.ayo
  %i.ays = lshr exact i32 %i.ayr, 15
  %i.ayt = zext nneg i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !82
  %i.ayw = zext i8 %i.ayv to i32
  %i.ayx = sub nsw i32 7, %i.ayw
  %i.ayy = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !82
  %i.aza = zext i8 %i.ayz to i32
  %i.azb = shl nuw nsw i32 %i.aza, 9
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayy, i64 1
  %i.azd = load i8, ptr %i.azc, align 1, !tbaa !82
  %i.aze = zext i8 %i.azd to i32
  %i.azf = shl nuw nsw i32 %i.aze, 1
  %i.azg = or disjoint i32 %i.azf, %i.azb
  %i.azh = add nsw i32 %i.azg, -65535
  %i.azi = shl nsw i32 %i.azh, %i.ayx
  %i.azj = add i32 %i.azi, %i.ayo                 ; 2 uses
  store i32 %i.azj, ptr %i.ajq, align 16, !tbaa !123
  %i.azk = getelementptr inbounds nuw i8, ptr %i.ayy, i64 2
  store ptr %i.azk, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit37.i

get_cabac.exit37.i:                               ; preds = %bb.dn, %get_cabac.exit35.i
  %i.azl = phi i32 [ %i.azj, %bb.dn ], [ %i.ayo, %get_cabac.exit35.i ]
  %i.azm = and i32 %i.ayf, 1
  %i.azn = add nuw nsw i32 %i.axp, %i.azm
  br label %decode_cabac_b_mb_sub_type.exit

decode_cabac_b_mb_sub_type.exit:                  ; preds = %get_cabac.exit.i, %get_cabac.exit27.i, %get_cabac.exit33.i, %get_cabac.exit37.i
  %i.azo = phi i32 [ %i.avl, %get_cabac.exit33.i ], [ %i.azl, %get_cabac.exit37.i ], [ %i.apu, %get_cabac.exit27.i ], [ %i.aly, %get_cabac.exit.i ]
  %i.azp = phi i32 [ %i.aun, %get_cabac.exit33.i ], [ %i.ayn, %get_cabac.exit37.i ], [ %i.aow, %get_cabac.exit27.i ], [ %i.ala, %get_cabac.exit.i ]
  %.020.i = phi i32 [ %i.avn, %get_cabac.exit33.i ], [ %i.azn, %get_cabac.exit37.i ], [ %i.apw, %get_cabac.exit27.i ], [ 0, %get_cabac.exit.i ] ; 2 uses
  %i.azq = getelementptr inbounds nuw [2 x i8], ptr %i.ajs, i64 %indvars.iv1663
  %i.azr = zext nneg i32 %.020.i to i64
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_b_sub_mb_type_info, i64 %i.azr
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 2
  %i.azu = load i8, ptr %i.azt, align 2, !tbaa !170
  %i.azv = zext i8 %i.azu to i32
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1663
  store i32 %i.azv, ptr %i.azw, align 4, !tbaa !93
  %2 = zext nneg i32 %.020.i to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_b_sub_mb_type_info, i64 %2
  %i.azx = load i16, ptr %3, align 4, !tbaa !179
  store i16 %i.azx, ptr %i.azq, align 2, !tbaa !96
  %indvars.iv.next1664 = add nuw nsw i64 %indvars.iv1663, 1 ; 2 uses
  %exitcond1666.not = icmp eq i64 %indvars.iv.next1664, 4
  br i1 %exitcond1666.not, label %bb.do, label %bb.da, !llvm.loop !140

bb.do:                                            ; preds = %decode_cabac_b_mb_sub_type.exit
  %i.azy = load <4 x i16>, ptr %i.ajs, align 8, !tbaa !96
  %i.azz = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.azy)
  %i.baa = and i16 %i.azz, 256
  %.not973 = icmp eq i16 %i.baa, 0
  br i1 %.not973, label %.loopexit1518, label %.loopexit1518.loopexit

.loopexit1518.loopexit:                           ; preds = %bb.do
  call void @ff_h264_pred_direct_motion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #10
  %i.bab = getelementptr inbounds nuw i8, ptr %1, i64 29126
  store i8 -2, ptr %i.bab, align 2, !tbaa !82
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 29086
  store i8 -2, ptr %i.bac, align 2, !tbaa !82
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 29110
  store i8 -2, ptr %i.bad, align 2, !tbaa !82
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 29070
  store i8 -2, ptr %i.bae, align 2, !tbaa !82
  %i.baf = getelementptr inbounds nuw i8, ptr %1, i64 29308
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 29316
  %i.bah = load <2 x i16>, ptr %i.ajs, align 8, !tbaa !96
  %i.bai = lshr <2 x i16> %i.bah, splat (i16 1)
  %i.baj = and <2 x i16> %i.bai, splat (i16 255)
  %i.bak = mul nuw <2 x i16> %i.baj, splat (i16 257) ; 2 uses
  store <2 x i16> %i.bak, ptr %i.baf, align 4, !tbaa !96
  store <2 x i16> %i.bak, ptr %i.bag, align 4, !tbaa !96
  %i.bal = getelementptr inbounds nuw i8, ptr %1, i64 29324
  %i.bam = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.ban = getelementptr inbounds nuw i8, ptr %1, i64 29332
  %i.bao = load <2 x i16>, ptr %i.bam, align 4, !tbaa !96
  %i.bap = lshr <2 x i16> %i.bao, splat (i16 1)
  %i.baq = and <2 x i16> %i.bap, splat (i16 255)
  %i.bar = mul nuw <2 x i16> %i.baq, splat (i16 257) ; 2 uses
  store <2 x i16> %i.bar, ptr %i.bal, align 4, !tbaa !96
  store <2 x i16> %i.bar, ptr %i.ban, align 4, !tbaa !96
  br label %.loopexit1518

bb.dp:                                            ; preds = %.preheader1520, %decode_cabac_p_mb_sub_type.exit
  %indvars.iv1660 = phi i64 [ 0, %.preheader1520 ], [ %indvars.iv.next1661, %decode_cabac_p_mb_sub_type.exit ] ; 3 uses
  %i.bas = phi i32 [ %.promoted1568, %.preheader1520 ], [ %i.bgp, %decode_cabac_p_mb_sub_type.exit ] ; 2 uses
  %i.bat = phi i32 [ %.promoted, %.preheader1520 ], [ %i.bgq, %decode_cabac_p_mb_sub_type.exit ] ; 2 uses
  %i.bau = load i8, ptr %i.aju, align 1, !tbaa !82
  %i.bav = zext i8 %i.bau to i32                  ; 2 uses
  %i.baw = shl i32 %i.bat, 1
  %i.bax = and i32 %i.baw, 384
  %i.bay = add nuw nsw i32 %i.bax, %i.bav
  %i.baz = zext nneg i32 %i.bay to i64
  %i.bba = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.baz
  %i.bbb = load i8, ptr %i.bba, align 1, !tbaa !82
  %i.bbc = zext i8 %i.bbb to i32                  ; 2 uses
  %i.bbd = sub nsw i32 %i.bat, %i.bbc             ; 2 uses
  %i.bbe = shl i32 %i.bbd, 17                     ; 2 uses
  %i.bbf = icmp slt i32 %i.bbe, %i.bas            ; 3 uses
  %i.bbg = sext i1 %i.bbf to i32
  %i.bbh = select i1 %i.bbf, i32 %i.bbe, i32 0
  %i.bbi = sub nsw i32 %i.bas, %i.bbh
  %i.bbj = select i1 %i.bbf, i32 %i.bbc, i32 %i.bbd ; 2 uses
  %i.bbk = xor i32 %i.bbg, %i.bav                 ; 2 uses
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.bbl
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !82
  store i8 %i.bbn, ptr %i.aju, align 1, !tbaa !82
  %i.bbo = sext i32 %i.bbj to i64
  %i.bbp = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bbo
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !82
  %i.bbr = zext i8 %i.bbq to i32                  ; 2 uses
  %i.bbs = shl i32 %i.bbj, %i.bbr                 ; 4 uses
  store i32 %i.bbs, ptr %i.ajr, align 4, !tbaa !122
  %i.bbt = shl i32 %i.bbi, %i.bbr                 ; 6 uses
  store i32 %i.bbt, ptr %i.ajq, align 16, !tbaa !123
  %i.bbu = and i32 %i.bbt, 65535
  %.not.i.i.i1214 = icmp eq i32 %i.bbu, 0
  br i1 %.not.i.i.i1214, label %bb.dq, label %get_cabac.exit.i1215

bb.dq:                                            ; preds = %bb.dp
  %i.bbv = add nsw i32 %i.bbt, -32768
  %i.bbw = xor i32 %i.bbv, %i.bbt
  %i.bbx = lshr exact i32 %i.bbw, 15
  %i.bby = zext nneg i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bby
  %i.bca = load i8, ptr %i.bbz, align 1, !tbaa !82
  %i.bcb = zext i8 %i.bca to i32
  %i.bcc = sub nsw i32 7, %i.bcb
  %i.bcd = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !82
  %i.bcf = zext i8 %i.bce to i32
  %i.bcg = shl nuw nsw i32 %i.bcf, 9
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcd, i64 1
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !82
  %i.bcj = zext i8 %i.bci to i32
  %i.bck = shl nuw nsw i32 %i.bcj, 1
  %i.bcl = or disjoint i32 %i.bck, %i.bcg
  %i.bcm = add nsw i32 %i.bcl, -65535
  %i.bcn = shl nsw i32 %i.bcm, %i.bcc
  %i.bco = add i32 %i.bcn, %i.bbt                 ; 2 uses
  store i32 %i.bco, ptr %i.ajq, align 16, !tbaa !123
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcd, i64 2
  store ptr %i.bcp, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit.i1215

get_cabac.exit.i1215:                             ; preds = %bb.dq, %bb.dp
  %i.bcq = phi i32 [ %i.bbt, %bb.dp ], [ %i.bco, %bb.dq ] ; 3 uses
  %i.bcr = and i32 %i.bbk, 1
  %.not.i1216 = icmp eq i32 %i.bcr, 0
  br i1 %.not.i1216, label %bb.dr, label %decode_cabac_p_mb_sub_type.exit

bb.dr:                                            ; preds = %get_cabac.exit.i1215
  %i.bcs = load i8, ptr %i.ajv, align 2, !tbaa !82
  %i.bct = zext i8 %i.bcs to i32                  ; 2 uses
  %i.bcu = shl i32 %i.bbs, 1
  %i.bcv = and i32 %i.bcu, 384
  %i.bcw = add nuw nsw i32 %i.bcv, %i.bct
  %i.bcx = zext nneg i32 %i.bcw to i64
  %i.bcy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bcx
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !82
  %i.bda = zext i8 %i.bcz to i32                  ; 2 uses
  %i.bdb = sub nsw i32 %i.bbs, %i.bda             ; 2 uses
  %i.bdc = shl i32 %i.bdb, 17                     ; 2 uses
  %i.bdd = icmp slt i32 %i.bdc, %i.bcq            ; 3 uses
  %i.bde = sext i1 %i.bdd to i32
  %i.bdf = select i1 %i.bdd, i32 %i.bdc, i32 0
  %i.bdg = sub nsw i32 %i.bcq, %i.bdf
  %i.bdh = select i1 %i.bdd, i32 %i.bda, i32 %i.bdb ; 2 uses
  %i.bdi = xor i32 %i.bde, %i.bct                 ; 2 uses
  %i.bdj = sext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.bdj
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !82
  store i8 %i.bdl, ptr %i.ajv, align 2, !tbaa !82
  %i.bdm = sext i32 %i.bdh to i64
  %i.bdn = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bdm
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !82
  %i.bdp = zext i8 %i.bdo to i32                  ; 2 uses
  %i.bdq = shl i32 %i.bdh, %i.bdp                 ; 4 uses
  store i32 %i.bdq, ptr %i.ajr, align 4, !tbaa !122
  %i.bdr = shl i32 %i.bdg, %i.bdp                 ; 6 uses
  store i32 %i.bdr, ptr %i.ajq, align 16, !tbaa !123
  %i.bds = and i32 %i.bdr, 65535
  %.not.i.i8.i = icmp eq i32 %i.bds, 0
  br i1 %.not.i.i8.i, label %bb.ds, label %get_cabac.exit9.i

bb.ds:                                            ; preds = %bb.dr
  %i.bdt = add nsw i32 %i.bdr, -32768
  %i.bdu = xor i32 %i.bdt, %i.bdr
  %i.bdv = lshr exact i32 %i.bdu, 15
  %i.bdw = zext nneg i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bdw
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !82
  %i.bdz = zext i8 %i.bdy to i32
  %i.bea = sub nsw i32 7, %i.bdz
  %i.beb = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !82
  %i.bed = zext i8 %i.bec to i32
  %i.bee = shl nuw nsw i32 %i.bed, 9
  %i.bef = getelementptr inbounds nuw i8, ptr %i.beb, i64 1
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !82
  %i.beh = zext i8 %i.beg to i32
  %i.bei = shl nuw nsw i32 %i.beh, 1
  %i.bej = or disjoint i32 %i.bei, %i.bee
  %i.bek = add nsw i32 %i.bej, -65535
  %i.bel = shl nsw i32 %i.bek, %i.bea
  %i.bem = add i32 %i.bel, %i.bdr                 ; 2 uses
  store i32 %i.bem, ptr %i.ajq, align 16, !tbaa !123
  %i.ben = getelementptr inbounds nuw i8, ptr %i.beb, i64 2
  store ptr %i.ben, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit9.i

get_cabac.exit9.i:                                ; preds = %bb.ds, %bb.dr
  %i.beo = phi i32 [ %i.bdr, %bb.dr ], [ %i.bem, %bb.ds ] ; 3 uses
  %i.bep = and i32 %i.bdi, 1
  %.not6.i = icmp eq i32 %i.bep, 0
  br i1 %.not6.i, label %decode_cabac_p_mb_sub_type.exit, label %bb.dt

bb.dt:                                            ; preds = %get_cabac.exit9.i
  %i.beq = load i8, ptr %i.ajw, align 1, !tbaa !82
  %i.ber = zext i8 %i.beq to i32                  ; 2 uses
  %i.bes = shl i32 %i.bdq, 1
  %i.bet = and i32 %i.bes, 384
  %i.beu = add nuw nsw i32 %i.bet, %i.ber
  %i.bev = zext nneg i32 %i.beu to i64
  %i.bew = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.bev
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !82
  %i.bey = zext i8 %i.bex to i32                  ; 2 uses
  %i.bez = sub nsw i32 %i.bdq, %i.bey             ; 2 uses
  %i.bfa = shl i32 %i.bez, 17                     ; 2 uses
  %i.bfb = icmp slt i32 %i.bfa, %i.beo            ; 3 uses
  %i.bfc = sext i1 %i.bfb to i32
  %i.bfd = select i1 %i.bfb, i32 %i.bfa, i32 0
  %i.bfe = sub nsw i32 %i.beo, %i.bfd
  %i.bff = select i1 %i.bfb, i32 %i.bey, i32 %i.bez ; 2 uses
  %i.bfg = xor i32 %i.bfc, %i.ber                 ; 2 uses
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.bfh
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !82
  store i8 %i.bfj, ptr %i.ajw, align 1, !tbaa !82
  %i.bfk = sext i32 %i.bff to i64
  %i.bfl = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.bfk
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !82
  %i.bfn = zext i8 %i.bfm to i32                  ; 2 uses
  %i.bfo = shl i32 %i.bff, %i.bfn                 ; 2 uses
  store i32 %i.bfo, ptr %i.ajr, align 4, !tbaa !122
  %i.bfp = shl i32 %i.bfe, %i.bfn                 ; 6 uses
  store i32 %i.bfp, ptr %i.ajq, align 16, !tbaa !123
  %i.bfq = and i32 %i.bfp, 65535
  %.not.i.i10.i = icmp eq i32 %i.bfq, 0
  br i1 %.not.i.i10.i, label %bb.du, label %get_cabac.exit11.i

bb.du:                                            ; preds = %bb.dt
  %i.bfr = add nsw i32 %i.bfp, -32768
  %i.bfs = xor i32 %i.bfr, %i.bfp
  %i.bft = lshr exact i32 %i.bfs, 15
  %i.bfu = zext nneg i32 %i.bft to i64
  %i.bfv = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.bfu
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !82
  %i.bfx = zext i8 %i.bfw to i32
  %i.bfy = sub nsw i32 7, %i.bfx
  %i.bfz = load ptr, ptr %i.ajt, align 16, !tbaa !124 ; 3 uses
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !82
  %i.bgb = zext i8 %i.bga to i32
  %i.bgc = shl nuw nsw i32 %i.bgb, 9
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 1
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !82
  %i.bgf = zext i8 %i.bge to i32
  %i.bgg = shl nuw nsw i32 %i.bgf, 1
  %i.bgh = or disjoint i32 %i.bgg, %i.bgc
  %i.bgi = add nsw i32 %i.bgh, -65535
  %i.bgj = shl nsw i32 %i.bgi, %i.bfy
  %i.bgk = add i32 %i.bgj, %i.bfp                 ; 2 uses
  store i32 %i.bgk, ptr %i.ajq, align 16, !tbaa !123
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfz, i64 2
  store ptr %i.bgl, ptr %i.ajt, align 16, !tbaa !124
  br label %get_cabac.exit11.i

get_cabac.exit11.i:                               ; preds = %bb.du, %bb.dt
  %i.bgm = phi i32 [ %i.bgk, %bb.du ], [ %i.bfp, %bb.dt ]
  %i.bgn = and i32 %i.bfg, 1
  %..i1218 = xor i32 %i.bgn, 3
  %i.bgo = zext nneg i32 %..i1218 to i64
  br label %decode_cabac_p_mb_sub_type.exit

decode_cabac_p_mb_sub_type.exit:                  ; preds = %get_cabac.exit.i1215, %get_cabac.exit9.i, %get_cabac.exit11.i
  %i.bgp = phi i32 [ %i.bcq, %get_cabac.exit.i1215 ], [ %i.bgm, %get_cabac.exit11.i ], [ %i.beo, %get_cabac.exit9.i ]
  %i.bgq = phi i32 [ %i.bbs, %get_cabac.exit.i1215 ], [ %i.bfo, %get_cabac.exit11.i ], [ %i.bdq, %get_cabac.exit9.i ]
  %.0.i1217 = phi i64 [ 0, %get_cabac.exit.i1215 ], [ %i.bgo, %get_cabac.exit11.i ], [ 1, %get_cabac.exit9.i ] ; 2 uses
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr %i.ajs, i64 %indvars.iv1660
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 2
  %i.bgu = load i8, ptr %i.bgt, align 2, !tbaa !170
  %i.bgv = zext i8 %i.bgu to i32
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1660
  store i32 %i.bgv, ptr %i.bgw, align 4, !tbaa !93
  %4 = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %.0.i1217
  %i.bgx = load i16, ptr %4, align 4, !tbaa !179
  store i16 %i.bgx, ptr %i.bgr, align 2, !tbaa !96
  %indvars.iv.next1661 = add nuw nsw i64 %indvars.iv1660, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1661, 4
  br i1 %exitcond.not, label %.loopexit1518, label %bb.dp, !llvm.loop !141

.loopexit1518:                                    ; preds = %decode_cabac_p_mb_sub_type.exit, %.loopexit1518.loopexit, %bb.do
  %i.bgy = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 3 uses
  %i.bgz = load i32, ptr %i.bgy, align 8, !tbaa !125
  %.not1610.a = icmp eq i32 %i.bgz, 0
  br i1 %.not1610.a, label %._crit_edge, label %.preheader1517.lr.ph

.preheader1517.lr.ph:                             ; preds = %.loopexit1518
  %i.bha = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bhb = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bhc = getelementptr inbounds nuw i8, ptr %1, i64 21068 ; 4 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 29338
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 29342
  br label %.preheader1517

.preheader1517:                                   ; preds = %.preheader1517.lr.ph, %bb.el
  %indvars.iv1675 = phi i64 [ 0, %.preheader1517.lr.ph ], [ %indvars.iv.next1676, %bb.el ] ; 8 uses
  %indvars.iv1675.tr = trunc nuw i64 %indvars.iv1675 to i32
  %i.bhh = shl nuw i32 %indvars.iv1675.tr, 1
  %i.bhi = shl i32 4096, %i.bhh                   ; 4 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %indvars.iv1675 ; 4 uses
  %i.bhk = getelementptr inbounds nuw [40 x i8], ptr %i.bhd, i64 %indvars.iv1675 ; 12 uses
  %i.bhl = load i16, ptr %i.bha, align 8, !tbaa !96
  %i.bhm = zext i16 %i.bhl to i32                 ; 2 uses
  %i.bhn = and i32 %i.bhm, 256
  %.not984 = icmp eq i32 %i.bhn, 0
  br i1 %.not984, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %.preheader1517
  %i.bho = and i32 %i.bhi, %i.bhm
  %.not985 = icmp eq i32 %i.bho, 0
  br i1 %.not985, label %.thread1362, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bhp = load i32, ptr %i.bhj, align 4, !tbaa !93
  %i.bhq = load i32, ptr %i.bhc, align 4, !tbaa !165
  %i.bhr = shl i32 %i.bhp, %i.bhq                 ; 3 uses
  %i.bhs = icmp ugt i32 %i.bhr, 1
  br i1 %i.bhs, label %bb.dx, label %.thread1362

bb.dx:                                            ; preds = %bb.dw
  %i.bht = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bhu = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bht, i32 noundef 0) ; 3 uses
  %.not986 = icmp ult i32 %i.bhu, %i.bhr
  br i1 %.not986, label %.thread1362, label %bb.dy

bb.dy:                                            ; preds = %bb.ek, %bb.eg, %bb.ec, %bb.dx
  %.lcssa1623.a = phi i32 [ %i.bhu, %bb.dx ], [ %i.bil, %bb.ec ], [ %i.bja, %bb.eg ], [ %i.bjp, %bb.ek ]
  %.lcssa1622 = phi i32 [ %i.bhr, %bb.dx ], [ %i.bii, %bb.ec ], [ %i.bix, %bb.eg ], [ %i.bjm, %bb.ek ]
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !119
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhw, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.lcssa1623.a, i32 noundef %.lcssa1622) #10
  br label %.thread1382

.thread1362:                                      ; preds = %bb.dv, %bb.dw, %bb.dx
  %i.bhx = phi i32 [ 0, %bb.dw ], [ %i.bhu, %bb.dx ], [ -1, %bb.dv ]
  %i.bhy = trunc nsw i32 %i.bhx to i8             ; 3 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhk, i64 21
  store i8 %i.bhy, ptr %i.bhz, align 1, !tbaa !82
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhk, i64 20
  store i8 %i.bhy, ptr %i.bia, align 1, !tbaa !82
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhk, i64 13
  store i8 %i.bhy, ptr %i.bib, align 1, !tbaa !82
  br label %bb.dz

bb.dz:                                            ; preds = %.preheader1517, %.thread1362
  %i.bic = load i16, ptr %i.bhe, align 2, !tbaa !96
  %i.bid = zext i16 %i.bic to i32                 ; 2 uses
  %i.bie = and i32 %i.bid, 256
  %.not984.1 = icmp eq i32 %i.bie, 0
  br i1 %.not984.1, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.bif = and i32 %i.bhi, %i.bid
  %.not985.1 = icmp eq i32 %i.bif, 0
  br i1 %.not985.1, label %.thread1362.1, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.big = load i32, ptr %i.bhj, align 4, !tbaa !93
  %i.bih = load i32, ptr %i.bhc, align 4, !tbaa !165
  %i.bii = shl i32 %i.big, %i.bih                 ; 3 uses
  %i.bij = icmp ugt i32 %i.bii, 1
  br i1 %i.bij, label %bb.ec, label %.thread1362.1

bb.ec:                                            ; preds = %bb.eb
  %i.bik = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bil = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bik, i32 noundef 4) ; 3 uses
  %.not986.1 = icmp ult i32 %i.bil, %i.bii
  br i1 %.not986.1, label %.thread1362.1, label %bb.dy

.thread1362.1:                                    ; preds = %bb.ea, %bb.eb, %bb.ec
  %i.bim = phi i32 [ 0, %bb.eb ], [ %i.bil, %bb.ec ], [ -1, %bb.ea ]
  %i.bin = trunc nsw i32 %i.bim to i8             ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bhk, i64 23
  store i8 %i.bin, ptr %i.bio, align 1, !tbaa !82
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bhk, i64 22
  store i8 %i.bin, ptr %i.bip, align 1, !tbaa !82
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bhk, i64 15
  store i8 %i.bin, ptr %i.biq, align 1, !tbaa !82
  br label %bb.ed

bb.ed:                                            ; preds = %.thread1362.1, %bb.dz
  %i.bir = load i16, ptr %i.bhf, align 4, !tbaa !96
  %i.bis = zext i16 %i.bir to i32                 ; 2 uses
  %i.bit = and i32 %i.bis, 256
  %.not984.2 = icmp eq i32 %i.bit, 0
  br i1 %.not984.2, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.biu = and i32 %i.bhi, %i.bis
  %.not985.2 = icmp eq i32 %i.biu, 0
  br i1 %.not985.2, label %.thread1362.2, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.biv = load i32, ptr %i.bhj, align 4, !tbaa !93
  %i.biw = load i32, ptr %i.bhc, align 4, !tbaa !165
  %i.bix = shl i32 %i.biv, %i.biw                 ; 3 uses
  %i.biy = icmp ugt i32 %i.bix, 1
  br i1 %i.biy, label %bb.eg, label %.thread1362.2

bb.eg:                                            ; preds = %bb.ef
  %i.biz = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bja = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.biz, i32 noundef 8) ; 3 uses
  %.not986.2 = icmp ult i32 %i.bja, %i.bix
  br i1 %.not986.2, label %.thread1362.2, label %bb.dy

.thread1362.2:                                    ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.bjb = phi i32 [ 0, %bb.ef ], [ %i.bja, %bb.eg ], [ -1, %bb.ee ]
  %i.bjc = trunc nsw i32 %i.bjb to i8             ; 3 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bhk, i64 37
  store i8 %i.bjc, ptr %i.bjd, align 1, !tbaa !82
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bhk, i64 36
  store i8 %i.bjc, ptr %i.bje, align 1, !tbaa !82
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bhk, i64 29
  store i8 %i.bjc, ptr %i.bjf, align 1, !tbaa !82
  br label %bb.eh

bb.eh:                                            ; preds = %.thread1362.2, %bb.ed
  %i.bjg = load i16, ptr %i.bhg, align 2, !tbaa !96
  %i.bjh = zext i16 %i.bjg to i32                 ; 2 uses
  %i.bji = and i32 %i.bjh, 256
  %.not984.3 = icmp eq i32 %i.bji, 0
  br i1 %.not984.3, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.bjj = and i32 %i.bhi, %i.bjh
  %.not985.3 = icmp eq i32 %i.bjj, 0
  br i1 %.not985.3, label %.thread1362.3, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bjk = load i32, ptr %i.bhj, align 4, !tbaa !93
  %i.bjl = load i32, ptr %i.bhc, align 4, !tbaa !165
  %i.bjm = shl i32 %i.bjk, %i.bjl                 ; 3 uses
  %i.bjn = icmp ugt i32 %i.bjm, 1
  br i1 %i.bjn, label %bb.ek, label %.thread1362.3

bb.ek:                                            ; preds = %bb.ej
  %i.bjo = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.bjp = call fastcc i32 @decode_cabac_mb_ref(ptr noundef nonnull %1, i32 noundef %i.bjo, i32 noundef 12) ; 3 uses
  %.not986.3 = icmp ult i32 %i.bjp, %i.bjm
  br i1 %.not986.3, label %.thread1362.3, label %bb.dy

.thread1362.3:                                    ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.bjq = phi i32 [ 0, %bb.ej ], [ %i.bjp, %bb.ek ], [ -1, %bb.ei ]
  %i.bjr = trunc nsw i32 %i.bjq to i8             ; 3 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bhk, i64 39
  store i8 %i.bjr, ptr %i.bjs, align 1, !tbaa !82
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bhk, i64 38
  store i8 %i.bjr, ptr %i.bjt, align 1, !tbaa !82
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bhk, i64 31
  store i8 %i.bjr, ptr %i.bju, align 1, !tbaa !82
  br label %bb.el

bb.el:                                            ; preds = %.thread1362.3, %bb.eh
  %indvars.iv.next1676 = add nuw nsw i64 %indvars.iv1675, 1 ; 2 uses
  %i.bjv = load i32, ptr %i.bgy, align 8, !tbaa !125 ; 2 uses
  %i.bjw = zext i32 %i.bjv to i64
  %i.bjx = icmp samesign ult i64 %indvars.iv.next1676, %i.bjw
  br i1 %i.bjx, label %.preheader1517, label %._crit_edge.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %bb.el
  %i.bjy = icmp eq i32 %i.bjv, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit1518
  %.not1611 = phi i1 [ %i.bjy, %._crit_edge.loopexit ], [ true, %.loopexit1518 ]
  %.not974 = icmp eq i32 %i.r, 0
  br i1 %.not974, label %bb.em, label %get_dct8x8_allowed.exit

get_dct8x8_allowed.exit:                          ; preds = %._crit_edge
  %i.bjz = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 72
  %i.bkb = load i32, ptr %i.bka, align 8, !tbaa !180
  %.not.i = icmp eq i32 %i.bkb, 0
end_hunk_0
