Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcmenc?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@adpcm_encode_frame:bb.a

.lr.ph1059.prol.loopexit:                         ; preds = %.lr.ph1059.prol, %.lr.ph1059.preheader
  %indvars.iv1256.unr = phi i64 [ %indvars.iv1256.ph, %.lr.ph1059.preheader ], [ %indvars.iv.next1257.prol, %.lr.ph1059.prol ]
  %.129001056.unr = phi ptr [ %.129001056.ph, %.lr.ph1059.preheader ], [ %i.arj, %.lr.ph1059.prol ]
  %i.ark = sub nsw i64 %indvars.iv1256.ph, %i.aqi
  %i.arl = icmp ugt i64 %i.ark, -4
  br i1 %i.arl, label %.loopexit918, label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.prol.loopexit, %.lr.ph1059
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257.3, %.lr.ph1059 ], [ %indvars.iv1256.unr, %.lr.ph1059.prol.loopexit ] ; 6 uses
  %.129001056 = phi ptr [ %i.asj, %.lr.ph1059 ], [ %.129001056.unr, %.lr.ph1059.prol.loopexit ] ; 5 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv1256
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !46
  %i.aro = shl i8 %i.arn, 4
  %gep1438 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv1256
  %i.arp = load i8, ptr %gep1438, align 1, !tbaa !46
  %i.arq = or i8 %i.aro, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %.129001056, i64 1
  store i8 %i.arq, ptr %.129001056, align 1, !tbaa !46
  %indvars.iv.next1257 = add nuw nsw i64 %indvars.iv1256, 1 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !46
  %i.aru = shl i8 %i.art, 4
  %gep1438.1 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257
  %i.arv = load i8, ptr %gep1438.1, align 1, !tbaa !46
  %i.arw = or i8 %i.aru, %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %.129001056, i64 2
  store i8 %i.arw, ptr %i.arr, align 1, !tbaa !46
  %indvars.iv.next1257.1 = add nuw nsw i64 %indvars.iv1256, 2 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257.1
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !46
  %i.asa = shl i8 %i.arz, 4
  %gep1438.2 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257.1
  %i.asb = load i8, ptr %gep1438.2, align 1, !tbaa !46
  %i.asc = or i8 %i.asa, %i.asb
  %i.asd = getelementptr inbounds nuw i8, ptr %.129001056, i64 3
  store i8 %i.asc, ptr %i.arx, align 1, !tbaa !46
  %indvars.iv.next1257.2 = add nuw nsw i64 %indvars.iv1256, 3 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257.2
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !46
  %i.asg = shl i8 %i.asf, 4
  %gep1438.3 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257.2
  %i.ash = load i8, ptr %gep1438.3, align 1, !tbaa !46
  %i.asi = or i8 %i.asg, %i.ash
  %i.asj = getelementptr inbounds nuw i8, ptr %.129001056, i64 4
  store i8 %i.asi, ptr %i.asd, align 1, !tbaa !46
  %indvars.iv.next1257.3 = add nuw nsw i64 %indvars.iv1256, 4 ; 2 uses
  %exitcond1260.not.3 = icmp eq i64 %indvars.iv.next1257.3, %i.aqi
  br i1 %exitcond1260.not.3, label %.loopexit918, label %.lr.ph1059, !llvm.loop !110

.loopexit918:                                     ; preds = %.lr.ph1059.prol.loopexit, %.lr.ph1059, %.lr.ph1063, %middle.block1575, %vec.epilog.middle.block1590, %middle.block1606, %vec.epilog.middle.block1619, %bb.dl, %bb.dk
  tail call void @av_free(ptr noundef nonnull %i.aii) #11
  br label %.critedge548

bb.dm:                                            ; preds = %._crit_edge1049
  %i.ask = mul nsw i32 %i.f, 7                    ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !45
  %i.asn = icmp slt i32 %i.ask, %i.asm
  br i1 %i.asn, label %.lr.ph1055, label %.critedge548

.lr.ph1055:                                       ; preds = %bb.dm
  %i.aso = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.asp = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.asr = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ast = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.asu = zext i1 %i.j to i64
  %i.asv = getelementptr inbounds nuw [36 x i8], ptr %i.aso, i64 %i.asu ; 5 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 16 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 24
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asv, i64 20 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asv, i64 28
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asv, i64 32 ; 2 uses
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph1055, %adpcm_ms_compress_sample.exit662
  %.64931053 = phi ptr [ %.5492.lcssa1388, %.lr.ph1055 ], [ %i.auj, %adpcm_ms_compress_sample.exit662 ] ; 3 uses
  %.04991052 = phi i32 [ %i.ask, %.lr.ph1055 ], [ %i.avs, %adpcm_ms_compress_sample.exit662 ]
  %.139011051 = phi ptr [ %.10.lcssa, %.lr.ph1055 ], [ %i.avr, %adpcm_ms_compress_sample.exit662 ] ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.64931053, i64 2
  %i.atc = load i16, ptr %.64931053, align 2, !tbaa !49
  %i.atd = load i32, ptr %i.asp, align 4, !tbaa !59 ; 2 uses
  %i.ate = load i32, ptr %i.asq, align 4, !tbaa !54
  %i.atf = mul nsw i32 %i.ate, %i.atd
  %i.atg = load i32, ptr %i.asr, align 4, !tbaa !58
  %i.ath = load i32, ptr %i.ass, align 4, !tbaa !55
  %i.ati = mul nsw i32 %i.ath, %i.atg
  %i.atj = add nsw i32 %i.ati, %i.atf
  %i.atk = sdiv i32 %i.atj, 64                    ; 2 uses
  %i.atl = sext i16 %i.atc to i32
  %i.atm = sub nsw i32 %i.atl, %i.atk             ; 2 uses
  %i.atn = icmp sgt i32 %i.atm, -1
  %i.ato = load i32, ptr %i.ast, align 4, !tbaa !57 ; 5 uses
  br i1 %i.atn, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.atp = sdiv i32 %i.ato, 2
  br label %adpcm_ms_compress_sample.exit

bb.dp:                                            ; preds = %bb.dn
  %i.atq = sdiv i32 %i.ato, -2
  br label %adpcm_ms_compress_sample.exit

adpcm_ms_compress_sample.exit:                    ; preds = %bb.do, %bb.dp
  %.0.i654 = phi i32 [ %i.atp, %bb.do ], [ %i.atq, %bb.dp ]
  %i.atr = add nsw i32 %.0.i654, %i.atm
  %i.ats = sdiv i32 %i.atr, %i.ato
  %i.att = tail call i32 @llvm.smax.i32(i32 %i.ats, i32 -8)
  %.0.i27.i = tail call i32 @llvm.smin.i32(i32 %i.att, i32 7) ; 2 uses
  %i.atu = and i32 %.0.i27.i, 15                  ; 3 uses
  %i.atv = and i32 %.0.i27.i, 8
  %.not.i655 = icmp eq i32 %i.atv, 0
  %masksel.i = select i1 %.not.i655, i32 0, i32 -16
  %i.atw = or disjoint i32 %masksel.i, %i.atu
  %i.atx = mul nsw i32 %i.atw, %i.ato
  %i.aty = add nsw i32 %i.atx, %i.atk
  store i32 %i.atd, ptr %i.asr, align 4, !tbaa !58
  %i.atz = tail call i32 @llvm.smax.i32(i32 %i.aty, i32 -32768)
  %i.aua = tail call i32 @llvm.smin.i32(i32 %i.atz, i32 32767)
  store i32 %i.aua, ptr %i.asp, align 4, !tbaa !59
  %i.aub = zext nneg i32 %i.atu to i64
  %i.auc = getelementptr inbounds nuw [2 x i8], ptr @ff_adpcm_AdaptationTable, i64 %i.aub
  %i.aud = load i16, ptr %i.auc, align 2, !tbaa !49
  %i.aue = sext i16 %i.aud to i32
  %i.auf = mul nsw i32 %i.ato, %i.aue
  %i.aug = ashr i32 %i.auf, 8
  %spec.select.i656 = tail call i32 @llvm.smax.i32(i32 %i.aug, i32 16)
  store i32 %spec.select.i656, ptr %i.ast, align 4, !tbaa !57
  %i.auh = trunc nuw nsw i32 %i.atu to i8
  %i.aui = shl nuw i8 %i.auh, 4
  %i.auj = getelementptr inbounds nuw i8, ptr %.64931053, i64 4
  %i.auk = load i16, ptr %i.atb, align 2, !tbaa !49
  %i.aul = load i32, ptr %i.asw, align 4, !tbaa !59 ; 2 uses
  %i.aum = load i32, ptr %i.asx, align 4, !tbaa !54
  %i.aun = mul nsw i32 %i.aum, %i.aul
  %i.auo = load i32, ptr %i.asy, align 4, !tbaa !58
  %i.aup = load i32, ptr %i.asz, align 4, !tbaa !55
  %i.auq = mul nsw i32 %i.aup, %i.auo
  %i.aur = add nsw i32 %i.auq, %i.aun
  %i.aus = sdiv i32 %i.aur, 64                    ; 2 uses
  %i.aut = sext i16 %i.auk to i32
  %i.auu = sub nsw i32 %i.aut, %i.aus             ; 2 uses
  %i.auv = icmp sgt i32 %i.auu, -1
  %i.auw = load i32, ptr %i.ata, align 4, !tbaa !57 ; 5 uses
  br i1 %i.auv, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %adpcm_ms_compress_sample.exit
  %i.aux = sdiv i32 %i.auw, 2
  br label %adpcm_ms_compress_sample.exit662

bb.dr:                                            ; preds = %adpcm_ms_compress_sample.exit
  %i.auy = sdiv i32 %i.auw, -2
  br label %adpcm_ms_compress_sample.exit662

adpcm_ms_compress_sample.exit662:                 ; preds = %bb.dq, %bb.dr
  %.0.i657 = phi i32 [ %i.aux, %bb.dq ], [ %i.auy, %bb.dr ]
  %i.auz = add nsw i32 %.0.i657, %i.auu
  %i.ava = sdiv i32 %i.auz, %i.auw
  %i.avb = tail call i32 @llvm.smax.i32(i32 %i.ava, i32 -8)
  %.0.i27.i658 = tail call i32 @llvm.smin.i32(i32 %i.avb, i32 7) ; 2 uses
  %i.avc = and i32 %.0.i27.i658, 15               ; 3 uses
  %i.avd = and i32 %.0.i27.i658, 8
  %.not.i659 = icmp eq i32 %i.avd, 0
  %masksel.i660 = select i1 %.not.i659, i32 0, i32 -16
  %i.ave = or disjoint i32 %masksel.i660, %i.avc
  %i.avf = mul nsw i32 %i.ave, %i.auw
  %i.avg = add nsw i32 %i.avf, %i.aus
  store i32 %i.aul, ptr %i.asy, align 4, !tbaa !58
  %i.avh = tail call i32 @llvm.smax.i32(i32 %i.avg, i32 -32768)
  %i.avi = tail call i32 @llvm.smin.i32(i32 %i.avh, i32 32767)
  store i32 %i.avi, ptr %i.asw, align 4, !tbaa !59
  %i.avj = zext nneg i32 %i.avc to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr @ff_adpcm_AdaptationTable, i64 %i.avj
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !49
  %i.avm = sext i16 %i.avl to i32
  %i.avn = mul nsw i32 %i.auw, %i.avm
  %i.avo = ashr i32 %i.avn, 8
  %spec.select.i661 = tail call i32 @llvm.smax.i32(i32 %i.avo, i32 16)
  store i32 %spec.select.i661, ptr %i.ata, align 4, !tbaa !57
  %i.avp = trunc nuw nsw i32 %i.avc to i8
  %i.avq = or disjoint i8 %i.aui, %i.avp
  %i.avr = getelementptr inbounds nuw i8, ptr %.139011051, i64 1
  store i8 %i.avq, ptr %.139011051, align 1, !tbaa !46
  %i.avs = add nsw i32 %.04991052, 1              ; 2 uses
  %i.avt = load i32, ptr %i.asl, align 4, !tbaa !45
  %i.avu = icmp slt i32 %i.avs, %i.avt
  br i1 %i.avu, label %bb.dn, label %.critedge548, !llvm.loop !111

bb.ds:                                            ; preds = %bb.e
  %i.avv = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.avw = load i32, ptr %i.avv, align 8, !tbaa !137 ; 5 uses
  %i.avx = sdiv i32 %i.avw, 2                     ; 3 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !39
  %i.awa = icmp sgt i32 %i.avz, 0
  br i1 %i.awa, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.awb = shl nsw i32 %i.avx, 1                  ; 9 uses
  %i.awc = shl nsw i32 %i.avx, 2
  %i.awd = sext i32 %i.awc to i64
  %i.awe = tail call noalias ptr @av_malloc(i64 noundef %i.awd) #11 ; 34 uses
  %.not545.not = icmp eq ptr %i.awe, null
  br i1 %.not545.not, label %.critedge, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.awf = icmp eq i32 %i.f, 1
  %i.awg = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  br i1 %i.awf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  tail call fastcc void @adpcm_compress_trellis(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.awe, ptr noundef nonnull %i.awg, i32 noundef %i.awb, i32 noundef 1)
  %i.awh = icmp sgt i32 %i.avw, 1
  br i1 %i.awh, label %iter.check1543, label %.loopexit926

iter.check1543:                                   ; preds = %bb.dv
  %i.awi = zext nneg i32 %i.awb to i64            ; 2 uses
  %i.awj = tail call i64 @llvm.usub.sat.i64(i64 %i.awi, i64 2)
  %i.awk = lshr exact i64 %i.awj, 1
  %i.awl = add nuw nsw i64 %i.awk, 1              ; 5 uses
  %min.iters.check1532 = icmp ult i32 %i.awb, 16
  br i1 %min.iters.check1532, label %.lr.ph1027.preheader, label %vector.main.loop.iter.check1533

vector.main.loop.iter.check1533:                  ; preds = %iter.check1543
  %min.iters.check1534 = icmp ult i32 %i.awb, 32
  br i1 %min.iters.check1534, label %vec.epilog.ph1547, label %vector.ph1535

vector.ph1535:                                    ; preds = %vector.main.loop.iter.check1533
  %i.awm = and i64 %i.awl, 8
  %n.vec1536 = and i64 %i.awl, 2147483632         ; 5 uses
  %i.awn = shl nuw nsw i64 %n.vec1536, 1
  %i.awo = getelementptr i8, ptr %i.x, i64 %n.vec1536
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.ph1535, %vector.body1537
  %index1538 = phi i64 [ 0, %vector.ph1535 ], [ %index.next1540, %vector.body1537 ] ; 3 uses
  %i.awp = shl nuw i64 %index1538, 1              ; 16 uses
  %next.gep1539 = getelementptr i8, ptr %i.x, i64 %index1538
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 2
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 4
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 6
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 10
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 12
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 14
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.axh = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 18
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 20
  %i.axl = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 22
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 24
  %i.axp = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 26
  %i.axr = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 28
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 30
  %i.axv = load i8, ptr %i.awq, align 1, !tbaa !46
  %i.axw = load i8, ptr %i.aws, align 1, !tbaa !46
  %i.axx = load i8, ptr %i.awu, align 1, !tbaa !46
  %i.axy = load i8, ptr %i.aww, align 1, !tbaa !46
  %i.axz = load i8, ptr %i.awy, align 1, !tbaa !46
  %i.aya = load i8, ptr %i.axa, align 1, !tbaa !46
  %i.ayb = load i8, ptr %i.axc, align 1, !tbaa !46
  %i.ayc = load i8, ptr %i.axe, align 1, !tbaa !46
  %i.ayd = load i8, ptr %i.axg, align 1, !tbaa !46
  %i.aye = load i8, ptr %i.axi, align 1, !tbaa !46
  %i.ayf = load i8, ptr %i.axk, align 1, !tbaa !46
  %i.ayg = load i8, ptr %i.axm, align 1, !tbaa !46
  %i.ayh = load i8, ptr %i.axo, align 1, !tbaa !46
  %i.ayi = load i8, ptr %i.axq, align 1, !tbaa !46
  %i.ayj = load i8, ptr %i.axs, align 1, !tbaa !46
  %i.ayk = load i8, ptr %i.axu, align 1, !tbaa !46
  %i.ayl = insertelement <16 x i8> poison, i8 %i.axv, i64 0
  %i.aym = insertelement <16 x i8> %i.ayl, i8 %i.axw, i64 1
  %i.ayn = insertelement <16 x i8> %i.aym, i8 %i.axx, i64 2
  %i.ayo = insertelement <16 x i8> %i.ayn, i8 %i.axy, i64 3
  %i.ayp = insertelement <16 x i8> %i.ayo, i8 %i.axz, i64 4
  %i.ayq = insertelement <16 x i8> %i.ayp, i8 %i.aya, i64 5
  %i.ayr = insertelement <16 x i8> %i.ayq, i8 %i.ayb, i64 6
  %i.ays = insertelement <16 x i8> %i.ayr, i8 %i.ayc, i64 7
  %i.ayt = insertelement <16 x i8> %i.ays, i8 %i.ayd, i64 8
  %i.ayu = insertelement <16 x i8> %i.ayt, i8 %i.aye, i64 9
  %i.ayv = insertelement <16 x i8> %i.ayu, i8 %i.ayf, i64 10
  %i.ayw = insertelement <16 x i8> %i.ayv, i8 %i.ayg, i64 11
  %i.ayx = insertelement <16 x i8> %i.ayw, i8 %i.ayh, i64 12
  %i.ayy = insertelement <16 x i8> %i.ayx, i8 %i.ayi, i64 13
  %i.ayz = insertelement <16 x i8> %i.ayy, i8 %i.ayj, i64 14
  %i.aza = insertelement <16 x i8> %i.ayz, i8 %i.ayk, i64 15
  %i.azb = getelementptr inbounds nuw i8, ptr %i.awq, i64 1
  %i.azc = getelementptr inbounds nuw i8, ptr %i.awr, i64 3
  %i.azd = getelementptr inbounds nuw i8, ptr %i.awt, i64 5
  %i.aze = getelementptr inbounds nuw i8, ptr %i.awv, i64 7
  %i.azf = getelementptr inbounds nuw i8, ptr %i.awx, i64 9
  %i.azg = getelementptr inbounds nuw i8, ptr %i.awz, i64 11
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axb, i64 13
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axd, i64 15
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axf, i64 17
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axh, i64 19
  %i.azl = getelementptr inbounds nuw i8, ptr %i.axj, i64 21
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axl, i64 23
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axn, i64 25
  %i.azo = getelementptr inbounds nuw i8, ptr %i.axp, i64 27
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axr, i64 29
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axt, i64 31
  %i.azr = load i8, ptr %i.azb, align 1, !tbaa !46
  %i.azs = load i8, ptr %i.azc, align 1, !tbaa !46
  %i.azt = load i8, ptr %i.azd, align 1, !tbaa !46
  %i.azu = load i8, ptr %i.aze, align 1, !tbaa !46
  %i.azv = load i8, ptr %i.azf, align 1, !tbaa !46
  %i.azw = load i8, ptr %i.azg, align 1, !tbaa !46
  %i.azx = load i8, ptr %i.azh, align 1, !tbaa !46
  %i.azy = load i8, ptr %i.azi, align 1, !tbaa !46
  %i.azz = load i8, ptr %i.azj, align 1, !tbaa !46
  %i.baa = load i8, ptr %i.azk, align 1, !tbaa !46
  %i.bab = load i8, ptr %i.azl, align 1, !tbaa !46
  %i.bac = load i8, ptr %i.azm, align 1, !tbaa !46
  %i.bad = load i8, ptr %i.azn, align 1, !tbaa !46
  %i.bae = load i8, ptr %i.azo, align 1, !tbaa !46
  %i.baf = load i8, ptr %i.azp, align 1, !tbaa !46
  %i.bag = load i8, ptr %i.azq, align 1, !tbaa !46
  %i.bah = insertelement <16 x i8> poison, i8 %i.azr, i64 0
  %i.bai = insertelement <16 x i8> %i.bah, i8 %i.azs, i64 1
  %i.baj = insertelement <16 x i8> %i.bai, i8 %i.azt, i64 2
  %i.bak = insertelement <16 x i8> %i.baj, i8 %i.azu, i64 3
  %i.bal = insertelement <16 x i8> %i.bak, i8 %i.azv, i64 4
  %i.bam = insertelement <16 x i8> %i.bal, i8 %i.azw, i64 5
  %i.ban = insertelement <16 x i8> %i.bam, i8 %i.azx, i64 6
  %i.bao = insertelement <16 x i8> %i.ban, i8 %i.azy, i64 7
  %i.bap = insertelement <16 x i8> %i.bao, i8 %i.azz, i64 8
  %i.baq = insertelement <16 x i8> %i.bap, i8 %i.baa, i64 9
  %i.bar = insertelement <16 x i8> %i.baq, i8 %i.bab, i64 10
  %i.bas = insertelement <16 x i8> %i.bar, i8 %i.bac, i64 11
  %i.bat = insertelement <16 x i8> %i.bas, i8 %i.bad, i64 12
  %i.bau = insertelement <16 x i8> %i.bat, i8 %i.bae, i64 13
  %i.bav = insertelement <16 x i8> %i.bau, i8 %i.baf, i64 14
  %i.baw = insertelement <16 x i8> %i.bav, i8 %i.bag, i64 15
  %i.bax = shl <16 x i8> %i.baw, splat (i8 4)
  %i.bay = or <16 x i8> %i.bax, %i.aza
  store <16 x i8> %i.bay, ptr %next.gep1539, align 1, !tbaa !46
  %index.next1540 = add nuw i64 %index1538, 16    ; 2 uses
  %i.baz = icmp eq i64 %index.next1540, %n.vec1536
  br i1 %i.baz, label %middle.block1541, label %vector.body1537, !llvm.loop !112

middle.block1541:                                 ; preds = %vector.body1537
  %cmp.n1542 = icmp eq i64 %i.awl, %n.vec1536
  br i1 %cmp.n1542, label %.loopexit926, label %vec.epilog.iter.check1544

vec.epilog.iter.check1544:                        ; preds = %middle.block1541
  %min.epilog.iters.check1546.not.not = icmp eq i64 %i.awm, 0
  br i1 %min.epilog.iters.check1546.not.not, label %.lr.ph1027.preheader, label %vec.epilog.ph1547, !prof !145

vec.epilog.ph1547:                                ; preds = %vector.main.loop.iter.check1533, %vec.epilog.iter.check1544
  %vec.epilog.resume.val1548 = phi i64 [ %n.vec1536, %vec.epilog.iter.check1544 ], [ 0, %vector.main.loop.iter.check1533 ]
  %n.vec1549 = and i64 %i.awl, 2147483640         ; 4 uses
  %i.bba = shl nuw nsw i64 %n.vec1549, 1
  %i.bbb = getelementptr i8, ptr %i.x, i64 %n.vec1549
  br label %vec.epilog.vector.body1550

vec.epilog.vector.body1550:                       ; preds = %vec.epilog.vector.body1550, %vec.epilog.ph1547
  %index1551 = phi i64 [ %vec.epilog.resume.val1548, %vec.epilog.ph1547 ], [ %index.next1553, %vec.epilog.vector.body1550 ] ; 3 uses
  %i.bbc = shl nuw i64 %index1551, 1              ; 8 uses
  %next.gep1552 = getelementptr i8, ptr %i.x, i64 %index1551
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 2
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 4
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 6
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 10
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 12
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.bbc ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 14
  %i.bbs = load i8, ptr %i.bbd, align 1, !tbaa !46
  %i.bbt = load i8, ptr %i.bbf, align 1, !tbaa !46
  %i.bbu = load i8, ptr %i.bbh, align 1, !tbaa !46
  %i.bbv = load i8, ptr %i.bbj, align 1, !tbaa !46
  %i.bbw = load i8, ptr %i.bbl, align 1, !tbaa !46
  %i.bbx = load i8, ptr %i.bbn, align 1, !tbaa !46
  %i.bby = load i8, ptr %i.bbp, align 1, !tbaa !46
  %i.bbz = load i8, ptr %i.bbr, align 1, !tbaa !46
  %i.bca = insertelement <8 x i8> poison, i8 %i.bbs, i64 0
  %i.bcb = insertelement <8 x i8> %i.bca, i8 %i.bbt, i64 1
  %i.bcc = insertelement <8 x i8> %i.bcb, i8 %i.bbu, i64 2
  %i.bcd = insertelement <8 x i8> %i.bcc, i8 %i.bbv, i64 3
  %i.bce = insertelement <8 x i8> %i.bcd, i8 %i.bbw, i64 4
  %i.bcf = insertelement <8 x i8> %i.bce, i8 %i.bbx, i64 5
  %i.bcg = insertelement <8 x i8> %i.bcf, i8 %i.bby, i64 6
  %i.bch = insertelement <8 x i8> %i.bcg, i8 %i.bbz, i64 7
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbd, i64 1
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbe, i64 3
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bbg, i64 5
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bbi, i64 7
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 9
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 11
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbo, i64 13
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bbq, i64 15
  %i.bcq = load i8, ptr %i.bci, align 1, !tbaa !46
  %i.bcr = load i8, ptr %i.bcj, align 1, !tbaa !46
  %i.bcs = load i8, ptr %i.bck, align 1, !tbaa !46
  %i.bct = load i8, ptr %i.bcl, align 1, !tbaa !46
  %i.bcu = load i8, ptr %i.bcm, align 1, !tbaa !46
  %i.bcv = load i8, ptr %i.bcn, align 1, !tbaa !46
  %i.bcw = load i8, ptr %i.bco, align 1, !tbaa !46
  %i.bcx = load i8, ptr %i.bcp, align 1, !tbaa !46
  %i.bcy = insertelement <8 x i8> poison, i8 %i.bcq, i64 0
  %i.bcz = insertelement <8 x i8> %i.bcy, i8 %i.bcr, i64 1
  %i.bda = insertelement <8 x i8> %i.bcz, i8 %i.bcs, i64 2
end_hunk_0
