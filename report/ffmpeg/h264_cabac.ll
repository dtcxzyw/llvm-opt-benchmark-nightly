Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cabac?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_decode_mb_cabac:bb.a
  store i8 %i.era, ptr %i.eqe, align 1, !tbaa !82
  %i.erb = sext i32 %i.eqw to i64
  %i.erc = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.erb
  %i.erd = load i8, ptr %i.erc, align 1, !tbaa !82
  %i.ere = zext i8 %i.erd to i32                  ; 2 uses
  %i.erf = shl i32 %i.eqw, %i.ere
  store i32 %i.erf, ptr %i.epe, align 4, !tbaa !122
  %i.erg = shl i32 %i.eqv, %i.ere                 ; 5 uses
  store i32 %i.erg, ptr %i.dmm, align 16, !tbaa !123
  %i.erh = and i32 %i.erg, 65535
  %.not.i.i1269 = icmp eq i32 %i.erh, 0
  br i1 %.not.i.i1269, label %bb.mu, label %get_cabac.exit1270

bb.mu:                                            ; preds = %bb.mt
  %i.eri = add nsw i32 %i.erg, -32768
  %i.erj = xor i32 %i.eri, %i.erg
  %i.erk = lshr exact i32 %i.erj, 15
  %i.erl = zext nneg i32 %i.erk to i64
  %i.erm = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.erl
  %i.ern = load i8, ptr %i.erm, align 1, !tbaa !82
  %i.ero = zext i8 %i.ern to i32
  %i.erp = sub nsw i32 7, %i.ero
  %i.erq = load ptr, ptr %i.epf, align 16, !tbaa !124 ; 3 uses
  %i.err = load i8, ptr %i.erq, align 1, !tbaa !82
  %i.ers = zext i8 %i.err to i32
  %i.ert = shl nuw nsw i32 %i.ers, 9
  %i.eru = getelementptr inbounds nuw i8, ptr %i.erq, i64 1
  %i.erv = load i8, ptr %i.eru, align 1, !tbaa !82
  %i.erw = zext i8 %i.erv to i32
  %i.erx = shl nuw nsw i32 %i.erw, 1
  %i.ery = or disjoint i32 %i.erx, %i.ert
  %i.erz = add nsw i32 %i.ery, -65535
  %i.esa = shl nsw i32 %i.erz, %i.erp
  %i.esb = add i32 %i.esa, %i.erg
  store i32 %i.esb, ptr %i.dmm, align 16, !tbaa !123
  %i.esc = getelementptr inbounds nuw i8, ptr %i.erq, i64 2
  store ptr %i.esc, ptr %i.epf, align 16, !tbaa !124
  br label %get_cabac.exit1270

get_cabac.exit1270:                               ; preds = %bb.mt, %bb.mu
  %i.esd = and i32 %i.eqx, 1
  %i.ese = icmp eq i32 %i.esd, 0
  br i1 %i.ese, label %bb.mv, label %.split22.i1091

.split22.i1091:                                   ; preds = %get_cabac.exit1270
  %i.esf = trunc nuw nsw i64 %i.epk to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.epo, i32 noundef 13, i32 noundef range(i32 -2147483648, 48) %i.esf, ptr noundef nonnull %.0846, ptr noundef %i.ept, i32 noundef 64)
  br label %decode_cabac_residual_nondc.exit1092

bb.mv:                                            ; preds = %get_cabac.exit1270
  store i16 0, ptr %i.epx, align 2, !tbaa !96
  %i.esg = getelementptr inbounds nuw i8, ptr %i.epx, i64 8
  store i16 0, ptr %i.esg, align 2, !tbaa !96
  br label %decode_cabac_residual_nondc.exit1092

bb.mw:                                            ; preds = %bb.ms
  %i.esh = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.esi = getelementptr inbounds nuw i8, ptr %i.esh, i64 173808
  %i.esj = getelementptr inbounds nuw [8 x i8], ptr %i.esi, i64 %i.eoz
  %i.esk = load ptr, ptr %i.esj, align 8, !tbaa !186
  %i.esl = getelementptr inbounds [64 x i8], ptr %i.esk, i64 %i.epc
  %i.esm = shl nuw nsw i64 %indvars.iv1743, 2
  %i.esn = add nuw nsw i64 %i.esm, 32
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %decode_cabac_residual_nondc.exit1090
  %indvars.iv1738 = phi i64 [ 0, %bb.mw ], [ %indvars.iv.next1739, %decode_cabac_residual_nondc.exit1090 ] ; 2 uses
  %i.eso = add nuw nsw i64 %indvars.iv1738, %i.esn ; 3 uses
  %.tr1866 = trunc nuw nsw i64 %i.eso to i32
  %i.esp = shl nuw nsw i32 %.tr1866, 4
  %i.esq = shl i32 %i.esp, %i.v
  %i.esr = sext i32 %i.esq to i64
  %i.ess = getelementptr inbounds [2 x i8], ptr %i.epb, i64 %i.esr
  %i.est = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.eso
  %i.esu = load i8, ptr %i.est, align 1, !tbaa !82
  %i.esv = zext i8 %i.esu to i64
  %i.esw = getelementptr i8, ptr %i.epd, i64 %i.esv ; 3 uses
  %i.esx = getelementptr i8, ptr %i.esw, i64 -1
  %i.esy = load i8, ptr %i.esx, align 1, !tbaa !82
  %i.esz = getelementptr i8, ptr %i.esw, i64 -8
  %i.eta = load i8, ptr %i.esz, align 1, !tbaa !82
  %.not1477 = icmp ne i8 %i.esy, 0
  %spec.select.i1184 = zext i1 %.not1477 to i64
  %.not1478 = icmp eq i8 %i.eta, 0
  %i.etb = select i1 %.not1478, i64 480, i64 482
  %i.etc = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.etb
  %i.etd = getelementptr inbounds nuw i8, ptr %i.etc, i64 %spec.select.i1184 ; 2 uses
  %i.ete = load i8, ptr %i.etd, align 1, !tbaa !82
  %i.etf = zext i8 %i.ete to i32                  ; 2 uses
  %i.etg = load i32, ptr %i.epe, align 4, !tbaa !122 ; 2 uses
  %i.eth = shl i32 %i.etg, 1
  %i.eti = and i32 %i.eth, 384
  %i.etj = add nuw nsw i32 %i.eti, %i.etf
  %i.etk = zext nneg i32 %i.etj to i64
  %i.etl = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.etk
  %i.etm = load i8, ptr %i.etl, align 1, !tbaa !82
  %i.etn = zext i8 %i.etm to i32                  ; 2 uses
  %i.eto = sub nsw i32 %i.etg, %i.etn             ; 2 uses
  %i.etp = shl i32 %i.eto, 17                     ; 2 uses
  %i.etq = load i32, ptr %i.dmm, align 16, !tbaa !123 ; 2 uses
  %i.etr = icmp slt i32 %i.etp, %i.etq            ; 3 uses
  %i.ets = sext i1 %i.etr to i32
  %i.ett = select i1 %i.etr, i32 %i.etp, i32 0
  %i.etu = sub nsw i32 %i.etq, %i.ett
  %i.etv = select i1 %i.etr, i32 %i.etn, i32 %i.eto ; 2 uses
  %i.etw = xor i32 %i.ets, %i.etf                 ; 2 uses
  %i.etx = sext i32 %i.etw to i64
  %i.ety = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.etx
  %i.etz = load i8, ptr %i.ety, align 1, !tbaa !82
  store i8 %i.etz, ptr %i.etd, align 1, !tbaa !82
  %i.eua = sext i32 %i.etv to i64
  %i.eub = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.eua
  %i.euc = load i8, ptr %i.eub, align 1, !tbaa !82
  %i.eud = zext i8 %i.euc to i32                  ; 2 uses
  %i.eue = shl i32 %i.etv, %i.eud
  store i32 %i.eue, ptr %i.epe, align 4, !tbaa !122
  %i.euf = shl i32 %i.etu, %i.eud                 ; 5 uses
  store i32 %i.euf, ptr %i.dmm, align 16, !tbaa !123
  %i.eug = and i32 %i.euf, 65535
  %.not.i.i1271 = icmp eq i32 %i.eug, 0
  br i1 %.not.i.i1271, label %bb.my, label %get_cabac.exit1272

bb.my:                                            ; preds = %bb.mx
  %i.euh = add nsw i32 %i.euf, -32768
  %i.eui = xor i32 %i.euh, %i.euf
  %i.euj = lshr exact i32 %i.eui, 15
  %i.euk = zext nneg i32 %i.euj to i64
  %i.eul = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.euk
  %i.eum = load i8, ptr %i.eul, align 1, !tbaa !82
  %i.eun = zext i8 %i.eum to i32
  %i.euo = sub nsw i32 7, %i.eun
  %i.eup = load ptr, ptr %i.epf, align 16, !tbaa !124 ; 3 uses
  %i.euq = load i8, ptr %i.eup, align 1, !tbaa !82
  %i.eur = zext i8 %i.euq to i32
  %i.eus = shl nuw nsw i32 %i.eur, 9
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eup, i64 1
  %i.euu = load i8, ptr %i.eut, align 1, !tbaa !82
  %i.euv = zext i8 %i.euu to i32
  %i.euw = shl nuw nsw i32 %i.euv, 1
  %i.eux = or disjoint i32 %i.euw, %i.eus
  %i.euy = add nsw i32 %i.eux, -65535
  %i.euz = shl nsw i32 %i.euy, %i.euo
  %i.eva = add i32 %i.euz, %i.euf
  store i32 %i.eva, ptr %i.dmm, align 16, !tbaa !123
  %i.evb = getelementptr inbounds nuw i8, ptr %i.eup, i64 2
  store ptr %i.evb, ptr %i.epf, align 16, !tbaa !124
  br label %get_cabac.exit1272

get_cabac.exit1272:                               ; preds = %bb.mx, %bb.my
  %i.evc = and i32 %i.etw, 1
  %i.evd = icmp eq i32 %i.evc, 0
  br i1 %i.evd, label %bb.mz, label %.split22.i1089

.split22.i1089:                                   ; preds = %get_cabac.exit1272
  %i.eve = trunc nuw nsw i64 %i.eso to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ess, i32 noundef 12, i32 noundef range(i32 -2147483648, 48) %i.eve, ptr noundef nonnull %.0847, ptr noundef %i.esl, i32 noundef 16)
  br label %decode_cabac_residual_nondc.exit1090

bb.mz:                                            ; preds = %get_cabac.exit1272
  store i8 0, ptr %i.esw, align 1, !tbaa !82
  br label %decode_cabac_residual_nondc.exit1090

decode_cabac_residual_nondc.exit1090:             ; preds = %.split22.i1089, %bb.mz
  %indvars.iv.next1739 = add nuw nsw i64 %indvars.iv1738, 1 ; 2 uses
  %exitcond1742.not = icmp eq i64 %indvars.iv.next1739, 4
  br i1 %exitcond1742.not, label %decode_cabac_residual_nondc.exit1092, label %bb.mx, !llvm.loop !156

bb.na:                                            ; preds = %bb.mr
  %i.evf = shl nuw nsw i64 %indvars.iv1743, 2
  %i.evg = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.evf
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 32
  %i.evi = load i8, ptr %i.evh, align 4, !tbaa !82
  %i.evj = zext i8 %i.evi to i64
  %i.evk = getelementptr inbounds nuw i8, ptr %i.epd, i64 %i.evj ; 2 uses
  store i16 0, ptr %i.evk, align 2, !tbaa !96
  %i.evl = getelementptr inbounds nuw i8, ptr %i.evk, i64 8
  store i16 0, ptr %i.evl, align 2, !tbaa !96
  br label %decode_cabac_residual_nondc.exit1092

decode_cabac_residual_nondc.exit1092:             ; preds = %decode_cabac_residual_nondc.exit1090, %bb.mv, %.split22.i1091, %bb.na
  %indvars.iv.next1744 = add nuw nsw i64 %indvars.iv1743, 1 ; 2 uses
  %exitcond1747.not = icmp eq i64 %indvars.iv.next1744, 4
  br i1 %exitcond1747.not, label %decode_cabac_luma_residual.exit.thread, label %bb.mr, !llvm.loop !157

bb.nb:                                            ; preds = %decode_cabac_luma_residual.exit1078
  %i.evm = and i32 %.1874, 48
  %.not1022 = icmp eq i32 %i.evm, 0
  br i1 %.not1022, label %.loopexit1511, label %.preheader1510

.preheader1510:                                   ; preds = %bb.nb
  %i.evn = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.evo = getelementptr inbounds nuw i8, ptr %1, i64 21100 ; 2 uses
  %i.evp = getelementptr inbounds nuw i8, ptr %1, i64 21096 ; 2 uses
  %i.evq = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.evr = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.evs = shl i32 256, %i.v
  %i.evt = sext i32 %i.evs to i64
  %i.evu = getelementptr inbounds [2 x i8], ptr %i.evn, i64 %i.evt
  %i.evv = load i32, ptr %i.evo, align 4, !tbaa !126 ; 2 uses
  %i.evw = load i32, ptr %i.evp, align 8, !tbaa !127 ; 2 uses
  %i.evx = lshr i32 %i.evv, 6
  %.lobit1856 = and i32 %i.evx, 1
  %i.evy = lshr i32 %i.evw, 5
  %i.evz = and i32 %i.evy, 2
  %.1.i11991857 = or disjoint i32 %.lobit1856, %i.evz
  %.1.i1199 = zext nneg i32 %.1.i11991857 to i64
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %.1.i1199
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.ewa, i64 97 ; 2 uses
  %i.ewc = load i8, ptr %i.ewb, align 1, !tbaa !82
  %i.ewd = zext i8 %i.ewc to i32                  ; 2 uses
  %i.ewe = load i32, ptr %i.evq, align 4, !tbaa !122 ; 2 uses
  %i.ewf = shl i32 %i.ewe, 1
  %i.ewg = and i32 %i.ewf, 384
  %i.ewh = add nuw nsw i32 %i.ewg, %i.ewd
  %i.ewi = zext nneg i32 %i.ewh to i64
  %i.ewj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.ewi
  %i.ewk = load i8, ptr %i.ewj, align 1, !tbaa !82
  %i.ewl = zext i8 %i.ewk to i32                  ; 2 uses
  %i.ewm = sub nsw i32 %i.ewe, %i.ewl             ; 2 uses
  %i.ewn = shl i32 %i.ewm, 17                     ; 2 uses
  %i.ewo = load i32, ptr %i.dmm, align 16, !tbaa !123 ; 2 uses
  %i.ewp = icmp slt i32 %i.ewn, %i.ewo            ; 3 uses
  %i.ewq = sext i1 %i.ewp to i32
  %i.ewr = select i1 %i.ewp, i32 %i.ewn, i32 0
  %i.ews = sub nsw i32 %i.ewo, %i.ewr
  %i.ewt = select i1 %i.ewp, i32 %i.ewl, i32 %i.ewm ; 2 uses
  %i.ewu = xor i32 %i.ewq, %i.ewd                 ; 2 uses
  %i.ewv = sext i32 %i.ewu to i64
  %i.eww = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ewv
  %i.ewx = load i8, ptr %i.eww, align 1, !tbaa !82
  store i8 %i.ewx, ptr %i.ewb, align 1, !tbaa !82
  %i.ewy = sext i32 %i.ewt to i64
  %i.ewz = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ewy
  %i.exa = load i8, ptr %i.ewz, align 1, !tbaa !82
  %i.exb = zext i8 %i.exa to i32                  ; 2 uses
  %i.exc = shl i32 %i.ewt, %i.exb                 ; 2 uses
  store i32 %i.exc, ptr %i.evq, align 4, !tbaa !122
  %i.exd = shl i32 %i.ews, %i.exb                 ; 6 uses
  store i32 %i.exd, ptr %i.dmm, align 16, !tbaa !123
  %i.exe = and i32 %i.exd, 65535
  %.not.i.i1273 = icmp eq i32 %i.exe, 0
  br i1 %.not.i.i1273, label %bb.nc, label %get_cabac.exit1274

bb.nc:                                            ; preds = %.preheader1510
  %i.exf = add nsw i32 %i.exd, -32768
  %i.exg = xor i32 %i.exf, %i.exd
  %i.exh = lshr exact i32 %i.exg, 15
  %i.exi = zext nneg i32 %i.exh to i64
  %i.exj = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.exi
  %i.exk = load i8, ptr %i.exj, align 1, !tbaa !82
  %i.exl = zext i8 %i.exk to i32
  %i.exm = sub nsw i32 7, %i.exl
  %i.exn = load ptr, ptr %i.evr, align 16, !tbaa !124 ; 3 uses
  %i.exo = load i8, ptr %i.exn, align 1, !tbaa !82
  %i.exp = zext i8 %i.exo to i32
  %i.exq = shl nuw nsw i32 %i.exp, 9
  %i.exr = getelementptr inbounds nuw i8, ptr %i.exn, i64 1
  %i.exs = load i8, ptr %i.exr, align 1, !tbaa !82
  %i.ext = zext i8 %i.exs to i32
  %i.exu = shl nuw nsw i32 %i.ext, 1
  %i.exv = or disjoint i32 %i.exu, %i.exq
  %i.exw = add nsw i32 %i.exv, -65535
  %i.exx = shl nsw i32 %i.exw, %i.exm
  %i.exy = add i32 %i.exx, %i.exd                 ; 2 uses
  store i32 %i.exy, ptr %i.dmm, align 16, !tbaa !123
  %i.exz = getelementptr inbounds nuw i8, ptr %i.exn, i64 2
  store ptr %i.exz, ptr %i.evr, align 16, !tbaa !124
  br label %get_cabac.exit1274

get_cabac.exit1274:                               ; preds = %.preheader1510, %bb.nc
  %i.eya = phi i32 [ %i.exd, %.preheader1510 ], [ %i.exy, %bb.nc ]
  %i.eyb = and i32 %i.ewu, 1
  %i.eyc = icmp eq i32 %i.eyb, 0
  br i1 %i.eyc, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %get_cabac.exit1274
  %i.eyd = getelementptr inbounds nuw i8, ptr %1, i64 28656
  store i8 0, ptr %i.eyd, align 16, !tbaa !82
  br label %decode_cabac_residual_dc_422.exit

bb.ne:                                            ; preds = %get_cabac.exit1274
  call fastcc void @decode_cabac_residual_dc_internal_422(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.evu, i32 noundef range(i32 49, 51) 49)
  %.pre1767 = load i32, ptr %i.evo, align 4, !tbaa !126
  %.pre1768 = load i32, ptr %i.evp, align 8, !tbaa !127
  %.pre1769 = load i32, ptr %i.evq, align 4, !tbaa !122
  %.pre1770 = load i32, ptr %i.dmm, align 16, !tbaa !123
  br label %decode_cabac_residual_dc_422.exit

decode_cabac_residual_dc_422.exit:                ; preds = %bb.nd, %bb.ne
  %i.eye = phi i32 [ %i.eya, %bb.nd ], [ %.pre1770, %bb.ne ] ; 2 uses
  %i.eyf = phi i32 [ %i.exc, %bb.nd ], [ %.pre1769, %bb.ne ] ; 2 uses
  %i.eyg = phi i32 [ %i.evw, %bb.nd ], [ %.pre1768, %bb.ne ]
  %i.eyh = phi i32 [ %i.evv, %bb.nd ], [ %.pre1767, %bb.ne ]
  %i.eyi = shl i32 512, %i.v
  %i.eyj = sext i32 %i.eyi to i64
  %i.eyk = getelementptr inbounds [2 x i8], ptr %i.evn, i64 %i.eyj
  %i.eyl = lshr i32 %i.eyh, 7
  %.lobit1858 = and i32 %i.eyl, 1
  %i.eym = lshr i32 %i.eyg, 6
  %i.eyn = and i32 %i.eym, 2
  %.1.i1199.11859 = or disjoint i32 %.lobit1858, %i.eyn
  %.1.i1199.1 = zext nneg i32 %.1.i1199.11859 to i64
  %i.eyo = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %.1.i1199.1
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 97 ; 2 uses
  %i.eyq = load i8, ptr %i.eyp, align 1, !tbaa !82
  %i.eyr = zext i8 %i.eyq to i32                  ; 2 uses
  %i.eys = shl i32 %i.eyf, 1
  %i.eyt = and i32 %i.eys, 384
  %i.eyu = add nuw nsw i32 %i.eyt, %i.eyr
  %i.eyv = zext nneg i32 %i.eyu to i64
  %i.eyw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.eyv
  %i.eyx = load i8, ptr %i.eyw, align 1, !tbaa !82
  %i.eyy = zext i8 %i.eyx to i32                  ; 2 uses
  %i.eyz = sub nsw i32 %i.eyf, %i.eyy             ; 2 uses
  %i.eza = shl i32 %i.eyz, 17                     ; 2 uses
  %i.ezb = icmp slt i32 %i.eza, %i.eye            ; 3 uses
  %i.ezc = sext i1 %i.ezb to i32
  %i.ezd = select i1 %i.ezb, i32 %i.eza, i32 0
  %i.eze = sub nsw i32 %i.eye, %i.ezd
  %i.ezf = select i1 %i.ezb, i32 %i.eyy, i32 %i.eyz ; 2 uses
  %i.ezg = xor i32 %i.ezc, %i.eyr                 ; 2 uses
  %i.ezh = sext i32 %i.ezg to i64
  %i.ezi = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.ezh
  %i.ezj = load i8, ptr %i.ezi, align 1, !tbaa !82
  store i8 %i.ezj, ptr %i.eyp, align 1, !tbaa !82
  %i.ezk = sext i32 %i.ezf to i64
  %i.ezl = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ezk
  %i.ezm = load i8, ptr %i.ezl, align 1, !tbaa !82
  %i.ezn = zext i8 %i.ezm to i32                  ; 2 uses
  %i.ezo = shl i32 %i.ezf, %i.ezn
  store i32 %i.ezo, ptr %i.evq, align 4, !tbaa !122
  %i.ezp = shl i32 %i.eze, %i.ezn                 ; 5 uses
  store i32 %i.ezp, ptr %i.dmm, align 16, !tbaa !123
  %i.ezq = and i32 %i.ezp, 65535
  %.not.i.i1273.1 = icmp eq i32 %i.ezq, 0
  br i1 %.not.i.i1273.1, label %bb.nf, label %get_cabac.exit1274.1

bb.nf:                                            ; preds = %decode_cabac_residual_dc_422.exit
  %i.ezr = add nsw i32 %i.ezp, -32768
  %i.ezs = xor i32 %i.ezr, %i.ezp
  %i.ezt = lshr exact i32 %i.ezs, 15
  %i.ezu = zext nneg i32 %i.ezt to i64
  %i.ezv = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ezu
  %i.ezw = load i8, ptr %i.ezv, align 1, !tbaa !82
  %i.ezx = zext i8 %i.ezw to i32
  %i.ezy = sub nsw i32 7, %i.ezx
  %i.ezz = load ptr, ptr %i.evr, align 16, !tbaa !124 ; 3 uses
  %i.faa = load i8, ptr %i.ezz, align 1, !tbaa !82
  %i.fab = zext i8 %i.faa to i32
  %i.fac = shl nuw nsw i32 %i.fab, 9
  %i.fad = getelementptr inbounds nuw i8, ptr %i.ezz, i64 1
  %i.fae = load i8, ptr %i.fad, align 1, !tbaa !82
  %i.faf = zext i8 %i.fae to i32
  %i.fag = shl nuw nsw i32 %i.faf, 1
  %i.fah = or disjoint i32 %i.fag, %i.fac
  %i.fai = add nsw i32 %i.fah, -65535
  %i.faj = shl nsw i32 %i.fai, %i.ezy
  %i.fak = add i32 %i.faj, %i.ezp
  store i32 %i.fak, ptr %i.dmm, align 16, !tbaa !123
  %i.fal = getelementptr inbounds nuw i8, ptr %i.ezz, i64 2
  store ptr %i.fal, ptr %i.evr, align 16, !tbaa !124
  br label %get_cabac.exit1274.1

get_cabac.exit1274.1:                             ; preds = %bb.nf, %decode_cabac_residual_dc_422.exit
  %i.fam = and i32 %i.ezg, 1
  %i.fan = icmp eq i32 %i.fam, 0
  br i1 %i.fan, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %get_cabac.exit1274.1
  call fastcc void @decode_cabac_residual_dc_internal_422(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eyk, i32 noundef range(i32 49, 51) 50)
  br label %.loopexit1511

bb.nh:                                            ; preds = %get_cabac.exit1274.1
  %i.fao = getelementptr inbounds nuw i8, ptr %1, i64 28696
  store i8 0, ptr %i.fao, align 8, !tbaa !82
  br label %.loopexit1511

.loopexit1511:                                    ; preds = %bb.ng, %bb.nh, %bb.nb
  %i.fap = and i32 %.1874, 32
  %.not1023 = icmp eq i32 %i.fap, 0
  br i1 %.not1023, label %bb.nr, label %.preheader1508

.preheader1508:                                   ; preds = %.loopexit1511
  %i.faq = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.far = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fas = getelementptr inbounds nuw i8, ptr %.0847, i64 1 ; 4 uses
  %i.fat = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 4 uses
  %i.fau = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 8 uses
  %i.fav = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 8 uses
  %i.faw = shl i32 16, %i.v
  %i.fax = sext i32 %i.faw to i64                 ; 4 uses
  %.pre1771 = load i32, ptr %i.c, align 4, !tbaa !93
  %i.fay = and i32 %.pre1771, 7
  %.not1024 = icmp eq i32 %i.fay, 0
  %i.faz = select i1 %.not1024, i64 3, i64 0
  br label %bb.ni

.loopexit1507:                                    ; preds = %decode_cabac_residual_nondc.exit1098.3
  br i1 %i.fba, label %bb.ni, label %decode_cabac_luma_residual.exit.thread, !llvm.loop !158

bb.ni:                                            ; preds = %.preheader1508, %.loopexit1507
  %i.fba = phi i1 [ true, %.preheader1508 ], [ false, %.loopexit1507 ]
  %indvars.iv1717 = phi i64 [ 0, %.preheader1508 ], [ 1, %.loopexit1507 ] ; 3 uses
  %i.fbb = shl nuw nsw i64 %indvars.iv1717, 4
  %i.fbc = add nuw nsw i64 %i.fbb, 16             ; 2 uses
end_hunk_0
begin_hunk_1_@ff_h264_decode_mb_cabac:bb.a
  %i.fhr = zext i8 %i.fhq to i32                  ; 2 uses
  %i.fhs = sub nsw i32 %i.fgv, %i.fhr             ; 2 uses
  %i.fht = shl i32 %i.fhs, 17                     ; 2 uses
  %i.fhu = icmp slt i32 %i.fht, %i.fgu            ; 3 uses
  %i.fhv = sext i1 %i.fhu to i32
  %i.fhw = select i1 %i.fhu, i32 %i.fht, i32 0
  %i.fhx = sub nsw i32 %i.fgu, %i.fhw
  %i.fhy = select i1 %i.fhu, i32 %i.fhr, i32 %i.fhs ; 2 uses
  %i.fhz = xor i32 %i.fhv, %i.fhk                 ; 2 uses
  %i.fia = sext i32 %i.fhz to i64
  %i.fib = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fia
  %i.fic = load i8, ptr %i.fib, align 1, !tbaa !82
  store i8 %i.fic, ptr %i.fhi, align 1, !tbaa !82
  %i.fid = sext i32 %i.fhy to i64
  %i.fie = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fid
  %i.fif = load i8, ptr %i.fie, align 1, !tbaa !82
  %i.fig = zext i8 %i.fif to i32                  ; 2 uses
  %i.fih = shl i32 %i.fhy, %i.fig                 ; 2 uses
  store i32 %i.fih, ptr %i.fau, align 4, !tbaa !122
  %i.fii = shl i32 %i.fhx, %i.fig                 ; 6 uses
  store i32 %i.fii, ptr %i.dmm, align 16, !tbaa !123
  %i.fij = and i32 %i.fii, 65535
  %.not.i.i1275.2 = icmp eq i32 %i.fij, 0
  br i1 %.not.i.i1275.2, label %bb.nn, label %get_cabac.exit1276.2

bb.nn:                                            ; preds = %decode_cabac_residual_nondc.exit1098.1
  %i.fik = add nsw i32 %i.fii, -32768
  %i.fil = xor i32 %i.fik, %i.fii
  %i.fim = lshr exact i32 %i.fil, 15
  %i.fin = zext nneg i32 %i.fim to i64
  %i.fio = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fin
  %i.fip = load i8, ptr %i.fio, align 1, !tbaa !82
  %i.fiq = zext i8 %i.fip to i32
  %i.fir = sub nsw i32 7, %i.fiq
  %i.fis = load ptr, ptr %i.fav, align 16, !tbaa !124 ; 3 uses
  %i.fit = load i8, ptr %i.fis, align 1, !tbaa !82
  %i.fiu = zext i8 %i.fit to i32
  %i.fiv = shl nuw nsw i32 %i.fiu, 9
  %i.fiw = getelementptr inbounds nuw i8, ptr %i.fis, i64 1
  %i.fix = load i8, ptr %i.fiw, align 1, !tbaa !82
  %i.fiy = zext i8 %i.fix to i32
  %i.fiz = shl nuw nsw i32 %i.fiy, 1
  %i.fja = or disjoint i32 %i.fiz, %i.fiv
  %i.fjb = add nsw i32 %i.fja, -65535
  %i.fjc = shl nsw i32 %i.fjb, %i.fir
  %i.fjd = add i32 %i.fjc, %i.fii                 ; 2 uses
  store i32 %i.fjd, ptr %i.dmm, align 16, !tbaa !123
  %i.fje = getelementptr inbounds nuw i8, ptr %i.fis, i64 2
  store ptr %i.fje, ptr %i.fav, align 16, !tbaa !124
  br label %get_cabac.exit1276.2

get_cabac.exit1276.2:                             ; preds = %bb.nn, %decode_cabac_residual_nondc.exit1098.1
  %i.fjf = phi i32 [ %i.fjd, %bb.nn ], [ %i.fii, %decode_cabac_residual_nondc.exit1098.1 ]
  %i.fjg = and i32 %i.fhz, 1
  %i.fjh = icmp eq i32 %i.fjg, 0
  br i1 %i.fjh, label %bb.no, label %.split22.i1097.2

.split22.i1097.2:                                 ; preds = %get_cabac.exit1276.2
  %i.fji = trunc nuw nsw i64 %i.fgx to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.fgw, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.fji, ptr noundef nonnull %i.fas, ptr noundef %i.fbp, i32 noundef 15)
  %.pre1776 = load i32, ptr %i.fau, align 4, !tbaa !122
  %.pre1777 = load i32, ptr %i.dmm, align 16, !tbaa !123
  br label %decode_cabac_residual_nondc.exit1098.2

bb.no:                                            ; preds = %get_cabac.exit1276.2
  store i8 0, ptr %i.fhb, align 1, !tbaa !82
  br label %decode_cabac_residual_nondc.exit1098.2

decode_cabac_residual_nondc.exit1098.2:           ; preds = %bb.no, %.split22.i1097.2
  %i.fjj = phi i32 [ %i.fjf, %bb.no ], [ %.pre1777, %.split22.i1097.2 ] ; 2 uses
  %i.fjk = phi i32 [ %i.fih, %bb.no ], [ %.pre1776, %.split22.i1097.2 ] ; 2 uses
  %i.fjl = getelementptr inbounds [2 x i8], ptr %i.fgw, i64 %i.fax ; 2 uses
  %i.fjm = or disjoint i64 %i.fbr, 3              ; 2 uses
  %i.fjn = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.fjm
  %i.fjo = load i8, ptr %i.fjn, align 1, !tbaa !82
  %i.fjp = zext i8 %i.fjo to i64
  %i.fjq = getelementptr i8, ptr %i.fat, i64 %i.fjp ; 3 uses
  %i.fjr = getelementptr i8, ptr %i.fjq, i64 -1
  %i.fjs = load i8, ptr %i.fjr, align 1, !tbaa !82
  %i.fjt = getelementptr i8, ptr %i.fjq, i64 -8
  %i.fju = load i8, ptr %i.fjt, align 1, !tbaa !82
  %.not1463.3 = icmp ne i8 %i.fjs, 0
  %spec.select.i1176.3 = zext i1 %.not1463.3 to i64 ; 2 uses
  %.not1464.3 = icmp eq i8 %i.fju, 0
  %i.fjv = or disjoint i64 %spec.select.i1176.3, 2
  %.1.i1177.3 = select i1 %.not1464.3, i64 %spec.select.i1176.3, i64 %i.fjv
  %i.fjw = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %.1.i1177.3
  %i.fjx = getelementptr inbounds nuw i8, ptr %i.fjw, i64 101 ; 2 uses
  %i.fjy = load i8, ptr %i.fjx, align 1, !tbaa !82
  %i.fjz = zext i8 %i.fjy to i32                  ; 2 uses
  %i.fka = shl i32 %i.fjk, 1
  %i.fkb = and i32 %i.fka, 384
  %i.fkc = add nuw nsw i32 %i.fkb, %i.fjz
  %i.fkd = zext nneg i32 %i.fkc to i64
  %i.fke = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fkd
  %i.fkf = load i8, ptr %i.fke, align 1, !tbaa !82
  %i.fkg = zext i8 %i.fkf to i32                  ; 2 uses
  %i.fkh = sub nsw i32 %i.fjk, %i.fkg             ; 2 uses
  %i.fki = shl i32 %i.fkh, 17                     ; 2 uses
  %i.fkj = icmp slt i32 %i.fki, %i.fjj            ; 3 uses
  %i.fkk = sext i1 %i.fkj to i32
  %i.fkl = select i1 %i.fkj, i32 %i.fki, i32 0
  %i.fkm = sub nsw i32 %i.fjj, %i.fkl
  %i.fkn = select i1 %i.fkj, i32 %i.fkg, i32 %i.fkh ; 2 uses
  %i.fko = xor i32 %i.fkk, %i.fjz                 ; 2 uses
  %i.fkp = sext i32 %i.fko to i64
  %i.fkq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fkp
  %i.fkr = load i8, ptr %i.fkq, align 1, !tbaa !82
  store i8 %i.fkr, ptr %i.fjx, align 1, !tbaa !82
  %i.fks = sext i32 %i.fkn to i64
  %i.fkt = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fks
  %i.fku = load i8, ptr %i.fkt, align 1, !tbaa !82
  %i.fkv = zext i8 %i.fku to i32                  ; 2 uses
  %i.fkw = shl i32 %i.fkn, %i.fkv
  store i32 %i.fkw, ptr %i.fau, align 4, !tbaa !122
  %i.fkx = shl i32 %i.fkm, %i.fkv                 ; 5 uses
  store i32 %i.fkx, ptr %i.dmm, align 16, !tbaa !123
  %i.fky = and i32 %i.fkx, 65535
  %.not.i.i1275.3 = icmp eq i32 %i.fky, 0
  br i1 %.not.i.i1275.3, label %bb.np, label %get_cabac.exit1276.3

bb.np:                                            ; preds = %decode_cabac_residual_nondc.exit1098.2
  %i.fkz = add nsw i32 %i.fkx, -32768
  %i.fla = xor i32 %i.fkz, %i.fkx
  %i.flb = lshr exact i32 %i.fla, 15
  %i.flc = zext nneg i32 %i.flb to i64
  %i.fld = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.flc
  %i.fle = load i8, ptr %i.fld, align 1, !tbaa !82
  %i.flf = zext i8 %i.fle to i32
  %i.flg = sub nsw i32 7, %i.flf
  %i.flh = load ptr, ptr %i.fav, align 16, !tbaa !124 ; 3 uses
  %i.fli = load i8, ptr %i.flh, align 1, !tbaa !82
  %i.flj = zext i8 %i.fli to i32
  %i.flk = shl nuw nsw i32 %i.flj, 9
  %i.fll = getelementptr inbounds nuw i8, ptr %i.flh, i64 1
  %i.flm = load i8, ptr %i.fll, align 1, !tbaa !82
  %i.fln = zext i8 %i.flm to i32
  %i.flo = shl nuw nsw i32 %i.fln, 1
  %i.flp = or disjoint i32 %i.flo, %i.flk
  %i.flq = add nsw i32 %i.flp, -65535
  %i.flr = shl nsw i32 %i.flq, %i.flg
  %i.fls = add i32 %i.flr, %i.fkx
  store i32 %i.fls, ptr %i.dmm, align 16, !tbaa !123
  %i.flt = getelementptr inbounds nuw i8, ptr %i.flh, i64 2
  store ptr %i.flt, ptr %i.fav, align 16, !tbaa !124
  br label %get_cabac.exit1276.3

get_cabac.exit1276.3:                             ; preds = %bb.np, %decode_cabac_residual_nondc.exit1098.2
  %i.flu = and i32 %i.fko, 1
  %i.flv = icmp eq i32 %i.flu, 0
  br i1 %i.flv, label %bb.nq, label %.split22.i1097.3

.split22.i1097.3:                                 ; preds = %get_cabac.exit1276.3
  %i.flw = trunc nuw nsw i64 %i.fjm to i32
  call fastcc void @decode_cabac_residual_nondc_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.fjl, i32 noundef 4, i32 noundef range(i32 -2147483648, 48) %i.flw, ptr noundef nonnull %i.fas, ptr noundef %i.fbp, i32 noundef 15)
  br label %decode_cabac_residual_nondc.exit1098.3

bb.nq:                                            ; preds = %get_cabac.exit1276.3
  store i8 0, ptr %i.fjq, align 1, !tbaa !82
  br label %decode_cabac_residual_nondc.exit1098.3

decode_cabac_residual_nondc.exit1098.3:           ; preds = %bb.nq, %.split22.i1097.3
  %i.flx = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fax
  br i1 %i.fbq, label %.preheader1506, label %.loopexit1507, !llvm.loop !159

bb.nr:                                            ; preds = %.loopexit1511
  %i.fly = getelementptr inbounds nuw i8, ptr %1, i64 28668
  store i32 0, ptr %i.fly, align 4, !tbaa !93
  %i.flz = getelementptr inbounds nuw i8, ptr %1, i64 28676
  store i32 0, ptr %i.flz, align 4, !tbaa !93
  %i.fma = getelementptr inbounds nuw i8, ptr %1, i64 28684
  store i32 0, ptr %i.fma, align 4, !tbaa !93
  %i.fmb = getelementptr inbounds nuw i8, ptr %1, i64 28692
  store i32 0, ptr %i.fmb, align 4, !tbaa !93
  %i.fmc = getelementptr inbounds nuw i8, ptr %1, i64 28708
  store i32 0, ptr %i.fmc, align 4, !tbaa !93
  %i.fmd = getelementptr inbounds nuw i8, ptr %1, i64 28716
  store i32 0, ptr %i.fmd, align 4, !tbaa !93
  %i.fme = getelementptr inbounds nuw i8, ptr %1, i64 28724
  store i32 0, ptr %i.fme, align 4, !tbaa !93
  %i.fmf = getelementptr inbounds nuw i8, ptr %1, i64 28732
  store i32 0, ptr %i.fmf, align 4, !tbaa !93
  br label %decode_cabac_luma_residual.exit.thread

bb.ns:                                            ; preds = %decode_cabac_luma_residual.exit1078
  %i.fmg = and i32 %.1874, 48
  %.not1019 = icmp eq i32 %i.fmg, 0
  br i1 %.not1019, label %.loopexit1502, label %.preheader1501

.preheader1501:                                   ; preds = %bb.ns
  %i.fmh = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.fmi = getelementptr inbounds nuw i8, ptr %1, i64 21100 ; 2 uses
  %i.fmj = getelementptr inbounds nuw i8, ptr %1, i64 21096 ; 2 uses
  %i.fmk = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.fml = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.fmm = shl i32 256, %i.v
  %i.fmn = sext i32 %i.fmm to i64
  %i.fmo = getelementptr inbounds [2 x i8], ptr %i.fmh, i64 %i.fmn
  %i.fmp = load i32, ptr %i.fmi, align 4, !tbaa !126 ; 2 uses
  %i.fmq = load i32, ptr %i.fmj, align 8, !tbaa !127 ; 2 uses
  %i.fmr = lshr i32 %i.fmp, 6
  %.lobit1867 = and i32 %i.fmr, 1
  %i.fms = lshr i32 %i.fmq, 5
  %i.fmt = and i32 %i.fms, 2
  %.1.i11691868 = or disjoint i32 %.lobit1867, %i.fmt
  %.1.i1169 = zext nneg i32 %.1.i11691868 to i64
  %i.fmu = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %.1.i1169
  %i.fmv = getelementptr inbounds nuw i8, ptr %i.fmu, i64 97 ; 2 uses
  %i.fmw = load i8, ptr %i.fmv, align 1, !tbaa !82
  %i.fmx = zext i8 %i.fmw to i32                  ; 2 uses
  %i.fmy = load i32, ptr %i.fmk, align 4, !tbaa !122 ; 2 uses
  %i.fmz = shl i32 %i.fmy, 1
  %i.fna = and i32 %i.fmz, 384
  %i.fnb = add nuw nsw i32 %i.fna, %i.fmx
  %i.fnc = zext nneg i32 %i.fnb to i64
  %i.fnd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fnc
  %i.fne = load i8, ptr %i.fnd, align 1, !tbaa !82
  %i.fnf = zext i8 %i.fne to i32                  ; 2 uses
  %i.fng = sub nsw i32 %i.fmy, %i.fnf             ; 2 uses
  %i.fnh = shl i32 %i.fng, 17                     ; 2 uses
  %i.fni = load i32, ptr %i.dmm, align 16, !tbaa !123 ; 2 uses
  %i.fnj = icmp slt i32 %i.fnh, %i.fni            ; 3 uses
  %i.fnk = sext i1 %i.fnj to i32
  %i.fnl = select i1 %i.fnj, i32 %i.fnh, i32 0
  %i.fnm = sub nsw i32 %i.fni, %i.fnl
  %i.fnn = select i1 %i.fnj, i32 %i.fnf, i32 %i.fng ; 2 uses
  %i.fno = xor i32 %i.fnk, %i.fmx                 ; 2 uses
  %i.fnp = sext i32 %i.fno to i64
  %i.fnq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fnp
  %i.fnr = load i8, ptr %i.fnq, align 1, !tbaa !82
  store i8 %i.fnr, ptr %i.fmv, align 1, !tbaa !82
  %i.fns = sext i32 %i.fnn to i64
  %i.fnt = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fns
  %i.fnu = load i8, ptr %i.fnt, align 1, !tbaa !82
  %i.fnv = zext i8 %i.fnu to i32                  ; 2 uses
  %i.fnw = shl i32 %i.fnn, %i.fnv                 ; 2 uses
  store i32 %i.fnw, ptr %i.fmk, align 4, !tbaa !122
  %i.fnx = shl i32 %i.fnm, %i.fnv                 ; 6 uses
  store i32 %i.fnx, ptr %i.dmm, align 16, !tbaa !123
  %i.fny = and i32 %i.fnx, 65535
  %.not.i.i1277 = icmp eq i32 %i.fny, 0
  br i1 %.not.i.i1277, label %bb.nt, label %get_cabac.exit1278

bb.nt:                                            ; preds = %.preheader1501
  %i.fnz = add nsw i32 %i.fnx, -32768
  %i.foa = xor i32 %i.fnz, %i.fnx
  %i.fob = lshr exact i32 %i.foa, 15
  %i.foc = zext nneg i32 %i.fob to i64
  %i.fod = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.foc
  %i.foe = load i8, ptr %i.fod, align 1, !tbaa !82
  %i.fof = zext i8 %i.foe to i32
  %i.fog = sub nsw i32 7, %i.fof
  %i.foh = load ptr, ptr %i.fml, align 16, !tbaa !124 ; 3 uses
  %i.foi = load i8, ptr %i.foh, align 1, !tbaa !82
  %i.foj = zext i8 %i.foi to i32
  %i.fok = shl nuw nsw i32 %i.foj, 9
  %i.fol = getelementptr inbounds nuw i8, ptr %i.foh, i64 1
  %i.fom = load i8, ptr %i.fol, align 1, !tbaa !82
  %i.fon = zext i8 %i.fom to i32
  %i.foo = shl nuw nsw i32 %i.fon, 1
  %i.fop = or disjoint i32 %i.foo, %i.fok
  %i.foq = add nsw i32 %i.fop, -65535
  %i.for = shl nsw i32 %i.foq, %i.fog
  %i.fos = add i32 %i.for, %i.fnx                 ; 2 uses
  store i32 %i.fos, ptr %i.dmm, align 16, !tbaa !123
  %i.fot = getelementptr inbounds nuw i8, ptr %i.foh, i64 2
  store ptr %i.fot, ptr %i.fml, align 16, !tbaa !124
  br label %get_cabac.exit1278

get_cabac.exit1278:                               ; preds = %.preheader1501, %bb.nt
  %i.fou = phi i32 [ %i.fnx, %.preheader1501 ], [ %i.fos, %bb.nt ]
  %i.fov = and i32 %i.fno, 1
  %i.fow = icmp eq i32 %i.fov, 0
  br i1 %i.fow, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %get_cabac.exit1278
  %i.fox = getelementptr inbounds nuw i8, ptr %1, i64 28656
  store i8 0, ptr %i.fox, align 16, !tbaa !82
  br label %decode_cabac_residual_dc.exit1101

bb.nv:                                            ; preds = %get_cabac.exit1278
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fmo, i32 noundef 3, i32 noundef range(i32 48, 51) 49, ptr noundef nonnull @ff_h264_chroma_dc_scan, i32 noundef 4)
  %.pre1778 = load i32, ptr %i.fmi, align 4, !tbaa !126
  %.pre1779 = load i32, ptr %i.fmj, align 8, !tbaa !127
  %.pre1780 = load i32, ptr %i.fmk, align 4, !tbaa !122
  %.pre1781 = load i32, ptr %i.dmm, align 16, !tbaa !123
  br label %decode_cabac_residual_dc.exit1101

decode_cabac_residual_dc.exit1101:                ; preds = %bb.nu, %bb.nv
  %i.foy = phi i32 [ %i.fou, %bb.nu ], [ %.pre1781, %bb.nv ] ; 2 uses
  %i.foz = phi i32 [ %i.fnw, %bb.nu ], [ %.pre1780, %bb.nv ] ; 2 uses
  %i.fpa = phi i32 [ %i.fmq, %bb.nu ], [ %.pre1779, %bb.nv ]
  %i.fpb = phi i32 [ %i.fmp, %bb.nu ], [ %.pre1778, %bb.nv ]
  %i.fpc = shl i32 512, %i.v
  %i.fpd = sext i32 %i.fpc to i64
  %i.fpe = getelementptr inbounds [2 x i8], ptr %i.fmh, i64 %i.fpd
  %i.fpf = lshr i32 %i.fpb, 7
  %.lobit1869 = and i32 %i.fpf, 1
  %i.fpg = lshr i32 %i.fpa, 6
  %i.fph = and i32 %i.fpg, 2
  %.1.i1169.11870 = or disjoint i32 %.lobit1869, %i.fph
  %.1.i1169.1 = zext nneg i32 %.1.i1169.11870 to i64
  %i.fpi = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %.1.i1169.1
  %i.fpj = getelementptr inbounds nuw i8, ptr %i.fpi, i64 97 ; 2 uses
  %i.fpk = load i8, ptr %i.fpj, align 1, !tbaa !82
  %i.fpl = zext i8 %i.fpk to i32                  ; 2 uses
  %i.fpm = shl i32 %i.foz, 1
  %i.fpn = and i32 %i.fpm, 384
  %i.fpo = add nuw nsw i32 %i.fpn, %i.fpl
  %i.fpp = zext nneg i32 %i.fpo to i64
  %i.fpq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 512), i64 %i.fpp
  %i.fpr = load i8, ptr %i.fpq, align 1, !tbaa !82
  %i.fps = zext i8 %i.fpr to i32                  ; 2 uses
  %i.fpt = sub nsw i32 %i.foz, %i.fps             ; 2 uses
  %i.fpu = shl i32 %i.fpt, 17                     ; 2 uses
  %i.fpv = icmp slt i32 %i.fpu, %i.foy            ; 3 uses
  %i.fpw = sext i1 %i.fpv to i32
  %i.fpx = select i1 %i.fpv, i32 %i.fpu, i32 0
  %i.fpy = sub nsw i32 %i.foy, %i.fpx
  %i.fpz = select i1 %i.fpv, i32 %i.fps, i32 %i.fpt ; 2 uses
  %i.fqa = xor i32 %i.fpw, %i.fpl                 ; 2 uses
  %i.fqb = sext i32 %i.fqa to i64
  %i.fqc = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h264_cabac_tables, i64 1152), i64 %i.fqb
  %i.fqd = load i8, ptr %i.fqc, align 1, !tbaa !82
  store i8 %i.fqd, ptr %i.fpj, align 1, !tbaa !82
  %i.fqe = sext i32 %i.fpz to i64
  %i.fqf = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.fqe
  %i.fqg = load i8, ptr %i.fqf, align 1, !tbaa !82
  %i.fqh = zext i8 %i.fqg to i32                  ; 2 uses
  %i.fqi = shl i32 %i.fpz, %i.fqh
  store i32 %i.fqi, ptr %i.fmk, align 4, !tbaa !122
  %i.fqj = shl i32 %i.fpy, %i.fqh                 ; 5 uses
  store i32 %i.fqj, ptr %i.dmm, align 16, !tbaa !123
  %i.fqk = and i32 %i.fqj, 65535
  %.not.i.i1277.1 = icmp eq i32 %i.fqk, 0
  br i1 %.not.i.i1277.1, label %bb.nw, label %get_cabac.exit1278.1

bb.nw:                                            ; preds = %decode_cabac_residual_dc.exit1101
  %i.fql = add nsw i32 %i.fqj, -32768
  %i.fqm = xor i32 %i.fql, %i.fqj
  %i.fqn = lshr exact i32 %i.fqm, 15
  %i.fqo = zext nneg i32 %i.fqn to i64
  %i.fqp = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.fqo
  %i.fqq = load i8, ptr %i.fqp, align 1, !tbaa !82
  %i.fqr = zext i8 %i.fqq to i32
  %i.fqs = sub nsw i32 7, %i.fqr
  %i.fqt = load ptr, ptr %i.fml, align 16, !tbaa !124 ; 3 uses
  %i.fqu = load i8, ptr %i.fqt, align 1, !tbaa !82
  %i.fqv = zext i8 %i.fqu to i32
  %i.fqw = shl nuw nsw i32 %i.fqv, 9
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.fqt, i64 1
  %i.fqy = load i8, ptr %i.fqx, align 1, !tbaa !82
  %i.fqz = zext i8 %i.fqy to i32
  %i.fra = shl nuw nsw i32 %i.fqz, 1
  %i.frb = or disjoint i32 %i.fra, %i.fqw
  %i.frc = add nsw i32 %i.frb, -65535
  %i.frd = shl nsw i32 %i.frc, %i.fqs
  %i.fre = add i32 %i.frd, %i.fqj
  store i32 %i.fre, ptr %i.dmm, align 16, !tbaa !123
  %i.frf = getelementptr inbounds nuw i8, ptr %i.fqt, i64 2
  store ptr %i.frf, ptr %i.fml, align 16, !tbaa !124
  br label %get_cabac.exit1278.1

get_cabac.exit1278.1:                             ; preds = %bb.nw, %decode_cabac_residual_dc.exit1101
  %i.frg = and i32 %i.fqa, 1
  %i.frh = icmp eq i32 %i.frg, 0
  br i1 %i.frh, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %get_cabac.exit1278.1
  call fastcc void @decode_cabac_residual_dc_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fpe, i32 noundef 3, i32 noundef range(i32 48, 51) 50, ptr noundef nonnull @ff_h264_chroma_dc_scan, i32 noundef 4)
  br label %.loopexit1502

bb.ny:                                            ; preds = %get_cabac.exit1278.1
  %i.fri = getelementptr inbounds nuw i8, ptr %1, i64 28696
  store i8 0, ptr %i.fri, align 8, !tbaa !82
  br label %.loopexit1502

.loopexit1502:                                    ; preds = %bb.nx, %bb.ny, %bb.ns
  %i.frj = and i32 %.1874, 32
  %.not1020 = icmp eq i32 %i.frj, 0
  br i1 %.not1020, label %bb.of, label %.preheader

.preheader:                                       ; preds = %.loopexit1502
  %i.frk = load i32, ptr %i.c, align 4, !tbaa !93
  %i.frl = and i32 %i.frk, 7
  %.not1021 = icmp eq i32 %i.frl, 0
  %i.frm = select i1 %.not1021, i64 3, i64 0      ; 2 uses
  %i.frn = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fro = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.frp = getelementptr inbounds nuw i8, ptr %.0847, i64 1 ; 2 uses
  %i.frq = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 2 uses
  %i.frr = getelementptr inbounds nuw i8, ptr %1, i64 33652 ; 4 uses
  %i.frs = getelementptr inbounds nuw i8, ptr %1, i64 33664 ; 4 uses
  %i.frt = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.fru = getelementptr inbounds nuw i8, ptr %i.frt, i64 173816
  %i.frv = getelementptr inbounds nuw [8 x i8], ptr %i.fru, i64 %i.frm
  %i.frw = load ptr, ptr %i.frv, align 8, !tbaa !186
  %i.frx = load i32, ptr %i.frn, align 4, !tbaa !93
  %i.fry = sext i32 %i.frx to i64
  %i.frz = getelementptr inbounds [64 x i8], ptr %i.frw, i64 %i.fry
  br label %bb.oc

.loopexit:                                        ; preds = %decode_cabac_residual_nondc.exit1096
  %i.fsa = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.fsb = getelementptr inbounds nuw i8, ptr %i.fsa, i64 173824
end_hunk_1
